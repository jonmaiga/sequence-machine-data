import SequenceMachineLib
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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
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
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

/-!
# A349000: a(n) = A323166(A276086(n)), where A323166(n) = gcd(n, usigma(n)), usigma (A034448) is multiplicative with a(p^e) = (p^e)+1, and A276086 gives the prime product form of primorial base expansion of n.

The programs for A349000, there is no canonical definition to state claims against.
-/

/-! ## A349000.P2280877207652939351

`gcd(A276086(n), A348996(n))`
-/

namespace A349000.P2280877207652939351
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A276086 n) (A348996 n)

end

end A349000.P2280877207652939351

/-! ## A349000.P1791452410364978276

`A323166(A276086(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A349000.P1791452410364978276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323166 (A276086 n).toNat

end

end A349000.P1791452410364978276

/-! ## A349000.P10111925109452619646

`gcd(A351225(n)+n, A063919(A351225(n)+n))`
-/

namespace A349000.P10111925109452619646
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A351225 n + (n : ℤ)) (A063919 (A351225 n + (n : ℤ)).toNat)

end

end A349000.P10111925109452619646

/-! ## A349000.P9226515457745976971

`A323166(A351225(n)+n)`
-/

namespace A349000.P9226515457745976971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323166 (A351225 n + (n : ℤ)).toNat

end

end A349000.P9226515457745976971

/-! ## A349000.P1769208904771629014

`A323166(A328844(n)+A328843(n))`
-/

namespace A349000.P1769208904771629014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323166 (A328844 n + A328843 n).toNat

end

end A349000.P1769208904771629014

/-! ## A349000.P89464840509170430

`A323166(A327860(n)-A342016(n))`
-/

namespace A349000.P89464840509170430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323166 (A327860 n - A342016 n).toNat

end

end A349000.P89464840509170430

/-! ## A349000.P13478973648233428217

`A323166(A348949(n)-A348950(n))`
-/

namespace A349000.P13478973648233428217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323166 (A348949 n - A348950 n).toNat

end

end A349000.P13478973648233428217

/-!
# A349001: The number of Lyndon words of size n from an alphabet of 5 letters and 1st and 2nd letter of the alphabet with equal frequency in the words.

The programs for A349001, there is no canonical definition to state claims against.
-/

/-! ## A349001.P553470891411982660

`A071137(A110526(n+2))`
-/

namespace A349001.P553470891411982660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071137 (A110526 (n + 2)).toNat

end

end A349001.P553470891411982660

/-! ## A349001.P3678906705729833697

`A140828(4*A024199(n))`
-/

namespace A349001.P3678906705729833697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140828 (4 * A024199 n).toNat

end

end A349001.P3678906705729833697

/-!
# A349003: Decimal expansion of lim_{n->infinity} E(2*n, n)/n^(2*n), where E(n, x) is the n-th Euler polynomial.

The programs for A349003, there is no canonical definition to state claims against.
-/

/-! ## A349003.P6231004680875603914

`9-A073744(n)`
-/

namespace A349003.P6231004680875603914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A073744 n

end

end A349003.P6231004680875603914

/-!
# A349004: Decimal expansion of lim_{n->infinity} B(2*n, n)/n^(2*n), where B(n, x) is the n-th Bernoulli polynomial.

The programs for A349004, there is no canonical definition to state claims against.
-/

/-! ## A349004.P12156207746958085863

`A073747(n+1)`
-/

namespace A349004.P12156207746958085863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073747 (n + 1 + 1)

end

end A349004.P12156207746958085863

/-! ## A349004.P11197167641157663254

`abs(Δ[-∑[A073747(n)]])`
-/

namespace A349004.P11197167641157663254
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073747 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A349004.P11197167641157663254

/-! ## A349004.P7290308318453100786

`or(A000007(n), A073747(A008619(2*n)))`
-/

namespace A349004.P7290308318453100786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A073747 ((A008619 (2 * n)).toNat + 1))

end

end A349004.P7290308318453100786

/-!
# A349005: a(n) = Sum_{d|n, d^2>=n} 1+d+n/d.

The programs for A349005, the canonical program `A349005.P15599194683630198262` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349005 has offset 1).

The definition of A349005 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038548, A060866, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A349005.P15599194683630198262

`A060866(n+1)+A038548(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A349005

/-- `A060866(n+1)+A038548(n+1)` -/
def P15599194683630198262.Spec : Prop :=
  ∀ n, P15599194683630198262.a n = A349005 (n + 1)

theorem P15599194683630198262.correct : P15599194683630198262.Spec := by
  intro n
  simp only [A349005, Nat.add_sub_cancel]

end A349005

/-! ## A349005.P15626587158158975453

`A060866(n+1)+A072670(n)+1`
-/

namespace A349005.P15626587158158975453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060866 (n + 1) + (A072670 n + 1)

end

end A349005.P15626587158158975453

namespace A349005

/-- `A060866(n+1)+A072670(n)+1` -/
def P15626587158158975453.Spec : Prop :=
  ∀ n, P15626587158158975453.a n = A349005 (n + 1)

end A349005

/-! ## A349005.P4698054981136799671

`A060866(n+1)+Δ[A132106(n)/2]`
-/

namespace A349005.P4698054981136799671
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132106 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060866 (n + 1) : ℚ) + (f1 (n + 1) - f1 n)

end

end A349005.P4698054981136799671

namespace A349005

/-- `A060866(n+1)+Δ[A132106(n)/2]` -/
def P4698054981136799671.Spec : Prop :=
  ∀ n, P4698054981136799671.a n = (A349005 (n + 1) : ℚ)

end A349005

/-! ## A349005.P15299414898905966459

`ceil(A060866(n+1)+A000005(n+1)/2)`
-/

namespace A349005.P15299414898905966459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A060866 (n + 1) : ℚ) + (A000005 (n + 1) : ℚ) / 2⌉

end

end A349005.P15299414898905966459

namespace A349005

/-- `ceil(A060866(n+1)+A000005(n+1)/2)` -/
def P15299414898905966459.Spec : Prop :=
  ∀ n, P15299414898905966459.a n = A349005 (n + 1)

end A349005

/-! ## A349005.P14196659357269406369

`A060866(n+1)+round(A000005(2*n+1-n)/2)`
-/

namespace A349005.P14196659357269406369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060866 (n + 1) + SequenceMachineLib.roundAway ((A000005 (2 * n + 1 - n) : ℚ) / 2)

end

end A349005.P14196659357269406369

namespace A349005

/-- `A060866(n+1)+round(A000005(2*n+1-n)/2)` -/
def P14196659357269406369.Spec : Prop :=
  ∀ n, P14196659357269406369.a n = A349005 (n + 1)

end A349005

/-! ## A349005.P15775592348366029141

`A060866(n+1)+floor((A000005(C(n+1, n))+1)/2)`
-/

namespace A349005.P15775592348366029141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060866 (n + 1) + ⌊(A000005 (Nat.choose (n + 1) n) + 1 : ℚ) / 2⌋

end

end A349005.P15775592348366029141

namespace A349005

/-- `A060866(n+1)+floor((A000005(C(n+1, n))+1)/2)` -/
def P15775592348366029141.Spec : Prop :=
  ∀ n, P15775592348366029141.a n = A349005 (n + 1)

end A349005

/-! ## A349005.P768935145636593622

`A060866(n+1)+A357259(n+1)-A079667(n+1)`
-/

namespace A349005.P768935145636593622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060866 (n + 1) + (A357259 (n + 1) - A079667 (n + 1))

end

end A349005.P768935145636593622

namespace A349005

/-- `A060866(n+1)+A357259(n+1)-A079667(n+1)` -/
def P768935145636593622.Spec : Prop :=
  ∀ n, P768935145636593622.a n = A349005 (n + 1)

end A349005

/-! ## A349005.P9607513319504937750

`ceil(A000005(n+1)/2)+A037213(n+1)+A000203(n+1)`
-/

namespace A349005.P9607513319504937750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000005 (n + 1) : ℚ) / 2⌉ + (A037213 (n + 1) + A000203 (n + 1))

end

end A349005.P9607513319504937750

namespace A349005

/-- `ceil(A000005(n+1)/2)+A037213(n+1)+A000203(n+1)` -/
def P9607513319504937750.Spec : Prop :=
  ∀ n, P9607513319504937750.a n = A349005 (n + 1)

end A349005

/-! ## A349005.P8011368620794066121

`round(A000005(2*n+1-n)/2)+A037213(n+1)+A000203(n+1)`
-/

namespace A349005.P8011368620794066121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000005 (2 * n + 1 - n) : ℚ) / 2) + (A037213 (n + 1) + A000203 (n + 1))

end

end A349005.P8011368620794066121

namespace A349005

/-- `round(A000005(2*n+1-n)/2)+A037213(n+1)+A000203(n+1)` -/
def P8011368620794066121.Spec : Prop :=
  ∀ n, P8011368620794066121.a n = A349005 (n + 1)

end A349005

/-! ## A349005.P8571013775941583975

`A069291((n+1)²)+A060866(n+1)`
-/

namespace A349005.P8571013775941583975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069291 ((n + 1) ^ 2) + A060866 (n + 1)

end

end A349005.P8571013775941583975

namespace A349005

/-- `A069291((n+1)²)+A060866(n+1)` -/
def P8571013775941583975.Spec : Prop :=
  ∀ n, P8571013775941583975.a n = A349005 (n + 1)

end A349005

/-!
# A349006: a(1) = 1; for n > 1, a(n) is the smallest number m such that sigma(m) = tau(m)^n or 0 if no such m exists.

The programs for A349006, there is no canonical definition to state claims against.
-/

/-! ## A349006.P6443663589059298207

`A319068((2^∑{e}[n+1, #])^(n+1))`
-/

namespace A349006.P6443663589059298207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319068 ((2 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) ^ (n + 1))

end

end A349006.P6443663589059298207

/-! ## A349006.P7977052980063931070

`A057637(2^A066959(n+1))`
-/

namespace A349006.P7977052980063931070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A066959 (n + 1) : ℤ))).toNat

end

end A349006.P7977052980063931070

/-! ## A349006.P12176926377606795003

`A375228(A001223(n+1)^(n+1))`
-/

namespace A349006.P12176926377606795003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375228 (A001223 (n + 1) ^ (n + 1)).toNat

end

end A349006.P12176926377606795003

/-!
# A349007: a(1) = 1; for n > 1, a(n) is the largest number m such that sigma(m) = tau(m)^n or 0 if no such m exists.

The programs for A349007, there is no canonical definition to state claims against.
-/

/-! ## A349007.P7145104863376593376

`A051281(A349917(∑[A349837(n+1)]))`
-/

namespace A349007.P7145104863376593376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349837 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051281 (A349917 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A349007.P7145104863376593376

/-! ## A349007.P6377867330670680626

`A349838(∑[A349837(n+1)])`
-/

namespace A349007.P6377867330670680626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349837 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349838 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A349007.P6377867330670680626

/-!
# A349008: Area of the convex hull around R5 dragon curve expansion level n.

The programs for A349008, there is no canonical definition to state claims against.
-/

/-! ## A349008.P9567765018976545532

`A102722(A102718(n)+A102699(2*n+1))`
-/

namespace A349008.P9567765018976545532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102722 (A102718 n + A102699 (2 * n + 1)).toNat

end

end A349008.P9567765018976545532

/-!
# A349011: G.f. A(x) satisfies: A(x) = (1 - x * A(-x)) / (1 - 2 * x * A(x)).

The programs for A349011, there is no canonical definition to state claims against.
-/

/-! ## A349011.P18083287673140729900

`A352695(∑[ceil(abs((1-n)/2))]²)`
-/

namespace A349011.P18083287673140729900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|(1 - (n : ℤ) : ℚ) / 2|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352695 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A349011.P18083287673140729900

/-! ## A349011.P17869758723750087756

`or(1, A062401(A060015(n+1)))`
-/

namespace A349011.P17869758723750087756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A062401 (A060015 (n + 1)).toNat)

end

end A349011.P17869758723750087756

/-!
# A349012: G.f. A(x) satisfies: A(x) = (1 + x * A(2*x)) / (1 - x * A(x)).

The programs for A349012, there is no canonical definition to state claims against.
-/

/-! ## A349012.P9336878409521883479

`A000010(A277307(n+1)+A132601(n+5))`
-/

namespace A349012.P9336878409521883479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A277307 (n + 1) + A132601 (n + 5)).toNat

end

end A349012.P9336878409521883479

/-!
# A349013: G.f. A(x) satisfies: A(x) = (1 + x * A(2*x)) / (1 - x^2 * A(x)).

The programs for A349013, there is no canonical definition to state claims against.
-/

/-! ## A349013.P17813375889681530225

`A188015(2^C(n, 2))`
-/

namespace A349013.P17813375889681530225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188015 (2 ^ Nat.choose n 2)

end

end A349013.P17813375889681530225

/-! ## A349013.P16412188015822137430

`A188015(A006125(n))`
-/

namespace A349013.P16412188015822137430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188015 (A006125 n).toNat

end

end A349013.P16412188015822137430

/-!
# A349014: G.f. A(x) satisfies: A(x) = 1 + x + x^2 * A(x) / (1 - x) + x^2 * A(x)^2.

The programs for A349014, there is no canonical definition to state claims against.
-/

/-! ## A349014.P14257192542117846710

