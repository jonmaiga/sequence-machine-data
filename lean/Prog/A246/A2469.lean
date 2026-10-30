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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C046
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A246901: a(n) is the n-th smallest prime p such that p+4n is also prime.

The programs for A246901, there is no canonical definition to state claims against.
-/

/-! ## A246901.P14854164898851756784

`A231608(A117625(n+1))`
-/

namespace A246901.P14854164898851756784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231608 (A117625 (n + 1)).toNat

end

end A246901.P14854164898851756784

/-! ## A246901.P9457593095131149260

`A231608(A062123(n)+n)`
-/

namespace A246901.P9457593095131149260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231608 (A062123 n + (n : ℤ)).toNat

end

end A246901.P9457593095131149260

/-! ## A246901.P12609425537236087325

`A231608(A000124(3*n+1)+n)`
-/

namespace A246901.P12609425537236087325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231608 (A000124 (3 * n + 1) + (n : ℤ)).toNat

end

end A246901.P12609425537236087325

/-! ## A246901.P3166670346330474137

`A231608(A061579(∑[9*n+2])+1)`
-/

namespace A246901.P3166670346330474137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231608 (A061579 (∑ j ∈ Finset.range (n + 1), f1 j) + 1).toNat

end

end A246901.P3166670346330474137

/-! ## A246901.P16803004242927298626

`A231608(A000217(3*n+1)+n+1)`
-/

namespace A246901.P16803004242927298626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231608 (A000217 (3 * n + 1) + (n + 1 : ℤ)).toNat

end

end A246901.P16803004242927298626

/-!
# A246902: Number of tilings of a 5 X n rectangle using n pentominoes of distinct shapes.

The programs for A246902, there is no canonical definition to state claims against.
-/

/-! ## A246902.P14591167520083953199

`A261310(∏[(n-C(dr(n²), 9))!])`
-/

namespace A246902.P14591167520083953199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((n : ℤ) - (Nat.choose (SequenceMachineLib.digitalRoot (n ^ 2 : ℤ)) 9 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261310 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A246902.P14591167520083953199

/-!
# A246905: Number of numbers in row n of A246904.

The programs for A246905, there is no canonical definition to state claims against.
-/

/-! ## A246905.P11630799490299531056

`A091696(n+1)+A002885(A036633(n))`
-/

namespace A246905.P11630799490299531056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091696 (n + 1) + A002885 (A036633 n).toNat

end

end A246905.P11630799490299531056

/-! ## A246905.P16096868941549301976

`A129398(A059076(n))+A091696(n+1)`
-/

namespace A246905.P16096868941549301976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129398 (A059076 n).toNat + A091696 (n + 1)

end

end A246905.P16096868941549301976

/-! ## A246905.P9228857916814260884

`A191286(n+1)+A003056(A120588(n))`
-/

namespace A246905.P9228857916814260884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191286 (n + 1) + A003056 (A120588 n).toNat

end

end A246905.P9228857916814260884

/-! ## A246905.P11009652373343814305

`A000029(n+1)-A025456(A000105(n))`
-/

namespace A246905.P11009652373343814305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000029 (n + 1) - A025456 (A000105 n).toNat

end

end A246905.P11009652373343814305

/-! ## A246905.P7065281192312061210

`A000029(n+1)-A010060(A144555(3*(n+1)))`
-/

namespace A246905.P7065281192312061210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000029 (n + 1) - A010060 (A144555 (3 * (n + 1))).toNat

end

end A246905.P7065281192312061210

/-!
# A246906: G.f.: 1 / AGM(1-21*x, sqrt((1-9*x)*(1-49*x))).

The programs for A246906, the canonical program `A246906.P3779992208364136577` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246906 has offset 0).

The definition of A246906 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A246906.P11868412435177705748

`∑{#}[n, 3^(n-#)*C(n, #)*C(2*#, #)]²`
-/

namespace A246906.P11868412435177705748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ k ∈ Finset.range (f1 n + 1), (3 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (Nat.choose (2 * k) k : ℚ)) ^ 2

end

end A246906.P11868412435177705748

namespace A246906

/-- `∑{#}[n, 3^(n-#)*C(n, #)*C(2*#, #)]²` -/
def P11868412435177705748.Spec : Prop :=
  ∀ n, P11868412435177705748.a n = (A246906 n : ℚ)

end A246906

/-! ## A246906.P3779992208364136577

`A098409(n)²`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A246906

/-- `A098409(n)²` -/
def P3779992208364136577.Spec : Prop :=
  ∀ n, P3779992208364136577.a n = A246906 n

theorem P3779992208364136577.correct : P3779992208364136577.Spec := by
  intro n
  simp only [A246906]

end A246906

/-! ## A246906.P14110269901416785924

`∑{#}[floor(n/2), 5^(n-2*#)*C(n, 2*#)*C(2*#, #)]^2`
-/

namespace A246906.P14110269901416785924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ k ∈ Finset.range (f1 n + 1).toNat, (5 : ℚ) ^ ((n : ℤ) - (2 * k : ℤ) : ℤ) * (Nat.choose n (2 * k) : ℚ) * (Nat.choose (2 * k) k : ℚ)) ^ 2

end

end A246906.P14110269901416785924

namespace A246906

/-- `∑{#}[floor(n/2), 5^(n-2*#)*C(n, 2*#)*C(2*#, #)]^2` -/
def P14110269901416785924.Spec : Prop :=
  ∀ n, P14110269901416785924.a n = (A246906 n : ℚ)

end A246906

/-! ## A246906.P8635235119712607212

`record[A292627(A055999(n))²]`
-/

namespace A246906.P8635235119712607212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292627 (A055999 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246906.P8635235119712607212

namespace A246906

/-- `record[A292627(A055999(n))²]` -/
def P8635235119712607212.Spec : Prop :=
  ∀ n, P8635235119712607212.a n = A246906 n

end A246906

/-! ## A246906.P10337262896225320836

`record[A292627(∑[A020705(n)])²]`
-/

namespace A246906.P10337262896225320836
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292627 (∑ j ∈ Finset.range (n + 1), f2 j).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246906.P10337262896225320836

namespace A246906

/-- `record[A292627(∑[A020705(n)])²]` -/
def P10337262896225320836.Spec : Prop :=
  ∀ n, P10337262896225320836.a n = A246906 n

end A246906

/-! ## A246906.P11038541939115194323

`A098409(n)^A020639(2*(n+2))`
-/

namespace A246906.P11038541939115194323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098409 n : ℚ) ^ (A020639 (2 * (n + 2)) : ℤ)

end

end A246906.P11038541939115194323

namespace A246906

/-- `A098409(n)^A020639(2*(n+2))` -/
def P11038541939115194323.Spec : Prop :=
  ∀ n, P11038541939115194323.a n = (A246906 n : ℚ)

end A246906

/-! ## A246906.P14025159673076008978

`A098409(n)^A010873(A005899(n))`
-/

namespace A246906.P14025159673076008978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098409 n : ℚ) ^ (A010873 (A005899 n).toNat : ℤ)

end

end A246906.P14025159673076008978

namespace A246906

/-- `A098409(n)^A010873(A005899(n))` -/
def P14025159673076008978.Spec : Prop :=
  ∀ n, P14025159673076008978.a n = (A246906 n : ℚ)

end A246906

/-! ## A246906.P2548664895043944753

`A098409(n)^A001222(A001748(n+1))`
-/

namespace A246906.P2548664895043944753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098409 n : ℚ) ^ (A001222 (A001748 (n + 1)).toNat : ℤ)

end

end A246906.P2548664895043944753

namespace A246906

/-- `A098409(n)^A001222(A001748(n+1))` -/
def P2548664895043944753.Spec : Prop :=
  ∀ n, P2548664895043944753.a n = (A246906 n : ℚ)

end A246906

/-! ## A246906.P10589879460203443566

`A098409(n)^A000005(A006512(n+1))`
-/

namespace A246906.P10589879460203443566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098409 n : ℚ) ^ (A000005 (A006512 (n + 1)).toNat : ℤ)

end

end A246906.P10589879460203443566

namespace A246906

/-- `A098409(n)^A000005(A006512(n+1))` -/
def P10589879460203443566.Spec : Prop :=
  ∀ n, P10589879460203443566.a n = (A246906 n : ℚ)

end A246906

/-! ## A246906.P5465694310122437809

`A098409(n)^A006530(A098354(n+1))`
-/

namespace A246906.P5465694310122437809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098409 n : ℚ) ^ (A006530 (A098354 (n + 1)).toNat : ℤ)

end

end A246906.P5465694310122437809

namespace A246906

/-- `A098409(n)^A006530(A098354(n+1))` -/
def P5465694310122437809.Spec : Prop :=
  ∀ n, P5465694310122437809.a n = (A246906 n : ℚ)

end A246906

/-!
# A246907: Numbers n such that sigma(n + sigma(n)) = 3n.

The programs for A246907, there is no canonical definition to state claims against.
-/

/-! ## A246907.P6158335101540603802

`2^A002235(n+1)`
-/

namespace A246907.P6158335101540603802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002235 (n + 1) : ℤ)

end

end A246907.P6158335101540603802

/-! ## A246907.P10065069906344013094

`ceil(A007505(n+1)/3)`
-/

namespace A246907.P10065069906344013094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007505 (n + 1) : ℚ) / 3⌉

end

end A246907.P10065069906344013094

/-! ## A246907.P6872988912980014344

`2^(A091997(n+1)-1)`
-/

namespace A246907.P6872988912980014344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A091997 (n + 1) - 1 : ℤ)

end

end A246907.P6872988912980014344

/-! ## A246907.P6141057338011263604

`2^eq[2, A125973(n+1)]`
-/

namespace A246907.P6141057338011263604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125973 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A246907.P6141057338011263604

/-! ## A246907.P17441860125529223276

`A000079(A002235(n+1))`
-/

namespace A246907.P17441860125529223276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002235 (n + 1)).toNat

end

end A246907.P17441860125529223276

/-!
# A246908: a(n) = sigma(n + sigma(n)) - sigma(n).

The programs for A246908, the canonical program `A246908.P13709036881052009851` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246908 has offset 1).

The definition of A246908 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1+A000203(n+1))-A000203(n+1)` (program `A246908.P13709036881052009851`, by `A246908.P13709036881052009851.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A246908.P13709036881052009851

`A000203(n+1+A000203(n+1))-A000203(n+1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A246908

/-- `A000203(n+1+A000203(n+1))-A000203(n+1)` -/
def P13709036881052009851.Spec : Prop :=
  ∀ n, P13709036881052009851.a n = A246908 (n + 1)

theorem P13709036881052009851.correct : P13709036881052009851.Spec := by
  intro n
  simp only [A246908, Nat.add_sub_cancel]

end A246908

/-! ## A246908.P12425899728442860893

`A000203(n+A000203(n+1)+1)-A000203(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A246908.P12425899728442860893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ((n : ℤ) + A000203 (n + 1) + 1).toNat - A000203 (n + 1)

end

end A246908.P12425899728442860893

namespace A246908

/-- `A000203(n+A000203(n+1)+1)-A000203(n+1)` -/
def P12425899728442860893.Spec : Prop :=
  ∀ n, P12425899728442860893.a n = A246908 (n + 1)

theorem P12425899728442860893.correct : P12425899728442860893.Spec := by
  intro n
  simp only [A246908, Nat.add_sub_cancel, A246908.P12425899728442860893.a, A246908.P13709036881052009851.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A246908

/-! ## A246908.P3993768082332571420

`A246456(n+1)-∑{d}[n+1, #]`
-/

namespace A246908.P3993768082332571420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246456 (n + 1) - ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A246908.P3993768082332571420

namespace A246908

/-- `A246456(n+1)-∑{d}[n+1, #]` -/
def P3993768082332571420.Spec : Prop :=
  ∀ n, P3993768082332571420.a n = A246908 (n + 1)

end A246908

/-! ## A246908.P542447410839165055

`A000203(1+∑{d}[1+n, #]+n)-∑{d}[n+1, #]`
-/

namespace A246908.P542447410839165055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (1 + ∑ d ∈ Nat.divisors (f1 n), d + n) - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

end

end A246908.P542447410839165055

namespace A246908

/-- `A000203(1+∑{d}[1+n, #]+n)-∑{d}[n+1, #]` -/
def P542447410839165055.Spec : Prop :=
  ∀ n, P542447410839165055.a n = A246908 (n + 1)

end A246908

/-! ## A246908.P14110516356856020014

`A246456(n+1)-A000203(n+1)`
-/

namespace A246908.P14110516356856020014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246456 (n + 1) - A000203 (n + 1)

end

end A246908.P14110516356856020014

namespace A246908

/-- `A246456(n+1)-A000203(n+1)` -/
def P14110516356856020014.Spec : Prop :=
  ∀ n, P14110516356856020014.a n = A246908 (n + 1)

end A246908

/-! ## A246908.P6536512591519980938

`A000203(A155085(n+1))-A000203(n+1)`
-/

namespace A246908.P6536512591519980938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A155085 (n + 1)).toNat - A000203 (n + 1)

end

end A246908.P6536512591519980938

namespace A246908

/-- `A000203(A155085(n+1))-A000203(n+1)` -/
def P6536512591519980938.Spec : Prop :=
  ∀ n, P6536512591519980938.a n = A246908 (n + 1)

end A246908

/-! ## A246908.P7029442204379492611

`A000203(A088580(n+1)+n)-A000203(n+1)`
-/

namespace A246908.P7029442204379492611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A088580 (n + 1) + (n : ℤ)).toNat - A000203 (n + 1)

end

end A246908.P7029442204379492611

namespace A246908

/-- `A000203(A088580(n+1)+n)-A000203(n+1)` -/
def P7029442204379492611.Spec : Prop :=
  ∀ n, P7029442204379492611.a n = A246908 (n + 1)

theorem P7029442204379492611.correct : P7029442204379492611.Spec := by
  intro n
  simp only [A246908, Nat.add_sub_cancel, A246908.P7029442204379492611.a, A246908.P13709036881052009851.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A088580, A088580.P3089093194242277422.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A246908

/-! ## A246908.P18332230543609243735

`2*(n+1)+∑{d}[n+1, #]-A033879(1+∑{d}[n+1, #]+n)`
-/

namespace A246908.P18332230543609243735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) + ∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - A033879 (1 + ∑ d ∈ Nat.divisors (f2 n), d + n)

end

end A246908.P18332230543609243735

namespace A246908

/-- `2*(n+1)+∑{d}[n+1, #]-A033879(1+∑{d}[n+1, #]+n)` -/
def P18332230543609243735.Spec : Prop :=
  ∀ n, P18332230543609243735.a n = A246908 (n + 1)

end A246908

/-! ## A246908.P2924863502220523455

`A224880(n+1)-A033879(A155085(n+1))`
-/

namespace A246908.P2924863502220523455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224880 (n + 1) - A033879 (A155085 (n + 1)).toNat

end

end A246908.P2924863502220523455

namespace A246908

/-- `A224880(n+1)-A033879(A155085(n+1))` -/
def P2924863502220523455.Spec : Prop :=
  ∀ n, P2924863502220523455.a n = A246908 (n + 1)

end A246908

/-! ## A246908.P16094821494719349083

`A001065(n+1+∑{d}[n+1, #])+n+1`
-/

namespace A246908.P16094821494719349083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1 + ∑ d ∈ Nat.divisors (f1 n), d) + (n + 1 : ℤ)

end

end A246908.P16094821494719349083

namespace A246908

/-- `A001065(n+1+∑{d}[n+1, #])+n+1` -/
def P16094821494719349083.Spec : Prop :=
  ∀ n, P16094821494719349083.a n = A246908 (n + 1)

end A246908

/-! ## A246908.P11028936875936029859

`A001065(A155085(n+1))+1+n`
-/

namespace A246908.P11028936875936029859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A155085 (n + 1)).toNat + 1 + (n : ℤ)

end

end A246908.P11028936875936029859

namespace A246908

/-- `A001065(A155085(n+1))+1+n` -/
def P11028936875936029859.Spec : Prop :=
  ∀ n, P11028936875936029859.a n = A246908 (n + 1)

end A246908

/-! ## A246908.P13456994657648410074

`A001065(A000203(n+1)+1+n)+n+1`
-/

namespace A246908.P13456994657648410074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A000203 (n + 1) + 1 + (n : ℤ)).toNat + (n + 1 : ℤ)

end

end A246908.P13456994657648410074

namespace A246908

/-- `A001065(A000203(n+1)+1+n)+n+1` -/
def P13456994657648410074.Spec : Prop :=
  ∀ n, P13456994657648410074.a n = A246908 (n + 1)

end A246908

/-! ## A246908.P4953252046533997470

`A001065(A245092(2*n+1)+1+n)+n+1`
-/

namespace A246908.P4953252046533997470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A245092 (2 * n + 1) + 1 + (n : ℤ)).toNat + (n + 1 : ℤ)

end

end A246908.P4953252046533997470

namespace A246908

/-- `A001065(A245092(2*n+1)+1+n)+n+1` -/
def P4953252046533997470.Spec : Prop :=
  ∀ n, P4953252046533997470.a n = A246908 (n + 1)

end A246908

/-! ## A246908.P11243022283455022010

`A039653(A155085(n+1))-A039653(n+1)`
-/

namespace A246908.P11243022283455022010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (A155085 (n + 1)).toNat - A039653 (n + 1)

end

end A246908.P11243022283455022010

namespace A246908

/-- `A039653(A155085(n+1))-A039653(n+1)` -/
def P11243022283455022010.Spec : Prop :=
  ∀ n, P11243022283455022010.a n = A246908 (n + 1)

end A246908

/-! ## A246908.P14184014942596069374

`A088580(A155085(n+1))-A088580(n+1)`
-/

namespace A246908.P14184014942596069374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (A155085 (n + 1)).toNat - A088580 (n + 1)

end

end A246908.P14184014942596069374

namespace A246908

/-- `A088580(A155085(n+1))-A088580(n+1)` -/
def P14184014942596069374.Spec : Prop :=
  ∀ n, P14184014942596069374.a n = A246908 (n + 1)

theorem P14184014942596069374.correct : P14184014942596069374.Spec := by
  intro n
  simp only [A246908, Nat.add_sub_cancel, A246908.P14184014942596069374.a, A246908.P13709036881052009851.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A088580, A088580.P3089093194242277422.a, A155085, A155085.P2440965829929837208.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A246908

/-! ## A246908.P6045187152353669236

`A088580(A088580(n+1)+n)-A088580(n+1)`
-/

namespace A246908.P6045187152353669236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (A088580 (n + 1) + (n : ℤ)).toNat - A088580 (n + 1)

end

end A246908.P6045187152353669236

namespace A246908

/-- `A088580(A088580(n+1)+n)-A088580(n+1)` -/
def P6045187152353669236.Spec : Prop :=
  ∀ n, P6045187152353669236.a n = A246908 (n + 1)

theorem P6045187152353669236.correct : P6045187152353669236.Spec := by
  intro n
  simp only [A246908, Nat.add_sub_cancel, A246908.P6045187152353669236.a, A246908.P13709036881052009851.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A088580, A088580.P3089093194242277422.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A246908

/-!
# A246910: Numbers n such that sigma(n+sigma(n)) = 3*sigma(n).

The programs for A246910, the canonical program `A246910.P10023558416160660707` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246910 has offset 1).

The definition of A246910 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246910.P10023558416160660707

`eq[3/2*A074400(n+1), A000203(A155085(n+1))]+1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A246910

/-- `eq[3/2*A074400(n+1), A000203(A155085(n+1))]+1` -/
def P10023558416160660707.Spec : Prop :=
  ∀ n, (P10023558416160660707.a n : ℤ) = A246910 (n + 1)

theorem P10023558416160660707.correct : P10023558416160660707.Spec := by
  intro n
  simp only [A246910, Nat.add_sub_cancel]

end A246910

/-! ## A246910.P3719144077084015358

`eq[A074400(n+1), A246908(n+1)]+1`
-/

namespace A246910.P3719144077084015358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074400 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246908 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A246910.P3719144077084015358

namespace A246910

/-- `eq[A074400(n+1), A246908(n+1)]+1` -/
def P3719144077084015358.Spec : Prop :=
  ∀ n, (P3719144077084015358.a n : ℤ) = A246910 (n + 1)

end A246910

/-! ## A246910.P4434384724826573078

`eq[A325299(n+1)/3, A000203(A155085(n+1))]+1`
-/

namespace A246910.P4434384724826573078
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325299 (n + 1) : ℚ) / 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A155085 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n + 1

end

end A246910.P4434384724826573078

namespace A246910

/-- `eq[A325299(n+1)/3, A000203(A155085(n+1))]+1` -/
def P4434384724826573078.Spec : Prop :=
  ∀ n, (P4434384724826573078.a n : ℤ) = A246910 (n + 1)

end A246910

/-! ## A246910.P17873176718307981621

`eq[A000203(A088580(n+1)+n), A272027(n+1)]+1`
-/

namespace A246910.P17873176718307981621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A088580 (n + 1) + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272027 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A246910.P17873176718307981621

namespace A246910

/-- `eq[A000203(A088580(n+1)+n), A272027(n+1)]+1` -/
def P17873176718307981621.Spec : Prop :=
  ∀ n, (P17873176718307981621.a n : ℤ) = A246910 (n + 1)

end A246910

/-! ## A246910.P15768345204320069346

`eq[A246908(n+1)+A088580(n+1)-1, A272027(n+1)]+1`
-/

namespace A246910.P15768345204320069346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246908 (n + 1) + (A088580 (n + 1) - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272027 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A246910.P15768345204320069346

namespace A246910

/-- `eq[A246908(n+1)+A088580(n+1)-1, A272027(n+1)]+1` -/
def P15768345204320069346.Spec : Prop :=
  ∀ n, (P15768345204320069346.a n : ℤ) = A246910 (n + 1)

end A246910

/-! ## A246910.P14255408060076795559

`eq[A246908(n+1)+A274535(n+1)/5, A272027(n+1)]+1`
-/

namespace A246910.P14255408060076795559
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246908 (n + 1) : ℚ) + (A274535 (n + 1) : ℚ) / 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272027 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n + 1

end

end A246910.P14255408060076795559

namespace A246910

/-- `eq[A246908(n+1)+A274535(n+1)/5, A272027(n+1)]+1` -/
def P14255408060076795559.Spec : Prop :=
  ∀ n, (P14255408060076795559.a n : ℤ) = A246910 (n + 1)

end A246910

/-!
# A246914: Primes p such that sigma(2p+1) = 3*(p+1).

The programs for A246914, there is no canonical definition to state claims against.
-/

/-! ## A246914.P7268832404455411245

`p?[A190786(n+1)-1]`
-/

namespace A246914.P7268832404455411245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190786 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A246914.P7268832404455411245

/-!
# A246915: Numbers k such that sigma(k + sigma(k)) = sigma((k+1) + sigma(k+1)).

The programs for A246915, there is no canonical definition to state claims against.
-/

/-! ## A246915.P13126902280844094112

`A239067(2*A008000(n+1)-2)`
-/

namespace A246915.P13126902280844094112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239067 (2 * A008000 (n + 1) - 2).toNat

end

end A246915.P13126902280844094112

/-!
# A246916: Sum of the cumulative sums of all the permutations of divisors of number n.

The programs for A246916, the canonical program `A246916.P16965770001564161991` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246916 has offset 1).

The definition of A246916 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A246916.P16965770001564161991

`A000203(n+1)*A001710(A000005(n+1)+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A246916

/-- `A000203(n+1)*A001710(A000005(n+1)+1)` -/
def P16965770001564161991.Spec : Prop :=
  ∀ n, P16965770001564161991.a n = A246916 (n + 1)

theorem P16965770001564161991.correct : P16965770001564161991.Spec := by
  intro n
  simp only [A246916, Nat.add_sub_cancel]

end A246916

/-! ## A246916.P6995989598637783619

`A130674(n+1)*(A064945(n+1)+A064944(n+1))/2`
-/

namespace A246916.P6995989598637783619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130674 (n + 1) * (A064945 (n + 1) + A064944 (n + 1)) : ℚ) / 2

end

end A246916.P6995989598637783619

namespace A246916

/-- `A130674(n+1)*(A064945(n+1)+A064944(n+1))/2` -/
def P6995989598637783619.Spec : Prop :=
  ∀ n, P6995989598637783619.a n = (A246916 (n + 1) : ℚ)

end A246916

/-! ## A246916.P2498820364504760094

`Δ[A160664(n)]*A001710(A334954(n+1))`
-/

namespace A246916.P2498820364504760094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001710 (A334954 (n + 1)).toNat

end

end A246916.P2498820364504760094

namespace A246916

/-- `Δ[A160664(n)]*A001710(A334954(n+1))` -/
def P2498820364504760094.Spec : Prop :=
  ∀ n, P2498820364504760094.a n = A246916 (n + 1)

end A246916

/-! ## A246916.P17512519736879853300

`A000203(n+1)*A001710(A334954(n+1))`
-/

namespace A246916.P17512519736879853300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A001710 (A334954 (n + 1)).toNat

end

end A246916.P17512519736879853300

namespace A246916

/-- `A000203(n+1)*A001710(A334954(n+1))` -/
def P17512519736879853300.Spec : Prop :=
  ∀ n, P17512519736879853300.a n = A246916 (n + 1)

end A246916

/-! ## A246916.P15374001935788741023

`(A088580(n+1)-1)*A001710(A000005(n+1)+1)`
-/

namespace A246916.P15374001935788741023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A088580 (n + 1) - 1) * A001710 (A000005 (n + 1) + 1).toNat

