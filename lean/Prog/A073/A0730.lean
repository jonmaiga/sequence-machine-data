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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
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
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A073013: a(n) = (1/2) * Sum_{k=1..n} (n+k)!/(k!)^2.

The programs for A073013, there is no canonical definition to state claims against.
-/

/-! ## A073013.P18264572370455315933

`Δ[A209061(A240165(n))]`
-/

namespace A073013.P18264572370455315933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209061 (A240165 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073013.P18264572370455315933

/-!
# A073015: a(n) is such that 2 = sqrt(1+sqrt(1+sqrt(1+....sqrt(a(n))....))) where there are n sqrt's.

The programs for A073015, the canonical program `A073015.P3451859078218501772` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073015 has offset 0).

The definition of A073015 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A073015.P3451859078218501772

`(a(n-1)-1)²` with `a(0)=3`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A073015

/-- `(a(n-1)-1)²` -/
def P3451859078218501772.Spec : Prop :=
  ∀ n, P3451859078218501772.a n = A073015 n

theorem P3451859078218501772.correct : P3451859078218501772.Spec := by
  intro n
  simp only [A073015]

end A073015

/-! ## A073015.P14778361475769982308

`A003096(n)+1`
-/

namespace A073015.P14778361475769982308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003096 n + 1

end

end A073015.P14778361475769982308

namespace A073015

/-- `A003096(n)+1` -/
def P14778361475769982308.Spec : Prop :=
  ∀ n, P14778361475769982308.a n = A073015 n

end A073015

/-! ## A073015.P10674630003972788289

`(1-a(n-1))^2` with `a(0)=3`
-/

namespace A073015.P10674630003972788289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (1 - a (n - 1)) ^ 2

end

end A073015.P10674630003972788289

namespace A073015

/-- `(1-a(n-1))^2` -/
def P10674630003972788289.Spec : Prop :=
  ∀ n, P10674630003972788289.a n = A073015 n

theorem P10674630003972788289.correct : P10674630003972788289.Spec := by
  intro n
  simp only [A073015, Nat.add_sub_cancel, A073015.P10674630003972788289.a, A073015.P3451859078218501772.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A073015

/-! ## A073015.P4181163496470330561

`root(a(n-1)-1, 1/2)` with `a(0)=3`
-/

namespace A073015.P4181163496470330561
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [3] fun n a =>
  (a (n - 1) - 1) ^ (1 / ((1 : ℚ) / 2 : ℝ))

end

end A073015.P4181163496470330561

namespace A073015

/-- `root(a(n-1)-1, 1/2)` -/
def P4181163496470330561.Spec : Prop :=
  ∀ n, P4181163496470330561.a n = (A073015 n : ℝ)

end A073015

/-!
# A073016: Decimal expansion of Sum_{n>=1} 1/binomial(2n,n).

The programs for A073016, there is no canonical definition to state claims against.
-/

/-! ## A073016.P8466927241447603059

`A091682(n+1)`
-/

namespace A073016.P8466927241447603059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091682 (n + 1 + 1)

end

end A073016.P8466927241447603059

/-!
# A073019: Numbers n such that the absolute value of the real part of (1+2*I)^n is prime.

The programs for A073019, there is no canonical definition to state claims against.
-/

/-! ## A073019.P4558980040913605522

`A175787(gcd(∏[4*n+2]/2, A068189(n+1)))`
-/

namespace A073019.P4558980040913605522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (Int.gcd (SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2)) (A068189 (n + 1)))

end

end A073019.P4558980040913605522

/-! ## A073019.P8502788676632894474

`A175787(n+1)+A137745(A137748(n))`
-/

namespace A073019.P8502788676632894474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1) + A137745 (A137748 n).toNat

end

end A073019.P8502788676632894474

/-! ## A073019.P5646286157670662625

`A211781(n+1)+A137745(A137748(n))`
-/

namespace A073019.P5646286157670662625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211781 (n + 1) + A137745 (A137748 n).toNat

end

end A073019.P5646286157670662625

/-! ## A073019.P16637748517223227362

`A175787(n+1)+A045763(A078214(n+1))`
-/

namespace A073019.P16637748517223227362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1) + A045763 (A078214 (n + 1)).toNat

end

end A073019.P16637748517223227362

/-! ## A073019.P9646999286765504374

`A175787(C(A000010(n+1), A051224(n+1))²+n)`
-/

namespace A073019.P9646999286765504374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (Nat.choose (A000010 (n + 1)).toNat (A051224 (n + 1)).toNat ^ 2 + n)

end

end A073019.P9646999286765504374

/-!
# A073020: Triangle of T(n,m) = number of bracelets (necklaces than can be turned over) with m white beads and (2n-m) black ones, for 1<=m<=n.

The programs for A073020, there is no canonical definition to state claims against.
-/

/-! ## A073020.P9147710765154016801

`A052307(3*A127739(n+1)+n+1)`
-/

namespace A073020.P9147710765154016801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 (3 * A127739 (n + 1) + (n + 1 : ℤ)).toNat

end

end A073020.P9147710765154016801

/-! ## A073020.P18060501552377921333

`A052307(A185871(n+1)-A002260(n+1))`
-/

namespace A073020.P18060501552377921333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 (A185871 (n + 1) - A002260 (n + 1)).toNat

end

end A073020.P18060501552377921333

/-! ## A073020.P13818658658383992010

`A052307(lt[A334752(2*n+1), 2*n])`
-/

namespace A073020.P13818658658383992010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334752 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A073020.P13818658658383992010

/-! ## A073020.P12675369988440588582

`A188211(n+1)-A272322(A294761(n))`
-/

namespace A073020.P12675369988440588582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188211 (n + 1) - A272322 (A294761 n).toNat

end

end A073020.P12675369988440588582

/-! ## A073020.P16345988702394963442

`A005423(A002262(n)*A208101(n))`
-/

namespace A073020.P16345988702394963442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005423 (A002262 n * A208101 n).toNat

end

end A073020.P16345988702394963442

/-!
# A073022: Each term is the smallest prime > the sum of the previous 2 terms.

The programs for A073022, the canonical program `A073022.P10904957160869023436` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073022 has offset 0).

The definition of A073022 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073022.P10904957160869023436

`or(1, A055499(n))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A073022

/-- `or(1, A055499(n))` -/
def P10904957160869023436.Spec : Prop :=
  ∀ n, P10904957160869023436.a n = A073022 n

theorem P10904957160869023436.correct : P10904957160869023436.Spec := by
  intro n
  simp only [A073022]

end A073022

/-! ## A073022.P6660156720308101008

`A055498(1-char[1]+n)`
-/

namespace A073022.P6660156720308101008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055498 (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)).toNat

end

end A073022.P6660156720308101008

namespace A073022

/-- `A055498(1-char[1]+n)` -/
def P6660156720308101008.Spec : Prop :=
  ∀ n, P6660156720308101008.a n = A073022 n

end A073022

/-! ## A073022.P3532417747197684648

`or(1, A055498(n+1)-1)`
-/

namespace A073022.P3532417747197684648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A055498 (n + 1) - 1)

end

end A073022.P3532417747197684648

namespace A073022

/-- `or(1, A055498(n+1)-1)` -/
def P3532417747197684648.Spec : Prop :=
  ∀ n, P3532417747197684648.a n = A073022 n

end A073022

/-! ## A073022.P6949131931783526607

`A055499(round(sqrt(n²+1)))+char[2]`
-/

namespace A073022.P6949131931783526607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055499 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A073022.P6949131931783526607

namespace A073022

/-- `A055499(round(sqrt(n²+1)))+char[2]` -/
def P6949131931783526607.Spec : Prop :=
  ∀ n, P6949131931783526607.a n = A073022 n

end A073022

/-! ## A073022.P1462916254316178760

`or(1, A055498(A326178(n)))`
-/

namespace A073022.P1462916254316178760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A055498 (A326178 n).toNat)

end

end A073022.P1462916254316178760

namespace A073022

/-- `or(1, A055498(A326178(n)))` -/
def P1462916254316178760.Spec : Prop :=
  ∀ n, P1462916254316178760.a n = A073022 n

end A073022

/-! ## A073022.P15916384902125272313

`A154272(n+1)+A055499(n)`
-/

namespace A073022.P15916384902125272313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154272 (n + 1) + A055499 n

end

end A073022.P15916384902125272313

namespace A073022

/-- `A154272(n+1)+A055499(n)` -/
def P15916384902125272313.Spec : Prop :=
  ∀ n, P15916384902125272313.a n = A073022 n

end A073022

/-! ## A073022.P6569203890042654169

`gcd(A000045(C(2, n+1)), A055498(n+1))`
-/

namespace A073022.P6569203890042654169
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000045 (Nat.choose 2 (n + 1))) (A055498 (n + 1))

end

end A073022.P6569203890042654169

namespace A073022

/-- `gcd(A000045(C(2, n+1)), A055498(n+1))` -/
def P6569203890042654169.Spec : Prop :=
  ∀ n, (P6569203890042654169.a n : ℤ) = A073022 n

end A073022

/-! ## A073022.P96250794586130316

`A007918(2*n)+A055498(n+1)-A007918(2*n+1)`
-/

namespace A073022.P96250794586130316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (2 * n) + (A055498 (n + 1) - A007918 (2 * n + 1))

end

end A073022.P96250794586130316

namespace A073022

/-- `A007918(2*n)+A055498(n+1)-A007918(2*n+1)` -/
def P96250794586130316.Spec : Prop :=
  ∀ n, P96250794586130316.a n = A073022 n

end A073022

/-! ## A073022.P9590239933591684950

`A055498(n+1)/(A326178(2*n+1)-A326178(2*n))`
-/

namespace A073022.P9590239933591684950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055498 (n + 1) : ℚ) / (A326178 (2 * n + 1) - A326178 (2 * n) : ℚ)

end

end A073022.P9590239933591684950

namespace A073022

/-- `A055498(n+1)/(A326178(2*n+1)-A326178(2*n))` -/
def P9590239933591684950.Spec : Prop :=
  ∀ n, P9590239933591684950.a n = (A073022 n : ℚ)

end A073022

/-!
# A073023: Number of solutions to the equation n^x==1 (mod x), 1<=x<=n.

The programs for A073023, there is no canonical definition to state claims against.
-/

/-! ## A073023.P1394844677540954078

`A381800(A070939(floor(2^(n-1))))`
-/

namespace A073023.P1394844677540954078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381800 (A070939 ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat).toNat

end

end A073023.P1394844677540954078

/-! ## A073023.P1005775982419641502

`A381800(A381800(A000010(A000079(n))))`
-/

namespace A073023.P1005775982419641502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381800 (A381800 (A000010 (A000079 n).toNat).toNat).toNat

end

end A073023.P1005775982419641502

/-! ## A073023.P6392746731649556609

`A109951(lt[A288416(3*(n+1)), A250120(n)])`
-/

namespace A073023.P6392746731649556609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288416 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109951 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A073023.P6392746731649556609

/-! ## A073023.P8099089466246350434

`floor(A048972(n+1)/∏{e}[n+1, #+1])`
-/

namespace A073023.P8099089466246350434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A048972 (n + 1) : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ)⌋

end

end A073023.P8099089466246350434

/-! ## A073023.P13734829919512118689

`floor(A048972(n+1)/A179941(n+1))`
-/

namespace A073023.P13734829919512118689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A048972 (n + 1) : ℚ) / (A179941 (n + 1) : ℚ)⌋

end

end A073023.P13734829919512118689

/-!
# A073024: Primes p such that p-1 has a prime factor q > p^(2/3).

The programs for A073024, there is no canonical definition to state claims against.
-/

/-! ## A073024.P11862285511187541523

`p?[A063764(n+1)+1]`
-/

namespace A073024.P11862285511187541523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063764 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A073024.P11862285511187541523

/-! ## A073024.P2437484700958033624

`record[A006530(A063764(n+1)+1)]`
-/

namespace A073024.P2437484700958033624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A063764 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073024.P2437484700958033624

/-! ## A073024.P16880025070027311087

`record[A020639(A063764(n+1)+1)]`
-/

namespace A073024.P16880025070027311087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A063764 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073024.P16880025070027311087

/-! ## A073024.P668438694817370322

`∩[A000040(n+1), A063764(n+1)+1]`
-/

namespace A073024.P668438694817370322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063764 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073024.P668438694817370322

/-! ## A073024.P12061950282228839198

`record[A166333(A063764(n+1))]`
-/

namespace A073024.P12061950282228839198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 (A063764 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073024.P12061950282228839198

/-! ## A073024.P3378710502995344798

`p?[or(1, A063764(A008619(2*n)))]`
-/

namespace A073024.P3378710502995344798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A063764 (A008619 (2 * n)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A073024.P3378710502995344798

/-! ## A073024.P11839802174584682555

`record[A014963(A063764(n+1)+1)]`
-/

namespace A073024.P11839802174584682555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A063764 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073024.P11839802174584682555

/-!
# A073025: Primes p such that p-1 has a prime factor q > p^(3/4).

The programs for A073025, there is no canonical definition to state claims against.
-/

/-! ## A073025.P17699039357940945672

`∪[A073026(n+1), A005385(n+4)]`
-/

namespace A073025.P17699039357940945672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A073025.P17699039357940945672

/-! ## A073025.P6296222684635562861

`p?[A171156(n+2)+1]`
-/

namespace A073025.P6296222684635562861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171156 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A073025.P6296222684635562861

/-! ## A073025.P18030555362252535567

`p?[A162409(n+3)+1]`
-/

namespace A073025.P18030555362252535567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162409 (n + 3) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A073025.P18030555362252535567

/-! ## A073025.P675432295477194663

`A359387(A043315(n+2))`
-/

namespace A073025.P675432295477194663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359387 (A043315 (n + 2)).toNat

end

end A073025.P675432295477194663

/-! ## A073025.P11563872654666985593

`A359387(A044912(n+2))`
-/

namespace A073025.P11563872654666985593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359387 (A044912 (n + 2)).toNat

end

end A073025.P11563872654666985593

/-!
# A073026: Primes p such that p-1 has a prime factor q with (p-1)/2 > q > p^(3/4).

The programs for A073026, there is no canonical definition to state claims against.
-/

/-! ## A073026.P2938097330118010599

`∩[A073025(n+1), A099184(n+2)]`
-/

namespace A073026.P2938097330118010599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099184 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073026.P2938097330118010599

/-! ## A073026.P12375084406069275820

`∩[A059456(n+1), A073025(n+1)]`
-/

namespace A073026.P12375084406069275820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073026.P12375084406069275820

/-! ## A073026.P4440267720132539131

`∩[A073025(n+1), A339912(n+1)]`
-/

namespace A073026.P4440267720132539131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073026.P4440267720132539131

/-! ## A073026.P17556623706493370196

`∩[A073025(n+1), A176462(n+1)]`
-/

namespace A073026.P17556623706493370196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073026.P17556623706493370196

/-! ## A073026.P10522436717463546695

`p?[4*A214296(n+4)+1]`
-/

namespace A073026.P10522436717463546695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A214296 (n + 4) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A073026.P10522436717463546695

/-!
# A073027: Square array of decimal expansions of sqrt(n) (n>=1) read by antidiagonals.

The programs for A073027, there is no canonical definition to state claims against.
-/

/-! ## A073027.P13822949663147783863

`A206396(A240760(n+4))%A095666(n)`
-/

namespace A073027.P13822949663147783863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206396 (A240760 (n + 4)).toNat) (A095666 n)

end

end A073027.P13822949663147783863

/-!
# A073028: a(n) = max{ C(n,0), C(n-1,1), C(n-2,2), ..., C(n-n,n) }.

The programs for A073028, the canonical program `A073028.P3432969580091455249` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073028 has offset 0).

The definition of A073028 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A073028.P3432969580091455249

