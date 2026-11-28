import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
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
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C046
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B007.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C021
import Seq.Opaque.C022
import SequenceMachineLib.Triangle

/-!
# A206601: a(n) = 3^(n(n+1)/2) - 1.

The programs for A206601, the canonical program `A206601.P12803216439123697002` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206601 has offset 0).

The definition of A206601 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A206601.P12803216439123697002

`3^(n*(n+1)/2)-1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A206601

/-- `3^(n*(n+1)/2)-1` -/
def P12803216439123697002.Spec : Prop :=
  ∀ n, P12803216439123697002.a n = (A206601 n : ℝ)

end A206601

/-! ## A206601.P1540359432289619009

`xor(1, 3^∑[n])`
-/

namespace A206601.P1540359432289619009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (3 ^ (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A206601.P1540359432289619009

namespace A206601

/-- `xor(1, 3^∑[n])` -/
def P1540359432289619009.Spec : Prop :=
  ∀ n, (P1540359432289619009.a n : ℤ) = A206601 n

end A206601

/-! ## A206601.P16254858878325510926

`and(3^∑[n], -2)`
-/

namespace A206601.P16254858878325510926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (3 ^ (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) (-2)

end

end A206601.P16254858878325510926

namespace A206601

/-- `and(3^∑[n], -2)` -/
def P16254858878325510926.Spec : Prop :=
  ∀ n, P16254858878325510926.a n = A206601 n

end A206601

/-! ## A206601.P872859691270636215

`lcm(2, 1-∏[3^n])`
-/

namespace A206601.P872859691270636215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (1 - ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A206601.P872859691270636215

namespace A206601

/-- `lcm(2, 1-∏[3^n])` -/
def P872859691270636215.Spec : Prop :=
  ∀ n, (P872859691270636215.a n : ℤ) = A206601 n

end A206601

/-! ## A206601.P16580904061604119549

`3^∑[gcd(n, n)]-1`
-/

namespace A206601.P16580904061604119549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - 1

end

end A206601.P16580904061604119549

namespace A206601

/-- `3^∑[gcd(n, n)]-1` -/
def P16580904061604119549.Spec : Prop :=
  ∀ n, P16580904061604119549.a n = A206601 n

end A206601

/-!
# A206602: a(n) is the number of white and black stones lying in a circle; starting with place 1, the first a(n) steps of length 5 give the places of white stones. Beginning with last place, the next a(n) steps give the places of black stones.

The programs for A206602, there is no canonical definition to state claims against.
-/

/-! ## A206602.P8666078144406637427

`eq[0, (a(n-1)+5)%(n+1)]` with `a(0)=2`
-/

namespace A206602.P8666078144406637427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  (f2 (n - 1) + 5) % (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A206602.P8666078144406637427

/-! ## A206602.P4241761243086378358

`lt[(n²+a(n-1)+4)%(n+1), 1]` with `a(0)=6`
-/

namespace A206602.P4241761243086378358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6] fun n f1 =>
  (n ^ 2 + (f1 (n - 1) + 4)) % (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A206602.P4241761243086378358

/-! ## A206602.P13566983641209739654

`eq[A010194(n), A181281(n+1)]`
-/

namespace A206602.P13566983641209739654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010194 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181281 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A206602.P13566983641209739654

/-! ## A206602.P7388443127760558593

`eq[A014306(n), A181281(n+1)]`
-/

namespace A206602.P7388443127760558593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014306 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181281 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A206602.P7388443127760558593

/-! ## A206602.P8235999002123302778

`eq[A043545(n), A181281(n+1)]`
-/

namespace A206602.P8235999002123302778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181281 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A206602.P8235999002123302778

/-!
# A206603: Maximal apex value of an addition triangle whose base is a permutation of {k-n/2, k=0..n}.

The programs for A206603, the canonical program `A206603.P3063521816794991771` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206603 has offset 0).

The definition of A206603 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A206603.P3063521816794991771

`A001787(n)-A189391(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A206603

/-- `A001787(n)-A189391(n)` -/
def P3063521816794991771.Spec : Prop :=
  ∀ n, P3063521816794991771.a n = A206603 n

theorem P3063521816794991771.correct : P3063521816794991771.Spec := by
  intro n
  simp only [A206603]

end A206603

/-! ## A206603.P17607593322922444358

`(A206604(n)-1)/2`
-/

namespace A206603.P17607593322922444358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206604 n - 1 : ℚ) / 2

end

end A206603.P17607593322922444358

namespace A206603

/-- `(A206604(n)-1)/2` -/
def P17607593322922444358.Spec : Prop :=
  ∀ n, P17607593322922444358.a n = (A206603 n : ℚ)

end A206603

/-! ## A206603.P15736408148185014497

`A189390(n)-A001787(n)`
-/

namespace A206603.P15736408148185014497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189390 n - A001787 n

end

end A206603.P15736408148185014497

namespace A206603

/-- `A189390(n)-A001787(n)` -/
def P15736408148185014497.Spec : Prop :=
  ∀ n, P15736408148185014497.a n = A206603 n

end A206603

/-! ## A206603.P13061660239281090850

`(A189390(n)-A189391(n))/2`
-/

namespace A206603.P13061660239281090850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189390 n - A189391 n : ℚ) / 2

end

end A206603.P13061660239281090850

namespace A206603

/-- `(A189390(n)-A189391(n))/2` -/
def P13061660239281090850.Spec : Prop :=
  ∀ n, P13061660239281090850.a n = (A206603 n : ℚ)

end A206603

/-! ## A206603.P3487604104214185055

`∑{#}[n, C(n, floor(#/2))*(#-n/2)]`
-/

namespace A206603.P3487604104214185055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n ⌊(k : ℚ) / 2⌋.toNat : ℚ) * ((k : ℚ) - (n : ℚ) / 2)

end

end A206603.P3487604104214185055

namespace A206603

/-- `∑{#}[n, C(n, floor(#/2))*(#-n/2)]` -/
def P3487604104214185055.Spec : Prop :=
  ∀ n, P3487604104214185055.a n = (A206603 n : ℚ)

end A206603

/-! ## A206603.P12207312960811982723

`A182555(n)-2^n`
-/

namespace A206603.P12207312960811982723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182555 n - (2 ^ n : ℤ)

end

end A206603.P12207312960811982723

namespace A206603

/-- `A182555(n)-2^n` -/
def P12207312960811982723.Spec : Prop :=
  ∀ n, P12207312960811982723.a n = A206603 n

end A206603

/-! ## A206603.P13307530814240712985

`A001792(n)-A099325(n)`
-/

namespace A206603.P13307530814240712985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n - A099325 n

end

end A206603.P13307530814240712985

namespace A206603

/-- `A001792(n)-A099325(n)` -/
def P13307530814240712985.Spec : Prop :=
  ∀ n, P13307530814240712985.a n = A206603 n

end A206603

/-! ## A206603.P11195941772560949824

`A130783(n)-A100071(n)`
-/

namespace A206603.P11195941772560949824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130783 n - A100071 n

end

end A206603.P11195941772560949824

namespace A206603

/-- `A130783(n)-A100071(n)` -/
def P11195941772560949824.Spec : Prop :=
  ∀ n, P11195941772560949824.a n = A206603 n

end A206603

/-! ## A206603.P1827465160430925775

`A099326(n)-A152548(n)`
-/

namespace A206603.P1827465160430925775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099326 n - A152548 n

end

end A206603.P1827465160430925775

namespace A206603

/-- `A099326(n)-A152548(n)` -/
def P1827465160430925775.Spec : Prop :=
  ∀ n, P1827465160430925775.a n = A206603 n

end A206603

/-! ## A206603.P12953690520359764113

`A102699(n)-A210736(n)`
-/

namespace A206603.P12953690520359764113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102699 n - A210736 n

end

end A206603.P12953690520359764113

namespace A206603

/-- `A102699(n)-A210736(n)` -/
def P12953690520359764113.Spec : Prop :=
  ∀ n, P12953690520359764113.a n = A206603 n

end A206603

/-! ## A206603.P217235589375344404

`A245560(n)-A323988(n)`
-/

namespace A206603.P217235589375344404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245560 n - A323988 n

end

end A206603.P217235589375344404

namespace A206603

/-- `A245560(n)-A323988(n)` -/
def P217235589375344404.Spec : Prop :=
  ∀ n, P217235589375344404.a n = A206603 n

end A206603

/-! ## A206603.P15884867155464415563

`A153334(n+1)-A027306(n)`
-/

namespace A206603.P15884867155464415563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153334 (n + 1) - A027306 n

end

end A206603.P15884867155464415563

namespace A206603

/-- `A153334(n+1)-A027306(n)` -/
def P15884867155464415563.Spec : Prop :=
  ∀ n, P15884867155464415563.a n = A206603 n

end A206603

/-! ## A206603.P3436666900698170768

`A005183(n)-(A189391(n)+1)`
-/

namespace A206603.P3436666900698170768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005183 n - (A189391 n + 1)

end

end A206603.P3436666900698170768

namespace A206603

/-- `A005183(n)-(A189391(n)+1)` -/
def P3436666900698170768.Spec : Prop :=
  ∀ n, P3436666900698170768.a n = A206603 n

end A206603

/-! ## A206603.P2658175765437575735

`A153335(n+1)-A058622(n)`
-/

namespace A206603.P2658175765437575735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153335 (n + 1) - A058622 n

end

end A206603.P2658175765437575735

namespace A206603

/-- `A153335(n+1)-A058622(n)` -/
def P2658175765437575735.Spec : Prop :=
  ∀ n, P2658175765437575735.a n = A206603 n

end A206603

/-! ## A206603.P8289672235088480717

`A049610(n+2)-A099325(n)`
-/

namespace A206603.P8289672235088480717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049610 (n + 2) - A099325 n

end

end A206603.P8289672235088480717

namespace A206603

/-- `A049610(n+2)-A099325(n)` -/
def P8289672235088480717.Spec : Prop :=
  ∀ n, P8289672235088480717.a n = A206603 n

end A206603

/-! ## A206603.P15856379192840109275

`n*A011782(n)-A189391(n)`
-/

namespace A206603.P15856379192840109275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011782 n - A189391 n

end

end A206603.P15856379192840109275

namespace A206603

/-- `n*A011782(n)-A189391(n)` -/
def P15856379192840109275.Spec : Prop :=
  ∀ n, P15856379192840109275.a n = A206603 n

end A206603

/-! ## A206603.P14082165590382783026

`A001792(n)-(A189391(n)+A000079(n))`
-/

namespace A206603.P14082165590382783026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n - (A189391 n + A000079 n)

end

end A206603.P14082165590382783026

namespace A206603

/-- `A001792(n)-(A189391(n)+A000079(n))` -/
def P14082165590382783026.Spec : Prop :=
  ∀ n, P14082165590382783026.a n = A206603 n

end A206603

/-! ## A206603.P11016668098790428057

`A099326(n)-(A189391(n)+A099325(n))`
-/

namespace A206603.P11016668098790428057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099326 n - (A189391 n + A099325 n)

end

end A206603.P11016668098790428057

namespace A206603

/-- `A099326(n)-(A189391(n)+A099325(n))` -/
def P11016668098790428057.Spec : Prop :=
  ∀ n, P11016668098790428057.a n = A206603 n

end A206603

/-! ## A206603.P1391503171238524716

`floor(A206604(n)/2)`
-/

namespace A206603.P1391503171238524716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A206604 n : ℚ) / 2⌋

end

end A206603.P1391503171238524716

namespace A206603

/-- `floor(A206604(n)/2)` -/
def P1391503171238524716.Spec : Prop :=
  ∀ n, P1391503171238524716.a n = A206603 n

end A206603

/-! ## A206603.P10015007669042389164

`A001787(n+1)-A099326(n)`
-/

namespace A206603.P10015007669042389164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (n + 1) - A099326 n

end

end A206603.P10015007669042389164

namespace A206603

/-- `A001787(n+1)-A099326(n)` -/
def P10015007669042389164.Spec : Prop :=
  ∀ n, P10015007669042389164.a n = A206603 n

end A206603

/-!
# A206604: Number of integers in the smallest interval containing both minimal and maximal possible apex values of an addition triangle whose base is a permutation of n+1 consecutive integers.

The programs for A206604, the canonical program `A206604.P11241342694491247130` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206604 has offset 0).

The definition of A206604 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A206604.P11241342694491247130

`1+2*A206603(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A206604

/-- `1+2*A206603(n)` -/
def P11241342694491247130.Spec : Prop :=
  ∀ n, P11241342694491247130.a n = A206604 n

theorem P11241342694491247130.correct : P11241342694491247130.Spec := by
  intro n
  simp only [A206604]

end A206604

/-! ## A206604.P18190030618522323130

`1+A189390(n)-A189391(n)`
-/

namespace A206604.P18190030618522323130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A189390 n - A189391 n

end

end A206604.P18190030618522323130

namespace A206604

/-- `1+A189390(n)-A189391(n)` -/
def P18190030618522323130.Spec : Prop :=
  ∀ n, P18190030618522323130.a n = A206604 n

end A206604

/-! ## A206604.P1392636905160336779

`1+∑{#}[n, C(n, floor(#/2))*(2*#-n)]`
-/

namespace A206604.P1392636905160336779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n ⌊(k : ℚ) / 2⌋.toNat : ℤ) * ((2 * k : ℤ) - (n : ℤ))

end

end A206604.P1392636905160336779

namespace A206604

/-- `1+∑{#}[n, C(n, floor(#/2))*(2*#-n)]` -/
def P1392636905160336779.Spec : Prop :=
  ∀ n, P1392636905160336779.a n = A206604 n

end A206604

/-! ## A206604.P10098816312798526965

`2*(A182555(n)-2^n)+1`
-/

namespace A206604.P10098816312798526965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A182555 n - (2 ^ n : ℤ)) + 1

end

end A206604.P10098816312798526965

namespace A206604

/-- `2*(A182555(n)-2^n)+1` -/
def P10098816312798526965.Spec : Prop :=
  ∀ n, P10098816312798526965.a n = A206604 n

end A206604

/-! ## A206604.P15746353058680597398

`A102699(n+1)-A000225(n)`
-/

namespace A206604.P15746353058680597398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102699 (n + 1) - A000225 n

end

end A206604.P15746353058680597398

namespace A206604

/-- `A102699(n+1)-A000225(n)` -/
def P15746353058680597398.Spec : Prop :=
  ∀ n, P15746353058680597398.a n = A206604 n

end A206604

/-! ## A206604.P17779114534649420198

`A189162(n+1)+1-A099325(n)`
-/

namespace A206604.P17779114534649420198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189162 (n + 1) + (1 - A099325 n)

end

end A206604.P17779114534649420198

namespace A206604

/-- `A189162(n+1)+1-A099325(n)` -/
def P17779114534649420198.Spec : Prop :=
  ∀ n, P17779114534649420198.a n = A206604 n

end A206604

/-! ## A206604.P7161272125259021556

`2*(A001792(n)-A099325(n))+1`
-/

namespace A206604.P7161272125259021556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A001792 n - A099325 n) + 1

end

end A206604.P7161272125259021556

namespace A206604

/-- `2*(A001792(n)-A099325(n))+1` -/
def P7161272125259021556.Spec : Prop :=
  ∀ n, P7161272125259021556.a n = A206604 n

end A206604

/-! ## A206604.P6630286299460240345

`2*(A189390(n)-A001787(n))+1`
-/

namespace A206604.P6630286299460240345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A189390 n - A001787 n) + 1

end

end A206604.P6630286299460240345

namespace A206604

/-- `2*(A189390(n)-A001787(n))+1` -/
def P6630286299460240345.Spec : Prop :=
  ∀ n, P6630286299460240345.a n = A206604 n

end A206604

/-! ## A206604.P8770100745664755492

`2*(A001787(n)-A189391(n))+1`
-/

namespace A206604.P8770100745664755492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A001787 n - A189391 n) + 1

end

end A206604.P8770100745664755492

namespace A206604

/-- `2*(A001787(n)-A189391(n))+1` -/
def P8770100745664755492.Spec : Prop :=
  ∀ n, P8770100745664755492.a n = A206604 n

end A206604

/-! ## A206604.P16613087049706755162

`2*(A189162(n+1)-A001792(n))+1`
-/

namespace A206604.P16613087049706755162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A189162 (n + 1) - A001792 n) + 1

end

end A206604.P16613087049706755162

namespace A206604

/-- `2*(A189162(n+1)-A001792(n))+1` -/
def P16613087049706755162.Spec : Prop :=
  ∀ n, P16613087049706755162.a n = A206604 n

end A206604

/-!
# A206605: Fibonacci sequence beginning 14, 11.

The programs for A206605, the canonical program `A206605.P16921549341302034817` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206605 has offset 1).

