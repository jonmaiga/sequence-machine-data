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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
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
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C002
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
# A323200: Numbers k such that 461*2^k+1 is prime.

The programs for A323200, there is no canonical definition to state claims against.
-/

/-! ## A323200.P11461496065595754579

`xor(2, p?[xor(6, n)*A037012(n)])`
-/

namespace A323200.P11461496065595754579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 6 n : ℤ) * A037012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A323200.P11461496065595754579

/-!
# A323201: Numbers k such that 463*2^k+1 is prime.

The programs for A323201, there is no canonical definition to state claims against.
-/

/-! ## A323201.P17376490914863596710

`A334267(xor(A160243(n+1), A165453(n)))`
-/

namespace A323201.P17376490914863596710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334267 (Int.xor (A160243 (n + 1)) (A165453 n)).toNat

end

end A323201.P17376490914863596710

/-! ## A323201.P8147688186172906939

`A334267(xor(A160243(n+1), A334267(n+1)))`
-/

namespace A323201.P8147688186172906939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334267 (Int.xor (A160243 (n + 1)) (A334267 (n + 1))).toNat

end

end A323201.P8147688186172906939

/-!
# A323202: Expansion of (1 - x) * (1 - x^3) / (1 - x^4) in powers of x.

The programs for A323202, the canonical program `A323202.P8408907786436417138` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323202 has offset 0).

The definition of A323202 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x-x^3+x^4)/(1-x^4))` (program `A323202.P8408907786436417138`, by `A323202.P8408907786436417138.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A323202.P8408907786436417138

`ogf((1-x-x^3+x^4)/(1-x^4))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A323202

/-- `ogf((1-x-x^3+x^4)/(1-x^4))` -/
def P8408907786436417138.Spec : Prop :=
  ∀ n, P8408907786436417138.a n = A323202 n

theorem P8408907786436417138.correct : P8408907786436417138.Spec := by
  intro n
  simp only [A323202]

end A323202

/-!
# A323203: "Primitive" numbers k such that k divides 4^k - 1.

The programs for A323203, there is no canonical definition to state claims against.
-/

/-! ## A323203.P6718874387379097147

`A057660(record[A146107(n)])`
-/

namespace A323203.P6718874387379097147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146107 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057660 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A323203.P6718874387379097147

/-!
# A323206: A(n, k) = hypergeometric([-k, k+1], [-k-1], n), square array read by ascending antidiagonals for n,k >= 0.

The programs for A323206, there is no canonical definition to state claims against.
-/

/-! ## A323206.P8529428526898886126

`A064094(∑[2*n]%(comp[∑[n]]+1)+1+n)`
-/

namespace A323206.P8529428526898886126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064094 ((∑ j ∈ Finset.range (n + 1), f1 j) % (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1) + 1 + n)

end

end A323206.P8529428526898886126

/-! ## A323206.P14924558749233692873

`A064094(2*(C(comp[∑[n]]-n, 2)-n)-1+n)`
-/

namespace A323206.P14924558749233692873
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064094 (2 * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) - 1 + (n : ℤ)).toNat

end

end A323206.P14924558749233692873

/-! ## A323206.P13387506908520326440

`A064094(A380649(n+1))`
-/

namespace A323206.P13387506908520326440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064094 (A380649 (n + 1)).toNat

end

end A323206.P13387506908520326440

/-! ## A323206.P2999216958875852658

`A064094(A099375(n)+n)`
-/

namespace A323206.P2999216958875852658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064094 (A099375 n + (n : ℤ)).toNat

end

end A323206.P2999216958875852658

/-! ## A323206.P13429567658150285051

`A064094(A061579(comp[∑[n]]))`
-/

namespace A323206.P13429567658150285051
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064094 (A061579 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A323206.P13429567658150285051

/-! ## A323206.P16918742743119734995

`A064094(A061579(n)+∑[char[∑[n]]])`
-/

namespace A323206.P16918742743119734995
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064094 (A061579 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A323206.P16918742743119734995

/-!
# A323207: a(n) = Sum_{k=0..n} hypergeometric([-k, k + 1], [-k - 1], n - k).

The programs for A323207, there is no canonical definition to state claims against.
-/

/-! ## A323207.P17617727282045555151

`∑[abs(Δ[A064095(n)])]`
-/

namespace A323207.P17617727282045555151
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064095 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323207.P17617727282045555151

/-! ## A323207.P2116589972336100706

`A064095(n+1)-1`
-/

namespace A323207.P2116589972336100706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064095 (n + 1) - 1

end

end A323207.P2116589972336100706

/-! ## A323207.P15107099706934275686

`∑[Δ[A064095(n)]%A007185(n+1)]`
-/

namespace A323207.P15107099706934275686
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064095 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A007185 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323207.P15107099706934275686

/-! ## A323207.P6583730854421472691

`∑[A189023(n+1)²*Δ[A064095(n)]]`
-/

namespace A323207.P6583730854421472691
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064095 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189023 (n + 1) ^ 2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323207.P6583730854421472691

/-! ## A323207.P10454401931201937223

`A089263(A121608(n+1))+A064095(n+1)`
-/

namespace A323207.P10454401931201937223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089263 (A121608 (n + 1)).toNat + A064095 (n + 1)

end

end A323207.P10454401931201937223

/-!
# A323208: a(n) = hypergeometric([-n - 1, n + 2], [-n - 2], n).

The programs for A323208, there is no canonical definition to state claims against.
-/

/-! ## A323208.P15879599929759039849

`A064094(A132209(n+1))`
-/

namespace A323208.P15879599929759039849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064094 (A132209 (n + 1)).toNat

end

end A323208.P15879599929759039849

/-! ## A323208.P1683462441210867346

`A064094(A142463(n+1))`
-/

namespace A323208.P1683462441210867346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064094 (A142463 (n + 1)).toNat

end

end A323208.P1683462441210867346

/-! ## A323208.P1648414395863259940

`A064094(A001844(n+1)-2)`
-/

namespace A323208.P1648414395863259940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064094 (A001844 (n + 1) - 2).toNat

end

end A323208.P1648414395863259940

/-! ## A323208.P2151936044157506952

`A064094(A099776(n+1)-2)`
-/

namespace A323208.P2151936044157506952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064094 (A099776 (n + 1) - 2).toNat

end

end A323208.P2151936044157506952

/-! ## A323208.P8629360308436767956

`A064094(lt[A280172(n+2), 2])`
-/

namespace A323208.P8629360308436767956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280172 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064094 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A323208.P8629360308436767956

/-!
# A323209: a(n) = hypergeometric([-n, n + 1], [-n - 1], n).

The programs for A323209, there is no canonical definition to state claims against.
-/

/-! ## A323209.P8000945218390158617

`record[A064094(floor(n*xor(1, n+1)/2))]`
-/

namespace A323209.P8000945218390158617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064094 ⌊(n : ℚ) * ((Nat.xor 1 (n + 1) : ℚ) / 2)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323209.P8000945218390158617

/-! ## A323209.P323180239856107018

`A064094(A056220(n+1))`
-/

namespace A323209.P323180239856107018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064094 (A056220 (n + 1)).toNat

end

end A323209.P323180239856107018

/-! ## A323209.P5796499941564923008

`A064094(A054000(n+1)+1)`
-/

namespace A323209.P5796499941564923008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064094 (A054000 (n + 1) + 1).toNat

end

end A323209.P5796499941564923008

/-! ## A323209.P14820383078378334434

`A064094(A001844(n)+2*n)`
-/

namespace A323209.P14820383078378334434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064094 (A001844 n + (2 * n : ℤ)).toNat

end

end A323209.P14820383078378334434

/-! ## A323209.P9141620374002045378

`A064094(A000217(2*n+1)+n)`
-/

namespace A323209.P9141620374002045378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064094 (A000217 (2 * n + 1) + (n : ℤ)).toNat

end

end A323209.P9141620374002045378

/-!
# A323210: a(n) = 9*J(n)^2 where J(n) are the Jacobsthal numbers A001045 with J(0) = 1.

The programs for A323210, the canonical program `A323210.P10060339989840869560` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323210 has offset 0).

The definition of A323210 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A323210.P10060339989840869560

`3*a(n-1)+6*a(n-2)-8*a(n-3)` with `a(0)=1, a(1)=9, a(2)=9, a(3)=81`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A323210

/-- `3*a(n-1)+6*a(n-2)-8*a(n-3)` -/
def P10060339989840869560.Spec : Prop :=
  ∀ n, P10060339989840869560.a n = A323210 n

theorem P10060339989840869560.correct : P10060339989840869560.Spec := by
  intro n
  simp only [A323210]

end A323210

/-! ## A323210.P14934942056902728361

`or(1, -(-2)^n)²`
-/

namespace A323210.P14934942056902728361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (-((-2) ^ n)) ^ 2

end

end A323210.P14934942056902728361

namespace A323210

/-- `or(1, -(-2)^n)²` -/
def P14934942056902728361.Spec : Prop :=
  ∀ n, P14934942056902728361.a n = A323210 n

end A323210

/-! ## A323210.P6888913434528285264

`(ceil(acot(n))-(-2)^n)²`
-/

namespace A323210.P6888913434528285264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈SequenceMachineLib.acot (n : ℝ)⌉ - (-2) ^ n) ^ 2

end

end A323210.P6888913434528285264

namespace A323210

/-- `(ceil(acot(n))-(-2)^n)²` -/
def P6888913434528285264.Spec : Prop :=
  ∀ n, P6888913434528285264.a n = A323210 n

end A323210

/-! ## A323210.P16257155443732592932

`or(1, -(-2)^n)^2`
-/

namespace A323210.P16257155443732592932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (-((-2) ^ n)) ^ 2

end

end A323210.P16257155443732592932

namespace A323210

/-- `or(1, -(-2)^n)^2` -/
def P16257155443732592932.Spec : Prop :=
  ∀ n, P16257155443732592932.a n = A323210 n

end A323210

/-! ## A323210.P3314900312820370392

`(ceil(abs(sin(n)))-(-2)^n)²`
-/

namespace A323210.P3314900312820370392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈|Real.sin (n : ℝ)|⌉ - (-2) ^ n) ^ 2

end

end A323210.P3314900312820370392

namespace A323210

/-- `(ceil(abs(sin(n)))-(-2)^n)²` -/
def P3314900312820370392.Spec : Prop :=
  ∀ n, P3314900312820370392.a n = A323210 n

end A323210

/-! ## A323210.P17107775205661970244

`((-2)^n-ceil(sin(n)²))²`
-/

namespace A323210.P17107775205661970244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((-2) ^ n - ⌈Real.sin (n : ℝ) ^ 2⌉) ^ 2

end

end A323210.P17107775205661970244

namespace A323210

/-- `((-2)^n-ceil(sin(n)²))²` -/
def P17107775205661970244.Spec : Prop :=
  ∀ n, P17107775205661970244.a n = A323210 n

end A323210

/-! ## A323210.P2164053011626151146

`((-2)^n+floor(acot(n))-1)²`
-/

namespace A323210.P2164053011626151146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((-2) ^ n + (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1)) ^ 2

end

end A323210.P2164053011626151146

namespace A323210

/-- `((-2)^n+floor(acot(n))-1)²` -/
def P2164053011626151146.Spec : Prop :=
  ∀ n, P2164053011626151146.a n = A323210 n

end A323210

/-! ## A323210.P7208276479103520430

`floor((-2)^n-2/(n+1))²`
-/

namespace A323210.P7208276479103520430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((-2) ^ n : ℚ) - 2 / (n + 1 : ℚ)⌋ ^ 2

end

end A323210.P7208276479103520430

namespace A323210

/-- `floor((-2)^n-2/(n+1))²` -/
def P7208276479103520430.Spec : Prop :=
  ∀ n, P7208276479103520430.a n = A323210 n

end A323210

/-! ## A323210.P5270366525618691184

`or(1, A062510(n)²)`
-/

namespace A323210.P5270366525618691184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A062510 n ^ 2)

end

end A323210.P5270366525618691184

namespace A323210

/-- `or(1, A062510(n)²)` -/
def P5270366525618691184.Spec : Prop :=
  ∀ n, P5270366525618691184.a n = A323210 n

end A323210

/-! ## A323210.P11807882733895137088

`∏{d}[n, A020501(#)²]`
-/

namespace A323210.P11807882733895137088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A020501 d ^ 2

end

end A323210.P11807882733895137088

namespace A323210

/-- `∏{d}[n, A020501(#)²]` -/
def P11807882733895137088.Spec : Prop :=
  ∀ n, P11807882733895137088.a n = A323210 n

end A323210

/-! ## A323210.P8530044696580347193

`or(1, (1-A122803(n))²)`
-/

namespace A323210.P8530044696580347193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((1 - A122803 n) ^ 2)

end

end A323210.P8530044696580347193

namespace A323210

/-- `or(1, (1-A122803(n))²)` -/
def P8530044696580347193.Spec : Prop :=
  ∀ n, P8530044696580347193.a n = A323210 n

end A323210

/-! ## A323210.P5759598863587306227

`or(1, (A092297(n+1)/2)²)`
-/

namespace A323210.P5759598863587306227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (SequenceMachineLib.roundAway (((A092297 (n + 1) : ℚ) / 2) ^ 2))

end

end A323210.P5759598863587306227

namespace A323210

/-- `or(1, (A092297(n+1)/2)²)` -/
def P5759598863587306227.Spec : Prop :=
  ∀ n, P5759598863587306227.a n = A323210 n

end A323210

/-! ## A323210.P16454885646236930295

`and(1, A122746(n))+A062510(n)²`
-/

namespace A323210.P16454885646236930295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A122746 n) + A062510 n ^ 2

end

end A323210.P16454885646236930295

namespace A323210

/-- `and(1, A122746(n))+A062510(n)²` -/
def P16454885646236930295.Spec : Prop :=
  ∀ n, P16454885646236930295.a n = A323210 n

end A323210

/-! ## A323210.P1323936046739200843

`A344920(n+1)+A344920(n)+A052539(n)`
-/

namespace A323210.P1323936046739200843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344920 (n + 1) + (A344920 n + A052539 n)

end

end A323210.P1323936046739200843

namespace A323210

/-- `A344920(n+1)+A344920(n)+A052539(n)` -/
def P1323936046739200843.Spec : Prop :=
  ∀ n, P1323936046739200843.a n = A323210 n

end A323210

/-! ## A323210.P9664012497664593771

`Δ[Δ[A152046(n)²]]+1`
-/

namespace A323210.P9664012497664593771
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152046 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A323210.P9664012497664593771

namespace A323210

/-- `Δ[Δ[A152046(n)²]]+1` -/
def P9664012497664593771.Spec : Prop :=
  ∀ n, P9664012497664593771.a n = A323210 n

end A323210

/-! ## A323210.P13546490524035145156

`Δ[Δ[A167167(n)²]]+1`
-/

namespace A323210.P13546490524035145156
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167167 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A323210.P13546490524035145156

namespace A323210

/-- `Δ[Δ[A167167(n)²]]+1` -/
def P13546490524035145156.Spec : Prop :=
  ∀ n, P13546490524035145156.a n = A323210 n

end A323210

/-!
# A323211: Level 1 of Pascal's pyramid. T(n, k) triangle read by rows for n >= 0 and 0 <= k <= n.

The programs for A323211, the canonical program `A323211.P6731529718550413430` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323211 has offset 0).

The definition of A323211 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A323211.P6647404332418894438

`A323231(char[1]+n)`
-/

namespace A323211.P6647404332418894438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323231 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A323211.P6647404332418894438

namespace A323211

/-- `A323231(char[1]+n)` -/
def P6647404332418894438.Spec : Prop :=
  ∀ n, P6647404332418894438.a n = A323211 n

end A323211

/-! ## A323211.P14472772762565054382

`A323231(n)-char[1]`
-/

namespace A323211.P14472772762565054382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323231 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A323211.P14472772762565054382

namespace A323211

/-- `A323231(n)-char[1]` -/
def P14472772762565054382.Spec : Prop :=
  ∀ n, P14472772762565054382.a n = A323211 n

end A323211

/-! ## A323211.P6731529718550413430

`a(n-1)-A113313(n)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A323211

/-- `a(n-1)-A113313(n)` -/
def P6731529718550413430.Spec : Prop :=
  ∀ n, P6731529718550413430.a n = A323211 n

theorem P6731529718550413430.correct : P6731529718550413430.Spec := by
  intro n
  simp only [A323211]

end A323211

/-! ## A323211.P470571211862671170

`2-(a(n-1)-A097805(n))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A323211.P470571211862671170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  2 - (a (n - 1) - A097805 n)

end

end A323211.P470571211862671170

namespace A323211

/-- `2-(a(n-1)-A097805(n))` -/
def P470571211862671170.Spec : Prop :=
  ∀ n, P470571211862671170.a n = A323211 n

end A323211

/-! ## A323211.P16689684879244212361

`A028262(n)-A014473(n)`
-/

namespace A323211.P16689684879244212361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028262 n - A014473 n

end

end A323211.P16689684879244212361

namespace A323211

/-- `A028262(n)-A014473(n)` -/
def P16689684879244212361.Spec : Prop :=
  ∀ n, P16689684879244212361.a n = A323211 n

end A323211

/-! ## A323211.P5952419436256048323

`A323231(n)/A373565(n)`
-/

namespace A323211.P5952419436256048323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323231 n : ℚ) / (A373565 n : ℚ)

end

end A323211.P5952419436256048323

namespace A323211

/-- `A323231(n)/A373565(n)` -/
def P5952419436256048323.Spec : Prop :=
  ∀ n, P5952419436256048323.a n = (A323211 n : ℚ)

end A323211

/-! ## A323211.P16641415836667695766

`gcd(A010816(n), A323231(n))`
-/

namespace A323211.P16641415836667695766
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010816 n) (A323231 n)

end

end A323211.P16641415836667695766

namespace A323211

/-- `gcd(A010816(n), A323231(n))` -/
def P16641415836667695766.Spec : Prop :=
  ∀ n, (P16641415836667695766.a n : ℤ) = A323211 n

end A323211

/-! ## A323211.P12650376441351483755

`A144225(n+1)+A057427(n)`
-/

namespace A323211.P12650376441351483755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144225 (n + 1) + A057427 n

end

end A323211.P12650376441351483755

namespace A323211

/-- `A144225(n+1)+A057427(n)` -/
def P12650376441351483755.Spec : Prop :=
  ∀ n, P12650376441351483755.a n = A323211 n

end A323211

/-! ## A323211.P744713593238756733

`A028262(n)+1-A007318(n)`
-/

namespace A323211.P744713593238756733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028262 n + (1 - A007318 n)

end

end A323211.P744713593238756733

namespace A323211

/-- `A028262(n)+1-A007318(n)` -/
def P744713593238756733.Spec : Prop :=
  ∀ n, P744713593238756733.a n = A323211 n

end A323211

/-! ## A323211.P15260326670628047258

`A028275(n)+1-A028262(n)`
-/

namespace A323211.P15260326670628047258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028275 n + (1 - A028262 n)

end

end A323211.P15260326670628047258

namespace A323211

/-- `A028275(n)+1-A028262(n)` -/
def P15260326670628047258.Spec : Prop :=
  ∀ n, P15260326670628047258.a n = A323211 n

end A323211

/-! ## A323211.P7803996935168248724

`A028313(n)+1-A028275(n)`
-/

namespace A323211.P7803996935168248724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028313 n + (1 - A028275 n)

end

end A323211.P7803996935168248724

namespace A323211

/-- `A028313(n)+1-A028275(n)` -/
def P7803996935168248724.Spec : Prop :=
  ∀ n, P7803996935168248724.a n = A323211 n

end A323211

/-! ## A323211.P3045106094330124544

`A007318(n)+1-A072405(n)`
-/

namespace A323211.P3045106094330124544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (1 - A072405 n)

end

end A323211.P3045106094330124544

namespace A323211

/-- `A007318(n)+1-A072405(n)` -/
def P3045106094330124544.Spec : Prop :=
  ∀ n, P3045106094330124544.a n = A323211 n

end A323211

/-! ## A323211.P99936819261149570

`A144225(n+1)-A057428(n)`
-/

namespace A323211.P99936819261149570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144225 (n + 1) - A057428 n

end

end A323211.P99936819261149570

namespace A323211

/-- `A144225(n+1)-A057428(n)` -/
def P99936819261149570.Spec : Prop :=
  ∀ n, P99936819261149570.a n = A323211 n

end A323211

/-! ## A323211.P60741164530659232

`A014473(n)+2-A072405(n)`
-/

namespace A323211.P60741164530659232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n + (2 - A072405 n)

end

end A323211.P60741164530659232

namespace A323211

/-- `A014473(n)+2-A072405(n)` -/
def P60741164530659232.Spec : Prop :=
  ∀ n, P60741164530659232.a n = A323211 n

end A323211

/-! ## A323211.P7048577184213594315

`abs(A108086(n))+1-A072405(n)`
-/

namespace A323211.P7048577184213594315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108086 n| + (1 - A072405 n)

end

end A323211.P7048577184213594315

namespace A323211

/-- `abs(A108086(n))+1-A072405(n)` -/
def P7048577184213594315.Spec : Prop :=
  ∀ n, P7048577184213594315.a n = A323211 n

end A323211

/-! ## A323211.P11195951498897656984

`abs(A130595(n))+1-A072405(n)`
-/

namespace A323211.P11195951498897656984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130595 n| + (1 - A072405 n)

end

end A323211.P11195951498897656984

namespace A323211

/-- `abs(A130595(n))+1-A072405(n)` -/
def P11195951498897656984.Spec : Prop :=
  ∀ n, P11195951498897656984.a n = A323211 n

end A323211

/-! ## A323211.P11366512387014832814

`sqrt(A008459(n))+1-A072405(n)`
-/

namespace A323211.P11366512387014832814
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) + (1 - A072405 n : ℝ)

end

end A323211.P11366512387014832814

namespace A323211

/-- `sqrt(A008459(n))+1-A072405(n)` -/
def P11366512387014832814.Spec : Prop :=
  ∀ n, P11366512387014832814.a n = (A323211 n : ℝ)

end A323211

/-! ## A323211.P10780341072555866600

`Δ[A102363(n)]+1-A072405(n)`
-/

namespace A323211.P10780341072555866600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (1 - A072405 n)

end

end A323211.P10780341072555866600

namespace A323211

/-- `Δ[A102363(n)]+1-A072405(n)` -/
def P10780341072555866600.Spec : Prop :=
  ∀ n, P10780341072555866600.a n = A323211 n

end A323211

/-! ## A323211.P9124789271693306313

`A144225(n+1)+1-A000007(n)`
-/

namespace A323211.P9124789271693306313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144225 (n + 1) + (1 - A000007 n)

end

end A323211.P9124789271693306313

namespace A323211

/-- `A144225(n+1)+1-A000007(n)` -/
def P9124789271693306313.Spec : Prop :=
  ∀ n, P9124789271693306313.a n = A323211 n

end A323211

/-! ## A323211.P15800915805185985490

`A199969(n+1)+A323231(n)-n`
-/

namespace A323211.P15800915805185985490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199969 (n + 1) + (A323231 n - (n : ℤ))

end

end A323211.P15800915805185985490

namespace A323211

/-- `A199969(n+1)+A323231(n)-n` -/
def P15800915805185985490.Spec : Prop :=
  ∀ n, P15800915805185985490.a n = A323211 n

end A323211

/-!
# A323212: The Fibonacci-Catalan Hybrid. Expansion of 1 + x*(2*(x + 1))/(sqrt(1 - 4*y) - 2*x*(x + 1) + 1). Square array read by descending antidiagonals, A(n,k) for n,k >= 0.

The programs for A323212, there is no canonical definition to state claims against.
-/

/-! ## A323212.P13818118053999451576

`A068063(A238123(n)+A094346(n))`
-/

namespace A323212.P13818118053999451576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068063 (A238123 n + A094346 n).toNat

end

end A323212.P13818118053999451576

/-! ## A323212.P16930279313400968549

`A068063(A288108(n)+A094346(n))`
-/

namespace A323212.P16930279313400968549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068063 (A288108 n + A094346 n).toNat

end

end A323212.P16930279313400968549

/-! ## A323212.P409495427771465926

`A068063(A106234(n+1)+A094346(n))`
-/

namespace A323212.P409495427771465926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068063 (A106234 (n + 1) + A094346 n).toNat

end

end A323212.P409495427771465926

/-! ## A323212.P1255664387403489422

`A084556(lcm(A094385(n), A322283(n)))`
-/

namespace A323212.P1255664387403489422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084556 (Int.lcm (A094385 n) (A322283 n))