`A003018(n+1)-A319951(A036647(n))`
-/

namespace A349014.P14257192542117846710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003018 (n + 1) - A319951 (A036647 n).toNat

end

end A349014.P14257192542117846710

/-! ## A349014.P15011856028132790343

`A003018(n+1)-A048793(A125591(n)²)`
-/

namespace A349014.P15011856028132790343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003018 (n + 1) - A048793 (A125591 n ^ 2).toNat

end

end A349014.P15011856028132790343

/-! ## A349014.P8453052972590759086

`A178798(A274937(n))+A003018(n+1)`
-/

namespace A349014.P8453052972590759086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A274937 n).toNat + A003018 (n + 1)

end

end A349014.P8453052972590759086

/-! ## A349014.P708855860049430701

`A321447(A293607(n))+A003018(n+1)`
-/

namespace A349014.P708855860049430701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321447 (A293607 n).toNat + A003018 (n + 1)

end

end A349014.P708855860049430701

/-! ## A349014.P5320565308500857802

`A003018(n+1)-A024155(A000111(n))`
-/

namespace A349014.P5320565308500857802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003018 (n + 1) - A024155 (A000111 n).toNat

end

end A349014.P5320565308500857802

/-!
# A349015: G.f. A(x) satisfies: A(x) = 1 + x * A(x) / (1 - x) - x * A(x)^2.

The programs for A349015, there is no canonical definition to state claims against.
-/

/-! ## A349015.P2508565767968700062

`∑[A007477(abs(1-n))*A033999(n)]`
-/

namespace A349015.P2508565767968700062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007477 |1 - (n : ℤ)|.toNat * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349015.P2508565767968700062

/-!
# A349016: G.f. A(x) satisfies: A(x) = 1 + x * A(-x) / (1 - x) + x * A(x)^2.

The programs for A349016, there is no canonical definition to state claims against.
-/

/-! ## A349016.P13243885308716255877

`A001096(n)!+gcd(2*n, ∑[n])`
-/

namespace A349016.P13243885308716255877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A001096 n).toNat + Nat.gcd (2 * n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A349016.P13243885308716255877

/-! ## A349016.P9137273328617805928

`∑[A002333(A129481(n))]`
-/

namespace A349016.P9137273328617805928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002333 (A129481 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349016.P9137273328617805928

/-!
# A349017: G.f. A(x) satisfies A(x) = 1/(1 - x/(1 - x*A(x)))^3.

The programs for A349017, there is no canonical definition to state claims against.
-/

/-! ## A349017.P7939124800296580419

`∑[A263270(A067411(n))]`
-/

namespace A349017.P7939124800296580419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263270 (A067411 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349017.P7939124800296580419

/-! ## A349017.P17877895630278302034

`A302492(A123222(n+1))`
-/

namespace A349017.P17877895630278302034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302492 (A123222 (n + 1)).toNat

end

end A349017.P17877895630278302034

/-!
# A349018: G.f. A(x) satisfies A(x) = 1/(1 - x/(1 - x*A(x)))^4.

The programs for A349018, there is no canonical definition to state claims against.
-/

/-! ## A349018.P10607946786197074349

`A237056(A011782(n)*A018039(n))`
-/

namespace A349018.P10607946786197074349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237056 (A011782 n * A018039 n).toNat

end

end A349018.P10607946786197074349

/-! ## A349018.P18174964474569539500

`A246277(A007776(n+2)*A274174(n+2))`
-/

namespace A349018.P18174964474569539500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (A007776 (n + 2) * A274174 (n + 2)).toNat

end

end A349018.P18174964474569539500

/-!
# A349019: Modified e-perfect numbers: numbers k such that A348963(k) | k.

The programs for A349019, there is no canonical definition to state claims against.
-/

/-! ## A349019.P14654836969155836315

`∪[A005117(n+1), A349020(n+1)]`
-/

namespace A349019.P14654836969155836315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A349019.P14654836969155836315

/-! ## A349019.P10388655209441459216

`∪[record[A007913(n+1)], A349020(n+1)]`
-/

namespace A349019.P10388655209441459216
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A349019.P10388655209441459216

/-! ## A349019.P9883775931192877859

`∪[record[(n+1)*A008683(2*n+1-n)²], A349020(n+1)]`
-/

namespace A349019.P9883775931192877859
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008683 (2 * n + 1 - n) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A349019.P9883775931192877859

/-! ## A349019.P2813568861744150005

`eq[1, gcd(A285718(n+1), A342806(n+1))]`
-/

namespace A349019.P2813568861744150005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A285718 (n + 1)) (A342806 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A349019.P2813568861744150005

/-!
# A349020: Modified e-perfect numbers (A349019) that are not squarefree.

The programs for A349020, there is no canonical definition to state claims against.
-/

/-! ## A349020.P10005401919410089905

`∩[A013929(n+1), A349019(n+1)]`
-/

namespace A349020.P10005401919410089905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349020.P10005401919410089905

/-! ## A349020.P5865069823435998872

`∩[A049199(n+1), A349019(n+1)]`
-/

namespace A349020.P5865069823435998872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349020.P5865069823435998872

/-! ## A349020.P11564380900413352262

`∩[A080756(n+1), A349019(n+1)]`
-/

namespace A349020.P11564380900413352262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349020.P11564380900413352262

/-! ## A349020.P2859969850407480909

`∩[A126706(n+1), A349019(n+1)]`
-/

namespace A349020.P2859969850407480909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349020.P2859969850407480909

/-! ## A349020.P456947458780124269

`∩[A274141(n+1), A349019(n+1)]`
-/

namespace A349020.P456947458780124269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349020.P456947458780124269

/-! ## A349020.P14162404119287184217

`∩[A284342(n+1), A349019(n+1)]`
-/

namespace A349020.P14162404119287184217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349020.P14162404119287184217

/-! ## A349020.P7525243167497746078

`∩[A348965(n+1), A349019(n+1)]`
-/

namespace A349020.P7525243167497746078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348965 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349020.P7525243167497746078

/-!
# A349021: G.f. satisfies A(x) = 1/(1 - x/(1 - x*A(x))^2)^4.

The programs for A349021, there is no canonical definition to state claims against.
-/

/-! ## A349021.P2567153213446225646

`∑[A237270(A273055(n))]`
-/

namespace A349021.P2567153213446225646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237270 (A273055 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349021.P2567153213446225646

/-!
# A349022: G.f. satisfies A(x) = 1/(1 - x/(1 - x*A(x))^3)^4.

The programs for A349022, there is no canonical definition to state claims against.
-/

/-! ## A349022.P15139559467082238695

`∑[∑[A026113(A001095(n))]]`
-/

namespace A349022.P15139559467082238695
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026113 (A001095 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349022.P15139559467082238695

/-!
# A349023: G.f. satisfies: A(x) = 1/(1 - x/(1 - x*A(x))^4)^2.

The programs for A349023, there is no canonical definition to state claims against.
-/

/-! ## A349023.P11375602982743120673

`A065033(or(A255673(n+1), A255680(2*n+1)))`
-/

namespace A349023.P11375602982743120673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (Int.lor (A255673 (n + 1)) (A255680 (2 * n + 1))).toNat

end

end A349023.P11375602982743120673

/-!
# A349024: G.f. satisfies: A(x) = 1/(1 - x/(1 - x*A(x))^4)^3.

The programs for A349024, there is no canonical definition to state claims against.
-/

/-! ## A349024.P15147313187181573579

`A060384(record[3*(2^(n-1)-a(n-1))])` with `a(0)=4, a(1)=1`
-/

namespace A349024.P15147313187181573579
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [4, 1] fun n f1 =>
  3 * ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A349024.P15147313187181573579

/-!
# A349025: a(n) is multiplicative with a(p^e) = Sum_{d||e} p^(e-d), where d||e are the unitary divisors of e.

The programs for A349025, there is no canonical definition to state claims against.
-/

/-! ## A349025.P16266948971305290349

`A390666(A003557(n+1)^3)`
-/

namespace A349025.P16266948971305290349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390666 (A003557 (n + 1) ^ 3).toNat

end

end A349025.P16266948971305290349

/-! ## A349025.P4935089468957384688

`A034448(A001222(2^((n+1)/∏{p}[n+1, #])))`
-/

namespace A349025.P4935089468957384688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A001222 (SequenceMachineLib.roundAway ((2 : ℝ) ^ ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) : ℝ))).toNat).toNat

end

end A349025.P4935089468957384688

/-! ## A349025.P16476296458694890333

`A034448(((n+1)/∏{p}[n+1, #])%A176211(n+1))`
-/

namespace A349025.P16476296458694890333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))) (A176211 (n + 1))).toNat

end

end A349025.P16476296458694890333

/-! ## A349025.P8751651292436174376

`A034448((n+1)/∏{p}[n+1, #])%A286636(n+4)`
-/

namespace A349025.P8751651292436174376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034448 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat) (A286636 (n + 4))

end

end A349025.P8751651292436174376

/-! ## A349025.P15828664311122216295

`A034448(A066401(((n+1)*∏{p}[n+1, #^-1])²))`
-/

namespace A349025.P15828664311122216295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A066401 (SequenceMachineLib.roundAway (((n + 1 : ℚ) * (∏ p ∈ Nat.primeFactors (f1 n), (p : ℚ) ^ (-1 : ℤ))) ^ 2)).toNat).toNat

end

end A349025.P15828664311122216295

/-! ## A349025.P16543978521449072017

`A034448(gcd(n+1, ∑{p}[n+1, (n+1)/#])%A342525(n+4))`
-/

namespace A349025.P16543978521449072017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (Int.tmod (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))) : ℤ) (A342525 (n + 4))).toNat

end

end A349025.P16543978521449072017

/-! ## A349025.P1854320514180482366

`A034448(A001222(2^A003557(n+1)))`
-/

namespace A349025.P1854320514180482366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A003557 (n + 1) : ℤ))).toNat).toNat

end

end A349025.P1854320514180482366

/-! ## A349025.P11878962855630344192

`A034448(A005361(2^A003557(n+1)))`
-/

namespace A349025.P11878962855630344192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A005361 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A003557 (n + 1) : ℤ))).toNat).toNat

end

end A349025.P11878962855630344192

/-! ## A349025.P4995530641689180922

`A034448(or(A003557(n+1), A151935(n)))`
-/

namespace A349025.P4995530641689180922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (Int.lor (A003557 (n + 1)) (A151935 n)).toNat

end

end A349025.P4995530641689180922

/-!
# A349026: Exponential unitary harmonic numbers: numbers k such that the harmonic mean of the exponential unitary divisors of k is an integer.

The programs for A349026, there is no canonical definition to state claims against.
-/

/-! ## A349026.P1509489165202132768

`∪[record[A007913(n+1)], A349027(n+1)]`
-/

namespace A349026.P1509489165202132768
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A349026.P1509489165202132768

/-! ## A349026.P9083077016307327603

`∪[record[A007947(n+1)], A349027(n+1)]`
-/

namespace A349026.P9083077016307327603
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A349026.P9083077016307327603

/-! ## A349026.P4778034840657549232

`∪[record[A055231(n+1)], A349027(n+1)]`
-/

namespace A349026.P4778034840657549232
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A349026.P4778034840657549232

/-! ## A349026.P693745235863068614

`∪[record[(n+1)*A008683(2*n+1-n)²], A349027(n+1)]`
-/

namespace A349026.P693745235863068614
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008683 (2 * n + 1 - n) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A349026.P693745235863068614

/-!
# A349027: Exponential unitary harmonic numbers (A349026) that are not squarefree.

The programs for A349027, there is no canonical definition to state claims against.
-/

/-! ## A349027.P13446393107910329841

`∩[A013929(n+1), A349026(n+1)]`
-/

namespace A349027.P13446393107910329841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349027.P13446393107910329841

/-! ## A349027.P8031857864039098077

`∩[A080756(n+1), A349026(n+1)]`
-/

namespace A349027.P8031857864039098077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349027.P8031857864039098077

/-! ## A349027.P5609258152287439924

`∩[A126706(n+1), A349026(n+1)]`
-/

namespace A349027.P5609258152287439924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349027.P5609258152287439924

/-! ## A349027.P9620218678035039523

`∩[A284342(n+1), A349026(n+1)]`
-/

namespace A349027.P9620218678035039523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349027.P9620218678035039523

/-! ## A349027.P7274448410258948115

`∩[A349026(n+1), A078147(n)+a(n-1)]` with `a(0)=4`
-/

namespace A349027.P7274448410258948115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A078147 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349027.P7274448410258948115

/-! ## A349027.P15330887012488471598

`∩[A076333(n+1)*A084936(n+1), A349026(n+1)]`
-/

namespace A349027.P15330887012488471598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076333 (n + 1) * A084936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349027.P15330887012488471598

/-!
# A349032: G.f. A(x) satisfies: A(x) = 1 / (1 - x - x * A(-2*x)).

The programs for A349032, there is no canonical definition to state claims against.
-/

/-! ## A349032.P14126422257619533166

`A007432(A052552(n)*A099165(3*(n+1)))`
-/

namespace A349032.P14126422257619533166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007432 (A052552 n * A099165 (3 * (n + 1))).toNat

end

end A349032.P14126422257619533166

/-!
# A349033: G.f. A(x) satisfies: A(x) = 1 / (1 - x - x * A(-3*x)).

The programs for A349033, there is no canonical definition to state claims against.
-/