The definition of A206605 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A206605.anchor : A206605 1 = 14 ∧ A206605 2 = 11 ∧ ∀ n, 1 ≤ n → A206605 (n + 2) = A206605 (n + 1) + A206605 n` in `Proof.A206.A206605`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A206605.P17781641142544483059

`ogf((14-3x)/(1-x-x^2))`
-/

namespace A206605.P17781641142544483059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [14, -3] [1, -1, -1] n

end

end A206605.P17781641142544483059

namespace A206605

/-- `ogf((14-3x)/(1-x-x^2))` -/
def P17781641142544483059.Spec : Prop :=
  ∀ n, P17781641142544483059.a n = A206605 (n + 1)

end A206605

/-! ## A206605.P16921549341302034817

`a(n-1)+a(n-2)` with `a(0)=14, a(1)=11`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A206605

/-- `a(n-1)+a(n-2)` -/
def P16921549341302034817.Spec : Prop :=
  ∀ n, (P16921549341302034817.a n : ℤ) = A206605 (n + 1)

theorem P16921549341302034817.correct : P16921549341302034817.Spec := by
  intro n
  simp only [A206605, Nat.add_sub_cancel]

end A206605

/-! ## A206605.P3102579506093519

`a(n-1)-floor(-a(n-2))` with `a(0)=14, a(1)=11`

`floor` is left out, it is the identity on integers.
-/

namespace A206605.P3102579506093519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [14, 11] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A206605.P3102579506093519

namespace A206605

/-- `a(n-1)-floor(-a(n-2))` -/
def P3102579506093519.Spec : Prop :=
  ∀ n, P3102579506093519.a n = A206605 (n + 1)

end A206605

/-! ## A206605.P9343074236230080019

`a(n-1)-ceil(-a(n-2))` with `a(0)=14, a(1)=11`

`ceil` is left out, it is the identity on integers.
-/

namespace A206605.P9343074236230080019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [14, 11] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A206605.P9343074236230080019

namespace A206605

/-- `a(n-1)-ceil(-a(n-2))` -/
def P9343074236230080019.Spec : Prop :=
  ∀ n, P9343074236230080019.a n = A206605 (n + 1)

end A206605

/-! ## A206605.P1978728140138243766

`a(n-1)-round(-a(n-2))` with `a(0)=14, a(1)=11`

`round` is left out, it is the identity on integers.
-/

namespace A206605.P1978728140138243766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [14, 11] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A206605.P1978728140138243766

namespace A206605

/-- `a(n-1)-round(-a(n-2))` -/
def P1978728140138243766.Spec : Prop :=
  ∀ n, P1978728140138243766.a n = A206605 (n + 1)

end A206605

/-! ## A206605.P6640933753298251132

`abs(Δ[a(n-2)-a(n-1)])` with `a(0)=17, a(1)=3`
-/

namespace A206605.P6640933753298251132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [17, 3] fun n f1 =>
  f1 (n - 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A206605.P6640933753298251132

namespace A206605

/-- `abs(Δ[a(n-2)-a(n-1)])` -/
def P6640933753298251132.Spec : Prop :=
  ∀ n, P6640933753298251132.a n = A206605 (n + 1)

end A206605

/-! ## A206605.P3301780358617551190

`a(n-1)-(char[1]-a(n-2))` with `a(0)=14, a(1)=11`
-/

namespace A206605.P3301780358617551190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [14, 11] fun n a =>
  a (n - 1) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 2))

end

end A206605.P3301780358617551190

namespace A206605

/-- `a(n-1)-(char[1]-a(n-2))` -/
def P3301780358617551190.Spec : Prop :=
  ∀ n, P3301780358617551190.a n = A206605 (n + 1)

end A206605

/-! ## A206605.P8045884085306602153

`1-floor(1-a(n-1)-a(n-2))` with `a(0)=14, a(1)=11`

`floor` is left out, it is the identity on integers.
-/

namespace A206605.P8045884085306602153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [14, 11] fun n a =>
  1 - (1 - a (n - 1) - a (n - 2))

end

end A206605.P8045884085306602153

namespace A206605

/-- `1-floor(1-a(n-1)-a(n-2))` -/
def P8045884085306602153.Spec : Prop :=
  ∀ n, P8045884085306602153.a n = A206605 (n + 1)

end A206605

/-! ## A206605.P11182952782921317465

`A206611(n+1)+A000285(n)`
-/

namespace A206605.P11182952782921317465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206611 (n + 1) + A000285 n

end

end A206605.P11182952782921317465

namespace A206605

/-- `A206611(n+1)+A000285(n)` -/
def P11182952782921317465.Spec : Prop :=
  ∀ n, P11182952782921317465.a n = A206605 (n + 1)

end A206605

/-! ## A206605.P13723458950242701505

`A206422(n+1)+A013655(n)`
-/

namespace A206605.P13723458950242701505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206422 (n + 1) + A013655 n

end

end A206605.P13723458950242701505

namespace A206605

/-- `A206422(n+1)+A013655(n)` -/
def P13723458950242701505.Spec : Prop :=
  ∀ n, P13723458950242701505.a n = A206605 (n + 1)

end A206605

/-! ## A206605.P4786022608397701464

`A206612(n+1)+A022095(n)`
-/

namespace A206605.P4786022608397701464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206612 (n + 1) + A022095 n

end

end A206605.P4786022608397701464

namespace A206605

/-- `A206612(n+1)+A022095(n)` -/
def P4786022608397701464.Spec : Prop :=
  ∀ n, P4786022608397701464.a n = A206605 (n + 1)

end A206605

/-! ## A206605.P3964499605924274418

`A280154(n)+A078642(n+1)`
-/

namespace A206605.P3964499605924274418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280154 n + A078642 (n + 1)

end

end A206605.P3964499605924274418

namespace A206605

/-- `A280154(n)+A078642(n+1)` -/
def P3964499605924274418.Spec : Prop :=
  ∀ n, P3964499605924274418.a n = A206605 (n + 1)

end A206605

/-! ## A206605.P3474395674255526416

`A212804(n)+A206607(n+1)`
-/

namespace A206605.P3474395674255526416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A206607 (n + 1)

end

end A206605.P3474395674255526416

namespace A206605

/-- `A212804(n)+A206607(n+1)` -/
def P3474395674255526416.Spec : Prop :=
  ∀ n, P3474395674255526416.a n = A206605 (n + 1)

end A206605

/-! ## A206605.P6320914162511147524

`A022349(n+1)-A000285(n)`
-/

namespace A206605.P6320914162511147524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022349 (n + 1) - A000285 n

end

end A206605.P6320914162511147524

namespace A206605

/-- `A022349(n+1)-A000285(n)` -/
def P6320914162511147524.Spec : Prop :=
  ∀ n, P6320914162511147524.a n = A206605 (n + 1)

end A206605

/-! ## A206605.P13802037964917469006

`A022350(n+1)-A001060(n)`
-/

namespace A206605.P13802037964917469006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022350 (n + 1) - A001060 n

end

end A206605.P13802037964917469006

namespace A206605

/-- `A022350(n+1)-A001060(n)` -/
def P13802037964917469006.Spec : Prop :=
  ∀ n, P13802037964917469006.a n = A206605 (n + 1)

end A206605

/-! ## A206605.P12313272695047439057

`A022104(n+1)-A022087(n)`
-/

namespace A206605.P12313272695047439057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022104 (n + 1) - A022087 n

end

end A206605.P12313272695047439057

namespace A206605

/-- `A022104(n+1)-A022087(n)` -/
def P12313272695047439057.Spec : Prop :=
  ∀ n, P12313272695047439057.a n = A206605 (n + 1)

end A206605

/-! ## A206605.P12753753859078642658

`A022105(n+1)-A022095(n)`
-/

namespace A206605.P12753753859078642658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022105 (n + 1) - A022095 n

end

end A206605.P12753753859078642658

namespace A206605

/-- `A022105(n+1)-A022095(n)` -/
def P12753753859078642658.Spec : Prop :=
  ∀ n, P12753753859078642658.a n = A206605 (n + 1)

end A206605

/-! ## A206605.P10783860637319140312

`A022117(n+1)-A022096(n)`
-/

namespace A206605.P10783860637319140312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022117 (n + 1) - A022096 n

end

end A206605.P10783860637319140312

namespace A206605

/-- `A022117(n+1)-A022096(n)` -/
def P10783860637319140312.Spec : Prop :=
  ∀ n, P10783860637319140312.a n = A206605 (n + 1)

end A206605

/-! ## A206605.P6780298353660004033

`A022348(n+1)-A022086(n)`
-/

namespace A206605.P6780298353660004033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022348 (n + 1) - A022086 n

end

end A206605.P6780298353660004033

namespace A206605

/-- `A022348(n+1)-A022086(n)` -/
def P6780298353660004033.Spec : Prop :=
  ∀ n, P6780298353660004033.a n = A206605 (n + 1)

end A206605

/-! ## A206605.P17820804012240072245

`A022370(n+1)-A022113(n)`
-/

namespace A206605.P17820804012240072245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022370 (n + 1) - A022113 n

end

end A206605.P17820804012240072245

namespace A206605

/-- `A022370(n+1)-A022113(n)` -/
def P17820804012240072245.Spec : Prop :=
  ∀ n, P17820804012240072245.a n = A206605 (n + 1)

end A206605

/-!
# A206606: Primes that can be written as a sum of a positive square and a positive cube in more than two ways.

The programs for A206606, there is no canonical definition to state claims against.
-/

/-! ## A206606.P15394182843427582097

`p?[A171385(n+1)]`
-/

namespace A206606.P15394182843427582097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171385 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A206606.P15394182843427582097

/-! ## A206606.P17485598058750814533

`p?[record[A171385(A158416(n))]]`
-/

namespace A206606.P17485598058750814533
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171385 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A206606.P17485598058750814533

/-!
# A206607: Fibonacci sequence beginning 13, 11.

The programs for A206607, the canonical program `A206607.P2845953090329881249` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206607 has offset 1).

The definition of A206607 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A206607.anchor : A206607 1 = 13 ∧ A206607 2 = 11 ∧ ∀ n, 1 ≤ n → A206607 (n + 2) = A206607 (n + 1) + A206607 n` in `Proof.A206.A206607`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A206607.P759371944754426656

`ogf((13-2x)/(1-x-x^2))`
-/

namespace A206607.P759371944754426656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [13, -2] [1, -1, -1] n

end

end A206607.P759371944754426656

namespace A206607

/-- `ogf((13-2x)/(1-x-x^2))` -/
def P759371944754426656.Spec : Prop :=
  ∀ n, P759371944754426656.a n = A206607 (n + 1)

end A206607

/-! ## A206607.P2845953090329881249

`a(n-1)+a(n-2)` with `a(0)=13, a(1)=11`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A206607

/-- `a(n-1)+a(n-2)` -/
def P2845953090329881249.Spec : Prop :=
  ∀ n, (P2845953090329881249.a n : ℤ) = A206607 (n + 1)

theorem P2845953090329881249.correct : P2845953090329881249.Spec := by
  intro n
  simp only [A206607, Nat.add_sub_cancel]

end A206607

/-! ## A206607.P11387618512071273978

`13*A000045(n+1)-2*A000045(n)`
-/

namespace A206607.P11387618512071273978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * A000045 (n + 1) - 2 * A000045 n

end

end A206607.P11387618512071273978

namespace A206607

/-- `13*A000045(n+1)-2*A000045(n)` -/
def P11387618512071273978.Spec : Prop :=
  ∀ n, P11387618512071273978.a n = A206607 (n + 1)

end A206607

/-! ## A206607.P15940408455012609666

`a(n-1)-floor(-a(n-2))` with `a(0)=13, a(1)=11`

`floor` is left out, it is the identity on integers.
-/

namespace A206607.P15940408455012609666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13, 11] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A206607.P15940408455012609666

namespace A206607

/-- `a(n-1)-floor(-a(n-2))` -/
def P15940408455012609666.Spec : Prop :=
  ∀ n, P15940408455012609666.a n = A206607 (n + 1)

end A206607

/-! ## A206607.P3726240546921013668

`a(n-1)-ceil(-a(n-2))` with `a(0)=13, a(1)=11`

`ceil` is left out, it is the identity on integers.
-/

namespace A206607.P3726240546921013668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13, 11] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A206607.P3726240546921013668

namespace A206607

/-- `a(n-1)-ceil(-a(n-2))` -/
def P3726240546921013668.Spec : Prop :=
  ∀ n, P3726240546921013668.a n = A206607 (n + 1)

end A206607

/-! ## A206607.P16577650871552814360

`abs(Δ[a(n-2)-a(n-1)])` with `a(0)=15, a(1)=2`
-/

namespace A206607.P16577650871552814360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [15, 2] fun n f1 =>
  f1 (n - 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A206607.P16577650871552814360

namespace A206607

/-- `abs(Δ[a(n-2)-a(n-1)])` -/
def P16577650871552814360.Spec : Prop :=
  ∀ n, P16577650871552814360.a n = A206607 (n + 1)

end A206607

/-! ## A206607.P16430502546718047983

`a(n-1)-(char[1]-a(n-2))` with `a(0)=13, a(1)=11`
-/

namespace A206607.P16430502546718047983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [13, 11] fun n a =>
  a (n - 1) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 2))

end

end A206607.P16430502546718047983

namespace A206607

/-- `a(n-1)-(char[1]-a(n-2))` -/
def P16430502546718047983.Spec : Prop :=
  ∀ n, P16430502546718047983.a n = A206607 (n + 1)

end A206607

/-! ## A206607.P2600625814441232734

`A184959(n)+A013655(n)`
-/

namespace A206607.P2600625814441232734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184959 n + A013655 n

end

end A206607.P2600625814441232734

namespace A206607

/-- `A184959(n)+A013655(n)` -/
def P2600625814441232734.Spec : Prop :=
  ∀ n, P2600625814441232734.a n = A206607 (n + 1)

end A206607

/-! ## A206607.P5527427414944985700

`A104449(n)+A022093(n+1)`
-/

namespace A206607.P5527427414944985700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104449 n + A022093 (n + 1)

end

end A206607.P5527427414944985700

namespace A206607

/-- `A104449(n)+A022093(n+1)` -/
def P5527427414944985700.Spec : Prop :=
  ∀ n, P5527427414944985700.a n = A206607 (n + 1)

end A206607

/-! ## A206607.P3517878481248382269

`A118658(n)+A022345(n+1)`
-/

namespace A206607.P3517878481248382269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 n + A022345 (n + 1)

end

end A206607.P3517878481248382269

namespace A206607

/-- `A118658(n)+A022345(n+1)` -/
def P3517878481248382269.Spec : Prop :=
  ∀ n, P3517878481248382269.a n = A206607 (n + 1)

end A206607

/-! ## A206607.P14229050955596829406

`A156279(n)+A001060(n+1)`
-/

namespace A206607.P14229050955596829406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156279 n + A001060 (n + 1)

end

end A206607.P14229050955596829406

namespace A206607

/-- `A156279(n)+A001060(n+1)` -/
def P14229050955596829406.Spec : Prop :=
  ∀ n, P14229050955596829406.a n = A206607 (n + 1)

end A206607

/-! ## A206607.P16310118335848876455

`A152163(n)+A022346(n+1)`
-/

namespace A206607.P16310118335848876455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 n + A022346 (n + 1)

end

end A206607.P16310118335848876455

namespace A206607

/-- `A152163(n)+A022346(n+1)` -/
def P16310118335848876455.Spec : Prop :=
  ∀ n, P16310118335848876455.a n = A206607 (n + 1)

end A206607

/-! ## A206607.P2677687570083977425

`A206608(n+1)+A000045(n)`
-/

namespace A206607.P2677687570083977425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206608 (n + 1) + A000045 n

end

end A206607.P2677687570083977425

namespace A206607

/-- `A206608(n+1)+A000045(n)` -/
def P2677687570083977425.Spec : Prop :=
  ∀ n, P2677687570083977425.a n = A206607 (n + 1)

end A206607

/-! ## A206607.P12957579270662649742

`A206423(n+1)+A000285(n)`
-/

namespace A206607.P12957579270662649742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206423 (n + 1) + A000285 n

end

end A206607.P12957579270662649742

namespace A206607

/-- `A206423(n+1)+A000285(n)` -/
def P12957579270662649742.Spec : Prop :=
  ∀ n, P12957579270662649742.a n = A206607 (n + 1)

end A206607

/-! ## A206607.P9903639095324129720

`A206420(n+1)+A020695(n)`
-/

namespace A206607.P9903639095324129720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206420 (n + 1) + A020695 n

end

end A206607.P9903639095324129720

namespace A206607

/-- `A206420(n+1)+A020695(n)` -/
def P9903639095324129720.Spec : Prop :=
  ∀ n, P9903639095324129720.a n = A206607 (n + 1)

end A206607

/-! ## A206607.P1561458303730545139

`A206610(n+1)+A022086(n)`
-/

namespace A206607.P1561458303730545139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206610 (n + 1) + A022086 n

end

end A206607.P1561458303730545139

namespace A206607

/-- `A206610(n+1)+A022086(n)` -/
def P1561458303730545139.Spec : Prop :=
  ∀ n, P1561458303730545139.a n = A206607 (n + 1)

end A206607

/-! ## A206607.P16291391508210090860

`A206611(n+1)+A022087(n)`
-/

namespace A206607.P16291391508210090860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206611 (n + 1) + A022087 n

end

end A206607.P16291391508210090860

namespace A206607

/-- `A206611(n+1)+A022087(n)` -/
def P16291391508210090860.Spec : Prop :=
  ∀ n, P16291391508210090860.a n = A206607 (n + 1)

end A206607

/-! ## A206607.P4633292298312947861

`A206612(n+1)+A022088(n)`
-/

namespace A206607.P4633292298312947861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206612 (n + 1) + A022088 n

end

end A206607.P4633292298312947861

namespace A206607

/-- `A206612(n+1)+A022088(n)` -/
def P4633292298312947861.Spec : Prop :=
  ∀ n, P4633292298312947861.a n = A206607 (n + 1)

end A206607

/-! ## A206607.P2943286735390328827

`A190996(n)+A000032(n+2)`
-/

namespace A206607.P2943286735390328827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190996 n + A000032 (n + 2)

end

end A206607.P2943286735390328827

namespace A206607

/-- `A190996(n)+A000032(n+2)` -/
def P2943286735390328827.Spec : Prop :=
  ∀ n, P2943286735390328827.a n = A206607 (n + 1)

end A206607

/-! ## A206607.P16500293367618228078

`A190996(n)+A000204(n+2)`
-/

namespace A206607.P16500293367618228078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190996 n + A000204 (n + 2)

end

end A206607.P16500293367618228078

namespace A206607

/-- `A190996(n)+A000204(n+2)` -/
def P16500293367618228078.Spec : Prop :=
  ∀ n, P16500293367618228078.a n = A206607 (n + 1)

end A206607

/-!
# A206608: Fibonacci sequence beginning 13, 10.

The programs for A206608, the canonical program `A206608.P17965867753104673435` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206608 has offset 1).

