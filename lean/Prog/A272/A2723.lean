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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
# A272301: Number of set partitions of [n] such that for each pair of blocks (b,c) with b

The programs for A272301, there is no canonical definition to state claims against.
-/

/-! ## A272301.P12594640069037906286

`A266350(A148410(n))`
-/

namespace A272301.P12594640069037906286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266350 (A148410 n).toNat

end

end A272301.P12594640069037906286

/-! ## A272301.P8466327201389865717

`A060384(∑[∑[A031148(n+1)]])`
-/

namespace A272301.P8466327201389865717
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031148 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A272301.P8466327201389865717

/-! ## A272301.P9046303589863624075

`floor(A005408(n!)^γ)`
-/

namespace A272301.P9046303589863624075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005408 (Nat.factorial n) : ℝ) ^ Real.eulerMascheroniConstant⌋

end

end A272301.P9046303589863624075

/-! ## A272301.P12936887291107638575

`floor(A005843(-∏[n-C(2, n+2)])^γ)`
-/

namespace A272301.P12936887291107638575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose 2 (n + 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005843 (-(∏ j ∈ Finset.range (n + 1), f1 j)).toNat : ℝ) ^ Real.eulerMascheroniConstant⌋

end

end A272301.P12936887291107638575

/-!
# A272302: Nonnegative numbers n such that abs(3n^3 - 183n^2 + 3318n - 18757) is prime.

The programs for A272302, there is no canonical definition to state claims against.
-/

/-! ## A272302.P149146933960405440

`lt[A000700(3*(n+1)), A051870(A138797(n+2))]`
-/