end

end A323212.P1255664387403489422

/-! ## A323212.P3221276902609384585

`A084556(A094385(n)*A322283(n))`
-/

namespace A323212.P3221276902609384585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084556 (A094385 n * A322283 n).toNat

end

end A323212.P3221276902609384585

/-!
# A323213: Nearest prime to the median of the primes below 10^n.

The programs for A323213, there is no canonical definition to state claims against.
-/

/-! ## A323213.P1208520435239347455

`A162753(A225137(n+1)+2)`
-/

namespace A323213.P1208520435239347455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 (A225137 (n + 1) + 2).toNat

end

end A323213.P1208520435239347455

/-!
# A323214: Composite numbers k such that p^(k-1) == 1 (mod k) for every prime p strongly prime to k.

The programs for A323214, there is no canonical definition to state claims against.
-/

/-! ## A323214.P12389445865433437706

`A002997((n-1)%a(n-2))` with `a(0)=4, a(1)=6`
-/

namespace A323214.P12389445865433437706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 6] fun n a =>
  A002997 (Int.tmod ((n : ℤ) - 1) (a (n - 2))).toNat

end

end A323214.P12389445865433437706

/-!
# A323216: Main diagonal of A323212.

The programs for A323216, there is no canonical definition to state claims against.
-/

/-! ## A323216.P13770128796337022420

`A323212(∑[4*n])`
-/

namespace A323216.P13770128796337022420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323212 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A323216.P13770128796337022420

/-! ## A323216.P8783350438268566807

`A028310(A323212((n+1)*2*n))`
-/

namespace A323216.P8783350438268566807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A323212 ((n + 1) * (2 * n))).toNat

end

end A323216.P8783350438268566807

/-!
# A323217: a(n) = hypergeometric([-n, n + 1], [-n - 1], n + 1).

The programs for A323217, there is no canonical definition to state claims against.
-/

/-! ## A323217.P5006176685349046615

`A064094(∑[4*(n+1)])`
-/

namespace A323217.P5006176685349046615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064094 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A323217.P5006176685349046615

/-! ## A323217.P111180628866861408

`record[A064094(floor((n+2)^(n%2+1)/2))]`
-/

namespace A323217.P111180628866861408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064094 ⌊((n + 2) ^ (n % 2 + 1) : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323217.P111180628866861408

/-! ## A323217.P4435282124218396341

`record[A064094(∑[A227361(n)])]`
-/

namespace A323217.P4435282124218396341
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227361 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064094 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323217.P4435282124218396341

/-! ## A323217.P13130777669472559790

`record[A064094(A055523(n+3))]`
-/

namespace A323217.P13130777669472559790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064094 (A055523 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323217.P13130777669472559790

/-! ## A323217.P16288783311892696878

`record[A064094(record[A120097(n+1)])]`
-/

namespace A323217.P16288783311892696878
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120097 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064094 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323217.P16288783311892696878

/-!
# A323218: a(n) = (4*n^3 + 30*n^2 + 50*n)/3 + 1.

The programs for A323218, the canonical program `A323218.P13955551984394260381` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323218 has offset 0).

The definition of A323218 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A323218.P13955551984394260381

`(4*n^3+30*n²+50*n)/3+1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A323218

/-- `(4*n^3+30*n²+50*n)/3+1` -/
def P13955551984394260381.Spec : Prop :=
  ∀ n, P13955551984394260381.a n = (A323218 n : ℚ)

end A323218

/-! ## A323218.P5861173500087254266

`∑[(A103517(n)+2)²-8]`
-/

namespace A323218.P5861173500087254266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A103517 n + 2) ^ 2 - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323218.P5861173500087254266

namespace A323218

/-- `∑[(A103517(n)+2)²-8]` -/
def P5861173500087254266.Spec : Prop :=
  ∀ n, P5861173500087254266.a n = A323218 n

end A323218

/-! ## A323218.P412104059688500468

`abs(A017113(n+2)-A166464(n+2))`
-/

namespace A323218.P412104059688500468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A017113 (n + 2) - A166464 (n + 2)|

end

end A323218.P412104059688500468

namespace A323218

/-- `abs(A017113(n+2)-A166464(n+2))` -/
def P412104059688500468.Spec : Prop :=
  ∀ n, P412104059688500468.a n = A323218 n

end A323218

/-! ## A323218.P6708961814146245276

`or(1, A264443(2*n))`
-/

namespace A323218.P6708961814146245276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A264443 (2 * n))

end

end A323218.P6708961814146245276

namespace A323218

/-- `or(1, A264443(2*n))` -/
def P6708961814146245276.Spec : Prop :=
  ∀ n, P6708961814146245276.a n = A323218 n

end A323218

/-! ## A323218.P14488249747686524692

`record[xor((-1)^n, A264443(n))]`
-/

namespace A323218.P14488249747686524692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((-1) ^ n) (A264443 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323218.P14488249747686524692

namespace A323218

/-- `record[xor((-1)^n, A264443(n))]` -/
def P14488249747686524692.Spec : Prop :=
  ∀ n, P14488249747686524692.a n = A323218 n

end A323218

/-! ## A323218.P3780601455366008715

`record[A023545(C(n, and(1, n)))-5]`
-/

namespace A323218.P3780601455366008715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (Nat.choose n (Nat.land 1 n)) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323218.P3780601455366008715

namespace A323218

/-- `record[A023545(C(n, and(1, n)))-5]` -/
def P3780601455366008715.Spec : Prop :=
  ∀ n, P3780601455366008715.a n = A323218 n

end A323218

/-! ## A323218.P18324971820230523612

`xor(1, A264443(A005843(n)))`
-/

namespace A323218.P18324971820230523612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A264443 (A005843 n).toNat)

end

end A323218.P18324971820230523612

namespace A323218

/-- `xor(1, A264443(A005843(n)))` -/
def P18324971820230523612.Spec : Prop :=
  ∀ n, P18324971820230523612.a n = A323218 n

end A323218

/-! ## A323218.P5502706458498616057

`record[or(A033999(n), A264443(n))]`
-/

namespace A323218.P5502706458498616057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A033999 n) (A264443 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323218.P5502706458498616057

namespace A323218

/-- `record[or(A033999(n), A264443(n))]` -/
def P5502706458498616057.Spec : Prop :=
  ∀ n, P5502706458498616057.a n = A323218 n

end A323218

/-! ## A323218.P16488802011295698867

`record[A023545(A000265(n+1))-5]`
-/

namespace A323218.P16488802011295698867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (A000265 (n + 1)).toNat - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323218.P16488802011295698867

namespace A323218

/-- `record[A023545(A000265(n+1))-5]` -/
def P16488802011295698867.Spec : Prop :=
  ∀ n, P16488802011295698867.a n = A323218 n

end A323218

/-! ## A323218.P1968294638036653874

`∑[A286429(2*n+3)+1]`
-/

namespace A323218.P1968294638036653874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286429 (2 * n + 3) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323218.P1968294638036653874

namespace A323218

/-- `∑[A286429(2*n+3)+1]` -/
def P1968294638036653874.Spec : Prop :=
  ∀ n, P1968294638036653874.a n = A323218 n

end A323218

/-!
# A323219: a(n) = [x^n] (1 - 4*x)^(-n/2)*x/(1 - x).

The programs for A323219, there is no canonical definition to state claims against.
-/

/-! ## A323219.P9007105261221593846

`A323222(∑[4*n])`
-/

namespace A323219.P9007105261221593846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323222 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A323219.P9007105261221593846

/-! ## A323219.P8282196780762505549

`record[A323222(A268368(n+1))]`
-/

namespace A323219.P8282196780762505549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323222 (A268368 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323219.P8282196780762505549

/-!
# A323220: a(n) = n*(n + 5)*(n + 7)*(n + 10)/24 + 1.

The programs for A323220, the canonical program `A323220.P13662285328539052818` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323220 has offset 0).

The definition of A323220 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A323220.P13662285328539052818

`n*(n+5)*(n+7)*(n+10)/24+1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A323220

/-- `n*(n+5)*(n+7)*(n+10)/24+1` -/
def P13662285328539052818.Spec : Prop :=
  ∀ n, P13662285328539052818.a n = (A323220 n : ℚ)

end A323220

/-! ## A323220.P15079131313848490783

`∑[gcd(A000038(n), A323221(n+1))]`
-/

namespace A323220.P15079131313848490783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A323221 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323220.P15079131313848490783

namespace A323220

/-- `∑[gcd(A000038(n), A323221(n+1))]` -/
def P15079131313848490783.Spec : Prop :=
  ∀ n, (P15079131313848490783.a n : ℤ) = A323220 n

end A323220

/-! ## A323220.P17744213414387679787

`record[A227161(n)-n*(2*n+3)]`
-/

namespace A323220.P17744213414387679787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227161 n - (n * (2 * n + 3) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323220.P17744213414387679787

namespace A323220

/-- `record[A227161(n)-n*(2*n+3)]` -/
def P17744213414387679787.Spec : Prop :=
  ∀ n, P17744213414387679787.a n = A323220 n

end A323220

/-! ## A323220.P5746877086103605660

`record[A000332(n+2)-A008865(n+1)]`
-/

namespace A323220.P5746877086103605660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 2) - A008865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323220.P5746877086103605660

namespace A323220

/-- `record[A000332(n+2)-A008865(n+1)]` -/
def P5746877086103605660.Spec : Prop :=
  ∀ n, P5746877086103605660.a n = A323220 n

end A323220

/-! ## A323220.P8310959691392417796

`∑[record[A323221(A027656(n+1))]]`
-/

namespace A323220.P8310959691392417796
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323221 (A027656 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323220.P8310959691392417796

namespace A323220

/-- `∑[record[A323221(A027656(n+1))]]` -/
def P8310959691392417796.Spec : Prop :=
  ∀ n, P8310959691392417796.a n = A323220 n

end A323220

/-! ## A323220.P7718263832102613535

`A091491(A052905(n+2))`
-/

namespace A323220.P7718263832102613535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091491 (A052905 (n + 2)).toNat

end

end A323220.P7718263832102613535

namespace A323220

/-- `A091491(A052905(n+2))` -/
def P7718263832102613535.Spec : Prop :=
  ∀ n, P7718263832102613535.a n = A323220 n

end A323220

/-! ## A323220.P13728620604599355993

`A096465(A000124(n+4)+3)`
-/

namespace A323220.P13728620604599355993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096465 (A000124 (n + 4) + 3).toNat

end

end A323220.P13728620604599355993

namespace A323220

/-- `A096465(A000124(n+4)+3)` -/
def P13728620604599355993.Spec : Prop :=
  ∀ n, P13728620604599355993.a n = A323220 n

end A323220

/-! ## A323220.P15494065429819838929

`A096465(A000096(n+3)+5)`
-/

namespace A323220.P15494065429819838929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096465 (A000096 (n + 3) + 5).toNat

end

end A323220.P15494065429819838929

namespace A323220

/-- `A096465(A000096(n+3)+5)` -/
def P15494065429819838929.Spec : Prop :=
  ∀ n, P15494065429819838929.a n = A323220 n

end A323220

/-! ## A323220.P4796843939846381689

`A096465(Δ[A006503(n+1)]+7)`
-/

namespace A323220.P4796843939846381689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096465 (f1 (n + 1) - f1 n + 7).toNat

end

end A323220.P4796843939846381689

namespace A323220

/-- `A096465(Δ[A006503(n+1)]+7)` -/
def P4796843939846381689.Spec : Prop :=
  ∀ n, P4796843939846381689.a n = A323220 n

end A323220

/-! ## A323220.P14447210830217236466

`A091491(A034856(n+3)+n+2)`
-/

namespace A323220.P14447210830217236466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091491 (A034856 (n + 3) + (n + 2 : ℤ)).toNat

end

end A323220.P14447210830217236466

namespace A323220

/-- `A091491(A034856(n+3)+n+2)` -/
def P14447210830217236466.Spec : Prop :=
  ∀ n, P14447210830217236466.a n = A323220 n

end A323220

/-! ## A323220.P15750580396746522538

`A283054(A052905(n)+9)`
-/

namespace A323220.P15750580396746522538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283054 (A052905 n + 9).toNat

end

end A323220.P15750580396746522538

namespace A323220

/-- `A283054(A052905(n)+9)` -/
def P15750580396746522538.Spec : Prop :=
  ∀ n, P15750580396746522538.a n = A323220 n

end A323220

/-! ## A323220.P7580817420076266585

`A283054(A055999(n)+10)`
-/

namespace A323220.P7580817420076266585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283054 (A055999 n + 10).toNat

end

end A323220.P7580817420076266585

namespace A323220

/-- `A283054(A055999(n)+10)` -/
def P7580817420076266585.Spec : Prop :=
  ∀ n, P7580817420076266585.a n = A323220 n

end A323220

/-! ## A323220.P13222836801182470011

`A283054(A167614(n+2)+1)`
-/

namespace A323220.P13222836801182470011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283054 (A167614 (n + 2) + 1).toNat

end

end A323220.P13222836801182470011

namespace A323220

/-- `A283054(A167614(n+2)+1)` -/
def P13222836801182470011.Spec : Prop :=
  ∀ n, P13222836801182470011.a n = A323220 n

end A323220

/-!
# A323221: a(n) = n*(n + 5)*(n + 7)/6 + 1.

The programs for A323221, the canonical program `A323221.P1160006221664677187` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323221 has offset 0).

The definition of A323221 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A323221.P1160006221664677187

`n*(n+5)*(n+7)/6+1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A323221

/-- `n*(n+5)*(n+7)/6+1` -/
def P1160006221664677187.Spec : Prop :=
  ∀ n, P1160006221664677187.a n = (A323221 n : ℚ)

end A323221

/-! ## A323221.P118051135014285080

`record[C(n, 3)+1-2*n]`
-/

namespace A323221.P118051135014285080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 3 : ℤ) + (1 - (2 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323221.P118051135014285080

namespace A323221

/-- `record[C(n, 3)+1-2*n]` -/
def P118051135014285080.Spec : Prop :=
  ∀ n, P118051135014285080.a n = A323221 n

end A323221

/-! ## A323221.P5051439885650930414

`record[1-(2*n-C(n, 3))]`
-/

namespace A323221.P5051439885650930414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((2 * n : ℤ) - (Nat.choose n 3 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323221.P5051439885650930414

namespace A323221

/-- `record[1-(2*n-C(n, 3))]` -/
def P5051439885650930414.Spec : Prop :=
  ∀ n, P5051439885650930414.a n = A323221 n

end A323221

/-! ## A323221.P8381339722673107922

`record[1-n+C(n, 3)-n]`
-/

namespace A323221.P8381339722673107922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ) + ((Nat.choose n 3 : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323221.P8381339722673107922

namespace A323221

/-- `record[1-n+C(n, 3)-n]` -/
def P8381339722673107922.Spec : Prop :=
  ∀ n, P8381339722673107922.a n = A323221 n

end A323221

/-! ## A323221.P6453956109402191509

`record[1-(n-C(n, 3))-n]`
-/

namespace A323221.P6453956109402191509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n : ℤ) - (Nat.choose n 3 : ℤ)) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323221.P6453956109402191509

namespace A323221

/-- `record[1-(n-C(n, 3))-n]` -/
def P6453956109402191509.Spec : Prop :=
  ∀ n, P6453956109402191509.a n = A323221 n

end A323221

/-! ## A323221.P705003158086331784

`Δ[C(n+5, 4)-(n+4)²]`
-/

namespace A323221.P705003158086331784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 5) 4 : ℤ) - ((n + 4) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A323221.P705003158086331784

namespace A323221

/-- `Δ[C(n+5, 4)-(n+4)²]` -/
def P705003158086331784.Spec : Prop :=
  ∀ n, P705003158086331784.a n = A323221 n

end A323221

/-! ## A323221.P16197555870014160107

`∑[gcd(∑[n+3]+1, C(2, n+2))]`
-/

namespace A323221.P16197555870014160107
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (∑ j ∈ Finset.range (n + 1), f2 j + 1) (Nat.choose 2 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323221.P16197555870014160107

namespace A323221

/-- `∑[gcd(∑[n+3]+1, C(2, n+2))]` -/
def P16197555870014160107.Spec : Prop :=
  ∀ n, (P16197555870014160107.a n : ℤ) = A323221 n

end A323221

/-! ## A323221.P5633873999786230749

`∑[(∑[n+3]+1)%(3*(n+1)²)]`
-/

namespace A323221.P5633873999786230749
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j + 1) % (3 * (n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323221.P5633873999786230749

namespace A323221

/-- `∑[(∑[n+3]+1)%(3*(n+1)²)]` -/
def P5633873999786230749.Spec : Prop :=
  ∀ n, (P5633873999786230749.a n : ℤ) = A323221 n

end A323221

/-! ## A323221.P14682188890361300494

`floor(n+1+a(n-1)+C(n+3, 2))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A323221.P14682188890361300494
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n + 1 + (a (n - 1) + Nat.choose (n + 3) 2)

end

end A323221.P14682188890361300494

namespace A323221

/-- `floor(n+1+a(n-1)+C(n+3, 2))` -/
def P14682188890361300494.Spec : Prop :=
  ∀ n, (P14682188890361300494.a n : ℤ) = A323221 n

end A323221

/-! ## A323221.P14244885847483990188

`abs(A034857(n+1)+n+2)`
-/

namespace A323221.P14244885847483990188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A034857 (n + 1) + (n + 2 : ℤ)|

end

end A323221.P14244885847483990188

namespace A323221

/-- `abs(A034857(n+1)+n+2)` -/
def P14244885847483990188.Spec : Prop :=
  ∀ n, P14244885847483990188.a n = A323221 n

end A323221

/-! ## A323221.P6312379538739983807

`∑[∑[n+3]%A001846(n)+1]`
-/

namespace A323221.P6312379538739983807
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) (A001846 n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323221.P6312379538739983807

namespace A323221

/-- `∑[∑[n+3]%A001846(n)+1]` -/
def P6312379538739983807.Spec : Prop :=
  ∀ n, P6312379538739983807.a n = A323221 n

end A323221

/-! ## A323221.P6568252533415231715

`abs(n-2*n-A006416(n+2))`
-/

namespace A323221.P6568252533415231715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - (2 * n : ℤ) - A006416 (n + 2)|

end

end A323221.P6568252533415231715

namespace A323221

/-- `abs(n-2*n-A006416(n+2))` -/
def P6568252533415231715.Spec : Prop :=
  ∀ n, P6568252533415231715.a n = A323221 n

end A323221

/-! ## A323221.P17239936426375870122

`∑[(∑[n+3]+1)^and(1, A000040(n+1))]`
-/

namespace A323221.P17239936426375870122
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j + 1 : ℕ) : ℚ) ^ (Int.land 1 (A000040 (n + 1)) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323221.P17239936426375870122

namespace A323221

/-- `∑[(∑[n+3]+1)^and(1, A000040(n+1))]` -/
def P17239936426375870122.Spec : Prop :=
  ∀ n, P17239936426375870122.a n = (A323221 n : ℚ)

end A323221

/-! ## A323221.P14275596187929965031

`∑[gcd(floor(1/(n+1)), A034856(n+2))]`
-/

namespace A323221.P14275596187929965031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊1 / (n + 1 : ℚ)⌋ (A034856 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323221.P14275596187929965031

namespace A323221

/-- `∑[gcd(floor(1/(n+1)), A034856(n+2))]` -/
def P14275596187929965031.Spec : Prop :=
  ∀ n, (P14275596187929965031.a n : ℤ) = A323221 n

end A323221

/-! ## A323221.P15508504793227702835

`Δ[A005287(n+4)-Δ[A005287(n+4)]]`
-/

namespace A323221.P15508504793227702835
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005287 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005287 (n + 4) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A323221.P15508504793227702835

namespace A323221

/-- `Δ[A005287(n+4)-Δ[A005287(n+4)]]` -/
def P15508504793227702835.Spec : Prop :=
  ∀ n, P15508504793227702835.a n = A323221 n

end A323221

/-! ## A323221.P2565743175440851335

`record[∑[∑[n-1]-n]+2]`
-/

namespace A323221.P2565743175440851335
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323221.P2565743175440851335

namespace A323221

/-- `record[∑[∑[n-1]-n]+2]` -/
def P2565743175440851335.Spec : Prop :=
  ∀ n, P2565743175440851335.a n = A323221 n

end A323221

/-! ## A323221.P7987450609669617542

`∑[record[A347633(n+6)]]`
-/

namespace A323221.P7987450609669617542
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347633 (n + 6)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323221.P7987450609669617542

namespace A323221

/-- `∑[record[A347633(n+6)]]` -/
def P7987450609669617542.Spec : Prop :=
  ∀ n, P7987450609669617542.a n = A323221 n

end A323221

/-! ## A323221.P9376254264609047992

`A096465(A167614(n+2))`
-/

namespace A323221.P9376254264609047992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096465 (A167614 (n + 2)).toNat

end

end A323221.P9376254264609047992

namespace A323221

/-- `A096465(A167614(n+2))` -/
def P9376254264609047992.Spec : Prop :=
  ∀ n, P9376254264609047992.a n = A323221 n

end A323221

/-!
# A323222: A(n, k) = [x^k] (1 - 4*x)^(-n/2)*x/(1 - x), square array read by ascending antidiagonals with n >= 0 and k >= 0.

The programs for A323222, there is no canonical definition to state claims against.
-/

/-! ## A323222.P558058229956900137

`A102752(n)%A336534(n)!`
-/

namespace A323222.P558058229956900137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102752 n) (Nat.factorial (A336534 n).toNat : ℤ)

end

end A323222.P558058229956900137

/-! ## A323222.P2714681678573742883

`and(A102752(n), A112071(A139330(n+1)))`
-/

namespace A323222.P2714681678573742883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A102752 n) (A112071 (A139330 (n + 1)).toNat)

end

end A323222.P2714681678573742883

/-! ## A323222.P2702604034541675366

`A129527(A327618(n))%A340157(2*(n+1))`
-/

namespace A323222.P2702604034541675366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129527 (A327618 n).toNat) (A340157 (2 * (n + 1)))

end

end A323222.P2702604034541675366

/-! ## A323222.P1238109440608627136

`A026741(A102752(n))%A056616(A339768(n))`
-/

namespace A323222.P1238109440608627136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026741 (A102752 n).toNat) (A056616 (A339768 n).toNat)

end

end A323222.P1238109440608627136

/-!
# A323223: a(n) = [x^n] x/((1 - x)*(1 - 4*x)^(5/2)).

The programs for A323223, the canonical program `A323223.P14113788675639362243` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323223 has offset 0).

The definition of A323223 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A323223.P14113788675639362243

