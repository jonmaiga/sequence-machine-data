import SequenceMachineLib
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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
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
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
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
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A088000: a(n) is the sum of the palindromic divisors of n.

The programs for A088000, there is no canonical definition to state claims against.
-/

/-! ## A088000.P11461990743358589272

`∑{d}[n+1, #*A136522(#)]`
-/

namespace A088000.P11461990743358589272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A136522 d

end

end A088000.P11461990743358589272

/-! ## A088000.P12422730242815253181

`∑{d}[n+1, #]-A088001(n+1)`
-/

namespace A088000.P12422730242815253181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - A088001 (n + 1)

end

end A088000.P12422730242815253181

/-! ## A088000.P14219286349140763327

`A000203(n+1)-A088001(n+1)`
-/

namespace A088000.P14219286349140763327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A088001 (n + 1)

end

end A088000.P14219286349140763327

/-! ## A088000.P4699476422442142571

`abs(A143348(n+1))-A088001(n+1)`
-/

namespace A088000.P4699476422442142571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A143348 (n + 1)| - A088001 (n + 1)

end

end A088000.P4699476422442142571

/-! ## A088000.P13202080739286044924

`A088580(n+1)-(A088001(n+1)+1)`
-/

namespace A088000.P13202080739286044924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - (A088001 (n + 1) + 1)

end

end A088000.P13202080739286044924

/-! ## A088000.P1136202376666641731

`A001065(n+1)+1+n-A088001(n+1)`
-/

namespace A088000.P1136202376666641731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + 1 + (n : ℤ) - A088001 (n + 1)

end

end A088000.P1136202376666641731

/-! ## A088000.P5394424055511004161

`2*(n+1)-A033879(n+1)-A088001(n+1)`
-/

namespace A088000.P5394424055511004161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A033879 (n + 1) - A088001 (n + 1)

end

end A088000.P5394424055511004161

/-! ## A088000.P12631581155688871862

`A034448(n+1)+A048146(n+1)-A088001(n+1)`
-/

namespace A088000.P12631581155688871862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) + (A048146 (n + 1) - A088001 (n + 1))

end

end A088000.P12631581155688871862

/-! ## A088000.P1855419122171416827

`A050449(n+1)+A082052(n+1)-A088001(n+1)`
-/

namespace A088000.P1855419122171416827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050449 (n + 1) + (A082052 (n + 1) - A088001 (n + 1))

end

end A088000.P1855419122171416827

/-! ## A088000.P2904305150309690952

`A000593(n+1)+A146076(n+1)-A088001(n+1)`
-/

namespace A088000.P2904305150309690952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) + (A146076 (n + 1) - A088001 (n + 1))

end

end A088000.P2904305150309690952

/-! ## A088000.P15901945357432740966

`A079667(n+1)+A117004(n+1)-A088001(n+1)`
-/

namespace A088000.P15901945357432740966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079667 (n + 1) + (A117004 (n + 1) - A088001 (n + 1))

end

end A088000.P15901945357432740966

/-! ## A088000.P5610310007225928037

`A023889(n+1)+A178637(n+1)-A088001(n+1)`
-/

namespace A088000.P5610310007225928037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023889 (n + 1) + (A178637 (n + 1) - A088001 (n + 1))

end

end A088000.P5610310007225928037

/-! ## A088000.P873406705855247311

`A048250(n+1)+A162296(n+1)-A088001(n+1)`
-/

namespace A088000.P873406705855247311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1) + (A162296 (n + 1) - A088001 (n + 1))

end

end A088000.P873406705855247311

/-! ## A088000.P13509363348078944159

`A035316(n+1)+A285309(n+1)-A088001(n+1)`
-/

namespace A088000.P13509363348078944159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035316 (n + 1) + (A285309 (n + 1) - A088001 (n + 1))

end

end A088000.P13509363348078944159

/-! ## A088000.P9624249014885596672

`∑{d}[n+1, #*A000007(A338827(#))]`
-/

namespace A088000.P9624249014885596672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A000007 (A338827 d).toNat

end

end A088000.P9624249014885596672

/-!
# A088001: a(n) is the sum of non-palindromic divisors of n.

The programs for A088001, there is no canonical definition to state claims against.
-/

/-! ## A088001.P1573242177904829285

`∑{d}[n+1, #%A262038(#)]`
-/

namespace A088001.P1573242177904829285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (d : ℤ) (A262038 d)

end

end A088001.P1573242177904829285

/-! ## A088001.P17309724701311928219

`Δ[A160664(n)]-A088000(n+1)`
-/

namespace A088001.P17309724701311928219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A088000 (n + 1)

end

end A088001.P17309724701311928219

/-! ## A088001.P646874697590570143

`A000203(n+1)-A088000(n+1)`
-/

namespace A088001.P646874697590570143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A088000 (n + 1)

end

end A088001.P646874697590570143

/-! ## A088001.P7139152390151293084

`A245092(Δ[n²])-A088000(n+1)`
-/

namespace A088001.P7139152390151293084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A088000 (n + 1)

end

end A088001.P7139152390151293084

/-! ## A088001.P5582251664007706881

`abs(A143348(n+1))-A088000(n+1)`
-/

namespace A088001.P5582251664007706881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A143348 (n + 1)| - A088000 (n + 1)

end

end A088001.P5582251664007706881

/-! ## A088001.P15401014763252498268

`A088580(n+1)-(A088000(n+1)+1)`
-/

namespace A088001.P15401014763252498268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - (A088000 (n + 1) + 1)

end

end A088001.P15401014763252498268

/-! ## A088001.P16878877369882130550

`A001065(n+1)+1+n-A088000(n+1)`
-/

namespace A088001.P16878877369882130550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + 1 + (n : ℤ) - A088000 (n + 1)

end

end A088001.P16878877369882130550

/-! ## A088001.P10537623221165774104

`2*(n+1)-A033879(n+1)-A088000(n+1)`
-/

namespace A088001.P10537623221165774104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A033879 (n + 1) - A088000 (n + 1)

end

end A088001.P10537623221165774104

/-! ## A088001.P2449339787872127895

`A034448(n+1)+A048146(n+1)-A088000(n+1)`
-/

namespace A088001.P2449339787872127895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) + (A048146 (n + 1) - A088000 (n + 1))

end

end A088001.P2449339787872127895

/-! ## A088001.P5190763025690465369

`A050449(n+1)+A082052(n+1)-A088000(n+1)`
-/

namespace A088001.P5190763025690465369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050449 (n + 1) + (A082052 (n + 1) - A088000 (n + 1))

end

end A088001.P5190763025690465369

/-! ## A088001.P4339443640966019471

`A000593(n+1)+A146076(n+1)-A088000(n+1)`
-/

namespace A088001.P4339443640966019471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) + (A146076 (n + 1) - A088000 (n + 1))

end

end A088001.P4339443640966019471

/-! ## A088001.P9249182104222876597

`A079667(n+1)+A117004(n+1)-A088000(n+1)`
-/

namespace A088001.P9249182104222876597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079667 (n + 1) + (A117004 (n + 1) - A088000 (n + 1))

end

end A088001.P9249182104222876597

/-! ## A088001.P16254243322772284200

`A023889(n+1)+A178637(n+1)-A088000(n+1)`
-/

namespace A088001.P16254243322772284200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023889 (n + 1) + (A178637 (n + 1) - A088000 (n + 1))

end

end A088001.P16254243322772284200

/-! ## A088001.P8314126862516819485

`A048250(n+1)+A162296(n+1)-A088000(n+1)`
-/

namespace A088001.P8314126862516819485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1) + (A162296 (n + 1) - A088000 (n + 1))

end

end A088001.P8314126862516819485

/-! ## A088001.P16164676181112473639

`A035316(n+1)+A285309(n+1)-A088000(n+1)`
-/

namespace A088001.P16164676181112473639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035316 (n + 1) + (A285309 (n + 1) - A088000 (n + 1))

end

end A088001.P16164676181112473639

/-! ## A088001.P13344221893384290108

`A057163(A057163(∑{d}[n+1, #]))-A088000(n+1)`
-/

namespace A088001.P13344221893384290108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A057163 (∑ d ∈ Nat.divisors (f1 n), d)).toNat - A088000 (n + 1)

end

end A088001.P13344221893384290108

/-!
# A088002: Expansion of (1+x^2)/(1+x^2+x^5).

The programs for A088002, the canonical program `A088002.P17769802828091663228` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088002 has offset 0).

The definition of A088002 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^2)/(1+x^2+x^5))` (program `A088002.P17769802828091663228`, by `A088002.P17769802828091663228.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A088002.P17769802828091663228

`ogf((1+x^2)/(1+x^2+x^5))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A088002

/-- `ogf((1+x^2)/(1+x^2+x^5))` -/
def P17769802828091663228.Spec : Prop :=
  ∀ n, P17769802828091663228.a n = A088002 n

theorem P17769802828091663228.correct : P17769802828091663228.Spec := by
  intro n
  simp only [A088002]

end A088002

/-!
# A088003: Take the list t(n,0) = {1,...,n}; denote by t(n,j) this list after rotating to left (or right) by j positions. Calculate inner product of t(n,0) and t(n,j) and denote the value by s(n,j). Compute this inner product for all j = 1..n and choose the smallest. This is a(n).

The programs for A088003, the canonical program `A088003.P10508378397168904579` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088003 has offset 1).

The definition of A088003 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A088003.P15780916396912012684

`(n+1)*(2*(n+1)*(5*(n+1)+12)-3*(-1)^(n+1)+11)/48`
-/

namespace A088003.P15780916396912012684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * ((2 * (n + 1) * (5 * (n + 1) + 12) : ℤ) - 3 * (-1) ^ (n + 1) + 11) : ℚ) / 48

end

end A088003.P15780916396912012684

namespace A088003

/-- `(n+1)*(2*(n+1)*(5*(n+1)+12)-3*(-1)^(n+1)+11)/48` -/
def P15780916396912012684.Spec : Prop :=
  ∀ n, P15780916396912012684.a n = (A088003 (n + 1) : ℚ)

end A088003

/-! ## A088003.P10508378397168904579

`A000330(n+1)-A034828(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A088003

/-- `A000330(n+1)-A034828(n+1)` -/
def P10508378397168904579.Spec : Prop :=
  ∀ n, P10508378397168904579.a n = A088003 (n + 1)

theorem P10508378397168904579.correct : P10508378397168904579.Spec := by
  intro n
  simp only [A088003, Nat.add_sub_cancel]

end A088003

/-! ## A088003.P7756824544300647725

`∑[(n+1)²-∑[gcd(n, ∑[n])]]`
-/

namespace A088003.P7756824544300647725
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088003.P7756824544300647725

namespace A088003

/-- `∑[(n+1)²-∑[gcd(n, ∑[n])]]` -/
def P7756824544300647725.Spec : Prop :=
  ∀ n, P7756824544300647725.a n = A088003 (n + 1)

end A088003

/-! ## A088003.P9563089034316893956

`∑[(n+1)²-∑[lcm(2, n)/2]]`
-/

namespace A088003.P9563089034316893956
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088003.P9563089034316893956

namespace A088003

/-- `∑[(n+1)²-∑[lcm(2, n)/2]]` -/
def P9563089034316893956.Spec : Prop :=
  ∀ n, P9563089034316893956.a n = (A088003 (n + 1) : ℚ)

end A088003

/-! ## A088003.P1183494364105200469

`∑[∑[n%or(1, n)/2+n+1]]`
-/

namespace A088003.P1183494364105200469
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n % Nat.lor 1 n : ℕ) : ℚ) / 2 + (n + 1 : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088003.P1183494364105200469

namespace A088003

/-- `∑[∑[n%or(1, n)/2+n+1]]` -/
def P1183494364105200469.Spec : Prop :=
  ∀ n, P1183494364105200469.a n = (A088003 (n + 1) : ℚ)

end A088003

/-! ## A088003.P3823055918944235720

`∑[∑[∑[a(n-2)+(-1)^n]]]` with `a(0)=1, a(1)=1`
-/

namespace A088003.P3823055918944235720
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f3 =>
  f3 (n - 2) + (-1) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088003.P3823055918944235720

namespace A088003

/-- `∑[∑[∑[a(n-2)+(-1)^n]]]` -/
def P3823055918944235720.Spec : Prop :=
  ∀ n, P3823055918944235720.a n = A088003 (n + 1)

end A088003

/-! ## A088003.P14581647557387216100

`∑[∑[a(n-2)+5]-a(n-1)]` with `a(0)=1, a(1)=3`
-/

namespace A088003.P14581647557387216100
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f2 =>
  f2 (n - 2) + 5

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088003.P14581647557387216100

namespace A088003

/-- `∑[∑[a(n-2)+5]-a(n-1)]` -/
def P14581647557387216100.Spec : Prop :=
  ∀ n, P14581647557387216100.a n = A088003 (n + 1)

end A088003

/-! ## A088003.P7475449660740171578

`∑[∑[∑[5-a(n-1)]-a(n-1)]]` with `a(0)=1, a(1)=2`
-/

namespace A088003.P7475449660740171578
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f3 =>
  5 - f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  ∑ j ∈ Finset.range (n + 1), f3 j - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088003.P7475449660740171578

namespace A088003

/-- `∑[∑[∑[5-a(n-1)]-a(n-1)]]` -/
def P7475449660740171578.Spec : Prop :=
  ∀ n, P7475449660740171578.a n = A088003 (n + 1)

end A088003

/-! ## A088003.P158498136832597022

`∑[A210977(n+1)]`
-/

namespace A088003.P158498136832597022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210977 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088003.P158498136832597022

namespace A088003

/-- `∑[A210977(n+1)]` -/
def P158498136832597022.Spec : Prop :=
  ∀ n, P158498136832597022.a n = A088003 (n + 1)

end A088003

/-! ## A088003.P7007907230087211320

`∑[A101881(n)+∑[n]]`
-/

namespace A088003.P7007907230087211320
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101881 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088003.P7007907230087211320

namespace A088003

/-- `∑[A101881(n)+∑[n]]` -/
def P7007907230087211320.Spec : Prop :=
  ∀ n, P7007907230087211320.a n = A088003 (n + 1)

end A088003

/-! ## A088003.P15687818172617002988

`∑[∑[A158416(n)+n]]`
-/

namespace A088003.P15687818172617002988
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 n + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088003.P15687818172617002988

namespace A088003

/-- `∑[∑[A158416(n)+n]]` -/
def P15687818172617002988.Spec : Prop :=
  ∀ n, P15687818172617002988.a n = A088003 (n + 1)

end A088003

/-! ## A088003.P12071214170964627023

`∑[∑[A257143(n)]+n]`
-/

namespace A088003.P12071214170964627023
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257143 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088003.P12071214170964627023

namespace A088003

/-- `∑[∑[A257143(n)]+n]` -/
def P12071214170964627023.Spec : Prop :=
  ∀ n, P12071214170964627023.a n = A088003 (n + 1)

end A088003

/-! ## A088003.P480915695691695028

`∑[A085787(n)+1+n]`
-/

namespace A088003.P480915695691695028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085787 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088003.P480915695691695028

namespace A088003

/-- `∑[A085787(n)+1+n]` -/
def P480915695691695028.Spec : Prop :=
  ∀ n, P480915695691695028.a n = A088003 (n + 1)

end A088003

/-! ## A088003.P5575488222003523449

`∑[A111711(n+1)+n]`
-/

namespace A088003.P5575488222003523449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111711 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088003.P5575488222003523449

namespace A088003

/-- `∑[A111711(n+1)+n]` -/
def P5575488222003523449.Spec : Prop :=
  ∀ n, P5575488222003523449.a n = A088003 (n + 1)

end A088003

/-! ## A088003.P16638300510581992086

`∑[∑[abs(A280167(n))]+n]`
-/

namespace A088003.P16638300510581992086
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A280167 n|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088003.P16638300510581992086

namespace A088003

/-- `∑[∑[abs(A280167(n))]+n]` -/
def P16638300510581992086.Spec : Prop :=
  ∀ n, P16638300510581992086.a n = A088003 (n + 1)

end A088003

/-! ## A088003.P4153221426157795813

`A212983(n)-a(n-1)` with `a(0)=1`
-/

namespace A088003.P4153221426157795813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A212983 n - a (n - 1)

end

end A088003.P4153221426157795813

namespace A088003

/-- `A212983(n)-a(n-1)` -/
def P4153221426157795813.Spec : Prop :=
  ∀ n, P4153221426157795813.a n = A088003 (n + 1)

end A088003

/-! ## A088003.P4742220362941394801

`∑[(n+1)²-A001318(n)]`
-/

namespace A088003.P4742220362941394801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A001318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088003.P4742220362941394801

namespace A088003

/-- `∑[(n+1)²-A001318(n)]` -/
def P4742220362941394801.Spec : Prop :=
  ∀ n, P4742220362941394801.a n = A088003 (n + 1)

end A088003

/-! ## A088003.P11743911924284457808

`∑[(n+1)²]-A109900(n)`
-/

namespace A088003.P11743911924284457808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A109900 n

end

end A088003.P11743911924284457808

namespace A088003

/-- `∑[(n+1)²]-A109900(n)` -/
def P11743911924284457808.Spec : Prop :=
  ∀ n, P11743911924284457808.a n = A088003 (n + 1)

end A088003

/-! ## A088003.P1634703698050468784

`∑[∑[Δ[n²]-A026741(n)]]`
-/

namespace A088003.P1634703698050468784
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ) - A026741 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088003.P1634703698050468784

namespace A088003

/-- `∑[∑[Δ[n²]-A026741(n)]]` -/
def P1634703698050468784.Spec : Prop :=
  ∀ n, P1634703698050468784.a n = A088003 (n + 1)

end A088003

/-! ## A088003.P9773204472188122056

`A049778(n+1)+A006918(n)`
-/

namespace A088003.P9773204472188122056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049778 (n + 1) + A006918 n

end

end A088003.P9773204472188122056

namespace A088003

/-- `A049778(n+1)+A006918(n)` -/
def P9773204472188122056.Spec : Prop :=
  ∀ n, P9773204472188122056.a n = A088003 (n + 1)

end A088003

/-!
# A088004: "Truncated Mertens function": values of -1 at primes are left out, that is, summatory Moebius when argument runs through nonprimes.

The programs for A088004, the canonical program `A088004.P3214712745860726339` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088004 has offset 1).

The definition of A088004 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002321, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A088004.P3214712745860726339

