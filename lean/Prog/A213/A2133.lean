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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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
# A213302: Smallest number with n nonprime substrings (Version 1: substrings with leading zeros are considered to be nonprime).

The programs for A213302, there is no canonical definition to state claims against.
-/

/-! ## A213302.P11591523537189021606

`A082704(A356861(2*n))-∏{e}[n+1, #+1]`
-/

namespace A213302.P11591523537189021606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082704 (A356861 (2 * n)).toNat - ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)

end

end A213302.P11591523537189021606

/-! ## A213302.P14193712515367790407

`A287742(n)+A035156(A001541(n))`
-/

namespace A213302.P14193712515367790407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287742 n + A035156 (A001541 n).toNat

end

end A213302.P14193712515367790407

/-!
# A213304: Smallest number with n nonprime substrings (Version 3: substrings with leading zeros are counted as nonprime if the corresponding number is not a prime).

The programs for A213304, there is no canonical definition to state claims against.
-/

/-! ## A213304.P8849208575336264385

`A004182(A213303(n))`
-/

namespace A213304.P8849208575336264385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004182 (A213303 n).toNat

end

end A213304.P8849208575336264385

/-! ## A213304.P1279358743192932828

`A213303(A262545(n+1))`
-/

namespace A213304.P1279358743192932828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213303 (A262545 (n + 1)).toNat

end

end A213304.P1279358743192932828

/-! ## A213304.P9126245939908420132

`A213303(n)%A130412(n+5)`
-/

namespace A213304.P9126245939908420132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213303 n) (A130412 (n + 5))

end

end A213304.P9126245939908420132

/-! ## A213304.P11200842597625865736

`A213303(n)+A122840(A213290(n))`
-/

namespace A213304.P11200842597625865736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213303 n + A122840 (A213290 n).toNat

end

end A213304.P11200842597625865736

/-!
# A213305: Minimal prime with n nonprime substrings (Version 1: substrings with leading zeros are considered to be nonprime).

The programs for A213305, there is no canonical definition to state claims against.
-/

/-! ## A213305.P4614874841585332292

`A107810(A227715(n)+A107855(n+5))`
-/

namespace A213305.P4614874841585332292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107810 (A227715 n + A107855 (n + 5)).toNat

end

end A213305.P4614874841585332292

/-! ## A213305.P17823085224752607272

`A138889(A138895(n)*A289977(n+4))`
-/

namespace A213305.P17823085224752607272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138889 (A138895 n * A289977 (n + 4)).toNat

end

end A213305.P17823085224752607272

/-!
# A213306: Minimal prime with n nonprime substrings (Version 2: substrings with leading zeros are counted as nonprime if the corresponding number is > 0).

The programs for A213306, there is no canonical definition to state claims against.
-/

/-! ## A213306.P11353171025494692112

`p?[A207852(n)+A007318(n)]`
-/

namespace A213306.P11353171025494692112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207852 n + A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A213306.P11353171025494692112

/-!
# A213307: Minimal prime with n nonprime substrings (Version 3: substrings with leading zeros are counted as nonprime if the corresponding number is not a prime).

The programs for A213307, there is no canonical definition to state claims against.
-/

/-! ## A213307.P1233911030527829719

`or(A213306(n), A263787(A304310(3*n+5)))`
-/

namespace A213307.P1233911030527829719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A213306 n) (A263787 (A304310 (3 * n + 5)).toNat)

end

end A213307.P1233911030527829719

/-!
# A213309: Numbers with exactly 2 nonprime substrings (substrings with leading zeros are considered to be nonprime).

The programs for A213309, there is no canonical definition to state claims against.
-/

/-! ## A213309.P419574964694306256

`A000196(A213320(n+6)²)`
-/

namespace A213309.P419574964694306256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A213320 (n + 6) ^ 2).toNat

end

end A213309.P419574964694306256

/-! ## A213309.P16238233222640947513

`A019554(A213320(n+6)²)`
-/

namespace A213309.P16238233222640947513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A213320 (n + 6) ^ 2).toNat

end

end A213309.P16238233222640947513

/-! ## A213309.P8495989603888183014

`A033676(A213320(n+6)²)`
-/

namespace A213309.P8495989603888183014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A213320 (n + 6) ^ 2).toNat

end

end A213309.P8495989603888183014

/-! ## A213309.P3535198757240304227

`A001222(A000230(n))*A213320(n+6)`
-/

namespace A213309.P3535198757240304227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000230 n).toNat * A213320 (n + 6)

end

end A213309.P3535198757240304227

/-!
# A213311: Numbers with exactly 4 nonprime substrings (substrings with leading zeros are considered to be nonprime).

The programs for A213311, there is no canonical definition to state claims against.
-/

/-! ## A213311.P6734559181250941008

`A220401(2*n+3)+A083533(A001655(n))`
-/

namespace A213311.P6734559181250941008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220401 (2 * n + 3) + A083533 (A001655 n).toNat

end

end A213311.P6734559181250941008

/-! ## A213311.P7776279645993642978

`A004715(eq[9, A008615(n)])`
-/

namespace A213311.P7776279645993642978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004715 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A213311.P7776279645993642978

/-!
# A213312: Numbers with exactly 5 nonprime substrings (substrings with leading zeros are considered to be nonprime).

The programs for A213312, there is no canonical definition to state claims against.
-/

/-! ## A213312.P9758717008967436846

`A319951(A106987(n+1))+99`
-/

namespace A213312.P9758717008967436846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319951 (A106987 (n + 1)).toNat + 99

end

end A213312.P9758717008967436846

/-! ## A213312.P9424267978059676595

`A135600(n+1)+A053737(A001147(n))`
-/

namespace A213312.P9424267978059676595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135600 (n + 1) + A053737 (A001147 n).toNat

end

end A213312.P9424267978059676595

/-!
# A213313: Numbers with exactly 6 nonprime substrings (substrings with leading zeros are considered to be nonprime).

The programs for A213313, there is no canonical definition to state claims against.
-/

/-! ## A213313.P17053231132556833597

`eq[A211396(n)+3, A004218(n+1)]`
-/

namespace A213313.P17053231132556833597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211396 n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A213313.P17053231132556833597

/-! ## A213313.P12425654245106415184

`∩[A062115(n+1), A092633(n+1)]`
-/

namespace A213313.P12425654245106415184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062115 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092633 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213313.P12425654245106415184

/-! ## A213313.P7067812091094651128

`eq[A017101(A047814(n)), A055642(n)]`
-/

namespace A213313.P7067812091094651128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017101 (A047814 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A213313.P7067812091094651128

/-! ## A213313.P6150408912588760238

`eq[A017305(A211396(n)), A055642(n)]`
-/

namespace A213313.P6150408912588760238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 (A211396 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A213313.P6150408912588760238

/-! ## A213313.P6005337279998969910

`eq[A017101(A047814(n)), A276729(n)]`
-/

namespace A213313.P6005337279998969910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017101 (A047814 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A213313.P6005337279998969910

/-! ## A213313.P9532104844056866446

`eq[A017341(A211396(n)), A138902(n)]`
-/

namespace A213313.P9532104844056866446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017341 (A211396 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138902 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A213313.P9532104844056866446

/-! ## A213313.P8722779387227975993

`eq[A017305(A211396(n)), A276729(n)]`
-/

namespace A213313.P8722779387227975993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 (A211396 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A213313.P8722779387227975993

/-!
# A213316: Numbers with exactly 9 nonprime substrings (substrings with leading zeros are considered to be nonprime).

The programs for A213316, there is no canonical definition to state claims against.
-/

/-! ## A213316.P18403597368153788266

`A111349(n+1)-A080634(A080632(n))`
-/

namespace A213316.P18403597368153788266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111349 (n + 1) - A080634 (A080632 n).toNat

end

end A213316.P18403597368153788266

/-! ## A213316.P1894450012365697654

`A111349(n+1)-A056832(A126403(n))`
-/

namespace A213316.P1894450012365697654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111349 (n + 1) - A056832 (A126403 n).toNat

end

end A213316.P1894450012365697654

/-!
# A213320: Numbers such that the number of nonprime substrings equals the number of digits (substrings with leading zeros are considered to be nonprime).

The programs for A213320, there is no canonical definition to state claims against.
-/

/-! ## A213320.P2392125345482985114

`A081828(n+1)-A327965(A046098(n+1))`
-/

namespace A213320.P2392125345482985114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081828 (n + 1) - A327965 (A046098 (n + 1)).toNat

end

end A213320.P2392125345482985114

/-!
# A213321: Minimal prime with n prime substrings (substrings with leading zeros are considered to be nonprime).

The programs for A213321, there is no canonical definition to state claims against.
-/

/-! ## A213321.P10043063619741455806

`A000015(A085822(n))`
-/

namespace A213321.P10043063619741455806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (A085822 n).toNat

end

end A213321.P10043063619741455806

/-! ## A213321.P14898782119265360765

`A085822(A024652(n))`
-/

namespace A213321.P14898782119265360765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085822 (A024652 n).toNat

end

end A213321.P14898782119265360765

/-! ## A213321.P11206853358175181679

`A085822(A024653(n))`
-/

namespace A213321.P11206853358175181679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085822 (A024653 n).toNat

end

end A213321.P11206853358175181679

/-! ## A213321.P1984806559370192458

`A085822(A024654(n))`
-/

namespace A213321.P1984806559370192458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085822 (A024654 n).toNat

end

end A213321.P1984806559370192458

/-! ## A213321.P10021718205399610557

`A085822(A024655(n))`
-/

namespace A213321.P10021718205399610557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085822 (A024655 n).toNat

end

end A213321.P10021718205399610557

/-!
# A213322: Number of permutations of n objects such that no three-element subset is preserved.

The programs for A213322, there is no canonical definition to state claims against.
-/

/-! ## A213322.P16847195063675333170

`xor(A186362(n), A209439(A324663(n)))`
-/

namespace A213322.P16847195063675333170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A186362 n) (A209439 (A324663 n).toNat)

end

end A213322.P16847195063675333170

/-!
# A213323: Number of permutations of n objects such that no four-element subset is preserved.

The programs for A213323, there is no canonical definition to state claims against.
-/

/-! ## A213323.P11988885546920714005

`xor(A025460(A222965(n+1)), A126352(n))`
-/

namespace A213323.P11988885546920714005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A025460 (A222965 (n + 1)).toNat) (A126352 n)

end

end A213323.P11988885546920714005

/-!
# A213324: Number of permutations of n objects such that no five-element subset is preserved.

The programs for A213324, there is no canonical definition to state claims against.
-/

/-! ## A213324.P13685860737430869016

`n!%A045546(A325012(2*n+5))`
-/

namespace A213324.P13685860737430869016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.factorial n : ℤ) (A045546 (A325012 (2 * n + 5)).toNat)

end

end A213324.P13685860737430869016

/-! ## A213324.P17822997171047820040

`(A004890(n+1)!%∑[16*n+17])%A056239(2*n+5)!`
-/

namespace A213324.P17822997171047820040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 * n + 17

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A004890 (n + 1)).toNat % (∑ j ∈ Finset.range (n + 1), f1 j) % Nat.factorial (A056239 (2 * n + 5)).toNat

end

end A213324.P17822997171047820040

/-! ## A213324.P14331582936167345817

`A000804(n)*A002324(A000272(n))`
-/

namespace A213324.P14331582936167345817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000804 n * A002324 (A000272 n).toNat

end

end A213324.P14331582936167345817

/-!
# A213325: Number of ways to write n = q + sum_{k=1}^m(-1)^{m-k}p_k, where p_k is the k-th prime, and q is a practical number with q-4 and q+4 also practical.

The programs for A213325, there is no canonical definition to state claims against.
-/

/-! ## A213325.P13118596044058986558

`A004216(abs(n-A321280(n))+1)`
-/

namespace A213325.P13118596044058986558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (|(n : ℤ) - A321280 n| + 1).toNat

end

end A213325.P13118596044058986558

/-! ## A213325.P2758412181734739278

`A004216(A321280(n)+n*A004216(n+1))`
-/

namespace A213325.P2758412181734739278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (A321280 n + (n : ℤ) * A004216 (n + 1)).toNat

end

end A213325.P2758412181734739278

/-!
# A213326: a(n) = (n+2)^n - (n+1)^n.

The programs for A213326, the canonical program `A213326.P18371721143527706075` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213326 has offset 0).

The definition of A213326 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+2)^n-(n+1)^n` (program `A213326.P18371721143527706075`, by `A213326.P18371721143527706075.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A213326.P18371721143527706075

`(n+2)^n-(n+1)^n`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A213326

/-- `(n+2)^n-(n+1)^n` -/
def P18371721143527706075.Spec : Prop :=
  ∀ n, P18371721143527706075.a n = A213326 n

theorem P18371721143527706075.correct : P18371721143527706075.Spec := by
  intro n
  simp only [A213326]

end A213326

/-! ## A213326.P10440235389353335412

`record[Δ[-A088956(n)]]`
-/

namespace A213326.P10440235389353335412
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A088956 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213326.P10440235389353335412

namespace A213326

/-- `record[Δ[-A088956(n)]]` -/
def P10440235389353335412.Spec : Prop :=
  ∀ n, P10440235389353335412.a n = A213326 n

end A213326

/-! ## A213326.P12277209245104600615

`record[A088956(n)-A088956(n+1)]`
-/

namespace A213326.P12277209245104600615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088956 n - A088956 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213326.P12277209245104600615

namespace A213326

/-- `record[A088956(n)-A088956(n+1)]` -/
def P12277209245104600615.Spec : Prop :=
  ∀ n, P12277209245104600615.a n = A213326 n

end A213326

/-! ## A213326.P17320649470023707199

`record[A095888(n+1)-A095890(n+1)]`
-/

namespace A213326.P17320649470023707199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095888 (n + 1) - A095890 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213326.P17320649470023707199

namespace A213326

/-- `record[A095888(n+1)-A095890(n+1)]` -/
def P17320649470023707199.Spec : Prop :=
  ∀ n, P17320649470023707199.a n = A213326 n

end A213326

/-! ## A213326.P3213325605854966360

`Δ[A000169(n+1)-∑[A053506(n+1)]]`
-/

namespace A213326.P3213325605854966360
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053506 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000169 (n + 1) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213326.P3213325605854966360

namespace A213326

/-- `Δ[A000169(n+1)-∑[A053506(n+1)]]` -/
def P3213325605854966360.Spec : Prop :=
  ∀ n, P3213325605854966360.a n = A213326 n

end A213326

/-!
# A213327: Analog of Fermat quotients: a(n) = (round((phi_2)^p)-2)/p, where phi_2 is silver ratio 1+sqrt(2) and p = prime(n).

The programs for A213327, there is no canonical definition to state claims against.
-/

/-! ## A213327.P5785956643743325406

`A215335(A000040(n+1))`
-/

namespace A213327.P5785956643743325406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215335 (A000040 (n + 1)).toNat

end

end A213327.P5785956643743325406

/-! ## A213327.P18312299640688453924

`A215335(A030291(n+1))`
-/

namespace A213327.P18312299640688453924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215335 (A030291 (n + 1)).toNat

end

end A213327.P18312299640688453924

/-! ## A213327.P16718171862342184780

`A215335(A030475(n+1))`
-/

namespace A213327.P16718171862342184780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215335 (A030475 (n + 1)).toNat

end

end A213327.P16718171862342184780

/-! ## A213327.P9012019742343712371

`A215335(A038616(n+1))`
-/

namespace A213327.P9012019742343712371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215335 (A038616 (n + 1)).toNat

end

end A213327.P9012019742343712371

/-! ## A213327.P9209490359383207743

`A215335(A038618(n+1))`
-/

namespace A213327.P9209490359383207743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215335 (A038618 (n + 1)).toNat

end

end A213327.P9209490359383207743

/-!
# A213330: Minimum deviation from n in Collatz trajectory of n.

The programs for A213330, there is no canonical definition to state claims against.
-/

/-! ## A213330.P1791228962908257933

`gcd(A048299(n+1), A211779(A011782(n)))`
-/

namespace A213330.P1791228962908257933
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048299 (n + 1)) (A211779 (A011782 n).toNat)

end

end A213330.P1791228962908257933

/-! ## A213330.P7446508849523157163

`gcd(A000120(A090597(n+3)), A336398(n+2))`
-/

namespace A213330.P7446508849523157163
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000120 (A090597 (n + 3)).toNat) (A336398 (n + 2))

end

end A213330.P7446508849523157163

/-! ## A213330.P11553798321637218948

`A334029(lt[A187369(n+1), 5])`
-/

namespace A213330.P11553798321637218948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187369 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334029 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A213330.P11553798321637218948

/-! ## A213330.P10801131511875485239

`gcd(A053645((n+1)*Δ[n^3]), A083802(n+1))`
-/