The definition of A206608 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A206608.anchor : A206608 1 = 13 ∧ A206608 2 = 10 ∧ ∀ n, 1 ≤ n → A206608 (n + 2) = A206608 (n + 1) + A206608 n` in `Proof.A206.A206608`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A206608.P6626931223465492879

`ogf((13-3x)/(1-x-x^2))`
-/

namespace A206608.P6626931223465492879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [13, -3] [1, -1, -1] n

end

end A206608.P6626931223465492879

namespace A206608

/-- `ogf((13-3x)/(1-x-x^2))` -/
def P6626931223465492879.Spec : Prop :=
  ∀ n, P6626931223465492879.a n = A206608 (n + 1)

end A206608

/-! ## A206608.P17965867753104673435

`a(n-1)+a(n-2)` with `a(0)=13, a(1)=10`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A206608

/-- `a(n-1)+a(n-2)` -/
def P17965867753104673435.Spec : Prop :=
  ∀ n, (P17965867753104673435.a n : ℤ) = A206608 (n + 1)

theorem P17965867753104673435.correct : P17965867753104673435.Spec := by
  intro n
  simp only [A206608, Nat.add_sub_cancel]

end A206608

/-! ## A206608.P8928879033815542135

`13*A000045(n+1)-3*A000045(n)`
-/

namespace A206608.P8928879033815542135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * A000045 (n + 1) - 3 * A000045 n

end

end A206608.P8928879033815542135

namespace A206608

/-- `13*A000045(n+1)-3*A000045(n)` -/
def P8928879033815542135.Spec : Prop :=
  ∀ n, P8928879033815542135.a n = A206608 (n + 1)

end A206608

/-! ## A206608.P16906915907885833890

`a(n-1)-ceil(-a(n-2))` with `a(0)=13, a(1)=10`

`ceil` is left out, it is the identity on integers.
-/

namespace A206608.P16906915907885833890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13, 10] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A206608.P16906915907885833890

namespace A206608

/-- `a(n-1)-ceil(-a(n-2))` -/
def P16906915907885833890.Spec : Prop :=
  ∀ n, P16906915907885833890.a n = A206608 (n + 1)

end A206608

/-! ## A206608.P6861338751605625730

`a(n-1)-round(-a(n-2))` with `a(0)=13, a(1)=10`

`round` is left out, it is the identity on integers.
-/

namespace A206608.P6861338751605625730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13, 10] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A206608.P6861338751605625730

namespace A206608

/-- `a(n-1)-round(-a(n-2))` -/
def P6861338751605625730.Spec : Prop :=
  ∀ n, P6861338751605625730.a n = A206608 (n + 1)

end A206608

/-! ## A206608.P4069452394270094791

`abs(Δ[a(n-2)-a(n-1)])` with `a(0)=16, a(1)=3`
-/

namespace A206608.P4069452394270094791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [16, 3] fun n f1 =>
  f1 (n - 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A206608.P4069452394270094791

namespace A206608

/-- `abs(Δ[a(n-2)-a(n-1)])` -/
def P4069452394270094791.Spec : Prop :=
  ∀ n, P4069452394270094791.a n = A206608 (n + 1)

end A206608

/-! ## A206608.P13096548713205203471

`A184959(n)+A104449(n)`
-/

namespace A206608.P13096548713205203471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184959 n + A104449 n

end

end A206608.P13096548713205203471

namespace A206608

/-- `A184959(n)+A104449(n)` -/
def P13096548713205203471.Spec : Prop :=
  ∀ n, P13096548713205203471.a n = A206608 (n + 1)

end A206608

/-! ## A206608.P17375414915586512117

`A280154(n)+A020701(n)`
-/

namespace A206608.P17375414915586512117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280154 n + A020701 n

end

end A206608.P17375414915586512117

namespace A206608

/-- `A280154(n)+A020701(n)` -/
def P17375414915586512117.Spec : Prop :=
  ∀ n, P17375414915586512117.a n = A206608 (n + 1)

end A206608

/-! ## A206608.P13939238879331863723

`A206422(n+1)+A000032(n)`
-/

namespace A206608.P13939238879331863723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206422 (n + 1) + A000032 n

end

end A206608.P13939238879331863723

namespace A206608

/-- `A206422(n+1)+A000032(n)` -/
def P13939238879331863723.Spec : Prop :=
  ∀ n, P13939238879331863723.a n = A206608 (n + 1)

end A206608

/-! ## A206608.P16922533733697018776

`A206609(n+1)+A000045(n)`
-/

namespace A206608.P16922533733697018776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206609 (n + 1) + A000045 n

end

end A206608.P16922533733697018776

namespace A206608

/-- `A206609(n+1)+A000045(n)` -/
def P16922533733697018776.Spec : Prop :=
  ∀ n, P16922533733697018776.a n = A206608 (n + 1)

end A206608

/-! ## A206608.P10956518727364070421

`A206419(n+1)+A020695(n)`
-/

namespace A206608.P10956518727364070421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206419 (n + 1) + A020695 n

end

end A206608.P10956518727364070421

namespace A206608

/-- `A206419(n+1)+A020695(n)` -/
def P10956518727364070421.Spec : Prop :=
  ∀ n, P10956518727364070421.a n = A206608 (n + 1)

end A206608

/-! ## A206608.P1687543101009606683

`A206611(n+1)+A022086(n)`
-/

namespace A206608.P1687543101009606683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206611 (n + 1) + A022086 n

end

end A206608.P1687543101009606683

namespace A206608

/-- `A206611(n+1)+A022086(n)` -/
def P1687543101009606683.Spec : Prop :=
  ∀ n, P1687543101009606683.a n = A206608 (n + 1)

end A206608

/-! ## A206608.P7493547766097386572

`A206612(n+1)+A022087(n)`
-/

namespace A206608.P7493547766097386572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206612 (n + 1) + A022087 n

end

end A206608.P7493547766097386572

namespace A206608

/-- `A206612(n+1)+A022087(n)` -/
def P7493547766097386572.Spec : Prop :=
  ∀ n, P7493547766097386572.a n = A206608 (n + 1)

end A206608

/-! ## A206608.P16107029262914830502

`A206607(n+1)-A000045(n)`
-/

namespace A206608.P16107029262914830502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206607 (n + 1) - A000045 n

end

end A206608.P16107029262914830502

namespace A206608

/-- `A206607(n+1)-A000045(n)` -/
def P16107029262914830502.Spec : Prop :=
  ∀ n, P16107029262914830502.a n = A206608 (n + 1)

end A206608

/-! ## A206608.P6402003524605179526

`A206641(n+1)-A152163(n)`
-/

namespace A206608.P6402003524605179526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206641 (n + 1) - A152163 n

end

end A206608.P6402003524605179526

namespace A206608

/-- `A206641(n+1)-A152163(n)` -/
def P6402003524605179526.Spec : Prop :=
  ∀ n, P6402003524605179526.a n = A206608 (n + 1)

end A206608

/-! ## A206608.P3221180478302010126

`A022120(n+1)+Δ[A022089(n)]`
-/

namespace A206608.P3221180478302010126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022120 (n + 1) + (f1 (n + 1) - f1 n)

end

end A206608.P3221180478302010126

namespace A206608

/-- `A022120(n+1)+Δ[A022089(n)]` -/
def P3221180478302010126.Spec : Prop :=
  ∀ n, P3221180478302010126.a n = A206608 (n + 1)

end A206608

/-! ## A206608.P12702392364938192915

`A206423(n+1)+A000032(n+1)`
-/

namespace A206608.P12702392364938192915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206423 (n + 1) + A000032 (n + 1)

end

end A206608.P12702392364938192915

namespace A206608

/-- `A206423(n+1)+A000032(n+1)` -/
def P12702392364938192915.Spec : Prop :=
  ∀ n, P12702392364938192915.a n = A206608 (n + 1)

end A206608

/-! ## A206608.P3645645377592093576

`A206423(n+1)+A000204(n+1)`
-/

namespace A206608.P3645645377592093576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206423 (n + 1) + A000204 (n + 1)

end

end A206608.P3645645377592093576

namespace A206608

/-- `A206423(n+1)+A000204(n+1)` -/
def P3645645377592093576.Spec : Prop :=
  ∀ n, P3645645377592093576.a n = A206608 (n + 1)

end A206608

/-! ## A206608.P15265524069808090245

`A206610(n+1)+A118658(n+1)`
-/

namespace A206608.P15265524069808090245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206610 (n + 1) + A118658 (n + 1)

end

end A206608.P15265524069808090245

namespace A206608

/-- `A206610(n+1)+A118658(n+1)` -/
def P15265524069808090245.Spec : Prop :=
  ∀ n, P15265524069808090245.a n = A206608 (n + 1)

end A206608

/-! ## A206608.P360717614358292286

`A212804(n+1)+A206609(n+1)`
-/

namespace A206608.P360717614358292286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) + A206609 (n + 1)

end

end A206608.P360717614358292286

namespace A206608

/-- `A212804(n+1)+A206609(n+1)` -/
def P360717614358292286.Spec : Prop :=
  ∀ n, P360717614358292286.a n = A206608 (n + 1)

end A206608

/-!
# A206609: Fibonacci sequence beginning 13, 9.

The programs for A206609, the canonical program `A206609.P9568327497703040843` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206609 has offset 1).

The definition of A206609 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A206609.anchor : A206609 1 = 13 ∧ A206609 2 = 9 ∧ ∀ n, 1 ≤ n → A206609 (n + 2) = A206609 (n + 1) + A206609 n` in `Proof.A206.A206609`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A206609.P8927133549795164670

`ogf((13-4x)/(1-x-x^2))`
-/

namespace A206609.P8927133549795164670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [13, -4] [1, -1, -1] n

end

end A206609.P8927133549795164670

namespace A206609

/-- `ogf((13-4x)/(1-x-x^2))` -/
def P8927133549795164670.Spec : Prop :=
  ∀ n, P8927133549795164670.a n = A206609 (n + 1)

end A206609

/-! ## A206609.P9568327497703040843

`a(n-1)+a(n-2)` with `a(0)=13, a(1)=9`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A206609

/-- `a(n-1)+a(n-2)` -/
def P9568327497703040843.Spec : Prop :=
  ∀ n, (P9568327497703040843.a n : ℤ) = A206609 (n + 1)

theorem P9568327497703040843.correct : P9568327497703040843.Spec := by
  intro n
  simp only [A206609, Nat.add_sub_cancel]

end A206609

/-! ## A206609.P4093450690778703234

`13*A000045(n+1)-4*A000045(n)`
-/

namespace A206609.P4093450690778703234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * A000045 (n + 1) - 4 * A000045 n

end

end A206609.P4093450690778703234

namespace A206609

/-- `13*A000045(n+1)-4*A000045(n)` -/
def P4093450690778703234.Spec : Prop :=
  ∀ n, P4093450690778703234.a n = A206609 (n + 1)

end A206609

/-! ## A206609.P6481607819133693991

`a(n-1)-floor(-a(n-2))` with `a(0)=13, a(1)=9`

`floor` is left out, it is the identity on integers.
-/

namespace A206609.P6481607819133693991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13, 9] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A206609.P6481607819133693991

namespace A206609

/-- `a(n-1)-floor(-a(n-2))` -/
def P6481607819133693991.Spec : Prop :=
  ∀ n, P6481607819133693991.a n = A206609 (n + 1)

end A206609

/-! ## A206609.P7603254677551992020

`a(n-1)-ceil(-a(n-2))` with `a(0)=13, a(1)=9`

`ceil` is left out, it is the identity on integers.
-/

namespace A206609.P7603254677551992020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13, 9] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A206609.P7603254677551992020

namespace A206609

/-- `a(n-1)-ceil(-a(n-2))` -/
def P7603254677551992020.Spec : Prop :=
  ∀ n, P7603254677551992020.a n = A206609 (n + 1)

end A206609

/-! ## A206609.P16501699399576097071

`abs(Δ[a(n-2)-a(n-1)])` with `a(0)=17, a(1)=4`
-/

namespace A206609.P16501699399576097071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [17, 4] fun n f1 =>
  f1 (n - 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A206609.P16501699399576097071

namespace A206609

/-- `abs(Δ[a(n-2)-a(n-1)])` -/
def P16501699399576097071.Spec : Prop :=
  ∀ n, P16501699399576097071.a n = A206609 (n + 1)

end A206609

/-! ## A206609.P2899446901352096294

`∑[a(n-1)-(1-a(n-2))]-n` with `a(0)=13, a(1)=-3, a(2)=14`
-/

namespace A206609.P2899446901352096294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [13, -3, 14] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A206609.P2899446901352096294

namespace A206609

/-- `∑[a(n-1)-(1-a(n-2))]-n` -/
def P2899446901352096294.Spec : Prop :=
  ∀ n, P2899446901352096294.a n = A206609 (n + 1)

end A206609

/-! ## A206609.P2862695456528496680

`A190996(n)+A013655(n)`
-/

namespace A206609.P2862695456528496680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190996 n + A013655 n

end

end A206609.P2862695456528496680

namespace A206609

/-- `A190996(n)+A013655(n)` -/
def P2862695456528496680.Spec : Prop :=
  ∀ n, P2862695456528496680.a n = A206609 (n + 1)

end A206609

/-! ## A206609.P13091427984314255697

`A156279(n)+A022088(n+1)`
-/

namespace A206609.P13091427984314255697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156279 n + A022088 (n + 1)

end

end A206609.P13091427984314255697

namespace A206609

/-- `A156279(n)+A022088(n+1)` -/
def P13091427984314255697.Spec : Prop :=
  ∀ n, P13091427984314255697.a n = A206609 (n + 1)

end A206609

/-! ## A206609.P4149168668156656162

`A206420(n+1)+A000032(n)`
-/

namespace A206609.P4149168668156656162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206420 (n + 1) + A000032 n

end

end A206609.P4149168668156656162

namespace A206609

/-- `A206420(n+1)+A000032(n)` -/
def P4149168668156656162.Spec : Prop :=
  ∀ n, P4149168668156656162.a n = A206609 (n + 1)

end A206609

/-! ## A206609.P1070027554476771141

`A206610(n+1)+A000045(n)`
-/

namespace A206609.P1070027554476771141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206610 (n + 1) + A000045 n

end

end A206609.P1070027554476771141

namespace A206609

/-- `A206610(n+1)+A000045(n)` -/
def P1070027554476771141.Spec : Prop :=
  ∀ n, P1070027554476771141.a n = A206609 (n + 1)

end A206609

/-! ## A206609.P16023026217774231435

`A206612(n+1)+A022086(n)`
-/

namespace A206609.P16023026217774231435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206612 (n + 1) + A022086 n

end

end A206609.P16023026217774231435

namespace A206609

/-- `A206612(n+1)+A022086(n)` -/
def P16023026217774231435.Spec : Prop :=
  ∀ n, P16023026217774231435.a n = A206609 (n + 1)

end A206609

/-! ## A206609.P4273391598922000853

`A206422(n+1)+A118658(n)`
-/

namespace A206609.P4273391598922000853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206422 (n + 1) + A118658 n

end

end A206609.P4273391598922000853

namespace A206609

/-- `A206422(n+1)+A118658(n)` -/
def P4273391598922000853.Spec : Prop :=
  ∀ n, P4273391598922000853.a n = A206609 (n + 1)

end A206609

/-! ## A206609.P16679632686914434586

`A206608(n+1)-A000045(n)`
-/

namespace A206609.P16679632686914434586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206608 (n + 1) - A000045 n

end

end A206609.P16679632686914434586

namespace A206609

/-- `A206608(n+1)-A000045(n)` -/
def P16679632686914434586.Spec : Prop :=
  ∀ n, P16679632686914434586.a n = A206609 (n + 1)

end A206609

/-! ## A206609.P13947089002913768069

`A280154(n)+A000032(n+2)`
-/

namespace A206609.P13947089002913768069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280154 n + A000032 (n + 2)

end

end A206609.P13947089002913768069

namespace A206609

/-- `A280154(n)+A000032(n+2)` -/
def P13947089002913768069.Spec : Prop :=
  ∀ n, P13947089002913768069.a n = A206609 (n + 1)

end A206609

/-! ## A206609.P2810899669601308083

`A280154(n)+A000204(n+2)`
-/

namespace A206609.P2810899669601308083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280154 n + A000204 (n + 2)

end

end A206609.P2810899669601308083

namespace A206609

/-- `A280154(n)+A000204(n+2)` -/
def P2810899669601308083.Spec : Prop :=
  ∀ n, P2810899669601308083.a n = A206609 (n + 1)

end A206609

/-! ## A206609.P4306790146951060536

`A206641(n+1)-A212804(n)`
-/

namespace A206609.P4306790146951060536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206641 (n + 1) - A212804 n

end

end A206609.P4306790146951060536

namespace A206609

/-- `A206641(n+1)-A212804(n)` -/
def P4306790146951060536.Spec : Prop :=
  ∀ n, P4306790146951060536.a n = A206609 (n + 1)

end A206609

/-! ## A206609.P17631649843892965550

`A190995(n)+2*A000032(n)`
-/

namespace A206609.P17631649843892965550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190995 n + 2 * A000032 n

end

end A206609.P17631649843892965550

namespace A206609

/-- `A190995(n)+2*A000032(n)` -/
def P17631649843892965550.Spec : Prop :=
  ∀ n, P17631649843892965550.a n = A206609 (n + 1)

end A206609

/-! ## A206609.P16986652246647862835

`A022120(n+1)+Δ[A187892(n)]`
-/

namespace A206609.P16986652246647862835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187892 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022120 (n + 1) + (f1 (n + 1) - f1 n)

end

end A206609.P16986652246647862835

namespace A206609

/-- `A022120(n+1)+Δ[A187892(n)]` -/
def P16986652246647862835.Spec : Prop :=
  ∀ n, P16986652246647862835.a n = A206609 (n + 1)

end A206609

/-! ## A206609.P11396877543988250164

`A206641(n+1)+A152163(n+1)`
-/

namespace A206609.P11396877543988250164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206641 (n + 1) + A152163 (n + 1)

end

end A206609.P11396877543988250164

namespace A206609

/-- `A206641(n+1)+A152163(n+1)` -/
def P11396877543988250164.Spec : Prop :=
  ∀ n, P11396877543988250164.a n = A206609 (n + 1)

end A206609

/-!
# A206610: Fibonacci sequence beginning 13, 8.

The programs for A206610, the canonical program `A206610.P16858076307894253414` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206610 has offset 1).

The definition of A206610 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A206610.anchor : A206610 1 = 13 ∧ A206610 2 = 8 ∧ ∀ n, 1 ≤ n → A206610 (n + 2) = A206610 (n + 1) + A206610 n` in `Proof.A206.A206610`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A206610.P2967607603251503714

`ogf((13-5x)/(1-x-x^2))`
-/

namespace A206610.P2967607603251503714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [13, -5] [1, -1, -1] n

end

end A206610.P2967607603251503714

namespace A206610

/-- `ogf((13-5x)/(1-x-x^2))` -/
def P2967607603251503714.Spec : Prop :=
  ∀ n, P2967607603251503714.a n = A206610 (n + 1)

end A206610

/-! ## A206610.P16858076307894253414

`a(n-1)+a(n-2)` with `a(0)=13, a(1)=8`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A206610

/-- `a(n-1)+a(n-2)` -/
def P16858076307894253414.Spec : Prop :=
  ∀ n, (P16858076307894253414.a n : ℤ) = A206610 (n + 1)

theorem P16858076307894253414.correct : P16858076307894253414.Spec := by
  intro n
  simp only [A206610, Nat.add_sub_cancel]

end A206610

/-! ## A206610.P8614846870050226924

`13*A000045(n+1)-5*A000045(n)`
-/

namespace A206610.P8614846870050226924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * A000045 (n + 1) - 5 * A000045 n

end

end A206610.P8614846870050226924

namespace A206610

/-- `13*A000045(n+1)-5*A000045(n)` -/
def P8614846870050226924.Spec : Prop :=
  ∀ n, P8614846870050226924.a n = A206610 (n + 1)

end A206610

/-! ## A206610.P15080132990281385472

`a(n-1)-floor(-a(n-2))` with `a(0)=13, a(1)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A206610.P15080132990281385472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13, 8] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A206610.P15080132990281385472

namespace A206610

/-- `a(n-1)-floor(-a(n-2))` -/
def P15080132990281385472.Spec : Prop :=
  ∀ n, P15080132990281385472.a n = A206610 (n + 1)

end A206610

/-! ## A206610.P8919832922878983007

`a(n-1)-ceil(-a(n-2))` with `a(0)=13, a(1)=8`

`ceil` is left out, it is the identity on integers.
-/

namespace A206610.P8919832922878983007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13, 8] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A206610.P8919832922878983007

namespace A206610

/-- `a(n-1)-ceil(-a(n-2))` -/
def P8919832922878983007.Spec : Prop :=
  ∀ n, P8919832922878983007.a n = A206610 (n + 1)

end A206610

/-! ## A206610.P18172993247228557615

`a(n-1)-round(-a(n-2))` with `a(0)=13, a(1)=8`

`round` is left out, it is the identity on integers.
-/

namespace A206610.P18172993247228557615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13, 8] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A206610.P18172993247228557615

namespace A206610

/-- `a(n-1)-round(-a(n-2))` -/
def P18172993247228557615.Spec : Prop :=
  ∀ n, P18172993247228557615.a n = A206610 (n + 1)

end A206610

/-! ## A206610.P12459526482644960879

`abs(Δ[a(n-2)-a(n-1)])` with `a(0)=18, a(1)=5`
-/