end

end A246916.P15374001935788741023

namespace A246916

/-- `(A088580(n+1)-1)*A001710(A000005(n+1)+1)` -/
def P15374001935788741023.Spec : Prop :=
  ∀ n, P15374001935788741023.a n = A246916 (n + 1)

theorem P15374001935788741023.correct : P15374001935788741023.Spec := by
  intro n
  simp only [A246916, Nat.add_sub_cancel, A246916.P15374001935788741023.a, A246916.P16965770001564161991.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001710, A001710.P2200733452050152393.a, A088580, A088580.P3089093194242277422.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A246916

/-!
# A246919: The length of the longest nontrivial integral cevian of an equilateral triangle of side n that divides an edge into two integral parts, or 0 if no such cevian exists.

The programs for A246919, the canonical program `A246919.P3542208777111274919` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246919 has offset 1).

The definition of A246919 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246919.P3542208777111274919

`ogf((7x^2+19x^4+14x^5+16x^6+13x^7+4x^8-4x^9+x^10-11x^11+x^12+2x^13+4x^15)/(1-3x^4+3x^8-x^12))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A246919

/-- `ogf((7x^2+19x^4+14x^5+16x^6+13x^7+4x^8-4x^9+x^10-11x^11+x^12+2x^13+4x^15)/(1-3x^4+3x^8-x^12))` -/
def P3542208777111274919.Spec : Prop :=
  ∀ n, P3542208777111274919.a n = A246919 (n + 1)

theorem P3542208777111274919.correct : P3542208777111274919.Spec := by
  intro n
  simp only [A246919, Nat.add_sub_cancel]

end A246919

/-!
# A246920: The number of distinct lengths of nontrivial integral cevians of an equilateral triangle of side n that divide an edge into two integral parts.

The programs for A246920, the canonical program `A246920.P9162283999492987608` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246920 has offset 1).

The definition of A246920 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246920.P9379713597926071085

`A115878((n+1)/3^val(n+1, 3))+A115878(n+1)`
-/

namespace A246920.P9379713597926071085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115878 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ))).toNat + A115878 (n + 1)

end

end A246920.P9379713597926071085

namespace A246920

/-- `A115878((n+1)/3^val(n+1, 3))+A115878(n+1)` -/
def P9379713597926071085.Spec : Prop :=
  ∀ n, P9379713597926071085.a n = A246920 (n + 1)

end A246920

/-! ## A246920.P9162283999492987608

`A115878(A038502(n+1))+A115878(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A246920

/-- `A115878(A038502(n+1))+A115878(n+1)` -/
def P9162283999492987608.Spec : Prop :=
  ∀ n, P9162283999492987608.a n = A246920 (n + 1)

theorem P9162283999492987608.correct : P9162283999492987608.Spec := by
  intro n
  simp only [A246920, Nat.add_sub_cancel]

end A246920

/-! ## A246920.P1066240098351666007

`A065423(A176835(3*(n+1))+A115878(n+1))`
-/

namespace A246920.P1066240098351666007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (A176835 (3 * (n + 1)) + A115878 (n + 1)).toNat

end

end A246920.P1066240098351666007

namespace A246920

/-- `A065423(A176835(3*(n+1))+A115878(n+1))` -/
def P1066240098351666007.Spec : Prop :=
  ∀ n, P1066240098351666007.a n = A246920 (n + 1)

end A246920

/-! ## A246920.P10999181413308328429

`A065423(A176835(3*(n+1))+A176835(n+1)-1)`
-/

namespace A246920.P10999181413308328429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (A176835 (3 * (n + 1)) + (A176835 (n + 1) - 1)).toNat

end

end A246920.P10999181413308328429

namespace A246920

/-- `A065423(A176835(3*(n+1))+A176835(n+1)-1)` -/
def P10999181413308328429.Spec : Prop :=
  ∀ n, P10999181413308328429.a n = A246920 (n + 1)

end A246920

/-! ## A246920.P475101562537722897

`A004526(A115878(3*(n+1))+A115878(n+1))`
-/

namespace A246920.P475101562537722897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A115878 (3 * (n + 1)) + A115878 (n + 1)).toNat

end

end A246920.P475101562537722897

namespace A246920

/-- `A004526(A115878(3*(n+1))+A115878(n+1))` -/
def P475101562537722897.Spec : Prop :=
  ∀ n, P475101562537722897.a n = A246920 (n + 1)

end A246920

/-! ## A246920.P7417767354787691238

`A028242(A115878(3*(n+1))+A115878(n+1))`
-/

namespace A246920.P7417767354787691238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A115878 (3 * (n + 1)) + A115878 (n + 1)).toNat

end

end A246920.P7417767354787691238

namespace A246920

/-- `A028242(A115878(3*(n+1))+A115878(n+1))` -/
def P7417767354787691238.Spec : Prop :=
  ∀ n, P7417767354787691238.a n = A246920 (n + 1)

end A246920

/-!
# A246921: Irregular triangular array: row n gives numbers D, each being the discriminant of the minimal polynomial of a quadratic irrational represented by a continued fraction with period an n-tuple of 1s and 3s.

The programs for A246921, there is no canonical definition to state claims against.
-/

/-! ## A246921.P12260965819727950925

`A246922(A333733(A055648(n))+n)`
-/

namespace A246921.P12260965819727950925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246922 (A333733 (A055648 n).toNat + (n : ℤ)).toNat

end

end A246921.P12260965819727950925

/-! ## A246921.P6857093752637349737

`A246922(A011760(n+1)%A092537(n+1))`
-/

namespace A246921.P6857093752637349737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246922 (Int.tmod (A011760 (n + 1)) (A092537 (n + 1))).toNat

end

end A246921.P6857093752637349737

/-! ## A246921.P1497931377135388647

`A246922(A082743(n))`
-/

namespace A246921.P1497931377135388647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246922 (A082743 n).toNat

end

end A246921.P1497931377135388647

/-! ## A246921.P11040286707229809703

`A246922(A381225(n))`
-/

namespace A246921.P11040286707229809703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246922 (A381225 n).toNat

end

end A246921.P11040286707229809703

/-! ## A246921.P13182988299047283453

`A246922(A129396(n²))`
-/

namespace A246921.P13182988299047283453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246922 (A129396 (n ^ 2)).toNat

end

end A246921.P13182988299047283453

/-!
# A246923: Expansion of g.f.: 1 / AGM(1-9*x, sqrt((1-x)*(1-81*x))).

The programs for A246923, the canonical program `A246923.P3595915854699969932` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246923 has offset 0).

The definition of A246923 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A246923.P755592958072714483

`∑{#}[n, 2^#*C(n, #)*C(2*#, #)]²`
-/

namespace A246923.P755592958072714483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ k ∈ Finset.range (f1 n + 1), 2 ^ k * Nat.choose n k * Nat.choose (2 * k) k) ^ 2

end

end A246923.P755592958072714483

namespace A246923

/-- `∑{#}[n, 2^#*C(n, #)*C(2*#, #)]²` -/
def P755592958072714483.Spec : Prop :=
  ∀ n, (P755592958072714483.a n : ℤ) = A246923 n

end A246923

/-! ## A246923.P3595915854699969932

`A084771(n)²`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A246923

/-- `A084771(n)²` -/
def P3595915854699969932.Spec : Prop :=
  ∀ n, P3595915854699969932.a n = A246923 n

theorem P3595915854699969932.correct : P3595915854699969932.Spec := by
  intro n
  simp only [A246923]

end A246923

/-! ## A246923.P7592240606785558083

`∑[A085363(n)]²`
-/

namespace A246923.P7592240606785558083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A246923.P7592240606785558083

namespace A246923

/-- `∑[A085363(n)]²` -/
def P7592240606785558083.Spec : Prop :=
  ∀ n, P7592240606785558083.a n = A246923 n

end A246923

/-! ## A246923.P1318644271136724325

`A340970(∑[n+3])²`
-/

namespace A246923.P1318644271136724325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340970 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A246923.P1318644271136724325

namespace A246923

/-- `A340970(∑[n+3])²` -/
def P1318644271136724325.Spec : Prop :=
  ∀ n, P1318644271136724325.a n = A246923 n

end A246923

/-! ## A246923.P10126824281037451004

`A081578(∑[4*n])²`
-/

namespace A246923.P10126824281037451004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081578 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A246923.P10126824281037451004

namespace A246923

/-- `A081578(∑[4*n])²` -/
def P10126824281037451004.Spec : Prop :=
  ∀ n, P10126824281037451004.a n = A246923 n

end A246923

/-! ## A246923.P11007073340359417193

`Δ[n*A162326(n)]²`
-/

namespace A246923.P11007073340359417193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A162326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A246923.P11007073340359417193

namespace A246923

/-- `Δ[n*A162326(n)]²` -/
def P11007073340359417193.Spec : Prop :=
  ∀ n, P11007073340359417193.a n = A246923 n

end A246923

/-! ## A246923.P15764182250722089918

`∑[A085363(n)]*A084771(n)`
-/

namespace A246923.P15764182250722089918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A084771 n

end

end A246923.P15764182250722089918

namespace A246923

/-- `∑[A085363(n)]*A084771(n)` -/
def P15764182250722089918.Spec : Prop :=
  ∀ n, P15764182250722089918.a n = A246923 n

end A246923

/-! ## A246923.P17365373484665629788

`A084771(n)^(2%A001844(n))`
-/

namespace A246923.P17365373484665629788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084771 n : ℚ) ^ (Int.tmod 2 (A001844 n) : ℤ)

end

end A246923.P17365373484665629788

namespace A246923

/-- `A084771(n)^(2%A001844(n))` -/
def P17365373484665629788.Spec : Prop :=
  ∀ n, P17365373484665629788.a n = (A246923 n : ℚ)

end A246923

/-! ## A246923.P12222359353689393118

`A084771(n)*A340970(∑[n+3])`
-/

namespace A246923.P12222359353689393118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084771 n * A340970 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A246923.P12222359353689393118

namespace A246923

/-- `A084771(n)*A340970(∑[n+3])` -/
def P12222359353689393118.Spec : Prop :=
  ∀ n, P12222359353689393118.a n = A246923 n

end A246923

/-! ## A246923.P2669571852941494001

`∑[A040000(n)*A051708(n+1)]²`
-/

namespace A246923.P2669571852941494001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n * A051708 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A246923.P2669571852941494001

namespace A246923

/-- `∑[A040000(n)*A051708(n+1)]²` -/
def P2669571852941494001.Spec : Prop :=
  ∀ n, P2669571852941494001.a n = A246923 n

end A246923

/-!
# A246926: Expansion of phi(x)^2 * chi(x) * psi(-x^3) in powers of x where phi(), psi(), chi() are Ramanujan theta functions.

The programs for A246926, there is no canonical definition to state claims against.
-/

/-! ## A246926.P14688327826242426658

`abs(A224833(n))`
-/

namespace A246926.P14688327826242426658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A224833 n|

end

end A246926.P14688327826242426658

/-! ## A246926.P17662548514390702981

`A033999(n)*A224833(n)`
-/

namespace A246926.P17662548514390702981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A224833 n

end

end A246926.P17662548514390702981

/-! ## A246926.P18105380622799996458

`gcd(A000038(n), A224833(n))`
-/

namespace A246926.P18105380622799996458
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A224833 n)

end

end A246926.P18105380622799996458

/-! ## A246926.P8114389397950404316

`lcm(A006466(n), A224833(n))`
-/

namespace A246926.P8114389397950404316
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006466 n) (A224833 n)

end

end A246926.P8114389397950404316

/-! ## A246926.P11224808633316736158

`A246928(3*n+1)/2`
-/

namespace A246926.P11224808633316736158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246928 (3 * n + 1) : ℚ) / 2

end

end A246926.P11224808633316736158

/-! ## A246926.P6501174910855706645

`A004526(A246928(3*n+1))`
-/

namespace A246926.P6501174910855706645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A246928 (3 * n + 1)).toNat

end

end A246926.P6501174910855706645

/-!
# A246927: Expansion of psi(-q) * phi(q^3)^2 * chi(q^3) in powers of q where phi(), psi(), chi() are Ramanujan theta functions.

The programs for A246927, there is no canonical definition to state claims against.
-/

/-! ## A246927.P5084062985226178468

`A224822(n)/A057079(n)`
-/

namespace A246927.P5084062985226178468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224822 n : ℚ) / (A057079 n : ℚ)

end

end A246927.P5084062985226178468

/-! ## A246927.P13013859915070032063

`A224822(n)/A132954(n)`
-/

namespace A246927.P13013859915070032063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224822 n : ℚ) / (A132954 n : ℚ)

end

end A246927.P13013859915070032063

/-! ## A246927.P13281689875584959924

`A246928(n)/A131713(n)`
-/

namespace A246927.P13281689875584959924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246928 n : ℚ) / (A131713 n : ℚ)

end

end A246927.P13281689875584959924

/-! ## A246927.P6187656906409620671

`A224822(n)/∑[A100051(n)]`
-/

namespace A246927.P6187656906409620671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100051 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224822 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A246927.P6187656906409620671

/-! ## A246927.P1035342318432808057

`A246928(n)/Δ[A117966(n)]`
-/

namespace A246927.P1035342318432808057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246928 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A246927.P1035342318432808057

/-! ## A246927.P3343101272598926505

`A224822(n)/A132367(n+1)`
-/

namespace A246927.P3343101272598926505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224822 n : ℚ) / (A132367 (n + 1) : ℚ)

end

end A246927.P3343101272598926505

/-! ## A246927.P437807756968905787

`A246928(n)/A100051(2*n+1)`
-/

namespace A246927.P437807756968905787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246928 n : ℚ) / (A100051 (2 * n + 1) : ℚ)

end

end A246927.P437807756968905787

/-! ## A246927.P14409226747057299946

`1/A100051(A005408(n))*A246928(n)`
-/

namespace A246927.P14409226747057299946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A100051 (A005408 n).toNat : ℚ) * (A246928 n : ℚ)

end

end A246927.P14409226747057299946

/-! ## A246927.P9563576779894467854

`A224821(A008585(n))/A057079(n)`
-/

namespace A246927.P9563576779894467854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224821 (A008585 n).toNat : ℚ) / (A057079 n : ℚ)

end

end A246927.P9563576779894467854

/-! ## A246927.P143865373636855104

`A224821(A008585(n))/∑[A100051(n)]`
-/

namespace A246927.P143865373636855104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100051 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224821 (A008585 n).toNat : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A246927.P143865373636855104

/-! ## A246927.P17400825827719119767

`A033721(A008585(n))/A100051(2*n+1)`
-/

namespace A246927.P17400825827719119767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033721 (A008585 n).toNat : ℚ) / (A100051 (2 * n + 1) : ℚ)

end

end A246927.P17400825827719119767

/-!
# A246928: Number of integer solutions to x^2 + 3*y^2 + 3*z^2 = n.

The programs for A246928, there is no canonical definition to state claims against.
-/

/-! ## A246928.P2525916180093670025

`abs(A224822(n))`
-/

namespace A246928.P2525916180093670025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A224822 n|

end

end A246928.P2525916180093670025

/-! ## A246928.P7897182576653224078

`A033999(n)*A224822(n)`
-/

namespace A246928.P7897182576653224078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A224822 n

end

end A246928.P7897182576653224078

/-! ## A246928.P17536396237574819449

`A131713(n)*A246927(n)`
-/

namespace A246928.P17536396237574819449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131713 n * A246927 n

end

end A246928.P17536396237574819449

/-! ## A246928.P4745180295227537604

`gcd(A000038(n), A224822(n))`
-/

namespace A246928.P4745180295227537604
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A224822 n)

end

end A246928.P4745180295227537604

/-! ## A246928.P8143071915115384141

`lcm(A000034(n), A224822(n))`
-/

namespace A246928.P8143071915115384141
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A224822 n)

end

end A246928.P8143071915115384141

/-! ## A246928.P2772004333169858362

`(2-A057079(n)²)*A246927(n)`
-/

namespace A246928.P2772004333169858362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A057079 n ^ 2) * A246927 n

end

end A246928.P2772004333169858362

/-! ## A246928.P5375599386397174172

`(2-A132954(n)²)*A246927(n)`
-/

namespace A246928.P5375599386397174172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A132954 n ^ 2) * A246927 n

end

end A246928.P5375599386397174172

/-! ## A246928.P4647439642646943929

`A100051(n+1)*A224822(n)`
-/

namespace A246928.P4647439642646943929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100051 (n + 1) * A224822 n

end

end A246928.P4647439642646943929

/-! ## A246928.P12300934381757806825

`A057079(n+2)*A224822(n)`
-/

namespace A246928.P12300934381757806825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 (n + 2) * A224822 n

end

end A246928.P12300934381757806825

/-! ## A246928.P4800977883015852735

`A033721(3*n)`
-/

namespace A246928.P4800977883015852735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033721 (3 * n)

end

end A246928.P4800977883015852735

/-! ## A246928.P5969776166400357715

`A034933(3*n)`
-/

namespace A246928.P5969776166400357715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034933 (3 * n)

end

end A246928.P5969776166400357715

/-! ## A246928.P10887096300374091115

`abs(A224821(3*n))`
-/

namespace A246928.P10887096300374091115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A224821 (3 * n)|

end

end A246928.P10887096300374091115

/-! ## A246928.P3731649209977672482

`A100051(n+1)*A224821(A008585(n))`
-/

namespace A246928.P3731649209977672482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100051 (n + 1) * A224821 (A008585 n).toNat

end

end A246928.P3731649209977672482

/-! ## A246928.P4115348946186816362

`A057079(A008585(n))*A224821(A008585(n))`
-/

namespace A246928.P4115348946186816362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 (A008585 n).toNat * A224821 (A008585 n).toNat

end

end A246928.P4115348946186816362

/-! ## A246928.P3503671891357459073

`A057079(4*n)*A246927(n)`
-/

namespace A246928.P3503671891357459073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 (4 * n) * A246927 n

end

end A246928.P3503671891357459073

/-! ## A246928.P17547290559791906878

`A246927(9*n)`
-/

namespace A246928.P17547290559791906878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246927 (9 * n)

end

end A246928.P17547290559791906878

/-! ## A246928.P3300860609367390503

`A028702(12*n)`
-/

namespace A246928.P3300860609367390503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028702 (12 * n)

end

end A246928.P3300860609367390503

/-!
# A246929: a(n) = prime(11*n).

The programs for A246929, the canonical program `A246929.P11543091783284601878` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246929 has offset 1).

The definition of A246929 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(11*(n+1))` (program `A246929.P11543091783284601878`, by `A246929.P11543091783284601878.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A246929.P11543091783284601878