namespace A213330.P10801131511875485239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053645 ((n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat) (A083802 (n + 1))

end

end A213330.P10801131511875485239

/-! ## A213330.P17538160993125843234

`A091064(∑[A000984(A004525(n))])`
-/

namespace A213330.P17538160993125843234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (A004525 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091064 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A213330.P17538160993125843234

/-!
# A213331: Number of isomorphism classes of reduced Witt rings of fields with 2n orderings.

The programs for A213331, there is no canonical definition to state claims against.
-/

/-! ## A213331.P11965265314321160752

`A213332(2*(n+1))`
-/

namespace A213331.P11965265314321160752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213332 (2 * (n + 1))

end

end A213331.P11965265314321160752

/-! ## A213331.P8228529937483504082

`record[A213332(n^(n%2)+1)]`
-/

namespace A213331.P8228529937483504082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213332 (n ^ (n % 2) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213331.P8228529937483504082

/-! ## A213331.P10147894042684590578

`record[A213332(A359634(n))]`
-/

namespace A213331.P10147894042684590578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213332 (A359634 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213331.P10147894042684590578

/-! ## A213331.P5022811282914478799

`record[A213332(A006257(n)+1)]`
-/

namespace A213331.P5022811282914478799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213332 (A006257 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213331.P5022811282914478799

/-! ## A213331.P10978641281749670588

`record[A213332(A032742(n+1))]`
-/

namespace A213331.P10978641281749670588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213332 (A032742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213331.P10978641281749670588

/-!
# A213332: Number of isomorphism classes of reduced Witt rings of fields with n orderings.

The programs for A213332, there is no canonical definition to state claims against.
-/

/-! ## A213332.P6393968483505892944

`A213331(ceil(abs((1-n)/2))+n%2)`
-/

namespace A213332.P6393968483505892944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213331 (⌈|(1 - (n : ℤ) : ℚ) / 2|⌉ + ((n % 2 : ℕ) : ℤ)).toNat

end

end A213332.P6393968483505892944

/-! ## A213332.P16508316585001077730

`A213331(A065033(n))`
-/

namespace A213332.P16508316585001077730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213331 (A065033 n).toNat

end

end A213332.P16508316585001077730

/-! ## A213332.P6460085188442591470

`A213331(round(sqrt(A033638(n))))`
-/

namespace A213332.P6460085188442591470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213331 (SequenceMachineLib.roundAway (Real.sqrt (A033638 n : ℝ))).toNat

end

end A213332.P6460085188442591470

/-! ## A213332.P5368997392792790999

`A213331(∑[char[A131738(n)]])`
-/

namespace A213332.P5368997392792790999
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131738 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213331 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A213332.P5368997392792790999

/-! ## A213332.P9595611956412379994

`A213331(A008619(abs(1-n)))`
-/

namespace A213332.P9595611956412379994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213331 (A008619 |1 - (n : ℤ)|.toNat).toNat

end

end A213332.P9595611956412379994

/-! ## A213332.P18363579210860621078

`A213331(A028310(∑[n%2]))`
-/

namespace A213332.P18363579210860621078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213331 (A028310 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A213332.P18363579210860621078

/-! ## A213332.P13618809675459093739

`A213331(A008621(A004273(n)))`
-/

namespace A213332.P13618809675459093739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213331 (A008621 (A004273 n).toNat).toNat

end

end A213332.P13618809675459093739

/-! ## A213332.P18161432017951895605

`A213331(A008621(A004275(n)))`
-/

namespace A213332.P18161432017951895605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213331 (A008621 (A004275 n).toNat).toNat

end

end A213332.P18161432017951895605

/-! ## A213332.P15914936719057522922

`A213331(A000194(A033638(n)))`
-/

namespace A213332.P15914936719057522922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213331 (A000194 (A033638 n).toNat).toNat

end

end A213332.P15914936719057522922

/-! ## A213332.P6869734862406394227

`A213331(A008621(A053438(n)))`
-/

namespace A213332.P6869734862406394227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213331 (A008621 (A053438 n).toNat).toNat

end

end A213332.P6869734862406394227

/-!
# A213333: G.f. satisfies: A(x) = x + A( A(x)^2/(1 - A(x) + A(x)^2) ).

The programs for A213333, there is no canonical definition to state claims against.
-/

/-! ## A213333.P631188444068699068

`A130497(Δ[Δ[A279559(n)]])`
-/

namespace A213333.P631188444068699068
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279559 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130497 (f1 (n + 1) - f1 n).toNat

end

end A213333.P631188444068699068

/-! ## A213333.P9412786307352031334

`A173565(A005253(n))+A001003(n)`
-/

namespace A213333.P9412786307352031334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173565 (A005253 n).toNat + A001003 n

end

end A213333.P9412786307352031334

/-! ## A213333.P2812757863664326295

`A118759(A086855(n))+A001003(n)`
-/

namespace A213333.P2812757863664326295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A086855 n).toNat + A001003 n

end

end A213333.P2812757863664326295

/-!
# A213334: Primes p such that (k+1)*p^2 - k is prime for k=1..8.

The programs for A213334, there is no canonical definition to state claims against.
-/

/-! ## A213334.P4452917444041941702

`A213161(eq[2, A087061(n)])`
-/

namespace A213334.P4452917444041941702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087061 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213161 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A213334.P4452917444041941702

/-!
# A213336: G.f. satisfies A(x) = G(x/(1-x)^4) where G(x) = 1 + x*G(x)^4 is the g.f. of A002293.

The programs for A213336, there is no canonical definition to state claims against.
-/

/-! ## A213336.P766161267848325406

`xor(3, A213898(n!))`
-/

namespace A213336.P766161267848325406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A213898 (Nat.factorial n))

end

end A213336.P766161267848325406

/-!
# A213337: Odd composite numbers k that divide the imaginary part of (1+2i)^A201629(k).

The programs for A213337, there is no canonical definition to state claims against.
-/

/-! ## A213337.P4003426658261834196

`∩[A212502(n+1), 2*n+1]`
-/

namespace A213337.P4003426658261834196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212502 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A213337.P4003426658261834196

/-!
# A213339: Costas arrays such that the corresponding permutation is connected.

The programs for A213339, there is no canonical definition to state claims against.
-/

/-! ## A213339.P13145202259247259781

`A148740(n)-A347684(A032109(n))`
-/

namespace A213339.P13145202259247259781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148740 n - A347684 (A032109 n).toNat

end

end A213339.P13145202259247259781

/-! ## A213339.P11639937879399633997

`A342462(A144040(n)+A027750(n+1))`
-/

namespace A213339.P11639937879399633997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342462 (A144040 n + A027750 (n + 1)).toNat

end

end A213339.P11639937879399633997

/-! ## A213339.P5152112867719073356

`A118033(A000073(n+2))%A034386(n+4)`
-/

namespace A213339.P5152112867719073356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118033 (A000073 (n + 2)).toNat) (A034386 (n + 4))

end

end A213339.P5152112867719073356

/-!
# A213340: Numbers which are the values of the quadratic polynomial 5+8t+12k+16kt on nonnegative integers.

The programs for A213340, there is no canonical definition to state claims against.
-/

/-! ## A213340.P9058609232913739248

`2*A125667(n+2)-1`
-/

namespace A213340.P9058609232913739248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A125667 (n + 2) - 1

end

end A213340.P9058609232913739248

/-! ## A213340.P7351653281329104177

`record[lcm(2, A187811(n+1))]-1`
-/

namespace A213340.P7351653281329104177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A187811 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - 1

end

end A213340.P7351653281329104177

/-! ## A213340.P6622399570373064002

`eq[val(n+1, 2), cosh(A000089(n+1))]`
-/

namespace A213340.P6622399570373064002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cosh (A000089 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A213340.P6622399570373064002

/-! ## A213340.P2531948840384967497

`2*lt[A091379((n+2)^and(1, n)), 1]+3`
-/

namespace A213340.P2531948840384967497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091379 ((n + 2) ^ Nat.land 1 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 3

end

end A213340.P2531948840384967497

/-! ## A213340.P5462863412734401028

`2*eq[val(n+1, 2), A000095(2*(n+1))]+1`
-/

namespace A213340.P5462863412734401028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000095 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A213340.P5462863412734401028

/-!
# A213341: Smallest palindrome with digital root n and n + 1 decimal digits.

The programs for A213341, there is no canonical definition to state claims against.
-/

/-! ## A213341.P11215677826366376820

`A062388(10*n)`
-/

namespace A213341.P11215677826366376820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062388 (10 * n)

end

end A213341.P11215677826366376820

/-! ## A213341.P11178625695262983378

`record[A062388(A070565(n))]`
-/

namespace A213341.P11178625695262983378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062388 (A070565 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213341.P11178625695262983378

/-! ## A213341.P3128503207551022419

`record[A062388(A011540(n+1))]`
-/

namespace A213341.P3128503207551022419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062388 (A011540 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213341.P3128503207551022419

/-! ## A213341.P2848472921394648799

`record[A062388(lcm(n, A055641(n)))]`
-/

namespace A213341.P2848472921394648799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062388 (Int.lcm (n : ℤ) (A055641 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213341.P2848472921394648799

/-! ## A213341.P12897034442253082514

`A062388(A008592(n))/ceil(acot(n))`
-/

namespace A213341.P12897034442253082514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062388 (A008592 n).toNat : ℚ) / (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℚ)

end

end A213341.P12897034442253082514

/-!
# A213343: 1-quantum transitions in systems of N spin 1/2 particles, in columns by combination indices. Triangle read by rows, T(n, k) for n >= 1 and 0 <= k <= floor((n-1)/2).

The programs for A213343, the canonical program `A213343.P5626630658667177083` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213343 has offset 1).

The definition of A213343 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7266 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213343.P4449046531054430581

`A000267(n)*A091894(n+1)`
-/

namespace A213343.P4449046531054430581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 n * A091894 (n + 1)

end

end A213343.P4449046531054430581

namespace A213343

/-- `A000267(n)*A091894(n+1)` -/
def P4449046531054430581.Spec : Prop :=
  ∀ n, P4449046531054430581.a n = A213343 (n + 1)

end A213343

/-! ## A213343.P7606918364916171339

`∑[A240025(n)]*A091894(n+1)`
-/

namespace A213343.P7606918364916171339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240025 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A091894 (n + 1)

end

end A213343.P7606918364916171339

namespace A213343

/-- `∑[A240025(n)]*A091894(n+1)` -/
def P7606918364916171339.Spec : Prop :=
  ∀ n, P7606918364916171339.a n = A213343 (n + 1)

end A213343

/-! ## A213343.P5626630658667177083

`A000267(n)/A122197(n+1)*A051288(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A213343

/-- `A000267(n)/A122197(n+1)*A051288(n)` -/
def P5626630658667177083.Spec : Prop :=
  ∀ n, P5626630658667177083.a n = (A213343 (n + 1) : ℚ)

end A213343

/-! ## A213343.P7046651685318847171

`A207538(n+1)*A257241(n+1)`
-/

namespace A213343.P7046651685318847171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207538 (n + 1) * A257241 (n + 1)

end

end A213343.P7046651685318847171

namespace A213343

/-- `A207538(n+1)*A257241(n+1)` -/
def P7046651685318847171.Spec : Prop :=
  ∀ n, P7046651685318847171.a n = A213343 (n + 1)

end A213343

/-! ## A213343.P17108567028423919205

`A257241(n+1)/A034868(n)*A051288(n)`
-/

namespace A213343.P17108567028423919205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257241 (n + 1) : ℚ) / (A034868 n : ℚ) * (A051288 n : ℚ)

end

end A213343.P17108567028423919205

namespace A213343

/-- `A257241(n+1)/A034868(n)*A051288(n)` -/
def P17108567028423919205.Spec : Prop :=
  ∀ n, P17108567028423919205.a n = (A213343 (n + 1) : ℚ)

end A213343

/-! ## A213343.P15002498616355399458

`A038207(A091018(n))*A257241(n+1)`
-/

namespace A213343.P15002498616355399458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 (A091018 n).toNat * A257241 (n + 1)

end

end A213343.P15002498616355399458

namespace A213343

/-- `A038207(A091018(n))*A257241(n+1)` -/
def P15002498616355399458.Spec : Prop :=
  ∀ n, P15002498616355399458.a n = A213343 (n + 1)

end A213343

/-! ## A213343.P17554679522908320643

`A165257(A056536(n+1))*A207538(n+1)`
-/

namespace A213343.P17554679522908320643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165257 (A056536 (n + 1)).toNat * A207538 (n + 1)

end

end A213343.P17554679522908320643

namespace A213343

/-- `A165257(A056536(n+1))*A207538(n+1)` -/
def P17554679522908320643.Spec : Prop :=
  ∀ n, P17554679522908320643.a n = A213343 (n + 1)

end A213343

/-! ## A213343.P3094875409965855968

`A074909(A274427(n+1))*A207538(n+1)`
-/

namespace A213343.P3094875409965855968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (A274427 (n + 1)).toNat * A207538 (n + 1)

end

end A213343.P3094875409965855968

namespace A213343

/-- `A074909(A274427(n+1))*A207538(n+1)` -/
def P3094875409965855968.Spec : Prop :=
  ∀ n, P3094875409965855968.a n = A213343 (n + 1)

end A213343

/-!
# A213344: 2-quantum transitions in systems of N>=2 spin 1/2 particles, in columns by combination indices.

The programs for A213344, there is no canonical definition to state claims against.
-/

/-! ## A213344.P12106951252530415121

`A074909(A274430(n+1))*A207538(n+1)`
-/

namespace A213344.P12106951252530415121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (A274430 (n + 1)).toNat * A207538 (n + 1)

end

end A213344.P12106951252530415121

/-! ## A213344.P3229410467873081538

`A038207(A091018(n))*A074909(A274430(n+1))`
-/

namespace A213344.P3229410467873081538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 (A091018 n).toNat * A074909 (A274430 (n + 1)).toNat

end

end A213344.P3229410467873081538

/-! ## A213344.P11277406833002695395

`A051290(comp[n²]+n)`
-/

namespace A213344.P11277406833002695395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051290 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)

end

end A213344.P11277406833002695395

/-!
# A213345: 3-quantum transitions in systems of N>=3 spin 1/2 particles, in columns by combination indices.

The programs for A213345, there is no canonical definition to state claims against.
-/

/-! ## A213345.P16154333249101877973

`A014602(A338745(n+3))-3`
-/

namespace A213345.P16154333249101877973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014602 (A338745 (n + 3)).toNat - 3

end

end A213345.P16154333249101877973

/-!
# A213346: 4-quantum transitions in systems of N>=4 spin 1/2 particles, in columns by combination indices.

The programs for A213346, there is no canonical definition to state claims against.
-/

/-! ## A213346.P6378222469285473239

`A251683(A271658(3*n+5)-2)`
-/

namespace A213346.P6378222469285473239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251683 (A271658 (3 * n + 5) - 2).toNat

end

end A213346.P6378222469285473239

/-!
# A213347: 5-quantum transitions in systems of N>=5 spin 1/2 particles, in columns by combination indices.

The programs for A213347, there is no canonical definition to state claims against.
-/

/-! ## A213347.P16631249440713503059

`A051027(A093620(n))%A322120(n+2)`
-/

namespace A213347.P16631249440713503059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051027 (A093620 n).toNat) (A322120 (n + 2))

end

end A213347.P16631249440713503059

/-!
# A213348: 6-quantum transitions in systems of N >= 6 spin 1/2 particles, in columns by combination indices.

The programs for A213348, there is no canonical definition to state claims against.
-/

/-! ## A213348.P9541310989893602668

`A187203(A349557(n)+A188386(n+3))`
-/

namespace A213348.P9541310989893602668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187203 (A349557 n + A188386 (n + 3)).toNat

end

end A213348.P9541310989893602668

/-!
# A213354: Primes p with digit sums s(p) and s(s(p)) also prime, but s(s(s(p))) not prime.

The programs for A213354, there is no canonical definition to state claims against.
-/

/-! ## A213354.P10186154684590975060

`A106807(A348553(n))`
-/

namespace A213354.P10186154684590975060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106807 (A348553 n).toNat

end

end A213354.P10186154684590975060

/-! ## A213354.P11765059827522496632

`A106807(A387051(n))`
-/

namespace A213354.P11765059827522496632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106807 (A387051 n).toNat

end

end A213354.P11765059827522496632

/-! ## A213354.P1751250810196918328

`A106807(A387108(n))`
-/

namespace A213354.P1751250810196918328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106807 (A387108 n).toNat

end

end A213354.P1751250810196918328

/-! ## A213354.P11026541651404954149

`A106807(A387109(n))`
-/

namespace A213354.P11026541651404954149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106807 (A387109 n).toNat

end

end A213354.P11026541651404954149

/-! ## A213354.P9169316318360599402

`A106807(A004438(n+1))`
-/

namespace A213354.P9169316318360599402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106807 (A004438 (n + 1)).toNat

end

end A213354.P9169316318360599402

/-!
# A213356: Numbers that are not the sum of distinct primes with prime subscripts.

The programs for A213356, there is no canonical definition to state claims against.
-/

/-! ## A213356.P7180577969274416422

`comp[A351368(n+1)]`
-/

namespace A213356.P7180577969274416422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351368 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A213356.P7180577969274416422

/-! ## A213356.P7455151463891783354

`eq[0, A271368(n+1)]+1`
-/

namespace A213356.P7455151463891783354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271368 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A213356.P7455151463891783354

/-! ## A213356.P8662519963735994710

`comp[A185723(n+1)-1]+1`
-/

namespace A213356.P8662519963735994710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185723 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A213356.P8662519963735994710

/-! ## A213356.P13609118345570529300

`lt[A271368(A028310(n))/acot(n), n]`
-/

namespace A213356.P13609118345570529300
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A271368 (A028310 n).toNat : ℝ) / SequenceMachineLib.acot (n : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A213356.P13609118345570529300

/-! ## A213356.P12600596813487438047

`comp[∪[A000578(2*n), A185723(n+1)]]`
-/

namespace A213356.P12600596813487438047
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (2 * n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185723 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A213356.P12600596813487438047

/-!
# A213357: E.g.f. satisfies A(x) = 1 + (exp(x) - 1) * A(exp(x) - 1).

The programs for A213357, there is no canonical definition to state claims against.
-/

/-! ## A213357.P6316325344488440971

`A048801(n+1)/(n+1)`
-/

namespace A213357.P6316325344488440971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048801 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A213357.P6316325344488440971

/-! ## A213357.P5330009265811494226

`A070046(∏[A000032(n)])`
-/

namespace A213357.P5330009265811494226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070046 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A213357.P5330009265811494226

/-!
# A213359: Sum of all parts that are not the smallest part (counted with multiplicity) of all partitions of n.

The programs for A213359, there is no canonical definition to state claims against.
-/

/-! ## A213359.P4018836003788023670

`A066186(n+1)-A092309(n+1)`
-/

namespace A213359.P4018836003788023670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (n + 1) - A092309 (n + 1)

end

end A213359.P4018836003788023670

/-! ## A213359.P8374675212225332543

`∑[A138879(n+1)]-A092309(n+1)`
-/

namespace A213359.P8374675212225332543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A092309 (n + 1)

end

end A213359.P8374675212225332543

/-! ## A213359.P9623748091762465947

`(n+1)*Δ[A000070(n)]-A092309(n+1)`
-/

namespace A213359.P9623748091762465947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n) - A092309 (n + 1)

end

end A213359.P9623748091762465947

/-! ## A213359.P14927661481959088904

`(n+1)*A000041(n+1)-A092309(n+1)`
-/

namespace A213359.P14927661481959088904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000041 (n + 1) - A092309 (n + 1)

end

end A213359.P14927661481959088904

/-! ## A213359.P5286262277718039906

`A092269(n+1)+A220907(n+1)-A092309(n+1)`
-/

namespace A213359.P5286262277718039906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092269 (n + 1) + (A220907 (n + 1) - A092309 (n + 1))

end

end A213359.P5286262277718039906

/-! ## A213359.P10300766748586764382

`record[A206561(n+1)]-A092309(n+1)`
-/

namespace A213359.P10300766748586764382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206561 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A092309 (n + 1)

end

end A213359.P10300766748586764382

/-! ## A213359.P15394018340311952128

`A206561(A000124(n))-A092309(n+1)`
-/

namespace A213359.P15394018340311952128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206561 (A000124 n).toNat - A092309 (n + 1)

end

end A213359.P15394018340311952128

/-!
# A213360: Snowflake sequence starting with six E-toothpicks.

The programs for A213360, there is no canonical definition to state claims against.
-/

/-! ## A213360.P2713952692591919487

`6*A161336(n)`
-/

namespace A213360.P2713952692591919487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A161336 n

end

end A213360.P2713952692591919487

/-! ## A213360.P16558245659175918334

`A161330(n+1)-2`
-/

namespace A213360.P16558245659175918334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161330 (n + 1) - 2

end

end A213360.P16558245659175918334

/-! ## A213360.P1024182750689992633

`∑[6*A211974(n)]`
-/

namespace A213360.P1024182750689992633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A211974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213360.P1024182750689992633

/-! ## A213360.P4530842265110058908

`6*(A220478(n)-n)`
-/

namespace A213360.P4530842265110058908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A220478 n - (n : ℤ))

end

end A213360.P4530842265110058908

/-! ## A213360.P17882072934577961383

`∑[A161331(n+1)]-2`
-/

namespace A213360.P17882072934577961383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161331 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A213360.P17882072934577961383

/-! ## A213360.P11572252543013872875

`6*(∑[A220498(n)]-n)`
-/

namespace A213360.P11572252543013872875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220498 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ))

end

end A213360.P11572252543013872875

/-! ## A213360.P1572759704262129986

`2*(∑[A161332(n+1)]-1)`
-/

namespace A213360.P1572759704262129986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161332 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A213360.P1572759704262129986

/-! ## A213360.P7305886968590526739

`∑[6*Δ[round(A161330(n)/6)]]`
-/

namespace A213360.P7305886968590526739
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A161330 n : ℚ) / 6)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213360.P7305886968590526739

/-! ## A213360.P5709874672195363684

`∑[A161331(floor(atan(n+1))+n)]`
-/

namespace A213360.P5709874672195363684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161331 (⌊Real.arctan (n + 1 : ℝ)⌋ + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213360.P5709874672195363684

/-! ## A213360.P13479544618304104852

`A008588(A161336(n))`
-/

namespace A213360.P13479544618304104852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (A161336 n).toNat

end

end A213360.P13479544618304104852

/-!
# A213361: Triangle read by rows in which row n lists the number of pairs of states of the subshells of the n-th shell of the nuclear shell model ordered by energy level in increasing order.

The programs for A213361, there is no canonical definition to state claims against.
-/

/-! ## A213361.P10081078732398278870

`A213362(n+1)/2`
-/

namespace A213361.P10081078732398278870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213362 (n + 1) : ℚ) / 2

end

end A213361.P10081078732398278870

/-! ## A213361.P12627428240181521077

`A001281(A213362(n+1))`
-/

namespace A213361.P12627428240181521077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A213362 (n + 1)).toNat

end

end A213361.P12627428240181521077

/-! ## A213361.P4697963612989253376

`A004524(A213362(n+1)+1)`
-/

namespace A213361.P4697963612989253376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A213362 (n + 1) + 1).toNat

end

end A213361.P4697963612989253376

/-! ## A213361.P6416583056380051602

`A004526(A213362(n+1)+1)`
-/

namespace A213361.P6416583056380051602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A213362 (n + 1) + 1).toNat

end

end A213361.P6416583056380051602

/-!
# A213362: Triangle read by rows in which row n lists the number of states of the subshells of the n-th shell of the nuclear shell model ordered by energy level in increasing order.

The programs for A213362, there is no canonical definition to state claims against.
-/

/-! ## A213362.P16433859063232031812

`2*A213361(n+1)`
-/

namespace A213362.P16433859063232031812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213361 (n + 1)

end

end A213362.P16433859063232031812

/-! ## A213362.P5976532686046103041

`2*dr(A213361(abs(xor(n, -1))))`
-/

namespace A213362.P5976532686046103041
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.digitalRoot (A213361 |Int.xor (n : ℤ) (-1)|.toNat)

end

end A213362.P5976532686046103041

/-! ## A213362.P16927008153480138011

`Δ[∪[A162626(n), A213364(n+1)]]`
-/

namespace A213362.P16927008153480138011
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162626 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213364 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A213362.P16927008153480138011

/-! ## A213362.P4109590276168723425

`A056964(or(C(2, n), A213361(n+1)))`
-/

namespace A213362.P4109590276168723425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 (Int.lor (Nat.choose 2 n : ℤ) (A213361 (n + 1))).toNat

end

end A213362.P4109590276168723425

/-!
# A213363: Total number of pairs of states of the first n subshells of the nuclear shell model in which the subshells are ordered by energy level in increasing order.

The programs for A213363, there is no canonical definition to state claims against.
-/

/-! ## A213363.P17427689594931799190

`A213364(n+1)/2`
-/

namespace A213363.P17427689594931799190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213364 (n + 1) : ℚ) / 2

end

end A213363.P17427689594931799190

/-! ## A213363.P15683875959231694804

`∑[A213361(n+1)]`
-/

namespace A213363.P15683875959231694804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213361 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213363.P15683875959231694804

/-! ## A213363.P10326209287575753249

`∑[A213362(n+1)/2]`
-/

namespace A213363.P10326209287575753249
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213362 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213363.P10326209287575753249

/-! ## A213363.P3456042874822460784

`∑[A213361(abs(xor(n, -1)))%9]`
-/

namespace A213363.P3456042874822460784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213361 |Int.xor (n : ℤ) (-1)|.toNat) 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213363.P3456042874822460784

/-! ## A213363.P15422452078271397498

`A001281(A213364(n+1))`
-/

namespace A213363.P15422452078271397498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A213364 (n + 1)).toNat

end

end A213363.P15422452078271397498

/-!
# A213364: Total number of states of the first n subshells of the nuclear shell model in which the subshells are ordered by energy level in increasing order.

The programs for A213364, there is no canonical definition to state claims against.
-/

/-! ## A213364.P8829414617734169170

`2*A213363(n+1)`
-/

namespace A213364.P8829414617734169170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213363 (n + 1)

end

end A213364.P8829414617734169170

/-! ## A213364.P13524413549985057971

`∑[A213362(n+1)]`
-/

namespace A213364.P13524413549985057971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213362 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213364.P13524413549985057971

/-! ## A213364.P14260096299677236514

`∑[2*A213361(n+1)]`
-/

namespace A213364.P14260096299677236514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213361 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213364.P14260096299677236514

/-! ## A213364.P16398738263896616108

`2*∑[A213361(abs(xor(n, -1)))]`
-/

namespace A213364.P16398738263896616108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213361 |Int.xor (n : ℤ) (-1)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A213364.P16398738263896616108

/-! ## A213364.P4836582321073466631

`A004277(A213363(n+1))`
-/

namespace A213364.P4836582321073466631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A213363 (n + 1)).toNat

end

end A213364.P4836582321073466631

/-!
# A213365: Numbers k such that 3*k is a partition number.

The programs for A213365, there is no canonical definition to state claims against.
-/

/-! ## A213365.P887271920667843983

`A087183(n+1)/3`
-/

namespace A213365.P887271920667843983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087183 (n + 1) : ℚ) / 3

end

end A213365.P887271920667843983

/-! ## A213365.P10038937628717545667

`A000041(A083214(n+1))/3`
-/

namespace A213365.P10038937628717545667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 (A083214 (n + 1)).toNat : ℚ) / 3

end

end A213365.P10038937628717545667

/-! ## A213365.P4490311756242199973

`A000041(eq[0, A068907(n)])/3`
-/

namespace A213365.P4490311756242199973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068907 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 3

end

end A213365.P4490311756242199973

/-! ## A213365.P1625636847400262114

`A000041(lt[A068907(n), 1])/3`
-/

namespace A213365.P1625636847400262114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068907 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n) : ℚ) / 3

end

end A213365.P1625636847400262114

/-! ## A213365.P2681134058150104491

`A000041(eq[9, dr(A299473(n))])/3`
-/

namespace A213365.P2681134058150104491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A299473 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) : ℚ) / 3

end

end A213365.P2681134058150104491

/-!
# A213367: Numbers that are not squares of primes.

The programs for A213367, the canonical program `A213367.P17118129021108308836` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213367 has offset 1).

The definition of A213367 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213367.P17118129021108308836

`or(char[2], comp[record[∑{p}[n, #²]]])`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A213367

/-- `or(char[2], comp[record[∑{p}[n, #²]]])` -/
def P17118129021108308836.Spec : Prop :=
  ∀ n, (P17118129021108308836.a n : ℤ) = A213367 (n + 1)

theorem P17118129021108308836.correct : P17118129021108308836.Spec := by
  intro n
  simp only [A213367, Nat.add_sub_cancel]

end A213367

/-! ## A213367.P10091630728813539151

`comp[record[∑{p}[n, #²]]-1]+1`
-/

namespace A213367.P10091630728813539151
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), p ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A213367.P10091630728813539151

namespace A213367

/-- `comp[record[∑{p}[n, #²]]-1]+1` -/
def P10091630728813539151.Spec : Prop :=
  ∀ n, (P10091630728813539151.a n : ℤ) = A213367 (n + 1)

end A213367

/-! ## A213367.P8756683895262137066

`comp[p?[abs(xor(n, -2))]²-1]+1`
-/

namespace A213367.P8756683895262137066
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2 - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A213367.P8756683895262137066

namespace A213367

/-- `comp[p?[abs(xor(n, -2))]²-1]+1` -/
def P8756683895262137066.Spec : Prop :=
  ∀ n, (P8756683895262137066.a n : ℤ) = A213367 (n + 1)

end A213367

/-! ## A213367.P2016097079014087216

`comp[p?[xor(1, n)+1]²-1]+1`
-/

namespace A213367.P2016097079014087216
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) ^ 2 : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A213367.P2016097079014087216

namespace A213367

/-- `comp[p?[xor(1, n)+1]²-1]+1` -/
def P2016097079014087216.Spec : Prop :=
  ∀ n, (P2016097079014087216.a n : ℤ) = A213367 (n + 1)

end A213367

/-! ## A213367.P11276480998411422133

`comp[p?[n%3+n]²-1]+1`
-/

namespace A213367.P11276480998411422133
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) ^ 2 : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A213367.P11276480998411422133

namespace A213367

/-- `comp[p?[n%3+n]²-1]+1` -/
def P11276480998411422133.Spec : Prop :=
  ∀ n, (P11276480998411422133.a n : ℤ) = A213367 (n + 1)

end A213367

/-! ## A213367.P10331490315195147487

`comp[p?[round(2*n/7)]²-1]+1`
-/

namespace A213367.P10331490315195147487
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2 - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A213367.P10331490315195147487

namespace A213367

/-- `comp[p?[round(2*n/7)]²-1]+1` -/
def P10331490315195147487.Spec : Prop :=
  ∀ n, (P10331490315195147487.a n : ℤ) = A213367 (n + 1)

end A213367

/-! ## A213367.P4636885970912899153

`eq[A000038(n), A302048(n)]`
-/

namespace A213367.P4636885970912899153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302048 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A213367.P4636885970912899153

namespace A213367

/-- `eq[A000038(n), A302048(n)]` -/
def P4636885970912899153.Spec : Prop :=
  ∀ n, (P4636885970912899153.a n : ℤ) = A213367 (n + 1)

end A213367

/-! ## A213367.P10920219724161009463

`eq[A000007(n), A302048(n)]`
-/

namespace A213367.P10920219724161009463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302048 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A213367.P10920219724161009463

namespace A213367

/-- `eq[A000007(n), A302048(n)]` -/
def P10920219724161009463.Spec : Prop :=
  ∀ n, (P10920219724161009463.a n : ℤ) = A213367 (n + 1)

end A213367

/-! ## A213367.P13549230669620687433

`eq[A151933(n), A302048(n)]`
-/

namespace A213367.P13549230669620687433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302048 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A213367.P13549230669620687433

namespace A213367

/-- `eq[A151933(n), A302048(n)]` -/
def P13549230669620687433.Spec : Prop :=
  ∀ n, (P13549230669620687433.a n : ℤ) = A213367 (n + 1)

end A213367

/-!
# A213368: Row sums of triangle A212954 of two color Ramsey numbers.

The programs for A213368, there is no canonical definition to state claims against.
-/

/-! ## A213368.P5006733622676983703

`ogf((1+x+x^2+x^3+2x^4+3x^5+8x^6)/(1-x-x^2-x^3+x^5))`
-/

namespace A213368.P5006733622676983703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1, 1, 2, 3, 8] [1, -1, -1, -1, 0, 1] n

end

end A213368.P5006733622676983703

/-! ## A213368.P4807928061455210391

`2*A289509(a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A213368.P4807928061455210391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * A289509 (a (n - 2)).toNat

end

end A213368.P4807928061455210391

/-! ## A213368.P9926908096681066509

`round(A317142(2*n+3)/3)`
-/

namespace A213368.P9926908096681066509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A317142 (2 * n + 3) : ℚ) / 3)

end

end A213368.P9926908096681066509

/-! ## A213368.P8411934029152131369

`∑[A003476(n+1)]-n%6`
-/

namespace A213368.P8411934029152131369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003476 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n % 6 : ℕ) : ℤ)

end

end A213368.P8411934029152131369

/-!
# A213369: The twisted Stern sequence: a(0) = 0, a(1) = 1 and a(2n) = -a(n), a(2n + 1) = -a(n)-a(n + 1) for n>=1.

The programs for A213369, the canonical program `A213369.P8237522146268580617` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213369 has offset 0).

The definition of A213369 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213369.P8237522146268580617

`A318163(2*A003817(n)-n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A213369

/-- `A318163(2*A003817(n)-n)` -/
def P8237522146268580617.Spec : Prop :=
  ∀ n, P8237522146268580617.a n = A213369 n

theorem P8237522146268580617.correct : P8237522146268580617.Spec := by
  intro n
  simp only [A213369]

end A213369

/-! ## A213369.P13075017555019920236

`A318163(A003817(n)+A003817(n)-n)`
-/

namespace A213369.P13075017555019920236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318163 (A003817 n + (A003817 n - (n : ℤ))).toNat

end

end A213369.P13075017555019920236

namespace A213369

/-- `A318163(A003817(n)+A003817(n)-n)` -/
def P13075017555019920236.Spec : Prop :=
  ∀ n, P13075017555019920236.a n = A213369 n

theorem P13075017555019920236.correct : P13075017555019920236.Spec := by
  intro n
  simp only [A213369, Nat.add_sub_cancel, A213369.P13075017555019920236.a, A213369.P8237522146268580617.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A213369

/-! ## A213369.P3654519062042027941

`A318163(A003817(n)-(n-A003817(n)))`
-/

namespace A213369.P3654519062042027941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318163 (A003817 n - ((n : ℤ) - A003817 n)).toNat

end

end A213369.P3654519062042027941

namespace A213369

/-- `A318163(A003817(n)-(n-A003817(n)))` -/
def P3654519062042027941.Spec : Prop :=
  ∀ n, P3654519062042027941.a n = A213369 n

theorem P3654519062042027941.correct : P3654519062042027941.Spec := by
  intro n
  simp only [A213369, Nat.add_sub_cancel, A213369.P3654519062042027941.a, A213369.P8237522146268580617.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A213369

/-! ## A213369.P6176598922267312333

`A318163(A004273(n)+A003817(n))`
-/

namespace A213369.P6176598922267312333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318163 (A004273 n + A003817 n).toNat

end

end A213369.P6176598922267312333

namespace A213369

/-- `A318163(A004273(n)+A003817(n))` -/
def P6176598922267312333.Spec : Prop :=
  ∀ n, P6176598922267312333.a n = A213369 n

end A213369

/-! ## A213369.P4894589559049384508

`A007306(n+1)-(A287732(2*n+1)+A287730(2*(n+1)))`
-/

namespace A213369.P4894589559049384508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (n + 1) - (A287732 (2 * n + 1) + A287730 (2 * (n + 1)))

end

end A213369.P4894589559049384508

namespace A213369

/-- `A007306(n+1)-(A287732(2*n+1)+A287730(2*(n+1)))` -/
def P4894589559049384508.Spec : Prop :=
  ∀ n, P4894589559049384508.a n = A213369 n

end A213369

/-! ## A213369.P3280349234194572772

`A287729(2*(n+1))+A287729(4*n+1)-A002487(2*n+1)`
-/

namespace A213369.P3280349234194572772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287729 (2 * (n + 1)) + (A287729 (4 * n + 1) - A002487 (2 * n + 1))

end

end A213369.P3280349234194572772

namespace A213369

/-- `A287729(2*(n+1))+A287729(4*n+1)-A002487(2*n+1)` -/
def P3280349234194572772.Spec : Prop :=
  ∀ n, P3280349234194572772.a n = A213369 n

end A213369

/-! ## A213369.P9527638719763392473

`A002487(2*n+1)-(A287730(2*(n+1))+A287730(4*n+1))`
-/

namespace A213369.P9527638719763392473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (2 * n + 1) - (A287730 (2 * (n + 1)) + A287730 (4 * n + 1))

end

end A213369.P9527638719763392473

namespace A213369

/-- `A002487(2*n+1)-(A287730(2*(n+1))+A287730(4*n+1))` -/
def P9527638719763392473.Spec : Prop :=
  ∀ n, P9527638719763392473.a n = A213369 n

end A213369

/-! ## A213369.P4386929185948160699

`A287730(A022144(n))-A287730(A008574(n))`
-/

namespace A213369.P4386929185948160699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287730 (A022144 n).toNat - A287730 (A008574 n).toNat

end

end A213369.P4386929185948160699

namespace A213369

/-- `A287730(A022144(n))-A287730(A008574(n))` -/
def P4386929185948160699.Spec : Prop :=
  ∀ n, P4386929185948160699.a n = A213369 n

end A213369

/-! ## A213369.P4543215312153909648

`A287729(A028310(n))-A287729(A022144(n))`
-/

namespace A213369.P4543215312153909648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287729 (A028310 n).toNat - A287729 (A022144 n).toNat

end

end A213369.P4543215312153909648

namespace A213369

/-- `A287729(A028310(n))-A287729(A022144(n))` -/
def P4543215312153909648.Spec : Prop :=
  ∀ n, P4543215312153909648.a n = A213369 n

end A213369

/-!
# A213370: a(n) = n AND 2*n, where AND is the bitwise AND operator.

The programs for A213370, the canonical program `A213370.P7348519571154727903` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213370 has offset 0).

The definition of A213370 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213370.P7348519571154727903

`and(n, 2*n)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A213370

/-- `and(n, 2*n)` -/
def P7348519571154727903.Spec : Prop :=
  ∀ n, (P7348519571154727903.a n : ℤ) = A213370 n

theorem P7348519571154727903.correct : P7348519571154727903.Spec := by
  intro n
  simp only [A213370]

end A213370

/-! ## A213370.P2227770153575647347

`2*A048735(n)`
-/

namespace A213370.P2227770153575647347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048735 n

end

end A213370.P2227770153575647347

namespace A213370

/-- `2*A048735(n)` -/
def P2227770153575647347.Spec : Prop :=
  ∀ n, P2227770153575647347.a n = A213370 n

end A213370

/-! ## A213370.P9949594194205868973

`or(2*n, -n)+n`
-/

namespace A213370.P9949594194205868973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * n : ℤ) (-(n : ℤ)) + (n : ℤ)

end

end A213370.P9949594194205868973

namespace A213370

/-- `or(2*n, -n)+n` -/
def P9949594194205868973.Spec : Prop :=
  ∀ n, P9949594194205868973.a n = A213370 n

end A213370

/-! ## A213370.P6203822598409492816

`n-and(n, Δ[-n²])`
-/

namespace A213370.P6203822598409492816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.land (n : ℤ) (f1 (n + 1) - f1 n)

end

end A213370.P6203822598409492816

namespace A213370

/-- `n-and(n, Δ[-n²])` -/
def P6203822598409492816.Spec : Prop :=
  ∀ n, P6203822598409492816.a n = A213370 n

end A213370

/-! ## A213370.P763729337054347548

`xor(n, and(n, Δ[-n²]))`
-/

namespace A213370.P763729337054347548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.land (n : ℤ) (f1 (n + 1) - f1 n))

end

end A213370.P763729337054347548

namespace A213370

/-- `xor(n, and(n, Δ[-n²]))` -/
def P763729337054347548.Spec : Prop :=
  ∀ n, P763729337054347548.a n = A213370 n

end A213370

/-! ## A213370.P5374982028636868738

`3*n-or(n, 2*n)`
-/

namespace A213370.P5374982028636868738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - (Nat.lor n (2 * n) : ℤ)

end

end A213370.P5374982028636868738

namespace A213370

/-- `3*n-or(n, 2*n)` -/
def P5374982028636868738.Spec : Prop :=
  ∀ n, P5374982028636868738.a n = A213370 n

end A213370

/-! ## A213370.P16692819502295411540

`lcm(2, and(n, Δ[n²]-1))`
-/

namespace A213370.P16692819502295411540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (Int.land (n : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1))

end

end A213370.P16692819502295411540

namespace A213370

/-- `lcm(2, and(n, Δ[n²]-1))` -/
def P16692819502295411540.Spec : Prop :=
  ∀ n, (P16692819502295411540.a n : ℤ) = A213370 n

end A213370

/-! ## A213370.P546489561803797165

`xor(n, -or(2*n, -n))`
-/

namespace A213370.P546489561803797165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-Int.lor (2 * n : ℤ) (-(n : ℤ)))

end

end A213370.P546489561803797165

namespace A213370

/-- `xor(n, -or(2*n, -n))` -/
def P546489561803797165.Spec : Prop :=
  ∀ n, P546489561803797165.a n = A213370 n

end A213370

/-! ## A213370.P15110229069839945634

`and(n+1, Δ[n²])-gcd(2, n+1)`
-/

namespace A213370.P15110229069839945634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) - (Nat.gcd 2 (n + 1) : ℤ)

end

end A213370.P15110229069839945634

namespace A213370

/-- `and(n+1, Δ[n²])-gcd(2, n+1)` -/
def P15110229069839945634.Spec : Prop :=
  ∀ n, P15110229069839945634.a n = A213370 n

end A213370

/-! ## A213370.P15474374811713506368

`(2*n+1)%xor(n, or(n+1, 2*n))`
-/

namespace A213370.P15474374811713506368
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) % Nat.xor n (Nat.lor (n + 1) (2 * n))

end

end A213370.P15474374811713506368

namespace A213370

/-- `(2*n+1)%xor(n, or(n+1, 2*n))` -/
def P15474374811713506368.Spec : Prop :=
  ∀ n, (P15474374811713506368.a n : ℤ) = A213370 n

end A213370

/-! ## A213370.P10578836367429789197

`Δ[and(n-2+n, n-1)]+a(n-1)` with `a(0)=0`
-/

namespace A213370.P10578836367429789197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) - 2 + (n : ℤ)) ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  f1 (n + 1) - f1 n + a (n - 1)

end

end A213370.P10578836367429789197

namespace A213370

/-- `Δ[and(n-2+n, n-1)]+a(n-1)` -/
def P10578836367429789197.Spec : Prop :=
  ∀ n, P10578836367429789197.a n = A213370 n

end A213370

/-! ## A213370.P15176686551873184773

`A048728(n)/2`
-/

namespace A213370.P15176686551873184773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048728 n : ℚ) / 2

end

end A213370.P15176686551873184773

namespace A213370

/-- `A048728(n)/2` -/
def P15176686551873184773.Spec : Prop :=
  ∀ n, P15176686551873184773.a n = (A213370 n : ℚ)

theorem P15176686551873184773.correct : P15176686551873184773.Spec := by
  intro n
  simp only [A213370, Nat.add_sub_cancel, A213370.P15176686551873184773.a, A213370.P7348519571154727903.a, A048728, A048728.P12678248660614881244.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A213370

/-! ## A213370.P6948053674045772011

`n-A229763(n)`
-/

namespace A213370.P6948053674045772011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A229763 n

end

end A213370.P6948053674045772011

namespace A213370

/-- `n-A229763(n)` -/
def P6948053674045772011.Spec : Prop :=
  ∀ n, P6948053674045772011.a n = A213370 n

end A213370

/-! ## A213370.P11507123238250288171

`2*n-A213064(n)`
-/

namespace A213370.P11507123238250288171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A213064 n

end

end A213370.P11507123238250288171

namespace A213370

/-- `2*n-A213064(n)` -/
def P11507123238250288171.Spec : Prop :=
  ∀ n, P11507123238250288171.a n = A213370 n

end A213370

/-! ## A213370.P2621594501620101527

`2*(n-A292272(n))`
-/

namespace A213370.P2621594501620101527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) - A292272 n)

end

end A213370.P2621594501620101527

namespace A213370

/-- `2*(n-A292272(n))` -/
def P2621594501620101527.Spec : Prop :=
  ∀ n, P2621594501620101527.a n = A213370 n

end A213370

/-! ## A213370.P6440390186934487464

`3*n-A163617(n)`
-/

namespace A213370.P6440390186934487464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - A163617 n

end

end A213370.P6440390186934487464

namespace A213370

/-- `3*n-A163617(n)` -/
def P6440390186934487464.Spec : Prop :=
  ∀ n, P6440390186934487464.a n = A213370 n

end A213370

/-! ## A213370.P5654229927615102422

`A032766(n)-A003188(n)`
-/

namespace A213370.P5654229927615102422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n - A003188 n

end

end A213370.P5654229927615102422

namespace A213370

/-- `A032766(n)-A003188(n)` -/
def P5654229927615102422.Spec : Prop :=
  ∀ n, P5654229927615102422.a n = A213370 n

end A213370

/-! ## A213370.P12541027426476815191

`A163617(n)-A048724(n)`
-/

namespace A213370.P12541027426476815191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163617 n - A048724 n

end

end A213370.P12541027426476815191

namespace A213370

/-- `A163617(n)-A048724(n)` -/
def P12541027426476815191.Spec : Prop :=
  ∀ n, P12541027426476815191.a n = A213370 n

end A213370

/-! ## A213370.P5430975123578037188

`A004526(n)-A286548(n)`
-/

namespace A213370.P5430975123578037188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n - A286548 n

end

end A213370.P5430975123578037188

namespace A213370

/-- `A004526(n)-A286548(n)` -/
def P5430975123578037188.Spec : Prop :=
  ∀ n, P5430975123578037188.a n = A213370 n

end A213370

/-! ## A213370.P10312056229806783216

`A269160(n)-A269161(n)`
-/

namespace A213370.P10312056229806783216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269160 n - A269161 n

end

end A213370.P10312056229806783216

namespace A213370

/-- `A269160(n)-A269161(n)` -/
def P10312056229806783216.Spec : Prop :=
  ∀ n, P10312056229806783216.a n = A213370 n

end A213370

/-!
# A213371: Triangle read by rows in which row n lists the number of pairs of states of the subshells of the n-th shell of the nuclear shell model ordered by energy level in increasing order.

The programs for A213371, there is no canonical definition to state claims against.
-/

/-! ## A213371.P5985980439932299008

`A213372(n+1)/2`
-/

namespace A213371.P5985980439932299008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213372 (n + 1) : ℚ) / 2

end

end A213371.P5985980439932299008

/-! ## A213371.P2777632982210071970

`Δ[∪[A213373(n+1), n²²]]`
-/

namespace A213371.P2777632982210071970
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213373 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A213371.P2777632982210071970

/-! ## A213371.P2628003083925712684

`A001281(A213372(n+1))`
-/

namespace A213371.P2628003083925712684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A213372 (n + 1)).toNat

end

end A213371.P2628003083925712684

/-! ## A213371.P1696049568213494722

`A122921(A213372(n+1)²)`
-/

namespace A213371.P1696049568213494722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122921 (A213372 (n + 1) ^ 2).toNat

end

end A213371.P1696049568213494722

/-! ## A213371.P5095181487059717842

`A252463(A213372(abs(xor(n, -1))))`
-/

namespace A213371.P5095181487059717842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (A213372 |Int.xor (n : ℤ) (-1)|.toNat).toNat

end

end A213371.P5095181487059717842

/-!
# A213372: Triangle read by rows in which row n lists the number of states of the subshells of the n-th shell of the nuclear shell model ordered by energy level in increasing order.

The programs for A213372, there is no canonical definition to state claims against.
-/

/-! ## A213372.P16347515332062967604

`2*A213371(n+1)`
-/

namespace A213372.P16347515332062967604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213371 (n + 1)

end

end A213372.P16347515332062967604

/-! ## A213372.P10749464947330317599

`2*Δ[∪[A213373(n+1), n²²]]`
-/

namespace A213372.P10749464947330317599
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213373 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A213372.P10749464947330317599

/-! ## A213372.P10102909199821893156

`6*A213371(A348553(n))/3`
-/

namespace A213372.P10102909199821893156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  6 * ((A213371 (A348553 n).toNat : ℚ) / 3)

end

end A213372.P10102909199821893156

/-! ## A213372.P2004886466102058514

`Δ[∪[A213374(n+1), A033547(n)]]`
-/

namespace A213372.P2004886466102058514
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213374 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033547 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A213372.P2004886466102058514

/-! ## A213372.P14989475267814121919

`Δ[∪[A213374(n+1), A162626(n)]]`
-/

namespace A213372.P14989475267814121919
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213374 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162626 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A213372.P14989475267814121919

/-!
# A213373: Total number of pairs of states of the first n subshells of the nuclear shell model in which the subshells are ordered by energy level in increasing order.

The programs for A213373, there is no canonical definition to state claims against.
-/

/-! ## A213373.P17925136195574040078

`A213374(n+1)/2`
-/

namespace A213373.P17925136195574040078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213374 (n + 1) : ℚ) / 2

end

end A213373.P17925136195574040078

/-! ## A213373.P2773667145088854278

`∑[A213371(n+1)]`
-/

namespace A213373.P2773667145088854278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213373.P2773667145088854278

/-! ## A213373.P803002742987472120

`∑[A213372(n+1)/2]`
-/

namespace A213373.P803002742987472120
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213372 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213373.P803002742987472120

/-! ## A213373.P15204925406923332364

`A001281(A213374(n+1))`
-/

namespace A213373.P15204925406923332364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A213374 (n + 1)).toNat

end

end A213373.P15204925406923332364

/-! ## A213373.P3104651781745275267

`A001281(∑[A213372(n+1)])`
-/

namespace A213373.P3104651781745275267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213372 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A213373.P3104651781745275267

/-!
# A213374: Total number of states of the first n subshells of the nuclear shell model in which the subshells are ordered by energy level in increasing order.

The programs for A213374, there is no canonical definition to state claims against.
-/

/-! ## A213374.P6116158678246336827

`2*A213373(n+1)`
-/

namespace A213374.P6116158678246336827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213373 (n + 1)

end

end A213374.P6116158678246336827

/-! ## A213374.P11385469129382442530

`∑[A213372(n+1)]`
-/

namespace A213374.P11385469129382442530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213372 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213374.P11385469129382442530

/-! ## A213374.P639684737302204347

`∑[2*A213371(n+1)]`
-/

namespace A213374.P639684737302204347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213374.P639684737302204347

/-! ## A213374.P3000838809772348041

`A004277(A213373(n+1))`
-/

namespace A213374.P3000838809772348041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A213373 (n + 1)).toNat

end

end A213374.P3000838809772348041

/-! ## A213374.P2028605054896476736

`A000267(A213373(n+1)²)`
-/

namespace A213374.P2028605054896476736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A213373 (n + 1) ^ 2).toNat

end

end A213374.P2028605054896476736

/-!
# A213376: Number of polyominoes of order 2n that cannot be tiled by dominoes.

The programs for A213376, there is no canonical definition to state claims against.
-/

/-! ## A213376.P15233311384297602087

`A210996(n+1)-A056785(n+1)`
-/

namespace A213376.P15233311384297602087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210996 (n + 1) - A056785 (n + 1)

end

end A213376.P15233311384297602087

/-! ## A213376.P17289343297656038794

`A000105(2*(n+1))-A056785(n+1)`
-/

namespace A213376.P17289343297656038794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000105 (2 * (n + 1)) - A056785 (n + 1)

end

end A213376.P17289343297656038794

/-! ## A213376.P12581361847061989537

`A210996(n+1)-(A213378(n+1)+A213377(n+1))`
-/

namespace A213376.P12581361847061989537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210996 (n + 1) - (A213378 (n + 1) + A213377 (n + 1))

end

end A213376.P12581361847061989537

/-!
# A213377: Number of polyominoes of order 2n that can be tiled by dominoes in a unique way.

The programs for A213377, there is no canonical definition to state claims against.
-/

/-! ## A213377.P4470924142234574550

`A056785(n+1)-A213378(n+1)`
-/

namespace A213377.P4470924142234574550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056785 (n + 1) - A213378 (n + 1)

end

end A213377.P4470924142234574550

/-! ## A213377.P11203059048422376419

`A210996(n+1)-A213376(n+1)-A213378(n+1)`
-/

namespace A213377.P11203059048422376419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210996 (n + 1) - A213376 (n + 1) - A213378 (n + 1)

end

end A213377.P11203059048422376419

/-! ## A213377.P7542158225174530413

`A000105(2*(n+1))-A213376(n+1)-A213378(n+1)`
-/

namespace A213377.P7542158225174530413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000105 (2 * (n + 1)) - A213376 (n + 1) - A213378 (n + 1)

end

end A213377.P7542158225174530413

/-!
# A213378: Number of polyominoes of order 2n that can be tiled by dominoes in more than one way.

The programs for A213378, there is no canonical definition to state claims against.
-/

/-! ## A213378.P184725760756894317

`A056785(n+1)-A213377(n+1)`
-/

namespace A213378.P184725760756894317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056785 (n + 1) - A213377 (n + 1)

end

end A213378.P184725760756894317

/-! ## A213378.P16863294226984742515

`A056785(n+1)%A213377(A291769(n))`
-/

namespace A213378.P16863294226984742515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056785 (n + 1)) (A213377 (A291769 n).toNat)

end

end A213378.P16863294226984742515

/-! ## A213378.P6066900196450511260

`A056785(A000027(n+1))%A213377(n+1)`
-/

namespace A213378.P6066900196450511260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056785 (A000027 (n + 1)).toNat) (A213377 (n + 1))

end

end A213378.P6066900196450511260

/-! ## A213378.P6840146781948496301

`A056785(A028310(n+1))%A213377(n+1)`
-/

namespace A213378.P6840146781948496301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056785 (A028310 (n + 1)).toNat) (A213377 (n + 1))

end

end A213378.P6840146781948496301

/-! ## A213378.P6555107557609839546

`A056785(A033061(n+1))%A213377(n+1)`
-/

namespace A213378.P6555107557609839546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056785 (A033061 (n + 1)).toNat) (A213377 (n + 1))

end

end A213378.P6555107557609839546

/-!
# A213380: a(n) = 132*binomial(n,12).

The programs for A213380, the canonical program `A213380.P11115494469414127262` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213380 has offset 0).

The definition of A213380 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `132*C(n, 12)` (program `A213380.P11115494469414127262`, by `A213380.P11115494469414127262.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A213380.P11115494469414127262

`132*C(n, 12)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A213380

/-- `132*C(n, 12)` -/
def P11115494469414127262.Spec : Prop :=
  ∀ n, (P11115494469414127262.a n : ℤ) = A213380 n

theorem P11115494469414127262.correct : P11115494469414127262.Spec := by
  intro n
  simp only [A213380]

end A213380

/-! ## A213380.P229880604833049609

`A008594(11*A185213(n))`
-/

namespace A213380.P229880604833049609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008594 (11 * A185213 n).toNat

end

end A213380.P229880604833049609

namespace A213380

/-- `A008594(11*A185213(n))` -/
def P229880604833049609.Spec : Prop :=
  ∀ n, P229880604833049609.a n = A213380 n

end A213380

/-! ## A213380.P11724241042493657357

`A008594(lcm(11, A185213(n)))`
-/

namespace A213380.P11724241042493657357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008594 (Int.lcm 11 (A185213 n))

end

end A213380.P11724241042493657357

namespace A213380

/-- `A008594(lcm(11, A185213(n)))` -/
def P11724241042493657357.Spec : Prop :=
  ∀ n, P11724241042493657357.a n = A213380 n

end A213380

/-! ## A213380.P6854296544230589766

`A057977(n)*A102683(2^n)`
-/

namespace A213380.P6854296544230589766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 n * A102683 (2 ^ n)

end

end A213380.P6854296544230589766

namespace A213380

/-- `A057977(n)*A102683(2^n)` -/
def P6854296544230589766.Spec : Prop :=
  ∀ n, P6854296544230589766.a n = A213380 n

end A213380

/-! ## A213380.P12841215918811875611

`A004176(A143573(n))*A248813(n)`
-/

namespace A213380.P12841215918811875611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004176 (A143573 n).toNat * A248813 n

end

end A213380.P12841215918811875611

namespace A213380

/-- `A004176(A143573(n))*A248813(n)` -/
def P12841215918811875611.Spec : Prop :=
  ∀ n, P12841215918811875611.a n = A213380 n

end A213380

/-!
# A213381: a(n) = n^n mod (n+2).

The programs for A213381, the canonical program `A213381.P12560780173053572770` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213381 has offset 0).

The definition of A213381 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213381.P12560780173053572770

`(xor(1, n+2)*A000079(n))%(n+2)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A213381

/-- `(xor(1, n+2)*A000079(n))%(n+2)` -/
def P12560780173053572770.Spec : Prop :=
  ∀ n, P12560780173053572770.a n = A213381 n

theorem P12560780173053572770.correct : P12560780173053572770.Spec := by
  intro n
  simp only [A213381]

end A213381

/-! ## A213381.P13630804652469478690

`(n^n)%(n+2)`
-/

namespace A213381.P13630804652469478690
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n % (n + 2)

end

end A213381.P13630804652469478690

namespace A213381

/-- `(n^n)%(n+2)` -/
def P13630804652469478690.Spec : Prop :=
  ∀ n, (P13630804652469478690.a n : ℤ) = A213381 n

end A213381

/-! ## A213381.P18054812436644997679

`abs((1-A014566(n))%(n+2))`
-/

namespace A213381.P18054812436644997679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (1 - A014566 n) (n + 2 : ℤ)|

end

end A213381.P18054812436644997679

namespace A213381

/-- `abs((1-A014566(n))%(n+2))` -/
def P18054812436644997679.Spec : Prop :=
  ∀ n, P18054812436644997679.a n = A213381 n

end A213381

/-!
# A213382: Numbers n such that n^n mod (n + 2) = n.

The programs for A213382, there is no canonical definition to state claims against.
-/

/-! ## A213382.P2524857433471861637

`∪[A081765(n+1), A271267(n+1)]`
-/

namespace A213382.P2524857433471861637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081765 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271267 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A213382.P2524857433471861637

/-! ## A213382.P4051828088006674872

`eq[n, A213381(n)]`
-/

namespace A213382.P4051828088006674872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213381 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A213382.P4051828088006674872

/-! ## A213382.P17315169304900828545

`1+eq[2, A341889(n+1)]`
-/

namespace A213382.P17315169304900828545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341889 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A213382.P17315169304900828545

/-! ## A213382.P17477072396174780632

`lt[n, A213381(n+1)]+1`
-/

namespace A213382.P17477072396174780632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213381 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A213382.P17477072396174780632

/-! ## A213382.P11759736184764351836

`eq[(2-n)*and(1, n)+n, A213859(n)]`
-/

namespace A213382.P11759736184764351836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (n : ℤ)) * (Nat.land 1 n : ℤ) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213859 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A213382.P11759736184764351836

/-! ## A213382.P13647580092559241623

`record[A213381(gcd(n, A213381(n)))]`
-/

namespace A213382.P13647580092559241623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213381 (Int.gcd (n : ℤ) (A213381 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213382.P13647580092559241623

/-! ## A213382.P5123993515269424934

`record[A213381(and(n, A213381(n)))]`
-/

namespace A213382.P5123993515269424934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213381 (Int.land (n : ℤ) (A213381 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213382.P5123993515269424934

/-!
# A213384: Expansion of phi(-q)^3 in powers of q where phi() is a Ramanujan theta function.

The programs for A213384, there is no canonical definition to state claims against.
-/

/-! ## A213384.P85172767198361738

`(-1)^n*A005875(n)`
-/

namespace A213384.P85172767198361738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A005875 n

end

end A213384.P85172767198361738

/-! ## A213384.P4083495956164192242

`A005875(n)*A033999(n)`
-/

namespace A213384.P4083495956164192242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005875 n * A033999 n

end

end A213384.P4083495956164192242

/-! ## A213384.P3602361053881781331

`A005875(n)*A062157(n+1)`
-/

namespace A213384.P3602361053881781331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005875 n * A062157 (n + 1)

end

end A213384.P3602361053881781331

/-! ## A213384.P10113684701817212373

`A005875(n)*A009001(2*n)`
-/

namespace A213384.P10113684701817212373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005875 n * A009001 (2 * n)

end

end A213384.P10113684701817212373

/-! ## A213384.P11340488761575807618

`A005875(n)*A021009(Δ[or(1, n)])`
-/

namespace A213384.P11340488761575807618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005875 n * A021009 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A213384.P11340488761575807618

/-! ## A213384.P14066888081035301835

`A005875(n)*A359155(A007947(n+1))`
-/

namespace A213384.P14066888081035301835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005875 n * A359155 (A007947 (n + 1)).toNat

end

end A213384.P14066888081035301835

/-! ## A213384.P13806882297775848275

`A005875(n)/ratio[A057077(n)]`
-/

namespace A213384.P13806882297775848275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005875 n : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A213384.P13806882297775848275

/-! ## A213384.P17922593569649044760

`A014455(2*n)*A033999(n)`
-/

namespace A213384.P17922593569649044760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014455 (2 * n) * A033999 n

end

end A213384.P17922593569649044760

/-! ## A213384.P4861112063942674202

`(2-A010684(n))*A014455(2*n)`
-/

namespace A213384.P4861112063942674202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A010684 n) * A014455 (2 * n)

end

end A213384.P4861112063942674202

/-! ## A213384.P16660732556505581900

`A005875(n)*A057077(2*n)`
-/

namespace A213384.P16660732556505581900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005875 n * A057077 (2 * n)

end

end A213384.P16660732556505581900

/-! ## A213384.P3964028888806738640

`sqrt(A138202(n))*A057077(2*n)`
-/

namespace A213384.P3964028888806738640
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A138202 n : ℝ) * (A057077 (2 * n) : ℝ)

end

end A213384.P3964028888806738640

/-! ## A213384.P12158353907037305821

`A005875(n)*A101455(2*n+1)`
-/

namespace A213384.P12158353907037305821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005875 n * A101455 (2 * n + 1)

end

end A213384.P12158353907037305821

/-! ## A213384.P1499825964061478584

`(2-A010684(n))*A004015(2*n)`
-/

namespace A213384.P1499825964061478584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A010684 n) * A004015 (2 * n)

end

end A213384.P1499825964061478584

/-! ## A213384.P9948915646335112199

`A005875(n)/A057077(A005408(n))`
-/

namespace A213384.P9948915646335112199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005875 n : ℚ) / (A057077 (A005408 n).toNat : ℚ)

end

end A213384.P9948915646335112199

/-! ## A213384.P12933965144512933330

`2*A005925(4*n)-A004013(4*n)`
-/

namespace A213384.P12933965144512933330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005925 (4 * n) - A004013 (4 * n)

end

end A213384.P12933965144512933330

/-! ## A213384.P5051661620911509117

`A089804(5*n)`
-/

namespace A213384.P5051661620911509117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089804 (5 * n)

end

end A213384.P5051661620911509117

/-! ## A213384.P13826583983629936955

`A005925(4*n)-A005927(4*n)`
-/

namespace A213384.P13826583983629936955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005925 (4 * n) - A005927 (4 * n)

end

end A213384.P13826583983629936955

/-! ## A213384.P17307247485552136992

`A004013(4*n)-2*A005927(4*n)`
-/

namespace A213384.P17307247485552136992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004013 (4 * n) - 2 * A005927 (4 * n)

end

end A213384.P17307247485552136992

/-! ## A213384.P12723289673997828658

`A005875(n)/A057077(A002522(n))`
-/

namespace A213384.P12723289673997828658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005875 n : ℚ) / (A057077 (A002522 n).toNat : ℚ)

end

end A213384.P12723289673997828658

/-!
# A213385: a(n) = number of refinements of the partition n^1.

The programs for A213385, there is no canonical definition to state claims against.
-/

/-! ## A213385.P10661969592980198722

`or(3, A367224(a(n-2)+a(n-1)-2))` with `a(0)=1, a(1)=2`
-/

namespace A213385.P10661969592980198722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.lor 3 (A367224 (a (n - 2) + a (n - 1) - 2).toNat)

end

end A213385.P10661969592980198722

/-! ## A213385.P16952986643735372523

`∑[A133640(A010551(n))]`
-/

namespace A213385.P16952986643735372523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133640 (A010551 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213385.P16952986643735372523

/-! ## A213385.P10914935286684361542

`A134669(A030436(n+1))`
-/

namespace A213385.P10914935286684361542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134669 (A030436 (n + 1)).toNat

end

end A213385.P10914935286684361542

/-!
# A213386: Smallest number k such that the sum of the distinct prime divisors of k equals n times a square > 1.

The programs for A213386, there is no canonical definition to state claims against.
-/

/-! ## A213386.P11321184375565181237

`A213420(n+1)+A000038(n)*A333035(n)`
-/

namespace A213386.P11321184375565181237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213420 (n + 1) + A000038 n * A333035 n

end

end A213386.P11321184375565181237

/-! ## A213386.P12527277159707031004

`or(A138311(A211144(n+1)), A213420(n+1))`
-/

namespace A213386.P12527277159707031004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A138311 (A211144 (n + 1)).toNat) (A213420 (n + 1))

end

end A213386.P12527277159707031004

/-! ## A213386.P1378059331518036648

`or(A045872(A212363(n)), A211144(n+1))`
-/

namespace A213386.P1378059331518036648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A045872 ((A212363 n).toNat + 10)) (A211144 (n + 1))

end

end A213386.P1378059331518036648

/-! ## A213386.P9642875595051718837

`A211144(n+1)+A010681(A363418(n+1))`
-/

namespace A213386.P9642875595051718837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211144 (n + 1) + A010681 (A363418 (n + 1)).toNat

end

end A213386.P9642875595051718837

/-! ## A213386.P7699591866421376903

`A211144(n+1)%A133370(A175791(n+1))`
-/

namespace A213386.P7699591866421376903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211144 (n + 1)) (A133370 (A175791 (n + 1)).toNat)

end

end A213386.P7699591866421376903

/-!
# A213387: a(n) = 5*2^(n-1) - 2 - 3*n.

The programs for A213387, the canonical program `A213387.P11360179553682219369` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213387 has offset 1).

The definition of A213387 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*2^n-2-3*(n+1)` (program `A213387.P11360179553682219369`, by `A213387.P11360179553682219369.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A213387.P11360179553682219369

`5*2^n-2-3*(n+1)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A213387

/-- `5*2^n-2-3*(n+1)` -/
def P11360179553682219369.Spec : Prop :=
  ∀ n, P11360179553682219369.a n = A213387 (n + 1)

theorem P11360179553682219369.correct : P11360179553682219369.Spec := by
  intro n
  simp only [A213387, Nat.add_sub_cancel]

end A213387

/-! ## A213387.P16786795142037395611

`∑[ogf((2x+x^2)/(1-3x+2x^2))]`
-/

namespace A213387.P16786795142037395611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 1] [1, -3, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213387.P16786795142037395611

namespace A213387

/-- `∑[ogf((2x+x^2)/(1-3x+2x^2))]` -/
def P16786795142037395611.Spec : Prop :=
  ∀ n, P16786795142037395611.a n = A213387 (n + 1)

end A213387

/-! ## A213387.P5693752833400938016

`ogf((2x+x^2)/(1-4x+5x^2-2x^3))`
-/

namespace A213387.P5693752833400938016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 1] [1, -4, 5, -2] n

end

end A213387.P5693752833400938016

namespace A213387

/-- `ogf((2x+x^2)/(1-4x+5x^2-2x^3))` -/
def P5693752833400938016.Spec : Prop :=
  ∀ n, P5693752833400938016.a n = A213387 (n + 1)

end A213387

/-! ## A213387.P17767222344430781506

`∑[2*a(n-1)+3]` with `a(0)=0, a(1)=2`
-/

namespace A213387.P17767222344430781506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  2 * f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213387.P17767222344430781506

namespace A213387

/-- `∑[2*a(n-1)+3]` -/
def P17767222344430781506.Spec : Prop :=
  ∀ n, (P17767222344430781506.a n : ℤ) = A213387 (n + 1)

end A213387

/-! ## A213387.P7705175779231418091

`∑[∑[2*a(n-1)]]` with `a(0)=0, a(1)=2, a(2)=5`
-/

namespace A213387.P7705175779231418091
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 5] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213387.P7705175779231418091

namespace A213387

/-- `∑[∑[2*a(n-1)]]` -/
def P7705175779231418091.Spec : Prop :=
  ∀ n, (P7705175779231418091.a n : ℤ) = A213387 (n + 1)

end A213387

/-! ## A213387.P717643821088070115

`∑[lcm(2, a(n-1))+3]` with `a(0)=0, a(1)=2, a(2)=7`
-/

namespace A213387.P717643821088070115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 7] fun n f1 =>
  Nat.lcm 2 (f1 (n - 1)) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213387.P717643821088070115

namespace A213387

/-- `∑[lcm(2, a(n-1))+3]` -/
def P717643821088070115.Spec : Prop :=
  ∀ n, (P717643821088070115.a n : ℤ) = A213387 (n + 1)

end A213387

/-! ## A213387.P11466032529247062368

`floor(2*a(n-1)+3*n-1)` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A213387.P11466032529247062368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * a (n - 1) + ((3 * n : ℤ) - 1)

end

end A213387.P11466032529247062368

namespace A213387

/-- `floor(2*a(n-1)+3*n-1)` -/
def P11466032529247062368.Spec : Prop :=
  ∀ n, P11466032529247062368.a n = A213387 (n + 1)

theorem P11466032529247062368.correct : P11466032529247062368.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A213387, Nat.add_sub_cancel, A213387.P11466032529247062368.a, A213387.P11360179553682219369.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A213387, Nat.add_sub_cancel, A213387.P11466032529247062368.a, A213387.P11360179553682219369.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A213387

/-! ## A213387.P11251571192815781046

`∑[a(n-1)+a(n-1)+3]` with `a(0)=0, a(1)=2`
-/

namespace A213387.P11251571192815781046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213387.P11251571192815781046

namespace A213387

/-- `∑[a(n-1)+a(n-1)+3]` -/
def P11251571192815781046.Spec : Prop :=
  ∀ n, (P11251571192815781046.a n : ℤ) = A213387 (n + 1)

end A213387

/-! ## A213387.P15277260844317674488

`2*((n-1)/2+a(n-1)+n)` with `a(0)=0`
-/

namespace A213387.P15277260844317674488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  2 * (((n : ℤ) - 1 : ℚ) / 2 + (a (n - 1) + (n : ℚ)))

end

end A213387.P15277260844317674488

namespace A213387

/-- `2*((n-1)/2+a(n-1)+n)` -/
def P15277260844317674488.Spec : Prop :=
  ∀ n, P15277260844317674488.a n = (A213387 (n + 1) : ℚ)

theorem P15277260844317674488.correct : P15277260844317674488.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A213387, Nat.add_sub_cancel, A213387.P15277260844317674488.a, A213387.P11360179553682219369.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A213387, Nat.add_sub_cancel, A213387.P15277260844317674488.a, A213387.P11360179553682219369.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A213387

/-! ## A213387.P6206819800131727011

`2*(n-((1-n)/2-a(n-1)))` with `a(0)=0`
-/

namespace A213387.P6206819800131727011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  2 * ((n : ℚ) - ((1 - (n : ℤ) : ℚ) / 2 - a (n - 1)))

end

end A213387.P6206819800131727011

namespace A213387

/-- `2*(n-((1-n)/2-a(n-1)))` -/
def P6206819800131727011.Spec : Prop :=
  ∀ n, P6206819800131727011.a n = (A213387 (n + 1) : ℚ)

theorem P6206819800131727011.correct : P6206819800131727011.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A213387, Nat.add_sub_cancel, A213387.P6206819800131727011.a, A213387.P11360179553682219369.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A213387, Nat.add_sub_cancel, A213387.P6206819800131727011.a, A213387.P11360179553682219369.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A213387

/-! ## A213387.P15406441551501627282

`∑[∑[A084215(n)]-1]`
-/

namespace A213387.P15406441551501627282
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084215 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213387.P15406441551501627282

namespace A213387

/-- `∑[∑[A084215(n)]-1]` -/
def P15406441551501627282.Spec : Prop :=
  ∀ n, P15406441551501627282.a n = A213387 (n + 1)

end A213387

/-! ## A213387.P17127949542860922657

`∑[A131051(n+1)-1]`
-/

namespace A213387.P17127949542860922657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131051 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213387.P17127949542860922657

namespace A213387

/-- `∑[A131051(n+1)-1]` -/
def P17127949542860922657.Spec : Prop :=
  ∀ n, P17127949542860922657.a n = A213387 (n + 1)

end A213387

/-! ## A213387.P10694226560687595758

`∑[A054135(n+1)-2]`
-/

namespace A213387.P10694226560687595758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054135 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213387.P10694226560687595758

namespace A213387

/-- `∑[A054135(n+1)-2]` -/
def P10694226560687595758.Spec : Prop :=
  ∀ n, P10694226560687595758.a n = A213387 (n + 1)

end A213387

/-! ## A213387.P10210358192598513706

`∑[A257113(n+2)-3]`
-/

namespace A213387.P10210358192598513706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257113 (n + 2) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213387.P10210358192598513706

namespace A213387

/-- `∑[A257113(n+2)-3]` -/
def P10210358192598513706.Spec : Prop :=
  ∀ n, P10210358192598513706.a n = A213387 (n + 1)

end A213387

/-! ## A213387.P6982076538239264261

`abs(3*n+5-A020714(n))`
-/

namespace A213387.P6982076538239264261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 * n + 5 : ℤ) - A020714 n|

end

end A213387.P6982076538239264261

namespace A213387

/-- `abs(3*n+5-A020714(n))` -/
def P6982076538239264261.Spec : Prop :=
  ∀ n, P6982076538239264261.a n = A213387 (n + 1)

end A213387

/-! ## A213387.P2947081086970220439

`∑[floor(5*∑[A131577(n)]/2)]`
-/

namespace A213387.P2947081086970220439
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * (((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213387.P2947081086970220439

namespace A213387

/-- `∑[floor(5*∑[A131577(n)]/2)]` -/
def P2947081086970220439.Spec : Prop :=
  ∀ n, P2947081086970220439.a n = A213387 (n + 1)

end A213387

/-! ## A213387.P12282285458034743150

`abs(∑[A033484(n)]-2^n-n)`
-/

namespace A213387.P12282285458034743150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033484 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - (2 ^ n : ℤ) - (n : ℤ)|

end

end A213387.P12282285458034743150

namespace A213387

/-- `abs(∑[A033484(n)]-2^n-n)` -/
def P12282285458034743150.Spec : Prop :=
  ∀ n, P12282285458034743150.a n = A213387 (n + 1)

end A213387

/-! ## A213387.P5676079642414190692

`abs(abs(2*n-5*A000225(n))-n)`
-/

namespace A213387.P5676079642414190692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(|(2 * n : ℤ) - 5 * A000225 n| - (n : ℤ))|

end

end A213387.P5676079642414190692

namespace A213387

/-- `abs(abs(2*n-5*A000225(n))-n)` -/
def P5676079642414190692.Spec : Prop :=
  ∀ n, P5676079642414190692.a n = A213387 (n + 1)

end A213387

/-! ## A213387.P9484829261151644206

`(A247904(n)-(n+1))/2`
-/

namespace A213387.P9484829261151644206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247904 n - (n + 1 : ℤ) : ℚ) / 2

end

end A213387.P9484829261151644206

namespace A213387

/-- `(A247904(n)-(n+1))/2` -/
def P9484829261151644206.Spec : Prop :=
  ∀ n, P9484829261151644206.a n = (A213387 (n + 1) : ℚ)

theorem P9484829261151644206.correct : P9484829261151644206.Spec := by
  intro n
  simp only [A213387, Nat.add_sub_cancel, A213387.P9484829261151644206.a, A213387.P11360179553682219369.a, A247904, A247904.P15407429314126461153.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A213387

/-! ## A213387.P11298120113232405185

`A051669(n)%A101945(n)`
-/

namespace A213387.P11298120113232405185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051669 n) (A101945 n)

end

end A213387.P11298120113232405185

namespace A213387

/-- `A051669(n)%A101945(n)` -/
def P11298120113232405185.Spec : Prop :=
  ∀ n, P11298120113232405185.a n = A213387 (n + 1)

end A213387

/-!
# A213388: Number of (w,x,y) with all terms in {0,...,n} and 2|w-x| >= max(w,x,y)-min(w,x,y).

The programs for A213388, the canonical program `A213388.P14857770292080712780` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213388 has offset 0).

The definition of A213388 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213388.P8669647480035089296

`(8*n^3+30*n²+28*n+3*((-1)^n+3))/12`
-/

namespace A213388.P8669647480035089296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((8 * n ^ 3 + 30 * n ^ 2 + 28 * n : ℤ) + 3 * ((-1) ^ n + 3) : ℚ) / 12

end

end A213388.P8669647480035089296

namespace A213388

/-- `(8*n^3+30*n²+28*n+3*((-1)^n+3))/12` -/
def P8669647480035089296.Spec : Prop :=
  ∀ n, P8669647480035089296.a n = (A213388 n : ℚ)

theorem P8669647480035089296.correct : P8669647480035089296.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A213388, Nat.add_sub_cancel, A213388.P8669647480035089296.a, A213388.P14857770292080712780.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A213388, Nat.add_sub_cancel, A213388.P8669647480035089296.a, A213388.P14857770292080712780.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A213388

/-! ## A213388.P14857770292080712780

`3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` with `a(0)=1, a(1)=6, a(2)=21, a(3)=48, a(4)=93`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A213388

/-- `3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` -/
def P14857770292080712780.Spec : Prop :=
  ∀ n, P14857770292080712780.a n = A213388 n

theorem P14857770292080712780.correct : P14857770292080712780.Spec := by
  intro n
  simp only [A213388]

end A213388

/-! ## A213388.P9427783379365514825

`∑[or(1, ∑[4*n]+n)]`
-/

namespace A213388.P9427783379365514825
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f2 j + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213388.P9427783379365514825

namespace A213388

/-- `∑[or(1, ∑[4*n]+n)]` -/
def P9427783379365514825.Spec : Prop :=
  ∀ n, (P9427783379365514825.a n : ℤ) = A213388 n

end A213388

/-! ## A213388.P16035811436648910127

`∑[∑[a(n-2)+8]]` with `a(0)=1, a(1)=4, a(2)=10`
-/

namespace A213388.P16035811436648910127
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 10] fun n f2 =>
  f2 (n - 2) + 8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213388.P16035811436648910127

namespace A213388

/-- `∑[∑[a(n-2)+8]]` -/
def P16035811436648910127.Spec : Prop :=
  ∀ n, (P16035811436648910127.a n : ℤ) = A213388 n

end A213388

/-! ## A213388.P14540365412992410581

`∑[∑[4*n+1]-and(1, n)]`
-/

namespace A213388.P14540365412992410581
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213388.P14540365412992410581

namespace A213388

/-- `∑[∑[4*n+1]-and(1, n)]` -/
def P14540365412992410581.Spec : Prop :=
  ∀ n, P14540365412992410581.a n = A213388 n

end A213388

/-! ## A213388.P13377508123790380679

`∑[∑[∑[8-a(n-1)]]]` with `a(0)=1, a(1)=3, a(2)=6`
-/

namespace A213388.P13377508123790380679
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 6] fun n f3 =>
  8 - f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213388.P13377508123790380679

namespace A213388

/-- `∑[∑[∑[8-a(n-1)]]]` -/
def P13377508123790380679.Spec : Prop :=
  ∀ n, P13377508123790380679.a n = A213388 n

end A213388

/-! ## A213388.P13393490726894313923

`∑[(2*n+1)*(n+1)-n%2]`
-/

namespace A213388.P13393490726894313923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) * (n + 1) : ℤ) - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213388.P13393490726894313923

namespace A213388

/-- `∑[(2*n+1)*(n+1)-n%2]` -/
def P13393490726894313923.Spec : Prop :=
  ∀ n, P13393490726894313923.a n = A213388 n

end A213388

/-! ## A213388.P16825119518347769833

`floor(∑[lcm(2*n+1, n+1)]-n/2)`
-/

namespace A213388.P16825119518347769833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 * n + 1) (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) - (n : ℚ) / 2⌋

end

end A213388.P16825119518347769833

namespace A213388

/-- `floor(∑[lcm(2*n+1, n+1)]-n/2)` -/
def P16825119518347769833.Spec : Prop :=
  ∀ n, P16825119518347769833.a n = A213388 n

end A213388

/-! ## A213388.P18269681380674945323

`a(n-2)+(2*n+1)*2*n` with `a(0)=1, a(1)=6`
-/

namespace A213388.P18269681380674945323
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n a =>
  a (n - 2) + (2 * n + 1) * (2 * n)

end

end A213388.P18269681380674945323

namespace A213388

/-- `a(n-2)+(2*n+1)*2*n` -/
def P18269681380674945323.Spec : Prop :=
  ∀ n, (P18269681380674945323.a n : ℤ) = A213388 n

end A213388

/-! ## A213388.P11271198890816075011

`∑[(2*n+1)*(n+1)-(2-gcd(2, n))]`
-/

namespace A213388.P11271198890816075011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) * (n + 1) : ℤ) - (2 - (Nat.gcd 2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213388.P11271198890816075011

namespace A213388

/-- `∑[(2*n+1)*(n+1)-(2-gcd(2, n))]` -/
def P11271198890816075011.Spec : Prop :=
  ∀ n, P11271198890816075011.a n = A213388 n

end A213388

/-! ## A213388.P10347197100513538656

`∑[A090381(n)-n²]`
-/

namespace A213388.P10347197100513538656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090381 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213388.P10347197100513538656

namespace A213388

/-- `∑[A090381(n)-n²]` -/
def P10347197100513538656.Spec : Prop :=
  ∀ n, P10347197100513538656.a n = A213388 n

end A213388

/-! ## A213388.P2272007732381234836

`∑[A153126(n)-∑[n]]`
-/

namespace A213388.P2272007732381234836
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153126 n - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213388.P2272007732381234836

namespace A213388

/-- `∑[A153126(n)-∑[n]]` -/
def P2272007732381234836.Spec : Prop :=
  ∀ n, P2272007732381234836.a n = A213388 n

end A213388

/-! ## A213388.P16498921581539529627

`A056640(n+1)+∑[n]`
-/

namespace A213388.P16498921581539529627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056640 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A213388.P16498921581539529627

namespace A213388

/-- `A056640(n+1)+∑[n]` -/
def P16498921581539529627.Spec : Prop :=
  ∀ n, P16498921581539529627.a n = A213388 n

end A213388

/-! ## A213388.P7928423823817002293

`∑[A195605(n)-(n+1)]`
-/

namespace A213388.P7928423823817002293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195605 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213388.P7928423823817002293

namespace A213388

/-- `∑[A195605(n)-(n+1)]` -/
def P7928423823817002293.Spec : Prop :=
  ∀ n, P7928423823817002293.a n = A213388 n

end A213388

/-! ## A213388.P7074376709444085608

`∑[A317298(n)+2*n]`
-/

namespace A213388.P7074376709444085608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317298 n + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213388.P7074376709444085608

namespace A213388

/-- `∑[A317298(n)+2*n]` -/
def P7074376709444085608.Spec : Prop :=
  ∀ n, P7074376709444085608.a n = A213388 n

end A213388

/-! ## A213388.P13535429526925648271

`(n+1)^3-A171218(n)`
-/

namespace A213388.P13535429526925648271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - A171218 n

end

end A213388.P13535429526925648271

namespace A213388

/-- `(n+1)^3-A171218(n)` -/
def P13535429526925648271.Spec : Prop :=
  ∀ n, P13535429526925648271.a n = A213388 n

end A213388

/-! ## A213388.P12850203111246671479

`A098931(n)-a(n-1)` with `a(0)=1`
-/

namespace A213388.P12850203111246671479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A098931 n - a (n - 1)

end

end A213388.P12850203111246671479

namespace A213388

/-- `A098931(n)-a(n-1)` -/
def P12850203111246671479.Spec : Prop :=
  ∀ n, P12850203111246671479.a n = A213388 n

end A213388

/-! ## A213388.P6426774195491858218

`∑[A139592(n)]+(n+1)²`
-/

namespace A213388.P6426774195491858218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 2 : ℤ)

end

end A213388.P6426774195491858218

namespace A213388

/-- `∑[A139592(n)]+(n+1)²` -/
def P6426774195491858218.Spec : Prop :=
  ∀ n, P6426774195491858218.a n = A213388 n

end A213388

/-! ## A213388.P10484421491606937560

`∑[∑[A047471(n+1)]+n]`
-/

namespace A213388.P10484421491606937560
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047471 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213388.P10484421491606937560

namespace A213388

/-- `∑[∑[A047471(n+1)]+n]` -/
def P10484421491606937560.Spec : Prop :=
  ∀ n, P10484421491606937560.a n = A213388 n

end A213388

/-! ## A213388.P7605239204542815473

`A304487(n+1)+n²+n`
-/

namespace A213388.P7605239204542815473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304487 (n + 1) + (n ^ 2 + n : ℤ)

end

end A213388.P7605239204542815473

namespace A213388

/-- `A304487(n+1)+n²+n` -/
def P7605239204542815473.Spec : Prop :=
  ∀ n, P7605239204542815473.a n = A213388 n

end A213388

/-!
# A213389: Number of (w,x,y) with all terms in {0,...,n} and max(w,x,y) < 2*min(w,x,y).

The programs for A213389, the canonical program `A213389.P8644831371672901747` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213389 has offset 0).

The definition of A213389 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213389.P8644831371672901747

`n*ceil(n²/4)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A213389

/-- `n*ceil(n²/4)` -/
def P8644831371672901747.Spec : Prop :=
  ∀ n, P8644831371672901747.a n = A213389 n

theorem P8644831371672901747.correct : P8644831371672901747.Spec := by
  intro n
  simp only [A213389]

end A213389

/-! ## A213389.P17240773011656726729

`(n+1)^3-A213390(n)`
-/

namespace A213389.P17240773011656726729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - A213390 n

end

end A213389.P17240773011656726729

namespace A213389

/-- `(n+1)^3-A213390(n)` -/
def P17240773011656726729.Spec : Prop :=
  ∀ n, P17240773011656726729.a n = A213389 n

end A213389

/-! ## A213389.P2333971402406003076

`lcm(n, n*ceil(n*n/4))`
-/

namespace A213389.P2333971402406003076
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((n : ℤ) * ⌈(n : ℚ) * ((n : ℚ) / 4)⌉)

end

end A213389.P2333971402406003076

namespace A213389

/-- `lcm(n, n*ceil(n*n/4))` -/
def P2333971402406003076.Spec : Prop :=
  ∀ n, (P2333971402406003076.a n : ℤ) = A213389 n

end A213389

/-! ## A213389.P10850436806244628668

`floor(n*∑[a(n-2)+1])` with `a(0)=0, a(1)=1, a(2)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A213389.P10850436806244628668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n f1 =>
  f1 (n - 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A213389.P10850436806244628668

namespace A213389

/-- `floor(n*∑[a(n-2)+1])` -/
def P10850436806244628668.Spec : Prop :=
  ∀ n, (P10850436806244628668.a n : ℤ) = A213389 n

end A213389

/-! ## A213389.P7655925787082912913

`ceil(n*∑[a(n-2)+1])` with `a(0)=0, a(1)=1, a(2)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A213389.P7655925787082912913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n f1 =>
  f1 (n - 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A213389.P7655925787082912913

namespace A213389

/-- `ceil(n*∑[a(n-2)+1])` -/
def P7655925787082912913.Spec : Prop :=
  ∀ n, (P7655925787082912913.a n : ℤ) = A213389 n

end A213389

/-! ## A213389.P9993654443258205625

`3*∑[∑[(n-1)*n%2]]+n`
-/

namespace A213389.P9993654443258205625
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * ((n % 2 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)

end

end A213389.P9993654443258205625

namespace A213389

/-- `3*∑[∑[(n-1)*n%2]]+n` -/
def P9993654443258205625.Spec : Prop :=
  ∀ n, P9993654443258205625.a n = A213389 n

end A213389

/-! ## A213389.P18303061753398622832

`3*∑[∑[(n-1)*and(1, n)]]+n`
-/

namespace A213389.P18303061753398622832
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (Nat.land 1 n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)

end

end A213389.P18303061753398622832

namespace A213389

/-- `3*∑[∑[(n-1)*and(1, n)]]+n` -/
def P18303061753398622832.Spec : Prop :=
  ∀ n, P18303061753398622832.a n = A213389 n

end A213389

/-! ## A213389.P13696908780414616280

`n*∑[a(n-2)+1]+n` with `a(0)=-1, a(1)=1`
-/

namespace A213389.P13696908780414616280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 1] fun n f1 =>
  f1 (n - 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)

end

end A213389.P13696908780414616280

namespace A213389

/-- `n*∑[a(n-2)+1]+n` -/
def P13696908780414616280.Spec : Prop :=
  ∀ n, P13696908780414616280.a n = A213389 n

end A213389

/-! ## A213389.P12440327309459457667

`n-n*∑[a(n-2)-1]` with `a(0)=1, a(1)=-1`
-/

namespace A213389.P12440327309459457667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n f1 =>
  f1 (n - 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A213389.P12440327309459457667

namespace A213389

/-- `n-n*∑[a(n-2)-1]` -/
def P12440327309459457667.Spec : Prop :=
  ∀ n, P12440327309459457667.a n = A213389 n

end A213389

/-! ## A213389.P10691251601579628806

`3*∑[2*C(floor((n+1)/2), 2)]+n`
-/

namespace A213389.P10691251601579628806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose ⌊(n + 1 : ℚ) / 2⌋.toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j) + n

end

end A213389.P10691251601579628806

namespace A213389

/-- `3*∑[2*C(floor((n+1)/2), 2)]+n` -/
def P10691251601579628806.Spec : Prop :=
  ∀ n, (P10691251601579628806.a n : ℤ) = A213389 n

end A213389

/-! ## A213389.P7639333714565181413

`3*A006584(n)+n`
-/

namespace A213389.P7639333714565181413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A006584 n + (n : ℤ)

end

end A213389.P7639333714565181413

namespace A213389

/-- `3*A006584(n)+n` -/
def P7639333714565181413.Spec : Prop :=
  ∀ n, P7639333714565181413.a n = A213389 n

end A213389

/-! ## A213389.P18072548542193679381

`∑[∑[A019426(n)]-n]`
-/

namespace A213389.P18072548542193679381
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213389.P18072548542193679381

namespace A213389

/-- `∑[∑[A019426(n)]-n]` -/
def P18072548542193679381.Spec : Prop :=
  ∀ n, P18072548542193679381.a n = A213389 n

end A213389

/-! ## A213389.P16070647239550403249

`n*and(1, n)+n*A002620(n)`
-/

namespace A213389.P16070647239550403249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * Nat.land 1 n : ℤ) + (n : ℤ) * A002620 n

end

end A213389.P16070647239550403249

namespace A213389

/-- `n*and(1, n)+n*A002620(n)` -/
def P16070647239550403249.Spec : Prop :=
  ∀ n, P16070647239550403249.a n = A213389 n

end A213389

/-! ## A213389.P17826016234682735087

`A061349(n)-A212686(n)`
-/

namespace A213389.P17826016234682735087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061349 n - A212686 n

end

end A213389.P17826016234682735087

namespace A213389

/-- `A061349(n)-A212686(n)` -/
def P17826016234682735087.Spec : Prop :=
  ∀ n, P17826016234682735087.a n = A213389 n

end A213389

/-! ## A213389.P7333017501778925329

`∪[A005898(n), A033431(n)]`
-/

namespace A213389.P7333017501778925329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005898 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033431 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A213389.P7333017501778925329

namespace A213389

/-- `∪[A005898(n), A033431(n)]` -/
def P7333017501778925329.Spec : Prop :=
  ∀ n, (P7333017501778925329.a n : ℤ) = A213389 n

end A213389

/-! ## A213389.P6436404492792813252

`A184628(n+1)%A213390(n)`
-/

namespace A213389.P6436404492792813252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184628 (n + 1)) (A213390 n)

end

end A213389.P6436404492792813252

namespace A213389

/-- `A184628(n+1)%A213390(n)` -/
def P6436404492792813252.Spec : Prop :=
  ∀ n, P6436404492792813252.a n = A213389 n

end A213389

/-! ## A213389.P7289287344595241391

`A005999(n+1)-A123684(n+1)`
-/

namespace A213389.P7289287344595241391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005999 (n + 1) - A123684 (n + 1)

end

end A213389.P7289287344595241391

namespace A213389

/-- `A005999(n+1)-A123684(n+1)` -/
def P7289287344595241391.Spec : Prop :=
  ∀ n, P7289287344595241391.a n = A213389 n

end A213389

/-! ## A213389.P5265444133233431005

`A005997(n+1)-A174114(n+1)`
-/

namespace A213389.P5265444133233431005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005997 (n + 1) - A174114 (n + 1)

end

end A213389.P5265444133233431005

namespace A213389

/-- `A005997(n+1)-A174114(n+1)` -/
def P5265444133233431005.Spec : Prop :=
  ∀ n, P5265444133233431005.a n = A213389 n

end A213389

/-! ## A213389.P7164170543044142225

`A000578(n)-3*n*A002620(n)`
-/

namespace A213389.P7164170543044142225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n - 3 * ((n : ℤ) * A002620 n)

end

end A213389.P7164170543044142225

namespace A213389

/-- `A000578(n)-3*n*A002620(n)` -/
def P7164170543044142225.Spec : Prop :=
  ∀ n, P7164170543044142225.a n = A213389 n

end A213389

/-! ## A213389.P15216975778718071395

`3*A280186(n+1)+n`
-/

namespace A213389.P15216975778718071395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A280186 (n + 1) + (n : ℤ)

end

end A213389.P15216975778718071395

namespace A213389

/-- `3*A280186(n+1)+n` -/
def P15216975778718071395.Spec : Prop :=
  ∀ n, P15216975778718071395.a n = A213389 n

end A213389

/-!
# A213390: Number of (w,x,y) with all terms in {0,...,n} and max(w,x,y) >= 2*min(w,x,y).

The programs for A213390, the canonical program `A213390.P12014214391173083743` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213390 has offset 0).

The definition of A213390 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213390.P12014214391173083743

`(6*n^3+24*n²+21*n+8+3*n*(-1)^n)/8`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A213390

/-- `(6*n^3+24*n²+21*n+8+3*n*(-1)^n)/8` -/
def P12014214391173083743.Spec : Prop :=
  ∀ n, P12014214391173083743.a n = (A213390 n : ℚ)

end A213390

/-! ## A213390.P5265512731139491753

`3*n*∑[∑[log2(gcd(2, n))]]+1`
-/

namespace A213390.P5265512731139491753
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (3 * n : ℝ) * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A213390.P5265512731139491753

namespace A213390

/-- `3*n*∑[∑[log2(gcd(2, n))]]+1` -/
def P5265512731139491753.Spec : Prop :=
  ∀ n, P5265512731139491753.a n = (A213390 n : ℝ)

end A213390

/-! ## A213390.P8785276978678597938

`or(1, 3*n*∑[∑[char[2*n]]])`
-/

namespace A213390.P8785276978678597938
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (3 * n * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A213390.P8785276978678597938

namespace A213390

/-- `or(1, 3*n*∑[∑[char[2*n]]])` -/
def P8785276978678597938.Spec : Prop :=
  ∀ n, (P8785276978678597938.a n : ℤ) = A213390 n

end A213390

/-! ## A213390.P14951538274747190845

`n*∑[a(n-2)+3]+1` with `a(0)=3, a(1)=3`
-/

namespace A213390.P14951538274747190845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 3] fun n f1 =>
  f1 (n - 2) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A213390.P14951538274747190845

namespace A213390

/-- `n*∑[a(n-2)+3]+1` -/
def P14951538274747190845.Spec : Prop :=
  ∀ n, (P14951538274747190845.a n : ℤ) = A213390 n

end A213390

/-! ## A213390.P5509393078390189919

`(n+1)^3-A213389(n)`
-/

namespace A213390.P5509393078390189919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - A213389 n

end

end A213390.P5509393078390189919

namespace A213390

/-- `(n+1)^3-A213389(n)` -/
def P5509393078390189919.Spec : Prop :=
  ∀ n, P5509393078390189919.a n = A213390 n

end A213390

/-! ## A213390.P17214056526542166129

`xor(1, ∑[A008619(n)]*A008585(n))`
-/

namespace A213390.P17214056526542166129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((∑ j ∈ Finset.range (n + 1), f1 j) * A008585 n)

end

end A213390.P17214056526542166129

namespace A213390

/-- `xor(1, ∑[A008619(n)]*A008585(n))` -/
def P17214056526542166129.Spec : Prop :=
  ∀ n, P17214056526542166129.a n = A213390 n

end A213390

/-! ## A213390.P5341930560471184426

`xor(1, 3*n*A002620(n+2))`
-/

namespace A213390.P5341930560471184426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((3 * n : ℤ) * A002620 (n + 2))

end

end A213390.P5341930560471184426

namespace A213390

/-- `xor(1, 3*n*A002620(n+2))` -/
def P5341930560471184426.Spec : Prop :=
  ∀ n, P5341930560471184426.a n = A213390 n

end A213390

/-! ## A213390.P10163893979258511566

`∑[record[A008486(n)*A008611(n)]]`
-/

namespace A213390.P10163893979258511566
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n * A008611 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213390.P10163893979258511566

namespace A213390

/-- `∑[record[A008486(n)*A008611(n)]]` -/
def P10163893979258511566.Spec : Prop :=
  ∀ n, P10163893979258511566.a n = A213390 n

end A213390

/-! ## A213390.P15330608924356353109

`∑[A152919(2*n+1+n)]`
-/

namespace A213390.P15330608924356353109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152919 (2 * n + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213390.P15330608924356353109

namespace A213390

/-- `∑[A152919(2*n+1+n)]` -/
def P15330608924356353109.Spec : Prop :=
  ∀ n, P15330608924356353109.a n = A213390 n

end A213390

/-! ## A213390.P567454156205905846

`∑[A064455(n+1)*A064455(A008486(n))]`
-/

namespace A213390.P567454156205905846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064455 (n + 1) * A064455 (A008486 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213390.P567454156205905846

namespace A213390

/-- `∑[A064455(n+1)*A064455(A008486(n))]` -/
def P567454156205905846.Spec : Prop :=
  ∀ n, P567454156205905846.a n = A213390 n

end A213390

/-!
# A213391: Number of (w,x,y) with all terms in {0,...,n} and 2*max(w,x,y) < 3*min(w,x,y).

The programs for A213391, the canonical program `A213391.P8776098134168611646` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213391 has offset 0).

The definition of A213391 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213391.P8776098134168611646

`(n^3+6*n*((n+1)%3+1)%2-2+2*(n+1)%3)/9`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A213391

/-- `(n^3+6*n*((n+1)%3+1)%2-2+2*(n+1)%3)/9` -/
def P8776098134168611646.Spec : Prop :=
  ∀ n, P8776098134168611646.a n = (A213391 n : ℚ)

end A213391

/-! ## A213391.P13607965173167612801

`(n+1)^3-A213392(n)`
-/

namespace A213391.P13607965173167612801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - A213392 n

end

end A213391.P13607965173167612801

namespace A213391

/-- `(n+1)^3-A213392(n)` -/
def P13607965173167612801.Spec : Prop :=
  ∀ n, P13607965173167612801.a n = A213391 n

end A213391

/-! ## A213391.P13424770339071447811

`∑[A092076(n)]-A092076(n)`
-/

namespace A213391.P13424770339071447811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092076 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A092076 n

end

end A213391.P13424770339071447811

namespace A213391

/-- `∑[A092076(n)]-A092076(n)` -/
def P13424770339071447811.Spec : Prop :=
  ∀ n, P13424770339071447811.a n = A213391 n

end A213391

/-! ## A213391.P13820393423950900747

`A000578(n)-6*A190798(n)`
-/

namespace A213391.P13820393423950900747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n - 6 * A190798 n

end

end A213391.P13820393423950900747

namespace A213391

/-- `A000578(n)-6*A190798(n)` -/
def P13820393423950900747.Spec : Prop :=
  ∀ n, P13820393423950900747.a n = A213391 n

end A213391

/-! ## A213391.P8345317161229732769

`A184628(n+1)%A213392(n)`
-/

namespace A213391.P8345317161229732769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184628 (n + 1)) (A213392 n)

end

end A213391.P8345317161229732769

namespace A213391

/-- `A184628(n+1)%A213392(n)` -/
def P8345317161229732769.Spec : Prop :=
  ∀ n, P8345317161229732769.a n = A213391 n

end A213391

/-! ## A213391.P16847786812041267346

`∑[∑[A004275(n%A078689(n))]]`
-/

namespace A213391.P16847786812041267346
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (Int.tmod (n : ℤ) (A078689 n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213391.P16847786812041267346

namespace A213391

/-- `∑[∑[A004275(n%A078689(n))]]` -/
def P16847786812041267346.Spec : Prop :=
  ∀ n, P16847786812041267346.a n = A213391 n

end A213391

/-! ## A213391.P2942954229700504150

`A102899(n)+A008763(2*n)`
-/

namespace A213391.P2942954229700504150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102899 n + A008763 (2 * n)

end

end A213391.P2942954229700504150

namespace A213391

/-- `A102899(n)+A008763(2*n)` -/
def P2942954229700504150.Spec : Prop :=
  ∀ n, P2942954229700504150.a n = A213391 n

end A213391

/-! ## A213391.P3997512459373167865

`∑[A077043(A063195(2*n+1))]`
-/

namespace A213391.P3997512459373167865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 (A063195 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213391.P3997512459373167865

namespace A213391

/-- `∑[A077043(A063195(2*n+1))]` -/
def P3997512459373167865.Spec : Prop :=
  ∀ n, P3997512459373167865.a n = A213391 n

end A213391

/-! ## A213391.P13457900042058252307

`A087509(2*n)+A008763(2*n)`
-/

namespace A213391.P13457900042058252307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087509 (2 * n) + A008763 (2 * n)

end

end A213391.P13457900042058252307

namespace A213391

/-- `A087509(2*n)+A008763(2*n)` -/
def P13457900042058252307.Spec : Prop :=
  ∀ n, P13457900042058252307.a n = A213391 n

end A213391

/-! ## A213391.P14823348775357150503

`A066023(n+1)%A213392(n)`
-/

namespace A213391.P14823348775357150503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066023 (n + 1)) (A213392 n)

end

end A213391.P14823348775357150503

namespace A213391

/-- `A066023(n+1)%A213392(n)` -/
def P14823348775357150503.Spec : Prop :=
  ∀ n, P14823348775357150503.a n = A213391 n

end A213391

/-!
# A213392: Number of (w,x,y) with all terms in {0,...,n} and 2*max(w,x,y) >= 3*min(w,x,y).

The programs for A213392, the canonical program `A213392.P13729878407923535789` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213392 has offset 0).

The definition of A213392 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A213393, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A213392.P13729878407923535789

`A213393(n)+A092076(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A213392

/-- `A213393(n)+A092076(n)` -/
def P13729878407923535789.Spec : Prop :=
  ∀ n, P13729878407923535789.a n = A213392 n

theorem P13729878407923535789.correct : P13729878407923535789.Spec := by
  intro n
  simp only [A213392]

end A213392

/-! ## A213392.P7129406600810963831

`(n+1)^3-A213391(n)`
-/

namespace A213392.P7129406600810963831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - A213391 n

end

end A213392.P7129406600810963831

namespace A213392

/-- `(n+1)^3-A213391(n)` -/
def P7129406600810963831.Spec : Prop :=
  ∀ n, P7129406600810963831.a n = A213392 n

end A213392

/-! ## A213392.P9173335707749911635

`A212967(n)+A212968(n)-A213391(n)`
-/

namespace A213392.P9173335707749911635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212967 n + (A212968 n - A213391 n)

end

end A213392.P9173335707749911635

namespace A213392

/-- `A212967(n)+A212968(n)-A213391(n)` -/
def P9173335707749911635.Spec : Prop :=
  ∀ n, P9173335707749911635.a n = A213392 n

end A213392

/-! ## A213392.P1940421105156945644

`A212971(n)+A212972(n)-A213391(n)`
-/

namespace A213392.P1940421105156945644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212971 n + (A212972 n - A213391 n)

end

end A213392.P1940421105156945644

namespace A213392

/-- `A212971(n)+A212972(n)-A213391(n)` -/
def P1940421105156945644.Spec : Prop :=
  ∀ n, P1940421105156945644.a n = A213392 n

end A213392

/-! ## A213392.P7107591352488336996

`A212973(n)+A212974(n)-A213391(n)`
-/

namespace A213392.P7107591352488336996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212973 n + (A212974 n - A213391 n)

end

end A213392.P7107591352488336996

namespace A213392

/-- `A212973(n)+A212974(n)-A213391(n)` -/
def P7107591352488336996.Spec : Prop :=
  ∀ n, P7107591352488336996.a n = A213392 n

end A213392

/-! ## A213392.P15334827746536268283

`A212975(n)+A212976(n)-A213391(n)`
-/

namespace A213392.P15334827746536268283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212975 n + (A212976 n - A213391 n)

end

end A213392.P15334827746536268283

namespace A213392

/-- `A212975(n)+A212976(n)-A213391(n)` -/
def P15334827746536268283.Spec : Prop :=
  ∀ n, P15334827746536268283.a n = A213392 n

end A213392

/-! ## A213392.P13570623348234552456

`A212965(n)+A213498(n)-A213391(n)`
-/

namespace A213392.P13570623348234552456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212965 n + (A213498 n - A213391 n)

end

end A213392.P13570623348234552456

namespace A213392

/-- `A212965(n)+A213498(n)-A213391(n)` -/
def P13570623348234552456.Spec : Prop :=
  ∀ n, P13570623348234552456.a n = A213392 n

end A213392

/-! ## A213392.P18080588005562840540

`A213389(n)+A213390(n)-A213391(n)`
-/

namespace A213392.P18080588005562840540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213389 n + (A213390 n - A213391 n)

end

end A213392.P18080588005562840540

namespace A213392

/-- `A213389(n)+A213390(n)-A213391(n)` -/
def P18080588005562840540.Spec : Prop :=
  ∀ n, P18080588005562840540.a n = A213392 n

end A213392

/-! ## A213392.P6722552887726252030

`A213395(n)+A213501(n)-A213391(n)`
-/

namespace A213392.P6722552887726252030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213395 n + (A213501 n - A213391 n)

end

end A213392.P6722552887726252030

namespace A213392

/-- `A213395(n)+A213501(n)-A213391(n)` -/
def P6722552887726252030.Spec : Prop :=
  ∀ n, P6722552887726252030.a n = A213392 n

end A213392

/-! ## A213392.P9056857336481953560

`A213398(n)+A213502(n)-A213391(n)`
-/

namespace A213392.P9056857336481953560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213398 n + (A213502 n - A213391 n)

end

end A213392.P9056857336481953560

namespace A213392

/-- `A213398(n)+A213502(n)-A213391(n)` -/
def P9056857336481953560.Spec : Prop :=
  ∀ n, P9056857336481953560.a n = A213392 n

end A213392

/-! ## A213392.P1982903466133654608

`A213479(n)+A213480(n)-A213391(n)`
-/

namespace A213392.P1982903466133654608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213479 n + (A213480 n - A213391 n)

end

end A213392.P1982903466133654608

namespace A213392

/-- `A213479(n)+A213480(n)-A213391(n)` -/
def P1982903466133654608.Spec : Prop :=
  ∀ n, P1982903466133654608.a n = A213392 n

end A213392

/-! ## A213392.P14444839020437294967

`A213484(n)+A213485(n)-A213391(n)`
-/

namespace A213392.P14444839020437294967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213484 n + (A213485 n - A213391 n)

end

end A213392.P14444839020437294967

namespace A213392

/-- `A213484(n)+A213485(n)-A213391(n)` -/
def P14444839020437294967.Spec : Prop :=
  ∀ n, P14444839020437294967.a n = A213392 n

end A213392

/-! ## A213392.P12648839609407033564

`A213486(n)+A213487(n)-A213391(n)`
-/

namespace A213392.P12648839609407033564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213486 n + (A213487 n - A213391 n)

end

end A213392.P12648839609407033564

namespace A213392

/-- `A213486(n)+A213487(n)-A213391(n)` -/
def P12648839609407033564.Spec : Prop :=
  ∀ n, P12648839609407033564.a n = A213392 n

end A213392

/-! ## A213392.P3533920924696296504

`A213488(n)+A213489(n)-A213391(n)`
-/

namespace A213392.P3533920924696296504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213488 n + (A213489 n - A213391 n)

end

end A213392.P3533920924696296504

namespace A213392

/-- `A213488(n)+A213489(n)-A213391(n)` -/
def P3533920924696296504.Spec : Prop :=
  ∀ n, P3533920924696296504.a n = A213392 n

end A213392

/-! ## A213392.P6725775027348621900

`A213490(n)+A213491(n)-A213391(n)`
-/

namespace A213392.P6725775027348621900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213490 n + (A213491 n - A213391 n)

end

end A213392.P6725775027348621900

namespace A213392

/-- `A213490(n)+A213491(n)-A213391(n)` -/
def P6725775027348621900.Spec : Prop :=
  ∀ n, P6725775027348621900.a n = A213392 n

end A213392

/-! ## A213392.P17951039671197817145

`A213492(n)+A213495(n)-A213391(n)`
-/

namespace A213392.P17951039671197817145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213492 n + (A213495 n - A213391 n)

end

end A213392.P17951039671197817145

namespace A213392

/-- `A213492(n)+A213495(n)-A213391(n)` -/
def P17951039671197817145.Spec : Prop :=
  ∀ n, P17951039671197817145.a n = A213392 n

end A213392

/-! ## A213392.P6149040138666176140

`A213497(n)+A213499(n)-A213391(n)`
-/

namespace A213392.P6149040138666176140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213497 n + (A213499 n - A213391 n)

end

end A213392.P6149040138666176140

namespace A213392

/-- `A213497(n)+A213499(n)-A213391(n)` -/
def P6149040138666176140.Spec : Prop :=
  ∀ n, P6149040138666176140.a n = A213392 n

end A213392

/-! ## A213392.P3050517290922550019

`A213393(n)+Δ[A213391(n)]`
-/

namespace A213392.P3050517290922550019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213393 n + (f1 (n + 1) - f1 n)

end

end A213392.P3050517290922550019

namespace A213392

/-- `A213393(n)+Δ[A213391(n)]` -/
def P3050517290922550019.Spec : Prop :=
  ∀ n, P3050517290922550019.a n = A213392 n

end A213392

/-! ## A213392.P15303169100049936468

`A213391(n+1)+A213393(n)-A213391(n)`
-/

namespace A213392.P15303169100049936468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213391 (n + 1) + (A213393 n - A213391 n)

end

end A213392.P15303169100049936468

namespace A213392

/-- `A213391(n+1)+A213393(n)-A213391(n)` -/
def P15303169100049936468.Spec : Prop :=
  ∀ n, P15303169100049936468.a n = A213392 n

end A213392

/-!
# A213393: Number of (w,x,y) with all terms in {0,...,n} and 2*max(w,x,y) > 3*min(w,x,y).

The programs for A213393, the canonical program `A213393.P16252528104220517147` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213393 has offset 0).

The definition of A213393 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A190798, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A213393.P8799441748564853847

`A213392(n)-A092076(n)`
-/

namespace A213393.P8799441748564853847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213392 n - A092076 n

end

end A213393.P8799441748564853847

namespace A213393

/-- `A213392(n)-A092076(n)` -/
def P8799441748564853847.Spec : Prop :=
  ∀ n, P8799441748564853847.a n = A213393 n

theorem P8799441748564853847.correct : P8799441748564853847.Spec := by
  intro n
  simp only [A213393, Nat.add_sub_cancel, A213393.P8799441748564853847.a, A213393.P16252528104220517147.a, A092076, A092076.P3381577283447898158.a, A190798, A190798.P17083894840847535071.f1, A190798.P17083894840847535071.a, A213392, A213392.P13729878407923535789.a, A004396, A004396.P17032557045289780609.a, A022003, A022003.P8302093470414743033.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A213393

/-! ## A213393.P16252528104220517147

`6*A190798(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A213393

/-- `6*A190798(n+1)` -/
def P16252528104220517147.Spec : Prop :=
  ∀ n, P16252528104220517147.a n = A213393 n

theorem P16252528104220517147.correct : P16252528104220517147.Spec := by
  intro n
  simp only [A213393]

end A213393

/-! ## A213393.P8480113913338684067

`∑[∑[lcm(3, n)+3*n]]`
-/

namespace A213393.P8480113913338684067
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 n + 3 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213393.P8480113913338684067

namespace A213393

/-- `∑[∑[lcm(3, n)+3*n]]` -/
def P8480113913338684067.Spec : Prop :=
  ∀ n, (P8480113913338684067.a n : ℤ) = A213393 n

end A213393

/-! ## A213393.P12016681331560980756

`∑[∑[n*(7-gcd(3, n))]]`
-/

namespace A213393.P12016681331560980756
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (7 - (Nat.gcd 3 n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213393.P12016681331560980756

namespace A213393

/-- `∑[∑[n*(7-gcd(3, n))]]` -/
def P12016681331560980756.Spec : Prop :=
  ∀ n, P12016681331560980756.a n = A213393 n

end A213393

/-! ## A213393.P13440709564905983167

`∑[∑[(n²%3+2)*2*n]]`
-/

namespace A213393.P13440709564905983167
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2 % 3 + 2) * (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213393.P13440709564905983167

namespace A213393

/-- `∑[∑[(n²%3+2)*2*n]]` -/
def P13440709564905983167.Spec : Prop :=
  ∀ n, (P13440709564905983167.a n : ℤ) = A213393 n

end A213393

/-! ## A213393.P9346423139382349875

`∑[∑[(3-char[3*n])*2*n]]`
-/

namespace A213393.P9346423139382349875
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)) * (2 * n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213393.P9346423139382349875

namespace A213393

/-- `∑[∑[(3-char[3*n])*2*n]]` -/
def P9346423139382349875.Spec : Prop :=
  ∀ n, P9346423139382349875.a n = A213393 n

end A213393

/-! ## A213393.P2415412015789743335

`(n+1)^3-A213391(n+1)`
-/

namespace A213393.P2415412015789743335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - A213391 (n + 1)

end

end A213393.P2415412015789743335

namespace A213393

/-- `(n+1)^3-A213391(n+1)` -/
def P2415412015789743335.Spec : Prop :=
  ∀ n, P2415412015789743335.a n = A213393 n

end A213393

/-! ## A213393.P9348621478751685259

`A213392(n)-Δ[A213391(n)]`
-/

namespace A213393.P9348621478751685259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213392 n - (f1 (n + 1) - f1 n)

end

end A213393.P9348621478751685259

namespace A213393

/-- `A213392(n)-Δ[A213391(n)]` -/
def P9348621478751685259.Spec : Prop :=
  ∀ n, P9348621478751685259.a n = A213393 n

end A213393

/-! ## A213393.P3596001715680838829

`A213392(n+1)-A003215(n+1)`
-/

namespace A213393.P3596001715680838829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213392 (n + 1) - A003215 (n + 1)

end

end A213393.P3596001715680838829

namespace A213393

/-- `A213392(n+1)-A003215(n+1)` -/
def P3596001715680838829.Spec : Prop :=
  ∀ n, P3596001715680838829.a n = A213393 n

end A213393

/-! ## A213393.P10728982529559400910

`A212967(n)+A212968(n)-A213391(n+1)`
-/

namespace A213393.P10728982529559400910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212967 n + (A212968 n - A213391 (n + 1))

end

end A213393.P10728982529559400910

namespace A213393

/-- `A212967(n)+A212968(n)-A213391(n+1)` -/
def P10728982529559400910.Spec : Prop :=
  ∀ n, P10728982529559400910.a n = A213393 n

end A213393

/-! ## A213393.P3924787976115367166

`A212971(n)+A212972(n)-A213391(n+1)`
-/

namespace A213393.P3924787976115367166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212971 n + (A212972 n - A213391 (n + 1))

end

end A213393.P3924787976115367166

namespace A213393

/-- `A212971(n)+A212972(n)-A213391(n+1)` -/
def P3924787976115367166.Spec : Prop :=
  ∀ n, P3924787976115367166.a n = A213393 n

end A213393

/-! ## A213393.P7699936200414569104

`A212973(n)+A212974(n)-A213391(n+1)`
-/

namespace A213393.P7699936200414569104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212973 n + (A212974 n - A213391 (n + 1))

end

end A213393.P7699936200414569104

namespace A213393

/-- `A212973(n)+A212974(n)-A213391(n+1)` -/
def P7699936200414569104.Spec : Prop :=
  ∀ n, P7699936200414569104.a n = A213393 n

end A213393

/-! ## A213393.P14395514379056572247

`A212975(n)+A212976(n)-A213391(n+1)`
-/

namespace A213393.P14395514379056572247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212975 n + (A212976 n - A213391 (n + 1))

end

end A213393.P14395514379056572247

namespace A213393

/-- `A212975(n)+A212976(n)-A213391(n+1)` -/
def P14395514379056572247.Spec : Prop :=
  ∀ n, P14395514379056572247.a n = A213393 n

end A213393

/-! ## A213393.P12993864599648788769

`A212965(n)+A213498(n)-A213391(n+1)`
-/

namespace A213393.P12993864599648788769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212965 n + (A213498 n - A213391 (n + 1))

end

end A213393.P12993864599648788769

namespace A213393

/-- `A212965(n)+A213498(n)-A213391(n+1)` -/
def P12993864599648788769.Spec : Prop :=
  ∀ n, P12993864599648788769.a n = A213393 n

end A213393

/-! ## A213393.P9768685825635677293

`A213389(n)+A213390(n)-A213391(n+1)`
-/

namespace A213393.P9768685825635677293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213389 n + (A213390 n - A213391 (n + 1))

end

end A213393.P9768685825635677293

namespace A213393

/-- `A213389(n)+A213390(n)-A213391(n+1)` -/
def P9768685825635677293.Spec : Prop :=
  ∀ n, P9768685825635677293.a n = A213393 n

end A213393

/-! ## A213393.P1932813268062555893

`A213391(n)+A213392(n)-A213391(n+1)`
-/

namespace A213393.P1932813268062555893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213391 n + (A213392 n - A213391 (n + 1))

end

end A213393.P1932813268062555893

namespace A213393

/-- `A213391(n)+A213392(n)-A213391(n+1)` -/
def P1932813268062555893.Spec : Prop :=
  ∀ n, P1932813268062555893.a n = A213393 n

end A213393

/-! ## A213393.P971047205005757386

`A213395(n)+A213501(n)-A213391(n+1)`
-/

namespace A213393.P971047205005757386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213395 n + (A213501 n - A213391 (n + 1))

end

end A213393.P971047205005757386

namespace A213393

/-- `A213395(n)+A213501(n)-A213391(n+1)` -/
def P971047205005757386.Spec : Prop :=
  ∀ n, P971047205005757386.a n = A213393 n

end A213393

/-! ## A213393.P14131014545211559551

`A213398(n)+A213502(n)-A213391(n+1)`
-/

namespace A213393.P14131014545211559551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213398 n + (A213502 n - A213391 (n + 1))

end

end A213393.P14131014545211559551

namespace A213393

/-- `A213398(n)+A213502(n)-A213391(n+1)` -/
def P14131014545211559551.Spec : Prop :=
  ∀ n, P14131014545211559551.a n = A213393 n

end A213393

/-! ## A213393.P1844112273455235427

`A213479(n)+A213480(n)-A213391(n+1)`
-/

namespace A213393.P1844112273455235427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213479 n + (A213480 n - A213391 (n + 1))

end

end A213393.P1844112273455235427

namespace A213393

/-- `A213479(n)+A213480(n)-A213391(n+1)` -/
def P1844112273455235427.Spec : Prop :=
  ∀ n, P1844112273455235427.a n = A213393 n

end A213393

/-! ## A213393.P938074231718792794

`A213484(n)+A213485(n)-A213391(n+1)`
-/

namespace A213393.P938074231718792794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213484 n + (A213485 n - A213391 (n + 1))

end

end A213393.P938074231718792794

namespace A213393

/-- `A213484(n)+A213485(n)-A213391(n+1)` -/
def P938074231718792794.Spec : Prop :=
  ∀ n, P938074231718792794.a n = A213393 n

end A213393

/-!
# A213394: The difference between n and the product of the digits of the n-th prime.

The programs for A213394, the canonical program `A213394.P16098337122954015116` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213394 has offset 1).

The definition of A213394 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053666, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A213394.P16098337122954015116

`n+1-A053666(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A213394

/-- `n+1-A053666(n+1)` -/
def P16098337122954015116.Spec : Prop :=
  ∀ n, P16098337122954015116.a n = A213394 (n + 1)

theorem P16098337122954015116.correct : P16098337122954015116.Spec := by
  intro n
  simp only [A213394, Nat.add_sub_cancel]

end A213394

/-! ## A213394.P2296137003586586482

`1-∏{digits}[A000040(n+1), #]+n`
-/

namespace A213394.P2296137003586586482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod : ℕ) : ℤ) + (n : ℤ)

end

end A213394.P2296137003586586482

namespace A213394

/-- `1-∏{digits}[A000040(n+1), #]+n` -/
def P2296137003586586482.Spec : Prop :=
  ∀ n, P2296137003586586482.a n = A213394 (n + 1)

theorem P2296137003586586482.correct : P2296137003586586482.Spec := by
  intro n
  simp only [A213394, Nat.add_sub_cancel, A213394.P2296137003586586482.f1, A213394.P2296137003586586482.a, A213394.P16098337122954015116.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A053666, A053666.P18378645910674080637.f1, A053666.P18378645910674080637.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A213394

/-! ## A213394.P9018576469398856537

`1-∏{digits}[A039790(n+1), #]+n`
-/

namespace A213394.P9018576469398856537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod : ℕ) : ℤ) + (n : ℤ)

end

end A213394.P9018576469398856537

namespace A213394

/-- `1-∏{digits}[A039790(n+1), #]+n` -/
def P9018576469398856537.Spec : Prop :=
  ∀ n, P9018576469398856537.a n = A213394 (n + 1)

end A213394

/-! ## A213394.P12859554791483645680

`-A053666(n+1)%A001248(n+1)+n+1`
-/

namespace A213394.P12859554791483645680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-A053666 (n + 1)) (A001248 (n + 1)) + (n + 1 : ℤ)

end

end A213394.P12859554791483645680

namespace A213394

/-- `-A053666(n+1)%A001248(n+1)+n+1` -/
def P12859554791483645680.Spec : Prop :=
  ∀ n, P12859554791483645680.a n = A213394 (n + 1)

end A213394

/-! ## A213394.P17499947766762736843

`n-A023443(A053666(n+1))`
-/

namespace A213394.P17499947766762736843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A053666 (n + 1)).toNat

end

end A213394.P17499947766762736843

namespace A213394

/-- `n-A023443(A053666(n+1))` -/
def P17499947766762736843.Spec : Prop :=
  ∀ n, P17499947766762736843.a n = A213394 (n + 1)

end A213394

/-! ## A213394.P932899997403289964

`1-∏{digits}[p?[comp[A018252(n+1)]], #]+n`
-/

namespace A213394.P932899997403289964
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod : ℕ) : ℤ) + (n : ℤ)