`A002321(n+1)+A000720(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A088004

/-- `A002321(n+1)+A000720(n+1)` -/
def P3214712745860726339.Spec : Prop :=
  ∀ n, P3214712745860726339.a n = A088004 (n + 1)

theorem P3214712745860726339.correct : P3214712745860726339.Spec := by
  intro n
  simp only [A088004, Nat.add_sub_cancel]

end A088004

/-! ## A088004.P17101006331186650096

`A000720(n+1)+∑[A008683(n+1)]`
-/

namespace A088004.P17101006331186650096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088004.P17101006331186650096

namespace A088004

/-- `A000720(n+1)+∑[A008683(n+1)]` -/
def P17101006331186650096.Spec : Prop :=
  ∀ n, P17101006331186650096.a n = A088004 (n + 1)

end A088004

/-! ## A088004.P7804390402922113558

`A002321(n+1)+∑[A010051(n+1)]`
-/

namespace A088004.P7804390402922113558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088004.P7804390402922113558

namespace A088004

/-- `A002321(n+1)+∑[A010051(n+1)]` -/
def P7804390402922113558.Spec : Prop :=
  ∀ n, P7804390402922113558.a n = A088004 (n + 1)

end A088004

/-! ## A088004.P16003626889265593419

`∑[A010051(n+1)+A008683(n+1)]`
-/

namespace A088004.P16003626889265593419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) + A008683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088004.P16003626889265593419

namespace A088004

/-- `∑[A010051(n+1)+A008683(n+1)]` -/
def P16003626889265593419.Spec : Prop :=
  ∀ n, P16003626889265593419.a n = A088004 (n + 1)

end A088004

/-! ## A088004.P345191290591008652

`∑[A080339(n+1)-A157658(n+1)]`
-/

namespace A088004.P345191290591008652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (n + 1) - A157658 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088004.P345191290591008652

namespace A088004

/-- `∑[A080339(n+1)-A157658(n+1)]` -/
def P345191290591008652.Spec : Prop :=
  ∀ n, P345191290591008652.a n = A088004 (n + 1)

end A088004

/-! ## A088004.P6617307701523025029

`∑[A005171(n+1)*A008683(n+1)]`
-/

namespace A088004.P6617307701523025029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1) * A008683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088004.P6617307701523025029

namespace A088004

/-- `∑[A005171(n+1)*A008683(n+1)]` -/
def P6617307701523025029.Spec : Prop :=
  ∀ n, P6617307701523025029.a n = A088004 (n + 1)

end A088004

/-! ## A088004.P2655547238468266094

`∑[A008683(n+1)]+A036234(n+1)-1`
-/

namespace A088004.P2655547238468266094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A036234 (n + 1) - 1)

end

end A088004.P2655547238468266094

namespace A088004

/-- `∑[A008683(n+1)]+A036234(n+1)-1` -/
def P2655547238468266094.Spec : Prop :=
  ∀ n, P2655547238468266094.a n = A088004 (n + 1)

end A088004

/-! ## A088004.P4013813264823633748

`∑[A010051(n+1)+A162512(n+1)%2]`
-/

namespace A088004.P4013813264823633748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) + Int.tmod (A162512 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088004.P4013813264823633748

namespace A088004

/-- `∑[A010051(n+1)+A162512(n+1)%2]` -/
def P4013813264823633748.Spec : Prop :=
  ∀ n, P4013813264823633748.a n = A088004 (n + 1)

end A088004

/-! ## A088004.P1278529980311038116

`∑[A008683(n+1)+a(A014673(n+1)-1)]` with `a(0)=1`
-/

namespace A088004.P1278529980311038116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A008683 (n + 1) + f1 (A014673 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088004.P1278529980311038116

namespace A088004

/-- `∑[A008683(n+1)+a(A014673(n+1)-1)]` -/
def P1278529980311038116.Spec : Prop :=
  ∀ n, P1278529980311038116.a n = A088004 (n + 1)

end A088004

/-! ## A088004.P10455187384339550137

`∑[(A000005(A014963(n+1))*A008683(n+1))%2]`
-/

namespace A088004.P10455187384339550137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (A014963 (n + 1)).toNat * A008683 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088004.P10455187384339550137

namespace A088004

/-- `∑[(A000005(A014963(n+1))*A008683(n+1))%2]` -/
def P10455187384339550137.Spec : Prop :=
  ∀ n, P10455187384339550137.a n = A088004 (n + 1)

end A088004

/-! ## A088004.P8176558225106333475

`A002321(n+1)+A065515(n+1)-A085501(n+1)`
-/

namespace A088004.P8176558225106333475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (n + 1) + (A065515 (n + 1) - A085501 (n + 1))

end

end A088004.P8176558225106333475

namespace A088004

/-- `A002321(n+1)+A065515(n+1)-A085501(n+1)` -/
def P8176558225106333475.Spec : Prop :=
  ∀ n, P8176558225106333475.a n = A088004 (n + 1)

end A088004

/-! ## A088004.P6541670806989958483

`∑[A010051(n+1)+((A007814(n+1)+1)*A092673(n+1))%3]`
-/

namespace A088004.P6541670806989958483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) + Int.tmod ((A007814 (n + 1) + 1) * A092673 (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088004.P6541670806989958483

namespace A088004

/-- `∑[A010051(n+1)+((A007814(n+1)+1)*A092673(n+1))%3]` -/
def P6541670806989958483.Spec : Prop :=
  ∀ n, P6541670806989958483.a n = A088004 (n + 1)

end A088004

/-! ## A088004.P6926863526335370591

`A230980(n+1)+A002321(n+1)`
-/

namespace A088004.P6926863526335370591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (n + 1) + A002321 (n + 1)

end

end A088004.P6926863526335370591

namespace A088004

/-- `A230980(n+1)+A002321(n+1)` -/
def P6926863526335370591.Spec : Prop :=
  ∀ n, P6926863526335370591.a n = A088004 (n + 1)

end A088004

/-! ## A088004.P17307993367484854766

`A055679(2*(n+1))+∑[A008683(n+1)]`
-/

namespace A088004.P17307993367484854766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (2 * (n + 1)) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088004.P17307993367484854766

namespace A088004

/-- `A055679(2*(n+1))+∑[A008683(n+1)]` -/
def P17307993367484854766.Spec : Prop :=
  ∀ n, P17307993367484854766.a n = A088004 (n + 1)

end A088004

/-! ## A088004.P14449560496247135121

`∑[A008683(A103164(n+1))]`
-/

namespace A088004.P14449560496247135121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A103164 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088004.P14449560496247135121

namespace A088004

/-- `∑[A008683(A103164(n+1))]` -/
def P14449560496247135121.Spec : Prop :=
  ∀ n, P14449560496247135121.a n = A088004 (n + 1)

end A088004

/-! ## A088004.P11660682062651803762

`∑[A008683((n+1)*A014963(n+1))]`
-/

namespace A088004.P11660682062651803762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((n + 1 : ℤ) * A014963 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088004.P11660682062651803762

namespace A088004

/-- `∑[A008683((n+1)*A014963(n+1))]` -/
def P11660682062651803762.Spec : Prop :=
  ∀ n, P11660682062651803762.a n = A088004 (n + 1)

end A088004

/-! ## A088004.P17655081688513173476

`∑[A008683((n+1)/∏{d}[n+1, #^A008683(#)])]`
-/

namespace A088004.P17655081688513173476
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (∏ d ∈ Nat.divisors (f2 n), (d : ℚ) ^ (A008683 d : ℤ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088004.P17655081688513173476

namespace A088004

/-- `∑[A008683((n+1)/∏{d}[n+1, #^A008683(#)])]` -/
def P17655081688513173476.Spec : Prop :=
  ∀ n, P17655081688513173476.a n = A088004 (n + 1)

end A088004

/-! ## A088004.P6209362614840180787

`∑[A008683(n+1)*A008683(A066048(n+1))]`
-/

namespace A088004.P6209362614840180787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A008683 (A066048 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088004.P6209362614840180787

namespace A088004

/-- `∑[A008683(n+1)*A008683(A066048(n+1))]` -/
def P6209362614840180787.Spec : Prop :=
  ∀ n, P6209362614840180787.a n = A088004 (n + 1)

end A088004

/-! ## A088004.P15978722597180577332

`∑[A008683(n+1)*A008683(A133790(n+1))]`
-/

namespace A088004.P15978722597180577332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A008683 (A133790 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088004.P15978722597180577332

namespace A088004

/-- `∑[A008683(n+1)*A008683(A133790(n+1))]` -/
def P15978722597180577332.Spec : Prop :=
  ∀ n, P15978722597180577332.a n = A088004 (n + 1)

end A088004

/-!
# A088005: Numbers whose abundance is (+-1) times a prime.

The programs for A088005, there is no canonical definition to state claims against.
-/

/-! ## A088005.P16082400899456145372

`eq[1, ∑{e}[A033879(n+1), #]]+1`
-/

namespace A088005.P16082400899456145372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A088005.P16082400899456145372

/-! ## A088005.P7440055937208304257

`eq[1, ∑{e}[A033880(n+1), #]]+1`
-/

namespace A088005.P7440055937208304257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A088005.P7440055937208304257

/-! ## A088005.P16440843254887067166

`eq[1, ∑{e}[A235796(n+1)+1, #]]+1`
-/

namespace A088005.P16440843254887067166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235796 (n + 1) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A088005.P16440843254887067166

/-!
# A088006: Abundance values of numbers whose abundance is (+-1) times a prime.

The programs for A088006, there is no canonical definition to state claims against.
-/

/-! ## A088006.P9470511807806042269

`A033880(A088005(n+1))`
-/

namespace A088006.P9470511807806042269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (A088005 (n + 1)).toNat

end

end A088006.P9470511807806042269

/-! ## A088006.P8003831273242331864

`A000007(n+1)-A033879(A088005(n+1))`
-/

namespace A088006.P8003831273242331864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A033879 (A088005 (n + 1)).toNat

end

end A088006.P8003831273242331864

/-! ## A088006.P3882586667440777811

`A008683(4*(n+1))-A033879(A088005(n+1))`
-/

namespace A088006.P3882586667440777811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (4 * (n + 1)) - A033879 (A088005 (n + 1)).toNat

end

end A088006.P3882586667440777811

/-! ## A088006.P14278500454817686036

`C(2, A000203(n+2))-A033879(A088005(n+1))`
-/

namespace A088006.P14278500454817686036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (A000203 (n + 2)).toNat : ℤ) - A033879 (A088005 (n + 1)).toNat

end

end A088006.P14278500454817686036

/-! ## A088006.P7393442973628007067

`A001222(gcd(n, n+1))-A033879(A088005(n+1))`
-/

namespace A088006.P7393442973628007067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.gcd n (n + 1)) - A033879 (A088005 (n + 1)).toNat

end

end A088006.P7393442973628007067

/-! ## A088006.P3244574782835370944

`C(n, A000040(n+1))-A033879(A088005(n+1))`
-/

namespace A088006.P3244574782835370944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n (A000040 (n + 1)).toNat : ℤ) - A033879 (A088005 (n + 1)).toNat

end

end A088006.P3244574782835370944

/-!
# A088007: Numbers n such that abs(sigma(n) - 2n) <= sqrt(n).

The programs for A088007, the canonical program `A088007.P4474793135921286268` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088007 has offset 1).

The definition of A088007 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 886 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088007.P4474793135921286268

`lt[A033879(n+1)², n+2]+1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A088007

/-- `lt[A033879(n+1)², n+2]+1` -/
def P4474793135921286268.Spec : Prop :=
  ∀ n, (P4474793135921286268.a n : ℤ) = A088007 (n + 1)

theorem P4474793135921286268.correct : P4474793135921286268.Spec := by
  intro n
  simp only [A088007, Nat.add_sub_cancel]

end A088007

/-! ## A088007.P8824124734682371594

`lt[A033880(n+1)², n+2]+1`
-/

namespace A088007.P8824124734682371594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A088007.P8824124734682371594

namespace A088007

/-- `lt[A033880(n+1)², n+2]+1` -/
def P8824124734682371594.Spec : Prop :=
  ∀ n, (P8824124734682371594.a n : ℤ) = A088007 (n + 1)

end A088007

/-! ## A088007.P2187520233723749347

`lt[A033880(A028310(n))², n+1]`
-/

namespace A088007.P2187520233723749347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (A028310 n).toNat ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A088007.P2187520233723749347

namespace A088007

/-- `lt[A033880(A028310(n))², n+1]` -/
def P2187520233723749347.Spec : Prop :=
  ∀ n, (P2187520233723749347.a n : ℤ) = A088007 (n + 1)

end A088007

/-! ## A088007.P2210085813616695779

`lt[A033879(A000007(n)+n)², n+1]`
-/

namespace A088007.P2210085813616695779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (A000007 n + (n : ℤ)).toNat ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A088007.P2210085813616695779

namespace A088007

/-- `lt[A033879(A000007(n)+n)², n+1]` -/
def P2210085813616695779.Spec : Prop :=
  ∀ n, (P2210085813616695779.a n : ℤ) = A088007 (n + 1)

end A088007

/-! ## A088007.P6938350985305522309

`lt[A033880(A065033(2*n))², n+1]`
-/

namespace A088007.P6938350985305522309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (A065033 (2 * n)).toNat ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A088007.P6938350985305522309

namespace A088007

/-- `lt[A033880(A065033(2*n))², n+1]` -/
def P6938350985305522309.Spec : Prop :=
  ∀ n, (P6938350985305522309.a n : ℤ) = A088007 (n + 1)

end A088007

/-! ## A088007.P11885560630325992077

`lt[A033880(A233583(n+1))², n+1]`
-/

namespace A088007.P11885560630325992077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (A233583 (n + 1)).toNat ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A088007.P11885560630325992077

namespace A088007

/-- `lt[A033880(A233583(n+1))², n+1]` -/
def P11885560630325992077.Spec : Prop :=
  ∀ n, (P11885560630325992077.a n : ℤ) = A088007 (n + 1)

end A088007

/-!
# A088008: Solutions to sigma(x) - 2x <= x^(1/3), both even and odd. Abundance-radius = abs(sigma(n)-2n) does not exceed 3rd root of n.

The programs for A088008, there is no canonical definition to state claims against.
-/

/-! ## A088008.P5577408721695993122

`record[and(A276696(n), A276716(3*n+1))]`
-/

namespace A088008.P5577408721695993122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A276696 n) (A276716 (3 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088008.P5577408721695993122

/-! ## A088008.P4324426969123761701

`record[and(A014320(n+1), A031285(n))]`
-/

namespace A088008.P4324426969123761701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014320 (n + 1)) (A031285 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088008.P4324426969123761701

/-! ## A088008.P5615812066879732523

`∑[A001227(A173380(n))]`
-/

namespace A088008.P5615812066879732523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A173380 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088008.P5615812066879732523

/-! ## A088008.P872279909543076738

`record[A000005(A077588(n))]`
-/

namespace A088008.P872279909543076738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A077588 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088008.P872279909543076738

/-! ## A088008.P17917228856171466470

`filter[A392463(n+2), A087429(#)]`
-/

namespace A088008.P17917228856171466470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392463 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087429 (f1 j).toNat = 1) n)

end

end A088008.P17917228856171466470

/-!
# A088009: Number of "sets of odd lists", cf. A000262.

The programs for A088009, there is no canonical definition to state claims against.
-/

/-! ## A088009.P1800473795379055701

`abs(A293532(n))`
-/

namespace A088009.P1800473795379055701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A293532 n|

end

end A088009.P1800473795379055701

/-! ## A088009.P8212663711884795198

`A293525(∑[n+2]-1)`
-/

namespace A088009.P8212663711884795198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293525 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A088009.P8212663711884795198

/-! ## A088009.P15832267992198216180

`abs(A293530(∑[n+2]-1))`
-/

namespace A088009.P15832267992198216180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A293530 (∑ j ∈ Finset.range (n + 1), f1 j - 1)|

end

end A088009.P15832267992198216180

/-! ## A088009.P12547090570554485512

`A033999(n)*A293532(n)`
-/

namespace A088009.P12547090570554485512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A293532 n

end

end A088009.P12547090570554485512

/-! ## A088009.P8270335624901838501

`gcd(A000038(n), A293532(n))`
-/

namespace A088009.P8270335624901838501
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A293532 n)

end

end A088009.P8270335624901838501

/-! ## A088009.P12806497469461047195

`lcm(A007318(∑[n]), A293532(n))`
-/

namespace A088009.P12806497469461047195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 (∑ j ∈ Finset.range (n + 1), f1 j)) (A293532 n)

end

end A088009.P12806497469461047195

/-! ## A088009.P619505645431388689

`A110514(C(n, or(1, n)))*A293532(n)`
-/

namespace A088009.P619505645431388689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 (Nat.choose n (Nat.lor 1 n)) * A293532 n

end

end A088009.P619505645431388689

/-!
# A088010: Odd numbers k such that abs(sigma(k)-2k) <= k^(1/3). Abundance-radius = abs(sigma(k)-2k) does not exceed cubic root of k and k is odd.

The programs for A088010, there is no canonical definition to state claims against.
-/

/-! ## A088010.P6809110723913835094

`∩[A087415(n+1), A088008(n+1)]`
-/

namespace A088010.P6809110723913835094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087415 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088008 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088010.P6809110723913835094

/-! ## A088010.P2600993918773293815

`A171929(∑[A196931(2*(n+2))!])`
-/

namespace A088010.P2600993918773293815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A196931 (2 * (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171929 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A088010.P2600993918773293815

/-!
# A088011: Even and odd solutions to abs(sigma(x)-2x) <= log(x). Numbers n whose abundance-radius does not exceed log(n).

The programs for A088011, there is no canonical definition to state claims against.
-/

/-! ## A088011.P11925257939953302903

`∩[A088008(n+1), A117347(n+1)]`
-/

namespace A088011.P11925257939953302903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117347 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088011.P11925257939953302903

/-! ## A088011.P15782938292328580745

`∩[A088007(n+1), A117347(n+1)]`
-/

namespace A088011.P15782938292328580745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117347 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088011.P15782938292328580745

/-! ## A088011.P18164294961034365613

`∩[A088007(n+1), A117346(n+2)]`
-/

namespace A088011.P18164294961034365613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117346 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088011.P18164294961034365613

/-! ## A088011.P7388712539492693641

`filter[A117347(n+1), A168185(#)]`
-/

namespace A088011.P7388712539492693641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168185 (f1 j).toNat = 1) n)

end

end A088011.P7388712539492693641

/-! ## A088011.P14787175605537234460

`∩[A081311(n+1), A117347(n+1)]`
-/

namespace A088011.P14787175605537234460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117347 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088011.P14787175605537234460

/-!
# A088012: Odd solutions to abs(sigma(k) - 2k) <= log(k). Numbers k whose abundance-radius does not exceed log(k).

The programs for A088012, there is no canonical definition to state claims against.
-/

/-! ## A088012.P11794311114595573069

`∩[A088010(n+1), A117349(n+1)]`
-/

namespace A088012.P11794311114595573069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088012.P11794311114595573069

/-! ## A088012.P6746943183189600419

`∩[A088010(n+1), A117350(n+1)]`
-/

namespace A088012.P6746943183189600419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088012.P6746943183189600419

/-! ## A088012.P4487293809297901879

`∩[A117349(n+1), A171929(n+1)]`
-/

namespace A088012.P4487293809297901879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088012.P4487293809297901879

/-!
# A088013: Binomial transform of A001541 (with interpolated zeros).

The programs for A088013, the canonical program `A088013.P10294387570680607669` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088013 has offset 0).

The definition of A088013 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A088013.P10294387570680607669

`(sqrt(2)^n+(-sqrt(2))^n+(2+sqrt(2))^n+(2-sqrt(2))^n)/4`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A088013

/-- `(sqrt(2)^n+(-sqrt(2))^n+(2+sqrt(2))^n+(2-sqrt(2))^n)/4` -/
def P10294387570680607669.Spec : Prop :=
  ∀ n, P10294387570680607669.a n = (A088013 n : ℝ)

end A088013

/-! ## A088013.P10774499828701628582

`A084154(n)+A077957(n)`
-/

namespace A088013.P10774499828701628582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084154 n + A077957 n

end

end A088013.P10774499828701628582

namespace A088013

/-- `A084154(n)+A077957(n)` -/
def P10774499828701628582.Spec : Prop :=
  ∀ n, P10774499828701628582.a n = A088013 n

end A088013

/-! ## A088013.P17848772556221478884

`A006012(n)-A084154(n)`
-/

namespace A088013.P17848772556221478884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006012 n - A084154 n

end

end A088013.P17848772556221478884

namespace A088013

/-- `A006012(n)-A084154(n)` -/
def P17848772556221478884.Spec : Prop :=
  ∀ n, P17848772556221478884.a n = A088013 n

end A088013

/-! ## A088013.P7863174993795693609

`A084154(n)+Δ[A060546(n)]`
-/

namespace A088013.P7863174993795693609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084154 n + (f1 (n + 1) - f1 n)

end

end A088013.P7863174993795693609

namespace A088013

/-- `A084154(n)+Δ[A060546(n)]` -/
def P7863174993795693609.Spec : Prop :=
  ∀ n, P7863174993795693609.a n = A088013 n

end A088013

/-! ## A088013.P11347981158925058215

`∑[A204089(n)]-A084154(n)`
-/

namespace A088013.P11347981158925058215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A084154 n

end

end A088013.P11347981158925058215

namespace A088013

/-- `∑[A204089(n)]-A084154(n)` -/
def P11347981158925058215.Spec : Prop :=
  ∀ n, P11347981158925058215.a n = A088013 n

end A088013

/-! ## A088013.P10840176648801997226

`A094038(n+1)-A062112(2*n)`
-/

namespace A088013.P10840176648801997226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094038 (n + 1) - A062112 (2 * n)

end

end A088013.P10840176648801997226

namespace A088013

/-- `A094038(n+1)-A062112(2*n)` -/
def P10840176648801997226.Spec : Prop :=
  ∀ n, P10840176648801997226.a n = A088013 n

end A088013

/-! ## A088013.P16639936922611528616

`A094038(n+1)+A007052(n)-A007070(n)`
-/

namespace A088013.P16639936922611528616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094038 (n + 1) + (A007052 n - A007070 n)

end

end A088013.P16639936922611528616

namespace A088013

/-- `A094038(n+1)+A007052(n)-A007070(n)` -/
def P16639936922611528616.Spec : Prop :=
  ∀ n, P16639936922611528616.a n = A088013 n

