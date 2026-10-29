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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C047
import Seq.B000.C048
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
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B009.C000
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
# A151300: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0) and consisting of n steps taken from {(-1, -1), (-1, 0), (1, -1), (1, 0), (1, 1)}.

The programs for A151300, there is no canonical definition to state claims against.
-/

/-! ## A151300.P15465645961841842273

`A110656(A149596(n+2))`
-/

namespace A151300.P15465645961841842273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A149596 (n + 2)).toNat

end

end A151300.P15465645961841842273

/-! ## A151300.P16076397017599101432

`A150720(n)-A058348(2^n)`
-/

namespace A151300.P16076397017599101432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150720 n - A058348 (2 ^ n)

end

end A151300.P16076397017599101432

/-!
# A151301: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0) and consisting of n steps taken from {(-1, -1), (-1, 0), (0, 1), (1, -1), (1, 1)}.

The programs for A151301, there is no canonical definition to state claims against.
-/

/-! ## A151301.P16775758223680154916

`A165640(A104268(n+2))`
-/

namespace A151301.P16775758223680154916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165640 (A104268 (n + 2)).toNat

end

end A151301.P16775758223680154916

/-! ## A151301.P17771137987963634125

`A008612(3*A133444(n))`
-/

namespace A151301.P17771137987963634125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (3 * A133444 n).toNat

end

end A151301.P17771137987963634125

/-!
# A151302: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0) and consisting of n steps taken from {(-1, -1), (-1, 1), (0, 1), (1, -1), (1, 1)}.

The programs for A151302, there is no canonical definition to state claims against.
-/

/-! ## A151302.P16134885714933289479

`A150754(n)-A319114(A355266(n))`
-/

namespace A151302.P16134885714933289479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150754 n - A319114 (A355266 n).toNat

end

end A151302.P16134885714933289479

/-!
# A151303: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0) and consisting of n steps taken from {(-1, 0), (0, -1), (1, -1), (1, 0), (1, 1)}.

The programs for A151303, there is no canonical definition to state claims against.
-/

/-! ## A151303.P929042044315256792

`A038572(A150762(n)+A150760(n))`
-/

namespace A151303.P929042044315256792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A150762 n + A150760 n).toNat

end

end A151303.P929042044315256792

/-! ## A151303.P7648287980503093817

`A302043(A150762(n)+A150760(n))`
-/

namespace A151303.P7648287980503093817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302043 (A150762 n + A150760 n).toNat

end

end A151303.P7648287980503093817

/-! ## A151303.P5113501994501599627

`A004525(A150762(n)+A150759(n))`
-/

namespace A151303.P5113501994501599627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A150762 n + A150759 n).toNat

end

end A151303.P5113501994501599627

/-!
# A151304: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0) and consisting of n steps taken from {(-1, 1), (-1, 0), (0, 1), (1, -1), (1, 1)}.

The programs for A151304, there is no canonical definition to state claims against.
-/

/-! ## A151304.P7834291078762853931

`A150841(n)+A050870(A150892(n))`
-/

namespace A151304.P7834291078762853931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150841 n + A050870 (A150892 n).toNat

end

end A151304.P7834291078762853931

/-! ## A151304.P159824388258691038

`or(A150841(n), A327498(A150839(n)))`
-/

namespace A151304.P159824388258691038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A150841 n) (A327498 (A150839 n).toNat)

end

end A151304.P159824388258691038

/-! ## A151304.P8714906210962087062

`xor(A019269(A150860(n)), A150842(n))`
-/

namespace A151304.P8714906210962087062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A019269 (A150860 n).toNat) (A150842 n)

end

end A151304.P8714906210962087062

/-!
# A151305: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0) and consisting of n steps taken from {(-1, -1), (-1, 1), (-1, 0), (0, -1), (0, 1), (1, -1), (1, 0)}.

The programs for A151305, there is no canonical definition to state claims against.
-/

/-! ## A151305.P15683228903861960789

`∏{p}[A363108(n), A333943(#)]`
-/

namespace A151305.P15683228903861960789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A333943 p

end

end A151305.P15683228903861960789

/-! ## A151305.P12738561944812469064

`A156016(n)-A087116(3^n+5^n-2^n)`
-/

namespace A151305.P12738561944812469064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156016 n - A087116 ((3 ^ n : ℤ) + ((5 ^ n : ℤ) - (2 ^ n : ℤ))).toNat

end

end A151305.P12738561944812469064

/-!
# A151306: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0) and consisting of n steps taken from {(-1, -1), (-1, 1), (-1, 0), (1, 0), (1, 1)}.

The programs for A151306, there is no canonical definition to state claims against.
-/

/-! ## A151306.P1338964409316121803

`A004526(A150904(n)+A150903(n))`
-/

namespace A151306.P1338964409316121803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A150904 n + A150903 n).toNat

end

end A151306.P1338964409316121803

/-! ## A151306.P8589001087862071215

`A025480(A150904(n)+A150903(n))`
-/

namespace A151306.P8589001087862071215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A150904 n + A150903 n).toNat

end

end A151306.P8589001087862071215

/-! ## A151306.P18359824117790279823

`A064680(A150904(n)+A150903(n))`
-/

namespace A151306.P18359824117790279823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (A150904 n + A150903 n).toNat

end

end A151306.P18359824117790279823

/-!
# A151307: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0) and consisting of n steps taken from {(-1, 0), (0, -1), (0, 1), (1, -1), (1, 1)}.

The programs for A151307, there is no canonical definition to state claims against.
-/

/-! ## A151307.P4580356857721404279

`A248375(A150814(n))`
-/

namespace A151307.P4580356857721404279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248375 (A150814 n).toNat

end

end A151307.P4580356857721404279

/-! ## A151307.P14830393277333109567

`A214701(A150948(n))`
-/

namespace A151307.P14830393277333109567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214701 (A150948 n).toNat

end

end A151307.P14830393277333109567

/-!
# A151308: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0) and consisting of n steps taken from {(-1, 1), (-1, 0), (1, -1), (1, 0), (1, 1)}.

The programs for A151308, there is no canonical definition to state claims against.
-/

/-! ## A151308.P16803590451500472087

`A028297(n)+A002265(A002457(n))`
-/

namespace A151308.P16803590451500472087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028297 n + A002265 (A002457 n).toNat

end

end A151308.P16803590451500472087

/-!
# A151309: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0) and consisting of n steps taken from {(-1, -1), (-1, 0), (0, -1), (1, -1), (1, 0), (1, 1)}.

The programs for A151309, there is no canonical definition to state claims against.
-/

/-! ## A151309.P2823137064885454358

`ceil(2^n/ϕ)*A319635(comp[2*(n+1)])`
-/

namespace A151309.P2823137064885454358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 ^ n : ℝ) / Real.goldenRatio⌉ * A319635 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A151309.P2823137064885454358

/-! ## A151309.P11161880945693948210

`A003056(lcm(2, ∏[1-2*n]))*A211181(n+1)`
-/

namespace A151309.P11161880945693948210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.lcm 2 (∏ j ∈ Finset.range (n + 1), f1 j)) * A211181 (n + 1)

end

end A151309.P11161880945693948210

/-!
# A151310: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0) and consisting of n steps taken from {(-1, -1), (-1, 1), (-1, 0), (0, 1), (1, -1), (1, 1)}.

The programs for A151310, there is no canonical definition to state claims against.
-/

/-! ## A151310.P9916016288608392743

`A170876(n)+A170875(A001006(n))`
-/

namespace A151310.P9916016288608392743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170876 n + A170875 (A001006 n).toNat

end

end A151310.P9916016288608392743

/-! ## A151310.P7846700264448543667

`A108954(or(A000400(n), A061997(n)))`
-/

namespace A151310.P7846700264448543667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (Int.lor (A000400 n) (A061997 n)).toNat

end

end A151310.P7846700264448543667

/-!
# A151311: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0) and consisting of n steps taken from {(-1, -1), (-1, 0), (0, -1), (0, 1), (1, -1), (1, 1)}.

The programs for A151311, there is no canonical definition to state claims against.
-/

/-! ## A151311.P13122014159591557468

`A230034(∑[n]²+1)`
-/

namespace A151311.P13122014159591557468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230034 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 1)

end

end A151311.P13122014159591557468

/-!
# A151312: Number of walks within N^2 (the first quadrant of Z^2) starting at (0, 0) and consisting of n steps taken from {(-1, -1), (-1, 1), (-1, 0), (1, -1), (1, 0), (1, 1)}.

The programs for A151312, the canonical program `A151312.P7620929976732303030` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151312 has offset 0).

The definition of A151312 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A151312.P7620929976732303030

`A001405(n)*A005773(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A151312

/-- `A001405(n)*A005773(n+1)` -/
def P7620929976732303030.Spec : Prop :=
  ∀ n, P7620929976732303030.a n = A151312 n

theorem P7620929976732303030.correct : P7620929976732303030.Spec := by
  intro n
  simp only [A151312]

end A151312

/-! ## A151312.P9012563361317361949

`A001405(n)*A038622(∑[n])`
-/

namespace A151312.P9012563361317361949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n * A038622 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A151312.P9012563361317361949

namespace A151312

/-- `A001405(n)*A038622(∑[n])` -/
def P9012563361317361949.Spec : Prop :=
  ∀ n, P9012563361317361949.a n = A151312 n

end A151312

/-! ## A151312.P2592901513664514398

`A001405(n)*A171651(∑[n])`
-/

namespace A151312.P2592901513664514398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n * A171651 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A151312.P2592901513664514398

namespace A151312

/-- `A001405(n)*A171651(∑[n])` -/
def P2592901513664514398.Spec : Prop :=
  ∀ n, P2592901513664514398.a n = A151312 n

end A151312

/-! ## A151312.P1249334087651492077

`record[A038622(n)]*A001405(n)`
-/

namespace A151312.P1249334087651492077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038622 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A001405 n

end

end A151312.P1249334087651492077

namespace A151312

/-- `record[A038622(n)]*A001405(n)` -/
def P1249334087651492077.Spec : Prop :=
  ∀ n, P1249334087651492077.a n = A151312 n

end A151312

/-! ## A151312.P12903842365033602849

`record[A038622(n)*A061554(n)]`
-/

namespace A151312.P12903842365033602849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038622 n * A061554 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151312.P12903842365033602849

namespace A151312

/-- `record[A038622(n)*A061554(n)]` -/
def P12903842365033602849.Spec : Prop :=
  ∀ n, P12903842365033602849.a n = A151312 n

end A151312

/-! ## A151312.P14398926369756985224

`A001405(n)*A307789(n+2)`
-/

namespace A151312.P14398926369756985224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n * A307789 (n + 2)

end

end A151312.P14398926369756985224

namespace A151312

/-- `A001405(n)*A307789(n+2)` -/
def P14398926369756985224.Spec : Prop :=
  ∀ n, P14398926369756985224.a n = A151312 n

end A151312

/-! ## A151312.P9833426233473443279

`A005773(n+1)*A210736(n+1)`
-/

namespace A151312.P9833426233473443279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 (n + 1) * A210736 (n + 1)

end

end A151312.P9833426233473443279

namespace A151312

/-- `A005773(n+1)*A210736(n+1)` -/
def P9833426233473443279.Spec : Prop :=
  ∀ n, P9833426233473443279.a n = A151312 n

end A151312

/-! ## A151312.P18120332012407312434

`∑{#}[n, C(n, #)*A001405(#)*A001405(n)]`
-/

namespace A151312.P18120332012407312434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A001405 k * A001405 n

end

end A151312.P18120332012407312434

namespace A151312

/-- `∑{#}[n, C(n, #)*A001405(#)*A001405(n)]` -/
def P18120332012407312434.Spec : Prop :=
  ∀ n, P18120332012407312434.a n = A151312 n

end A151312

/-! ## A151312.P12787237545827913063

`(A005774(n)+A001006(n))*A001405(n)`
-/

namespace A151312.P12787237545827913063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005774 n + A001006 n) * A001405 n