end

end A213394.P932899997403289964

namespace A213394

/-- `1-∏{digits}[p?[comp[A018252(n+1)]], #]+n` -/
def P932899997403289964.Spec : Prop :=
  ∀ n, P932899997403289964.a n = A213394 (n + 1)

end A213394

/-! ## A213394.P2975836803986464973

`1-∏{digits}[record[A014963(n+2)], #]+n`
-/

namespace A213394.P2975836803986464973
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod : ℕ) : ℤ) + (n : ℤ)

end

end A213394.P2975836803986464973

namespace A213394

/-- `1-∏{digits}[record[A014963(n+2)], #]+n` -/
def P2975836803986464973.Spec : Prop :=
  ∀ n, P2975836803986464973.a n = A213394 (n + 1)

end A213394

/-! ## A213394.P8231498502459237165

`1-A007954(A000040(n+1))+n`
-/

namespace A213394.P8231498502459237165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A007954 (A000040 (n + 1)).toNat + (n : ℤ)

end

end A213394.P8231498502459237165

namespace A213394

/-- `1-A007954(A000040(n+1))+n` -/
def P8231498502459237165.Spec : Prop :=
  ∀ n, P8231498502459237165.a n = A213394 (n + 1)

end A213394

/-! ## A213394.P9158678443021133851