/-! ## A349033.P17273746962930844783

`A246425(A048615(n+1)*A266004(n+1))`
-/

namespace A349033.P17273746962930844783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 (A048615 (n + 1) * A266004 (n + 1)).toNat

end

end A349033.P17273746962930844783

/-!
# A349035: G.f. A(x) satisfies: A(x) = 1 / (1 - x - x^2 * A(-2*x)).

The programs for A349035, there is no canonical definition to state claims against.
-/

/-! ## A349035.P16638659618723617390

`A030103(A103360(n²))`
-/

namespace A349035.P16638659618723617390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030103 (A103360 (n ^ 2)).toNat

end

end A349035.P16638659618723617390

/-! ## A349035.P1461065943259650348

`A193917(A002978(n+1))`
-/

namespace A349035.P1461065943259650348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193917 (A002978 (n + 1)).toNat

end

end A349035.P1461065943259650348

/-! ## A349035.P7711437452796303711

`A103406(A261104(∏[or(1, n)]))`
-/

namespace A349035.P7711437452796303711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103406 (A261104 (∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A349035.P7711437452796303711

/-!
# A349037: G.f. A(x) satisfies: A(x) = 1 / (1 - x - x^2 * A(-4*x)).

The programs for A349037, there is no canonical definition to state claims against.
-/

/-! ## A349037.P16415248982692831436

`A139712(A007747(n))-A124427(n)`
-/

namespace A349037.P16415248982692831436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139712 (A007747 n).toNat - A124427 n

end

end A349037.P16415248982692831436

/-! ## A349037.P7180644659649064449

`A002024(A134958(n))-A181318(n)`
-/

namespace A349037.P7180644659649064449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A134958 n).toNat - A181318 n

end

end A349037.P7180644659649064449

/-!
# A349038: G.f. A(x) satisfies: A(x) = 1 / (1 + x - 2 * x * A(-2*x)).

The programs for A349038, there is no canonical definition to state claims against.
-/

/-! ## A349038.P8797872215225499595

`A346476(A257083(n!))`
-/

namespace A349038.P8797872215225499595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346476 (A257083 (Nat.factorial n)).toNat

end

end A349038.P8797872215225499595

/-!
# A349039: Square array T(n, k) read by antidiagonals, n, k >= 0; T(n, k) = n^2 - n*k + k^2.

The programs for A349039, the canonical program `A349039.P8820889069148107615` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349039 has offset 0).

The definition of A349039 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349039.P8820889069148107615

`Δ[n²]-A101468(n)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A349039

/-- `Δ[n²]-A101468(n)` -/
def P8820889069148107615.Spec : Prop :=
  ∀ n, P8820889069148107615.a n = A349039 n

theorem P8820889069148107615.correct : P8820889069148107615.Spec := by
  intro n
  simp only [A349039]

end A349039

/-! ## A349039.P9602975339421613972

`A048147(n)-A004247(n)`
-/

namespace A349039.P9602975339421613972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048147 n - A004247 n

end

end A349039.P9602975339421613972

namespace A349039

/-- `A048147(n)-A004247(n)` -/
def P9602975339421613972.Spec : Prop :=
  ∀ n, P9602975339421613972.a n = A349039 n

end A349039

/-! ## A349039.P10725284435097026765

`A004247(n)+A049581(n)²`
-/

namespace A349039.P10725284435097026765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n + A049581 n ^ 2

end

end A349039.P10725284435097026765

namespace A349039

/-- `A004247(n)+A049581(n)²` -/
def P10725284435097026765.Spec : Prop :=
  ∀ n, P10725284435097026765.a n = A349039 n

end A349039

/-! ## A349039.P3326199904012333857

`A004247(n)+A114327(n)²`
-/

namespace A349039.P3326199904012333857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n + A114327 n ^ 2

end

end A349039.P3326199904012333857

namespace A349039

/-- `A004247(n)+A114327(n)²` -/
def P3326199904012333857.Spec : Prop :=
  ∀ n, P3326199904012333857.a n = A349039 n

end A349039

/-! ## A349039.P13809456693927043234

`A215630(n+1)-A101447(n)`
-/

namespace A349039.P13809456693927043234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215630 (n + 1) - A101447 n

end

end A349039.P13809456693927043234

namespace A349039

/-- `A215630(n+1)-A101447(n)` -/
def P13809456693927043234.Spec : Prop :=
  ∀ n, P13809456693927043234.a n = A349039 n

end A349039

/-! ## A349039.P17555479474562108044

`A073254(n)-2*A004247(n)`
-/

namespace A349039.P17555479474562108044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073254 n - 2 * A004247 n

end

end A349039.P17555479474562108044

namespace A349039

/-- `A073254(n)-2*A004247(n)` -/
def P17555479474562108044.Spec : Prop :=
  ∀ n, P17555479474562108044.a n = A349039 n

end A349039

/-! ## A349039.P9884039481682054404

`2*A048147(n)-A073254(n)`
-/

namespace A349039.P9884039481682054404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048147 n - A073254 n

end

end A349039.P9884039481682054404

namespace A349039

/-- `2*A048147(n)-A073254(n)` -/
def P9884039481682054404.Spec : Prop :=
  ∀ n, P9884039481682054404.a n = A349039 n

end A349039

/-! ## A349039.P8749529299118035583

`A004247(n)+(n-A061579(n))²`
-/

namespace A349039.P8749529299118035583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n + ((n : ℤ) - A061579 n) ^ 2

end

end A349039.P8749529299118035583

namespace A349039

/-- `A004247(n)+(n-A061579(n))²` -/
def P8749529299118035583.Spec : Prop :=
  ∀ n, P8749529299118035583.a n = A349039 n

end A349039

/-! ## A349039.P2399510536302122391

`A073254(n)+1-A130154(n+1)`
-/

namespace A349039.P2399510536302122391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073254 n + (1 - A130154 (n + 1))

end

end A349039.P2399510536302122391

namespace A349039

/-- `A073254(n)+1-A130154(n+1)` -/
def P2399510536302122391.Spec : Prop :=
  ∀ n, P2399510536302122391.a n = A349039 n

end A349039

/-! ## A349039.P7903242941536475872

`A073254(n)-A005843(A004247(n))`
-/

namespace A349039.P7903242941536475872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073254 n - A005843 (A004247 n).toNat

end

end A349039.P7903242941536475872

namespace A349039

/-- `A073254(n)-A005843(A004247(n))` -/
def P7903242941536475872.Spec : Prop :=
  ∀ n, P7903242941536475872.a n = A349039 n

end A349039

/-! ## A349039.P6609915293138277212

`A003056(n)²-A008585(A004247(n))`
-/

namespace A349039.P6609915293138277212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n ^ 2 - A008585 (A004247 n).toNat

end

end A349039.P6609915293138277212

namespace A349039

/-- `A003056(n)²-A008585(A004247(n))` -/
def P6609915293138277212.Spec : Prop :=
  ∀ n, P6609915293138277212.a n = A349039 n

end A349039

/-! ## A349039.P6039634390803295781

`A004247(n)+(A002260(n+1)-A004736(n+1))²`
-/

namespace A349039.P6039634390803295781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n + (A002260 (n + 1) - A004736 (n + 1)) ^ 2

end

end A349039.P6039634390803295781

namespace A349039

/-- `A004247(n)+(A002260(n+1)-A004736(n+1))²` -/
def P6039634390803295781.Spec : Prop :=
  ∀ n, P6039634390803295781.a n = A349039 n

end A349039

/-! ## A349039.P17597880004334453332

`A004247(n)+(A003983(n+1)-A051125(n+1))²`
-/

namespace A349039.P17597880004334453332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n + (A003983 (n + 1) - A051125 (n + 1)) ^ 2

end

end A349039.P17597880004334453332

namespace A349039

/-- `A004247(n)+(A003983(n+1)-A051125(n+1))²` -/
def P17597880004334453332.Spec : Prop :=
  ∀ n, P17597880004334453332.a n = A349039 n

end A349039

/-! ## A349039.P13082996396435792431

`A017533(n+1)-(A101468(n)+A017293(n+1))`
-/

namespace A349039.P13082996396435792431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 (n + 1) - (A101468 n + A017293 (n + 1))

end

end A349039.P13082996396435792431

namespace A349039

/-- `A017533(n+1)-(A101468(n)+A017293(n+1))` -/
def P13082996396435792431.Spec : Prop :=
  ∀ n, P13082996396435792431.a n = A349039 n

end A349039

/-! ## A349039.P1780295742288468848

`A003056(n)²-A004526(A287326(n))`
-/

namespace A349039.P1780295742288468848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n ^ 2 - A004526 (A287326 n).toNat

end

end A349039.P1780295742288468848

namespace A349039

/-- `A003056(n)²-A004526(A287326(n))` -/
def P1780295742288468848.Spec : Prop :=
  ∀ n, P1780295742288468848.a n = A349039 n

end A349039

/-!
# A349040: a(n) is the X-coordinate of the n-th point of the terdragon curve; sequence A349041 gives Y-coordinates.

The programs for A349040, there is no canonical definition to state claims against.
-/

/-! ## A349040.P12056174540939113606

`A349041(3*n)-2*A349041(n)`
-/

namespace A349040.P12056174540939113606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349041 (3 * n) - 2 * A349041 n

end

end A349040.P12056174540939113606

/-! ## A349040.P16589257276207270237

`ceil(A349319(2*n)/3)`
-/

namespace A349040.P16589257276207270237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A349319 (2 * n) : ℚ) / 3⌉

end

end A349040.P16589257276207270237

/-! ## A349040.P3747120538680819408

`A371451(A202931(n+1))-A104231(n)`
-/

namespace A349040.P3747120538680819408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371451 (A202931 (n + 1)).toNat - A104231 n

end

end A349040.P3747120538680819408

/-! ## A349040.P11512484418365397902

`A072628(n+1)-A008335(A344614(n))`
-/

namespace A349040.P11512484418365397902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072628 (n + 1) - A008335 (A344614 n).toNat

end

end A349040.P11512484418365397902

/-! ## A349040.P10525911702074268716

`A325989(3*n+5)-A196563(A000029(n+3))`
-/

namespace A349040.P10525911702074268716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325989 (3 * n + 5) - A196563 (A000029 (n + 3)).toNat

end

end A349040.P10525911702074268716

/-!
# A349041: a(n) is the Y-coordinate of the n-th point of the terdragon curve; sequence A349040 gives X-coordinates.

The programs for A349041, there is no canonical definition to state claims against.
-/

/-! ## A349041.P4893374669712454803

`A349040(n)-A349040(3*n)`
-/

namespace A349041.P4893374669712454803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349040 n - A349040 (3 * n)

end

end A349041.P4893374669712454803

/-! ## A349041.P13850196958328154283

`A349040(n)+A349040(3*n)/A153881(n+1)`
-/

namespace A349041.P13850196958328154283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349040 n : ℚ) + (A349040 (3 * n) : ℚ) / (A153881 (n + 1) : ℚ)

end

end A349041.P13850196958328154283

/-! ## A349041.P5000213864311983039

`round(A349320(2*n)/3)`
-/

namespace A349041.P5000213864311983039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A349320 (2 * n) : ℚ) / 3)

end

end A349041.P5000213864311983039

/-! ## A349041.P12677104591640316971

`-(A349040(9*n)/3)`
-/

namespace A349041.P12677104591640316971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A349040 (9 * n) : ℚ) / 3)

end

end A349041.P12677104591640316971

/-! ## A349041.P67955429699413825

`A349040(9*n)/3*A134824(n)`
-/

namespace A349041.P67955429699413825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349040 (9 * n) : ℚ) / 3 * (A134824 n : ℚ)

end

end A349041.P67955429699413825

/-!
# A349043: Number of solutions to n = s + t such that 1 <= s <= t and s | 2*t.

The programs for A349043, the canonical program `A349043.P12655725755035742614` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349043 has offset 0).

The definition of A349043 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349043.P12655725755035742614

`∑{d}[2*n, C(3%#, 3)]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A349043

/-- `∑{d}[2*n, C(3%#, 3)]` -/
def P12655725755035742614.Spec : Prop :=
  ∀ n, (P12655725755035742614.a n : ℤ) = A349043 n

theorem P12655725755035742614.correct : P12655725755035742614.Spec := by
  intro n
  simp only [A349043]

end A349043

/-! ## A349043.P9508954140293485247

`∑{d}[2*n, round(root(13, -#))]`
-/

namespace A349043.P9508954140293485247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.roundAway ((13 : ℝ) ^ (1 / (-(d : ℤ) : ℝ)))

end

end A349043.P9508954140293485247

namespace A349043

/-- `∑{d}[2*n, round(root(13, -#))]` -/
def P9508954140293485247.Spec : Prop :=
  ∀ n, P9508954140293485247.a n = A349043 n

end A349043

/-! ## A349043.P13943923001762271496

`A002264(∑{d}[2*n, 3%#])`
-/

namespace A349043.P13943923001762271496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (∑ d ∈ Nat.divisors (f1 n), 3 % d)

end

end A349043.P13943923001762271496

namespace A349043

/-- `A002264(∑{d}[2*n, 3%#])` -/
def P13943923001762271496.Spec : Prop :=
  ∀ n, P13943923001762271496.a n = A349043 n

end A349043

/-! ## A349043.P74938431216060924

`A321014(floor(acot(n))+2*n)`
-/

namespace A349043.P74938431216060924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321014 (⌊SequenceMachineLib.acot (n : ℝ)⌋ + (2 * n : ℤ)).toNat

end

end A349043.P74938431216060924

namespace A349043

/-- `A321014(floor(acot(n))+2*n)` -/
def P74938431216060924.Spec : Prop :=
  ∀ n, P74938431216060924.a n = A349043 n

end A349043

/-! ## A349043.P3845851033724611034

`A321014(round(1/acot(n))+n)`
-/

namespace A349043.P3845851033724611034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321014 (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) + (n : ℤ)).toNat

end

end A349043.P3845851033724611034

namespace A349043

/-- `A321014(round(1/acot(n))+n)` -/
def P3845851033724611034.Spec : Prop :=
  ∀ n, P3845851033724611034.a n = A349043 n

end A349043

/-! ## A349043.P15209463598200779951

`A321014(floor(3/acot(n))-n)`
-/

namespace A349043.P15209463598200779951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321014 (⌊3 / SequenceMachineLib.acot (n : ℝ)⌋ - (n : ℤ)).toNat

end

end A349043.P15209463598200779951

namespace A349043

/-- `A321014(floor(3/acot(n))-n)` -/
def P15209463598200779951.Spec : Prop :=
  ∀ n, P15209463598200779951.a n = A349043 n

end A349043

/-! ## A349043.P7606760482233809277

`A321014(or(2*n, floor(acot(n))))`
-/

namespace A349043.P7606760482233809277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321014 (Int.lor (2 * n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A349043.P7606760482233809277

namespace A349043

/-- `A321014(or(2*n, floor(acot(n))))` -/
def P7606760482233809277.Spec : Prop :=
  ∀ n, P7606760482233809277.a n = A349043 n

end A349043

/-! ## A349043.P2465345430266368310

`A321014(xor(2*n, floor(acot(n))))`
-/

namespace A349043.P2465345430266368310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321014 (Int.xor (2 * n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A349043.P2465345430266368310

namespace A349043

/-- `A321014(xor(2*n, floor(acot(n))))` -/
def P2465345430266368310.Spec : Prop :=
  ∀ n, P2465345430266368310.a n = A349043 n

end A349043

/-! ## A349043.P6108621671645802969

`A321014(round(acot(n)+n)+n)`
-/

namespace A349043.P6108621671645802969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321014 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) + (n : ℤ)).toNat

end

end A349043.P6108621671645802969

namespace A349043

/-- `A321014(round(acot(n)+n)+n)` -/
def P6108621671645802969.Spec : Prop :=
  ∀ n, P6108621671645802969.a n = A349043 n

end A349043

/-! ## A349043.P9566216110335448097

`A321014(abs(1-n)+1+n)`
-/

namespace A349043.P9566216110335448097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321014 (|1 - (n : ℤ)| + 1 + (n : ℤ)).toNat

end

end A349043.P9566216110335448097

namespace A349043

/-- `A321014(abs(1-n)+1+n)` -/
def P9566216110335448097.Spec : Prop :=
  ∀ n, P9566216110335448097.a n = A349043 n

end A349043

/-! ## A349043.P6121368853768890249

`A072527(2*n+3)`
-/

namespace A349043.P6121368853768890249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072527 (2 * n + 3)

end

end A349043.P6121368853768890249

namespace A349043

/-- `A072527(2*n+3)` -/
def P6121368853768890249.Spec : Prop :=
  ∀ n, P6121368853768890249.a n = A349043 n

end A349043

/-!
# A349047: G.f. A(x) satisfies: A(x) = 1 / (1 - x + x^3 * A(x)).

The programs for A349047, there is no canonical definition to state claims against.
-/

/-! ## A349047.P650739167211591229

`Δ[A174015(n+1)]`
-/

namespace A349047.P650739167211591229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174015 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A349047.P650739167211591229

/-! ## A349047.P17524419754982563123

`A174015(n+2)-A174015(n+1)`
-/

namespace A349047.P17524419754982563123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174015 (n + 2) - A174015 (n + 1)

end

end A349047.P17524419754982563123

/-! ## A349047.P10285503560759503987

`Δ[-A168505(n+1)]`
-/

namespace A349047.P10285503560759503987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A168505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A349047.P10285503560759503987

/-! ## A349047.P14083783409439391349

`Δ[Δ[a(n-1)-A168505(n)]]` with `a(0)=1`
-/

namespace A349047.P14083783409439391349
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) - A168505 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A349047.P14083783409439391349

/-! ## A349047.P8629194394481604039

`A168505(n+1)-A168505(n+2)`
-/

namespace A349047.P8629194394481604039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168505 (n + 1) - A168505 (n + 2)

end

end A349047.P8629194394481604039

/-! ## A349047.P15993591978888353405

`Δ[A174014(∑[n+1])]`
-/

namespace A349047.P15993591978888353405
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174014 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A349047.P15993591978888353405

/-!
# A349049: Number of prime factors (with multiplicity) of the denominator of the harmonic number H(n) = Sum_{k=1..n} 1/k.

The programs for A349049, the canonical program `A349049.P16880800046104447687` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349049 has offset 1).

The definition of A349049 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1092 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349049.P16880800046104447687

`A025528(n+1)-A001222(A110566(n+1))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A349049

/-- `A025528(n+1)-A001222(A110566(n+1))` -/
def P16880800046104447687.Spec : Prop :=
  ∀ n, P16880800046104447687.a n = A349049 (n + 1)

theorem P16880800046104447687.correct : P16880800046104447687.Spec := by
  intro n
  simp only [A349049, Nat.add_sub_cancel]

end A349049

/-! ## A349049.P11512910399827860177

`A065515(n+1)-A073093(A110566(n+1))`
-/

namespace A349049.P11512910399827860177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065515 (n + 1) - A073093 (A110566 (n + 1)).toNat

end

end A349049.P11512910399827860177

namespace A349049

/-- `A065515(n+1)-A073093(A110566(n+1))` -/
def P11512910399827860177.Spec : Prop :=
  ∀ n, P11512910399827860177.a n = A349049 (n + 1)

end A349049

/-! ## A349049.P10185798407874117113

`A065515(n+1)-A104482(A110566(n+1)²)`
-/

namespace A349049.P10185798407874117113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065515 (n + 1) - A104482 (A110566 (n + 1) ^ 2).toNat

end

end A349049.P10185798407874117113

namespace A349049

/-- `A065515(n+1)-A104482(A110566(n+1)²)` -/
def P10185798407874117113.Spec : Prop :=
  ∀ n, P10185798407874117113.a n = A349049 (n + 1)

end A349049

/-! ## A349049.P7190514070001123524

`A065515(n+1)-A000010(A110566(n+1)!)`
-/

namespace A349049.P7190514070001123524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065515 (n + 1) - A000010 (Nat.factorial (A110566 (n + 1)).toNat)

end

end A349049.P7190514070001123524

namespace A349049

/-- `A065515(n+1)-A000010(A110566(n+1)!)` -/
def P7190514070001123524.Spec : Prop :=
  ∀ n, P7190514070001123524.a n = A349049 (n + 1)

end A349049

/-! ## A349049.P13649400556928304329

`A065515(n+1)-A003963(A110566(n+1)!)`
-/

namespace A349049.P13649400556928304329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065515 (n + 1) - A003963 (Nat.factorial (A110566 (n + 1)).toNat)

end

end A349049.P13649400556928304329

namespace A349049

/-- `A065515(n+1)-A003963(A110566(n+1)!)` -/
def P13649400556928304329.Spec : Prop :=
  ∀ n, P13649400556928304329.a n = A349049 (n + 1)

end A349049

/-!
# A349050: Number of multisets of size n that have no alternating permutations and cover an initial interval of positive integers.

The programs for A349050, the canonical program `A349050.P7865045838321686078` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349050 has offset 0).

The definition of A349050 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 651 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349050.P8004698192219698924

`A011782(n)-A349055(n)`
-/

namespace A349050.P8004698192219698924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A349055 n

end

end A349050.P8004698192219698924

namespace A349050

/-- `A011782(n)-A349055(n)` -/
def P8004698192219698924.Spec : Prop :=
  ∀ n, P8004698192219698924.a n = A349050 n

end A349050

/-! ## A349050.P7865045838321686078

`4*(a(n-2)-a(n-4))` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1, a(4)=3`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A349050

/-- `4*(a(n-2)-a(n-4))` -/
def P7865045838321686078.Spec : Prop :=
  ∀ n, P7865045838321686078.a n = A349050 n

theorem P7865045838321686078.correct : P7865045838321686078.Spec := by
  intro n
  simp only [A349050]

end A349050

/-! ## A349050.P14438348986595922686

`A330592(n+1)/A131055(n+1)`
-/

namespace A349050.P14438348986595922686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330592 (n + 1) : ℚ) / (A131055 (n + 1) : ℚ)