namespace A272302.P149146933960405440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051870 (A138797 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A272302.P149146933960405440

/-! ## A272302.P11890020746472963394

`lt[A187243(n), A087723(A138796(n+2))]`
-/

namespace A272302.P11890020746472963394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187243 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087723 (A138796 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A272302.P11890020746472963394

/-! ## A272302.P7246152256449493810

`lt[A209085(n+1), A045528(A290103(2*(n+2)))]`
-/

namespace A272302.P7246152256449493810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045528 (A290103 (2 * (n + 2))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A272302.P7246152256449493810

/-! ## A272302.P15244862551758090372

`lt[A000700(3*(n+1)), A023186(A138796(n+2))]`
-/

namespace A272302.P15244862551758090372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023186 (A138796 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A272302.P15244862551758090372

/-! ## A272302.P14499001359827523869

`lt[A374378(A062503(n+1)), A102333(n+1)]`
-/

namespace A272302.P14499001359827523869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374378 (A062503 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102333 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A272302.P14499001359827523869

/-! ## A272302.P14078802759174886098

`lt[A318511(A263096(n+1)), A332597(n+1)]`
-/

namespace A272302.P14078802759174886098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318511 (A263096 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332597 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A272302.P14078802759174886098

/-! ## A272302.P12567549877976769831

`lt[A185325(n), A006378(A046530(n+2))]`
-/

namespace A272302.P12567549877976769831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185325 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006378 (A046530 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A272302.P12567549877976769831

/-! ## A272302.P387279587886167554

`lt[A057353(A026803(n+1)), A046530(n+2)]`
-/

namespace A272302.P387279587886167554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (A026803 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046530 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A272302.P387279587886167554

/-! ## A272302.P16214019735201172969

`lt[A167700(A074285(n+1)), A096879(n+3)]`
-/

namespace A272302.P16214019735201172969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167700 (A074285 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096879 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A272302.P16214019735201172969

/-! ## A272302.P14853174326600359

`lt[A362607(n), A016814(A046530(2*(n+2)))]`
-/

namespace A272302.P14853174326600359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362607 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016814 (A046530 (2 * (n + 2))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A272302.P14853174326600359

/-!
# A272303: Magic sums of 4 X 4 semimagic squares composed of primes.

The programs for A272303, there is no canonical definition to state claims against.
-/

/-! ## A272303.P17818022160707116691

`2*A344808(n+8)`
-/

namespace A272303.P17818022160707116691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A344808 (n + 8)

end

end A272303.P17818022160707116691

/-!
# A272305: Upper bound for the number of 1-1 directly conformal maps which a multiply-connected plane region of finite connectivity n >2 admits onto itself.

The programs for A272305, there is no canonical definition to state claims against.
-/

/-! ## A272305.P1141843167436840250

`A000005(5*2^n*A284018(n+1))`
-/

namespace A272305.P1141843167436840250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((5 * 2 ^ n : ℤ) * A284018 (n + 1)).toNat

end

end A272305.P1141843167436840250

/-!
# A272306: Lesser of two consecutive semiprimes whose sum is also semiprime.

The programs for A272306, the canonical program `A272306.P14391902173967097422` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272306 has offset 1).

The definition of A272306 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1645 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A272306.P14391902173967097422

`record[A001358(n+1)*A064911(A118717(n+1))]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A272306

/-- `record[A001358(n+1)*A064911(A118717(n+1))]` -/
def P14391902173967097422.Spec : Prop :=
  ∀ n, P14391902173967097422.a n = A272306 (n + 1)

theorem P14391902173967097422.correct : P14391902173967097422.Spec := by
  intro n
  simp only [A272306, Nat.add_sub_cancel]

end A272306

/-! ## A272306.P7243738444688810889

`record[(A186621(n+1)+1)*A064911(A118717(n+1))]`
-/

namespace A272306.P7243738444688810889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A186621 (n + 1) + 1) * A064911 (A118717 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272306.P7243738444688810889

namespace A272306

/-- `record[(A186621(n+1)+1)*A064911(A118717(n+1))]` -/
def P7243738444688810889.Spec : Prop :=
  ∀ n, P7243738444688810889.a n = A272306 (n + 1)

end A272306

/-! ## A272306.P8670982640622161056

`record[(A175708(n+1)+1+n)*A064911(A118717(n+1))]`
-/

namespace A272306.P8670982640622161056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A175708 (n + 1) + 1 + (n : ℤ)) * A064911 (A118717 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272306.P8670982640622161056

namespace A272306

/-- `record[(A175708(n+1)+1+n)*A064911(A118717(n+1))]` -/
def P8670982640622161056.Spec : Prop :=
  ∀ n, P8670982640622161056.a n = A272306 (n + 1)

end A272306

/-! ## A272306.P521647999226442192

`record[(A100493(n+1)-(n+1))*A064911(A118717(n+1))]`
-/

namespace A272306.P521647999226442192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A100493 (n + 1) - (n + 1 : ℤ)) * A064911 (A118717 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272306.P521647999226442192

namespace A272306

/-- `record[(A100493(n+1)-(n+1))*A064911(A118717(n+1))]` -/
def P521647999226442192.Spec : Prop :=
  ∀ n, P521647999226442192.a n = A272306 (n + 1)

end A272306

/-! ## A272306.P660096547009610313

`A001358(A092191(n+1))`
-/

namespace A272306.P660096547009610313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (A092191 (n + 1)).toNat

end

end A272306.P660096547009610313

namespace A272306

/-- `A001358(A092191(n+1))` -/
def P660096547009610313.Spec : Prop :=
  ∀ n, P660096547009610313.a n = A272306 (n + 1)

end A272306

/-! ## A272306.P18321010854226894553

`A129767(2*A092191(n+1))`
-/

namespace A272306.P18321010854226894553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129767 (2 * A092191 (n + 1)).toNat

end

end A272306.P18321010854226894553

namespace A272306

/-- `A129767(2*A092191(n+1))` -/
def P18321010854226894553.Spec : Prop :=
  ∀ n, P18321010854226894553.a n = A272306 (n + 1)

end A272306

/-! ## A272306.P8088297066541190189

`A088707(A092191(n+1))-A007318(C(2, n))`
-/

namespace A272306.P8088297066541190189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (A092191 (n + 1)).toNat - A007318 (Nat.choose 2 n)

end

end A272306.P8088297066541190189

namespace A272306

/-- `A088707(A092191(n+1))-A007318(C(2, n))` -/
def P8088297066541190189.Spec : Prop :=
  ∀ n, P8088297066541190189.a n = A272306 (n + 1)

end A272306

/-! ## A272306.P17109664411975770904

`A075818(A092191(n+1))/A020639(2*(n+1))`
-/

namespace A272306.P17109664411975770904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075818 (A092191 (n + 1)).toNat : ℚ) / (A020639 (2 * (n + 1)) : ℚ)

end

end A272306.P17109664411975770904

namespace A272306

/-- `A075818(A092191(n+1))/A020639(2*(n+1))` -/
def P17109664411975770904.Spec : Prop :=
  ∀ n, P17109664411975770904.a n = (A272306 (n + 1) : ℚ)

end A272306

/-! ## A272306.P1816112360608761584

`A088707(A092191(n+1))-A000108(C(2, n+2))`
-/

namespace A272306.P1816112360608761584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (A092191 (n + 1)).toNat - A000108 (Nat.choose 2 (n + 2))

end

end A272306.P1816112360608761584

namespace A272306

/-- `A088707(A092191(n+1))-A000108(C(2, n+2))` -/
def P1816112360608761584.Spec : Prop :=
  ∀ n, P1816112360608761584.a n = A272306 (n + 1)

end A272306

/-!
# A272307: Lesser of two consecutive semiprimes whose difference is also semiprime.

The programs for A272307, there is no canonical definition to state claims against.
-/

/-! ## A272307.P2251700376901884753

`A001358(A109310(n+1))`
-/

namespace A272307.P2251700376901884753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (A109310 (n + 1)).toNat

end

end A272307.P2251700376901884753

/-! ## A272307.P15342469923596834761

`A129767(2*A109310(n+1))`
-/

namespace A272307.P15342469923596834761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129767 (2 * A109310 (n + 1)).toNat

end

end A272307.P15342469923596834761

/-! ## A272307.P11026177711441731147

`A088707(A109310(2*n+1-n))-1`
-/

namespace A272307.P11026177711441731147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (A109310 ((2 * n : ℤ) + (1 - (n : ℤ))).toNat).toNat - 1

end

end A272307.P11026177711441731147

/-!
# A272308: Lesser of two consecutive semiprimes whose sum is prime.

The programs for A272308, there is no canonical definition to state claims against.
-/

/-! ## A272308.P5761794035347756858

`A001358(A109404(n+1))`
-/

namespace A272308.P5761794035347756858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (A109404 (n + 1)).toNat

end

end A272308.P5761794035347756858

/-! ## A272308.P6406180977794058956

`A129767(2*A109404(n+1))`
-/

namespace A272308.P6406180977794058956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129767 (2 * A109404 (n + 1)).toNat

end

end A272308.P6406180977794058956

/-! ## A272308.P9650973520803665444

`A075818(A109404(Δ[n²]-n))/2`
-/

namespace A272308.P9650973520803665444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075818 (A109404 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat : ℚ) / 2

end

end A272308.P9650973520803665444

/-! ## A272308.P2207330247343490207

`round(A075818(A109404(2*n+1-n))/2)`
-/

namespace A272308.P2207330247343490207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A075818 (A109404 (2 * n + 1 - n)).toNat : ℚ) / 2)

end

end A272308.P2207330247343490207

/-! ## A272308.P17669403480933420895

`A088707(A109404(n+1))-A007318(∑[n])`
-/

namespace A272308.P17669403480933420895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (A109404 (n + 1)).toNat - A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A272308.P17669403480933420895

/-! ## A272308.P9996717382439107029

`A088707(A109404(n+1))-A000034(2*n)`
-/

namespace A272308.P9996717382439107029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (A109404 (n + 1)).toNat - A000034 (2 * n)

end

end A272308.P9996717382439107029

/-! ## A272308.P2678884870841436030

`A088707(A109404(n+1))-A000041(C(2, 2*n))`
-/

namespace A272308.P2678884870841436030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (A109404 (n + 1)).toNat - A000041 (Nat.choose 2 (2 * n))

end

end A272308.P2678884870841436030

/-! ## A272308.P5135909620855352115

`A088707(A109404(n+1))-A020639(gcd(n, n+1))`
-/

namespace A272308.P5135909620855352115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (A109404 (n + 1)).toNat - A020639 (Nat.gcd n (n + 1))

end

end A272308.P5135909620855352115

/-! ## A272308.P9945732819481210999

`A088707(A109404(n+1))-val(A005117(n+2), 3)!`
-/

namespace A272308.P9945732819481210999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (A109404 (n + 1)).toNat - (Nat.factorial (SequenceMachineLib.valuation (A005117 (n + 2)).toNat 3) : ℤ)

end

end A272308.P9945732819481210999

/-!
# A272309: Lesser of two consecutive semiprimes with a prime difference.

The programs for A272309, the canonical program `A272309.P5367838531553965632` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272309 has offset 1).

The definition of A272309 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5049 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A272309.P14065054959080047731

`A001358(A176464(n+1))`
-/

namespace A272309.P14065054959080047731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (A176464 (n + 1)).toNat

end

end A272309.P14065054959080047731

namespace A272309

/-- `A001358(A176464(n+1))` -/
def P14065054959080047731.Spec : Prop :=
  ∀ n, P14065054959080047731.a n = A272309 (n + 1)

end A272309

/-! ## A272309.P5367838531553965632

`record[A001358(n+1)*A010051(A065516(n+1))]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A272309

/-- `record[A001358(n+1)*A010051(A065516(n+1))]` -/
def P5367838531553965632.Spec : Prop :=
  ∀ n, P5367838531553965632.a n = A272309 (n + 1)

theorem P5367838531553965632.correct : P5367838531553965632.Spec := by
  intro n
  simp only [A272309, Nat.add_sub_cancel]

end A272309

/-! ## A272309.P1381230858471405411

`A186621(A176464(n+1))+A000034(2*n)`
-/

namespace A272309.P1381230858471405411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (A176464 (n + 1)).toNat + A000034 (2 * n)

end

end A272309.P1381230858471405411

namespace A272309

/-- `A186621(A176464(n+1))+A000034(2*n)` -/
def P1381230858471405411.Spec : Prop :=
  ∀ n, P1381230858471405411.a n = A272309 (n + 1)

end A272309

/-! ## A272309.P1561544505814124369

`A075818(A176464(n+1))/A000034(2*n+1)`
-/

namespace A272309.P1561544505814124369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075818 (A176464 (n + 1)).toNat : ℚ) / (A000034 (2 * n + 1) : ℚ)

end

end A272309.P1561544505814124369

namespace A272309

/-- `A075818(A176464(n+1))/A000034(2*n+1)` -/
def P1561544505814124369.Spec : Prop :=
  ∀ n, P1561544505814124369.a n = (A272309 (n + 1) : ℚ)

end A272309

/-! ## A272309.P3839310466761780275

`A129767(2*A176464(n+1))`
-/

namespace A272309.P3839310466761780275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129767 (2 * A176464 (n + 1)).toNat

end

end A272309.P3839310466761780275

namespace A272309

/-- `A129767(2*A176464(n+1))` -/
def P3839310466761780275.Spec : Prop :=
  ∀ n, P3839310466761780275.a n = A272309 (n + 1)

end A272309

/-! ## A272309.P4116209035376968943

`A129767(A176464(n+1)+A176464(n+1))`
-/

namespace A272309.P4116209035376968943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129767 (A176464 (n + 1) + A176464 (n + 1)).toNat

end

end A272309.P4116209035376968943

namespace A272309

/-- `A129767(A176464(n+1)+A176464(n+1))` -/
def P4116209035376968943.Spec : Prop :=
  ∀ n, P4116209035376968943.a n = A272309 (n + 1)

end A272309

/-!
# A272310: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 462", based on the 5-celled von Neumann neighborhood.

The programs for A272310, there is no canonical definition to state claims against.
-/

/-! ## A272310.P3238925329184388099

`A246330(2^n-1)`
-/

namespace A272310.P3238925329184388099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246330 (2 ^ n - 1)

end

end A272310.P3238925329184388099

/-! ## A272310.P5347005760776647587

`record[A246330(A091264(n))]`
-/

namespace A272310.P5347005760776647587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246330 (A091264 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272310.P5347005760776647587

/-! ## A272310.P13007245715783652232

`record[A246330(A173787(n))]`
-/

namespace A272310.P13007245715783652232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246330 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272310.P13007245715783652232

/-! ## A272310.P5430992638013205180

`record[A246330(A218616(n))]`
-/

namespace A272310.P5430992638013205180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246330 (A218616 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272310.P5430992638013205180

/-! ## A272310.P15416106942865836460

`record[A246330(A255565(n))]`
-/

namespace A272310.P15416106942865836460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246330 (A255565 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272310.P15416106942865836460

/-!
# A272311: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 462", based on the 5-celled von Neumann neighborhood.

The programs for A272311, there is no canonical definition to state claims against.
-/

/-! ## A272311.P1230212954441240186

`∑[A246330(n)]`
-/

namespace A272311.P1230212954441240186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272311.P1230212954441240186

/-! ## A272311.P3565640078760393975

`∑[∑[A272312(n)]+1-A272312(n)]`
-/

namespace A272311.P3565640078760393975
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272312 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A272312 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272311.P3565640078760393975

/-! ## A272311.P5306773362144285994

`∑[A016754(n)-A272769(n)]+1`
-/

namespace A272311.P5306773362144285994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n - A272769 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A272311.P5306773362144285994

/-! ## A272311.P7034762640491919378

`∑[A016754(n)*A054977(n)-A272769(n)]`
-/

namespace A272311.P7034762640491919378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n * A054977 n - A272769 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272311.P7034762640491919378

/-! ## A272311.P10257272936078903622

`∑[A181385(A016825(n))-A272769(n)]`
-/

namespace A272311.P10257272936078903622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A272769 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272311.P10257272936078903622

/-! ## A272311.P13580475184937864549

`∑[A181385(A016825(n))]-A272937(n)`
-/

namespace A272311.P13580475184937864549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A272937 n

end

end A272311.P13580475184937864549

/-! ## A272311.P16483235183455540499

`a(n-1)+A246330(n)+A008683(A083728(n))` with `a(0)=1`
-/

namespace A272311.P16483235183455540499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A246330 n + A008683 (A083728 n).toNat)

end

end A272311.P16483235183455540499

/-!
# A272312: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 462", based on the 5-celled von Neumann neighborhood.

The programs for A272312, there is no canonical definition to state claims against.
-/

/-! ## A272312.P4603290959085142645

`Δ[A246330(n)]`
-/

namespace A272312.P4603290959085142645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272312.P4603290959085142645

/-! ## A272312.P15068489752831379468

`A246330(n+1)-A246330(n)`
-/

namespace A272312.P15068489752831379468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246330 (n + 1) - A246330 n

end

end A272312.P15068489752831379468

/-! ## A272312.P14177166045208622307

`Δ[A181385(A016825(n))-A272769(n)]`
-/

namespace A272312.P14177166045208622307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A272769 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272312.P14177166045208622307

/-! ## A272312.P18228953648699596473

`Δ[A181385(A016825(n))]-A272938(n)`
-/

namespace A272312.P18228953648699596473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272938 n

end

end A272312.P18228953648699596473

/-! ## A272312.P4615893670632558903

`Δ[A008740(A008458(n))]-A272938(n)`
-/

namespace A272312.P4615893670632558903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272938 n

end

end A272312.P4615893670632558903

/-!
# A272313: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 465", based on the 5-celled von Neumann neighborhood.

The programs for A272313, there is no canonical definition to state claims against.
-/

/-! ## A272313.P12523138921916354856

`A272317(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A272313.P12523138921916354856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272317 (n - 1) + a (n - 1)

end

end A272313.P12523138921916354856

/-! ## A272313.P89269836106712155

`Δ[A272316(n)]-A272317(n)`
-/

namespace A272313.P89269836106712155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272317 n

end

end A272313.P89269836106712155

/-! ## A272313.P874578319094419621

`A272316(n+1)-(A272317(n)+A272316(n))`
-/

namespace A272313.P874578319094419621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272316 (n + 1) - (A272317 n + A272316 n)

end

end A272313.P874578319094419621

/-! ## A272313.P16085970133011521097

`A270217(n*gcd(2, n))`
-/

namespace A272313.P16085970133011521097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270217 (n * Nat.gcd 2 n)

end

end A272313.P16085970133011521097

/-! ## A272313.P2319963272912178820

`A270217(A022998(n))`
-/

namespace A272313.P2319963272912178820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270217 (A022998 n).toNat

end

end A272313.P2319963272912178820

/-! ## A272313.P8205767680464265831

`A270217(A283971(2*n))`
-/

namespace A272313.P8205767680464265831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270217 (A283971 (2 * n)).toNat

end

end A272313.P8205767680464265831

/-! ## A272313.P15809340804810403819

`A270217(A165988(n)/3)`
-/

namespace A272313.P15809340804810403819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270217 (SequenceMachineLib.roundAway ((A165988 n : ℚ) / 3)).toNat

end

end A272313.P15809340804810403819

/-! ## A272313.P546800434096249135

`A270217(A237420(n)+n)`
-/

namespace A272313.P546800434096249135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270217 (A237420 n + (n : ℤ)).toNat

end

end A272313.P546800434096249135

/-! ## A272313.P8415794194950970338

`A270217(n*A040001(n))`
-/

namespace A272313.P8415794194950970338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270217 ((n : ℤ) * A040001 n).toNat

end

end A272313.P8415794194950970338

/-! ## A272313.P15174864751463911097

`A270217(n*A134451(n))`
-/

namespace A272313.P15174864751463911097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270217 ((n : ℤ) * A134451 n).toNat

end

end A272313.P15174864751463911097

/-! ## A272313.P10789435963197604461

`A270217(lcm(n, A257088(n)))`
-/

namespace A272313.P10789435963197604461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270217 (Int.lcm (n : ℤ) (A257088 n))

end

end A272313.P10789435963197604461

/-! ## A272313.P7077772248039912113

`A270217(gcd(n², A005843(n)))`
-/

namespace A272313.P7077772248039912113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270217 (Int.gcd (n ^ 2 : ℤ) (A005843 n))

end

end A272313.P7077772248039912113

/-! ## A272313.P13832440274370829249

`A270217(n*A000034(n+1))`
-/

namespace A272313.P13832440274370829249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270217 ((n : ℤ) * A000034 (n + 1)).toNat

end

end A272313.P13832440274370829249

/-! ## A272313.P7488686518899488234

`A270217(2*n/A000034(n))`
-/

namespace A272313.P7488686518899488234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270217 (SequenceMachineLib.roundAway (2 * ((n : ℚ) / (A000034 n : ℚ)))).toNat

end

end A272313.P7488686518899488234

/-! ## A272313.P15473312372788459705

`A270217(2*n/A014709(2*n))`
-/

namespace A272313.P15473312372788459705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270217 (SequenceMachineLib.roundAway ((2 * n : ℚ) / (A014709 (2 * n) : ℚ))).toNat

end

end A272313.P15473312372788459705

/-! ## A272313.P1585167058754551533

`A270217(A004523(A165355(n)))`
-/

namespace A272313.P1585167058754551533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270217 (A004523 (A165355 n).toNat).toNat

end

end A272313.P1585167058754551533

/-!
# A272315: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 467", based on the 5-celled von Neumann neighborhood.

The programs for A272315, there is no canonical definition to state claims against.
-/

/-! ## A272315.P15981553221082457118

`A272321(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A272315.P15981553221082457118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272321 (n - 1) + a (n - 1)

end

end A272315.P15981553221082457118

/-! ## A272315.P16237008064425732612

`Δ[A272320(n)]-A272321(n)`
-/

namespace A272315.P16237008064425732612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272320 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272321 n

end

end A272315.P16237008064425732612

/-! ## A272315.P1930826896836855668

`A272320(n+1)-(A272321(n)+A272320(n))`
-/

namespace A272315.P1930826896836855668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272320 (n + 1) - (A272321 n + A272320 n)

end

end A272315.P1930826896836855668

/-! ## A272315.P13294225637642982494

`∑[A272321(A000027(n+1)-1)]+1-A272321(n)`
-/

namespace A272315.P13294225637642982494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272321 (A000027 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A272321 n)

end

end A272315.P13294225637642982494

/-! ## A272315.P10291576793297792499

`∑[A272321(A110654(2*(n+1))-1)]+1-A272321(n)`
-/

namespace A272315.P10291576793297792499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272321 (A110654 (2 * (n + 1)) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A272321 n)

end

end A272315.P10291576793297792499

/-!
# A272316: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 465", based on the 5-celled von Neumann neighborhood.

The programs for A272316, there is no canonical definition to state claims against.
-/

/-! ## A272316.P2548476273777712653

`∑[A272313(n)]`
-/

namespace A272316.P2548476273777712653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272313 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272316.P2548476273777712653

/-! ## A272316.P13969336445871078989

`A272313(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A272316.P13969336445871078989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272313 n + a (A023443 n).toNat

end

end A272316.P13969336445871078989

/-! ## A272316.P4725585582127017538

`∑[∑[A272317(n)]+1-A272317(n)]`
-/

namespace A272316.P4725585582127017538
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272317 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A272317 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272316.P4725585582127017538

/-! ## A272316.P8234818069295384689

`A272313(n)+a(A057979(A004273(n)))` with `a(0)=1`
-/

namespace A272316.P8234818069295384689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272313 n + a (A057979 (A004273 n).toNat).toNat

end

end A272316.P8234818069295384689

/-! ## A272316.P7000642316252351133

`A270217(n)+A272418(n)-A272416(n)`
-/

namespace A272316.P7000642316252351133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270217 n + (A272418 n - A272416 n)

end

end A272316.P7000642316252351133

/-! ## A272316.P8923165385364508941

`∑[A270217(A022998(n))]`
-/

namespace A272316.P8923165385364508941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270217 (A022998 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272316.P8923165385364508941

/-! ## A272316.P16541892379647702276

`∑[A270217(A257088(n))]-3`
-/

namespace A272316.P16541892379647702276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270217 (A257088 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A272316.P16541892379647702276

/-! ## A272316.P18160028284161832443

`∑[A270217(A283971(2*n))]`
-/

namespace A272316.P18160028284161832443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270217 (A283971 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272316.P18160028284161832443

/-! ## A272316.P9413692165314357274

`∑[A270217(n*A040001(n))]`
-/

namespace A272316.P9413692165314357274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270217 ((n : ℤ) * A040001 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272316.P9413692165314357274

/-! ## A272316.P1603673174722572582

`∑[A270217(A004523(A165355(n)))]`
-/

namespace A272316.P1603673174722572582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270217 (A004523 (A165355 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272316.P1603673174722572582

/-!
# A272317: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 465", based on the 5-celled von Neumann neighborhood.

The programs for A272317, there is no canonical definition to state claims against.
-/

/-! ## A272317.P16784994113491450642

`A270220(n)+A272416(n)-A272313(n)`
-/

namespace A272317.P16784994113491450642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270220 n + (A272416 n - A272313 n)

end

end A272317.P16784994113491450642

/-! ## A272317.P5017861029006946842

`Δ[A272313(n)]`
-/

namespace A272317.P5017861029006946842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272313 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272317.P5017861029006946842

/-! ## A272317.P13571446039960309412

`A272313(n+1)-A272313(n)`
-/

namespace A272317.P13571446039960309412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272313 (n + 1) - A272313 n

end

end A272317.P13571446039960309412

/-! ## A272317.P5541113105677878709

`Δ[A270217(A022998(n))]`
-/

namespace A272317.P5541113105677878709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270217 (A022998 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272317.P5541113105677878709

/-! ## A272317.P1455276676137396379

`Δ[A270217(n*A040001(n))]`
-/

namespace A272317.P1455276676137396379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270217 ((n : ℤ) * A040001 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272317.P1455276676137396379

/-!
# A272318: 

The programs for A272318, there is no canonical definition to state claims against.
-/

/-! ## A272318.P14820944315399797433

`A181885(Δ[3^n])`
-/

namespace A272318.P14820944315399797433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181885 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A272318.P14820944315399797433

/-!
# A272319: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 467", based on the 5-celled von Neumann neighborhood.

The programs for A272319, there is no canonical definition to state claims against.
-/

/-! ## A272319.P8572698015064189531

`A272315(2^n-1)`
-/

namespace A272319.P8572698015064189531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272315 (2 ^ n - 1)

end

end A272319.P8572698015064189531

/-! ## A272319.P1904629005468748735

`record[A272315(A006068(n))]`
-/

namespace A272319.P1904629005468748735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272315 (A006068 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272319.P1904629005468748735

/-! ## A272319.P5955039820329383298

`record[A272315(A038573(n))]`
-/

namespace A272319.P5955039820329383298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272315 (A038573 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272319.P5955039820329383298

/-! ## A272319.P4619614022030971601

`record[A272315(A303763(n))]`
-/

namespace A272319.P4619614022030971601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272315 (A303763 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272319.P4619614022030971601

/-! ## A272319.P17625013171015850398

`record[A272315(A303765(n))]`
-/

namespace A272319.P17625013171015850398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272315 (A303765 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272319.P17625013171015850398

/-!
# A272320: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 467", based on the 5-celled von Neumann neighborhood.

The programs for A272320, there is no canonical definition to state claims against.
-/

/-! ## A272320.P13770272612666491493

`∑[∑[A272321(n)]+1-A272321(n)]`
-/

namespace A272320.P13770272612666491493
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272321 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A272321 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272320.P13770272612666491493

/-! ## A272320.P11841154109009691492

`∑[A272315(n)]`
-/

namespace A272320.P11841154109009691492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272315 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272320.P11841154109009691492

/-! ## A272320.P10522757057207545118

`A272315(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A272320.P10522757057207545118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272315 n + a (A023443 n).toNat

end

end A272320.P10522757057207545118

/-! ## A272320.P156341047351805373

`A272315(A005843(n)-n)+a(n-1)` with `a(0)=1`
-/

namespace A272320.P156341047351805373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272315 (A005843 n - (n : ℤ)).toNat + a (n - 1)

end

end A272320.P156341047351805373

/-! ## A272320.P12728952497764802759

`a(n-1)+A272315(n)%A016994(n)` with `a(0)=1`
-/

namespace A272320.P12728952497764802759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A272315 n) (A016994 n)

end

end A272320.P12728952497764802759

/-!
# A272321: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 467", based on the 5-celled von Neumann neighborhood.

The programs for A272321, there is no canonical definition to state claims against.
-/

/-! ## A272321.P18365093936748984430

`Δ[A272315(n)]`
-/

namespace A272321.P18365093936748984430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272315 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272321.P18365093936748984430

/-! ## A272321.P6404588436313705023

`A272315(n+1)-A272315(n)`
-/

namespace A272321.P6404588436313705023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272315 (n + 1) - A272315 n

end

end A272321.P6404588436313705023

/-!
# A272322: Numbers n such that n^n does not contain all ten decimal digits.

The programs for A272322, there is no canonical definition to state claims against.
-/

/-! ## A272322.P7729986058806538410

`eq[1, A069777(A086376(n))]`
-/

namespace A272322.P7729986058806538410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069777 (A086376 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A272322.P7729986058806538410

/-! ## A272322.P11304849758791291900

`lt[A317741(A364349(n)), A261611(n)]`
-/

namespace A272322.P11304849758791291900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317741 (A364349 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261611 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A272322.P11304849758791291900

/-! ## A272322.P17630334367596544855

`lt[A158264(n), A133547(A020639(n+1))]`
-/

namespace A272322.P17630334367596544855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158264 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133547 (A020639 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A272322.P17630334367596544855

/-! ## A272322.P4767738693063727427

`lt[A317390(A086376(n)), A114255(n+1)]`
-/

namespace A272322.P4767738693063727427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317390 (A086376 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114255 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A272322.P4767738693063727427

/-! ## A272322.P2727260577772739563

`lt[A317390(A086376(n)), A248635(n+5)]`
-/

namespace A272322.P2727260577772739563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317390 (A086376 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248635 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A272322.P2727260577772739563

/-!
# A272323: Nonnegative numbers n such that abs(82n^3 - 1228n^2 + 6130n - 5861) is prime.

The programs for A272323, there is no canonical definition to state claims against.
-/

/-! ## A272323.P15394996783047550167

`lt[A326020(n+2), A247265(A244080(n+1))]`
-/

namespace A272323.P15394996783047550167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326020 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247265 (A244080 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A272323.P15394996783047550167

/-! ## A272323.P4239281479242813872

`lt[A325548(n), A320166(A002144(3*n+1))]`
-/

namespace A272323.P4239281479242813872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325548 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320166 (A002144 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A272323.P4239281479242813872

/-! ## A272323.P5609327279527694085

`lt[A108467(n), A320152(A049437(n+1))]`
-/

namespace A272323.P5609327279527694085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108467 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320152 (A049437 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A272323.P5609327279527694085

/-! ## A272323.P633387508703485827

`lt[A117536(n), A062376(A348873(n+1))]`
-/

namespace A272323.P633387508703485827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117536 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062376 (A348873 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A272323.P633387508703485827

/-! ## A272323.P14976858420371696728

`lt[A380956(n), A038543(A380978(n+1))]`
-/

namespace A272323.P14976858420371696728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380956 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038543 (A380978 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A272323.P14976858420371696728

/-!
# A272324: Primes of the form abs(82n^3 - 1228n^2 + 6130n - 5861) in order of increasing nonnegative n.

The programs for A272324, there is no canonical definition to state claims against.
-/

/-! ## A272324.P12865780346768009537

`abs(A076808(A272323(n+1)))`
-/

namespace A272324.P12865780346768009537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A076808 (A272323 (n + 1)).toNat|

end

end A272324.P12865780346768009537

/-! ## A272324.P10043546280902827019

`lcm(A020985(n), A076808(A272323(n+1)))`
-/

namespace A272324.P10043546280902827019
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A076808 (A272323 (n + 1)).toNat)

end

end A272324.P10043546280902827019

/-! ## A272324.P17440271227665269576

`gcd(A076808(A272323(n+1)), A177063(2*n+1))`
-/

namespace A272324.P17440271227665269576
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A076808 (A272323 (n + 1)).toNat) (A177063 (2 * n + 1))

end

end A272324.P17440271227665269576

/-! ## A272324.P13634103611361868005

`A076808(A272323(n+1))*A158388(A004526(n))`
-/

namespace A272324.P13634103611361868005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076808 (A272323 (n + 1)).toNat * A158388 (A004526 n).toNat

end

end A272324.P13634103611361868005

/-! ## A272324.P10019369178319049562

`gcd(A076808(n), A142150(A113158(n+1)))`
-/

namespace A272324.P10019369178319049562
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A076808 n) (A142150 (A113158 (n + 1)).toNat)

end

end A272324.P10019369178319049562

/-!
# A272325: Nonnegative numbers n such that n^4 + 853n^3 + 2636n^2 + 3536n + 1753 is prime.

The programs for A272325, there is no canonical definition to state claims against.
-/

/-! ## A272325.P9393084252411315015

`lt[A067659(n), A053451(A000124(n))]`
-/

namespace A272325.P9393084252411315015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067659 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053451 (A000124 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A272325.P9393084252411315015

/-! ## A272325.P38336007978637033

`lt[A091602(A323431(n+4)), A323431(n+4)]`
-/

namespace A272325.P38336007978637033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091602 (A323431 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323431 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A272325.P38336007978637033

/-! ## A272325.P9505759994552020511

`lt[A163252(A308253(n+1)), 6]`
-/

namespace A272325.P9505759994552020511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163252 (A308253 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A272325.P9505759994552020511

/-! ## A272325.P6466483191976667059

`lt[n, A205153(A375408(n+1))]`
-/

namespace A272325.P6466483191976667059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205153 (A375408 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A272325.P6466483191976667059

/-! ## A272325.P2870578184304933669

`lt[A025816(n), A372715(n+4)+1]`
-/

namespace A272325.P2870578184304933669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025816 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372715 (n + 4) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A272325.P2870578184304933669

/-!
# A272326: Primes of the form k^4 + 853*k^3 + 2636*k^2 + 3536*k + 1753 in order of increasing nonnegative k.

The programs for A272326, there is no canonical definition to state claims against.
-/

/-! ## A272326.P8522325421341050200

`A076809(A272325(n+1))`
-/

namespace A272326.P8522325421341050200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076809 (A272325 (n + 1)).toNat

end

end A272326.P8522325421341050200

/-!
# A272327: Table read by antidiagonals: T(n, k) is the least i > n such that n divides i^k (n > 0, k > 0).

The programs for A272327, there is no canonical definition to state claims against.
-/

/-! ## A272327.P114887233609342421

`A000925(A102697(2*(n+2)))+A000010(A099375(n)+2)`
-/

namespace A272327.P114887233609342421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 (A102697 (2 * (n + 2))).toNat + A000010 (A099375 n + 2).toNat

end

end A272327.P114887233609342421

/-! ## A272327.P11457240979860261052

`2*(A303300(A303278(n+1))+A025581(n))`
-/

namespace A272327.P11457240979860261052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A303300 (A303278 (n + 1)).toNat + A025581 n)

end

end A272327.P11457240979860261052

/-! ## A272327.P9709580133715233633

`A099375(n)+A020985(A061509(n))`
-/

namespace A272327.P9709580133715233633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n + A020985 (A061509 n).toNat

end

end A272327.P9709580133715233633

/-! ## A272327.P3781453355109457955

`A321765(A329350(n+1))+A099375(n)`
-/

namespace A272327.P3781453355109457955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321765 (A329350 (n + 1)).toNat + A099375 n

end

end A272327.P3781453355109457955

/-!
# A272328: Number of integers 1<=k<=n such that phi(n)=phi(n+k) where phi is Euler's totient function A000010.

The programs for A272328, there is no canonical definition to state claims against.
-/

/-! ## A272328.P7441794568104702104

`A037808(A154619(n+1))`
-/

namespace A272328.P7441794568104702104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037808 (A154619 (n + 1)).toNat

end

end A272328.P7441794568104702104

/-! ## A272328.P12895708180236545614

`A185075(A083318(n))%3`
-/

namespace A272328.P12895708180236545614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185075 (A083318 n).toNat) 3

end

end A272328.P12895708180236545614

/-! ## A272328.P11306338539504277572

`A312902(A088981(n))%3`
-/

namespace A272328.P11306338539504277572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A312902 (A088981 n).toNat) 3

end

end A272328.P11306338539504277572

/-! ## A272328.P12898212196122822286

`A302024(A207363(n+4))%3`
-/

namespace A272328.P12898212196122822286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302024 (A207363 (n + 4)).toNat) 3

end

end A272328.P12898212196122822286

/-! ## A272328.P3286154262197627700

`gcd(A000122(2^n), A287234(3*n+1))`
-/

namespace A272328.P3286154262197627700
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000122 (2 ^ n)) (A287234 (3 * n + 1))

end

end A272328.P3286154262197627700

/-!
# A272330: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 601", based on the 5-celled von Neumann neighborhood.

The programs for A272330, there is no canonical definition to state claims against.
-/

/-! ## A272330.P16170662396766043628

`A272825(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A272330.P16170662396766043628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272825 (n - 1) + a (n - 1)

end

end A272330.P16170662396766043628

/-! ## A272330.P8158516593771745815

`∑[A272825(n)]+1-A272825(n)`
-/

namespace A272330.P8158516593771745815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A272825 n)

end

end A272330.P8158516593771745815

/-! ## A272330.P8540790953133382315

`A016754(n)-A271885(n)%A005898(n)`
-/

namespace A272330.P8540790953133382315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n - Int.tmod (A271885 n) (A005898 n)

end

end A272330.P8540790953133382315

/-! ## A272330.P333986411544455381

`Δ[A272824(n)]-A272825(n)`
-/

namespace A272330.P333986411544455381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272824 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272825 n

end

end A272330.P333986411544455381

/-! ## A272330.P16626337174200267089

`A272824(n+1)-(A272825(n)+A272824(n))`
-/

namespace A272330.P16626337174200267089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272824 (n + 1) - (A272825 n + A272824 n)

end

end A272330.P16626337174200267089

/-! ## A272330.P15642663684494748371

`(2*n+1)²*A014963(4*n+2)-A271885(n)`
-/

namespace A272330.P15642663684494748371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ 2 : ℤ) * A014963 (4 * n + 2) - A271885 n

end

end A272330.P15642663684494748371

/-! ## A272330.P9814787422345697071

`A181385(A016825(n))-A271885(n)`
-/

namespace A272330.P9814787422345697071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A271885 n

end

end A272330.P9814787422345697071

/-! ## A272330.P8911561721314327445

`A008740(A008458(n))-A271885(n)`
-/

namespace A272330.P8911561721314327445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat - A271885 n

end

end A272330.P8911561721314327445

/-!
# A272331: Refactorable Fibonacci numbers.

The programs for A272331, there is no canonical definition to state claims against.
-/

/-! ## A272331.P9249878179428921069

`A000045(A160683(n+2))`
-/

namespace A272331.P9249878179428921069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A160683 (n + 2)).toNat

end

end A272331.P9249878179428921069

/-!
# A272333: Values of Fibonacci(n+1) that divides n!.

The programs for A272333, there is no canonical definition to state claims against.
-/

/-! ## A272333.P2425041933055498784

`A000045(A018253(n+2))`
-/

namespace A272333.P2425041933055498784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A018253 (n + 2)).toNat

end

end A272333.P2425041933055498784

/-! ## A272333.P14376081474219347161

`A000045(A048278(n+1)+1)`
-/

namespace A272333.P14376081474219347161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A048278 (n + 1) + 1).toNat

end

end A272333.P14376081474219347161

/-! ## A272333.P2226363855179225305

`A238329(comp[n^3])`
-/

namespace A272333.P2226363855179225305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238329 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A272333.P2226363855179225305

/-!
# A272334: Square root of the largest square dividing 2^n - 1.

The programs for A272334, the canonical program `A272334.P18035456064944277151` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272334 has offset 1).

The definition of A272334 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A272334.P10349450522660665946

`gcd(A055515(n+1), A056134(n+1))`
-/

namespace A272334.P10349450522660665946
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055515 (n + 1)) (A056134 (n + 1))

end

end A272334.P10349450522660665946

namespace A272334

/-- `gcd(A055515(n+1), A056134(n+1))` -/
def P10349450522660665946.Spec : Prop :=
  ∀ n, (P10349450522660665946.a n : ℤ) = A272334 (n + 1)

end A272334

/-! ## A272334.P15546602444507919957

`A000188(2*A087966(n+1))`
-/

namespace A272334.P15546602444507919957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (2 * A087966 (n + 1)).toNat

end

end A272334.P15546602444507919957

namespace A272334

/-- `A000188(2*A087966(n+1))` -/
def P15546602444507919957.Spec : Prop :=
  ∀ n, P15546602444507919957.a n = A272334 (n + 1)

end A272334

/-! ## A272334.P17100286741482357396

`gcd(A038388(n+1), A053288(n+1))`
-/

namespace A272334.P17100286741482357396
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038388 (n + 1)) (A053288 (n + 1))

end

end A272334.P17100286741482357396

namespace A272334

/-- `gcd(A038388(n+1), A053288(n+1))` -/
def P17100286741482357396.Spec : Prop :=
  ∀ n, (P17100286741482357396.a n : ℤ) = A272334 (n + 1)

end A272334

/-! ## A272334.P6307400480081666680

`gcd(A019554(n+1), A281500(n))`
-/

namespace A272334.P6307400480081666680
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A019554 (n + 1)) (A281500 n)

end

end A272334.P6307400480081666680

namespace A272334

/-- `gcd(A019554(n+1), A281500(n))` -/
def P6307400480081666680.Spec : Prop :=
  ∀ n, (P6307400480081666680.a n : ℤ) = A272334 (n + 1)

end A272334

/-! ## A272334.P18035456064944277151

`gcd(A038388(n+1), A290683(n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A272334

/-- `gcd(A038388(n+1), A290683(n))` -/
def P18035456064944277151.Spec : Prop :=
  ∀ n, (P18035456064944277151.a n : ℤ) = A272334 (n + 1)

theorem P18035456064944277151.correct : P18035456064944277151.Spec := by
  intro n
  simp only [A272334, Nat.add_sub_cancel]

end A272334

/-! ## A272334.P6928796395572914071

`gcd(A056134(n+1), A290837(n))`
-/

namespace A272334.P6928796395572914071
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056134 (n + 1)) (A290837 n)

end

end A272334.P6928796395572914071

namespace A272334

/-- `gcd(A056134(n+1), A290837(n))` -/
def P6928796395572914071.Spec : Prop :=
  ∀ n, (P6928796395572914071.a n : ℤ) = A272334 (n + 1)

end A272334

/-! ## A272334.P5634190360178873837

`gcd(2*A019554(n+1), A000225(n+1))`
-/

namespace A272334.P5634190360178873837
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A019554 (n + 1)) (A000225 (n + 1))

end

end A272334.P5634190360178873837

namespace A272334

/-- `gcd(2*A019554(n+1), A000225(n+1))` -/
def P5634190360178873837.Spec : Prop :=
  ∀ n, (P5634190360178873837.a n : ℤ) = A272334 (n + 1)

end A272334

/-! ## A272334.P4681120869938474402

`gcd(A000079(n+1)-1, A019554(2*(n+1)))`
-/

namespace A272334.P4681120869938474402
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000079 (n + 1) - 1) (A019554 (2 * (n + 1)))

end

end A272334.P4681120869938474402

namespace A272334

/-- `gcd(A000079(n+1)-1, A019554(2*(n+1)))` -/
def P4681120869938474402.Spec : Prop :=
  ∀ n, (P4681120869938474402.a n : ℤ) = A272334 (n + 1)

end A272334

/-! ## A272334.P12582843475910515303

`gcd(2*A056134(n+1), A257450(n+1))`
-/

namespace A272334.P12582843475910515303
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A056134 (n + 1)) (A257450 (n + 1))

end

end A272334.P12582843475910515303

namespace A272334

/-- `gcd(2*A056134(n+1), A257450(n+1))` -/
def P12582843475910515303.Spec : Prop :=
  ∀ n, (P12582843475910515303.a n : ℤ) = A272334 (n + 1)

end A272334

/-! ## A272334.P1954282912124941548

`A015052(A014491(n+1)²)`
-/

namespace A272334.P1954282912124941548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 (A014491 (n + 1) ^ 2).toNat

end

end A272334.P1954282912124941548

namespace A272334

/-- `A015052(A014491(n+1)²)` -/
def P1954282912124941548.Spec : Prop :=
  ∀ n, P1954282912124941548.a n = A272334 (n + 1)

end A272334

/-! ## A272334.P12061695291805811726

`A053166(A014491(n+1)²)`
-/

namespace A272334.P12061695291805811726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053166 (A014491 (n + 1) ^ 2).toNat

end

end A272334.P12061695291805811726

namespace A272334

/-- `A053166(A014491(n+1)²)` -/
def P12061695291805811726.Spec : Prop :=
  ∀ n, P12061695291805811726.a n = A272334 (n + 1)

end A272334

/-! ## A272334.P3202846348045572218

`A053166(A014491(n+1)^A281007(n+1))`
-/

namespace A272334.P3202846348045572218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053166 (SequenceMachineLib.roundAway ((A014491 (n + 1) : ℚ) ^ (A281007 (n + 1) : ℤ))).toNat

end

end A272334.P3202846348045572218

namespace A272334

/-- `A053166(A014491(n+1)^A281007(n+1))` -/
def P3202846348045572218.Spec : Prop :=
  ∀ n, P3202846348045572218.a n = A272334 (n + 1)

end A272334

/-!
# A272336: Number of ordered ways to write n as x^2 + y^2 + z^2 + w^2 with x^4 + y^3*z a square, where x,y,z,w are nonnegative integers with z > 0.

The programs for A272336, there is no canonical definition to state claims against.
-/

/-! ## A272336.P17439008287011539383

`or(A071037(A000071(n+5)), A261876(n+1))`
-/

namespace A272336.P17439008287011539383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A071037 (A000071 (n + 5)).toNat) (A261876 (n + 1))

end

end A272336.P17439008287011539383

/-! ## A272336.P1612875992966035729

`or(A180433(A050228(n+5)), A261876(n+1))`
-/

namespace A272336.P1612875992966035729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A180433 (A050228 (n + 5)).toNat) (A261876 (n + 1))

end

end A272336.P1612875992966035729

/-! ## A272336.P9795739134154104242

`or(A261876(n+1), A347283(A011782(n)))`
-/

namespace A272336.P9795739134154104242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A261876 (n + 1)) (A347283 (A011782 n).toNat)

end

end A272336.P9795739134154104242

/-!
# A272338: Numbers such that antisigma(n) mod sigma(n) = phi(n), where antisigma(n) is the sum of the numbers less than n that do not divide n, sigma(n) is the sum of the divisors of n and phi(n) is the Euler totient function of n.

The programs for A272338, there is no canonical definition to state claims against.
-/

/-! ## A272338.P14929335294540063775

`A006166(A059720(2*n+3)+A019278(3*(n+1)))`
-/

namespace A272338.P14929335294540063775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006166 (A059720 (2 * n + 3) + A019278 (3 * (n + 1))).toNat

end

end A272338.P14929335294540063775

/-!
# A272340: First differences of 1/p(n), reciprocal of the number p(n) of unrestricted partitions of n (denominator).

The programs for A272340, there is no canonical definition to state claims against.
-/

/-! ## A272340.P5100149378367771816

`A304328(A090982(n))`
-/

namespace A272340.P5100149378367771816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304328 (A090982 n).toNat

end

end A272340.P5100149378367771816

/-! ## A272340.P12616179911898934694

`A007913(81*A090982(n))`
-/

namespace A272340.P12616179911898934694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (81 * A090982 n).toNat

end

end A272340.P12616179911898934694

/-! ## A272340.P17418277715288654436

`A090982(n)/A064989(A309861(n))`
-/

namespace A272340.P17418277715288654436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090982 n : ℚ) / (A064989 (A309861 n).toNat : ℚ)

end

end A272340.P17418277715288654436

/-! ## A272340.P13314802384300987619

`A090982(n)%A055157(A282866(n))`
-/

namespace A272340.P13314802384300987619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090982 n) (A055157 (A282866 n).toNat)

end

end A272340.P13314802384300987619

/-!
# A272342: a(n) = 27*8^n.

The programs for A272342, the canonical program `A272342.P5445524922385492177` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272342 has offset 0).

The definition of A272342 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `27*8^n` (program `A272342.P5445524922385492177`, by `A272342.P5445524922385492177.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A272342.P5445524922385492177

`27*8^n`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A272342

/-- `27*8^n` -/
def P5445524922385492177.Spec : Prop :=
  ∀ n, (P5445524922385492177.a n : ℤ) = A272342 n

theorem P5445524922385492177.correct : P5445524922385492177.Spec := by
  intro n
  simp only [A272342]

end A272342

/-!
# A272344: Positive integers n where the number of parts function on the set of 3-ary partitions of n is equidistributed mod 3.

The programs for A272344, there is no canonical definition to state claims against.
-/

/-! ## A272344.P12598476193520595834

`eq[0, (n+1)*a(floor(n/3))²%3]` with `a(0)=1`
-/

namespace A272344.P12598476193520595834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  (n + 1) * (f2 ⌊(n : ℚ) / 3⌋.toNat ^ 2 % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A272344.P12598476193520595834

/-! ## A272344.P3274028554044245089

`comp[a(n-2)+a(xor(n, n-2)/2)]` with `a(0)=0, a(1)=1`
-/

namespace A272344.P3274028554044245089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) + f1 (SequenceMachineLib.roundAway ((Int.xor (n : ℤ) ((n : ℤ) - 2) : ℚ) / 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A272344.P3274028554044245089

/-! ## A272344.P4483194026887344364

`lt[1, 2*a(floor(n/3))+n-3*floor(n/3)-n²%3]` with `a(0)=0`
-/

namespace A272344.P4483194026887344364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  2 * f2 ⌊(n : ℚ) / 3⌋.toNat + ((n : ℤ) - 3 * ⌊(n : ℚ) / 3⌋) - ((n ^ 2 % 3 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A272344.P4483194026887344364

/-! ## A272344.P2664391736187019228

`lt[1, A289814(n)]`
-/

namespace A272344.P2664391736187019228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A272344.P2664391736187019228

/-! ## A272344.P10860963952743706132

`lt[1, A332498(n)]`
-/

namespace A272344.P10860963952743706132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332498 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A272344.P10860963952743706132

/-! ## A272344.P10879277859329360089

`lt[2, A289816(n)]`
-/

namespace A272344.P10879277859329360089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289816 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A272344.P10879277859329360089

/-! ## A272344.P18441877283084165484

`lt[2, A300222(n)]`
-/

namespace A272344.P18441877283084165484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300222 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A272344.P18441877283084165484

/-! ## A272344.P14292622313155525590

`eq[9, dr(A007854(n))]`
-/

namespace A272344.P14292622313155525590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007854 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A272344.P14292622313155525590

/-! ## A272344.P7771145994833180376

`A111018(n+1)+1`
-/

namespace A272344.P7771145994833180376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111018 (n + 1) + 1

end

end A272344.P7771145994833180376

/-! ## A272344.P2077051886295194274

`A089119(n+1)+2`
-/

namespace A272344.P2077051886295194274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089119 (n + 1) + 2

end

end A272344.P2077051886295194274

/-!
# A272346: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 483", based on the 5-celled von Neumann neighborhood.

The programs for A272346, there is no canonical definition to state claims against.
-/

/-! ## A272346.P17499213132850183282

`Δ[A248860(n)]`
-/

namespace A272346.P17499213132850183282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272346.P17499213132850183282

/-! ## A272346.P15674396963505517722

`A248860(n+1)-A248860(n)`
-/

namespace A272346.P15674396963505517722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248860 (n + 1) - A248860 n

end

end A272346.P15674396963505517722

/-!
# A272348: Least number divisible by n whose number of divisors is also divisible by n.

The programs for A272348, there is no canonical definition to state claims against.
-/

/-! ## A272348.P11144295078000561846

`(n+1)*A275463(n+1)`
-/

namespace A272348.P11144295078000561846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A275463 (n + 1)

end

end A272348.P11144295078000561846

/-! ## A272348.P6556312336319438727

`gcd(A038040(A003680(n+1)), A324553(n+1))`
-/

namespace A272348.P6556312336319438727
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038040 (A003680 (n + 1)).toNat) (A324553 (n + 1))

end

end A272348.P6556312336319438727

/-! ## A272348.P4944428489041131057

`gcd(A008574(A084858(n)), A324553(n+1))`
-/

namespace A272348.P4944428489041131057
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008574 (A084858 n).toNat) (A324553 (n + 1))

end

end A272348.P4944428489041131057

/-! ## A272348.P4480702267807120880

`A324553(n+1)%A005843(A324553(2*(n+1)))`
-/

namespace A272348.P4480702267807120880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324553 (n + 1)) (A005843 (A324553 (2 * (n + 1))).toNat)

end

end A272348.P4480702267807120880

/-!
# A272349: Least multiple of n whose sum of divisors is divisible by n.

The programs for A272349, there is no canonical definition to state claims against.
-/

/-! ## A272349.P15795053202950290022

`(n+1)*A227470(n+1)`
-/

namespace A272349.P15795053202950290022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A227470 (n + 1)

end

end A272349.P15795053202950290022

/-! ## A272349.P17485161340990871773

`lcm(n+1, A227470(A077739(n+1)))`
-/

namespace A272349.P17485161340990871773
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A227470 (A077739 (n + 1)).toNat)

end

end A272349.P17485161340990871773

/-! ## A272349.P9386339693748721266

`lcm(A077168(n), A227470(A032565(n+1)))`
-/

namespace A272349.P9386339693748721266
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A077168 n) (A227470 (A032565 (n + 1)).toNat)

end

end A272349.P9386339693748721266

/-! ## A272349.P11507852132386990565

`lcm(A032565(A032565(n+1)), A227470(n+1))`
-/

namespace A272349.P11507852132386990565
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A032565 (A032565 (n + 1)).toNat) (A227470 (n + 1))

end

end A272349.P11507852132386990565

/-! ## A272349.P14804266265685524923

`lcm(A078213(n+1), A227470(A078213(n+1)))`
-/

namespace A272349.P14804266265685524923
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A078213 (n + 1)) (A227470 (A078213 (n + 1)).toNat)

end

end A272349.P14804266265685524923

/-!
# A272350: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 485", based on the 5-celled von Neumann neighborhood.

The programs for A272350, there is no canonical definition to state claims against.
-/

/-! ## A272350.P6243677448638154507

`∑[A272505(abs(1-n))]+4`
-/

namespace A272350.P6243677448638154507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272505 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4

end

end A272350.P6243677448638154507

/-! ## A272350.P9464721467654428693

`A272505(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A272350.P9464721467654428693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272505 (n - 1) + a (n - 1)

end

end A272350.P9464721467654428693

/-! ## A272350.P6195554465176667346

`∑[A272505((n-1)%a(n-1))]` with `a(0)=1`
-/

namespace A272350.P6195554465176667346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A272505 (Int.tmod ((n : ℤ) - 1) (f1 (n - 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272350.P6195554465176667346

/-! ## A272350.P12352481660804156059

`Δ[A272504(n)]-A272505(n)`
-/

namespace A272350.P12352481660804156059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272505 n

end

end A272350.P12352481660804156059

/-! ## A272350.P15621532388437306624

`A272504(n+1)-(A272505(n)+A272504(n))`
-/

namespace A272350.P15621532388437306624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272504 (n + 1) - (A272505 n + A272504 n)

end

end A272350.P15621532388437306624

/-!
# A272351: Number of ordered ways to write n as w^2 + x^2 + y^2 + z^2 with x^4 + 8*y*z*(y^2+z^2) a fourth power, where w,x,y,z are nonnegative integers with w >= x and y > z.

The programs for A272351, there is no canonical definition to state claims against.
-/

/-! ## A272351.P942761273295469103

`A268507(n+1)+A122841(A299276(n))`
-/

namespace A272351.P942761273295469103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268507 (n + 1) + A122841 (A299276 n).toNat

end

end A272351.P942761273295469103

/-! ## A272351.P7093976583175022491

`A268507(n+1)+A086015(A108441(n))`
-/

namespace A272351.P7093976583175022491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268507 (n + 1) + A086015 (A108441 n).toNat

end

end A272351.P7093976583175022491

/-! ## A272351.P12262817428672417377

`A268507(n+1)+A107846(A113092(n))`
-/

namespace A272351.P12262817428672417377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268507 (n + 1) + A107846 (A113092 n).toNat

end

end A272351.P12262817428672417377

/-! ## A272351.P6000653758595212732

`or(A268507(n+1), A327932(A316245(n)))`
-/

namespace A272351.P6000653758595212732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A268507 (n + 1)) (A327932 (A316245 n).toNat)

end

end A272351.P6000653758595212732

/-! ## A272351.P14791845517746828689

`or(A121262(A115080(2*(n+1))), A268507(n+1))`
-/

namespace A272351.P14791845517746828689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A121262 (A115080 (2 * (n + 1))).toNat) (A268507 (n + 1))

end

end A272351.P14791845517746828689

/-!
# A272352: a(n) is the number of ways of putting n labeled balls into 2 indistinguishable boxes such that each box contains at least 3 balls.

The programs for A272352, the canonical program `A272352.P14340273649411795568` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272352 has offset 6).

The definition of A272352 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A272352.P5267318843797832349

`(2^(n+6)-2-2*(n+6)-2*C(n+6, 2))/2`
-/

namespace A272352.P5267318843797832349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ (n + 6) : ℤ) - 2 - (2 * (n + 6) : ℤ) - (2 * Nat.choose (n + 6) 2 : ℤ) : ℚ) / 2

end

end A272352.P5267318843797832349

namespace A272352

/-- `(2^(n+6)-2-2*(n+6)-2*C(n+6, 2))/2` -/
def P5267318843797832349.Spec : Prop :=
  ∀ n, P5267318843797832349.a n = (A272352 (n + 6) : ℚ)

end A272352

/-! ## A272352.P14340273649411795568

`5*a(n-1)-9*a(n-2)+7*a(n-3)-2*a(n-4)` with `a(0)=10, a(1)=35, a(2)=91, a(3)=210`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A272352

/-- `5*a(n-1)-9*a(n-2)+7*a(n-3)-2*a(n-4)` -/
def P14340273649411795568.Spec : Prop :=
  ∀ n, P14340273649411795568.a n = A272352 (n + 6)

theorem P14340273649411795568.correct : P14340273649411795568.Spec := by
  intro n
  simp only [A272352, Nat.add_sub_cancel]

end A272352

/-! ## A272352.P6794423378350588237

`∑[∑[2^(n+3)-1]+3]`
-/

namespace A272352.P6794423378350588237
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 3) : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272352.P6794423378350588237

namespace A272352

/-- `∑[∑[2^(n+3)-1]+3]` -/
def P6794423378350588237.Spec : Prop :=
  ∀ n, P6794423378350588237.a n = A272352 (n + 6)

end A272352

/-! ## A272352.P12408830148182930077

`A277411(n+3)-3`
-/

namespace A272352.P12408830148182930077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277411 (n + 3) - 3

end

end A272352.P12408830148182930077

namespace A272352

/-- `A277411(n+3)-3` -/
def P12408830148182930077.Spec : Prop :=
  ∀ n, P12408830148182930077.a n = A272352 (n + 6)

end A272352

/-! ## A272352.P9812348075836185026

`∑[A131130(n+2)]-∑[n]`
-/

namespace A272352.P9812348075836185026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131130 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A272352.P9812348075836185026

namespace A272352

/-- `∑[A131130(n+2)]-∑[n]` -/
def P9812348075836185026.Spec : Prop :=
  ∀ n, P9812348075836185026.a n = A272352 (n + 6)

end A272352

/-! ## A272352.P8280657949548928501

`∑[A125128(n+3)]-(n+1)`
-/

namespace A272352.P8280657949548928501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125128 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A272352.P8280657949548928501

namespace A272352

/-- `∑[A125128(n+3)]-(n+1)` -/
def P8280657949548928501.Spec : Prop :=
  ∀ n, P8280657949548928501.a n = A272352 (n + 6)

end A272352

/-! ## A272352.P5726893783918143656

`∑[A000295(n+4)]-(n+1)`
-/

namespace A272352.P5726893783918143656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A272352.P5726893783918143656

namespace A272352

/-- `∑[A000295(n+4)]-(n+1)` -/
def P5726893783918143656.Spec : Prop :=
  ∀ n, P5726893783918143656.a n = A272352 (n + 6)

end A272352

/-! ## A272352.P2503393640271564016

`∑[A249453(n+3)]+(n+1)²`
-/

namespace A272352.P2503393640271564016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249453 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 2 : ℤ)

end

end A272352.P2503393640271564016

namespace A272352

/-- `∑[A249453(n+3)]+(n+1)²` -/
def P2503393640271564016.Spec : Prop :=
  ∀ n, P2503393640271564016.a n = A272352 (n + 6)

end A272352

/-! ## A272352.P103586321560840102

`A179571(n+1)-A034111(n+1)`
-/

namespace A272352.P103586321560840102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179571 (n + 1) - A034111 (n + 1)

end

end A272352.P103586321560840102

namespace A272352

/-- `A179571(n+1)-A034111(n+1)` -/
def P103586321560840102.Spec : Prop :=
  ∀ n, P103586321560840102.a n = A272352 (n + 6)

end A272352

/-! ## A272352.P14535819810387330513

`A258547(n+1)-A167614(n+1)`
-/

namespace A272352.P14535819810387330513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258547 (n + 1) - A167614 (n + 1)

end

end A272352.P14535819810387330513

namespace A272352

/-- `A258547(n+1)-A167614(n+1)` -/
def P14535819810387330513.Spec : Prop :=
  ∀ n, P14535819810387330513.a n = A272352 (n + 6)

end A272352

/-!
# A272353: Numbers n such that the number of divisors of n+1 divides n and the number of divisors of n divides n+1.

The programs for A272353, there is no canonical definition to state claims against.
-/

/-! ## A272353.P10460326299149604360

`A103127(A333022(n+1)^A006949(n+1))`
-/

namespace A272353.P10460326299149604360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103127 (SequenceMachineLib.roundAway ((A333022 (n + 1) : ℚ) ^ (A006949 (n + 1) : ℤ))).toNat

end

end A272353.P10460326299149604360

/-!
# A272355: Numbers of the form Fibonacci(12n)/(144n).

The programs for A272355, there is no canonical definition to state claims against.
-/

/-! ## A272355.P1879272353075757893

`A253368(A032549(n+1))/(n+1)`
-/

namespace A272355.P1879272353075757893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253368 (A032549 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A272355.P1879272353075757893

/-! ## A272355.P10692794764923823274

`A253368(n+1)/A225546(A225546(n+1))`
-/

namespace A272355.P10692794764923823274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253368 (n + 1) : ℚ) / (A225546 (A225546 (n + 1)).toNat : ℚ)

end

end A272355.P10692794764923823274

/-!
# A272356: (Sum_{i=1..n} prime(i)) mod 4.

The programs for A272356, the canonical program `A272356.P11442915012957242635` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272356 has offset 0).

The definition of A272356 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A272356.P12428427733733645423

`A007504(n)%4`
-/

namespace A272356.P12428427733733645423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007504 n) 4

end

end A272356.P12428427733733645423

namespace A272356

/-- `A007504(n)%4` -/
def P12428427733733645423.Spec : Prop :=
  ∀ n, P12428427733733645423.a n = A272356 n

end A272356

/-! ## A272356.P11442915012957242635

`∑[A182986(n+1)]%4`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A272356

/-- `∑[A182986(n+1)]%4` -/
def P11442915012957242635.Spec : Prop :=
  ∀ n, P11442915012957242635.a n = A272356 n

theorem P11442915012957242635.correct : P11442915012957242635.Spec := by
  intro n
  simp only [A272356]

end A272356

/-! ## A272356.P17119232876197357822

`and(3, A014284(n+1)-1)`
-/

namespace A272356.P17119232876197357822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A014284 (n + 1) - 1)

end

end A272356.P17119232876197357822

namespace A272356

/-- `and(3, A014284(n+1)-1)` -/
def P17119232876197357822.Spec : Prop :=
  ∀ n, P17119232876197357822.a n = A272356 n

end A272356

/-! ## A272356.P9494894412462986699

`and(3, A036439(n+1)-2)`
-/

namespace A272356.P9494894412462986699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A036439 (n + 1) - 2)

end

end A272356.P9494894412462986699

namespace A272356

/-- `and(3, A036439(n+1)-2)` -/
def P9494894412462986699.Spec : Prop :=
  ∀ n, P9494894412462986699.a n = A272356 n

end A272356

/-! ## A272356.P9053245128057457671

`(∑[A008578(n+1)]-1)%4`
-/

namespace A272356.P9053245128057457671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j - 1) 4

end

end A272356.P9053245128057457671

namespace A272356

/-- `(∑[A008578(n+1)]-1)%4` -/
def P9053245128057457671.Spec : Prop :=
  ∀ n, P9053245128057457671.a n = A272356 n

end A272356

/-! ## A272356.P1541030444072943737

`and(3, ∑[A028815(n)-1]-1)`
-/

namespace A272356.P1541030444072943737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A272356.P1541030444072943737

namespace A272356

/-- `and(3, ∑[A028815(n)-1]-1)` -/
def P1541030444072943737.Spec : Prop :=
  ∀ n, P1541030444072943737.a n = A272356 n

end A272356

/-! ## A272356.P9993451735526643208

`(A000040(n)+a(n-1))%4` with `a(0)=0`
-/

namespace A272356.P9993451735526643208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (A000040 n + a (n - 1)) 4

end

end A272356.P9993451735526643208

namespace A272356

/-- `(A000040(n)+a(n-1))%4` -/
def P9993451735526643208.Spec : Prop :=
  ∀ n, P9993451735526643208.a n = A272356 n

end A272356

/-! ## A272356.P17924410434113364781

`and(A007504(n), A122553(n))`
-/

namespace A272356.P17924410434113364781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007504 n) (A122553 n)

end

end A272356.P17924410434113364781

namespace A272356

/-- `and(A007504(n), A122553(n))` -/
def P17924410434113364781.Spec : Prop :=
  ∀ n, P17924410434113364781.a n = A272356 n

end A272356

/-! ## A272356.P11540279675158064911

`and(A007504(n), A158799(n))`
-/

namespace A272356.P11540279675158064911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007504 n) (A158799 n)