`C(n-A060065(n), A060065(n))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A073028

/-- `C(n-A060065(n), A060065(n))` -/
def P3432969580091455249.Spec : Prop :=
  ∀ n, (P3432969580091455249.a n : ℤ) = A073028 n

theorem P3432969580091455249.correct : P3432969580091455249.Spec := by
  intro n
  simp only [A073028]

end A073028

/-! ## A073028.P9671910690556072798

`A028310(C(A049472(n+1), A183138(n+1)))`
-/

namespace A073028.P9671910690556072798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Nat.choose (A049472 (n + 1)).toNat (A183138 (n + 1)).toNat)

end

end A073028.P9671910690556072798

namespace A073028

/-- `A028310(C(A049472(n+1), A183138(n+1)))` -/
def P9671910690556072798.Spec : Prop :=
  ∀ n, P9671910690556072798.a n = A073028 n

end A073028

/-! ## A073028.P7662486527881083103

`A028310(C(n-A183138(n+1), A183138(n+1)))`
-/

namespace A073028.P7662486527881083103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Nat.choose ((n : ℤ) - A183138 (n + 1)).toNat (A183138 (n + 1)).toNat)

end

end A073028.P7662486527881083103

namespace A073028

/-- `A028310(C(n-A183138(n+1), A183138(n+1)))` -/
def P7662486527881083103.Spec : Prop :=
  ∀ n, P7662486527881083103.a n = A073028 n

end A073028

/-! ## A073028.P8382439676719937559

`A277315(round(2^(n+1)/3))`
-/

namespace A073028.P8382439676719937559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277315 (SequenceMachineLib.roundAway ((2 ^ (n + 1) : ℚ) / 3)).toNat

end

end A073028.P8382439676719937559

namespace A073028

/-- `A277315(round(2^(n+1)/3))` -/
def P8382439676719937559.Spec : Prop :=
  ∀ n, P8382439676719937559.a n = A073028 n

end A073028

/-! ## A073028.P462301239217912640

`A362142(∑[n]+2)`
-/

namespace A073028.P462301239217912640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362142 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A073028.P462301239217912640

namespace A073028

/-- `A362142(∑[n]+2)` -/
def P462301239217912640.Spec : Prop :=
  ∀ n, P462301239217912640.a n = A073028 n

end A073028

/-!
# A073030: Sum_{k=1..n, gcd(n,k) = 1} 10^(k-1).

The programs for A073030, there is no canonical definition to state claims against.
-/

/-! ## A073030.P859618928608383487

`A007088(A054432(n+2))`
-/

namespace A073030.P859618928608383487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A054432 (n + 2)).toNat

end

end A073030.P859618928608383487

/-! ## A073030.P14264396649822520348

`A007088(record[A054432(A344180(n))])`
-/

namespace A073030.P14264396649822520348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054432 (A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A073030.P14264396649822520348

/-! ## A073030.P11243629365358948997

`A185544(2*A054432(n+2))`
-/

namespace A073030.P11243629365358948997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A054432 (n + 2)).toNat

end

end A073030.P11243629365358948997

/-! ## A073030.P2573345355482861406

`A185544(lcm(2, A054432(n+2)))`
-/

namespace A073030.P2573345355482861406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A054432 (n + 2)))

end

end A073030.P2573345355482861406

/-!
# A073031: Number of ways of making change for n cents using coins of sizes 1, 2, 5, 10 cents, when order matters.

The programs for A073031, the canonical program `A073031.P1110477064748068677` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073031 has offset 0).

The definition of A073031 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A073031.P1110477064748068677

`a(n-1)+a(n-2)+a(n-5)+a(n-10)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=5, a(5)=9, a(6)=15, a(7)=26, a(8)=44, a(9)=75`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A073031

/-- `a(n-1)+a(n-2)+a(n-5)+a(n-10)` -/
def P1110477064748068677.Spec : Prop :=
  ∀ n, (P1110477064748068677.a n : ℤ) = A073031 n

theorem P1110477064748068677.correct : P1110477064748068677.Spec := by
  intro n
  simp only [A073031]

end A073031

/-! ## A073031.P101533026333186494

`A114138(n)-A023443(A184945(n)!)`
-/

namespace A073031.P101533026333186494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114138 n - A023443 (Nat.factorial (A184945 n).toNat)

end

end A073031.P101533026333186494

namespace A073031

/-- `A114138(n)-A023443(A184945(n)!)` -/
def P101533026333186494.Spec : Prop :=
  ∀ n, P101533026333186494.a n = A073031 n

end A073031

/-! ## A073031.P13972109229396257410

`A114138(n)-A340499(A184945(n)!)`
-/

namespace A073031.P13972109229396257410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114138 n - A340499 (Nat.factorial (A184945 n).toNat)

end

end A073031.P13972109229396257410

namespace A073031

/-- `A114138(n)-A340499(A184945(n)!)` -/
def P13972109229396257410.Spec : Prop :=
  ∀ n, P13972109229396257410.a n = A073031 n

end A073031

/-! ## A073031.P17406700274666122767

`A114138(n)-A185284(A026239(n+1))`
-/

namespace A073031.P17406700274666122767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114138 n - A185284 (A026239 (n + 1)).toNat

end

end A073031.P17406700274666122767

namespace A073031

/-- `A114138(n)-A185284(A026239(n+1))` -/
def P17406700274666122767.Spec : Prop :=
  ∀ n, P17406700274666122767.a n = A073031 n

end A073031

/-!
# A073034: Take A000040, omit commas: 23571113171923..., select 1-digit primes.

The programs for A073034, there is no canonical definition to state claims against.
-/

/-! ## A073034.P6407570227345873134

`p?[A033308(n)]`
-/

namespace A073034.P6407570227345873134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033308 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A073034.P6407570227345873134

/-! ## A073034.P9176073346884011836

`p?[9-A154730(n)]`
-/

namespace A073034.P9176073346884011836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A154730 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A073034.P9176073346884011836

/-! ## A073034.P5904331152084904226

`p?[Δ[A067112(n)]]`
-/

namespace A073034.P5904331152084904226
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067112 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A073034.P5904331152084904226

/-! ## A073034.P8248395882273371703

`p?[A067112(n+1)-A067112(n)]`
-/

namespace A073034.P8248395882273371703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067112 (n + 1) - A067112 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A073034.P8248395882273371703

/-!
# A073038: Take A000040, omit commas: 23571113171923..., select 5-digit primes seen when scanning from left.

The programs for A073038, there is no canonical definition to state claims against.
-/

/-! ## A073038.P16083957420194340893

`p?[A304652(n+1)]`
-/

namespace A073038.P16083957420194340893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A073038.P16083957420194340893

/-! ## A073038.P984088107289152079

`filter[A304652(n+1), A010051(#)]`
-/

namespace A073038.P984088107289152079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A073038.P984088107289152079

/-!
# A073039: First multiple of n in A025487.

The programs for A073039, the canonical program `A073039.P4565283137765165084` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073039 has offset 1).

The definition of A073039 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 250 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073039.P4565283137765165084

`lcm(n+1, a(A064989(n+1)-1))` with `a(0)=1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A073039

/-- `lcm(n+1, a(A064989(n+1)-1))` -/
def P4565283137765165084.Spec : Prop :=
  ∀ n, (P4565283137765165084.a n : ℤ) = A073039 (n + 1)

theorem P4565283137765165084.correct : P4565283137765165084.Spec := by
  intro n
  simp only [A073039, Nat.add_sub_cancel]

end A073039

/-! ## A073039.P10137960788260131098

`gcd(A108951(n+1), A108951(A304180(n+1)))`
-/

namespace A073039.P10137960788260131098
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A108951 (n + 1)) (A108951 (A304180 (n + 1)).toNat)

end

end A073039.P10137960788260131098

namespace A073039

/-- `gcd(A108951(n+1), A108951(A304180(n+1)))` -/
def P10137960788260131098.Spec : Prop :=
  ∀ n, (P10137960788260131098.a n : ℤ) = A073039 (n + 1)

end A073039

/-! ## A073039.P13169812192210879490

`lcm(n+1, A335049(A053585(n+1)))`
-/

namespace A073039.P13169812192210879490
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A335049 (A053585 (n + 1)).toNat)

end

end A073039.P13169812192210879490

namespace A073039

/-- `lcm(n+1, A335049(A053585(n+1)))` -/
def P13169812192210879490.Spec : Prop :=
  ∀ n, (P13169812192210879490.a n : ℤ) = A073039 (n + 1)

end A073039

/-! ## A073039.P15778412694484921724

`A108951(gcd(A217434(n+1), A335049(n+1)))`
-/

namespace A073039.P15778412694484921724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (Int.gcd (A217434 (n + 1)) (A335049 (n + 1)))

end

end A073039.P15778412694484921724

namespace A073039

/-- `A108951(gcd(A217434(n+1), A335049(n+1)))` -/
def P15778412694484921724.Spec : Prop :=
  ∀ n, P15778412694484921724.a n = A073039 (n + 1)

end A073039

/-! ## A073039.P11413973051817844893

`lcm(A000027(n+1), A335049(A323129(n+1)))`
-/

namespace A073039.P11413973051817844893
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000027 (n + 1)) (A335049 (A323129 (n + 1)).toNat)

end

end A073039.P11413973051817844893

namespace A073039

/-- `lcm(A000027(n+1), A335049(A323129(n+1)))` -/
def P11413973051817844893.Spec : Prop :=
  ∀ n, (P11413973051817844893.a n : ℤ) = A073039 (n + 1)

end A073039

/-!
# A073040: Numbers n such that sum of proper divisors of n is a square.

The programs for A073040, there is no canonical definition to state claims against.
-/

/-! ## A073040.P16348933501774111682

`∪[A000040(n+1), A048699(n+1)]`
-/

namespace A073040.P16348933501774111682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048699 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A073040.P16348933501774111682

/-! ## A073040.P16136682180429706153

`∪[A008578(n+1), A048699(n+1)]`
-/

namespace A073040.P16136682180429706153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048699 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A073040.P16136682180429706153

/-! ## A073040.P14137697551399715990

`record[(n+1)/A191521(A000203(n+1)-(n+1))]`
-/

namespace A073040.P14137697551399715990
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A191521 (A000203 (n + 1) - (n + 1 : ℤ)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073040.P14137697551399715990

/-! ## A073040.P5922989509288846834

`record[(n+1)/A249307(A000203(n+1)-(n+1))]`
-/

namespace A073040.P5922989509288846834
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A249307 (A000203 (n + 1) - (n + 1 : ℤ)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073040.P5922989509288846834

/-! ## A073040.P10383700793886849772

`eq[1, A084600(A001065(n+1))]+1`
-/

namespace A073040.P10383700793886849772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084600 (A001065 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A073040.P10383700793886849772

/-! ## A073040.P7629309387980371783

`record[A000027(n+1)/A084600(A001065(n+1))]`
-/

namespace A073040.P7629309387980371783
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A084600 (A001065 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073040.P7629309387980371783

/-! ## A073040.P12586141199478046868

`record[(n+1)*A010052(A000203(n+1)-(n+1))]`
-/

namespace A073040.P12586141199478046868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A010052 (A000203 (n + 1) - (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073040.P12586141199478046868

/-!
# A073042: Numbers of the form 10^s*t^2 or 10^s*t^3, s,t >= 0.

The programs for A073042, there is no canonical definition to state claims against.
-/

/-! ## A073042.P16591617259406131210

`eq[A118553(n+1), A184257(n+1)]`
-/

namespace A073042.P16591617259406131210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118553 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184257 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A073042.P16591617259406131210

/-!
# A073043: Number of nonisomorphic (finite) groups with n conjugacy classes.

The programs for A073043, there is no canonical definition to state claims against.
-/

/-! ## A073043.P12061814102260119345

`A003061(n+1)+A000688(n+1)`
-/

namespace A073043.P12061814102260119345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003061 (n + 1) + A000688 (n + 1)

end

end A073043.P12061814102260119345

/-! ## A073043.P14893936109002207665

`A008479(n+1)+A003061(n+1)`
-/

namespace A073043.P14893936109002207665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008479 (n + 1) + A003061 (n + 1)

end

end A073043.P14893936109002207665

/-! ## A073043.P8536787058370887677

`A131818(A003557(n+1))+A003061(n+1)`
-/

namespace A073043.P8536787058370887677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (A003557 (n + 1)).toNat + A003061 (n + 1)

end

end A073043.P8536787058370887677

/-! ## A073043.P3883238069808485984

`A376958(A157754(n+1))+A003061(n+1)`
-/

namespace A073043.P3883238069808485984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376958 (A157754 (n + 1)).toNat + A003061 (n + 1)

end

end A073043.P3883238069808485984

/-! ## A073043.P7668834262086770546

`A003061(n+1)+A066060(n+1)-A088806(n+1)`
-/

namespace A073043.P7668834262086770546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003061 (n + 1) + (A066060 (n + 1) - A088806 (n + 1))

end

end A073043.P7668834262086770546

/-!
# A073044: Triangle read by rows: T(n,k) (n >= 1, n-1 >= k >= 0) = number of n-sequences of 0's and 1's with no pair of adjacent 0's and exactly k pairs of adjacent 1's.

The programs for A073044, the canonical program `A073044.P10684047990476463728` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073044 has offset 1).

The definition of A073044 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073044.P10684047990476463728

`A153764(n)+A046854(n)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A073044

/-- `A153764(n)+A046854(n)` -/
def P10684047990476463728.Spec : Prop :=
  ∀ n, P10684047990476463728.a n = A073044 (n + 1)

theorem P10684047990476463728.correct : P10684047990476463728.Spec := by
  intro n
  simp only [A073044, Nat.add_sub_cancel]

end A073044

/-! ## A073044.P9322961300956922503

`A153764(n)+abs(A066170(n))`
-/

namespace A073044.P9322961300956922503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153764 n + |A066170 n|

end

end A073044.P9322961300956922503

namespace A073044

/-- `A153764(n)+abs(A066170(n))` -/
def P9322961300956922503.Spec : Prop :=
  ∀ n, P9322961300956922503.a n = A073044 (n + 1)

end A073044

/-! ## A073044.P3840360788748504405

`A153764(n)+abs(A130777(n))`
-/

namespace A073044.P3840360788748504405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153764 n + |A130777 n|

end

end A073044.P3840360788748504405

namespace A073044

/-- `A153764(n)+abs(A130777(n))` -/
def P3840360788748504405.Spec : Prop :=
  ∀ n, P3840360788748504405.a n = A073044 (n + 1)

end A073044

/-! ## A073044.P17793428503232446038

`ceil(A153764(n)+A131270(n)/2)`
-/

namespace A073044.P17793428503232446038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A153764 n : ℚ) + (A131270 n : ℚ) / 2⌉

end

end A073044.P17793428503232446038

namespace A073044

/-- `ceil(A153764(n)+A131270(n)/2)` -/
def P17793428503232446038.Spec : Prop :=
  ∀ n, P17793428503232446038.a n = A073044 (n + 1)

end A073044

/-! ## A073044.P14146016539583937857

`A153764(n)+ceil(A131301(n)/3)`
-/

namespace A073044.P14146016539583937857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153764 n + ⌈(A131301 n : ℚ) / 3⌉

end

end A073044.P14146016539583937857

namespace A073044

/-- `A153764(n)+ceil(A131301(n)/3)` -/
def P14146016539583937857.Spec : Prop :=
  ∀ n, P14146016539583937857.a n = A073044 (n + 1)

end A073044

/-! ## A073044.P5918893493905498534

`A103631(A061579(n))+A046854(n)`
-/

namespace A073044.P5918893493905498534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103631 (A061579 n).toNat + A046854 n

end

end A073044.P5918893493905498534

namespace A073044

/-- `A103631(A061579(n))+A046854(n)` -/
def P5918893493905498534.Spec : Prop :=
  ∀ n, P5918893493905498534.a n = A073044 (n + 1)

end A073044

/-! ## A073044.P2112940757143583934

`A153764(n)+A065941(A061579(n))`
-/

namespace A073044.P2112940757143583934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153764 n + A065941 (A061579 n).toNat

end

end A073044.P2112940757143583934

namespace A073044

/-- `A153764(n)+A065941(A061579(n))` -/
def P2112940757143583934.Spec : Prop :=
  ∀ n, P2112940757143583934.a n = A073044 (n + 1)

end A073044

/-! ## A073044.P11917016077641051281

`A153764(A007401(n+1))+A153764(n)`
-/

namespace A073044.P11917016077641051281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153764 (A007401 (n + 1)).toNat + A153764 n

end

end A073044.P11917016077641051281

namespace A073044

/-- `A153764(A007401(n+1))+A153764(n)` -/
def P11917016077641051281.Spec : Prop :=
  ∀ n, P11917016077641051281.a n = A073044 (n + 1)

end A073044

/-! ## A073044.P15473378709346704036

`ceil(A153764(n)+A131240(n)/2)`
-/

namespace A073044.P15473378709346704036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A153764 n : ℚ) + (A131240 n : ℚ) / 2⌉

end

end A073044.P15473378709346704036

namespace A073044

/-- `ceil(A153764(n)+A131240(n)/2)` -/
def P15473378709346704036.Spec : Prop :=
  ∀ n, P15473378709346704036.a n = A073044 (n + 1)

end A073044

/-! ## A073044.P2204820498585146523

`A153764(n)+abs(A267482(n))`
-/

namespace A073044.P2204820498585146523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153764 n + |A267482 n|

end

end A073044.P2204820498585146523

namespace A073044

/-- `A153764(n)+abs(A267482(n))` -/
def P2204820498585146523.Spec : Prop :=
  ∀ n, P2204820498585146523.a n = A073044 (n + 1)

end A073044

/-! ## A073044.P14039352522149066836

`A153764(n)+A065033(A131270(n))`
-/

namespace A073044.P14039352522149066836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153764 n + A065033 (A131270 n).toNat

end

end A073044.P14039352522149066836

namespace A073044

/-- `A153764(n)+A065033(A131270(n))` -/
def P14039352522149066836.Spec : Prop :=
  ∀ n, P14039352522149066836.a n = A073044 (n + 1)

end A073044

/-!
# A073045: Nonprime solutions to sopfr(n) = S(n), where sopfr(n) = A001414 and S(n) = A002034.

The programs for A073045, there is no canonical definition to state claims against.
-/

/-! ## A073045.P10408227139217437796

`∩[A057109(n+1), A074583(n+1)]`
-/

namespace A073045.P10408227139217437796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074583 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073045.P10408227139217437796

/-! ## A073045.P3260648643830670810

`∩[A069189(n+1), A074583(n+1)]`
-/

namespace A073045.P3260648643830670810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069189 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074583 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073045.P3260648643830670810

/-! ## A073045.P2257247221478208004

`∩[A070003(n+1), A074583(n+1)]`
-/

namespace A073045.P2257247221478208004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074583 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073045.P2257247221478208004

/-! ## A073045.P9967564162353084608

`∩[A072777(n+1), A074583(n+1)]`
-/

namespace A073045.P9967564162353084608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074583 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073045.P9967564162353084608

/-! ## A073045.P6054034288744414750

`∩[A073540(n+1), A074583(n+1)]`
-/

namespace A073045.P6054034288744414750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074583 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073045.P6054034288744414750

/-! ## A073045.P8111706691583548519

`∩[A074583(n+1), A080062(n+1)]`
-/

namespace A073045.P8111706691583548519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073045.P8111706691583548519

/-! ## A073045.P18282916823296416962

`∩[A074583(n+1), A080366(n+1)]`
-/

namespace A073045.P18282916823296416962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080366 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073045.P18282916823296416962

/-! ## A073045.P11582612639758577574

`∩[A074583(n+1), A086132(n+1)]`
-/

namespace A073045.P11582612639758577574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086132 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073045.P11582612639758577574

/-! ## A073045.P1125570548677807272

`∩[A074583(n+1), A088949(n+1)]`
-/

namespace A073045.P1125570548677807272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073045.P1125570548677807272

/-! ## A073045.P4869717936306914548

`∩[A074583(n+1), A122145(n+1)]`
-/

namespace A073045.P4869717936306914548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073045.P4869717936306914548

/-!
# A073046: Write 2*n = p + q (p, q prime), p*q minimal; then a(n) = p*q.

The programs for A073046, there is no canonical definition to state claims against.
-/

/-! ## A073046.P11657897213160038271

`(n+2)²-A047949(n+2)²`
-/

namespace A073046.P11657897213160038271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - A047949 (n + 2) ^ 2

end

end A073046.P11657897213160038271

/-! ## A073046.P11178064058172187073

`A085090(n+1)+A084372(n+2)`
-/

namespace A073046.P11178064058172187073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085090 (n + 1) + A084372 (n + 2)

end

end A073046.P11178064058172187073

/-! ## A073046.P6626527580593523604

`A020481(n+2)*A020482(n+2)`
-/

namespace A073046.P6626527580593523604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020481 (n + 2) * A020482 (n + 2)

end

end A073046.P6626527580593523604

/-! ## A073046.P3238494767814386961

`A020482(n+2)*A112823(n-A047949(n+2)+2)`
-/

namespace A073046.P3238494767814386961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020482 (n + 2) * A112823 ((n : ℤ) - A047949 (n + 2) + 2).toNat

end

end A073046.P3238494767814386961

/-! ## A073046.P104765743508777459

`(A112823(n+2)-A112824(n+2))*A020482(n+2)`
-/

namespace A073046.P104765743508777459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A112823 (n + 2) - A112824 (n + 2)) * A020482 (n + 2)

end

end A073046.P104765743508777459

/-! ## A073046.P6528931038614167675

`A137516(n+2)+2*(n+2)`
-/

namespace A073046.P6528931038614167675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137516 (n + 2) + (2 * (n + 2) : ℤ)

end

end A073046.P6528931038614167675

/-! ## A073046.P12200539847312101008

`(A303603(n+2)+A020481(n+2))*A020481(n+2)`
-/

namespace A073046.P12200539847312101008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A303603 (n + 2) + A020481 (n + 2)) * A020481 (n + 2)

end

end A073046.P12200539847312101008

/-! ## A073046.P7637937894440311964

`(n+2)²-A002620(A303603(n+2))`
-/

namespace A073046.P7637937894440311964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - A002620 (A303603 (n + 2)).toNat

end

end A073046.P7637937894440311964

/-! ## A073046.P13341484120449630869

`A020482(n+2)*A210957(2*(n+1))`
-/

namespace A073046.P13341484120449630869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020482 (n + 2) * A210957 (2 * (n + 1))

end

end A073046.P13341484120449630869

/-! ## A073046.P17876277272595436011

`A020481(n+2)*A210957(2*n+3)`
-/

namespace A073046.P17876277272595436011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020481 (n + 2) * A210957 (2 * n + 3)

end

end A073046.P17876277272595436011

/-! ## A073046.P14806768100432226464

`A210957(2*(n+1))*A210957(2*n+3)`
-/

namespace A073046.P14806768100432226464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210957 (2 * (n + 1)) * A210957 (2 * n + 3)

end

end A073046.P14806768100432226464

/-! ## A073046.P12781737721875836177

`A350455(A045919(n+1)+2)`
-/

namespace A073046.P12781737721875836177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350455 (A045919 (n + 1) + 2).toNat

end

end A073046.P12781737721875836177

/-! ## A073046.P14102280555241542801

`A363091(A084372(n+2))`
-/

namespace A073046.P14102280555241542801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363091 (A084372 (n + 2)).toNat

end

end A073046.P14102280555241542801

/-!
# A073047: Least k such that x(k)=0 where x(1)=n and x(k)=k*floor(x(k-1)/k).

The programs for A073047, there is no canonical definition to state claims against.
-/

/-! ## A073047.P12352177588741138085

`∑[char[A007952(n)]]+1`
-/

namespace A073047.P12352177588741138085
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007952 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A073047.P12352177588741138085

/-! ## A073047.P512324373963120842