`1-A007954(A004087(n+1))+n`
-/

namespace A213394.P9158678443021133851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A007954 (A004087 (n + 1)).toNat + (n : ℤ)

end

end A213394.P9158678443021133851

namespace A213394

/-- `1-A007954(A004087(n+1))+n` -/
def P9158678443021133851.Spec : Prop :=
  ∀ n, P9158678443021133851.a n = A213394 (n + 1)

end A213394

/-! ## A213394.P8465059111060376721

`1-A007954(A028906(n+1))+n`
-/

namespace A213394.P8465059111060376721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A007954 (A028906 (n + 1)).toNat + (n : ℤ)

end

end A213394.P8465059111060376721

namespace A213394

/-- `1-A007954(A028906(n+1))+n` -/
def P8465059111060376721.Spec : Prop :=
  ∀ n, P8465059111060376721.a n = A213394 (n + 1)

end A213394

/-! ## A213394.P10533077869919419797

`n+1-A007954(A008578(n+2))`
-/

namespace A213394.P10533077869919419797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A007954 (A008578 (n + 2)).toNat

end

end A213394.P10533077869919419797

namespace A213394

/-- `n+1-A007954(A008578(n+2))` -/
def P10533077869919419797.Spec : Prop :=
  ∀ n, P10533077869919419797.a n = A213394 (n + 1)