`A000040(11*(n+1))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A246929

/-- `A000040(11*(n+1))` -/
def P11543091783284601878.Spec : Prop :=
  ∀ n, P11543091783284601878.a n = A246929 (n + 1)

theorem P11543091783284601878.correct : P11543091783284601878.Spec := by
  intro n
  simp only [A246929, Nat.add_sub_cancel]

end A246929

/-! ## A246929.P7246319778338344955

`A001748(10*(n+1)+n+1)/3`
-/

namespace A246929.P7246319778338344955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (10 * (n + 1) + n + 1) : ℚ) / 3

end

end A246929.P7246319778338344955

namespace A246929

/-- `A001748(10*(n+1)+n+1)/3` -/
def P7246319778338344955.Spec : Prop :=
  ∀ n, P7246319778338344955.a n = (A246929 (n + 1) : ℚ)

end A246929

/-! ## A246929.P11405496662683382223

`A006005(11*(n+1))`
-/

namespace A246929.P11405496662683382223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (11 * (n + 1))

end

end A246929.P11405496662683382223

namespace A246929

/-- `A006005(11*(n+1))` -/
def P11405496662683382223.Spec : Prop :=
  ∀ n, P11405496662683382223.a n = A246929 (n + 1)

end A246929

/-! ## A246929.P2499293230734080176

`A083249(11*(n+1))`
-/

namespace A246929.P2499293230734080176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (11 * (n + 1))

end

end A246929.P2499293230734080176

namespace A246929

/-- `A083249(11*(n+1))` -/
def P2499293230734080176.Spec : Prop :=
  ∀ n, P2499293230734080176.a n = A246929 (n + 1)

end A246929

/-! ## A246929.P16877856829978152405

`A318871(11*(n+1))`
-/

namespace A246929.P16877856829978152405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318871 (11 * (n + 1))

end

end A246929.P16877856829978152405

namespace A246929

/-- `A318871(11*(n+1))` -/
def P16877856829978152405.Spec : Prop :=
  ∀ n, P16877856829978152405.a n = A246929 (n + 1)

end A246929

/-! ## A246929.P11317321717436390072

`A071621(11*n+5)`
-/

namespace A246929.P11317321717436390072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (11 * n + 5)

end

end A246929.P11317321717436390072

namespace A246929

/-- `A071621(11*n+5)` -/
def P11317321717436390072.Spec : Prop :=
  ∀ n, P11317321717436390072.a n = A246929 (n + 1)

end A246929

/-! ## A246929.P16342987162495980182

`A004139(11*n+9)`
-/

namespace A246929.P16342987162495980182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (11 * n + 9)

end

end A246929.P16342987162495980182

namespace A246929

/-- `A004139(11*n+9)` -/
def P16342987162495980182.Spec : Prop :=
  ∀ n, P16342987162495980182.a n = A246929 (n + 1)

end A246929

/-! ## A246929.P18288752672229894602

`A045319(11*n+10)`
-/

namespace A246929.P18288752672229894602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (11 * n + 10)

end

end A246929.P18288752672229894602

namespace A246929

/-- `A045319(11*n+10)` -/
def P18288752672229894602.Spec : Prop :=
  ∀ n, P18288752672229894602.a n = A246929 (n + 1)

end A246929

/-! ## A246929.P12884536278020294113

`A008578(11*n+12)`
-/

namespace A246929.P12884536278020294113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (11 * n + 12)

end

end A246929.P12884536278020294113

namespace A246929

/-- `A008578(11*n+12)` -/
def P12884536278020294113.Spec : Prop :=
  ∀ n, P12884536278020294113.a n = A246929 (n + 1)

end A246929

/-! ## A246929.P2269699534070490462

`A078138(A017437(n))`
-/

namespace A246929.P2269699534070490462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078138 (A017437 n).toNat

end

end A246929.P2269699534070490462

namespace A246929

/-- `A078138(A017437(n))` -/
def P2269699534070490462.Spec : Prop :=
  ∀ n, P2269699534070490462.a n = A246929 (n + 1)

end A246929

/-! ## A246929.P7839682783491513215

`A108719(A017485(n))`
-/

namespace A246929.P7839682783491513215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (A017485 n).toNat

end

end A246929.P7839682783491513215

namespace A246929

/-- `A108719(A017485(n))` -/
def P7839682783491513215.Spec : Prop :=
  ∀ n, P7839682783491513215.a n = A246929 (n + 1)

end A246929

/-! ## A246929.P9323310142739204132

`A157996(A017461(n))`
-/

namespace A246929.P9323310142739204132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157996 (A017461 n).toNat

end

end A246929.P9323310142739204132

namespace A246929

/-- `A157996(A017461(n))` -/
def P9323310142739204132.Spec : Prop :=
  ∀ n, P9323310142739204132.a n = A246929 (n + 1)

end A246929

/-! ## A246929.P14349772169274761327

`record[A000040(A176592(n+2))]`
-/

namespace A246929.P14349772169274761327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A176592 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246929.P14349772169274761327

namespace A246929

/-- `record[A000040(A176592(n+2))]` -/
def P14349772169274761327.Spec : Prop :=
  ∀ n, P14349772169274761327.a n = A246929 (n + 1)

end A246929

/-! ## A246929.P6785466786626434360

`record[A000040(A317311(n+2))]`
-/

namespace A246929.P6785466786626434360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A317311 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246929.P6785466786626434360

namespace A246929

/-- `record[A000040(A317311(n+2))]` -/
def P6785466786626434360.Spec : Prop :=
  ∀ n, P6785466786626434360.a n = A246929 (n + 1)

end A246929

/-! ## A246929.P12780958208734957534

`p?[A008578(A017533(n)-n)]`
-/

namespace A246929.P12780958208734957534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A017533 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A246929.P12780958208734957534

namespace A246929

/-- `p?[A008578(A017533(n)-n)]` -/
def P12780958208734957534.Spec : Prop :=
  ∀ n, P12780958208734957534.a n = A246929 (n + 1)

end A246929

/-! ## A246929.P17485088575526485402

`A006093(A017509(n)+1)+1`
-/

namespace A246929.P17485088575526485402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A017509 n + 1).toNat + 1

end

end A246929.P17485088575526485402

namespace A246929

/-- `A006093(A017509(n)+1)+1` -/
def P17485088575526485402.Spec : Prop :=
  ∀ n, P17485088575526485402.a n = A246929 (n + 1)

end A246929

/-! ## A246929.P1046978297049686184

`A008864(A017509(n)+1)-1`
-/

namespace A246929.P1046978297049686184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (A017509 n + 1).toNat - 1

end

end A246929.P1046978297049686184

namespace A246929

/-- `A008864(A017509(n)+1)-1` -/
def P1046978297049686184.Spec : Prop :=
  ∀ n, P1046978297049686184.a n = A246929 (n + 1)

end A246929

/-! ## A246929.P12647531832391791961

`A040976(A017509(n)+1)+2`
-/

namespace A246929.P12647531832391791961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (A017509 n + 1).toNat + 2

end

end A246929.P12647531832391791961

namespace A246929

/-- `A040976(A017509(n)+1)+2` -/
def P12647531832391791961.Spec : Prop :=
  ∀ n, P12647531832391791961.a n = A246929 (n + 1)

end A246929

/-! ## A246929.P12883465901473696957

`A175216(A017509(n)+1)-1`
-/

namespace A246929.P12883465901473696957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175216 (A017509 n + 1).toNat - 1

end

end A246929.P12883465901473696957

namespace A246929

/-- `A175216(A017509(n)+1)-1` -/
def P12883465901473696957.Spec : Prop :=
  ∀ n, P12883465901473696957.a n = A246929 (n + 1)

end A246929

/-! ## A246929.P12448101562125405219

`A006093(A017653(n)-n)+1`
-/

namespace A246929.P12448101562125405219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A017653 n - (n : ℤ)).toNat + 1

end

end A246929.P12448101562125405219

namespace A246929

/-- `A006093(A017653(n)-n)+1` -/
def P12448101562125405219.Spec : Prop :=
  ∀ n, P12448101562125405219.a n = A246929 (n + 1)

end A246929

/-!
# A246930: a(n) = prime(12*n).

The programs for A246930, the canonical program `A246930.P10061112342749797655` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246930 has offset 1).

The definition of A246930 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(12*(n+1))` (program `A246930.P10061112342749797655`, by `A246930.P10061112342749797655.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A246930.P10061112342749797655

`A000040(12*(n+1))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A246930

/-- `A000040(12*(n+1))` -/
def P10061112342749797655.Spec : Prop :=
  ∀ n, P10061112342749797655.a n = A246930 (n + 1)

theorem P10061112342749797655.correct : P10061112342749797655.Spec := by
  intro n
  simp only [A246930, Nat.add_sub_cancel]

end A246930

/-! ## A246930.P593150270541776600

`A031339(2*(n+1))`
-/

namespace A246930.P593150270541776600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031339 (2 * (n + 1))

end

end A246930.P593150270541776600

namespace A246930

/-- `A031339(2*(n+1))` -/
def P593150270541776600.Spec : Prop :=
  ∀ n, P593150270541776600.a n = A246930 (n + 1)

end A246930

/-! ## A246930.P1023321368535192332

`A031337(3*(n+1))`
-/

namespace A246930.P1023321368535192332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031337 (3 * (n + 1))

end

end A246930.P1023321368535192332

namespace A246930

/-- `A031337(3*(n+1))` -/
def P1023321368535192332.Spec : Prop :=
  ∀ n, P1023321368535192332.a n = A246930 (n + 1)

end A246930

/-! ## A246930.P7202080919100429674

`∩[A031337(n+1), A031339(n+1)]`
-/

namespace A246930.P7202080919100429674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246930.P7202080919100429674

namespace A246930

/-- `∩[A031337(n+1), A031339(n+1)]` -/
def P7202080919100429674.Spec : Prop :=
  ∀ n, (P7202080919100429674.a n : ℤ) = A246930 (n + 1)

end A246930

/-! ## A246930.P17228725060250388110

`A031336(4*(n+1))`
-/

namespace A246930.P17228725060250388110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031336 (4 * (n + 1))

end

end A246930.P17228725060250388110

namespace A246930

/-- `A031336(4*(n+1))` -/
def P17228725060250388110.Spec : Prop :=
  ∀ n, P17228725060250388110.a n = A246930 (n + 1)

end A246930

/-! ## A246930.P3828440693239012919

`∩[A031336(n+1), A031337(n+1)]`
-/

namespace A246930.P3828440693239012919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246930.P3828440693239012919

namespace A246930

/-- `∩[A031336(n+1), A031337(n+1)]` -/
def P3828440693239012919.Spec : Prop :=
  ∀ n, (P3828440693239012919.a n : ℤ) = A246930 (n + 1)

end A246930

/-! ## A246930.P14113513204608147174

`A031215(6*(n+1))`
-/

namespace A246930.P14113513204608147174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (6 * (n + 1))

end

end A246930.P14113513204608147174

namespace A246930

/-- `A031215(6*(n+1))` -/
def P14113513204608147174.Spec : Prop :=
  ∀ n, P14113513204608147174.a n = A246930 (n + 1)

end A246930

/-! ## A246930.P18253499912214174004

`A060191(A016969(n))`
-/

namespace A246930.P18253499912214174004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060191 (A016969 n).toNat

end

end A246930.P18253499912214174004

namespace A246930

/-- `A060191(A016969(n))` -/
def P18253499912214174004.Spec : Prop :=
  ∀ n, P18253499912214174004.a n = A246930 (n + 1)

end A246930

/-! ## A246930.P1705057756473335647

`∩[A031339(n+1), A060191(n)]`
-/

namespace A246930.P1705057756473335647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060191 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246930.P1705057756473335647

namespace A246930

/-- `∩[A031339(n+1), A060191(n)]` -/
def P1705057756473335647.Spec : Prop :=
  ∀ n, (P1705057756473335647.a n : ℤ) = A246930 (n + 1)

end A246930

/-! ## A246930.P382423373275229513

`A004139(12*n+10)`
-/

namespace A246930.P382423373275229513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (12 * n + 10)

end

end A246930.P382423373275229513

namespace A246930

/-- `A004139(12*n+10)` -/
def P382423373275229513.Spec : Prop :=
  ∀ n, P382423373275229513.a n = A246930 (n + 1)

end A246930

/-! ## A246930.P3369855304818177212

`A071621(6*(2*n+1))`
-/

namespace A246930.P3369855304818177212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (6 * (2 * n + 1))

end

end A246930.P3369855304818177212

namespace A246930

/-- `A071621(6*(2*n+1))` -/
def P3369855304818177212.Spec : Prop :=
  ∀ n, P3369855304818177212.a n = A246930 (n + 1)

end A246930

/-! ## A246930.P4112851134770097230

`A008578(12*(n+1)+1)`
-/

namespace A246930.P4112851134770097230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (12 * (n + 1) + 1)

end

end A246930.P4112851134770097230

namespace A246930

/-- `A008578(12*(n+1)+1)` -/
def P4112851134770097230.Spec : Prop :=
  ∀ n, P4112851134770097230.a n = A246930 (n + 1)

end A246930

/-! ## A246930.P970095376672719840

`A045319(A017653(n))`
-/

namespace A246930.P970095376672719840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A017653 n).toNat

end

end A246930.P970095376672719840

namespace A246930

/-- `A045319(A017653(n))` -/
def P970095376672719840.Spec : Prop :=
  ∀ n, P970095376672719840.a n = A246930 (n + 1)

end A246930

/-! ## A246930.P1345102624192485201

`A078138(A017581(n))`
-/

namespace A246930.P1345102624192485201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078138 (A017581 n).toNat

end

end A246930.P1345102624192485201

namespace A246930

/-- `A078138(A017581(n))` -/
def P1345102624192485201.Spec : Prop :=
  ∀ n, P1345102624192485201.a n = A246930 (n + 1)

end A246930

/-! ## A246930.P2044417086012609380

`A108719(A017629(n))`
-/

namespace A246930.P2044417086012609380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (A017629 n).toNat

end

end A246930.P2044417086012609380

namespace A246930

/-- `A108719(A017629(n))` -/
def P2044417086012609380.Spec : Prop :=
  ∀ n, P2044417086012609380.a n = A246930 (n + 1)

end A246930

/-! ## A246930.P5863236697586711928

`A157996(A017605(n))`
-/

namespace A246930.P5863236697586711928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157996 (A017605 n).toNat

end

end A246930.P5863236697586711928

namespace A246930

/-- `A157996(A017605(n))` -/
def P5863236697586711928.Spec : Prop :=
  ∀ n, P5863236697586711928.a n = A246930 (n + 1)

end A246930

/-! ## A246930.P8620999599089460476

`p?[A008578(A017533(n))]`
-/

namespace A246930.P8620999599089460476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A017533 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A246930.P8620999599089460476

namespace A246930

/-- `p?[A008578(A017533(n))]` -/
def P8620999599089460476.Spec : Prop :=
  ∀ n, P8620999599089460476.a n = A246930 (n + 1)

end A246930

/-! ## A246930.P17179135032261892202

`A046022(A017545(n+1))`
-/

namespace A246930.P17179135032261892202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (A017545 (n + 1)).toNat

end

end A246930.P17179135032261892202

namespace A246930

/-- `A046022(A017545(n+1))` -/
def P17179135032261892202.Spec : Prop :=
  ∀ n, P17179135032261892202.a n = A246930 (n + 1)

end A246930

/-! ## A246930.P7743810320441467041

`A051948(A017557(n+1))`
-/

namespace A246930.P7743810320441467041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (A017557 (n + 1)).toNat

end

end A246930.P7743810320441467041

namespace A246930

/-- `A051948(A017557(n+1))` -/
def P7743810320441467041.Spec : Prop :=
  ∀ n, P7743810320441467041.a n = A246930 (n + 1)

end A246930

/-! ## A246930.P11384158610794220091

`A065091(A004767(2*n+n+2))`
-/

namespace A246930.P11384158610794220091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A004767 (2 * n + (n + 2))).toNat

end

end A246930.P11384158610794220091

namespace A246930

/-- `A065091(A004767(2*n+n+2))` -/
def P11384158610794220091.Spec : Prop :=
  ∀ n, P11384158610794220091.a n = A246930 (n + 1)

end A246930

/-!
# A246931: Prime(14*n).

The programs for A246931, the canonical program `A246931.P5629872656730703576` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246931 has offset 1).

The definition of A246931 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(14*(n+1))` (program `A246931.P5629872656730703576`, by `A246931.P5629872656730703576.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A246931.P5629872656730703576

`A000040(14*(n+1))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A246931

/-- `A000040(14*(n+1))` -/
def P5629872656730703576.Spec : Prop :=
  ∀ n, P5629872656730703576.a n = A246931 (n + 1)

theorem P5629872656730703576.correct : P5629872656730703576.Spec := by
  intro n
  simp only [A246931, Nat.add_sub_cancel]

end A246931

/-! ## A246931.P531083120571491770

`A031340(2*(n+1))`
-/

namespace A246931.P531083120571491770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031340 (2 * (n + 1))

end

end A246931.P531083120571491770

namespace A246931

/-- `A031340(2*(n+1))` -/
def P531083120571491770.Spec : Prop :=
  ∀ n, P531083120571491770.a n = A246931 (n + 1)

end A246931

/-! ## A246931.P3114647559267001610

`A031215(7*(n+1))`
-/

namespace A246931.P3114647559267001610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (7 * (n + 1))

end

end A246931.P3114647559267001610

namespace A246931

/-- `A031215(7*(n+1))` -/
def P3114647559267001610.Spec : Prop :=
  ∀ n, P3114647559267001610.a n = A246931 (n + 1)

end A246931

/-! ## A246931.P12015915287895062266

`∩[A031215(n+1), A031340(n+1)]`
-/

namespace A246931.P12015915287895062266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246931.P12015915287895062266

namespace A246931

/-- `∩[A031215(n+1), A031340(n+1)]` -/
def P12015915287895062266.Spec : Prop :=
  ∀ n, (P12015915287895062266.a n : ℤ) = A246931 (n + 1)

end A246931

/-! ## A246931.P11596189195229617861

`∩[A031340(n+1), A066207(n+1)]`
-/

namespace A246931.P11596189195229617861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246931.P11596189195229617861

namespace A246931

/-- `∩[A031340(n+1), A066207(n+1)]` -/
def P11596189195229617861.Spec : Prop :=
  ∀ n, (P11596189195229617861.a n : ℤ) = A246931 (n + 1)

end A246931

/-! ## A246931.P2147173663727733740

`A008578(14*n+15)`
-/

namespace A246931.P2147173663727733740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (14 * n + 15)

end

end A246931.P2147173663727733740

namespace A246931

/-- `A008578(14*n+15)` -/
def P2147173663727733740.Spec : Prop :=
  ∀ n, P2147173663727733740.a n = A246931 (n + 1)

end A246931

/-! ## A246931.P4929616776876672800

`A078138(7*(2*n+1))`
-/

namespace A246931.P4929616776876672800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078138 (7 * (2 * n + 1))

end

end A246931.P4929616776876672800

namespace A246931

/-- `A078138(7*(2*n+1))` -/
def P4929616776876672800.Spec : Prop :=
  ∀ n, P4929616776876672800.a n = A246931 (n + 1)

end A246931

/-! ## A246931.P4411437089198656806

`A006093(14*(n+1))+1`
-/

namespace A246931.P4411437089198656806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (14 * (n + 1)) + 1

end

end A246931.P4411437089198656806

namespace A246931

/-- `A006093(14*(n+1))+1` -/
def P4411437089198656806.Spec : Prop :=
  ∀ n, P4411437089198656806.a n = A246931 (n + 1)

theorem P4411437089198656806.correct : P4411437089198656806.Spec := by
  intro n
  simp only [A246931, Nat.add_sub_cancel, A246931.P4411437089198656806.a, A246931.P5629872656730703576.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A246931

/-! ## A246931.P1254967976960491611

`A040976(14*(n+1))+2`
-/

namespace A246931.P1254967976960491611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (14 * (n + 1)) + 2

end

end A246931.P1254967976960491611

namespace A246931

/-- `A040976(14*(n+1))+2` -/
def P1254967976960491611.Spec : Prop :=
  ∀ n, P1254967976960491611.a n = A246931 (n + 1)

theorem P1254967976960491611.correct : P1254967976960491611.Spec := by
  intro n
  simp only [A246931, Nat.add_sub_cancel, A246931.P1254967976960491611.a, A246931.P5629872656730703576.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A040976, A040976.P11599754272797435513.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A246931

/-! ## A246931.P5634342929902760262

`A158611(ceil((28*(n+1)+1)/2)+1)`
-/

namespace A246931.P5634342929902760262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (⌈(28 * (n + 1) + 1 : ℚ) / 2⌉ + 1).toNat

end

end A246931.P5634342929902760262

namespace A246931

/-- `A158611(ceil((28*(n+1)+1)/2)+1)` -/
def P5634342929902760262.Spec : Prop :=
  ∀ n, P5634342929902760262.a n = A246931 (n + 1)

end A246931

/-! ## A246931.P7276595598680409314

`A045319(A358053(n+1))`
-/

namespace A246931.P7276595598680409314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A358053 (n + 1)).toNat

end

end A246931.P7276595598680409314

namespace A246931

/-- `A045319(A358053(n+1))` -/
def P7276595598680409314.Spec : Prop :=
  ∀ n, P7276595598680409314.a n = A246931 (n + 1)

end A246931

/-! ## A246931.P9125734411579703761

`A066050(A063120(n+2))`
-/

namespace A246931.P9125734411579703761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (A063120 (n + 2)).toNat

end

end A246931.P9125734411579703761

namespace A246931

/-- `A066050(A063120(n+2))` -/
def P9125734411579703761.Spec : Prop :=
  ∀ n, P9125734411579703761.a n = A246931 (n + 1)

end A246931

/-! ## A246931.P18246130369047835791

`A065091(A131877(n)+12)`
-/

namespace A246931.P18246130369047835791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A131877 n + 12).toNat

end

end A246931.P18246130369047835791

namespace A246931

/-- `A065091(A131877(n)+12)` -/
def P18246130369047835791.Spec : Prop :=
  ∀ n, P18246130369047835791.a n = A246931 (n + 1)

end A246931

/-! ## A246931.P14146437901578907504

`record[A000040(A317314(n+2))]`
-/

namespace A246931.P14146437901578907504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A317314 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246931.P14146437901578907504

namespace A246931

/-- `record[A000040(A317314(n+2))]` -/
def P14146437901578907504.Spec : Prop :=
  ∀ n, P14146437901578907504.a n = A246931 (n + 1)

end A246931

/-! ## A246931.P9436704018464156479

`A004139(A017041(2*n+1))`
-/

namespace A246931.P9436704018464156479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A017041 (2 * n + 1)).toNat

end

end A246931.P9436704018464156479

namespace A246931

/-- `A004139(A017041(2*n+1))` -/
def P9436704018464156479.Spec : Prop :=
  ∀ n, P9436704018464156479.a n = A246931 (n + 1)

end A246931

/-! ## A246931.P9902423944389525755

`A045319(A017053(2*n+1))`
-/

namespace A246931.P9902423944389525755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A017053 (2 * n + 1)).toNat

end

end A246931.P9902423944389525755

namespace A246931

/-- `A045319(A017053(2*n+1))` -/
def P9902423944389525755.Spec : Prop :=
  ∀ n, P9902423944389525755.a n = A246931 (n + 1)

end A246931

/-! ## A246931.P9034955582625005457

`A046022(2*A016993(n+1))`
-/

namespace A246931.P9034955582625005457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (2 * A016993 (n + 1)).toNat

end

end A246931.P9034955582625005457

namespace A246931

/-- `A046022(2*A016993(n+1))` -/
def P9034955582625005457.Spec : Prop :=
  ∀ n, P9034955582625005457.a n = A246931 (n + 1)

end A246931

/-! ## A246931.P715892059085780911

`A066050(2*A017005(n+1))`
-/

namespace A246931.P715892059085780911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (2 * A017005 (n + 1)).toNat

end

end A246931.P715892059085780911

namespace A246931

/-- `A066050(2*A017005(n+1))` -/
def P715892059085780911.Spec : Prop :=
  ∀ n, P715892059085780911.a n = A246931 (n + 1)

end A246931

/-! ## A246931.P8019034088160534780

`A108719(A017029(2*n+1))`
-/

namespace A246931.P8019034088160534780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (A017029 (2 * n + 1)).toNat

end

end A246931.P8019034088160534780

namespace A246931

/-- `A108719(A017029(2*n+1))` -/
def P8019034088160534780.Spec : Prop :=
  ∀ n, P8019034088160534780.a n = A246931 (n + 1)

end A246931

/-! ## A246931.P10650409933165415029

`A045319(A113801(2*(n+1)))`
-/

namespace A246931.P10650409933165415029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A113801 (2 * (n + 1))).toNat

end

end A246931.P10650409933165415029

namespace A246931

/-- `A045319(A113801(2*(n+1)))` -/
def P10650409933165415029.Spec : Prop :=
  ∀ n, P10650409933165415029.a n = A246931 (n + 1)

end A246931

/-!
# A246932: a(n) = prime(15*n).

The programs for A246932, the canonical program `A246932.P11573613709477595004` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246932 has offset 1).

The definition of A246932 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(15*(n+1))` (program `A246932.P11573613709477595004`, by `A246932.P11573613709477595004.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A246932.P11573613709477595004

`A000040(15*(n+1))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A246932

/-- `A000040(15*(n+1))` -/
def P11573613709477595004.Spec : Prop :=
  ∀ n, P11573613709477595004.a n = A246932 (n + 1)

theorem P11573613709477595004.correct : P11573613709477595004.Spec := by
  intro n
  simp only [A246932, Nat.add_sub_cancel]

end A246932

/-! ## A246932.P9103596581299551829

`A031338(3*(n+1))`
-/

namespace A246932.P9103596581299551829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031338 (3 * (n + 1))

end

end A246932.P9103596581299551829

namespace A246932

/-- `A031338(3*(n+1))` -/
def P9103596581299551829.Spec : Prop :=
  ∀ n, P9103596581299551829.a n = A246932 (n + 1)

end A246932

/-! ## A246932.P11770710802471160899

`A031336(5*(n+1))`
-/

namespace A246932.P11770710802471160899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031336 (5 * (n + 1))

end

end A246932.P11770710802471160899

namespace A246932

/-- `A031336(5*(n+1))` -/
def P11770710802471160899.Spec : Prop :=
  ∀ n, P11770710802471160899.a n = A246932 (n + 1)

end A246932

/-! ## A246932.P4348812090681374410

`∩[A031336(n+1), A031338(n+1)]`
-/

namespace A246932.P4348812090681374410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246932.P4348812090681374410

namespace A246932

/-- `∩[A031336(n+1), A031338(n+1)]` -/
def P4348812090681374410.Spec : Prop :=
  ∀ n, (P4348812090681374410.a n : ℤ) = A246932 (n + 1)

end A246932

/-! ## A246932.P1549280459059876999

`A001749(A267711(3*n+4))/4`
-/

namespace A246932.P1549280459059876999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (A267711 (3 * n + 4)).toNat : ℚ) / 4