`∑[char[∑[A028913(n)]]]+2`
-/

namespace A073047.P512324373963120842
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028913 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A073047.P512324373963120842

/-! ## A073047.P17619203949534252972

`A020725(∑[char[A007952(n)]])`
-/

namespace A073047.P17619203949534252972
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007952 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A073047.P17619203949534252972

/-! ## A073047.P17686632824233476565

`A082447(n+1)+A001221(A000040(n+1))`
-/

namespace A073047.P17686632824233476565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082447 (n + 1) + A001221 (A000040 (n + 1)).toNat

end

end A073047.P17686632824233476565

/-! ## A073047.P6721665342352601556

`A082447(n+1)+A065331(A268354(2*n+1))`
-/

namespace A073047.P6721665342352601556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082447 (n + 1) + A065331 (A268354 (2 * n + 1)).toNat

end

end A073047.P6721665342352601556

/-! ## A073047.P4886660921418519167

`A082447(A130747(2*n+1))+1`
-/

namespace A073047.P4886660921418519167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082447 (A130747 (2 * n + 1)).toNat + 1

end

end A073047.P4886660921418519167

/-! ## A073047.P17766394123271364685

`A082447(n+1)+A028920(2*n)`
-/

namespace A073047.P17766394123271364685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082447 (n + 1) + A028920 (2 * n)

end

end A073047.P17766394123271364685

/-! ## A073047.P9351655999689100040

`A364448(2*n+1)+A082447(n+1)`
-/

namespace A073047.P9351655999689100040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364448 (2 * n + 1) + A082447 (n + 1)

end

end A073047.P9351655999689100040

/-! ## A073047.P5598845570277829051

`A111864(A120007(2*(n+1)))+A082447(n+1)`
-/

namespace A073047.P5598845570277829051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111864 (A120007 (2 * (n + 1))).toNat + A082447 (n + 1)

end

end A073047.P5598845570277829051

/-! ## A073047.P9047089575655138695

`A033677(A082447(n+1)²)+1`
-/

namespace A073047.P9047089575655138695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A082447 (n + 1) ^ 2).toNat + 1

end

end A073047.P9047089575655138695

/-! ## A073047.P8298147515142260628

`A033677((A082447(n+1)+1)*A082447(n+1))`
-/

namespace A073047.P8298147515142260628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 ((A082447 (n + 1) + 1) * A082447 (n + 1)).toNat

end

end A073047.P8298147515142260628

/-! ## A073047.P10251523643659500190

`A239140(A112774(n+1)-2)+A082447(n+1)`
-/

namespace A073047.P10251523643659500190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239140 (A112774 (n + 1) - 2).toNat + A082447 (n + 1)

end

end A073047.P10251523643659500190

/-! ## A073047.P152556845704763866

`A239140(A112774(n+1))+A082447(n+1)`
-/

namespace A073047.P152556845704763866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239140 (A112774 (n + 1)).toNat + A082447 (n + 1)

end

end A073047.P152556845704763866

/-! ## A073047.P14490761348747817496

`∑[A130779(A130747(n+1)²)]+1`
-/

namespace A073047.P14490761348747817496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130779 (A130747 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A073047.P14490761348747817496

/-! ## A073047.P14891333386704346506

`A130747(A002491(n+1))+A082447(n+1)`
-/

namespace A073047.P14891333386704346506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130747 (A002491 (n + 1)).toNat + A082447 (n + 1)

end

end A073047.P14891333386704346506

/-! ## A073047.P8791454444991404863

`A082447(n+1)+A028920(A007952(n))-n`
-/

namespace A073047.P8791454444991404863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082447 (n + 1) + (A028920 (A007952 n).toNat - (n : ℤ))

end

end A073047.P8791454444991404863

/-! ## A073047.P16218556493008959067

`A000005(2^∑[char[A007952(n)]])`
-/

namespace A073047.P16218556493008959067
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007952 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 ^ (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A073047.P16218556493008959067

/-!
# A073050: a(n) = prime(2^n + 2) - prime(2^n + 1) - 1.

The programs for A073050, there is no canonical definition to state claims against.
-/

/-! ## A073050.P655086391698039829

`A001223(∑[2^n]+2)-1`
-/

namespace A073050.P655086391698039829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (∑ j ∈ Finset.range (n + 1), f1 j + 2) - 1

end

end A073050.P655086391698039829

/-! ## A073050.P12797786684006643620

`abs(1-A001223(2^(n+1)+1))`
-/

namespace A073050.P12797786684006643620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A001223 (2 ^ (n + 1) + 1)|

end

end A073050.P12797786684006643620

/-! ## A073050.P7562031181277262368

`abs(A001223(A048578(n))-1)`
-/

namespace A073050.P7562031181277262368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001223 (A048578 n).toNat - 1|

end

end A073050.P7562031181277262368

/-! ## A073050.P12825399944290176242

`A014681(A001223(2^(n+1)+1))`
-/

namespace A073050.P12825399944290176242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A001223 (2 ^ (n + 1) + 1)).toNat

end

end A073050.P12825399944290176242

/-! ## A073050.P3303874603368144814

`or(1, A001223(A000051(n+1))-1)`
-/

namespace A073050.P3303874603368144814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A001223 (A000051 (n + 1)).toNat - 1)

end

end A073050.P3303874603368144814

/-!
# A073051: Least k such that Sum_{i=1..k} (prime(i) + prime(i+2) - 2*prime(i+1)) = 2n + 1.

The programs for A073051, there is no canonical definition to state claims against.
-/

/-! ## A073051.P12760060490645598325

`A038664(n+1)-1`
-/

namespace A073051.P12760060490645598325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038664 (n + 1) - 1

end

end A073051.P12760060490645598325

/-! ## A073051.P17915983325109081338

`A066493(2*(n+1))-1`
-/

namespace A073051.P17915983325109081338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066493 (2 * (n + 1)) - 1

end

end A073051.P17915983325109081338

/-! ## A073051.P5986414318605068350

`A057428(n+1)+A038664(n+1)`
-/

namespace A073051.P5986414318605068350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A038664 (n + 1)

end

end A073051.P5986414318605068350

/-! ## A073051.P14022414723847333548

`A134824(n+2)+A038664(n+1)`
-/

namespace A073051.P14022414723847333548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A038664 (n + 1)

end

end A073051.P14022414723847333548

/-! ## A073051.P5918902822974771026

`A260196(n+2)+A038664(n+1)`
-/

namespace A073051.P5918902822974771026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A038664 (n + 1)

end

end A073051.P5918902822974771026

/-! ## A073051.P340284575313731486

`A057077(record[xor(3, n)])+A038664(n+1)`
-/

namespace A073051.P340284575313731486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) + A038664 (n + 1)

end

end A073051.P340284575313731486

/-! ## A073051.P17044519173657837569

`A056594(24*n+14)+A038664(n+1)`
-/

namespace A073051.P17044519173657837569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (24 * n + 14) + A038664 (n + 1)

end

end A073051.P17044519173657837569

/-! ## A073051.P10994374448458598367

`A279817(gcd(n, n+1))+A038664(n+1)`
-/

namespace A073051.P10994374448458598367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279817 (Nat.gcd n (n + 1)) + A038664 (n + 1)

end

end A073051.P10994374448458598367

/-! ## A073051.P13963317853794297416

`A087960(A008846(n+1))+A038664(n+1)`
-/

namespace A073051.P13963317853794297416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (A008846 (n + 1)).toNat + A038664 (n + 1)

end

end A073051.P13963317853794297416

/-! ## A073051.P15046249080254223272

`A124452(A061142(n+1))+A038664(n+1)`
-/

namespace A073051.P15046249080254223272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124452 (A061142 (n + 1)).toNat + A038664 (n + 1)

end

end A073051.P15046249080254223272

/-! ## A073051.P4982977062859112570

`A197774(A000040(n+1))+A038664(n+1)`
-/

namespace A073051.P4982977062859112570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197774 (A000040 (n + 1)).toNat + A038664 (n + 1)

end

end A073051.P4982977062859112570

/-! ## A073051.P2140873204568956098

`A213917(A007318(C(2, n)))+A038664(n+1)`
-/

namespace A073051.P2140873204568956098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213917 (A007318 (Nat.choose 2 n)).toNat + A038664 (n + 1)

end

end A073051.P2140873204568956098

/-! ## A073051.P18281468907214671188

`abs(A038664(n+1)+A008683(A001359(n+1)))`
-/

namespace A073051.P18281468907214671188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A038664 (n + 1) + A008683 (A001359 (n + 1)).toNat|

end

end A073051.P18281468907214671188

/-! ## A073051.P9784602439622306061

`abs(A038664(n+1)+A008683(A074822(n+1)))`
-/

namespace A073051.P9784602439622306061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A038664 (n + 1) + A008683 (A074822 (n + 1)).toNat|

end

end A073051.P9784602439622306061

/-! ## A073051.P866045739725561017

`abs(A038664(n+1)+A008683(A118922(n+1)))`
-/

namespace A073051.P866045739725561017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A038664 (n + 1) + A008683 (A118922 (n + 1)).toNat|

end

end A073051.P866045739725561017

/-! ## A073051.P12690930298420815778

`abs(A038664(n+1)+A008683(A119504(n+1)))`
-/

namespace A073051.P12690930298420815778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A038664 (n + 1) + A008683 (A119504 (n + 1)).toNat|

end

end A073051.P12690930298420815778

/-! ## A073051.P4280690311511968500

`A106400(A001511(n²+2))+A038664(n+1)`
-/

namespace A073051.P4280690311511968500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (A001511 (n ^ 2 + 2)).toNat + A038664 (n + 1)

end

end A073051.P4280690311511968500

/-! ## A073051.P16322473501008961910

`A087960(A020639(2*(n+1)))+A038664(n+1)`
-/

namespace A073051.P16322473501008961910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (A020639 (2 * (n + 1))).toNat + A038664 (n + 1)

end

end A073051.P16322473501008961910

/-! ## A073051.P13944977868128856861

`A260259(C(2, A000203(n+2)))+A038664(n+1)`
-/

namespace A073051.P13944977868128856861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260259 (Nat.choose 2 (A000203 (n + 2)).toNat) + A038664 (n + 1)

end

end A073051.P13944977868128856861

/-!
# A073053: Apply DENEAT operator (or the Sisyphus function) to n.

The programs for A073053, there is no canonical definition to state claims against.
-/

/-! ## A073053.P6846778085434939712

`∑{digits}[n, A156617(gcd(#, #+2))]`
-/

namespace A073053.P6846778085434939712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A156617 (Nat.gcd x (x + 2))).sum

end

end A073053.P6846778085434939712

/-! ## A073053.P17047656048597131782

`A004086(A392220(n))`
-/

namespace A073053.P17047656048597131782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A392220 n).toNat

end

end A073053.P17047656048597131782

/-! ## A073053.P1442815660058967313

`A345110(A171797(n))`
-/

namespace A073053.P1442815660058967313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345110 (A171797 n).toNat

end

end A073053.P1442815660058967313

/-! ## A073053.P4624054125664307663

`∑{digits}[n, A000533(A065031(#))]`
-/

namespace A073053.P4624054125664307663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A000533 (A065031 x).toNat).sum

end

end A073053.P4624054125664307663

/-! ## A073053.P16763339476136988909

`∑{digits}[A065031(n), A156617(#)]`
-/

namespace A073053.P16763339476136988909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065031 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A156617 x).sum

end

end A073053.P16763339476136988909

/-! ## A073053.P10029057378525123641

`A308003(n)-9*A196563(n)`
-/

namespace A073053.P10029057378525123641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308003 n - 9 * A196563 n

end

end A073053.P10029057378525123641

/-! ## A073053.P15679350324671268771

`A348783(A065031(n))+A055642(n)`
-/

namespace A073053.P15679350324671268771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348783 (A065031 n).toNat + A055642 n

end

end A073053.P15679350324671268771

/-! ## A073053.P3797825701018576293

`∑{digits}[n, A113587(A289555(#+1)+A113587(#+1)+1)]`
-/

namespace A073053.P3797825701018576293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A113587 (A289555 (x + 1) + A113587 (x + 1) + 1).toNat).sum

end

end A073053.P3797825701018576293

/-! ## A073053.P8223843772065829728

`A392477(A167677(A065031(n)))`
-/

namespace A073053.P8223843772065829728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392477 (A167677 (A065031 n).toNat).toNat

end

end A073053.P8223843772065829728

/-!
# A073054: Number of applications of DENEAT operator x -> A073053(x) needed to transform n to 123.

The programs for A073054, there is no canonical definition to state claims against.
-/

/-! ## A073054.P10553594752893478073

`A096763(A065031(n))%6`
-/

namespace A073054.P10553594752893478073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096763 (A065031 n).toNat) 6

end

end A073054.P10553594752893478073

/-!
# A073055: a(n) = product of first n digits in the decimal expansion of Pi, ignoring decimal point.

The programs for A073055, there is no canonical definition to state claims against.
-/

/-! ## A073055.P14415481163687097916

`a(n-1)*A000796(n-1)` with `a(0)=1`
-/

namespace A073055.P14415481163687097916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A000796 (n - 1 + 1)

end

end A073055.P14415481163687097916

/-!
# A073056: Prime(n)-th digit after decimal point in decimal expansion of Pi.

The programs for A073056, there is no canonical definition to state claims against.
-/

/-! ## A073056.P18140631288701252991

`A000796(p?[xor(1, n)+1])`
-/

namespace A073056.P18140631288701252991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1)

end

end A073056.P18140631288701252991

/-! ## A073056.P983607240244968491

`A000796(p?[a(n-1)+2])` with `a(0)=0, a(1)=2, a(2)=1`
-/

namespace A073056.P983607240244968491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1)

end

end A073056.P983607240244968491

/-! ## A073056.P17550840926323523580

`A000796(Δ[A007504(n)])`
-/

namespace A073056.P17550840926323523580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((f1 (n + 1) - f1 n).toNat + 1)

end

end A073056.P17550840926323523580

/-! ## A073056.P11215389054477736509

`A000796(A000040(n+1))`
-/

namespace A073056.P11215389054477736509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((A000040 (n + 1)).toNat + 1)

end

end A073056.P11215389054477736509

/-! ## A073056.P2232536813903157257

`A000796(A008578(n+2))`
-/

namespace A073056.P2232536813903157257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((A008578 (n + 2)).toNat + 1)

end

end A073056.P2232536813903157257

/-! ## A073056.P14153157397242363192

`A000796(eq[1, A302055(n)])`
-/

namespace A073056.P14153157397242363192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302055 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A073056.P14153157397242363192

/-! ## A073056.P11311006394620944507

`A000796(record[A037225(n)+1])`
-/

namespace A073056.P11311006394620944507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1)

end

end A073056.P11311006394620944507

/-! ## A073056.P3899364683145208276

`A000796(record[A006530(n+2)])`
-/

namespace A073056.P3899364683145208276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1)

end

end A073056.P3899364683145208276

/-! ## A073056.P1888319939592954054

`A000796(record[A008472(n+2)])`
-/

namespace A073056.P1888319939592954054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1)

end

end A073056.P1888319939592954054

/-! ## A073056.P1426025179204875117

`A000796(record[A020639(n+2)])`
-/

namespace A073056.P1426025179204875117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1)

end

end A073056.P1426025179204875117

/-! ## A073056.P6020063777148189994

`A000796(A006093(n+1)+1)`
-/

namespace A073056.P6020063777148189994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((A006093 (n + 1) + 1).toNat + 1)

end

end A073056.P6020063777148189994

/-! ## A073056.P17655401518249102384

`A000796(A040976(n+1)+2)`
-/

namespace A073056.P17655401518249102384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((A040976 (n + 1) + 2).toNat + 1)

end

end A073056.P17655401518249102384

/-! ## A073056.P1618318923659285186

`A000796(A067747(2*n+1))`
-/

namespace A073056.P1618318923659285186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((A067747 (2 * n + 1)).toNat + 1)

end

end A073056.P1618318923659285186

/-! ## A073056.P9429535118224745187

`A000796(A382129(2*n+1))`
-/

namespace A073056.P9429535118224745187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((A382129 (2 * n + 1)).toNat + 1)

end

end A073056.P9429535118224745187

/-! ## A073056.P8189729534035766928

`A000796(p?[A007989(n)])`
-/

namespace A073056.P8189729534035766928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007989 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 1)

end

end A073056.P8189729534035766928

/-! ## A073056.P8596846219139489994

`A000796(record[A051698(n)])`
-/

namespace A073056.P8596846219139489994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1)

end

end A073056.P8596846219139489994

/-! ## A073056.P13253169158410983457

`A000796(p?[A014681(n)])`
-/

namespace A073056.P13253169158410983457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 1)

end

end A073056.P13253169158410983457

/-! ## A073056.P17749526030088676808

`A000796(p?[A064429(n)])`
-/

namespace A073056.P17749526030088676808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 1)

end

end A073056.P17749526030088676808

/-! ## A073056.P7237784431846393569

`A000796(p?[A080412(n)])`
-/

namespace A073056.P7237784431846393569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 1)

end

end A073056.P7237784431846393569

/-!
# A073057: Start with the word 1234, repeatedly append the words obtained via the maps 1 -> 12, 2 -> 13, 3 -> 42, 4 -> 43.

The programs for A073057, there is no canonical definition to state claims against.
-/

/-! ## A073057.P15567174253484645160

`A324029(A333201(n+1)+A000961(n+1))`
-/

namespace A073057.P15567174253484645160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324029 (A333201 (n + 1) + A000961 (n + 1)).toNat

end

end A073057.P15567174253484645160

/-!
# A073058: Define s(1)={1,2}, s(2)={1,3} and s(3)={1}. For a finite sequence A={a_1, ..., a_n}, with elements in {1,2,3}, define t(A) to be the concatenation of A, s(a_1), s(a_2), ... and s(a_n). Start with the sequence {1,2,3} and repeatedly apply t; limiting sequence is shown.

The programs for A073058, there is no canonical definition to state claims against.
-/

/-! ## A073058.P9304143932386683580

`A124734(A166333(A024640(n)²))`
-/

namespace A073058.P9304143932386683580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124734 (A166333 (A024640 n ^ 2).toNat).toNat

end

end A073058.P9304143932386683580

/-! ## A073058.P16535079672910729013

`A339584(∑[A252503(n+1)!])`
-/

namespace A073058.P16535079672910729013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A252503 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339584 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A073058.P16535079672910729013

/-! ## A073058.P14828816442690312767

`A275888(A167349(n+1)+A034008(n))`
-/

namespace A073058.P14828816442690312767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275888 (A167349 (n + 1) + A034008 n).toNat

end

end A073058.P14828816442690312767

/-! ## A073058.P16296105430167004436

`A257993(xor(A181484(3*n+1), A231064(3*n+4)))`
-/

namespace A073058.P16296105430167004436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257993 (Int.xor (A181484 (3 * n + 1)) (A231064 (3 * n + 4))).toNat

end

end A073058.P16296105430167004436

/-! ## A073058.P6505622981613492555

`A177343(p?[A177337((n+1)/2^val(n+1, 2))])`
-/

namespace A073058.P6505622981613492555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177337 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177343 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A073058.P6505622981613492555

/-!
# A073059: a(n) = (1/2)*(A073504(n+1) - A073504(n)).

The programs for A073059, the canonical program `A073059.P7440096197096325997` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073059 has offset 1).

The definition of A073059 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073504, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A073059.P7440096197096325997