end A213394

/-! ## A213394.P15760355926168864310

`n+1-A007954(record[A020639(n+2)])`
-/

namespace A213394.P15760355926168864310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A007954 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A213394.P15760355926168864310

namespace A213394

/-- `n+1-A007954(record[A020639(n+2)])` -/
def P15760355926168864310.Spec : Prop :=
  ∀ n, P15760355926168864310.a n = A213394 (n + 1)

end A213394

/-! ## A213394.P13316050788898630209

`n+1-A007954(A067747(2*n+1))`
-/

namespace A213394.P13316050788898630209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A007954 (A067747 (2 * n + 1)).toNat

end

end A213394.P13316050788898630209

namespace A213394

/-- `n+1-A007954(A067747(2*n+1))` -/
def P13316050788898630209.Spec : Prop :=
  ∀ n, P13316050788898630209.a n = A213394 (n + 1)

end A213394

/-! ## A213394.P1997672683990466365

`n+1-A007954(A207790(2*(n+1)))`
-/

namespace A213394.P1997672683990466365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A007954 (A207790 (2 * (n + 1))).toNat

end

end A213394.P1997672683990466365

namespace A213394

/-- `n+1-A007954(A207790(2*(n+1)))` -/
def P1997672683990466365.Spec : Prop :=
  ∀ n, P1997672683990466365.a n = A213394 (n + 1)