end

end A246932.P1549280459059876999

namespace A246932

/-- `A001749(A267711(3*n+4))/4` -/
def P1549280459059876999.Spec : Prop :=
  ∀ n, P1549280459059876999.a n = (A246932 (n + 1) : ℚ)

end A246932

/-! ## A246932.P1606521533493661696

`A078138(A164284(n+1))`
-/

namespace A246932.P1606521533493661696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078138 (A164284 (n + 1)).toNat

end

end A246932.P1606521533493661696

namespace A246932

/-- `A078138(A164284(n+1))` -/
def P1606521533493661696.Spec : Prop :=
  ∀ n, P1606521533493661696.a n = A246932 (n + 1)

end A246932

/-! ## A246932.P10230280065460297950

`A157996(A106839(n)-(n+1))`
-/

namespace A246932.P10230280065460297950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157996 (A106839 n - (n + 1 : ℤ)).toNat

end

end A246932.P10230280065460297950

namespace A246932

/-- `A157996(A106839(n)-(n+1))` -/
def P10230280065460297950.Spec : Prop :=
  ∀ n, P10230280065460297950.a n = A246932 (n + 1)

end A246932

/-! ## A246932.P3958728472013475873

`A157996(A106839(n)-1-n)`
-/

namespace A246932.P3958728472013475873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157996 (A106839 n - 1 - (n : ℤ)).toNat

end

end A246932.P3958728472013475873

namespace A246932

/-- `A157996(A106839(n)-1-n)` -/
def P3958728472013475873.Spec : Prop :=
  ∀ n, P3958728472013475873.a n = A246932 (n + 1)

end A246932

/-! ## A246932.P8880691636584622952

`A157996(A017089(2*n+1)-n)`
-/

namespace A246932.P8880691636584622952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157996 (A017089 (2 * n + 1) - (n : ℤ)).toNat

end

end A246932.P8880691636584622952

namespace A246932

/-- `A157996(A017089(2*n+1)-n)` -/
def P8880691636584622952.Spec : Prop :=
  ∀ n, P8880691636584622952.a n = A246932 (n + 1)

end A246932

/-! ## A246932.P402974675122919775

`A158611(15*(n+1)+2)`
-/

namespace A246932.P402974675122919775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (15 * (n + 1) + 2)

end

end A246932.P402974675122919775

namespace A246932

/-- `A158611(15*(n+1)+2)` -/
def P402974675122919775.Spec : Prop :=
  ∀ n, P402974675122919775.a n = A246932 (n + 1)

end A246932

/-! ## A246932.P8607494633554699652

`A006093(5*3*(n+1))+1`
-/

namespace A246932.P8607494633554699652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (5 * (3 * (n + 1))) + 1

end

end A246932.P8607494633554699652

namespace A246932

/-- `A006093(5*3*(n+1))+1` -/
def P8607494633554699652.Spec : Prop :=
  ∀ n, P8607494633554699652.a n = A246932 (n + 1)

theorem P8607494633554699652.correct : P8607494633554699652.Spec := by
  intro n
  simp only [A246932, Nat.add_sub_cancel, A246932.P8607494633554699652.a, A246932.P11573613709477595004.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A246932

/-! ## A246932.P18007827331360366150

`A040976(5*3*(n+1))+2`
-/

namespace A246932.P18007827331360366150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (5 * (3 * (n + 1))) + 2

end

end A246932.P18007827331360366150

namespace A246932

/-- `A040976(5*3*(n+1))+2` -/
def P18007827331360366150.Spec : Prop :=
  ∀ n, P18007827331360366150.a n = A246932 (n + 1)

theorem P18007827331360366150.correct : P18007827331360366150.Spec := by
  intro n
  simp only [A246932, Nat.add_sub_cancel, A246932.P18007827331360366150.a, A246932.P11573613709477595004.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A040976, A040976.P11599754272797435513.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A246932

/-! ## A246932.P3193487519262294893

`p?[A008578(11*n+4*n+1)]`
-/

namespace A246932.P3193487519262294893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (11 * n + (4 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A246932.P3193487519262294893

namespace A246932

/-- `p?[A008578(11*n+4*n+1)]` -/
def P3193487519262294893.Spec : Prop :=
  ∀ n, P3193487519262294893.a n = A246932 (n + 1)

end A246932

/-! ## A246932.P12940713671447813922

`A008578(2*(7*(n+1)+1)+n)`
-/

namespace A246932.P12940713671447813922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (2 * (7 * (n + 1) + 1) + n)

end

end A246932.P12940713671447813922

namespace A246932

/-- `A008578(2*(7*(n+1)+1)+n)` -/
def P12940713671447813922.Spec : Prop :=
  ∀ n, P12940713671447813922.a n = A246932 (n + 1)

end A246932

/-! ## A246932.P9622322390708549321

`A045319(A257645(n))`
-/

namespace A246932.P9622322390708549321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A257645 n).toNat

end

end A246932.P9622322390708549321

namespace A246932

/-- `A045319(A257645(n))` -/
def P9622322390708549321.Spec : Prop :=
  ∀ n, P9622322390708549321.a n = A246932 (n + 1)

end A246932

/-! ## A246932.P9837239470585031139

`record[A000040(Δ[A195036(n)])]`
-/

namespace A246932.P9837239470585031139
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195036 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246932.P9837239470585031139

namespace A246932

/-- `record[A000040(Δ[A195036(n)])]` -/
def P9837239470585031139.Spec : Prop :=
  ∀ n, P9837239470585031139.a n = A246932 (n + 1)

end A246932

/-! ## A246932.P16446368331634651853

`record[A000040(A195035(n+1))]`
-/

namespace A246932.P16446368331634651853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A195035 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246932.P16446368331634651853

namespace A246932

/-- `record[A000040(A195035(n+1))]` -/
def P16446368331634651853.Spec : Prop :=
  ∀ n, P16446368331634651853.a n = A246932 (n + 1)

end A246932

/-! ## A246932.P556861672328963242

`record[A000040(A317315(n+2))]`
-/

namespace A246932.P556861672328963242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A317315 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246932.P556861672328963242

namespace A246932

/-- `record[A000040(A317315(n+2))]` -/
def P556861672328963242.Spec : Prop :=
  ∀ n, P556861672328963242.a n = A246932 (n + 1)

end A246932

/-! ## A246932.P16108535264346332990

`A004139(A177964(2*(n+1)))`
-/

namespace A246932.P16108535264346332990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A177964 (2 * (n + 1))).toNat

end

end A246932.P16108535264346332990

namespace A246932

/-- `A004139(A177964(2*(n+1)))` -/
def P16108535264346332990.Spec : Prop :=
  ∀ n, P16108535264346332990.a n = A246932 (n + 1)

end A246932

/-! ## A246932.P14747511003788864957

`A045319(A175887(2*(n+1)))`
-/

namespace A246932.P14747511003788864957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A175887 (2 * (n + 1))).toNat

end

end A246932.P14747511003788864957

namespace A246932

/-- `A045319(A175887(2*(n+1)))` -/
def P14747511003788864957.Spec : Prop :=
  ∀ n, P14747511003788864957.a n = A246932 (n + 1)

end A246932

/-!
# A246933: a(n) = prime(16*n).

The programs for A246933, the canonical program `A246933.P6103480575800543290` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246933 has offset 1).

The definition of A246933 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(16*(n+1))` (program `A246933.P6103480575800543290`, by `A246933.P6103480575800543290.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A246933.P6103480575800543290