`1/2*(A073504(n+2)-A073504(n+1))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A073059

/-- `1/2*(A073504(n+2)-A073504(n+1))` -/
def P7440096197096325997.Spec : Prop :=
  ∀ n, P7440096197096325997.a n = (A073059 (n + 1) : ℚ)

end A073059

/-! ## A073059.P5911306245098364492

`A096268(3*(n+1))`
-/

namespace A073059.P5911306245098364492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096268 (3 * (n + 1))

end

end A073059.P5911306245098364492

namespace A073059

/-- `A096268(3*(n+1))` -/
def P5911306245098364492.Spec : Prop :=
  ∀ n, P5911306245098364492.a n = A073059 (n + 1)

end A073059

/-! ## A073059.P7228800351536495801

`val(3*n+4, 2)%2`
-/

namespace A073059.P7228800351536495801
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (3 * n + 4) 2 % 2

end

end A073059.P7228800351536495801

namespace A073059

/-- `val(3*n+4, 2)%2` -/
def P7228800351536495801.Spec : Prop :=
  ∀ n, (P7228800351536495801.a n : ℤ) = A073059 (n + 1)

end A073059

/-! ## A073059.P18248021072007565420

`and(1, val(3*n+4, 2))`
-/

namespace A073059.P18248021072007565420
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.valuation (3 * n + 4) 2)

end

end A073059.P18248021072007565420

namespace A073059

/-- `and(1, val(3*n+4, 2))` -/
def P18248021072007565420.Spec : Prop :=
  ∀ n, (P18248021072007565420.a n : ℤ) = A073059 (n + 1)

end A073059

/-! ## A073059.P14877569768327765208

`val(∏{p}[val(3*n+4, 2)+1, #], 2)`
-/

namespace A073059.P14877569768327765208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (3 * n + 4) 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n), p) 2

end

end A073059.P14877569768327765208

namespace A073059

/-- `val(∏{p}[val(3*n+4, 2)+1, #], 2)` -/
def P14877569768327765208.Spec : Prop :=
  ∀ n, (P14877569768327765208.a n : ℤ) = A073059 (n + 1)

end A073059

/-! ## A073059.P12316271763921472803

`1-A098725(n+2)`
-/

namespace A073059.P12316271763921472803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A098725 (n + 2)

end

end A073059.P12316271763921472803

namespace A073059

/-- `1-A098725(n+2)` -/
def P12316271763921472803.Spec : Prop :=
  ∀ n, P12316271763921472803.a n = A073059 (n + 1)

end A073059

/-! ## A073059.P12201843577633673150

`A087229(n+1)%2`
-/

namespace A073059.P12201843577633673150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087229 (n + 1)) 2

end

end A073059.P12201843577633673150

namespace A073059

/-- `A087229(n+1)%2` -/
def P12201843577633673150.Spec : Prop :=
  ∀ n, P12201843577633673150.a n = A073059 (n + 1)

end A073059

/-! ## A073059.P11450513423337341448

`A371093(n+1)%2`
-/

namespace A073059.P11450513423337341448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A371093 (n + 1)) 2

end

end A073059.P11450513423337341448

namespace A073059

/-- `A371093(n+1)%2` -/
def P11450513423337341448.Spec : Prop :=
  ∀ n, P11450513423337341448.a n = A073059 (n + 1)

end A073059

/-! ## A073059.P7839864647078886649

`A182582(3*(n+1)+1)`
-/

namespace A073059.P7839864647078886649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182582 (3 * (n + 1) + 1)

end

end A073059.P7839864647078886649

namespace A073059

/-- `A182582(3*(n+1)+1)` -/
def P7839864647078886649.Spec : Prop :=
  ∀ n, P7839864647078886649.a n = A073059 (n + 1)

end A073059

/-! ## A073059.P16609853711814102470

`A347102(3*n+4)%2`
-/

namespace A073059.P16609853711814102470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347102 (3 * n + 4)) 2

end

end A073059.P16609853711814102470

namespace A073059

/-- `A347102(3*n+4)%2` -/
def P16609853711814102470.Spec : Prop :=
  ∀ n, P16609853711814102470.a n = A073059 (n + 1)

end A073059

/-! ## A073059.P16502580816191029816

`val(A007913(3*n+4), 2)²`
-/

namespace A073059.P16502580816191029816
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A007913 (3 * n + 4)).toNat 2 ^ 2

end

end A073059.P16502580816191029816

namespace A073059

/-- `val(A007913(3*n+4), 2)²` -/
def P16502580816191029816.Spec : Prop :=
  ∀ n, (P16502580816191029816.a n : ℤ) = A073059 (n + 1)

end A073059

/-! ## A073059.P16793129845516594690

`A035263(A016933(n+1))`
-/

namespace A073059.P16793129845516594690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (A016933 (n + 1)).toNat

end

end A073059.P16793129845516594690

namespace A073059

/-- `A035263(A016933(n+1))` -/
def P16793129845516594690.Spec : Prop :=
  ∀ n, P16793129845516594690.a n = A073059 (n + 1)

end A073059

/-! ## A073059.P291247593828071628

`A000035(A087229(n+1))`
-/

namespace A073059.P291247593828071628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A087229 (n + 1)).toNat

end

end A073059.P291247593828071628

namespace A073059

/-- `A000035(A087229(n+1))` -/
def P291247593828071628.Spec : Prop :=
  ∀ n, P291247593828071628.a n = A073059 (n + 1)

end A073059

/-! ## A073059.P6000847060184833206

`A373155(A001651(n+1)+1)`
-/

namespace A073059.P6000847060184833206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373155 (A001651 (n + 1) + 1).toNat

end

end A073059.P6000847060184833206

namespace A073059

/-- `A373155(A001651(n+1)+1)` -/
def P6000847060184833206.Spec : Prop :=
  ∀ n, P6000847060184833206.a n = A073059 (n + 1)

end A073059

/-! ## A073059.P15037355692339779265

`1-A084091(A016777(n+1))`
-/

namespace A073059.P15037355692339779265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A084091 (A016777 (n + 1)).toNat

end

end A073059.P15037355692339779265

namespace A073059

/-- `1-A084091(A016777(n+1))` -/
def P15037355692339779265.Spec : Prop :=
  ∀ n, P15037355692339779265.a n = A073059 (n + 1)

end A073059

/-! ## A073059.P6128418859841097582

`A084091(A001651(n+1)+1)²`
-/

namespace A073059.P6128418859841097582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084091 (A001651 (n + 1) + 1).toNat ^ 2

end

end A073059.P6128418859841097582

namespace A073059

/-- `A084091(A001651(n+1)+1)²` -/
def P6128418859841097582.Spec : Prop :=
  ∀ n, P6128418859841097582.a n = A073059 (n + 1)

end A073059

/-! ## A073059.P7423217167237530461

`A176965(A087230(A087229(n+1)²))`
-/

namespace A073059.P7423217167237530461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176965 (A087230 (A087229 (n + 1) ^ 2).toNat).toNat

end

end A073059.P7423217167237530461

namespace A073059

/-- `A176965(A087230(A087229(n+1)²))` -/
def P7423217167237530461.Spec : Prop :=
  ∀ n, P7423217167237530461.a n = A073059 (n + 1)

end A073059

/-! ## A073059.P4830332132853862730

`A007814(A085058(A375961(n+1)²))`
-/

namespace A073059.P4830332132853862730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A085058 (A375961 (n + 1) ^ 2).toNat).toNat

end

end A073059.P4830332132853862730

namespace A073059

/-- `A007814(A085058(A375961(n+1)²))` -/
def P4830332132853862730.Spec : Prop :=
  ∀ n, P4830332132853862730.a n = A073059 (n + 1)

end A073059

/-! ## A073059.P13628451476410601386

`4%A005678(n+2)`
-/

namespace A073059.P13628451476410601386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 4 (A005678 (n + 2))

end

end A073059.P13628451476410601386

namespace A073059

/-- `4%A005678(n+2)` -/
def P13628451476410601386.Spec : Prop :=
  ∀ n, P13628451476410601386.a n = A073059 (n + 1)

end A073059

/-! ## A073059.P10791884875189108631

`char[lt[1, A101660(n+1)]]`
-/

namespace A073059.P10791884875189108631
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101660 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A073059.P10791884875189108631

namespace A073059

/-- `char[lt[1, A101660(n+1)]]` -/
def P10791884875189108631.Spec : Prop :=
  ∀ n, (P10791884875189108631.a n : ℤ) = A073059 (n + 1)

end A073059

/-!
# A073060: Multiplication table for 1 and odd primes, read by antidiagonals.

The programs for A073060, the canonical program `A073060.P4927714666226081539` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073060 has offset 0).

The definition of A073060 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8318 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073060.P4927714666226081539

`A000265(A098350(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A073060

/-- `A000265(A098350(n+1))` -/
def P4927714666226081539.Spec : Prop :=
  ∀ n, P4927714666226081539.a n = A073060 n

theorem P4927714666226081539.correct : P4927714666226081539.Spec := by
  intro n
  simp only [A073060]

end A073060

/-! ## A073060.P9116936603147803127

`A026741(A098350(n+1)%∑[n+3])`
-/

namespace A073060.P9116936603147803127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (Int.tmod (A098350 (n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A073060.P9116936603147803127

namespace A073060

/-- `A026741(A098350(n+1)%∑[n+3])` -/
def P9116936603147803127.Spec : Prop :=
  ∀ n, P9116936603147803127.a n = A073060 n

end A073060

/-! ## A073060.P7053452610968412331

`A026741(A098350(n+1))-A000007(n)`
-/

namespace A073060.P7053452610968412331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A098350 (n + 1)).toNat - A000007 n

end

end A073060.P7053452610968412331

namespace A073060

/-- `A026741(A098350(n+1))-A000007(n)` -/
def P7053452610968412331.Spec : Prop :=
  ∀ n, P7053452610968412331.a n = A073060 n

end A073060

/-! ## A073060.P13316332473401653255

`A026741(A098350(n+1)-A000038(n))`
-/

namespace A073060.P13316332473401653255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A098350 (n + 1) - A000038 n).toNat

end

end A073060.P13316332473401653255

namespace A073060

/-- `A026741(A098350(n+1)-A000038(n))` -/
def P13316332473401653255.Spec : Prop :=
  ∀ n, P13316332473401653255.a n = A073060 n

end A073060

/-! ## A073060.P13294116082301814563

`A106617(A098350(n+1)-A000038(n))`
-/

namespace A073060.P13294116082301814563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106617 (A098350 (n + 1) - A000038 n).toNat

end

end A073060.P13294116082301814563

namespace A073060

/-- `A106617(A098350(n+1)-A000038(n))` -/
def P13294116082301814563.Spec : Prop :=
  ∀ n, P13294116082301814563.a n = A073060 n

end A073060

/-! ## A073060.P17245129539496540791

`A227140(A098350(n+1)%A202018(n))`
-/

namespace A073060.P17245129539496540791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227140 (Int.tmod (A098350 (n + 1)) (A202018 n)).toNat

end

end A073060.P17245129539496540791

namespace A073060

/-- `A227140(A098350(n+1)%A202018(n))` -/
def P17245129539496540791.Spec : Prop :=
  ∀ n, P17245129539496540791.a n = A073060 n

end A073060

/-! ## A073060.P12236190230756748187

`A026741(A098350(n+1)/(A000007(n)+1))`
-/

namespace A073060.P12236190230756748187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (SequenceMachineLib.roundAway ((A098350 (n + 1) : ℚ) / (A000007 n + 1 : ℚ))).toNat

end

end A073060.P12236190230756748187

namespace A073060

/-- `A026741(A098350(n+1)/(A000007(n)+1))` -/
def P12236190230756748187.Spec : Prop :=
  ∀ n, P12236190230756748187.a n = A073060 n

end A073060

/-! ## A073060.P7685504699708696236

`A227140(A098350(n+1))%A065091(n+1)`
-/

namespace A073060.P7685504699708696236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227140 (A098350 (n + 1)).toNat) (A065091 (n + 1))

end

end A073060.P7685504699708696236

namespace A073060

/-- `A227140(A098350(n+1))%A065091(n+1)` -/
def P7685504699708696236.Spec : Prop :=
  ∀ n, P7685504699708696236.a n = A073060 n

end A073060

/-! ## A073060.P7116516579508754551

`A028234(2*A098350(n+1))`
-/

namespace A073060.P7116516579508754551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (2 * A098350 (n + 1)).toNat

end

end A073060.P7116516579508754551

namespace A073060

/-- `A028234(2*A098350(n+1))` -/
def P7116516579508754551.Spec : Prop :=
  ∀ n, P7116516579508754551.a n = A073060 n

end A073060

/-! ## A073060.P17391327178682963633

`A106617(2*A098350(n+1))`
-/

namespace A073060.P17391327178682963633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106617 (2 * A098350 (n + 1)).toNat

end

end A073060.P17391327178682963633

namespace A073060

/-- `A106617(2*A098350(n+1))` -/
def P17391327178682963633.Spec : Prop :=
  ∀ n, P17391327178682963633.a n = A073060 n

end A073060

/-! ## A073060.P5530359389087377007

`A227140(2*A098350(n+1))`
-/

namespace A073060.P5530359389087377007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227140 (2 * A098350 (n + 1)).toNat

end

end A073060.P5530359389087377007

namespace A073060

/-- `A227140(2*A098350(n+1))` -/
def P5530359389087377007.Spec : Prop :=
  ∀ n, P5530359389087377007.a n = A073060 n

end A073060

/-! ## A073060.P16804909181039844903

`A051724(3*A098350(n+1))`
-/

namespace A073060.P16804909181039844903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (3 * A098350 (n + 1)).toNat

end

end A073060.P16804909181039844903

namespace A073060

/-- `A051724(3*A098350(n+1))` -/
def P16804909181039844903.Spec : Prop :=
  ∀ n, P16804909181039844903.a n = A073060 n

end A073060

/-! ## A073060.P935212810251964726

`A002265(lcm(4, A098350(n+1)))`
-/

namespace A073060.P935212810251964726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (Int.lcm 4 (A098350 (n + 1)))

end

end A073060.P935212810251964726

namespace A073060

/-- `A002265(lcm(4, A098350(n+1)))` -/
def P935212810251964726.Spec : Prop :=
  ∀ n, P935212810251964726.a n = A073060 n

end A073060

/-! ## A073060.P2989375541685979120

`∏{e}[A036561(n), A056912(#)]`
-/

namespace A073060.P2989375541685979120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A056912 (Nat.factorization (f1 n).natAbs p)

end

end A073060.P2989375541685979120

namespace A073060

/-- `∏{e}[A036561(n), A056912(#)]` -/
def P2989375541685979120.Spec : Prop :=
  ∀ n, P2989375541685979120.a n = A073060 n

end A073060

/-! ## A073060.P10331980790533254603

`∏{e}[A036561(n), A065091(#)]`
-/

namespace A073060.P10331980790533254603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A065091 (Nat.factorization (f1 n).natAbs p)

end

end A073060.P10331980790533254603

namespace A073060

/-- `∏{e}[A036561(n), A065091(#)]` -/
def P10331980790533254603.Spec : Prop :=
  ∀ n, P10331980790533254603.a n = A073060 n

end A073060

/-! ## A073060.P10555487759595388402

`∏{e}[A036561(n), A172146(#)]`
-/

namespace A073060.P10555487759595388402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A172146 (Nat.factorization (f1 n).natAbs p)

end

end A073060.P10555487759595388402

namespace A073060

/-- `∏{e}[A036561(n), A172146(#)]` -/
def P10555487759595388402.Spec : Prop :=
  ∀ n, P10555487759595388402.a n = A073060 n

end A073060

/-! ## A073060.P10630262123238399348

`∏{e}[A036561(n), A179429(#)]`
-/

namespace A073060.P10630262123238399348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A179429 (Nat.factorization (f1 n).natAbs p)

end

end A073060.P10630262123238399348

namespace A073060

/-- `∏{e}[A036561(n), A179429(#)]` -/
def P10630262123238399348.Spec : Prop :=
  ∀ n, P10630262123238399348.a n = A073060 n

end A073060

/-! ## A073060.P13859202334286917840

`∏{e}[A036561(n), A000040(#+1)]`
-/

namespace A073060.P13859202334286917840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p + 1)

end

end A073060.P13859202334286917840

namespace A073060

/-- `∏{e}[A036561(n), A000040(#+1)]` -/
def P13859202334286917840.Spec : Prop :=
  ∀ n, P13859202334286917840.a n = A073060 n

end A073060

/-! ## A073060.P3277690932334689237

`∏{e}[A013620(n)/A007318(n), A065091(#)]`
-/

namespace A073060.P3277690932334689237
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013620 n : ℚ) / (A007318 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, A065091 (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p)

end

end A073060.P3277690932334689237

namespace A073060

/-- `∏{e}[A013620(n)/A007318(n), A065091(#)]` -/
def P3277690932334689237.Spec : Prop :=
  ∀ n, P3277690932334689237.a n = A073060 n

end A073060

/-!
# A073061: a(1)=1, a(2k)=2*a(k), a(2k+1)=3*a(k).

The programs for A073061, the canonical program `A073061.P6041627415486439874` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073061 has offset 1).

The definition of A073061 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A073061.P6041627415486439874

`2^A023416(n+1)*3^(A000120(n+1)-1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A073061

/-- `2^A023416(n+1)*3^(A000120(n+1)-1)` -/
def P6041627415486439874.Spec : Prop :=
  ∀ n, P6041627415486439874.a n = (A073061 (n + 1) : ℚ)

end A073061

/-! ## A073061.P4268741028946557641

`∏{digits}[2-A176892(n+1), #]`
-/

namespace A073061.P4268741028946557641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A176892 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A073061.P4268741028946557641

namespace A073061

/-- `∏{digits}[2-A176892(n+1), #]` -/
def P4268741028946557641.Spec : Prop :=
  ∀ n, (P4268741028946557641.a n : ℤ) = A073061 (n + 1)

end A073061

/-! ## A073061.P8385396366170899246

`A176893(n+1)/3`
-/

namespace A073061.P8385396366170899246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176893 (n + 1) : ℚ) / 3

end

end A073061.P8385396366170899246

namespace A073061

/-- `A176893(n+1)/3` -/
def P8385396366170899246.Spec : Prop :=
  ∀ n, P8385396366170899246.a n = (A073061 (n + 1) : ℚ)

end A073061

/-! ## A073061.P15060020605005939921

`Δ[A268525(n+1)/4]`
-/

namespace A073061.P15060020605005939921
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268525 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073061.P15060020605005939921

namespace A073061

/-- `Δ[A268525(n+1)/4]` -/
def P15060020605005939921.Spec : Prop :=
  ∀ n, P15060020605005939921.a n = (A073061 (n + 1) : ℚ)

end A073061

/-! ## A073061.P2364990921508063769

`A048883(n+1)/3*A080100(n+1)`
-/

namespace A073061.P2364990921508063769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048883 (n + 1) : ℚ) / 3 * (A080100 (n + 1) : ℚ)

end

end A073061.P2364990921508063769

namespace A073061

/-- `A048883(n+1)/3*A080100(n+1)` -/
def P2364990921508063769.Spec : Prop :=
  ∀ n, P2364990921508063769.a n = (A073061 (n + 1) : ℚ)

end A073061

/-! ## A073061.P18389542243932935425

`A006046(A048896(n))*A080100(n+1)`
-/

namespace A073061.P18389542243932935425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 (A048896 n).toNat * A080100 (n + 1)

end

end A073061.P18389542243932935425

namespace A073061

/-- `A006046(A048896(n))*A080100(n+1)` -/
def P18389542243932935425.Spec : Prop :=
  ∀ n, P18389542243932935425.a n = A073061 (n + 1)

end A073061

/-! ## A073061.P1086181311889072568

`A048883(A000265(n+1)-1)*A080100(n+1)`
-/

namespace A073061.P1086181311889072568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 (A000265 (n + 1) - 1).toNat * A080100 (n + 1)

end

end A073061.P1086181311889072568

namespace A073061

/-- `A048883(A000265(n+1)-1)*A080100(n+1)` -/
def P1086181311889072568.Spec : Prop :=
  ∀ n, P1086181311889072568.a n = A073061 (n + 1)