end

end A272356.P11540279675158064911

namespace A272356

/-- `and(A007504(n), A158799(n))` -/
def P11540279675158064911.Spec : Prop :=
  ∀ n, P11540279675158064911.a n = A272356 n

end A272356

/-! ## A272356.P5102935309757722698

`and(A007504(n), A176059(n))`
-/

namespace A272356.P5102935309757722698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007504 n) (A176059 n)

end

end A272356.P5102935309757722698

namespace A272356

/-- `and(A007504(n), A176059(n))` -/
def P5102935309757722698.Spec : Prop :=
  ∀ n, P5102935309757722698.a n = A272356 n

end A272356

/-! ## A272356.P8484580288611929195

`and(A007504(n), A157532(n+1))`
-/

namespace A272356.P8484580288611929195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007504 n) (A157532 (n + 1))

end

end A272356.P8484580288611929195

namespace A272356

/-- `and(A007504(n), A157532(n+1))` -/
def P8484580288611929195.Spec : Prop :=
  ∀ n, P8484580288611929195.a n = A272356 n

end A272356

/-! ## A272356.P4374868316697691769

`and(n-A008347(n), A176059(n))`
-/

namespace A272356.P4374868316697691769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) - A008347 n) (A176059 n)

end

end A272356.P4374868316697691769