end

end A151312.P12787237545827913063

namespace A151312

/-- `(A005774(n)+A001006(n))*A001405(n)` -/
def P12787237545827913063.Spec : Prop :=
  ∀ n, P12787237545827913063.a n = A151312 n

end A151312

/-! ## A151312.P15854774034273666099

`(A383527(n+1)-A383527(n))*A210736(n+1)`
-/

namespace A151312.P15854774034273666099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A383527 (n + 1) - A383527 n) * A210736 (n + 1)

end

end A151312.P15854774034273666099

namespace A151312

/-- `(A383527(n+1)-A383527(n))*A210736(n+1)` -/
def P15854774034273666099.Spec : Prop :=
  ∀ n, P15854774034273666099.a n = A151312 n

end A151312

/-! ## A151312.P15298758739991732313

`A393140(∑[n]+n)`
-/

namespace A151312.P15298758739991732313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393140 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A151312.P15298758739991732313

namespace A151312

/-- `A393140(∑[n]+n)` -/
def P15298758739991732313.Spec : Prop :=
  ∀ n, P15298758739991732313.a n = A151312 n

end A151312

/-!
# A151313: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0) and consisting of n steps taken from {(-1, 1), (-1, 0), (0, -1), (0, 1), (1, -1), (1, 1)}.

The programs for A151313, there is no canonical definition to state claims against.
-/

/-! ## A151313.P11251114161069753345

`A137635(n)-A018843(∑[and(2, n)]!)`
-/

namespace A151313.P11251114161069753345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137635 n - A018843 (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A151313.P11251114161069753345

/-! ## A151313.P4852540275744025012

`A137635(n)-A031346(A000312(n))`
-/

namespace A151313.P4852540275744025012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137635 n - A031346 (A000312 n).toNat

end

end A151313.P4852540275744025012

/-!
# A151314: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0) and consisting of n steps taken from {(-1, -1), (-1, 1), (-1, 0), (0, -1), (0, 1), (1, -1), (1, 1)}.

The programs for A151314, there is no canonical definition to state claims against.
-/

/-! ## A151314.P8275593845844904798

`Δ[A000224(A392784(n))]+1`
-/

namespace A151314.P8275593845844904798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000224 (A392784 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A151314.P8275593845844904798

/-!
# A151315: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0) and consisting of n steps taken from {(-1, -1), (0, 1), (1, 0), (1, 1)}.

The programs for A151315, there is no canonical definition to state claims against.
-/

/-! ## A151315.P9137982835941699296

`A110654(A160156(n)+A139782(n))`
-/

namespace A151315.P9137982835941699296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A160156 n + A139782 n).toNat

end

end A151315.P9137982835941699296

/-! ## A151315.P13059285174716212920

`A005229(A206290(2*n)+A020988(n))`
-/

namespace A151315.P13059285174716212920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005229 (A206290 (2 * n) + A020988 n).toNat

end

end A151315.P13059285174716212920

/-!
# A151316: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0) and consisting of n steps taken from {(-1, -1), (-1, 0), (0, 1), (1, 0), (1, 1)}.

The programs for A151316, there is no canonical definition to state claims against.
-/

/-! ## A151316.P4702094988356124301

`A151150(n)+A054899(A151119(n))`
-/

namespace A151316.P4702094988356124301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151150 n + A054899 (A151119 n).toNat

end

end A151316.P4702094988356124301

/-! ## A151316.P11994156366962089790

`A151150(n)+A054899(A151122(n))`
-/

namespace A151316.P11994156366962089790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151150 n + A054899 (A151122 n).toNat

end

end A151316.P11994156366962089790

/-! ## A151316.P5282779859747514006

`A004526(A102319(n+1)-A006054(n+1))`
-/

namespace A151316.P5282779859747514006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A102319 (n + 1) - A006054 (n + 1)).toNat

end

end A151316.P5282779859747514006

/-!
# A151317: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0) and consisting of n steps taken from {(-1, -1), (-1, 1), (0, 1), (1, 0), (1, 1)}.

The programs for A151317, there is no canonical definition to state claims against.
-/

/-! ## A151317.P14565285573595882833

`∑[A008620(A123894(n))]`
-/

namespace A151317.P14565285573595882833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A123894 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151317.P14565285573595882833

/-! ## A151317.P8648460113131600935

`A227145(A150812(n+1))`
-/

namespace A151317.P8648460113131600935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227145 (A150812 (n + 1)).toNat

end

end A151317.P8648460113131600935

/-!
# A151318: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0) and consisting of n steps taken from {(-1, 1), (-1, 0), (0, 1), (1, 0), (1, 1)}.

The programs for A151318, the canonical program `A151318.P3693881019179690856` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151318 has offset 0).

The definition of A151318 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A151318.P3693881019179690856