namespace A206610.P12459526482644960879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [18, 5] fun n f1 =>
  f1 (n - 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A206610.P12459526482644960879

namespace A206610

/-- `abs(Δ[a(n-2)-a(n-1)])` -/
def P12459526482644960879.Spec : Prop :=
  ∀ n, P12459526482644960879.a n = A206610 (n + 1)

end A206610

/-! ## A206610.P12889108918549557407

`1-floor(1-a(n-1)-a(n-2))` with `a(0)=13, a(1)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A206610.P12889108918549557407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13, 8] fun n a =>
  1 - (1 - a (n - 1) - a (n - 2))

end

end A206610.P12889108918549557407

namespace A206610

/-- `1-floor(1-a(n-1)-a(n-2))` -/
def P12889108918549557407.Spec : Prop :=
  ∀ n, P12889108918549557407.a n = A206610 (n + 1)

end A206610

/-! ## A206610.P11114812698727658818

`A190996(n)+A104449(n)`
-/

namespace A206610.P11114812698727658818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190996 n + A104449 n

end

end A206610.P11114812698727658818

namespace A206610

/-- `A190996(n)+A104449(n)` -/
def P11114812698727658818.Spec : Prop :=
  ∀ n, P11114812698727658818.a n = A206610 (n + 1)

end A206610

/-! ## A206610.P7542851039813976851

`A206419(n+1)+A000032(n)`
-/

namespace A206610.P7542851039813976851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206419 (n + 1) + A000032 n

end

end A206610.P7542851039813976851

namespace A206610

/-- `A206419(n+1)+A000032(n)` -/
def P7542851039813976851.Spec : Prop :=
  ∀ n, P7542851039813976851.a n = A206610 (n + 1)

end A206610

/-! ## A206610.P4317765915956225874

`A206611(n+1)+A000045(n)`
-/

namespace A206610.P4317765915956225874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206611 (n + 1) + A000045 n

end

end A206610.P4317765915956225874

namespace A206610

/-- `A206611(n+1)+A000045(n)` -/
def P4317765915956225874.Spec : Prop :=
  ∀ n, P4317765915956225874.a n = A206610 (n + 1)

end A206610

/-! ## A206610.P5161454697745097249

`A280154(n)+A022086(n+1)`
-/

namespace A206610.P5161454697745097249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280154 n + A022086 (n + 1)

end

end A206610.P5161454697745097249

namespace A206610

/-- `A280154(n)+A022086(n+1)` -/
def P5161454697745097249.Spec : Prop :=
  ∀ n, P5161454697745097249.a n = A206610 (n + 1)

end A206610

/-! ## A206610.P6751827949985002106

`A206420(n+1)+A118658(n)`
-/

namespace A206610.P6751827949985002106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206420 (n + 1) + A118658 n

end

end A206610.P6751827949985002106

namespace A206610

/-- `A206420(n+1)+A118658(n)` -/
def P6751827949985002106.Spec : Prop :=
  ∀ n, P6751827949985002106.a n = A206610 (n + 1)

end A206610

/-! ## A206610.P729453723034652910

`A280154(n)+A097135(n+1)`
-/

namespace A206610.P729453723034652910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280154 n + A097135 (n + 1)

end

end A206610.P729453723034652910

namespace A206610

/-- `A280154(n)+A097135(n+1)` -/
def P729453723034652910.Spec : Prop :=
  ∀ n, P729453723034652910.a n = A206610 (n + 1)

end A206610

/-! ## A206610.P14449899660662391960

`A206609(n+1)-A000045(n)`
-/

namespace A206610.P14449899660662391960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206609 (n + 1) - A000045 n

end

end A206610.P14449899660662391960

namespace A206610

/-- `A206609(n+1)-A000045(n)` -/
def P14449899660662391960.Spec : Prop :=
  ∀ n, P14449899660662391960.a n = A206610 (n + 1)

end A206610

/-! ## A206610.P1302327298028534210

`A206607(n+1)-A022086(n)`
-/

namespace A206610.P1302327298028534210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206607 (n + 1) - A022086 n

end

end A206610.P1302327298028534210

namespace A206610

/-- `A206607(n+1)-A022086(n)` -/
def P1302327298028534210.Spec : Prop :=
  ∀ n, P1302327298028534210.a n = A206610 (n + 1)

end A206610

/-! ## A206610.P3731419482407349190

`A206423(n+1)+A000045(n+1)`
-/

namespace A206610.P3731419482407349190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206423 (n + 1) + A000045 (n + 1)

end

end A206610.P3731419482407349190

namespace A206610

/-- `A206423(n+1)+A000045(n+1)` -/
def P3731419482407349190.Spec : Prop :=
  ∀ n, P3731419482407349190.a n = A206610 (n + 1)

end A206610

/-! ## A206610.P3756124130036796227

`A212804(n+1)+A206611(n+1)`
-/

namespace A206610.P3756124130036796227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) + A206611 (n + 1)

end

end A206610.P3756124130036796227

namespace A206610

/-- `A212804(n+1)+A206611(n+1)` -/
def P3756124130036796227.Spec : Prop :=
  ∀ n, P3756124130036796227.a n = A206610 (n + 1)

end A206610

/-! ## A206610.P17004464130633245104

`A206641(n+1)-A000045(n+1)`
-/

namespace A206610.P17004464130633245104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206641 (n + 1) - A000045 (n + 1)

end

end A206610.P17004464130633245104

namespace A206610

/-- `A206641(n+1)-A000045(n+1)` -/
def P17004464130633245104.Spec : Prop :=
  ∀ n, P17004464130633245104.a n = A206610 (n + 1)

end A206610

/-! ## A206610.P11616080689296872322

`A206611(n+1)+A001611(n)-1`
-/

namespace A206610.P11616080689296872322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206611 (n + 1) + (A001611 n - 1)

end

end A206610.P11616080689296872322

namespace A206610

/-- `A206611(n+1)+A001611(n)-1` -/
def P11616080689296872322.Spec : Prop :=
  ∀ n, P11616080689296872322.a n = A206610 (n + 1)

end A206610

/-!
# A206611: Fibonacci sequence beginning 13, 7.

The programs for A206611, the canonical program `A206611.P15323059358089091524` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206611 has offset 1).

The definition of A206611 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A206611.anchor : A206611 1 = 13 ∧ A206611 2 = 7 ∧ ∀ n, 1 ≤ n → A206611 (n + 2) = A206611 (n + 1) + A206611 n` in `Proof.A206.A206611`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A206611.P1102463300277329125

`ogf((13-6x)/(1-x-x^2))`
-/

namespace A206611.P1102463300277329125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [13, -6] [1, -1, -1] n

end

end A206611.P1102463300277329125

namespace A206611

/-- `ogf((13-6x)/(1-x-x^2))` -/
def P1102463300277329125.Spec : Prop :=
  ∀ n, P1102463300277329125.a n = A206611 (n + 1)

end A206611

/-! ## A206611.P15323059358089091524

`a(n-1)+a(n-2)` with `a(0)=13, a(1)=7`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A206611

/-- `a(n-1)+a(n-2)` -/
def P15323059358089091524.Spec : Prop :=
  ∀ n, (P15323059358089091524.a n : ℤ) = A206611 (n + 1)

theorem P15323059358089091524.correct : P15323059358089091524.Spec := by
  intro n
  simp only [A206611, Nat.add_sub_cancel]

end A206611

/-! ## A206611.P4263061179302715249

`13*A000045(n+1)-6*A000045(n)`
-/

namespace A206611.P4263061179302715249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * A000045 (n + 1) - 6 * A000045 n

end

end A206611.P4263061179302715249

namespace A206611

/-- `13*A000045(n+1)-6*A000045(n)` -/
def P4263061179302715249.Spec : Prop :=
  ∀ n, P4263061179302715249.a n = A206611 (n + 1)

end A206611

/-! ## A206611.P4666550387938686150

`a(n-1)-floor(-a(n-2))` with `a(0)=13, a(1)=7`

`floor` is left out, it is the identity on integers.
-/

namespace A206611.P4666550387938686150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13, 7] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A206611.P4666550387938686150

namespace A206611

/-- `a(n-1)-floor(-a(n-2))` -/
def P4666550387938686150.Spec : Prop :=
  ∀ n, P4666550387938686150.a n = A206611 (n + 1)

end A206611

/-! ## A206611.P15461560143977003883

`a(n-1)-ceil(-a(n-2))` with `a(0)=13, a(1)=7`

`ceil` is left out, it is the identity on integers.
-/

namespace A206611.P15461560143977003883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13, 7] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A206611.P15461560143977003883

namespace A206611

/-- `a(n-1)-ceil(-a(n-2))` -/
def P15461560143977003883.Spec : Prop :=
  ∀ n, P15461560143977003883.a n = A206611 (n + 1)

end A206611

/-! ## A206611.P9619177041396374410

`a(n-1)-round(-a(n-2))` with `a(0)=13, a(1)=7`

`round` is left out, it is the identity on integers.
-/

namespace A206611.P9619177041396374410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13, 7] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A206611.P9619177041396374410

namespace A206611

/-- `a(n-1)-round(-a(n-2))` -/
def P9619177041396374410.Spec : Prop :=
  ∀ n, P9619177041396374410.a n = A206611 (n + 1)

end A206611

/-! ## A206611.P9981959473594133325

`1-floor(1-a(n-1)-a(n-2))` with `a(0)=13, a(1)=7`

`floor` is left out, it is the identity on integers.
-/

namespace A206611.P9981959473594133325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13, 7] fun n a =>
  1 - (1 - a (n - 1) - a (n - 2))

end

end A206611.P9981959473594133325

namespace A206611

/-- `1-floor(1-a(n-1)-a(n-2))` -/
def P9981959473594133325.Spec : Prop :=
  ∀ n, P9981959473594133325.a n = A206611 (n + 1)

end A206611

/-! ## A206611.P4111743542140985775

`A280154(n)+A013655(n)`
-/

namespace A206611.P4111743542140985775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280154 n + A013655 n

end

end A206611.P4111743542140985775

namespace A206611

/-- `A280154(n)+A013655(n)` -/
def P4111743542140985775.Spec : Prop :=
  ∀ n, P4111743542140985775.a n = A206611 (n + 1)

end A206611

/-! ## A206611.P10123300445880357674

`A258160(n)-A104449(n)`
-/

namespace A206611.P10123300445880357674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258160 n - A104449 n

end

end A206611.P10123300445880357674

namespace A206611

/-- `A258160(n)-A104449(n)` -/
def P10123300445880357674.Spec : Prop :=
  ∀ n, P10123300445880357674.a n = A206611 (n + 1)

end A206611

/-! ## A206611.P14021027785511089089

`A206612(n+1)+A000045(n)`
-/

namespace A206611.P14021027785511089089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206612 (n + 1) + A000045 n

end

end A206611.P14021027785511089089

namespace A206611

/-- `A206612(n+1)+A000045(n)` -/
def P14021027785511089089.Spec : Prop :=
  ∀ n, P14021027785511089089.a n = A206611 (n + 1)

end A206611

/-! ## A206611.P13231121810429322228

`A206419(n+1)+A118658(n)`
-/

namespace A206611.P13231121810429322228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206419 (n + 1) + A118658 n

end

end A206611.P13231121810429322228

namespace A206611

/-- `A206419(n+1)+A118658(n)` -/
def P13231121810429322228.Spec : Prop :=
  ∀ n, P13231121810429322228.a n = A206611 (n + 1)

end A206611

/-! ## A206611.P12509315372058525286

`A212804(n)+A206423(n+1)`
-/

namespace A206611.P12509315372058525286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A206423 (n + 1)

end

end A206611.P12509315372058525286

namespace A206611

/-- `A212804(n)+A206423(n+1)` -/
def P12509315372058525286.Spec : Prop :=
  ∀ n, P12509315372058525286.a n = A206611 (n + 1)

end A206611

/-! ## A206611.P737827274050963837

`A206610(n+1)-A000045(n)`
-/

namespace A206611.P737827274050963837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206610 (n + 1) - A000045 n

end

end A206611.P737827274050963837

namespace A206611

/-- `A206610(n+1)-A000045(n)` -/
def P737827274050963837.Spec : Prop :=
  ∀ n, P737827274050963837.a n = A206611 (n + 1)

end A206611

/-! ## A206611.P13924109439195294008

`A206607(n+1)-A022087(n)`
-/

namespace A206611.P13924109439195294008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206607 (n + 1) - A022087 n

end

end A206611.P13924109439195294008

namespace A206611

/-- `A206607(n+1)-A022087(n)` -/
def P13924109439195294008.Spec : Prop :=
  ∀ n, P13924109439195294008.a n = A206611 (n + 1)

end A206611

/-! ## A206611.P2125144552625400525

`A206608(n+1)-A022086(n)`
-/

namespace A206611.P2125144552625400525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206608 (n + 1) - A022086 n

end

end A206611.P2125144552625400525

namespace A206611

/-- `A206608(n+1)-A022086(n)` -/
def P2125144552625400525.Spec : Prop :=
  ∀ n, P2125144552625400525.a n = A206611 (n + 1)

end A206611

/-! ## A206611.P2571166616035240452

`A190995(n)+2*A118658(n)`
-/

namespace A206611.P2571166616035240452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190995 n + 2 * A118658 n

end

end A206611.P2571166616035240452

namespace A206611

/-- `A190995(n)+2*A118658(n)` -/
def P2571166616035240452.Spec : Prop :=
  ∀ n, P2571166616035240452.a n = A206611 (n + 1)

end A206611

/-! ## A206611.P11141151165021349425

`A206609(n+1)-A118658(n+1)`
-/

namespace A206611.P11141151165021349425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206609 (n + 1) - A118658 (n + 1)

end

end A206611.P11141151165021349425

namespace A206611

/-- `A206609(n+1)-A118658(n+1)` -/
def P11141151165021349425.Spec : Prop :=
  ∀ n, P11141151165021349425.a n = A206611 (n + 1)

end A206611

/-! ## A206611.P8626942745818392765

`A206423(n+1)-A152163(n+1)`
-/

namespace A206611.P8626942745818392765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206423 (n + 1) - A152163 (n + 1)

end

end A206611.P8626942745818392765

namespace A206611

/-- `A206423(n+1)-A152163(n+1)` -/
def P8626942745818392765.Spec : Prop :=
  ∀ n, P8626942745818392765.a n = A206611 (n + 1)

end A206611

/-! ## A206611.P1645160129107251907

`A206641(n+1)-A000045(n+2)`
-/

namespace A206611.P1645160129107251907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206641 (n + 1) - A000045 (n + 2)

end

end A206611.P1645160129107251907

namespace A206611

/-- `A206641(n+1)-A000045(n+2)` -/
def P1645160129107251907.Spec : Prop :=
  ∀ n, P1645160129107251907.a n = A206611 (n + 1)

end A206611

/-! ## A206611.P4304463635603022547

`A206612(n+1)-A152163(n+2)`
-/

namespace A206611.P4304463635603022547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206612 (n + 1) - A152163 (n + 2)

end

end A206611.P4304463635603022547

namespace A206611

/-- `A206612(n+1)-A152163(n+2)` -/
def P4304463635603022547.Spec : Prop :=
  ∀ n, P4304463635603022547.a n = A206611 (n + 1)

end A206611

/-!
# A206612: Fibonacci sequence beginning 13, 6.

The programs for A206612, the canonical program `A206612.P2282506863032743482` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206612 has offset 1).

The definition of A206612 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A206612.anchor : A206612 1 = 13 ∧ A206612 2 = 6 ∧ ∀ n, 1 ≤ n → A206612 (n + 2) = A206612 (n + 1) + A206612 n` in `Proof.A206.A206612`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A206612.P668162417910035046

`ogf((13-7x)/(1-x-x^2))`
-/

namespace A206612.P668162417910035046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [13, -7] [1, -1, -1] n

end

end A206612.P668162417910035046

namespace A206612

/-- `ogf((13-7x)/(1-x-x^2))` -/
def P668162417910035046.Spec : Prop :=
  ∀ n, P668162417910035046.a n = A206612 (n + 1)

end A206612

/-! ## A206612.P2282506863032743482

`a(n-1)+a(n-2)` with `a(0)=13, a(1)=6`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A206612

/-- `a(n-1)+a(n-2)` -/
def P2282506863032743482.Spec : Prop :=
  ∀ n, (P2282506863032743482.a n : ℤ) = A206612 (n + 1)

theorem P2282506863032743482.correct : P2282506863032743482.Spec := by
  intro n
  simp only [A206612, Nat.add_sub_cancel]

end A206612

/-! ## A206612.P13273095457021497645

`13*A000045(n+1)-7*A000045(n)`
-/

namespace A206612.P13273095457021497645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * A000045 (n + 1) - 7 * A000045 n

end

end A206612.P13273095457021497645

namespace A206612

/-- `13*A000045(n+1)-7*A000045(n)` -/
def P13273095457021497645.Spec : Prop :=
  ∀ n, P13273095457021497645.a n = A206612 (n + 1)

end A206612

/-! ## A206612.P13557781901324039771

`a(n-1)-floor(-a(n-2))` with `a(0)=13, a(1)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A206612.P13557781901324039771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13, 6] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A206612.P13557781901324039771

namespace A206612

/-- `a(n-1)-floor(-a(n-2))` -/
def P13557781901324039771.Spec : Prop :=
  ∀ n, P13557781901324039771.a n = A206612 (n + 1)

end A206612

/-! ## A206612.P16867162810218589569

`a(n-1)-ceil(-a(n-2))` with `a(0)=13, a(1)=6`

`ceil` is left out, it is the identity on integers.
-/

namespace A206612.P16867162810218589569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13, 6] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A206612.P16867162810218589569

namespace A206612

/-- `a(n-1)-ceil(-a(n-2))` -/
def P16867162810218589569.Spec : Prop :=
  ∀ n, P16867162810218589569.a n = A206612 (n + 1)

end A206612

/-! ## A206612.P8325725633259218873

`a(n-1)-round(-a(n-2))` with `a(0)=13, a(1)=6`

`round` is left out, it is the identity on integers.
-/

namespace A206612.P8325725633259218873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13, 6] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A206612.P8325725633259218873

namespace A206612

/-- `a(n-1)-round(-a(n-2))` -/
def P8325725633259218873.Spec : Prop :=
  ∀ n, P8325725633259218873.a n = A206612 (n + 1)

end A206612

/-! ## A206612.P7220090785857189116

`a(n-1)-(char[1]-a(n-2))` with `a(0)=13, a(1)=6`
-/

namespace A206612.P7220090785857189116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [13, 6] fun n a =>
  a (n - 1) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 2))

end

end A206612.P7220090785857189116

namespace A206612

/-- `a(n-1)-(char[1]-a(n-2))` -/
def P7220090785857189116.Spec : Prop :=
  ∀ n, P7220090785857189116.a n = A206612 (n + 1)

end A206612

/-! ## A206612.P16356611379278882954

`1-floor(1-a(n-1)-a(n-2))` with `a(0)=13, a(1)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A206612.P16356611379278882954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13, 6] fun n a =>
  1 - (1 - a (n - 1) - a (n - 2))

end

end A206612.P16356611379278882954

namespace A206612

/-- `1-floor(1-a(n-1)-a(n-2))` -/
def P16356611379278882954.Spec : Prop :=
  ∀ n, P16356611379278882954.a n = A206612 (n + 1)

end A206612

/-! ## A206612.P16285932727443279836

`2-(4/2-a(n-1)-a(n-2))` with `a(0)=13, a(1)=6`
-/

namespace A206612.P16285932727443279836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [13, 6] fun n a =>
  2 - ((4 : ℚ) / 2 - a (n - 1) - a (n - 2))

end

end A206612.P16285932727443279836

namespace A206612

/-- `2-(4/2-a(n-1)-a(n-2))` -/
def P16285932727443279836.Spec : Prop :=
  ∀ n, P16285932727443279836.a n = (A206612 (n + 1) : ℚ)

end A206612

/-! ## A206612.P17827510032170531001

`A280154(n)+A104449(n)`
-/

namespace A206612.P17827510032170531001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280154 n + A104449 n

end

end A206612.P17827510032170531001

namespace A206612

/-- `A280154(n)+A104449(n)` -/
def P17827510032170531001.Spec : Prop :=
  ∀ n, P17827510032170531001.a n = A206612 (n + 1)

end A206612

/-! ## A206612.P5537915940260699055

`A258160(n)-A013655(n)`
-/

namespace A206612.P5537915940260699055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258160 n - A013655 n

end

end A206612.P5537915940260699055

namespace A206612

/-- `A258160(n)-A013655(n)` -/
def P5537915940260699055.Spec : Prop :=
  ∀ n, P5537915940260699055.a n = A206612 (n + 1)

end A206612

/-! ## A206612.P8621631601968411643

`A206423(n+1)+A152163(n)`
-/

namespace A206612.P8621631601968411643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206423 (n + 1) + A152163 n

end

end A206612.P8621631601968411643

namespace A206612

/-- `A206423(n+1)+A152163(n)` -/
def P8621631601968411643.Spec : Prop :=
  ∀ n, P8621631601968411643.a n = A206612 (n + 1)

end A206612

/-! ## A206612.P16376533279267841480

`A206611(n+1)-A000045(n)`
-/

namespace A206612.P16376533279267841480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206611 (n + 1) - A000045 n

end

end A206612.P16376533279267841480

namespace A206612

/-- `A206611(n+1)-A000045(n)` -/
def P16376533279267841480.Spec : Prop :=
  ∀ n, P16376533279267841480.a n = A206612 (n + 1)

end A206612

/-! ## A206612.P16830655219480655227

`A206607(n+1)-A022088(n)`
-/

namespace A206612.P16830655219480655227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206607 (n + 1) - A022088 n

end

end A206612.P16830655219480655227

namespace A206612

/-- `A206607(n+1)-A022088(n)` -/
def P16830655219480655227.Spec : Prop :=
  ∀ n, P16830655219480655227.a n = A206612 (n + 1)

end A206612

/-! ## A206612.P16056434516247215484

`A206608(n+1)-A022087(n)`
-/

namespace A206612.P16056434516247215484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206608 (n + 1) - A022087 n

end

end A206612.P16056434516247215484

namespace A206612

/-- `A206608(n+1)-A022087(n)` -/
def P16056434516247215484.Spec : Prop :=
  ∀ n, P16056434516247215484.a n = A206612 (n + 1)

end A206612

/-! ## A206612.P13377599506579531704

`A206609(n+1)-A022086(n)`
-/

namespace A206612.P13377599506579531704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206609 (n + 1) - A022086 n

end

end A206612.P13377599506579531704

namespace A206612

/-- `A206609(n+1)-A022086(n)` -/
def P13377599506579531704.Spec : Prop :=
  ∀ n, P13377599506579531704.a n = A206612 (n + 1)

end A206612

/-! ## A206612.P3831518497751901886

`A206641(n+1)-A000032(n+1)`
-/

namespace A206612.P3831518497751901886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206641 (n + 1) - A000032 (n + 1)

end

end A206612.P3831518497751901886

namespace A206612

/-- `A206641(n+1)-A000032(n+1)` -/
def P3831518497751901886.Spec : Prop :=
  ∀ n, P3831518497751901886.a n = A206612 (n + 1)

end A206612

/-! ## A206612.P17647898518267148077

`A206641(n+1)-A000204(n+1)`
-/

namespace A206612.P17647898518267148077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206641 (n + 1) - A000204 (n + 1)

end

end A206612.P17647898518267148077

namespace A206612

/-- `A206641(n+1)-A000204(n+1)` -/
def P17647898518267148077.Spec : Prop :=
  ∀ n, P17647898518267148077.a n = A206612 (n + 1)

end A206612

/-! ## A206612.P4577016800904424679

`A206611(n+1)+1-A001611(n)`
-/

namespace A206612.P4577016800904424679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206611 (n + 1) + (1 - A001611 n)

end

end A206612.P4577016800904424679

namespace A206612

/-- `A206611(n+1)+1-A001611(n)` -/
def P4577016800904424679.Spec : Prop :=
  ∀ n, P4577016800904424679.a n = A206612 (n + 1)

end A206612

/-! ## A206612.P13518105032662202596

`A206610(n+1)-A118658(n+1)`
-/

namespace A206612.P13518105032662202596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206610 (n + 1) - A118658 (n + 1)

end

end A206612.P13518105032662202596

namespace A206612

/-- `A206610(n+1)-A118658(n+1)` -/
def P13518105032662202596.Spec : Prop :=
  ∀ n, P13518105032662202596.a n = A206612 (n + 1)

end A206612

/-!
# A206613: Number of (n+1)X(n+1) 0..2 arrays with every 2X3 or 3X2 subblock having no more than two equal edges, and new values 0..2 introduced in row major order.

The programs for A206613, there is no canonical definition to state claims against.
-/

/-! ## A206613.P9680281099350444826

`A206621(∑[4*n]+1)`
-/

namespace A206613.P9680281099350444826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206621 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206613.P9680281099350444826

/-!
# A206614: Number of (n+1) X 2 0..2 arrays with every 2 X 3 or 3 X 2 subblock having no more than two equal edges, and new values 0..2 introduced in row major order.

The programs for A206614, the canonical program `A206614.P14153659845781921044` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206614 has offset 1).

The definition of A206614 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206614.P14153659845781921044

`ogf((14-12x+48x^2-99x^3+42x^4)/(1-7x+5x^2-36x^3+42x^4))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A206614