end A073061

/-! ## A073061.P11751550684623753004

`A048883(xor(1, A000265(n+1)))*A080100(n+1)`
-/

namespace A073061.P11751550684623753004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 (Int.xor 1 (A000265 (n + 1))).toNat * A080100 (n + 1)

end

end A073061.P11751550684623753004

namespace A073061

/-- `A048883(xor(1, A000265(n+1)))*A080100(n+1)` -/
def P11751550684623753004.Spec : Prop :=
  ∀ n, P11751550684623753004.a n = A073061 (n + 1)

end A073061

/-! ## A073061.P9400210668105195543

`A005940(A073138(n+1))`
-/

namespace A073061.P9400210668105195543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (A073138 (n + 1)).toNat

end

end A073061.P9400210668105195543

namespace A073061

/-- `A005940(A073138(n+1))` -/
def P9400210668105195543.Spec : Prop :=
  ∀ n, P9400210668105195543.a n = A073061 (n + 1)

end A073061

/-! ## A073061.P17987744042442124794

`A006047(A191109(n+2)-2)`
-/

namespace A073061.P17987744042442124794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 (A191109 (n + 2) - 2).toNat

end

end A073061.P17987744042442124794

namespace A073061

/-- `A006047(A191109(n+2)-2)` -/
def P17987744042442124794.Spec : Prop :=
  ∀ n, P17987744042442124794.a n = A073061 (n + 1)

end A073061

/-! ## A073061.P1796864797059349400

`A002264(A176893(n+1))`
-/

namespace A073061.P1796864797059349400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A176893 (n + 1)).toNat

end

end A073061.P1796864797059349400

namespace A073061

/-- `A002264(A176893(n+1))` -/
def P1796864797059349400.Spec : Prop :=
  ∀ n, P1796864797059349400.a n = A073061 (n + 1)

end A073061

/-! ## A073061.P11088651973111534958

`A009947(A176893(n+1)+1)`
-/

namespace A073061.P11088651973111534958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009947 (A176893 (n + 1) + 1).toNat

end

end A073061.P11088651973111534958

namespace A073061

/-- `A009947(A176893(n+1)+1)` -/
def P11088651973111534958.Spec : Prop :=
  ∀ n, P11088651973111534958.a n = A073061 (n + 1)

end A073061

/-! ## A073061.P10381477575574112886

`A306921(A370762(n))`
-/

namespace A073061.P10381477575574112886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306921 (A370762 n).toNat

end

end A073061.P10381477575574112886

namespace A073061

/-- `A306921(A370762(n))` -/
def P10381477575574112886.Spec : Prop :=
  ∀ n, P10381477575574112886.a n = A073061 (n + 1)

end A073061

/-!
# A073063: G.f. satisfies: A(x) = exp( Sum_{n>=1} L(n)*A(x^n)*x^n/n ) where L(n) = n-th Lucas number.

The programs for A073063, there is no canonical definition to state claims against.
-/

/-! ## A073063.P2832012982294573618

`A026325(n)-A063691(A078603(n+1))`
-/

namespace A073063.P2832012982294573618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026325 n - A063691 (A078603 (n + 1)).toNat

end

end A073063.P2832012982294573618

/-! ## A073063.P14824991869752832160

`A276571(A098841(2*(n+2)))+A179467(n)`
-/

namespace A073063.P14824991869752832160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276571 (A098841 (2 * (n + 2))).toNat + A179467 n

end

end A073063.P14824991869752832160

/-! ## A073063.P14263275640556606643

`A276571(A098841(2*(n+2)))+2*A097379(A166296(n))-1`
-/

namespace A073063.P14263275640556606643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276571 (A098841 (2 * (n + 2))).toNat + (2 * A097379 (A166296 n).toNat - 1)

end

end A073063.P14263275640556606643

/-!
# A073064: Primes with non-distinct digits.

The programs for A073064, there is no canonical definition to state claims against.
-/

/-! ## A073064.P5533954034475454217

`∪[A050758(n+1), A052086(n+1)]`
-/

namespace A073064.P5533954034475454217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050758 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A073064.P5533954034475454217

/-! ## A073064.P14297268778051182366

`A000040(A073069(n+1))`
-/

namespace A073064.P14297268778051182366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A073069 (n + 1)).toNat

end

end A073064.P14297268778051182366

/-! ## A073064.P573280750994005509

`p?[A109303(n+1)]`
-/

namespace A073064.P573280750994005509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A073064.P573280750994005509

/-! ## A073064.P11903731582480948301

`filter[A109303(n+1), A010051(#)]`
-/

namespace A073064.P11903731582480948301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A073064.P11903731582480948301

/-! ## A073064.P3856728148663028446

`∩[A000040(n+1), A109303(n+1)]`
-/

namespace A073064.P3856728148663028446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073064.P3856728148663028446

/-! ## A073064.P17408554749160872763

`∩[A004139(n+1), A109303(n+1)]`
-/

namespace A073064.P17408554749160872763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073064.P17408554749160872763

/-! ## A073064.P6432249697920658019

`∩[A006005(n+1), A109303(n+1)]`
-/

namespace A073064.P6432249697920658019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073064.P6432249697920658019

/-! ## A073064.P2673515184373366319

`∩[A008578(n+1), A109303(n+1)]`
-/

namespace A073064.P2673515184373366319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073064.P2673515184373366319

/-! ## A073064.P12886028143543790129

`∩[A045319(n+1), A109303(n+1)]`
-/

namespace A073064.P12886028143543790129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073064.P12886028143543790129

/-! ## A073064.P7980935873624935388

`∩[A045344(n+1), A109303(n+1)]`
-/

namespace A073064.P7980935873624935388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073064.P7980935873624935388

/-! ## A073064.P2473012392404807481

`∩[A046022(n+1), A109303(n+1)]`
-/

namespace A073064.P2473012392404807481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073064.P2473012392404807481

/-! ## A073064.P13782756787613929970

`∩[A065091(n+1), A109303(n+1)]`
-/

namespace A073064.P13782756787613929970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073064.P13782756787613929970

/-! ## A073064.P3716813496393251276

`∩[A066050(n+1), A109303(n+1)]`
-/

namespace A073064.P3716813496393251276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073064.P3716813496393251276

/-! ## A073064.P13520582174892887726

`∩[A066542(n+1), A109303(n+1)]`
-/

namespace A073064.P13520582174892887726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073064.P13520582174892887726

/-! ## A073064.P13325708340025465149

`∩[A067126(n+1), A109303(n+1)]`
-/

namespace A073064.P13325708340025465149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073064.P13325708340025465149

/-! ## A073064.P12201598399057403742

`∩[A174090(n+1), A109303(n+1)]`
-/

namespace A073064.P12201598399057403742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073064.P12201598399057403742

/-! ## A073064.P9521780293562990325

`p?[A337240(n+2)]`
-/

namespace A073064.P9521780293562990325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337240 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A073064.P9521780293562990325

/-! ## A073064.P14824238176132820561

`p?[lt[A227362(n), n]]`
-/

namespace A073064.P14824238176132820561
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227362 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A073064.P14824238176132820561

/-! ## A073064.P11660363137156223191

`p?[n*(1-A178788(n))]`
-/

namespace A073064.P11660363137156223191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - A178788 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A073064.P11660363137156223191

/-! ## A073064.P8669738134579388053

`eq[A086134(n), A178788(n)]`
-/

namespace A073064.P8669738134579388053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086134 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178788 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A073064.P8669738134579388053

/-!
# A073065: a(n) = prime(n) * prime(prime(n)).

The programs for A073065, the canonical program `A073065.P7723057593703031197` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073065 has offset 1).

The definition of A073065 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073065.P7723057593703031197

`Δ[A007504(n)]*A006450(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A073065

/-- `Δ[A007504(n)]*A006450(n+1)` -/
def P7723057593703031197.Spec : Prop :=
  ∀ n, P7723057593703031197.a n = A073065 (n + 1)

theorem P7723057593703031197.correct : P7723057593703031197.Spec := by
  intro n
  simp only [A073065, Nat.add_sub_cancel]

end A073065

/-! ## A073065.P2899004866139729813

`A000040(n+1)*A006450(n+1)`
-/

namespace A073065.P2899004866139729813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A006450 (n + 1)

end

end A073065.P2899004866139729813

namespace A073065

/-- `A000040(n+1)*A006450(n+1)` -/
def P2899004866139729813.Spec : Prop :=
  ∀ n, P2899004866139729813.a n = A073065 (n + 1)

end A073065

/-! ## A073065.P9670823464444554598

`∑[A054541(n+1)]*A006450(n+1)`
-/

namespace A073065.P9670823464444554598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A006450 (n + 1)

end

end A073065.P9670823464444554598

namespace A073065

/-- `∑[A054541(n+1)]*A006450(n+1)` -/
def P9670823464444554598.Spec : Prop :=
  ∀ n, P9670823464444554598.a n = A073065 (n + 1)

end A073065

/-! ## A073065.P6839310523464855143

`(A006093(n+1)+1)*A006450(n+1)`
-/

namespace A073065.P6839310523464855143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) + 1) * A006450 (n + 1)

end

end A073065.P6839310523464855143

namespace A073065

/-- `(A006093(n+1)+1)*A006450(n+1)` -/
def P6839310523464855143.Spec : Prop :=
  ∀ n, P6839310523464855143.a n = A073065 (n + 1)

end A073065

/-! ## A073065.P3713959615353105851

`(A040976(n+1)+2)*A006450(n+1)`
-/

namespace A073065.P3713959615353105851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A040976 (n + 1) + 2) * A006450 (n + 1)

end

end A073065.P3713959615353105851

namespace A073065

/-- `(A040976(n+1)+2)*A006450(n+1)` -/
def P3713959615353105851.Spec : Prop :=
  ∀ n, P3713959615353105851.a n = A073065 (n + 1)

end A073065

/-! ## A073065.P12969057613506331547

`(A052147(n+1)-2)*A006450(n+1)`
-/

namespace A073065.P12969057613506331547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052147 (n + 1) - 2) * A006450 (n + 1)

end

end A073065.P12969057613506331547

namespace A073065

/-- `(A052147(n+1)-2)*A006450(n+1)` -/
def P12969057613506331547.Spec : Prop :=
  ∀ n, P12969057613506331547.a n = A073065 (n + 1)

end A073065

/-! ## A073065.P2054553561446447743

`A006450(n+1)/2*A100484(n+1)`
-/

namespace A073065.P2054553561446447743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006450 (n + 1) : ℚ) / 2 * (A100484 (n + 1) : ℚ)

end

end A073065.P2054553561446447743

namespace A073065

/-- `A006450(n+1)/2*A100484(n+1)` -/
def P2054553561446447743.Spec : Prop :=
  ∀ n, P2054553561446447743.a n = (A073065 (n + 1) : ℚ)

end A073065

/-! ## A073065.P8582977749853473738

`(A168152(n+1)+A000040(n+1))*A000040(n+1)`
-/

namespace A073065.P8582977749853473738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A168152 (n + 1) + A000040 (n + 1)) * A000040 (n + 1)

end

end A073065.P8582977749853473738

namespace A073065

/-- `(A168152(n+1)+A000040(n+1))*A000040(n+1)` -/
def P8582977749853473738.Spec : Prop :=
  ∀ n, P8582977749853473738.a n = A073065 (n + 1)

end A073065

/-! ## A073065.P7543843479295412955

`A006450(n+1)*A008578(n+2)`
-/

namespace A073065.P7543843479295412955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1) * A008578 (n + 2)

end

end A073065.P7543843479295412955

namespace A073065

/-- `A006450(n+1)*A008578(n+2)` -/
def P7543843479295412955.Spec : Prop :=
  ∀ n, P7543843479295412955.a n = A073065 (n + 1)

end A073065

/-! ## A073065.P191819359753200664

`A000040(n+1)*A175247(n+2)`
-/

namespace A073065.P191819359753200664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A175247 (n + 2)

end

end A073065.P191819359753200664

namespace A073065

/-- `A000040(n+1)*A175247(n+2)` -/
def P191819359753200664.Spec : Prop :=
  ∀ n, P191819359753200664.a n = A073065 (n + 1)

end A073065

/-! ## A073065.P918453750441244828

`A008578(n+2)*A175247(n+2)`
-/

namespace A073065.P918453750441244828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) * A175247 (n + 2)

end

end A073065.P918453750441244828

namespace A073065

/-- `A008578(n+2)*A175247(n+2)` -/
def P918453750441244828.Spec : Prop :=
  ∀ n, P918453750441244828.a n = A073065 (n + 1)

end A073065

/-! ## A073065.P7133420141159258002

`A006450(n+1)*A158611(n+3)`
-/

namespace A073065.P7133420141159258002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1) * A158611 (n + 3)

end

end A073065.P7133420141159258002

namespace A073065

/-- `A006450(n+1)*A158611(n+3)` -/
def P7133420141159258002.Spec : Prop :=
  ∀ n, P7133420141159258002.a n = A073065 (n + 1)

end A073065

/-! ## A073065.P8177054413834756467

`A006450(n+1)*A067747(2*n+1)`
-/

namespace A073065.P8177054413834756467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1) * A067747 (2 * n + 1)

end

end A073065.P8177054413834756467

namespace A073065

/-- `A006450(n+1)*A067747(2*n+1)` -/
def P8177054413834756467.Spec : Prop :=
  ∀ n, P8177054413834756467.a n = A073065 (n + 1)

end A073065

/-! ## A073065.P3110996587364240658

`A006450(n+1)*A109763(2*n+1)`
-/

namespace A073065.P3110996587364240658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1) * A109763 (2 * n + 1)

end

end A073065.P3110996587364240658

namespace A073065

/-- `A006450(n+1)*A109763(2*n+1)` -/
def P3110996587364240658.Spec : Prop :=
  ∀ n, P3110996587364240658.a n = A073065 (n + 1)

end A073065

/-! ## A073065.P16647604371458363478

`p?[A076610(n+1)]*A000040(n+1)`
-/

namespace A073065.P16647604371458363478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076610 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A000040 (n + 1)

end

end A073065.P16647604371458363478

namespace A073065

/-- `p?[A076610(n+1)]*A000040(n+1)` -/
def P16647604371458363478.Spec : Prop :=
  ∀ n, P16647604371458363478.a n = A073065 (n + 1)

end A073065

/-! ## A073065.P1158973967916457653

`p?[comp[A018252(n+1)]]*A006450(n+1)`
-/

namespace A073065.P1158973967916457653
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) * A006450 (n + 1)

end

end A073065.P1158973967916457653

namespace A073065

/-- `p?[comp[A018252(n+1)]]*A006450(n+1)` -/
def P1158973967916457653.Spec : Prop :=
  ∀ n, P1158973967916457653.a n = A073065 (n + 1)

end A073065

/-! ## A073065.P17655542305792922547

`record[A051698(n)]*A006450(n+1)`
-/

namespace A073065.P17655542305792922547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A006450 (n + 1)

end

end A073065.P17655542305792922547

namespace A073065

/-- `record[A051698(n)]*A006450(n+1)` -/
def P17655542305792922547.Spec : Prop :=
  ∀ n, P17655542305792922547.a n = A073065 (n + 1)

end A073065

/-! ## A073065.P16338388926426665046

`record[A351369(n+2)]`
-/

namespace A073065.P16338388926426665046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351369 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073065.P16338388926426665046

namespace A073065

/-- `record[A351369(n+2)]` -/
def P16338388926426665046.Spec : Prop :=
  ∀ n, P16338388926426665046.a n = A073065 (n + 1)

end A073065

/-! ## A073065.P3306068492918805024

`A033286(p?[xor(1, n)+1])`
-/

namespace A073065.P3306068492918805024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033286 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A073065.P3306068492918805024

namespace A073065

/-- `A033286(p?[xor(1, n)+1])` -/
def P3306068492918805024.Spec : Prop :=
  ∀ n, P3306068492918805024.a n = A073065 (n + 1)

end A073065

/-!
# A073066: Least k such that n*prime(k) <= k*tau(k).

The programs for A073066, there is no canonical definition to state claims against.
-/

/-! ## A073066.P13892067060162090871

`A329004(A100242(n+1)+1)`
-/

namespace A073066.P13892067060162090871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329004 (A100242 (n + 1) + 1).toNat

end

end A073066.P13892067060162090871

/-! ## A073066.P8100520730313395511

`A329004(A115224(n+1)+1)`
-/

namespace A073066.P8100520730313395511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329004 (A115224 (n + 1) + 1).toNat

end

end A073066.P8100520730313395511

/-! ## A073066.P15926693755252746673

`A329004(A171342(n+1)+1)`
-/

namespace A073066.P15926693755252746673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329004 (A171342 (n + 1) + 1).toNat

end

end A073066.P15926693755252746673

/-!
# A073067: Minimum value of abs(prime(n)-k*tau(k)) for k>0.

The programs for A073067, there is no canonical definition to state claims against.
-/

/-! ## A073067.P11306924232423653663

`A073068(Δ[A007504(n)])`
-/

namespace A073067.P11306924232423653663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073068 (f1 (n + 1) - f1 n).toNat

end

end A073067.P11306924232423653663

/-! ## A073067.P7727762674385123041

`A073068(p?[A004274(n)])`
-/

namespace A073067.P7727762674385123041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073068 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A073067.P7727762674385123041

/-! ## A073067.P18047861516712044896

`A073068(A000040(n+1))`
-/

namespace A073067.P18047861516712044896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073068 (A000040 (n + 1)).toNat

end

end A073067.P18047861516712044896

/-! ## A073067.P18169752572745000114

`A073068(A008578(n+2))`
-/

namespace A073067.P18169752572745000114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073068 (A008578 (n + 2)).toNat

end

end A073067.P18169752572745000114

/-! ## A073067.P9593807778987397385

`A073068(A182986(n+2))`
-/

namespace A073067.P9593807778987397385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073068 (A182986 (n + 2)).toNat

end

end A073067.P9593807778987397385

/-! ## A073067.P4705522999586385851

`A073068(A001747(n+2)/2)`
-/

namespace A073067.P4705522999586385851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073068 (SequenceMachineLib.roundAway ((A001747 (n + 2) : ℚ) / 2)).toNat

end

end A073067.P4705522999586385851

/-! ## A073067.P5710653400939083243

`A073068(A240960(n+2))`
-/

namespace A073067.P5710653400939083243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073068 (A240960 (n + 2)).toNat

end

end A073067.P5710653400939083243

/-! ## A073067.P15371603467342375177

`A073068(p?[A001057(n)])`
-/

namespace A073067.P15371603467342375177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073068 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A073067.P15371603467342375177

/-! ## A073067.P13195647776966587810

`A073068(A383578(n+1))`
-/

namespace A073067.P13195647776966587810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073068 (A383578 (n + 1)).toNat

end

end A073067.P13195647776966587810

/-!
# A073068: Minimum value of abs(n-x*tau(x)) x>0.

The programs for A073068, there is no canonical definition to state claims against.
-/

/-! ## A073068.P5226334777518125701

`val(A262954(A172251(3*n+1)), 2)`
-/

namespace A073068.P5226334777518125701
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A262954 (A172251 (3 * n + 1)).toNat).toNat 2

end

end A073068.P5226334777518125701

/-! ## A073068.P927998569985989565

`A337267(n)%A000005(A002024(n+1))`
-/

namespace A073068.P927998569985989565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337267 n) (A000005 (A002024 (n + 1)).toNat)

end

end A073068.P927998569985989565

/-! ## A073068.P11239162798764114991

`A095116(n+1)%A001221(A210107(n+1))`
-/

namespace A073068.P11239162798764114991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095116 (n + 1)) (A001221 (A210107 (n + 1)).toNat)

end

end A073068.P11239162798764114991

/-! ## A073068.P4724936925899448034

`A057889(A299111(n+1))%A368109(3*n+1)`
-/

namespace A073068.P4724936925899448034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057889 (A299111 (n + 1)).toNat) (A368109 (3 * n + 1))

end

end A073068.P4724936925899448034

/-! ## A073068.P11936681061114270077

`A380959(A276357(n+2))`
-/

namespace A073068.P11936681061114270077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380959 (A276357 (n + 2)).toNat

end

end A073068.P11936681061114270077

/-!
# A073069: Indices of primes with non-distinct digits.

The programs for A073069, there is no canonical definition to state claims against.
-/

/-! ## A073069.P2181184479054343242

`A000720(A073064(n+1))`
-/

namespace A073069.P2181184479054343242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A073064 (n + 1)).toNat

end

end A073069.P2181184479054343242

/-! ## A073069.P3279775035607430135

`A000720(p?[A109303(n+1)])`
-/

namespace A073069.P3279775035607430135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A073069.P3279775035607430135

/-! ## A073069.P2257590054708298053

`A003963(p?[A109303(n+1)])`
-/

namespace A073069.P2257590054708298053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A073069.P2257590054708298053

/-! ## A073069.P16456203075496421652

`A026233(p?[A109303(n+1)])`
-/

namespace A073069.P16456203075496421652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A073069.P16456203075496421652

/-! ## A073069.P3003504364473768021

`A026238(p?[A109303(n+1)])`
-/

namespace A073069.P3003504364473768021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A073069.P3003504364473768021

/-! ## A073069.P1947099613024698240

`A049084(p?[A109303(n+1)])`
-/

namespace A073069.P1947099613024698240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A073069.P1947099613024698240

/-! ## A073069.P13594849612565373756

`lt[0, A107846(A000040(n+1))]+1`
-/

namespace A073069.P13594849612565373756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 (A000040 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A073069.P13594849612565373756

/-!
# A073070: Binary expansion of 1/AGM(1,sqrt(2)).

The programs for A073070, there is no canonical definition to state claims against.
-/

/-! ## A073070.P2307185624976093732

`A353669(lcm(A353659(n+1), A353686(n+2)))`
-/

namespace A073070.P2307185624976093732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353669 (Int.lcm (A353659 (n + 1)) (A353686 (n + 2)))

end

end A073070.P2307185624976093732

/-! ## A073070.P15921607367271626085

`eq[A108887(n), A244612(n+1)]%2`
-/

namespace A073070.P15921607367271626085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108887 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244612 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n % 2

end

end A073070.P15921607367271626085

/-! ## A073070.P5252840803382275766

`A000035(eq[A108887(n), A244612(n+1)])`
-/

namespace A073070.P5252840803382275766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108887 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A073070.P5252840803382275766

/-! ## A073070.P74323511893656069

`A059841(eq[A108887(n), A244612(n+1)]+1)`
-/

namespace A073070.P74323511893656069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108887 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A073070.P74323511893656069

/-! ## A073070.P12550275761958945995

`A023416(A091819(2*(n+1)))%2`
-/

namespace A073070.P12550275761958945995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023416 (A091819 (2 * (n + 1))).toNat) 2

end

end A073070.P12550275761958945995

/-!
# A073071: Least k such that k! > prime(1)*prime(2)*...*prime(n) where prime(n) is the n-th prime.

The programs for A073071, there is no canonical definition to state claims against.
-/

/-! ## A073071.P7835977433585720852

`ceil(log(A115115(n+2)))`
-/

namespace A073071.P7835977433585720852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (A115115 (n + 2) : ℝ)⌉

end

end A073071.P7835977433585720852

/-!
# A073072: Minimum value of abs(n^2-x^3) x>0.

The programs for A073072, there is no canonical definition to state claims against.
-/

/-! ## A073072.P13484653179567549944

`abs(A077111(n+1))`
-/

namespace A073072.P13484653179567549944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077111 (n + 1)|

end

end A073072.P13484653179567549944

/-! ## A073072.P2617595128790732580

`A061023((n+1)²)`
-/

namespace A073072.P2617595128790732580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061023 ((n + 1) ^ 2)

end

end A073072.P2617595128790732580

/-! ## A073072.P11399565612045231908

`A074989((n+1)²)`
-/

namespace A073072.P11399565612045231908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074989 ((n + 1) ^ 2)

end

end A073072.P11399565612045231908

/-! ## A073072.P10817461694217726242

`∑[-Δ[-A074989(n²)]]`
-/

namespace A073072.P10817461694217726242
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A074989 (n ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073072.P10817461694217726242

/-! ## A073072.P6032529232467763170

`or(char[1], A061023(∑[2*n+1]))`
-/

namespace A073072.P6032529232467763170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A061023 (∑ j ∈ Finset.range (n + 1), f2 j))

end

end A073072.P6032529232467763170

/-! ## A073072.P1575499392386996661

`∑{d}[A061023(∑[2*n+1]), A000010(#)]`
-/

namespace A073072.P1575499392386996661
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061023 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A073072.P1575499392386996661

/-! ## A073072.P356097783552505863

`A061023(∑[2*n+1])%∑[A018252(n+2)]`
-/

namespace A073072.P356097783552505863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061023 (∑ j ∈ Finset.range (n + 1), f1 j)) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A073072.P356097783552505863

/-! ## A073072.P2133233250185290357

`A074989(∑[2*n+1])%(2*A000040(n+1))`
-/

namespace A073072.P2133233250185290357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074989 (∑ j ∈ Finset.range (n + 1), f1 j)) (2 * A000040 (n + 1))