`((5*n+1)*a(n-1)-(4*n+2)*a(n-2))/(n-1)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A323223

/-- `((5*n+1)*a(n-1)-(4*n+2)*a(n-2))/(n-1)` -/
def P14113788675639362243.Spec : Prop :=
  ∀ n, P14113788675639362243.a n = (A323223 n : ℚ)

end A323223

/-! ## A323223.P6927042821424774392

`∑[A051133(n)/3]`
-/

namespace A323223.P6927042821424774392
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051133 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323223.P6927042821424774392

namespace A323223

/-- `∑[A051133(n)/3]` -/
def P6927042821424774392.Spec : Prop :=
  ∀ n, P6927042821424774392.a n = (A323223 n : ℚ)

end A323223

/-! ## A323223.P14210955939028214758

`∑[∑[A119578(n)/2]]`
-/

namespace A323223.P14210955939028214758
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119578 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323223.P14210955939028214758

namespace A323223

/-- `∑[∑[A119578(n)/2]]` -/
def P14210955939028214758.Spec : Prop :=
  ∀ n, P14210955939028214758.a n = (A323223 n : ℚ)

end A323223

/-! ## A323223.P14919481699534422498

`∑[∑[n²]*A000108(n)]`
-/

namespace A323223.P14919481699534422498
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323223.P14919481699534422498

namespace A323223

/-- `∑[∑[n²]*A000108(n)]` -/
def P14919481699534422498.Spec : Prop :=
  ∀ n, P14919481699534422498.a n = A323223 n

end A323223

/-! ## A323223.P8147288876251221198

`∑[∑[∑[n]*A088218(n)]]`
-/

namespace A323223.P8147288876251221198
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) * A088218 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323223.P8147288876251221198

namespace A323223

/-- `∑[∑[∑[n]*A088218(n)]]` -/
def P8147288876251221198.Spec : Prop :=
  ∀ n, P8147288876251221198.a n = A323223 n

end A323223

/-! ## A323223.P12504546936051735473

`∑[(A120304(n)+2)*∑[n²]]`
-/

namespace A323223.P12504546936051735473
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A120304 n + 2) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323223.P12504546936051735473

namespace A323223

/-- `∑[(A120304(n)+2)*∑[n²]]` -/
def P12504546936051735473.Spec : Prop :=
  ∀ n, P12504546936051735473.a n = A323223 n

end A323223

/-! ## A323223.P16329425106049732451

`∑[∑[n²]*A028304(2*n)]`
-/

namespace A323223.P16329425106049732451
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A028304 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323223.P16329425106049732451

namespace A323223

/-- `∑[∑[n²]*A028304(2*n)]` -/
def P16329425106049732451.Spec : Prop :=
  ∀ n, P16329425106049732451.a n = A323223 n

end A323223

/-! ## A323223.P16505663530567700538

`∑[∑[A028329(n)/4*∑[n]]]`
-/

namespace A323223.P16505663530567700538
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028329 n : ℚ) / 4 * ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323223.P16505663530567700538

namespace A323223

/-- `∑[∑[A028329(n)/4*∑[n]]]` -/
def P16505663530567700538.Spec : Prop :=
  ∀ n, P16505663530567700538.a n = (A323223 n : ℚ)

end A323223

/-! ## A323223.P14097480420489548772

`∑[A000984(n)/(n+1)*∑[n²]]`
-/

namespace A323223.P14097480420489548772
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 n : ℚ) / (n + 1 : ℚ) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323223.P14097480420489548772

namespace A323223

/-- `∑[A000984(n)/(n+1)*∑[n²]]` -/
def P14097480420489548772.Spec : Prop :=
  ∀ n, P14097480420489548772.a n = (A323223 n : ℚ)

end A323223

/-! ## A323223.P12534860526361493658

`∑[abs(A090192(2*n+1))*∑[n²]]`
-/

namespace A323223.P12534860526361493658
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A090192 (2 * n + 1)| * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323223.P12534860526361493658

namespace A323223

/-- `∑[abs(A090192(2*n+1))*∑[n²]]` -/
def P12534860526361493658.Spec : Prop :=
  ∀ n, P12534860526361493658.a n = A323223 n

end A323223

/-! ## A323223.P13332630743546751645

`∑[abs(A105523(2*n+1))*∑[n²]]`
-/

namespace A323223.P13332630743546751645
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A105523 (2 * n + 1)| * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323223.P13332630743546751645

namespace A323223

/-- `∑[abs(A105523(2*n+1))*∑[n²]]` -/
def P13332630743546751645.Spec : Prop :=
  ∀ n, P13332630743546751645.a n = A323223 n

end A323223

/-! ## A323223.P3815280269398823292

`∑[A000447(n)*A120588(n)]`
-/

namespace A323223.P3815280269398823292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000447 n * A120588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323223.P3815280269398823292

namespace A323223

/-- `∑[A000447(n)*A120588(n)]` -/
def P3815280269398823292.Spec : Prop :=
  ∀ n, P3815280269398823292.a n = A323223 n

end A323223

/-! ## A323223.P13320539902122824127

`∑[∑[A004273(n)²]*A120588(n)]`
-/

namespace A323223.P13320539902122824127
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A120588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323223.P13320539902122824127

namespace A323223

/-- `∑[∑[A004273(n)²]*A120588(n)]` -/
def P13320539902122824127.Spec : Prop :=
  ∀ n, P13320539902122824127.a n = A323223 n

end A323223

/-! ## A323223.P2290857994348145499

`∑[A000108(n+1)*A000292(n)]/2`
-/

namespace A323223.P2290857994348145499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) * A000292 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A323223.P2290857994348145499

namespace A323223

/-- `∑[A000108(n+1)*A000292(n)]/2` -/
def P2290857994348145499.Spec : Prop :=
  ∀ n, P2290857994348145499.a n = (A323223 n : ℚ)

end A323223

/-! ## A323223.P7492025989701561012

`∑[∑[(n+1)*A005430(n)]]/4`
-/

namespace A323223.P7492025989701561012
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A005430 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4

end

end A323223.P7492025989701561012

namespace A323223

/-- `∑[∑[(n+1)*A005430(n)]]/4` -/
def P7492025989701561012.Spec : Prop :=
  ∀ n, P7492025989701561012.a n = (A323223 n : ℚ)

end A323223

/-! ## A323223.P6305897642107553873

`∑[A002802(n)]-A002802(n)`
-/

namespace A323223.P6305897642107553873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A002802 n

end

end A323223.P6305897642107553873

namespace A323223

/-- `∑[A002802(n)]-A002802(n)` -/
def P6305897642107553873.Spec : Prop :=
  ∀ n, P6305897642107553873.a n = A323223 n

end A323223

/-! ## A323223.P783042439987609540

`∑[∑[A085373(n)]-A085373(n)]`
-/

namespace A323223.P783042439987609540
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085373 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A085373 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323223.P783042439987609540

namespace A323223

/-- `∑[∑[A085373(n)]-A085373(n)]` -/
def P783042439987609540.Spec : Prop :=
  ∀ n, P783042439987609540.a n = A323223 n

end A323223

/-!
# A323224: A(n, k) = [x^k] C^n*x/(1 - x) where C = 2/(1 + sqrt(1 - 4*x)), square array read by ascending antidiagonals with n >= 0 and k >= 0.

The programs for A323224, there is no canonical definition to state claims against.
-/

/-! ## A323224.P7668635545631000194

`A096465(n)-A130020(n)`
-/

namespace A323224.P7668635545631000194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096465 n - A130020 n

end

end A323224.P7668635545631000194

/-! ## A323224.P10170893010064465453

`A283054(∑[1-char[∑[n]]])-A130020(n)`
-/

namespace A323224.P10170893010064465453
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283054 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A130020 n

end

end A323224.P10170893010064465453

/-! ## A323224.P16913855072380621013

`A091491(A056943(n))%A283054(n)`
-/

namespace A323224.P16913855072380621013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091491 (A056943 n).toNat) (A283054 n)

end

end A323224.P16913855072380621013

/-! ## A323224.P15525459342784865765

`A057427(A139600(n))*A091491(A056943(n))`
-/

namespace A323224.P15525459342784865765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A139600 n).toNat * A091491 (A056943 n).toNat

end

end A323224.P15525459342784865765

/-! ## A323224.P7128968692929504990

`A091491(A056943(n))+A010815(A283054(n)²)`
-/

namespace A323224.P7128968692929504990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091491 (A056943 n).toNat + A010815 (A283054 n ^ 2).toNat

end

end A323224.P7128968692929504990

/-!
# A323225: a(n) = ((2^n*n + i*(1 - i)^n - i*(1 + i)^n))/4, where i is the imaginary unit.

The programs for A323225, the canonical program `A323225.P13106198949139252087` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323225 has offset 0).

The definition of A323225 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A323225.P13106198949139252087

`(A001787(n)+A009545(n))/2`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A323225

/-- `(A001787(n)+A009545(n))/2` -/
def P13106198949139252087.Spec : Prop :=
  ∀ n, P13106198949139252087.a n = (A323225 n : ℚ)

end A323225

/-! ## A323225.P2977212879383854496

`A132402(n)-2^n`
-/

namespace A323225.P2977212879383854496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132402 n - (2 ^ n : ℤ)

end

end A323225.P2977212879383854496

namespace A323225

/-- `A132402(n)-2^n` -/
def P2977212879383854496.Spec : Prop :=
  ∀ n, P2977212879383854496.a n = A323225 n

end A323225

/-! ## A323225.P1033690199046292553

`A038503(n)+a(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A323225.P1033690199046292553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A038503 n + (a (n - 1) + a (n - 1))

end

end A323225.P1033690199046292553

namespace A323225

/-- `A038503(n)+a(n-1)+a(n-1)` -/
def P1033690199046292553.Spec : Prop :=
  ∀ n, P1033690199046292553.a n = A323225 n

end A323225

/-! ## A323225.P15530273033035604843

`A139756(n)+A038504(n)`
-/

namespace A323225.P15530273033035604843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 n + A038504 n

end

end A323225.P15530273033035604843

namespace A323225

/-- `A139756(n)+A038504(n)` -/
def P15530273033035604843.Spec : Prop :=
  ∀ n, P15530273033035604843.a n = A323225 n

end A323225

/-! ## A323225.P3273345065028034763

`A000225(n)+A132402(n)-A000225(n+1)`
-/

namespace A323225.P3273345065028034763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (A132402 n - A000225 (n + 1))

end

end A323225.P3273345065028034763

namespace A323225

/-- `A000225(n)+A132402(n)-A000225(n+1)` -/
def P3273345065028034763.Spec : Prop :=
  ∀ n, P3273345065028034763.a n = A323225 n

end A323225

/-! ## A323225.P7668773019389530966

`A135035(n)-(A038504(n+1)+A000749(n))`
-/

namespace A323225.P7668773019389530966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135035 n - (A038504 (n + 1) + A000749 n)

end

end A323225.P7668773019389530966

namespace A323225

/-- `A135035(n)-(A038504(n+1)+A000749(n))` -/
def P7668773019389530966.Spec : Prop :=
  ∀ n, P7668773019389530966.a n = A323225 n

end A323225

/-! ## A323225.P13393521284868916091

`A135035(n)-A038503(n+1)-A038504(n)`
-/

namespace A323225.P13393521284868916091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135035 n - A038503 (n + 1) - A038504 n

end

end A323225.P13393521284868916091

namespace A323225

/-- `A135035(n)-A038503(n+1)-A038504(n)` -/
def P13393521284868916091.Spec : Prop :=
  ∀ n, P13393521284868916091.a n = A323225 n

end A323225

/-! ## A323225.P5694107158129093041

`(A097067(n+1)+A009545(n))/2`
-/

namespace A323225.P5694107158129093041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097067 (n + 1) + A009545 n : ℚ) / 2

end

end A323225.P5694107158129093041

namespace A323225

/-- `(A097067(n+1)+A009545(n))/2` -/
def P5694107158129093041.Spec : Prop :=
  ∀ n, P5694107158129093041.a n = (A323225 n : ℚ)

end A323225

/-! ## A323225.P16834419850595573941

`(4*n*a(n-3)+(2-6*n)*a(n-2)+(4*n-2)*a(n-1))/(n-1)` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A323225.P16834419850595573941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  (4 * ((n : ℚ) * a (n - 3)) + (2 - (6 * n : ℤ) : ℚ) * a (n - 2) + ((4 * n : ℤ) - 2 : ℚ) * a (n - 1)) / ((n : ℤ) - 1 : ℚ)

end

end A323225.P16834419850595573941

namespace A323225

/-- `(4*n*a(n-3)+(2-6*n)*a(n-2)+(4*n-2)*a(n-1))/(n-1)` -/
def P16834419850595573941.Spec : Prop :=
  ∀ n, P16834419850595573941.a n = (A323225 n : ℚ)

end A323225

/-!
# A323226: T(n, k) = p(n) - (p(k) - t(k-1)) with t(n) = A000005(|n|) for n != 0 and t(0) = 0, p(n) = A000010(n) for n > 0 and p(0) = 0, for n >= 0 and 0 <= k <= n, triangle read by rows.

The programs for A323226, there is no canonical definition to state claims against.
-/

/-! ## A323226.P12497765947336668290

`A032550(n+1)-A055736(A025635(n+1))`
-/

namespace A323226.P12497765947336668290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032550 (n + 1) - A055736 (A025635 (n + 1)).toNat

end

end A323226.P12497765947336668290

/-! ## A323226.P10600214182937646359

`and(3, A226641(A325325(3*n+1)))`
-/

namespace A323226.P10600214182937646359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A226641 (A325325 (3 * n + 1)).toNat)

end

end A323226.P10600214182937646359

/-! ## A323226.P17311710930770231415

`A010873(A140263(n)+A001519(n))`
-/

namespace A323226.P17311710930770231415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A140263 n + A001519 n).toNat

end

end A323226.P17311710930770231415

/-! ## A323226.P8808301645255375299

`A121900(n)-A008683(A066117(n+1))`
-/

namespace A323226.P8808301645255375299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121900 n - A008683 (A066117 (n + 1)).toNat

end

end A323226.P8808301645255375299

/-! ## A323226.P688334115970533124

`A379679(A037124(n+5))+A010054(n)`
-/

namespace A323226.P688334115970533124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379679 (A037124 (n + 5)).toNat + A010054 n

end

end A323226.P688334115970533124

/-!
# A323227: a(n) = [x^n] (1 - 2*x + x^2 - 2*x^3 + x^4)/((1 - x)^2*(1 - 2*x)).

The programs for A323227, the canonical program `A323227.P2325014151816221101` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323227 has offset 0).

The definition of A323227 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A323227.P2325014151816221101

`((2-2*n)*a(n-2)-(5-3*n)*a(n-1))/(n-2)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=6`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A323227

/-- `((2-2*n)*a(n-2)-(5-3*n)*a(n-1))/(n-2)` -/
def P2325014151816221101.Spec : Prop :=
  ∀ n, P2325014151816221101.a n = (A323227 n : ℚ)

end A323227

/-! ## A323227.P3755189863878269001

`floor(2^(n-2)+1+n)`
-/

namespace A323227.P3755189863878269001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) + 1 + (n : ℚ)⌋

end

end A323227.P3755189863878269001

namespace A323227

/-- `floor(2^(n-2)+1+n)` -/
def P3755189863878269001.Spec : Prop :=
  ∀ n, P3755189863878269001.a n = A323227 n

end A323227

/-! ## A323227.P11793451661468559177

`ogf((-1+2x-x^2+2x^3-x^4)/(-1+4x-5x^2+2x^3))`
-/

namespace A323227.P11793451661468559177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 1, -2, 1] [1, -4, 5, -2] n

end

end A323227.P11793451661468559177

namespace A323227

/-- `ogf((-1+2x-x^2+2x^3-x^4)/(-1+4x-5x^2+2x^3))` -/
def P11793451661468559177.Spec : Prop :=
  ∀ n, P11793451661468559177.a n = A323227 n

end A323227

/-! ## A323227.P7317921126750143257

`∑[2*a(n-1)-1]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2`
-/

namespace A323227.P7317921126750143257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 2] fun n f1 =>
  2 * f1 (n - 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323227.P7317921126750143257

namespace A323227

/-- `∑[2*a(n-1)-1]` -/
def P7317921126750143257.Spec : Prop :=
  ∀ n, P7317921126750143257.a n = A323227 n

end A323227

/-! ## A323227.P14669895855143847199

`2*a(n-1)+1-n` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A323227.P14669895855143847199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  2 * a (n - 1) + (1 - (n : ℤ))

end

end A323227.P14669895855143847199

namespace A323227

/-- `2*a(n-1)+1-n` -/
def P14669895855143847199.Spec : Prop :=
  ∀ n, P14669895855143847199.a n = A323227 n

end A323227

/-! ## A323227.P12127996430286420722

`1-(n-2*a(n-1))` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A323227.P12127996430286420722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  1 - ((n : ℤ) - 2 * a (n - 1))

end

end A323227.P12127996430286420722

namespace A323227

/-- `1-(n-2*a(n-1))` -/
def P12127996430286420722.Spec : Prop :=
  ∀ n, P12127996430286420722.a n = A323227 n

end A323227

/-! ## A323227.P17680917496166954457

`∑[a(n-1)+a(n-1)-1]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2`
-/

namespace A323227.P17680917496166954457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 2] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323227.P17680917496166954457

namespace A323227

/-- `∑[a(n-1)+a(n-1)-1]` -/
def P17680917496166954457.Spec : Prop :=
  ∀ n, P17680917496166954457.a n = A323227 n

end A323227

/-! ## A323227.P17354154415975028077

`∑[a(n-1)-(1-a(n-1))]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2`
-/

namespace A323227.P17354154415975028077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 2] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323227.P17354154415975028077

namespace A323227

/-- `∑[a(n-1)-(1-a(n-1))]` -/
def P17354154415975028077.Spec : Prop :=
  ∀ n, P17354154415975028077.a n = A323227 n

end A323227

/-! ## A323227.P11579939955800908782

`a(n-1)+a(n-1)+1-n` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A323227.P11579939955800908782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  a (n - 1) + (a (n - 1) + (1 - (n : ℤ)))

end

end A323227.P11579939955800908782

namespace A323227

/-- `a(n-1)+a(n-1)+1-n` -/
def P11579939955800908782.Spec : Prop :=
  ∀ n, P11579939955800908782.a n = A323227 n

end A323227

/-! ## A323227.P13446946271650466784

`1-(n-a(n-1)-a(n-1))` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A323227.P13446946271650466784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  1 - ((n : ℤ) - a (n - 1) - a (n - 1))

end

end A323227.P13446946271650466784

namespace A323227

/-- `1-(n-a(n-1)-a(n-1))` -/
def P13446946271650466784.Spec : Prop :=
  ∀ n, P13446946271650466784.a n = A323227 n

end A323227

/-! ## A323227.P1853083624892324462

`A087156(n+1)+A034008(n)`
-/

namespace A323227.P1853083624892324462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (n + 1) + A034008 n

end

end A323227.P1853083624892324462

namespace A323227

/-- `A087156(n+1)+A034008(n)` -/
def P1853083624892324462.Spec : Prop :=
  ∀ n, P1853083624892324462.a n = A323227 n

end A323227

/-! ## A323227.P12434114552073589831

`A288382(n+1)+A157928(n)`
-/

namespace A323227.P12434114552073589831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288382 (n + 1) + A157928 n

end

end A323227.P12434114552073589831

namespace A323227

/-- `A288382(n+1)+A157928(n)` -/
def P12434114552073589831.Spec : Prop :=
  ∀ n, P12434114552073589831.a n = A323227 n

end A323227

/-! ## A323227.P9026461508011032740

`A034008(n)+A057427(n)+n`
-/

namespace A323227.P9026461508011032740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n + (A057427 n + (n : ℤ))

end

end A323227.P9026461508011032740

namespace A323227

/-- `A034008(n)+A057427(n)+n` -/
def P9026461508011032740.Spec : Prop :=
  ∀ n, P9026461508011032740.a n = A323227 n

end A323227

/-! ## A323227.P5442036633378047367

`A034008(n)+n-A057428(n)`
-/

namespace A323227.P5442036633378047367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n + ((n : ℤ) - A057428 n)

end

end A323227.P5442036633378047367

namespace A323227

/-- `A034008(n)+n-A057428(n)` -/
def P5442036633378047367.Spec : Prop :=
  ∀ n, P5442036633378047367.a n = A323227 n

end A323227

/-! ## A323227.P12939140812815086770

`A289271(A322990(A000961(n+1)))+n+1`
-/

namespace A323227.P12939140812815086770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289271 (A322990 (A000961 (n + 1)).toNat).toNat + (n + 1 : ℤ)

end

end A323227.P12939140812815086770

namespace A323227

/-- `A289271(A322990(A000961(n+1)))+n+1` -/
def P12939140812815086770.Spec : Prop :=
  ∀ n, P12939140812815086770.a n = A323227 n

end A323227

/-! ## A323227.P15226731182584002603

`A084215(n)-A000295(n)`
-/

namespace A323227.P15226731182584002603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084215 n - A000295 n

end

end A323227.P15226731182584002603

namespace A323227

/-- `A084215(n)-A000295(n)` -/
def P15226731182584002603.Spec : Prop :=
  ∀ n, P15226731182584002603.a n = A323227 n

end A323227

/-! ## A323227.P1431309160455304113

`A397439(n)-A076878(n+1)`
-/

namespace A323227.P1431309160455304113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397439 n - A076878 (n + 1)

end

end A323227.P1431309160455304113

namespace A323227

/-- `A397439(n)-A076878(n+1)` -/
def P1431309160455304113.Spec : Prop :=
  ∀ n, P1431309160455304113.a n = A323227 n

end A323227

/-! ## A323227.P11791980690410821471

`A084215(n)+n-A000225(n)`
-/

namespace A323227.P11791980690410821471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084215 n + ((n : ℤ) - A000225 n)

end

end A323227.P11791980690410821471

namespace A323227

/-- `A084215(n)+n-A000225(n)` -/
def P11791980690410821471.Spec : Prop :=
  ∀ n, P11791980690410821471.a n = A323227 n

end A323227

/-! ## A323227.P12022662994166317794

`A125176(n+1)+n-A055010(n)`
-/

namespace A323227.P12022662994166317794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125176 (n + 1) + ((n : ℤ) - A055010 n)

end

end A323227.P12022662994166317794

namespace A323227

/-- `A125176(n+1)+n-A055010(n)` -/
def P12022662994166317794.Spec : Prop :=
  ∀ n, P12022662994166317794.a n = A323227 n

end A323227

/-! ## A323227.P9292770711215354549

`A045623(n)-A360951(n)`
-/

namespace A323227.P9292770711215354549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 n - A360951 n

end

end A323227.P9292770711215354549

namespace A323227

/-- `A045623(n)-A360951(n)` -/
def P9292770711215354549.Spec : Prop :=
  ∀ n, P9292770711215354549.a n = A323227 n

end A323227

/-!
# A323228: a(n) = binomial(n + 4, n - 1) + 1.

The programs for A323228, the canonical program `A323228.P5825280664412522790` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323228 has offset 0).

The definition of A323228 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A323228.P5825280664412522790

`C(n+4, 5)+1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A323228

/-- `C(n+4, 5)+1` -/
def P5825280664412522790.Spec : Prop :=
  ∀ n, (P5825280664412522790.a n : ℤ) = A323228 n

theorem P5825280664412522790.correct : P5825280664412522790.Spec := by
  intro n
  simp only [A323228]

end A323228

/-! ## A323228.P4221468571195197317

`∑[∑[∑[∑[n]]]]+1`
-/

namespace A323228.P4221468571195197317
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A323228.P4221468571195197317

namespace A323228

/-- `∑[∑[∑[∑[n]]]]+1` -/
def P4221468571195197317.Spec : Prop :=
  ∀ n, (P4221468571195197317.a n : ℤ) = A323228 n

end A323228

/-! ## A323228.P795212707162730423

`∑[∑[∑[n²]]-a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A323228.P795212707162730423
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323228.P795212707162730423

namespace A323228

/-- `∑[∑[∑[n²]]-a(n-1)]` -/
def P795212707162730423.Spec : Prop :=
  ∀ n, P795212707162730423.a n = A323228 n

end A323228

/-! ## A323228.P3241059234947293414

`abs(n-A145127(n))`
-/

namespace A323228.P3241059234947293414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A145127 n|

end

end A323228.P3241059234947293414

namespace A323228

/-- `abs(n-A145127(n))` -/
def P3241059234947293414.Spec : Prop :=
  ∀ n, P3241059234947293414.a n = A323228 n

end A323228

/-! ## A323228.P13097667419705244146

`(A174002(n)+5)/5`
-/

namespace A323228.P13097667419705244146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174002 n + 5 : ℚ) / 5

end

end A323228.P13097667419705244146

namespace A323228

/-- `(A174002(n)+5)/5` -/
def P13097667419705244146.Spec : Prop :=
  ∀ n, P13097667419705244146.a n = (A323228 n : ℚ)

end A323228

/-! ## A323228.P7715848098098959968

`abs(n-∑[A145126(n)])`
-/

namespace A323228.P7715848098098959968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145126 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A323228.P7715848098098959968

namespace A323228

/-- `abs(n-∑[A145126(n)])` -/
def P7715848098098959968.Spec : Prop :=
  ∀ n, P7715848098098959968.a n = A323228 n

end A323228

/-! ## A323228.P1382884796201310536

`(A277935(n+1)+2)/2`
-/

namespace A323228.P1382884796201310536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277935 (n + 1) + 2 : ℚ) / 2

end

end A323228.P1382884796201310536

namespace A323228

/-- `(A277935(n+1)+2)/2` -/
def P1382884796201310536.Spec : Prop :=
  ∀ n, P1382884796201310536.a n = (A323228 n : ℚ)

end A323228

/-! ## A323228.P12807254567056996299

`(A266732(n)/2+5)/5`
-/

namespace A323228.P12807254567056996299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A266732 n : ℚ) / 2 + 5) / 5

end

end A323228.P12807254567056996299

namespace A323228

/-- `(A266732(n)/2+5)/5` -/
def P12807254567056996299.Spec : Prop :=
  ∀ n, P12807254567056996299.a n = (A323228 n : ℚ)

end A323228

/-! ## A323228.P8432253742557207930

`∑[A145126(n)-A057427(n)]`
-/

namespace A323228.P8432253742557207930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145126 n - A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323228.P8432253742557207930

namespace A323228