namespace A272356

/-- `and(n-A008347(n), A176059(n))` -/
def P4374868316697691769.Spec : Prop :=
  ∀ n, P4374868316697691769.a n = A272356 n

end A272356

/-! ## A272356.P2922723661200197510

`and(n-A126084(n), A176059(n))`
-/

namespace A272356.P2922723661200197510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) - A126084 n) (A176059 n)

end

end A272356.P2922723661200197510

namespace A272356

/-- `and(n-A126084(n), A176059(n))` -/
def P2922723661200197510.Spec : Prop :=
  ∀ n, P2922723661200197510.a n = A272356 n

end A272356

/-! ## A272356.P12599815824369449482

`(∑[A000040(n+1)]-A000040(n+1))%4`
-/

namespace A272356.P12599815824369449482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j - A000040 (n + 1)) 4

end

end A272356.P12599815824369449482

namespace A272356

/-- `(∑[A000040(n+1)]-A000040(n+1))%4` -/
def P12599815824369449482.Spec : Prop :=
  ∀ n, P12599815824369449482.a n = A272356 n

end A272356

/-! ## A272356.P16067780187366425934

`∑[A151800(a(n-1))]%4` with `a(0)=0`
-/

namespace A272356.P16067780187366425934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A151800 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 4

end

end A272356.P16067780187366425934