end A088013

/-!
# A088014: Expansion of e.g.f.: cosh(sqrt(2)*x)*(1+exp(x)).

The programs for A088014, the canonical program `A088014.P12240766691225576904` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088014 has offset 0).

The definition of A088014 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A088014.P12240766691225576904

`2*a(n-1)+3*a(n-2)-4*a(n-3)-2*a(n-4)` with `a(0)=2, a(1)=1, a(2)=5, a(3)=7`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A088014

/-- `2*a(n-1)+3*a(n-2)-4*a(n-3)-2*a(n-4)` -/
def P12240766691225576904.Spec : Prop :=
  ∀ n, P12240766691225576904.a n = A088014 n

theorem P12240766691225576904.correct : P12240766691225576904.Spec := by
  intro n
  simp only [A088014]

end A088014

/-! ## A088014.P3394461739173599492

`ogf((2-3x-3x^2+2x^3)/(1-2x-3x^2+4x^3+2x^4))`
-/

namespace A088014.P3394461739173599492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -3, -3, 2] [1, -2, -3, 4, 2] n

end

end A088014.P3394461739173599492

namespace A088014

/-- `ogf((2-3x-3x^2+2x^3)/(1-2x-3x^2+4x^3+2x^4))` -/
def P3394461739173599492.Spec : Prop :=
  ∀ n, P3394461739173599492.a n = A088014 n

end A088014

/-! ## A088014.P16524304279643042909

`A088015(n)+1`
-/

namespace A088014.P16524304279643042909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088015 n + 1

end

end A088014.P16524304279643042909

namespace A088014

/-- `A088015(n)+1` -/
def P16524304279643042909.Spec : Prop :=
  ∀ n, P16524304279643042909.a n = A088014 n

theorem P16524304279643042909.correct : P16524304279643042909.Spec := by
  intro n
  simp only [A088014, Nat.add_sub_cancel, A088014.P16524304279643042909.a, A088014.P12240766691225576904.a, A088015, A088015.P3925742208914551685.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A088014

/-! ## A088014.P17216580621821520595

`A077957(n)+A001333(n)`
-/

namespace A088014.P17216580621821520595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 n + A001333 n

end

end A088014.P17216580621821520595

namespace A088014

/-- `A077957(n)+A001333(n)` -/
def P17216580621821520595.Spec : Prop :=
  ∀ n, P17216580621821520595.a n = A088014 n

end A088014

/-! ## A088014.P7141013705630331514

`A293004(n)+A052552(n)`
-/

namespace A088014.P7141013705630331514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293004 n + A052552 n

end

end A088014.P7141013705630331514

namespace A088014

/-- `A293004(n)+A052552(n)` -/
def P7141013705630331514.Spec : Prop :=
  ∀ n, P7141013705630331514.a n = A088014 n

end A088014

/-! ## A088014.P13796715084515950302

`A131575(n+1)+A001333(n)`
-/

namespace A088014.P13796715084515950302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131575 (n + 1) + A001333 n

end

end A088014.P13796715084515950302

namespace A088014

/-- `A131575(n+1)+A001333(n)` -/
def P13796715084515950302.Spec : Prop :=
  ∀ n, P13796715084515950302.a n = A088014 n

end A088014

/-! ## A088014.P14594923340045472605

`A077957(n)+A293004(n)+1`
-/

namespace A088014.P14594923340045472605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 n + (A293004 n + 1)

end

end A088014.P14594923340045472605

namespace A088014

/-- `A077957(n)+A293004(n)+1` -/
def P14594923340045472605.Spec : Prop :=
  ∀ n, P14594923340045472605.a n = A088014 n

end A088014

/-! ## A088014.P166477697476697900

`A119016(2*n)+A077957(n)`
-/

namespace A088014.P166477697476697900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119016 (2 * n) + A077957 n

end

end A088014.P166477697476697900

namespace A088014

/-- `A119016(2*n)+A077957(n)` -/
def P166477697476697900.Spec : Prop :=
  ∀ n, P166477697476697900.a n = A088014 n

end A088014

/-! ## A088014.P5557374616465954510

`A001333(n)+Δ[Δ[A027383(n)]]`
-/

namespace A088014.P5557374616465954510
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n + (f1 (n + 1) - f1 n)

end

end A088014.P5557374616465954510

namespace A088014

/-- `A001333(n)+Δ[Δ[A027383(n)]]` -/
def P5557374616465954510.Spec : Prop :=
  ∀ n, P5557374616465954510.a n = A088014 n

end A088014

/-! ## A088014.P4062913216787655595

`A001333(n)+Δ[A016116(n+1)]`
-/

namespace A088014.P4062913216787655595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n + (f1 (n + 1) - f1 n)

end

end A088014.P4062913216787655595

namespace A088014

/-- `A001333(n)+Δ[A016116(n+1)]` -/
def P4062913216787655595.Spec : Prop :=
  ∀ n, P4062913216787655595.a n = A088014 n

end A088014

/-! ## A088014.P303574209405104590

`A005418(n+2)+A001333(n)-A051437(n)`
-/

namespace A088014.P303574209405104590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (n + 2) + (A001333 n - A051437 n)

end

end A088014.P303574209405104590

namespace A088014

/-- `A005418(n+2)+A001333(n)-A051437(n)` -/
def P303574209405104590.Spec : Prop :=
  ∀ n, P303574209405104590.a n = A088014 n

end A088014

/-! ## A088014.P8136668400666156482

`A001333(n)+A103424(n+1)/A135530(n)`
-/

namespace A088014.P8136668400666156482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001333 n : ℚ) + (A103424 (n + 1) : ℚ) / (A135530 n : ℚ)

end

end A088014.P8136668400666156482

namespace A088014

/-- `A001333(n)+A103424(n+1)/A135530(n)` -/
def P8136668400666156482.Spec : Prop :=
  ∀ n, P8136668400666156482.a n = (A088014 n : ℚ)

end A088014

/-! ## A088014.P2334552012509799568

`(sqrt(2)^n+(-sqrt(2))^n+(1+sqrt(2))^n+(1-sqrt(2))^n)/2`
-/

namespace A088014.P2334552012509799568
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (2 : ℝ) ^ n + (-Real.sqrt (2 : ℝ)) ^ n + (1 + Real.sqrt (2 : ℝ)) ^ n + (1 - Real.sqrt (2 : ℝ)) ^ n) / 2

end

end A088014.P2334552012509799568

namespace A088014

/-- `(sqrt(2)^n+(-sqrt(2))^n+(1+sqrt(2))^n+(1-sqrt(2))^n)/2` -/
def P2334552012509799568.Spec : Prop :=
  ∀ n, P2334552012509799568.a n = (A088014 n : ℝ)

theorem P2334552012509799568.correct : P2334552012509799568.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A088014, Nat.add_sub_cancel, A088014.P2334552012509799568.a, A088014.P12240766691225576904.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A088014, Nat.add_sub_cancel, A088014.P2334552012509799568.a, A088014.P12240766691225576904.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A088014

/-! ## A088014.P15057155645047251017

`A077957(n)+Δ[A000129(n)]`
-/

namespace A088014.P15057155645047251017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 n + (f1 (n + 1) - f1 n)

end

end A088014.P15057155645047251017

namespace A088014

/-- `A077957(n)+Δ[A000129(n)]` -/
def P15057155645047251017.Spec : Prop :=
  ∀ n, P15057155645047251017.a n = A088014 n

end A088014

/-! ## A088014.P15147061311451417314

`Δ[A000129(n)+Δ[A027383(n)]]`
-/

namespace A088014.P15147061311451417314
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088014.P15147061311451417314

namespace A088014

/-- `Δ[A000129(n)+Δ[A027383(n)]]` -/
def P15147061311451417314.Spec : Prop :=
  ∀ n, P15147061311451417314.a n = A088014 n

end A088014

/-! ## A088014.P15861836914187181110

`Δ[A016116(n+1)+A000129(n)]`
-/

namespace A088014.P15861836914187181110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (n + 1) + A000129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088014.P15861836914187181110

namespace A088014

/-- `Δ[A016116(n+1)+A000129(n)]` -/
def P15861836914187181110.Spec : Prop :=
  ∀ n, P15861836914187181110.a n = A088014 n

end A088014

/-! ## A088014.P8474599291517666285

`A016116(n)+A052542(n)-a(n-1)` with `a(0)=2`
-/

namespace A088014.P8474599291517666285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A016116 n + (A052542 n - a (n - 1))

end

end A088014.P8474599291517666285

namespace A088014

/-- `A016116(n)+A052542(n)-a(n-1)` -/
def P8474599291517666285.Spec : Prop :=
  ∀ n, P8474599291517666285.a n = A088014 n

end A088014

/-! ## A088014.P15408449029253492496

`A000129(n+1)+A077957(n)-A000129(n)`
-/

namespace A088014.P15408449029253492496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) + (A077957 n - A000129 n)

end

end A088014.P15408449029253492496

namespace A088014

/-- `A000129(n+1)+A077957(n)-A000129(n)` -/
def P15408449029253492496.Spec : Prop :=
  ∀ n, P15408449029253492496.a n = A088014 n

end A088014

/-! ## A088014.P11797542805746025175

`A000129(n+1)+A131575(n+1)-A000129(n)`
-/

namespace A088014.P11797542805746025175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) + (A131575 (n + 1) - A000129 n)

end

end A088014.P11797542805746025175

namespace A088014

/-- `A000129(n+1)+A131575(n+1)-A000129(n)` -/
def P11797542805746025175.Spec : Prop :=
  ∀ n, P11797542805746025175.a n = A088014 n

end A088014

/-!
# A088015: Expansion of e.g.f. cosh(sqrt(2)*x) + exp(x)*(cosh(sqrt(2)*x) - 1).

The programs for A088015, the canonical program `A088015.P3925742208914551685` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088015 has offset 0).

The definition of A088015 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A088015.P3925742208914551685

`A088014(n)-1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A088015

/-- `A088014(n)-1` -/
def P3925742208914551685.Spec : Prop :=
  ∀ n, P3925742208914551685.a n = A088015 n

theorem P3925742208914551685.correct : P3925742208914551685.Spec := by
  intro n
  simp only [A088015]

end A088015

/-! ## A088015.P9047940731697471718

`A293004(n)+A077957(n)`
-/

namespace A088015.P9047940731697471718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293004 n + A077957 n

end

end A088015.P9047940731697471718

namespace A088015

/-- `A293004(n)+A077957(n)` -/
def P9047940731697471718.Spec : Prop :=
  ∀ n, P9047940731697471718.a n = A088015 n

end A088015

/-! ## A088015.P14455359635778824888

`A001333(n)+A077957(n)-1`
-/

namespace A088015.P14455359635778824888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n + (A077957 n - 1)

end

end A088015.P14455359635778824888

namespace A088015

/-- `A001333(n)+A077957(n)-1` -/
def P14455359635778824888.Spec : Prop :=
  ∀ n, P14455359635778824888.a n = A088015 n

end A088015

/-! ## A088015.P16142056048630274894

`A052552(n)+A293004(n)-1`
-/

namespace A088015.P16142056048630274894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052552 n + (A293004 n - 1)

end

end A088015.P16142056048630274894

namespace A088015

/-- `A052552(n)+A293004(n)-1` -/
def P16142056048630274894.Spec : Prop :=
  ∀ n, P16142056048630274894.a n = A088015 n

end A088015

/-! ## A088015.P12065709785074195558

`Δ[A016116(n+1)]+A001333(n)-1`
-/

namespace A088015.P12065709785074195558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A001333 n - 1)

end

end A088015.P12065709785074195558

namespace A088015

/-- `Δ[A016116(n+1)]+A001333(n)-1` -/
def P12065709785074195558.Spec : Prop :=
  ∀ n, P12065709785074195558.a n = A088015 n

end A088015

/-! ## A088015.P12357353442490639470

`A001333(n)+A052551(n)-A016116(n+1)`
-/

namespace A088015.P12357353442490639470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n + (A052551 n - A016116 (n + 1))

end

end A088015.P12357353442490639470

namespace A088015

/-- `A001333(n)+A052551(n)-A016116(n+1)` -/
def P12357353442490639470.Spec : Prop :=
  ∀ n, P12357353442490639470.a n = A088015 n

end A088015

/-! ## A088015.P16838302032393141989

`(sqrt(2)^n+(-sqrt(2))^n+(1+sqrt(2))^n+(1-sqrt(2))^n)/2-1`
-/

namespace A088015.P16838302032393141989
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (2 : ℝ) ^ n + (-Real.sqrt (2 : ℝ)) ^ n + (1 + Real.sqrt (2 : ℝ)) ^ n + (1 - Real.sqrt (2 : ℝ)) ^ n) / 2 - 1

end

end A088015.P16838302032393141989

namespace A088015

/-- `(sqrt(2)^n+(-sqrt(2))^n+(1+sqrt(2))^n+(1-sqrt(2))^n)/2-1` -/
def P16838302032393141989.Spec : Prop :=
  ∀ n, P16838302032393141989.a n = (A088015 n : ℝ)

end A088015

/-! ## A088015.P2918347952864028819

`Δ[A016116(n+1)+A000129(n)-n]`
-/

namespace A088015.P2918347952864028819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (n + 1) + (A000129 n - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088015.P2918347952864028819

namespace A088015

/-- `Δ[A016116(n+1)+A000129(n)-n]` -/
def P2918347952864028819.Spec : Prop :=
  ∀ n, P2918347952864028819.a n = A088015 n

end A088015

/-!
# A088016: To obtain a(n+1), add the square of the n-th partial sum to the n-th partial sum of the squares, then divide this result by a(n), for all n >= 0, with a(0)=1.

The programs for A088016, the canonical program `A088016.P5973030174995930297` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088016 has offset 0).

The definition of A088016 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A088016.P5973030174995930297

`3*a(n-1)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=6, a(3)=17`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A088016

/-- `3*a(n-1)+a(n-2)-a(n-3)` -/
def P5973030174995930297.Spec : Prop :=
  ∀ n, P5973030174995930297.a n = A088016 n

theorem P5973030174995930297.correct : P5973030174995930297.Spec := by
  intro n
  simp only [A088016]

end A088016

/-! ## A088016.P5245493624110797306

`ogf((1-2x+2x^2-x^3)/(1-3x-x^2+x^3))`
-/

namespace A088016.P5245493624110797306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 2, -1] [1, -3, -1, 1] n

end

end A088016.P5245493624110797306

namespace A088016

/-- `ogf((1-2x+2x^2-x^3)/(1-3x-x^2+x^3))` -/
def P5245493624110797306.Spec : Prop :=
  ∀ n, P5245493624110797306.a n = A088016 n

end A088016

/-! ## A088016.P16062324660685661372

`Δ[(2*A181301(n))%A033505(n)]`
-/

namespace A088016.P16062324660685661372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A181301 n) (A033505 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088016.P16062324660685661372

namespace A088016

/-- `Δ[(2*A181301(n))%A033505(n)]` -/
def P16062324660685661372.Spec : Prop :=
  ∀ n, P16062324660685661372.a n = A088016 n

end A088016

/-! ## A088016.P739602488288758097

`A030186(n)+Δ[A181301(n)-A030186(n)]`
-/

namespace A088016.P739602488288758097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181301 n - A030186 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030186 n + (f1 (n + 1) - f1 n)

end

end A088016.P739602488288758097

namespace A088016

/-- `A030186(n)+Δ[A181301(n)-A030186(n)]` -/
def P739602488288758097.Spec : Prop :=
  ∀ n, P739602488288758097.a n = A088016 n

end A088016

/-! ## A088016.P5456265341089169800

`A030186(n)-A030186(n+1)%A030186(n)`
-/

namespace A088016.P5456265341089169800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030186 n - Int.tmod (A030186 (n + 1)) (A030186 n)

end

end A088016.P5456265341089169800

namespace A088016

/-- `A030186(n)-A030186(n+1)%A030186(n)` -/
def P5456265341089169800.Spec : Prop :=
  ∀ n, P5456265341089169800.a n = A088016 n

end A088016

/-! ## A088016.P502234801552083667

`Δ[(3*A033505(n))%A030186(n)]`
-/

namespace A088016.P502234801552083667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 * A033505 n) (A030186 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088016.P502234801552083667

namespace A088016

/-- `Δ[(3*A033505(n))%A030186(n)]` -/
def P502234801552083667.Spec : Prop :=
  ∀ n, P502234801552083667.a n = A088016 n

end A088016

/-! ## A088016.P17393694652924967471

`Δ[(3*Δ[A287275(n+1)])%A030186(n)]`
-/

namespace A088016.P17393694652924967471
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287275 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 * (f2 (n + 1) - f2 n)) (A030186 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088016.P17393694652924967471

namespace A088016

/-- `Δ[(3*Δ[A287275(n+1)])%A030186(n)]` -/
def P17393694652924967471.Spec : Prop :=
  ∀ n, P17393694652924967471.a n = A088016 n

end A088016

/-! ## A088016.P17325430764779747408

`Δ[(3*Δ[A061534(n)/2])%A030186(n)]`
-/

namespace A088016.P17325430764779747408
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061534 n : ℚ) / 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (3 * (f2 (n + 1) - f2 n))) (A030186 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088016.P17325430764779747408

namespace A088016

/-- `Δ[(3*Δ[A061534(n)/2])%A030186(n)]` -/
def P17325430764779747408.Spec : Prop :=
  ∀ n, P17325430764779747408.a n = A088016 n

end A088016

/-! ## A088016.P15094736515811458040

`Δ[(3*A181301(n+1)/2)%A030186(n)]`
-/

namespace A088016.P15094736515811458040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (3 * ((A181301 (n + 1) : ℚ) / 2))) (A030186 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088016.P15094736515811458040

namespace A088016

/-- `Δ[(3*A181301(n+1)/2)%A030186(n)]` -/
def P15094736515811458040.Spec : Prop :=
  ∀ n, P15094736515811458040.a n = A088016 n

end A088016

/-! ## A088016.P18288177922227373131

`Δ[(A181301(n)+A033505(n))%A030186(n)]`
-/

namespace A088016.P18288177922227373131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181301 n + A033505 n) (A030186 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088016.P18288177922227373131

namespace A088016

/-- `Δ[(A181301(n)+A033505(n))%A030186(n)]` -/
def P18288177922227373131.Spec : Prop :=
  ∀ n, P18288177922227373131.a n = A088016 n

end A088016

/-!
# A088018: Number of twin-prime pairs between n and 2n (inclusive).

The programs for A088018, the canonical program `A088018.P1872163237001237444` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088018 has offset 1).

The definition of A088018 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088018.P8366290109700702906

`A080356(n+1)-A353463(2*n+1)`
-/

namespace A088018.P8366290109700702906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080356 (n + 1) - A353463 (2 * n + 1)

end

end A088018.P8366290109700702906

namespace A088018

/-- `A080356(n+1)-A353463(2*n+1)` -/
def P8366290109700702906.Spec : Prop :=
  ∀ n, P8366290109700702906.a n = A088018 (n + 1)

end A088018

/-! ## A088018.P9092756029004031462

`∑[A353464(2*n+1)-A353464(n+2)]`
-/

namespace A088018.P9092756029004031462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353464 (2 * n + 1) - A353464 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088018.P9092756029004031462

namespace A088018

/-- `∑[A353464(2*n+1)-A353464(n+2)]` -/
def P9092756029004031462.Spec : Prop :=
  ∀ n, P9092756029004031462.a n = A088018 (n + 1)

end A088018

/-! ## A088018.P1872163237001237444

`A071538(2*A028310(n))-A071538(A028310(n))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A088018

/-- `A071538(2*A028310(n))-A071538(A028310(n))` -/
def P1872163237001237444.Spec : Prop :=
  ∀ n, P1872163237001237444.a n = A088018 (n + 1)

theorem P1872163237001237444.correct : P1872163237001237444.Spec := by
  intro n
  simp only [A088018, Nat.add_sub_cancel]

end A088018

/-! ## A088018.P7677650752194908111

`A071538(A028310(n)+n)-A071538(A028310(n))`
-/

namespace A088018.P7677650752194908111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (A028310 n + (n : ℤ)).toNat - A071538 (A028310 n).toNat

end

end A088018.P7677650752194908111

namespace A088018

/-- `A071538(A028310(n)+n)-A071538(A028310(n))` -/
def P7677650752194908111.Spec : Prop :=
  ∀ n, P7677650752194908111.a n = A088018 (n + 1)

end A088018