`A000040(16*(n+1))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A246933

/-- `A000040(16*(n+1))` -/
def P6103480575800543290.Spec : Prop :=
  ∀ n, P6103480575800543290.a n = A246933 (n + 1)

theorem P6103480575800543290.correct : P6103480575800543290.Spec := by
  intro n
  simp only [A246933, Nat.add_sub_cancel]

end A246933

/-! ## A246933.P3058840450781393289

`A031341(2*(1+n))`
-/

namespace A246933.P3058840450781393289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031341 (2 * (1 + n))

end

end A246933.P3058840450781393289

namespace A246933

/-- `A031341(2*(1+n))` -/
def P3058840450781393289.Spec : Prop :=
  ∀ n, P3058840450781393289.a n = A246933 (n + 1)

end A246933

/-! ## A246933.P16458268160851408240

`A031337(4*(n+1))`
-/

namespace A246933.P16458268160851408240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031337 (4 * (n + 1))

end

end A246933.P16458268160851408240

namespace A246933

/-- `A031337(4*(n+1))` -/
def P16458268160851408240.Spec : Prop :=
  ∀ n, P16458268160851408240.a n = A246933 (n + 1)

end A246933

/-! ## A246933.P16998235776211511619

`A031215(8*(n+1))`
-/

namespace A246933.P16998235776211511619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (8 * (n + 1))

end

end A246933.P16998235776211511619

namespace A246933

/-- `A031215(8*(n+1))` -/
def P16998235776211511619.Spec : Prop :=
  ∀ n, P16998235776211511619.a n = A246933 (n + 1)

end A246933

/-! ## A246933.P12679243294619675865

`A060191(A004771(n))`
-/

namespace A246933.P12679243294619675865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060191 (A004771 n).toNat

end

end A246933.P12679243294619675865

namespace A246933

/-- `A060191(A004771(n))` -/
def P12679243294619675865.Spec : Prop :=
  ∀ n, P12679243294619675865.a n = A246933 (n + 1)

end A246933

/-! ## A246933.P479555886066300290

`A060191(A133655(n+1))`
-/

namespace A246933.P479555886066300290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060191 (A133655 (n + 1)).toNat

end

end A246933.P479555886066300290

namespace A246933

/-- `A060191(A133655(n+1))` -/
def P479555886066300290.Spec : Prop :=
  ∀ n, P479555886066300290.a n = A246933 (n + 1)

end A246933

/-! ## A246933.P8152177384298348876

`A060191(A042964(A090964(A042948(2*n+1))))`
-/

namespace A246933.P8152177384298348876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060191 (A042964 (A090964 (A042948 (2 * n + 1)).toNat).toNat).toNat

end

end A246933.P8152177384298348876

namespace A246933

/-- `A060191(A042964(A090964(A042948(2*n+1))))` -/
def P8152177384298348876.Spec : Prop :=
  ∀ n, P8152177384298348876.a n = A246933 (n + 1)

end A246933

/-! ## A246933.P2060157574559898729

`A006005(16*(n+1))`
-/

namespace A246933.P2060157574559898729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (16 * (n + 1))

end

end A246933.P2060157574559898729

namespace A246933

/-- `A006005(16*(n+1))` -/
def P2060157574559898729.Spec : Prop :=
  ∀ n, P2060157574559898729.a n = A246933 (n + 1)

end A246933

/-! ## A246933.P14983812480549094579

`A346180(16*(n+1))`
-/

namespace A246933.P14983812480549094579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346180 (16 * (n + 1))

end

end A246933.P14983812480549094579

namespace A246933

/-- `A346180(16*(n+1))` -/
def P14983812480549094579.Spec : Prop :=
  ∀ n, P14983812480549094579.a n = A246933 (n + 1)

end A246933

/-! ## A246933.P10868627178934623642

`A004139(2*(8*n+7))`
-/

namespace A246933.P10868627178934623642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (2 * (8 * n + 7))

end

end A246933.P10868627178934623642

namespace A246933

/-- `A004139(2*(8*n+7))` -/
def P10868627178934623642.Spec : Prop :=
  ∀ n, P10868627178934623642.a n = A246933 (n + 1)

end A246933

/-! ## A246933.P2630583690323313314

`record[A000040(lcm(8, n+1)+8)]`
-/

namespace A246933.P2630583690323313314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Nat.lcm 8 (n + 1) + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246933.P2630583690323313314

namespace A246933

/-- `record[A000040(lcm(8, n+1)+8)]` -/
def P2630583690323313314.Spec : Prop :=
  ∀ n, P2630583690323313314.a n = A246933 (n + 1)

end A246933

/-! ## A246933.P12411158592203432831

`A045319(A125169(n))`
-/

namespace A246933.P12411158592203432831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A125169 n).toNat

end

end A246933.P12411158592203432831

namespace A246933

/-- `A045319(A125169(n))` -/
def P12411158592203432831.Spec : Prop :=
  ∀ n, P12411158592203432831.a n = A246933 (n + 1)

end A246933

/-! ## A246933.P15114738929357277575

`A108719(A082285(n))`
-/

namespace A246933.P15114738929357277575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (A082285 n).toNat

end

end A246933.P15114738929357277575

namespace A246933

/-- `A108719(A082285(n))` -/
def P15114738929357277575.Spec : Prop :=
  ∀ n, P15114738929357277575.a n = A246933 (n + 1)

end A246933

/-! ## A246933.P2134419992248792739

`A157996(A106839(n))`
-/

namespace A246933.P2134419992248792739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157996 (A106839 n).toNat

end

end A246933.P2134419992248792739

namespace A246933

/-- `A157996(A106839(n))` -/
def P2134419992248792739.Spec : Prop :=
  ∀ n, P2134419992248792739.a n = A246933 (n + 1)

end A246933

/-! ## A246933.P2668113413036012509

`A071621(A113770(n+1))`
-/

namespace A246933.P2668113413036012509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (A113770 (n + 1)).toNat

end

end A246933.P2668113413036012509

namespace A246933

/-- `A071621(A113770(n+1))` -/
def P2668113413036012509.Spec : Prop :=
  ∀ n, P2668113413036012509.a n = A246933 (n + 1)

end A246933

/-! ## A246933.P15396124181001060266

`record[A000040(A317316(n+2))]`
-/

namespace A246933.P15396124181001060266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A317316 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246933.P15396124181001060266

namespace A246933

/-- `record[A000040(A317316(n+2))]` -/
def P15396124181001060266.Spec : Prop :=
  ∀ n, P15396124181001060266.a n = A246933 (n + 1)

end A246933

/-! ## A246933.P9810413823895343846

`record[A000040(A345225(n+3))]`
-/

namespace A246933.P9810413823895343846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A345225 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246933.P9810413823895343846

namespace A246933

/-- `record[A000040(A345225(n+3))]` -/
def P9810413823895343846.Spec : Prop :=
  ∀ n, P9810413823895343846.a n = A246933 (n + 1)

end A246933

/-! ## A246933.P7968034798670458450

`A065091(A008598(n+1)-1)`
-/

namespace A246933.P7968034798670458450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A008598 (n + 1) - 1).toNat

end

end A246933.P7968034798670458450

namespace A246933

/-- `A065091(A008598(n+1)-1)` -/
def P7968034798670458450.Spec : Prop :=
  ∀ n, P7968034798670458450.a n = A246933 (n + 1)

end A246933

/-! ## A246933.P5610875937791639827

`A045319(A004771(2*n+1))`
-/

namespace A246933.P5610875937791639827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A004771 (2 * n + 1)).toNat

end

end A246933.P5610875937791639827

namespace A246933

/-- `A045319(A004771(2*n+1))` -/
def P5610875937791639827.Spec : Prop :=
  ∀ n, P5610875937791639827.a n = A246933 (n + 1)

end A246933

/-! ## A246933.P3019700408463457709

`A071621(A017089(2*n+1))`
-/

namespace A246933.P3019700408463457709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (A017089 (2 * n + 1)).toNat

end

end A246933.P3019700408463457709

namespace A246933

/-- `A071621(A017089(2*n+1))` -/
def P3019700408463457709.Spec : Prop :=
  ∀ n, P3019700408463457709.a n = A246933 (n + 1)

end A246933

/-!
# A246934: The closest square to n-th prime.

The programs for A246934, the canonical program `A246934.P5973542768665934503` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246934 has offset 1).

The definition of A246934 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246934.P18193366992601404611

`A248170(n+1)²`
-/

namespace A246934.P18193366992601404611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248170 (n + 1) ^ 2

end

end A246934.P18193366992601404611

namespace A246934

/-- `A248170(n+1)²` -/
def P18193366992601404611.Spec : Prop :=
  ∀ n, P18193366992601404611.a n = A246934 (n + 1)

end A246934

/-! ## A246934.P7971052777676395292

`round(sqrt(Δ[A007504(n)]))²`
-/

namespace A246934.P7971052777676395292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (f1 (n + 1) - f1 n : ℝ)) ^ 2

end

end A246934.P7971052777676395292

namespace A246934

/-- `round(sqrt(Δ[A007504(n)]))²` -/
def P7971052777676395292.Spec : Prop :=
  ∀ n, P7971052777676395292.a n = A246934 (n + 1)

end A246934

/-! ## A246934.P5973542768665934503

`ceil(sqrt(A112045(n+1)))²`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A246934

/-- `ceil(sqrt(A112045(n+1)))²` -/
def P5973542768665934503.Spec : Prop :=
  ∀ n, P5973542768665934503.a n = A246934 (n + 1)

theorem P5973542768665934503.correct : P5973542768665934503.Spec := by
  intro n
  simp only [A246934, Nat.add_sub_cancel]

end A246934

/-! ## A246934.P5801163007399471472

`round(sqrt(A000040(n+1)))²`
-/

namespace A246934.P5801163007399471472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A000040 (n + 1) : ℝ)) ^ 2

end

end A246934.P5801163007399471472

namespace A246934

/-- `round(sqrt(A000040(n+1)))²` -/
def P5801163007399471472.Spec : Prop :=
  ∀ n, P5801163007399471472.a n = A246934 (n + 1)

end A246934

/-! ## A246934.P958467031137401198

`round(sqrt(A006005(n+1)))²`
-/

namespace A246934.P958467031137401198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A006005 (n + 1) : ℝ)) ^ 2

end

end A246934.P958467031137401198

namespace A246934

/-- `round(sqrt(A006005(n+1)))²` -/
def P958467031137401198.Spec : Prop :=
  ∀ n, P958467031137401198.a n = A246934 (n + 1)

end A246934

/-! ## A246934.P13707741040073392382

`round(sqrt(A055670(n+1)))²`
-/

namespace A246934.P13707741040073392382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A055670 (n + 1) : ℝ)) ^ 2

end

end A246934.P13707741040073392382

namespace A246934

/-- `round(sqrt(A055670(n+1)))²` -/
def P13707741040073392382.Spec : Prop :=
  ∀ n, P13707741040073392382.a n = A246934 (n + 1)

end A246934

/-! ## A246934.P3832150529765107796

`round(sqrt(A318871(n+1)))²`
-/

namespace A246934.P3832150529765107796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A318871 (n + 1) : ℝ)) ^ 2

end

end A246934.P3832150529765107796

namespace A246934

/-- `round(sqrt(A318871(n+1)))²` -/
def P3832150529765107796.Spec : Prop :=
  ∀ n, P3832150529765107796.a n = A246934 (n + 1)

end A246934

/-! ## A246934.P11483146417876506612

`floor(A247485(n+1)/2)²`
-/

namespace A246934.P11483146417876506612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A247485 (n + 1) : ℚ) / 2⌋ ^ 2

end

end A246934.P11483146417876506612

namespace A246934

/-- `floor(A247485(n+1)/2)²` -/
def P11483146417876506612.Spec : Prop :=
  ∀ n, P11483146417876506612.a n = A246934 (n + 1)

end A246934

/-! ## A246934.P8517898970537118300

`round(sqrt(sqrt(A001248(n+1))))²`
-/

namespace A246934.P8517898970537118300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Real.sqrt (A001248 (n + 1) : ℝ))) ^ 2

end

end A246934.P8517898970537118300

namespace A246934

/-- `round(sqrt(sqrt(A001248(n+1))))²` -/
def P8517898970537118300.Spec : Prop :=
  ∀ n, P8517898970537118300.a n = A246934 (n + 1)

end A246934

/-! ## A246934.P5861016360278478030

`round(sqrt(sqrt(A049001(n+1))))²`
-/

namespace A246934.P5861016360278478030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Real.sqrt (A049001 (n + 1) : ℝ))) ^ 2

end

end A246934.P5861016360278478030

namespace A246934

/-- `round(sqrt(sqrt(A049001(n+1))))²` -/
def P5861016360278478030.Spec : Prop :=
  ∀ n, P5861016360278478030.a n = A246934 (n + 1)

end A246934

/-! ## A246934.P11743833822365455232

`round(sqrt(sqrt(A054270(n+1))))²`
-/

namespace A246934.P11743833822365455232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Real.sqrt (A054270 (n + 1) : ℝ))) ^ 2

end

end A246934.P11743833822365455232

namespace A246934

/-- `round(sqrt(sqrt(A054270(n+1))))²` -/
def P11743833822365455232.Spec : Prop :=
  ∀ n, P11743833822365455232.a n = A246934 (n + 1)

end A246934

/-! ## A246934.P12617748697067504550

`A008794(A247485(n+1))`
-/

namespace A246934.P12617748697067504550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 (A247485 (n + 1)).toNat

end

end A246934.P12617748697067504550

namespace A246934

/-- `A008794(A247485(n+1))` -/
def P12617748697067504550.Spec : Prop :=
  ∀ n, P12617748697067504550.a n = A246934 (n + 1)

end A246934

/-! ## A246934.P13505554296967117505

`round(sqrt(A008578(n+2)))²`
-/

namespace A246934.P13505554296967117505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A008578 (n + 2) : ℝ)) ^ 2

end

end A246934.P13505554296967117505

namespace A246934

/-- `round(sqrt(A008578(n+2)))²` -/
def P13505554296967117505.Spec : Prop :=
  ∀ n, P13505554296967117505.a n = A246934 (n + 1)

end A246934

/-! ## A246934.P2828706716906096144

`round(sqrt(A182986(n+2)))²`
-/

namespace A246934.P2828706716906096144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A182986 (n + 2) : ℝ)) ^ 2

end

end A246934.P2828706716906096144

namespace A246934

/-- `round(sqrt(A182986(n+2)))²` -/
def P2828706716906096144.Spec : Prop :=
  ∀ n, P2828706716906096144.a n = A246934 (n + 1)

end A246934

/-! ## A246934.P5369151274507626550

`round(sqrt(Δ[A014284(n+1)]))²`
-/

namespace A246934.P5369151274507626550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (f1 (n + 1) - f1 n : ℝ)) ^ 2

end

end A246934.P5369151274507626550

namespace A246934

/-- `round(sqrt(Δ[A014284(n+1)]))²` -/
def P5369151274507626550.Spec : Prop :=
  ∀ n, P5369151274507626550.a n = A246934 (n + 1)

end A246934

/-! ## A246934.P673706872642176861

`round(sqrt(Δ[A036439(n+1)]))²`
-/

namespace A246934.P673706872642176861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036439 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (f1 (n + 1) - f1 n : ℝ)) ^ 2

end

end A246934.P673706872642176861

namespace A246934

/-- `round(sqrt(Δ[A036439(n+1)]))²` -/
def P673706872642176861.Spec : Prop :=
  ∀ n, P673706872642176861.a n = A246934 (n + 1)

end A246934

/-! ## A246934.P12051253864037117651

`round(record[sqrt(A006530(n+2))])²`
-/

namespace A246934.P12051253864037117651
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A006530 (n + 2) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) ^ 2

end

end A246934.P12051253864037117651

namespace A246934

/-- `round(record[sqrt(A006530(n+2))])²` -/
def P12051253864037117651.Spec : Prop :=
  ∀ n, P12051253864037117651.a n = A246934 (n + 1)

end A246934

/-! ## A246934.P13938021804957979497

`round(record[sqrt(A020639(n+2))])²`
-/

namespace A246934.P13938021804957979497
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A020639 (n + 2) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) ^ 2

end

end A246934.P13938021804957979497

namespace A246934

/-- `round(record[sqrt(A020639(n+2))])²` -/
def P13938021804957979497.Spec : Prop :=
  ∀ n, P13938021804957979497.a n = A246934 (n + 1)

end A246934

/-! ## A246934.P14900546360512162158

`round(sqrt(p?[A026239(n+1)]))²`
-/

namespace A246934.P14900546360512162158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ)) ^ 2

end

end A246934.P14900546360512162158

namespace A246934

/-- `round(sqrt(p?[A026239(n+1)]))²` -/
def P14900546360512162158.Spec : Prop :=
  ∀ n, P14900546360512162158.a n = A246934 (n + 1)

end A246934

/-! ## A246934.P1746372302425318378

`round(sqrt(p?[A039698(n+1)]))²`
-/

namespace A246934.P1746372302425318378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039698 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ)) ^ 2

end

end A246934.P1746372302425318378

namespace A246934

/-- `round(sqrt(p?[A039698(n+1)]))²` -/
def P1746372302425318378.Spec : Prop :=
  ∀ n, P1746372302425318378.a n = A246934 (n + 1)

end A246934

/-!
# A246935: Number A(n,k) of partitions of n into k sorts of parts; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A246935, there is no canonical definition to state claims against.
-/

/-! ## A246935.P7268258617353263501

`A342120(n)-A033886(A208673(n))`
-/

namespace A246935.P7268258617353263501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342120 n - A033886 (A208673 n).toNat

end

end A246935.P7268258617353263501

/-! ## A246935.P16662913556625791638

`A210391(n)+A025428(A322222(n))`
-/

namespace A246935.P16662913556625791638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210391 n + A025428 (A322222 n).toNat

end

end A246935.P16662913556625791638

/-! ## A246935.P1251826855059571423

`A342120(n)-A292251(A082635(n+1))`
-/

namespace A246935.P1251826855059571423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342120 n - A292251 (A082635 (n + 1)).toNat

end

end A246935.P1251826855059571423

/-! ## A246935.P18123294706030561396

`A342120(n)+A178798(A326597(n))`
-/

namespace A246935.P18123294706030561396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342120 n + A178798 (A326597 n).toNat

end

end A246935.P18123294706030561396

/-! ## A246935.P14942398083720117340

`A383042(A076084(n+1))`
-/

namespace A246935.P14942398083720117340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383042 (A076084 (n + 1)).toNat

end

end A246935.P14942398083720117340

/-!
# A246936: Number of partitions of n into 4 sorts of parts.

The programs for A246936, there is no canonical definition to state claims against.
-/

/-! ## A246936.P10956263289500296708

`∑{#}[n, A067855(#)*A067855(n-#)]`
-/

namespace A246936.P10956263289500296708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A067855 k * A067855 (n - k)

end

end A246936.P10956263289500296708

/-! ## A246936.P4413239840316729805

`record[A246935(A052905(n))]`
-/

namespace A246936.P4413239840316729805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246935 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246936.P4413239840316729805

/-! ## A246936.P16011666977323666263

`A246935(A052905(n+2))`
-/

namespace A246936.P16011666977323666263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246935 (A052905 (n + 2)).toNat

end

end A246936.P16011666977323666263

/-! ## A246936.P10262962685299937879

`A246935(eq[4, A025581(n)])`
-/

namespace A246936.P10262962685299937879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246935 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246936.P10262962685299937879

/-! ## A246936.P17102497942271693639

`record[A246935(A055999(n)+1)]`
-/

namespace A246936.P17102497942271693639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246935 (A055999 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246936.P17102497942271693639

/-! ## A246936.P32558157458094557

`A246935(A000217(n+5)-5)`
-/

namespace A246936.P32558157458094557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246935 (A000217 (n + 5) - 5).toNat

end

end A246936.P32558157458094557

/-! ## A246936.P4418109351749308410

`record[A246935(abs(A046691(n))-1)]`
-/

namespace A246936.P4418109351749308410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246935 (|A046691 n| - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246936.P4418109351749308410

/-! ## A246936.P8339658149521491837

`A246935(Δ[A023545(n+1)]-1)`
-/

namespace A246936.P8339658149521491837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246935 (f1 (n + 1) - f1 n - 1).toNat

end

end A246936.P8339658149521491837

/-! ## A246936.P14351998764710139436

`record[A246935(A046691(n+1)-1)]`
-/

namespace A246936.P14351998764710139436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246935 (A046691 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246936.P14351998764710139436

/-! ## A246936.P6461211474570434058

`record[A246935(A034856(n+2)-3)]`
-/

namespace A246936.P6461211474570434058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246935 (A034856 (n + 2) - 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246936.P6461211474570434058

/-!
# A246937: Number of partitions of n into 5 sorts of parts.

The programs for A246937, there is no canonical definition to state claims against.
-/

/-! ## A246937.P808459011101530454

`record[A246935(A055999(n))]`
-/

namespace A246937.P808459011101530454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246935 (A055999 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246937.P808459011101530454

/-! ## A246937.P7748996239563149138

`A246935(A055999(n+3))`
-/

namespace A246937.P7748996239563149138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246935 (A055999 (n + 3)).toNat

end

end A246937.P7748996239563149138

/-! ## A246937.P4545278797217746441

`record[A246935(∑[A020705(n)])]`
-/

namespace A246937.P4545278797217746441
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246935 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246937.P4545278797217746441

/-! ## A246937.P16704069806524116909

`record[A246935(A052905(n)-1)]`
-/

namespace A246937.P16704069806524116909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246935 (A052905 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246937.P16704069806524116909

/-! ## A246937.P12031567340364302242

`record[A246935(A155212(n)+2)]`
-/

namespace A246937.P12031567340364302242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246935 (A155212 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246937.P12031567340364302242

/-! ## A246937.P1247547341553398804

`record[A246935(A056000(n)+4)]`
-/

namespace A246937.P1247547341553398804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246935 (A056000 n + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246937.P1247547341553398804

/-! ## A246937.P17852815802541385609

`record[A246935(abs(2-A046691(n)))]`
-/

namespace A246937.P17852815802541385609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246935 |2 - A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246937.P17852815802541385609

/-! ## A246937.P7523747206007671097

`A246935(Δ[A023545(n+2)]-2)`
-/

namespace A246937.P7523747206007671097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246935 (f1 (n + 1) - f1 n - 2).toNat

end

end A246937.P7523747206007671097

/-! ## A246937.P17586865778958986673

`record[A246935(A046691(n+1)-2)]`
-/

namespace A246937.P17586865778958986673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246935 (A046691 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246937.P17586865778958986673

/-! ## A246937.P7995901365088368820

`record[A246935(A034856(n+3)-4)]`
-/

namespace A246937.P7995901365088368820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246935 (A034856 (n + 3) - 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246937.P7995901365088368820

/-!
# A246938: Number of partitions of n into 6 sorts of parts.

The programs for A246938, there is no canonical definition to state claims against.
-/

/-! ## A246938.P17011965064398778703

`A246935(A052905(n+4)-2)`
-/

namespace A246938.P17011965064398778703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246935 (A052905 (n + 4) - 2).toNat

end

end A246938.P17011965064398778703

/-! ## A246938.P14827175453107246506

`A246935(A046691(n+5)-3)`
-/

namespace A246938.P14827175453107246506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246935 (A046691 (n + 5) - 3).toNat

end

end A246938.P14827175453107246506

/-! ## A246938.P13580118467651621470

`A246935(A000217(n+7)-7)`
-/

namespace A246938.P13580118467651621470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246935 (A000217 (n + 7) - 7).toNat

end

end A246938.P13580118467651621470

/-! ## A246938.P831549332336378210

`A246935(A000124(n+8)-(n+16))`
-/

namespace A246938.P831549332336378210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246935 (A000124 (n + 8) - (n + 16 : ℤ)).toNat

end

end A246938.P831549332336378210

/-! ## A246938.P3661693448311311845

`A246935(A005408(n+2)+A000124(n+5))`
-/

namespace A246938.P3661693448311311845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246935 (A005408 (n + 2) + A000124 (n + 5)).toNat

end

end A246938.P3661693448311311845

/-!
# A246939: Number of partitions of n into 7 sorts of parts.

The programs for A246939, there is no canonical definition to state claims against.
-/

/-! ## A246939.P3671353245147041121

`A246935(A155212(n+4))`
-/

namespace A246939.P3671353245147041121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246935 (A155212 (n + 4)).toNat

end

end A246939.P3671353245147041121

/-! ## A246939.P15062157824401989818

`A246935(A052905(n+5)-3)`
-/

namespace A246939.P15062157824401989818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246935 (A052905 (n + 5) - 3).toNat

end

end A246939.P15062157824401989818

/-! ## A246939.P13946549955608821553

`A246935(A000217(n+8)-8)`
-/

namespace A246939.P13946549955608821553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246935 (A000217 (n + 8) - 8).toNat

end

end A246939.P13946549955608821553

/-! ## A246939.P2955644725071546091

`A246935(eq[8, A004736(n+1)])`
-/

namespace A246939.P2955644725071546091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246935 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246939.P2955644725071546091

/-! ## A246939.P1963819267975053321

`A246935(eq[64, A155038(n+1)])`
-/

namespace A246939.P1963819267975053321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155038 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246935 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246939.P1963819267975053321

/-!
# A246940: Number of partitions of n into 8 sorts of parts.

The programs for A246940, there is no canonical definition to state claims against.
-/

/-! ## A246940.P16492571874686868468

`A246935(A155212(n+5)-1)`
-/

namespace A246940.P16492571874686868468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246935 (A155212 (n + 5) - 1).toNat

end

end A246940.P16492571874686868468

/-! ## A246940.P10359879660514044643

`A246935(A000217(n+9)-9)`
-/

namespace A246940.P10359879660514044643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246935 (A000217 (n + 9) - 9).toNat

end

end A246940.P10359879660514044643

/-! ## A246940.P11800271096174162615

`A246935(A161680(n+10)-9)`
-/

namespace A246940.P11800271096174162615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246935 (A161680 (n + 10) - 9).toNat

end

end A246940.P11800271096174162615

/-! ## A246940.P1304778710061064795

`A246935(A000096(n+7)+n+1)`
-/

namespace A246940.P1304778710061064795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246935 (A000096 (n + 7) + (n + 1 : ℤ)).toNat

end

end A246940.P1304778710061064795

/-! ## A246940.P2587049640254534968

`A246935(A052905(n+5)+n+5)`
-/

namespace A246940.P2587049640254534968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246935 (A052905 (n + 5) + (n + 5 : ℤ)).toNat

end

end A246940.P2587049640254534968

/-! ## A246940.P15254577606287856665

`A246935(2*n+A167487(n+6)+1)`
-/

namespace A246940.P15254577606287856665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246935 ((2 * n : ℤ) + (A167487 (n + 6) + 1)).toNat

end

end A246940.P15254577606287856665

/-! ## A246940.P17084247891256208697

`A246935(A005408(n+3)+A000124(n+7))`
-/

namespace A246940.P17084247891256208697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246935 (A005408 (n + 3) + A000124 (n + 7)).toNat

end

end A246940.P17084247891256208697

/-!
# A246941: Number of partitions of n into 9 sorts of parts.

The programs for A246941, there is no canonical definition to state claims against.
-/

/-! ## A246941.P14799738011074618264

`A246935(A056000(n+6))`
-/

namespace A246941.P14799738011074618264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246935 (A056000 (n + 6)).toNat

end

end A246941.P14799738011074618264

/-! ## A246941.P7978815618500406169

`A246935(A046691(n+8)-6)`
-/

namespace A246941.P7978815618500406169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246935 (A046691 (n + 8) - 6).toNat

end

end A246941.P7978815618500406169

/-! ## A246941.P15053049226082865789

`A246935(A000217(n+10)-10)`
-/

namespace A246941.P15053049226082865789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246935 (A000217 (n + 10) - 10).toNat

end

end A246941.P15053049226082865789

/-! ## A246941.P8405962431097679663

`A246935(xor(1, 2*n)+A000096(n+7)+9)`
-/

namespace A246941.P8405962431097679663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246935 ((Nat.xor 1 (2 * n) : ℤ) + (A000096 (n + 7) + 9)).toNat

end

end A246941.P8405962431097679663

/-! ## A246941.P16458792436560061054

`A246935(A027693(n+6)-A133263(n+2))`
-/

namespace A246941.P16458792436560061054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246935 (A027693 (n + 6) - A133263 (n + 2)).toNat

end

end A246941.P16458792436560061054

/-!
# A246942: Number of partitions of n into 10 sorts of parts.

The programs for A246942, there is no canonical definition to state claims against.
-/

/-! ## A246942.P14391093998301016640

`A246935(A055998(n+9)-8)`
-/

namespace A246942.P14391093998301016640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246935 (A055998 (n + 9) - 8).toNat

end

end A246942.P14391093998301016640

/-! ## A246942.P4407271062287486525

`A246935(A000217(n+11)-11)`
-/

namespace A246942.P4407271062287486525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246935 (A000217 (n + 11) - 11).toNat

end

end A246942.P4407271062287486525

/-! ## A246942.P15665311539086483519

`A246935(eq[11, A004736(n+1)])`
-/

namespace A246942.P15665311539086483519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246935 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246942.P15665311539086483519

/-! ## A246942.P13554305444448792006

`A246935(A000096(n+9)+n+1)`
-/

namespace A246942.P13554305444448792006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246935 (A000096 (n + 9) + (n + 1 : ℤ)).toNat

end

end A246942.P13554305444448792006

/-! ## A246942.P15529544596297936885

`A246935(A134869(n+10)+n-1)`
-/

namespace A246942.P15529544596297936885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246935 (A134869 (n + 10) + ((n : ℤ) - 1)).toNat

end

end A246942.P15529544596297936885

/-! ## A246942.P13655721493084165854

`A246935(A005408(n+4)+A000124(n+9))`
-/

namespace A246942.P13655721493084165854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246935 (A005408 (n + 4) + A000124 (n + 9)).toNat

end

end A246942.P13655721493084165854

/-!
# A246943: a(4n) = 4*n , a(2n+1) = 8*n+4 , a(4n+2) = 2*n+1.

The programs for A246943, the canonical program `A246943.P17482439479653405229` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246943 has offset 0).

The definition of A246943 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A246943.P10860341171205836474

`ogf((4x+x^2+12x^3+4x^4+12x^5+x^6+4x^7)/(1-2x^4+x^8))`
-/

namespace A246943.P10860341171205836474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, 1, 12, 4, 12, 1, 4] [1, 0, 0, 0, -2, 0, 0, 0, 1] n

end

end A246943.P10860341171205836474

namespace A246943

/-- `ogf((4x+x^2+12x^3+4x^4+12x^5+x^6+4x^7)/(1-2x^4+x^8))` -/
def P10860341171205836474.Spec : Prop :=
  ∀ n, P10860341171205836474.a n = A246943 n

end A246943

/-! ## A246943.P17482439479653405229

`n*(19-(-1)^n*13+2*cos(n*π/2))/8`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A246943

/-- `n*(19-(-1)^n*13+2*cos(n*π/2))/8` -/
def P17482439479653405229.Spec : Prop :=
  ∀ n, P17482439479653405229.a n = (A246943 n : ℝ)

end A246943

/-! ## A246943.P12392181533489289572

`4*n/gcd(8, (n+2)²)`
-/

namespace A246943.P12392181533489289572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((n : ℚ) / (Nat.gcd 8 ((n + 2) ^ 2) : ℚ))

end

end A246943.P12392181533489289572

namespace A246943

/-- `4*n/gcd(8, (n+2)²)` -/
def P12392181533489289572.Spec : Prop :=
  ∀ n, P12392181533489289572.a n = (A246943 n : ℚ)

end A246943

/-! ## A246943.P9712695936193873731

`2*lcm(2, n)/gcd(4, n+2)`
-/

namespace A246943.P9712695936193873731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * Nat.lcm 2 n : ℚ) / (Nat.gcd 4 (n + 2) : ℚ)

end

end A246943.P9712695936193873731

namespace A246943

/-- `2*lcm(2, n)/gcd(4, n+2)` -/
def P9712695936193873731.Spec : Prop :=
  ∀ n, P9712695936193873731.a n = (A246943 n : ℚ)

end A246943

/-! ## A246943.P7610785958527572082

`4^(n%2)*gcd(n, ∑[n]²)`
-/

namespace A246943.P7610785958527572082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ (n % 2) * Nat.gcd n ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)

end

end A246943.P7610785958527572082

namespace A246943

/-- `4^(n%2)*gcd(n, ∑[n]²)` -/
def P7610785958527572082.Spec : Prop :=
  ∀ n, (P7610785958527572082.a n : ℤ) = A246943 n

end A246943

/-! ## A246943.P15957859235912435428

`4*n/gcd(4*n, (2-n)²)`
-/

namespace A246943.P15957859235912435428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * n : ℚ) / (Int.gcd (4 * n : ℤ) ((2 - (n : ℤ)) ^ 2) : ℚ)

end

end A246943.P15957859235912435428

namespace A246943

/-- `4*n/gcd(4*n, (2-n)²)` -/
def P15957859235912435428.Spec : Prop :=
  ∀ n, P15957859235912435428.a n = (A246943 n : ℚ)

end A246943

/-! ## A246943.P14621087208041107899

`lcm(4*n, (n+2)²)/(n+2)²`
-/

namespace A246943.P14621087208041107899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (4 * n) ((n + 2) ^ 2) : ℚ) / ((n + 2) ^ 2 : ℚ)

end

end A246943.P14621087208041107899

namespace A246943

/-- `lcm(4*n, (n+2)²)/(n+2)²` -/
def P14621087208041107899.Spec : Prop :=
  ∀ n, P14621087208041107899.a n = (A246943 n : ℚ)

end A246943

/-! ## A246943.P1143665869960745225

`lcm(n+2, 2*n)/(n+2)+2*n*and(1, n)`
-/

namespace A246943.P1143665869960745225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 2) (2 * n) : ℚ) / (n + 2 : ℚ) + (2 * (n * Nat.land 1 n) : ℚ)

end

end A246943.P1143665869960745225

namespace A246943

/-- `lcm(n+2, 2*n)/(n+2)+2*n*and(1, n)` -/
def P1143665869960745225.Spec : Prop :=
  ∀ n, P1143665869960745225.a n = (A246943 n : ℚ)

end A246943

/-! ## A246943.P12218093135379031473

`4*n/A089146(n)`
-/

namespace A246943.P12218093135379031473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((n : ℚ) / (A089146 n : ℚ))

end

end A246943.P12218093135379031473

namespace A246943

/-- `4*n/A089146(n)` -/
def P12218093135379031473.Spec : Prop :=
  ∀ n, P12218093135379031473.a n = (A246943 n : ℚ)

end A246943

/-! ## A246943.P3752486307494353163

`4*n/A018252(gcd(2-n, 2*n))`
-/

namespace A246943.P3752486307494353163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * n : ℚ) / (A018252 (Int.gcd (2 - (n : ℤ)) (2 * n : ℤ)) : ℚ)

end

end A246943.P3752486307494353163

namespace A246943

/-- `4*n/A018252(gcd(2-n, 2*n))` -/
def P3752486307494353163.Spec : Prop :=
  ∀ n, P3752486307494353163.a n = (A246943 n : ℚ)

end A246943

/-! ## A246943.P6195568637743775906

`A010685(n)*A283971(n)`
-/

namespace A246943.P6195568637743775906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 n * A283971 n

end

end A246943.P6195568637743775906

namespace A246943

/-- `A010685(n)*A283971(n)` -/
def P6195568637743775906.Spec : Prop :=
  ∀ n, P6195568637743775906.a n = A246943 n

end A246943

/-! ## A246943.P8810000775697790268

`A008586(n)/A089146(n)`
-/

namespace A246943.P8810000775697790268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008586 n : ℚ) / (A089146 n : ℚ)

end

end A246943.P8810000775697790268

namespace A246943

/-- `A008586(n)/A089146(n)` -/
def P8810000775697790268.Spec : Prop :=
  ∀ n, P8810000775697790268.a n = (A246943 n : ℚ)

end A246943

/-! ## A246943.P11244683140551646742

`A187541(n)/A010121(n)`
-/

namespace A246943.P11244683140551646742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187541 n : ℚ) / (A010121 n : ℚ)

end

end A246943.P11244683140551646742

namespace A246943

/-- `A187541(n)/A010121(n)` -/
def P11244683140551646742.Spec : Prop :=
  ∀ n, P11244683140551646742.a n = (A246943 n : ℚ)

end A246943

/-! ## A246943.P16237570965971832437

`A187541(n)%A298026(n)`
-/

namespace A246943.P16237570965971832437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187541 n) (A298026 n)

end

end A246943.P16237570965971832437

namespace A246943

/-- `A187541(n)%A298026(n)` -/
def P16237570965971832437.Spec : Prop :=
  ∀ n, P16237570965971832437.a n = A246943 n

end A246943

/-! ## A246943.P9136980358747267655

`gcd(A027445(n), A187541(n))`
-/

namespace A246943.P9136980358747267655
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027445 n) (A187541 n)

end

end A246943.P9136980358747267655

namespace A246943

/-- `gcd(A027445(n), A187541(n))` -/
def P9136980358747267655.Spec : Prop :=
  ∀ n, (P9136980358747267655.a n : ℤ) = A246943 n

end A246943

/-! ## A246943.P10637970739260529367

`gcd(A142150(n)², A109045(n))`
-/

namespace A246943.P10637970739260529367
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A142150 n ^ 2) (A109045 n)

end

end A246943.P10637970739260529367

namespace A246943

/-- `gcd(A142150(n)², A109045(n))` -/
def P10637970739260529367.Spec : Prop :=
  ∀ n, (P10637970739260529367.a n : ℤ) = A246943 n

end A246943

/-! ## A246943.P18269217515017243318