/-- `∑[A145126(n)-A057427(n)]` -/
def P8432253742557207930.Spec : Prop :=
  ∀ n, P8432253742557207930.a n = A323228 n

end A323228

/-! ## A323228.P10559699027175826239

`abs(A051879(n)-A051880(n)-1)`
-/

namespace A323228.P10559699027175826239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A051879 n - A051880 n - 1|

end

end A323228.P10559699027175826239

namespace A323228

/-- `abs(A051879(n)-A051880(n)-1)` -/
def P10559699027175826239.Spec : Prop :=
  ∀ n, P10559699027175826239.a n = A323228 n

end A323228

/-! ## A323228.P14578185774925294094

`∑[A145126(n)-(1-A000007(n))]`
-/

namespace A323228.P14578185774925294094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145126 n - (1 - A000007 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323228.P14578185774925294094

namespace A323228

/-- `∑[A145126(n)-(1-A000007(n))]` -/
def P14578185774925294094.Spec : Prop :=
  ∀ n, P14578185774925294094.a n = A323228 n

end A323228

/-! ## A323228.P15660783336404932892

`∑[A000332(A028310(n)+3)]`
-/

namespace A323228.P15660783336404932892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (A028310 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323228.P15660783336404932892

namespace A323228

/-- `∑[A000332(A028310(n)+3)]` -/
def P15660783336404932892.Spec : Prop :=
  ∀ n, P15660783336404932892.a n = A323228 n

end A323228

/-! ## A323228.P5633374889071324318

`record[A179184(n)+A000389(n)]`
-/

namespace A323228.P5633374889071324318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179184 n + A000389 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323228.P5633374889071324318

namespace A323228

/-- `record[A179184(n)+A000389(n)]` -/
def P5633374889071324318.Spec : Prop :=
  ∀ n, P5633374889071324318.a n = A323228 n

end A323228

/-! ## A323228.P4753827486686043600

`record[A267870(n)+A000389(n)]`
-/

namespace A323228.P4753827486686043600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267870 n + A000389 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323228.P4753827486686043600

namespace A323228

/-- `record[A267870(n)+A000389(n)]` -/
def P4753827486686043600.Spec : Prop :=
  ∀ n, P4753827486686043600.a n = A323228 n

end A323228

/-! ## A323228.P9907646006883842656

`record[A267871(n)+A000389(n)]`
-/

namespace A323228.P9907646006883842656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267871 n + A000389 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323228.P9907646006883842656

namespace A323228

/-- `record[A267871(n)+A000389(n)]` -/
def P9907646006883842656.Spec : Prop :=
  ∀ n, P9907646006883842656.a n = A323228 n

end A323228

/-! ## A323228.P9390281743132372538

`lcm(A000389(n+4)+1, A033999(n))`
-/

namespace A323228.P9390281743132372538
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000389 (n + 4) + 1) (A033999 n)

end

end A323228.P9390281743132372538

namespace A323228

/-- `lcm(A000389(n+4)+1, A033999(n))` -/
def P9390281743132372538.Spec : Prop :=
  ∀ n, (P9390281743132372538.a n : ℤ) = A323228 n

end A323228

/-! ## A323228.P3473358746696545209

`Δ[A000579(n+4)+n]`
-/

namespace A323228.P3473358746696545209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (n + 4) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A323228.P3473358746696545209

namespace A323228

/-- `Δ[A000579(n+4)+n]` -/
def P3473358746696545209.Spec : Prop :=
  ∀ n, P3473358746696545209.a n = A323228 n

end A323228

/-! ## A323228.P13342531212044334602

`∑[A213548(∑[abs(1-n)])]`
-/

namespace A323228.P13342531212044334602
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213548 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323228.P13342531212044334602

namespace A323228

/-- `∑[A213548(∑[abs(1-n)])]` -/
def P13342531212044334602.Spec : Prop :=
  ∀ n, P13342531212044334602.a n = A323228 n

end A323228

/-! ## A323228.P9890068659585456143

`∑[A109960(∑[n]+1)]`
-/

namespace A323228.P9890068659585456143
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109960 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323228.P9890068659585456143

namespace A323228

/-- `∑[A109960(∑[n]+1)]` -/
def P9890068659585456143.Spec : Prop :=
  ∀ n, P9890068659585456143.a n = A323228 n

end A323228

/-! ## A323228.P5331048933458102318

`record[A213551(n+1)+1-A213548(n+1)]`
-/

namespace A323228.P5331048933458102318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213551 (n + 1) + (1 - A213548 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323228.P5331048933458102318

namespace A323228

/-- `record[A213551(n+1)+1-A213548(n+1)]` -/
def P5331048933458102318.Spec : Prop :=
  ∀ n, P5331048933458102318.a n = A323228 n

end A323228

/-!
# A323229: a(n) = binomial(2*n, n+1) + 1.

The programs for A323229, the canonical program `A323229.P2576164808709639097` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323229 has offset 0).

The definition of A323229 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(2*n, n+1)+1` (program `A323229.P2576164808709639097`, by `A323229.P2576164808709639097.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A323229.P2576164808709639097

`C(2*n, n+1)+1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A323229

/-- `C(2*n, n+1)+1` -/
def P2576164808709639097.Spec : Prop :=
  ∀ n, (P2576164808709639097.a n : ℤ) = A323229 n

theorem P2576164808709639097.correct : P2576164808709639097.Spec := by
  intro n
  simp only [A323229]

end A323229

/-! ## A323229.P12587575129899363988

`A001791(n)+1`
-/

namespace A323229.P12587575129899363988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 n + 1

end

end A323229.P12587575129899363988

namespace A323229

/-- `A001791(n)+1` -/
def P12587575129899363988.Spec : Prop :=
  ∀ n, P12587575129899363988.a n = A323229 n

end A323229

/-! ## A323229.P3789825859358190048

`Δ[A279561(n)]+1`
-/

namespace A323229.P3789825859358190048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A323229.P3789825859358190048

namespace A323229

/-- `Δ[A279561(n)]+1` -/
def P3789825859358190048.Spec : Prop :=
  ∀ n, P3789825859358190048.a n = A323229 n

end A323229

/-! ## A323229.P6547491979259098275

`A037952(2*n)+1`
-/

namespace A323229.P6547491979259098275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (2 * n) + 1

end

end A323229.P6547491979259098275

namespace A323229

/-- `A037952(2*n)+1` -/
def P6547491979259098275.Spec : Prop :=
  ∀ n, P6547491979259098275.a n = A323229 n

end A323229

/-! ## A323229.P13980989732393304195

`A037955(2*n)+1`
-/

namespace A323229.P13980989732393304195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037955 (2 * n) + 1

end

end A323229.P13980989732393304195

namespace A323229

/-- `A037955(2*n)+1` -/
def P13980989732393304195.Spec : Prop :=
  ∀ n, P13980989732393304195.a n = A323229 n

end A323229

/-! ## A323229.P8446551037242594511

`1+n*A000108(n)`
-/

namespace A323229.P8446551037242594511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + (n : ℤ) * A000108 n

end

end A323229.P8446551037242594511

namespace A323229

/-- `1+n*A000108(n)` -/
def P8446551037242594511.Spec : Prop :=
  ∀ n, P8446551037242594511.a n = A323229 n

end A323229

/-! ## A323229.P13835648179897627565

`record[1-Δ[A089849(n)]]`
-/

namespace A323229.P13835648179897627565
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089849 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323229.P13835648179897627565

namespace A323229

/-- `record[1-Δ[A089849(n)]]` -/
def P13835648179897627565.Spec : Prop :=
  ∀ n, P13835648179897627565.a n = A323229 n

end A323229

/-! ## A323229.P7973167671816569258

`abs(n*A168491(n))+1`
-/

namespace A323229.P7973167671816569258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A168491 n| + 1

end

end A323229.P7973167671816569258

namespace A323229

/-- `abs(n*A168491(n))+1` -/
def P7973167671816569258.Spec : Prop :=
  ∀ n, P7973167671816569258.a n = A323229 n

end A323229

/-! ## A323229.P5461541525489170483

`n*Δ[A155587(n)]+1`
-/

namespace A323229.P5461541525489170483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n) + 1

end

end A323229.P5461541525489170483

namespace A323229

/-- `n*Δ[A155587(n)]+1` -/
def P5461541525489170483.Spec : Prop :=
  ∀ n, P5461541525489170483.a n = A323229 n

end A323229

/-! ## A323229.P14061002845835883879

`n*A120588(n+1)+1`
-/

namespace A323229.P14061002845835883879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A120588 (n + 1) + 1

end

end A323229.P14061002845835883879

namespace A323229

/-- `n*A120588(n+1)+1` -/
def P14061002845835883879.Spec : Prop :=
  ∀ n, P14061002845835883879.a n = A323229 n

end A323229

/-! ## A323229.P9850398274652194684

`1-n*A115140(n+1)`
-/

namespace A323229.P9850398274652194684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ) * A115140 (n + 1)

end

end A323229.P9850398274652194684

namespace A323229

/-- `1-n*A115140(n+1)` -/
def P9850398274652194684.Spec : Prop :=
  ∀ n, P9850398274652194684.a n = A323229 n

end A323229

/-! ## A323229.P10637054834839865671

`1-n*A115141(n+1)`
-/

namespace A323229.P10637054834839865671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ) * A115141 (n + 1)

end

end A323229.P10637054834839865671

namespace A323229

/-- `1-n*A115141(n+1)` -/
def P10637054834839865671.Spec : Prop :=
  ∀ n, P10637054834839865671.a n = A323229 n

end A323229

/-! ## A323229.P5163846153543203004

`1-n*A246432(n+1)`
-/

namespace A323229.P5163846153543203004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ) * A246432 (n + 1)

end

end A323229.P5163846153543203004

namespace A323229

/-- `1-n*A246432(n+1)` -/
def P5163846153543203004.Spec : Prop :=
  ∀ n, P5163846153543203004.a n = A323229 n

end A323229

/-! ## A323229.P7601911196116490277

`n*A028303(2*n)+1`
-/

namespace A323229.P7601911196116490277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A028303 (2 * n) + 1

end

end A323229.P7601911196116490277

namespace A323229

/-- `n*A028303(2*n)+1` -/
def P7601911196116490277.Spec : Prop :=
  ∀ n, P7601911196116490277.a n = A323229 n

end A323229

/-! ## A323229.P17913912039831916427

`n*A028304(2*n)+1`
-/

namespace A323229.P17913912039831916427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A028304 (2 * n) + 1

end

end A323229.P17913912039831916427

namespace A323229

/-- `n*A028304(2*n)+1` -/
def P17913912039831916427.Spec : Prop :=
  ∀ n, P17913912039831916427.a n = A323229 n

end A323229

/-! ## A323229.P4459684865252502134

`n*A057977(2*n)+1`
-/

namespace A323229.P4459684865252502134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A057977 (2 * n) + 1

end

end A323229.P4459684865252502134

namespace A323229

/-- `n*A057977(2*n)+1` -/
def P4459684865252502134.Spec : Prop :=
  ∀ n, P4459684865252502134.a n = A323229 n

end A323229

/-! ## A323229.P1355864949602216624

`n*A099363(2*n)+1`
-/

namespace A323229.P1355864949602216624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A099363 (2 * n) + 1

end

end A323229.P1355864949602216624

namespace A323229

/-- `n*A099363(2*n)+1` -/
def P1355864949602216624.Spec : Prop :=
  ∀ n, P1355864949602216624.a n = A323229 n

end A323229

/-! ## A323229.P11342321977283947233

`n*A126120(2*n)+1`
-/

namespace A323229.P11342321977283947233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A126120 (2 * n) + 1

end

end A323229.P11342321977283947233

namespace A323229

/-- `n*A126120(2*n)+1` -/
def P11342321977283947233.Spec : Prop :=
  ∀ n, P11342321977283947233.a n = A323229 n

end A323229

/-! ## A323229.P14922317722098817205

`n*A126324(2*n)+1`
-/

namespace A323229.P14922317722098817205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A126324 (2 * n) + 1

end

end A323229.P14922317722098817205

namespace A323229

/-- `n*A126324(2*n)+1` -/
def P14922317722098817205.Spec : Prop :=
  ∀ n, P14922317722098817205.a n = A323229 n

end A323229

/-! ## A323229.P6712045829224172969

`n*A208355(2*n)+1`
-/

namespace A323229.P6712045829224172969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A208355 (2 * n) + 1

end

end A323229.P6712045829224172969

namespace A323229

/-- `n*A208355(2*n)+1` -/
def P6712045829224172969.Spec : Prop :=
  ∀ n, P6712045829224172969.a n = A323229 n

end A323229

/-!
# A323230: a(n) = binomial(2*(n - 1), n - 1) + 1.

The programs for A323230, the canonical program `A323230.P7973305166393127570` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323230 has offset 0).

The definition of A323230 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A323230.P7973305166393127570

`((4*n-6)*a(n-1)-3*n+5)/(n-1)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A323230

/-- `((4*n-6)*a(n-1)-3*n+5)/(n-1)` -/
def P7973305166393127570.Spec : Prop :=
  ∀ n, P7973305166393127570.a n = (A323230 n : ℚ)

end A323230

/-! ## A323230.P4247210659082309565

`n*A120588(n)+1`
-/

namespace A323230.P4247210659082309565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A120588 n + 1

end

end A323230.P4247210659082309565

namespace A323230

/-- `n*A120588(n)+1` -/
def P4247210659082309565.Spec : Prop :=
  ∀ n, P4247210659082309565.a n = A323230 n

end A323230

/-! ## A323230.P13920920957727191982

`1-n*A115140(n)`
-/

namespace A323230.P13920920957727191982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ) * A115140 n

end

end A323230.P13920920957727191982

namespace A323230

/-- `1-n*A115140(n)` -/
def P13920920957727191982.Spec : Prop :=
  ∀ n, P13920920957727191982.a n = A323230 n

end A323230

/-! ## A323230.P16079855381268489498

`record[A126869(A004442(n))+1]`
-/