/-- `ogf((14-12x+48x^2-99x^3+42x^4)/(1-7x+5x^2-36x^3+42x^4))` -/
def P14153659845781921044.Spec : Prop :=
  ∀ n, P14153659845781921044.a n = A206614 (n + 1)

theorem P14153659845781921044.correct : P14153659845781921044.Spec := by
  intro n
  simp only [A206614, Nat.add_sub_cancel]

end A206614

/-! ## A206614.P5665151222105627453

`A206621(∑[n]+1)`
-/

namespace A206614.P5665151222105627453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206621 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206614.P5665151222105627453

namespace A206614

/-- `A206621(∑[n]+1)` -/
def P5665151222105627453.Spec : Prop :=
  ∀ n, P5665151222105627453.a n = A206614 (n + 1)

end A206614

/-! ## A206614.P4032371790056266264

`record[A010054(n)*A206621(n+1)]`
-/

namespace A206614.P4032371790056266264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A206621 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206614.P4032371790056266264

namespace A206614

/-- `record[A010054(n)*A206621(n+1)]` -/
def P4032371790056266264.Spec : Prop :=
  ∀ n, P4032371790056266264.a n = A206614 (n + 1)

end A206614

/-! ## A206614.P3374749765266596811

`record[gcd(A002262(n), A206621(n+1))]`
-/

namespace A206614.P3374749765266596811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A206621 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206614.P3374749765266596811

namespace A206614

/-- `record[gcd(A002262(n), A206621(n+1))]` -/
def P3374749765266596811.Spec : Prop :=
  ∀ n, (P3374749765266596811.a n : ℤ) = A206614 (n + 1)

end A206614

/-! ## A206614.P15585429846083454407

`record[root(A206621(n+1), A002260(n+1))]`
-/

namespace A206614.P15585429846083454407
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206621 (n + 1) : ℝ) ^ (1 / (A002260 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206614.P15585429846083454407

namespace A206614

/-- `record[root(A206621(n+1), A002260(n+1))]` -/
def P15585429846083454407.Spec : Prop :=
  ∀ n, P15585429846083454407.a n = (A206614 (n + 1) : ℝ)

end A206614

/-!
# A206615: Number of (n+1)X3 0..2 arrays with every 2X3 or 3X2 subblock having no more than two equal edges, and new values 0..2 introduced in row major order.

The programs for A206615, there is no canonical definition to state claims against.
-/

/-! ## A206615.P1589355320385575598

`A206621(∑[n+1]+2)`
-/

namespace A206615.P1589355320385575598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206621 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A206615.P1589355320385575598

/-! ## A206615.P17967584829032763630

`record[A010054(n)*A206621(n+2)]`
-/

namespace A206615.P17967584829032763630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A206621 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206615.P17967584829032763630

/-! ## A206615.P17427386818171303085

`record[gcd(A002262(n), A206621(n+2))]`
-/

namespace A206615.P17427386818171303085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A206621 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206615.P17427386818171303085

/-! ## A206615.P16586355717323413062

`record[A206621(A101881(n)+1)]`
-/

namespace A206615.P16586355717323413062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206621 (A101881 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206615.P16586355717323413062

/-! ## A206615.P756751963488140430

`record[A206621(A198453(n+1))]`
-/

namespace A206615.P756751963488140430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206621 (A198453 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206615.P756751963488140430

/-!
# A206616: Number of (n+1)X4 0..2 arrays with every 2X3 or 3X2 subblock having no more than two equal edges, and new values 0..2 introduced in row major order.

The programs for A206616, there is no canonical definition to state claims against.
-/

/-! ## A206616.P4935273265587451994

`A206621(∑[n+2]+4)`
-/

namespace A206616.P4935273265587451994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206621 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A206616.P4935273265587451994

/-! ## A206616.P85391583224514424

`record[A206621(A198464(n+1))]`
-/

namespace A206616.P85391583224514424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206621 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206616.P85391583224514424

/-!
# A206617: Number of (n+1) X 5 0..2 arrays with every 2 X 3 or 3 X 2 subblock having no more than two equal edges, and new values 0..2 introduced in row major order.

The programs for A206617, there is no canonical definition to state claims against.
-/

/-! ## A206617.P8228271151533792361

`A206621(A374004(n+1))`
-/

namespace A206617.P8228271151533792361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206621 (A374004 (n + 1)).toNat

end

end A206617.P8228271151533792361

/-! ## A206617.P5530742671070452610

`A206621(A141214(n+1))`
-/

namespace A206617.P5530742671070452610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206621 (A141214 (n + 1)).toNat

end

end A206617.P5530742671070452610

/-!
# A206618: Number of (n+1) X 6 0..2 arrays with every 2 X 3 or 3 X 2 subblock having no more than two equal edges, and new values 0..2 introduced in row major order.

The programs for A206618, there is no canonical definition to state claims against.
-/

/-! ## A206618.P17261542158935384138

`A206621(A374005(n+1))`
-/

namespace A206618.P17261542158935384138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206621 (A374005 (n + 1)).toNat

end

end A206618.P17261542158935384138

/-!
# A206619: Number of (n+1)X7 0..2 arrays with every 2X3 or 3X2 subblock having no more than two equal edges, and new values 0..2 introduced in row major order.

The programs for A206619, there is no canonical definition to state claims against.
-/

/-! ## A206619.P9123058836705879195

`A206621(A374007(n+1))`
-/

namespace A206619.P9123058836705879195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206621 (A374007 (n + 1)).toNat

end

end A206619.P9123058836705879195

/-! ## A206619.P1763176728960643935

`A206621((n+4)²-∑[n+1]+1)`
-/

namespace A206619.P1763176728960643935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206621 (((n + 4) ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 1).toNat

end

end A206619.P1763176728960643935

/-!
# A206620: Number of (n+1)X8 0..2 arrays with every 2X3 or 3X2 subblock having no more than two equal edges, and new values 0..2 introduced in row major order.

The programs for A206620, there is no canonical definition to state claims against.
-/

/-! ## A206620.P11481170327903673045

`A206621(eq[4, A219347(n)])`
-/

namespace A206620.P11481170327903673045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206621 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206620.P11481170327903673045

/-!
# A206622: G.f.: Product_{n>0} ( (1+x^n)/(1-x^n) )^(n^2).

The programs for A206622, there is no canonical definition to state claims against.
-/

/-! ## A206622.P1775739339918878635

`A265844(n)-A138471(A322451(n))`
-/

namespace A206622.P1775739339918878635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265844 n - A138471 (A322451 n).toNat

end

end A206622.P1775739339918878635

/-! ## A206622.P11075740714164554971

`A266942(n)-A037851(A361523(3*n))`
-/

namespace A206622.P11075740714164554971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266942 n - A037851 (A361523 (3 * n)).toNat

end

end A206622.P11075740714164554971

/-!
# A206623: G.f.: Product_{n>0} ( (1+x^n)/(1-x^n) )^(n^3).

The programs for A206623, there is no canonical definition to state claims against.
-/

/-! ## A206623.P10405486305826621545

`A182841(n)+A052126(A006976(n))`
-/

namespace A206623.P10405486305826621545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182841 n + A052126 (A006976 n).toNat

end

end A206623.P10405486305826621545

/-!
# A206625: Expansion of x * (1 + x) * (1 - x^2) * (1 + x^3) / (1 - 2*x^2 - 2*x^4 - 2*x^6 + x^8) in powers of x.

The programs for A206625, the canonical program `A206625.P17695718160618929527` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206625 has offset 0).

The definition of A206625 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x+x^2-x^3+x^5-x^6-x^7)/(1-2x^2-2x^4-2x^6+x^8))` (program `A206625.P17695718160618929527`, by `A206625.P17695718160618929527.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A206625.P17695718160618929527

`ogf((x+x^2-x^3+x^5-x^6-x^7)/(1-2x^2-2x^4-2x^6+x^8))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A206625

/-- `ogf((x+x^2-x^3+x^5-x^6-x^7)/(1-2x^2-2x^4-2x^6+x^8))` -/
def P17695718160618929527.Spec : Prop :=
  ∀ n, P17695718160618929527.a n = A206625 n

theorem P17695718160618929527.correct : P17695718160618929527.Spec := by
  intro n
  simp only [A206625]

end A206625

/-! ## A206625.P16817625816730108765

`2*a(n-2)+2*a(n-4)+2*a(n-6)-a(n-8)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=2, a(5)=5, a(6)=5, a(7)=13`
-/

namespace A206625.P16817625816730108765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 1, 2, 5, 5, 13] fun n a =>
  2 * a (n - 2) + 2 * a (n - 4) + 2 * a (n - 6) - a (n - 8)

end

end A206625.P16817625816730108765

namespace A206625

/-- `2*a(n-2)+2*a(n-4)+2*a(n-6)-a(n-8)` -/
def P16817625816730108765.Spec : Prop :=
  ∀ n, P16817625816730108765.a n = A206625 n

end A206625

/-!
# A206626: Primes p such that p + previousprime(p) is a squarefree number.

The programs for A206626, the canonical program `A206626.P17427154198684155407` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206626 has offset 1).

The definition of A206626 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A206329, A206462, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A206626.P17427154198684155407

`A206329(n+1)-A206462(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A206626

/-- `A206329(n+1)-A206462(n+1)` -/
def P17427154198684155407.Spec : Prop :=
  ∀ n, P17427154198684155407.a n = A206626 (n + 1)

theorem P17427154198684155407.correct : P17427154198684155407.Spec := by
  intro n
  simp only [A206626, Nat.add_sub_cancel]

end A206626

/-! ## A206626.P17455627882875412082

`A003961(A206462(n+1))`
-/

namespace A206626.P17455627882875412082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A206462 (n + 1)).toNat

end

end A206626.P17455627882875412082

namespace A206626

/-- `A003961(A206462(n+1))` -/
def P17455627882875412082.Spec : Prop :=
  ∀ n, P17455627882875412082.a n = A206626 (n + 1)

end A206626

/-! ## A206626.P11484749667292495392

`A076272(A206329(1+n))`
-/

namespace A206626.P11484749667292495392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076272 (A206329 (1 + n)).toNat

end

end A206626.P11484749667292495392

namespace A206626

/-- `A076272(A206329(1+n))` -/
def P11484749667292495392.Spec : Prop :=
  ∀ n, P11484749667292495392.a n = A206626 (n + 1)

end A206626

/-! ## A206626.P11679887021203593088

`A151800(A206462(1+n))`
-/

namespace A206626.P11679887021203593088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A206462 (1 + n)).toNat

end

end A206626.P11679887021203593088

namespace A206626

/-- `A151800(A206462(1+n))` -/
def P11679887021203593088.Spec : Prop :=
  ∀ n, P11679887021203593088.a n = A206626 (n + 1)

end A206626

/-! ## A206626.P4312297754196141530

`A007918(A206462(n+1)+1)`
-/

namespace A206626.P4312297754196141530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A206462 (n + 1) + 1).toNat

end

end A206626.P4312297754196141530

namespace A206626

/-- `A007918(A206462(n+1)+1)` -/
def P4312297754196141530.Spec : Prop :=
  ∀ n, P4312297754196141530.a n = A206626 (n + 1)

end A206626

/-! ## A206626.P16284961199425155069

`record[A008683(A001043(n+1))²*A000040(n+2)]`
-/

namespace A206626.P16284961199425155069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A001043 (n + 1)).toNat ^ 2 * A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206626.P16284961199425155069

namespace A206626

/-- `record[A008683(A001043(n+1))²*A000040(n+2)]` -/
def P16284961199425155069.Spec : Prop :=
  ∀ n, P16284961199425155069.a n = A206626 (n + 1)

end A206626

/-!
# A206627: Number of (n+1)X(n+1) 0..2 arrays with every 2X3 or 3X2 subblock having no more than four equal edges, and new values 0..2 introduced in row major order.

The programs for A206627, there is no canonical definition to state claims against.
-/

/-! ## A206627.P11026768587517383568

`A206635((n+1)²+n²)`
-/

namespace A206627.P11026768587517383568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206635 ((n + 1) ^ 2 + n ^ 2)

end

end A206627.P11026768587517383568

/-!
# A206628: Number of (n+1) X 2 0..2 arrays with every 2 X 3 or 3 X 2 subblock having no more than four equal edges, and new values 0..2 introduced in row major order.

The programs for A206628, the canonical program `A206628.P15735217371616049767` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206628 has offset 1).

The definition of A206628 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206628.P15735217371616049767

`ogf((14+9x+5x^2-3x^3)/(1-8x-8x^2-6x^3))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A206628

/-- `ogf((14+9x+5x^2-3x^3)/(1-8x-8x^2-6x^3))` -/
def P15735217371616049767.Spec : Prop :=
  ∀ n, P15735217371616049767.a n = A206628 (n + 1)

theorem P15735217371616049767.correct : P15735217371616049767.Spec := by
  intro n
  simp only [A206628, Nat.add_sub_cancel]

end A206628

/-! ## A206628.P8216608622494556957

`A206635(∑[n]+1)`
-/

namespace A206628.P8216608622494556957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206635 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206628.P8216608622494556957

namespace A206628

/-- `A206635(∑[n]+1)` -/
def P8216608622494556957.Spec : Prop :=
  ∀ n, P8216608622494556957.a n = A206628 (n + 1)

end A206628

/-! ## A206628.P17799833935226676399

`record[A010054(n)*A206635(n+1)]`
-/

namespace A206628.P17799833935226676399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A206635 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206628.P17799833935226676399

namespace A206628

/-- `record[A010054(n)*A206635(n+1)]` -/
def P17799833935226676399.Spec : Prop :=
  ∀ n, P17799833935226676399.a n = A206628 (n + 1)

end A206628

/-! ## A206628.P3742239435917748120

`record[A155170(n)*A206635(n+1)]`
-/

namespace A206628.P3742239435917748120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155170 n * A206635 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206628.P3742239435917748120

namespace A206628

/-- `record[A155170(n)*A206635(n+1)]` -/
def P3742239435917748120.Spec : Prop :=
  ∀ n, P3742239435917748120.a n = A206628 (n + 1)

end A206628

/-! ## A206628.P14288445974062313397

`record[root(A206635(n+1), A132813(n))]`
-/

namespace A206628.P14288445974062313397
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206635 (n + 1) : ℝ) ^ (1 / (A132813 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206628.P14288445974062313397

namespace A206628

/-- `record[root(A206635(n+1), A132813(n))]` -/
def P14288445974062313397.Spec : Prop :=
  ∀ n, P14288445974062313397.a n = (A206628 (n + 1) : ℝ)

end A206628

/-!
# A206629: Number of (n+1) X 3 0..2 arrays with every 2 X 3 or 3 X 2 subblock having no more than four equal edges, and new values 0..2 introduced in row major order.

The programs for A206629, there is no canonical definition to state claims against.
-/

/-! ## A206629.P9784602225956648478

`ogf((121+328x+596x^2+44x^3+216x^4)/(1-24x-68x^2-132x^3-8x^4-48x^5))`
-/

namespace A206629.P9784602225956648478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [121, 328, 596, 44, 216] [1, -24, -68, -132, -8, -48] n

end

end A206629.P9784602225956648478

/-! ## A206629.P3806596384710786019

`A206635(∑[n+1]+2)`
-/

namespace A206629.P3806596384710786019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206635 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A206629.P3806596384710786019

/-! ## A206629.P15303348951335795866

`record[A010054(n)*A206635(n+2)]`
-/

namespace A206629.P15303348951335795866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A206635 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206629.P15303348951335795866

/-! ## A206629.P5615614230346679037

`record[root(A206635(n+2), A132813(n))]`
-/

namespace A206629.P5615614230346679037
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206635 (n + 2) : ℝ) ^ (1 / (A132813 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206629.P5615614230346679037

/-! ## A206629.P2690979788818558450

`record[root(A206635(n+3), A219421(n+1))]`
-/

namespace A206629.P2690979788818558450
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206635 (n + 3) : ℝ) ^ (1 / (A219421 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206629.P2690979788818558450

/-!
# A206630: Number of (n+1) X 4 0..2 arrays with every 2 X 3 or 3 X 2 subblock having no more than four equal edges, and new values 0..2 introduced in row major order.

The programs for A206630, there is no canonical definition to state claims against.
-/

/-! ## A206630.P13879497424317361539

`A206635(∑[n+2]+4)`
-/

namespace A206630.P13879497424317361539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206635 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A206630.P13879497424317361539

/-!
# A206631: Number of (n+1) X 5 0..2 arrays with every 2 X 3 or 3 X 2 subblock having no more than four equal edges, and new values 0..2 introduced in row major order.

The programs for A206631, there is no canonical definition to state claims against.
-/

/-! ## A206631.P14421929667106280809

`A206635(A141214(n)+7)`
-/

namespace A206631.P14421929667106280809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206635 (A141214 n + 7).toNat

end

end A206631.P14421929667106280809

/-! ## A206631.P4786823723383582930

`A206635(∑[n+4]+3)`
-/

namespace A206631.P4786823723383582930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206635 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A206631.P4786823723383582930

/-!
# A206636: a(n) = 2^^(n+2) modulo 10^n, where ^^ denotes a power tower (see A133612).

The programs for A206636, there is no canonical definition to state claims against.
-/

/-! ## A206636.P17196026148563210999

`and(-9, A113627(n+1))`
-/

namespace A206636.P17196026148563210999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-9) (A113627 (n + 1))

end

end A206636.P17196026148563210999

/-! ## A206636.P11277589032301345859

`∑[A011557(n)*A133612(n)]`
-/

namespace A206636.P11277589032301345859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n * A133612 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206636.P11277589032301345859

/-! ## A206636.P14210766175944243697

`A113627(1+n)-4*A000038(n)`
-/

namespace A206636.P14210766175944243697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113627 (1 + n) - 4 * A000038 n

end

end A206636.P14210766175944243697

/-! ## A206636.P8316413458022069271

`A109405(n+2)%A011557(n+1)`
-/

namespace A206636.P8316413458022069271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109405 (n + 2)) (A011557 (n + 1))

end

end A206636.P8316413458022069271

/-! ## A206636.P6259000458639343055

`A113627(n+1)%A155632(n+1)`
-/

namespace A206636.P6259000458639343055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113627 (n + 1)) (A155632 (n + 1))

end

end A206636.P6259000458639343055

/-! ## A206636.P12162616060709133666

`A113627(n+1)-and(8, A121319(n+1))`
-/

namespace A206636.P12162616060709133666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113627 (n + 1) - Int.land 8 (A121319 (n + 1))

end

end A206636.P12162616060709133666

/-!
# A206637: G.f. satisfies: A(x) = Sum_{n>=0} 2^n*A(x)^n * x^(n^2) / Product_{k=1..n} (1 - 2*x^k)*(1 - x^k*A(x)).

The programs for A206637, there is no canonical definition to state claims against.
-/

/-! ## A206637.P10695930577098422540

`A110654(A236393(3*n+4)-n)`
-/

namespace A206637.P10695930577098422540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A236393 (3 * n + 4) - (n : ℤ)).toNat

end

end A206637.P10695930577098422540

/-! ## A206637.P15232794792203168177

`A004526(A026330(n))+A000108(n)`
-/

namespace A206637.P15232794792203168177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A026330 n).toNat + A000108 n

end

end A206637.P15232794792203168177

/-!
# A206638: G.f. satisfies: A(x) = Sum_{n>=0} 3^n*A(x)^n * x^(n^2) / Product_{k=1..n} (1 - 3*x^k)*(1 - x^k*A(x)).

The programs for A206638, there is no canonical definition to state claims against.
-/

/-! ## A206638.P2608211416483464768

`A255072(∑[A155642(n)])`
-/

namespace A206638.P2608211416483464768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155642 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255072 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A206638.P2608211416483464768

/-!
# A206639: G.f. A(x) satisfies A(x) = Sum_{n>=0} x^(n^2) * A(x)^(2*n) / Product_{k=1..n} (1 - x^k*A(x))^2.

The programs for A206639, there is no canonical definition to state claims against.
-/

/-! ## A206639.P1945199915656558169

`or(A008651(A326561(n)), A011270(n))`
-/

namespace A206639.P1945199915656558169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008651 (A326561 n).toNat) (A011270 n)

end

end A206639.P1945199915656558169

/-! ## A206639.P9765393722771627366

`A011270(n)+A008651(A326561(n)+1)`
-/

namespace A206639.P9765393722771627366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011270 n + A008651 (A326561 n + 1).toNat

end

end A206639.P9765393722771627366

/-!
# A206641: Fibonacci sequence beginning 14, 9.

The programs for A206641, the canonical program `A206641.P14558521030104861216` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206641 has offset 1).

The definition of A206641 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A206641.anchor : A206641 1 = 14 ∧ A206641 2 = 9 ∧ ∀ n, 1 ≤ n → A206641 (n + 2) = A206641 (n + 1) + A206641 n` in `Proof.A206.A206641`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A206641.P4562995253572560287