/-! ## A088018.P14798127875148814902

`A071538(A004280(n+1))-A071538(A014684(n+1))`
-/

namespace A088018.P14798127875148814902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (A004280 (n + 1)).toNat - A071538 (A014684 (n + 1)).toNat

end

end A088018.P14798127875148814902

namespace A088018

/-- `A071538(A004280(n+1))-A071538(A014684(n+1))` -/
def P14798127875148814902.Spec : Prop :=
  ∀ n, P14798127875148814902.a n = A088018 (n + 1)

end A088018

/-! ## A088018.P8204614941261767662

`A080356(n+1)-Δ[A071538(A004280(n+1))]`
-/

namespace A088018.P8204614941261767662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (A004280 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080356 (n + 1) - (f1 (n + 1) - f1 n)

end

end A088018.P8204614941261767662

namespace A088018

/-- `A080356(n+1)-Δ[A071538(A004280(n+1))]` -/
def P8204614941261767662.Spec : Prop :=
  ∀ n, P8204614941261767662.a n = A088018 (n + 1)

end A088018

/-! ## A088018.P15422048166386075399

`A071538(A004280(n+1))-A071538(A233583(n+1))`
-/

namespace A088018.P15422048166386075399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (A004280 (n + 1)).toNat - A071538 (A233583 (n + 1)).toNat

end

end A088018.P15422048166386075399

namespace A088018

/-- `A071538(A004280(n+1))-A071538(A233583(n+1))` -/
def P15422048166386075399.Spec : Prop :=
  ∀ n, P15422048166386075399.a n = A088018 (n + 1)

end A088018

/-!
# A088019: Number of twin primes between n and 2n (inclusive).

The programs for A088019, the canonical program `A088019.P5378104997926900415` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088019 has offset 1).

The definition of A088019 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088019.P5742211491267567473

`∑[A164292(2*n+1)-char[A001097(n+1)]]`
-/

namespace A088019.P5742211491267567473
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164292 (2 * n + 1) - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088019.P5742211491267567473

namespace A088019

/-- `∑[A164292(2*n+1)-char[A001097(n+1)]]` -/
def P5742211491267567473.Spec : Prop :=
  ∀ n, P5742211491267567473.a n = A088019 (n + 1)

end A088019

/-! ## A088019.P11460717175933414351

`∑[A164292(2*n+1)-char[A077800(n+1)]]`
-/

namespace A088019.P11460717175933414351
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077800 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164292 (2 * n + 1) - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088019.P11460717175933414351

namespace A088019

/-- `∑[A164292(2*n+1)-char[A077800(n+1)]]` -/
def P11460717175933414351.Spec : Prop :=
  ∀ n, P11460717175933414351.a n = A088019 (n + 1)

end A088019

/-! ## A088019.P5378104997926900415

`∑[A164292(2*n+1)-A164292(A093178(n))]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A088019

/-- `∑[A164292(2*n+1)-A164292(A093178(n))]` -/
def P5378104997926900415.Spec : Prop :=
  ∀ n, P5378104997926900415.a n = A088019 (n + 1)

theorem P5378104997926900415.correct : P5378104997926900415.Spec := by
  intro n
  simp only [A088019, Nat.add_sub_cancel]

end A088019

/-! ## A088019.P11311146144165576345

`A001221(lcm(A241312(3*n+4), A304681(n+1)))`
-/

namespace A088019.P11311146144165576345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lcm (A241312 (3 * n + 4)) (A304681 (n + 1)))

end

end A088019.P11311146144165576345

namespace A088019

/-- `A001221(lcm(A241312(3*n+4), A304681(n+1)))` -/
def P11311146144165576345.Spec : Prop :=
  ∀ n, P11311146144165576345.a n = A088019 (n + 1)

end A088019

/-! ## A088019.P954891444393873688

`A001221(A089576(n+1)*A210678(n))`
-/

namespace A088019.P954891444393873688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A089576 (n + 1) * A210678 n).toNat

end

end A088019.P954891444393873688

namespace A088019

/-- `A001221(A089576(n+1)*A210678(n))` -/
def P954891444393873688.Spec : Prop :=
  ∀ n, P954891444393873688.a n = A088019 (n + 1)

end A088019

/-!
# A088020: a(n) = (n^2)!.

The programs for A088020, the canonical program `A088020.P14643316029342449773` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088020 has offset 0).

The definition of A088020 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²!` (program `A088020.P14643316029342449773`, by `A088020.P14643316029342449773.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A088020.P14643316029342449773

`n²!`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A088020

/-- `n²!` -/
def P14643316029342449773.Spec : Prop :=
  ∀ n, (P14643316029342449773.a n : ℤ) = A088020 n

theorem P14643316029342449773.correct : P14643316029342449773.Spec := by
  intro n
  simp only [A088020]

end A088020

/-! ## A088020.P16977285779642731840

`∑{digits}[n, (n*#)!]`
-/

namespace A088020.P16977285779642731840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.factorial (n * x)).sum

end

end A088020.P16977285779642731840

namespace A088020

/-- `∑{digits}[n, (n*#)!]` -/
def P16977285779642731840.Spec : Prop :=
  ∀ n, (P16977285779642731840.a n : ℤ) = A088020 n

end A088020

/-! ## A088020.P4181098971448053993

`∏{digits}[n, (n*#)!]`
-/

namespace A088020.P4181098971448053993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.factorial (n * x)).prod

end

end A088020.P4181098971448053993

namespace A088020

/-- `∏{digits}[n, (n*#)!]` -/
def P4181098971448053993.Spec : Prop :=
  ∀ n, (P4181098971448053993.a n : ℤ) = A088020 n

end A088020

/-! ## A088020.P15693318910727228889

`and((n^ceil(atan(n)))!, -1)`
-/

namespace A088020.P15693318910727228889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.factorial (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ))).toNat : ℤ) (-1)

end

end A088020.P15693318910727228889

namespace A088020

/-- `and((n^ceil(atan(n)))!, -1)` -/
def P15693318910727228889.Spec : Prop :=
  ∀ n, P15693318910727228889.a n = A088020 n

end A088020

/-! ## A088020.P8615178306824030540

`lcm((-1)^n, (n^ceil(atan(n)))!)`
-/

namespace A088020.P8615178306824030540
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (Nat.factorial (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ))).toNat : ℤ)

end

end A088020.P8615178306824030540

namespace A088020

/-- `lcm((-1)^n, (n^ceil(atan(n)))!)` -/
def P8615178306824030540.Spec : Prop :=
  ∀ n, (P8615178306824030540.a n : ℤ) = A088020 n

end A088020

/-!
# A088021: a(n) = (n^2)!/(n!)^2.

The programs for A088021, the canonical program `A088021.P81821641444243776` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088021 has offset 0).

The definition of A088021 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A088021.P81821641444243776

`n²!/n!²`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A088021

/-- `n²!/n!²` -/
def P81821641444243776.Spec : Prop :=
  ∀ n, P81821641444243776.a n = (A088021 n : ℚ)

end A088021

/-! ## A088021.P1386582757279481065

`A127223(n)/n!`
-/

namespace A088021.P1386582757279481065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127223 n : ℚ) / (Nat.factorial n : ℚ)

end

end A088021.P1386582757279481065

namespace A088021

/-- `A127223(n)/n!` -/
def P1386582757279481065.Spec : Prop :=
  ∀ n, P1386582757279481065.a n = (A088021 n : ℚ)

end A088021

/-! ## A088021.P14908797998447494706

`n²!/A001044(n)`
-/

namespace A088021.P14908797998447494706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n ^ 2) : ℚ) / (A001044 n : ℚ)

end

end A088021.P14908797998447494706

namespace A088021

/-- `n²!/A001044(n)` -/
def P14908797998447494706.Spec : Prop :=
  ∀ n, P14908797998447494706.a n = (A088021 n : ℚ)

end A088021

/-! ## A088021.P14223132077438120832

`A046792((n-1)²+n²)`
-/

namespace A088021.P14223132077438120832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046792 (((n : ℤ) - 1) ^ 2 + (n ^ 2 : ℤ)).toNat

end

end A088021.P14223132077438120832

namespace A088021

/-- `A046792((n-1)²+n²)` -/
def P14223132077438120832.Spec : Prop :=
  ∀ n, P14223132077438120832.a n = A088021 n

end A088021

/-! ## A088021.P18233496868193948010

`A096769(A002061(n))`
-/

namespace A088021.P18233496868193948010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096769 (A002061 n).toNat

end

end A088021.P18233496868193948010

namespace A088021

/-- `A096769(A002061(n))` -/
def P18233496868193948010.Spec : Prop :=
  ∀ n, P18233496868193948010.a n = A088021 n

end A088021

/-!
# A088022: a(n) = floor(sum_{k>=0} k^n /(k!)^3); related to generalized Bell numbers.

The programs for A088022, there is no canonical definition to state claims against.
-/

/-! ## A088022.P4030231974568542081

`A003056(∑[(n-2)*a(n-1)+1])` with `a(0)=3`
-/

namespace A088022.P4030231974568542081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  ((n : ℤ) - 2) * f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A088022.P4030231974568542081

/-! ## A088022.P14174056304585071820

`A137734(xor(2, A056569(n)))`
-/

namespace A088022.P14174056304585071820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (Int.xor 2 (A056569 n)).toNat

end

end A088022.P14174056304585071820

/-! ## A088022.P5192324151564564445

`floor(A000196(A328433(n))+acot(n))`
-/

namespace A088022.P5192324151564564445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000196 (A328433 n).toNat : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A088022.P5192324151564564445

/-! ## A088022.P14374240360116579393

`A000194(A030268(n))+C(2, n+2)`
-/

namespace A088022.P14374240360116579393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A030268 n).toNat + (Nat.choose 2 (n + 2) : ℤ)

end

end A088022.P14374240360116579393

/-! ## A088022.P6275346319710324005

`A358451(n)+A014577(A088016(n))`
-/

namespace A088022.P6275346319710324005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358451 n + A014577 (A088016 n).toNat

end

end A088022.P6275346319710324005

/-!
# A088023: Set a(1) = 1. Then take the list of defined initial terms, reverse their order, add 1, 2, 3, ... to the reversed list in succession and append this new list to the right of the previously defined terms. Repeat this process indefinitely.

The programs for A088023, the canonical program `A088023.P13330801702471876640` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088023 has offset 1).

The definition of A088023 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088023.P9098657266768652784

`∑[char[and(n, n-1)+n]]`
-/

namespace A088023.P9098657266768652784
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088023.P9098657266768652784

namespace A088023

/-- `∑[char[and(n, n-1)+n]]` -/
def P9098657266768652784.Spec : Prop :=
  ∀ n, (P9098657266768652784.a n : ℤ) = A088023 (n + 1)

end A088023

/-! ## A088023.P8239329782176790221

`∑[char[2*n-and(n, -n)]]`
-/

namespace A088023.P8239329782176790221
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - Int.land (n : ℤ) (-(n : ℤ))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088023.P8239329782176790221

namespace A088023

/-- `∑[char[2*n-and(n, -n)]]` -/
def P8239329782176790221.Spec : Prop :=
  ∀ n, (P8239329782176790221.a n : ℤ) = A088023 (n + 1)

end A088023

/-! ## A088023.P15003908158964773996

`∑[char[or(n, -n)+2*n]]`
-/

namespace A088023.P15003908158964773996
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-(n : ℤ)) + (2 * n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088023.P15003908158964773996

namespace A088023

/-- `∑[char[or(n, -n)+2*n]]` -/
def P15003908158964773996.Spec : Prop :=
  ∀ n, (P15003908158964773996.a n : ℤ) = A088023 (n + 1)

end A088023

/-! ## A088023.P14891646668249414794

`∑[char[and(n, xor(n, -n)-1)]]`
-/

namespace A088023.P14891646668249414794
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (Int.xor (n : ℤ) (-(n : ℤ)) - 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088023.P14891646668249414794

namespace A088023

/-- `∑[char[and(n, xor(n, -n)-1)]]` -/
def P14891646668249414794.Spec : Prop :=
  ∀ n, (P14891646668249414794.a n : ℤ) = A088023 (n + 1)

end A088023

/-! ## A088023.P8735846108274120496

`∑[char[or(n, -n)+n+n]]`
-/

namespace A088023.P8735846108274120496
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-(n : ℤ)) + (n : ℤ) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088023.P8735846108274120496

namespace A088023

/-- `∑[char[or(n, -n)+n+n]]` -/
def P8735846108274120496.Spec : Prop :=
  ∀ n, (P8735846108274120496.a n : ℤ) = A088023 (n + 1)

end A088023

/-! ## A088023.P6396515883274372307

`∑[char[n-(and(n, -n)-n)]]`
-/

namespace A088023.P6396515883274372307
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Int.land (n : ℤ) (-(n : ℤ)) - (n : ℤ))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088023.P6396515883274372307

namespace A088023

/-- `∑[char[n-(and(n, -n)-n)]]` -/
def P6396515883274372307.Spec : Prop :=
  ∀ n, (P6396515883274372307.a n : ℤ) = A088023 (n + 1)

end A088023

/-! ## A088023.P13330801702471876640

`ceil(a(floor(n/2))+n/4)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A088023

/-- `ceil(a(floor(n/2))+n/4)` -/
def P13330801702471876640.Spec : Prop :=
  ∀ n, P13330801702471876640.a n = A088023 (n + 1)

theorem P13330801702471876640.correct : P13330801702471876640.Spec := by
  intro n
  simp only [A088023, Nat.add_sub_cancel]

end A088023

/-! ## A088023.P10484597175925204882

`∑[char[and(n, n+1)+1+n]]+1`
-/

namespace A088023.P10484597175925204882
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1) + 1 + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A088023.P10484597175925204882

namespace A088023

/-- `∑[char[and(n, n+1)+1+n]]+1` -/
def P10484597175925204882.Spec : Prop :=
  ∀ n, (P10484597175925204882.a n : ℤ) = A088023 (n + 1)

end A088023

/-! ## A088023.P1832390099458848561

`∑[1-char[or(n, n+1)+n+2]]`
-/

namespace A088023.P1832390099458848561
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (n + 1) + (n + 2)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088023.P1832390099458848561

namespace A088023

/-- `∑[1-char[or(n, n+1)+n+2]]` -/
def P1832390099458848561.Spec : Prop :=
  ∀ n, P1832390099458848561.a n = A088023 (n + 1)

end A088023

/-! ## A088023.P17904250507391473011

`∑[1-A038189(n)]`
-/

namespace A088023.P17904250507391473011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A038189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088023.P17904250507391473011

namespace A088023

/-- `∑[1-A038189(n)]` -/
def P17904250507391473011.Spec : Prop :=
  ∀ n, P17904250507391473011.a n = A088023 (n + 1)

end A088023

/-! ## A088023.P7443223035263854080

`1-A255070(n)+n`
-/

namespace A088023.P7443223035263854080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A255070 n + (n : ℤ)

end

end A088023.P7443223035263854080

namespace A088023

/-- `1-A255070(n)+n` -/
def P7443223035263854080.Spec : Prop :=
  ∀ n, P7443223035263854080.a n = A088023 (n + 1)

end A088023

/-! ## A088023.P14129208176602973642

`∑[A014577(abs(1-n))]`
-/

namespace A088023.P14129208176602973642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014577 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088023.P14129208176602973642

namespace A088023

/-- `∑[A014577(abs(1-n))]` -/
def P14129208176602973642.Spec : Prop :=
  ∀ n, P14129208176602973642.a n = A088023 (n + 1)

end A088023

/-! ## A088023.P12640089989457051228

`∑[A082410(n+1)]+1`
-/

namespace A088023.P12640089989457051228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082410 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A088023.P12640089989457051228

namespace A088023

/-- `∑[A082410(n+1)]+1` -/
def P12640089989457051228.Spec : Prop :=
  ∀ n, P12640089989457051228.a n = A088023 (n + 1)

end A088023

/-! ## A088023.P1294872759521702059

`(A088743(n+1)+1)/2`
-/

namespace A088023.P1294872759521702059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088743 (n + 1) + 1 : ℚ) / 2

end

end A088023.P1294872759521702059

namespace A088023

/-- `(A088743(n+1)+1)/2` -/
def P1294872759521702059.Spec : Prop :=
  ∀ n, P1294872759521702059.a n = (A088023 (n + 1) : ℚ)

theorem P1294872759521702059.correct : P1294872759521702059.Spec := by
  intro n
  simp only [A088023, Nat.add_sub_cancel, A088023.P1294872759521702059.a, A088023.P13330801702471876640.a, A088743, A088743.P4379728260745678139.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A088023

/-! ## A088023.P6959134196894221708

`(A088744(n+1)+2)/3`
-/

namespace A088023.P6959134196894221708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088744 (n + 1) + 2 : ℚ) / 3

end

end A088023.P6959134196894221708

namespace A088023

/-- `(A088744(n+1)+2)/3` -/
def P6959134196894221708.Spec : Prop :=
  ∀ n, P6959134196894221708.a n = (A088023 (n + 1) : ℚ)

theorem P6959134196894221708.correct : P6959134196894221708.Spec := by
  intro n
  simp only [A088023, Nat.add_sub_cancel, A088023.P6959134196894221708.a, A088023.P13330801702471876640.a, A088744, A088744.P13964639266915660033.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A088023

/-! ## A088023.P14607944586975173755

`(A088748(n)+n+1)/2`
-/

namespace A088023.P14607944586975173755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088748 n + (n + 1 : ℤ) : ℚ) / 2

end

end A088023.P14607944586975173755

namespace A088023

/-- `(A088748(n)+n+1)/2` -/
def P14607944586975173755.Spec : Prop :=
  ∀ n, P14607944586975173755.a n = (A088023 (n + 1) : ℚ)

end A088023

/-! ## A088023.P16617823911500479407

`n+1-A236840(n)/2`
-/

namespace A088023.P16617823911500479407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - (A236840 n : ℚ) / 2

end

end A088023.P16617823911500479407

namespace A088023

/-- `n+1-A236840(n)/2` -/
def P16617823911500479407.Spec : Prop :=
  ∀ n, P16617823911500479407.a n = (A088023 (n + 1) : ℚ)

end A088023

/-! ## A088023.P1472338647345299443

`A069010(n)+A008619(n)`
-/

namespace A088023.P1472338647345299443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 n + A008619 n

end

end A088023.P1472338647345299443

namespace A088023

/-- `A069010(n)+A008619(n)` -/
def P1472338647345299443.Spec : Prop :=
  ∀ n, P1472338647345299443.a n = A088023 (n + 1)

end A088023

/-! ## A088023.P1510602940697102517

`A080513(n)+A033264(n)`
-/

namespace A088023.P1510602940697102517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 n + A033264 n

end

end A088023.P1510602940697102517

namespace A088023

/-- `A080513(n)+A033264(n)` -/
def P1510602940697102517.Spec : Prop :=
  ∀ n, P1510602940697102517.a n = A088023 (n + 1)

end A088023

/-! ## A088023.P10663718104434626738

`A266977(n)+A037800(n)`
-/

namespace A088023.P10663718104434626738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266977 n + A037800 n

end

end A088023.P10663718104434626738

namespace A088023

/-- `A266977(n)+A037800(n)` -/
def P10663718104434626738.Spec : Prop :=
  ∀ n, P10663718104434626738.a n = A088023 (n + 1)

end A088023

/-!
# A088026: Number of "sets of even lists" for even n, cf. A000262.

The programs for A088026, there is no canonical definition to state claims against.
-/

/-! ## A088026.P14174327554193531150

`n!*A350461(n)`
-/

namespace A088026.P14174327554193531150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A350461 n

end

end A088026.P14174327554193531150

/-! ## A088026.P53921344245485894

`A000262(n)*A001813(n)`
-/

namespace A088026.P53921344245485894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000262 n * A001813 n

end

end A088026.P53921344245485894

/-! ## A088026.P16576257092241462485

`A000142(n)*A350461(n)`
-/

namespace A088026.P16576257092241462485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A350461 n

end

end A088026.P16576257092241462485

/-! ## A088026.P10619536916248597514

`A000262(n)*A081125(2*n)`
-/

namespace A088026.P10619536916248597514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000262 n * A081125 (2 * n)

end

end A088026.P10619536916248597514

/-! ## A088026.P5930868304006486498

`A000262(n)*A048854(A000217(n))`
-/

namespace A088026.P5930868304006486498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000262 n * A048854 (A000217 n).toNat

end

end A088026.P5930868304006486498

/-!
# A088027: Smallest square k such that k-1 is a squarefree number with n prime divisors.

The programs for A088027, there is no canonical definition to state claims against.
-/

/-! ## A088027.P13914333084583012732

`A088028(n+1)²`
-/

namespace A088027.P13914333084583012732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088028 (n + 1) ^ 2

end

end A088027.P13914333084583012732

/-! ## A088027.P9589730735011812638

`record[A088028(A059126(n))²]`
-/

namespace A088027.P9589730735011812638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088028 (A059126 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088027.P9589730735011812638

/-! ## A088027.P848952214550337818

`A088028(n+1)^A020639(A017089(n))`
-/

namespace A088027.P848952214550337818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088028 (n + 1) : ℚ) ^ (A020639 (A017089 n).toNat : ℤ)

end

end A088027.P848952214550337818

/-! ## A088027.P9020611032538686076

`A088028(n+1)^A020639(A090288(n))`
-/

namespace A088027.P9020611032538686076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088028 (n + 1) : ℚ) ^ (A020639 (A090288 n).toNat : ℤ)

end

end A088027.P9020611032538686076

/-! ## A088027.P15361051251368360706

`record[A088028(A059126(n))]*A088028(n+1)`
-/

namespace A088027.P15361051251368360706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088028 (A059126 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A088028 (n + 1)

end

end A088027.P15361051251368360706

/-!
# A088028: Smallest k such that k^2-1 is a squarefree number with n prime divisors. a(n) = A088027(n)^(1/2).

The programs for A088028, there is no canonical definition to state claims against.
-/

/-! ## A088028.P16594309033959594931

`A088027(n+1)^(1/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A088028.P16594309033959594931
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A088027 (n + 1) : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A088028.P16594309033959594931

/-! ## A088028.P1434309154548926449

`sqrt(A088027(n+1))`
-/

namespace A088028.P1434309154548926449
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A088027 (n + 1) : ℝ)