end

end A073072.P2133233250185290357

/-! ## A073072.P8749202294967841163

`A014963(20*(n+1))*A061023(∑[2*n+1])`
-/

namespace A073072.P8749202294967841163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (20 * (n + 1)) * A061023 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A073072.P8749202294967841163

/-! ## A073072.P6114364121115691560

`A001221((-1)^n+4)*A061023(∑[2*n+1])`
-/

namespace A073072.P6114364121115691560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ((-1) ^ n + 4).toNat * A061023 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A073072.P6114364121115691560

/-!
# A073075: Generating function satisfies A(x) = exp(2*A(x)*x + 2*A(x^3)*x^3/3 + 2*A(x^5)*x^5/5 + 2*A(x^7)*x^7/7 +...).

The programs for A073075, there is no canonical definition to state claims against.
-/

/-! ## A073075.P17723429514911281686

`ceil((A071542(A192469(n+1))+1)/3)`
-/

namespace A073075.P17723429514911281686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A071542 (A192469 (n + 1)).toNat + 1 : ℚ) / 3⌉

end

end A073075.P17723429514911281686

/-! ## A073075.P12873279433834551945

`A150472(n)-A340763(A150647(n))`
-/

namespace A073075.P12873279433834551945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150472 n - A340763 (A150647 n).toNat

end

end A073075.P12873279433834551945

/-! ## A073075.P2301418939346605360

`A299021(n+1)-A076280(A099962(n))`
-/

namespace A073075.P2301418939346605360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299021 (n + 1) - A076280 (A099962 n).toNat

end

end A073075.P2301418939346605360

/-!
# A073076: Numbers k such that 2*k+1 divides C(2*k,k).

The programs for A073076, the canonical program `A073076.P15256774051440457723` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073076 has offset 1).

The definition of A073076 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 456 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073076.P15256774051440457723

`lt[A256277(n+1), 1]+1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A073076

/-- `lt[A256277(n+1), 1]+1` -/
def P15256774051440457723.Spec : Prop :=
  ∀ n, (P15256774051440457723.a n : ℤ) = A073076 (n + 1)

theorem P15256774051440457723.correct : P15256774051440457723.Spec := by
  intro n
  simp only [A073076, Nat.add_sub_cancel]

end A073076

/-! ## A073076.P18373828488265068384

`eq[0, A336257(A028310(n))]`
-/

namespace A073076.P18373828488265068384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336257 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A073076.P18373828488265068384

namespace A073076

/-- `eq[0, A336257(A028310(n))]` -/
def P18373828488265068384.Spec : Prop :=
  ∀ n, (P18373828488265068384.a n : ℤ) = A073076 (n + 1)

end A073076

/-! ## A073076.P521514774931607846

`eq[floor(atan(n)), A056617(n)]`
-/

namespace A073076.P521514774931607846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (n : ℝ)⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056617 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A073076.P521514774931607846

namespace A073076

/-- `eq[floor(atan(n)), A056617(n)]` -/
def P521514774931607846.Spec : Prop :=
  ∀ n, (P521514774931607846.a n : ℤ) = A073076 (n + 1)

end A073076

/-! ## A073076.P5487539616406751944

`eq[A056617(n), A057427(n)]`
-/

namespace A073076.P5487539616406751944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056617 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A073076.P5487539616406751944

namespace A073076

/-- `eq[A056617(n), A057427(n)]` -/
def P5487539616406751944.Spec : Prop :=
  ∀ n, (P5487539616406751944.a n : ℤ) = A073076 (n + 1)

end A073076

/-! ## A073076.P4828821606742031200

`eq[log(A056617(n)), A000007(n)]`
-/

namespace A073076.P4828821606742031200
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A056617 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A073076.P4828821606742031200

namespace A073076

/-- `eq[log(A056617(n)), A000007(n)]` -/
def P4828821606742031200.Spec : Prop :=
  ∀ n, (P4828821606742031200.a n : ℤ) = A073076 (n + 1)

end A073076

/-! ## A073076.P1110546345434616744

`eq[log2(A056617(n)), A003982(n)]`
-/

namespace A073076.P1110546345434616744
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A056617 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A073076.P1110546345434616744

namespace A073076

/-- `eq[log2(A056617(n)), A003982(n)]` -/
def P1110546345434616744.Spec : Prop :=
  ∀ n, (P1110546345434616744.a n : ℤ) = A073076 (n + 1)

end A073076

/-! ## A073076.P11074536304514044535

`eq[A000038(n)!, A056617(n)]`
-/

namespace A073076.P11074536304514044535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000038 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056617 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A073076.P11074536304514044535

namespace A073076

/-- `eq[A000038(n)!, A056617(n)]` -/
def P11074536304514044535.Spec : Prop :=
  ∀ n, (P11074536304514044535.a n : ℤ) = A073076 (n + 1)

end A073076

/-! ## A073076.P17619757238062023247

`eq[A339579(n+1)!, A056617(n)]`
-/

namespace A073076.P17619757238062023247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A339579 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056617 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A073076.P17619757238062023247

namespace A073076

/-- `eq[A339579(n+1)!, A056617(n)]` -/
def P17619757238062023247.Spec : Prop :=
  ∀ n, (P17619757238062023247.a n : ℤ) = A073076 (n + 1)

end A073076

/-! ## A073076.P3868924989570293529

`eq[A010170(A007918(n)), A056617(n)]`
-/

namespace A073076.P3868924989570293529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010170 (A007918 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056617 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A073076.P3868924989570293529

namespace A073076

/-- `eq[A010170(A007918(n)), A056617(n)]` -/
def P3868924989570293529.Spec : Prop :=
  ∀ n, (P3868924989570293529.a n : ℤ) = A073076 (n + 1)

end A073076

/-! ## A073076.P6297511130439761777

`eq[A056617(n), A170860(A001316(n))]`
-/

namespace A073076.P6297511130439761777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056617 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170860 (A001316 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A073076.P6297511130439761777

namespace A073076

/-- `eq[A056617(n), A170860(A001316(n))]` -/
def P6297511130439761777.Spec : Prop :=
  ∀ n, (P6297511130439761777.a n : ℤ) = A073076 (n + 1)

end A073076

/-! ## A073076.P7627395524054687272

`eq[A001221(A034444(n+1)), A056617(n)]`
-/

namespace A073076.P7627395524054687272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A034444 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056617 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A073076.P7627395524054687272

namespace A073076

/-- `eq[A001221(A034444(n+1)), A056617(n)]` -/
def P7627395524054687272.Spec : Prop :=
  ∀ n, (P7627395524054687272.a n : ℤ) = A073076 (n + 1)

end A073076

/-! ## A073076.P5325640189659833782

`eq[A001222(A008578(n+1)), A056617(n)]`
-/

namespace A073076.P5325640189659833782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008578 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056617 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A073076.P5325640189659833782

namespace A073076

/-- `eq[A001222(A008578(n+1)), A056617(n)]` -/
def P5325640189659833782.Spec : Prop :=
  ∀ n, (P5325640189659833782.a n : ℤ) = A073076 (n + 1)

end A073076

/-!
# A073077: Numbers k that divide C(2k,k) and C(4k,2k).

The programs for A073077, there is no canonical definition to state claims against.
-/

/-! ## A073077.P1690380122930304881

`∩[A048618(n+1), A227902(n+1)]/2`
-/

namespace A073077.P1690380122930304881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227902 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A073077.P1690380122930304881

/-! ## A073077.P17674960450628908123

`A001281(∩[A048618(n+1), A227902(n+1)])`
-/

namespace A073077.P17674960450628908123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227902 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A073077.P17674960450628908123

/-! ## A073077.P925493558772108691

`A065033(∩[A048618(n+1), A227902(n+1)])`
-/

namespace A073077.P925493558772108691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227902 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A073077.P925493558772108691

/-! ## A073077.P12710936638578923973

`A123108(∩[A048618(n+1), A227902(n+1)])`
-/

namespace A073077.P12710936638578923973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227902 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A073077.P12710936638578923973

/-! ## A073077.P2967478499772895037

`A246277(∩[A048618(n+1), A227902(n+1)])`
-/

namespace A073077.P2967478499772895037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227902 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A073077.P2967478499772895037

/-!
# A073078: Least k such that n divides C(2k,k).

The programs for A073078, there is no canonical definition to state claims against.
-/

/-! ## A073078.P6619132551996609202

`or(A051903(A003557(n+1)), A290085(2^n))`
-/

namespace A073078.P6619132551996609202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A051903 (A003557 (n + 1)).toNat) (A290085 (2 ^ n))

end

end A073078.P6619132551996609202

/-! ## A073078.P16498298592469889101

`or(A135210(A005361(n+1)), A290085(2^n))`
-/

namespace A073078.P16498298592469889101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A135210 (A005361 (n + 1)).toNat) (A290085 (2 ^ n))

end

end A073078.P16498298592469889101

/-! ## A073078.P1169358065579620891

`or(A002262(A212173(n+1)), A290085(2^n))`
-/

namespace A073078.P1169358065579620891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002262 (A212173 (n + 1)).toNat) (A290085 (2 ^ n))

end

end A073078.P1169358065579620891

/-! ## A073078.P9483133556091709271

`A001222(5^A290076(n))+A001222(A295924(n+1))`
-/

namespace A073078.P9483133556091709271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A290076 n : ℤ))).toNat + A001222 (A295924 (n + 1)).toNat

end

end A073078.P9483133556091709271

/-! ## A073078.P1838781372339020477

`A217434(n+1)-A007423(A000079(n+1))*A101279(n+1)`
-/

namespace A073078.P1838781372339020477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217434 (n + 1) - A007423 (A000079 (n + 1)).toNat * A101279 (n + 1)

end

end A073078.P1838781372339020477

/-!
# A073079: Generating function satisfies A(x) = exp(A(x)x + 3A(x^2)x^2/2 + A(x^3)x^3/3 + 3A(x^4)x^4/4 +...).

The programs for A073079, there is no canonical definition to state claims against.
-/

/-! ## A073079.P4182479559757736439

`A027306(n)+A025437(A008776(n))`
-/

namespace A073079.P4182479559757736439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027306 n + A025437 (A008776 n).toNat

end

end A073079.P4182479559757736439

/-! ## A073079.P10445107009968740928

`A360118(A360102(n))+A005773(n)`
-/

namespace A073079.P10445107009968740928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360118 (A360102 n).toNat + A005773 n

end

end A073079.P10445107009968740928

/-! ## A073079.P113935258256107411

`A046211(n+1)-A180160(A285361(n))`
-/

namespace A073079.P113935258256107411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046211 (n + 1) - A180160 (A285361 n).toNat

end

end A073079.P113935258256107411

/-!
# A073080: 3 appears three times, 2*3=6 appears six times, 2*6=12 appears twelve times etc.

The programs for A073080, the canonical program `A073080.P2638855133938758807` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073080 has offset 1).

The definition of A073080 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073080.P17067304506449063317

`3*2^floor(log2(n/3+1))`
-/

namespace A073080.P17067304506449063317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * (2 : ℚ) ^ (⌊Real.logb 2 ((n : ℚ) / 3 + 1 : ℝ)⌋ : ℤ)

end

end A073080.P17067304506449063317

namespace A073080

/-- `3*2^floor(log2(n/3+1))` -/
def P17067304506449063317.Spec : Prop :=
  ∀ n, P17067304506449063317.a n = (A073080 (n + 1) : ℚ)

end A073080

/-! ## A073080.P2638855133938758807

`3-(n+3)%a(n-1)+n` with `a(0)=3`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A073080

/-- `3-(n+3)%a(n-1)+n` -/
def P2638855133938758807.Spec : Prop :=
  ∀ n, P2638855133938758807.a n = A073080 (n + 1)

theorem P2638855133938758807.correct : P2638855133938758807.Spec := by
  intro n
  simp only [A073080, Nat.add_sub_cancel]

end A073080

/-! ## A073080.P9030366491132826873

`lcm(2^val(floor(n/3)+1, 2), a(n-1))` with `a(0)=3`
-/

namespace A073080.P9030366491132826873
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.lcm (2 ^ SequenceMachineLib.valuation (⌊(n : ℚ) / 3⌋ + 1).toNat 2) (a (n - 1))

end

end A073080.P9030366491132826873

namespace A073080

/-- `lcm(2^val(floor(n/3)+1, 2), a(n-1))` -/
def P9030366491132826873.Spec : Prop :=
  ∀ n, (P9030366491132826873.a n : ℤ) = A073080 (n + 1)

end A073080

/-! ## A073080.P15540394997682667221

`floor(floor((n+3)/a(n-1))*a(n-1))` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A073080.P15540394997682667221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ⌊(n + 3 : ℚ) / (a (n - 1) : ℚ)⌋ * a (n - 1)

end

end A073080.P15540394997682667221

namespace A073080

/-- `floor(floor((n+3)/a(n-1))*a(n-1))` -/
def P15540394997682667221.Spec : Prop :=
  ∀ n, P15540394997682667221.a n = A073080 (n + 1)

end A073080

/-! ## A073080.P14111367001500050617

`A280510(floor(n/3)+2)`
-/

namespace A073080.P14111367001500050617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280510 (⌊(n : ℚ) / 3⌋ + 2).toNat

end

end A073080.P14111367001500050617

namespace A073080

/-- `A280510(floor(n/3)+2)` -/
def P14111367001500050617.Spec : Prop :=
  ∀ n, P14111367001500050617.a n = A073080 (n + 1)

end A073080

/-! ## A073080.P16899452366065062080

`A042950(ceil(log2((n+4)/3)))`
-/

namespace A073080.P16899452366065062080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042950 ⌈Real.logb 2 ((n + 4 : ℚ) / 3 : ℝ)⌉.toNat

end

end A073080.P16899452366065062080

namespace A073080

/-- `A042950(ceil(log2((n+4)/3)))` -/
def P16899452366065062080.Spec : Prop :=
  ∀ n, P16899452366065062080.a n = A073080 (n + 1)

end A073080

/-! ## A073080.P11220267974976448385

`lcm(3, A053644(∑[char[3*n]]))`
-/

namespace A073080.P11220267974976448385
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A053644 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A073080.P11220267974976448385

namespace A073080

/-- `lcm(3, A053644(∑[char[3*n]]))` -/
def P11220267974976448385.Spec : Prop :=
  ∀ n, (P11220267974976448385.a n : ℤ) = A073080 (n + 1)

end A073080

/-! ## A073080.P16509071968648503850

`A275202(A053644(A066997(n+2)))`
-/

namespace A073080.P16509071968648503850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275202 (A053644 (A066997 (n + 2)).toNat).toNat

end

end A073080.P16509071968648503850

namespace A073080

/-- `A275202(A053644(A066997(n+2)))` -/
def P16509071968648503850.Spec : Prop :=
  ∀ n, P16509071968648503850.a n = A073080 (n + 1)

end A073080

/-! ## A073080.P4112212509419959185

`A001175(A306390(n+4))`
-/

namespace A073080.P4112212509419959185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (A306390 (n + 4)).toNat

end

end A073080.P4112212509419959185

namespace A073080

/-- `A001175(A306390(n+4))` -/
def P4112212509419959185.Spec : Prop :=
  ∀ n, P4112212509419959185.a n = A073080 (n + 1)

end A073080

/-!
# A073082: Numbers n such that sum k/d(k) is an integer, where d(k) is the k-th divisor of n (the divisors of n are in increasing order).

The programs for A073082, there is no canonical definition to state claims against.
-/

/-! ## A073082.P201283615172175117

`C(7, ∑{e}[n, #]²)^A115576(A225792(n+1))+n`
-/

namespace A073082.P201283615172175117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose 7 ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) ^ 2) : ℚ) ^ (A115576 (A225792 (n + 1)).toNat : ℤ) + (n : ℚ)