namespace A323230.P16079855381268489498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (A004442 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323230.P16079855381268489498

namespace A323230

/-- `record[A126869(A004442(n))+1]` -/
def P16079855381268489498.Spec : Prop :=
  ∀ n, P16079855381268489498.a n = A323230 n

end A323230

/-! ## A323230.P5146837326971946335

`record[A126869(A165754(n))+1]`
-/

namespace A323230.P5146837326971946335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (A165754 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323230.P5146837326971946335

namespace A323230

/-- `record[A126869(A165754(n))+1]` -/
def P5146837326971946335.Spec : Prop :=
  ∀ n, P5146837326971946335.a n = A323230 n

end A323230

/-! ## A323230.P8545007334802881965

`A028270(n)+1-A000984(n)`
-/

namespace A323230.P8545007334802881965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028270 n + (1 - A000984 n)

end

end A323230.P8545007334802881965

namespace A323230

/-- `A028270(n)+1-A000984(n)` -/
def P8545007334802881965.Spec : Prop :=
  ∀ n, P8545007334802881965.a n = A323230 n

end A323230

/-! ## A323230.P14273607406138715390

`A323211(∑[4*n])`
-/

namespace A323230.P14273607406138715390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323211 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A323230.P14273607406138715390

namespace A323230

/-- `A323211(∑[4*n])` -/
def P14273607406138715390.Spec : Prop :=
  ∀ n, P14273607406138715390.a n = A323230 n

end A323230

/-! ## A323230.P4078360257219963966

`A323231(∑[4*n])`
-/

namespace A323230.P4078360257219963966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323231 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A323230.P4078360257219963966

namespace A323230

/-- `A323231(∑[4*n])` -/
def P4078360257219963966.Spec : Prop :=
  ∀ n, P4078360257219963966.a n = A323230 n

end A323230

/-!
# A323231: A(n, k) = [x^k] (1/(1-x) + x/(1-x)^n), square array read by descending antidiagonals for n, k >= 0.

The programs for A323231, the canonical program `A323231.P6944103331787896278` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323231 has offset 0).

The definition of A323231 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A323231.P6944103331787896278

`a(n-1)-A113313(n)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A323231

/-- `a(n-1)-A113313(n)` -/
def P6944103331787896278.Spec : Prop :=
  ∀ n, P6944103331787896278.a n = A323231 n

theorem P6944103331787896278.correct : P6944103331787896278.Spec := by
  intro n
  simp only [A323231]

end A323231

/-! ## A323231.P490218026804271844

`A323211(n)+A063524(n)`
-/

namespace A323231.P490218026804271844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323211 n + A063524 n

end

end A323231.P490218026804271844

namespace A323231

/-- `A323211(n)+A063524(n)` -/
def P490218026804271844.Spec : Prop :=
  ∀ n, P490218026804271844.a n = A323231 n

end A323231

/-! ## A323231.P11141980752718686043

`A323211(n)-A159075(n)`
-/

namespace A323231.P11141980752718686043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323211 n - A159075 n

end

end A323231.P11141980752718686043

namespace A323231

/-- `A323211(n)-A159075(n)` -/
def P11141980752718686043.Spec : Prop :=
  ∀ n, P11141980752718686043.a n = A323231 n

end A323231

/-! ## A323231.P2528782558554109788

`A323211(n)*A373565(n)`
-/

namespace A323231.P2528782558554109788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323211 n * A373565 n

end

end A323231.P2528782558554109788

namespace A323231

/-- `A323211(n)*A373565(n)` -/
def P2528782558554109788.Spec : Prop :=
  ∀ n, P2528782558554109788.a n = A323231 n

end A323231

/-! ## A323231.P5267673473390111407

`A097805(n)+1-A159854(n)`
-/

namespace A323231.P5267673473390111407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n + (1 - A159854 n)

end

end A323231.P5267673473390111407

namespace A323231

/-- `A097805(n)+1-A159854(n)` -/
def P5267673473390111407.Spec : Prop :=
  ∀ n, P5267673473390111407.a n = A323231 n

end A323231

/-! ## A323231.P6345063024582307639

`lcm(A042974(n+1), A323211(n))`
-/

namespace A323231.P6345063024582307639
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A042974 (n + 1)) (A323211 n)

end

end A323231.P6345063024582307639

namespace A323231

/-- `lcm(A042974(n+1), A323211(n))` -/
def P6345063024582307639.Spec : Prop :=
  ∀ n, (P6345063024582307639.a n : ℤ) = A323231 n

end A323231

/-! ## A323231.P9350964071621536043

`char[1]+A028262(n)-A014473(n)`
-/

namespace A323231.P9350964071621536043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A028262 n - A014473 n)

end

end A323231.P9350964071621536043

namespace A323231

/-- `char[1]+A028262(n)-A014473(n)` -/
def P9350964071621536043.Spec : Prop :=
  ∀ n, P9350964071621536043.a n = A323231 n

end A323231

/-! ## A323231.P17106323331001711974

`A131084(n+1)+1-A097805(n)`
-/

namespace A323231.P17106323331001711974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131084 (n + 1) + (1 - A097805 n)

end

end A323231.P17106323331001711974

namespace A323231

/-- `A131084(n+1)+1-A097805(n)` -/
def P17106323331001711974.Spec : Prop :=
  ∀ n, P17106323331001711974.a n = A323231 n

end A323231

/-! ## A323231.P9505368256804233935

`A097805(A083920(n))-A008482(A057944(n))`
-/

namespace A323231.P9505368256804233935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A083920 n).toNat - A008482 (A057944 n).toNat

end

end A323231.P9505368256804233935

namespace A323231

/-- `A097805(A083920(n))-A008482(A057944(n))` -/
def P9505368256804233935.Spec : Prop :=
  ∀ n, P9505368256804233935.a n = A323231 n

end A323231

/-! ## A323231.P5393782005688424654

`ceil(A159854(n+1)+acot(n))`
-/

namespace A323231.P5393782005688424654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A159854 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌉

end

end A323231.P5393782005688424654

namespace A323231

/-- `ceil(A159854(n+1)+acot(n))` -/
def P5393782005688424654.Spec : Prop :=
  ∀ n, P5393782005688424654.a n = A323231 n

end A323231

/-! ## A323231.P7050955917626448835

`A159854(n+1)+A054977(n)`
-/

namespace A323231.P7050955917626448835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159854 (n + 1) + A054977 n

end

end A323231.P7050955917626448835

namespace A323231

/-- `A159854(n+1)+A054977(n)` -/
def P7050955917626448835.Spec : Prop :=
  ∀ n, P7050955917626448835.a n = A323231 n

end A323231

/-! ## A323231.P4009802904701945403

`A000007(n)+A159854(n+1)+1`
-/

namespace A323231.P4009802904701945403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A159854 (n + 1) + 1)

end

end A323231.P4009802904701945403

namespace A323231

/-- `A000007(n)+A159854(n+1)+1` -/
def P4009802904701945403.Spec : Prop :=
  ∀ n, P4009802904701945403.a n = A323231 n

end A323231

/-! ## A323231.P7113146860646476080

`A159854(n+1)+A141044(n+1)`
-/

namespace A323231.P7113146860646476080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159854 (n + 1) + A141044 (n + 1)

end

end A323231.P7113146860646476080

namespace A323231

/-- `A159854(n+1)+A141044(n+1)` -/
def P7113146860646476080.Spec : Prop :=
  ∀ n, P7113146860646476080.a n = A323231 n

end A323231

/-! ## A323231.P4885935366349813533

`A057428(n)+A159854(n+1)+2`
-/

namespace A323231.P4885935366349813533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + (A159854 (n + 1) + 2)

end

end A323231.P4885935366349813533

namespace A323231

/-- `A057428(n)+A159854(n+1)+2` -/
def P4885935366349813533.Spec : Prop :=
  ∀ n, P4885935366349813533.a n = A323231 n

end A323231

/-! ## A323231.P3042730663616252590

`A057427(n)*A159854(n+1)+1`
-/

namespace A323231.P3042730663616252590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A159854 (n + 1) + 1

end

end A323231.P3042730663616252590

namespace A323231

/-- `A057427(n)*A159854(n+1)+1` -/
def P3042730663616252590.Spec : Prop :=
  ∀ n, P3042730663616252590.a n = A323231 n

end A323231

/-! ## A323231.P16361430042840296801

`A072405(n+1)+1-A071919(n+1)`
-/

namespace A323231.P16361430042840296801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072405 (n + 1) + (1 - A071919 (n + 1))

end

end A323231.P16361430042840296801

namespace A323231

/-- `A072405(n+1)+1-A071919(n+1)` -/
def P16361430042840296801.Spec : Prop :=
  ∀ n, P16361430042840296801.a n = A323231 n

end A323231

/-! ## A323231.P16603758661326790033

`A159854(A057427(n)+n)+A057427(n)`
-/

namespace A323231.P16603758661326790033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159854 (A057427 n + (n : ℤ)).toNat + A057427 n

end

end A323231.P16603758661326790033

namespace A323231

/-- `A159854(A057427(n)+n)+A057427(n)` -/
def P16603758661326790033.Spec : Prop :=
  ∀ n, P16603758661326790033.a n = A323231 n

end A323231

/-! ## A323231.P8525703094405041991

`A159854(n-A057428(n))-A057428(n)`
-/

namespace A323231.P8525703094405041991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159854 ((n : ℤ) - A057428 n).toNat - A057428 n

end

end A323231.P8525703094405041991

namespace A323231

/-- `A159854(n-A057428(n))-A057428(n)` -/
def P8525703094405041991.Spec : Prop :=
  ∀ n, P8525703094405041991.a n = A323231 n

end A323231

/-!
# A323232: a(n) = 2^n*J(n, 1/2) where J(n, x) are the Jacobsthal polynomials as defined in A322942.

The programs for A323232, the canonical program `A323232.P6384654947787226481` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323232 has offset 0).

The definition of A323232 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A323232.P6384654947787226481

`3*a(n-1)+8*a(n-2)` with `a(0)=1, a(1)=3, a(2)=9`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A323232

/-- `3*a(n-1)+8*a(n-2)` -/
def P6384654947787226481.Spec : Prop :=
  ∀ n, (P6384654947787226481.a n : ℤ) = A323232 n

theorem P6384654947787226481.correct : P6384654947787226481.Spec := by
  intro n
  simp only [A323232]

end A323232

/-! ## A323232.P1704281330290887168

`ogf((-1+8x^2)/(-1+3x+8x^2))`
-/

namespace A323232.P1704281330290887168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -8] [1, -3, -8] n

end

end A323232.P1704281330290887168

namespace A323232

/-- `ogf((-1+8x^2)/(-1+3x+8x^2))` -/
def P1704281330290887168.Spec : Prop :=
  ∀ n, P1704281330290887168.a n = A323232 n

end A323232

/-! ## A323232.P3139956586767438234

`or(1, 3*A015525(n))`
-/

namespace A323232.P3139956586767438234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (3 * A015525 n)

end

end A323232.P3139956586767438234

namespace A323232

/-- `or(1, 3*A015525(n))` -/
def P3139956586767438234.Spec : Prop :=
  ∀ n, P3139956586767438234.a n = A323232 n

end A323232

/-! ## A323232.P14202464121119158811

`A000007(n)+3*A015525(n)`
-/

namespace A323232.P14202464121119158811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 3 * A015525 n

end

end A323232.P14202464121119158811

namespace A323232

/-- `A000007(n)+3*A015525(n)` -/
def P14202464121119158811.Spec : Prop :=
  ∀ n, P14202464121119158811.a n = A323232 n

end A323232

/-! ## A323232.P287316743881940967

`char[A123867(n+1)]+3*A015525(n)`
-/

namespace A323232.P287316743881940967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123867 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + 3 * A015525 n

end

end A323232.P287316743881940967

namespace A323232

/-- `char[A123867(n+1)]+3*A015525(n)` -/
def P287316743881940967.Spec : Prop :=
  ∀ n, P287316743881940967.a n = A323232 n

end A323232

/-! ## A323232.P14268641944386708161

`3*A015525(n)+A004277(n)-2*n`
-/

namespace A323232.P14268641944386708161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A015525 n + (A004277 n - (2 * n : ℤ))

end

end A323232.P14268641944386708161

namespace A323232

/-- `3*A015525(n)+A004277(n)-2*n` -/
def P14268641944386708161.Spec : Prop :=
  ∀ n, P14268641944386708161.a n = A323232 n

end A323232

/-! ## A323232.P88599100913595871

`A015525(A028310(n))+2*A015525(n)`
-/

namespace A323232.P88599100913595871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015525 (A028310 n).toNat + 2 * A015525 n

end

end A323232.P88599100913595871

namespace A323232

/-- `A015525(A028310(n))+2*A015525(n)` -/
def P88599100913595871.Spec : Prop :=
  ∀ n, P88599100913595871.a n = A323232 n

end A323232

/-!
# A323234: Lexicographically earliest sequence such that a(i) = a(j) => f(i) = f(j), where f(1) = 0, and for n > 1, f(n) = ordered pair [A053645(n), A079944(n-2)], where A053645(n) gives n without its most significant bit, while A079944(n-2) gives the second most significant bit of n.

The programs for A323234, there is no canonical definition to state claims against.
-/

/-! ## A323234.P16322582789798725379

`A323236(2*n+3)-2`
-/

namespace A323234.P16322582789798725379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323236 (2 * n + 3) - 2

end

end A323234.P16322582789798725379

/-! ## A323234.P13225532093389960001

`(A323236(2*n+3)+Δ[A027691(n)])%(n+2)`
-/

namespace A323234.P13225532093389960001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323236 (2 * n + 3) + (f1 (n + 1) - f1 n)) (n + 2 : ℤ)

end

end A323234.P13225532093389960001

/-! ## A323234.P1716031747872479021

`A324343(n+1)/A174965(A023493(n))`
-/

namespace A323234.P1716031747872479021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324343 (n + 1) : ℚ) / (A174965 (A023493 n).toNat : ℚ)

end

end A323234.P1716031747872479021

/-! ## A323234.P7587289997377015364

`A324343(n+1)-A156659(A098931(n+1))`
-/

namespace A323234.P7587289997377015364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324343 (n + 1) - A156659 (A098931 (n + 1)).toNat

end

end A323234.P7587289997377015364

/-! ## A323234.P10573641714738329396

`A324343(n+1)-A209229(A335448(3*n+4))`
-/

namespace A323234.P10573641714738329396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324343 (n + 1) - A209229 (A335448 (3 * n + 4)).toNat

end

end A323234.P10573641714738329396

/-!
# A323235: Lexicographically earliest sequence such that a(i) = a(j) => f(i) = f(j), where f(1) = 0, f(n) = -1 if n is an odd number > 1, and f(n) = A323234(n) for even numbers >= 4.

The programs for A323235, there is no canonical definition to state claims against.
-/

/-! ## A323235.P9980735379632989016

`A332826(A332827(n+1)+A181502(∑[n]))`
-/

namespace A323235.P9980735379632989016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332826 (A332827 (n + 1) + A181502 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A323235.P9980735379632989016

/-! ## A323235.P16913102495848694801

`A332826(A332827(n+1)%A332795(n+2))`
-/

namespace A323235.P16913102495848694801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332826 (Int.tmod (A332827 (n + 1)) (A332795 (n + 2))).toNat

end

end A323235.P16913102495848694801

/-! ## A323235.P17866266857197727130

`A332826(A332827(n+1))%A000005(2^(n+1))`
-/

namespace A323235.P17866266857197727130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332826 (A332827 (n + 1)).toNat) (A000005 (2 ^ (n + 1)))

end

end A323235.P17866266857197727130

/-! ## A323235.P17390346934994970729

`A332826(A332827(n+1))%A000203(A007283(n))`
-/

namespace A323235.P17390346934994970729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332826 (A332827 (n + 1)).toNat) (A000203 (A007283 n).toNat)

end

end A323235.P17390346934994970729

/-! ## A323235.P16366887273619707257

`A014963(A019500(n))*A332826(A332827(n+1))`
-/

namespace A323235.P16366887273619707257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A019500 n).toNat * A332826 (A332827 (n + 1)).toNat

end

end A323235.P16366887273619707257

/-!
# A323236: Lexicographically earliest sequence such that a(i) = a(j) => f(i) = f(j), where f(1) = 0, f(n) = -1 if n is an even number > 2, and f(n) = A323234(n) for odd numbers >= 3.

The programs for A323236, there is no canonical definition to state claims against.
-/

/-! ## A323236.P16454076763310522101

`A293607(A008287(n))+A289508(n+1)`
-/

namespace A323236.P16454076763310522101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293607 (A008287 n).toNat + A289508 (n + 1)

end

end A323236.P16454076763310522101

/-! ## A323236.P1687544445296994341

`A360005(2*(n+1))-A289741(2^n)`
-/

namespace A323236.P1687544445296994341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360005 (2 * (n + 1)) - A289741 (2 ^ n)

end

end A323236.P1687544445296994341

/-! ## A323236.P5726670094009158847

`(A094741(n+1)+1)%A345115(2*n)`
-/

namespace A323236.P5726670094009158847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094741 (n + 1) + 1) (A345115 (2 * n))

end

end A323236.P5726670094009158847

/-! ## A323236.P4301656921862748505

`A083888(A006851(n))+A055396(n+1)`
-/

namespace A323236.P4301656921862748505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083888 (A006851 n).toNat + A055396 (n + 1)

end

end A323236.P4301656921862748505

/-! ## A323236.P352606080129635334

`A094741(n+1)+A057427(A000079(n))`
-/

namespace A323236.P352606080129635334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094741 (n + 1) + A057427 (A000079 n).toNat

end

end A323236.P352606080129635334

/-!
# A323237: Lexicographically earliest sequence such that for all i, j, a(i) = a(j) => f(i) = f(j), where f(n) = A291756(n) for all n, except f(1) = -1 and for odd numbers n > 1, f(n) = 0.

The programs for A323237, there is no canonical definition to state claims against.
-/

/-! ## A323237.P17223051774660820977

`A323368((n+1-floor(lcm(n+1, n-1)/(n+2)))%A114315(n+1))`
-/

namespace A323237.P17223051774660820977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323368 (Int.tmod ((n + 1 : ℤ) - ⌊(Int.lcm (n + 1 : ℤ) ((n : ℤ) - 1) : ℚ) / (n + 2 : ℚ)⌋) (A114315 (n + 1))).toNat

end

end A323237.P17223051774660820977

/-! ## A323237.P13959374128004594999

`A323368(A323238(n+1)%A110798(n))`
-/

namespace A323237.P13959374128004594999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323368 (Int.tmod (A323238 (n + 1)) (A110798 n)).toNat

end

end A323237.P13959374128004594999

/-! ## A323237.P10171864370032978375

`A323368(A323238(n+1))%A107922(n+1)`
-/

namespace A323237.P10171864370032978375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323368 (A323238 (n + 1)).toNat) (A107922 (n + 1))

end

end A323237.P10171864370032978375

/-! ## A323237.P7558479620490100195

`A323368(A319701(n+1)%A163653(n+1))`
-/

namespace A323237.P7558479620490100195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323368 (Int.tmod (A319701 (n + 1)) (A163653 (n + 1))).toNat

end

end A323237.P7558479620490100195

/-! ## A323237.P12832371639170051987

`A323368(A319701(n+1))%A216524(n+1)`
-/

namespace A323237.P12832371639170051987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323368 (A319701 (n + 1)).toNat) (A216524 (n + 1))

end

end A323237.P12832371639170051987

/-!
# A323238: Lexicographically earliest sequence such that for all i, j, a(i) = a(j) => f(i) = f(j), where f(n) = A291750(n) for all n, except for odd numbers n > 1, f(n) = 0.

The programs for A323238, there is no canonical definition to state claims against.
-/

/-! ## A323238.P16341686846749660469

`A323368(A152271(n))+A130130(n)`
-/

namespace A323238.P16341686846749660469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323368 (A152271 n).toNat + A130130 n

end

end A323238.P16341686846749660469

/-! ## A323238.P422326972903651538

`A323368(A110654(n^(n%2)))+A130130(n)`
-/

namespace A323238.P422326972903651538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323368 (A110654 (n ^ (n % 2))).toNat + A130130 n

end

end A323238.P422326972903651538

/-!
# A323239: a(n) = 1 if n is odd and squarefree, otherwise a(n) = 0.

The programs for A323239, the canonical program `A323239.P16564446151600433291` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323239 has offset 0).

The definition of A323239 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A323239.P10109948257323566194

`char[∏{p}[Δ[n²], #]]`
-/

namespace A323239.P10109948257323566194
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A323239.P10109948257323566194

namespace A323239

/-- `char[∏{p}[Δ[n²], #]]` -/
def P10109948257323566194.Spec : Prop :=
  ∀ n, (P10109948257323566194.a n : ℤ) = A323239 n

end A323239

/-! ## A323239.P16564446151600433291

`C(n%2, ∏{e}[n, #])`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A323239

/-- `C(n%2, ∏{e}[n, #])` -/
def P16564446151600433291.Spec : Prop :=
  ∀ n, (P16564446151600433291.a n : ℤ) = A323239 n

theorem P16564446151600433291.correct : P16564446151600433291.Spec := by
  intro n
  simp only [A323239]

end A323239

/-! ## A323239.P12608018536845421479

`and(1, n*∏{e}[n, #!])`
-/

namespace A323239.P12608018536845421479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n * (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.factorization (f1 n) p)))

end

end A323239.P12608018536845421479

namespace A323239

/-- `and(1, n*∏{e}[n, #!])` -/
def P12608018536845421479.Spec : Prop :=
  ∀ n, (P12608018536845421479.a n : ℤ) = A323239 n

end A323239

/-! ## A323239.P16758436821178546826

`char[record[∏{p}[comp[2*n], #]]]`
-/

namespace A323239.P16758436821178546826
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A323239.P16758436821178546826

namespace A323239

/-- `char[record[∏{p}[comp[2*n], #]]]` -/
def P16758436821178546826.Spec : Prop :=
  ∀ n, (P16758436821178546826.a n : ℤ) = A323239 n

end A323239

/-! ## A323239.P1499767866716918594

`char[abs(∏{p}[2*n+1, -#])]`
-/

namespace A323239.P1499767866716918594
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ p ∈ Nat.primeFactors (f2 n), (-(p : ℤ))|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A323239.P1499767866716918594

namespace A323239

/-- `char[abs(∏{p}[2*n+1, -#])]` -/
def P1499767866716918594.Spec : Prop :=
  ∀ n, (P1499767866716918594.a n : ℤ) = A323239 n

end A323239

/-! ## A323239.P351507751329478922

`ceil(sin(char[∏{p}[2*n+1, #]]))`
-/

namespace A323239.P351507751329478922
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌉

end

end A323239.P351507751329478922

namespace A323239

/-- `ceil(sin(char[∏{p}[2*n+1, #]]))` -/
def P351507751329478922.Spec : Prop :=
  ∀ n, P351507751329478922.a n = A323239 n

end A323239

/-! ## A323239.P1564559754290377169

`floor(tan(char[∏{p}[2*n+1, #]]))`
-/

namespace A323239.P1564559754290377169
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌋

end

end A323239.P1564559754290377169

namespace A323239

/-- `floor(tan(char[∏{p}[2*n+1, #]]))` -/
def P1564559754290377169.Spec : Prop :=
  ∀ n, P1564559754290377169.a n = A323239 n

end A323239

/-! ## A323239.P4831220888801684635

`round(sin(char[∏{p}[2*n+1, #]]))`
-/

namespace A323239.P4831220888801684635
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))

end

end A323239.P4831220888801684635

namespace A323239

/-- `round(sin(char[∏{p}[2*n+1, #]]))` -/
def P4831220888801684635.Spec : Prop :=
  ∀ n, P4831220888801684635.a n = A323239 n

end A323239

/-! ## A323239.P13451978363210424199

`floor(asin(char[∏{p}[2*n+1, #]]))`
-/

namespace A323239.P13451978363210424199
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arcsin ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌋

end

end A323239.P13451978363210424199

namespace A323239

/-- `floor(asin(char[∏{p}[2*n+1, #]]))` -/
def P13451978363210424199.Spec : Prop :=
  ∀ n, P13451978363210424199.a n = A323239 n

end A323239

/-! ## A323239.P9841974912381508777

`ceil(atan(char[∏{p}[2*n+1, #]]))`
-/

namespace A323239.P9841974912381508777
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌉

end

end A323239.P9841974912381508777

namespace A323239

/-- `ceil(atan(char[∏{p}[2*n+1, #]]))` -/
def P9841974912381508777.Spec : Prop :=
  ∀ n, P9841974912381508777.a n = A323239 n

end A323239

/-! ## A323239.P1122489567313114939

`val((n+1)², ∏{p}[n, #]+n+2)`
-/

namespace A323239.P1122489567313114939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((n + 1) ^ 2) (∏ p ∈ Nat.primeFactors (f1 n), p + (n + 2))

end

end A323239.P1122489567313114939

namespace A323239

/-- `val((n+1)², ∏{p}[n, #]+n+2)` -/
def P1122489567313114939.Spec : Prop :=
  ∀ n, (P1122489567313114939.a n : ℤ) = A323239 n

end A323239

/-! ## A323239.P17958236314693452477

`val(∑[n+1], ∏{e}[n, #]+n+1)`
-/

namespace A323239.P17958236314693452477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + (n + 1))

end

end A323239.P17958236314693452477

namespace A323239

/-- `val(∑[n+1], ∏{e}[n, #]+n+1)` -/
def P17958236314693452477.Spec : Prop :=
  ∀ n, (P17958236314693452477.a n : ℤ) = A323239 n

end A323239

/-! ## A323239.P10501113014065931567

`∑{d}[n, A359548(#)]`
-/

namespace A323239.P10501113014065931567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A359548 d

end

end A323239.P10501113014065931567

namespace A323239

/-- `∑{d}[n, A359548(#)]` -/
def P10501113014065931567.Spec : Prop :=
  ∀ n, P10501113014065931567.a n = A323239 n

end A323239

/-! ## A323239.P11887135890868910367

`char[record[A364900(n)]]`
-/

namespace A323239.P11887135890868910367
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364900 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A323239.P11887135890868910367

namespace A323239

/-- `char[record[A364900(n)]]` -/
def P11887135890868910367.Spec : Prop :=
  ∀ n, (P11887135890868910367.a n : ℤ) = A323239 n

end A323239

/-! ## A323239.P7992617867245459881

`char[A056911(n+1)]`
-/

namespace A323239.P7992617867245459881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A323239.P7992617867245459881

namespace A323239

/-- `char[A056911(n+1)]` -/
def P7992617867245459881.Spec : Prop :=
  ∀ n, (P7992617867245459881.a n : ℤ) = A323239 n

end A323239

/-! ## A323239.P16281515658779139178

`char[eq[2*n, ∏{p}[2*n, #]]]`
-/

namespace A323239.P16281515658779139178
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f4 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A323239.P16281515658779139178

namespace A323239

/-- `char[eq[2*n, ∏{p}[2*n, #]]]` -/
def P16281515658779139178.Spec : Prop :=
  ∀ n, (P16281515658779139178.a n : ℤ) = A323239 n

end A323239

/-! ## A323239.P5589988213185405167

`and(n, char[∏{p}[n, #]])`
-/

namespace A323239.P5589988213185405167
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (if ∃ j, f1 j = n then 1 else 0)

end

end A323239.P5589988213185405167

namespace A323239

/-- `and(n, char[∏{p}[n, #]])` -/
def P5589988213185405167.Spec : Prop :=
  ∀ n, (P5589988213185405167.a n : ℤ) = A323239 n

end A323239

/-!
# A323240: Lexicographically earliest sequence such that for all i, j, a(i) = a(j) => f(i) = f(j), where f(n) = [A001222(n), A323244(n)] for n > 1, and f(1) = 0.

The programs for A323240, there is no canonical definition to state claims against.
-/

/-! ## A323240.P10371397329169954277

`A300229(n+1)%A212173(A027620(n))`
-/

namespace A323240.P10371397329169954277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300229 (n + 1)) (A212173 (A027620 n).toNat)

end

end A323240.P10371397329169954277

/-! ## A323240.P8395233563023461745

`A278061(A300833(n+1)%A270613(2*(n+1)))`
-/

namespace A323240.P8395233563023461745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278061 (Int.tmod (A300833 (n + 1)) (A270613 (2 * (n + 1)))).toNat

end

end A323240.P8395233563023461745

/-! ## A323240.P1403541659592891577

`A278061(A300833(n+1))%A086888(2*(n+1))`
-/

namespace A323240.P1403541659592891577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278061 (A300833 (n + 1)).toNat) (A086888 (2 * (n + 1)))

end

end A323240.P1403541659592891577

/-! ## A323240.P10604433576860428921

`A290106(A167569(n+1))*A323245(n+1)`
-/

namespace A323240.P10604433576860428921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290106 (A167569 (n + 1)).toNat * A323245 (n + 1)

end

end A323240.P10604433576860428921

/-!
# A323241: Lexicographically earliest sequence such that a(i) = a(j) => f(i) = f(j) for all i, j, where f(n<=2) = -n, f(n) = 0 if n is an odd number > 1, and f(n) = A300226(n) for even numbers >= 4.

The programs for A323241, there is no canonical definition to state claims against.
-/

/-! ## A323241.P2169924746206565769

`A111982(n)+A001221(A000079(n))`
-/

namespace A323241.P2169924746206565769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111982 n + A001221 (A000079 n).toNat

end

end A323241.P2169924746206565769

/-! ## A323241.P5233138267975568929

`A111982(n)+A001221(A056450(n))`
-/

namespace A323241.P5233138267975568929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111982 n + A001221 (A056450 n).toNat

end

end A323241.P5233138267975568929

/-! ## A323241.P4502395442008695687

`A111982(n)+A001222(A130141(n))`
-/

namespace A323241.P4502395442008695687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111982 n + A001222 (A130141 n).toNat

end

end A323241.P4502395442008695687

/-! ## A323241.P13281800018932851254

`xor(A001221(A056450(n)), A127750(n))`
-/

namespace A323241.P13281800018932851254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001221 (A056450 n).toNat) (A127750 n)

end

end A323241.P13281800018932851254

/-! ## A323241.P17984357018214939648

`xor(A001222(A130141(n)), A127750(n))`
-/

namespace A323241.P17984357018214939648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001222 (A130141 n).toNat) (A127750 n)

end

end A323241.P17984357018214939648

/-!
# A323242: Lexicographically earliest sequence such that a(i) = a(j) => f(i) = f(j) for all i, j, where f(n<=2) = -n, f(n) = 0 if n is an even number > 2, and f(n) = A300226(n) for odd numbers >= 3.

The programs for A323242, there is no canonical definition to state claims against.
-/

/-! ## A323242.P7426182479639682487

`A326202(A325382(n+1)/A015161(n)!)+A066247(n+1)`
-/

namespace A323242.P7426182479639682487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326202 (SequenceMachineLib.roundAway ((A325382 (n + 1) : ℚ) / (Nat.factorial (A015161 n).toNat : ℚ))).toNat + A066247 (n + 1)

end

end A323242.P7426182479639682487

/-!
# A323243: a(1) = 0; for n > 1, a(n) = A000203(A156552(n)).

The programs for A323243, there is no canonical definition to state claims against.
-/

/-! ## A323243.P10932478043356516272

`A323247(n+1)-A323248(n+1)`
-/

namespace A323243.P10932478043356516272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323247 (n + 1) - A323248 (n + 1)

end

end A323243.P10932478043356516272

/-! ## A323243.P17875830120606834388

`2*A156552(n+1)-A323244(n+1)`
-/

namespace A323243.P17875830120606834388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A156552 (n + 1) - A323244 (n + 1)

end

end A323243.P17875830120606834388

/-! ## A323243.P10277691776066470968

`∑{d}[n+1, A324543(#)]`
-/

namespace A323243.P10277691776066470968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A324543 d

end

end A323243.P10277691776066470968

/-! ## A323243.P10792590716102650391

`A324865(n+1)+A156552(n+1)`
-/

namespace A323243.P10792590716102650391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324865 (n + 1) + A156552 (n + 1)

end

end A323243.P10792590716102650391

/-! ## A323243.P15284867969991163136

`A324866(n+1)+A324398(n+1)`
-/

namespace A323243.P15284867969991163136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324866 (n + 1) + A324398 (n + 1)

end

end A323243.P15284867969991163136

/-! ## A323243.P7222726854349424516

`A005941(n+1)+A324865(n+1)-1`
-/

namespace A323243.P7222726854349424516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005941 (n + 1) + (A324865 (n + 1) - 1)

end

end A323243.P7222726854349424516

/-! ## A323243.P15319245121897199162

`A323244(n+1)+2*A324865(n+1)`
-/

namespace A323243.P15319245121897199162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323244 (n + 1) + 2 * A324865 (n + 1)

end

end A323243.P15319245121897199162

/-! ## A323243.P897296190842733197

`A324867(n+1)+2*A324398(n+1)`
-/

namespace A323243.P897296190842733197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324867 (n + 1) + 2 * A324398 (n + 1)

end

end A323243.P897296190842733197

/-! ## A323243.P8075115348762690732

`A048675(n+1)+A324865(n+1)+A323905(n+1)`
-/

namespace A323243.P8075115348762690732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (n + 1) + (A324865 (n + 1) + A323905 (n + 1))

end

end A323243.P8075115348762690732

/-! ## A323243.P12191026264675001305

`A324866(n+1)+A324866(n+1)-A324867(n+1)`
-/

namespace A323243.P12191026264675001305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324866 (n + 1) + (A324866 (n + 1) - A324867 (n + 1))

end

end A323243.P12191026264675001305

/-! ## A323243.P17896587476944388303

`A156552(n+1)+xor(A156552(n+1), A324867(n+1))`
-/

namespace A323243.P17896587476944388303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (n + 1) + Int.xor (A156552 (n + 1)) (A324867 (n + 1))

end

end A323243.P17896587476944388303

/-! ## A323243.P1754275834208213576

`A324865(n+1)+xor(A324865(n+1), A324867(n+1))`
-/

namespace A323243.P1754275834208213576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324865 (n + 1) + Int.xor (A324865 (n + 1)) (A324867 (n + 1))

end

end A323243.P1754275834208213576

/-! ## A323243.P16906801812474113496

`A324819(n+1)-A324716(n+1)`
-/

namespace A323243.P16906801812474113496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324819 (n + 1) - A324716 (n + 1)

end

end A323243.P16906801812474113496

/-! ## A323243.P15475159438531534267

`2*A324866(n+1)-A324867(n+1)`
-/

namespace A323243.P15475159438531534267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A324866 (n + 1) - A324867 (n + 1)

end

end A323243.P15475159438531534267

/-! ## A323243.P15896572752742627396

`A292380(n+1)+A324865(n+1)+A292382(n+1)`
-/

namespace A323243.P15896572752742627396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292380 (n + 1) + (A324865 (n + 1) + A292382 (n + 1))

end

end A323243.P15896572752742627396

/-! ## A323243.P4015498520909722987

`A324865(n+1)+A252754(A250245(n+1))`
-/

namespace A323243.P4015498520909722987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324865 (n + 1) + A252754 (A250245 (n + 1)).toNat

end