`A109045(n)/A010121(n+2)`
-/

namespace A246943.P18269217515017243318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109045 n : ℚ) / (A010121 (n + 2) : ℚ)

end

end A246943.P18269217515017243318

namespace A246943

/-- `A109045(n)/A010121(n+2)` -/
def P18269217515017243318.Spec : Prop :=
  ∀ n, P18269217515017243318.a n = (A246943 n : ℚ)

end A246943

/-! ## A246943.P7974268516839663163

`gcd(2, A064680(n))*A064680(n)`
-/

namespace A246943.P7974268516839663163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A064680 n) : ℤ) * A064680 n

end

end A246943.P7974268516839663163

namespace A246943

/-- `gcd(2, A064680(n))*A064680(n)` -/
def P7974268516839663163.Spec : Prop :=
  ∀ n, P7974268516839663163.a n = A246943 n

end A246943

/-! ## A246943.P8567201151340215838

`n*A010685(n)²/A176895(n)`
-/

namespace A246943.P8567201151340215838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((A010685 n ^ 2 : ℚ) / (A176895 n : ℚ))

end

end A246943.P8567201151340215838

namespace A246943

/-- `n*A010685(n)²/A176895(n)` -/
def P8567201151340215838.Spec : Prop :=
  ∀ n, P8567201151340215838.a n = (A246943 n : ℚ)

end A246943

/-! ## A246943.P15556541113307637465

`A010121(2*(n+1))*A283971(n)`
-/

namespace A246943.P15556541113307637465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010121 (2 * (n + 1)) * A283971 n

end

end A246943.P15556541113307637465

namespace A246943

/-- `A010121(2*(n+1))*A283971(n)` -/
def P15556541113307637465.Spec : Prop :=
  ∀ n, P15556541113307637465.a n = A246943 n

end A246943

/-!
# A246944: Prime numbers p with property that when the first digit is shifted to the last digit, we obtain a prime greater than p.

The programs for A246944, there is no canonical definition to state claims against.
-/

/-! ## A246944.P3372792487789076845

`A166681(lt[A056993(n), A069793(n)])`
-/

namespace A246944.P3372792487789076845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056993 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069793 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166681 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A246944.P3372792487789076845

/-! ## A246944.P6989673100384661568

`A166681(∑[A108998(n)!])`
-/

namespace A246944.P6989673100384661568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A108998 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166681 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A246944.P6989673100384661568

/-! ## A246944.P14460231158589653483

`A166681(record[∑[A174553(n)]])`
-/

namespace A246944.P14460231158589653483
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174553 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166681 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A246944.P14460231158589653483

/-!
# A246946: a(1)=6; for n > 1, a(n) is the least integer not occurring earlier such that a(n) shares exactly two distinct prime divisors with a(n-1).

The programs for A246946, there is no canonical definition to state claims against.
-/

/-! ## A246946.P16185624421278665450

`A024619(A264762(n+1))`
-/

namespace A246946.P16185624421278665450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (A264762 (n + 1)).toNat

end

end A246946.P16185624421278665450

/-! ## A246946.P14888235429017569896

`A289508(2*(n+1))+A080765(A264762(n+1))`
-/

namespace A246946.P14888235429017569896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (2 * (n + 1)) + A080765 (A264762 (n + 1)).toNat

end

end A246946.P14888235429017569896

/-! ## A246946.P1407932108260241229

`A080765(A264762(n+1))+A014963(A000977(n+1))`
-/

namespace A246946.P1407932108260241229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080765 (A264762 (n + 1)).toNat + A014963 (A000977 (n + 1)).toNat

end

end A246946.P1407932108260241229

/-! ## A246946.P3056355800306237599

`A294901(A000040(n+1))+A080765(A264762(n+1))`
-/

namespace A246946.P3056355800306237599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294901 (A000040 (n + 1)).toNat + A080765 (A264762 (n + 1)).toNat

end

end A246946.P3056355800306237599

/-! ## A246946.P11033250897807239723

`A294901(A230362(n+1))+A080765(A264762(n+1))`
-/

namespace A246946.P11033250897807239723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294901 (A230362 (n + 1)).toNat + A080765 (A264762 (n + 1)).toNat

end

end A246946.P11033250897807239723

/-! ## A246946.P14297040539526850128

`A080765(A264762(n+1))+A014963(A246947(n+1))`
-/

namespace A246946.P14297040539526850128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080765 (A264762 (n + 1)).toNat + A014963 (A246947 (n + 1)).toNat

end

end A246946.P14297040539526850128

/-!
# A246947: a(1)=30; for n > 1, a(n) is the least integer not occurring earlier such that a(n) shares exactly three distinct prime divisors with a(n-1).

The programs for A246947, there is no canonical definition to state claims against.
-/

/-! ## A246947.P16973905763203568592

`A000977(A264780(n+1))`
-/

namespace A246947.P16973905763203568592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000977 (A264780 (n + 1)).toNat

end

end A246947.P16973905763203568592

/-!
# A246950: Expansion of phi(-q) * phi(-q^4) in powers of q where phi() is a Ramanujan theta function.

The programs for A246950, there is no canonical definition to state claims against.
-/

/-! ## A246950.P7650001444250368953

`(-1)^n*A204531(n)`
-/

namespace A246950.P7650001444250368953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A204531 n

end

end A246950.P7650001444250368953

/-! ## A246950.P13310452759564196097

`A204531(n)*A219977(n)`
-/

namespace A246950.P13310452759564196097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204531 n * A219977 n

end

end A246950.P13310452759564196097

/-! ## A246950.P16677391036300388625

`A204531(n)*A309873(n+1)`
-/

namespace A246950.P16677391036300388625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204531 n * A309873 (n + 1)

end

end A246950.P16677391036300388625

/-! ## A246950.P5293257101627531746

`A204531(n)/A055325(val(n+1, 2)+1)`
-/

namespace A246950.P5293257101627531746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204531 n : ℚ) / (A055325 (SequenceMachineLib.valuation (n + 1) 2 + 1) : ℚ)

end

end A246950.P5293257101627531746

/-! ## A246950.P453891520476769797

`A204531(n)/A023900(2^val(n+1, 2))`
-/

namespace A246950.P453891520476769797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204531 n : ℚ) / (A023900 (2 ^ SequenceMachineLib.valuation (n + 1) 2) : ℚ)

end

end A246950.P453891520476769797

/-!
# A246951: Number of endofunctions f on [n] such that the number of cycles of f is a multiple of 3 for each size that is a multiple of 3.

The programs for A246951, there is no canonical definition to state claims against.
-/

/-! ## A246951.P6831587007998148891

`A185070(A241723(n))`
-/

namespace A246951.P6831587007998148891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185070 (A241723 (n + 15)).toNat

end

end A246951.P6831587007998148891

/-! ## A246951.P5439382629901278168

`filter[A185070(n), A039984(#)]`
-/

namespace A246951.P5439382629901278168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039984 (f1 j).toNat = 1) n)

end

end A246951.P5439382629901278168

/-!
# A246953: Expansion of phi(-x) * psi(x^2)^2 in powers of x where phi(), psi() are Ramanujan theta functions.

The programs for A246953, there is no canonical definition to state claims against.
-/

/-! ## A246953.P10778439730705615733

`(-1)^n*A045828(n)`
-/

namespace A246953.P10778439730705615733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A045828 n

end

end A246953.P10778439730705615733

/-! ## A246953.P10025769355006543348

`abs(A246815(n))*(-1)^n`
-/

namespace A246953.P10025769355006543348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A246815 n| * (-1) ^ n

end

end A246953.P10025769355006543348

/-! ## A246953.P7049165019063360066

`A057077(n)*A246815(n)`
-/

namespace A246953.P7049165019063360066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A246815 n

end

end A246953.P7049165019063360066

/-! ## A246953.P2512514178587937407

`A087960(n)*A246836(n)`
-/

namespace A246953.P2512514178587937407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A246836 n

end

end A246953.P2512514178587937407

/-! ## A246953.P4050690824580403634

`A045828(n)/A033999(n)`
-/

namespace A246953.P4050690824580403634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045828 n : ℚ) / (A033999 n : ℚ)

end

end A246953.P4050690824580403634

/-! ## A246953.P18278676333338010965

`A045828(n)/A057077(A057077(n)+n)`
-/

namespace A246953.P18278676333338010965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045828 n : ℚ) / (A057077 (A057077 n + (n : ℤ)).toNat : ℚ)

end

end A246953.P18278676333338010965

/-! ## A246953.P6622811188720824991

`A045828(n)*A246815(n)/A246836(n)`
-/

namespace A246953.P6622811188720824991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045828 n * A246815 n : ℚ) / (A246836 n : ℚ)

end

end A246953.P6622811188720824991

/-! ## A246953.P8437242255734072987

`lcm(A033999(n), A246836(n))*A033999(n)`
-/

namespace A246953.P8437242255734072987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A033999 n) (A246836 n) : ℤ) * A033999 n

end

end A246953.P8437242255734072987

/-! ## A246953.P3571941418126020419

`A057077(n+1)*A246836(n)`
-/

namespace A246953.P3571941418126020419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (n + 1) * A246836 n

end

end A246953.P3571941418126020419

/-! ## A246953.P16721617906364215763

`A045828(n+1)/A246836(n+1)*A246836(n)`
-/

namespace A246953.P16721617906364215763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045828 (n + 1) : ℚ) / (A246836 (n + 1) : ℚ) * (A246836 n : ℚ)

end

end A246953.P16721617906364215763

/-! ## A246953.P1435157641088471437

`A080965(2*n+1)/4`
-/

namespace A246953.P1435157641088471437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080965 (2 * n + 1) : ℚ) / 4

end

end A246953.P1435157641088471437

/-! ## A246953.P4544483335183994230

`A045828(n)*A057077(2*n)`
-/

namespace A246953.P4544483335183994230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045828 n * A057077 (2 * n)

end

end A246953.P4544483335183994230

/-! ## A246953.P14754045084883106902

`A045828(n)*A087960(2*n)`
-/

namespace A246953.P14754045084883106902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045828 n * A087960 (2 * n)

end

end A246953.P14754045084883106902

/-! ## A246953.P2089164920258340010

`A072070(2*n+1)-A045828(n)`
-/

namespace A246953.P2089164920258340010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072070 (2 * n + 1) - A045828 n

end

end A246953.P2089164920258340010

/-! ## A246953.P6842853268963776628

`A127786(2*n+1)/(2*A057077(n+1))`
-/

namespace A246953.P6842853268963776628
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127786 (2 * n + 1) : ℚ) / (2 * A057077 (n + 1) : ℚ)

end

end A246953.P6842853268963776628

/-! ## A246953.P16517041217567726642

`A033717(2*n+1)/(2*A056594(2*n))`
-/

namespace A246953.P16517041217567726642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033717 (2 * n + 1) : ℚ) / (2 * A056594 (2 * n) : ℚ)

end

end A246953.P16517041217567726642

/-! ## A246953.P15018163693673021518

`A083703(2*n+1)/A083703(A006519(2*n+1))`
-/

namespace A246953.P15018163693673021518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083703 (2 * n + 1) : ℚ) / (A083703 (A006519 (2 * n + 1)).toNat : ℚ)

end

end A246953.P15018163693673021518

/-! ## A246953.P10960552893729284090

`A045828(n)/A087960(n²)`
-/

namespace A246953.P10960552893729284090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045828 n : ℚ) / (A087960 (n ^ 2) : ℚ)

end

end A246953.P10960552893729284090

/-!
# A246954: Expansion of phi(-x) * psi(-x)^2 in powers of x where phi(), psi() are Ramanujan theta functions.

The programs for A246954, there is no canonical definition to state claims against.
-/

/-! ## A246954.P8375305536793809248

`(-1)^n*A045834(n)`
-/

namespace A246954.P8375305536793809248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A045834 n

end

end A246954.P8375305536793809248

/-! ## A246954.P13376554470548005320

`A045834(n)/A033999(n)`
-/

namespace A246954.P13376554470548005320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045834 n : ℚ) / (A033999 n : ℚ)

end

end A246954.P13376554470548005320

/-! ## A246954.P12635243588159382301

`(A176040(n)-2)*A246811(2*n)`
-/

namespace A246954.P12635243588159382301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A176040 n - 2) * A246811 (2 * n)

end

end A246954.P12635243588159382301

/-! ## A246954.P13673791480385592750

`A072068(2*n+1)-A246811(2*n)`
-/

namespace A246954.P13673791480385592750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072068 (2 * n + 1) - A246811 (2 * n)

end

end A246954.P13673791480385592750

/-! ## A246954.P12684692174657508214

`A116597(A008586(n)+1)/2`
-/

namespace A246954.P12684692174657508214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116597 (A008586 n + 1).toNat : ℚ) / 2

end

end A246954.P12684692174657508214

/-! ## A246954.P16777303448546021900

`A127786(A008590(n)+2)/2`
-/

namespace A246954.P16777303448546021900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127786 (A008590 n + 2).toNat : ℚ) / 2

end

end A246954.P16777303448546021900

/-!
# A246955: Numbers j for which the symmetric representation of sigma(j) has two parts, each of width one.

The programs for A246955, there is no canonical definition to state claims against.
-/

/-! ## A246955.P18307143972012816210

`A085681(n+1)/2`
-/

namespace A246955.P18307143972012816210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085681 (n + 1) : ℚ) / 2

end

end A246955.P18307143972012816210

/-! ## A246955.P2064747745606465298

`ceil(eq[3, A348953(n+1)]/2)`
-/

namespace A246955.P2064747745606465298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2⌉

end

end A246955.P2064747745606465298

/-! ## A246955.P8885165060070158186

`eq[1, A348660(2*(n+1))]+1`
-/

namespace A246955.P8885165060070158186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348660 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A246955.P8885165060070158186

/-! ## A246955.P11222416546618612108

`eq[2, A060764(2*(n+1))]+1`
-/

namespace A246955.P11222416546618612108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060764 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A246955.P11222416546618612108

/-! ## A246955.P17494516596763414355

`eq[3, A348953(2*(n+1))]+1`
-/

namespace A246955.P17494516596763414355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348953 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A246955.P17494516596763414355

/-! ## A246955.P6542639188526925884

`eq[3, A348953(gcd(n, C(2, n))+n)]`
-/

namespace A246955.P6542639188526925884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348953 (Nat.gcd n (Nat.choose 2 n) + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A246955.P6542639188526925884

/-! ## A246955.P12551980018296237913

`eq[3*n, A118778(abs(1-n)+1)]/2`
-/

namespace A246955.P12551980018296237913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118778 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2

end

end A246955.P12551980018296237913

/-! ## A246955.P14737337155262573813

`A001281(A085681(n+1))`
-/

namespace A246955.P14737337155262573813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A085681 (n + 1)).toNat

end

end A246955.P14737337155262573813

/-! ## A246955.P732406968963943926

`eq[2, A060764(A004277(n))]`
-/

namespace A246955.P732406968963943926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060764 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A246955.P732406968963943926

/-! ## A246955.P3219248790654228453

`eq[2, A060764(A257088(n))]`
-/

namespace A246955.P3219248790654228453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060764 (A257088 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A246955.P3219248790654228453

/-!
# A246956: Numbers a(n) = 2^(n-1) * f(n), where n >= 1 and f(n) is the smallest prime number larger than 2^n (A014210).

The programs for A246956, the canonical program `A246956.P14999203751813535719` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246956 has offset 1).

The definition of A246956 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246956.P14999203751813535719