end

end A349050.P14438348986595922686

namespace A349050

/-- `A330592(n+1)/A131055(n+1)` -/
def P14438348986595922686.Spec : Prop :=
  ∀ n, P14438348986595922686.a n = (A349050 n : ℚ)

end A349050

/-! ## A349050.P9249186108639932250

`Δ[A131577(n)]-A349055(n)`
-/

namespace A349050.P9249186108639932250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A349055 n

end

end A349050.P9249186108639932250

namespace A349050

/-- `Δ[A131577(n)]-A349055(n)` -/
def P9249186108639932250.Spec : Prop :=
  ∀ n, P9249186108639932250.a n = A349050 n

end A349050

/-! ## A349050.P11297800285671846746

`A007179(n+1)-A336103(n+1)`
-/

namespace A349050.P11297800285671846746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007179 (n + 1) - A336103 (n + 1)

end

end A349050.P11297800285671846746

namespace A349050

/-- `A007179(n+1)-A336103(n+1)` -/
def P11297800285671846746.Spec : Prop :=
  ∀ n, P11297800285671846746.a n = A349050 n

end A349050

/-!
# A349051: Numbers k such that the k-th composition in standard order is an alternating permutation of {1..k} for some k.

The programs for A349051, there is no canonical definition to state claims against.
-/

/-! ## A349051.P4189306444246968278

`A333218(record[A328029(3*n+1)])`
-/

namespace A349051.P4189306444246968278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328029 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333218 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A349051.P4189306444246968278

/-! ## A349051.P846166002900982551

`A333218(lt[A239241(n), A055396(n+4)])`
-/

namespace A349051.P846166002900982551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239241 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333218 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A349051.P846166002900982551

/-! ## A349051.P3814747698637392387

`A333218(lt[A007298(n+1), A300227(2*(n+1))])`
-/

namespace A349051.P3814747698637392387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007298 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300227 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333218 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A349051.P3814747698637392387

/-!
# A349052: Number of weakly alternating compositions of n.

The programs for A349052, there is no canonical definition to state claims against.
-/

/-! ## A349052.P1277786635701737881

`A349800(n)+A025047(n)`
-/

namespace A349052.P1277786635701737881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349800 n + A025047 n

end

end A349052.P1277786635701737881

/-! ## A349052.P3875722621623537902

`abs(A349053(n)-ceil(2^(n-1)))`
-/

namespace A349052.P3875722621623537902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A349053 n - ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉|

end

end A349052.P3875722621623537902

/-! ## A349052.P11538367361388425290

`A011782(n)-A349053(n)`
-/

namespace A349052.P11538367361388425290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A349053 n

end

end A349052.P11538367361388425290

/-! ## A349052.P3185695531985913067

`∑[A034008(n)]-A349053(n)`
-/

namespace A349052.P3185695531985913067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A349053 n

end

end A349052.P3185695531985913067

/-! ## A349052.P1921735220612120443

`Δ[A056469(n)]-A349053(n)`
-/

namespace A349052.P1921735220612120443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056469 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A349053 n

end

end A349052.P1921735220612120443

/-! ## A349052.P2348961483158949298

`Δ[A094373(n)]-A349053(n)`
-/

namespace A349052.P2348961483158949298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A349053 n

end

end A349052.P2348961483158949298

/-! ## A349052.P17791201298547653733

`Δ[A131577(n)]-A349053(n)`
-/

namespace A349052.P17791201298547653733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A349053 n

end

end A349052.P17791201298547653733

/-! ## A349052.P1985356939936789557

`A193554(A000217(n))-A349053(n)`
-/

namespace A349052.P1985356939936789557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193554 (A000217 n).toNat - A349053 n

end

end A349052.P1985356939936789557

/-!
# A349053: Number of non-weakly alternating integer compositions of n.

The programs for A349053, there is no canonical definition to state claims against.
-/

/-! ## A349053.P5598822584448176433

`A011782(n)-A349052(n)`
-/

namespace A349053.P5598822584448176433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A349052 n

end

end A349053.P5598822584448176433

/-! ## A349053.P15999025140936764181

`A345192(n)-A349800(n)`
-/

namespace A349053.P15999025140936764181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345192 n - A349800 n

end

end A349053.P15999025140936764181

/-! ## A349053.P1983524475032581912

`∑[A034008(n)]-A349052(n)`
-/

namespace A349053.P1983524475032581912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A349052 n

end

end A349053.P1983524475032581912

/-! ## A349053.P15817236871780378452

`Δ[A056469(n)]-A349052(n)`
-/

namespace A349053.P15817236871780378452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056469 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A349052 n

end

end A349053.P15817236871780378452