end A323243.P4015498520909722987

/-! ## A323243.P4957543334050128149

`A324865(n+1)+A269388(A302025(n+1))`
-/

namespace A323243.P4957543334050128149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324865 (n + 1) + A269388 (A302025 (n + 1)).toNat

end

end A323243.P4957543334050128149

/-!
# A323244: a(1) = 0; and for n > 1, a(n) = A033879(A156552(n)).

The programs for A323244, there is no canonical definition to state claims against.
-/

/-! ## A323244.P10269337476929849979

`A323248(n+1)+A001222(n+1)`
-/

namespace A323244.P10269337476929849979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323248 (n + 1) + A001222 (n + 1)

end

end A323244.P10269337476929849979

/-! ## A323244.P4842829116488636186

`A329638(n+1)-A329639(n+1)`
-/

namespace A323244.P4842829116488636186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329638 (n + 1) - A329639 (n + 1)

end

end A323244.P4842829116488636186

/-! ## A323244.P8201779876391696885

`A329645(n+1)-A329646(n+1)`
-/

namespace A323244.P8201779876391696885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329645 (n + 1) - A329646 (n + 1)

end

end A323244.P8201779876391696885

/-! ## A323244.P9468111574085059744

`2*A156552(n+1)-A323243(n+1)`
-/

namespace A323244.P9468111574085059744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A156552 (n + 1) - A323243 (n + 1)

end

end A323244.P9468111574085059744

/-! ## A323244.P8040171107703471069

`A323247(n+1)-A323243(n+1)+A001222(n+1)`
-/

namespace A323244.P8040171107703471069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323247 (n + 1) - A323243 (n + 1) + A001222 (n + 1)

end

end A323244.P8040171107703471069

/-! ## A323244.P12824772097812715812

`∑{d}[n+1, A329644(#)]`
-/

namespace A323244.P12824772097812715812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A329644 d

end

end A323244.P12824772097812715812

/-! ## A323244.P2182725407062397863

`A156552(n+1)-A324865(n+1)`
-/

namespace A323244.P2182725407062397863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (n + 1) - A324865 (n + 1)

end

end A323244.P2182725407062397863

/-! ## A323244.P18059611821270982372

`A005941(n+1)-(A324865(n+1)+1)`
-/

namespace A323244.P18059611821270982372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005941 (n + 1) - (A324865 (n + 1) + 1)

end

end A323244.P18059611821270982372

/-! ## A323244.P5991970013123329412

`A048675(n+1)+A323905(n+1)-A324865(n+1)`
-/

namespace A323244.P5991970013123329412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (n + 1) + (A323905 (n + 1) - A324865 (n + 1))

end

end A323244.P5991970013123329412

/-! ## A323244.P731231529421611891

`A323243(n+1)-2*A324865(n+1)`
-/

namespace A323244.P731231529421611891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323243 (n + 1) - 2 * A324865 (n + 1)

end

end A323244.P731231529421611891

/-! ## A323244.P2953567460399801885

`A324716(n+1)+A324815(n+1)-A323243(n+1)`
-/

namespace A323244.P2953567460399801885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324716 (n + 1) + (A324815 (n + 1) - A323243 (n + 1))

end

end A323244.P2953567460399801885

/-! ## A323244.P10267367653845600504

`A156552(n+1)-xor(A156552(n+1), A324867(n+1))`
-/

namespace A323244.P10267367653845600504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (n + 1) - Int.xor (A156552 (n + 1)) (A324867 (n + 1))

end

end A323244.P10267367653845600504

/-! ## A323244.P14516432523760385531

`xor(A324865(n+1), A324867(n+1))-A324865(n+1)`
-/

namespace A323244.P14516432523760385531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A324865 (n + 1)) (A324867 (n + 1)) - A324865 (n + 1)

end

end A323244.P14516432523760385531

/-! ## A323244.P17386007260115733035

`2*A324716(n+1)-A324713(n+1)`
-/

namespace A323244.P17386007260115733035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A324716 (n + 1) - A324713 (n + 1)

end

end A323244.P17386007260115733035

/-! ## A323244.P13986399139957964216

`A292380(n+1)+A292382(n+1)-A324865(n+1)`
-/

namespace A323244.P13986399139957964216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292380 (n + 1) + (A292382 (n + 1) - A324865 (n + 1))

end

end A323244.P13986399139957964216

/-! ## A323244.P10964660692346569340

`A252754(A250245(n+1))-A324865(n+1)`
-/

namespace A323244.P10964660692346569340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252754 (A250245 (n + 1)).toNat - A324865 (n + 1)

end

end A323244.P10964660692346569340

/-! ## A323244.P6445298598638628498

`A269388(A302025(n+1))-A324865(n+1)`
-/

namespace A323244.P6445298598638628498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269388 (A302025 (n + 1)).toNat - A324865 (n + 1)

end

end A323244.P6445298598638628498

/-! ## A323244.P14657463482331691851

`2*A269388(A302025(n+1))-A323243(n+1)`
-/

namespace A323244.P14657463482331691851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A269388 (A302025 (n + 1)).toNat - A323243 (n + 1)

end

end A323244.P14657463482331691851

/-! ## A323244.P5754151701820700964

`A156552(A003961(n+1))-A323243(n+1)`
-/

namespace A323244.P5754151701820700964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A003961 (n + 1)).toNat - A323243 (n + 1)

end

end A323244.P5754151701820700964

/-!
# A323245: Lexicographically earliest sequence such that for all i, j, a(i) = a(j) => f(i) = f(j), where f(n) = A323244(n) for n > 1, and f(1) = -1.

The programs for A323245, there is no canonical definition to state claims against.
-/

/-! ## A323245.P200209680469011531

`A323240(n+1)/A007318(A205295(n))`
-/

namespace A323245.P200209680469011531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323240 (n + 1) : ℚ) / (A007318 (A205295 n).toNat : ℚ)

end

end A323245.P200209680469011531

/-! ## A323245.P1230298017767936201

`A319682(n+1)%A036142(A189312(n+1))`
-/

namespace A323245.P1230298017767936201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319682 (n + 1)) (A036142 (A189312 (n + 1)).toNat)

end

end A323245.P1230298017767936201

/-! ## A323245.P6308330546095926306

`A305800(n+1)%A322561(A118888(n+1))`
-/

namespace A323245.P6308330546095926306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305800 (n + 1)) (A322561 (A118888 (n + 1)).toNat)

end

end A323245.P6308330546095926306

/-! ## A323245.P16503801195581399280

`A319348(n+1)%A322561(A118888(n+1))`
-/

namespace A323245.P16503801195581399280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319348 (n + 1)) (A322561 (A118888 (n + 1)).toNat)

end

end A323245.P16503801195581399280

/-! ## A323245.P2658282203302114426

`A323240(n+1)/A062379(A323227(n))`
-/

namespace A323245.P2658282203302114426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323240 (n + 1) : ℚ) / (A062379 (A323227 n).toNat : ℚ)

end

end A323245.P2658282203302114426

/-!
# A323246: Lexicographically earliest sequence such that for all i, j, a(i) = a(j) => f(i) = f(j), where f(n) = A323248(n) for n > 1, and f(1) = -1.

The programs for A323246, there is no canonical definition to state claims against.
-/

/-! ## A323246.P69127018687403717

`A290085(A290114(n)+A290109(2*(n+2)))`
-/

namespace A323246.P69127018687403717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290085 (A290114 n + A290109 (2 * (n + 2))).toNat

end

end A323246.P69127018687403717

/-! ## A323246.P423655292122360386

`A341737(∑{e}[n+1, #]^((n+1)/ceil(xor(n, n+1)/4)))`
-/

namespace A323246.P423655292122360386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341737 (SequenceMachineLib.roundAway (((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ) ^ ((n + 1 : ℚ) / (⌈(Nat.xor n (n + 1) : ℚ) / 4⌉ : ℚ) : ℝ))).toNat

end

end A323246.P423655292122360386

/-!
# A323247: a(n) = A005187(A156552(n)).

The programs for A323247, the canonical program `A323247.P10528880009868314501` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323247 has offset 1).

The definition of A323247 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A156552, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A323247.P2536548695530371099

`A323243(n+1)+A323248(n+1)`
-/

namespace A323247.P2536548695530371099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323243 (n + 1) + A323248 (n + 1)

end

end A323247.P2536548695530371099

namespace A323247

/-- `A323243(n+1)+A323248(n+1)` -/
def P2536548695530371099.Spec : Prop :=
  ∀ n, P2536548695530371099.a n = A323247 (n + 1)

end A323247

/-! ## A323247.P10528880009868314501

`A005187(A156552(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A323247

/-- `A005187(A156552(n+1))` -/
def P10528880009868314501.Spec : Prop :=
  ∀ n, P10528880009868314501.a n = A323247 (n + 1)

theorem P10528880009868314501.correct : P10528880009868314501.Spec := by
  intro n
  simp only [A323247, Nat.add_sub_cancel]

end A323247

/-! ## A323247.P8856218000542657963

`2*A156552(n+1)-A001222(n+1)`
-/

namespace A323247.P8856218000542657963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A156552 (n + 1) - A001222 (n + 1)

end

end A323247.P8856218000542657963

namespace A323247

/-- `2*A156552(n+1)-A001222(n+1)` -/
def P8856218000542657963.Spec : Prop :=
  ∀ n, P8856218000542657963.a n = A323247 (n + 1)

end A323247

/-! ## A323247.P3870547968495594047

`A322993(2*(n+1))-(A001222(n+1)+1)`
-/

namespace A323247.P3870547968495594047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322993 (2 * (n + 1)) - (A001222 (n + 1) + 1)

end

end A323247.P3870547968495594047

namespace A323247

/-- `A322993(2*(n+1))-(A001222(n+1)+1)` -/
def P3870547968495594047.Spec : Prop :=
  ∀ n, P3870547968495594047.a n = A323247 (n + 1)

end A323247

/-! ## A323247.P6421228771827687326

`A156552(n+1)+A156552(n+1)-A001222(A003961(n+1))`
-/

namespace A323247.P6421228771827687326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (n + 1) + (A156552 (n + 1) - A001222 (A003961 (n + 1)).toNat)

end

end A323247.P6421228771827687326

namespace A323247

/-- `A156552(n+1)+A156552(n+1)-A001222(A003961(n+1))` -/
def P6421228771827687326.Spec : Prop :=
  ∀ n, P6421228771827687326.a n = A323247 (n + 1)

end A323247

/-! ## A323247.P17211255455461214236

`A005941(2*(n+1))-(A001222(2*(n+1))+1)`
-/

namespace A323247.P17211255455461214236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005941 (2 * (n + 1)) - (A001222 (2 * (n + 1)) + 1)

end

end A323247.P17211255455461214236

namespace A323247

/-- `A005941(2*(n+1))-(A001222(2*(n+1))+1)` -/
def P17211255455461214236.Spec : Prop :=
  ∀ n, P17211255455461214236.a n = A323247 (n + 1)

end A323247

/-! ## A323247.P4071807744222638533

`A156552(2*(n+1))-(A252736(2*(n+1))+1)`
-/

namespace A323247.P4071807744222638533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (2 * (n + 1)) - (A252736 (2 * (n + 1)) + 1)

end

end A323247.P4071807744222638533

namespace A323247

/-- `A156552(2*(n+1))-(A252736(2*(n+1))+1)` -/
def P4071807744222638533.Spec : Prop :=
  ∀ n, P4071807744222638533.a n = A323247 (n + 1)

end A323247

/-! ## A323247.P7280860170147732294

`A156552(2*(n+1))-∑{e}[A003961(2*(n+1)), #]`
-/

namespace A323247.P7280860170147732294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (2 * (n + 1)) - ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A323247.P7280860170147732294

namespace A323247

/-- `A156552(2*(n+1))-∑{e}[A003961(2*(n+1)), #]` -/
def P7280860170147732294.Spec : Prop :=
  ∀ n, P7280860170147732294.a n = A323247 (n + 1)

end A323247

/-! ## A323247.P3356590176296523529

`A322993(2*(n+1))-A087436(A003961(2*(n+1)))`
-/

namespace A323247.P3356590176296523529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322993 (2 * (n + 1)) - A087436 (A003961 (2 * (n + 1))).toNat

end

end A323247.P3356590176296523529

namespace A323247

/-- `A322993(2*(n+1))-A087436(A003961(2*(n+1)))` -/
def P3356590176296523529.Spec : Prop :=
  ∀ n, P3356590176296523529.a n = A323247 (n + 1)

end A323247

/-! ## A323247.P8071237593231535824

`A156552(A003961(n+1))-A001222(n+1)`
-/

namespace A323247.P8071237593231535824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A003961 (n + 1)).toNat - A001222 (n + 1)

end

end A323247.P8071237593231535824

namespace A323247

/-- `A156552(A003961(n+1))-A001222(n+1)` -/
def P8071237593231535824.Spec : Prop :=
  ∀ n, P8071237593231535824.a n = A323247 (n + 1)

end A323247

/-!
# A323248: a(n) = A323247(n) - A323243(n).

The programs for A323248, there is no canonical definition to state claims against.
-/

/-! ## A323248.P14983638357406873902

`A323244(n+1)-A001222(n+1)`
-/

namespace A323248.P14983638357406873902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323244 (n + 1) - A001222 (n + 1)

end

end A323248.P14983638357406873902

/-! ## A323248.P3055675889344025158

`A323247(n+1)-A323243(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A323248.P3055675889344025158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323247 (n + 1) - A323243 (n + 1)

end

end A323248.P3055675889344025158

/-! ## A323248.P556250378117074826

`A323244(n+1)-A252736(A103517(n))`
-/

namespace A323248.P556250378117074826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323244 (n + 1) - A252736 (A103517 n).toNat

end

end A323248.P556250378117074826

/-! ## A323248.P7377965050411188916

`A323244(n+1)-A051904(A061142(n+1))`
-/

namespace A323248.P7377965050411188916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323244 (n + 1) - A051904 (A061142 (n + 1)).toNat

end

end A323248.P7377965050411188916

/-! ## A323248.P6728189909282777221

`A156552(n+1)-(A324865(n+1)+A001222(n+1))`
-/

namespace A323248.P6728189909282777221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (n + 1) - (A324865 (n + 1) + A001222 (n + 1))

end

end A323248.P6728189909282777221

/-! ## A323248.P14227462390907796402

`A323244(n+1)-A000120(A322993(n+1))`
-/

namespace A323248.P14227462390907796402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323244 (n + 1) - A000120 (A322993 (n + 1)).toNat

end

end A323248.P14227462390907796402

/-! ## A323248.P9622957637913650220

`A323247(n+1)-∑{d}[A156552(n+1), #]`
-/

namespace A323248.P9622957637913650220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323247 (n + 1) - ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ)

end

end A323248.P9622957637913650220

/-! ## A323248.P6846170621792847837

`∑{d}[A156552(n+1), A297114(#)]`
-/

namespace A323248.P6846170621792847837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A297114 d

end

end A323248.P6846170621792847837

/-! ## A323248.P16212785140383250452

`A005187(A156552(n+1))-A323243(n+1)`
-/

namespace A323248.P16212785140383250452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (A156552 (n + 1)).toNat - A323243 (n + 1)

end

end A323248.P16212785140383250452

/-!
# A323249: Sequence lists numbers k > 1 such that k^2 == d(k) (mod sigma(k)), where d = A000005 and sigma = A000203.

The programs for A323249, the canonical program `A323249.P5120099028923717865` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323249 has offset 1).

The definition of A323249 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 180 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A323249.P5719739070097555022

`eq[A078899(2*(n+1)), A182495(2*n+1)]+1`
-/

namespace A323249.P5719739070097555022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078899 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182495 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A323249.P5719739070097555022

namespace A323249

/-- `eq[A078899(2*(n+1)), A182495(2*n+1)]+1` -/
def P5719739070097555022.Spec : Prop :=
  ∀ n, (P5719739070097555022.a n : ℤ) = A323249 (n + 1)

end A323249

/-! ## A323249.P6704598348517458057

`eq[A032742(A061228(n+1)), A107463(n)]`
-/

namespace A323249.P6704598348517458057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A061228 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A323249.P6704598348517458057

namespace A323249

/-- `eq[A032742(A061228(n+1)), A107463(n)]` -/
def P6704598348517458057.Spec : Prop :=
  ∀ n, (P6704598348517458057.a n : ℤ) = A323249 (n + 1)

end A323249

/-! ## A323249.P5120099028923717865

`eq[A032741(n), A131185(A267027(n+1))]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A323249

/-- `eq[A032741(n), A131185(A267027(n+1))]` -/
def P5120099028923717865.Spec : Prop :=
  ∀ n, (P5120099028923717865.a n : ℤ) = A323249 (n + 1)

theorem P5120099028923717865.correct : P5120099028923717865.Spec := by
  intro n
  simp only [A323249, Nat.add_sub_cancel]

end A323249

/-! ## A323249.P15285072580869030247

`filter[A178156(n+1), A359430(#)]`
-/

namespace A323249.P15285072580869030247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178156 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359430 (f1 j).toNat = 1) n)

end

end A323249.P15285072580869030247

namespace A323249

/-- `filter[A178156(n+1), A359430(#)]` -/
def P15285072580869030247.Spec : Prop :=
  ∀ n, P15285072580869030247.a n = A323249 (n + 1)

end A323249

/-! ## A323249.P4194157472172122499

`filter[A178156(n+1), A373477(#)]`
-/

namespace A323249.P4194157472172122499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178156 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373477 (f1 j).toNat = 1) n)

end

end A323249.P4194157472172122499

namespace A323249

/-- `filter[A178156(n+1), A373477(#)]` -/
def P4194157472172122499.Spec : Prop :=
  ∀ n, P4194157472172122499.a n = A323249 (n + 1)

end A323249

/-!
# A323254: The determinant of an n X n Toeplitz matrix M(n) whose first row consists of successive positive integer numbers 2*n - 1, n - 1, ..., 1 and whose first column consists of 2*n - 1, 2*n - 2, ..., n.

The programs for A323254, the canonical program `A323254.P16024272773948710096` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323254 has offset 1).

The definition of A323254 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A323254.P16024272773948710096

`(n+1)*(n+2)^n+n/4*(n^n+(n+2)^n)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A323254

/-- `(n+1)*(n+2)^n+n/4*(n^n+(n+2)^n)` -/
def P16024272773948710096.Spec : Prop :=
  ∀ n, P16024272773948710096.a n = (A323254 (n + 1) : ℚ)

end A323254

/-!
# A323255: The permanent of an n X n Toeplitz matrix M(n) whose first row consists of successive positive integer numbers 2*n - 1, n - 1, ..., 1 and whose first column consists of 2*n - 1, 2*n - 2, ..., n.

The programs for A323255, there is no canonical definition to state claims against.
-/

/-! ## A323255.P14961915194500132809

`or(A084942(n), A293515(A084947(n)))`
-/

namespace A323255.P14961915194500132809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A084942 n) (A293515 (A084947 n).toNat)

end

end A323255.P14961915194500132809

/-!
# A323257: Number of partitions lambda of n that satisfy gcd(lambda_i, n-1) = 1 for all i and for which the lattice simplex delta(lambda) is an antichain simplex.

The programs for A323257, there is no canonical definition to state claims against.
-/

/-! ## A323257.P13666407393116668764

`A124094(∑[4*n]+1)`
-/

namespace A323257.P13666407393116668764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124094 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A323257.P13666407393116668764

/-! ## A323257.P3896616271152303022

`or(char[4], A124094(A001844(n)))`
-/

namespace A323257.P3896616271152303022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A124094 (A001844 n).toNat)

end

end A323257.P3896616271152303022

/-! ## A323257.P11952199440838838085

`A007318(∑[n])*A124094(A001844(n))`
-/

namespace A323257.P11952199440838838085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A124094 (A001844 n).toNat

end

end A323257.P11952199440838838085

/-! ## A323257.P9420851282663236399

`char[A063946(n)]*A124094(A001844(n))`
-/

namespace A323257.P9420851282663236399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063946 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A124094 (A001844 n).toNat

end

end A323257.P9420851282663236399

/-! ## A323257.P14489728757790998555

`A124094(A001844(n))%∑[A000032(n)]`
-/

namespace A323257.P14489728757790998555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124094 (A001844 n).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A323257.P14489728757790998555

/-! ## A323257.P10234364662555477760

`A124094(A001844(n))+A000007(n+1)`
-/

namespace A323257.P10234364662555477760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124094 (A001844 n).toNat + A000007 (n + 1)

end

end A323257.P10234364662555477760

/-! ## A323257.P5606315222283230831

`A124094(A001844(n))/A007318(C(2, n))`
-/

namespace A323257.P5606315222283230831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124094 (A001844 n).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A323257.P5606315222283230831

/-! ## A323257.P16424123493464097680

`A124094(A001844(n))/A014963(4*n+6)`
-/

namespace A323257.P16424123493464097680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124094 (A001844 n).toNat : ℚ) / (A014963 (4 * n + 6) : ℚ)

end

end A323257.P16424123493464097680

/-! ## A323257.P17357415237086042383

`A000040(n+2)%2*A124094(A001844(n))`
-/

namespace A323257.P17357415237086042383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2)) 2 * A124094 (A001844 n).toNat

end

end A323257.P17357415237086042383

/-! ## A323257.P2208463925410549208

`A000005(gcd(n, n+1))*A124094(A001844(n))`
-/

namespace A323257.P2208463925410549208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.gcd n (n + 1)) * A124094 (A001844 n).toNat

end

end A323257.P2208463925410549208

/-!
# A323258: a(n) is the X-coordinate of the n-th point of a variation on Wunderlich's serpentine type 010 101 010 curve (starting at the origin and occupying the first quadrant).

The programs for A323258, there is no canonical definition to state claims against.
-/

/-! ## A323258.P9574690907600635931

`A323259(A342218(n)+1)`
-/

namespace A323258.P9574690907600635931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323259 (A342218 n + 1).toNat

end

end A323258.P9574690907600635931

/-! ## A323258.P10845052097971030635

`A323259(A163336(A163335(n))+1)`
-/

namespace A323258.P10845052097971030635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323259 (A163336 (A163335 n).toNat + 1).toNat

end

end A323258.P10845052097971030635

/-!
# A323259: a(n) is the Y-coordinate of the n-th point of the first type of Wunderlich curve (starting at the origin and occupying the first quadrant).

The programs for A323259, there is no canonical definition to state claims against.
-/

/-! ## A323259.P11873777920775089355

`A323258(A342218(n)+1)`
-/

namespace A323259.P11873777920775089355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323258 (A342218 n + 1).toNat

end

end A323259.P11873777920775089355

/-! ## A323259.P12149134925969374088

`A323258(A163336(A163335(n))+1)`
-/

namespace A323259.P12149134925969374088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323258 (A163336 (A163335 n).toNat + 1).toNat

end

end A323259.P12149134925969374088

/-! ## A323259.P1133752460070556525

`floor(sqrt(A163531(n%A325510(n))))`
-/

namespace A323259.P1133752460070556525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A163531 (Int.tmod (n : ℤ) (A325510 n)).toNat)

end

end A323259.P1133752460070556525

/-!
# A323260: Number of horizontally convex polyoctagons containing n regular polygons (squares or octagons).

The programs for A323260, the canonical program `A323260.P7477462434266285332` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323260 has offset 0).

The definition of A323260 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A323260.P179527991483643740

`2*A323261(n)`
-/

namespace A323260.P179527991483643740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A323261 n

end

end A323260.P179527991483643740

namespace A323260

/-- `2*A323261(n)` -/
def P179527991483643740.Spec : Prop :=
  ∀ n, P179527991483643740.a n = A323260 n

end A323260

/-! ## A323260.P7477462434266285332

`5*a(n-1)-3*a(n-2)-5*a(n-3)+7*a(n-4)-a(n-5)` with `a(0)=0, a(1)=2, a(2)=6, a(3)=24, a(4)=96, a(5)=390`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A323260

/-- `5*a(n-1)-3*a(n-2)-5*a(n-3)+7*a(n-4)-a(n-5)` -/
def P7477462434266285332.Spec : Prop :=
  ∀ n, P7477462434266285332.a n = A323260 n

theorem P7477462434266285332.correct : P7477462434266285332.Spec := by
  intro n
  simp only [A323260]

end A323260

/-! ## A323260.P12372991811815195519

`A323261(n)+A323261(n%(n+1))`
-/

namespace A323260.P12372991811815195519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323261 n + A323261 (n % (n + 1))

end

end A323260.P12372991811815195519

namespace A323260

/-- `A323261(n)+A323261(n%(n+1))` -/
def P12372991811815195519.Spec : Prop :=
  ∀ n, P12372991811815195519.a n = A323260 n

end A323260

/-! ## A323260.P507327380459118017

`A323261(A023443(n+1))+A323261(n)`
-/

namespace A323260.P507327380459118017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323261 (A023443 (n + 1)).toNat + A323261 n

end

end A323260.P507327380459118017

namespace A323260

/-- `A323261(A023443(n+1))+A323261(n)` -/
def P507327380459118017.Spec : Prop :=
  ∀ n, P507327380459118017.a n = A323260 n

end A323260

/-! ## A323260.P8848828906721749234

`A323261(A005843(n)/2)+A323261(n)`
-/

namespace A323260.P8848828906721749234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323261 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A323261 n

end

end A323260.P8848828906721749234

namespace A323260

/-- `A323261(A005843(n)/2)+A323261(n)` -/
def P8848828906721749234.Spec : Prop :=
  ∀ n, P8848828906721749234.a n = A323260 n

end A323260

/-! ## A323260.P8985774649004084358

`A323261(A005843(n)-n)+A323261(n)`
-/

namespace A323260.P8985774649004084358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323261 (A005843 n - (n : ℤ)).toNat + A323261 n

end

end A323260.P8985774649004084358

namespace A323260

/-- `A323261(A005843(n)-n)+A323261(n)` -/
def P8985774649004084358.Spec : Prop :=
  ∀ n, P8985774649004084358.a n = A323260 n

end A323260

/-! ## A323260.P5967493816540854483

`A323261(n)+A323261(n)^A220280(A000217(n+6)+7)`
-/

namespace A323260.P5967493816540854483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323261 n : ℚ) + (A323261 n : ℚ) ^ (A220280 (A000217 (n + 6) + 7).toNat : ℤ)

end

end A323260.P5967493816540854483

namespace A323260

/-- `A323261(n)+A323261(n)^A220280(A000217(n+6)+7)` -/
def P5967493816540854483.Spec : Prop :=
  ∀ n, P5967493816540854483.a n = (A323260 n : ℚ)

end A323260

/-! ## A323260.P1785372185651499847

`A323261(A118759(n))+A323261(n)`
-/

namespace A323260.P1785372185651499847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323261 (A118759 n).toNat + A323261 n

end

end A323260.P1785372185651499847

namespace A323260

/-- `A323261(A118759(n))+A323261(n)` -/
def P1785372185651499847.Spec : Prop :=
  ∀ n, P1785372185651499847.a n = A323260 n

end A323260

/-! ## A323260.P17934732121574385358

`A323261(n)+record[A323261(A323259(n+1))]`
-/

namespace A323260.P17934732121574385358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323261 (A323259 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323261 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323260.P17934732121574385358

namespace A323260

/-- `A323261(n)+record[A323261(A323259(n+1))]` -/
def P17934732121574385358.Spec : Prop :=
  ∀ n, P17934732121574385358.a n = A323260 n

end A323260

/-! ## A323260.P5290675567428806151

`A323261(n)+A323261(n)%A000732(n)`
-/

namespace A323260.P5290675567428806151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323261 n + Int.tmod (A323261 n) (A000732 n)

end

end A323260.P5290675567428806151

namespace A323260

/-- `A323261(n)+A323261(n)%A000732(n)` -/
def P5290675567428806151.Spec : Prop :=
  ∀ n, P5290675567428806151.a n = A323260 n

end A323260

/-!
# A323261: a(n) = A323260(n)/2.

The programs for A323261, the canonical program `A323261.P6185816485484570432` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323261 has offset 0).

The definition of A323261 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A323261.P6185816485484570432

`5*a(n-1)-3*a(n-2)-5*a(n-3)+7*a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=12, a(4)=48, a(5)=195`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A323261

/-- `5*a(n-1)-3*a(n-2)-5*a(n-3)+7*a(n-4)-a(n-5)` -/
def P6185816485484570432.Spec : Prop :=
  ∀ n, P6185816485484570432.a n = A323261 n

theorem P6185816485484570432.correct : P6185816485484570432.Spec := by
  intro n
  simp only [A323261]

end A323261

/-! ## A323261.P5789569664258617613

`A323260(n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A323261.P5789569664258617613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323260 n : ℚ) / 2