end

end A073082.P201283615172175117

/-! ## A073082.P5719092435446943009

`A124532(n)*A294859(A154701(n+3))`
-/

namespace A073082.P5719092435446943009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124532 n * A294859 (A154701 (n + 3)).toNat

end

end A073082.P5719092435446943009

/-!
# A073083: Numbers n such that sum k/d(k) is an integer, where d(k) is the k-th divisor of n (the divisors of n are in decreasing order).

The programs for A073083, there is no canonical definition to state claims against.
-/

/-! ## A073083.P4225473769935650407

`A102187(A269161(n)+A000289(n))`
-/

namespace A073083.P4225473769935650407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102187 (A269161 n + A000289 n).toNat

end

end A073083.P4225473769935650407

/-!
# A073085: Numbers k such that 210*k+1 is prime.

The programs for A073085, the canonical program `A073085.P885122968936088587` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073085 has offset 1).

The definition of A073085 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 193 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073085.P885122968936088587

`eq[1, A038800(21*n)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A073085

/-- `eq[1, A038800(21*n)]` -/
def P885122968936088587.Spec : Prop :=
  ∀ n, (P885122968936088587.a n : ℤ) = A073085 (n + 1)

theorem P885122968936088587.correct : P885122968936088587.Spec := by
  intro n
  simp only [A073085, Nat.add_sub_cancel]

end A073085

/-! ## A073085.P9845291344237334457

`eq[1, A091088(3*7*n)]`
-/

namespace A073085.P9845291344237334457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091088 (3 * (7 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A073085.P9845291344237334457

namespace A073085

/-- `eq[1, A091088(3*7*n)]` -/
def P9845291344237334457.Spec : Prop :=
  ∀ n, (P9845291344237334457.a n : ℤ) = A073085 (n + 1)

end A073085

/-! ## A073085.P7424278084842742452

`eq[1, A001222(3*70*n+1)]`
-/

namespace A073085.P7424278084842742452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (3 * (70 * n) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A073085.P7424278084842742452

namespace A073085

/-- `eq[1, A001222(3*70*n+1)]` -/
def P7424278084842742452.Spec : Prop :=
  ∀ n, (P7424278084842742452.a n : ℤ) = A073085 (n + 1)

end A073085

/-! ## A073085.P4029328849119400467

`eq[2, A000005(3*70*n+1)]`
-/

namespace A073085.P4029328849119400467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (3 * (70 * n) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A073085.P4029328849119400467

namespace A073085

/-- `eq[2, A000005(3*70*n+1)]` -/
def P4029328849119400467.Spec : Prop :=
  ∀ n, (P4029328849119400467.a n : ℤ) = A073085 (n + 1)

end A073085

/-! ## A073085.P5182587326259028854

`eq[3*70*n+1, A008472(3*70*n+1)]`
-/

namespace A073085.P5182587326259028854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (70 * n) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (3 * (70 * n) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A073085.P5182587326259028854

namespace A073085

/-- `eq[3*70*n+1, A008472(3*70*n+1)]` -/
def P5182587326259028854.Spec : Prop :=
  ∀ n, (P5182587326259028854.a n : ℤ) = A073085 (n + 1)

end A073085

/-!
# A073087: Least k such that sigma(k^k)>=n*k^k.

The programs for A073087, there is no canonical definition to state claims against.
-/

/-! ## A073087.P16048326359740493792

`A034386(A061556(n+1))`
-/

namespace A073087.P16048326359740493792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 (A061556 (n + 1)).toNat

end

end A073087.P16048326359740493792

/-! ## A073087.P11475451924824285014

`A091456(n+1)-(A046786(n)^n)²`
-/

namespace A073087.P11475451924824285014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091456 (n + 1) - (A046786 n ^ n) ^ 2

end

end A073087.P11475451924824285014

/-! ## A073087.P12363603077790778130

`A002110(A202278(n+1)-(floor(acot(n))-1))`
-/

namespace A073087.P12363603077790778130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A202278 (n + 1) - (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1)).toNat

end

end A073087.P12363603077790778130

/-! ## A073087.P7675839579303970123

`A091456(n+1)-A083254(A000079(n))`
-/

namespace A073087.P7675839579303970123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091456 (n + 1) - A083254 (A000079 n).toNat

end

end A073087.P7675839579303970123

/-! ## A073087.P6411472426250475117

`A091456(n+1)+A046786(n)-A057428(n)-1`
-/

namespace A073087.P6411472426250475117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091456 (n + 1) + A046786 n - A057428 n - 1

end

end A073087.P6411472426250475117

/-!
# A073088: Sum of first n terms of the simple continued fraction of Sum_{k>=0} 1/2^(2^k) (cf. A007400).

The programs for A073088, there is no canonical definition to state claims against.
-/

/-! ## A073088.P7653475749068093927

`∑[A007400(n)]`
-/

namespace A073088.P7653475749068093927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073088.P7653475749068093927

/-! ## A073088.P13070234263427197719

`eq[abs(A253414(n)), A040001(n)]`
-/

namespace A073088.P13070234263427197719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A253414 n|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A073088.P13070234263427197719

/-! ## A073088.P9025254848448764292

`eq[A253414(n)², A050932(n)]`
-/

namespace A073088.P9025254848448764292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253414 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050932 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A073088.P9025254848448764292

/-! ## A073088.P18443599094717101538

`eq[A253414(n)², A123726(n)]`
-/

namespace A073088.P18443599094717101538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253414 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123726 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A073088.P18443599094717101538

/-! ## A073088.P11583861939226932587

`eq[A253414(n)², A278538(n+1)]`
-/

namespace A073088.P11583861939226932587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253414 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278538 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A073088.P11583861939226932587

/-! ## A073088.P3667827391039550998

`record[and(n, A073097(A030978(n)))]`
-/

namespace A073088.P3667827391039550998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A073097 (A030978 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073088.P3667827391039550998

/-! ## A073088.P15992787153699226005

`eq[1, -A073097(n²)]`
-/

namespace A073088.P15992787153699226005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A073097 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A073088.P15992787153699226005

/-! ## A073088.P875436626091688133

`eq[0, A073089(A228564(n))]`
-/

namespace A073088.P875436626091688133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073089 (A228564 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A073088.P875436626091688133

/-! ## A073088.P3106605440638447450

`eq[0, A322016(A097066(n))]`
-/

namespace A073088.P3106605440638447450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322016 (A097066 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A073088.P3106605440638447450

/-!
# A073089: a(n) = (1/2)*(4n - 3 - Sum_{k=1..n} A007400(k)).

The programs for A073089, the canonical program `A073089.P6746371190418764077` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073089 has offset 1).

The definition of A073089 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073089.P6746371190418764077

`A382732(n)%2`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A073089

/-- `A382732(n)%2` -/
def P6746371190418764077.Spec : Prop :=
  ∀ n, P6746371190418764077.a n = A073089 (n + 1)

theorem P6746371190418764077.correct : P6746371190418764077.Spec := by
  intro n
  simp only [A073089, Nat.add_sub_cancel]

end A073089

/-! ## A073089.P17332595038807054103

`and(2, A129527(n))/2`
-/

namespace A073089.P17332595038807054103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A129527 n) : ℚ) / 2

end

end A073089.P17332595038807054103

namespace A073089

/-- `and(2, A129527(n))/2` -/
def P17332595038807054103.Spec : Prop :=
  ∀ n, P17332595038807054103.a n = (A073089 (n + 1) : ℚ)

end A073089

/-! ## A073089.P13472535808347697623

`and(2, A166404(n))/2`
-/

namespace A073089.P13472535808347697623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A166404 n) : ℚ) / 2

end

end A073089.P13472535808347697623

namespace A073089

/-- `and(2, A166404(n))/2` -/
def P13472535808347697623.Spec : Prop :=
  ∀ n, P13472535808347697623.a n = (A073089 (n + 1) : ℚ)

end A073089

/-! ## A073089.P13079816738783316735

`1-ceil(1/A123725(n))`
-/

namespace A073089.P13079816738783316735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ⌈1 / (A123725 n : ℚ)⌉

end

end A073089.P13079816738783316735

namespace A073089

/-- `1-ceil(1/A123725(n))` -/
def P13079816738783316735.Spec : Prop :=
  ∀ n, P13079816738783316735.a n = A073089 (n + 1)

end A073089

/-! ## A073089.P3529910192953606809

`1-ceil(1/A138504(n))`
-/

namespace A073089.P3529910192953606809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ⌈1 / (A138504 n : ℚ)⌉

end

end A073089.P3529910192953606809

namespace A073089

/-- `1-ceil(1/A138504(n))` -/
def P3529910192953606809.Spec : Prop :=
  ∀ n, P3529910192953606809.a n = A073089 (n + 1)

end A073089

/-! ## A073089.P9767216784410732396

`char[eq[3, A004200(2*n)]]`
-/

namespace A073089.P9767216784410732396
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004200 (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A073089.P9767216784410732396

namespace A073089

/-- `char[eq[3, A004200(2*n)]]` -/
def P9767216784410732396.Spec : Prop :=
  ∀ n, (P9767216784410732396.a n : ℤ) = A073089 (n + 1)

end A073089

/-! ## A073089.P4177418685280471653

`A317539(2*n+1)%2`
-/

namespace A073089.P4177418685280471653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317539 (2 * n + 1)) 2

end

end A073089.P4177418685280471653

namespace A073089

/-- `A317539(2*n+1)%2` -/
def P4177418685280471653.Spec : Prop :=
  ∀ n, P4177418685280471653.a n = A073089 (n + 1)

end A073089

/-! ## A073089.P5667911401772276078

`val(A007400(2*n+1), 4)`
-/

namespace A073089.P5667911401772276078
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A007400 (2 * n + 1)).toNat 4

end

end A073089.P5667911401772276078

namespace A073089

/-- `val(A007400(2*n+1), 4)` -/
def P5667911401772276078.Spec : Prop :=
  ∀ n, (P5667911401772276078.a n : ℤ) = A073089 (n + 1)

end A073089

/-! ## A073089.P51634057176433081

`ceil(sin(A006464(2*n)-2))`
-/

namespace A073089.P51634057176433081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (A006464 (2 * n) - 2 : ℝ)⌉

end

end A073089.P51634057176433081

namespace A073089

/-- `ceil(sin(A006464(2*n)-2))` -/
def P51634057176433081.Spec : Prop :=
  ∀ n, P51634057176433081.a n = A073089 (n + 1)

end A073089

/-! ## A073089.P16993941431901803340

`ceil(A073097(2*n+1)/2)`
-/

namespace A073089.P16993941431901803340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A073097 (2 * n + 1) : ℚ) / 2⌉

end

end A073089.P16993941431901803340

namespace A073089

/-- `ceil(A073097(2*n+1)/2)` -/
def P16993941431901803340.Spec : Prop :=
  ∀ n, P16993941431901803340.a n = A073089 (n + 1)

end A073089

/-! ## A073089.P16440809322110184397

`val(A317333(n+1)+n², 2)`
-/

namespace A073089.P16440809322110184397
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A317333 (n + 1) + (n ^ 2 : ℤ)).toNat 2

end

end A073089.P16440809322110184397

namespace A073089

/-- `val(A317333(n+1)+n², 2)` -/
def P16440809322110184397.Spec : Prop :=
  ∀ n, (P16440809322110184397.a n : ℤ) = A073089 (n + 1)

end A073089

/-! ## A073089.P11171122870213037949

`2*n-eq[4, A007400(n+2)]`
-/

namespace A073089.P11171122870213037949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007400 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A073089.P11171122870213037949

namespace A073089

/-- `2*n-eq[4, A007400(n+2)]` -/
def P11171122870213037949.Spec : Prop :=
  ∀ n, P11171122870213037949.a n = A073089 (n + 1)

end A073089

/-! ## A073089.P2743422517704150067

`ceil(sin(A004200(2*n+1)+2))`
-/

namespace A073089.P2743422517704150067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (A004200 (2 * n + 1) + 2 : ℝ)⌉

end

end A073089.P2743422517704150067

namespace A073089

/-- `ceil(sin(A004200(2*n+1)+2))` -/
def P2743422517704150067.Spec : Prop :=
  ∀ n, P2743422517704150067.a n = A073089 (n + 1)

end A073089

/-! ## A073089.P3100391787497640880

`round(sin(A006464(2*n+1)²)²)`
-/

namespace A073089.P3100391787497640880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (A006464 (2 * n + 1) ^ 2 : ℝ) ^ 2)

end

end A073089.P3100391787497640880

namespace A073089

/-- `round(sin(A006464(2*n+1)²)²)` -/
def P3100391787497640880.Spec : Prop :=
  ∀ n, P3100391787497640880.a n = A073089 (n + 1)

end A073089

/-! ## A073089.P5566477507426308971

`A082410(A263449(n))`
-/

namespace A073089.P5566477507426308971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082410 (A263449 n).toNat

end

end A073089.P5566477507426308971

namespace A073089

/-- `A082410(A263449(n))` -/
def P5566477507426308971.Spec : Prop :=
  ∀ n, P5566477507426308971.a n = A073089 (n + 1)

end A073089

/-! ## A073089.P11819331038652488910

`A014577(2*A382733(n))`
-/

namespace A073089.P11819331038652488910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014577 (2 * A382733 n).toNat

end

end A073089.P11819331038652488910

namespace A073089

/-- `A014577(2*A382733(n))` -/
def P11819331038652488910.Spec : Prop :=
  ∀ n, P11819331038652488910.a n = A073089 (n + 1)

end A073089

/-! ## A073089.P18424835426323722176

`A014707(2*A382732(n))`
-/

namespace A073089.P18424835426323722176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 (2 * A382732 n).toNat

end

end A073089.P18424835426323722176

namespace A073089

/-- `A014707(2*A382732(n))` -/
def P18424835426323722176.Spec : Prop :=
  ∀ n, P18424835426323722176.a n = A073089 (n + 1)

end A073089

/-! ## A073089.P9625078003007881441

`A059125(2*A382732(n))`
-/

namespace A073089.P9625078003007881441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059125 (2 * A382732 n).toNat

end

end A073089.P9625078003007881441

namespace A073089

/-- `A059125(2*A382732(n))` -/
def P9625078003007881441.Spec : Prop :=
  ∀ n, P9625078003007881441.a n = A073089 (n + 1)

end A073089

/-! ## A073089.P5585749092525336423

`and(A054977(n), A088585(n))`
-/

namespace A073089.P5585749092525336423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054977 n) (A088585 n)

end

end A073089.P5585749092525336423

namespace A073089

/-- `and(A054977(n), A088585(n))` -/
def P5585749092525336423.Spec : Prop :=
  ∀ n, P5585749092525336423.a n = A073089 (n + 1)

end A073089

/-!
# A073090: Number of permutations p of (1,2,3,...,n) such that 1/p(1) + 2/p(2) + ... + n/p(n) is an integer.

The programs for A073090, there is no canonical definition to state claims against.
-/

/-! ## A073090.P11740037091784840863

`A349277(∑[n+1])`
-/

namespace A073090.P11740037091784840863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349277 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A073090.P11740037091784840863

/-! ## A073090.P1794429151795963854

`A349277(A025747(n))+A185063(n)`
-/

namespace A073090.P1794429151795963854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349277 (A025747 n).toNat + A185063 n

end

end A073090.P1794429151795963854

/-! ## A073090.P11536197817691105113

`A349277(A025747(n))%A008892(n)`
-/

namespace A073090.P11536197817691105113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349277 (A025747 n).toNat) (A008892 n)

end

end A073090.P11536197817691105113

/-! ## A073090.P16012873000480147456

`gcd(A000038(n), A349277(A025747(n)))`
-/

namespace A073090.P16012873000480147456
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A349277 (A025747 n).toNat)

end

end A073090.P16012873000480147456

/-! ## A073090.P16796175575723856537

`or(A000007(n), A349277(A025747(n)))`
-/

namespace A073090.P16796175575723856537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A349277 (A025747 n).toNat)

end

end A073090.P16796175575723856537

/-!
# A073091: Number of ways to express n as (x^3+y^3+z^3)/(x+y+z) 1<=x<=y<=z<=n.

The programs for A073091, there is no canonical definition to state claims against.
-/

/-! ## A073091.P9904711146923178052

`and(A000034(A264583(n+1)), A259088(n+1))`
-/

namespace A073091.P9904711146923178052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000034 (A264583 (n + 1)).toNat) (A259088 (n + 1))

end

end A073091.P9904711146923178052

/-! ## A073091.P16975653998981253445

`A052882(and(A284463(n), A329689(n)))`
-/

namespace A073091.P16975653998981253445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052882 (Int.land (A284463 n) (A329689 n)).toNat

end

end A073091.P16975653998981253445

/-! ## A073091.P9067975232110994404

`A001222((and(A284463(n), A329689(n))+1)!)`
-/

namespace A073091.P9067975232110994404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.factorial (Int.land (A284463 n) (A329689 n) + 1).toNat)

end

end A073091.P9067975232110994404

/-! ## A073091.P7690933759957845342

`A086009(A079500(n)+A001221(n+1))`
-/

namespace A073091.P7690933759957845342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086009 (A079500 n + A001221 (n + 1)).toNat

end

end A073091.P7690933759957845342

/-! ## A073091.P7072175157055033786

`A056976(A270950(2*n)+A000217(2*(n+2)))`
-/

namespace A073091.P7072175157055033786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056976 (A270950 (2 * n) + A000217 (2 * (n + 2))).toNat

end

end A073091.P7072175157055033786

/-!
# A073092: Number of numbers of the form x^2 + y^2 (0 <= x <= y) less than or equal to n.

The programs for A073092, the canonical program `A073092.P2540697640197989039` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073092 has offset 0).

The definition of A073092 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073092.P2540697640197989039

`∑[A000161(n)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A073092

/-- `∑[A000161(n)]` -/
def P2540697640197989039.Spec : Prop :=
  ∀ n, P2540697640197989039.a n = A073092 n

theorem P2540697640197989039.correct : P2540697640197989039.Spec := by
  intro n
  simp only [A073092]

end A073092

/-! ## A073092.P14497168145909328465

`∑[ceil(A000925(n)/2)]`
-/

namespace A073092.P14497168145909328465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000925 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073092.P14497168145909328465

namespace A073092

/-- `∑[ceil(A000925(n)/2)]` -/
def P14497168145909328465.Spec : Prop :=
  ∀ n, P14497168145909328465.a n = A073092 n

end A073092

/-! ## A073092.P2813467576866887577

`∑[A025426(n)+char[n²]]`
-/

namespace A073092.P2813467576866887577
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 n + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073092.P2813467576866887577

namespace A073092

/-- `∑[A025426(n)+char[n²]]` -/
def P2813467576866887577.Spec : Prop :=
  ∀ n, P2813467576866887577.a n = A073092 n

end A073092

/-! ## A073092.P1080133806178037559

`A000161(n%n²)+a(n-1)` with `a(0)=1`
-/

namespace A073092.P1080133806178037559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000161 (n % n ^ 2) + a (n - 1)

end

end A073092.P1080133806178037559

namespace A073092

/-- `A000161(n%n²)+a(n-1)` -/
def P1080133806178037559.Spec : Prop :=
  ∀ n, P1080133806178037559.a n = A073092 n

end A073092

/-! ## A073092.P11939732909843622062

`∑[A110654(A000925(n))]`
-/

namespace A073092.P11939732909843622062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A000925 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073092.P11939732909843622062

namespace A073092

/-- `∑[A110654(A000925(n))]` -/
def P11939732909843622062.Spec : Prop :=
  ∀ n, P11939732909843622062.a n = A073092 n

end A073092

/-! ## A073092.P4585727482681949410

`∑[A004526(A000925(n)+1)]`
-/

namespace A073092.P4585727482681949410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000925 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073092.P4585727482681949410

namespace A073092

/-- `∑[A004526(A000925(n)+1)]` -/
def P4585727482681949410.Spec : Prop :=
  ∀ n, P4585727482681949410.a n = A073092 n

end A073092

/-! ## A073092.P9899134702939161771

`∑[A000164(n)-A025427(n)]`
-/

namespace A073092.P9899134702939161771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n - A025427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073092.P9899134702939161771

namespace A073092

/-- `∑[A000164(n)-A025427(n)]` -/
def P9899134702939161771.Spec : Prop :=
  ∀ n, P9899134702939161771.a n = A073092 n

end A073092

/-! ## A073092.P6142688758028969689

`∑[A002265(2*(A000925(n)+1))]`
-/

namespace A073092.P6142688758028969689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * (A000925 n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073092.P6142688758028969689

namespace A073092

/-- `∑[A002265(2*(A000925(n)+1))]` -/
def P6142688758028969689.Spec : Prop :=
  ∀ n, P6142688758028969689.a n = A073092 n

end A073092

/-! ## A073092.P10444383199531233106

`∑[ceil(A004018(n)/A154041(n+4))]`
-/

namespace A073092.P10444383199531233106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004018 n : ℚ) / (A154041 (n + 4) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073092.P10444383199531233106

namespace A073092

/-- `∑[ceil(A004018(n)/A154041(n+4))]` -/
def P10444383199531233106.Spec : Prop :=
  ∀ n, P10444383199531233106.a n = A073092 n

end A073092

/-! ## A073092.P6065071832474437268

`A000161(2*n)+a(n-1)` with `a(0)=1`
-/

namespace A073092.P6065071832474437268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000161 (2 * n) + a (n - 1)

end

end A073092.P6065071832474437268

namespace A073092

/-- `A000161(2*n)+a(n-1)` -/
def P6065071832474437268.Spec : Prop :=
  ∀ n, P6065071832474437268.a n = A073092 n

end A073092

/-!
# A073093: Number of prime power divisors of n.

The programs for A073093, the canonical program `A073093.P258081957281391684` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073093 has offset 1).

The definition of A073093 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A073093.P258081957281391684

`A001222(n+1)+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A073093

/-- `A001222(n+1)+1` -/
def P258081957281391684.Spec : Prop :=
  ∀ n, P258081957281391684.a n = A073093 (n + 1)

theorem P258081957281391684.correct : P258081957281391684.Spec := by
  intro n
  simp only [A073093, Nat.add_sub_cancel]

end A073093

/-! ## A073093.P10550174424531126767

`a(A032742(n+1)-1)+1` with `a(0)=1`
-/

namespace A073093.P10550174424531126767
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A032742 (n + 1) - 1).toNat + 1

end

end A073093.P10550174424531126767

namespace A073093

/-- `a(A032742(n+1)-1)+1` -/
def P10550174424531126767.Spec : Prop :=
  ∀ n, (P10550174424531126767.a n : ℤ) = A073093 (n + 1)

end A073093

/-! ## A073093.P3792939377465314483

`∑{e}[n+1, #]+1`
-/

namespace A073093.P3792939377465314483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + 1

end

end A073093.P3792939377465314483

namespace A073093

/-- `∑{e}[n+1, #]+1` -/
def P3792939377465314483.Spec : Prop :=
  ∀ n, (P3792939377465314483.a n : ℤ) = A073093 (n + 1)

end A073093

/-! ## A073093.P7821661131338322886

`∑{e}[2*xor(n, -1), #]`
-/

namespace A073093.P7821661131338322886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.xor (n : ℤ) (-1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A073093.P7821661131338322886

namespace A073093

/-- `∑{e}[2*xor(n, -1), #]` -/
def P7821661131338322886.Spec : Prop :=
  ∀ n, (P7821661131338322886.a n : ℤ) = A073093 (n + 1)

end A073093

/-! ## A073093.P12461017463111201146

`∑{e}[1-Δ[-n²], #]`
-/

namespace A073093.P12461017463111201146
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n ^ 2 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f2 (n + 1) - f2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A073093.P12461017463111201146

namespace A073093

/-- `∑{e}[1-Δ[-n²], #]` -/
def P12461017463111201146.Spec : Prop :=
  ∀ n, (P12461017463111201146.a n : ℤ) = A073093 (n + 1)

end A073093

/-! ## A073093.P17167092827191190936

`log2(∏{e}[n+1, 2^#])+1`
-/

namespace A073093.P17167092827191190936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((∏ p ∈ Nat.primeFactors (f1 n), 2 ^ Nat.factorization (f1 n) p : ℕ) : ℝ) + 1

end

end A073093.P17167092827191190936

namespace A073093

/-- `log2(∏{e}[n+1, 2^#])+1` -/
def P17167092827191190936.Spec : Prop :=
  ∀ n, P17167092827191190936.a n = (A073093 (n + 1) : ℝ)

end A073093

/-! ## A073093.P3539766649506252207

`∑{p}[n+1, val(n+1, #)]+1`
-/

namespace A073093.P3539766649506252207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (n + 1) p + 1

end

end A073093.P3539766649506252207

namespace A073093

/-- `∑{p}[n+1, val(n+1, #)]+1` -/
def P3539766649506252207.Spec : Prop :=
  ∀ n, (P3539766649506252207.a n : ℤ) = A073093 (n + 1)

end A073093

/-! ## A073093.P10723156248792486604

`Δ[A022559(n)]+1`
-/

namespace A073093.P10723156248792486604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A073093.P10723156248792486604

namespace A073093

/-- `Δ[A022559(n)]+1` -/
def P10723156248792486604.Spec : Prop :=
  ∀ n, P10723156248792486604.a n = A073093 (n + 1)

end A073093

/-! ## A073093.P6331372128681211830

`a(A089196(n))+1` with `a(0)=1`
-/

namespace A073093.P6331372128681211830
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A089196 n).toNat + 1

end

end A073093.P6331372128681211830

namespace A073093

/-- `a(A089196(n))+1` -/
def P6331372128681211830.Spec : Prop :=
  ∀ n, (P6331372128681211830.a n : ℤ) = A073093 (n + 1)

end A073093

/-! ## A073093.P11354789516503040324

`A064800(n+1)-n`
-/

namespace A073093.P11354789516503040324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064800 (n + 1) - (n : ℤ)

end

end A073093.P11354789516503040324

namespace A073093

/-- `A064800(n+1)-n` -/
def P11354789516503040324.Spec : Prop :=
  ∀ n, P11354789516503040324.a n = A073093 (n + 1)

end A073093

/-! ## A073093.P4802253221688931156

`∑{d}[n+1, A010055(#)]`
-/

namespace A073093.P4802253221688931156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010055 d

end

end A073093.P4802253221688931156

namespace A073093

/-- `∑{d}[n+1, A010055(#)]` -/
def P4802253221688931156.Spec : Prop :=
  ∀ n, P4802253221688931156.a n = A073093 (n + 1)

end A073093

/-! ## A073093.P3101482853044261674

`A005496(∑{e}[n+1, #])`
-/

namespace A073093.P3101482853044261674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A073093.P3101482853044261674

namespace A073093

/-- `A005496(∑{e}[n+1, #])` -/
def P3101482853044261674.Spec : Prop :=
  ∀ n, P3101482853044261674.a n = A073093 (n + 1)

end A073093

/-! ## A073093.P63476117809292994

`A005555(∑{e}[n+1, #])`
-/

namespace A073093.P63476117809292994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A073093.P63476117809292994

namespace A073093

/-- `A005555(∑{e}[n+1, #])` -/
def P63476117809292994.Spec : Prop :=
  ∀ n, P63476117809292994.a n = A073093 (n + 1)

end A073093

/-! ## A073093.P12681466960575268153

`A001222(1-Δ[-n²])`
-/

namespace A073093.P12681466960575268153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (1 - (f1 (n + 1) - f1 n)).toNat

end

end A073093.P12681466960575268153

namespace A073093

/-- `A001222(1-Δ[-n²])` -/
def P12681466960575268153.Spec : Prop :=
  ∀ n, P12681466960575268153.a n = A073093 (n + 1)

end A073093

/-! ## A073093.P8385651463806445533

`2-A317531(2*(n+1))`
-/

namespace A073093.P8385651463806445533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A317531 (2 * (n + 1))

end

end A073093.P8385651463806445533

namespace A073093

/-- `2-A317531(2*(n+1))` -/
def P8385651463806445533.Spec : Prop :=
  ∀ n, P8385651463806445533.a n = A073093 (n + 1)

end A073093

/-! ## A073093.P3271673414700065392

`1-A075795(n+1)+n`
-/

namespace A073093.P3271673414700065392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A075795 (n + 1) + (n : ℤ)

end

end A073093.P3271673414700065392

namespace A073093

/-- `1-A075795(n+1)+n` -/
def P3271673414700065392.Spec : Prop :=
  ∀ n, P3271673414700065392.a n = A073093 (n + 1)

end A073093

/-! ## A073093.P16224220258293257144

`A000005(∏{e}[n+1, 2^#])`
-/

namespace A073093.P16224220258293257144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f1 n), 2 ^ Nat.factorization (f1 n) p)