/-! ## A349053.P6297052042722157092

`Δ[A094373(n)]-A349052(n)`
-/

namespace A349053.P6297052042722157092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A349052 n

end

end A349053.P6297052042722157092

/-! ## A349053.P6191138746992693444

`Δ[A131577(n)]-A349052(n)`
-/

namespace A349053.P6191138746992693444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A349052 n

end

end A349053.P6191138746992693444

/-!
# A349054: Number of alternating strict compositions of n. Number of alternating (up/down or down/up) permutations of strict integer partitions of n.

The programs for A349054, there is no canonical definition to state claims against.
-/

/-! ## A349054.P4849938874534670478

`2*A129838(n)-1`
-/

namespace A349054.P4849938874534670478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A129838 n - 1

end

end A349054.P4849938874534670478

/-! ## A349054.P449674545886546749

`or(-1, A003558(n))+2*A129838(n)`
-/

namespace A349054.P449674545886546749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-1) (A003558 n) + 2 * A129838 n

end

end A349054.P449674545886546749

/-! ## A349054.P2292750427438791013

`A008683(A007821(n+1))+2*A129838(n)`
-/

namespace A349054.P2292750427438791013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A007821 (n + 1)).toNat + 2 * A129838 n

end

end A349054.P2292750427438791013

/-! ## A349054.P5717921459353951074

`A008683(A083370(n+1))+2*A129838(n)`
-/

namespace A349054.P5717921459353951074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A083370 (n + 1)).toNat + 2 * A129838 n

end

end A349054.P5717921459353951074

/-! ## A349054.P7546517141536777337

`A008683(A142550(n+1))+2*A129838(n)`
-/

namespace A349054.P7546517141536777337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A142550 (n + 1)).toNat + 2 * A129838 n

end

end A349054.P7546517141536777337

/-!
# A349055: Number of multisets of size n that have an alternating permutation and cover an initial interval of positive integers.

The programs for A349055, the canonical program `A349055.P1187177284476940018` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349055 has offset 0).

The definition of A349055 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349050, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A349055.P1187177284476940018

`A011782(n)-A349050(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A349055

/-- `A011782(n)-A349050(n)` -/
def P1187177284476940018.Spec : Prop :=
  ∀ n, P1187177284476940018.a n = A349055 n

theorem P1187177284476940018.correct : P1187177284476940018.Spec := by
  intro n
  simp only [A349055]

end A349055

/-! ## A349055.P15533033765432009458

`A016116(A004273(n))-A349050(n)`
-/

namespace A349055.P15533033765432009458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A004273 n).toNat - A349050 n

end

end A349055.P15533033765432009458

namespace A349055

/-- `A016116(A004273(n))-A349050(n)` -/
def P15533033765432009458.Spec : Prop :=
  ∀ n, P15533033765432009458.a n = A349055 n

end A349055

/-! ## A349055.P967609072346912319

`Δ[A131577(n)]-A349050(n)`
-/

namespace A349055.P967609072346912319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A349050 n

end

end A349055.P967609072346912319

namespace A349055

/-- `Δ[A131577(n)]-A349050(n)` -/
def P967609072346912319.Spec : Prop :=
  ∀ n, P967609072346912319.a n = A349055 n

end A349055

/-! ## A349055.P16653787850022296874

`A296612(A000217(n))-A349050(n)`
-/

namespace A349055.P16653787850022296874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296612 (A000217 n).toNat - A349050 n

end

end A349055.P16653787850022296874

namespace A349055

/-- `A296612(A000217(n))-A349050(n)` -/
def P16653787850022296874.Spec : Prop :=
  ∀ n, P16653787850022296874.a n = A349055 n

end A349055

/-! ## A349055.P9107583861430319

`A000010(A000079(n))-A349050(n)`
-/

namespace A349055.P9107583861430319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000079 n).toNat - A349050 n

end

end A349055.P9107583861430319

namespace A349055

/-- `A000010(A000079(n))-A349050(n)` -/
def P9107583861430319.Spec : Prop :=
  ∀ n, P9107583861430319.a n = A349055 n

end A349055

/-!
# A349056: Number of weakly alternating permutations of the multiset of prime factors of n.

The programs for A349056, there is no canonical definition to state claims against.
-/

/-! ## A349056.P3413925142940538119

`gcd(A008480(n+1)!, floor(∏{e}[n+1, #+1]/2))`
-/

namespace A349056.P3413925142940538119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial (A008480 (n + 1)).toNat : ℤ) ⌊((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) / 2⌋

end

end A349056.P3413925142940538119

/-! ## A349056.P2146785351422454782

`A299757(∑{e}[n+1, #]!/∏{e}[n+1, #!])+1`
-/

namespace A349056.P2146785351422454782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299757 (SequenceMachineLib.roundAway ((Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p) : ℕ) : ℚ))).toNat + 1

end

end A349056.P2146785351422454782

/-! ## A349056.P16882816622731872159

`A349798(n+1)+A345164(n+1)`
-/

namespace A349056.P16882816622731872159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349798 (n + 1) + A345164 (n + 1)

end

end A349056.P16882816622731872159

/-! ## A349056.P17401591796481620485

`A008480(n+1)-A349797(n+1)`
-/

namespace A349056.P17401591796481620485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (n + 1) - A349797 (n + 1)

end

end A349056.P17401591796481620485

/-! ## A349056.P3469167309963545974

`A303707(n+1)-A326291(n+1)`
-/

namespace A349056.P3469167309963545974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303707 (n + 1) - A326291 (n + 1)

end

end A349056.P3469167309963545974

/-!
# A349058: Number of weakly alternating patterns of length n.

The programs for A349058, there is no canonical definition to state claims against.
-/

/-! ## A349058.P1674992009551856590

`2*A345194(n)-1`
-/

namespace A349058.P1674992009551856590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A345194 n - 1

end

end A349058.P1674992009551856590

/-! ## A349058.P11835236310893176503

`or(-1, A000041(n))+2*A345194(n)`
-/

namespace A349058.P11835236310893176503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-1) (A000041 n) + 2 * A345194 n

end

end A349058.P11835236310893176503

/-! ## A349058.P16313717479533554862

`log2(1/2)+A020639(2*(n+1))*A345194(n)`
-/

namespace A349058.P16313717479533554862
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((1 : ℚ) / 2 : ℝ) + (A020639 (2 * (n + 1)) * A345194 n : ℝ)

end

end A349058.P16313717479533554862

/-! ## A349058.P6966598856136726420

`A008683(A002146(n))+2*A345194(n)`
-/

namespace A349058.P6966598856136726420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A002146 n).toNat + 2 * A345194 n

end

end A349058.P6966598856136726420

/-! ## A349058.P3909532305538377668

`A000670(n)-A350138(n)`
-/

namespace A349058.P3909532305538377668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 n - A350138 n

end

end A349058.P3909532305538377668

/-!
# A349059: Number of weakly alternating ordered factorizations of n.

The programs for A349059, there is no canonical definition to state claims against.
-/

/-! ## A349059.P11559583313397157835

`A002033(n)-A350139(n+1)`
-/

namespace A349059.P11559583313397157835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 n - A350139 (n + 1)

end

end A349059.P11559583313397157835

/-! ## A349059.P7933186567630306698

`Δ[A173382(n)]-A350139(n+1)`
-/

namespace A349059.P7933186567630306698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173382 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A350139 (n + 1)

end

end A349059.P7933186567630306698

/-! ## A349059.P1204015565555878913

`A074206(n+1)-A350139(n+1)`
-/

namespace A349059.P1204015565555878913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (n + 1) - A350139 (n + 1)

end

end A349059.P1204015565555878913

/-! ## A349059.P14464194335250521569

`∑{d}[n+1, A174725(#)]-A350139(n+1)`
-/

namespace A349059.P14464194335250521569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A174725 d - A350139 (n + 1)

end

end A349059.P14464194335250521569

/-! ## A349059.P1674690100427735110

`A050324(A101296(n+1))-A350139(n+1)`
-/

namespace A349059.P1674690100427735110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050324 (A101296 (n + 1)).toNat - A350139 (n + 1)

end

end A349059.P1674690100427735110

/-! ## A349059.P14073523326087871903

`A345182(A045966(n+1))-A350139(n+1)`
-/

namespace A349059.P14073523326087871903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345182 (A045966 (n + 1)).toNat - A350139 (n + 1)

end

end A349059.P14073523326087871903

/-! ## A349059.P13482959136282911357

`A345182(A297002(n+1))-A350139(n+1)`
-/

namespace A349059.P13482959136282911357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345182 (A297002 (n + 1)).toNat - A350139 (n + 1)

end

end A349059.P13482959136282911357

/-! ## A349059.P5569356029908304416

`A348610(n+1)+A348613(n+1)-A350139(n+1)`
-/

namespace A349059.P5569356029908304416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348610 (n + 1) + (A348613 (n + 1) - A350139 (n + 1))

end

end A349059.P5569356029908304416

/-! ## A349059.P11792039665047685191

`2*A174725(n+1)-A008683(n+1)-A350139(n+1)`
-/

namespace A349059.P11792039665047685191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A174725 (n + 1) - A008683 (n + 1) - A350139 (n + 1)

end

end A349059.P11792039665047685191

/-! ## A349059.P16468617365674592580

`∑{d}[n+1, A008683(#)*A067824((n+1)/#)]-A350139(n+1)`
-/

namespace A349059.P16468617365674592580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A067824 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat - A350139 (n + 1)

end

end A349059.P16468617365674592580

/-!
# A349060: Number of integer partitions of n that are constant or whose part multiplicities, except possibly the first and last, are all even.

The programs for A349060, there is no canonical definition to state claims against.
-/

/-! ## A349060.P4848474591691942041

`A349795(n)+round(cosh(log(acot(n))))`
-/

namespace A349060.P4848474591691942041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349795 n + SequenceMachineLib.roundAway (Real.cosh (Real.log (SequenceMachineLib.acot (n : ℝ))))

end

end A349060.P4848474591691942041

/-! ## A349060.P3001880176066552665

`A349795(n)+A065033(n)`
-/

namespace A349060.P3001880176066552665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349795 n + A065033 n

end

end A349060.P3001880176066552665

/-! ## A349060.P8639913587597100204

`A349795(n)+∑[A266070(n)]`
-/

namespace A349060.P8639913587597100204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349795 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349060.P8639913587597100204

/-! ## A349060.P16784666025552728936

`A349795(n)+A008619(abs(1-n))`
-/

namespace A349060.P16784666025552728936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349795 n + A008619 |1 - (n : ℤ)|.toNat

end

end A349060.P16784666025552728936

/-! ## A349060.P456471275827240474

`A349795(n)+A028310(ceil(n/2))`
-/

namespace A349060.P456471275827240474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349795 n + A028310 ⌈(n : ℚ) / 2⌉.toNat

end

end A349060.P456471275827240474

/-! ## A349060.P17458139839124816328

`A349795(n)+A000007(n)+round(n/2)`
-/

namespace A349060.P17458139839124816328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349795 n + (A000007 n + SequenceMachineLib.roundAway ((n : ℚ) / 2))

end

end A349060.P17458139839124816328

/-! ## A349060.P1876267537485461436

`A349795(n)+A008621(A004273(n))`
-/

namespace A349060.P1876267537485461436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349795 n + A008621 (A004273 n).toNat

end

end A349060.P1876267537485461436

/-! ## A349060.P15559650251151939817

`A349795(n)+A008621(A004275(n))`
-/

namespace A349060.P15559650251151939817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349795 n + A008621 (A004275 n).toNat

end

end A349060.P15559650251151939817

/-! ## A349060.P11883388838393016393

`A349795(n)+A046854(A000124(n))`
-/

namespace A349060.P11883388838393016393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349795 n + A046854 (A000124 n).toNat

end

end A349060.P11883388838393016393

/-! ## A349060.P17596403118560686392

`A349795(n)+A008621(A053438(n))`
-/

namespace A349060.P17596403118560686392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349795 n + A008621 (A053438 n).toNat

end

end A349060.P17596403118560686392

/-!
# A349061: Number of integer partitions of n with at least one part of odd multiplicity that is not the first or last.

The programs for A349061, there is no canonical definition to state claims against.
-/

/-! ## A349061.P18209217490357154910

`A000041(n)-A349060(n)`
-/

namespace A349061.P18209217490357154910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A349060 n

end

end A349061.P18209217490357154910

/-! ## A349061.P14968037860256390198

`A213598(n)-A349060(n)`
-/

namespace A349061.P14968037860256390198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A349060 n

end

end A349061.P14968037860256390198

/-! ## A349061.P11709350717558791285

`∑[A002865(n)]-A349060(n)`
-/

namespace A349061.P11709350717558791285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A349060 n

end

end A349061.P11709350717558791285

/-! ## A349061.P8327871827899941515

`A239830(∑[n])-A349060(n)`
-/

namespace A349061.P8327871827899941515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239830 (∑ j ∈ Finset.range (n + 1), f1 j) - A349060 n

end

end A349061.P8327871827899941515

/-! ## A349061.P2335541520689170181

`A000065(n)+1-A349060(n)`
-/

namespace A349061.P2335541520689170181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A349060 n)

end

end A349061.P2335541520689170181

/-!
# A349062: Powerful numbers (A001694) with a record gap to the next powerful number.

The programs for A349062, there is no canonical definition to state claims against.
-/