end

end A088028.P1434309154548926449

/-! ## A088028.P8557258665239031080

`root(A088027(n+1), p?[A072491(n)])`
-/

namespace A088028.P8557258665239031080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A088027 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A088028.P8557258665239031080

/-! ## A088028.P15303301176633301134

`root(A088027(n+1), dr(A088050(n+1)))`
-/

namespace A088028.P15303301176633301134
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A088027 (n + 1) : ℝ) ^ (1 / (SequenceMachineLib.digitalRoot (A088050 (n + 1)) : ℝ))

end

end A088028.P15303301176633301134

/-! ## A088028.P12107843688279923409

`root(A088027(n+1), p?[A088018(n+1)])`
-/

namespace A088028.P12107843688279923409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088018 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A088027 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A088028.P12107843688279923409

/-!
# A088029: Smallest cube k such that k-1 is a squarefree number with n prime divisors.

The programs for A088029, there is no canonical definition to state claims against.
-/

/-! ## A088029.P4239829826190483638

`A088030(n+1)^3`
-/

namespace A088029.P4239829826190483638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088030 (n + 1) ^ 3

end

end A088029.P4239829826190483638

/-! ## A088029.P9822826401587946723

`A000578(A088030(n+1))`
-/

namespace A088029.P9822826401587946723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A088030 (n + 1)).toNat

end

end A088029.P9822826401587946723

/-! ## A088029.P11610617787428220006

`A126951(2*A088030(n+1))`
-/

namespace A088029.P11610617787428220006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126951 (2 * A088030 (n + 1)).toNat

end

end A088029.P11610617787428220006

/-!
# A088030: Smallest k such that k^3 -1 is a squarefree number with n prime divisors. a(n) = A088029(n)^(1/3).

The programs for A088030, there is no canonical definition to state claims against.
-/

/-! ## A088030.P5200767435053499730

`A088029(n+1)^(1/3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A088030.P5200767435053499730
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A088029 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A088030.P5200767435053499730

/-! ## A088030.P16209794190634042936

`root(A088029(n+1), 3)`
-/

namespace A088030.P16209794190634042936
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A088029 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A088030.P16209794190634042936

/-!
# A088031: Smallest n-th power k such that k-1 is divisible by an n-th power. Smallest n-th power == 1 (mod some n-th power).

The programs for A088031, there is no canonical definition to state claims against.
-/

/-! ## A088031.P6392336499000315077

`A088032(n+1)^(n+1)`
-/

namespace A088031.P6392336499000315077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088032 (n + 1) ^ (n + 1)

end

end A088031.P6392336499000315077

/-! ## A088031.P6572770594119284033

`(A033999(char[1]+n)+2^(n+1-val(n+1, 2)))^(n+1)`
-/

namespace A088031.P6572770594119284033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A033999 ((if ∃ j, f1 j = n then 1 else 0) + n) : ℚ) + (2 : ℚ) ^ ((n + 1 : ℤ) - (SequenceMachineLib.valuation (n + 1) 2 : ℤ) : ℤ)) ^ (n + 1)

end

end A088031.P6572770594119284033

/-! ## A088031.P14247970521203299500

`(A075101(n+1)+A033999(A254667(n)))^(n+1)`
-/

namespace A088031.P14247970521203299500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A075101 (n + 1) + A033999 (A254667 n).toNat) ^ (n + 1)

end

end A088031.P14247970521203299500

/-! ## A088031.P9390429061727794853

`(A075101(n+1)+A033999(A266595(n)))^(n+1)`
-/

namespace A088031.P9390429061727794853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A075101 (n + 1) + A033999 (A266595 n).toNat) ^ (n + 1)

end

end A088031.P9390429061727794853

/-! ## A088031.P12998001645263248572

`(A075101(n+1)+A033999(A036441(n+1)))^(n+1)`
-/

namespace A088031.P12998001645263248572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A075101 (n + 1) + A033999 (A036441 (n + 1)).toNat) ^ (n + 1)

end

end A088031.P12998001645263248572

/-!
# A088032: Smallest number k such that k^n -1 is divisible by an n-th power. a(n) = A088031(n)^(1/n).

The programs for A088032, there is no canonical definition to state claims against.
-/

/-! ## A088032.P14861492992981232488

`A033999(char[1]+n)+2^(n+1-val(n+1, 2))`
-/

namespace A088032.P14861492992981232488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033999 ((if ∃ j, f1 j = n then 1 else 0) + n) : ℚ) + (2 : ℚ) ^ ((n + 1 : ℤ) - (SequenceMachineLib.valuation (n + 1) 2 : ℤ) : ℤ)

end

end A088032.P14861492992981232488

/-! ## A088032.P2866263330441533078

`A075101(n+1)+A033999(A254667(n))`
-/

namespace A088032.P2866263330441533078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075101 (n + 1) + A033999 (A254667 n).toNat

end

end A088032.P2866263330441533078

/-! ## A088032.P4440785121169734722

`A075101(n+1)+A033999(A266595(n))`
-/

namespace A088032.P4440785121169734722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075101 (n + 1) + A033999 (A266595 n).toNat

end

end A088032.P4440785121169734722

/-! ## A088032.P8809013621863729821

`A075101(n+1)+A033999(A036441(n+1))`
-/

namespace A088032.P8809013621863729821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075101 (n + 1) + A033999 (A036441 (n + 1)).toNat

end

end A088032.P8809013621863729821

/-! ## A088032.P1369687255401537958

`A128834(A011782(n))+A075101(n+1)`
-/

namespace A088032.P1369687255401537958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 (A011782 n).toNat + A075101 (n + 1)

end

end A088032.P1369687255401537958

/-!
# A088033: Even squares k such that k-1 is divisible by a square > 1.

The programs for A088033, there is no canonical definition to state claims against.
-/

/-! ## A088033.P4823212740709942347

`A088034(n+1)²`
-/

namespace A088033.P4823212740709942347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088034 (n + 1) ^ 2

end

end A088033.P4823212740709942347

/-!
# A088034: Even numbers k such that k^2-1 is divisible by a square > 1.

The programs for A088034, there is no canonical definition to state claims against.
-/

/-! ## A088034.P3127351152380556663

`sqrt(A088033(n+1))`
-/

namespace A088034.P3127351152380556663
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A088033 (n + 1) : ℝ)

end

end A088034.P3127351152380556663

/-! ## A088034.P7115232846869467732

`∩[2*n, A173186(n+1)]`
-/

namespace A088034.P7115232846869467732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173186 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088034.P7115232846869467732

/-! ## A088034.P4855008979248105635

`∩[A173186(n+1), A005843(n)]`
-/

namespace A088034.P4855008979248105635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173186 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088034.P4855008979248105635

/-! ## A088034.P3292905161973816436

`∩[A173186(n+1), A020739(n)]`
-/

namespace A088034.P3292905161973816436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173186 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088034.P3292905161973816436

/-! ## A088034.P14698443749098060468

`∩[A173186(n+1), A020744(n)]`
-/

namespace A088034.P14698443749098060468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173186 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020744 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088034.P14698443749098060468

/-! ## A088034.P17113035536787538837

`filter[A173186(n+2), A135528(#)]`
-/

namespace A088034.P17113035536787538837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173186 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A088034.P17113035536787538837

/-! ## A088034.P9801528192286322402

`filter[A173186(n+1), A059841(#)]`
-/

namespace A088034.P9801528192286322402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173186 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A088034.P9801528192286322402

/-! ## A088034.P2811284823992702316

`filter[A173186(n+1), A267043(#)]`
-/

namespace A088034.P2811284823992702316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173186 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267043 (f1 j).toNat = 1) n)

end

end A088034.P2811284823992702316

/-! ## A088034.P18387165948518368645

`filter[A173186(n+2), A266591(#)]`
-/

namespace A088034.P18387165948518368645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173186 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A088034.P18387165948518368645

/-!
# A088035: Cubes k such that k-1 is divisible by a cube >1.

The programs for A088035, there is no canonical definition to state claims against.
-/

/-! ## A088035.P4564345484893687047

`A088036(n+1)^3`
-/

namespace A088035.P4564345484893687047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088036 (n + 1) ^ 3

end

end A088035.P4564345484893687047

/-! ## A088035.P10449398318796244511

`A000578(A088036(n+1))`
-/

namespace A088035.P10449398318796244511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A088036 (n + 1)).toNat

end

end A088035.P10449398318796244511

/-! ## A088035.P14888538880609981898

`A126951(2*A088036(n+1))`
-/

namespace A088035.P14888538880609981898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126951 (2 * A088036 (n + 1)).toNat

end

end A088035.P14888538880609981898

/-! ## A088035.P8246091365498958732

`A109588(3*A088036(n+1))`
-/

namespace A088035.P8246091365498958732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109588 (3 * A088036 (n + 1)).toNat

end

end A088035.P8246091365498958732

/-! ## A088035.P10697044491049902531

`A110485(4*A088036(n+1))`
-/

namespace A088035.P10697044491049902531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110485 (4 * A088036 (n + 1)).toNat

end

end A088035.P10697044491049902531

/-!
# A088036: Numbers k such that k^3 - 1 is divisible by a cube other than 1.

The programs for A088036, there is no canonical definition to state claims against.
-/

/-! ## A088036.P720932878280749773

`A088035(n+1)^(1/3)`
-/

namespace A088036.P720932878280749773
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A088035 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A088036.P720932878280749773

/-! ## A088036.P16690034260561926576

`lt[A128972(n+2), ∑[∑[n+6]+3]-6]+2`
-/

namespace A088036.P16690034260561926576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128972 (n + 2)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) - 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A088036.P16690034260561926576

/-! ## A088036.P1610004571692780432

`lt[∏{e}[n^3-1, #!]²%3, 1]`
-/

namespace A088036.P1610004571692780432
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorial (Nat.factorization (f2 n).natAbs p)) ^ 2 % 3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A088036.P1610004571692780432

/-!
# A088037: Smallest square k == 1 (mod some n-th power), k > 1.

The programs for A088037, the canonical program `A088037.P5729300874854652587` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088037 has offset 1).

The definition of A088037 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A088037.P5729300874854652587

`7*a(n-1)-14*a(n-2)+8*a(n-3)` with `a(0)=4, a(1)=9, a(2)=9, a(3)=49, a(4)=225`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A088037

/-- `7*a(n-1)-14*a(n-2)+8*a(n-3)` -/
def P5729300874854652587.Spec : Prop :=
  ∀ n, P5729300874854652587.a n = A088037 (n + 1)

theorem P5729300874854652587.correct : P5729300874854652587.Spec := by
  intro n
  simp only [A088037, Nat.add_sub_cancel]

end A088037

/-! ## A088037.P12359610559448379046

`or(2, 2^n-1)²`
-/

namespace A088037.P12359610559448379046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 ((2 ^ n : ℤ) - 1) ^ 2

end

end A088037.P12359610559448379046

namespace A088037

/-- `or(2, 2^n-1)²` -/
def P12359610559448379046.Spec : Prop :=
  ∀ n, P12359610559448379046.a n = A088037 (n + 1)

end A088037

/-! ## A088037.P560495138199191386

`xor(3, 2-2^n)²`
-/

namespace A088037.P560495138199191386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (2 - (2 ^ n : ℤ)) ^ 2

end

end A088037.P560495138199191386

namespace A088037

/-- `xor(3, 2-2^n)²` -/
def P560495138199191386.Spec : Prop :=
  ∀ n, P560495138199191386.a n = A088037 (n + 1)

end A088037

/-! ## A088037.P12902236494860607617

`or(2, 2^n-1)^2`
-/

namespace A088037.P12902236494860607617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 ((2 ^ n : ℤ) - 1) ^ 2

end

end A088037.P12902236494860607617

namespace A088037

/-- `or(2, 2^n-1)^2` -/
def P12902236494860607617.Spec : Prop :=
  ∀ n, P12902236494860607617.a n = A088037 (n + 1)

end A088037

/-! ## A088037.P9117087070791804840

`xor(3, 2-2^n)^2`
-/

namespace A088037.P9117087070791804840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (2 - (2 ^ n : ℤ)) ^ 2

end

end A088037.P9117087070791804840

namespace A088037

/-- `xor(3, 2-2^n)^2` -/
def P9117087070791804840.Spec : Prop :=
  ∀ n, P9117087070791804840.a n = A088037 (n + 1)

end A088037

/-! ## A088037.P7666838720970808343

`Δ[2^n-abs(2-n)]²`
-/

namespace A088037.P7666838720970808343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - |2 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A088037.P7666838720970808343

namespace A088037

/-- `Δ[2^n-abs(2-n)]²` -/
def P7666838720970808343.Spec : Prop :=
  ∀ n, P7666838720970808343.a n = A088037 (n + 1)

end A088037

/-! ## A088037.P11001802840355078446

`xor(A171663(2*n+1), A296965(2*n))-A296965(2*n+1)`
-/

namespace A088037.P11001802840355078446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A171663 (2 * n + 1)) (A296965 (2 * n)) - A296965 (2 * n + 1)

end

end A088037.P11001802840355078446

namespace A088037

/-- `xor(A171663(2*n+1), A296965(2*n))-A296965(2*n+1)` -/
def P11001802840355078446.Spec : Prop :=
  ∀ n, P11001802840355078446.a n = A088037 (n + 1)

end A088037

/-!
# A088038: Smallest cube k == 1 (mod some n-th power), k > 1.

The programs for A088038, the canonical program `A088038.P4192225871872879920` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088038 has offset 1).

The definition of A088038 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088038.P4192225871872879920

`(A077552(n)+1)^3`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A088038

/-- `(A077552(n)+1)^3` -/
def P4192225871872879920.Spec : Prop :=
  ∀ n, P4192225871872879920.a n = A088038 (n + 1)

theorem P4192225871872879920.correct : P4192225871872879920.Spec := by
  intro n
  simp only [A088038, Nat.add_sub_cancel]

end A088038

/-! ## A088038.P9166645401805215080

`A088039(n+1)^3`
-/

namespace A088038.P9166645401805215080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088039 (n + 1) ^ 3

end

end A088038.P9166645401805215080

namespace A088038

/-- `A088039(n+1)^3` -/
def P9166645401805215080.Spec : Prop :=
  ∀ n, P9166645401805215080.a n = A088038 (n + 1)

end A088038

/-! ## A088038.P11483558044371056170

`A003485(2^n)^3`
-/

namespace A088038.P11483558044371056170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003485 (2 ^ n) ^ 3

end

end A088038.P11483558044371056170

namespace A088038

/-- `A003485(2^n)^3` -/
def P11483558044371056170.Spec : Prop :=
  ∀ n, P11483558044371056170.a n = A088038 (n + 1)

end A088038

/-! ## A088038.P13144914513103388216

`A109534(2^n)^3`
-/

namespace A088038.P13144914513103388216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109534 (2 ^ n) ^ 3

end

end A088038.P13144914513103388216

namespace A088038

/-- `A109534(2^n)^3` -/
def P13144914513103388216.Spec : Prop :=
  ∀ n, P13144914513103388216.a n = A088038 (n + 1)

end A088038

/-! ## A088038.P15154416904592484495

`A326494(2^n)^3`
-/

namespace A088038.P15154416904592484495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326494 (2 ^ n) ^ 3

end

end A088038.P15154416904592484495

namespace A088038

/-- `A326494(2^n)^3` -/
def P15154416904592484495.Spec : Prop :=
  ∀ n, P15154416904592484495.a n = A088038 (n + 1)

end A088038

/-!
# A088039: Smallest k such that k^3 == 1 (mod some n-th power), k > 1.

The programs for A088039, the canonical program `A088039.P3468968859594514563` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088039 has offset 1).

The definition of A088039 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088038, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A088039.P3468968859594514563