`ogf((14-5x)/(1-x-x^2))`
-/

namespace A206641.P4562995253572560287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [14, -5] [1, -1, -1] n

end

end A206641.P4562995253572560287

namespace A206641

/-- `ogf((14-5x)/(1-x-x^2))` -/
def P4562995253572560287.Spec : Prop :=
  ∀ n, P4562995253572560287.a n = A206641 (n + 1)

end A206641

/-! ## A206641.P14558521030104861216

`a(n-1)+a(n-2)` with `a(0)=14, a(1)=9`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A206641

/-- `a(n-1)+a(n-2)` -/
def P14558521030104861216.Spec : Prop :=
  ∀ n, (P14558521030104861216.a n : ℤ) = A206641 (n + 1)

theorem P14558521030104861216.correct : P14558521030104861216.Spec := by
  intro n
  simp only [A206641, Nat.add_sub_cancel]

end A206641

/-! ## A206641.P8749293877557801578

`14*A000045(n+1)-5*A000045(n)`
-/

namespace A206641.P8749293877557801578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  14 * A000045 (n + 1) - 5 * A000045 n

end

end A206641.P8749293877557801578

namespace A206641

/-- `14*A000045(n+1)-5*A000045(n)` -/
def P8749293877557801578.Spec : Prop :=
  ∀ n, P8749293877557801578.a n = A206641 (n + 1)

end A206641

/-! ## A206641.P15457981598502409214

`a(n-1)-floor(-a(n-2))` with `a(0)=14, a(1)=9`

`floor` is left out, it is the identity on integers.
-/

namespace A206641.P15457981598502409214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [14, 9] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A206641.P15457981598502409214

namespace A206641

/-- `a(n-1)-floor(-a(n-2))` -/
def P15457981598502409214.Spec : Prop :=
  ∀ n, P15457981598502409214.a n = A206641 (n + 1)

end A206641

/-! ## A206641.P7185433816697799498

`a(n-1)-ceil(-a(n-2))` with `a(0)=14, a(1)=9`

`ceil` is left out, it is the identity on integers.
-/

namespace A206641.P7185433816697799498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [14, 9] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A206641.P7185433816697799498

namespace A206641

/-- `a(n-1)-ceil(-a(n-2))` -/
def P7185433816697799498.Spec : Prop :=
  ∀ n, P7185433816697799498.a n = A206641 (n + 1)

end A206641

/-! ## A206641.P13597736453793073467

`abs(Δ[a(n-2)-a(n-1)])` with `a(0)=-19, a(1)=-5`
-/

namespace A206641.P13597736453793073467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-19, -5] fun n f1 =>
  f1 (n - 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A206641.P13597736453793073467

namespace A206641

/-- `abs(Δ[a(n-2)-a(n-1)])` -/
def P13597736453793073467.Spec : Prop :=
  ∀ n, P13597736453793073467.a n = A206641 (n + 1)

end A206641

/-! ## A206641.P5445577678508360095

`a(n-1)-(char[1]-a(n-2))` with `a(0)=14, a(1)=9`
-/

namespace A206641.P5445577678508360095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [14, 9] fun n a =>
  a (n - 1) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 2))

end

end A206641.P5445577678508360095

namespace A206641

/-- `a(n-1)-(char[1]-a(n-2))` -/
def P5445577678508360095.Spec : Prop :=
  ∀ n, P5445577678508360095.a n = A206641 (n + 1)

end A206641

/-! ## A206641.P8010630483165577702

`A206419(n+1)+A013655(n)`
-/

namespace A206641.P8010630483165577702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206419 (n + 1) + A013655 n

end

end A206641.P8010630483165577702

namespace A206641

/-- `A206419(n+1)+A013655(n)` -/
def P8010630483165577702.Spec : Prop :=
  ∀ n, P8010630483165577702.a n = A206641 (n + 1)

end A206641

/-! ## A206641.P14896710950537832830

`A280154(n)+A022087(n+1)`
-/

namespace A206641.P14896710950537832830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280154 n + A022087 (n + 1)

end

end A206641.P14896710950537832830

namespace A206641

/-- `A280154(n)+A022087(n+1)` -/
def P14896710950537832830.Spec : Prop :=
  ∀ n, P14896710950537832830.a n = A206641 (n + 1)

end A206641

/-! ## A206641.P15083212425577027384

`A206420(n+1)+A104449(n)`
-/

namespace A206641.P15083212425577027384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206420 (n + 1) + A104449 n

end

end A206641.P15083212425577027384

namespace A206641

/-- `A206420(n+1)+A104449(n)` -/
def P15083212425577027384.Spec : Prop :=
  ∀ n, P15083212425577027384.a n = A206641 (n + 1)

end A206641

/-! ## A206641.P16660655374150472841

`A206608(n+1)+A152163(n)`
-/

namespace A206641.P16660655374150472841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206608 (n + 1) + A152163 n

end

end A206641.P16660655374150472841

namespace A206641

/-- `A206608(n+1)+A152163(n)` -/
def P16660655374150472841.Spec : Prop :=
  ∀ n, P16660655374150472841.a n = A206641 (n + 1)

end A206641

/-! ## A206641.P2799809075829683382

`A212804(n)+A206609(n+1)`
-/

namespace A206641.P2799809075829683382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A206609 (n + 1)

end

end A206641.P2799809075829683382

namespace A206641

/-- `A212804(n)+A206609(n+1)` -/
def P2799809075829683382.Spec : Prop :=
  ∀ n, P2799809075829683382.a n = A206641 (n + 1)

end A206641

/-! ## A206641.P9866573293649957322

`A190996(n)+2*A000032(n)`
-/

namespace A206641.P9866573293649957322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190996 n + 2 * A000032 n

end

end A206641.P9866573293649957322

namespace A206641

/-- `A190996(n)+2*A000032(n)` -/
def P9866573293649957322.Spec : Prop :=
  ∀ n, P9866573293649957322.a n = A206641 (n + 1)

end A206641

/-! ## A206641.P2366947586285998737

`A206608(n+1)-Δ[A212804(n)]`
-/

namespace A206641.P2366947586285998737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206608 (n + 1) - (f1 (n + 1) - f1 n)

end

end A206641.P2366947586285998737

namespace A206641

/-- `A206608(n+1)-Δ[A212804(n)]` -/
def P2366947586285998737.Spec : Prop :=
  ∀ n, P2366947586285998737.a n = A206641 (n + 1)

end A206641

/-! ## A206641.P16301894038511540758

`A206612(n+1)+A000032(n+1)`
-/

namespace A206641.P16301894038511540758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206612 (n + 1) + A000032 (n + 1)

end

end A206641.P16301894038511540758

namespace A206641

/-- `A206612(n+1)+A000032(n+1)` -/
def P16301894038511540758.Spec : Prop :=
  ∀ n, P16301894038511540758.a n = A206641 (n + 1)

end A206641

/-! ## A206641.P9328666773860375542

`A206610(n+1)+A000045(n+1)`
-/

namespace A206641.P9328666773860375542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206610 (n + 1) + A000045 (n + 1)

end

end A206641.P9328666773860375542

namespace A206641

/-- `A206610(n+1)+A000045(n+1)` -/
def P9328666773860375542.Spec : Prop :=
  ∀ n, P9328666773860375542.a n = A206641 (n + 1)

end A206641

/-! ## A206641.P13385690841677643017

`A206612(n+1)+A000204(n+1)`
-/

namespace A206641.P13385690841677643017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206612 (n + 1) + A000204 (n + 1)

end

end A206641.P13385690841677643017

namespace A206641

/-- `A206612(n+1)+A000204(n+1)` -/
def P13385690841677643017.Spec : Prop :=
  ∀ n, P13385690841677643017.a n = A206641 (n + 1)

end A206641

/-! ## A206641.P12324765697842645758

`A206611(n+1)+A000045(n+2)`
-/

namespace A206641.P12324765697842645758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206611 (n + 1) + A000045 (n + 2)

end

end A206641.P12324765697842645758

namespace A206641

/-- `A206611(n+1)+A000045(n+2)` -/
def P12324765697842645758.Spec : Prop :=
  ∀ n, P12324765697842645758.a n = A206641 (n + 1)

end A206641

/-! ## A206641.P6345167535725234121

`A206423(n+1)+A118658(n+2)`
-/

namespace A206641.P6345167535725234121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206423 (n + 1) + A118658 (n + 2)

end

end A206641.P6345167535725234121

namespace A206641

/-- `A206423(n+1)+A118658(n+2)` -/
def P6345167535725234121.Spec : Prop :=
  ∀ n, P6345167535725234121.a n = A206641 (n + 1)

end A206641

/-! ## A206641.P18010399777598233606

`A206609(n+1)+A118658(n)/2`
-/

namespace A206641.P18010399777598233606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206609 (n + 1) : ℚ) + (A118658 n : ℚ) / 2

end

end A206641.P18010399777598233606

namespace A206641

/-- `A206609(n+1)+A118658(n)/2` -/
def P18010399777598233606.Spec : Prop :=
  ∀ n, P18010399777598233606.a n = (A206641 (n + 1) : ℚ)

end A206641

/-!
# A206643: Number of halving and tripling steps to reach 1 in 3x+1 problem applied the Fibonacci numbers.

The programs for A206643, there is no canonical definition to state claims against.
-/

/-! ## A206643.P10572899872295275602

`A344276(A022086(n+1))`
-/

namespace A206643.P10572899872295275602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344276 (A022086 (n + 1)).toNat

end

end A206643.P10572899872295275602

/-! ## A206643.P8869653235206282734

`A112695(A022087(n+1))`
-/

namespace A206643.P8869653235206282734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112695 (A022087 (n + 1)).toNat

end

end A206643.P8869653235206282734

/-!
# A206644: Number of n X n 0..2 arrays with no occurrence of three equal elements in a row horizontally or vertically, and new values 0..2 introduced in row major order.

The programs for A206644, there is no canonical definition to state claims against.
-/

/-! ## A206644.P16750189067584048380

`A206650((n+1)²+n²)`
-/

namespace A206644.P16750189067584048380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206650 ((n + 1) ^ 2 + n ^ 2)

end

end A206644.P16750189067584048380

/-!
# A206645: Number of nX3 0..2 arrays with no occurrence of three equal elements in a row horizontally or vertically, and new values 0..2 introduced in row major order.

The programs for A206645, there is no canonical definition to state claims against.
-/

/-! ## A206645.P5281666345108745843

`A206650(∑[n+2]+4)`
-/

namespace A206645.P5281666345108745843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206650 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A206645.P5281666345108745843

/-!
# A206646: Number of nX4 0..2 arrays with no occurrence of three equal elements in a row horizontally or vertically, and new values 0..2 introduced in row major order.

The programs for A206646, there is no canonical definition to state claims against.
-/

/-! ## A206646.P1136437122316281538

`A206650(A374004(n+1))`
-/

namespace A206646.P1136437122316281538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206650 (A374004 (n + 1)).toNat

end

end A206646.P1136437122316281538

/-! ## A206646.P13220410532197373750

`A206650(A141214(n+1))`
-/

namespace A206646.P13220410532197373750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206650 (A141214 (n + 1)).toNat

end

end A206646.P13220410532197373750

/-!
# A206647: Number of nX5 0..2 arrays with no occurrence of three equal elements in a row horizontally or vertically, and new values 0..2 introduced in row major order.

The programs for A206647, there is no canonical definition to state claims against.
-/

/-! ## A206647.P7224696774675601964

`A206650(A374005(n+1))`
-/

namespace A206647.P7224696774675601964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206650 (A374005 (n + 1)).toNat

end

end A206647.P7224696774675601964

/-!
# A206648: Number of nX6 0..2 arrays with no occurrence of three equal elements in a row horizontally or vertically, and new values 0..2 introduced in row major order.

The programs for A206648, there is no canonical definition to state claims against.
-/

/-! ## A206648.P8681456243219496873

`A206650(A374007(n+1))`
-/

namespace A206648.P8681456243219496873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206650 (A374007 (n + 1)).toNat

end

end A206648.P8681456243219496873

/-!
# A206649: Number of nX7 0..2 arrays with no occurrence of three equal elements in a row horizontally or vertically, and new values 0..2 introduced in row major order.

The programs for A206649, there is no canonical definition to state claims against.
-/

/-! ## A206649.P10467139398271056578

`A206650(A374008(n+1))`
-/

namespace A206649.P10467139398271056578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206650 (A374008 (n + 1)).toNat

end

end A206649.P10467139398271056578

/-!
# A206650: T(n,k)=Number of nXk 0..2 arrays with no occurrence of three equal elements in a row horizontally or vertically, and new values 0..2 introduced in row major order.

The programs for A206650, there is no canonical definition to state claims against.
-/

/-! ## A206650.P17094723533406685669

`A267957(n+1)+A025435(A003596(2*n+5))`
-/

namespace A206650.P17094723533406685669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267957 (n + 1) + A025435 (A003596 (2 * n + 5)).toNat

end

end A206650.P17094723533406685669

/-! ## A206650.P8972118416161447744

`A267957(n+1)+A046660(A014551(n))`
-/

namespace A206650.P8972118416161447744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267957 (n + 1) + A046660 (A014551 n).toNat

end

end A206650.P8972118416161447744

/-! ## A206650.P5640258102950885306

`A267957(n+1)+A014191(A245468(n+1))`
-/

namespace A206650.P5640258102950885306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267957 (n + 1) + A014191 (A245468 (n + 1)).toNat

end

end A206650.P5640258102950885306

/-! ## A206650.P938451826853866126

`A354926(A354909(n+4))+A267957(n+1)`
-/

namespace A206650.P938451826853866126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354926 (A354909 (n + 4)).toNat + A267957 (n + 1)

end

end A206650.P938451826853866126

/-! ## A206650.P10570164330040696272

`A267957(n+1)+A025446(A276085(n+5))`
-/

namespace A206650.P10570164330040696272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267957 (n + 1) + A025446 (A276085 (n + 5)).toNat

end

end A206650.P10570164330040696272

/-!
# A206651: Number of (n+2)X(n+2) 0..1 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically or nw-to-se diagonally exactly two ways, and new values 0..1 introduced in row major order.

The programs for A206651, there is no canonical definition to state claims against.
-/

/-! ## A206651.P17483884215656013915

`A206659(∑[4*n]+1)`
-/

namespace A206651.P17483884215656013915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206659 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206651.P17483884215656013915

/-! ## A206651.P13331286209332192413

`record[A003982(n)*A206659(n+1)]`
-/

namespace A206651.P13331286209332192413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A206659 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206651.P13331286209332192413

/-! ## A206651.P17769166773012684925

`record[gcd(A206659(n+1), A257570(n+1))]`
-/