namespace A272356

/-- `∑[A151800(a(n-1))]%4` -/
def P16067780187366425934.Spec : Prop :=
  ∀ n, P16067780187366425934.a n = A272356 n

end A272356

/-! ## A272356.P1884876042705749543

`(∑[record[A006530(n+1)]]-1)%4`
-/

namespace A272356.P1884876042705749543
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j - 1) 4

end

end A272356.P1884876042705749543

namespace A272356

/-- `(∑[record[A006530(n+1)]]-1)%4` -/
def P1884876042705749543.Spec : Prop :=
  ∀ n, P1884876042705749543.a n = A272356 n

end A272356

/-! ## A272356.P12023565273240526368

`(∑[record[A020639(n+1)]]-1)%4`
-/

namespace A272356.P12023565273240526368
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j - 1) 4

end

end A272356.P12023565273240526368

namespace A272356

/-- `(∑[record[A020639(n+1)]]-1)%4` -/
def P12023565273240526368.Spec : Prop :=
  ∀ n, P12023565273240526368.a n = A272356 n

end A272356

/-! ## A272356.P13292113511629172069

`∑[record[A047814(n)]]%4`
-/

namespace A272356.P13292113511629172069
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047814 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 4

end

end A272356.P13292113511629172069

namespace A272356

/-- `∑[record[A047814(n)]]%4` -/
def P13292113511629172069.Spec : Prop :=
  ∀ n, P13292113511629172069.a n = A272356 n

end A272356

/-! ## A272356.P7824350228684302889

`(∑[record[A014963(n+1)]]-1)%4`
-/

namespace A272356.P7824350228684302889
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j - 1) 4

end

end A272356.P7824350228684302889

namespace A272356

/-- `(∑[record[A014963(n+1)]]-1)%4` -/
def P7824350228684302889.Spec : Prop :=
  ∀ n, P7824350228684302889.a n = A272356 n

end A272356

/-! ## A272356.P13475774739284680120

`and(A007504(n), A088578(n))`
-/

namespace A272356.P13475774739284680120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007504 n) (A088578 n)

end

end A272356.P13475774739284680120

namespace A272356

/-- `and(A007504(n), A088578(n))` -/
def P13475774739284680120.Spec : Prop :=
  ∀ n, P13475774739284680120.a n = A272356 n

end A272356

/-!
# A272357: a(n) = n*(105*n^3 - 210*n^2 + 147*n - 34).

The programs for A272357, the canonical program `A272357.P454248682053474984` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272357 has offset 0).

The definition of A272357 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(105*n^3-210*n²+147*n-34)` (program `A272357.P454248682053474984`, by `A272357.P454248682053474984.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A272357.P454248682053474984

`n*(105*n^3-210*n²+147*n-34)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A272357

/-- `n*(105*n^3-210*n²+147*n-34)` -/
def P454248682053474984.Spec : Prop :=
  ∀ n, P454248682053474984.a n = A272357 n

theorem P454248682053474984.correct : P454248682053474984.Spec := by
  intro n
  simp only [A272357]

end A272357

/-!
# A272360: Numbers m such that the sum of the digits of the numbers from 1 to m divides the sum of the numbers from 1 to m.

The programs for A272360, there is no canonical definition to state claims against.
-/

/-! ## A272360.P2099485022983985874

`A124823(A178181(n)^floor(n/9))+n`
-/

namespace A272360.P2099485022983985874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124823 (SequenceMachineLib.roundAway ((A178181 n : ℚ) ^ (⌊(n : ℚ) / 9⌋ : ℤ))).toNat + (n : ℤ)

end

end A272360.P2099485022983985874

/-! ## A272360.P12888364840006306883

`A320355(A309485(n))+A032762(n)`
-/

namespace A272360.P12888364840006306883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320355 (A309485 n).toNat + A032762 n

end

end A272360.P12888364840006306883

/-! ## A272360.P4497493724924992819

`lcm(A032560(A032579(n+1)), A102489(n+1))`
-/

namespace A272360.P4497493724924992819
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A032560 (A032579 (n + 1)).toNat) (A102489 (n + 1))

end

end A272360.P4497493724924992819

/-! ## A272360.P2667069016218630583

`A146672(C(n, 8)+1)+n`
-/

namespace A272360.P2667069016218630583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146672 (Nat.choose n 8 + 1) + (n : ℤ)

end

end A272360.P2667069016218630583

/-! ## A272360.P3077490621289466660

`(n+1)*A360963((n+1)²²)`
-/

namespace A272360.P3077490621289466660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A360963 (((n + 1) ^ 2) ^ 2)

end

end A272360.P3077490621289466660

/-!
# A272361: Numbers n such that (2^n + 1) / gcd(n, 2^n + 1) is not squarefree.

The programs for A272361, there is no canonical definition to state claims against.
-/

/-! ## A272361.P11221937082954398249

`Δ[n²]*182`
-/

namespace A272361.P11221937082954398249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * 182

end

end A272361.P11221937082954398249

/-!
# A272362: Expansion of (1 + x - x^2 - x^3 - x^4)/((1 - x)*(1 - x - 2*x^2 - 2*x^3 - x^4)).

The programs for A272362, the canonical program `A272362.P1031166629994467178` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272362 has offset 0).

The definition of A272362 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x-x^2-x^3-x^4)/(1-2x-x^2+x^4+x^5))` (program `A272362.P1031166629994467178`, by `A272362.P1031166629994467178.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A272362.P1031166629994467178

`ogf((1+x-x^2-x^3-x^4)/(1-2x-x^2+x^4+x^5))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A272362

/-- `ogf((1+x-x^2-x^3-x^4)/(1-2x-x^2+x^4+x^5))` -/
def P1031166629994467178.Spec : Prop :=
  ∀ n, P1031166629994467178.a n = A272362 n

theorem P1031166629994467178.correct : P1031166629994467178.Spec := by
  intro n
  simp only [A272362]

end A272362

/-! ## A272362.P9736909470679226229

`2*a(n-1)+a(n-2)-a(n-4)-a(n-5)` with `a(0)=1, a(1)=3, a(2)=6, a(3)=14, a(4)=32`
-/

namespace A272362.P9736909470679226229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 6, 14, 32] fun n a =>
  2 * a (n - 1) + a (n - 2) - a (n - 4) - a (n - 5)

end

end A272362.P9736909470679226229

namespace A272362

/-- `2*a(n-1)+a(n-2)-a(n-4)-a(n-5)` -/
def P9736909470679226229.Spec : Prop :=
  ∀ n, P9736909470679226229.a n = A272362 n

end A272362

/-! ## A272362.P15264826984740192924

`ceil(ϕ*(a(n-1)+a(n-2)))-1` with `a(0)=1, a(1)=3`
-/

namespace A272362.P15264826984740192924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  ⌈Real.goldenRatio * (a (n - 1) + a (n - 2) : ℝ)⌉ - 1

end

end A272362.P15264826984740192924

namespace A272362