/-! ## A349062.P9924377084984193229

`A103954(record[A076446(n+1)])`
-/

namespace A349062.P9924377084984193229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076446 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103954 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A349062.P9924377084984193229

/-! ## A349062.P14580928495951006951

`A103954(record[Δ[A001694(n+1)]])`
-/

namespace A349062.P14580928495951006951
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103954 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A349062.P14580928495951006951

/-! ## A349062.P16064692575295083461

`A103954(record[Δ[A224866(n+1)]])`
-/

namespace A349062.P16064692575295083461
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224866 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103954 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A349062.P16064692575295083461

/-! ## A349062.P6648038591170058584

`A000005(2^n)+A008794(record[A076446(n+1)])-(n+1)`
-/

namespace A349062.P6648038591170058584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076446 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 ^ n) + (A008794 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - (n + 1 : ℤ))

end

end A349062.P6648038591170058584

/-! ## A349062.P13284793846969195781

`∑[A167966((n+1)²)]²`
-/

namespace A349062.P13284793846969195781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167966 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A349062.P13284793846969195781

/-!
# A349064: Numbers k such that A183097(k) > 2*k.

The programs for A349064, there is no canonical definition to state claims against.
-/

/-! ## A349064.P13492054375454573031

`∩[A068935(n+1), A131847(n+1)]`
-/

namespace A349064.P13492054375454573031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131847 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349064.P13492054375454573031

/-! ## A349064.P5902998803904409858

`A033845(n+2)*A361856(A181721(n+1))`
-/

namespace A349064.P5902998803904409858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033845 (n + 2) * A361856 (A181721 (n + 1)).toNat

end

end A349064.P5902998803904409858

/-! ## A349064.P17182532941444462188

`A003586(n+2)*A334586(A316650(n+1))`
-/

namespace A349064.P17182532941444462188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 2) * A334586 (A316650 (n + 1)).toNat

end

end A349064.P17182532941444462188

/-! ## A349064.P4076080584802007808

`A074473(A001787(n+2))*A369374(n+2)`
-/

namespace A349064.P4076080584802007808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074473 (A001787 (n + 2)).toNat * A369374 (n + 2)

end

end A349064.P4076080584802007808

/-!
# A349070: a(n) = T(3*n, n), where T(n, x) is the Chebyshev polynomial of the first kind.

The programs for A349070, there is no canonical definition to state claims against.
-/

/-! ## A349070.P10341732255673158069

`A101124(A139276(n))`
-/

namespace A349070.P10341732255673158069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101124 (A139276 n).toNat

end

end A349070.P10341732255673158069

/-! ## A349070.P11555845100058820617

`A322836(n*A004770(n+1))`
-/

namespace A349070.P11555845100058820617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322836 ((n : ℤ) * A004770 (n + 1)).toNat

end

end A349070.P11555845100058820617

/-! ## A349070.P9166234205660990410

`A322836(A046092(2*n)+n)`
-/

namespace A349070.P9166234205660990410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322836 (A046092 (2 * n) + (n : ℤ)).toNat

end

end A349070.P9166234205660990410

/-! ## A349070.P17645196494441618863

`A322836(A139276(n)+2*n)`
-/

namespace A349070.P17645196494441618863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322836 (A139276 n + (2 * n : ℤ)).toNat

end

end A349070.P17645196494441618863

/-! ## A349070.P11291151082998337465

`A101124(A046092(2*n)-n)`
-/

namespace A349070.P11291151082998337465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101124 (A046092 (2 * n) - (n : ℤ)).toNat

end

end A349070.P11291151082998337465

/-!
# A349071: a(n) = T(n, 2*n), where T(n, x) is the Chebyshev polynomial of the first kind.

The programs for A349071, there is no canonical definition to state claims against.
-/

/-! ## A349071.P11281947461603610309

`A101124(A062728(n))`
-/

namespace A349071.P11281947461603610309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101124 (A062728 n).toNat

end

end A349071.P11281947461603610309

/-! ## A349071.P6290382563462275513

`A322836(A062725(n))`
-/

namespace A349071.P6290382563462275513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322836 (A062725 n).toNat

end

end A349071.P6290382563462275513

/-! ## A349071.P4034566133224730839

`A101124(A062725(n)+n)`
-/

namespace A349071.P4034566133224730839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101124 (A062725 n + (n : ℤ)).toNat

end

end A349071.P4034566133224730839

/-! ## A349071.P14262217755838510853

`A322836(A062728(n)-n)`
-/

namespace A349071.P14262217755838510853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322836 (A062728 n - (n : ℤ)).toNat

end

end A349071.P14262217755838510853

/-! ## A349071.P7911544285671042826

`A101124(A022266(n)+A008586(n))`
-/

namespace A349071.P7911544285671042826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101124 (A022266 n + A008586 n).toNat

end

end A349071.P7911544285671042826

/-!
# A349072: a(n) = T(n, 3*n), where T(n, x) is the Chebyshev polynomial of the first kind.

The programs for A349072, there is no canonical definition to state claims against.
-/

/-! ## A349072.P15926739947377580808

`A101124(A139277(n))`
-/

namespace A349072.P15926739947377580808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101124 (A139277 n).toNat

end

end A349072.P15926739947377580808

/-! ## A349072.P7902181844603898971

`A322836(A139276(n))`
-/

namespace A349072.P7902181844603898971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322836 (A139276 n).toNat

end

end A349072.P7902181844603898971

/-! ## A349072.P9179414554520641794

`A101124(n*A004770(n+1))`
-/

namespace A349072.P9179414554520641794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101124 ((n : ℤ) * A004770 (n + 1)).toNat

end

end A349072.P9179414554520641794

/-! ## A349072.P6566008677552320948

`A101124(A046092(2*n)+n)`
-/

namespace A349072.P6566008677552320948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101124 (A046092 (2 * n) + (n : ℤ)).toNat

end

end A349072.P6566008677552320948

/-! ## A349072.P38298118453291339

`A101124(A139276(n)+2*n)`
-/

namespace A349072.P38298118453291339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101124 (A139276 n + (2 * n : ℤ)).toNat

end

end A349072.P38298118453291339

/-!
# A349073: a(n) = U(2*n, n), where U(n, x) is the Chebyshev polynomial of the second kind.

The programs for A349073, there is no canonical definition to state claims against.
-/

/-! ## A349073.P9983430535086441125

`A097690(round(sqrt(n²+1))+n)`
-/

namespace A349073.P9983430535086441125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097690 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + (n : ℤ)).toNat

end

end A349073.P9983430535086441125

/-! ## A349073.P2259305623757484850

`A228161(A062725(n))`
-/

namespace A349073.P2259305623757484850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228161 (A062725 n).toNat

end

end A349073.P2259305623757484850

/-! ## A349073.P7134845599062502161

`A323182(A062728(n))`
-/

namespace A349073.P7134845599062502161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323182 (A062728 n).toNat

end

end A349073.P7134845599062502161

/-! ## A349073.P9370073109686739131

`A323182(A062725(n)+n)`
-/

namespace A349073.P9370073109686739131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323182 (A062725 n + (n : ℤ)).toNat

end

end A349073.P9370073109686739131

/-! ## A349073.P15599231615564822415

`A228161(A062728(n)-n)`
-/

namespace A349073.P15599231615564822415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228161 (A062728 n - (n : ℤ)).toNat

end

end A349073.P15599231615564822415

/-!
# A349074: a(n) = U(3*n, n), where U(n, x) is the Chebyshev polynomial of the second kind.

The programs for A349074, there is no canonical definition to state claims against.
-/

/-! ## A349074.P11850491809073217529

`A228161(A139276(n))`
-/

namespace A349074.P11850491809073217529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228161 (A139276 n).toNat

end

end A349074.P11850491809073217529

/-! ## A349074.P13119354945045242831

`A323182(n*(A017101(n)+2))`
-/

namespace A349074.P13119354945045242831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323182 ((n : ℤ) * (A017101 n + 2)).toNat

end

end A349074.P13119354945045242831

/-! ## A349074.P139334309027633020

`A323182(A046092(2*n)+n)`
-/

namespace A349074.P139334309027633020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323182 (A046092 (2 * n) + (n : ℤ)).toNat

end

end A349074.P139334309027633020

/-!
# A349075: a(n) = U(n, 2*n), where U(n, x) is the Chebyshev polynomial of the second kind.

The programs for A349075, there is no canonical definition to state claims against.
-/

/-! ## A349075.P17549043413698480418

`A228161(A062728(n))`
-/

namespace A349075.P17549043413698480418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228161 (A062728 n).toNat

end

end A349075.P17549043413698480418

/-! ## A349075.P8796342417854604997

`A323182(A062725(n))`
-/

namespace A349075.P8796342417854604997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323182 (A062725 n).toNat

end

end A349075.P8796342417854604997

/-! ## A349075.P5905094298308739325

`A228161(A062725(n)+n)`
-/

namespace A349075.P5905094298308739325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228161 (A062725 n + (n : ℤ)).toNat

end

end A349075.P5905094298308739325

/-! ## A349075.P17981599157736837158

`A323182(A062728(n)-n)`
-/

namespace A349075.P17981599157736837158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323182 (A062728 n - (n : ℤ)).toNat

end

end A349075.P17981599157736837158

/-! ## A349075.P10464880153549482830

`A228161(A022266(n)+A008586(n))`
-/

namespace A349075.P10464880153549482830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228161 (A022266 n + A008586 n).toNat

end

end A349075.P10464880153549482830

/-!
# A349076: a(n) = U(n, 3*n), where U(n, x) is the Chebyshev polynomial of the second kind.

The programs for A349076, there is no canonical definition to state claims against.
-/

/-! ## A349076.P4449435004078050763

`A228161(A139277(n))`
-/

namespace A349076.P4449435004078050763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228161 (A139277 n).toNat

end

end A349076.P4449435004078050763

/-! ## A349076.P15433585236710141233

`A323182(A139276(n))`
-/

namespace A349076.P15433585236710141233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323182 (A139276 n).toNat

end

end A349076.P15433585236710141233

/-! ## A349076.P4566385034352426373

`A323182(n*A017101(n))`
-/

namespace A349076.P4566385034352426373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323182 ((n : ℤ) * A017101 n).toNat

end

end A349076.P4566385034352426373

/-! ## A349076.P12014067106092953109

`A228161(A139276(n)+2*n)`
-/

namespace A349076.P12014067106092953109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228161 (A139276 n + (2 * n : ℤ)).toNat

end

end A349076.P12014067106092953109

/-! ## A349076.P328985025539828626

`A323182(A046092(2*n)-n)`
-/

namespace A349076.P328985025539828626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323182 (A046092 (2 * n) - (n : ℤ)).toNat

end

end A349076.P328985025539828626

/-!
# A349077: a(n) = 4^n * P(2*n, n), where P(n, x) is n-th Legendre polynomial.

The programs for A349077, there is no canonical definition to state claims against.
-/

/-! ## A349077.P1113622891896976927

`A110124(A062725(n))`
-/

namespace A349077.P1113622891896976927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110124 (A062725 n).toNat

end

end A349077.P1113622891896976927

/-!
# A349079: Numbers k such that there exists m, 1 <= m <= k with the property that A000178(k) / m! is a square, where A000178(k) = k$ = 1!*2!*...*k! is the superfactorial of k.

The programs for A349079, there is no canonical definition to state claims against.
-/

/-! ## A349079.P6807993435967257672

`∪[A349080(n+1), A349081(n+1)]`
-/

namespace A349079.P6807993435967257672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349081 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A349079.P6807993435967257672

/-! ## A349079.P14930913323400392937

`∑[A060632(A196012(n+1))%6]`
-/

namespace A349079.P14930913323400392937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060632 (A196012 (n + 1)).toNat) 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349079.P14930913323400392937

/-! ## A349079.P1906257654885798163

`record[gcd(A105207(n+1), A287393(n))]`
-/

namespace A349079.P1906257654885798163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A105207 (n + 1)) (A287393 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349079.P1906257654885798163

/-! ## A349079.P18074106595248140252

`record[and(A012265(n)+1, A066926(n+1))]`
-/

namespace A349079.P18074106595248140252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A012265 n + 1) (A066926 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349079.P18074106595248140252

/-! ## A349079.P9290119598937389183

`record[and(A186971(n+1), A279188(n+1))]`
-/

namespace A349079.P9290119598937389183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A186971 (n + 1)) (A279188 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349079.P9290119598937389183

/-!
# A349080: Numbers k for which there exists only one integer m with 1 <= m <= k such that A000178(k) / m! is a square, where A000178(k) = k$ = 1!*2!*...*k! is the superfactorial of k.

The programs for A349080, there is no canonical definition to state claims against.
-/

/-! ## A349080.P7598217059175122841

`∩[A349079(n+1), comp[A349081(n+1)]]`
-/

namespace A349080.P7598217059175122841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349079 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349081 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A349080.P7598217059175122841

/-! ## A349080.P5390319505955911313

`record[and(A111441(n+1), A300576(2*n+1))]`
-/

namespace A349080.P5390319505955911313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A111441 (n + 1)) (A300576 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349080.P5390319505955911313

/-! ## A349080.P11557253286051077449

`(char[4*n]+2*n)*A293514(A167137(∑[n%2]))`
-/

namespace A349080.P11557253286051077449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = n then 1 else 0) + 2 * n : ℕ) : ℤ) * A293514 (A167137 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

end

end A349080.P11557253286051077449

/-! ## A349080.P13148755478682019901

`A020639(A006252(n))*A047411(n+1)`
-/

namespace A349080.P13148755478682019901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A006252 n).toNat * A047411 (n + 1)