namespace A206651.P17769166773012684925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A206659 (n + 1)) (A257570 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206651.P17769166773012684925

/-!
# A206652: Number of (n+2)X3 0..1 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically or nw-to-se diagonally exactly two ways, and new values 0..1 introduced in row major order.

The programs for A206652, there is no canonical definition to state claims against.
-/

/-! ## A206652.P1599751664840797058

`A206659(∑[n]+1)`
-/

namespace A206652.P1599751664840797058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206659 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206652.P1599751664840797058

/-! ## A206652.P1555666402423793888

`record[A010054(n)*A206659(n+1)]`
-/

namespace A206652.P1555666402423793888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A206659 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206652.P1555666402423793888

/-! ## A206652.P3036641875853272346

`record[A206659(n+1)/A013611(n)]`
-/

namespace A206652.P3036641875853272346
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206659 (n + 1) : ℚ) / (A013611 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206652.P3036641875853272346

/-! ## A206652.P11044076631554754964

`record[A206659(n+1)/A022167(n)]`
-/

namespace A206652.P11044076631554754964
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206659 (n + 1) : ℚ) / (A022167 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206652.P11044076631554754964

/-! ## A206652.P3315880598611632254

`record[A206659(n+1)/A168517(n)]`
-/

namespace A206652.P3315880598611632254
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206659 (n + 1) : ℚ) / (A168517 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206652.P3315880598611632254

/-!
# A206653: Number of (n+2)X4 0..1 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically or nw-to-se diagonally exactly two ways, and new values 0..1 introduced in row major order.

The programs for A206653, there is no canonical definition to state claims against.
-/

/-! ## A206653.P11338336763447334338

`A206659(∑[n+1]+2)`
-/

namespace A206653.P11338336763447334338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206659 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A206653.P11338336763447334338

/-! ## A206653.P8618701183748319936

`record[A010054(n)*A206659(n+2)]`
-/

namespace A206653.P8618701183748319936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A206659 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206653.P8618701183748319936

/-! ## A206653.P5203473599758948767

`record[A206659(n+2)/A013611(n)]`
-/

namespace A206653.P5203473599758948767
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206659 (n + 2) : ℚ) / (A013611 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206653.P5203473599758948767

/-! ## A206653.P11214852231754039454

`record[A206659(n+3)/A113187(n)]`
-/

namespace A206653.P11214852231754039454
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206659 (n + 3) : ℚ) / (A113187 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206653.P11214852231754039454

/-! ## A206653.P2129156669103771314

`record[A206659(n+2)/A286796(n+2)]`
-/

namespace A206653.P2129156669103771314
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206659 (n + 2) : ℚ) / (A286796 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206653.P2129156669103771314

/-!
# A206654: Number of (n+2)X5 0..1 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically or nw-to-se diagonally exactly two ways, and new values 0..1 introduced in row major order.

The programs for A206654, there is no canonical definition to state claims against.
-/

/-! ## A206654.P9317978538612438655

`A206659(∑[n+2]+4)`
-/

namespace A206654.P9317978538612438655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206659 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A206654.P9317978538612438655

/-!
# A206655: Number of (n+2)X6 0..1 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically or nw-to-se diagonally exactly two ways, and new values 0..1 introduced in row major order.

The programs for A206655, there is no canonical definition to state claims against.
-/

/-! ## A206655.P2894160839089352313

`A206659(A374004(n+1))`
-/

namespace A206655.P2894160839089352313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206659 (A374004 (n + 1)).toNat

end

end A206655.P2894160839089352313

/-! ## A206655.P1769284767901253293

`A206659(A141214(n+1))`
-/

namespace A206655.P1769284767901253293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206659 (A141214 (n + 1)).toNat

end

end A206655.P1769284767901253293

/-!
# A206656: Number of (n+2)X7 0..1 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically or nw-to-se diagonally exactly two ways, and new values 0..1 introduced in row major order.

The programs for A206656, there is no canonical definition to state claims against.
-/

/-! ## A206656.P7467666562350559844

`A206659(A374005(n+1))`
-/

namespace A206656.P7467666562350559844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206659 (A374005 (n + 1)).toNat

end

end A206656.P7467666562350559844

/-!
# A206657: Number of (n+2)X8 0..1 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically or nw-to-se diagonally exactly two ways, and new values 0..1 introduced in row major order.

The programs for A206657, there is no canonical definition to state claims against.
-/

/-! ## A206657.P16592587597534065887

`A206659(A374007(n+1))`
-/

namespace A206657.P16592587597534065887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206659 (A374007 (n + 1)).toNat

end

end A206657.P16592587597534065887

/-!
# A206658: Number of (n+2)X9 0..1 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically or nw-to-se diagonally exactly two ways, and new values 0..1 introduced in row major order.

The programs for A206658, there is no canonical definition to state claims against.
-/

/-! ## A206658.P9146324410063728649

`A206659(A374008(n+1))`
-/

namespace A206658.P9146324410063728649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206659 (A374008 (n + 1)).toNat

end

end A206658.P9146324410063728649

/-!
# A206660: Number of (n+1) X (n+1) 0..2 arrays with every 2 X 2 subblock having the number of clockwise edge increases equal to the number of counterclockwise edge increases in its adjacent leftward and upward neighbors.

The programs for A206660, there is no canonical definition to state claims against.
-/

/-! ## A206660.P16460082381734100639

`A206668((n+1)²+n²)`
-/

namespace A206660.P16460082381734100639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206668 ((n + 1) ^ 2 + n ^ 2)

end

end A206660.P16460082381734100639

/-!
# A206661: Number of (n+1) X 2 0..2 arrays with every 2 X 2 subblock having the number of clockwise edge increases equal to the number of counterclockwise edge increases in its adjacent leftward and upward neighbors.

The programs for A206661, there is no canonical definition to state claims against.
-/

/-! ## A206661.P12261666241355264383

`A206668(∑[n]+1)`
-/

namespace A206661.P12261666241355264383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206668 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206661.P12261666241355264383

/-! ## A206661.P4869395112694305847

`record[A010054(n)*A206668(n+1)]`
-/

namespace A206661.P4869395112694305847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A206668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206661.P4869395112694305847

/-! ## A206661.P1811420309262843976

`record[A206668(n+1)/A168549(n)]`
-/

namespace A206661.P1811420309262843976
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206668 (n + 1) : ℚ) / (A168549 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206661.P1811420309262843976

/-! ## A206661.P4871807860016429811

`record[root(A206668(n+1), A013609(n))]`
-/

namespace A206661.P4871807860016429811
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206668 (n + 1) : ℝ) ^ (1 / (A013609 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206661.P4871807860016429811

/-!
# A206662: Number of (n+1) X 3 0..2 arrays with every 2 X 2 subblock having the number of clockwise edge increases equal to the number of counterclockwise edge increases in its adjacent leftward and upward neighbors.

The programs for A206662, there is no canonical definition to state claims against.
-/

/-! ## A206662.P617626591952566118

`A206668(∑[n+1]+2)`
-/

namespace A206662.P617626591952566118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206668 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A206662.P617626591952566118

/-! ## A206662.P22524914856983639

`record[A010054(n)*A206668(n+2)]`
-/

namespace A206662.P22524914856983639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A206668 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206662.P22524914856983639

/-! ## A206662.P2783425219901206285

`record[root(A206668(n+2), A013609(n))]`
-/

namespace A206662.P2783425219901206285
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206668 (n + 2) : ℝ) ^ (1 / (A013609 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206662.P2783425219901206285

/-! ## A206662.P2008113465447683912

`record[gcd(A002262(n), A206668(n+2))]`
-/

namespace A206662.P2008113465447683912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A206668 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206662.P2008113465447683912

/-!
# A206663: Number of (n+1) X 4 0..2 arrays with every 2 X 2 subblock having the number of clockwise edge increases equal to the number of counterclockwise edge increases in its adjacent leftward and upward neighbors.

The programs for A206663, there is no canonical definition to state claims against.
-/

/-! ## A206663.P13402239276903591640

`A206668(∑[n+2]+4)`
-/

namespace A206663.P13402239276903591640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206668 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A206663.P13402239276903591640

/-!
# A206664: Number of (n+1) X 5 0..2 arrays with every 2 X 2 subblock having the number of clockwise edge increases equal to the number of counterclockwise edge increases in its adjacent leftward and upward neighbors.

The programs for A206664, there is no canonical definition to state claims against.
-/

/-! ## A206664.P15245995627008979346

`A206668(A052905(n)+9)`
-/

namespace A206664.P15245995627008979346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206668 (A052905 n + 9).toNat

end

end A206664.P15245995627008979346

/-! ## A206664.P17315728932769191122

`A206668(A141214(n+1))`
-/

namespace A206664.P17315728932769191122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206668 (A141214 (n + 1)).toNat

end

end A206664.P17315728932769191122

/-!
# A206665: Number of (n+1) X 6 0..2 arrays with every 2 X 2 subblock having the number of clockwise edge increases equal to the number of counterclockwise edge increases in its adjacent leftward and upward neighbors.

The programs for A206665, there is no canonical definition to state claims against.
-/

/-! ## A206665.P9905399868798374578

`A206668(A167499(n+3))`
-/

namespace A206665.P9905399868798374578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206668 (A167499 (n + 3)).toNat

end

end A206665.P9905399868798374578

/-! ## A206665.P2828378664863890790

`A206668(A374005(n+1))`
-/

namespace A206665.P2828378664863890790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206668 (A374005 (n + 1)).toNat

end

end A206665.P2828378664863890790

/-!
# A206666: Number of (n+1) X 7 0..2 arrays with every 2 X 2 subblock having the number of clockwise edge increases equal to the number of counterclockwise edge increases in its adjacent leftward and upward neighbors.

The programs for A206666, there is no canonical definition to state claims against.
-/

/-! ## A206666.P18299343006282296049

`A206668(A166136(n+4))`
-/

namespace A206666.P18299343006282296049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206668 (A166136 (n + 4)).toNat

end

end A206666.P18299343006282296049

/-! ## A206666.P15815321973259932378

`A206668(A374007(n+1))`
-/

namespace A206666.P15815321973259932378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206668 (A374007 (n + 1)).toNat

end

end A206666.P15815321973259932378

/-!
# A206667: Number of (n+1) X 8 0..2 arrays with every 2 X 2 subblock having the number of clockwise edge increases equal to the number of counterclockwise edge increases in its adjacent leftward and upward neighbors.

The programs for A206667, there is no canonical definition to state claims against.
-/

/-! ## A206667.P385193390161296143

`A206668(eq[8, A131818(n+1)])`
-/

namespace A206667.P385193390161296143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206668 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206667.P385193390161296143

/-! ## A206667.P2690764516792703278

`A206668(A374008(n+1))`
-/

namespace A206667.P2690764516792703278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206668 (A374008 (n + 1)).toNat

end

end A206667.P2690764516792703278

/-!
# A206669: Number of (n+1) X (n+1) 0..2 arrays with no 2 X 2 subblock having the same number of clockwise edge increases as its horizontal neighbors or the same number of counterclockwise edge increases as its vertical neighbors.

The programs for A206669, there is no canonical definition to state claims against.
-/

/-! ## A206669.P318781663569460551

`A206676(∑[4*n]+1)`
-/

namespace A206669.P318781663569460551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206676 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206669.P318781663569460551

/-! ## A206669.P17970919159067926832

`record[A206676(Δ[A235355(n)])]`
-/

namespace A206669.P17970919159067926832
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206676 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206669.P17970919159067926832

/-!
# A206670: Number of (n+1) X 3 0..2 arrays with no 2 X 2 subblock having the same number of clockwise edge increases as its horizontal neighbors or the same number of counterclockwise edge increases as its vertical neighbors.

The programs for A206670, there is no canonical definition to state claims against.
-/

/-! ## A206670.P7544471995780814867

`A206676(∑[n+1]+2)`
-/

namespace A206670.P7544471995780814867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206676 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A206670.P7544471995780814867

/-! ## A206670.P6324573652651527867

`record[A206676(A286237(n+1)+1)]`
-/

namespace A206670.P6324573652651527867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206676 (A286237 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206670.P6324573652651527867

/-! ## A206670.P5384234305332693060

`record[A010054(n)*A206676(n+2)]`
-/

namespace A206670.P5384234305332693060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A206676 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206670.P5384234305332693060

/-! ## A206670.P17470334515793308290

`record[root(A206676(n+3), A038291(n))]`
-/

namespace A206670.P17470334515793308290
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206676 (n + 3) : ℝ) ^ (1 / (A038291 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206670.P17470334515793308290

/-! ## A206670.P8485762219436896813

`record[gcd(A002262(n), A206676(n+2))]`
-/

namespace A206670.P8485762219436896813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A206676 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206670.P8485762219436896813

/-!
# A206671: Number of (n+1) X 4 0..2 arrays with no 2 X 2 subblock having the same number of clockwise edge increases as its horizontal neighbors or the same number of counterclockwise edge increases as its vertical neighbors.

The programs for A206671, there is no canonical definition to state claims against.
-/

/-! ## A206671.P12421181279384656848

`A206676(∑[n+2]+4)`
-/

namespace A206671.P12421181279384656848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206676 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A206671.P12421181279384656848

/-!
# A206672: Number of (n+1) X 5 0..2 arrays with no 2 X 2 subblock having the same number of clockwise edge increases as its horizontal neighbors or the same number of counterclockwise edge increases as its vertical neighbors.

The programs for A206672, there is no canonical definition to state claims against.
-/

/-! ## A206672.P14226662167295281557

`A206676(A374004(n+1))`
-/

namespace A206672.P14226662167295281557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206676 (A374004 (n + 1)).toNat

end

end A206672.P14226662167295281557

/-! ## A206672.P18285467959492072357

`A206676(A141214(n+1))`
-/

namespace A206672.P18285467959492072357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206676 (A141214 (n + 1)).toNat

end

end A206672.P18285467959492072357

/-!
# A206673: Number of (n+1) X 6 0..2 arrays with no 2 X 2 subblock having the same number of clockwise edge increases as its horizontal neighbors or the same number of counterclockwise edge increases as its vertical neighbors.

The programs for A206673, there is no canonical definition to state claims against.
-/

/-! ## A206673.P5846015794283357573

`A206676(A374005(n+1))`
-/

namespace A206673.P5846015794283357573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206676 (A374005 (n + 1)).toNat

end

end A206673.P5846015794283357573

/-!
# A206674: Number of (n+1) X 7 0..2 arrays with no 2 X 2 subblock having the same number of clockwise edge increases as its horizontal neighbors or the same number of counterclockwise edge increases as its vertical neighbors.

The programs for A206674, there is no canonical definition to state claims against.
-/

/-! ## A206674.P3093882328871389072

`A206676(A374007(n+1))`
-/

namespace A206674.P3093882328871389072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206676 (A374007 (n + 1)).toNat

end

end A206674.P3093882328871389072

/-!
# A206675: Number of (n+1) X 8 0..2 arrays with no 2 X 2 subblock having the same number of clockwise edge increases as its horizontal neighbors or the same number of counterclockwise edge increases as its vertical neighbors.

The programs for A206675, there is no canonical definition to state claims against.
-/

/-! ## A206675.P7867973782379054958

`A206676(A374008(n+1))`
-/

namespace A206675.P7867973782379054958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206676 (A374008 (n + 1)).toNat

end

end A206675.P7867973782379054958

/-!
# A206676: T(n,k) = number of (n+1) X (k+1) 0..2 arrays with no 2 X 2 subblock having the same number of clockwise edge increases as its horizontal neighbors or the same number of counterclockwise edge increases as its vertical neighbors.

The programs for A206676, there is no canonical definition to state claims against.
-/

/-! ## A206676.P4061208356763159660

`A205520(n+1)-A078146(A086587(n))`
-/

namespace A206676.P4061208356763159660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205520 (n + 1) - A078146 (A086587 n).toNat

end

end A206676.P4061208356763159660

/-!
# A206677: Number of (n+1) X (n+1) 0..2 arrays with every 2 X 3 or 3 X 2 subblock having an unequal number of clockwise and counterclockwise edge increases.

The programs for A206677, there is no canonical definition to state claims against.
-/

/-! ## A206677.P7146384166233642643

`A206685(∑[4*n]+1)`
-/

namespace A206677.P7146384166233642643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206685 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206677.P7146384166233642643

/-! ## A206677.P11139121902709952551

`record[A206685(Δ[A235355(n)])]`
-/

namespace A206677.P11139121902709952551
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206685 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206677.P11139121902709952551

/-! ## A206677.P13052026104877077303

`record[A003982(n)*A206685(n+1)]`
-/

namespace A206677.P13052026104877077303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A206685 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206677.P13052026104877077303

/-!
# A206678: Number of (n+1) X 2 0..2 arrays with every 2 X 3 or 3 X 2 subblock having an unequal number of clockwise and counterclockwise edge increases.

The programs for A206678, the canonical program `A206678.P16737335313786074050` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206678 has offset 1).

The definition of A206678 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206678.P16737335313786074050

`ogf((81+306x+108x^2+132x^3)/(1-16x^2-4x^3-8x^4))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A206678

/-- `ogf((81+306x+108x^2+132x^3)/(1-16x^2-4x^3-8x^4))` -/
def P16737335313786074050.Spec : Prop :=
  ∀ n, P16737335313786074050.a n = A206678 (n + 1)

theorem P16737335313786074050.correct : P16737335313786074050.Spec := by
  intro n
  simp only [A206678, Nat.add_sub_cancel]

end A206678

/-! ## A206678.P7677187316695117333

`A206685(∑[n]+1)`
-/

namespace A206678.P7677187316695117333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206685 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206678.P7677187316695117333

namespace A206678

/-- `A206685(∑[n]+1)` -/
def P7677187316695117333.Spec : Prop :=
  ∀ n, P7677187316695117333.a n = A206678 (n + 1)

end A206678

/-! ## A206678.P740909992516137884

`record[A206685(n+1)/A142470(n)]`
-/

namespace A206678.P740909992516137884
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206685 (n + 1) : ℚ) / (A142470 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206678.P740909992516137884

namespace A206678

/-- `record[A206685(n+1)/A142470(n)]` -/
def P740909992516137884.Spec : Prop :=
  ∀ n, P740909992516137884.a n = (A206678 (n + 1) : ℚ)

end A206678

/-! ## A206678.P15787937130784594103

`record[root(A206685(n+1), A066201(n))]`
-/

namespace A206678.P15787937130784594103
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206685 (n + 1) : ℝ) ^ (1 / (A066201 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206678.P15787937130784594103

namespace A206678

/-- `record[root(A206685(n+1), A066201(n))]` -/
def P15787937130784594103.Spec : Prop :=
  ∀ n, P15787937130784594103.a n = (A206678 (n + 1) : ℝ)

end A206678

/-! ## A206678.P16238820095795886834

`record[gcd(A002262(n), A206685(n+1))]`
-/

namespace A206678.P16238820095795886834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A206685 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206678.P16238820095795886834

namespace A206678

/-- `record[gcd(A002262(n), A206685(n+1))]` -/
def P16238820095795886834.Spec : Prop :=
  ∀ n, (P16238820095795886834.a n : ℤ) = A206678 (n + 1)

end A206678

/-!
# A206679: Number of (n+1) X 3 0..2 arrays with every 2 X 3 or 3 X 2 subblock having an unequal number of clockwise and counterclockwise edge increases.

The programs for A206679, the canonical program `A206679.P9513699482324407541` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206679 has offset 1).

The definition of A206679 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206679.P9513699482324407541

`ogf((306+810x+630x^2+630x^3+252x^4-36x^5)/(1-3x-13x^2-11x^3-12x^4-6x^5))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A206679

/-- `ogf((306+810x+630x^2+630x^3+252x^4-36x^5)/(1-3x-13x^2-11x^3-12x^4-6x^5))` -/
def P9513699482324407541.Spec : Prop :=
  ∀ n, P9513699482324407541.a n = A206679 (n + 1)

theorem P9513699482324407541.correct : P9513699482324407541.Spec := by
  intro n
  simp only [A206679, Nat.add_sub_cancel]

end A206679

/-! ## A206679.P10136100395348464402

`A206685(∑[n+1]+2)`
-/

namespace A206679.P10136100395348464402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206685 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A206679.P10136100395348464402

namespace A206679

/-- `A206685(∑[n+1]+2)` -/
def P10136100395348464402.Spec : Prop :=
  ∀ n, P10136100395348464402.a n = A206679 (n + 1)

end A206679

/-! ## A206679.P3250791393515314674

`record[gcd(A002262(n), A206685(n+2))]`
-/

namespace A206679.P3250791393515314674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A206685 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206679.P3250791393515314674

namespace A206679

/-- `record[gcd(A002262(n), A206685(n+2))]` -/
def P3250791393515314674.Spec : Prop :=
  ∀ n, (P3250791393515314674.a n : ℤ) = A206679 (n + 1)

end A206679

/-! ## A206679.P11907216390880542039

`record[A206685(Δ[A003453(n+5)])]`
-/

namespace A206679.P11907216390880542039
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206685 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206679.P11907216390880542039

namespace A206679

/-- `record[A206685(Δ[A003453(n+5)])]` -/
def P11907216390880542039.Spec : Prop :=
  ∀ n, P11907216390880542039.a n = A206679 (n + 1)

end A206679

/-!
# A206680: Number of (n+1) X 4 0..2 arrays with every 2 X 3 or 3 X 2 subblock having an unequal number of clockwise and counterclockwise edge increases.

The programs for A206680, there is no canonical definition to state claims against.
-/

/-! ## A206680.P2427671009778932700

`A206685(∑[n+2]+4)`
-/

namespace A206680.P2427671009778932700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206685 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A206680.P2427671009778932700

/-!
# A206681: Number of (n+1) X 5 0..2 arrays with every 2 X 3 or 3 X 2 subblock having an unequal number of clockwise and counterclockwise edge increases.

The programs for A206681, there is no canonical definition to state claims against.
-/

/-! ## A206681.P6493802634861043355

`A206685(A374004(n+1))`
-/

namespace A206681.P6493802634861043355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206685 (A374004 (n + 1)).toNat

end

end A206681.P6493802634861043355

/-! ## A206681.P16867174514456291518

`A206685(A141214(n+1))`
-/

namespace A206681.P16867174514456291518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206685 (A141214 (n + 1)).toNat

end

end A206681.P16867174514456291518

/-!
# A206682: Number of (n+1) X 6 0..2 arrays with every 2 X 3 or 3 X 2 subblock having an unequal number of clockwise and counterclockwise edge increases.

The programs for A206682, there is no canonical definition to state claims against.
-/

/-! ## A206682.P8970021158516951369

`A206685(A374005(n+1))`
-/

namespace A206682.P8970021158516951369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206685 (A374005 (n + 1)).toNat

end

end A206682.P8970021158516951369

/-!
# A206683: Number of (n+1) X 7 0..2 arrays with every 2 X 3 or 3 X 2 subblock having an unequal number of clockwise and counterclockwise edge increases.

The programs for A206683, there is no canonical definition to state claims against.
-/

/-! ## A206683.P10967097199995042455

`A206685(A374007(n+1))`
-/

namespace A206683.P10967097199995042455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206685 (A374007 (n + 1)).toNat

end

end A206683.P10967097199995042455

/-!
# A206684: Number of (n+1) X 8 0..2 arrays with every 2 X 3 or 3 X 2 subblock having an unequal number of clockwise and counterclockwise edge increases.

The programs for A206684, there is no canonical definition to state claims against.
-/

/-! ## A206684.P8770257702063170752

`A206685(A374008(n+1))`
-/

namespace A206684.P8770257702063170752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206685 (A374008 (n + 1)).toNat

end

end A206684.P8770257702063170752

/-!
# A206686: Number of n X n 0..3 arrays with no element equal to another within two positions in the same row or column, and new values 0..3 introduced in row major order.

The programs for A206686, there is no canonical definition to state claims against.
-/

/-! ## A206686.P13628633922793519906

`A206692(∑[4*n]+1)`
-/

namespace A206686.P13628633922793519906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206692 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206686.P13628633922793519906

/-! ## A206686.P14437850441399958084

`record[A003982(n)*A206692(n+1)]`
-/

namespace A206686.P14437850441399958084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A206692 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206686.P14437850441399958084

/-! ## A206686.P12425377537869397109

`record[root(A206692(n+1), A059674(n))]`
-/

namespace A206686.P12425377537869397109
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206692 (n + 1) : ℝ) ^ (1 / (A059674 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206686.P12425377537869397109

/-! ## A206686.P9593072778177148202

`record[gcd(A114327(n), A206692(n+1))]`
-/

namespace A206686.P9593072778177148202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A206692 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206686.P9593072778177148202

/-! ## A206686.P18136280148830707327

`record[A206692(gcd(n, A185869(n+1)))]`
-/

namespace A206686.P18136280148830707327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206692 (Int.gcd (n : ℤ) (A185869 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206686.P18136280148830707327

/-!
# A206687: Number of n X 2 0..3 arrays with no element equal to another within two positions in the same row or column, and new values 0..3 introduced in row major order.

The programs for A206687, the canonical program `A206687.P16453401065483792388` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206687 has offset 1).

The definition of A206687 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206687.P4397446790921656168

`ogf((-1-2x+x^2+2x^3)/(-1+2x+4x^2))`
-/

namespace A206687.P4397446790921656168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -1, -2] [1, -2, -4] n

end

end A206687.P4397446790921656168

namespace A206687

/-- `ogf((-1-2x+x^2+2x^3)/(-1+2x+4x^2))` -/
def P4397446790921656168.Spec : Prop :=
  ∀ n, P4397446790921656168.a n = A206687 (n + 1)

end A206687

/-! ## A206687.P16453401065483792388

`2*a(n-1)+4*a(n-2)` with `a(0)=1, a(1)=4, a(2)=11, a(3)=36`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A206687

/-- `2*a(n-1)+4*a(n-2)` -/
def P16453401065483792388.Spec : Prop :=
  ∀ n, (P16453401065483792388.a n : ℤ) = A206687 (n + 1)

theorem P16453401065483792388.correct : P16453401065483792388.Spec := by
  intro n
  simp only [A206687, Nat.add_sub_cancel]

end A206687

/-! ## A206687.P11525315035319798747

`ceil(2^(n-2)*A000032(n+3))`
-/

namespace A206687.P11525315035319798747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A000032 (n + 3) : ℚ)⌉

end

end A206687.P11525315035319798747

namespace A206687

/-- `ceil(2^(n-2)*A000032(n+3))` -/
def P11525315035319798747.Spec : Prop :=
  ∀ n, P11525315035319798747.a n = A206687 (n + 1)

end A206687

/-! ## A206687.P870417629466994478

`ceil(A162770(n)/2)`
-/

namespace A206687.P870417629466994478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A162770 n : ℚ) / 2⌉

end

end A206687.P870417629466994478

namespace A206687

/-- `ceil(A162770(n)/2)` -/
def P870417629466994478.Spec : Prop :=
  ∀ n, P870417629466994478.a n = A206687 (n + 1)

end A206687

/-! ## A206687.P13726988102474228212

`Δ[floor(A063782(n)/2)]`
-/

namespace A206687.P13726988102474228212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A063782 n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206687.P13726988102474228212

namespace A206687

/-- `Δ[floor(A063782(n)/2)]` -/
def P13726988102474228212.Spec : Prop :=
  ∀ n, P13726988102474228212.a n = A206687 (n + 1)

end A206687

/-! ## A206687.P9140714946313825328

`ceil((A084057(n+1)+A084057(n))/2)`
-/

namespace A206687.P9140714946313825328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A084057 (n + 1) + A084057 n : ℚ) / 2⌉

end

end A206687.P9140714946313825328

namespace A206687

/-- `ceil((A084057(n+1)+A084057(n))/2)` -/
def P9140714946313825328.Spec : Prop :=
  ∀ n, P9140714946313825328.a n = A206687 (n + 1)

end A206687

/-! ## A206687.P16024892632016511454

`Δ[ceil((A000045(n+3)*A000079(n)+1)/4)]`
-/

namespace A206687.P16024892632016511454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000045 (n + 3) * A000079 n + 1 : ℚ) / 4⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206687.P16024892632016511454

namespace A206687

/-- `Δ[ceil((A000045(n+3)*A000079(n)+1)/4)]` -/
def P16024892632016511454.Spec : Prop :=
  ∀ n, P16024892632016511454.a n = A206687 (n + 1)

end A206687

/-! ## A206687.P5391897182224281322

`ceil(A084057(n+3)/16)`
-/

namespace A206687.P5391897182224281322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A084057 (n + 3) : ℚ) / 16⌉