`A084605(n)+2*A098520(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A151318

/-- `A084605(n)+2*A098520(n)` -/
def P3693881019179690856.Spec : Prop :=
  ∀ n, P3693881019179690856.a n = A151318 n

theorem P3693881019179690856.correct : P3693881019179690856.Spec := by
  intro n
  simp only [A151318]

end A151318

/-! ## A151318.P5011996820733876043

`A307855(2*n+∑[n+3]+7)+2*A098520(n)`
-/

namespace A151318.P5011996820733876043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307855 (2 * n + (∑ j ∈ Finset.range (n + 1), f1 j + 7)) + 2 * A098520 n

end

end A151318.P5011996820733876043

namespace A151318

/-- `A307855(2*n+∑[n+3]+7)+2*A098520(n)` -/
def P5011996820733876043.Spec : Prop :=
  ∀ n, P5011996820733876043.a n = A151318 n

end A151318

/-! ## A151318.P17667615410376476542

`sqrt(A322240(n))+2*A098520(n)`
-/

namespace A151318.P17667615410376476542
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A322240 n : ℝ) + (2 * A098520 n : ℝ)

end

end A151318.P17667615410376476542

namespace A151318

/-- `sqrt(A322240(n))+2*A098520(n)` -/
def P17667615410376476542.Spec : Prop :=
  ∀ n, P17667615410376476542.a n = (A151318 n : ℝ)

end A151318

/-! ## A151318.P18315787766834939068

`A084605(n)+A005843(A098520(n))`
-/

namespace A151318.P18315787766834939068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084605 n + A005843 (A098520 n).toNat

end

end A151318.P18315787766834939068

namespace A151318

/-- `A084605(n)+A005843(A098520(n))` -/
def P18315787766834939068.Spec : Prop :=
  ∀ n, P18315787766834939068.a n = A151318 n

end A151318

/-!
# A151319: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0) and consisting of n steps taken from {(-1, 0), (0, -1), (0, 1), (1, 0), (1, 1)}.

The programs for A151319, there is no canonical definition to state claims against.
-/

/-! ## A151319.P3873233933939932611

`A139711(A150971(n))`
-/

namespace A151319.P3873233933939932611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139711 (A150971 n).toNat

end

end A151319.P3873233933939932611

/-! ## A151319.P15807820644807287407

`A063195(5*A150900(n))`
-/

namespace A151319.P15807820644807287407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063195 (5 * A150900 n).toNat

end

end A151319.P15807820644807287407

/-!
# A151320: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0) and consisting of n steps taken from {(-1, 0), (0, 1), (1, -1), (1, 0), (1, 1)}.

The programs for A151320, there is no canonical definition to state claims against.
-/

/-! ## A151320.P15715549601131532206

`A061017((n+1)*ceil(abs((5^n-n)/2)))`
-/

namespace A151320.P15715549601131532206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 ((n + 1 : ℤ) * ⌈|((5 ^ n : ℤ) - (n : ℤ) : ℚ) / 2|⌉).toNat

end

end A151320.P15715549601131532206

/-! ## A151320.P11511612494936283919

`A248183(∑[A151237(n)]+n)`
-/

namespace A151320.P11511612494936283919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151237 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248183 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A151320.P11511612494936283919

/-!
# A151321: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0) and consisting of n steps taken from {(-1, 1), (0, 1), (1, -1), (1, 0), (1, 1)}.

The programs for A151321, there is no canonical definition to state claims against.
-/

/-! ## A151321.P14021094243817401507

`A151232(n)-A007814(A151161(n))`
-/

namespace A151321.P14021094243817401507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151232 n - A007814 (A151161 n).toNat

end

end A151321.P14021094243817401507

/-! ## A151321.P15216933150943723799

`A151232(n)-A174615(A151346(n))`
-/

namespace A151321.P15216933150943723799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151232 n - A174615 (A151346 n).toNat

end

end A151321.P15216933150943723799

/-!
# A151322: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0) and consisting of n steps taken from {(-1,-1), (-1,1), (-1,0), (0,1), (1,0), (1,1)}.

The programs for A151322, there is no canonical definition to state claims against.
-/

/-! ## A151322.P6155751555184120671

`A363487(A342860(n))+A001850(n)`
-/

namespace A151322.P6155751555184120671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363487 (A342860 n).toNat + A001850 n

end

end A151322.P6155751555184120671

/-! ## A151322.P5203995696936201608

`A316202(A002620(2*n+3))+A167639(n)`
-/

namespace A151322.P5203995696936201608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316202 (A002620 (2 * n + 3)).toNat + A167639 n

end

end A151322.P5203995696936201608

/-!
# A151323: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0) and consisting of n steps taken from {(-1, -1), (-1, 0), (0, -1), (0, 1), (1, 0), (1, 1)}.

The programs for A151323, there is no canonical definition to state claims against.
-/

/-! ## A151323.P6146337592517970005

`A004396(A002003(n)+A001850(n))`
-/

namespace A151323.P6146337592517970005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A002003 n + A001850 n).toNat

end

end A151323.P6146337592517970005

/-! ## A151323.P16996145041764632500

`A004396(A123164(n)+A001850(n))`
-/

namespace A151323.P16996145041764632500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A123164 n + A001850 n).toNat

end

end A151323.P16996145041764632500

/-!
# A151324: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0) and consisting of n steps taken from {(-1, -1), (-1, 0), (0, 1), (1, -1), (1, 0), (1, 1)}.

The programs for A151324, there is no canonical definition to state claims against.
-/

/-! ## A151324.P1629338567170613654

`A004526(A368936(n+1)-A000129(n))`
-/

namespace A151324.P1629338567170613654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A368936 (n + 1) - A000129 n).toNat

end

end A151324.P1629338567170613654

/-! ## A151324.P10355246375832429517

`A062298(A153294(n+1)+A002202(n+1))`
-/

namespace A151324.P10355246375832429517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (A153294 (n + 1) + A002202 (n + 1)).toNat

end

end A151324.P10355246375832429517

/-!
# A151325: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0) and consisting of n steps taken from {(-1, -1), (-1, 1), (0, 1), (1, -1), (1, 0), (1, 1)}.

The programs for A151325, there is no canonical definition to state claims against.
-/

/-! ## A151325.P1811766868537119163

`or(A084132(n), A211956(A000051(n)))`
-/

namespace A151325.P1811766868537119163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A084132 n) (A211956 (A000051 n).toNat)

end

end A151325.P1811766868537119163

/-! ## A151325.P17912724532693266251

`A283667(n)+Δ[A177849(A283667(n))]`
-/

namespace A151325.P17912724532693266251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177849 (A283667 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283667 n + (f1 (n + 1) - f1 n)

end

end A151325.P17912724532693266251

/-!
# A151326: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0) and consisting of n steps taken from {(-1, 0), (0, -1), (0, 1), (1, -1), (1, 0), (1, 1)}.

The programs for A151326, there is no canonical definition to state claims against.
-/

/-! ## A151326.P15891434164978826046

`A004396(or(A190724(n), A196545(n+1)))`
-/

namespace A151326.P15891434164978826046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (Int.lor (A190724 n) (A196545 (n + 1))).toNat

end

end A151326.P15891434164978826046

/-!
# A151327: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0) and consisting of n steps taken from {(-1, 1), (-1, 0), (0, 1), (1, -1), (1, 0), (1, 1)}.

The programs for A151327, there is no canonical definition to state claims against.
-/

/-! ## A151327.P16899583705783831471

`A174221(A046729(n))+A026525(n)`
-/

namespace A151327.P16899583705783831471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174221 (A046729 n).toNat + A026525 n

end

end A151327.P16899583705783831471

/-! ## A151327.P14035160078049566530

`A008619(A333579(n)+A001652(n))`
-/

namespace A151327.P14035160078049566530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A333579 n + A001652 n).toNat

end

end A151327.P14035160078049566530

/-!
# A151328: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0) and consisting of n steps taken from {(-1, -1), (-1, 0), (0, -1), (0, 1), (1, -1), (1, 0), (1, 1)}.

The programs for A151328, there is no canonical definition to state claims against.
-/

/-! ## A151328.P16501147274234932833

`A003963(C(5*n+1, n)-∑{d}[n, round(1/#)])`
-/

namespace A151328.P16501147274234932833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 ((Nat.choose (5 * n + 1) n : ℤ) - ∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.roundAway (1 / (d : ℚ))).toNat

end

end A151328.P16501147274234932833

/-!
# A151329: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0) and consisting of n steps taken from {(-1, -1), (-1, 1), (-1, 0), (0, 1), (1, -1), (1, 0), (1, 1)}.

The programs for A151329, there is no canonical definition to state claims against.
-/

/-! ## A151329.P8185066314308611085

`A066508(A232493(n))`
-/

namespace A151329.P8185066314308611085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066508 (A232493 n).toNat

end

end A151329.P8185066314308611085

/-!
# A151330: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0) and consisting of n steps taken from {(-1, 1), (-1, 0), (0, -1), (0, 1), (1, -1), (1, 0), (1, 1)}.

The programs for A151330, there is no canonical definition to state claims against.
-/

/-! ## A151330.P13558141721432123777

`A109613(A203611(2*n+1))`
-/

namespace A151330.P13558141721432123777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A203611 (2 * n + 1)).toNat

end

end A151330.P13558141721432123777

/-! ## A151330.P14393409960285722704

`A195161(or(1, A203611(2*n+1)))`
-/

namespace A151330.P14393409960285722704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195161 (Int.lor 1 (A203611 (2 * n + 1))).toNat

end

end A151330.P14393409960285722704

/-!
# A151331: Number of walks within N^2 (the first quadrant of Z^2) starting at (0, 0) and consisting of n steps taken from {(-1, -1), (-1, 1), (-1, 0), (0, -1), (0, 1), (1, -1), (1, 0), (1, 1)}.

The programs for A151331, there is no canonical definition to state claims against.
-/

/-! ## A151331.P10177650355123369245

`A025595(n)+A000007(A000984(n))`
-/

namespace A151331.P10177650355123369245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025595 n + A000007 (A000984 n).toNat

end

end A151331.P10177650355123369245

/-! ## A151331.P10903803885761150078

`A025595(n)+A007117(A025597(n))`
-/

namespace A151331.P10903803885761150078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025595 n + A007117 (A025597 n).toNat

end

end A151331.P10903803885761150078

/-! ## A151331.P3972980984010585501

`A025595(n)+A000007(A095845(n))`
-/

namespace A151331.P3972980984010585501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025595 n + A000007 (A095845 n).toNat

end

end A151331.P3972980984010585501

/-! ## A151331.P9479064409281517758

`A124763(A011782(n))+A025595(n)`
-/

namespace A151331.P9479064409281517758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124763 (A011782 n).toNat + A025595 n

end

end A151331.P9479064409281517758

/-!
# A151332: Number of walks within N^2 (the first quadrant of Z^2) starting and ending at (0,0) and consisting of 4 n steps taken from {(-1, -1), (-1, 1), (1, 0)}.

The programs for A151332, the canonical program `A151332.P11971355065547530043` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151332 has offset 0).

The definition of A151332 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A151332.P11971355065547530043

`A000108(n)*A000108(2*n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A151332

/-- `A000108(n)*A000108(2*n)` -/
def P11971355065547530043.Spec : Prop :=
  ∀ n, P11971355065547530043.a n = A151332 n

theorem P11971355065547530043.correct : P11971355065547530043.Spec := by
  intro n
  simp only [A151332]

end A151332

/-! ## A151332.P9026342831328164038

`A359647(n)/(2*n+1)`
-/

namespace A151332.P9026342831328164038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359647 n : ℚ) / (2 * n + 1 : ℚ)

end

end A151332.P9026342831328164038

namespace A151332

/-- `A359647(n)/(2*n+1)` -/
def P9026342831328164038.Spec : Prop :=
  ∀ n, P9026342831328164038.a n = (A151332 n : ℚ)

end A151332

/-! ## A151332.P6365855702357387190

`A056040(4*n)*A056040(2*n)/A000384(n+1)`
-/

namespace A151332.P6365855702357387190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056040 (4 * n) * A056040 (2 * n) : ℚ) / (A000384 (n + 1) : ℚ)

end

end A151332.P6365855702357387190

namespace A151332

/-- `A056040(4*n)*A056040(2*n)/A000384(n+1)` -/
def P6365855702357387190.Spec : Prop :=
  ∀ n, P6365855702357387190.a n = (A151332 n : ℚ)

end A151332

/-! ## A151332.P12572583178175594710

`A002293(n)*A006013(n)`
-/

namespace A151332.P12572583178175594710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002293 n * A006013 n

end

end A151332.P12572583178175594710

namespace A151332

/-- `A002293(n)*A006013(n)` -/
def P12572583178175594710.Spec : Prop :=
  ∀ n, P12572583178175594710.a n = A151332 n

end A151332

/-! ## A151332.P6852040161830713521

`A000108(n)*A048990(n)`
-/

namespace A151332.P6852040161830713521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A048990 n

end

end A151332.P6852040161830713521

namespace A151332

/-- `A000108(n)*A048990(n)` -/
def P6852040161830713521.Spec : Prop :=
  ∀ n, P6852040161830713521.a n = A151332 n

end A151332

/-! ## A151332.P9202478834751168451

`A000108(n)*A118919(n²)`
-/

namespace A151332.P9202478834751168451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A118919 (n ^ 2)

end

end A151332.P9202478834751168451

namespace A151332

/-- `A000108(n)*A118919(n²)` -/
def P9202478834751168451.Spec : Prop :=
  ∀ n, P9202478834751168451.a n = A151332 n

end A151332

/-! ## A151332.P3258347675922163648

`A000108(n)*record[A090192(n)]`
-/

namespace A151332.P3258347675922163648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090192 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151332.P3258347675922163648

namespace A151332

/-- `A000108(n)*record[A090192(n)]` -/
def P3258347675922163648.Spec : Prop :=
  ∀ n, P3258347675922163648.a n = A151332 n

end A151332

/-! ## A151332.P6955082023187694758

`record[A000108(n)*A099363(n)]`
-/

namespace A151332.P6955082023187694758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A099363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151332.P6955082023187694758

namespace A151332

/-- `record[A000108(n)*A099363(n)]` -/
def P6955082023187694758.Spec : Prop :=
  ∀ n, P6955082023187694758.a n = A151332 n

end A151332

/-! ## A151332.P13106127596348801859

`record[A000108(n)*A126120(n)]`
-/

namespace A151332.P13106127596348801859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A126120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151332.P13106127596348801859

namespace A151332

/-- `record[A000108(n)*A126120(n)]` -/
def P13106127596348801859.Spec : Prop :=
  ∀ n, P13106127596348801859.a n = A151332 n

end A151332

/-! ## A151332.P2356614925418370213

`A000108(n)*record[A168491(n)]`
-/

namespace A151332.P2356614925418370213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168491 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151332.P2356614925418370213

namespace A151332

/-- `A000108(n)*record[A168491(n)]` -/
def P2356614925418370213.Spec : Prop :=
  ∀ n, P2356614925418370213.a n = A151332 n

end A151332

/-!
# A151333: Number of walks within N^2 (the first quadrant of Z^2) starting and ending at (0,0) and consisting of 2 n steps taken from {(-1, -1), (-1, 1), (0, 1), (1, -1)}.

The programs for A151333, there is no canonical definition to state claims against.
-/

/-! ## A151333.P6993592603549839681

`A036234(A356773(n))-n`
-/

namespace A151333.P6993592603549839681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A356773 n).toNat - (n : ℤ)

end

end A151333.P6993592603549839681

/-! ## A151333.P297037404777752231

`lcm(n-1, A003963(A088160(n)))`
-/

namespace A151333.P297037404777752231
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - 1) (A003963 (A088160 n).toNat)

end

end A151333.P297037404777752231

/-!
# A151338: Triangle read by rows: T(n,k) = number of partitions of [1..k] into n nonempty clumps of sizes 1, 2, 3, 4 or 5 (n >= 0, 0 <= k <= 5n).

The programs for A151338, there is no canonical definition to state claims against.
-/

/-! ## A151338.P3816374261873411785

`A151359(n)+A121373(2^n)`
-/

namespace A151338.P3816374261873411785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151359 n + A121373 (2 ^ n)

end

end A151338.P3816374261873411785

/-! ## A151338.P10747628626634288312

`A154955(2^n)+A151359(n)`
-/

namespace A151338.P10747628626634288312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (2 ^ n) + A151359 n

end

end A151338.P10747628626634288312

/-! ## A151338.P17630962251773360635

`A151359(n-A133985(A000079(n)))`
-/

namespace A151338.P17630962251773360635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151359 ((n : ℤ) - A133985 (A000079 n).toNat).toNat

end

end A151338.P17630962251773360635

/-! ## A151338.P15424099682960992241

`A151359(xor(n, A000089(A000079(n))))`
-/

namespace A151338.P15424099682960992241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151359 (Int.xor (n : ℤ) (A000089 (A000079 n).toNat)).toNat

end

end A151338.P15424099682960992241

/-! ## A151338.P11665257888533642740

`A151359(xor(n, A010052(A000225(n))))`
-/

namespace A151338.P11665257888533642740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151359 (Int.xor (n : ℤ) (A010052 (A000225 n).toNat)).toNat

end

end A151338.P11665257888533642740

/-!
# A151340: Number of walks within N^2 (the first quadrant of Z^2) starting and ending at (0,0) and consisting of n steps taken from {(-1, -1), (-1, 1), (0, 1), (1, -1), (1, 0)}.

The programs for A151340, there is no canonical definition to state claims against.
-/

/-! ## A151340.P16284112848286680947

`A008651(∑[∑[A139055(n+1)]]²)`
-/

namespace A151340.P16284112848286680947
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139055 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A151340.P16284112848286680947

/-! ## A151340.P15324816898066588939

`A131296(A001710(n))*A357901(n)`
-/

namespace A151340.P15324816898066588939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131296 (A001710 n).toNat * A357901 n

end

end A151340.P15324816898066588939

/-! ## A151340.P12201223857461076724

`xor(A010049(n), A065648(A275165(n)))`
-/

namespace A151340.P12201223857461076724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010049 n) (A065648 (A275165 n).toNat)

end

end A151340.P12201223857461076724

/-! ## A151340.P7078812272872392107

`A000700(n)*A232353(A266266(n+1))`
-/

namespace A151340.P7078812272872392107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n * A232353 (A266266 (n + 1)).toNat

end

end A151340.P7078812272872392107

/-!
# A151341: Number of walks within N^2 (the first quadrant of Z^2) starting and ending at (0,0) and consisting of 2 n steps taken from {(-1, -1), (-1, 0), (-1, 1), (1, 0)}.

The programs for A151341, the canonical program `A151341.P3277958052713237890` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151341 has offset 0).

The definition of A151341 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A151341.P3277958052713237890

`A000108(n)*A001006(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A151341

/-- `A000108(n)*A001006(n)` -/
def P3277958052713237890.Spec : Prop :=
  ∀ n, P3277958052713237890.a n = A151341 n

theorem P3277958052713237890.correct : P3277958052713237890.Spec := by
  intro n
  simp only [A151341]

end A151341

/-! ## A151341.P6423914657743287078

`abs(A001006(n)*A168491(n))`
-/

namespace A151341.P6423914657743287078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001006 n * A168491 n|

end

end A151341.P6423914657743287078

namespace A151341

/-- `abs(A001006(n)*A168491(n))` -/
def P6423914657743287078.Spec : Prop :=
  ∀ n, P6423914657743287078.a n = A151341 n

end A151341

/-! ## A151341.P14400136937974717004

`A001006(n)*A039599(∑[n])`
-/

namespace A151341.P14400136937974717004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n * A039599 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A151341.P14400136937974717004

namespace A151341

/-- `A001006(n)*A039599(∑[n])` -/
def P14400136937974717004.Spec : Prop :=
  ∀ n, P14400136937974717004.a n = A151341 n

end A151341

/-! ## A151341.P6744939671436307623

`A000108(n)*A064645(∑[n])`
-/

namespace A151341.P6744939671436307623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A064645 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A151341.P6744939671436307623

namespace A151341

/-- `A000108(n)*A064645(∑[n])` -/
def P6744939671436307623.Spec : Prop :=
  ∀ n, P6744939671436307623.a n = A151341 n

end A151341

/-! ## A151341.P2806674368473516696

`A001006(n)*A085880(∑[n])`
-/

namespace A151341.P2806674368473516696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n * A085880 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A151341.P2806674368473516696

namespace A151341

/-- `A001006(n)*A085880(∑[n])` -/
def P2806674368473516696.Spec : Prop :=
  ∀ n, P2806674368473516696.a n = A151341 n

end A151341

/-! ## A151341.P5476488040599333784

`A000108(n)*Δ[A097332(n)]`
-/

namespace A151341.P5476488040599333784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * (f1 (n + 1) - f1 n)

end

end A151341.P5476488040599333784

namespace A151341

/-- `A000108(n)*Δ[A097332(n)]` -/
def P5476488040599333784.Spec : Prop :=
  ∀ n, P5476488040599333784.a n = A151341 n

end A151341

/-! ## A151341.P6911532312724389331

`A001006(n)*A120588(n+1)`
-/

namespace A151341.P6911532312724389331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n * A120588 (n + 1)

end

end A151341.P6911532312724389331

namespace A151341

/-- `A001006(n)*A120588(n+1)` -/
def P6911532312724389331.Spec : Prop :=
  ∀ n, P6911532312724389331.a n = A151341 n

end A151341

/-! ## A151341.P12369565153873541099

`A166587(n+1)*A168491(n)`
-/

namespace A151341.P12369565153873541099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166587 (n + 1) * A168491 n

end

end A151341.P12369565153873541099

namespace A151341

/-- `A166587(n+1)*A168491(n)` -/
def P12369565153873541099.Spec : Prop :=
  ∀ n, P12369565153873541099.a n = A151341 n

end A151341

/-! ## A151341.P3887530813890292457

`A000108(n)*A086246(n+2)`
-/

namespace A151341.P3887530813890292457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A086246 (n + 2)

end

end A151341.P3887530813890292457

namespace A151341

/-- `A000108(n)*A086246(n+2)` -/
def P3887530813890292457.Spec : Prop :=
  ∀ n, P3887530813890292457.a n = A151341 n

end A151341

/-! ## A151341.P2319244489754023797

`A000108(n)*A168049(n+2)`
-/

namespace A151341.P2319244489754023797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A168049 (n + 2)

end

end A151341.P2319244489754023797

namespace A151341

/-- `A000108(n)*A168049(n+2)` -/
def P2319244489754023797.Spec : Prop :=
  ∀ n, P2319244489754023797.a n = A151341 n

end A151341

/-!
# A151343: Number of walks within N^2 (the first quadrant of Z^2) starting and ending at (0,0) and consisting of 2 n steps taken from {(-1, -1), (-1, 0), (1, -1), (1, 1)}.

The programs for A151343, there is no canonical definition to state claims against.
-/

/-! ## A151343.P17695096986902024591

`A143097(A137971(n)-floor(n/2))`
-/

namespace A151343.P17695096986902024591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143097 (A137971 n - ⌊(n : ℚ) / 2⌋).toNat

end

end A151343.P17695096986902024591

/-! ## A151343.P4431492398480829634

`A246593(A322442(n))+A189052(n)`
-/

namespace A151343.P4431492398480829634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246593 (A322442 n).toNat + A189052 n

end

end A151343.P4431492398480829634

/-!
# A151344: Number of walks within N^2 (the first quadrant of Z^2) starting and ending at (0,0) and consisting of 2 n steps taken from {(-1, -1), (-1, 0), (-1, 1), (1, -1), (1, 0)}.

The programs for A151344, there is no canonical definition to state claims against.
-/

/-! ## A151344.P15961527684116408501

`A129756(A364430(n)+A025235(n))`
-/

namespace A151344.P15961527684116408501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129756 (A364430 n + A025235 n).toNat

end

end A151344.P15961527684116408501

/-! ## A151344.P16209217193870427283

`or(A037203(A305964(n)), A305964(n))`
-/

namespace A151344.P16209217193870427283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A037203 (A305964 n).toNat) (A305964 n)

end

end A151344.P16209217193870427283

/-!
# A151345: Number of walks within N^2 (the first quadrant of Z^2) starting and ending at (0,0) and consisting of 2 n steps taken from {(-1, -1), (-1, 0), (-1, 1), (1, -1), (1, 1)}.

The programs for A151345, there is no canonical definition to state claims against.
-/

/-! ## A151345.P10671897079511813860

`A000108(n)*A291090(n)`
-/

namespace A151345.P10671897079511813860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A291090 n

end

end A151345.P10671897079511813860

/-! ## A151345.P14486468766683268728

`abs(A168491(n)*A291090(n))`
-/

namespace A151345.P14486468766683268728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168491 n * A291090 n|

end

end A151345.P14486468766683268728

/-! ## A151345.P6965660264307660376

`A000108(n)*A214938(2*n)`
-/

namespace A151345.P6965660264307660376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A214938 (2 * n)

end

end A151345.P6965660264307660376

/-! ## A151345.P2002615987107369284

`A126120(2*n)*A291090(n)`
-/

namespace A151345.P2002615987107369284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (2 * n) * A291090 n

end

end A151345.P2002615987107369284

/-! ## A151345.P12093740584611607938

`A089408(Δ[n²])*A291090(n)`
-/

namespace A151345.P12093740584611607938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A291090 n

end

end A151345.P12093740584611607938

/-! ## A151345.P5618817329058412628

`abs(A168491(n)*A214938(2*n))`
-/

namespace A151345.P5618817329058412628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168491 n * A214938 (2 * n)|

end

end A151345.P5618817329058412628

/-! ## A151345.P9969106493214430385

`A126120(2*n)*A214938(2*n)`
-/

namespace A151345.P9969106493214430385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (2 * n) * A214938 (2 * n)

end

end A151345.P9969106493214430385

/-! ## A151345.P743096552566305346

`A089408(2*n+1)*A214938(2*n)`
-/

namespace A151345.P743096552566305346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 (2 * n + 1) * A214938 (2 * n)

end

end A151345.P743096552566305346

/-! ## A151345.P16680379643528766863

`abs(A168491(n))*A214938(A005843(n))`
-/

namespace A151345.P16680379643528766863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168491 n| * A214938 (A005843 n).toNat

end

end A151345.P16680379643528766863

/-!
# A151346: Number of walks within N^2 (the first quadrant of Z^2) starting and ending at (0,0) and consisting of n steps taken from {(-1, 0), (-1, 1), (0, -1), (1, 0)}.

The programs for A151346, there is no canonical definition to state claims against.
-/

/-! ## A151346.P1609681697736537617

`A306814(∑[n])`
-/

namespace A151346.P1609681697736537617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306814 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A151346.P1609681697736537617

/-! ## A151346.P13520711653041646197

`A306814(A000217(n))^ceil(sin(n)²)`
-/

namespace A151346.P13520711653041646197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306814 (A000217 n).toNat : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

end

end A151346.P13520711653041646197

/-! ## A151346.P13691875546348240446

`A306814(A000096(n))*A306814(A000217(n))`
-/

namespace A151346.P13691875546348240446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306814 (A000096 n).toNat * A306814 (A000217 n).toNat

end

end A151346.P13691875546348240446

/-! ## A151346.P8723361109356314437

`A306814(A000217(n))*A352822(A059132(n))`
-/

namespace A151346.P8723361109356314437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306814 (A000217 n).toNat * A352822 (A059132 n).toNat

end

end A151346.P8723361109356314437

/-! ## A151346.P3649247700826732647

`A178489(A072078(n+1))*A306814(A000217(n))`
-/

namespace A151346.P3649247700826732647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 (A072078 (n + 1)).toNat * A306814 (A000217 n).toNat

end

end A151346.P3649247700826732647

/-! ## A151346.P8506344940333245191

`A306814(A000217(n))*A361239(A352427(n+1))`
-/

namespace A151346.P8506344940333245191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306814 (A000217 n).toNat * A361239 (A352427 (n + 1)).toNat

end

end A151346.P8506344940333245191

/-! ## A151346.P17017765745937507519

`A306814(A000217(n))%A003500(n)`
-/

namespace A151346.P17017765745937507519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306814 (A000217 n).toNat) (A003500 n)