`2^n*A014210(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A246956

/-- `2^n*A014210(n+1)` -/
def P14999203751813535719.Spec : Prop :=
  ∀ n, P14999203751813535719.a n = A246956 (n + 1)

theorem P14999203751813535719.correct : P14999203751813535719.Spec := by
  intro n
  simp only [A246956, Nat.add_sub_cancel]

end A246956

/-! ## A246956.P14109861996333522537

`2^n*A203074(n+2)`
-/

namespace A246956.P14109861996333522537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A203074 (n + 2)

end

end A246956.P14109861996333522537

namespace A246956

/-- `2^n*A203074(n+2)` -/
def P14109861996333522537.Spec : Prop :=
  ∀ n, P14109861996333522537.a n = A246956 (n + 1)

end A246956

/-! ## A246956.P6805434930200597076

`2^n*or(1, A104080(n+1))`
-/

namespace A246956.P6805434930200597076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * Int.lor 1 (A104080 (n + 1))

end

end A246956.P6805434930200597076

namespace A246956

/-- `2^n*or(1, A104080(n+1))` -/
def P6805434930200597076.Spec : Prop :=
  ∀ n, P6805434930200597076.a n = A246956 (n + 1)

end A246956

/-! ## A246956.P2637770780314987659

`lcm(A000079(n), A014210(n+1))`
-/

namespace A246956.P2637770780314987659
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A014210 (n + 1))

end

end A246956.P2637770780314987659

namespace A246956

/-- `lcm(A000079(n), A014210(n+1))` -/
def P2637770780314987659.Spec : Prop :=
  ∀ n, (P2637770780314987659.a n : ℤ) = A246956 (n + 1)

end A246956

/-! ## A246956.P4524461991151999393

`A014210(n+1)*A016116(2*n)`
-/

namespace A246956.P4524461991151999393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014210 (n + 1) * A016116 (2 * n)

end

end A246956.P4524461991151999393

namespace A246956

/-- `A014210(n+1)*A016116(2*n)` -/
def P4524461991151999393.Spec : Prop :=
  ∀ n, P4524461991151999393.a n = A246956 (n + 1)

end A246956

/-! ## A246956.P8953301939365832327

`Δ[A048578(n)]*A014210(n+1)/2`
-/

namespace A246956.P8953301939365832327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) * A014210 (n + 1) : ℚ) / 2

end

end A246956.P8953301939365832327

namespace A246956

/-- `Δ[A048578(n)]*A014210(n+1)/2` -/
def P8953301939365832327.Spec : Prop :=
  ∀ n, P8953301939365832327.a n = (A246956 (n + 1) : ℚ)

theorem P8953301939365832327.correct : P8953301939365832327.Spec := by
  intro n
  simp only [A246956, Nat.add_sub_cancel, A246956.P8953301939365832327.f1, A246956.P8953301939365832327.a, A246956.P14999203751813535719.a, A014210, A014210.P8900791388522812635.a, A048578, A048578.P13686089786535013419.a, A013597, A013597.P2064454081418839404.a, A013632, A013632.P6559946879985956067.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A230980, A230980.P7768329975809437652.f2, A230980.P7768329975809437652.f1, A230980.P7768329975809437652.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A246956

/-! ## A246956.P2562051252078802487

`A014210(n+1)/2*A171559(n+1)`
-/

namespace A246956.P2562051252078802487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014210 (n + 1) : ℚ) / 2 * (A171559 (n + 1) : ℚ)

end

end A246956.P2562051252078802487

namespace A246956

/-- `A014210(n+1)/2*A171559(n+1)` -/
def P2562051252078802487.Spec : Prop :=
  ∀ n, P2562051252078802487.a n = (A246956 (n + 1) : ℚ)

end A246956

/-! ## A246956.P13327960902130971601

`(A013597(n+1)+A000079(n+1))*A000079(n)`
-/

namespace A246956.P13327960902130971601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A013597 (n + 1) + A000079 (n + 1)) * A000079 n

end

end A246956.P13327960902130971601

namespace A246956

/-- `(A013597(n+1)+A000079(n+1))*A000079(n)` -/
def P13327960902130971601.Spec : Prop :=
  ∀ n, P13327960902130971601.a n = A246956 (n + 1)

theorem P13327960902130971601.correct : P13327960902130971601.Spec := by
  intro n
  simp only [A246956, Nat.add_sub_cancel, A246956.P13327960902130971601.a, A246956.P14999203751813535719.a, A000079, A000079.P10855139691139572931.a, A013597, A013597.P2064454081418839404.a, A014210, A014210.P8900791388522812635.a, A013632, A013632.P6559946879985956067.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A230980, A230980.P7768329975809437652.f2, A230980.P7768329975809437652.f1, A230980.P7768329975809437652.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A246956

/-! ## A246956.P878951593850718877

`2*A000079(n)²*A014210(n+1)/A000079(n+1)`
-/

namespace A246956.P878951593850718877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A000079 n ^ 2 * A014210 (n + 1) : ℚ) / (A000079 (n + 1) : ℚ)

end

end A246956.P878951593850718877

namespace A246956

/-- `2*A000079(n)²*A014210(n+1)/A000079(n+1)` -/
def P878951593850718877.Spec : Prop :=
  ∀ n, P878951593850718877.a n = (A246956 (n + 1) : ℚ)

theorem P878951593850718877.correct : P878951593850718877.Spec := by
  intro n
  simp only [A246956, Nat.add_sub_cancel, A246956.P878951593850718877.a, A246956.P14999203751813535719.a, A000079, A000079.P10855139691139572931.a, A014210, A014210.P8900791388522812635.a, A013597, A013597.P2064454081418839404.a, A013632, A013632.P6559946879985956067.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A230980, A230980.P7768329975809437652.f2, A230980.P7768329975809437652.f1, A230980.P7768329975809437652.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A246956

/-! ## A246956.P3346777982323693554

`A000079(2*n+1)*A014210(n+1)/A000079(n+1)`
-/

namespace A246956.P3346777982323693554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (2 * n + 1) * A014210 (n + 1) : ℚ) / (A000079 (n + 1) : ℚ)

end

end A246956.P3346777982323693554

namespace A246956

/-- `A000079(2*n+1)*A014210(n+1)/A000079(n+1)` -/
def P3346777982323693554.Spec : Prop :=
  ∀ n, P3346777982323693554.a n = (A246956 (n + 1) : ℚ)

theorem P3346777982323693554.correct : P3346777982323693554.Spec := by
  intro n
  simp only [A246956, Nat.add_sub_cancel, A246956.P3346777982323693554.a, A246956.P14999203751813535719.a, A000079, A000079.P10855139691139572931.a, A014210, A014210.P8900791388522812635.a, A013597, A013597.P2064454081418839404.a, A013632, A013632.P6559946879985956067.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A230980, A230980.P7768329975809437652.f2, A230980.P7768329975809437652.f1, A230980.P7768329975809437652.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A246956

/-! ## A246956.P10942077181947063375

`A011782(2*n+1)*A014210(n+1)/A011782(n+1)`
-/

namespace A246956.P10942077181947063375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 (2 * n + 1) * A014210 (n + 1) : ℚ) / (A011782 (n + 1) : ℚ)

end

end A246956.P10942077181947063375

namespace A246956

/-- `A011782(2*n+1)*A014210(n+1)/A011782(n+1)` -/
def P10942077181947063375.Spec : Prop :=
  ∀ n, P10942077181947063375.a n = (A246956 (n + 1) : ℚ)

end A246956

/-!
# A246957: Numbers of (undirected) Hamiltonian paths in the n-Sierpiński gasket graph.

The programs for A246957, there is no canonical definition to state claims against.
-/

/-! ## A246957.P17431211372239580731

`A234635(n+1)/2`
-/

namespace A246957.P17431211372239580731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234635 (n + 1) : ℚ) / 2

end

end A246957.P17431211372239580731

/-!
# A246959: Numbers of (undirected) Hamiltonian cycles in the n-Sierpiński gasket graph.

The programs for A246959, there is no canonical definition to state claims against.
-/

/-! ## A246959.P4437194423740170537

`(3*a(n-1))^3` with `a(0)=1, a(1)=1, a(2)=8`
-/

namespace A246959.P4437194423740170537
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 8] fun n a =>
  (3 * a (n - 1)) ^ 3

end

end A246959.P4437194423740170537

/-!
# A246960: Directions of the lines in the (Heighway) Dragon Curve.

The programs for A246960, the canonical program `A246960.P13943913027465924161` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246960 has offset 0).

The definition of A246960 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A246960.P15453301905405972098

`A105500(n)-1`
-/

namespace A246960.P15453301905405972098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105500 n - 1

end

end A246960.P15453301905405972098

namespace A246960

/-- `A105500(n)-1` -/
def P15453301905405972098.Spec : Prop :=
  ∀ n, P15453301905405972098.a n = A246960 n

theorem P15453301905405972098.correct : P15453301905405972098.Spec := by
  intro n
  simp only [A246960, Nat.add_sub_cancel, A246960.P15453301905405972098.a, A246960.P13943913027465924161.a, A005811, A005811.P8696411420205566785.a, A105500, A105500.P10829818513304664875.a, A000120, A000120.P2816527436160941581.a, A003188, A003188.P10544524695508875182.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A246960

/-! ## A246960.P13943913027465924161

`A005811(n)%4`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A246960

/-- `A005811(n)%4` -/
def P13943913027465924161.Spec : Prop :=
  ∀ n, P13943913027465924161.a n = A246960 n

theorem P13943913027465924161.correct : P13943913027465924161.Spec := by
  intro n
  simp only [A246960]

end A246960

/-! ## A246960.P1390368086086132836

`(a(n-1-and(n, 2*n))+1)%4` with `a(0)=0`
-/

namespace A246960.P1390368086086132836
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (a ((n : ℤ) - 1 - (Nat.land n (2 * n) : ℤ)).toNat + 1) % 4

end

end A246960.P1390368086086132836

namespace A246960

/-- `(a(n-1-and(n, 2*n))+1)%4` -/
def P1390368086086132836.Spec : Prop :=
  ∀ n, (P1390368086086132836.a n : ℤ) = A246960 n

end A246960

/-! ## A246960.P16643278508937927376

`and(3, a(n-1-and(n, 2*n))+1)` with `a(0)=0`
-/

namespace A246960.P16643278508937927376
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.land 3 (a ((n : ℤ) - 1 - (Nat.land n (2 * n) : ℤ)).toNat + 1)

end

end A246960.P16643278508937927376

namespace A246960

/-- `and(3, a(n-1-and(n, 2*n))+1)` -/
def P16643278508937927376.Spec : Prop :=
  ∀ n, (P16643278508937927376.a n : ℤ) = A246960 n

end A246960

/-! ## A246960.P13915683524701983994

`(∑[Δ[xor(n, 2*n-1)]%2]+3)%4`
-/

namespace A246960.P13915683524701983994
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((2 * n : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j + 3) 4

end

end A246960.P13915683524701983994

namespace A246960

/-- `(∑[Δ[xor(n, 2*n-1)]%2]+3)%4` -/
def P13915683524701983994.Spec : Prop :=
  ∀ n, P13915683524701983994.a n = A246960 n

end A246960

/-! ## A246960.P4580448528737998926

`A136004(n)%4`
-/

namespace A246960.P4580448528737998926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136004 n) 4

end

end A246960.P4580448528737998926

namespace A246960

/-- `A136004(n)%4` -/
def P4580448528737998926.Spec : Prop :=
  ∀ n, P4580448528737998926.a n = A246960 n

end A246960

/-! ## A246960.P14067141711267768338

`A010873(A005811(n))`
-/

namespace A246960.P14067141711267768338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A005811 n).toNat

end

end A246960.P14067141711267768338

namespace A246960

/-- `A010873(A005811(n))` -/
def P14067141711267768338.Spec : Prop :=
  ∀ n, P14067141711267768338.a n = A246960 n

end A246960

/-! ## A246960.P1097209045607863488

`A010873(A136004(n))`
-/

namespace A246960.P1097209045607863488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A136004 n).toNat

end

end A246960.P1097209045607863488

namespace A246960

/-- `A010873(A136004(n))` -/
def P1097209045607863488.Spec : Prop :=
  ∀ n, P1097209045607863488.a n = A246960 n

end A246960

/-! ## A246960.P16628243224898270359

`A189480(A088748(n))`
-/

namespace A246960.P16628243224898270359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189480 (A088748 n).toNat

end

end A246960.P16628243224898270359

namespace A246960

/-- `A189480(A088748(n))` -/
def P16628243224898270359.Spec : Prop :=
  ∀ n, P16628243224898270359.a n = A246960 n

end A246960

/-! ## A246960.P17312403792932112410

`A000034(n)-A393435(n)`
-/

namespace A246960.P17312403792932112410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n - A393435 n

end

end A246960.P17312403792932112410

namespace A246960

/-- `A000034(n)-A393435(n)` -/
def P17312403792932112410.Spec : Prop :=
  ∀ n, P17312403792932112410.a n = A246960 n

end A246960

/-! ## A246960.P8508003637713601556

`A001538(n)%A105500(n)`
-/

namespace A246960.P8508003637713601556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001538 n) (A105500 n)

end

end A246960.P8508003637713601556

namespace A246960

/-- `A001538(n)%A105500(n)` -/
def P8508003637713601556.Spec : Prop :=
  ∀ n, P8508003637713601556.a n = A246960 n

end A246960

/-! ## A246960.P1906377357237764058

`A002148(n)%A105500(n)`
-/

namespace A246960.P1906377357237764058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002148 n) (A105500 n)

end

end A246960.P1906377357237764058

namespace A246960

/-- `A002148(n)%A105500(n)` -/
def P1906377357237764058.Spec : Prop :=
  ∀ n, P1906377357237764058.a n = A246960 n

end A246960

/-! ## A246960.P13969778614411306540

`A010002(n)%A105500(n)`
-/

namespace A246960.P13969778614411306540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010002 n) (A105500 n)

end

end A246960.P13969778614411306540

namespace A246960

/-- `A010002(n)%A105500(n)` -/
def P13969778614411306540.Spec : Prop :=
  ∀ n, P13969778614411306540.a n = A246960 n

end A246960

/-! ## A246960.P11904155221327420123

`A010011(n)%A105500(n)`
-/

namespace A246960.P11904155221327420123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010011 n) (A105500 n)

end

end A246960.P11904155221327420123

namespace A246960

/-- `A010011(n)%A105500(n)` -/
def P11904155221327420123.Spec : Prop :=
  ∀ n, P11904155221327420123.a n = A246960 n

end A246960

/-! ## A246960.P17540631268458168977

`A010693(n)%A105500(n)`
-/

namespace A246960.P17540631268458168977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010693 n) (A105500 n)

end

end A246960.P17540631268458168977

namespace A246960

/-- `A010693(n)%A105500(n)` -/
def P17540631268458168977.Spec : Prop :=
  ∀ n, P17540631268458168977.a n = A246960 n

end A246960

/-! ## A246960.P3516127912905382393

`A010697(n)%A105500(n)`
-/

namespace A246960.P3516127912905382393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010697 n) (A105500 n)

end

end A246960.P3516127912905382393

namespace A246960

/-- `A010697(n)%A105500(n)` -/
def P3516127912905382393.Spec : Prop :=
  ∀ n, P3516127912905382393.a n = A246960 n

end A246960

/-! ## A246960.P13092666383946189645

`A010718(n)%A105500(n)`
-/

namespace A246960.P13092666383946189645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010718 n) (A105500 n)

end

end A246960.P13092666383946189645

namespace A246960

/-- `A010718(n)%A105500(n)` -/
def P13092666383946189645.Spec : Prop :=
  ∀ n, P13092666383946189645.a n = A246960 n

end A246960

/-! ## A246960.P15191065956159003139

`A016969(n)%A105500(n)`
-/

namespace A246960.P15191065956159003139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016969 n) (A105500 n)

end

end A246960.P15191065956159003139

namespace A246960

/-- `A016969(n)%A105500(n)` -/
def P15191065956159003139.Spec : Prop :=
  ∀ n, P15191065956159003139.a n = A246960 n

end A246960

/-! ## A246960.P12422387759740966070

`A016971(n)%A105500(n)`
-/

namespace A246960.P12422387759740966070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016971 n) (A105500 n)

end

end A246960.P12422387759740966070

namespace A246960

/-- `A016971(n)%A105500(n)` -/
def P12422387759740966070.Spec : Prop :=
  ∀ n, P12422387759740966070.a n = A246960 n

end A246960

/-!
# A246961: Numerator of the expected number of random moves in Tower of Hanoi problem with n disks starting at a randomly chosen valid configuration and ending with all disks at peg 1.

The programs for A246961, the canonical program `A246961.P12274593761469156777` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246961 has offset 0).

The definition of A246961 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A246961.P5003375115707748217

`((3^n-1)*(5^(n+1)-2*3^(n+1))+5^n-3^n)/4`
-/

namespace A246961.P5003375115707748217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((3 ^ n : ℤ) - 1) * ((5 ^ (n + 1) : ℤ) - (2 * 3 ^ (n + 1) : ℤ)) + (5 ^ n : ℤ) - (3 ^ n : ℤ) : ℚ) / 4

end

end A246961.P5003375115707748217

namespace A246961

/-- `((3^n-1)*(5^(n+1)-2*3^(n+1))+5^n-3^n)/4` -/
def P5003375115707748217.Spec : Prop :=
  ∀ n, P5003375115707748217.a n = (A246961 n : ℚ)

end A246961

/-! ## A246961.P12274593761469156777

`3^n*A007798(n)+2*A134939(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A246961

/-- `3^n*A007798(n)+2*A134939(n)` -/
def P12274593761469156777.Spec : Prop :=
  ∀ n, P12274593761469156777.a n = A246961 n

theorem P12274593761469156777.correct : P12274593761469156777.Spec := by
  intro n
  simp only [A246961]

end A246961

/-!
# A246962: Expansion of psi(-x^3) * phi(-x^2) in powers of x where phi(), psi() are Ramanujan theta functions.

The programs for A246962, there is no canonical definition to state claims against.
-/

/-! ## A246962.P7890564889769539450

`A226861(3*n+1)/2`
-/

namespace A246962.P7890564889769539450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226861 (3 * n + 1) : ℚ) / 2

end

end A246962.P7890564889769539450

/-! ## A246962.P1129474892736089652

`-A226860(A016777(n))`
-/

namespace A246962.P1129474892736089652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A226860 (A016777 n).toNat

end

end A246962.P1129474892736089652

/-! ## A246962.P4980207541918195018

`A226860(3*n+2)-A226860(3*n+1)`
-/

namespace A246962.P4980207541918195018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226860 (3 * n + 2) - A226860 (3 * n + 1)

end

end A246962.P4980207541918195018

/-! ## A246962.P3442736937076737241

`-A226860(A032766(A005408(n)))`
-/

namespace A246962.P3442736937076737241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A226860 (A032766 (A005408 n).toNat).toNat

end

end A246962.P3442736937076737241

/-! ## A246962.P5768729935942661054

`A226350(3*n+n+1)`
-/

namespace A246962.P5768729935942661054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226350 (3 * n + (n + 1))

end

end A246962.P5768729935942661054

/-! ## A246962.P13437133645984124076

`A226860(A154266(n)-2)`
-/

namespace A246962.P13437133645984124076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226860 (A154266 n - 2).toNat

end

end A246962.P13437133645984124076

/-!
# A246963: G.f. satisfies: A(x) = Sum_{n>=0} A000108(n)^2 * (x-x^2)^n, where A000108(n) = C(2*n,n)/(n+1) is the n-th Catalan number.

The programs for A246963, the canonical program `A246963.P15112449336003440581` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246963 has offset 0).

The definition of A246963 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A246963.P15112449336003440581

`∑{#}[n, (-1)^#*C(n-#, #)*A000108(n-#)²]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A246963

/-- `∑{#}[n, (-1)^#*C(n-#, #)*A000108(n-#)²]` -/
def P15112449336003440581.Spec : Prop :=
  ∀ n, P15112449336003440581.a n = A246963 n

theorem P15112449336003440581.correct : P15112449336003440581.Spec := by
  intro n
  simp only [A246963]

end A246963

/-! ## A246963.P15102260288532164598

`or(1, ∑[A111713(n)])`
-/

namespace A246963.P15102260288532164598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A246963.P15102260288532164598

namespace A246963

/-- `or(1, ∑[A111713(n)])` -/
def P15102260288532164598.Spec : Prop :=
  ∀ n, P15102260288532164598.a n = A246963 n

end A246963

/-! ## A246963.P1594939606967354347

`A000007(n)+∑[A111713(n)]`
-/

namespace A246963.P1594939606967354347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246963.P1594939606967354347

namespace A246963

/-- `A000007(n)+∑[A111713(n)]` -/
def P1594939606967354347.Spec : Prop :=
  ∀ n, P1594939606967354347.a n = A246963 n

end A246963

/-! ## A246963.P5692572943273009372

`∑[A111713(n)]+val(A124098(n+1), 3)`
-/

namespace A246963.P5692572943273009372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (SequenceMachineLib.valuation (A124098 (n + 1)).toNat 3 : ℤ)

end

end A246963.P5692572943273009372

namespace A246963

/-- `∑[A111713(n)]+val(A124098(n+1), 3)` -/
def P5692572943273009372.Spec : Prop :=
  ∀ n, P5692572943273009372.a n = A246963 n

end A246963

/-! ## A246963.P6154272145163978158

`∑[A111713(n)]+val(A065727(n+2), 3)`
-/

namespace A246963.P6154272145163978158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (SequenceMachineLib.valuation (A065727 (n + 2)).toNat 3 : ℤ)

end

end A246963.P6154272145163978158

namespace A246963

/-- `∑[A111713(n)]+val(A065727(n+2), 3)` -/
def P6154272145163978158.Spec : Prop :=
  ∀ n, P6154272145163978158.a n = A246963 n

end A246963

/-! ## A246963.P1504794107113370346

`A228495(A008574(n))+∑[A111713(n)]`
-/

namespace A246963.P1504794107113370346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228495 (A008574 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246963.P1504794107113370346

namespace A246963

/-- `A228495(A008574(n))+∑[A111713(n)]` -/
def P1504794107113370346.Spec : Prop :=
  ∀ n, P1504794107113370346.a n = A246963 n

end A246963

/-! ## A246963.P519299934559803349

`A329054(∑[n+1])+∑[A111713(n)]`
-/

namespace A246963.P519299934559803349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329054 (∑ j ∈ Finset.range (n + 1), f1 j) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A246963.P519299934559803349

namespace A246963

/-- `A329054(∑[n+1])+∑[A111713(n)]` -/
def P519299934559803349.Spec : Prop :=
  ∀ n, P519299934559803349.a n = A246963 n

end A246963

/-!
# A246964: Limiting sequence of transformations when we start with the all 1's sequence a=A000012 and at step n>=0 replace a(n+a(n)) with Sum_{k=n..n+a(n)} a(k).

The programs for A246964, there is no canonical definition to state claims against.
-/

/-! ## A246964.P7115589142095057490

`gcd(A124146(n+1), A181934(A053344(n+1)))`
-/

namespace A246964.P7115589142095057490
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A124146 (n + 1)) (A181934 (A053344 (n + 1)).toNat)

end

end A246964.P7115589142095057490

/-! ## A246964.P685962680979709901

`gcd(A033791(A033813(n+2)), A033830(2*n+3))`
-/

namespace A246964.P685962680979709901
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033791 (A033813 (n + 2)).toNat) (A033830 (2 * n + 3))

end

end A246964.P685962680979709901

/-!
# A246965: Numbers n such that 19*n-(n+19) is a prime.

The programs for A246965, the canonical program `A246965.P5539066629223825607` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246965 has offset 1).

The definition of A246965 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138918, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A246965.P5539066629223825607

`A138918(n+1)+1`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A246965

/-- `A138918(n+1)+1` -/
def P5539066629223825607.Spec : Prop :=
  ∀ n, P5539066629223825607.a n = A246965 (n + 1)

theorem P5539066629223825607.correct : P5539066629223825607.Spec := by
  intro n
  simp only [A246965, Nat.add_sub_cancel]

end A246965

/-! ## A246965.P13131303173559474651

`A258663(1+n)/2+1`
-/

namespace A246965.P13131303173559474651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258663 (1 + n) : ℚ) / 2 + 1

end

end A246965.P13131303173559474651

namespace A246965

/-- `A258663(1+n)/2+1` -/
def P13131303173559474651.Spec : Prop :=
  ∀ n, P13131303173559474651.a n = (A246965 (n + 1) : ℚ)

end A246965

/-! ## A246965.P17738955855893166836

`floor(A061242(n+1)/18)+2`
-/

namespace A246965.P17738955855893166836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A061242 (n + 1) : ℚ) / 18⌋ + 2

end

end A246965.P17738955855893166836

namespace A246965

/-- `floor(A061242(n+1)/18)+2` -/
def P17738955855893166836.Spec : Prop :=
  ∀ n, P17738955855893166836.a n = A246965 (n + 1)

end A246965

/-! ## A246965.P1881705577798492213

`A326139(A258663(n+1))+1`
-/

namespace A246965.P1881705577798492213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326139 (A258663 (n + 1)).toNat + 1

end

end A246965.P1881705577798492213

namespace A246965

/-- `A326139(A258663(n+1))+1` -/
def P1881705577798492213.Spec : Prop :=
  ∀ n, P1881705577798492213.a n = A246965 (n + 1)

end A246965

/-! ## A246965.P3186864039746047027

`A020725(A138918(n+1))`
-/

namespace A246965.P3186864039746047027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A138918 (n + 1)).toNat

end

end A246965.P3186864039746047027

namespace A246965

/-- `A020725(A138918(n+1))` -/
def P3186864039746047027.Spec : Prop :=
  ∀ n, P3186864039746047027.a n = A246965 (n + 1)

end A246965

/-! ## A246965.P4276810619264985265

`eq[1, A001222(abs(2*n+1-20*n))]+1`
-/

namespace A246965.P4276810619264985265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 |(2 * n + 1 : ℤ) - (20 * n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A246965.P4276810619264985265

namespace A246965

/-- `eq[1, A001222(abs(2*n+1-20*n))]+1` -/
def P4276810619264985265.Spec : Prop :=
  ∀ n, (P4276810619264985265.a n : ℤ) = A246965 (n + 1)

end A246965

/-! ## A246965.P18395871449663391028

`record[1-(n+1)*A156706(A016969(n))]`
-/

namespace A246965.P18395871449663391028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n + 1 : ℤ) * A156706 (A016969 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246965.P18395871449663391028

namespace A246965

/-- `record[1-(n+1)*A156706(A016969(n))]` -/
def P18395871449663391028.Spec : Prop :=
  ∀ n, P18395871449663391028.a n = A246965 (n + 1)

end A246965

/-! ## A246965.P4559391439183859604

`A008619(A258663(n+1))`
-/

namespace A246965.P4559391439183859604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A258663 (n + 1)).toNat

end

end A246965.P4559391439183859604

namespace A246965

/-- `A008619(A258663(n+1))` -/
def P4559391439183859604.Spec : Prop :=
  ∀ n, P4559391439183859604.a n = A246965 (n + 1)

end A246965

/-! ## A246965.P6447464763716086005

`eq[1, A167020(3*(n+1))]+2`
-/

namespace A246965.P6447464763716086005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167020 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A246965.P6447464763716086005

namespace A246965

/-- `eq[1, A167020(3*(n+1))]+2` -/
def P6447464763716086005.Spec : Prop :=
  ∀ n, (P6447464763716086005.a n : ℤ) = A246965 (n + 1)

end A246965

/-! ## A246965.P5900219497938799618

`A008620(A278529(A061242(n+1)))`
-/

namespace A246965.P5900219497938799618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A278529 (A061242 (n + 1)).toNat).toNat

end

end A246965.P5900219497938799618

namespace A246965

/-- `A008620(A278529(A061242(n+1)))` -/
def P5900219497938799618.Spec : Prop :=
  ∀ n, P5900219497938799618.a n = A246965 (n + 1)

end A246965

/-! ## A246965.P17342281433082374368

`A008618(A061242(n+1)+1)`
-/

namespace A246965.P17342281433082374368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A061242 (n + 1) + 1).toNat

end

end A246965.P17342281433082374368

namespace A246965

/-- `A008618(A061242(n+1)+1)` -/
def P17342281433082374368.Spec : Prop :=
  ∀ n, P17342281433082374368.a n = A246965 (n + 1)

end A246965

/-! ## A246965.P21485221700424062

`eq[1, A250205(3*(n+1))]+2`
-/

namespace A246965.P21485221700424062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250205 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A246965.P21485221700424062

namespace A246965

/-- `eq[1, A250205(3*(n+1))]+2` -/
def P21485221700424062.Spec : Prop :=
  ∀ n, (P21485221700424062.a n : ℤ) = A246965 (n + 1)

end A246965

/-!
# A246971: Triangular array read by rows, arising from enumeration of binary words containing n 0's and k 1's that avoid the pattern 0100010.

The programs for A246971, there is no canonical definition to state claims against.
-/

/-! ## A246971.P3827076291166427113

`A092392(n)-A250002(A288386(n))`
-/

namespace A246971.P3827076291166427113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092392 n - A250002 (A288386 n).toNat

end

end A246971.P3827076291166427113

/-! ## A246971.P16112282484017638652

`A092392(n)-A184955(A205400(n+1))`
-/

namespace A246971.P16112282484017638652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092392 n - A184955 (A205400 (n + 1)).toNat

end

end A246971.P16112282484017638652

/-! ## A246971.P843051764820519905

`A092392(n)-A349797(A250120(n))`
-/

namespace A246971.P843051764820519905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092392 n - A349797 (A250120 n).toNat

end

end A246971.P843051764820519905

/-! ## A246971.P18422453732405029746

`A092392(n)-A290174(A344637(n+8))`
-/

namespace A246971.P18422453732405029746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092392 n - A290174 (A344637 (n + 8)).toNat

end

end A246971.P18422453732405029746

/-! ## A246971.P1215292094466170792

`A092392(n)-A184955(gcd(n, ∑[n]))`
-/

namespace A246971.P1215292094466170792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092392 n - A184955 (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A246971.P1215292094466170792

/-!
# A246973: n^2 concatenated with (n+1)^2.

The programs for A246973, there is no canonical definition to state claims against.
-/

/-! ## A246973.P15813800260582837511

`A048385(lcm(A017401(n), A127421(n+1)))`
-/

namespace A246973.P15813800260582837511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048385 (Int.lcm (A017401 n) (A127421 (n + 1)))

end

end A246973.P15813800260582837511

/-! ## A246973.P3976197407451109312

`A048385(A127421(n+1)^(val(n+1, 10)+1))`
-/

namespace A246973.P3976197407451109312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048385 (A127421 (n + 1) ^ (SequenceMachineLib.valuation (n + 1) 10 + 1)).toNat

end

end A246973.P3976197407451109312

/-! ## A246973.P9340517560495798688

`A048385(C(A127421(n+1), val(n+1, 10)+1))`
-/

namespace A246973.P9340517560495798688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048385 (Nat.choose (A127421 (n + 1)).toNat (SequenceMachineLib.valuation (n + 1) 10 + 1))

end

end A246973.P9340517560495798688

/-! ## A246973.P17621036776329836549

`A048385(A127421(n+1)^A054911(n))`
-/

namespace A246973.P17621036776329836549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048385 (SequenceMachineLib.roundAway ((A127421 (n + 1) : ℚ) ^ (A054911 n : ℤ))).toNat

end

end A246973.P17621036776329836549

/-! ## A246973.P13698813400638461347

`A048385(C(A127421(n+1), A054911(n)))`
-/

namespace A246973.P13698813400638461347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048385 (Nat.choose (A127421 (n + 1)).toNat (A054911 n).toNat)

end

end A246973.P13698813400638461347

/-!
# A246974: Number of 3-ary plane multitrees with n edges.

The programs for A246974, there is no canonical definition to state claims against.
-/

/-! ## A246974.P1937063958127383400

`A059995(A265185(n))+(n+1)/∏{p}[n+1, #]`
-/

namespace A246974.P1937063958127383400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059995 (A265185 n).toNat : ℚ) + (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)