end

end A073093.P16224220258293257144

namespace A073093

/-- `A000005(∏{e}[n+1, 2^#])` -/
def P16224220258293257144.Spec : Prop :=
  ∀ n, P16224220258293257144.a n = A073093 (n + 1)

end A073093

/-! ## A073093.P7382441433839746031

`∑{d}[n+1, A001221(#)!%2]`
-/

namespace A073093.P7382441433839746031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.factorial (A001221 d).toNat % 2

end

end A073093.P7382441433839746031

namespace A073093

/-- `∑{d}[n+1, A001221(#)!%2]` -/
def P7382441433839746031.Spec : Prop :=
  ∀ n, (P7382441433839746031.a n : ℤ) = A073093 (n + 1)

end A073093

/-! ## A073093.P2407479856153834277

`1+a(A052126(n+1)-1)` with `a(0)=1`
-/

namespace A073093.P2407479856153834277
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  1 + a (A052126 (n + 1) - 1).toNat

end

end A073093.P2407479856153834277

namespace A073093

/-- `1+a(A052126(n+1)-1)` -/
def P2407479856153834277.Spec : Prop :=
  ∀ n, (P2407479856153834277.a n : ℤ) = A073093 (n + 1)

end A073093

/-! ## A073093.P10809917902970160875

`A066959(n+1)/(n+1)+1`
-/

namespace A073093.P10809917902970160875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066959 (n + 1) : ℚ) / (n + 1 : ℚ) + 1

end

end A073093.P10809917902970160875

namespace A073093

/-- `A066959(n+1)/(n+1)+1` -/
def P10809917902970160875.Spec : Prop :=
  ∀ n, P10809917902970160875.a n = (A073093 (n + 1) : ℚ)

end A073093

/-!
# A073094: Final digit of C(2k,k) when not equal to zero.

The programs for A073094, the canonical program `A073094.P6042488046944227531` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073094 has offset 1).

The definition of A073094 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073094.P6042488046944227531

`A008458(A120880(n+1))%10`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A073094

/-- `A008458(A120880(n+1))%10` -/
def P6042488046944227531.Spec : Prop :=
  ∀ n, P6042488046944227531.a n = A073094 (n + 1)

theorem P6042488046944227531.correct : P6042488046944227531.Spec := by
  intro n
  simp only [A073094, Nat.add_sub_cancel]

end A073094

/-! ## A073094.P17200488841698509555

`A000689(A006287(n+1))`
-/

namespace A073094.P17200488841698509555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000689 (A006287 (n + 1)).toNat

end

end A073094.P17200488841698509555

namespace A073094

/-- `A000689(A006287(n+1))` -/
def P17200488841698509555.Spec : Prop :=
  ∀ n, P17200488841698509555.a n = A073094 (n + 1)

end A073094

/-! ## A073094.P2320081662300998392

`A208279(∑[ceil(5^val(n+1, 3)/2)])`
-/

namespace A073094.P2320081662300998392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(5 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208279 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A073094.P2320081662300998392

namespace A073094

/-- `A208279(∑[ceil(5^val(n+1, 3)/2)])` -/
def P2320081662300998392.Spec : Prop :=
  ∀ n, P2320081662300998392.a n = A073094 (n + 1)

end A073094

/-! ## A073094.P13978214868871798482

`A208279(∑[2*(5^val(n+1, 3)+1)/4])`
-/

namespace A073094.P13978214868871798482
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((5 ^ SequenceMachineLib.valuation (n + 1) 3 + 1 : ℚ) / 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208279 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A073094.P13978214868871798482

namespace A073094

/-- `A208279(∑[2*(5^val(n+1, 3)+1)/4])` -/
def P13978214868871798482.Spec : Prop :=
  ∀ n, P13978214868871798482.a n = A073094 (n + 1)

end A073094

/-! ## A073094.P5738012088392785277

`A208279(A037453(n+1))`
-/

namespace A073094.P5738012088392785277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208279 (A037453 (n + 1)).toNat

end

end A073094.P5738012088392785277

namespace A073094

/-- `A208279(A037453(n+1))` -/
def P5738012088392785277.Spec : Prop :=
  ∀ n, P5738012088392785277.a n = A073094 (n + 1)

end A073094

/-! ## A073094.P15483021215227020639

`A208279(lt[1, A208279(n)])`
-/

namespace A073094.P15483021215227020639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208279 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208279 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A073094.P15483021215227020639

namespace A073094

/-- `A208279(lt[1, A208279(n)])` -/
def P15483021215227020639.Spec : Prop :=
  ∀ n, P15483021215227020639.a n = A073094 (n + 1)

end A073094

/-! ## A073094.P10948764495759175216

`A208279(record[A309991(n+1)])`
-/

namespace A073094.P10948764495759175216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208279 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A073094.P10948764495759175216

namespace A073094

/-- `A208279(record[A309991(n+1)])` -/
def P10948764495759175216.Spec : Prop :=
  ∀ n, P10948764495759175216.a n = A073094 (n + 1)

end A073094

/-! ## A073094.P12692431554865871279

`A208279(record[(n+1)%(A208279(n+1)+n)])`
-/

namespace A073094.P12692431554865871279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A208279 (n + 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208279 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A073094.P12692431554865871279

namespace A073094

/-- `A208279(record[(n+1)%(A208279(n+1)+n)])` -/
def P12692431554865871279.Spec : Prop :=
  ∀ n, P12692431554865871279.a n = A073094 (n + 1)

end A073094

/-! ## A073094.P2411103511049416120

`A208279(∑[A048673(A038500(n+1))])`
-/

namespace A073094.P2411103511049416120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (A038500 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208279 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A073094.P2411103511049416120

namespace A073094

/-- `A208279(∑[A048673(A038500(n+1))])` -/
def P2411103511049416120.Spec : Prop :=
  ∀ n, P2411103511049416120.a n = A073094 (n + 1)

end A073094

/-!
# A073096: Maximal element in continued fraction for s(n) = sum( k>=n,1/2^(2^k) ).

The programs for A073096, there is no canonical definition to state claims against.
-/

/-! ## A073096.P9276247801850037897

`4^ceil(2^(n-1))+2`
-/

namespace A073096.P9276247801850037897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℤ) + 2

end

end A073096.P9276247801850037897

/-! ## A073096.P5352329309819528152

`lcm(6, A332203(n))`
-/

namespace A073096.P5352329309819528152
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 6 (A332203 n)

end

end A073096.P5352329309819528152

/-! ## A073096.P3495337098038562608

`or(2, A000215(n)+1)`
-/

namespace A073096.P3495337098038562608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A000215 n + 1)

end

end A073096.P3495337098038562608

/-! ## A073096.P572836611954690208

`or(2, A051179(n)+3)`
-/

namespace A073096.P572836611954690208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A051179 n + 3)

end

end A073096.P572836611954690208

/-! ## A073096.P5382788306035238909

`A092297(A171559(n))`
-/

namespace A073096.P5382788306035238909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092297 (A171559 n).toNat

end

end A073096.P5382788306035238909

/-!
# A073097: Let x(n) denote the number of 4's among the n first elements of the continued fraction for sum k>=0 1/2^(2^k) (A007400), y(n) the number of 6's and z(n) the number of 2's. Then a(n)=x(n)-y(n)-z(n)-1.

The programs for A073097, there is no canonical definition to state claims against.
-/

/-! ## A073097.P18164907975177659334

`and(A007400(n+1)+1, gcd(2, n+1))-1`
-/

namespace A073097.P18164907975177659334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007400 (n + 1) + 1) (Nat.gcd 2 (n + 1) : ℤ) - 1

end

end A073097.P18164907975177659334

/-! ## A073097.P6093619130534067775

`A182492(and(3, ∑[5-A007400(n)]))`
-/

namespace A073097.P6093619130534067775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A007400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182492 (Int.land 3 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A073097.P6093619130534067775

/-! ## A073097.P10787727629456060795

`A000041(and(3, ∑[5-A007400(n)]))-2`
-/

namespace A073097.P10787727629456060795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A007400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Int.land 3 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat - 2

end

end A073097.P10787727629456060795

/-! ## A073097.P1601389776572004598

`A005117(and(3, ∑[5-A007400(n)]))-2`
-/

namespace A073097.P1601389776572004598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A007400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (Int.land 3 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat - 2

end

end A073097.P1601389776572004598

/-! ## A073097.P10394107435276810399

`A163805(∑[5-A007400(n)])`
-/

namespace A073097.P10394107435276810399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A007400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163805 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A073097.P10394107435276810399

/-! ## A073097.P9979689871192461716

`A163805(∑[xor(5, A007400(n))])`
-/

namespace A073097.P9979689871192461716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 5 (A007400 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163805 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A073097.P9979689871192461716

/-! ## A073097.P14447440760254444500

`and(A000034(n), A122165(n))-1`
-/

namespace A073097.P14447440760254444500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000034 n) (A122165 n) - 1

end

end A073097.P14447440760254444500

/-! ## A073097.P15260132728034561627

`A163805(A007400(n+1)+n²)`
-/

namespace A073097.P15260132728034561627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163805 (A007400 (n + 1) + (n ^ 2 : ℤ)).toNat

end

end A073097.P15260132728034561627

/-! ## A073097.P3114873067587694111

`A075553(A235063(n))`
-/

namespace A073097.P3114873067587694111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075553 (A235063 n).toNat

end

end A073097.P3114873067587694111

/-! ## A073097.P8383741282345189440

`A008683(lcm(15, A235063(n)))`
-/

namespace A073097.P8383741282345189440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Int.lcm 15 (A235063 n))

end

end A073097.P8383741282345189440