end

end A323261.P5789569664258617613

namespace A323261

/-- `A323260(n)/2` -/
def P5789569664258617613.Spec : Prop :=
  ∀ n, P5789569664258617613.a n = (A323261 n : ℚ)

end A323261

/-! ## A323261.P11585628513427254375

`A323266(n+1)-A323266(A004275(n)+1-n)`
-/

namespace A323261.P11585628513427254375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323266 (n + 1) - A323266 (A004275 n + (1 - (n : ℤ))).toNat

end

end A323261.P11585628513427254375

namespace A323261

/-- `A323266(n+1)-A323266(A004275(n)+1-n)` -/
def P11585628513427254375.Spec : Prop :=
  ∀ n, P11585628513427254375.a n = A323261 n

end A323261

/-! ## A323261.P2420770767714498737

`A323269(n+1)-(A323266(n+1)+A323266(n+2))`
-/

namespace A323261.P2420770767714498737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323269 (n + 1) - (A323266 (n + 1) + A323266 (n + 2))

end

end A323261.P2420770767714498737

namespace A323261

/-- `A323269(n+1)-(A323266(n+1)+A323266(n+2))` -/
def P2420770767714498737.Spec : Prop :=
  ∀ n, P2420770767714498737.a n = A323261 n

end A323261

/-! ## A323261.P8366301688767978007

`A323269(n+1)%(A323265(n+1)+Δ[A323266(n+1)])`
-/

namespace A323261.P8366301688767978007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323266 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323269 (n + 1)) (A323265 (n + 1) + (f1 (n + 1) - f1 n))

end

end A323261.P8366301688767978007

namespace A323261

/-- `A323269(n+1)%(A323265(n+1)+Δ[A323266(n+1)])` -/
def P8366301688767978007.Spec : Prop :=
  ∀ n, P8366301688767978007.a n = A323261 n

end A323261

/-!
# A323262: The sequence denoted by a_n used in the calculation of A323260.

The programs for A323262, the canonical program `A323262.P15495717463669417341` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323262 has offset 1).

The definition of A323262 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A323262.P15495717463669417341

`Δ[A323261(n)]-∑[A323261(n)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A323262

/-- `Δ[A323261(n)]-∑[A323261(n)]` -/
def P15495717463669417341.Spec : Prop :=
  ∀ n, P15495717463669417341.a n = A323262 (n + 1)

theorem P15495717463669417341.correct : P15495717463669417341.Spec := by
  intro n
  simp only [A323262, Nat.add_sub_cancel]

end A323262

/-! ## A323262.P17659681166539180233

`A323260(n+1)-A323269(n+1)`
-/

namespace A323262.P17659681166539180233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323260 (n + 1) - A323269 (n + 1)

end

end A323262.P17659681166539180233

namespace A323262

/-- `A323260(n+1)-A323269(n+1)` -/
def P17659681166539180233.Spec : Prop :=
  ∀ n, P17659681166539180233.a n = A323262 (n + 1)

end A323262

/-! ## A323262.P2895896133999599859

`(Δ[A323260(n)]-∑[A323260(n)])/2`
-/

namespace A323262.P2895896133999599859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323260 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323260 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n - ∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

end

end A323262.P2895896133999599859

namespace A323262

/-- `(Δ[A323260(n)]-∑[A323260(n)])/2` -/
def P2895896133999599859.Spec : Prop :=
  ∀ n, P2895896133999599859.a n = (A323262 (n + 1) : ℚ)

end A323262

/-! ## A323262.P8669050410536398140

`2*A323261(n+1)-A323269(n+1)`
-/

namespace A323262.P8669050410536398140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A323261 (n + 1) - A323269 (n + 1)

end

end A323262.P8669050410536398140

namespace A323262

/-- `2*A323261(n+1)-A323269(n+1)` -/
def P8669050410536398140.Spec : Prop :=
  ∀ n, P8669050410536398140.a n = A323262 (n + 1)

end A323262

/-! ## A323262.P15291492605195978691

`-(A323269(n+1)+∑[-Δ[A323260(n)]])`
-/

namespace A323262.P15291492605195978691
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323260 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A323269 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A323262.P15291492605195978691

namespace A323262

/-- `-(A323269(n+1)+∑[-Δ[A323260(n)]])` -/
def P15291492605195978691.Spec : Prop :=
  ∀ n, P15291492605195978691.a n = A323262 (n + 1)

end A323262

/-!
# A323263: The sequence denoted by d_n used in the calculation of A323260.

The programs for A323263, there is no canonical definition to state claims against.
-/

/-! ## A323263.P4353509832362380089

`A027868(A323260(n)/2+n)`
-/

namespace A323263.P4353509832362380089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 (SequenceMachineLib.roundAway ((A323260 n : ℚ) / 2 + (n : ℚ))).toNat

end

end A323263.P4353509832362380089

/-! ## A323263.P2774134191539183685

`A289122(A012781(n)+A002262(n))`
-/

namespace A323263.P2774134191539183685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289122 (A012781 n + A002262 n).toNat

end

end A323263.P2774134191539183685

/-! ## A323263.P10259781721799346793

`A059169(A323261(n)+A255212(n))`
-/

namespace A323263.P10259781721799346793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (A323261 n + A255212 n).toNat

end

end A323263.P10259781721799346793

/-! ## A323263.P16549023989002450980

`A289122(or(A002262(n), A012781(n)))`
-/

namespace A323263.P16549023989002450980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289122 (Int.lor (A002262 n) (A012781 n)).toNat

end

end A323263.P16549023989002450980

/-!
# A323264: The sequence denoted by j_n used in the calculation of A323260.

The programs for A323264, there is no canonical definition to state claims against.
-/

/-! ## A323264.P11080527631853041316

`A323267(n+1)-A323268(n+1)`
-/

namespace A323264.P11080527631853041316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323267 (n + 1) - A323268 (n + 1)

end

end A323264.P11080527631853041316

/-! ## A323264.P2700285311974989388

`A008618(A149604(n))`
-/

namespace A323264.P2700285311974989388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A149604 n).toNat

end

end A323264.P2700285311974989388

/-! ## A323264.P3626825936202750025

`A105516(A150051(n))`
-/

namespace A323264.P3626825936202750025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105516 (A150051 n).toNat

end

end A323264.P3626825936202750025

/-! ## A323264.P7539968035549339846

`A105519(A383480(n))`
-/

namespace A323264.P7539968035549339846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105519 (A383480 n).toNat

end

end A323264.P7539968035549339846

/-!
# A323265: The sequence denoted by p_n used in the calculation of A323260.

The programs for A323265, the canonical program `A323265.P13893778921393904343` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323265 has offset 1).

The definition of A323265 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A323265.P13893778921393904343

`2*A323266(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A323265

/-- `2*A323266(n+1)` -/
def P13893778921393904343.Spec : Prop :=
  ∀ n, P13893778921393904343.a n = A323265 (n + 1)

theorem P13893778921393904343.correct : P13893778921393904343.Spec := by
  intro n
  simp only [A323265, Nat.add_sub_cancel]

end A323265

/-! ## A323265.P6026872979321391034

`A323260(n)+a(n-2)` with `a(0)=0, a(1)=2`
-/

namespace A323265.P6026872979321391034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  A323260 n + a (n - 2)

end

end A323265.P6026872979321391034

namespace A323265

/-- `A323260(n)+a(n-2)` -/
def P6026872979321391034.Spec : Prop :=
  ∀ n, P6026872979321391034.a n = A323265 (n + 1)

end A323265

/-! ## A323265.P5581498897509267436

`A323268(n+4)-A323268(n+2)`
-/

namespace A323265.P5581498897509267436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323268 (n + 4) - A323268 (n + 2)

end

end A323265.P5581498897509267436

namespace A323265

/-- `A323268(n+4)-A323268(n+2)` -/
def P5581498897509267436.Spec : Prop :=
  ∀ n, P5581498897509267436.a n = A323265 (n + 1)

end A323265

/-! ## A323265.P2282614936975904629

`A323266(C(n+1, n))+A323266(n+1)`
-/

namespace A323265.P2282614936975904629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323266 (Nat.choose (n + 1) n) + A323266 (n + 1)

end

end A323265.P2282614936975904629

namespace A323265

/-- `A323266(C(n+1, n))+A323266(n+1)` -/
def P2282614936975904629.Spec : Prop :=
  ∀ n, P2282614936975904629.a n = A323265 (n + 1)

theorem P2282614936975904629.correct : P2282614936975904629.Spec := by
  intro n
  simp only [A323265, Nat.add_sub_cancel, A323265.P2282614936975904629.a, A323265.P13893778921393904343.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A323265

/-! ## A323265.P3151801286481428848

`A323266(A000027(n+1))+A323266(n+1)`
-/

namespace A323265.P3151801286481428848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323266 (A000027 (n + 1)).toNat + A323266 (n + 1)

end

end A323265.P3151801286481428848

namespace A323265

/-- `A323266(A000027(n+1))+A323266(n+1)` -/
def P3151801286481428848.Spec : Prop :=
  ∀ n, P3151801286481428848.a n = A323265 (n + 1)

end A323265

/-! ## A323265.P5248214048886814487

`A323266(n+1)+A323266(n+1)%A323269(n+1)`
-/

namespace A323265.P5248214048886814487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323266 (n + 1) + Int.tmod (A323266 (n + 1)) (A323269 (n + 1))

end

end A323265.P5248214048886814487

namespace A323265

/-- `A323266(n+1)+A323266(n+1)%A323269(n+1)` -/
def P5248214048886814487.Spec : Prop :=
  ∀ n, P5248214048886814487.a n = A323265 (n + 1)

end A323265

/-! ## A323265.P18226362906439653490

`A323266(n+1)+A323266(n+1)%A000732(n)`
-/

namespace A323265.P18226362906439653490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323266 (n + 1) + Int.tmod (A323266 (n + 1)) (A000732 n)

end

end A323265.P18226362906439653490

namespace A323265

/-- `A323266(n+1)+A323266(n+1)%A000732(n)` -/
def P18226362906439653490.Spec : Prop :=
  ∀ n, P18226362906439653490.a n = A323265 (n + 1)

end A323265

/-!
# A323266: A323265(n)/2.

The programs for A323266, the canonical program `A323266.P15959783757333752463` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323266 has offset 1).

The definition of A323266 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A323266.P15959783757333752463

`5*a(n-1)-3*a(n-2)-5*a(n-3)+7*a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=13, a(4)=51`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A323266

/-- `5*a(n-1)-3*a(n-2)-5*a(n-3)+7*a(n-4)-a(n-5)` -/
def P15959783757333752463.Spec : Prop :=
  ∀ n, P15959783757333752463.a n = A323266 (n + 1)

theorem P15959783757333752463.correct : P15959783757333752463.Spec := by
  intro n
  simp only [A323266, Nat.add_sub_cancel]

end A323266

/-! ## A323266.P7190472405333446350

`A323265(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A323266.P7190472405333446350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323265 (n + 1) : ℚ) / 2

end

end A323266.P7190472405333446350

namespace A323266

/-- `A323265(n+1)/2` -/
def P7190472405333446350.Spec : Prop :=
  ∀ n, P7190472405333446350.a n = (A323266 (n + 1) : ℚ)

end A323266

/-! ## A323266.P6625152420604590574

`A323261(n)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A323266.P6625152420604590574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A323261 n + a (n - 2)

end

end A323266.P6625152420604590574

namespace A323266

/-- `A323261(n)+a(n-2)` -/
def P6625152420604590574.Spec : Prop :=
  ∀ n, P6625152420604590574.a n = A323266 (n + 1)

end A323266

/-! ## A323266.P11717210122303181525

`∑[A323261(n)]-a(A023443(n))` with `a(0)=0`
-/

namespace A323266.P11717210122303181525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323261 n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (A023443 n).toNat

end

end A323266.P11717210122303181525

namespace A323266

/-- `∑[A323261(n)]-a(A023443(n))` -/
def P11717210122303181525.Spec : Prop :=
  ∀ n, P11717210122303181525.a n = A323266 (n + 1)

end A323266

/-! ## A323266.P3391122154948927082

`∑[A323265(n+1)-∑[A323261(n)]]`
-/

namespace A323266.P3391122154948927082
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323261 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323265 (n + 1) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323266.P3391122154948927082

namespace A323266

/-- `∑[A323265(n+1)-∑[A323261(n)]]` -/
def P3391122154948927082.Spec : Prop :=
  ∀ n, P3391122154948927082.a n = A323266 (n + 1)

end A323266

/-! ## A323266.P5915865193958937924

`(A323268(n+4)-A323268(n+2))/2`
-/

namespace A323266.P5915865193958937924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323268 (n + 4) - A323268 (n + 2) : ℚ) / 2

end

end A323266.P5915865193958937924

namespace A323266

/-- `(A323268(n+4)-A323268(n+2))/2` -/
def P5915865193958937924.Spec : Prop :=
  ∀ n, P5915865193958937924.a n = (A323266 (n + 1) : ℚ)

end A323266

/-!
# A323267: The sequence denoted by q_n used in the calculation of A323260.

The programs for A323267, there is no canonical definition to state claims against.
-/

/-! ## A323267.P8934354188909628045

`A323268(n+1)+A323264(n+1)`
-/

namespace A323267.P8934354188909628045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323268 (n + 1) + A323264 (n + 1)

end

end A323267.P8934354188909628045

/-! ## A323267.P6735869369721019805

`A323264(n+3)-A323263(n+2)`
-/

namespace A323267.P6735869369721019805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323264 (n + 3) - A323263 (n + 2)

end

end A323267.P6735869369721019805

/-! ## A323267.P8177085211220124849

`A064458(A148901(n)+A148884(n))`
-/

namespace A323267.P8177085211220124849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064458 (A148901 n + A148884 n).toNat

end

end A323267.P8177085211220124849

/-! ## A323267.P1211195315458831009

`A148360(n)-A156689(A148365(n))`
-/

namespace A323267.P1211195315458831009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148360 n - A156689 (A148365 n).toNat

end

end A323267.P1211195315458831009

/-!
# A323268: The sequence denoted by r_n used in the calculation of A323260.

The programs for A323268, there is no canonical definition to state claims against.
-/

/-! ## A323268.P8716418029954115429

`A323267(n+1)-A323264(n+1)`
-/

namespace A323268.P8716418029954115429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323267 (n + 1) - A323264 (n + 1)

end

end A323268.P8716418029954115429

/-! ## A323268.P12164618717433934089

`A323264(n+3)-A323263(n+2)-A323264(n+1)`
-/

namespace A323268.P12164618717433934089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323264 (n + 3) - A323263 (n + 2) - A323264 (n + 1)

end

end A323268.P12164618717433934089

/-! ## A323268.P2059531637671130607

`Δ[A177849((2*ceil(2^(n-log2(6)))-1)²)]`
-/

namespace A323268.P2059531637671130607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177849 ((2 * ⌈(2 : ℝ) ^ ((n : ℝ) - Real.logb 2 (6 : ℝ))⌉ - 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A323268.P2059531637671130607

/-! ## A323268.P4958154126249809096

`A065717(A047659(n))`
-/

namespace A323268.P4958154126249809096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065717 (A047659 n).toNat

end

end A323268.P4958154126249809096

/-!
# A323269: The sequence denoted by h_n used in the calculation of A323260.

The programs for A323269, the canonical program `A323269.P6039144852991048100` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323269 has offset 1).

The definition of A323269 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A323269.P6039144852991048100

`A323261(n)+∑[A323261(n+1)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A323269

/-- `A323261(n)+∑[A323261(n+1)]` -/
def P6039144852991048100.Spec : Prop :=
  ∀ n, P6039144852991048100.a n = A323269 (n + 1)

theorem P6039144852991048100.correct : P6039144852991048100.Spec := by
  intro n
  simp only [A323269, Nat.add_sub_cancel]

end A323269

/-! ## A323269.P2006808658226600590

`A323260(n+1)-A323262(n+1)`
-/

namespace A323269.P2006808658226600590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323260 (n + 1) - A323262 (n + 1)

end

end A323269.P2006808658226600590

namespace A323269

/-- `A323260(n+1)-A323262(n+1)` -/
def P2006808658226600590.Spec : Prop :=
  ∀ n, P2006808658226600590.a n = A323269 (n + 1)

end A323269

/-! ## A323269.P10806850499440791698

`2*A323261(n+1)-A323262(n+1)`
-/

namespace A323269.P10806850499440791698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A323261 (n + 1) - A323262 (n + 1)

end

end A323269.P10806850499440791698

namespace A323269

/-- `2*A323261(n+1)-A323262(n+1)` -/
def P10806850499440791698.Spec : Prop :=
  ∀ n, P10806850499440791698.a n = A323269 (n + 1)

end A323269

/-! ## A323269.P2667947760040003438

`A323266(n+1)+A323266(n+2)+A323261(n)`
-/

namespace A323269.P2667947760040003438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323266 (n + 1) + (A323266 (n + 2) + A323261 n)

end

end A323269.P2667947760040003438

namespace A323269

/-- `A323266(n+1)+A323266(n+2)+A323261(n)` -/
def P2667947760040003438.Spec : Prop :=
  ∀ n, P2667947760040003438.a n = A323269 (n + 1)

end A323269

/-! ## A323269.P10434321724889809

`(A323260(n)+∑[A323260(n+1)])/2`
-/

namespace A323269.P10434321724889809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323260 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A323260 n + ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A323269.P10434321724889809

namespace A323269

/-- `(A323260(n)+∑[A323260(n+1)])/2` -/
def P10434321724889809.Spec : Prop :=
  ∀ n, P10434321724889809.a n = (A323269 (n + 1) : ℚ)

end A323269

/-!
# A323270: Expansion of x*(1-x)*(3-13*x+24*x^2-17*x^3-18*x^4+35*x^5-3*x^6-14*x^7+x^9) / (1-7*x+20*x^2-30*x^3+16*x^4+20*x^5-32*x^6+6*x^7+11*x^8-2*x^9-x^10).

The programs for A323270, the canonical program `A323270.P17674684372317223155` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323270 has offset 0).

The definition of A323270 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((3x-16x^2+37x^3-41x^4-x^5+53x^6-38x^7-11x^8+14x^9+x^10-x^11)/(1-7x+20x^2-30x^3+16x^4+20x^5-32x^6+6x^7+11x^8-2x^9-x^10))` (program `A323270.P17674684372317223155`, by `A323270.P17674684372317223155.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A323270.P17674684372317223155

`ogf((3x-16x^2+37x^3-41x^4-x^5+53x^6-38x^7-11x^8+14x^9+x^10-x^11)/(1-7x+20x^2-30x^3+16x^4+20x^5-32x^6+6x^7+11x^8-2x^9-x^10))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A323270

/-- `ogf((3x-16x^2+37x^3-41x^4-x^5+53x^6-38x^7-11x^8+14x^9+x^10-x^11)/(1-7x+20x^2-30x^3+16x^4+20x^5-32x^6+6x^7+11x^8-2x^9-x^10))` -/
def P17674684372317223155.Spec : Prop :=
  ∀ n, P17674684372317223155.a n = A323270 n

theorem P17674684372317223155.correct : P17674684372317223155.Spec := by
  intro n
  simp only [A323270]

end A323270

/-! ## A323270.P13886546768255790500

`A262935(A000204(n+1))-A109626(3*(n+1))`
-/

namespace A323270.P13886546768255790500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262935 (A000204 (n + 1)).toNat - A109626 (3 * (n + 1))

end

end A323270.P13886546768255790500

namespace A323270

/-- `A262935(A000204(n+1))-A109626(3*(n+1))` -/
def P13886546768255790500.Spec : Prop :=
  ∀ n, P13886546768255790500.a n = A323270 n

end A323270

/-!
# A323271: Numbers of the form p*q*r where p, q, r are distinct primes congruent to 1 mod 4 such that Legendre(p/q) = Legendre(p/r) = Legendre(q/r) = -1.

The programs for A323271, there is no canonical definition to state claims against.
-/

/-! ## A323271.P16806211902288742129

`∩[A025287(n+1), A323272(n+1)]`
-/

namespace A323271.P16806211902288742129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025287 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323271.P16806211902288742129

/-! ## A323271.P743419101108332638

`∩[A025305(n+1), A323272(n+1)]`
-/

namespace A323271.P743419101108332638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025305 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323271.P743419101108332638

/-! ## A323271.P11781631013902158290

`∩[A159781(n+1), A323272(n+1)]`
-/

namespace A323271.P11781631013902158290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323271.P11781631013902158290

/-! ## A323271.P8769949712342981175

`∩[A264498(n+1), A323272(n+1)]`
-/

namespace A323271.P8769949712342981175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264498 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323271.P8769949712342981175

/-! ## A323271.P12455924919657039043

`∩[A281877(n+1), A323272(n+1)]`
-/

namespace A323271.P12455924919657039043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281877 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323271.P12455924919657039043

/-! ## A323271.P7224074547401213609

`∩[A025295(n+1), A323272(n+1)]`
-/

namespace A323271.P7224074547401213609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025295 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323271.P7224074547401213609

/-! ## A323271.P10979835575180447845

`∩[A097102(n+1), A323272(n+1)]`
-/

namespace A323271.P10979835575180447845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323271.P10979835575180447845

/-! ## A323271.P7618640019255460959

`∩[A248649(n+1), A323272(n+1)]`
-/

namespace A323271.P7618640019255460959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248649 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323271.P7618640019255460959

/-! ## A323271.P9817375836323436673

`∩[A025294(n+1), A323272(n+1)]`
-/

namespace A323271.P9817375836323436673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025294 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323271.P9817375836323436673

/-! ## A323271.P8087114604986243560

`∩[A025313(n+1), A323272(n+1)]`
-/

namespace A323271.P8087114604986243560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323271.P8087114604986243560

/-!
# A323272: Numbers of the form p_1*p_2*p_3*...*p_r where r is 2 or an odd number > 2, and the p_i are distinct primes congruent to 1 mod 4 such that Legendre(p_i/p_j) = -1 for all i != j.

The programs for A323272, there is no canonical definition to state claims against.
-/

/-! ## A323272.P5743721731278769436

`∪[A322781(n+1), A323271(n+1)]`
-/

namespace A323272.P5743721731278769436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A323272.P5743721731278769436

/-! ## A323272.P2559612225152475308

`∩[A039955(n+1), A279550(n+1)]`
-/

namespace A323272.P2559612225152475308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323272.P2559612225152475308

/-!
# A323273: Number of orbits of the Conway group Co_0 acting on vectors of norm 2n in the Leech lattice.

The programs for A323273, there is no canonical definition to state claims against.
-/

/-! ## A323273.P13131907759300417530

`A029169(n)+A011722(n)`
-/

namespace A323273.P13131907759300417530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029169 n + A011722 n

end

end A323273.P13131907759300417530

/-! ## A323273.P5156585701605487142

`A369048(n)+A029169(n)`
-/

namespace A323273.P5156585701605487142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369048 n + A029169 n

end

end A323273.P5156585701605487142

/-! ## A323273.P15637327599966644328

`A005206(A025800(∑{d}[n, #]))`
-/

namespace A323273.P15637327599966644328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A025800 (∑ d ∈ Nat.divisors (f1 n), d)).toNat

end

end A323273.P15637327599966644328

/-! ## A323273.P12140175913747798020

`A003056(A029158(∑{d}[n, #]))`
-/

namespace A323273.P12140175913747798020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A029158 (∑ d ∈ Nat.divisors (f1 n), d)).toNat