end

end A246974.P1937063958127383400

/-! ## A246974.P2409148427300048464

`∑[A148656(n)%p?[2^n-1]-A131074(3*n+2)+1]`
-/

namespace A246974.P2409148427300048464
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A148656 n) (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)) - A131074 (3 * n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246974.P2409148427300048464

/-! ## A246974.P8112116318232102716

`A289496(A149382(n+1))+A177100(n)`
-/

namespace A246974.P8112116318232102716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289496 (A149382 (n + 1)).toNat + A177100 n

end

end A246974.P8112116318232102716

/-!
# A246975: Number of 4-ary plane multitrees with n edges.

The programs for A246975, there is no canonical definition to state claims against.
-/

/-! ## A246975.P4667914834957660896

`A008615(A327437(n)+A261565(n))`
-/

namespace A246975.P4667914834957660896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A327437 n + A261565 n).toNat

end

end A246975.P4667914834957660896

/-! ## A246975.P18357040948109278691

`A333107(n)+A178210(A148466(n))`
-/

namespace A246975.P18357040948109278691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333107 n + A178210 (A148466 n).toNat

end

end A246975.P18357040948109278691

/-!
# A246977: Sequence B related to Fraenkel's (3,2)-Wythoff's game in Table 5 of Liu-Zhao (2014).

The programs for A246977, there is no canonical definition to state claims against.
-/

/-! ## A246977.P16776324942998545770

`A004275(A047496(2*n+1)%A091459(n+1))`
-/

namespace A246977.P16776324942998545770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (Int.tmod (A047496 (2 * n + 1)) (A091459 (n + 1))).toNat

end

end A246977.P16776324942998545770

/-! ## A246977.P5804619560927314775

`A310577(2*n)%A150940(A117707(3*n))`
-/

namespace A246977.P5804619560927314775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A310577 (2 * n)) (A150940 (A117707 (3 * n)).toNat)

end

end A246977.P5804619560927314775

/-! ## A246977.P8526742784665615355

`A023809(3*n+1)*A293215(A016041(n+1))`
-/

namespace A246977.P8526742784665615355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023809 (3 * n + 1) * A293215 (A016041 (n + 1)).toNat

end

end A246977.P8526742784665615355

/-! ## A246977.P13195836739816157343

`A006519(A014635(2*n+1))*A023809(3*n+1)`
-/

namespace A246977.P13195836739816157343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A014635 (2 * n + 1)).toNat * A023809 (3 * n + 1)

end

end A246977.P13195836739816157343

/-!
# A246979: Sequence B^(2) in Table 7 of Liu-Zhao (2014).

The programs for A246979, there is no canonical definition to state claims against.
-/

/-! ## A246979.P18406881093885540114

`A246980(n)-A246578(n)`
-/

namespace A246979.P18406881093885540114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246980 n - A246578 n

end

end A246979.P18406881093885540114

/-! ## A246979.P15677995218642292938

`A246980(n)-∑[A011730(n)]`
-/

namespace A246979.P15677995218642292938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011730 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246980 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246979.P15677995218642292938

/-! ## A246979.P14632345054164546434

`A246980(n)-A185284(2*n)`
-/

namespace A246979.P14632345054164546434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246980 n - A185284 (2 * n)

end

end A246979.P14632345054164546434

/-! ## A246979.P2111561564535915004

`A246980(n)-val(A247006(n), 2)`
-/

namespace A246979.P2111561564535915004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246980 n - (SequenceMachineLib.valuation (A247006 n).toNat 2 : ℤ)

end

end A246979.P2111561564535915004

/-! ## A246979.P14496369856433199378

`A246980(n)-A280617(n+1)/2`
-/

namespace A246979.P14496369856433199378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246980 n : ℚ) - (A280617 (n + 1) : ℚ) / 2

end

end A246979.P14496369856433199378

/-!
# A246980: Sequence B^(3) in Table 8 of Liu-Zhao (2014).

The programs for A246980, there is no canonical definition to state claims against.
-/

/-! ## A246980.P7892296655308846635

`A246979(n)+A246578(n)`
-/

namespace A246980.P7892296655308846635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246979 n + A246578 n

end

end A246980.P7892296655308846635

/-! ## A246980.P11103709050653538473

`A246979(n)+∑[A011730(n)]`
-/

namespace A246980.P11103709050653538473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011730 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246979 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246980.P11103709050653538473

/-! ## A246980.P17252636405109989283

`A246979(n)+A185284(2*n)`
-/

namespace A246980.P17252636405109989283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246979 n + A185284 (2 * n)

end

end A246980.P17252636405109989283

/-! ## A246980.P7326537859469232263

`A246979(n)+val(A247006(n), 2)`
-/

namespace A246980.P7326537859469232263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246979 n + (SequenceMachineLib.valuation (A247006 n).toNat 2 : ℤ)

end

end A246980.P7326537859469232263

/-! ## A246980.P17632072157246852107

`A246979(n)+A280617(n+1)/2`
-/

namespace A246980.P17632072157246852107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246979 n : ℚ) + (A280617 (n + 1) : ℚ) / 2

end

end A246980.P17632072157246852107

/-!
# A246981: Number of single-peaked preference orders on an n-set.

The programs for A246981, there is no canonical definition to state claims against.
-/

/-! ## A246981.P11581563951451194775

`(n+1)!*A005806(n+1)*(2^(2^(n+1)-1)-C(2^(n+1)-2, 2^n-1))`
-/

namespace A246981.P11581563951451194775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial (n + 1) : ℤ) * A005806 (n + 1) : ℚ) * ((2 : ℚ) ^ ((2 ^ (n + 1) : ℤ) - 1 : ℤ) - (Nat.choose ((2 ^ (n + 1) : ℤ) - 2).toNat ((2 ^ n : ℤ) - 1).toNat : ℚ))

end

end A246981.P11581563951451194775

/-!
# A246982: Triangle read by rows: T(n,k) = maximal number of inversions among all k-sorted permutations on n letters (n>=2, 1<=k<=n-1).

The programs for A246982, there is no canonical definition to state claims against.
-/

/-! ## A246982.P9077941510484750489

`A351167(A280789(n+2))+n`
-/

namespace A246982.P9077941510484750489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351167 (A280789 (n + 2)).toNat + (n : ℤ)

end

end A246982.P9077941510484750489

/-!
# A246983: Coefficients in Molien series for a 25-dimensional representation of SO(3) X SO(3).

The programs for A246983, there is no canonical definition to state claims against.
-/

/-! ## A246983.P7812603877850221708

`A118759(or(A350628(n+1), A350662(n)))`
-/

namespace A246983.P7812603877850221708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (Int.lor (A350628 (n + 1)) (A350662 n)).toNat

end

end A246983.P7812603877850221708

/-!
# A246984: Coefficients in Molien series for a 25-dimensional representation of SO(3) wreath Z_2.

The programs for A246984, there is no canonical definition to state claims against.
-/

/-! ## A246984.P10797930082868737036

`A357875(C(n, floor(n/2))-a(n-1)-1)` with `a(0)=1, a(1)=0`
-/

namespace A246984.P10797930082868737036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A357875 ((Nat.choose n ⌊(n : ℚ) / 2⌋.toNat : ℤ) - a (n - 1) - 1).toNat

end

end A246984.P10797930082868737036

/-! ## A246984.P11550399740416519815

`A088226(xor(6, A119826(n)))`
-/

namespace A246984.P11550399740416519815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088226 (Int.xor 6 (A119826 n)).toNat

end

end A246984.P11550399740416519815

/-! ## A246984.P5842431408458321426

`A306005(n)+A037819(A000111(n+1))`
-/

namespace A246984.P5842431408458321426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306005 n + A037819 (A000111 (n + 1)).toNat

end

end A246984.P5842431408458321426

/-! ## A246984.P13780920377850224191

`A352446(A260314(n))+A001405(n)-A320296(n+1)`
-/

namespace A246984.P13780920377850224191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352446 (A260314 n).toNat + A001405 n - A320296 (n + 1)

end

end A246984.P13780920377850224191

/-!
# A246985: Expansion of (1-8*x+14*x^2)/((1-2*x)*(1-3*x)*(1-6*x)).

The programs for A246985, the canonical program `A246985.P4081608827541635534` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246985 has offset 0).

The definition of A246985 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-8x+14x^2)/(1-11x+36x^2-36x^3))` (program `A246985.P4081608827541635534`, by `A246985.P4081608827541635534.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A246985.P4081608827541635534

`ogf((1-8x+14x^2)/(1-11x+36x^2-36x^3))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A246985

/-- `ogf((1-8x+14x^2)/(1-11x+36x^2-36x^3))` -/
def P4081608827541635534.Spec : Prop :=
  ∀ n, P4081608827541635534.a n = A246985 n

theorem P4081608827541635534.correct : P4081608827541635534.Spec := by
  intro n
  simp only [A246985]

end A246985

/-! ## A246985.P1586882531783441407

`2^(n-1)+3^(n-1)+6^(n-1)`
-/

namespace A246985.P1586882531783441407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + (6 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A246985.P1586882531783441407

namespace A246985

/-- `2^(n-1)+3^(n-1)+6^(n-1)` -/
def P1586882531783441407.Spec : Prop :=
  ∀ n, P1586882531783441407.a n = (A246985 n : ℚ)

end A246985

/-! ## A246985.P13331157991612318538

`floor(6*a(n-1)-A085279(n))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A246985.P13331157991612318538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  6 * a (n - 1) - A085279 n

end

end A246985.P13331157991612318538

namespace A246985

/-- `floor(6*a(n-1)-A085279(n))` -/
def P13331157991612318538.Spec : Prop :=
  ∀ n, P13331157991612318538.a n = A246985 n

end A246985

/-! ## A246985.P7449640911735908522

`gcd(2-A040000(n), A074528(A123108(2*n)-1))`
-/

namespace A246985.P7449640911735908522
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 - A040000 n) (A074528 (A123108 (2 * n) - 1).toNat)

end

end A246985.P7449640911735908522

namespace A246985

/-- `gcd(2-A040000(n), A074528(A123108(2*n)-1))` -/
def P7449640911735908522.Spec : Prop :=
  ∀ n, (P7449640911735908522.a n : ℤ) = A246985 n

end A246985

/-! ## A246985.P12706405934642269869

`A074528(A123108(2*n)-1)%A063481(n)`
-/

namespace A246985.P12706405934642269869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074528 (A123108 (2 * n) - 1).toNat) (A063481 n)

end

end A246985.P12706405934642269869

namespace A246985

/-- `A074528(A123108(2*n)-1)%A063481(n)` -/
def P12706405934642269869.Spec : Prop :=
  ∀ n, P12706405934642269869.a n = A246985 n

end A246985

/-!
# A246986: Expansion of (1-5*x+6*x^2-x^3)/((1-x)*(1-2*x)*(1-3*x)*(1-4*x)).

The programs for A246986, the canonical program `A246986.P6045769336926005443` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246986 has offset 0).

The definition of A246986 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-5x+6x^2-x^3)/(1-10x+35x^2-50x^3+24x^4))` (program `A246986.P6045769336926005443`, by `A246986.P6045769336926005443.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A246986.P6045769336926005443

`ogf((1-5x+6x^2-x^3)/(1-10x+35x^2-50x^3+24x^4))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A246986

/-- `ogf((1-5x+6x^2-x^3)/(1-10x+35x^2-50x^3+24x^4))` -/
def P6045769336926005443.Spec : Prop :=
  ∀ n, P6045769336926005443.a n = A246986 n

theorem P6045769336926005443.correct : P6045769336926005443.Spec := by
  intro n
  simp only [A246986]

end A246986

/-! ## A246986.P17031478233680039473

`(3^(n+1)+7*4^n-3*2^n-1)/6`
-/

namespace A246986.P17031478233680039473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ (n + 1) + 7 * 4 ^ n : ℤ) - (3 * 2 ^ n : ℤ) - 1 : ℚ) / 6

end

end A246986.P17031478233680039473

namespace A246986

/-- `(3^(n+1)+7*4^n-3*2^n-1)/6` -/
def P17031478233680039473.Spec : Prop :=
  ∀ n, P17031478233680039473.a n = (A246986 n : ℚ)

end A246986

/-! ## A246986.P9030300445119849648

`4*a(n-1)+1-(ceil(∑[3^(n-2)])-ceil(2^(n-1)))` with `a(0)=1`
-/

namespace A246986.P9030300445119849648
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * a (n - 1) + 1 - (⌈∑ j ∈ Finset.range (n + 1), f1 j⌉ - ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉)

end

end A246986.P9030300445119849648

namespace A246986

/-- `4*a(n-1)+1-(ceil(∑[3^(n-2)])-ceil(2^(n-1)))` -/
def P9030300445119849648.Spec : Prop :=
  ∀ n, P9030300445119849648.a n = A246986 n

end A246986

/-! ## A246986.P12148370749047394868

`A094375(n)+A081674(n)`
-/

namespace A246986.P12148370749047394868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094375 n + A081674 n

end

end A246986.P12148370749047394868

namespace A246986

/-- `A094375(n)+A081674(n)` -/
def P12148370749047394868.Spec : Prop :=
  ∀ n, P12148370749047394868.a n = A246986 n

end A246986

/-! ## A246986.P11030758470599346485

`A020989(n)-A053154(n)`
-/

namespace A246986.P11030758470599346485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020989 n - A053154 n

end

end A246986.P11030758470599346485

namespace A246986

/-- `A020989(n)-A053154(n)` -/
def P11030758470599346485.Spec : Prop :=
  ∀ n, P11030758470599346485.a n = A246986 n

end A246986

/-! ## A246986.P16117504811176992602

`A136412(n)-A134064(n)`
-/

namespace A246986.P16117504811176992602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136412 n - A134064 n

end

end A246986.P16117504811176992602

namespace A246986

/-- `A136412(n)-A134064(n)` -/
def P16117504811176992602.Spec : Prop :=
  ∀ n, P16117504811176992602.a n = A246986 n

end A246986

/-! ## A246986.P14654683074827236186

`∑[A000079(n)²]-A056473(2*(n+1))`
-/

namespace A246986.P14654683074827236186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A056473 (2 * (n + 1))

end

end A246986.P14654683074827236186

namespace A246986

/-- `∑[A000079(n)²]-A056473(2*(n+1))` -/
def P14654683074827236186.Spec : Prop :=
  ∀ n, P14654683074827236186.a n = A246986 n

end A246986

/-! ## A246986.P17785962174959362458

`∑[A000079(2*n)]-A056473(2*n+1)`
-/

namespace A246986.P17785962174959362458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A056473 (2 * n + 1)

end

end A246986.P17785962174959362458

namespace A246986

/-- `∑[A000079(2*n)]-A056473(2*n+1)` -/
def P17785962174959362458.Spec : Prop :=
  ∀ n, P17785962174959362458.a n = A246986 n

end A246986

/-! ## A246986.P3900309757425378682

`A003462(n)+A007583(n)+A006516(n)`
-/

namespace A246986.P3900309757425378682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n + (A007583 n + A006516 n)

end

end A246986.P3900309757425378682

namespace A246986

/-- `A003462(n)+A007583(n)+A006516(n)` -/
def P3900309757425378682.Spec : Prop :=
  ∀ n, P3900309757425378682.a n = A246986 n

end A246986

/-! ## A246986.P1804510952994501286

`A006095(n)+A155602(n)-A003462(n)`
-/

namespace A246986.P1804510952994501286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006095 n + (A155602 n - A003462 n)

end

end A246986.P1804510952994501286

namespace A246986

/-- `A006095(n)+A155602(n)-A003462(n)` -/
def P1804510952994501286.Spec : Prop :=
  ∀ n, P1804510952994501286.a n = A246986 n

end A246986

/-! ## A246986.P16193750992769268434

`A000079(n)²+A006095(n)+A003462(n)`
-/

namespace A246986.P16193750992769268434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 + (A006095 n + A003462 n)

end

end A246986.P16193750992769268434

namespace A246986

/-- `A000079(n)²+A006095(n)+A003462(n)` -/
def P16193750992769268434.Spec : Prop :=
  ∀ n, P16193750992769268434.a n = A246986 n

end A246986

/-! ## A246986.P8759262656484209128

`A000392(n+1)+A076024(n+1)+A006516(n)`
-/

namespace A246986.P8759262656484209128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000392 (n + 1) + (A076024 (n + 1) + A006516 n)

end

end A246986.P8759262656484209128

namespace A246986

/-- `A000392(n+1)+A076024(n+1)+A006516(n)` -/
def P8759262656484209128.Spec : Prop :=
  ∀ n, P8759262656484209128.a n = A246986 n

end A246986

/-! ## A246986.P3366165068688485102

`A007582(n+1)-(A056510(2*n+1)+A007581(n+1))`
-/

namespace A246986.P3366165068688485102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007582 (n + 1) - (A056510 (2 * n + 1) + A007581 (n + 1))

end

end A246986.P3366165068688485102

namespace A246986

/-- `A007582(n+1)-(A056510(2*n+1)+A007581(n+1))` -/
def P3366165068688485102.Spec : Prop :=
  ∀ n, P3366165068688485102.a n = A246986 n

end A246986

/-!
# A246987: Expansion of (1-11*x+34*x^2-21*x^3+2*x^4)/((1-x)*(1-2*x)*(1-4*x)*(1-5*x)*(1-6*x)).

The programs for A246987, there is no canonical definition to state claims against.
-/

/-! ## A246987.P10017428064981775103

`A248565(A053783(n+1))`
-/

namespace A246987.P10017428064981775103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248565 (A053783 (n + 1)).toNat

end

end A246987.P10017428064981775103

/-!
# A246988: Number of isomorphism classes of oriented matroids of dimension n and cardinality n+3.

The programs for A246988, there is no canonical definition to state claims against.
-/

/-! ## A246988.P10683675485898211454

`∑[A056342(n+4)-3]`
-/

namespace A246988.P10683675485898211454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056342 (n + 4) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246988.P10683675485898211454

/-! ## A246988.P14522197197193086777

`∑[A091696(n+4)-4]`
-/

namespace A246988.P14522197197193086777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091696 (n + 4) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246988.P14522197197193086777

/-! ## A246988.P10971979229548920759

`∑[A000029(n+4)-5]`
-/

namespace A246988.P10971979229548920759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000029 (n + 4) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246988.P10971979229548920759

/-!
# A246989: Number of isomorphism classes of oriented matroids of dimension n and cardinality n+4.

The programs for A246989, there is no canonical definition to state claims against.
-/

/-! ## A246989.P15574297827024947748

`A063804(A166136(n+1))`
-/

namespace A246989.P15574297827024947748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063804 (A166136 (n + 1)).toNat

end

end A246989.P15574297827024947748

/-!
# A246990: Number of abstract order types of configurations of n+3 points in n dimensions.

The programs for A246990, there is no canonical definition to state claims against.
-/

/-! ## A246990.P5729703065058961855

`A063853(∑[n+1]+5)`
-/

namespace A246990.P5729703065058961855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063853 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A246990.P5729703065058961855

/-! ## A246990.P5231998116637566274

`and(-1, A063853(A167499(n)))`
-/

namespace A246990.P5231998116637566274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A063853 (A167499 n).toNat)

end

end A246990.P5231998116637566274

/-!
# A246992: Number of abstract dissection types of configurations of n+3 hyperplanes in n dimensions.

The programs for A246992, there is no canonical definition to state claims against.
-/

/-! ## A246992.P18162786850916311514

`A063858(∑[n+1]+4)`
-/

namespace A246992.P18162786850916311514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063858 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A246992.P18162786850916311514

/-! ## A246992.P2484614601822762269

`∑[∑[A347793(A034738(n+1))]]`
-/

namespace A246992.P2484614601822762269
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347793 (A034738 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246992.P2484614601822762269

/-!
# A246995: Multiplicity of the zero at x=1 of the characteristic polynomial P_n^F.

The programs for A246995, there is no canonical definition to state claims against.
-/

/-! ## A246995.P14849084691669621129

`A254605(A254593(n+1))+A036497(n)`
-/

namespace A246995.P14849084691669621129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254605 (A254593 (n + 1)).toNat + A036497 n

end

end A246995.P14849084691669621129

/-! ## A246995.P1733599528949200190

`A272912(n+2)+A055999(A185284(3*n+4))`
-/

namespace A246995.P1733599528949200190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272912 (n + 2) + A055999 (A185284 (3 * n + 4)).toNat

end

end A246995.P1733599528949200190

/-!
# A246996: Multiplicity of the zero at x=1 of the characteristic polynomial P_n^{F+}.

The programs for A246996, there is no canonical definition to state claims against.
-/

/-! ## A246996.P7483298900352047742

`A281975(A056492(n+1))-A257628(n)`
-/

namespace A246996.P7483298900352047742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281975 (A056492 (n + 1)).toNat - A257628 n

end

end A246996.P7483298900352047742

/-! ## A246996.P7848898153398106252

`A341022(A332111(3*n+5)+A294860(n))`
-/

namespace A246996.P7848898153398106252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341022 ((A332111 (3 * n + 5) + A294860 n).toNat + 35)

end

end A246996.P7848898153398106252

/-!
# A246998: Multiplicity of the zero at x=1 of the characteristic polynomial P_n^{C0+}.

The programs for A246998, there is no canonical definition to state claims against.
-/

/-! ## A246998.P351810703487864820

`1+A032278(1+n)`
-/

namespace A246998.P351810703487864820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A032278 (1 + n)

end

end A246998.P351810703487864820

/-! ## A246998.P7235633997460666131

`A032277(n+1)+n%2`
-/

namespace A246998.P7235633997460666131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032277 (n + 1) + ((n % 2 : ℕ) : ℤ)

end

end A246998.P7235633997460666131

/-! ## A246998.P5935791857250207093

`A032277(n+1)+A000035(n)`
-/

namespace A246998.P5935791857250207093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032277 (n + 1) + A000035 n

end

end A246998.P5935791857250207093

/-! ## A246998.P2718440527261541383

`A372584(n)+A032277(n+1)`
-/

namespace A246998.P2718440527261541383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372584 n + A032277 (n + 1)

end

end A246998.P2718440527261541383

/-! ## A246998.P10861634015713492926

`A032277(n+1)+Δ[A004526(n)]`
-/

namespace A246998.P10861634015713492926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032277 (n + 1) + (f1 (n + 1) - f1 n)

end

end A246998.P10861634015713492926