end A213394

/-! ## A213394.P10890650183671904091

`n+1-A007954(eq[1, A001222(n+1)]+1)`
-/

namespace A213394.P10890650183671904091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A007954 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A213394.P10890650183671904091

namespace A213394

/-- `n+1-A007954(eq[1, A001222(n+1)]+1)` -/
def P10890650183671904091.Spec : Prop :=
  ∀ n, P10890650183671904091.a n = A213394 (n + 1)

end A213394

/-! ## A213394.P6772466136001060476

`n+1-A007954(lt[A000005(n+2), 3]+2)`
-/

namespace A213394.P6772466136001060476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A007954 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2)

end

end A213394.P6772466136001060476

namespace A213394

/-- `n+1-A007954(lt[A000005(n+2), 3]+2)` -/
def P6772466136001060476.Spec : Prop :=
  ∀ n, P6772466136001060476.a n = A213394 (n + 1)

end A213394

/-! ## A213394.P9160844577994545681

`1-A007954(A101989(n+1))+n`
-/

namespace A213394.P9160844577994545681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A007954 (A101989 (n + 1)).toNat + (n : ℤ)

end

end A213394.P9160844577994545681

namespace A213394

/-- `1-A007954(A101989(n+1))+n` -/
def P9160844577994545681.Spec : Prop :=
  ∀ n, P9160844577994545681.a n = A213394 (n + 1)