/-- `ceil(ϕ*(a(n-1)+a(n-2)))-1` -/
def P15264826984740192924.Spec : Prop :=
  ∀ n, P15264826984740192924.a n = A272362 n

end A272362

/-! ## A272362.P18160555159700605666

`floor((a(n-1)+a(n-2))/(ϕ-1))` with `a(0)=1, a(1)=3`
-/

namespace A272362.P18160555159700605666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  ⌊(a (n - 1) + a (n - 2) : ℝ) / (Real.goldenRatio - 1)⌋

end

end A272362.P18160555159700605666

namespace A272362

/-- `floor((a(n-1)+a(n-2))/(ϕ-1))` -/
def P18160555159700605666.Spec : Prop :=
  ∀ n, P18160555159700605666.a n = A272362 n

end A272362

/-! ## A272362.P10758363958850587358

`∑[round(ϕ*(a(n-1)+a(n-2)))]` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A272362.P10758363958850587358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) + f1 (n - 2) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272362.P10758363958850587358

namespace A272362

/-- `∑[round(ϕ*(a(n-1)+a(n-2)))]` -/
def P10758363958850587358.Spec : Prop :=
  ∀ n, P10758363958850587358.a n = A272362 n

end A272362

/-! ## A272362.P10875377563023303093

`floor(ϕ*a(n-1)+ϕ*a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A272362.P10875377563023303093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  ⌊Real.goldenRatio * (a (n - 1) : ℝ) + Real.goldenRatio * (a (n - 2) : ℝ)⌋

end

end A272362.P10875377563023303093

namespace A272362

/-- `floor(ϕ*a(n-1)+ϕ*a(n-2))` -/
def P10875377563023303093.Spec : Prop :=
  ∀ n, P10875377563023303093.a n = A272362 n

end A272362

/-! ## A272362.P4077779548730502608

`∑[A272642(n)]`
-/

namespace A272362.P4077779548730502608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272642 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272362.P4077779548730502608

namespace A272362

/-- `∑[A272642(n)]` -/
def P4077779548730502608.Spec : Prop :=
  ∀ n, P4077779548730502608.a n = A272362 n

end A272362

/-! ## A272362.P10813664811795064270

`A005908(n+3)-a(n-1)` with `a(0)=1`
-/

namespace A272362.P10813664811795064270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005908 (n + 3) - a (n - 1)

end

end A272362.P10813664811795064270

namespace A272362

/-- `A005908(n+3)-a(n-1)` -/
def P10813664811795064270.Spec : Prop :=
  ∀ n, P10813664811795064270.a n = A272362 n

end A272362

/-!
# A272363: Number of ways to group the first 2*n natural numbers into n pairs (xi,yi) with yi>xi, and such that the 2*n numbers xi+yi and xi-yi are all different.

The programs for A272363, there is no canonical definition to state claims against.
-/

/-! ## A272363.P14555366534470592102

`A290672(n)%A355489(A006882(n))`
-/

namespace A272363.P14555366534470592102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290672 n) (A355489 (A006882 n).toNat)

end

end A272363.P14555366534470592102

/-! ## A272363.P1429458324721656044

`A065719(2*A211012(n))+Δ[A227185(2*n)]`
-/

namespace A272363.P1429458324721656044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227185 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065719 (2 * A211012 n).toNat + (f1 (n + 1) - f1 n)

end

end A272363.P1429458324721656044

/-!
# A272365: a(n) = 9a(n-1) - 9a(n-2) + a(n-3).

The programs for A272365, the canonical program `A272365.P1569392106032499282` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272365 has offset 1).

The definition of A272365 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*a(n-1)-9*a(n-2)+a(n-3)` (program `A272365.P1569392106032499282`, by `A272365.P1569392106032499282.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A272365.P1569392106032499282

`9*a(n-1)-9*a(n-2)+a(n-3)` with `a(0)=10, a(1)=34, a(2)=250`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A272365

/-- `9*a(n-1)-9*a(n-2)+a(n-3)` -/
def P1569392106032499282.Spec : Prop :=
  ∀ n, P1569392106032499282.a n = A272365 (n + 1)

theorem P1569392106032499282.correct : P1569392106032499282.Spec := by
  intro n
  simp only [A272365, Nat.add_sub_cancel]

end A272365

/-! ## A272365.P16537628532643208678

`2*(2*(4+sqrt(15))*(4-sqrt(15))^(n+1)-2*(sqrt(15)-4)*(4+sqrt(15))^(n+1)+1)`
-/

namespace A272365.P16537628532643208678
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * (2 * (4 + Real.sqrt (15 : ℝ)) * (4 - Real.sqrt (15 : ℝ)) ^ (n + 1) - 2 * (Real.sqrt (15 : ℝ) - 4) * (4 + Real.sqrt (15 : ℝ)) ^ (n + 1) + 1)

end

end A272365.P16537628532643208678

namespace A272365

/-- `2*(2*(4+sqrt(15))*(4-sqrt(15))^(n+1)-2*(sqrt(15)-4)*(4+sqrt(15))^(n+1)+1)` -/
def P16537628532643208678.Spec : Prop :=
  ∀ n, P16537628532643208678.a n = (A272365 (n + 1) : ℝ)

end A272365

/-! ## A272365.P1485908390209211251

`4*A086903(n)+2`
-/

namespace A272365.P1485908390209211251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A086903 n + 2

end

end A272365.P1485908390209211251

namespace A272365

/-- `4*A086903(n)+2` -/
def P1485908390209211251.Spec : Prop :=
  ∀ n, P1485908390209211251.a n = A272365 (n + 1)

end A272365

/-! ## A272365.P12502210825174317573

`8*A001091(n)+2`
-/

namespace A272365.P12502210825174317573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A001091 n + 2

end

end A272365.P12502210825174317573

namespace A272365

/-- `8*A001091(n)+2` -/
def P12502210825174317573.Spec : Prop :=
  ∀ n, P12502210825174317573.a n = A272365 (n + 1)

end A272365

/-! ## A272365.P11358249940419023493

`8*A080871(A005843(n))+2`
-/

namespace A272365.P11358249940419023493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A080871 (A005843 n).toNat + 2

end

end A272365.P11358249940419023493

namespace A272365

/-- `8*A080871(A005843(n))+2` -/
def P11358249940419023493.Spec : Prop :=
  ∀ n, P11358249940419023493.a n = A272365 (n + 1)

end A272365

/-! ## A272365.P14957558600040937919

`or(4*A086903(n), A029656(A000124(n)))`
-/

namespace A272365.P14957558600040937919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (4 * A086903 n) (A029656 (A000124 n).toNat)

end

end A272365.P14957558600040937919

namespace A272365

/-- `or(4*A086903(n), A029656(A000124(n)))` -/
def P14957558600040937919.Spec : Prop :=
  ∀ n, P14957558600040937919.a n = A272365 (n + 1)

end A272365

/-! ## A272365.P8800235638391463408

`or(4*A086903(n), A028326(A107286(4*n)))`
-/

namespace A272365.P8800235638391463408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (4 * A086903 n) (A028326 (A107286 (4 * n)).toNat)

end

end A272365.P8800235638391463408

namespace A272365

/-- `or(4*A086903(n), A028326(A107286(4*n)))` -/
def P8800235638391463408.Spec : Prop :=
  ∀ n, P8800235638391463408.a n = A272365 (n + 1)

end A272365

/-!
# A272367: Primes p separated from their adjacent primes on both sides by a prime number of successive composites, while the adjacent primes of p are separated by a prime number of integers.

The programs for A272367, there is no canonical definition to state claims against.
-/

/-! ## A272367.P6778707595777357001

`A092792(A050427(n+2))`
-/

namespace A272367.P6778707595777357001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092792 (A050427 (n + 2)).toNat

end

end A272367.P6778707595777357001

/-!
# A272368: Number of polycubes with n cells, allowing vertex connections and edge connections as well as face connections, identifying mirror images.

The programs for A272368, there is no canonical definition to state claims against.
-/

/-! ## A272368.P17392563187536612905

`A078458(n+1)+A022838(A299034(n))`
-/

namespace A272368.P17392563187536612905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078458 (n + 1) + A022838 (A299034 n).toNat

end

end A272368.P17392563187536612905

/-!
# A272373: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 601", based on the 5-celled von Neumann neighborhood.

The programs for A272373, there is no canonical definition to state claims against.
-/

/-! ## A272373.P4823219663024544996

`A272330(2^n-1)`
-/

namespace A272373.P4823219663024544996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272330 (2 ^ n - 1)

end

end A272373.P4823219663024544996

/-! ## A272373.P12954264663768644835

`record[A272330(Δ[A228693(n)])]`
-/

namespace A272373.P12954264663768644835
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228693 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272330 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272373.P12954264663768644835

/-! ## A272373.P5647990217275479963

`and(-3, A272330(A000225(n)))`
-/

namespace A272373.P5647990217275479963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A272330 (A000225 n).toNat)

end

end A272373.P5647990217275479963

/-! ## A272373.P6234528772400317480

`record[A272330(A324865(n+1))]`
-/

namespace A272373.P6234528772400317480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272330 (A324865 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272373.P6234528772400317480

/-! ## A272373.P10198323467960063244

`record[A272330(A130321(n)-1)]`
-/

namespace A272373.P10198323467960063244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272330 (A130321 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272373.P10198323467960063244

/-!
# A272374: Numbers n such that A187202(n) is <= 0.

The programs for A272374, there is no canonical definition to state claims against.
-/

/-! ## A272374.P10654081589859478083

`lt[A187202(n+1), 1]+1`
-/

namespace A272374.P10654081589859478083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187202 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A272374.P10654081589859478083

/-! ## A272374.P15990712887115707481

`lt[n, A273133(n+1)]+1`
-/

namespace A272374.P15990712887115707481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273133 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A272374.P15990712887115707481

/-! ## A272374.P4930196979787192562

`lt[A187202(A028310(n)), 1]`
-/

namespace A272374.P4930196979787192562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187202 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A272374.P4930196979787192562

/-! ## A272374.P10294882293739121192

`A020725(lt[A187202(n+1), 1])`
-/

namespace A272374.P10294882293739121192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187202 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A272374.P10294882293739121192

/-! ## A272374.P17069428086398442423

`A181569(lt[A187202(n+1), 1])`
-/

namespace A272374.P17069428086398442423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187202 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181569 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A272374.P17069428086398442423

/-! ## A272374.P9079818212365760703

`lt[A187202(A000007(n)+n), 1]`
-/

namespace A272374.P9079818212365760703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187202 (A000007 n + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A272374.P9079818212365760703

/-! ## A272374.P17972016276039902720

`A020725(lt[n, A273133(n+1)])`
-/

namespace A272374.P17972016276039902720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273133 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A272374.P17972016276039902720

/-! ## A272374.P8713638536209384862

`A181569(lt[n, A273133(n+1)])`
-/

namespace A272374.P8713638536209384862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273133 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181569 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A272374.P8713638536209384862

/-! ## A272374.P13873156157640198366

`eq[char[A193671(n+1)], A000007(n)]`
-/

namespace A272374.P13873156157640198366
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193671 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A272374.P13873156157640198366

/-! ## A272374.P13084834853162646806

`eq[char[A193671(n+1)], A000038(n)]`
-/

namespace A272374.P13084834853162646806
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193671 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A272374.P13084834853162646806

/-! ## A272374.P3684398920142788121

`eq[char[A193671(n+1)], A193690(3*n)]`
-/

namespace A272374.P3684398920142788121
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193671 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193690 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A272374.P3684398920142788121

/-!
# A272377: Number of positive divisors of A000032(n).

The programs for A272377, the canonical program `A272377.P3912786864071120039` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272377 has offset 0).

The definition of A272377 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A272377.P3912786864071120039

`A000005(A000032(n))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A272377

/-- `A000005(A000032(n))` -/
def P3912786864071120039.Spec : Prop :=
  ∀ n, P3912786864071120039.a n = A272377 n

theorem P3912786864071120039.correct : P3912786864071120039.Spec := by
  intro n
  simp only [A272377]

end A272377

/-! ## A272377.P11832555369992303824

`A280728(n)+A193495(n)`
-/

namespace A272377.P11832555369992303824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280728 n + A193495 n

end

end A272377.P11832555369992303824

namespace A272377

/-- `A280728(n)+A193495(n)` -/
def P11832555369992303824.Spec : Prop :=
  ∀ n, P11832555369992303824.a n = A272377 n

end A272377

/-! ## A272377.P1192368416021458748

`Δ[eq[1, A238899(n)]]`
-/

namespace A272377.P1192368416021458748
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238899 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A272377.P1192368416021458748

namespace A272377

/-- `Δ[eq[1, A238899(n)]]` -/
def P1192368416021458748.Spec : Prop :=
  ∀ n, P1192368416021458748.a n = A272377 n

end A272377

/-! ## A272377.P12126447460175418334

`Δ[record[A000027(n+1)-A238899(n)]]`
-/

namespace A272377.P12126447460175418334
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) - A238899 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272377.P12126447460175418334

namespace A272377

/-- `Δ[record[A000027(n+1)-A238899(n)]]` -/
def P12126447460175418334.Spec : Prop :=
  ∀ n, P12126447460175418334.a n = A272377 n

end A272377

/-! ## A272377.P13325045207138859496

`Δ[record[(n+1)/A238899(n)]^A178334(n)]`
-/

namespace A272377.P13325045207138859496
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A238899 n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) ^ (A178334 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272377.P13325045207138859496

namespace A272377

/-- `Δ[record[(n+1)/A238899(n)]^A178334(n)]` -/
def P13325045207138859496.Spec : Prop :=
  ∀ n, P13325045207138859496.a n = (A272377 n : ℚ)

end A272377

/-! ## A272377.P9676464350248625791

`Δ[record[(n+1)/A238899(n)]%A001539(n)]`
-/

namespace A272377.P9676464350248625791
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A238899 n : ℚ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))) (A001539 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272377.P9676464350248625791

namespace A272377

/-- `Δ[record[(n+1)/A238899(n)]%A001539(n)]` -/
def P9676464350248625791.Spec : Prop :=
  ∀ n, P9676464350248625791.a n = A272377 n

end A272377

/-! ## A272377.P14163661845244310421

`Δ[record[2-A238899(n)+n]+n*A000007(2*n)]`
-/

namespace A272377.P14163661845244310421
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A238899 n + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + (n : ℤ) * A000007 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272377.P14163661845244310421

namespace A272377

/-- `Δ[record[2-A238899(n)+n]+n*A000007(2*n)]` -/
def P14163661845244310421.Spec : Prop :=
  ∀ n, P14163661845244310421.a n = A272377 n

end A272377

/-!
# A272378: a(n) = n*(6*n^2 - 8*n + 3).

The programs for A272378, the canonical program `A272378.P16915162997693216737` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272378 has offset 0).

The definition of A272378 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(6*n²-8*n+3)` (program `A272378.P16915162997693216737`, by `A272378.P16915162997693216737.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A272378.P16915162997693216737

`n*(6*n²-8*n+3)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A272378

/-- `n*(6*n²-8*n+3)` -/
def P16915162997693216737.Spec : Prop :=
  ∀ n, P16915162997693216737.a n = A272378 n

theorem P16915162997693216737.correct : P16915162997693216737.Spec := by
  intro n
  simp only [A272378]

end A272378

/-! ## A272378.P12328620450832049961

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=22, a(3)=99`
-/

namespace A272378.P12328620450832049961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 22, 99] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A272378.P12328620450832049961

namespace A272378

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P12328620450832049961.Spec : Prop :=
  ∀ n, P12328620450832049961.a n = A272378 n