end

end A206687.P5391897182224281322

namespace A206687

/-- `ceil(A084057(n+3)/16)` -/
def P5391897182224281322.Spec : Prop :=
  ∀ n, P5391897182224281322.a n = A206687 (n + 1)

end A206687

/-! ## A206687.P6342515130127263770

`round(A203579(n+3)/16)`
-/

namespace A206687.P6342515130127263770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A203579 (n + 3) : ℚ) / 16)

end

end A206687.P6342515130127263770

namespace A206687

/-- `round(A203579(n+3)/16)` -/
def P6342515130127263770.Spec : Prop :=
  ∀ n, P6342515130127263770.a n = A206687 (n + 1)

end A206687

/-!
# A206688: Number of nX4 0..3 arrays with no element equal to another within two positions in the same row or column, and new values 0..3 introduced in row major order.

The programs for A206688, there is no canonical definition to state claims against.
-/

/-! ## A206688.P2177022244440733655

`A206692(∑[n+3]+7)`
-/

namespace A206688.P2177022244440733655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206692 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A206688.P2177022244440733655

/-!
# A206689: Number of nX5 0..3 arrays with no element equal to another within two positions in the same row or column, and new values 0..3 introduced in row major order.

The programs for A206689, there is no canonical definition to state claims against.
-/

/-! ## A206689.P2551059167693877235

`A206692(A167499(n+3))`
-/

namespace A206689.P2551059167693877235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206692 (A167499 (n + 3)).toNat

end

end A206689.P2551059167693877235

/-! ## A206689.P12688930966162643385

`A206692(A374005(n+1))`
-/

namespace A206689.P12688930966162643385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206692 (A374005 (n + 1)).toNat

end

end A206689.P12688930966162643385

/-!
# A206690: Number of nX6 0..3 arrays with no element equal to another within two positions in the same row or column, and new values 0..3 introduced in row major order.

The programs for A206690, there is no canonical definition to state claims against.
-/

/-! ## A206690.P15171602161615222649

`A206692(A056115(n)+21)`
-/

namespace A206690.P15171602161615222649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206692 (A056115 n + 21).toNat

end

end A206690.P15171602161615222649

/-! ## A206690.P8605193644517727006

`A206692(A374007(n+1))`
-/

namespace A206690.P8605193644517727006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206692 (A374007 (n + 1)).toNat

end

end A206690.P8605193644517727006

/-!
# A206691: Number of nX7 0..3 arrays with no element equal to another within two positions in the same row or column, and new values 0..3 introduced in row major order.

The programs for A206691, there is no canonical definition to state claims against.
-/

/-! ## A206691.P13713509778909700463

`A206692(C(n+8, 2)-n)`
-/

namespace A206691.P13713509778909700463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206692 (Nat.choose (n + 8) 2 - n)

end

end A206691.P13713509778909700463

/-!
# A206692: T(n,k)=Number of nXk 0..3 arrays with no element equal to another within two positions in the same row or column, and new values 0..3 introduced in row major order.

The programs for A206692, there is no canonical definition to state claims against.
-/

/-! ## A206692.P5704502274766010901

`A122921(lcm(2, A205310(n+1)))`
-/

namespace A206692.P5704502274766010901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122921 (Int.lcm 2 (A205310 (n + 1)))

end

end A206692.P5704502274766010901

/-! ## A206692.P3159420193206665880

`A143097(∏{d}[A300930(n+1), #])`
-/

namespace A206692.P3159420193206665880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300930 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143097 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A206692.P3159420193206665880

/-! ## A206692.P11143154625375530617

`A112318(A203362(n+1)-A227568(n))`
-/

namespace A206692.P11143154625375530617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112318 (A203362 (n + 1) - A227568 n).toNat

end

end A206692.P11143154625375530617

/-! ## A206692.P16549508794592480119

`A000189(A240893(n+1)^A144464(n))`
-/

namespace A206692.P16549508794592480119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000189 (SequenceMachineLib.roundAway ((A240893 (n + 1) : ℚ) ^ (A144464 n : ℤ))).toNat

end

end A206692.P16549508794592480119

/-!
# A206693: Number of n X n 0..2 arrays avoiding the pattern z-2 z-1 z in any row or column.

The programs for A206693, there is no canonical definition to state claims against.
-/

/-! ## A206693.P12449867827566515685

`A206700((n+1)²+n²)`
-/

namespace A206693.P12449867827566515685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206700 ((n + 1) ^ 2 + n ^ 2)

end

end A206693.P12449867827566515685

/-!
# A206694: Number of n X 2 0..2 arrays avoiding the pattern z-2 z-1 z in any row or column.

The programs for A206694, the canonical program `A206694.P14043809086404884980` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206694 has offset 1).

The definition of A206694 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206694.P2582603201974744580

`ogf((9-26x^2+9x^3+3x^4-x^5)/(1-9x+3x^2+25x^3-9x^4-3x^5+x^6))`
-/

namespace A206694.P2582603201974744580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [9, 0, -26, 9, 3, -1] [1, -9, 3, 25, -9, -3, 1] n

end

end A206694.P2582603201974744580

namespace A206694

/-- `ogf((9-26x^2+9x^3+3x^4-x^5)/(1-9x+3x^2+25x^3-9x^4-3x^5+x^6))` -/
def P2582603201974744580.Spec : Prop :=
  ∀ n, P2582603201974744580.a n = A206694 (n + 1)

end A206694

/-! ## A206694.P14043809086404884980

`record[3*a(n-1)-a(n-3)]²` with `a(0)=3, a(1)=0, a(2)=1, a(3)=3`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A206694

/-- `record[3*a(n-1)-a(n-3)]²` -/
def P14043809086404884980.Spec : Prop :=
  ∀ n, P14043809086404884980.a n = A206694 (n + 1)

theorem P14043809086404884980.correct : P14043809086404884980.Spec := by
  intro n
  simp only [A206694, Nat.add_sub_cancel]

end A206694

/-! ## A206694.P15605946989664565972

`A018919(n)²`
-/

namespace A206694.P15605946989664565972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018919 n ^ 2

end

end A206694.P15605946989664565972

namespace A206694

/-- `A018919(n)²` -/
def P15605946989664565972.Spec : Prop :=
  ∀ n, P15605946989664565972.a n = A206694 (n + 1)

end A206694

/-! ## A206694.P14682915353866812861

`A076264(1+n)²`
-/

namespace A206694.P14682915353866812861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076264 (1 + n) ^ 2

end

end A206694.P14682915353866812861

namespace A206694

/-- `A076264(1+n)²` -/
def P14682915353866812861.Spec : Prop :=
  ∀ n, P14682915353866812861.a n = A206694 (n + 1)

end A206694

/-! ## A206694.P1463881253617515083

`A123941(n+2)²`
-/

namespace A206694.P1463881253617515083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123941 (n + 2) ^ 2

end

end A206694.P1463881253617515083

namespace A206694

/-- `A123941(n+2)²` -/
def P1463881253617515083.Spec : Prop :=
  ∀ n, P1463881253617515083.a n = A206694 (n + 1)

end A206694

/-! ## A206694.P9819140078900531314

`Δ[A052963(n+1)]²`
-/

namespace A206694.P9819140078900531314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A206694.P9819140078900531314

namespace A206694

/-- `Δ[A052963(n+1)]²` -/
def P9819140078900531314.Spec : Prop :=
  ∀ n, P9819140078900531314.a n = A206694 (n + 1)

end A206694

/-! ## A206694.P3569439086111726400

`A038197(3*n+5)²`
-/

namespace A206694.P3569439086111726400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038197 (3 * n + 5) ^ 2

end

end A206694.P3569439086111726400

namespace A206694

/-- `A038197(3*n+5)²` -/
def P3569439086111726400.Spec : Prop :=
  ∀ n, P3569439086111726400.a n = A206694 (n + 1)

end A206694

/-! ## A206694.P9240228733063401727

`A187506(3*n+7)²`
-/

namespace A206694.P9240228733063401727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187506 (3 * n + 7) ^ 2

end

end A206694.P9240228733063401727

namespace A206694

/-- `A187506(3*n+7)²` -/
def P9240228733063401727.Spec : Prop :=
  ∀ n, P9240228733063401727.a n = A206694 (n + 1)

end A206694

/-! ## A206694.P2277469139933700163

`A187503(3*n+10)²`
-/

namespace A206694.P2277469139933700163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187503 (3 * n + 10) ^ 2

end

end A206694.P2277469139933700163

namespace A206694

/-- `A187503(3*n+10)²` -/
def P2277469139933700163.Spec : Prop :=
  ∀ n, P2277469139933700163.a n = A206694 (n + 1)

end A206694

/-! ## A206694.P6831172182519526989

`(∑[A052536(n+1)]+1)²`
-/

namespace A206694.P6831172182519526989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052536 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2

end

end A206694.P6831172182519526989

namespace A206694

/-- `(∑[A052536(n+1)]+1)²` -/
def P6831172182519526989.Spec : Prop :=
  ∀ n, P6831172182519526989.a n = A206694 (n + 1)

end A206694

/-! ## A206694.P9701818997807558878

`A076264(2*(n+1)-(n+1))^2`
-/

namespace A206694.P9701818997807558878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076264 (2 * (n + 1) - (n + 1)) ^ 2

end

end A206694.P9701818997807558878

namespace A206694

/-- `A076264(2*(n+1)-(n+1))^2` -/
def P9701818997807558878.Spec : Prop :=
  ∀ n, P9701818997807558878.a n = A206694 (n + 1)

end A206694

/-! ## A206694.P17303571171633100163

`A018919(n)*A076264(n+1)`
-/

namespace A206694.P17303571171633100163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018919 n * A076264 (n + 1)

end

end A206694.P17303571171633100163

namespace A206694

/-- `A018919(n)*A076264(n+1)` -/
def P17303571171633100163.Spec : Prop :=
  ∀ n, P17303571171633100163.a n = A206694 (n + 1)

end A206694

/-! ## A206694.P2755118799817381855

`A018919(n)*A123941(n+2)`
-/

namespace A206694.P2755118799817381855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018919 n * A123941 (n + 2)

end

end A206694.P2755118799817381855

namespace A206694

/-- `A018919(n)*A123941(n+2)` -/
def P2755118799817381855.Spec : Prop :=
  ∀ n, P2755118799817381855.a n = A206694 (n + 1)

end A206694

/-! ## A206694.P12953824802222002309

`(ratio[A076264(n)]*A076264(n))²`
-/

namespace A206694.P12953824802222002309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076264 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A076264 n : ℚ)) ^ 2

end

end A206694.P12953824802222002309

namespace A206694

/-- `(ratio[A076264(n)]*A076264(n))²` -/
def P12953824802222002309.Spec : Prop :=
  ∀ n, P12953824802222002309.a n = (A206694 (n + 1) : ℚ)

end A206694

/-! ## A206694.P11678344816206320711

`(A091024(n+1)+A091024(n+2))²`
-/

namespace A206694.P11678344816206320711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A091024 (n + 1) + A091024 (n + 2)) ^ 2

end

end A206694.P11678344816206320711

namespace A206694

/-- `(A091024(n+1)+A091024(n+2))²` -/
def P11678344816206320711.Spec : Prop :=
  ∀ n, P11678344816206320711.a n = A206694 (n + 1)

end A206694

/-! ## A206694.P1810291213240423676

`(A052963(n+1)-A052963(n+2))²`
-/

namespace A206694.P1810291213240423676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052963 (n + 1) - A052963 (n + 2)) ^ 2

end

end A206694.P1810291213240423676

namespace A206694

/-- `(A052963(n+1)-A052963(n+2))²` -/
def P1810291213240423676.Spec : Prop :=
  ∀ n, P1810291213240423676.a n = A206694 (n + 1)

end A206694

/-! ## A206694.P17455680088549831476

`(A076264(n)+A052536(n+1))*A076264(n+1)`
-/

namespace A206694.P17455680088549831476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A076264 n + A052536 (n + 1)) * A076264 (n + 1)

end

end A206694.P17455680088549831476

namespace A206694

/-- `(A076264(n)+A052536(n+1))*A076264(n+1)` -/
def P17455680088549831476.Spec : Prop :=
  ∀ n, P17455680088549831476.a n = A206694 (n + 1)

end A206694

/-!
# A206695: Number of nX3 0..2 arrays avoiding the pattern z-2 z-1 z in any row or column.

The programs for A206695, there is no canonical definition to state claims against.
-/

/-! ## A206695.P10519273447260966749

`A206700(∑[n+2]+4)`
-/

namespace A206695.P10519273447260966749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206700 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A206695.P10519273447260966749

/-!
# A206696: Number of nX4 0..2 arrays avoiding the pattern z-2 z-1 z in any row or column.

The programs for A206696, there is no canonical definition to state claims against.
-/

/-! ## A206696.P16176240542726515699

`A206700(A374004(n+1))`
-/

namespace A206696.P16176240542726515699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206700 (A374004 (n + 1)).toNat

end

end A206696.P16176240542726515699

/-! ## A206696.P9020544987260903148

`A206700(A141214(n+1))`
-/

namespace A206696.P9020544987260903148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206700 (A141214 (n + 1)).toNat

end

end A206696.P9020544987260903148

/-!
# A206697: Number of nX5 0..2 arrays avoiding the pattern z-2 z-1 z in any row or column.

The programs for A206697, there is no canonical definition to state claims against.
-/

/-! ## A206697.P3742888102817390005

`A206700(eq[5, col(n)+1]+1)`
-/

namespace A206697.P3742888102817390005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206700 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A206697.P3742888102817390005

/-!
# A206698: Number of nX6 0..2 arrays avoiding the pattern z-2 z-1 z in any row or column.

The programs for A206698, there is no canonical definition to state claims against.
-/

/-! ## A206698.P6436500428366561410

`A206700(A374007(n+1))`
-/

namespace A206698.P6436500428366561410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206700 (A374007 (n + 1)).toNat

end

end A206698.P6436500428366561410

/-!
# A206699: Number of nX7 0..2 arrays avoiding the pattern z-2 z-1 z in any row or column.

The programs for A206699, there is no canonical definition to state claims against.
-/

/-! ## A206699.P892987225065136047

`A206700(eq[8, A131818(n+1)])`
-/

namespace A206699.P892987225065136047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206700 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206699.P892987225065136047

/-! ## A206699.P13646809205087896157

`A206700(eq[6, A193592(n)])`
-/

namespace A206699.P13646809205087896157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206700 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206699.P13646809205087896157