end

end A151346.P17017765745937507519

/-! ## A151346.P15945230424531621958

`A199915(A131179(n))`
-/

namespace A151346.P15945230424531621958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199915 (A131179 n).toNat

end

end A151346.P15945230424531621958

/-! ## A151346.P8550782545316126579

`A199915(A133263(n)-(n+1))`
-/

namespace A151346.P8550782545316126579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199915 (A133263 n - (n + 1 : ℤ)).toNat

end

end A151346.P8550782545316126579

/-! ## A151346.P16917301048978294308

`A199915(A133263(n)-1-n)`
-/

namespace A151346.P16917301048978294308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199915 (A133263 n - 1 - (n : ℤ)).toNat

end

end A151346.P16917301048978294308

/-! ## A151346.P18286118036224699547

`A199915(∑[n])`
-/

namespace A151346.P18286118036224699547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199915 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A151346.P18286118036224699547

/-! ## A151346.P15821537031906489108

`A000688(A151800(n))*A199915(A000217(n))`
-/

namespace A151346.P15821537031906489108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A151800 n).toNat * A199915 (A000217 n).toNat

end

end A151346.P15821537031906489108

/-! ## A151346.P693151022367494114

`A306814(A000217(n))^A002262(A000124(n))`
-/

namespace A151346.P693151022367494114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306814 (A000217 n).toNat : ℚ) ^ (A002262 (A000124 n).toNat : ℤ)

end

end A151346.P693151022367494114

/-! ## A151346.P7881300560633609717

`A199915(A000217(n))+A053392(A301957(n+1))`
-/

namespace A151346.P7881300560633609717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199915 (A000217 n).toNat + A053392 (A301957 (n + 1)).toNat

end

end A151346.P7881300560633609717

/-!
# A151354: Number of walks within N^2 (the first quadrant of Z^2) starting and ending at (0,0) and consisting of n steps taken from {(-1, -1), (-1, 0), (-1, 1), (0, 1), (1, 0)}.