end A213394

/-! ## A213394.P5275435177531083470

`1-A007954(A039790(n+1))+n`
-/

namespace A213394.P5275435177531083470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A007954 (A039790 (n + 1)).toNat + (n : ℤ)

end

end A213394.P5275435177531083470

namespace A213394

/-- `1-A007954(A039790(n+1))+n` -/
def P5275435177531083470.Spec : Prop :=
  ∀ n, P5275435177531083470.a n = A213394 (n + 1)

end A213394

/-!
# A213395: Number of (w,x,y) with all terms in {0,...,n} and max(|w-x|,|x-y|) = w.

The programs for A213395, the canonical program `A213395.P6260249847225433252` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213395 has offset 0).

The definition of A213395 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213395.P6260249847225433252

`2*a(n-2)+a(n-3)-a(n-4)-2*a(n-5)+a(n-7)` with `a(0)=1, a(1)=4, a(2)=11, a(3)=19, a(4)=31, a(5)=44, a(6)=62`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A213395

/-- `2*a(n-2)+a(n-3)-a(n-4)-2*a(n-5)+a(n-7)` -/
def P6260249847225433252.Spec : Prop :=
  ∀ n, P6260249847225433252.a n = A213395 n

theorem P6260249847225433252.correct : P6260249847225433252.Spec := by
  intro n
  simp only [A213395]

end A213395

/-! ## A213395.P12434548412565252588

`(n+1)^3-A213501(n)`
-/

namespace A213395.P12434548412565252588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - A213501 n

end

end A213395.P12434548412565252588

namespace A213395

/-- `(n+1)^3-A213501(n)` -/
def P12434548412565252588.Spec : Prop :=
  ∀ n, P12434548412565252588.a n = A213395 n

theorem P12434548412565252588.correct : P12434548412565252588.Spec := by
  intro n
  simp only [A213395, Nat.add_sub_cancel, A213395.P12434548412565252588.a, A213395.P6260249847225433252.a, A213501, A213501.P17593753589577986138.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A213395

/-! ## A213395.P16271509637679024230

`A085787(n)+A000969(n)`
-/

namespace A213395.P16271509637679024230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085787 n + A000969 n

end

end A213395.P16271509637679024230

namespace A213395

/-- `A085787(n)+A000969(n)` -/
def P16271509637679024230.Spec : Prop :=
  ∀ n, P16271509637679024230.a n = A213395 n

end A213395

/-! ## A213395.P215997961040584158

`∑[A142150(n)+A047282(n+1)]`
-/

namespace A213395.P215997961040584158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n + A047282 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213395.P215997961040584158

namespace A213395

/-- `∑[A142150(n)+A047282(n+1)]` -/
def P215997961040584158.Spec : Prop :=
  ∀ n, P215997961040584158.a n = A213395 n

end A213395

/-! ## A213395.P15400415911283040796

`A210977(n+1)+∑[A042965(n+1)]`
-/

namespace A213395.P15400415911283040796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210977 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213395.P15400415911283040796

namespace A213395

/-- `A210977(n+1)+∑[A042965(n+1)]` -/
def P15400415911283040796.Spec : Prop :=
  ∀ n, P15400415911283040796.a n = A213395 n

end A213395

/-! ## A213395.P6877747505844041431

`A085787(n)+A001840(2*n+1)`
-/

namespace A213395.P6877747505844041431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085787 n + A001840 (2 * n + 1)

end

end A213395.P6877747505844041431

namespace A213395

/-- `A085787(n)+A001840(2*n+1)` -/
def P6877747505844041431.Spec : Prop :=
  ∀ n, P6877747505844041431.a n = A213395 n

end A213395

/-! ## A213395.P4095677428144768076

`∑[A297464(n)-2*lcm(2, n)/4]`
-/

namespace A213395.P4095677428144768076
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297464 n : ℚ) - (2 * Nat.lcm 2 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213395.P4095677428144768076

namespace A213395

/-- `∑[A297464(n)-2*lcm(2, n)/4]` -/
def P4095677428144768076.Spec : Prop :=
  ∀ n, P4095677428144768076.a n = (A213395 n : ℚ)

end A213395

/-! ## A213395.P9663397729295681782

`∑[A297464(n)]-A001318(n)`
-/

namespace A213395.P9663397729295681782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297464 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001318 n

end

end A213395.P9663397729295681782

namespace A213395

/-- `∑[A297464(n)]-A001318(n)` -/
def P9663397729295681782.Spec : Prop :=
  ∀ n, P9663397729295681782.a n = A213395 n

end A213395

/-! ## A213395.P8892328234465698201

`∑[A297464(n)-A026741(n)]`
-/

namespace A213395.P8892328234465698201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297464 n - A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213395.P8892328234465698201

namespace A213395

/-- `∑[A297464(n)-A026741(n)]` -/
def P8892328234465698201.Spec : Prop :=
  ∀ n, P8892328234465698201.a n = A213395 n

end A213395

/-!
# A213396: Number of (w,x,y) with all terms in {0,...,n} and 2*w < |x+y-w|.

The programs for A213396, the canonical program `A213396.P5198982363724161357` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213396 has offset 0).

The definition of A213396 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213396.P9845951092019304435

`(n+2)*(n+1)*n/3+floor((n-1)/3)+1`
-/

namespace A213396.P9845951092019304435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2) * (n + 1) * n : ℚ) / 3 + (⌊((n : ℤ) - 1 : ℚ) / 3⌋ : ℚ) + 1

end

end A213396.P9845951092019304435

namespace A213396

/-- `(n+2)*(n+1)*n/3+floor((n-1)/3)+1` -/
def P9845951092019304435.Spec : Prop :=
  ∀ n, P9845951092019304435.a n = (A213396 n : ℚ)

end A213396

/-! ## A213396.P5198982363724161357

`3*A060999(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A213396

/-- `3*A060999(n)` -/
def P5198982363724161357.Spec : Prop :=
  ∀ n, P5198982363724161357.a n = A213396 n

theorem P5198982363724161357.correct : P5198982363724161357.Spec := by
  intro n
  simp only [A213396]

end A213396

/-! ## A213396.P4323156209211790240

`ceil(∑[n/acot(n)+n])`
-/

namespace A213396.P4323156209211790240
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) / SequenceMachineLib.acot (n : ℝ) + (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A213396.P4323156209211790240

namespace A213396

/-- `ceil(∑[n/acot(n)+n])` -/
def P4323156209211790240.Spec : Prop :=
  ∀ n, P4323156209211790240.a n = A213396 n

end A213396

/-! ## A213396.P13376845533208081223

`∑[∑[2*n]+∑[n]%3]`
-/

namespace A213396.P13376845533208081223
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (∑ j ∈ Finset.range (n + 1), f3 j) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213396.P13376845533208081223

namespace A213396

/-- `∑[∑[2*n]+∑[n]%3]` -/
def P13376845533208081223.Spec : Prop :=
  ∀ n, (P13376845533208081223.a n : ℤ) = A213396 n

end A213396

/-! ## A213396.P11424654159176567452

`∑[∑[a(n-3)+6]]` with `a(0)=0, a(1)=3, a(2)=3`
-/

namespace A213396.P11424654159176567452
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 3] fun n f2 =>
  f2 (n - 3) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213396.P11424654159176567452

namespace A213396

/-- `∑[∑[a(n-3)+6]]` -/
def P11424654159176567452.Spec : Prop :=
  ∀ n, (P11424654159176567452.a n : ℤ) = A213396 n

end A213396

/-! ## A213396.P11143573949781089569

`∑[∑[∑[floor(a(n-3))]]]` with `a(0)=0, a(1)=3, a(2)=0, a(3)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A213396.P11143573949781089569
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 0, 3] fun n f3 =>
  f3 (n - 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213396.P11143573949781089569

namespace A213396

/-- `∑[∑[∑[floor(a(n-3))]]]` -/
def P11143573949781089569.Spec : Prop :=
  ∀ n, (P11143573949781089569.a n : ℤ) = A213396 n

end A213396

/-! ## A213396.P2741908374014370169

`∑[3*∑[A004396(n)]]`
-/

namespace A213396.P2741908374014370169
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213396.P2741908374014370169

namespace A213396

/-- `∑[3*∑[A004396(n)]]` -/
def P2741908374014370169.Spec : Prop :=
  ∀ n, P2741908374014370169.a n = A213396 n

end A213396

/-! ## A213396.P14375940735532993711

`∑[∑[A064429(n)+n]]`
-/

namespace A213396.P14375940735532993711
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 n + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213396.P14375940735532993711

namespace A213396

/-- `∑[∑[A064429(n)+n]]` -/
def P14375940735532993711.Spec : Prop :=
  ∀ n, P14375940735532993711.a n = A213396 n

end A213396

/-! ## A213396.P9079310597448346815

`∑[(n+1)²-A117571(n)]`
-/

namespace A213396.P9079310597448346815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A117571 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213396.P9079310597448346815

namespace A213396

/-- `∑[(n+1)²-A117571(n)]` -/
def P9079310597448346815.Spec : Prop :=
  ∀ n, P9079310597448346815.a n = A213396 n

end A213396

/-! ## A213396.P3432975845256877668

`ceil((Δ[A000217(n)²]-1)/3)`
-/

namespace A213396.P3432975845256877668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) - f1 n - 1 : ℚ) / 3⌉

end

end A213396.P3432975845256877668

namespace A213396

/-- `ceil((Δ[A000217(n)²]-1)/3)` -/
def P3432975845256877668.Spec : Prop :=
  ∀ n, P3432975845256877668.a n = A213396 n

end A213396

/-! ## A213396.P17737608235570992414

`3*∑[∑[round(A004277(n)/3)]]`
-/

namespace A213396.P17737608235570992414
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A004277 n : ℚ) / 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A213396.P17737608235570992414

namespace A213396

/-- `3*∑[∑[round(A004277(n)/3)]]` -/
def P17737608235570992414.Spec : Prop :=
  ∀ n, P17737608235570992414.a n = A213396 n

end A213396

/-! ## A213396.P11203909125949114346

`∑[∑[3*round(A005843(n)/3)]]`
-/

namespace A213396.P11203909125949114346
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.roundAway ((A005843 n : ℚ) / 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213396.P11203909125949114346

namespace A213396

/-- `∑[∑[3*round(A005843(n)/3)]]` -/
def P11203909125949114346.Spec : Prop :=
  ∀ n, P11203909125949114346.a n = A213396 n

end A213396

/-! ## A213396.P13506565598893649801

`∑[char[A016777(n)]+∑[2*n]]`
-/

namespace A213396.P13506565598893649801
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213396.P13506565598893649801

namespace A213396

/-- `∑[char[A016777(n)]+∑[2*n]]` -/
def P13506565598893649801.Spec : Prop :=
  ∀ n, (P13506565598893649801.a n : ℤ) = A213396 n

end A213396

/-! ## A213396.P5755586248924912493

`∑[A001222(gcd(n+2, n-1))+n²+n]`
-/

namespace A213396.P5755586248924912493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (n + 2 : ℤ) ((n : ℤ) - 1)) + (n ^ 2 + n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213396.P5755586248924912493

namespace A213396

/-- `∑[A001222(gcd(n+2, n-1))+n²+n]` -/
def P5755586248924912493.Spec : Prop :=
  ∀ n, P5755586248924912493.a n = A213396 n

end A213396

/-! ## A213396.P974510337380190710

`A184628(n+1)%A213397(n)`
-/

namespace A213396.P974510337380190710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184628 (n + 1)) (A213397 n)

end

end A213396.P974510337380190710

namespace A213396

/-- `A184628(n+1)%A213397(n)` -/
def P974510337380190710.Spec : Prop :=
  ∀ n, P974510337380190710.a n = A213396 n

end A213396

/-! ## A213396.P1711389110127326990

`3*A008763(2*(n+1))`
-/

namespace A213396.P1711389110127326990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A008763 (2 * (n + 1))

end

end A213396.P1711389110127326990

namespace A213396

/-- `3*A008763(2*(n+1))` -/
def P1711389110127326990.Spec : Prop :=
  ∀ n, P1711389110127326990.a n = A213396 n

end A213396

/-! ## A213396.P7420198991265667575

`A066023(n+1)%A213397(n)`
-/

namespace A213396.P7420198991265667575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066023 (n + 1)) (A213397 n)

end

end A213396.P7420198991265667575

namespace A213396

/-- `A066023(n+1)%A213397(n)` -/
def P7420198991265667575.Spec : Prop :=
  ∀ n, P7420198991265667575.a n = A213396 n

end A213396

/-! ## A213396.P5652264261861420818

`Δ[A000212(∑[n])]`
-/

namespace A213396.P5652264261861420818
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213396.P5652264261861420818

namespace A213396

/-- `Δ[A000212(∑[n])]` -/
def P5652264261861420818.Spec : Prop :=
  ∀ n, P5652264261861420818.a n = A213396 n

end A213396

/-! ## A213396.P17302929021105490497

`∑[A130481(∑[2*n])]`
-/

namespace A213396.P17302929021105490497
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130481 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213396.P17302929021105490497

namespace A213396

/-- `∑[A130481(∑[2*n])]` -/
def P17302929021105490497.Spec : Prop :=
  ∀ n, P17302929021105490497.a n = A213396 n

end A213396

/-! ## A213396.P3856494508601317031

`∑[A373952(n²+n+1)]`
-/