end

end A349080.P13148755478682019901

/-!
# A349087: a(n) = n! * Sum_{k=0..floor(n/4)} (-1)^k / (4*k)!.

The programs for A349087, there is no canonical definition to state claims against.
-/

/-! ## A349087.P1481569701651058992

`A014017(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A349087.P1481569701651058992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A014017 n + (n : ℤ) * a (n - 1)

end

end A349087.P1481569701651058992

/-! ## A349087.P17101213005948642727

`A070321(n*a(n-1))` with `a(0)=1`
-/

namespace A349087.P17101213005948642727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A070321 ((n : ℤ) * a (n - 1)).toNat

end

end A349087.P17101213005948642727

/-! ## A349087.P5804328688075846144

`A338228(n*a(n-1))+1` with `a(0)=1`
-/

namespace A349087.P5804328688075846144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A338228 ((n : ℤ) * a (n - 1)).toNat + 1

end

end A349087.P5804328688075846144

/-! ## A349087.P2338350675910224093

`A070321(a(n-1)/n^(-1))` with `a(0)=1`
-/

namespace A349087.P2338350675910224093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A070321 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / (n : ℚ) ^ (-1 : ℤ))).toNat

end

end A349087.P2338350675910224093

/-!
# A349088: a(n) = n! * Sum_{k=0..floor((n-1)/3)} 1 / (3*k+1)!.

The programs for A349088, there is no canonical definition to state claims against.
-/

/-! ## A349088.P18420051759382299983

`(n%3)%2+n*a(n-1)` with `a(0)=0`
-/

namespace A349088.P18420051759382299983
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  n % 3 % 2 + n * a (n - 1)

end

end A349088.P18420051759382299983

/-! ## A349088.P5540732787061167613

`or(n*a(n-1), ∑[n]%3)` with `a(0)=0, a(1)=1`
-/

namespace A349088.P5540732787061167613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Nat.lor (n * a (n - 1)) ((∑ j ∈ Finset.range (n + 1), f1 j) % 3)

end

end A349088.P5540732787061167613

/-! ## A349088.P17646384066947346245

`Δ[floor((n+1)/3)]+n*a(n-1)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A349088.P17646384066947346245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  f1 (n + 1) - f1 n + (n : ℤ) * a (n - 1)

end

end A349088.P17646384066947346245

/-! ## A349088.P13477267485139174418

`floor(gcd(3, a(n-1))/2+n*a(n-1))` with `a(0)=0`
-/

namespace A349088.P13477267485139174418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(Int.gcd 3 (a (n - 1)) : ℚ) / 2 + ((n : ℤ) * a (n - 1) : ℚ)⌋

end

end A349088.P13477267485139174418

/-! ## A349088.P16769731496331025434

`xor(n*a(n-1), A079978(n+2))` with `a(0)=0, a(1)=1`
-/

namespace A349088.P16769731496331025434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.xor ((n : ℤ) * a (n - 1)) (A079978 (n + 2))

end

end A349088.P16769731496331025434

/-!
# A349089: a(n) = n! * Sum_{k=0..floor((n-1)/4)} 1 / (4*k+1)!.

The programs for A349089, there is no canonical definition to state claims against.
-/

/-! ## A349089.P15195922328010150994

`∑[∑[n]]%2+n*a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A349089.P15195922328010150994
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 2 + n * a (n - 1)

end

end A349089.P15195922328010150994

/-! ## A349089.P4532443592663501570

`n*a(n-1)-(n-a(n-2))%2` with `a(0)=0, a(1)=1`
-/

namespace A349089.P4532443592663501570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n : ℤ) * a (n - 1) - Int.tmod ((n : ℤ) - a (n - 2)) 2

end

end A349089.P4532443592663501570

/-! ## A349089.P7454371703448289645

`floor(gcd(4, a(n-1))/3+n*a(n-1))` with `a(0)=0`
-/

namespace A349089.P7454371703448289645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(Int.gcd 4 (a (n - 1)) : ℚ) / 3 + ((n : ℤ) * a (n - 1) : ℚ)⌋

end

end A349089.P7454371703448289645

/-! ## A349089.P3918873915602417997

`Δ[A002265(n+2)]+n*a(n-1)` with `a(0)=0`
-/

namespace A349089.P3918873915602417997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  f1 (n + 1) - f1 n + (n : ℤ) * a (n - 1)

end

end A349089.P3918873915602417997

/-! ## A349089.P1315898921844671035

`A327936(3*n+1)-(1-n*a(n-1))` with `a(0)=0`
-/

namespace A349089.P1315898921844671035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A327936 (3 * n + 1) - (1 - (n : ℤ) * a (n - 1))

end

end A349089.P1315898921844671035

/-!
# A349090: Where zeros occur in A349082. These correspond to rationals, 0 < p/q < 1, that have no solution p/q = 1/x + 1/y, 0 < x < y.

The programs for A349090, there is no canonical definition to state claims against.
-/

/-! ## A349090.P961541448538933002

`eq[0, A349082(n+1)]+1`
-/

namespace A349090.P961541448538933002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349082 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A349090.P961541448538933002

/-! ## A349090.P14445777447172620848

`eq[0, A349082(A028310(n))]`
-/

namespace A349090.P14445777447172620848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349082 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A349090.P14445777447172620848

/-! ## A349090.P8751395835413691001

`A020725(eq[0, A349082(n+1)])`
-/

namespace A349090.P8751395835413691001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349082 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A349090.P8751395835413691001

/-! ## A349090.P4498530888176175048

`A065475(eq[0, A349082(n+1)])`
-/

namespace A349090.P4498530888176175048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349082 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A349090.P4498530888176175048

/-! ## A349090.P13360276935227577097

`A114637(eq[0, A349082(n+1)])`
-/

namespace A349090.P13360276935227577097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349082 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A349090.P13360276935227577097

/-! ## A349090.P17448656978018911089

`eq[0, A349082(A233583(n+1))]`
-/

namespace A349090.P17448656978018911089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349082 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A349090.P17448656978018911089

/-!
# A349091: Where zeros occur in A349083. These correspond to rationals, 0 < p/q < 1, that have no solution p/q = 1/x + 1/y + 1/z, 0 < x < y < z.

The programs for A349091, there is no canonical definition to state claims against.
-/

/-! ## A349091.P9224312429077200710

`eq[0, A349083(n+1)]+1`
-/

namespace A349091.P9224312429077200710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349083 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A349091.P9224312429077200710

/-! ## A349091.P6451432327128689728

`lt[A349083(n+2), 1]+2`
-/

namespace A349091.P6451432327128689728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349083 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A349091.P6451432327128689728

/-! ## A349091.P8312026712208429647

`eq[0, A349083(A028310(n))]`
-/

namespace A349091.P8312026712208429647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349083 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A349091.P8312026712208429647

/-! ## A349091.P12971295985693719436

`A020725(eq[0, A349083(n+1)])`
-/

namespace A349091.P12971295985693719436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349083 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A349091.P12971295985693719436

/-! ## A349091.P2443038904832137007

`A065475(eq[0, A349083(n+1)])`
-/

namespace A349091.P2443038904832137007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349083 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A349091.P2443038904832137007

/-! ## A349091.P17748710347073485375

`A114637(eq[0, A349083(n+1)])`
-/

namespace A349091.P17748710347073485375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349083 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A349091.P17748710347073485375

/-! ## A349091.P11408255796100757682

`eq[0, A349083(A233583(n+1))]`
-/

namespace A349091.P11408255796100757682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349083 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A349091.P11408255796100757682

/-! ## A349091.P15589002664950003421

`eq[0, A349083(A123108(2*n))]`
-/

namespace A349091.P15589002664950003421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349083 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A349091.P15589002664950003421

/-! ## A349091.P7598281507290101922

`eq[0, A349083(A000007(n)+n)]`
-/

namespace A349091.P7598281507290101922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349083 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A349091.P7598281507290101922

/-! ## A349091.P11265473674614123834

`eq[0, A349083(gcd(n, A008458(n)))]`
-/

namespace A349091.P11265473674614123834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349083 (Int.gcd (n : ℤ) (A008458 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A349091.P11265473674614123834

/-!
# A349092: Where zeros occur in A349084. These correspond to rationals, 0 < p/q < 1, that have no solution p/q = 1/w + 1/x + 1/y + 1/z, 0 < w < x < y < z.

The programs for A349092, there is no canonical definition to state claims against.
-/

/-! ## A349092.P2876503382614732703

`eq[0, A349084(A028310(n))]`
-/

namespace A349092.P2876503382614732703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349084 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A349092.P2876503382614732703

/-! ## A349092.P11118791194370762315

`A020725(eq[0, A349084(n+1)])`
-/

namespace A349092.P11118791194370762315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A349092.P11118791194370762315

/-! ## A349092.P10457436842247320882

`A065475(eq[0, A349084(n+1)])`
-/

namespace A349092.P10457436842247320882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A349092.P10457436842247320882

/-! ## A349092.P6082249688028485352

`A114637(eq[0, A349084(n+1)])`
-/

namespace A349092.P6082249688028485352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A349092.P6082249688028485352

/-! ## A349092.P8821000360726579103

`eq[0, A349084(A233583(n+1))]`
-/

namespace A349092.P8821000360726579103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349084 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A349092.P8821000360726579103

/-!
# A349093: a(n) is the smallest nonprime number m (m = A018252(t)) such that n divides the product P(t) of all nonprime numbers up to and including m (P(t) = A036691(t-1)).

The programs for A349093, there is no canonical definition to state claims against.
-/

/-! ## A349093.P6417623788200856001

`A002034((n+1)*∏{p}[n+1, #])`
-/

namespace A349093.P6417623788200856001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 ((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p))

end

end A349093.P6417623788200856001

/-! ## A349093.P10709953839960720943

`A122416((n+1)*∏{p}[n+1, #])-1`
-/

namespace A349093.P10709953839960720943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122416 ((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p)) - 1

end

end A349093.P10709953839960720943

/-! ## A349093.P11293378961360046313

`A002034((n+1)*exp(∑{p}[n+1, log(#)]))`
-/

namespace A349093.P11293378961360046313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (SequenceMachineLib.roundAway ((n + 1 : ℝ) * Real.exp (∑ p ∈ Nat.primeFactors (f1 n), Real.log (p : ℝ)))).toNat

end

end A349093.P11293378961360046313

/-! ## A349093.P12125029400292088459

`A002034((n+1)*2^∑{p}[n+1, log2(#)])`
-/

namespace A349093.P12125029400292088459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (SequenceMachineLib.roundAway ((n + 1 : ℝ) * (2 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f1 n), Real.logb 2 (p : ℝ)))).toNat

end

end A349093.P12125029400292088459

/-! ## A349093.P15276806454056307508

`A002034(lcm(n+1, ∏{p}[n+1, #]+1)-n-1)`
-/

namespace A349093.P15276806454056307508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 ((Nat.lcm (n + 1) (∏ p ∈ Nat.primeFactors (f1 n), p + 1) : ℤ) - (n : ℤ) - 1).toNat

end

end A349093.P15276806454056307508

/-! ## A349093.P5446268103728841044

`A061243((n+1)*∏{p}[n+1, #])-(n+1)*∏{p}[n+1, #]`
-/

namespace A349093.P5446268103728841044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061243 ((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p)) - (((n + 1) * (∏ p ∈ Nat.primeFactors (f2 n), p) : ℕ) : ℤ)

end

end A349093.P5446268103728841044

/-! ## A349093.P197191332235012355

`A002034(A064549(n+1))`
-/

namespace A349093.P197191332235012355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A064549 (n + 1)).toNat

end

end A349093.P197191332235012355

/-! ## A349093.P3064390681719652932

`A002034(A078310(n+1)-1)`
-/

namespace A349093.P3064390681719652932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A078310 (n + 1) - 1).toNat

end

end A349093.P3064390681719652932

/-! ## A349093.P15824790478874825951

`A002034((n+1)*A007947(n+1))`
-/

namespace A349093.P15824790478874825951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 ((n + 1 : ℤ) * A007947 (n + 1)).toNat

end

end A349093.P15824790478874825951

/-! ## A349093.P12983442344316740058

`A002034((n+1)*A015052(n+1))`
-/

namespace A349093.P12983442344316740058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 ((n + 1 : ℤ) * A015052 (n + 1)).toNat

end

end A349093.P12983442344316740058

/-!
# A349094: a(n) = 2^(n-1) - tau(n) where tau(n) is the number of divisors of n.

The programs for A349094, the canonical program `A349094.P6148105136243127254` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349094 has offset 1).

The definition of A349094 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A349094.P6148105136243127254

`A011782(n+1)-A000005(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A349094

/-- `A011782(n+1)-A000005(n+1)` -/
def P6148105136243127254.Spec : Prop :=
  ∀ n, P6148105136243127254.a n = A349094 (n + 1)

theorem P6148105136243127254.correct : P6148105136243127254.Spec := by
  intro n
  simp only [A349094, Nat.add_sub_cancel]

end A349094

/-! ## A349094.P7400389873712046546

`2^n-∏{e}[n+1, #+1]`
-/

namespace A349094.P7400389873712046546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)