The programs for A151354, there is no canonical definition to state claims against.
-/

/-! ## A151354.P15124562260781683762

`A003056(A123406(n+1))-round(2*n/3)`
-/

namespace A151354.P15124562260781683762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A123406 (n + 1)).toNat - SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))

end

end A151354.P15124562260781683762

/-! ## A151354.P10290620478959391727

`A003056(A123416(n+1))-round(2*n/3)`
-/

namespace A151354.P10290620478959391727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A123416 (n + 1)).toNat - SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))

end

end A151354.P10290620478959391727

/-! ## A151354.P17982025788593238652

`A277194(A148239(n)+A077973(n))`
-/

namespace A151354.P17982025788593238652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277194 (A148239 n + A077973 n).toNat

end

end A151354.P17982025788593238652

/-!
# A151355: Number of walks within N^2 (the first quadrant of Z^2) starting and ending at (0,0) and consisting of n steps taken from {(-1, -1), (-1, 0), (-1, 1), (0, -1), (1, 1)}.

The programs for A151355, there is no canonical definition to state claims against.
-/

/-! ## A151355.P2551667968212546248

`A093129(n)-A004526(A000692(2*n))`
-/

namespace A151355.P2551667968212546248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093129 n - A004526 (A000692 (2 * n)).toNat

end

end A151355.P2551667968212546248

/-! ## A151355.P18394164626346939740

`A178976(A006456(2*n+1))+A010102(n*A106823(n))`
-/

namespace A151355.P18394164626346939740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178976 (A006456 (2 * n + 1)).toNat + A010102 ((n : ℤ) * A106823 n).toNat

end

end A151355.P18394164626346939740

/-!
# A151356: Number of walks within N^2 (the first quadrant of Z^2) starting and ending at (0,0) and consisting of n steps taken from {(-1, -1), (-1, 0), (-1, 1), (0, -1), (1, -1), (1, 1)}.

The programs for A151356, there is no canonical definition to state claims against.
-/

/-! ## A151356.P5189451626508507242

`A347609(∑{e}[n+1, #]+2^n-2^ceil(n/2))`
-/

namespace A151356.P5189451626508507242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347609 (SequenceMachineLib.roundAway (((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℚ) + ((2 ^ n : ℚ) - (2 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ)))).toNat

end

end A151356.P5189451626508507242

/-! ## A151356.P13539500800879963033

`A265524(A288539(n))`
-/

namespace A151356.P13539500800879963033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265524 (A288539 n).toNat

end

end A151356.P13539500800879963033

/-!
# A151358: Number of walks within N^2 (the first quadrant of Z^2) starting and ending at (0,0) and consisting of n steps taken from {(-1, -1), (-1, 0), (-1, 1), (0, 1), (1, -1), (1, 0)}.

The programs for A151358, there is no canonical definition to state claims against.
-/

/-! ## A151358.P8751162987907571106

`A357864(6*a(n-2))` with `a(0)=1, a(1)=0, a(2)=1, a(3)=3`
-/

namespace A151358.P8751162987907571106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 3] fun n a =>
  A357864 (6 * a (n - 2)).toNat

end

end A151358.P8751162987907571106

/-! ## A151358.P7863633943720781051

`A092858(a(n-1)+6)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=3, a(4)=7`
-/

namespace A151358.P7863633943720781051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 3, 7] fun n a =>
  A092858 (a (n - 1) + 6).toNat

end

end A151358.P7863633943720781051

/-!
# A151359: Triangle read by rows: T(n,k) = number of partitions of [1..k] into n nonempty clumps of sizes 1, 2, 3, 4, 5 or 6 (n >= 0, 0 <= k <= 6n).

The programs for A151359, there is no canonical definition to state claims against.
-/

/-! ## A151359.P14778802675015016899

`abs(A104144(A187829(n+1))-A057427(n))`
-/

namespace A151359.P14778802675015016899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A104144 (A187829 (n + 1)).toNat - A057427 n|

end

end A151359.P14778802675015016899

/-! ## A151359.P13520022643442354272

`A151338(n)-A154955(2^n)`
-/

namespace A151359.P13520022643442354272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151338 n - A154955 (2 ^ n)

end

end A151359.P13520022643442354272

/-! ## A151359.P7870984969811152885

`abs(floor(A208663(n+1)/64)-A178334(n))`
-/

namespace A151359.P7870984969811152885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊(A208663 (n + 1) : ℚ) / 64⌋ - A178334 n|

end

end A151359.P7870984969811152885

/-! ## A151359.P14933405546895988957

`A151338(A000089(A000079(n))+n)`
-/

namespace A151359.P14933405546895988957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151338 (A000089 (A000079 n).toNat + (n : ℤ)).toNat

end

end A151359.P14933405546895988957

/-! ## A151359.P10902500781285350117

`A151338(A010052(A000225(n))+n)`
-/

namespace A151359.P10902500781285350117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151338 (A010052 (A000225 n).toNat + (n : ℤ)).toNat

end

end A151359.P10902500781285350117

/-!
# A151360: Lunar sum of n-th lunar prime and 9.

The programs for A151360, there is no canonical definition to state claims against.
-/

/-! ## A151360.P10433925154197833375

`A087121(A087097(n+1))`
-/

namespace A151360.P10433925154197833375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087121 (A087097 (n + 1)).toNat

end

end A151360.P10433925154197833375

/-! ## A151360.P3968802383584335562

`A087121(A011539(n+2))`
-/

namespace A151360.P3968802383584335562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087121 (A011539 (n + 2)).toNat

end

end A151360.P3968802383584335562

/-! ## A151360.P4098140791807813625

`A087121(A088479(n+2))`
-/

namespace A151360.P4098140791807813625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087121 (A088479 (n + 2)).toNat

end

end A151360.P4098140791807813625

/-! ## A151360.P10263955694672039478

`A087121(A144171(n+2))`
-/

namespace A151360.P10263955694672039478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087121 (A144171 (n + 2)).toNat

end

end A151360.P10263955694672039478

/-! ## A151360.P14056919320244423531

`A087121(eq[2, A087028(n+1)]+1)`
-/

namespace A151360.P14056919320244423531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087028 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087121 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A151360.P14056919320244423531

/-!
# A151361: Number of walks within N^2 (the first quadrant of Z^2) starting and ending at (0,0) and consisting of 2 n steps taken from {(-1, -1), (-1, 0), (-1, 1), (1, 0), (1, 1)}.

The programs for A151361, there is no canonical definition to state claims against.
-/

/-! ## A151361.P6789479497275261903

`A341307(Δ[A229836(n+1)])`
-/

namespace A151361.P6789479497275261903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341307 (f1 (n + 1) - f1 n).toNat

end

end A151361.P6789479497275261903

/-!
# A151362: Number of walks within N^2 (the first quadrant of Z^2) starting and ending at (0,0) and consisting of 2*n steps taken from {(-1, -1), (-1, 0), (-1, 1), (1, -1), (1, 0), (1, 1)}.

The programs for A151362, there is no canonical definition to state claims against.
-/

/-! ## A151362.P2079876246798735080

`A000108(n)*A026945(n)`
-/

namespace A151362.P2079876246798735080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A026945 n

end

end A151362.P2079876246798735080

/-! ## A151362.P9130351412985753703

`record[A001006(n)*A126120(n)]`
-/

namespace A151362.P9130351412985753703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n * A126120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151362.P9130351412985753703

/-! ## A151362.P1653717822897101129

`A000108(n)*record[A166587(n)]`
-/

namespace A151362.P1653717822897101129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151362.P1653717822897101129

/-! ## A151362.P9290205488645978302

`A000108(n)*A001006(2*n)`
-/

namespace A151362.P9290205488645978302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A001006 (2 * n)

end

end A151362.P9290205488645978302

/-! ## A151362.P6893689749917544443

`abs(record[A166587(n)]*A168491(n))`
-/

namespace A151362.P6893689749917544443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A168491 n|

end

end A151362.P6893689749917544443

/-! ## A151362.P11062179328166840522

`abs(A001006(2*n)*A168491(n))`
-/

namespace A151362.P11062179328166840522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001006 (2 * n) * A168491 n|

end

end A151362.P11062179328166840522

/-! ## A151362.P5208751299164330753

`A001006(2*n)*A039599(∑[n])`
-/

namespace A151362.P5208751299164330753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (2 * n) * A039599 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A151362.P5208751299164330753

/-! ## A151362.P13470276240016127495

`A001006(2*n)*A085880(∑[n])`
-/

namespace A151362.P13470276240016127495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (2 * n) * A085880 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A151362.P13470276240016127495

/-! ## A151362.P4366972144532024862

`record[A001006(n)*A097331(n+1)]`
-/

namespace A151362.P4366972144532024862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n * A097331 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151362.P4366972144532024862

/-! ## A151362.P18162386463253150759

`A001006(2*n)*A120588(n+1)`
-/

namespace A151362.P18162386463253150759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (2 * n) * A120588 (n + 1)

end

end A151362.P18162386463253150759

/-!
# A151364: Number of walks within N^2 (the first quadrant of Z^2) starting and ending at (0,0) and consisting of n steps taken from {(-1, -1), (-1, 0), (0, -1), (0, 1), (1, 0)}.

The programs for A151364, there is no canonical definition to state claims against.
-/

/-! ## A151364.P32780690603474430

`A035327(n)+A008617(A028270(n))`
-/

namespace A151364.P32780690603474430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 n + A008617 (A028270 n).toNat

end

end A151364.P32780690603474430

/-!
# A151365: Number of walks within N^2 (the first quadrant of Z^2) starting and ending at (0,0) and consisting of n steps taken from {(-1, -1), (-1, 0), (0, -1), (0, 1), (1, 1)}.

The programs for A151365, there is no canonical definition to state claims against.
-/

/-! ## A151365.P10590948787641675049

`A379309(A130141(n)+n²)`
-/

namespace A151365.P10590948787641675049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379309 (A130141 n + (n ^ 2 : ℤ)).toNat

end

end A151365.P10590948787641675049

/-! ## A151365.P231819854613031328

`A000041(2*n+1)%p?[A240201(2*(n+2))]`
-/

namespace A151365.P231819854613031328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240201 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 (2 * n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A151365.P231819854613031328

/-! ## A151365.P14196918239989926939

`A203852(n)+A145814(A290268(n))`
-/

namespace A151365.P14196918239989926939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203852 n + A145814 (A290268 n).toNat

end

end A151365.P14196918239989926939

/-!
# A151366: Number of walks within N^2 (the first quadrant of Z^2) starting and ending at (0,0) and consisting of n steps taken from {(-1, 0), (-1, 1), (0, -1), (0, 1), (1, -1), (1, 0)}.

The programs for A151366, there is no canonical definition to state claims against.
-/

/-! ## A151366.P3853786356554647486

`A054503(n)+A003056(A184949(n))`
-/

namespace A151366.P3853786356554647486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054503 n + A003056 (A184949 n).toNat

end

end A151366.P3853786356554647486

/-! ## A151366.P14262702139103952634

`A304707(A000292(n))-A053284(n)`
-/

namespace A151366.P14262702139103952634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304707 (A000292 n).toNat - A053284 n

end

end A151366.P14262702139103952634

/-! ## A151366.P8655908836242654446

`A006355(n)*A132743(A000285(n))`
-/

namespace A151366.P8655908836242654446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 n * A132743 (A000285 n).toNat

end

end A151366.P8655908836242654446

/-!
# A151367: Number of walks within N^2 (the first quadrant of Z^2) starting and ending at (0,0) and consisting of n steps taken from {(-1, -1), (-1, 0), (-1, 1), (0, -1), (0, 1), (1, 1)}.

The programs for A151367, there is no canonical definition to state claims against.
-/

/-! ## A151367.P7908136184411744427

`A221463(n+1)+A003056(A371143(n))`
-/

namespace A151367.P7908136184411744427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221463 (n + 1) + A003056 (A371143 n).toNat

end

end A151367.P7908136184411744427

/-! ## A151367.P1411045417380039156

`A002260(A096161(n+1))*A008671(n)`
-/

namespace A151367.P1411045417380039156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A096161 (n + 1)).toNat * A008671 n