end

end A323273.P12140175913747798020

/-! ## A323273.P11193342276152094690

`A000196(A260412(∑{d}[n, #]))`
-/

namespace A323273.P11193342276152094690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A260412 (∑ d ∈ Nat.divisors (f1 n), d)).toNat

end

end A323273.P11193342276152094690

/-!
# A323274: a(n) = ceiling(1/(e - 1/0! - 1/1! - 1/2! - ... - 1/n!)).

The programs for A323274, there is no canonical definition to state claims against.
-/

/-! ## A323274.P6529737898927037407

`A057427(n)+A024572(n!)`
-/

namespace A323274.P6529737898927037407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A024572 (Nat.factorial n)

end

end A323274.P6529737898927037407

/-! ## A323274.P3140410817234055147

`A178334(n)+A024572(n!)`
-/

namespace A323274.P3140410817234055147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A024572 (Nat.factorial n)

end

end A323274.P3140410817234055147

/-! ## A323274.P3605454152307440001

`A135660(n+1)+A024572(n!)`
-/

namespace A323274.P3605454152307440001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (n + 1) + A024572 (Nat.factorial n)

end

end A323274.P3605454152307440001

/-! ## A323274.P5002841527127294294

`A057427(n)+A024572(A000142(n))`
-/

namespace A323274.P5002841527127294294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A024572 (A000142 n).toNat

end

end A323274.P5002841527127294294

/-!
# A323276: Number of 4-regular maps on the Klein bottle with n vertices and 2n edges.

The programs for A323276, there is no canonical definition to state claims against.
-/

/-! ## A323276.P4533039999406273003

`A005843(∑[A101268(n)*A288970(n+1)])`
-/

namespace A323276.P4533039999406273003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101268 n * A288970 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A323276.P4533039999406273003

/-!
# A323277: G.f. = (x/6)*( 1/(1-12*x)^(3/2) - 1/(1-12*x) ).

The programs for A323277, there is no canonical definition to state claims against.
-/

/-! ## A323277.P5808618940325230531

`A131006(C(∑{digits}[n, #!], 2))`
-/

namespace A323277.P5808618940325230531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131006 (Nat.choose ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.factorial x).sum 2)

end

end A323277.P5808618940325230531

/-!
# A323278: Numbers of the form p^2-1 that have a record-breaking number of divisors, where p is prime.

The programs for A323278, there is no canonical definition to state claims against.
-/

/-! ## A323278.P18093457340486587663

`A335325(n+1)²-1`
-/

namespace A323278.P18093457340486587663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335325 (n + 1) ^ 2 - 1

end

end A323278.P18093457340486587663

/-! ## A323278.P6348028441756605071

`A308778(n²)+A335325(n+1)²`
-/

namespace A323278.P6348028441756605071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 (n ^ 2) + A335325 (n + 1) ^ 2

end

end A323278.P6348028441756605071

/-! ## A323278.P12077228850374150230

`A260196(n+2)+A335325(n+1)²`
-/

namespace A323278.P12077228850374150230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A335325 (n + 1) ^ 2

end

end A323278.P12077228850374150230

/-! ## A323278.P10252980014188678629

`(-1)^A000041(C(2, n+2))+A335325(n+1)²`
-/

namespace A323278.P10252980014188678629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A000041 (Nat.choose 2 (n + 2)) : ℤ) + (A335325 (n + 1) ^ 2 : ℚ)

end

end A323278.P10252980014188678629

/-! ## A323278.P5552462205079190831

`A008683(A002148(n))+A335325(n+1)²`
-/

namespace A323278.P5552462205079190831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A002148 n).toNat + A335325 (n + 1) ^ 2

end

end A323278.P5552462205079190831

/-!
# A323279: Number of 3-regular maps on the Klein bottle with n vertices.

The programs for A323279, there is no canonical definition to state claims against.
-/

/-! ## A323279.P17923662741385888503

`A361141(n+1)-A269473(n+1)`
-/

namespace A323279.P17923662741385888503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361141 (n + 1) - A269473 (n + 1)

end

end A323279.P17923662741385888503

/-!
# A323280: a(n) = Sum_{k=0..n} binomial(n,k) * k^(2*k).

The programs for A323280, there is no canonical definition to state claims against.
-/

/-! ## A323280.P14598253263758708426

`∑[A355495(n)]`
-/

namespace A323280.P14598253263758708426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355495 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323280.P14598253263758708426

/-! ## A323280.P4497674953778952188

`A355495(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A323280.P4497674953778952188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A355495 n + a (A023443 n).toNat

end

end A323280.P4497674953778952188

/-! ## A323280.P2711936538848913965

`A355495(n)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A323280.P2711936538848913965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A355495 n + a (A028310 n - 1).toNat

end

end A323280.P2711936538848913965

/-! ## A323280.P17667182681398638482

`A355495(n%A000040(n))+a(n-1)` with `a(0)=1`
-/

namespace A323280.P17667182681398638482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A355495 (Int.tmod (n : ℤ) (A000040 n)).toNat + a (n - 1)

end

end A323280.P17667182681398638482

/-!
# A323283: Euler characteristic (H_*(h_{oo,1}^+)_{2n}^{Sp}) of the Sp-invariant homology group of the Lie algebra h_{oo,1}^+ of weight 2n.

The programs for A323283, there is no canonical definition to state claims against.
-/

/-! ## A323283.P14369977927089717080

`A323285(n+1)+A323284(n+2)`
-/

namespace A323283.P14369977927089717080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323285 (n + 1) + A323284 (n + 2)

end

end A323283.P14369977927089717080

/-!
# A323284: Integral Euler characteristic of the outer automorphism group Out(F_n) of the free group of rank n.

The programs for A323284, there is no canonical definition to state claims against.
-/

/-! ## A323284.P14263235709460708673

`A323283(n+1)-A323285(n+1)`
-/

namespace A323284.P14263235709460708673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323283 (n + 1) - A323285 (n + 1)

end

end A323284.P14263235709460708673

/-!
# A323285: a(n) = A323283(n) - A323284(n).

The programs for A323285, there is no canonical definition to state claims against.
-/

/-! ## A323285.P15019526551179636910

`A323283(n+1)-A323284(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A323285.P15019526551179636910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323283 (n + 1) - A323284 (n + 2)

end

end A323285.P15019526551179636910

/-!
# A323286: Choix de Bruxelles (version 1): irregular table read by rows in which row n lists all the legal numbers that can be reached by halving or doubling some substring of the decimal expansion of n.

The programs for A323286, there is no canonical definition to state claims against.
-/

/-! ## A323286.P13256250211162768440

`A008619(A173773(n)^A008835(n+1))`
-/

namespace A323286.P13256250211162768440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.roundAway ((A173773 n : ℚ) ^ (A008835 (n + 1) : ℤ))).toNat

end

end A323286.P13256250211162768440

/-! ## A323286.P3071521437753196990

`A008619(A173773(n)^A069292(n+1))`
-/

namespace A323286.P3071521437753196990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.roundAway ((A173773 n : ℚ) ^ (A069292 (n + 1) : ℤ))).toNat

end

end A323286.P3071521437753196990

/-! ## A323286.P7227805768221358200

`A109168(A173773(n)^A008835(n+1))`
-/

namespace A323286.P7227805768221358200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109168 (SequenceMachineLib.roundAway ((A173773 n : ℚ) ^ (A008835 (n + 1) : ℤ))).toNat

end

end A323286.P7227805768221358200

/-! ## A323286.P12767178603911505240

`A140472(A173773(n)^A008835(n+1))`
-/

namespace A323286.P12767178603911505240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140472 (SequenceMachineLib.roundAway ((A173773 n : ℚ) ^ (A008835 (n + 1) : ℤ))).toNat

end

end A323286.P12767178603911505240

/-! ## A323286.P6793009221352421822

`A109168(A173773(n)^A069292(n+1))`
-/

namespace A323286.P6793009221352421822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109168 (SequenceMachineLib.roundAway ((A173773 n : ℚ) ^ (A069292 (n + 1) : ℤ))).toNat

end

end A323286.P6793009221352421822

/-!
# A323287: Number of different numbers that can be obtained from (the decimal expansion of) n by one step of the Choix de Bruxelles, version 1 (A323286) operation.

The programs for A323287, there is no canonical definition to state claims against.
-/

/-! ## A323287.P18254732607256361950

`A000120(A000031(a(n-1)+10^floor((n-1)/9)))` with `a(0)=1`
-/

namespace A323287.P18254732607256361950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000120 (A000031 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) + (10 : ℚ) ^ (⌊((n : ℤ) - 1 : ℚ) / 9⌋ : ℤ))).toNat).toNat

end

end A323287.P18254732607256361950

/-!
# A323288: Largest number that can be obtained from the "Choix de Bruxelles", version 2 (A323460) operation applied to n.

The programs for A323288, there is no canonical definition to state claims against.
-/

/-! ## A323288.P4052560442620302116

`A323286(∑[A323287(n+1)])`
-/

namespace A323288.P4052560442620302116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323287 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323286 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A323288.P4052560442620302116

/-! ## A323288.P1555154480615833312

`∑[A139553(A022310(n))²+1]`
-/

namespace A323288.P1555154480615833312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139553 (A022310 n).toNat ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323288.P1555154480615833312

/-! ## A323288.P1968466251879263436

`∑[A133265(A266854(n+1)²)]`
-/

namespace A323288.P1968466251879263436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133265 (A266854 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323288.P1968466251879263436

/-! ## A323288.P17687060351911995004

`∑[A264981(A088017(3*(n+1)))+1]`
-/

namespace A323288.P17687060351911995004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264981 (A088017 (3 * (n + 1))).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323288.P17687060351911995004

/-! ## A323288.P13900124295435040131

`∑[A069292(A102767(3*n+4)+1)^4+1]`
-/

namespace A323288.P13900124295435040131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069292 (A102767 (3 * n + 4) + 1).toNat ^ 4 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323288.P13900124295435040131

/-!
# A323289: Total number of distinct numbers that can be obtained by starting with 1 and applying the "Choix de Bruxelles", version 2 (A323460) operation at most n times.

The programs for A323289, there is no canonical definition to state claims against.
-/

/-! ## A323289.P119922892901493730

`∑[A323452(round(acot(n)+n))]`
-/

namespace A323289.P119922892901493730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323452 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323289.P119922892901493730

/-! ## A323289.P4747208309207005595

`A323452(n)+a(n-1)` with `a(0)=1`
-/

namespace A323289.P4747208309207005595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A323452 n + a (n - 1)

end

end A323289.P4747208309207005595

/-! ## A323289.P7208717475177590692

`∑[A323452(round(sqrt(n²+1)))]`
-/

namespace A323289.P7208717475177590692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323452 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323289.P7208717475177590692

/-! ## A323289.P10054059125602894367

`∑[A323452(n+1)]+1-A323452(n+1)`
-/

namespace A323289.P10054059125602894367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323452 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A323452 (n + 1))

end

end A323289.P10054059125602894367

/-!
# A323290: Numerator of the sum of inverse products of cycle sizes in all permutations of [n].

The programs for A323290, there is no canonical definition to state claims against.
-/

/-! ## A323290.P6130999258715726296

`A074707(n)/A000142(n)*A323291(n)`
-/

namespace A323290.P6130999258715726296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074707 n : ℚ) / (A000142 n : ℚ) * (A323291 n : ℚ)

end

end A323290.P6130999258715726296

/-! ## A323290.P738405914524837149

`lcm(A074707(n), A193435(n))/A193435(n)`
-/

namespace A323290.P738405914524837149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A074707 n) (A193435 n) : ℚ) / (A193435 n : ℚ)

end

end A323290.P738405914524837149

/-!
# A323291: Denominator of the sum of inverse products of cycle sizes in all permutations of [n].

The programs for A323291, there is no canonical definition to state claims against.
-/

/-! ## A323291.P6466351674290212458

`A000142(n)/A074707(n)*A323290(n)`
-/

namespace A323291.P6466351674290212458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A074707 n : ℚ) * (A323290 n : ℚ)

end

end A323291.P6466351674290212458

/-! ## A323291.P4641118999842729290

`A000265(A177209(n))*A016116(n)`
-/

namespace A323291.P4641118999842729290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A177209 n).toNat * A016116 n

end

end A323291.P4641118999842729290

/-! ## A323291.P511800139563597664

`A000027(lcm(2^floor(n/2), A177209(n)))`
-/

namespace A323291.P511800139563597664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.lcm (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))) (A177209 n))

end

end A323291.P511800139563597664

/-! ## A323291.P13692990525685717276

`A048803(n)/A317144(A002061(n))`
-/

namespace A323291.P13692990525685717276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048803 n : ℚ) / (A317144 (A002061 n).toNat : ℚ)

end

end A323291.P13692990525685717276

/-! ## A323291.P4138378522837880214

`lcm(A322365(n), A322372(A322391(3*(n+1))))`
-/

namespace A323291.P4138378522837880214
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A322365 n) (A322372 (A322391 (3 * (n + 1))).toNat)

end

end A323291.P4138378522837880214

/-!
# A323292: Number of 3-uniform hypergraphs spanning n labeled vertices where no two edges have two vertices in common.

The programs for A323292, there is no canonical definition to state claims against.
-/

/-! ## A323292.P9786284971005535068

`xor(n, A089873(A030436(n)))`
-/

namespace A323292.P9786284971005535068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A089873 (A030436 n).toNat)

end

end A323292.P9786284971005535068

/-! ## A323292.P574669727967382278

`A307431(A362238(n)+n-1)`
-/

namespace A323292.P574669727967382278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307431 (A362238 n + ((n : ℤ) - 1)).toNat

end

end A323292.P574669727967382278

/-! ## A323292.P6467950807872757667

`xor(n, A089873(A319436(n+1)))`
-/

namespace A323292.P6467950807872757667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A089873 (A319436 (n + 1)).toNat)

end

end A323292.P6467950807872757667

/-!
# A323293: Number of 3-uniform hypergraphs on n labeled vertices where no two edges have two vertices in common.

The programs for A323293, there is no canonical definition to state claims against.
-/

/-! ## A323293.P13176453390411167483

`A006447(floor(sqrt(n!)))`
-/

namespace A323293.P13176453390411167483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006447 (Nat.sqrt (Nat.factorial n))

end

end A323293.P13176453390411167483

/-! ## A323293.P16308996944494539703

`A324968(floor(sqrt(n!)))`
-/

namespace A323293.P16308996944494539703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324968 (Nat.sqrt (Nat.factorial n))

end

end A323293.P16308996944494539703

/-! ## A323293.P3918561682674195261

`A006447(A035079(n))`
-/

namespace A323293.P3918561682674195261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006447 (A035079 n).toNat

end

end A323293.P3918561682674195261

/-!
# A323294: Number of 3-uniform hypergraphs spanning n labeled vertices where every two edges have two vertices in common.

The programs for A323294, the canonical program `A323294.P13497765602868876888` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323294 has offset 0).

The definition of A323294 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A323294.P13497765602868876888

`C(n%a(n-1), 2)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=11`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A323294

/-- `C(n%a(n-1), 2)` -/
def P13497765602868876888.Spec : Prop :=
  ∀ n, (P13497765602868876888.a n : ℤ) = A323294 n

theorem P13497765602868876888.correct : P13497765602868876888.Spec := by
  intro n
  simp only [A323294]

end A323294

/-! ## A323294.P14963637963506552331

`a(n-1)+n-1` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=11, a(5)=10`
-/

namespace A323294.P14963637963506552331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 1, 11, 10] fun n a =>
  a (n - 1) + ((n : ℤ) - 1)

end

end A323294.P14963637963506552331

namespace A323294

/-- `a(n-1)+n-1` -/
def P14963637963506552331.Spec : Prop :=
  ∀ n, P14963637963506552331.a n = A323294 n

end A323294

/-! ## A323294.P5691821289234228443

`n-(1-a(n-1))` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=11, a(5)=10`
-/

namespace A323294.P5691821289234228443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 1, 11, 10] fun n a =>
  (n : ℤ) - (1 - a (n - 1))

end

end A323294.P5691821289234228443

namespace A323294

/-- `n-(1-a(n-1))` -/
def P5691821289234228443.Spec : Prop :=
  ∀ n, P5691821289234228443.a n = A323294 n

end A323294

/-! ## A323294.P6901382628326212733

`A066182(a(n-1)+1)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=11, a(5)=10`
-/

namespace A323294.P6901382628326212733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 1, 11, 10] fun n a =>
  A066182 (a (n - 1) + 1).toNat

end

end A323294.P6901382628326212733

namespace A323294

/-- `A066182(a(n-1)+1)` -/
def P6901382628326212733.Spec : Prop :=
  ∀ n, P6901382628326212733.a n = A323294 n

end A323294

/-! ## A323294.P5471414266376337607

`A038722(a(n-1)+1)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=11, a(5)=10`
-/

namespace A323294.P5471414266376337607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 1, 11, 10] fun n a =>
  A038722 (a (n - 1) + 1).toNat

end

end A323294.P5471414266376337607

namespace A323294

/-- `A038722(a(n-1)+1)` -/
def P5471414266376337607.Spec : Prop :=
  ∀ n, P5471414266376337607.a n = A323294 n

end A323294

/-! ## A323294.P17091681483250847440

`A061579(a(n-1))+1` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=11, a(5)=10`
-/

namespace A323294.P17091681483250847440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 1, 11, 10] fun n a =>
  A061579 (a (n - 1)).toNat + 1

end

end A323294.P17091681483250847440

namespace A323294

/-- `A061579(a(n-1))+1` -/
def P17091681483250847440.Spec : Prop :=
  ∀ n, P17091681483250847440.a n = A323294 n

end A323294

/-!
# A323295: Number of ways to fill a matrix with the first n positive integers.

The programs for A323295, there is no canonical definition to state claims against.
-/

/-! ## A323295.P2468744557121099440

`n!*∏{e}[n, #+1]`
-/

namespace A323295.P2468744557121099440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))

end

end A323295.P2468744557121099440

/-! ## A323295.P15966764593240876717

`(∑{d}[n, floor(atan(#))]+1)*n!`
-/

namespace A323295.P15966764593240876717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), ⌊Real.arctan (d : ℝ)⌋ + 1) * (Nat.factorial n : ℤ)

end

end A323295.P15966764593240876717

/-! ## A323295.P17462297033174585378

`(A032741(n)+1)*n!`
-/

namespace A323295.P17462297033174585378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A032741 n + 1) * (Nat.factorial n : ℤ)

end

end A323295.P17462297033174585378

/-! ## A323295.P4125760348971053689

`n!*A000005(round(sqrt(n²+1)))`
-/

namespace A323295.P4125760348971053689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A000005 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A323295.P4125760348971053689

/-! ## A323295.P4677838860626570076

`(A032741(n)+1)*A000142(n)`
-/

namespace A323295.P4677838860626570076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A032741 n + 1) * A000142 n

end

end A323295.P4677838860626570076

/-! ## A323295.P17345122392475688602

`A000005(A028310(n))*A000142(n)`
-/

namespace A323295.P17345122392475688602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A028310 n).toNat * A000142 n

end

end A323295.P17345122392475688602

/-!
# A323297: Number of 3-uniform hypergraphs on n labeled vertices where no two edges have exactly one vertex in common.

The programs for A323297, there is no canonical definition to state claims against.
-/

/-! ## A323297.P2215763031893550053

`A050296(A001045(n)^A004524(n))`
-/

namespace A323297.P2215763031893550053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050296 (SequenceMachineLib.roundAway ((A001045 n : ℚ) ^ (A004524 n : ℤ))).toNat

end

end A323297.P2215763031893550053

/-! ## A323297.P17073639389814086109

`xor(A094033(n), A205790(A054726(n)))`
-/

namespace A323297.P17073639389814086109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A094033 n) (A205790 (A054726 n).toNat)

end

end A323297.P17073639389814086109

/-!
# A323298: Number of 3-uniform hypergraphs spanning n labeled vertices where every two edges have exactly one vertex in common.

The programs for A323298, there is no canonical definition to state claims against.
-/

/-! ## A323298.P11770204414577402095

`A167700((2*n+3)*3^(n-1))-floor(n/6)`
-/

namespace A323298.P11770204414577402095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167700 (SequenceMachineLib.roundAway ((2 * n + 3 : ℚ) * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat - ⌊(n : ℚ) / 6⌋

end

end A323298.P11770204414577402095

/-! ## A323298.P5225959351076604057

`A322335(A006522(n)+3)`
-/

namespace A323298.P5225959351076604057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322335 (A006522 n + 3).toNat

end

end A323298.P5225959351076604057

/-! ## A323298.P4343033230871176031

`A187557(abs(Δ[A004730(n)]))`
-/

namespace A323298.P4343033230871176031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004730 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187557 |f1 (n + 1) - f1 n|.toNat

end

end A323298.P4343033230871176031

/-!
# A323299: Number of 3-uniform hypergraphs on n labeled vertices where every two edges have exactly one vertex in common.

The programs for A323299, there is no canonical definition to state claims against.
-/

/-! ## A323299.P11152602565022018265

`A123399(2*a(n-1))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A323299.P11152602565022018265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A123399 (2 * a (n - 1)).toNat

end

end A323299.P11152602565022018265

/-! ## A323299.P3782783658851017220

`A008615(A242858(n))+1`
-/

namespace A323299.P3782783658851017220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A242858 n).toNat + 1

end

end A323299.P3782783658851017220

/-! ## A323299.P13696853843945609443

`A351978(n*A063934(n+1))`
-/

namespace A323299.P13696853843945609443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351978 ((n : ℤ) * A063934 (n + 1)).toNat

end

end A323299.P13696853843945609443