namespace A213396.P3856494508601317031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373952 (n ^ 2 + (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213396.P3856494508601317031

namespace A213396

/-- `∑[A373952(n²+n+1)]` -/
def P3856494508601317031.Spec : Prop :=
  ∀ n, P3856494508601317031.a n = A213396 n

end A213396

/-!
# A213397: Number of (w,x,y) with all terms in {0,...,n} and 2*w >= |x+y-z|.

The programs for A213397, the canonical program `A213397.P16718606233617379760` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213397 has offset 0).

The definition of A213397 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213397.P16718606233617379760

`floor(2*n^3/3)+2*n*(n+1)+1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A213397

/-- `floor(2*n^3/3)+2*n*(n+1)+1` -/
def P16718606233617379760.Spec : Prop :=
  ∀ n, P16718606233617379760.a n = A213397 n

theorem P16718606233617379760.correct : P16718606233617379760.Spec := by
  intro n
  simp only [A213397]

end A213397

/-! ## A213397.P3891198708380695652

`∑[∑[a(n-3)+12]]` with `a(0)=1, a(1)=3, a(2)=9, a(3)=12`
-/

namespace A213397.P3891198708380695652
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 9, 12] fun n f2 =>
  f2 (n - 3) + 12

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213397.P3891198708380695652

namespace A213397

/-- `∑[∑[a(n-3)+12]]` -/
def P3891198708380695652.Spec : Prop :=
  ∀ n, (P3891198708380695652.a n : ℤ) = A213397 n

end A213397

/-! ## A213397.P10357100454994789484

`∑[∑[4*n+1-(n+1)%3]+1]`
-/

namespace A213397.P10357100454994789484
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) + (1 - (((n + 1) % 3 : ℕ) : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213397.P10357100454994789484

namespace A213397

/-- `∑[∑[4*n+1-(n+1)%3]+1]` -/
def P10357100454994789484.Spec : Prop :=
  ∀ n, P10357100454994789484.a n = A213397 n

end A213397

/-! ## A213397.P11534894325899770852

`∑[∑[A136290(n)]]`
-/

namespace A213397.P11534894325899770852
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136290 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213397.P11534894325899770852

namespace A213397

/-- `∑[∑[A136290(n)]]` -/
def P11534894325899770852.Spec : Prop :=
  ∀ n, P11534894325899770852.a n = A213397 n

end A213397

/-! ## A213397.P11013363314655635548

`∑[∑[3*comp[A016825(n)]]+1]`
-/

namespace A213397.P11013363314655635548
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213397.P11013363314655635548

namespace A213397

/-- `∑[∑[3*comp[A016825(n)]]+1]` -/
def P11013363314655635548.Spec : Prop :=
  ∀ n, (P11013363314655635548.a n : ℤ) = A213397 n

end A213397

/-! ## A213397.P18057164587922623709

`∑[∑[3*A042965(n+1)]+1]`
-/

namespace A213397.P18057164587922623709
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A042965 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213397.P18057164587922623709

namespace A213397

/-- `∑[∑[3*A042965(n+1)]+1]` -/
def P18057164587922623709.Spec : Prop :=
  ∀ n, P18057164587922623709.a n = A213397 n

end A213397

/-! ## A213397.P11698476402365969065

`∑[∑[A008574(n)-A102283(n)]]`
-/

namespace A213397.P11698476402365969065
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - A102283 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213397.P11698476402365969065

namespace A213397

/-- `∑[∑[A008574(n)-A102283(n)]]` -/
def P11698476402365969065.Spec : Prop :=
  ∀ n, P11698476402365969065.a n = A213397 n

end A213397

/-! ## A213397.P6667561890916414001

`A029111(12*n)`
-/

namespace A213397.P6667561890916414001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029111 (12 * n)

end

end A213397.P6667561890916414001

namespace A213397

/-- `A029111(12*n)` -/
def P6667561890916414001.Spec : Prop :=
  ∀ n, P6667561890916414001.a n = A213397 n

end A213397

/-! ## A213397.P2961601027835098750

`Δ[A071619(∑[n])]`
-/

namespace A213397.P2961601027835098750
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071619 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213397.P2961601027835098750

namespace A213397

/-- `Δ[A071619(∑[n])]` -/
def P2961601027835098750.Spec : Prop :=
  ∀ n, P2961601027835098750.a n = A213397 n

end A213397

/-! ## A213397.P5514242508285608583

`Δ[A084672(∑[n])]`
-/

namespace A213397.P5514242508285608583
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084672 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213397.P5514242508285608583

namespace A213397

/-- `Δ[A084672(∑[n])]` -/
def P5514242508285608583.Spec : Prop :=
  ∀ n, P5514242508285608583.a n = A213397 n

end A213397

/-! ## A213397.P7917832540540810873

`∑[A061891(∑[2*n])]`
-/

namespace A213397.P7917832540540810873
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061891 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213397.P7917832540540810873

namespace A213397

/-- `∑[A061891(∑[2*n])]` -/
def P7917832540540810873.Spec : Prop :=
  ∀ n, P7917832540540810873.a n = A213397 n

end A213397

/-! ## A213397.P8288816254209838889

`∑[A029739(n²+n+1)]`
-/

namespace A213397.P8288816254209838889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029739 (n ^ 2 + (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213397.P8288816254209838889

namespace A213397

/-- `∑[A029739(n²+n+1)]` -/
def P8288816254209838889.Spec : Prop :=
  ∀ n, P8288816254209838889.a n = A213397 n

end A213397

/-! ## A213397.P14882612351595739539

`∑[A047236(n²+n+1)]`
-/

namespace A213397.P14882612351595739539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047236 (n ^ 2 + (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213397.P14882612351595739539

namespace A213397

/-- `∑[A047236(n²+n+1)]` -/
def P14882612351595739539.Spec : Prop :=
  ∀ n, P14882612351595739539.a n = A213397 n

end A213397

/-!
# A213398: Number of (w,x,y) with all terms in {0,...,n} and min(|w-x|,|x-y|) = x.

The programs for A213398, the canonical program `A213398.P1109591910559254383` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213398 has offset 0).

The definition of A213398 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213398.P1109591910559254383

`(n+1)²+floor(n/2)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A213398

/-- `(n+1)²+floor(n/2)` -/
def P1109591910559254383.Spec : Prop :=
  ∀ n, P1109591910559254383.a n = A213398 n

theorem P1109591910559254383.correct : P1109591910559254383.Spec := by
  intro n
  simp only [A213398]

end A213398

/-! ## A213398.P14766291301610398906

`∑[a(n-2)+4]` with `a(0)=1, a(1)=3, a(2)=6`
-/

namespace A213398.P14766291301610398906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 6] fun n f1 =>
  f1 (n - 2) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213398.P14766291301610398906

namespace A213398

/-- `∑[a(n-2)+4]` -/
def P14766291301610398906.Spec : Prop :=
  ∀ n, (P14766291301610398906.a n : ℤ) = A213398 n

end A213398

/-! ## A213398.P1158511074276221047

`∑[∑[C(3, a(n-1))]]` with `a(0)=1, a(1)=2`
-/

namespace A213398.P1158511074276221047
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  Nat.choose 3 (f2 (n - 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213398.P1158511074276221047

namespace A213398

/-- `∑[∑[C(3, a(n-1))]]` -/
def P1158511074276221047.Spec : Prop :=
  ∀ n, (P1158511074276221047.a n : ℤ) = A213398 n

end A213398

/-! ## A213398.P15153684635520640214

`ceil((2-acot(n))*∑[n+1])`
-/

namespace A213398.P15153684635520640214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 - SequenceMachineLib.acot (n : ℝ)) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉

end

end A213398.P15153684635520640214

namespace A213398

/-- `ceil((2-acot(n))*∑[n+1])` -/
def P15153684635520640214.Spec : Prop :=
  ∀ n, P15153684635520640214.a n = A213398 n

end A213398

/-! ## A213398.P15492283065524370492

`∑[∑[4-a(n-1)]]` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A213398.P15492283065524370492
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n f2 =>
  4 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213398.P15492283065524370492

namespace A213398

/-- `∑[∑[4-a(n-1)]]` -/
def P15492283065524370492.Spec : Prop :=
  ∀ n, P15492283065524370492.a n = A213398 n

end A213398

/-! ## A213398.P13038135216627293824

`ogf((1+2x+2x^2-x^3)/(1-2x+2x^3-x^4))`
-/

namespace A213398.P13038135216627293824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 2, -1] [1, -2, 0, 2, -1] n

end

end A213398.P13038135216627293824

namespace A213398

/-- `ogf((1+2x+2x^2-x^3)/(1-2x+2x^3-x^4))` -/
def P13038135216627293824.Spec : Prop :=
  ∀ n, P13038135216627293824.a n = A213398 n

end A213398

/-! ## A213398.P5279520113264370967

`ceil(record[(n-1)²]+(n-1)/2)`
-/

namespace A213398.P5279520113264370967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) + ((n : ℤ) - 1 : ℚ) / 2⌉

end

end A213398.P5279520113264370967

namespace A213398

/-- `ceil(record[(n-1)²]+(n-1)/2)` -/
def P5279520113264370967.Spec : Prop :=
  ∀ n, P5279520113264370967.a n = A213398 n

end A213398

/-! ## A213398.P9188639009692084419

`round(record[(n-1)²]+(n-1)/2)`
-/

namespace A213398.P9188639009692084419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) + ((n : ℤ) - 1 : ℚ) / 2)

end

end A213398.P9188639009692084419

namespace A213398

/-- `round(record[(n-1)²]+(n-1)/2)` -/
def P9188639009692084419.Spec : Prop :=
  ∀ n, P9188639009692084419.a n = A213398 n

end A213398

/-! ## A213398.P6473327797169772204

`ceil((2*n+1)*sinh(log(n+2)))`
-/

namespace A213398.P6473327797169772204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n + 1 : ℝ) * Real.sinh (Real.log (n + 2 : ℝ))⌉

end

end A213398.P6473327797169772204

namespace A213398

/-- `ceil((2*n+1)*sinh(log(n+2)))` -/
def P6473327797169772204.Spec : Prop :=
  ∀ n, P6473327797169772204.a n = A213398 n

end A213398

/-! ## A213398.P13403158283113159757

`round(sinh(log((2*n+1)*(n+2))))`
-/

namespace A213398.P13403158283113159757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sinh (Real.log ((2 * n + 1) * (n + 2) : ℝ)))

end

end A213398.P13403158283113159757

namespace A213398

/-- `round(sinh(log((2*n+1)*(n+2))))` -/
def P13403158283113159757.Spec : Prop :=
  ∀ n, P13403158283113159757.a n = A213398 n

end A213398

/-! ## A213398.P11325158542778926816

`round((n+2)/sinh(2/(2*n+1)))`
-/

namespace A213398.P11325158542778926816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 2 : ℝ) / Real.sinh (2 / (2 * n + 1 : ℚ) : ℝ))

end

end A213398.P11325158542778926816

namespace A213398

/-- `round((n+2)/sinh(2/(2*n+1)))` -/
def P11325158542778926816.Spec : Prop :=
  ∀ n, P11325158542778926816.a n = A213398 n

end A213398

/-! ## A213398.P11278318539059375697

`round(cot(2/((2*n+1)*(n+2))))`
-/

namespace A213398.P11278318539059375697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (2 / ((2 * n + 1) * (n + 2) : ℚ) : ℝ))

end

end A213398.P11278318539059375697

namespace A213398

/-- `round(cot(2/((2*n+1)*(n+2))))` -/
def P11278318539059375697.Spec : Prop :=
  ∀ n, P11278318539059375697.a n = A213398 n

end A213398

/-! ## A213398.P1985223733627944542

`(A195605(n)+n)/2`
-/

namespace A213398.P1985223733627944542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195605 n + (n : ℤ) : ℚ) / 2

end

end A213398.P1985223733627944542

namespace A213398

/-- `(A195605(n)+n)/2` -/
def P1985223733627944542.Spec : Prop :=
  ∀ n, P1985223733627944542.a n = (A213398 n : ℚ)

end A213398

/-! ## A213398.P12075280634055673011

`floor(sqrt(A076454(n+1)))`
-/

namespace A213398.P12075280634055673011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A076454 (n + 1))

end

end A213398.P12075280634055673011

namespace A213398

/-- `floor(sqrt(A076454(n+1)))` -/
def P12075280634055673011.Spec : Prop :=
  ∀ n, P12075280634055673011.a n = A213398 n

end A213398

/-! ## A213398.P4775846225579730329

`floor(sqrt(A179824(n+2)))`
-/

namespace A213398.P4775846225579730329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A179824 (n + 2))

end

end A213398.P4775846225579730329

namespace A213398

/-- `floor(sqrt(A179824(n+2)))` -/
def P4775846225579730329.Spec : Prop :=
  ∀ n, P4775846225579730329.a n = A213398 n

end A213398

/-! ## A213398.P5759053853074725110

`round(sqrt(A277977(n+1)))`
-/

namespace A213398.P5759053853074725110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A277977 (n + 1) : ℝ))

end

end A213398.P5759053853074725110

namespace A213398

/-- `round(sqrt(A277977(n+1)))` -/
def P5759053853074725110.Spec : Prop :=
  ∀ n, P5759053853074725110.a n = A213398 n

end A213398

/-! ## A213398.P3364507688487456437

`(A287057(n+1)-1)/2`
-/

namespace A213398.P3364507688487456437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287057 (n + 1) - 1 : ℚ) / 2

end

end A213398.P3364507688487456437

namespace A213398

/-- `(A287057(n+1)-1)/2` -/
def P3364507688487456437.Spec : Prop :=
  ∀ n, P3364507688487456437.a n = (A213398 n : ℚ)

end A213398

/-! ## A213398.P521873616834924197

`A287057(n+1)%A171769(n+1)`
-/

namespace A213398.P521873616834924197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287057 (n + 1)) (A171769 (n + 1))

end

end A213398.P521873616834924197

namespace A213398

/-- `A287057(n+1)%A171769(n+1)` -/
def P521873616834924197.Spec : Prop :=
  ∀ n, P521873616834924197.a n = A213398 n

end A213398

/-! ## A213398.P6011051639110696346

`A391537(Δ[n²])`
-/

namespace A213398.P6011051639110696346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391537 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A213398.P6011051639110696346

namespace A213398

/-- `A391537(Δ[n²])` -/
def P6011051639110696346.Spec : Prop :=
  ∀ n, P6011051639110696346.a n = A213398 n

end A213398

/-! ## A213398.P4153219080298801964

`floor(sqrt(A233329(2*n)))`
-/

namespace A213398.P4153219080298801964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A233329 (2 * n))

end

end A213398.P4153219080298801964

namespace A213398

/-- `floor(sqrt(A233329(2*n)))` -/
def P4153219080298801964.Spec : Prop :=
  ∀ n, P4153219080298801964.a n = A213398 n

end A213398

/-!
# A213399: Number of (w,x,y) with all terms in {0,...,n} and max(|w-x|,|x-y|) = x.

The programs for A213399, the canonical program `A213399.P2825780221275054206` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213399 has offset 0).

The definition of A213399 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213399.P14053130558940436931

`(8*n²+2*(-1)^n*n+8*n+(-1)^n+3)/4`
-/

namespace A213399.P14053130558940436931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((8 * n ^ 2 : ℤ) + 2 * (-1) ^ n * (n : ℤ) + (8 * n : ℤ) + (-1) ^ n + 3 : ℚ) / 4

end

end A213399.P14053130558940436931

namespace A213399

/-- `(8*n²+2*(-1)^n*n+8*n+(-1)^n+3)/4` -/
def P14053130558940436931.Spec : Prop :=
  ∀ n, P14053130558940436931.a n = (A213399 n : ℚ)

theorem P14053130558940436931.correct : P14053130558940436931.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A213399, Nat.add_sub_cancel, A213399.P14053130558940436931.a, A213399.P2825780221275054206.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A213399, Nat.add_sub_cancel, A213399.P14053130558940436931.a, A213399.P2825780221275054206.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A213399

/-! ## A213399.P2825780221275054206

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=4, a(2)=14, a(3)=23, a(4)=43`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A213399

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P2825780221275054206.Spec : Prop :=
  ∀ n, P2825780221275054206.a n = A213399 n

theorem P2825780221275054206.correct : P2825780221275054206.Spec := by
  intro n
  simp only [A213399]

end A213399

/-! ## A213399.P12566172970889055817

`∑[n*(a((n+1)%2)+2)]` with `a(0)=1`
-/

namespace A213399.P12566172970889055817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  n * (f1 ((n + 1) % 2) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213399.P12566172970889055817

namespace A213399

/-- `∑[n*(a((n+1)%2)+2)]` -/
def P12566172970889055817.Spec : Prop :=
  ∀ n, (P12566172970889055817.a n : ℤ) = A213399 n

end A213399

/-! ## A213399.P3266513603261468212

`(2*n)²+gcd(2, n)-a(n-1)` with `a(0)=1`
-/

namespace A213399.P3266513603261468212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((2 * n) ^ 2 : ℤ) + ((Nat.gcd 2 n : ℤ) - a (n - 1))

end

end A213399.P3266513603261468212

namespace A213399

/-- `(2*n)²+gcd(2, n)-a(n-1)` -/
def P3266513603261468212.Spec : Prop :=
  ∀ n, P3266513603261468212.a n = A213399 n

end A213399

/-! ## A213399.P13041484428084986818

`A186424(n)+∑[n]`
-/

namespace A213399.P13041484428084986818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186424 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A213399.P13041484428084986818

namespace A213399

/-- `A186424(n)+∑[n]` -/
def P13041484428084986818.Spec : Prop :=
  ∀ n, P13041484428084986818.a n = A213399 n

end A213399

/-! ## A213399.P14100631263240945868

`A299645(n+1)+1`
-/

namespace A213399.P14100631263240945868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299645 (n + 1) + 1

end

end A213399.P14100631263240945868

namespace A213399

/-- `A299645(n+1)+1` -/
def P14100631263240945868.Spec : Prop :=
  ∀ n, P14100631263240945868.a n = A213399 n

end A213399

/-! ## A213399.P959476531781749639

`A245524(n+1)+n²`
-/

namespace A213399.P959476531781749639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245524 (n + 1) + (n ^ 2 : ℤ)

end

end A213399.P959476531781749639

namespace A213399

/-- `A245524(n+1)+n²` -/
def P959476531781749639.Spec : Prop :=
  ∀ n, P959476531781749639.a n = A213399 n

end A213399

/-! ## A213399.P10229271172955535338

`A220082(n+1)-∑[n]`
-/

namespace A213399.P10229271172955535338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220082 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A213399.P10229271172955535338

namespace A213399

/-- `A220082(n+1)-∑[n]` -/
def P10229271172955535338.Spec : Prop :=
  ∀ n, P10229271172955535338.a n = A213399 n

end A213399

/-! ## A213399.P6754805915322074042

`∑[A274922(n)+4*n]`
-/

namespace A213399.P6754805915322074042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274922 n + (4 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213399.P6754805915322074042

namespace A213399

/-- `∑[A274922(n)+4*n]` -/
def P6754805915322074042.Spec : Prop :=
  ∀ n, P6754805915322074042.a n = A213399 n

end A213399

/-! ## A213399.P11744830874488629099

`(n+1)^3-A213496(n)`
-/

namespace A213399.P11744830874488629099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - A213496 n

end

end A213399.P11744830874488629099

namespace A213399

/-- `(n+1)^3-A213496(n)` -/
def P11744830874488629099.Spec : Prop :=
  ∀ n, P11744830874488629099.a n = A213399 n

theorem P11744830874488629099.correct : P11744830874488629099.Spec := by
  intro n
  simp only [A213399, Nat.add_sub_cancel, A213399.P11744830874488629099.a, A213399.P2825780221275054206.a, A213496, A213496.P2399231074337002066.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A213399

/-! ## A213399.P9610170797349619226

`A174114(n+1)+n²+n`
-/

namespace A213399.P9610170797349619226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174114 (n + 1) + (n ^ 2 + n : ℤ)

end

end A213399.P9610170797349619226

namespace A213399

/-- `A174114(n+1)+n²+n` -/
def P9610170797349619226.Spec : Prop :=
  ∀ n, P9610170797349619226.a n = A213399 n

end A213399

/-! ## A213399.P11926049750269653916

`abs(∑[4*n]+1-A001057(n))`
-/

namespace A213399.P11926049750269653916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) - A001057 n|

end

end A213399.P11926049750269653916

namespace A213399

/-- `abs(∑[4*n]+1-A001057(n))` -/
def P11926049750269653916.Spec : Prop :=
  ∀ n, P11926049750269653916.a n = A213399 n

end A213399

/-! ## A213399.P2776167582160132379

`abs(C(2*(n+1), 2)-A014682(n))`
-/

namespace A213399.P2776167582160132379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose (2 * (n + 1)) 2 : ℤ) - A014682 n|

end

end A213399.P2776167582160132379

namespace A213399

/-- `abs(C(2*(n+1), 2)-A014682(n))` -/
def P2776167582160132379.Spec : Prop :=
  ∀ n, P2776167582160132379.a n = A213399 n

end A213399

/-! ## A213399.P3530412367385434717

`∑[A008706(n)-2*n*and(1, n)]`
-/

namespace A213399.P3530412367385434717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - (2 * n * Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213399.P3530412367385434717

namespace A213399

/-- `∑[A008706(n)-2*n*and(1, n)]` -/
def P3530412367385434717.Spec : Prop :=
  ∀ n, P3530412367385434717.a n = A213399 n

end A213399

/-! ## A213399.P12058774837400844014

`∑[A008458(n)-n*3^(n%2)]`
-/

namespace A213399.P12058774837400844014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - (n * 3 ^ (n % 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213399.P12058774837400844014

namespace A213399

/-- `∑[A008458(n)-n*3^(n%2)]` -/
def P12058774837400844014.Spec : Prop :=
  ∀ n, P12058774837400844014.a n = A213399 n

end A213399

/-! ## A213399.P12501147397125309338

`A130472(n)+A001844(n)`
-/

namespace A213399.P12501147397125309338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130472 n + A001844 n

end

end A213399.P12501147397125309338

namespace A213399

/-- `A130472(n)+A001844(n)` -/
def P12501147397125309338.Spec : Prop :=
  ∀ n, P12501147397125309338.a n = A213399 n

end A213399

/-! ## A213399.P14333052998101843392

`A084849(n)+A071045(n)`
-/

namespace A213399.P14333052998101843392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084849 n + A071045 n

end

end A213399.P14333052998101843392

namespace A213399

/-- `A084849(n)+A071045(n)` -/
def P14333052998101843392.Spec : Prop :=
  ∀ n, P14333052998101843392.a n = A213399 n

end A213399

/-! ## A213399.P9028997394303034657

`A239767(n)+A014255(n)`
-/

namespace A213399.P9028997394303034657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239767 n + A014255 n

end

end A213399.P9028997394303034657

namespace A213399

/-- `A239767(n)+A014255(n)` -/
def P9028997394303034657.Spec : Prop :=
  ∀ n, P9028997394303034657.a n = A213399 n

end A213399

/-! ## A213399.P3144218759829142429

`A212965(n)+A110660(n)`
-/

namespace A213399.P3144218759829142429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212965 n + A110660 n

end

end A213399.P3144218759829142429

namespace A213399

/-- `A212965(n)+A110660(n)` -/
def P3144218759829142429.Spec : Prop :=
  ∀ n, P3144218759829142429.a n = A213399 n

end A213399

/-! ## A213399.P7569663310812527935

`A195084(n)+A142463(n)`
-/

namespace A213399.P7569663310812527935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195084 n + A142463 n

end

end A213399.P7569663310812527935

namespace A213399

/-- `A195084(n)+A142463(n)` -/
def P7569663310812527935.Spec : Prop :=
  ∀ n, P7569663310812527935.a n = A213399 n

end A213399