end

end A151367.P1411045417380039156

/-! ## A151367.P1095747739843544343

`A002260(A096161(n+1))*A167865(n)`
-/

namespace A151367.P1095747739843544343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A096161 (n + 1)).toNat * A167865 n

end

end A151367.P1095747739843544343

/-!
# A151368: Number of walks within N^2 (the first quadrant of Z^2) starting and ending at (0,0) and consisting of n steps taken from {(-1, -1), (-1, 0), (-1, 1), (0, -1), (0, 1), (1, 0)}.

The programs for A151368, there is no canonical definition to state claims against.
-/

/-! ## A151368.P3845300044887416107

`A268236(A340652(n+1))`
-/

namespace A151368.P3845300044887416107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268236 (A340652 (n + 1)).toNat

end

end A151368.P3845300044887416107

/-! ## A151368.P4157198136350530850

`A219610(n)+A025428(A081038(n))`
-/

namespace A151368.P4157198136350530850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219610 n + A025428 (A081038 n).toNat

end

end A151368.P4157198136350530850

/-! ## A151368.P5686041347543335405

`A054404(A340329(n)+A033999(n))`
-/

namespace A151368.P5686041347543335405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A340329 n + A033999 n).toNat

end

end A151368.P5686041347543335405

/-!
# A151369: Number of walks within N^2 (the first quadrant of Z^2) starting and ending at (0,0) and consisting of n steps taken from {(-1, -1), (-1, 0), (-1, 1), (0, -1), (1, 0), (1, 1)}.

The programs for A151369, there is no canonical definition to state claims against.
-/

/-! ## A151369.P17099295848215566111

`A283468(A246030(n))`
-/

namespace A151369.P17099295848215566111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283468 (A246030 n).toNat

end

end A151369.P17099295848215566111

/-! ## A151369.P4603151948640410711

`A321878(n)+A165190(A024037(n))`
-/

namespace A151369.P4603151948640410711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321878 n + A165190 (A024037 n).toNat

end

end A151369.P4603151948640410711

/-! ## A151369.P11370639150932819203

`A194640(A047974(n)-A025581(n))`
-/

namespace A151369.P11370639150932819203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A047974 n - A025581 n).toNat

end

end A151369.P11370639150932819203

/-!
# A151370: Number of walks within N^2 (the first quadrant of Z^2) starting and ending at (0,0) and consisting of n steps taken from {(-1, -1), (-1, 0), (-1, 1), (0, -1), (0, 1), (1, -1), (1, 1)}.

The programs for A151370, there is no canonical definition to state claims against.
-/

/-! ## A151370.P95163058568198130

`A194064(A000930(2*n))*A212804(n)`
-/

namespace A151370.P95163058568198130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194064 (A000930 (2 * n)).toNat * A212804 n

end

end A151370.P95163058568198130

/-!
# A151371: Number of walks within N^2 (the first quadrant of Z^2) starting and ending at (0,0) and consisting of n steps taken from {(-1, -1), (-1, 0), (-1, 1), (0, -1), (0, 1), (1, -1), (1, 0)}.

The programs for A151371, there is no canonical definition to state claims against.
-/

/-! ## A151371.P12558224843181362018

`A254011(A000225(n)²+6)`
-/

namespace A151371.P12558224843181362018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254011 (A000225 n ^ 2 + 6).toNat

end

end A151371.P12558224843181362018

/-! ## A151371.P4872925953406666793

`A254011(or(6, A000225(n)²))`
-/

namespace A151371.P4872925953406666793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254011 (Int.lor 6 (A000225 n ^ 2)).toNat

end

end A151371.P4872925953406666793

/-! ## A151371.P8438759147578086912

`A008618(2*A151052(n)-n)`
-/

namespace A151371.P8438759147578086912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (2 * A151052 n - (n : ℤ)).toNat

end

end A151371.P8438759147578086912

/-!
# A151373: Number of walks within N^2 (the first quadrant of Z^2) starting and ending at (0,0) and consisting of n steps taken from {(-1, -1), (-1, 0), (-1, 1), (0, -1), (0, 1), (1, 0), (1, 1)}.

The programs for A151373, there is no canonical definition to state claims against.
-/

/-! ## A151373.P7488523151612631753

`A051933(∏[∑[A326557(n)]])`
-/

namespace A151373.P7488523151612631753
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326557 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051933 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A151373.P7488523151612631753

/-! ## A151373.P15326268391825330452

`A005210(A277463(n)+A080568(n))`
-/

namespace A151373.P15326268391825330452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005210 (A277463 n + A080568 n).toNat

end

end A151373.P15326268391825330452

/-!
# A151374: Number of walks within N^2 (the first quadrant of Z^2) starting at (0, 0), ending on the vertical axis and consisting of 2n steps taken from {(-1, -1), (-1, 0), (1, 1)}.

The programs for A151374, the canonical program `A151374.P6151249607190276974` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151374 has offset 0).

The definition of A151374 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A151374.P6151249607190276974

`2^n*A000108(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A151374

/-- `2^n*A000108(n)` -/
def P6151249607190276974.Spec : Prop :=
  ∀ n, P6151249607190276974.a n = A151374 n

theorem P6151249607190276974.correct : P6151249607190276974.Spec := by
  intro n
  simp only [A151374]

end A151374

/-! ## A151374.P4285913532390305530

`C(2*n, n)/(n+1)*2^n`
-/

namespace A151374.P4285913532390305530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ) * (2 ^ n : ℚ)

end

end A151374.P4285913532390305530

namespace A151374

/-- `C(2*n, n)/(n+1)*2^n` -/
def P4285913532390305530.Spec : Prop :=
  ∀ n, P4285913532390305530.a n = (A151374 n : ℚ)

end A151374

/-! ## A151374.P6743147796460543724

`(2-3/(n+1))*4*a(n-1)` with `a(0)=1`
-/

namespace A151374.P6743147796460543724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (2 - 3 / (n + 1 : ℚ)) * (4 * a (n - 1))

end

end A151374.P6743147796460543724

namespace A151374

/-- `(2-3/(n+1))*4*a(n-1)` -/
def P6743147796460543724.Spec : Prop :=
  ∀ n, P6743147796460543724.a n = (A151374 n : ℚ)

end A151374

/-! ## A151374.P13476369035825072970

`record[A110510(n)]`
-/

namespace A151374.P13476369035825072970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110510 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151374.P13476369035825072970

namespace A151374

/-- `record[A110510(n)]` -/
def P13476369035825072970.Spec : Prop :=
  ∀ n, P13476369035825072970.a n = A151374 n

end A151374

/-! ## A151374.P12510202546874260634

`A052701(n+1)`
-/

namespace A151374.P12510202546874260634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052701 (n + 1)

end

end A151374.P12510202546874260634

namespace A151374

/-- `A052701(n+1)` -/
def P12510202546874260634.Spec : Prop :=
  ∀ n, P12510202546874260634.a n = A151374 n

end A151374

/-! ## A151374.P2042001617344578278

`abs(A114193(∑[n]))`
-/

namespace A151374.P2042001617344578278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A114193 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A151374.P2042001617344578278

namespace A151374

/-- `abs(A114193(∑[n]))` -/
def P2042001617344578278.Spec : Prop :=
  ∀ n, P2042001617344578278.a n = A151374 n

end A151374

/-! ## A151374.P4262553442419170192

`∑[abs(Δ[A052701(n)])]`
-/

namespace A151374.P4262553442419170192
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052701 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151374.P4262553442419170192

namespace A151374

/-- `∑[abs(Δ[A052701(n)])]` -/
def P4262553442419170192.Spec : Prop :=
  ∀ n, P4262553442419170192.a n = A151374 n

end A151374

/-! ## A151374.P6346404742323540499

`A025225(n+1)/2`
-/

namespace A151374.P6346404742323540499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025225 (n + 1) : ℚ) / 2

end

end A151374.P6346404742323540499

namespace A151374

/-- `A025225(n+1)/2` -/
def P6346404742323540499.Spec : Prop :=
  ∀ n, P6346404742323540499.a n = (A151374 n : ℚ)

end A151374

/-! ## A151374.P17192337567620147691

`A115125(n+1)/2`
-/

namespace A151374.P17192337567620147691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115125 (n + 1) : ℚ) / 2

end

end A151374.P17192337567620147691

namespace A151374

/-- `A115125(n+1)/2` -/
def P17192337567620147691.Spec : Prop :=
  ∀ n, P17192337567620147691.a n = (A151374 n : ℚ)

end A151374

/-! ## A151374.P4650189182913668525

`abs(A110292(∑[n+1]))`
-/

namespace A151374.P4650189182913668525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A110292 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A151374.P4650189182913668525

namespace A151374

/-- `abs(A110292(∑[n+1]))` -/
def P4650189182913668525.Spec : Prop :=
  ∀ n, P4650189182913668525.a n = A151374 n

end A151374

/-! ## A151374.P8721045225176692071

`abs(Δ[A114191(n)/2])`
-/

namespace A151374.P8721045225176692071
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114191 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A151374.P8721045225176692071

namespace A151374

/-- `abs(Δ[A114191(n)/2])` -/
def P8721045225176692071.Spec : Prop :=
  ∀ n, P8721045225176692071.a n = (A151374 n : ℚ)

end A151374

/-! ## A151374.P17151297129324550906

`record[A052701(abs(1-n))]`
-/

namespace A151374.P17151297129324550906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052701 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151374.P17151297129324550906

namespace A151374

/-- `record[A052701(abs(1-n))]` -/
def P17151297129324550906.Spec : Prop :=
  ∀ n, P17151297129324550906.a n = A151374 n

end A151374

/-! ## A151374.P13647554287087892992

`A110510(∑[n+1]+1)`
-/

namespace A151374.P13647554287087892992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110510 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A151374.P13647554287087892992

namespace A151374

/-- `A110510(∑[n+1]+1)` -/
def P13647554287087892992.Spec : Prop :=
  ∀ n, P13647554287087892992.a n = A151374 n

end A151374

/-! ## A151374.P16093136681904538959

`2^n*A120588(n+1)`
-/

namespace A151374.P16093136681904538959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A120588 (n + 1)

end

end A151374.P16093136681904538959

namespace A151374

/-- `2^n*A120588(n+1)` -/
def P16093136681904538959.Spec : Prop :=
  ∀ n, P16093136681904538959.a n = A151374 n

end A151374

/-! ## A151374.P11885753980173220633

`A000108(n)*A000079(n)`
-/

namespace A151374.P11885753980173220633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A000079 n

end

end A151374.P11885753980173220633

namespace A151374

/-- `A000108(n)*A000079(n)` -/
def P11885753980173220633.Spec : Prop :=
  ∀ n, P11885753980173220633.a n = A151374 n

theorem P11885753980173220633.correct : P11885753980173220633.Spec := by
  intro n
  simp only [A151374, Nat.add_sub_cancel, A151374.P11885753980173220633.a, A151374.P6151249607190276974.a, A000079, A000079.P10855139691139572931.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A151374

/-! ## A151374.P16815147133076179408

`A011782(n)*A068875(n)`
-/

namespace A151374.P16815147133076179408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A068875 n

end

end A151374.P16815147133076179408

namespace A151374

/-- `A011782(n)*A068875(n)` -/
def P16815147133076179408.Spec : Prop :=
  ∀ n, P16815147133076179408.a n = A151374 n

end A151374

/-! ## A151374.P12110245507786348730

`A122803(n)*A168491(n)`
-/

namespace A151374.P12110245507786348730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 n * A168491 n

end

end A151374.P12110245507786348730

namespace A151374

/-- `A122803(n)*A168491(n)` -/
def P12110245507786348730.Spec : Prop :=
  ∀ n, P12110245507786348730.a n = A151374 n

end A151374

/-! ## A151374.P1891056038209549544

`abs(A000079(n)*A168491(n))`
-/

namespace A151374.P1891056038209549544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n * A168491 n|

end

end A151374.P1891056038209549544

namespace A151374

/-- `abs(A000079(n)*A168491(n))` -/
def P1891056038209549544.Spec : Prop :=
  ∀ n, P1891056038209549544.a n = A151374 n

end A151374

/-! ## A151374.P8650879295215768388

`A000108(n)*∑[A011782(n)]`
-/

namespace A151374.P8650879295215768388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A151374.P8650879295215768388

namespace A151374

/-- `A000108(n)*∑[A011782(n)]` -/
def P8650879295215768388.Spec : Prop :=
  ∀ n, P8650879295215768388.a n = A151374 n

end A151374

/-!
# A151375: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, -1), (0, 1), (1, -1)}.

The programs for A151375, there is no canonical definition to state claims against.
-/

/-! ## A151375.P12638134487737018618

`A185958(A353332(n!))`
-/

namespace A151375.P12638134487737018618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185958 (A353332 (Nat.factorial n)).toNat

end

end A151375.P12638134487737018618

/-! ## A151375.P816806591158401622

`∑[A000196(A353999(n))]`
-/

namespace A151375.P816806591158401622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A353999 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151375.P816806591158401622

/-! ## A151375.P5057335829772223076

`∑[A261915(A356963(n))]`
-/

namespace A151375.P5057335829772223076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261915 (A356963 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151375.P5057335829772223076

/-! ## A151375.P3767175077453621299

`A382460(A243927(n+2))`
-/

namespace A151375.P3767175077453621299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382460 (A243927 (n + 2)).toNat

end

end A151375.P3767175077453621299

/-! ## A151375.P1102555794251819204

`filter[A365696(n+1), A291291(#)]`
-/

namespace A151375.P1102555794251819204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365696 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A291291 (f1 j).toNat = 1) n)