theorem P12328620450832049961.correct : P12328620450832049961.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A272378, Nat.add_sub_cancel, A272378.P12328620450832049961.a, A272378.P16915162997693216737.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A272378, Nat.add_sub_cancel, A272378.P12328620450832049961.a, A272378.P16915162997693216737.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [h1, h2, h3, h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A272378

/-! ## A272378.P99470375697284164

`A244726(n)-A139273(n)`
-/

namespace A272378.P99470375697284164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244726 n - A139273 n

end

end A272378.P99470375697284164

namespace A272378

/-- `A244726(n)-A139273(n)` -/
def P99470375697284164.Spec : Prop :=
  ∀ n, P99470375697284164.a n = A272378 n

end A272378

/-! ## A272378.P13361576036872168564

`2*(A005945(n)-A000326(n))+n`
-/

namespace A272378.P13361576036872168564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A005945 n - A000326 n) + (n : ℤ)

end

end A272378.P13361576036872168564

namespace A272378

/-- `2*(A005945(n)-A000326(n))+n` -/
def P13361576036872168564.Spec : Prop :=
  ∀ n, P13361576036872168564.a n = A272378 n

end A272378

/-! ## A272378.P15690203045131440924

`A005945(n)+A005945(n)-A000567(n)`
-/

namespace A272378.P15690203045131440924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005945 n + (A005945 n - A000567 n)

end

end A272378.P15690203045131440924

namespace A272378

/-- `A005945(n)+A005945(n)-A000567(n)` -/
def P15690203045131440924.Spec : Prop :=
  ∀ n, P15690203045131440924.a n = A272378 n

end A272378

/-! ## A272378.P13908241935544780399

`record[ceil(2/3*n²)*Δ[C(n², 3)%(n+1)]]`
-/

namespace A272378.P13908241935544780399
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ 2) 3 % (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) / 3 * (n ^ 2 : ℚ)⌉ * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272378.P13908241935544780399

namespace A272378

/-- `record[ceil(2/3*n²)*Δ[C(n², 3)%(n+1)]]` -/
def P13908241935544780399.Spec : Prop :=
  ∀ n, P13908241935544780399.a n = A272378 n

end A272378

/-!
# A272379: a(n) = n*(24*n^3 - 60*n^2 + 54*n - 17).

The programs for A272379, the canonical program `A272379.P14573008535749545813` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272379 has offset 0).

The definition of A272379 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(24*n^3-60*n²+54*n-17)` (program `A272379.P14573008535749545813`, by `A272379.P14573008535749545813.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A272379.P14573008535749545813

`n*(24*n^3-60*n²+54*n-17)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A272379

/-- `n*(24*n^3-60*n²+54*n-17)` -/
def P14573008535749545813.Spec : Prop :=
  ∀ n, P14573008535749545813.a n = A272379 n

theorem P14573008535749545813.correct : P14573008535749545813.Spec := by
  intro n
  simp only [A272379]

end A272379

/-! ## A272379.P228844328355755664

`A005449(A051874(n))-A001106(A051866(n))`
-/

namespace A272379.P228844328355755664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 (A051874 n).toNat - A001106 (A051866 n).toNat

end

end A272379.P228844328355755664

namespace A272379

/-- `A005449(A051874(n))-A001106(A051866(n))` -/
def P228844328355755664.Spec : Prop :=
  ∀ n, P228844328355755664.a n = A272379 n

end A272379

/-!
# A272380: a(n) = n*(120*n^4 - 480*n^3 + 762*n^2 - 556*n + 155).

The programs for A272380, the canonical program `A272380.P2381069925471737484` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272380 has offset 0).

The definition of A272380 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(120*n^4-480*n^3+762*n²-556*n+155)` (program `A272380.P2381069925471737484`, by `A272380.P2381069925471737484.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A272380.P2381069925471737484

`n*(120*n^4-480*n^3+762*n²-556*n+155)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A272380

/-- `n*(120*n^4-480*n^3+762*n²-556*n+155)` -/
def P2381069925471737484.Spec : Prop :=
  ∀ n, P2381069925471737484.a n = A272380 n

theorem P2381069925471737484.correct : P2381069925471737484.Spec := by
  intro n
  simp only [A272380]

end A272380

/-!
# A272382: Primes p == 1 (mod 3) for which A261029(14*p) = 3.

The programs for A272382, there is no canonical definition to state claims against.
-/

/-! ## A272382.P7727746814150619715

`A040079(A066310(n+1))`
-/

namespace A272382.P7727746814150619715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040079 (A066310 (n + 1)).toNat

end

end A272382.P7727746814150619715

/-! ## A272382.P3274680599529223192

`A040079(A174876(n+1))`
-/

namespace A272382.P3274680599529223192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040079 (A174876 (n + 1)).toNat

end

end A272382.P3274680599529223192

/-! ## A272382.P11812521832707181162

`A040079(A342226(n+1))`
-/

namespace A272382.P11812521832707181162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040079 (A342226 (n + 1)).toNat

end

end A272382.P11812521832707181162

/-! ## A272382.P5865331014105722420

`A307533(A091997(n+1))`
-/

namespace A272382.P5865331014105722420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307533 (A091997 (n + 1)).toNat

end

end A272382.P5865331014105722420

/-! ## A272382.P1696893169821300100

`A040079(A032579(n+2))`
-/

namespace A272382.P1696893169821300100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040079 (A032579 (n + 2)).toNat

end

end A272382.P1696893169821300100

/-!
# A272384: Primes p == 1 (mod 3) for which A261029(22*p) = 2.

The programs for A272384, there is no canonical definition to state claims against.
-/

/-! ## A272384.P11127131915293584745

`p?[lt[A025428(n), A226535(n)]]`
-/

namespace A272384.P11127131915293584745
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226535 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A272384.P11127131915293584745

/-! ## A272384.P11478873159397578526

`A002476(lt[A109533(n), A296703(n+1)])`
-/

namespace A272384.P11478873159397578526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109533 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A272384.P11478873159397578526

/-! ## A272384.P17638630706685571251

`p?[A348932(n+1)%A348938(A348947(n+1))]`
-/

namespace A272384.P17638630706685571251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A348932 (n + 1)) (A348938 (A348947 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A272384.P17638630706685571251

/-! ## A272384.P5678115434574824275

`p?[A178623(n)+ceil(3*n/2)]`
-/

namespace A272384.P5678115434574824275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178623 n + ⌈3 * ((n : ℚ) / 2)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A272384.P5678115434574824275

/-! ## A272384.P13937915594830127686

`p?[∑[A266364(A058348(n))]]`
-/

namespace A272384.P13937915594830127686
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266364 (A058348 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A272384.P13937915594830127686

/-!
# A272385: Number of polycubes with n cells, allowing vertex connections and edge connections as well as face connections, distinguishing mirror images.

The programs for A272385, there is no canonical definition to state claims against.
-/

/-! ## A272385.P16853882244008772252

`∑{d}[∏{p}[n+1, #], (n+1)/#]*A138993(n!)`
-/

namespace A272385.P16853882244008772252
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ)) * (A138993 (Nat.factorial n) : ℚ)

end

end A272385.P16853882244008772252

/-!
# A272386: Smallest primes of 5 X 5 magic squares formed from consecutive primes.

The programs for A272386, there is no canonical definition to state claims against.
-/

/-! ## A272386.P6918769285797882304

`A000040(record[A283273(p?[33*n+19])])`
-/

namespace A272386.P6918769285797882304
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  33 * n + 19

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283273 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A272386.P6918769285797882304

/-!
# A272387: Smallest primes of 6 X 6 magic squares formed from consecutive primes.

The programs for A272387, there is no canonical definition to state claims against.
-/

/-! ## A272387.P17848497518368791743

`record[p?[A002260(A127022(n+1))]]`
-/

namespace A272387.P17848497518368791743
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A127022 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272387.P17848497518368791743

/-!
# A272389: Longest side of primitive Heronian tetrahedron.

The programs for A272389, there is no canonical definition to state claims against.
-/

/-! ## A272389.P15844153248572575833

`A272388(eq[1, ∑{p}[n+1, gcd(n, #)]])`
-/

namespace A272389.P15844153248572575833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.gcd n p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272388 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A272389.P15844153248572575833

/-! ## A272389.P5779305141007588856

`A272388(A029748(n))`
-/

namespace A272389.P5779305141007588856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272388 (A029748 n).toNat

end

end A272389.P5779305141007588856

/-! ## A272389.P9654428341020443465

`A272388(A036796(n))`
-/

namespace A272389.P9654428341020443465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272388 (A036796 n).toNat

end

end A272389.P9654428341020443465

/-!
# A272391: Degeneracies of entanglement witness eigenstates for 2n spin 5/2 irreducible representations.

The programs for A272391, there is no canonical definition to state claims against.
-/

/-! ## A272391.P14343353214535159158

`∏{p}[A368771(n), #]`
-/

namespace A272391.P14343353214535159158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368771 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A272391.P14343353214535159158

/-!
# A272392: Degeneracies of entanglement witness eigenstates for 2n spin 7/2 irreducible representations.

The programs for A272392, there is no canonical definition to state claims against.
-/

/-! ## A272392.P7338311295717239235

`A000040(A000364(n))-A178315(n)`
-/

namespace A272392.P7338311295717239235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000364 n).toNat - A178315 n

end

end A272392.P7338311295717239235

/-!
# A272393: Degeneracies of entanglement witness eigenstates for n spin 4 irreducible representations.

The programs for A272393, there is no canonical definition to state claims against.
-/

/-! ## A272393.P7502002000708511415

`A051724((n+1)!)-a(n-1)` with `a(0)=1`
-/

namespace A272393.P7502002000708511415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A051724 (Nat.factorial (n + 1)) - a (n - 1)

end

end A272393.P7502002000708511415

/-! ## A272393.P9151254144299394129

`abs(Δ[A008679(A341900(n))])`
-/

namespace A272393.P9151254144299394129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (A341900 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A272393.P9151254144299394129

/-!
# A272394: Degeneracies of entanglement witness eigenstates for 2n spin 9/2 irreducible representations.

The programs for A272394, there is no canonical definition to state claims against.
-/

/-! ## A272394.P1247539404564297387

`A001519(n)*A325187(A001970(n+1))`
-/

namespace A272394.P1247539404564297387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 n * A325187 (A001970 (n + 1)).toNat

end

end A272394.P1247539404564297387

/-!
# A272396: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 485", based on the 5-celled von Neumann neighborhood.

The programs for A272396, there is no canonical definition to state claims against.
-/

/-! ## A272396.P11198919684429613504

`A272350(2^n-1)`
-/

namespace A272396.P11198919684429613504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272350 (2 ^ n - 1)

end

end A272396.P11198919684429613504

/-! ## A272396.P7618862940634420890

`record[A272350(A341916(n))]`
-/

namespace A272396.P7618862940634420890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272350 (A341916 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272396.P7618862940634420890

/-! ## A272396.P9104043842536165827

`and(-1, A272350(A000225(n)))`
-/

namespace A272396.P9104043842536165827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A272350 (A000225 n).toNat)

end

end A272396.P9104043842536165827

/-! ## A272396.P15363139257365611650

`record[A272350(A023758(n+1))]`
-/

namespace A272396.P15363139257365611650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272350 (A023758 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272396.P15363139257365611650

/-! ## A272396.P8507756340009443717

`record[A272350(A323243(n+1))]`
-/

namespace A272396.P8507756340009443717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272350 (A323243 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272396.P8507756340009443717

/-!
# A272397: Number of partitions of n into parts congruent to 1, 3, 6, 8 (mod 9).

The programs for A272397, there is no canonical definition to state claims against.
-/

/-! ## A272397.P7964343988907211442

`A112195(3*n)`
-/

namespace A272397.P7964343988907211442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112195 (3 * n)

end

end A272397.P7964343988907211442

/-! ## A272397.P12080126657508028723

`abs(A112195(A008486(n)))`
-/

namespace A272397.P12080126657508028723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A112195 (A008486 n).toNat|

end

end A272397.P12080126657508028723

/-! ## A272397.P851164056893159321

`abs(A112195(record[A257143(n)]))`
-/

namespace A272397.P851164056893159321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257143 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A112195 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat|

end

end A272397.P851164056893159321

/-! ## A272397.P9661263499027907543

`abs(A112195(A005843(n)+n))`
-/

namespace A272397.P9661263499027907543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A112195 (A005843 n + (n : ℤ)).toNat|

end

end A272397.P9661263499027907543

/-! ## A272397.P13231170424256352119

`A218859(A008458(n))+A112195(A005843(n)+n)`
-/

namespace A272397.P13231170424256352119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218859 (A008458 n).toNat + A112195 (A005843 n + (n : ℤ)).toNat

end

end A272397.P13231170424256352119

/-! ## A272397.P7972367181241512040

`and(A052551(n), A112195(A008585(n)))`
-/

namespace A272397.P7972367181241512040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052551 n) (A112195 (A008585 n).toNat)

end

end A272397.P7972367181241512040

/-! ## A272397.P1252402969300485865

`A112195(A008585(n))%A236884(n+1)`
-/

namespace A272397.P1252402969300485865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112195 (A008585 n).toNat) (A236884 (n + 1))

end

end A272397.P1252402969300485865

/-!
# A272398: The union of hexagonal numbers (A000384) and centered 9-gonal numbers (A060544).

The programs for A272398, the canonical program `A272398.P9984989480868438692` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272398 has offset 1).

The definition of A272398 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A272398.P9984989480868438692