end

end A349094.P7400389873712046546

namespace A349094

/-- `2^n-∏{e}[n+1, #+1]` -/
def P7400389873712046546.Spec : Prop :=
  ∀ n, P7400389873712046546.a n = A349094 (n + 1)

end A349094

/-! ## A349094.P12414061222625671784

`2^n-∑{d}[n+1, ceil(acot(#))]`
-/

namespace A349094.P12414061222625671784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - ∑ d ∈ Nat.divisors (f1 n), ⌈SequenceMachineLib.acot (d : ℝ)⌉

end

end A349094.P12414061222625671784

namespace A349094

/-- `2^n-∑{d}[n+1, ceil(acot(#))]` -/
def P12414061222625671784.Spec : Prop :=
  ∀ n, P12414061222625671784.a n = A349094 (n + 1)

end A349094

/-! ## A349094.P5473457884382026223

`2^n-A000005(n+1)`
-/

namespace A349094.P5473457884382026223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A000005 (n + 1)

end

end A349094.P5473457884382026223

namespace A349094

/-- `2^n-A000005(n+1)` -/
def P5473457884382026223.Spec : Prop :=
  ∀ n, P5473457884382026223.a n = A349094 (n + 1)

end A349094

/-! ## A349094.P9955240740838951592

`abs(2^n-A000005(abs(xor(n, -1))))`
-/

namespace A349094.P9955240740838951592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((2 ^ n : ℤ) - A000005 |Int.xor (n : ℤ) (-1)|.toNat)|

end

end A349094.P9955240740838951592

namespace A349094

/-- `abs(2^n-A000005(abs(xor(n, -1))))` -/
def P9955240740838951592.Spec : Prop :=
  ∀ n, P9955240740838951592.a n = A349094 (n + 1)

end A349094

/-! ## A349094.P505811407508690876

`A255047(n)-A325765(n)`
-/

namespace A349094.P505811407508690876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255047 n - A325765 n

end

end A349094.P505811407508690876

namespace A349094

/-- `A255047(n)-A325765(n)` -/
def P505811407508690876.Spec : Prop :=
  ∀ n, P505811407508690876.a n = A349094 (n + 1)

end A349094

/-! ## A349094.P9520502045653008225

`A049820(n+1)+A000295(n)`
-/

namespace A349094.P9520502045653008225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (n + 1) + A000295 n

end

end A349094.P9520502045653008225

namespace A349094

/-- `A049820(n+1)+A000295(n)` -/
def P9520502045653008225.Spec : Prop :=
  ∀ n, P9520502045653008225.a n = A349094 (n + 1)

end A349094

/-! ## A349094.P9253189869887197200

`A320933(n)+A003165(n+1)`
-/

namespace A349094.P9253189869887197200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320933 n + A003165 (n + 1)

end

end A349094.P9253189869887197200

namespace A349094

/-- `A320933(n)+A003165(n+1)` -/
def P9253189869887197200.Spec : Prop :=
  ∀ n, P9253189869887197200.a n = A349094 (n + 1)

end A349094

/-! ## A349094.P10810043362772571366

`A378216(n+1)+A000918(n)`
-/

namespace A349094.P10810043362772571366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378216 (n + 1) + A000918 n

end

end A349094.P10810043362772571366

namespace A349094

/-- `A378216(n+1)+A000918(n)` -/
def P10810043362772571366.Spec : Prop :=
  ∀ n, P10810043362772571366.a n = A349094 (n + 1)

end A349094

/-! ## A349094.P1554218208722245074

`A000225(n)-A032741(n+1)`
-/

namespace A349094.P1554218208722245074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - A032741 (n + 1)

end

end A349094.P1554218208722245074

namespace A349094

/-- `A000225(n)-A032741(n+1)` -/
def P1554218208722245074.Spec : Prop :=
  ∀ n, P1554218208722245074.a n = A349094 (n + 1)

end A349094

/-! ## A349094.P7354432909894272985

`A005126(n)-A062249(n+1)`
-/

namespace A349094.P7354432909894272985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005126 n - A062249 (n + 1)

end

end A349094.P7354432909894272985

namespace A349094

/-- `A005126(n)-A062249(n+1)` -/
def P7354432909894272985.Spec : Prop :=
  ∀ n, P7354432909894272985.a n = A349094 (n + 1)

end A349094

/-! ## A349094.P8087674078321490092

`A052531(n)-A062558(n+1)`
-/

namespace A349094.P8087674078321490092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052531 n - A062558 (n + 1)

end

end A349094.P8087674078321490092

namespace A349094

/-- `A052531(n)-A062558(n+1)` -/
def P8087674078321490092.Spec : Prop :=
  ∀ n, P8087674078321490092.a n = A349094 (n + 1)

end A349094

/-! ## A349094.P4662656307490280599

`A051049(n)-A076984(n+1)`
-/

namespace A349094.P4662656307490280599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051049 n - A076984 (n + 1)

end

end A349094.P4662656307490280599

namespace A349094

/-- `A051049(n)-A076984(n+1)` -/
def P4662656307490280599.Spec : Prop :=
  ∀ n, P4662656307490280599.a n = A349094 (n + 1)

end A349094

/-! ## A349094.P11373344576703899693

`A141023(n)-A023645(n+1)`
-/

namespace A349094.P11373344576703899693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141023 n - A023645 (n + 1)

end

end A349094.P11373344576703899693

namespace A349094

/-- `A141023(n)-A023645(n+1)` -/
def P11373344576703899693.Spec : Prop :=
  ∀ n, P11373344576703899693.a n = A349094 (n + 1)

end A349094

/-! ## A349094.P2819558331378509238

`A006127(n)-A158907(n+1)`
-/

namespace A349094.P2819558331378509238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006127 n - A158907 (n + 1)

end

end A349094.P2819558331378509238

namespace A349094

/-- `A006127(n)-A158907(n+1)` -/
def P2819558331378509238.Spec : Prop :=
  ∀ n, P2819558331378509238.a n = A349094 (n + 1)

end A349094

/-! ## A349094.P13653489830052627682

`A132736(n)-A134871(n+1)`
-/

namespace A349094.P13653489830052627682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132736 n - A134871 (n + 1)

end

end A349094.P13653489830052627682

namespace A349094

/-- `A132736(n)-A134871(n+1)` -/
def P13653489830052627682.Spec : Prop :=
  ∀ n, P13653489830052627682.a n = A349094 (n + 1)

end A349094

/-! ## A349094.P5936324678595994904

`A000051(n)-A334954(n+1)`
-/

namespace A349094.P5936324678595994904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - A334954 (n + 1)

end

end A349094.P5936324678595994904

namespace A349094

/-- `A000051(n)-A334954(n+1)` -/
def P5936324678595994904.Spec : Prop :=
  ∀ n, P5936324678595994904.a n = A349094 (n + 1)

end A349094

/-! ## A349094.P1710207220650933764

`∑[A011782(n)]-Δ[A006218(n)]`
-/

namespace A349094.P1710207220650933764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (f2 (n + 1) - f2 n)

end

end A349094.P1710207220650933764

namespace A349094

/-- `∑[A011782(n)]-Δ[A006218(n)]` -/
def P1710207220650933764.Spec : Prop :=
  ∀ n, P1710207220650933764.a n = A349094 (n + 1)

end A349094

/-! ## A349094.P3125928386742351556

`A144300(n+1)+A056823(n+1)`
-/

namespace A349094.P3125928386742351556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144300 (n + 1) + A056823 (n + 1)

end

end A349094.P3125928386742351556

namespace A349094

/-- `A144300(n+1)+A056823(n+1)` -/
def P3125928386742351556.Spec : Prop :=
  ∀ n, P3125928386742351556.a n = A349094 (n + 1)

end A349094

/-!
# A349095: Where ones occur in A349082. These correspond to rationals, 0 < p/q < 1, that have a unique solution, p/q = 1/x + 1/y, 0 < x < y.

The programs for A349095, there is no canonical definition to state claims against.
-/

/-! ## A349095.P7718628374842571107

`eq[1, A349082(n+1)]+1`
-/

namespace A349095.P7718628374842571107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349082 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A349095.P7718628374842571107

/-! ## A349095.P15889690492371032431

`eq[A054977(n), A349082(A028310(n))]`
-/

namespace A349095.P15889690492371032431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349082 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A349095.P15889690492371032431

/-! ## A349095.P14717885915626714528

`eq[A057427(n), A349082(A028310(n))]`
-/

namespace A349095.P14717885915626714528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349082 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A349095.P14717885915626714528

/-! ## A349095.P12332369677768421248

`eq[A057428(n)², A349082(A028310(n))]`
-/

namespace A349095.P12332369677768421248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349082 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A349095.P12332369677768421248

/-! ## A349095.P927156126384901218

`eq[A062157(n)², A349082(A028310(n))]`
-/

namespace A349095.P927156126384901218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349082 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A349095.P927156126384901218

/-! ## A349095.P9189744797161728498

`eq[A000038(n)!, A349082(A028310(n))]`
-/

namespace A349095.P9189744797161728498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000038 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349082 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A349095.P9189744797161728498

/-! ## A349095.P16208550430320996006

`eq[A019425(2*n), A349082(A028310(n))]`
-/

namespace A349095.P16208550430320996006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349082 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A349095.P16208550430320996006

/-! ## A349095.P9874077780144602863

`eq[A019426(2*n), A349082(A028310(n))]`
-/

namespace A349095.P9874077780144602863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349082 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A349095.P9874077780144602863

/-! ## A349095.P2874227838384170465

`eq[A019427(2*n), A349082(A028310(n))]`
-/

namespace A349095.P2874227838384170465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019427 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349082 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A349095.P2874227838384170465

/-! ## A349095.P11560178260170988272

`eq[A019429(2*n), A349082(A028310(n))]`
-/

namespace A349095.P11560178260170988272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019429 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349082 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A349095.P11560178260170988272

/-!
# A349096: Where ones occur in A349083. These correspond to rationals, 0 < p/q < 1, that have a unique solution, p/q = 1/x + 1/y + 1/z, 0 < x < y < z.

The programs for A349096, there is no canonical definition to state claims against.
-/

/-! ## A349096.P13164160999984552626

`eq[1, A349083(n+1)]+1`
-/

namespace A349096.P13164160999984552626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349083 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A349096.P13164160999984552626

/-! ## A349096.P2980820767134788576

`eq[1, A349083(A028310(n))]`
-/

namespace A349096.P2980820767134788576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349083 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A349096.P2980820767134788576

/-! ## A349096.P7988482830315371713

`A020725(eq[1, A349083(n+1)])`
-/

namespace A349096.P7988482830315371713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349083 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A349096.P7988482830315371713

/-! ## A349096.P5355282328337687386

`A065475(eq[1, A349083(n+1)])`
-/

namespace A349096.P5355282328337687386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349083 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A349096.P5355282328337687386

/-! ## A349096.P4184790480936492046

`A114637(eq[1, A349083(n+1)])`
-/

namespace A349096.P4184790480936492046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349083 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A349096.P4184790480936492046

/-! ## A349096.P149589424829820764

`eq[1, A349083(A233583(n+1))]`
-/

namespace A349096.P149589424829820764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349083 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A349096.P149589424829820764

/-! ## A349096.P2361066487375494017

`eq[1, A349083(A123108(2*n))]`
-/

namespace A349096.P2361066487375494017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349083 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A349096.P2361066487375494017

/-! ## A349096.P2985263043646676657

`eq[1, A349083(A000007(n)+n)]`
-/

namespace A349096.P2985263043646676657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349083 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A349096.P2985263043646676657

/-! ## A349096.P15382476496612094700

`eq[1, A349083(gcd(n, A008458(n)))]`
-/

namespace A349096.P15382476496612094700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349083 (Int.gcd (n : ℤ) (A008458 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A349096.P15382476496612094700

/-!
# A349097: Where ones occur in A349084. These correspond to rationals, 0 < p/q < 1, that have a unique solution, p/q = 1/w + 1/x + 1/y + 1/z, 0 < w < x < y < z.

The programs for A349097, there is no canonical definition to state claims against.
-/

/-! ## A349097.P14621586313094709726

`eq[1, A349084(A028310(n))]`
-/

namespace A349097.P14621586313094709726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349084 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A349097.P14621586313094709726

/-! ## A349097.P6811926867100927872

`A020725(eq[1, A349084(n+1)])`
-/

namespace A349097.P6811926867100927872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A349097.P6811926867100927872

/-! ## A349097.P15695580789626348427

`A065475(eq[1, A349084(n+1)])`
-/

namespace A349097.P15695580789626348427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A349097.P15695580789626348427

/-! ## A349097.P11548594108651319844

`A114637(eq[1, A349084(n+1)])`
-/

namespace A349097.P11548594108651319844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A349097.P11548594108651319844

/-! ## A349097.P4739305681278529041

`eq[1, A349084(A233583(n+1))]`
-/

namespace A349097.P4739305681278529041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349084 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A349097.P4739305681278529041

/-!
# A349099: a(n) is the permanent of the n X n matrix M(n) defined as M(n)[i,j] = i*j (mod n + 1).

The programs for A349099, there is no canonical definition to state claims against.
-/

/-! ## A349099.P5697234743360086058

`A006369(A042273(∑[n]))`
-/

namespace A349099.P5697234743360086058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 (A042273 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A349099.P5697234743360086058