end

end A151375.P1102555794251819204

/-!
# A151378: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, 0), (0, 1), (1, -1)}.

The programs for A151378, there is no canonical definition to state claims against.
-/

/-! ## A151378.P7389118412348034512

`A001006(n)-A369591(n+1)`
-/

namespace A151378.P7389118412348034512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n - A369591 (n + 1)

end

end A151378.P7389118412348034512

/-! ## A151378.P6353940683123570067

`Δ[A097332(n)]-A369591(n+1)`
-/

namespace A151378.P6353940683123570067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A369591 (n + 1)

end

end A151378.P6353940683123570067

/-! ## A151378.P8370882207504472865

`A086246(n+2)-A369591(n+1)`
-/

namespace A151378.P8370882207504472865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086246 (n + 2) - A369591 (n + 1)

end

end A151378.P8370882207504472865

/-! ## A151378.P10946685733336123642

`A168049(n+2)-A369591(n+1)`
-/

namespace A151378.P10946685733336123642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168049 (n + 2) - A369591 (n + 1)

end

end A151378.P10946685733336123642

/-! ## A151378.P2193612475408005922

`abs(A166587(n+1))-A369591(n+1)`
-/

namespace A151378.P2193612475408005922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A166587 (n + 1)| - A369591 (n + 1)

end

end A151378.P2193612475408005922

/-!
# A151379: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of 2 n steps taken from {(-1, 0), (1, -1), (1, 1)}.

The programs for A151379, the canonical program `A151379.P9308240679488838263` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151379 has offset 0).

The definition of A151379 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A151379.P9308240679488838263