`C(∑[gcd(2, C(n, 2))], 2)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A272398

/-- `C(∑[gcd(2, C(n, 2))], 2)` -/
def P9984989480868438692.Spec : Prop :=
  ∀ n, (P9984989480868438692.a n : ℤ) = A272398 (n + 1)

theorem P9984989480868438692.correct : P9984989480868438692.Spec := by
  intro n
  simp only [A272398, Nat.add_sub_cancel]

end A272398

/-! ## A272398.P8473516829853604524

`C(∑[and(2, n+2)!], 2)`
-/

namespace A272398.P8473516829853604524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.land 2 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A272398.P8473516829853604524

namespace A272398

/-- `C(∑[and(2, n+2)!], 2)` -/
def P8473516829853604524.Spec : Prop :=
  ∀ n, (P8473516829853604524.a n : ℤ) = A272398 (n + 1)

end A272398

/-! ## A272398.P14388932462638635325

`C(∑[3-and(2, n)!], 2)`
-/

namespace A272398.P14388932462638635325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (Nat.factorial (Nat.land 2 n) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A272398.P14388932462638635325

namespace A272398

/-- `C(∑[3-and(2, n)!], 2)` -/
def P14388932462638635325.Spec : Prop :=
  ∀ n, (P14388932462638635325.a n : ℤ) = A272398 (n + 1)

end A272398

/-! ## A272398.P7714719644646353037

`C(∑[3-a(n-2)], 2)` with `a(0)=2, a(1)=2`
-/

namespace A272398.P7714719644646353037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  3 - f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A272398.P7714719644646353037

namespace A272398

/-- `C(∑[3-a(n-2)], 2)` -/
def P7714719644646353037.Spec : Prop :=
  ∀ n, (P7714719644646353037.a n : ℤ) = A272398 (n + 1)

end A272398

/-! ## A272398.P3833289935644012092

`C(∑[∑[n+1]%2+1], 2)`
-/

namespace A272398.P3833289935644012092
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A272398.P3833289935644012092

namespace A272398

/-- `C(∑[∑[n+1]%2+1], 2)` -/
def P3833289935644012092.Spec : Prop :=
  ∀ n, (P3833289935644012092.a n : ℤ) = A272398 (n + 1)

end A272398

/-! ## A272398.P16117154312292180607

`C(∑[log2(or(2, n)-n+2)], 2)`
-/

namespace A272398.P16117154312292180607
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((Nat.lor 2 n : ℤ) - (n : ℤ) + 2 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat 2

end

end A272398.P16117154312292180607

namespace A272398

/-- `C(∑[log2(or(2, n)-n+2)], 2)` -/
def P16117154312292180607.Spec : Prop :=
  ∀ n, (P16117154312292180607.a n : ℤ) = A272398 (n + 1)

end A272398

/-! ## A272398.P5963651446631943731

`C(comp[comp[or(2, n)]+n]+1, 2)`
-/

namespace A272398.P5963651446631943731
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) 2

end

end A272398.P5963651446631943731

namespace A272398

/-- `C(comp[comp[or(2, n)]+n]+1, 2)` -/
def P5963651446631943731.Spec : Prop :=
  ∀ n, (P5963651446631943731.a n : ℤ) = A272398 (n + 1)

end A272398

/-! ## A272398.P2152669246468940496

`C(comp[2*comp[3*n-1]]+1, 2)`
-/

namespace A272398.P2152669246468940496
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) 2

end

end A272398.P2152669246468940496

namespace A272398

/-- `C(comp[2*comp[3*n-1]]+1, 2)` -/
def P2152669246468940496.Spec : Prop :=
  ∀ n, (P2152669246468940496.a n : ℤ) = A272398 (n + 1)

end A272398

/-! ## A272398.P16621461337450436635

`A000217(ceil(5*n/4)+floor(n/4)+1)`
-/

namespace A272398.P16621461337450436635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (⌈5 * ((n : ℚ) / 4)⌉ + ⌊(n : ℚ) / 4⌋ + 1).toNat

end

end A272398.P16621461337450436635

namespace A272398

/-- `A000217(ceil(5*n/4)+floor(n/4)+1)` -/
def P16621461337450436635.Spec : Prop :=
  ∀ n, P16621461337450436635.a n = A272398 (n + 1)

end A272398

/-! ## A272398.P3931503892618213880

`∪[A001844(n)+n, Δ[A004188(n)]]`
-/

namespace A272398.P3931503892618213880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n + (n : ℤ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004188 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A272398.P3931503892618213880

namespace A272398

/-- `∪[A001844(n)+n, Δ[A004188(n)]]` -/
def P3931503892618213880.Spec : Prop :=
  ∀ n, (P3931503892618213880.a n : ℤ) = A272398 (n + 1)

end A272398

/-! ## A272398.P8735808106423178137

`∪[A060544(n+1), A001844(n)+n]`
-/

namespace A272398.P8735808106423178137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A272398.P8735808106423178137

namespace A272398

/-- `∪[A060544(n+1), A001844(n)+n]` -/
def P8735808106423178137.Spec : Prop :=
  ∀ n, (P8735808106423178137.a n : ℤ) = A272398 (n + 1)

end A272398

/-! ## A272398.P6919376788225338318

`(A047251(n+1)+A047251(n+1)²)/2`
-/

namespace A272398.P6919376788225338318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047251 (n + 1) + A047251 (n + 1) ^ 2 : ℚ) / 2

end

end A272398.P6919376788225338318

namespace A272398

/-- `(A047251(n+1)+A047251(n+1)²)/2` -/
def P6919376788225338318.Spec : Prop :=
  ∀ n, P6919376788225338318.a n = (A272398 (n + 1) : ℚ)

end A272398

/-! ## A272398.P3262017435364856699

`A047251(n+1)+A000217(A047251(n+1)-1)`
-/

namespace A272398.P3262017435364856699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047251 (n + 1) + A000217 (A047251 (n + 1) - 1).toNat

end

end A272398.P3262017435364856699

namespace A272398

/-- `A047251(n+1)+A000217(A047251(n+1)-1)` -/
def P3262017435364856699.Spec : Prop :=
  ∀ n, P3262017435364856699.a n = A272398 (n + 1)

end A272398

/-! ## A272398.P16977405437533852605

`A000217(A047262(n+2))-A047262(n+2)`
-/

namespace A272398.P16977405437533852605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A047262 (n + 2)).toNat - A047262 (n + 2)

end

end A272398.P16977405437533852605

namespace A272398

/-- `A000217(A047262(n+2))-A047262(n+2)` -/
def P16977405437533852605.Spec : Prop :=
  ∀ n, P16977405437533852605.a n = A272398 (n + 1)

end A272398

/-! ## A272398.P7338371174809537594

`A047262(n+2)/A118286(n+1)*A102214(n)`
-/

namespace A272398.P7338371174809537594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047262 (n + 2) : ℚ) / (A118286 (n + 1) : ℚ) * (A102214 n : ℚ)

end

end A272398.P7338371174809537594

namespace A272398

/-- `A047262(n+2)/A118286(n+1)*A102214(n)` -/
def P7338371174809537594.Spec : Prop :=
  ∀ n, P7338371174809537594.a n = (A272398 (n + 1) : ℚ)

end A272398

/-! ## A272398.P8620522553136158602

`A000096(A004525(n)+n)+1`
-/

namespace A272398.P8620522553136158602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A004525 n + (n : ℤ)).toNat + 1

end

end A272398.P8620522553136158602

namespace A272398

/-- `A000096(A004525(n)+n)+1` -/
def P8620522553136158602.Spec : Prop :=
  ∀ n, P8620522553136158602.a n = A272398 (n + 1)

end A272398

/-! ## A272398.P15957492766694884277

`A000096(comp[A028919(n+1)+1-2*n])+1`
-/

namespace A272398.P15957492766694884277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028919 (n + 1) + 1 - (2 * n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + 1

end

end A272398.P15957492766694884277

namespace A272398

/-- `A000096(comp[A028919(n+1)+1-2*n])+1` -/
def P15957492766694884277.Spec : Prop :=
  ∀ n, P15957492766694884277.a n = A272398 (n + 1)

end A272398

/-! ## A272398.P13645064505273072684

`sqrt(A000537(comp[3*n-n%2]))`
-/

namespace A272398.P13645064505273072684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - ((n % 2 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A000537 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) : ℝ)

end

end A272398.P13645064505273072684

namespace A272398

/-- `sqrt(A000537(comp[3*n-n%2]))` -/
def P13645064505273072684.Spec : Prop :=
  ∀ n, P13645064505273072684.a n = (A272398 (n + 1) : ℝ)

end A272398

/-! ## A272398.P9569695167460590091

`A161680(A047262(n+2))`
-/

namespace A272398.P9569695167460590091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A047262 (n + 2)).toNat

end

end A272398.P9569695167460590091

namespace A272398

/-- `A161680(A047262(n+2))` -/
def P9569695167460590091.Spec : Prop :=
  ∀ n, P9569695167460590091.a n = A272398 (n + 1)

end A272398

/-! ## A272398.P4125617960652029338

`A161680(∑[gcd(2, A161680(n))])`
-/

namespace A272398.P4125617960652029338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A161680 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A272398.P4125617960652029338

namespace A272398

/-- `A161680(∑[gcd(2, A161680(n))])` -/
def P4125617960652029338.Spec : Prop :=
  ∀ n, P4125617960652029338.a n = A272398 (n + 1)

end A272398

/-!
# A272399: The intersection of hexagonal numbers (A000384) and centered 9-gonal numbers (A060544).

The programs for A272399, the canonical program `A272399.P2318681285467334701` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272399 has offset 1).

The definition of A272399 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A272399.P2318681285467334701

`10-27*(n+1)+18*(n+1)²`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A272399

/-- `10-27*(n+1)+18*(n+1)²` -/
def P2318681285467334701.Spec : Prop :=
  ∀ n, P2318681285467334701.a n = A272399 (n + 1)

theorem P2318681285467334701.correct : P2318681285467334701.Spec := by
  intro n
  simp only [A272399, Nat.add_sub_cancel]

end A272399

/-! ## A272399.P8343410332635221948

`A060544(2*n+1)`
-/

namespace A272399.P8343410332635221948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060544 (2 * n + 1)

end

end A272399.P8343410332635221948

namespace A272399

/-- `A060544(2*n+1)` -/
def P8343410332635221948.Spec : Prop :=
  ∀ n, P8343410332635221948.a n = A272399 (n + 1)

end A272399

/-! ## A272399.P14933741762349929188

`A000384(3*(n+1)-2)`
-/

namespace A272399.P14933741762349929188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 (3 * (n + 1) - 2)

end

end A272399.P14933741762349929188

namespace A272399

/-- `A000384(3*(n+1)-2)` -/
def P14933741762349929188.Spec : Prop :=
  ∀ n, P14933741762349929188.a n = A272399 (n + 1)

end A272399

/-! ## A272399.P11275605876987507168

`A272398(4*n+1)`
-/

namespace A272399.P11275605876987507168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272398 (4 * n + 1)

end

end A272399.P11275605876987507168

namespace A272399

/-- `A272398(4*n+1)` -/
def P11275605876987507168.Spec : Prop :=
  ∀ n, P11275605876987507168.a n = A272399 (n + 1)

end A272399

/-! ## A272399.P4965766896486546561

`C(6*n+2, 2)`
-/

namespace A272399.P4965766896486546561
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (6 * n + 2) 2

end

end A272399.P4965766896486546561

namespace A272399

/-- `C(6*n+2, 2)` -/
def P4965766896486546561.Spec : Prop :=
  ∀ n, (P4965766896486546561.a n : ℤ) = A272399 (n + 1)

end A272399

/-! ## A272399.P5005522968103103432

`record[C(n+2, lcm(6, n))]`
-/

namespace A272399.P5005522968103103432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) (Nat.lcm 6 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272399.P5005522968103103432

namespace A272399

/-- `record[C(n+2, lcm(6, n))]` -/
def P5005522968103103432.Spec : Prop :=
  ∀ n, (P5005522968103103432.a n : ℤ) = A272399 (n + 1)

end A272399

/-! ## A272399.P3028817306611711417

`∑[a(n-1)+36]` with `a(0)=1, a(1)=27`
-/

namespace A272399.P3028817306611711417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 27] fun n f1 =>
  f1 (n - 1) + 36

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272399.P3028817306611711417

namespace A272399

/-- `∑[a(n-1)+36]` -/
def P3028817306611711417.Spec : Prop :=
  ∀ n, (P3028817306611711417.a n : ℤ) = A272399 (n + 1)

end A272399

/-! ## A272399.P13620888739943208482

`∑[A158646(n)]/(n+1)`
-/

namespace A272399.P13620888739943208482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158646 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A272399.P13620888739943208482

namespace A272399

/-- `∑[A158646(n)]/(n+1)` -/
def P13620888739943208482.Spec : Prop :=
  ∀ n, P13620888739943208482.a n = (A272399 (n + 1) : ℚ)

end A272399

/-! ## A272399.P2332778634681286253

`(A157262(n+1)+n)/2`
-/

namespace A272399.P2332778634681286253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157262 (n + 1) + (n : ℤ) : ℚ) / 2

end

end A272399.P2332778634681286253

namespace A272399

/-- `(A157262(n+1)+n)/2` -/
def P2332778634681286253.Spec : Prop :=
  ∀ n, P2332778634681286253.a n = (A272399 (n + 1) : ℚ)

end A272399

/-! ## A272399.P17379736170846323562

`A349682(n)/(2*n+1)`
-/

namespace A272399.P17379736170846323562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349682 n : ℚ) / (2 * n + 1 : ℚ)

end

end A272399.P17379736170846323562

namespace A272399

/-- `A349682(n)/(2*n+1)` -/
def P17379736170846323562.Spec : Prop :=
  ∀ n, P17379736170846323562.a n = (A272399 (n + 1) : ℚ)

end A272399

/-! ## A272399.P9687295765412709602

`A016777(n)*A016921(n)`
-/

namespace A272399.P9687295765412709602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n * A016921 n

end

end A272399.P9687295765412709602

namespace A272399

/-- `A016777(n)*A016921(n)` -/
def P9687295765412709602.Spec : Prop :=
  ∀ n, P9687295765412709602.a n = A272399 (n + 1)

end A272399

/-! ## A272399.P12595455341161609516

`(2*n+1+n)*eq[3, A020639(n+2)]`
-/

namespace A272399.P12595455341161609516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 + n) * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A272399.P12595455341161609516

namespace A272399

/-- `(2*n+1+n)*eq[3, A020639(n+2)]` -/
def P12595455341161609516.Spec : Prop :=
  ∀ n, (P12595455341161609516.a n : ℤ) = A272399 (n + 1)

end A272399

/-! ## A272399.P16972608781586389376

`A144410(2*n)/8`
-/

namespace A272399.P16972608781586389376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144410 (2 * n) : ℚ) / 8

end

end A272399.P16972608781586389376

namespace A272399

/-- `A144410(2*n)/8` -/
def P16972608781586389376.Spec : Prop :=
  ∀ n, P16972608781586389376.a n = (A272399 (n + 1) : ℚ)

end A272399

/-! ## A272399.P6536182687822809314

`A016777(2*n)*A016777(n)`
-/

namespace A272399.P6536182687822809314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (2 * n) * A016777 n

end

end A272399.P6536182687822809314

namespace A272399

/-- `A016777(2*n)*A016777(n)` -/
def P6536182687822809314.Spec : Prop :=
  ∀ n, P6536182687822809314.a n = A272399 (n + 1)

end A272399

/-! ## A272399.P14113539626917096936

`A001504(2*n)/2`
-/

namespace A272399.P14113539626917096936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001504 (2 * n) : ℚ) / 2

end

end A272399.P14113539626917096936

namespace A272399

/-- `A001504(2*n)/2` -/
def P14113539626917096936.Spec : Prop :=
  ∀ n, P14113539626917096936.a n = (A272399 (n + 1) : ℚ)

end A272399

/-! ## A272399.P16027219144587185698

`record[C(A001281(n+1), 2)]`
-/

namespace A272399.P16027219144587185698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001281 (n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272399.P16027219144587185698

namespace A272399

/-- `record[C(A001281(n+1), 2)]` -/
def P16027219144587185698.Spec : Prop :=
  ∀ n, (P16027219144587185698.a n : ℤ) = A272399 (n + 1)

end A272399

/-! ## A272399.P6814954504005989468

`ceil(A069131(2*n+1)/2)`
-/

namespace A272399.P6814954504005989468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A069131 (2 * n + 1) : ℚ) / 2⌉

end

end A272399.P6814954504005989468

namespace A272399

/-- `ceil(A069131(2*n+1)/2)` -/
def P6814954504005989468.Spec : Prop :=
  ∀ n, P6814954504005989468.a n = A272399 (n + 1)

end A272399

/-! ## A272399.P2038611623415496046

`A000217(A016921(n))`
-/

namespace A272399.P2038611623415496046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A016921 n).toNat

end

end A272399.P2038611623415496046

namespace A272399

/-- `A000217(A016921(n))` -/
def P2038611623415496046.Spec : Prop :=
  ∀ n, P2038611623415496046.a n = A272399 (n + 1)

end A272399

/-! ## A272399.P14116330674654908454

`A000217(Δ[A000567(n)])`
-/

namespace A272399.P14116330674654908454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (f1 (n + 1) - f1 n).toNat

end

end A272399.P14116330674654908454

namespace A272399

/-- `A000217(Δ[A000567(n)])` -/
def P14116330674654908454.Spec : Prop :=
  ∀ n, P14116330674654908454.a n = A272399 (n + 1)

end A272399

/-! ## A272399.P4688988235872503446

`A000217(A008588(n)+1)`
-/

namespace A272399.P4688988235872503446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A008588 n + 1).toNat

end

end A272399.P4688988235872503446

namespace A272399

/-- `A000217(A008588(n)+1)` -/
def P4688988235872503446.Spec : Prop :=
  ∀ n, P4688988235872503446.a n = A272399 (n + 1)

end A272399