`A088038(n+1)^(1/3)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A088039

/-- `A088038(n+1)^(1/3)` -/
def P3468968859594514563.Spec : Prop :=
  ∀ n, P3468968859594514563.a n = (A088039 (n + 1) : ℝ)

end A088039

/-! ## A088039.P1559060415180612329

`∑[char[2]+2^n]+1`
-/

namespace A088039.P1559060415180612329
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A088039.P1559060415180612329

namespace A088039

/-- `∑[char[2]+2^n]+1` -/
def P1559060415180612329.Spec : Prop :=
  ∀ n, (P1559060415180612329.a n : ℤ) = A088039 (n + 1)

end A088039

/-! ## A088039.P9803990229555363627

`floor(atan(n)+2^(n+1))`
-/

namespace A088039.P9803990229555363627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (n : ℝ) + (2 ^ (n + 1) : ℝ)⌋

end

end A088039.P9803990229555363627

namespace A088039

/-- `floor(atan(n)+2^(n+1))` -/
def P9803990229555363627.Spec : Prop :=
  ∀ n, P9803990229555363627.a n = A088039 (n + 1)

end A088039

/-! ## A088039.P13658233279887362336

`ogf((2-2x+x^2-2x^3)/(1-3x+2x^2))`
-/

namespace A088039.P13658233279887362336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -2, 1, -2] [1, -3, 2] n

end

end A088039.P13658233279887362336

namespace A088039

/-- `ogf((2-2x+x^2-2x^3)/(1-3x+2x^2))` -/
def P13658233279887362336.Spec : Prop :=
  ∀ n, P13658233279887362336.a n = A088039 (n + 1)

end A088039

/-! ## A088039.P13684891215640551546

`floor(acot(acot(n))+2^(n+1))`
-/

namespace A088039.P13684891215640551546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (SequenceMachineLib.acot (n : ℝ)) + (2 ^ (n + 1) : ℝ)⌋

end

end A088039.P13684891215640551546

namespace A088039

/-- `floor(acot(acot(n))+2^(n+1))` -/
def P13684891215640551546.Spec : Prop :=
  ∀ n, P13684891215640551546.a n = A088039 (n + 1)

end A088039

/-! ## A088039.P6553795012813450072

`xor(3, lcm(2, a(n-1)))` with `a(0)=2, a(1)=4, a(2)=9`
-/

namespace A088039.P6553795012813450072
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 4, 9] fun n a =>
  Nat.xor 3 (Nat.lcm 2 (a (n - 1)))

end

end A088039.P6553795012813450072

namespace A088039

/-- `xor(3, lcm(2, a(n-1)))` -/
def P6553795012813450072.Spec : Prop :=
  ∀ n, (P6553795012813450072.a n : ℤ) = A088039 (n + 1)

end A088039

/-! ## A088039.P17067195800369564620

`abs(2*a(n-1)-1)` with `a(0)=2, a(1)=4, a(2)=9`
-/

namespace A088039.P17067195800369564620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4, 9] fun n a =>
  |2 * a (n - 1) - 1|

end

end A088039.P17067195800369564620

namespace A088039

/-- `abs(2*a(n-1)-1)` -/
def P17067195800369564620.Spec : Prop :=
  ∀ n, P17067195800369564620.a n = A088039 (n + 1)

end A088039

/-! ## A088039.P5435231803758032582

`∑[floor(2^n+n/a(n-1))]` with `a(0)=2`
-/

namespace A088039.P5435231803758032582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  ⌊(2 ^ n : ℚ) + (n : ℚ) / (f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088039.P5435231803758032582

namespace A088039

/-- `∑[floor(2^n+n/a(n-1))]` -/
def P5435231803758032582.Spec : Prop :=
  ∀ n, P5435231803758032582.a n = A088039 (n + 1)

end A088039

/-! ## A088039.P6411216560158454617

`∑[floor((a(n-1)^(-2)+2)^n)]` with `a(0)=2`
-/

namespace A088039.P6411216560158454617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  ⌊((f1 (n - 1) : ℚ) ^ (-2 : ℤ) + 2) ^ n⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088039.P6411216560158454617

namespace A088039

/-- `∑[floor((a(n-1)^(-2)+2)^n)]` -/
def P6411216560158454617.Spec : Prop :=
  ∀ n, P6411216560158454617.a n = A088039 (n + 1)

end A088039

/-! ## A088039.P15175070507904509342

`∑[a(n-1)+a(n-1)]` with `a(0)=2, a(1)=2, a(2)=5, a(3)=8`
-/

namespace A088039.P15175070507904509342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 5, 8] fun n f1 =>
  f1 (n - 1) + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088039.P15175070507904509342

namespace A088039

/-- `∑[a(n-1)+a(n-1)]` -/
def P15175070507904509342.Spec : Prop :=
  ∀ n, (P15175070507904509342.a n : ℤ) = A088039 (n + 1)

end A088039

/-! ## A088039.P16070608384685428898

`or(2^(n+1), ceil((n-1)/(n+2)))`
-/

namespace A088039.P16070608384685428898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 ^ (n + 1) : ℤ) ⌈((n : ℤ) - 1 : ℚ) / (n + 2 : ℚ)⌉

end

end A088039.P16070608384685428898

namespace A088039

/-- `or(2^(n+1), ceil((n-1)/(n+2)))` -/
def P16070608384685428898.Spec : Prop :=
  ∀ n, P16070608384685428898.a n = A088039 (n + 1)

end A088039

/-! ## A088039.P4785328641942220507

`xor(2^(n+1), ceil((n-1)/(n+2)))`
-/

namespace A088039.P4785328641942220507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 ^ (n + 1) : ℤ) ⌈((n : ℤ) - 1 : ℚ) / (n + 2 : ℚ)⌉

end

end A088039.P4785328641942220507

namespace A088039

/-- `xor(2^(n+1), ceil((n-1)/(n+2)))` -/
def P4785328641942220507.Spec : Prop :=
  ∀ n, P4785328641942220507.a n = A088039 (n + 1)

end A088039

/-! ## A088039.P10919919235544134586

`floor(A000079(n+1)+atan(n))`
-/

namespace A088039.P10919919235544134586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000079 (n + 1) : ℝ) + Real.arctan (n : ℝ)⌋

end

end A088039.P10919919235544134586

namespace A088039

/-- `floor(A000079(n+1)+atan(n))` -/
def P10919919235544134586.Spec : Prop :=
  ∀ n, P10919919235544134586.a n = A088039 (n + 1)

end A088039

/-! ## A088039.P14963264107852867830

`A240277(A057544(n+1))`
-/

namespace A088039.P14963264107852867830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240277 (A057544 (n + 1)).toNat

end

end A088039.P14963264107852867830

namespace A088039

/-- `A240277(A057544(n+1))` -/
def P14963264107852867830.Spec : Prop :=
  ∀ n, P14963264107852867830.a n = A088039 (n + 1)

end A088039

/-! ## A088039.P16803860784979314790

`Δ[A258935(n+1)+n]`
-/

namespace A088039.P16803860784979314790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258935 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088039.P16803860784979314790

namespace A088039

/-- `Δ[A258935(n+1)+n]` -/
def P16803860784979314790.Spec : Prop :=
  ∀ n, P16803860784979314790.a n = A088039 (n + 1)

end A088039

/-! ## A088039.P10343363089881600355

`and(A048578(n), A054135(n+1))`
-/

namespace A088039.P10343363089881600355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048578 n) (A054135 (n + 1))

end

end A088039.P10343363089881600355

namespace A088039

/-- `and(A048578(n), A054135(n+1))` -/
def P10343363089881600355.Spec : Prop :=
  ∀ n, P10343363089881600355.a n = A088039 (n + 1)

end A088039

/-! ## A088039.P14910357267040975164

`and(A054135(n+1), A195744(n))`
-/

namespace A088039.P14910357267040975164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054135 (n + 1)) (A195744 n)

end

end A088039.P14910357267040975164

namespace A088039

/-- `and(A054135(n+1), A195744(n))` -/
def P14910357267040975164.Spec : Prop :=
  ∀ n, P14910357267040975164.a n = A088039 (n + 1)

end A088039

/-! ## A088039.P16963500535945429447

`and(A054135(n+1), A122041(n+1))`
-/

namespace A088039.P16963500535945429447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054135 (n + 1)) (A122041 (n + 1))

end

end A088039.P16963500535945429447

namespace A088039

/-- `and(A054135(n+1), A122041(n+1))` -/
def P16963500535945429447.Spec : Prop :=
  ∀ n, P16963500535945429447.a n = A088039 (n + 1)

end A088039

/-! ## A088039.P1163094725847418158

`and(A054135(n+1), A196657(n))`
-/

namespace A088039.P1163094725847418158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054135 (n + 1)) (A196657 n)

end

end A088039.P1163094725847418158

namespace A088039

/-- `and(A054135(n+1), A196657(n))` -/
def P1163094725847418158.Spec : Prop :=
  ∀ n, P1163094725847418158.a n = A088039 (n + 1)

end A088039

/-! ## A088039.P16018410196248586338

`and(A054135(n+1), A134854(n+1))`
-/

namespace A088039.P16018410196248586338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054135 (n + 1)) (A134854 (n + 1))

end

end A088039.P16018410196248586338

namespace A088039

/-- `and(A054135(n+1), A134854(n+1))` -/
def P16018410196248586338.Spec : Prop :=
  ∀ n, P16018410196248586338.a n = A088039 (n + 1)

end A088039

/-!
# A088040: Smallest fourth power k such that k-1 is divisible by an n-th power, k > 1.

The programs for A088040, there is no canonical definition to state claims against.
-/

/-! ## A088040.P10347773552049195278

`A088041(n+1)^4`
-/

namespace A088040.P10347773552049195278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088041 (n + 1) ^ 4

end

end A088040.P10347773552049195278

/-! ## A088040.P16251320888033129446

`or(2, A078485(n))^4`
-/

namespace A088040.P16251320888033129446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A078485 n) ^ 4

end

end A088040.P16251320888033129446

/-! ## A088040.P1094226958182671626

`A088041(A008619(2*n))²²`
-/

namespace A088040.P1094226958182671626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A088041 (A008619 (2 * n)).toNat ^ 2) ^ 2

end

end A088040.P1094226958182671626

/-! ## A088040.P10785695767093395556

`(A147758(n+1)-A000918(n))²²`
-/

namespace A088040.P10785695767093395556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A147758 (n + 1) - A000918 n) ^ 2) ^ 2

end

end A088040.P10785695767093395556

/-! ## A088040.P4798465002982320926

`or(A000720(n+1), A088041(n+1))²²`
-/

namespace A088040.P4798465002982320926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lor (A000720 (n + 1)) (A088041 (n + 1)) ^ 2) ^ 2

end

end A088040.P4798465002982320926

/-!
# A088041: Smallest k such that k^4 - 1 is divisible by an n-th power, k > 1.

The programs for A088041, the canonical program `A088041.P5045074161287156107` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088041 has offset 1).

The definition of A088041 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088041.P689923199844228536

`A088040(n+1)^(1/4)`
-/

namespace A088041.P689923199844228536
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A088040 (n + 1) : ℝ) ^ ((1 : ℚ) / 4 : ℝ)

end

end A088041.P689923199844228536

namespace A088041

/-- `A088040(n+1)^(1/4)` -/
def P689923199844228536.Spec : Prop :=
  ∀ n, P689923199844228536.a n = (A088041 (n + 1) : ℝ)

end A088041

/-! ## A088041.P9187235725178888381

`ogf((2-3x-2x^2+4x^4)/(1-3x+2x^2))`
-/

namespace A088041.P9187235725178888381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -3, -2, 0, 4] [1, -3, 2] n

end

end A088041.P9187235725178888381

namespace A088041

/-- `ogf((2-3x-2x^2+4x^4)/(1-3x+2x^2))` -/
def P9187235725178888381.Spec : Prop :=
  ∀ n, P9187235725178888381.a n = A088041 (n + 1)

end A088041

/-! ## A088041.P5045074161287156107

`2*a(n-1)+1` with `a(0)=2, a(1)=3, a(2)=3, a(3)=3`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A088041

/-- `2*a(n-1)+1` -/
def P5045074161287156107.Spec : Prop :=
  ∀ n, (P5045074161287156107.a n : ℤ) = A088041 (n + 1)

theorem P5045074161287156107.correct : P5045074161287156107.Spec := by
  intro n
  simp only [A088041, Nat.add_sub_cancel]

end A088041

/-! ## A088041.P1003525534154883011

`∑[2*a(n-1)]` with `a(0)=2, a(1)=1, a(2)=0, a(3)=0, a(4)=4`
-/

namespace A088041.P1003525534154883011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 0, 0, 4] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088041.P1003525534154883011

namespace A088041

/-- `∑[2*a(n-1)]` -/
def P1003525534154883011.Spec : Prop :=
  ∀ n, (P1003525534154883011.a n : ℤ) = A088041 (n + 1)

end A088041

/-! ## A088041.P12439407502668102656

`or(2^(n-2), a(n-1))` with `a(0)=2, a(1)=3`
-/

namespace A088041.P12439407502668102656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  Int.lor (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ))) (a (n - 1))

end

end A088041.P12439407502668102656

namespace A088041

/-- `or(2^(n-2), a(n-1))` -/
def P12439407502668102656.Spec : Prop :=
  ∀ n, P12439407502668102656.a n = A088041 (n + 1)

end A088041

/-! ## A088041.P14365426510787476930

`3-2*(1-a(n-1))` with `a(0)=2, a(1)=3, a(2)=3, a(3)=3`
-/

namespace A088041.P14365426510787476930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 3, 3] fun n a =>
  3 - 2 * (1 - a (n - 1))

end

end A088041.P14365426510787476930

namespace A088041

/-- `3-2*(1-a(n-1))` -/
def P14365426510787476930.Spec : Prop :=
  ∀ n, P14365426510787476930.a n = A088041 (n + 1)

end A088041

/-! ## A088041.P9290808178979524043

`a(n-1)+a(n-1)+1` with `a(0)=2, a(1)=3, a(2)=3, a(3)=3`
-/

namespace A088041.P9290808178979524043
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 3, 3] fun n a =>
  a (n - 1) + (a (n - 1) + 1)

end

end A088041.P9290808178979524043

namespace A088041

/-- `a(n-1)+a(n-1)+1` -/
def P9290808178979524043.Spec : Prop :=
  ∀ n, (P9290808178979524043.a n : ℤ) = A088041 (n + 1)

theorem P9290808178979524043.correct : P9290808178979524043.Spec := by
  intro n
  simp only [A088041, Nat.add_sub_cancel, A088041.P9290808178979524043.a, A088041.P5045074161287156107.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A088041

/-! ## A088041.P10208918174837936101

`or(2, A078485(n))`
-/

namespace A088041.P10208918174837936101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A078485 n)

end

end A088041.P10208918174837936101

namespace A088041

/-- `or(2, A078485(n))` -/
def P10208918174837936101.Spec : Prop :=
  ∀ n, P10208918174837936101.a n = A088041 (n + 1)

end A088041

/-! ## A088041.P5480408656525770820

`or(2, A090129(n+1)-1)`
-/

namespace A088041.P5480408656525770820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A090129 (n + 1) - 1)

end

end A088041.P5480408656525770820

namespace A088041

/-- `or(2, A090129(n+1)-1)` -/
def P5480408656525770820.Spec : Prop :=
  ∀ n, P5480408656525770820.a n = A088041 (n + 1)

end A088041

/-! ## A088041.P810296124730547678

`or(a(n-1), A001045(n))` with `a(0)=2`
-/

namespace A088041.P810296124730547678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.lor (a (n - 1)) (A001045 n)

end

end A088041.P810296124730547678

namespace A088041

/-- `or(a(n-1), A001045(n))` -/
def P810296124730547678.Spec : Prop :=
  ∀ n, P810296124730547678.a n = A088041 (n + 1)

end A088041

/-! ## A088041.P6155274037048644243

`or(a(n-1), A005578(n))` with `a(0)=2`
-/

namespace A088041.P6155274037048644243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.lor (a (n - 1)) (A005578 n)

end

end A088041.P6155274037048644243

namespace A088041

/-- `or(a(n-1), A005578(n))` -/
def P6155274037048644243.Spec : Prop :=
  ∀ n, P6155274037048644243.a n = A088041 (n + 1)

end A088041

/-! ## A088041.P6454555988878296468

`or(a(n-1), A007909(n))` with `a(0)=2`
-/

namespace A088041.P6454555988878296468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.lor (a (n - 1)) (A007909 n)

end

end A088041.P6454555988878296468

namespace A088041

/-- `or(a(n-1), A007909(n))` -/
def P6454555988878296468.Spec : Prop :=
  ∀ n, P6454555988878296468.a n = A088041 (n + 1)

end A088041

/-! ## A088041.P65527946993288635

`or(a(n-1), A024493(n))` with `a(0)=2`
-/

namespace A088041.P65527946993288635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.lor (a (n - 1)) (A024493 n)

end

end A088041.P65527946993288635

namespace A088041

/-- `or(a(n-1), A024493(n))` -/
def P65527946993288635.Spec : Prop :=
  ∀ n, P65527946993288635.a n = A088041 (n + 1)

end A088041

/-! ## A088041.P11815446470724859151

`or(a(n-1), A098011(n+1))` with `a(0)=2`
-/

namespace A088041.P11815446470724859151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.lor (a (n - 1)) (A098011 (n + 1))

end

end A088041.P11815446470724859151

namespace A088041

/-- `or(a(n-1), A098011(n+1))` -/
def P11815446470724859151.Spec : Prop :=
  ∀ n, P11815446470724859151.a n = A088041 (n + 1)

end A088041

/-! ## A088041.P6254504256873021014

`or(A011782(n)-1, A053669(n+1))`
-/

namespace A088041.P6254504256873021014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011782 n - 1) (A053669 (n + 1))

end

end A088041.P6254504256873021014

namespace A088041

/-- `or(A011782(n)-1, A053669(n+1))` -/
def P6254504256873021014.Spec : Prop :=
  ∀ n, P6254504256873021014.a n = A088041 (n + 1)

end A088041

/-! ## A088041.P16270418176988131000

`or(2, A000051(n)%A056469(n%A000045(n+1)))`
-/

namespace A088041.P16270418176988131000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (Int.tmod (A000051 n) (A056469 (Int.tmod (n : ℤ) (A000045 (n + 1))).toNat))

end

end A088041.P16270418176988131000

namespace A088041

/-- `or(2, A000051(n)%A056469(n%A000045(n+1)))` -/
def P16270418176988131000.Spec : Prop :=
  ∀ n, P16270418176988131000.a n = A088041 (n + 1)

end A088041

/-! ## A088041.P11298142645278248434

`A147758(n+1)-A000918(n)`
-/

namespace A088041.P11298142645278248434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147758 (n + 1) - A000918 n

end

end A088041.P11298142645278248434

namespace A088041

/-- `A147758(n+1)-A000918(n)` -/
def P11298142645278248434.Spec : Prop :=
  ∀ n, P11298142645278248434.a n = A088041 (n + 1)

end A088041

/-! ## A088041.P5290767331517631637

`ceil(sqrt(a(n-1)*A000079(n)))` with `a(0)=2, a(1)=3, a(2)=3, a(3)=3`
-/

namespace A088041.P5290767331517631637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 3, 3] fun n a =>
  ⌈Real.sqrt (a (n - 1) * A000079 n : ℝ)⌉

end

end A088041.P5290767331517631637

namespace A088041

/-- `ceil(sqrt(a(n-1)*A000079(n)))` -/
def P5290767331517631637.Spec : Prop :=
  ∀ n, P5290767331517631637.a n = A088041 (n + 1)

end A088041

/-!
# A088042: Number of permutations in the symmetric group S_n such that the size of their conjugacy class is odd.

The programs for A088042, there is no canonical definition to state claims against.
-/

/-! ## A088042.P7729894488637057450

`(n+1)!-A052361(n+1)`
-/

namespace A088042.P7729894488637057450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) - A052361 (n + 1)

end

end A088042.P7729894488637057450

/-! ## A088042.P14661427761370317245

`record[A084938(n)]-A052361(n+1)`
-/

namespace A088042.P14661427761370317245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A052361 (n + 1)

end

end A088042.P14661427761370317245

/-! ## A088042.P17068152342449974420

`A000142(n+1)-A052361(n+1)`
-/

namespace A088042.P17068152342449974420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) - A052361 (n + 1)

end

end A088042.P17068152342449974420

/-! ## A088042.P14766721781168785994

`A166350(∑[n+1])-A052361(n+1)`
-/

namespace A088042.P14766721781168785994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166350 (∑ j ∈ Finset.range (n + 1), f1 j) - A052361 (n + 1)

end

end A088042.P14766721781168785994

/-! ## A088042.P2385431676080281447

`A066667(A000217(n))-A052361(n+1)`
-/

namespace A088042.P2385431676080281447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066667 (A000217 n).toNat - A052361 (n + 1)

end

end A088042.P2385431676080281447

/-!
# A088043: Number of partitions of n into parts which can be arranged to form a geometric progression (possibly with a common ratio of 1). (For every partition there exists a geometric progression in which this partition fits in as successive terms.).

The programs for A088043, there is no canonical definition to state claims against.
-/

/-! ## A088043.P13879441508415658792

`A072491(A000079(n))+A065295(n+1)`
-/

namespace A088043.P13879441508415658792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 (A000079 n).toNat + A065295 (n + 1)

end

end A088043.P13879441508415658792

/-! ## A088043.P16328760103534912416

`A181819(2*(n+1))-A127243(A335920(n))`
-/

namespace A088043.P16328760103534912416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (2 * (n + 1)) - A127243 (A335920 n).toNat

end

end A088043.P16328760103534912416

/-!
# A088044: Number of partitions of n with distinct prime signatures.

The programs for A088044, there is no canonical definition to state claims against.
-/

/-! ## A088044.P8710149927944154403

`A077564(n+1)`
-/

namespace A088044.P8710149927944154403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077564 (n + 1)

end

end A088044.P8710149927944154403

/-! ## A088044.P14745152816607967420

`or(char[1], A077564(Δ[n²]-n))`
-/

namespace A088044.P14745152816607967420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A077564 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat)

end

end A088044.P14745152816607967420

/-! ## A088044.P15718706279513534350

`Δ[A000027(∑[A077564(n)])]`
-/

namespace A088044.P15718706279513534350
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077564 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088044.P15718706279513534350

/-! ## A088044.P11759191063409364711

`A028310(A077564(Δ[n²]-n))`
-/

namespace A088044.P11759191063409364711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A077564 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat

end

end A088044.P11759191063409364711

/-! ## A088044.P4660937599289051862

`abs(A077564(Δ[n²]-n)-A000038(n))`
-/

namespace A088044.P4660937599289051862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077564 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat - A000038 n|

end

end A088044.P4660937599289051862

/-! ## A088044.P1035079992424533284

`A077564(Δ[n²]-n)%p?[A138037(n)]`
-/

namespace A088044.P1035079992424533284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138037 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077564 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat) (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n))

end

end A088044.P1035079992424533284

/-! ## A088044.P17617442429134162262

`A007318(C(2, n))*A077564(Δ[n²]-n)`
-/

namespace A088044.P17617442429134162262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A077564 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat

end

end A088044.P17617442429134162262

/-! ## A088044.P8840859667785139345

`A077564(Δ[n²]-n)^A000041(C(2, n))`
-/

namespace A088044.P8840859667785139345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077564 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℚ) ^ (A000041 (Nat.choose 2 n) : ℤ)

end

end A088044.P8840859667785139345

/-!
# A088046: Smallest prime(k) such that prime(k)-prime(j) == 0 (mod prime(n)), for some k > j > n.

The programs for A088046, there is no canonical definition to state claims against.
-/

/-! ## A088046.P3153831051143222175

`A114265(n+1)+record[A096014(n+1)]`
-/

namespace A088046.P3153831051143222175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096014 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114265 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088046.P3153831051143222175

/-! ## A088046.P10276593712052910260

`A114265(n+1)+2*A006005(n+1)`
-/

namespace A088046.P10276593712052910260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114265 (n + 1) + 2 * A006005 (n + 1)

end

end A088046.P10276593712052910260

/-! ## A088046.P3821221130991588

`A114265(n+1)+lcm(2, A000040(n+1))`
-/

namespace A088046.P3821221130991588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114265 (n + 1) + (Int.lcm 2 (A000040 (n + 1)) : ℤ)

end

end A088046.P3821221130991588

/-! ## A088046.P13107851489404956484

`A114265(n+1)+A096014(A006005(n+1))`
-/

namespace A088046.P13107851489404956484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114265 (n + 1) + A096014 (A006005 (n + 1)).toNat

end

end A088046.P13107851489404956484

/-! ## A088046.P13390303677456326824

`A114265(n+1)+A109043(A000040(n+1))`
-/

namespace A088046.P13390303677456326824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114265 (n + 1) + A109043 (A000040 (n + 1)).toNat

end

end A088046.P13390303677456326824

/-!
# A088047: Smallest prime(k) such that prime(k) - prime(j) == 0 (mod prime(n)), for some j < k.

The programs for A088047, there is no canonical definition to state claims against.
-/

/-! ## A088047.P13759536853878003148

`A204894(p?[xor(1, n)])`
-/

namespace A088047.P13759536853878003148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204894 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A088047.P13759536853878003148

/-! ## A088047.P1762627735290486590

`A204894(p?[a(n-1)+2])` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A088047.P1762627735290486590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204894 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A088047.P1762627735290486590

/-! ## A088047.P14524296067903933462

`A204894(Δ[A007504(n)])`
-/

namespace A088047.P14524296067903933462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204894 (f1 (n + 1) - f1 n).toNat

end

end A088047.P14524296067903933462

/-! ## A088047.P17644104176308237684

`A204894(p?[A004442(n)])`
-/

namespace A088047.P17644104176308237684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204894 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A088047.P17644104176308237684

/-! ## A088047.P7323383153234781995

`A204894(p?[A014681(n)])`
-/

namespace A088047.P7323383153234781995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204894 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A088047.P7323383153234781995

/-! ## A088047.P13818773038385897727

`A204894(A000040(n+1))`
-/

namespace A088047.P13818773038385897727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204894 (A000040 (n + 1)).toNat

end

end A088047.P13818773038385897727

/-! ## A088047.P8776131042998845141

`A204894(A008578(n+2))`
-/

namespace A088047.P8776131042998845141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204894 (A008578 (n + 2)).toNat

end

end A088047.P8776131042998845141

/-! ## A088047.P826624670167619252

`A204894(A182986(n+2))`
-/

namespace A088047.P826624670167619252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204894 (A182986 (n + 2)).toNat

end

end A088047.P826624670167619252

/-! ## A088047.P17422897875055686469

`A204894(A014692(n+1)+n)`
-/

namespace A088047.P17422897875055686469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204894 (A014692 (n + 1) + (n : ℤ)).toNat

end

end A088047.P17422897875055686469

/-! ## A088047.P17141722789803914521

`A000040(A204892(A014692(n+1)+n))`
-/

namespace A088047.P17141722789803914521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A204892 (A014692 (n + 1) + (n : ℤ)).toNat).toNat

end

end A088047.P17141722789803914521

/-!
# A088048: Let S(k) be the set of absolute differences of pairs of primes <= k. a(n) is the least k such that S(k) contains all residues mod prime(n).

The programs for A088048, there is no canonical definition to state claims against.
-/

/-! ## A088048.P15256694575744203813

`A151800(eq[A070080(n+3), A197366(n+1)])`
-/

namespace A088048.P15256694575744203813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070080 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197366 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A088048.P15256694575744203813

/-! ## A088048.P3083011458437305094

`p?[A175614(2*n+1)-A175594(n+1)]`
-/

namespace A088048.P3083011458437305094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175614 (2 * n + 1) - A175594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088048.P3083011458437305094

/-!
# A088049: Beginning with 1 palindromes with prime successive differences.

The programs for A088049, there is no canonical definition to state claims against.
-/

/-! ## A088049.P3196752363685502636

`A088050(n)+a(n-1)` with `a(0)=1`
-/

namespace A088049.P3196752363685502636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A088050 n + a (n - 1)

end

end A088049.P3196752363685502636

/-! ## A088049.P9439448449951565608

`∑[A088050(abs(1-n)+1)]-1`
-/

namespace A088049.P9439448449951565608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088050 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A088049.P9439448449951565608

/-! ## A088049.P3721781270715943889

`∑[A088050(n+1)]+1-A088050(n+1)`
-/

namespace A088049.P3721781270715943889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 - A088050 (n + 1)

end

end A088049.P3721781270715943889

/-! ## A088049.P10607400361398700486

`∑[A088050(A233583(n+1))/A014963(4*n+2)]`
-/

namespace A088049.P10607400361398700486
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088050 (A233583 (n + 1)).toNat : ℚ) / (A014963 (4 * n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088049.P10607400361398700486

/-! ## A088049.P3929449661821553415

`A325152(A322131(n+1))`
-/

namespace A088049.P3929449661821553415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325152 (A322131 (n + 1)).toNat

end

end A088049.P3929449661821553415

/-!
# A088050: Primes arising as successive differences in A088049. a(n) = A088049(n+1)-A088049(n).

The programs for A088050, there is no canonical definition to state claims against.
-/

/-! ## A088050.P3127472752789572317

`A088049(n+2)-A088049(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A088050.P3127472752789572317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088049 (n + 2) - A088049 (n + 1)

end

end A088050.P3127472752789572317

/-! ## A088050.P17784415365229106977

`Δ[A088049(n+1)]`
-/

namespace A088050.P17784415365229106977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088050.P17784415365229106977

/-! ## A088050.P2933628573462876647

`Δ[record[A088049(A022446(n))]]`
-/

namespace A088050.P2933628573462876647
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088049 (A022446 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088050.P2933628573462876647

/-! ## A088050.P14472662863760818611

`Δ[record[A088049(A065648(n))]]`
-/

namespace A088050.P14472662863760818611
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088049 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088050.P14472662863760818611

/-! ## A088050.P12548556560195812325

`Δ[record[A088049(A082854(n))]]`
-/

namespace A088050.P12548556560195812325
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088049 (A082854 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088050.P12548556560195812325

/-!
# A088051: Primes in A088049.

The programs for A088051, there is no canonical definition to state claims against.
-/

/-! ## A088051.P273045534068578123

`p?[A088049(n+1)]`
-/

namespace A088051.P273045534068578123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088051.P273045534068578123

/-! ## A088051.P9695017641817910365

`p?[∑[A088050(n+1)]+1]`
-/

namespace A088051.P9695017641817910365
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088050 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088051.P9695017641817910365

/-! ## A088051.P2315829964635555525

`p?[record[A088049(A106466(n))]]`
-/

namespace A088051.P2315829964635555525
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088049 (A106466 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088051.P2315829964635555525

/-!
# A088052: Beginning with 1, palindromes such that successive differences are distinct primes.

The programs for A088052, there is no canonical definition to state claims against.
-/

/-! ## A088052.P10026735223509419111

`A088053(n)+a(n-1)` with `a(0)=1`
-/

namespace A088052.P10026735223509419111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A088053 n + a (n - 1)

end

end A088052.P10026735223509419111

/-! ## A088052.P15182715552264185869

`∑[A088053(floor(acot(n)+n))]-1`
-/

namespace A088052.P15182715552264185869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088053 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A088052.P15182715552264185869

/-! ## A088052.P13473811328111840337

`∑[A088053(abs(1-n)+1)]-2`
-/

namespace A088052.P13473811328111840337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088053 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A088052.P13473811328111840337

/-! ## A088052.P14290572489748061288

`1-4/2+∑[A088053(A028310(n))]`
-/

namespace A088052.P14290572489748061288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088053 (A028310 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (4 : ℚ) / 2 + ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A088052.P14290572489748061288

/-!
# A088053: Primes arising as the successive difference of terms of A088052. a(n) = A088052(n+1)-A088052(n).

The programs for A088053, there is no canonical definition to state claims against.
-/

/-! ## A088053.P14291308461402876525

`A088052(n+1)-A088052(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A088053.P14291308461402876525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088052 (n + 1) - A088052 n

end

end A088053.P14291308461402876525

/-! ## A088053.P9946890997651534992

`Δ[A088052(n)]`
-/

namespace A088053.P9946890997651534992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088052 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088053.P9946890997651534992

/-! ## A088053.P11665522979318160659

`record[A088052(A008611(n))]-A088052(n)`
-/

namespace A088053.P11665522979318160659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088052 (A008611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A088052 n

end

end A088053.P11665522979318160659

/-! ## A088053.P16852625677793681339

`record[A088052(A080465(n))]-A088052(n)`
-/

namespace A088053.P16852625677793681339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088052 (A080465 (n + 10)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A088052 n

end

end A088053.P16852625677793681339

/-!
# A088054: Factorial primes: primes which are within 1 of a factorial number.

The programs for A088054, there is no canonical definition to state claims against.
-/

/-! ## A088054.P15044549470196802814

`p?[∑[log2(gcd(2, n))]!-(-1)^n]`
-/

namespace A088054.P15044549470196802814
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f2 j)).toNat : ℤ) - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088054.P15044549470196802814

/-! ## A088054.P4389510973826977847

`p?[A387616(n+1)]`
-/

namespace A088054.P4389510973826977847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387616 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088054.P4389510973826977847

/-!
# A088055: a(n) = n!*n^n - ((n^(n+1)-1)/(n-1) - 1) for n>1 with a(1)=0.

The programs for A088055, there is no canonical definition to state claims against.
-/

/-! ## A088055.P17624731545966960178

`A061711(n+1)-A031972(n+1)`
-/

namespace A088055.P17624731545966960178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061711 (n + 1) - A031972 (n + 1)

end

end A088055.P17624731545966960178

/-!
# A088060: For each Fibonacci number F(m) = A000045(m), m >= 1, look for the smallest Fibonacci number F(k) > F(m) such that F(m) + F(k) is a square. If it exists, append F(k) to the sequence.

The programs for A088060, there is no canonical definition to state claims against.
-/

/-! ## A088060.P237130381904254782

`A000045(xor(A050534(n), A283670(n+1)))`
-/

namespace A088060.P237130381904254782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.xor (A050534 n) (A283670 (n + 1))).toNat

end

end A088060.P237130381904254782

/-!
# A088066: Numbers n such that 2*p(n)+3, 2*p(n+1)+3, 2*p(n+2)+3 are consecutive primes, where p(i) denotes the i-th prime.

The programs for A088066, there is no canonical definition to state claims against.
-/

/-! ## A088066.P11345991512545227890

`∩[A089526(n+1)-1, A089526(n+1)]`
-/

namespace A088066.P11345991512545227890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089526 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088066.P11345991512545227890

/-! ## A088066.P4337733877399674295

`A000720(A088119(n+1))`
-/

namespace A088066.P4337733877399674295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A088119 (n + 1)).toNat

end

end A088066.P4337733877399674295

/-! ## A088066.P4269565929994265235

`A061395(or(1, A088119(n+1)))`
-/

namespace A088066.P4269565929994265235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A088119 (n + 1))).toNat

end

end A088066.P4269565929994265235

/-! ## A088066.P8939681563693701976

`∑{d}[A088119(n+1), A061395(#)]`
-/

namespace A088066.P8939681563693701976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088119 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A088066.P8939681563693701976

/-!
# A088068: Squares sandwiched between two numbers divisible by squares.

The programs for A088068, there is no canonical definition to state claims against.
-/

/-! ## A088068.P7246121795247946772

`A080666(n+1)²`
-/

namespace A088068.P7246121795247946772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080666 (n + 1) ^ 2

end

end A088068.P7246121795247946772

/-! ## A088068.P11388314335994965309

`∩[A378629(n+1), n²]`
-/

namespace A088068.P11388314335994965309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378629 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A088068.P11388314335994965309

/-! ## A088068.P18322725655752546265

`∩[A030140(n+1), A378629(n+1)]`
-/

namespace A088068.P18322725655752546265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088068.P18322725655752546265

/-! ## A088068.P6179282912893119308

`∩[A169580(n+1), A378629(n+1)]`
-/

namespace A088068.P6179282912893119308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088068.P6179282912893119308

/-! ## A088068.P11647832092637495305

`∩[A000290(n), A378629(n+1)]`
-/

namespace A088068.P11647832092637495305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088068.P11647832092637495305

/-! ## A088068.P7120921804494559836

`∩[A085960(n+1), A378629(n+1)]`
-/

namespace A088068.P7120921804494559836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088068.P7120921804494559836

/-! ## A088068.P13436349943315007107

`∩[A347535(n+1), A378629(n+1)]`
-/

namespace A088068.P13436349943315007107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347535 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088068.P13436349943315007107

/-! ## A088068.P2952548555228485907

`∩[A363284(n+1), A378629(n+1)]`
-/

namespace A088068.P2952548555228485907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363284 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088068.P2952548555228485907

/-! ## A088068.P10309424350426089922

`∩[A213011(n+1), A378629(n+1)]`
-/

namespace A088068.P10309424350426089922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088068.P10309424350426089922

/-! ## A088068.P7277927652009353927

`∩[A034793(n+1), A378629(n+1)]`
-/

namespace A088068.P7277927652009353927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088068.P7277927652009353927

/-! ## A088068.P16729199151714594176

`∩[A363282(n+1), A378629(n+1)]`
-/

namespace A088068.P16729199151714594176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088068.P16729199151714594176

/-! ## A088068.P11591320108992606148

`A002620(2*A080666(n+1))`
-/

namespace A088068.P11591320108992606148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A080666 (n + 1)).toNat

end

end A088068.P11591320108992606148

/-! ## A088068.P4077354475591758700

`∩[A135276(n), A378629(n+1)]`
-/

namespace A088068.P4077354475591758700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135276 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088068.P4077354475591758700

/-! ## A088068.P10553894934387939031

`∩[A087811(n+1), A378629(n+1)]`
-/

namespace A088068.P10553894934387939031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088068.P10553894934387939031

/-! ## A088068.P4328261845945255486

`∩[A146994(n+1), A378629(n+1)]`
-/

namespace A088068.P4328261845945255486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088068.P4328261845945255486

/-! ## A088068.P5584168978498431095

`∩[A182531(n+1), A378629(n+1)]`
-/

namespace A088068.P5584168978498431095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088068.P5584168978498431095

/-! ## A088068.P14315185060135252677

`∩[A363283(n+1), A378629(n+1)]`
-/

namespace A088068.P14315185060135252677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363283 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088068.P14315185060135252677

/-! ## A088068.P12300307905638959148

`∩[A228012(n+2), A378629(n+1)]`
-/

namespace A088068.P12300307905638959148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228012 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088068.P12300307905638959148

/-! ## A088068.P615063989446807983

`∩[A072595(n+1), A378629(n+1)]`
-/

namespace A088068.P615063989446807983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072595 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088068.P615063989446807983

/-! ## A088068.P3402607155398951811

`∩[A005214(n+1), A378629(n+1)]`
-/

namespace A088068.P3402607155398951811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088068.P3402607155398951811

/-!
# A088070: Numbers sandwiched between two numbers having the same number of prime divisors.

The programs for A088070, the canonical program `A088070.P18152770894034870490` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088070 has offset 1).

The definition of A088070 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063464, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A088070.P18152770894034870490

`A063464(n+1)+1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A088070

/-- `A063464(n+1)+1` -/
def P18152770894034870490.Spec : Prop :=
  ∀ n, P18152770894034870490.a n = A088070 (n + 1)

theorem P18152770894034870490.correct : P18152770894034870490.Spec := by
  intro n
  simp only [A088070, Nat.add_sub_cancel]

end A088070

/-! ## A088070.P3392298912321674102

`A115166(n+1)/2`
-/

namespace A088070.P3392298912321674102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115166 (n + 1) : ℚ) / 2

end

end A088070.P3392298912321674102

namespace A088070

/-- `A115166(n+1)/2` -/
def P3392298912321674102.Spec : Prop :=
  ∀ n, P3392298912321674102.a n = (A088070 (n + 1) : ℚ)

theorem P3392298912321674102.correct : P3392298912321674102.Spec := by
  intro n
  simp only [A088070, Nat.add_sub_cancel, A088070.P3392298912321674102.a, A088070.P18152770894034870490.a, A063464, A063464.P10174242227482092936.f1, A063464.P10174242227482092936.f2, A063464.P10174242227482092936.a, A115166, A115166.P634160909117266982.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A088070

/-! ## A088070.P14495805099753707806

`eq[A001221(n+1), A001221(n+3)]+2`
-/

namespace A088070.P14495805099753707806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A088070.P14495805099753707806

namespace A088070

/-- `eq[A001221(n+1), A001221(n+3)]+2` -/
def P14495805099753707806.Spec : Prop :=
  ∀ n, (P14495805099753707806.a n : ℤ) = A088070 (n + 1)

theorem P14495805099753707806.correct : P14495805099753707806.Spec := by
  intro n
  simp only [A088070, Nat.add_sub_cancel, A088070.P14495805099753707806.f1, A088070.P14495805099753707806.f2, A088070.P14495805099753707806.a, A088070.P18152770894034870490.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A063464, A063464.P10174242227482092936.f1, A063464.P10174242227482092936.f2, A063464.P10174242227482092936.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A088070

/-! ## A088070.P987527079490851968

`A020725(A063464(n+1))`
-/

namespace A088070.P987527079490851968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A063464 (n + 1)).toNat

end

end A088070.P987527079490851968

namespace A088070

/-- `A020725(A063464(n+1))` -/
def P987527079490851968.Spec : Prop :=
  ∀ n, P987527079490851968.a n = A088070 (n + 1)

end A088070

/-! ## A088070.P16172978366630650887

`eq[A059957(n+2), A059957(n+1)]+2`
-/

namespace A088070.P16172978366630650887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059957 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059957 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A088070.P16172978366630650887

namespace A088070

/-- `eq[A059957(n+2), A059957(n+1)]+2` -/
def P16172978366630650887.Spec : Prop :=
  ∀ n, (P16172978366630650887.a n : ℤ) = A088070 (n + 1)

end A088070

/-! ## A088070.P2842060583091686121

`A001281(A115166(n+1))`
-/

namespace A088070.P2842060583091686121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A115166 (n + 1)).toNat

end

end A088070.P2842060583091686121

namespace A088070

/-- `A001281(A115166(n+1))` -/
def P2842060583091686121.Spec : Prop :=
  ∀ n, P2842060583091686121.a n = A088070 (n + 1)

end A088070

/-! ## A088070.P12870727287921529446

`A004524(A115166(n+1)+1)`
-/

namespace A088070.P12870727287921529446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A115166 (n + 1) + 1).toNat

end

end A088070.P12870727287921529446

namespace A088070

/-- `A004524(A115166(n+1)+1)` -/
def P12870727287921529446.Spec : Prop :=
  ∀ n, P12870727287921529446.a n = A088070 (n + 1)

end A088070

/-! ## A088070.P4621206960006971745

`A046667(A115166(n+1)+2)`
-/

namespace A088070.P4621206960006971745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (A115166 (n + 1) + 2).toNat

end

end A088070.P4621206960006971745

namespace A088070

/-- `A046667(A115166(n+1)+2)` -/
def P4621206960006971745.Spec : Prop :=
  ∀ n, P4621206960006971745.a n = A088070 (n + 1)

end A088070

/-! ## A088070.P12230185759433620159

`A110654(A115166(n+1)-1)`
-/

namespace A088070.P12230185759433620159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A115166 (n + 1) - 1).toNat

end

end A088070.P12230185759433620159

namespace A088070

/-- `A110654(A115166(n+1)-1)` -/
def P12230185759433620159.Spec : Prop :=
  ∀ n, P12230185759433620159.a n = A088070 (n + 1)

end A088070

/-!
# A088071: Number sandwiched between two numbers having only one prime divisor.

The programs for A088071, there is no canonical definition to state claims against.
-/

/-! ## A088071.P18268771638631840958

`A120432(n+2)`
-/

namespace A088071.P18268771638631840958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120432 (n + 2)

end

end A088071.P18268771638631840958

/-! ## A088071.P16175765314237307637

`A120431(n+2)+1`
-/

namespace A088071.P16175765314237307637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120431 (n + 2) + 1

end

end A088071.P16175765314237307637

/-! ## A088071.P18406029446415995434

`A020725(A120431(n+2))`
-/

namespace A088071.P18406029446415995434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A120431 (n + 2)).toNat

end

end A088071.P18406029446415995434

/-! ## A088071.P15606342527069482770

`record[xor(1, A082081(A016825(n)))]`
-/

namespace A088071.P15606342527069482770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A082081 (A016825 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088071.P15606342527069482770

/-! ## A088071.P4113405442333250490

`record[A120432(or(n, A000038(n)))]`
-/

namespace A088071.P4113405442333250490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120432 (Int.lor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088071.P4113405442333250490

/-! ## A088071.P8122882791844078364

`record[A076388(A246655(n+1)+2)]`
-/

namespace A088071.P8122882791844078364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076388 (A246655 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088071.P8122882791844078364

/-! ## A088071.P2608218590596256232

`record[A345998(A345993(n+2)+2)]`
-/

namespace A088071.P2608218590596256232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345998 (A345993 (n + 2) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088071.P2608218590596256232

/-! ## A088071.P6997589143618641282

`eq[n, A063973(A344006(n+1))+1]`
-/

namespace A088071.P6997589143618641282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063973 (A344006 (n + 1)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088071.P6997589143618641282

/-! ## A088071.P6589322313328364954

`∩[A088070(n+1), A181062(n+1)]`
-/

namespace A088071.P6589322313328364954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088071.P6589322313328364954

/-! ## A088071.P4495992543670844014

`∪[A014574(n+1), A088072(n+1)]`
-/

namespace A088071.P4495992543670844014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A088071.P4495992543670844014

/-!
# A088072: Numbers sandwiched between two numbers having only one prime divisor (at least) one of which is composite.

The programs for A088072, there is no canonical definition to state claims against.
-/

/-! ## A088072.P16873137740975943531

`∩[A080262(n+1), A120432(n+1)]`
-/

namespace A088072.P16873137740975943531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088072.P16873137740975943531

/-! ## A088072.P4886744355200217655

`∩[A080262(n+1), A120431(n+1)+1]`
-/

namespace A088072.P4886744355200217655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120431 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088072.P4886744355200217655

/-! ## A088072.P15851114225739494250

`∩[A120432(n+1), A173186(n+1)]`
-/

namespace A088072.P15851114225739494250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173186 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088072.P15851114225739494250

/-! ## A088072.P1966781903279351942

`∩[A100318(n+1), A120432(n+1)]`
-/

namespace A088072.P1966781903279351942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100318 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088072.P1966781903279351942

/-! ## A088072.P295502447651396067

`∩[A080262(n+1), A020725(A120431(n+1))]`
-/

namespace A088072.P295502447651396067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A120431 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088072.P295502447651396067

/-!
# A088075: Smallest number sandwiched between two numbers having exactly n prime divisors.

The programs for A088075, there is no canonical definition to state claims against.
-/

/-! ## A088075.P8305784032107649035

`A219017(2*n+1)+A151666(A086680(n))`
-/

namespace A088075.P8305784032107649035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219017 (2 * n + 1) + A151666 (A086680 n).toNat

end

end A088075.P8305784032107649035

/-! ## A088075.P1538263209639031171

`A219017(2*n+1)+A010057(A261041(n))`
-/

namespace A088075.P1538263209639031171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219017 (2 * n + 1) + A010057 (A261041 n).toNat

end

end A088075.P1538263209639031171

/-! ## A088075.P10292348327332874114

`A219017(2*n+1)+A065333(A108328(n+1))`
-/

namespace A088075.P10292348327332874114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219017 (2 * n + 1) + A065333 (A108328 (n + 1)).toNat

end

end A088075.P10292348327332874114

/-! ## A088075.P3971827830534167131

`or(A001221(A219017(n+1)), A219017(2*n+1))`
-/

namespace A088075.P3971827830534167131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A219017 (n + 1)).toNat) (A219017 (2 * n + 1))

end

end A088075.P3971827830534167131

/-! ## A088075.P5995089666032341959

`or(A035263(A232664(n+1)), A219017(2*n+1))`
-/

namespace A088075.P5995089666032341959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A035263 (A232664 (n + 1)).toNat) (A219017 (2 * n + 1))

end

end A088075.P5995089666032341959

/-!
# A088077: a(n) is the least number m sandwiched between m-1 and m+1, both with special properties as follows: both are squarefree; both have n distinct prime factors.

The programs for A088077, there is no canonical definition to state claims against.
-/

/-! ## A088077.P2901449222760704839

`A364242(n+1)+1`
-/

namespace A088077.P2901449222760704839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364242 (n + 1) + 1

end

end A088077.P2901449222760704839

/-!
# A088078: Leading column of triangle defined in A088079.

The programs for A088078, there is no canonical definition to state claims against.
-/

/-! ## A088078.P973243317394289146

`A088079(n)-n`
-/

namespace A088078.P973243317394289146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088079 n - (n : ℤ)

end

end A088078.P973243317394289146

/-! ## A088078.P18061328524024698367

`-or(-A088079(n), A028310(n))`
-/

namespace A088078.P18061328524024698367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor (-A088079 n) (A028310 n)

end

end A088078.P18061328524024698367

/-! ## A088078.P3008373702294141900

`A274923(A016754(n))+A088079(n)`
-/

namespace A088078.P3008373702294141900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274923 (A016754 n).toNat + A088079 n

end

end A088078.P3008373702294141900

/-!
# A088079: Diagonal T(n,n) of the triangle T(n,k), n>=0, 0<=k<=n, in which row n contains n+1 consecutive integers T(n,k+1)=T(n,k)+1 such that T(n,k) is divisible by a k-th power.

The programs for A088079, there is no canonical definition to state claims against.
-/

/-! ## A088079.P2150652503698222728

`A088078(n)+n`
-/

namespace A088079.P2150652503698222728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088078 n + (n : ℤ)

end

end A088079.P2150652503698222728

/-! ## A088079.P9256045836841616876

`A082743(n)-(1-A088078(n))`
-/

namespace A088079.P9256045836841616876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082743 n - (1 - A088078 n)

end

end A088079.P9256045836841616876

/-! ## A088079.P11986316860250666908

`A007318(C(n, 2))-(1-n-A088078(n))`
-/

namespace A088079.P11986316860250666908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) - (1 - (n : ℤ) - A088078 n)

end

end A088079.P11986316860250666908

/-!
# A088081: Smallest prime(k) such that for every r = 1 to n, there exist i,j, k >= j > i, such that prime(j)-prime(i) == 0 ( mod r).

The programs for A088081, there is no canonical definition to state claims against.
-/

/-! ## A088081.P12717951047512263894

`A006530(a(n-1)*A204894(n+1))` with `a(0)=3`
-/

namespace A088081.P12717951047512263894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A006530 (a (n - 1) * A204894 (n + 1)).toNat

end

end A088081.P12717951047512263894

/-! ## A088081.P7251229353248908169

`A006530(lcm(a(n-1), A204894(n+1)))` with `a(0)=3`
-/

namespace A088081.P7251229353248908169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A006530 (Int.lcm (a (n - 1)) (A204894 (n + 1)))

end

end A088081.P7251229353248908169

/-! ## A088081.P71923291048023057

`A032742(a(n-1)*A204894(n+1))` with `a(0)=3`
-/

namespace A088081.P71923291048023057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A032742 (a (n - 1) * A204894 (n + 1)).toNat

end

end A088081.P71923291048023057

/-! ## A088081.P8832028994679969098

`A033677(a(n-1)*A204894(n+1))` with `a(0)=3`
-/

namespace A088081.P8832028994679969098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A033677 (a (n - 1) * A204894 (n + 1)).toNat

end

end A088081.P8832028994679969098

/-!
# A088082: Indices n of terms in A088081 such that a(n+1) > a(n).

The programs for A088082, there is no canonical definition to state claims against.
-/

/-! ## A088082.P8319184633412940444

`A272634(n+3)-1`
-/

namespace A088082.P8319184633412940444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272634 (n + 3) - 1

end

end A088082.P8319184633412940444

/-! ## A088082.P8694601063800430

`record[abs(1-A272633(n))]`
-/

namespace A088082.P8694601063800430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A272633 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088082.P8694601063800430

/-! ## A088082.P10195217231473705022

`∑[abs(Δ[A272634(n+2)])]`
-/

namespace A088082.P10195217231473705022
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272634 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088082.P10195217231473705022

/-! ## A088082.P10049071621786612907

`∑[A000027(Δ[A272634(n+2)])]`
-/

namespace A088082.P10049071621786612907
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272634 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088082.P10049071621786612907

/-! ## A088082.P1452637329570770479

`∑[A067080(Δ[A272634(n+2)])]`
-/

namespace A088082.P1452637329570770479
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272634 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067080 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088082.P1452637329570770479

/-! ## A088082.P12643429523627537233

`∑[A000188(Δ[A272634(n+2)]²)]`
-/

namespace A088082.P12643429523627537233
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272634 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 ((f2 (n + 1) - f2 n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088082.P12643429523627537233

/-! ## A088082.P14851245992354961172

`∑[A000194(Δ[A272634(n+2)]²)]`
-/

namespace A088082.P14851245992354961172
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272634 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 ((f2 (n + 1) - f2 n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088082.P14851245992354961172

/-! ## A088082.P14222221657523726653

`∑[Δ[A272634(n+2)]%A000040(n+1)]`
-/

namespace A088082.P14222221657523726653
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272634 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A000040 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088082.P14222221657523726653

/-! ## A088082.P6730491161806032122

`∑[(A000041(n)%2)!*Δ[A272634(n+2)]]`
-/

namespace A088082.P6730491161806032122
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272634 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A000041 n) 2).toNat : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088082.P6730491161806032122

/-! ## A088082.P2338323028965483433

`∑[Δ[A272634(n+2)]+A008683(4*(n+1))]`
-/

namespace A088082.P2338323028965483433
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272634 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + A008683 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088082.P2338323028965483433

/-!
# A088083: Primes p which are members of A088081. a(n) = A088081(A088082(n-1) +1).

The programs for A088083, there is no canonical definition to state claims against.
-/

/-! ## A088083.P12718577269517796223

`A088081(A088082(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A088083.P12718577269517796223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088081 (A088082 n).toNat

end

end A088083.P12718577269517796223

/-! ## A088083.P3916348012325384883

`record[A204894(n+1)]`
-/

namespace A088083.P3916348012325384883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204894 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088083.P3916348012325384883

/-! ## A088083.P9375732907367145781

`A204894(A272634(n+2))`
-/

namespace A088083.P9375732907367145781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204894 (A272634 (n + 2)).toNat

end

end A088083.P9375732907367145781

/-! ## A088083.P15163669678065863570

`A000040(record[A204892(n+1)])`
-/

namespace A088083.P15163669678065863570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204892 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A088083.P15163669678065863570

/-! ## A088083.P7940844076945022415

`A006005(record[A204892(n+1)])`
-/

namespace A088083.P7940844076945022415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204892 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A088083.P7940844076945022415

/-! ## A088083.P18032890534094119521

`A006093(record[A204892(n+1)])+1`
-/

namespace A088083.P18032890534094119521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204892 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A088083.P18032890534094119521

/-! ## A088083.P13794210380637934141

`A006530(record[A204894(-xor(n, -1))])`
-/

namespace A088083.P13794210380637934141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204894 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A088083.P13794210380637934141

/-! ## A088083.P7518365195811927057

`A020639(record[A204894(-xor(n, -1))])`
-/

namespace A088083.P7518365195811927057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204894 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A088083.P7518365195811927057

/-! ## A088083.P10541588469397308411

`A020639(record[A204894(ϕ²-(ϕ-n))])`
-/

namespace A088083.P10541588469397308411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204894 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A088083.P10541588469397308411

/-!
# A088084: a(1) = 2; then least palindrome greater than the previous term such that every partial concatenation is a prime.

The programs for A088084, there is no canonical definition to state claims against.
-/

/-! ## A088084.P996748345946991642

`A029968(record[A003620(2*n+1)])`
-/

namespace A088084.P996748345946991642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003620 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029968 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A088084.P996748345946991642

/-! ## A088084.P17633424257221235751

`record[A047813(A080247(n)+A059787(n+1))]`
-/

namespace A088084.P17633424257221235751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A080247 n + A059787 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088084.P17633424257221235751

/-!
# A088085: Primes arising in A088084.

The programs for A088085, there is no canonical definition to state claims against.
-/

/-! ## A088085.P3216811226971241954

`A088087((n+1)^∑{p}[n+1, gcd(n, #)])`
-/

namespace A088085.P3216811226971241954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088087 ((n + 1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p))

end

end A088085.P3216811226971241954

/-!
# A088088: a(1) = 1, a(n) = smallest multiple of a(n-1) such that every partial concatenation (n >1) is a prime.

The programs for A088088, there is no canonical definition to state claims against.
-/

/-! ## A088088.P279065924364251738

`∏[A151570(∏[A214728(n)])]`
-/

namespace A088088.P279065924364251738
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214728 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151570 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A088088.P279065924364251738

/-! ## A088088.P10087807259032525662

`∏[A053000(A000010(∏[n+2]))]`
-/

namespace A088088.P10087807259032525662
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 (A000010 (∏ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A088088.P10087807259032525662

/-!
# A088090: For n > 1, a(n) is the smallest number such that n-th concatenation is prime and the smallest palindrome beginning with (but not equal to) this concatenation is also prime.

The programs for A088090, there is no canonical definition to state claims against.
-/

/-! ## A088090.P2622903872337312800

`A161942(A129331(n)+A000041(n))`
-/

namespace A088090.P2622903872337312800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161942 (A129331 n + A000041 n).toNat

end

end A088090.P2622903872337312800

/-!
# A088091: Primes p such that the smallest palindrome beginning with p with odd number of digits is also a palindrome.

The programs for A088091, there is no canonical definition to state claims against.
-/

/-! ## A088091.P17612531257294407443

`p?[record[A128227(A222562(n+1))]]`
-/

namespace A088091.P17612531257294407443
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 (A222562 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088091.P17612531257294407443

/-! ## A088091.P5357382066600629553

`∩[A089743(n+1), A233134(n+1)]`
-/

namespace A088091.P5357382066600629553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088091.P5357382066600629553

/-! ## A088091.P607729739853845593

`∩[A233134(n+1), A381929(n+1)]`
-/

namespace A088091.P607729739853845593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088091.P607729739853845593

/-! ## A088091.P13943090966505808621

`p?[eq[1, A127093(A103284(n))]]`
-/

namespace A088091.P13943090966505808621
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (A103284 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A088091.P13943090966505808621

/-! ## A088091.P11800423151523197445

`p?[eq[A025857(n), A079691(n)]]`
-/

namespace A088091.P11800423151523197445
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025857 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079691 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A088091.P11800423151523197445

/-!
# A088092: Palindromic primes p such that if each digit d is replaced by 10-d then the resulting palindrome is also a prime.

The programs for A088092, there is no canonical definition to state claims against.
-/

/-! ## A088092.P543292979531620262

`∩[A071249(n+1), A391948(n+1)]`
-/

namespace A088092.P543292979531620262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088092.P543292979531620262

/-! ## A088092.P16667730807121783057

`filter[A089740(n+1), A136522(#)]`
-/

namespace A088092.P16667730807121783057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089740 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A088092.P16667730807121783057

/-! ## A088092.P13452157741545408072

`filter[A391948(n+1), A136522(#)]`
-/

namespace A088092.P13452157741545408072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A088092.P13452157741545408072

/-! ## A088092.P16423904114277857580

`filter[A230047(n+2), A060584(#)]`
-/

namespace A088092.P16423904114277857580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230047 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A060584 (f1 j).toNat = 1) n)

end

end A088092.P16423904114277857580

/-! ## A088092.P14500746563928843990

`∩[A047984(n+1), A230047(n+1)]`
-/

namespace A088092.P14500746563928843990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047984 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088092.P14500746563928843990

/-!
# A088093: Beginning with 2, smallest palindrome >= the previous term such that every concatenation is a prime.

The programs for A088093, there is no canonical definition to state claims against.
-/

/-! ## A088093.P7526653311266188410

`A139169(∑[ceil(ϕ²²*a(n-1))])` with `a(0)=3, a(1)=1, a(2)=1`
-/

namespace A088093.P7526653311266188410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 1, 1] fun n f1 =>
  ⌈(Real.goldenRatio ^ 2) ^ 2 * (f1 (n - 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139169 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A088093.P7526653311266188410

/-! ## A088093.P16034361604348540187

`A282352(n)%A310622(A282351(n+1))`
-/

namespace A088093.P16034361604348540187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282352 n) (A310622 (A282351 (n + 1)).toNat)

end

end A088093.P16034361604348540187

/-! ## A088093.P17145688132363002497

`or(A214719(n+1), A290091(A261001(n+1)))`
-/

namespace A088093.P17145688132363002497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A214719 (n + 1)) (A290091 (A261001 (n + 1)).toNat)

end

end A088093.P17145688132363002497

/-!
# A088094: Primes arising in A088093.

The programs for A088094, there is no canonical definition to state claims against.
-/

/-! ## A088094.P18063356610050088534

`A260502(n!)+A048549(n+1)`
-/

namespace A088094.P18063356610050088534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260502 (Nat.factorial n) + A048549 (n + 1)

end

end A088094.P18063356610050088534

/-! ## A088094.P6272293201081774832

`A260502(A000142(n))+A048549(n+1)`
-/

namespace A088094.P6272293201081774832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260502 (A000142 n).toNat + A048549 (n + 1)

end

end A088094.P6272293201081774832

/-!
# A088095: a(1) = 1, a(n) = smallest number == 1 mod (a(n-1)) and > 1 such that every concatenation (n>1) is prime.

The programs for A088095, there is no canonical definition to state claims against.
-/

/-! ## A088095.P3248619564743215232

`A053642(or(A151800(n), A206239(n+1)))`
-/

namespace A088095.P3248619564743215232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053642 (Int.lor (A151800 n) (A206239 (n + 1))).toNat

end

end A088095.P3248619564743215232

/-! ## A088095.P10115969552669326493

`A053642(or(A018367(n+1), A206239(n+1)))`
-/

namespace A088095.P10115969552669326493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053642 (Int.lor (A018367 (n + 1)) (A206239 (n + 1))).toNat

end

end A088095.P10115969552669326493

/-!
# A088099: Group the natural numbers with at least two members in each group such that the n-th group sum is a multiple of n: (1, 2), (3, 4, 5), (6, 7, 8), (9, 10, 11, 12, 13, 14, 15), (16, 17, 18, 19), (20, 21, 22, 23, 24, 25, 26, 27, 28), (29, 30, 31, 32, 33, 34), ... Sequence contains the group sums.

The programs for A088099, there is no canonical definition to state claims against.
-/

/-! ## A088099.P5262853478914062646

`(n+1)*A088101(n+1)`
-/

namespace A088099.P5262853478914062646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A088101 (n + 1)

end

end A088099.P5262853478914062646

/-! ## A088099.P4846121717698609664

`A088101(1-A001489(n))/cot(atan(n+1))`
-/

namespace A088099.P4846121717698609664
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A088101 (1 - A001489 n).toNat : ℝ) / Real.cot (Real.arctan (n + 1 : ℝ))

end

end A088099.P4846121717698609664

/-! ## A088099.P3349287430576219173

`A088101(1-A001489(n))*A242112(2*n)`
-/

namespace A088099.P3349287430576219173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088101 (1 - A001489 n).toNat * A242112 (2 * n)

end

end A088099.P3349287430576219173

/-! ## A088099.P842399306497838273

`A088101(A077168(n))*(n+1)`
-/

namespace A088099.P842399306497838273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088101 (A077168 n).toNat * (n + 1 : ℤ)

end

end A088099.P842399306497838273