`A000108(n)*C(n, floor(n/2))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A151379

/-- `A000108(n)*C(n, floor(n/2))` -/
def P9308240679488838263.Spec : Prop :=
  ∀ n, P9308240679488838263.a n = A151379 n

theorem P9308240679488838263.correct : P9308240679488838263.Spec := by
  intro n
  simp only [A151379]

end A151379

/-! ## A151379.P5383149857980499303

`A085880(A194274(n))`
-/

namespace A151379.P5383149857980499303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085880 (A194274 n).toNat

end

end A151379.P5383149857980499303

namespace A151379

/-- `A085880(A194274(n))` -/
def P5383149857980499303.Spec : Prop :=
  ∀ n, P5383149857980499303.a n = A151379 n

end A151379

/-! ## A151379.P15430376412590329426

`A085880(A007590(n+1))`
-/

namespace A151379.P15430376412590329426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085880 (A007590 (n + 1)).toNat

end

end A151379.P15430376412590329426

namespace A151379

/-- `A085880(A007590(n+1))` -/
def P15430376412590329426.Spec : Prop :=
  ∀ n, P15430376412590329426.a n = A151379 n

end A151379

/-! ## A151379.P5149580010200419209

`A085880(A080476(n+1))`
-/

namespace A151379.P5149580010200419209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085880 (A080476 (n + 1)).toNat

end

end A151379.P5149580010200419209

namespace A151379

/-- `A085880(A080476(n+1))` -/
def P5149580010200419209.Spec : Prop :=
  ∀ n, P5149580010200419209.a n = A151379 n

end A151379

/-! ## A151379.P8097147429992339898

`A000108(n)*A001405(n)`
-/

namespace A151379.P8097147429992339898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A001405 n

end

end A151379.P8097147429992339898

namespace A151379

/-- `A000108(n)*A001405(n)` -/
def P8097147429992339898.Spec : Prop :=
  ∀ n, P8097147429992339898.a n = A151379 n

end A151379

/-! ## A151379.P10134152750288825711

`A126930(n)*A168491(n)`
-/

namespace A151379.P10134152750288825711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 n * A168491 n

end

end A151379.P10134152750288825711

namespace A151379

/-- `A126930(n)*A168491(n)` -/
def P10134152750288825711.Spec : Prop :=
  ∀ n, P10134152750288825711.a n = A151379 n

end A151379

/-! ## A151379.P15710377098209034373

`A099578(n)*A369082(n)`
-/

namespace A151379.P15710377098209034373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099578 n * A369082 n

end

end A151379.P15710377098209034373

namespace A151379

/-- `A099578(n)*A369082(n)` -/
def P15710377098209034373.Spec : Prop :=
  ∀ n, P15710377098209034373.a n = A151379 n

end A151379

/-! ## A151379.P1578976712752916756

`abs(A000108(n)*A126930(n))`
-/

namespace A151379.P1578976712752916756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000108 n * A126930 n|

end

end A151379.P1578976712752916756

namespace A151379

/-- `abs(A000108(n)*A126930(n))` -/
def P1578976712752916756.Spec : Prop :=
  ∀ n, P1578976712752916756.a n = A151379 n

end A151379

/-! ## A151379.P1093329827035858423

`abs(A001405(n)*A168491(n))`
-/

namespace A151379.P1093329827035858423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001405 n * A168491 n|

end

end A151379.P1093329827035858423

namespace A151379

/-- `abs(A001405(n)*A168491(n))` -/
def P1093329827035858423.Spec : Prop :=
  ∀ n, P1093329827035858423.a n = A151379 n

end A151379

/-! ## A151379.P9763684490873543957

`sqrt(A018224(n))*A000108(n)`
-/

namespace A151379.P9763684490873543957
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A018224 n : ℝ) * (A000108 n : ℝ)

end

end A151379.P9763684490873543957

namespace A151379

/-- `sqrt(A018224(n))*A000108(n)` -/
def P9763684490873543957.Spec : Prop :=
  ∀ n, P9763684490873543957.a n = (A151379 n : ℝ)

end A151379

/-! ## A151379.P1670572490205126151

`A001405(n)*A039599(∑[n])`
-/

namespace A151379.P1670572490205126151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n * A039599 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A151379.P1670572490205126151

namespace A151379

/-- `A001405(n)*A039599(∑[n])` -/
def P1670572490205126151.Spec : Prop :=
  ∀ n, P1670572490205126151.a n = A151379 n

end A151379

/-! ## A151379.P115210905558955911

`(A014495(n)+1)*A000108(n)`
-/

namespace A151379.P115210905558955911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014495 n + 1) * A000108 n

end

end A151379.P115210905558955911

namespace A151379

/-- `(A014495(n)+1)*A000108(n)` -/
def P115210905558955911.Spec : Prop :=
  ∀ n, P115210905558955911.a n = A151379 n

theorem P115210905558955911.correct : P115210905558955911.Spec := by
  intro n
  simp only [A151379, Nat.add_sub_cancel, A151379.P115210905558955911.a, A151379.P9308240679488838263.a, A000108, A000108.P17551949696095299361.a, A014495, A014495.P8648755420632744383.a, A001405, A001405.P5205018418992951678.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A151379

/-! ## A151379.P10739346666817431483

`A001405(n)*A120588(n+1)`
-/

namespace A151379.P10739346666817431483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n * A120588 (n + 1)

end

end A151379.P10739346666817431483

namespace A151379

/-- `A001405(n)*A120588(n+1)` -/
def P10739346666817431483.Spec : Prop :=
  ∀ n, P10739346666817431483.a n = A151379 n

end A151379

/-! ## A151379.P13760360981624649894

`A000108(n)*A210736(n+1)`
-/

namespace A151379.P13760360981624649894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A210736 (n + 1)

end

end A151379.P13760360981624649894

namespace A151379

/-- `A000108(n)*A210736(n+1)` -/
def P13760360981624649894.Spec : Prop :=
  ∀ n, P13760360981624649894.a n = A151379 n

end A151379

/-! ## A151379.P16539270196912886427

`A001405(n)*A028303(2*n)`
-/

namespace A151379.P16539270196912886427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n * A028303 (2 * n)

end

end A151379.P16539270196912886427

namespace A151379

/-- `A001405(n)*A028303(2*n)` -/
def P16539270196912886427.Spec : Prop :=
  ∀ n, P16539270196912886427.a n = A151379 n

end A151379

/-! ## A151379.P1308215016729467215

`A001405(n)*A028304(2*n)`
-/

namespace A151379.P1308215016729467215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n * A028304 (2 * n)

end

end A151379.P1308215016729467215

namespace A151379

/-- `A001405(n)*A028304(2*n)` -/
def P1308215016729467215.Spec : Prop :=
  ∀ n, P1308215016729467215.a n = A151379 n

end A151379

/-! ## A151379.P5935475907573046788

`A001405(n)*A057977(2*n)`
-/

namespace A151379.P5935475907573046788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n * A057977 (2 * n)

end

end A151379.P5935475907573046788

namespace A151379

/-- `A001405(n)*A057977(2*n)` -/
def P5935475907573046788.Spec : Prop :=
  ∀ n, P5935475907573046788.a n = A151379 n

end A151379

/-! ## A151379.P9388249915572263101

`A001405(n)*A099363(2*n)`
-/

namespace A151379.P9388249915572263101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n * A099363 (2 * n)

end

end A151379.P9388249915572263101

namespace A151379

/-- `A001405(n)*A099363(2*n)` -/
def P9388249915572263101.Spec : Prop :=
  ∀ n, P9388249915572263101.a n = A151379 n

end A151379

/-! ## A151379.P12171907333353278763

`A001405(n)*A126120(2*n)`
-/

namespace A151379.P12171907333353278763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n * A126120 (2 * n)

end

end A151379.P12171907333353278763

namespace A151379

/-- `A001405(n)*A126120(2*n)` -/
def P12171907333353278763.Spec : Prop :=
  ∀ n, P12171907333353278763.a n = A151379 n

end A151379

/-! ## A151379.P18201007496445012246

`A001405(n)*A208355(2*n)`
-/

namespace A151379.P18201007496445012246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n * A208355 (2 * n)

end

end A151379.P18201007496445012246

namespace A151379

/-- `A001405(n)*A208355(2*n)` -/
def P18201007496445012246.Spec : Prop :=
  ∀ n, P18201007496445012246.a n = A151379 n

end A151379

/-!
# A151381: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, 1), (0, 1), (1, -1)}.

The programs for A151381, there is no canonical definition to state claims against.
-/

/-! ## A151381.P5368558713026036460

`ceil(A194091(n+1)/A176605(n))`
-/

namespace A151381.P5368558713026036460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A194091 (n + 1) : ℚ) / (A176605 n : ℚ)⌉

end

end A151381.P5368558713026036460

/-! ## A151381.P4656113018547702109

`A054404(A052327(n+1)+A000726(n))`
-/

namespace A151381.P4656113018547702109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A052327 (n + 1) + A000726 n).toNat

end

end A151381.P4656113018547702109

/-! ## A151381.P8401182697655031026

`ceil(A008486(A026150(n)-1)/A008458(n))`
-/

namespace A151381.P8401182697655031026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008486 (A026150 n - 1).toNat : ℚ) / (A008458 n : ℚ)⌉

end

end A151381.P8401182697655031026

/-! ## A151381.P13748576615212262172

`A046926(n+1)+A023193(A124344(n+1))`
-/

namespace A151381.P13748576615212262172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046926 (n + 1) + A023193 (A124344 (n + 1)).toNat

end

end A151381.P13748576615212262172

/-! ## A151381.P5742558270325608341

`ceil(A003008(n+1)/log(9))`
-/

namespace A151381.P5742558270325608341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003008 (n + 1) : ℝ) / Real.log (9 : ℝ)⌉

end

end A151381.P5742558270325608341

/-!
# A151382: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of 2 n steps taken from {(-1, 1), (1, -1), (1, 1)}.

The programs for A151382, there is no canonical definition to state claims against.
-/

/-! ## A151382.P14129662968720636109

`A004277(A307678(n))-A007564(n)`
-/

namespace A151382.P14129662968720636109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A307678 n).toNat - A007564 n

end

end A151382.P14129662968720636109

/-! ## A151382.P12539039573579558071

`A103073(A351007(3*n))`
-/

namespace A151382.P12539039573579558071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103073 (A351007 (3 * n)).toNat

end

end A151382.P12539039573579558071

/-!
# A151384: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, -1), (-1, 0), (0, -1), (1, 1)}.

The programs for A151384, there is no canonical definition to state claims against.
-/

/-! ## A151384.P16465885096612004584

`and(A003065(A317912(n)), A153915(n))`
-/

namespace A151384.P16465885096612004584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003065 (A317912 n).toNat) (A153915 n)

end

end A151384.P16465885096612004584

/-!
# A151386: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, -1), (-1, 0), (0, 1), (1, 0)}.

The programs for A151386, there is no canonical definition to state claims against.
-/

/-! ## A151386.P14667090576353664877

`A298412(n)+A085150(A007661(n))`
-/

namespace A151386.P14667090576353664877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298412 n + A085150 (A007661 n).toNat

end

end A151386.P14667090576353664877

/-! ## A151386.P15645212446157358503

`A032257(n+1)-A146634(A146590(n+1))`
-/

namespace A151386.P15645212446157358503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032257 (n + 1) - A146634 (A146590 (n + 1)).toNat

end

end A151386.P15645212446157358503

/-! ## A151386.P11353821632277099888

`A051889(A148418(n+1))`
-/

namespace A151386.P11353821632277099888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A148418 (n + 1)).toNat

end

end A151386.P11353821632277099888

/-!
# A151387: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of 2 n steps taken from {(-1, -1), (-1, 0), (1, -1), (1, 1)}.

The programs for A151387, there is no canonical definition to state claims against.
-/

/-! ## A151387.P11254831418811129583

`A350126(A228966(n)+n+1)`
-/

namespace A151387.P11254831418811129583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350126 (A228966 n + (n + 1 : ℤ)).toNat

end

end A151387.P11254831418811129583

/-!
# A151388: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of 2 n steps taken from {(-1, -1), (-1, 0), (1, 0), (1, 1)}.

The programs for A151388, there is no canonical definition to state claims against.
-/

/-! ## A151388.P7576275880237909306

`A151396(2*n)`
-/

namespace A151388.P7576275880237909306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151396 (2 * n)

end

end A151388.P7576275880237909306

/-! ## A151388.P16016106127691300955

`record[gcd(val(n+1, 2), A151396(n))]`
-/

namespace A151388.P16016106127691300955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.valuation (n + 1) 2 : ℤ) (A151396 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151388.P16016106127691300955

/-! ## A151388.P11518416263356385242

`record[A151396(A014681(n))]`
-/

namespace A151388.P11518416263356385242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151396 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151388.P11518416263356385242

/-! ## A151388.P11045882765078281299

`record[A151396(A131380(n))]`
-/

namespace A151388.P11045882765078281299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151396 (A131380 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151388.P11045882765078281299

/-! ## A151388.P5519083755160139236

`record[A151396(A213723(n))]`
-/

namespace A151388.P5519083755160139236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151396 (A213723 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151388.P5519083755160139236

/-! ## A151388.P14053880993007493181

`record[A151396(A093178(n)-1)]`
-/

namespace A151388.P14053880993007493181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151396 (A093178 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151388.P14053880993007493181

/-! ## A151388.P13242491901920652843

`record[A151396(n/A093178(n))]`
-/

namespace A151388.P13242491901920652843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151396 (SequenceMachineLib.roundAway ((n : ℚ) / (A093178 n : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151388.P13242491901920652843

/-! ## A151388.P11951028399324717672

`record[A151396(gcd(n, A266437(n)))]`
-/

namespace A151388.P11951028399324717672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151396 (Int.gcd (n : ℤ) (A266437 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151388.P11951028399324717672

/-! ## A151388.P10536997740067795355

`record[A151396(n)/A000034(n)²]`
-/

namespace A151388.P10536997740067795355
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151396 n : ℚ) / (A000034 n ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151388.P10536997740067795355

/-! ## A151388.P18179018195355957204

`or(char[1], A151396(A008586(n)/2))`
-/

namespace A151388.P18179018195355957204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A151396 (SequenceMachineLib.roundAway ((A008586 n : ℚ) / 2)).toNat)

end

end A151388.P18179018195355957204

/-!
# A151390: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, -1), (-1, 1), (0, 1), (1, -1)}.

The programs for A151390, there is no canonical definition to state claims against.
-/

/-! ## A151390.P13444783765616564039

`A055679(A254199(n+2))-(n-1)`
-/

namespace A151390.P13444783765616564039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (A254199 (n + 2)).toNat - ((n : ℤ) - 1)

end

end A151390.P13444783765616564039

/-!
# A151391: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, -1), (-1, 1), (0, 1), (1, 0)}.

The programs for A151391, there is no canonical definition to state claims against.
-/

/-! ## A151391.P12719549900438644588

`A084469(A148323(n))`
-/

namespace A151391.P12719549900438644588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084469 (A148323 n).toNat

end

end A151391.P12719549900438644588

/-! ## A151391.P2742948696754635374

`A078897(A000108(n)*A005728(n))`
-/

namespace A151391.P2742948696754635374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078897 (A000108 n * A005728 n).toNat

end

end A151391.P2742948696754635374

/-!
# A151393: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of 2 n steps taken from {(-1, -1), (-1, 1), (1, 0), (1, 1)}.

The programs for A151393, there is no canonical definition to state claims against.
-/

/-! ## A151393.P3856806068838333375

`A063725(n)+A059893(A079489(n))`
-/

namespace A151393.P3856806068838333375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 n + A059893 (A079489 n).toNat

end

end A151393.P3856806068838333375

/-!
# A151395: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, -1), (0, -1), (0, 1), (1, 0)}.

The programs for A151395, there is no canonical definition to state claims against.
-/

/-! ## A151395.P12431172083161068432

`A390395(A279196(n+1))`
-/

namespace A151395.P12431172083161068432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390395 (A279196 (n + 1)).toNat

end

end A151395.P12431172083161068432

/-! ## A151395.P16016622881505628301

`A262689(A158007(n+1)+A002293(n))`
-/

namespace A151395.P16016622881505628301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A158007 (n + 1) + A002293 n).toNat

end

end A151395.P16016622881505628301

/-! ## A151395.P4783754958762595523

`A293348(n+1)-A286059(A286073(n))`
-/

namespace A151395.P4783754958762595523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293348 (n + 1) - A286059 (A286073 n).toNat

end

end A151395.P4783754958762595523

/-! ## A151395.P6089298484074336263

`A023190(A046342(n))+1-A094840(n+1)`
-/

namespace A151395.P6089298484074336263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023190 (A046342 n).toNat + (1 - A094840 (n + 1))

end

end A151395.P6089298484074336263

/-!
# A151396: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, -1), (0, -1), (0, 1), (1, 1)}.

The programs for A151396, there is no canonical definition to state claims against.
-/

/-! ## A151396.P12851635929117912699

`A332246(or(n, A115331(n)))`
-/

namespace A151396.P12851635929117912699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332246 (Int.lor (n : ℤ) (A115331 n)).toNat

end

end A151396.P12851635929117912699

/-! ## A151396.P2466676417844512093

`A026819(Δ[Δ[A087214(n)]])`
-/

namespace A151396.P2466676417844512093
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087214 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (f1 (n + 1) - f1 n).toNat

end

end A151396.P2466676417844512093

/-! ## A151396.P11961448306308898505

`or((n-1)^(n%2), A327262(A055775(n)))`
-/

namespace A151396.P11961448306308898505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (((n : ℤ) - 1) ^ (n % 2)) (A327262 (A055775 n).toNat)

end

end A151396.P11961448306308898505

/-!
# A151397: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, -1), (0, 1), (1, -1), (1, 0)}.

The programs for A151397, there is no canonical definition to state claims against.
-/

/-! ## A151397.P4908651849543731090

`floor(A046677(A047086(n))/2)`
-/

namespace A151397.P4908651849543731090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A046677 (A047086 n).toNat : ℚ) / 2⌋

end

end A151397.P4908651849543731090

/-! ## A151397.P1977580703973663398

`A232443(A125188(n))+A052343(n)`
-/

namespace A151397.P1977580703973663398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232443 (A125188 n).toNat + A052343 n

end

end A151397.P1977580703973663398

/-! ## A151397.P4093871187477898309

`A073268(n)-A002262(A052848(n))`
-/

namespace A151397.P4093871187477898309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073268 n - A002262 (A052848 n).toNat

end

end A151397.P4093871187477898309

/-! ## A151397.P17293871118787192448

`A035033(A003293(n))-A276797(n)`
-/

namespace A151397.P17293871118787192448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035033 (A003293 n).toNat - A276797 n

end

end A151397.P17293871118787192448

/-!
# A151399: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, -1), (0, 1), (1, 0), (1, 1)}.

The programs for A151399, there is no canonical definition to state claims against.
-/

/-! ## A151399.P5443829845038576557

`A065382(4^n)/2`
-/

namespace A151399.P5443829845038576557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065382 (4 ^ n) : ℚ) / 2

end

end A151399.P5443829845038576557

/-! ## A151399.P11688722606444870928

`A066888(4^n)/2`
-/

namespace A151399.P11688722606444870928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066888 (4 ^ n) : ℚ) / 2

end

end A151399.P11688722606444870928

/-! ## A151399.P3747957667942446923

`∑{e}[∏{p}[(n+1)^7, #%n], #]+A000108(n)`
-/

namespace A151399.P3747957667942446923
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 7

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p % n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) + A000108 n

end

end A151399.P3747957667942446923

