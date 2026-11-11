import SequenceMachineLib.Basic
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
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
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C045
import Seq.B000.C047
import Seq.B000.C048
import Seq.B000.C049
import Seq.B000.C050
import Seq.B000.C051
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A395900: Number of residue classes r (mod n) for which k = r + m*n, m >= 1, is such that gcd(k,n) > 1 but rad(k) does not divide n, and rad(n) does not divide k, where rad = A007947.

The programs for A395900, there is no canonical definition to state claims against.
-/

/-! ## A395900.P17258729140930410632

`A381803(1+n)-A395984(n+1)`
-/

namespace A395900.P17258729140930410632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381803 (1 + n) - A395984 (n + 1)

end

end A395900.P17258729140930410632

/-! ## A395900.P14509035144390895343

`A243823(n+1)-A381804(n+1)-A360543(n+1)%A010960(n)`
-/

namespace A395900.P14509035144390895343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243823 (n + 1) - A381804 (n + 1) - Int.tmod (A360543 (n + 1)) (A010960 n)

end

end A395900.P14509035144390895343

/-! ## A395900.P6564550340091675799

`A243823(n+1)-A381804(n+1)-A225595(n+1)*A360543(n+1)`
-/

namespace A395900.P6564550340091675799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243823 (n + 1) - A381804 (n + 1) - A225595 (n + 1) * A360543 (n + 1)

end

end A395900.P6564550340091675799

/-! ## A395900.P5132840655142966963

`A381803(A290480(n+1))`
-/

namespace A395900.P5132840655142966963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381803 (A290480 (n + 1)).toNat

end

end A395900.P5132840655142966963

/-! ## A395900.P7092314868828934361

`and(A246396(A000127(n+1)), A381803(n+1))`
-/

namespace A395900.P7092314868828934361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A246396 (A000127 (n + 1)).toNat) (A381803 (n + 1))

end

end A395900.P7092314868828934361

/-!
# A395901: Numbers c that appear in more than one abc triple with rad(a*b*c) < c and gcd(a,b)=1.

The programs for A395901, there is no canonical definition to state claims against.
-/

/-! ## A395901.P1509892882965245145

`A088247(lt[A229192(2*(n+1)), A247566(n+2)])`
-/

namespace A395901.P1509892882965245145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229192 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247566 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088247 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A395901.P1509892882965245145

/-!
# A395902: Triple convolution of the modified Fibonacci sequence F(3n)/2 (A001076).

The programs for A395902, the canonical program `A395902.P12719724737628338068` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395902 has offset 0).

The definition of A395902 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395902.P12719724737628338068

`ogf(x^3/(1-12x+45x^2-40x^3-45x^4-12x^5-x^6))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A395902

/-- `ogf(x^3/(1-12x+45x^2-40x^3-45x^4-12x^5-x^6))` -/
def P12719724737628338068.Spec : Prop :=
  ∀ n, P12719724737628338068.a n = A395902 n

theorem P12719724737628338068.correct : P12719724737628338068.Spec := by
  intro n
  simp only [A395902]

end A395902

/-!
# A395908: Series expansion of (27*x - 14*x^2 + 2*x^3) / (1 - x)^7.

The programs for A395908, the canonical program `A395908.P13993909786748262097` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395908 has offset 0).

The definition of A395908 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395908.P13993909786748262097

`n*(n+1)*(n+2)*(n+3)*(n+5)*(n+8)/48`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A395908

/-- `n*(n+1)*(n+2)*(n+3)*(n+5)*(n+8)/48` -/
def P13993909786748262097.Spec : Prop :=
  ∀ n, P13993909786748262097.a n = (A395908 n : ℚ)

end A395908

/-! ## A395908.P6360540317065435776

`∑[∑[∑[n+2]]]*A055998(n)`
-/

namespace A395908.P6360540317065435776
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A055998 n

end

end A395908.P6360540317065435776

namespace A395908

/-- `∑[∑[∑[n+2]]]*A055998(n)` -/
def P6360540317065435776.Spec : Prop :=
  ∀ n, P6360540317065435776.a n = A395908 n

end A395908

/-! ## A395908.P14679607092674794185

`A215863(n)+A162668(n)`
-/

namespace A395908.P14679607092674794185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215863 n + A162668 n

end

end A395908.P14679607092674794185

namespace A395908

/-- `A215863(n)+A162668(n)` -/
def P14679607092674794185.Spec : Prop :=
  ∀ n, P14679607092674794185.a n = A395908 n

end A395908

/-! ## A395908.P2308322173050576695

`(A055999(n+3)+5)*A000332(n+3)`
-/

namespace A395908.P2308322173050576695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A055999 (n + 3) + 5) * A000332 (n + 3)

end

end A395908.P2308322173050576695

namespace A395908

/-- `(A055999(n+3)+5)*A000332(n+3)` -/
def P2308322173050576695.Spec : Prop :=
  ∀ n, P2308322173050576695.a n = A395908 n

end A395908

/-! ## A395908.P17236664170673704882

`A354794(A000096(n+2)+n+1)`
-/

namespace A395908.P17236664170673704882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354794 (A000096 (n + 2) + (n + 1 : ℤ)).toNat

end

end A395908.P17236664170673704882

namespace A395908

/-- `A354794(A000096(n+2)+n+1)` -/
def P17236664170673704882.Spec : Prop :=
  ∀ n, P17236664170673704882.a n = A395908 n

end A395908

/-! ## A395908.P17398961498101126962

`A354794(A005843(n)+(n+1)*(n+4)/2+4)`
-/

namespace A395908.P17398961498101126962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354794 (SequenceMachineLib.roundAway ((A005843 n : ℚ) + (((n + 1) * (n + 4) : ℚ) / 2 + 4))).toNat

end

end A395908.P17398961498101126962

namespace A395908

/-- `A354794(A005843(n)+(n+1)*(n+4)/2+4)` -/
def P17398961498101126962.Spec : Prop :=
  ∀ n, P17398961498101126962.a n = A395908 n

end A395908

/-!
# A395909: Triangle read by rows: row n gives marks on lexicographically earliest n-mark optimal ruler.

The programs for A395909, there is no canonical definition to state claims against.
-/

/-! ## A395909.P15828278887836124814

`A213191(n)%A000005(A249762(n))`
-/

namespace A395909.P15828278887836124814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213191 n) (A000005 (A249762 n).toNat)

end

end A395909.P15828278887836124814

/-! ## A395909.P3156518744029442213

`gcd(A213191(n), A256974(A019565(n)))`
-/

namespace A395909.P3156518744029442213
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A213191 n) (A256974 (A019565 n).toNat)

end

end A395909.P3156518744029442213

/-! ## A395909.P4403608472179173019

`A106683(n+1)-A326016(A064642(n))`
-/

namespace A395909.P4403608472179173019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106683 (n + 1) - A326016 (A064642 n).toNat

end

end A395909.P4403608472179173019

/-! ## A395909.P11471117576146756813

`A106683(n+1)/A385886(A085158(n))`
-/

namespace A395909.P11471117576146756813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106683 (n + 1) : ℚ) / (A385886 (A085158 n).toNat : ℚ)

end

end A395909.P11471117576146756813

/-! ## A395909.P11596369548131687423

`A139601(n)%A333627(A377287(n+1))`
-/

namespace A395909.P11596369548131687423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139601 n) (A333627 (A377287 (n + 1)).toNat)

end

end A395909.P11596369548131687423

/-!
# A395911: Number of distinct Laplacian eigenvalues of the n X n grid graph P_n X P_n.

The programs for A395911, there is no canonical definition to state claims against.
-/

/-! ## A395911.P6621254385226459915

`A401487(∑[n+1])`
-/

namespace A395911.P6621254385226459915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401487 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A395911.P6621254385226459915

/-! ## A395911.P12724549898900765240

`A342999(A259823(n+1))`
-/

namespace A395911.P12724549898900765240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342999 (A259823 (n + 1)).toNat

end

end A395911.P12724549898900765240

/-! ## A395911.P16773911996241343896

`A018805(n+1)-(record[A347224(n+2)]-1-n)`
-/

namespace A395911.P16773911996241343896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347224 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018805 (n + 1) - (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1 - (n : ℤ))

end

end A395911.P16773911996241343896

/-! ## A395911.P4080680590895312430

`A167904(A165113(n)*A332275(n)+n)`
-/

namespace A395911.P4080680590895312430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167904 (A165113 n * A332275 n + (n : ℤ)).toNat

end

end A395911.P4080680590895312430

/-!
# A395912: Numbers of real-algebra involutions of the multicomplex numbers that map each element of its canonical monomial basis to a signed monomial.

The programs for A395912, there is no canonical definition to state claims against.
-/

/-! ## A395912.P377110567787513630

`A133644(A129954(n))`
-/

namespace A395912.P377110567787513630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133644 (A129954 n).toNat

end

end A395912.P377110567787513630

/-!
# A395913: Odd numbers k such that the product (m+n)*p, where m,n are the first and the last digits of k, and p is the number which is the part of k between m and n, is a divisor of k.

The programs for A395913, there is no canonical definition to state claims against.
-/

/-! ## A395913.P13350766849200637661

`filter[A320121(n+1), A324908(#)]`
-/

namespace A395913.P13350766849200637661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320121 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A395913.P13350766849200637661

/-! ## A395913.P14786490040989240411

`filter[A320121(n+1), A000035(#)]`
-/

namespace A395913.P14786490040989240411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320121 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A395913.P14786490040989240411

/-! ## A395913.P11319851306487165080

`filter[A320121(n+1), A073059(#)]`
-/

namespace A395913.P11319851306487165080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320121 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A073059 (f1 j).toNat = 1) n)

end

end A395913.P11319851306487165080

/-!
# A395915: Number of permutations p of [n] satisfying p(i+7)-p(i)<>7 for all 1<=i<=n-7.

The programs for A395915, there is no canonical definition to state claims against.
-/

/-! ## A395915.P13824595460881911127

`A265349(A287278(n))`
-/

namespace A395915.P13824595460881911127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265349 (A287278 n).toNat

end

end A395915.P13824595460881911127

/-! ## A395915.P10047241762373419508

`A000142(n)-n*A184955(2*n)`
-/

namespace A395915.P10047241762373419508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - (n : ℤ) * A184955 (2 * n)

end

end A395915.P10047241762373419508

/-! ## A395915.P9120347312301185251

`A000142(n)-A124355(A250284(n))`
-/

namespace A395915.P9120347312301185251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A124355 (A250284 n).toNat

end

end A395915.P9120347312301185251

/-!
# A395919: Number of relations R on an n-element set such that the transitive closure of R has exactly two elements more than R.

The programs for A395919, there is no canonical definition to state claims against.
-/

/-! ## A395919.P8212019180529572896

`A167503(A286073(n))*A401216(n+1)`
-/

namespace A395919.P8212019180529572896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167503 (A286073 n).toNat * A401216 (n + 1)

end

end A395919.P8212019180529572896

/-!
# A395920: Number of relations R on an n-element set such that the transitive closure of R has exactly three elements more than R.

The programs for A395920, there is no canonical definition to state claims against.
-/

/-! ## A395920.P13561593822095167643

`A282791(row(∑[A239769(n)])+1)`
-/

namespace A395920.P13561593822095167643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239769 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282791 (SequenceMachineLib.triRow (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1)

end

end A395920.P13561593822095167643

/-!
# A395923: Triangle T(n,k), n >= 1, 1 <= k <= n, read by rows, where T(n,k) is the number of rectangular plane partitions of n with exactly k rows.

The programs for A395923, there is no canonical definition to state claims against.
-/

/-! ## A395923.P15816900616910949072

`A110619(n+1)*A143343(A143397(n))`
-/

namespace A395923.P15816900616910949072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110619 (n + 1) * A143343 (A143397 n).toNat

end

end A395923.P15816900616910949072

/-! ## A395923.P16557869618044028327

`A354234(n+1)-A341620(A000918(n+1)+1)`
-/

namespace A395923.P16557869618044028327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354234 (n + 1) - A341620 (A000918 (n + 1) + 1).toNat

end

end A395923.P16557869618044028327

/-! ## A395923.P15239909285947467608

`A007306(A066633(n+1)%A299275(3*n+1))`
-/

namespace A395923.P15239909285947467608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (Int.tmod (A066633 (n + 1)) (A299275 (3 * n + 1))).toNat

end

end A395923.P15239909285947467608

/-! ## A395923.P2945567105991114805

`A267417(A299471(n+1))+A110619(n+1)-A070109(n+1)`
-/

namespace A395923.P2945567105991114805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267417 (A299471 (n + 1)).toNat + A110619 (n + 1) - A070109 (n + 1)

end

end A395923.P2945567105991114805

/-! ## A395923.P16740619808191711063

`A282905(A143291(n+2))`
-/

namespace A395923.P16740619808191711063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282905 (A143291 (n + 2)).toNat

end

end A395923.P16740619808191711063

/-!
# A395925: Number of rectangular plane partitions of n with exactly 3 rows.

The programs for A395925, there is no canonical definition to state claims against.
-/

/-! ## A395925.P7527096759842073749

`A362609(n)-A178580(A325880(n+1))`
-/

namespace A395925.P7527096759842073749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362609 n - A178580 (A325880 (n + 1)).toNat

end

end A395925.P7527096759842073749

/-!
# A395927: a(n) is the number of different possible words of length n that can be found in a Boggle grid.

The programs for A395927, there is no canonical definition to state claims against.
-/

/-! ## A395927.P6305559714559946837

`A186861(A141214(n+1))`
-/

namespace A395927.P6305559714559946837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186861 (A141214 (n + 1)).toNat

end

end A395927.P6305559714559946837

/-! ## A395927.P8781775624621265215

`A186861(Δ[A005586(n+1)]-2)`
-/

namespace A395927.P8781775624621265215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186861 (f1 (n + 1) - f1 n - 2).toNat

end

end A395927.P8781775624621265215

/-! ## A395927.P12092624170208058056

`A186861(A008805(2*(n+2))+n+1)`
-/

namespace A395927.P12092624170208058056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186861 (A008805 (2 * (n + 2)) + (n + 1 : ℤ)).toNat

end

end A395927.P12092624170208058056

/-! ## A395927.P17870163697676109963

`A186861(A167614(n+1)+A005408(n))`
-/

namespace A395927.P17870163697676109963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186861 (A167614 (n + 1) + A005408 n).toNat

end

end A395927.P17870163697676109963

/-!
# A395931: Primes p that are the least prime factor of 2^k - 1 for some k >= 1.

The programs for A395931, there is no canonical definition to state claims against.
-/

/-! ## A395931.P7460970396983815681

`record[A098867(n+1)]`
-/

namespace A395931.P7460970396983815681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098867 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A395931.P7460970396983815681

/-! ## A395931.P16138429380068697594

`∩[A122094(n+1), A260124(n)]`
-/

namespace A395931.P16138429380068697594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260124 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395931.P16138429380068697594

/-! ## A395931.P17739935449874963169

`∩[A392845(n+1), A260124(n)]`
-/

namespace A395931.P17739935449874963169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260124 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395931.P17739935449874963169

/-! ## A395931.P6228946107701404252

`∩[A116959(n+1), A122094(n+1)]`
-/

namespace A395931.P6228946107701404252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395931.P6228946107701404252

/-! ## A395931.P8435495401795826189

`∩[A122094(n+1), A167773(n+1)]`
-/

namespace A395931.P8435495401795826189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167773 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395931.P8435495401795826189

/-!
# A395932: Main diagonal of A396981.

The programs for A395932, there is no canonical definition to state claims against.
-/

/-! ## A395932.P9985627744420426602

`A396981(∑[4*n])`
-/

namespace A395932.P9985627744420426602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396981 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A395932.P9985627744420426602

/-! ## A395932.P12609974431056891980

`A005349(or(n, A006153(n)))`
-/

namespace A395932.P12609974431056891980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (Int.lor (n : ℤ) (A006153 n)).toNat

end

end A395932.P12609974431056891980

/-!
# A395933: Number of fixed points of the longest-run operator with radius 2 on binary configurations of the cycle graph C_n.

The programs for A395933, the canonical program `A395933.P16884302019947846580` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395933 has offset 1).

The definition of A395933 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395933.P13334622059917630535

`ogf((2-6x^2+8x^3-6x^5)/(1-2x+2x^3-2x^4+x^6))`
-/

namespace A395933.P13334622059917630535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 0, -6, 8, 0, -6] [1, -2, 0, 2, -2, 0, 1] n

end

end A395933.P13334622059917630535

namespace A395933

/-- `ogf((2-6x^2+8x^3-6x^5)/(1-2x+2x^3-2x^4+x^6))` -/
def P13334622059917630535.Spec : Prop :=
  ∀ n, P13334622059917630535.a n = A395933 (n + 1)

end A395933

/-! ## A395933.P16884302019947846580

`2*a(n-1)-2*a(n-3)+2*a(n-4)-a(n-6)` with `a(0)=2, a(1)=4, a(2)=2, a(3)=8, a(4)=12, a(5)=22`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A395933

/-- `2*a(n-1)-2*a(n-3)+2*a(n-4)-a(n-6)` -/
def P16884302019947846580.Spec : Prop :=
  ∀ n, P16884302019947846580.a n = A395933 (n + 1)

theorem P16884302019947846580.correct : P16884302019947846580.Spec := by
  intro n
  simp only [A395933, Nat.add_sub_cancel]

end A395933

/-! ## A395933.P9285136153297646819

`2*n%2+A007039(n+1)`
-/

namespace A395933.P9285136153297646819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (n % 2) : ℕ) : ℤ) + A007039 (n + 1)

end

end A395933.P9285136153297646819

namespace A395933

/-- `2*n%2+A007039(n+1)` -/
def P9285136153297646819.Spec : Prop :=
  ∀ n, P9285136153297646819.a n = A395933 (n + 1)

end A395933

/-! ## A395933.P9143340861964859229

`A010673(n)+A007039(n+1)`
-/

namespace A395933.P9143340861964859229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 n + A007039 (n + 1)

end

end A395933.P9143340861964859229

namespace A395933

/-- `A010673(n)+A007039(n+1)` -/
def P9143340861964859229.Spec : Prop :=
  ∀ n, P9143340861964859229.a n = A395933 (n + 1)

end A395933

/-! ## A395933.P13893961557679212304

`A297661(n+1)-A004442(n)`
-/

namespace A395933.P13893961557679212304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297661 (n + 1) - A004442 n

end

end A395933.P13893961557679212304

namespace A395933

/-- `A297661(n+1)-A004442(n)` -/
def P13893961557679212304.Spec : Prop :=
  ∀ n, P13893961557679212304.a n = A395933 (n + 1)

end A395933

/-! ## A395933.P18267421614485104909

`A010873(2*(n+2))+A007039(n+1)`
-/

namespace A395933.P18267421614485104909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (2 * (n + 2)) + A007039 (n + 1)

end

end A395933.P18267421614485104909

namespace A395933

/-- `A010873(2*(n+2))+A007039(n+1)` -/
def P18267421614485104909.Spec : Prop :=
  ∀ n, P18267421614485104909.a n = A395933 (n + 1)

end A395933

/-! ## A395933.P6698309707108671153

`A178142(3*n+1)+A007039(n+1)`
-/

namespace A395933.P6698309707108671153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178142 (3 * n + 1) + A007039 (n + 1)

end

end A395933.P6698309707108671153

namespace A395933

/-- `A178142(3*n+1)+A007039(n+1)` -/
def P6698309707108671153.Spec : Prop :=
  ∀ n, P6698309707108671153.a n = A395933 (n + 1)

end A395933

/-! ## A395933.P2874020103305077420

`A008472(A006519(n+1))+A007039(n+1)`
-/

namespace A395933.P2874020103305077420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A006519 (n + 1)).toNat + A007039 (n + 1)

end

end A395933.P2874020103305077420

namespace A395933

/-- `A008472(A006519(n+1))+A007039(n+1)` -/
def P2874020103305077420.Spec : Prop :=
  ∀ n, P2874020103305077420.a n = A395933 (n + 1)

end A395933

/-! ## A395933.P15226637511106249959

`A007039(n+1)+Δ[A004277(A080513(n+1))]`
-/

namespace A395933.P15226637511106249959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A080513 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007039 (n + 1) + (f1 (n + 1) - f1 n)

end

end A395933.P15226637511106249959

namespace A395933

/-- `A007039(n+1)+Δ[A004277(A080513(n+1))]` -/
def P15226637511106249959.Spec : Prop :=
  ∀ n, P15226637511106249959.a n = A395933 (n + 1)

end A395933

/-!
# A395936: Numbers of the form (A004186(k)-A004185(k))/9; i.e., numbers occurring in A151950.

The programs for A395936, there is no canonical definition to state claims against.
-/

/-! ## A395936.P15718588487105226505

`record[A151950(A009996(n+1))]`
-/

namespace A395936.P15718588487105226505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151950 (A009996 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A395936.P15718588487105226505

/-!
# A395941: Number of partitions of n^2 into prime parts not exceeding n.

The programs for A395941, there is no canonical definition to state claims against.
-/

/-! ## A395941.P1736304990845799884

`A368869(n²)`
-/

namespace A395941.P1736304990845799884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368869 (n ^ 2)

end

end A395941.P1736304990845799884

/-! ## A395941.P3684894663227842376

`A368869(A000290(n))^A178334(n)`
-/

namespace A395941.P3684894663227842376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A368869 (A000290 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A395941.P3684894663227842376

/-! ## A395941.P8650906615427147390

`A368869(A000290(n))%A198966(n)`
-/

namespace A395941.P8650906615427147390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A368869 (A000290 n).toNat) (A198966 n)

end

end A395941.P8650906615427147390

/-!
# A395942: Number of inequivalent tilings of an n X n grid by 1 X p rectangles using the prime partitions of n^2 into prime parts p <= n up to symmetry.

The programs for A395942, there is no canonical definition to state claims against.
-/

/-! ## A395942.P18340620545970268831

`A141387(A094223(n)-1)`
-/

namespace A395942.P18340620545970268831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141387 (A094223 n - 1).toNat

end

end A395942.P18340620545970268831

/-!
# A395947: Expansion of e.g.f.: x*sinh(x)^2*cosh(x) (odd powers only).

The programs for A395947, the canonical program `A395947.P7316245981973091337` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395947 has offset 1).

The definition of A395947 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395947.P7316245981973091337

`(2*(n+1)-1)*(3^(2*(n+1)-2)-1)/4`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A395947

/-- `(2*(n+1)-1)*(3^(2*(n+1)-2)-1)/4` -/
def P7316245981973091337.Spec : Prop :=
  ∀ n, P7316245981973091337.a n = (A395947 (n + 1) : ℚ)

end A395947

/-! ## A395947.P4867634217590192741

`record[n*floor((-3)^(n-1)/4)]`
-/

namespace A395947.P4867634217590192741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌊(-3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A395947.P4867634217590192741

namespace A395947

/-- `record[n*floor((-3)^(n-1)/4)]` -/
def P4867634217590192741.Spec : Prop :=
  ∀ n, P4867634217590192741.a n = A395947 (n + 1)

end A395947

/-! ## A395947.P3741231526117545691

`A360035(Δ[n²])`
-/

namespace A395947.P3741231526117545691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360035 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A395947.P3741231526117545691

namespace A395947

/-- `A360035(Δ[n²])` -/
def P3741231526117545691.Spec : Prop :=
  ∀ n, P3741231526117545691.a n = A395947 (n + 1)

end A395947

/-! ## A395947.P3303045432845185573

`A360036(Δ[n²])`
-/

namespace A395947.P3303045432845185573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360036 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A395947.P3303045432845185573

namespace A395947

/-- `A360036(Δ[n²])` -/
def P3303045432845185573.Spec : Prop :=
  ∀ n, P3303045432845185573.a n = A395947 (n + 1)

end A395947

/-! ## A395947.P12280021234774411314

`lcm(2, A360035(2*n+1))`
-/

namespace A395947.P12280021234774411314
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A360035 (2 * n + 1))

end

end A395947.P12280021234774411314

namespace A395947

/-- `lcm(2, A360035(2*n+1))` -/
def P12280021234774411314.Spec : Prop :=
  ∀ n, (P12280021234774411314.a n : ℤ) = A395947 (n + 1)

end A395947

/-! ## A395947.P17633129257713951373

`(4*n+2)*A002452(n)`
-/

namespace A395947.P17633129257713951373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 2 : ℤ) * A002452 n

end

end A395947.P17633129257713951373

namespace A395947

/-- `(4*n+2)*A002452(n)` -/
def P17633129257713951373.Spec : Prop :=
  ∀ n, P17633129257713951373.a n = A395947 (n + 1)

end A395947

/-! ## A395947.P17077326388590275915

`(2*n+1)*A125857(n+1)`
-/

namespace A395947.P17077326388590275915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A125857 (n + 1)

end

end A395947.P17077326388590275915

namespace A395947

/-- `(2*n+1)*A125857(n+1)` -/
def P17077326388590275915.Spec : Prop :=
  ∀ n, P17077326388590275915.a n = A395947 (n + 1)

end A395947

/-! ## A395947.P11340271567786837029

`(2*n+1)*A015518(2*n)`
-/

namespace A395947.P11340271567786837029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A015518 (2 * n)

end

end A395947.P11340271567786837029

namespace A395947

/-- `(2*n+1)*A015518(2*n)` -/
def P11340271567786837029.Spec : Prop :=
  ∀ n, P11340271567786837029.a n = A395947 (n + 1)

end A395947

/-! ## A395947.P897734276631798653

`A360023(2*n+1)-(2*n+1)`
-/

namespace A395947.P897734276631798653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360023 (2 * n + 1) - (2 * n + 1 : ℤ)

end

end A395947.P897734276631798653

namespace A395947

/-- `A360023(2*n+1)-(2*n+1)` -/
def P897734276631798653.Spec : Prop :=
  ∀ n, P897734276631798653.a n = A395947 (n + 1)

end A395947

/-! ## A395947.P16400314390611626201

`A360715(2*n+1)-(2*n+1)`
-/

namespace A395947.P16400314390611626201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360715 (2 * n + 1) - (2 * n + 1 : ℤ)

end

end A395947.P16400314390611626201

namespace A395947

/-- `A360715(2*n+1)-(2*n+1)` -/
def P16400314390611626201.Spec : Prop :=
  ∀ n, P16400314390611626201.a n = A395947 (n + 1)

end A395947

/-! ## A395947.P3198391591090152616

`lcm(2*n+1, A360036(2*n+1))`
-/

namespace A395947.P3198391591090152616
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * n + 1 : ℤ) (A360036 (2 * n + 1))

end

end A395947.P3198391591090152616

namespace A395947

/-- `lcm(2*n+1, A360036(2*n+1))` -/
def P3198391591090152616.Spec : Prop :=
  ∀ n, (P3198391591090152616.a n : ℤ) = A395947 (n + 1)

end A395947

/-! ## A395947.P12572218162138638049

`max(A360035(2*n), A360035(2*n+1))`
-/

namespace A395947.P12572218162138638049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  max (A360035 (2 * n)) (A360035 (2 * n + 1))

end

end A395947.P12572218162138638049

namespace A395947

/-- `max(A360035(2*n), A360035(2*n+1))` -/
def P12572218162138638049.Spec : Prop :=
  ∀ n, P12572218162138638049.a n = A395947 (n + 1)

end A395947

/-! ## A395947.P7889552079441122905

`max(A360036(2*n), A360036(2*n+1))`
-/

namespace A395947.P7889552079441122905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  max (A360036 (2 * n)) (A360036 (2 * n + 1))

end

end A395947.P7889552079441122905

namespace A395947

/-- `max(A360036(2*n), A360036(2*n+1))` -/
def P7889552079441122905.Spec : Prop :=
  ∀ n, P7889552079441122905.a n = A395947 (n + 1)

end A395947

/-! ## A395947.P10966386555611319145

`A372872(2*(n+1))-A007051(2*n+1)`
-/

namespace A395947.P10966386555611319145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372872 (2 * (n + 1)) - A007051 (2 * n + 1)

end

end A395947.P10966386555611319145

namespace A395947

/-- `A372872(2*(n+1))-A007051(2*n+1)` -/
def P10966386555611319145.Spec : Prop :=
  ∀ n, P10966386555611319145.a n = A395947 (n + 1)

end A395947

/-! ## A395947.P12785908896135690322

`A261064(2*n+1)-A392266(2*n+1)`
-/

namespace A395947.P12785908896135690322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261064 (2 * n + 1) - A392266 (2 * n + 1)

end

end A395947.P12785908896135690322

namespace A395947

/-- `A261064(2*n+1)-A392266(2*n+1)` -/
def P12785908896135690322.Spec : Prop :=
  ∀ n, P12785908896135690322.a n = A395947 (n + 1)

end A395947

/-! ## A395947.P7979089698775681643

`min(A360035(2*n+1), A360035(2*(n+1)))`
-/

namespace A395947.P7979089698775681643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  min (A360035 (2 * n + 1)) (A360035 (2 * (n + 1)))

end

end A395947.P7979089698775681643

namespace A395947

/-- `min(A360035(2*n+1), A360035(2*(n+1)))` -/
def P7979089698775681643.Spec : Prop :=
  ∀ n, P7979089698775681643.a n = A395947 (n + 1)

end A395947

/-! ## A395947.P8854602522567546113

`min(A360036(2*n+1), A360036(2*(n+1)))`
-/

namespace A395947.P8854602522567546113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  min (A360036 (2 * n + 1)) (A360036 (2 * (n + 1)))

end

end A395947.P8854602522567546113

namespace A395947

/-- `min(A360036(2*n+1), A360036(2*(n+1)))` -/
def P8854602522567546113.Spec : Prop :=
  ∀ n, P8854602522567546113.a n = A395947 (n + 1)

end A395947

/-!
# A395948: Expansion of e.g.f. sinh(x)^2*cosh(x)*exp(x).

The programs for A395948, the canonical program `A395948.P12794132619196995956` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395948 has offset 0).

The definition of A395948 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A395948.P12794132619196995956

`4*a(n-1)+4*a(n-2)-16*a(n-3)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=6`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A395948

/-- `4*a(n-1)+4*a(n-2)-16*a(n-3)` -/
def P12794132619196995956.Spec : Prop :=
  ∀ n, P12794132619196995956.a n = A395948 n

theorem P12794132619196995956.correct : P12794132619196995956.Spec := by
  intro n
  simp only [A395948]

end A395948

/-! ## A395948.P13090306900680733441

`A274497(n)+A000431(n)`
-/

namespace A395948.P13090306900680733441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274497 n + A000431 n

end

end A395948.P13090306900680733441

namespace A395948

/-- `A274497(n)+A000431(n)` -/
def P13090306900680733441.Spec : Prop :=
  ∀ n, P13090306900680733441.a n = A395948 n

end A395948

/-! ## A395948.P12872780721047199481

`A000431(n)+A004526(n)*A011782(n)`
-/

namespace A395948.P12872780721047199481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000431 n + A004526 n * A011782 n

end

end A395948.P12872780721047199481

namespace A395948

/-- `A000431(n)+A004526(n)*A011782(n)` -/
def P12872780721047199481.Spec : Prop :=
  ∀ n, P12872780721047199481.a n = A395948 n

end A395948

/-! ## A395948.P6131124234185998677

`A274497(n)+A166444(A004273(n))-n*A166444(n)`
-/

namespace A395948.P6131124234185998677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274497 n + (A166444 (A004273 n).toNat - (n : ℤ) * A166444 n)

end

end A395948.P6131124234185998677

namespace A395948

/-- `A274497(n)+A166444(A004273(n))-n*A166444(n)` -/
def P6131124234185998677.Spec : Prop :=
  ∀ n, P6131124234185998677.a n = A395948 n

end A395948

/-! ## A395948.P1356827102242597299

`floor(A051049(n)²/8)`
-/

namespace A395948.P1356827102242597299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A051049 n ^ 2 : ℚ) / 8⌋

end

end A395948.P1356827102242597299

namespace A395948

/-- `floor(A051049(n)²/8)` -/
def P1356827102242597299.Spec : Prop :=
  ∀ n, P1356827102242597299.a n = A395948 n

end A395948

/-! ## A395948.P1953165026100089208

`and(A117110(n), A377855(n))`
-/

namespace A395948.P1953165026100089208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A117110 n) (A377855 n)

end

end A395948.P1953165026100089208

namespace A395948

/-- `and(A117110(n), A377855(n))` -/
def P1953165026100089208.Spec : Prop :=
  ∀ n, P1953165026100089208.a n = A395948 n

end A395948

/-! ## A395948.P4988603444024417396

`floor((A000051(n)-A000035(n)-1)²/8)`
-/

namespace A395948.P4988603444024417396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A000051 n - A000035 n - 1) ^ 2 : ℚ) / 8⌋

end

end A395948.P4988603444024417396

namespace A395948

/-- `floor((A000051(n)-A000035(n)-1)²/8)` -/
def P4988603444024417396.Spec : Prop :=
  ∀ n, P4988603444024417396.a n = A395948 n

end A395948

/-!
# A395952: a(n) is the largest integer k < 2^(n-1) for which the number of divisors is equal to n, or 0 if no such k exists.

The programs for A395952, there is no canonical definition to state claims against.
-/

/-! ## A395952.P6088778379181885919

`A039860(A061215(n+1))`
-/

namespace A395952.P6088778379181885919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039860 (A061215 (n + 1)).toNat

end

end A395952.P6088778379181885919

/-! ## A395952.P8480631866135802790

`n%2*A238005(A288391(n))`
-/

namespace A395952.P8480631866135802790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * A238005 (A288391 n).toNat

end

end A395952.P8480631866135802790

/-! ## A395952.P14632826519608166278

`Δ[or(1, n)]*A335525(A335473(n))`
-/

namespace A395952.P14632826519608166278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A335525 (A335473 n).toNat

end

end A395952.P14632826519608166278

/-! ## A395952.P1925928979576668848

`A046051(A076220(n))*A183063(n+1)`
-/

namespace A395952.P1925928979576668848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046051 (A076220 n).toNat * A183063 (n + 1)

end

end A395952.P1925928979576668848

/-!
# A395955: Numerator of the n-th moment of the probability distribution of distances from the center of a unit disk to a line passing through two points independently and uniformly selected at random in the disk.

The programs for A395955, there is no canonical definition to state claims against.
-/

/-! ## A395955.P4337885567273807107

`A036065(5+A000217(5+n))`
-/

namespace A395955.P4337885567273807107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036065 (5 + A000217 (5 + n)).toNat

end

end A395955.P4337885567273807107

/-! ## A395955.P16945624174364134017

`A036065(eq[6, A002260(n+1)])`
-/

namespace A395955.P16945624174364134017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036065 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A395955.P16945624174364134017

/-! ## A395955.P17142071478698940366

`A000015(A240422(3*n+1)+1)^(n%2)`
-/

namespace A395955.P17142071478698940366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (A240422 (3 * n + 1) + 1).toNat ^ (n % 2)

end

end A395955.P17142071478698940366

/-! ## A395955.P8609453469808877375

`A000034(n)^A145653(A000141(n))`
-/

namespace A395955.P8609453469808877375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000034 n : ℚ) ^ (A145653 (A000141 n).toNat : ℤ)

end

end A395955.P8609453469808877375

/-!
# A395957: T(n,k) is a triangular array of the number of king's move self-avoiding walks of any length on an n X k grid.

The programs for A395957, there is no canonical definition to state claims against.
-/

/-! ## A395957.P6010887110305337470

`A341220(A341194(n)!)+A023443(n)`
-/

namespace A395957.P6010887110305337470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341220 (Nat.factorial (A341194 n).toNat) + A023443 n

end

end A395957.P6010887110305337470

/-!
# A395958: Third iterate of the Thue-Morse transform applied to A000035.

The programs for A395958, the canonical program `A395958.P5165968733303486376` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395958 has offset 0).

The definition of A395958 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A395958.P12618738446926872502

`char[A395960(1+n)]`
-/

namespace A395958.P12618738446926872502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395960 (1 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A395958.P12618738446926872502

namespace A395958

/-- `char[A395960(1+n)]` -/
def P12618738446926872502.Spec : Prop :=
  ∀ n, (P12618738446926872502.a n : ℤ) = A395958 n

end A395958

/-! ## A395958.P6773419212163938379

`char[comp[A395959(n+1)]]`
-/

namespace A395958.P6773419212163938379
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395959 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A395958.P6773419212163938379

namespace A395958

/-- `char[comp[A395959(n+1)]]` -/
def P6773419212163938379.Spec : Prop :=
  ∀ n, (P6773419212163938379.a n : ℤ) = A395958 n

end A395958

/-! ## A395958.P8885208089177421774

`ceil(A160700(n)/2)%2`
-/

namespace A395958.P8885208089177421774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(A160700 n : ℚ) / 2⌉ 2

end

end A395958.P8885208089177421774

namespace A395958

/-- `ceil(A160700(n)/2)%2` -/
def P8885208089177421774.Spec : Prop :=
  ∀ n, P8885208089177421774.a n = A395958 n

end A395958

/-! ## A395958.P9826272221503353432

`1-char[A395959(1+n)]`
-/

namespace A395958.P9826272221503353432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395959 (1 + n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A395958.P9826272221503353432

namespace A395958

/-- `1-char[A395959(1+n)]` -/
def P9826272221503353432.Spec : Prop :=
  ∀ n, P9826272221503353432.a n = A395958 n

end A395958

/-! ## A395958.P3698711855763034670

`ceil(A161455(n+1)/2)%2`
-/

namespace A395958.P3698711855763034670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(A161455 (n + 1) : ℚ) / 2⌉ 2

end

end A395958.P3698711855763034670

namespace A395958

/-- `ceil(A161455(n+1)/2)%2` -/
def P3698711855763034670.Spec : Prop :=
  ∀ n, P3698711855763034670.a n = A395958 n

end A395958

/-! ## A395958.P9365071303294484881

`and(1, ceil(A161448(1+n)/2))`
-/

namespace A395958.P9365071303294484881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌈(A161448 (1 + n) : ℚ) / 2⌉

end

end A395958.P9365071303294484881

namespace A395958

/-- `and(1, ceil(A161448(1+n)/2))` -/
def P9365071303294484881.Spec : Prop :=
  ∀ n, P9365071303294484881.a n = A395958 n

end A395958

/-! ## A395958.P7360254057538076965

`A010060(xor(n, a(floor(n/4))))` with `a(0)=0`
-/

namespace A395958.P7360254057538076965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A010060 (Int.xor (n : ℤ) (a ⌊(n : ℚ) / 4⌋.toNat)).toNat

end

end A395958.P7360254057538076965

namespace A395958

/-- `A010060(xor(n, a(floor(n/4))))` -/
def P7360254057538076965.Spec : Prop :=
  ∀ n, P7360254057538076965.a n = A395958 n

end A395958

/-! ## A395958.P2983427777029448263

`(A010059(n)+a(floor(n/4))-1)^(2*n)` with `a(0)=0, a(1)=1`
-/

namespace A395958.P2983427777029448263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (A010059 n + a ⌊(n : ℚ) / 4⌋.toNat - 1) ^ (2 * n)

end

end A395958.P2983427777029448263

namespace A395958

/-- `(A010059(n)+a(floor(n/4))-1)^(2*n)` -/
def P2983427777029448263.Spec : Prop :=
  ∀ n, P2983427777029448263.a n = A395958 n

end A395958

/-! ## A395958.P5165968733303486376

`A010060(A064707(n))`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A395958

/-- `A010060(A064707(n))` -/
def P5165968733303486376.Spec : Prop :=
  ∀ n, P5165968733303486376.a n = A395958 n

theorem P5165968733303486376.correct : P5165968733303486376.Spec := by
  intro n
  simp only [A395958]

end A395958

/-! ## A395958.P11994598469672935083

`A269927(A160700(n))`
-/

namespace A395958.P11994598469672935083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269927 (A160700 n).toNat

end

end A395958.P11994598469672935083

namespace A395958

/-- `A269927(A160700(n))` -/
def P11994598469672935083.Spec : Prop :=
  ∀ n, P11994598469672935083.a n = A395958 n

end A395958

/-! ## A395958.P11224286196184679466

`char[xor(floor(n/2), A000069(n+1))]`
-/

namespace A395958.P11224286196184679466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ⌊(n : ℚ) / 2⌋ (A000069 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A395958.P11224286196184679466

namespace A395958

/-- `char[xor(floor(n/2), A000069(n+1))]` -/
def P11224286196184679466.Spec : Prop :=
  ∀ n, (P11224286196184679466.a n : ℤ) = A395958 n

end A395958

/-! ## A395958.P2522019669366423172

`A395961(xor(n, floor(n/2)))`
-/

namespace A395958.P2522019669366423172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395961 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat

end

end A395958.P2522019669366423172

namespace A395958

/-- `A395961(xor(n, floor(n/2)))` -/
def P2522019669366423172.Spec : Prop :=
  ∀ n, P2522019669366423172.a n = A395958 n

end A395958

/-! ## A395958.P9900789951102081210

`A160700(xor(n, floor(n/2)))%2`
-/

namespace A395958.P9900789951102081210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160700 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat) 2

end

end A395958.P9900789951102081210

namespace A395958

/-- `A160700(xor(n, floor(n/2)))%2` -/
def P9900789951102081210.Spec : Prop :=
  ∀ n, P9900789951102081210.a n = A395958 n

end A395958

/-! ## A395958.P9365109227797287596

`A161448(xor(n, floor(n/2))+1)%2`
-/

namespace A395958.P9365109227797287596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161448 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋ + 1).toNat) 2

end

end A395958.P9365109227797287596

namespace A395958

/-- `A161448(xor(n, floor(n/2))+1)%2` -/
def P9365109227797287596.Spec : Prop :=
  ∀ n, P9365109227797287596.a n = A395958 n

end A395958

/-! ## A395958.P10288834291908852516

`A341389(A006068(n))`
-/

namespace A395958.P10288834291908852516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341389 (A006068 n).toNat

end

end A395958.P10288834291908852516

namespace A395958

/-- `A341389(A006068(n))` -/
def P10288834291908852516.Spec : Prop :=
  ∀ n, P10288834291908852516.a n = A395958 n

end A395958

/-! ## A395958.P7540881541178737818

`A165211(A193231(n))`
-/

namespace A395958.P7540881541178737818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165211 (A193231 n).toNat

end

end A395958.P7540881541178737818

namespace A395958

/-- `A165211(A193231(n))` -/
def P7540881541178737818.Spec : Prop :=
  ∀ n, P7540881541178737818.a n = A395958 n

end A395958

/-! ## A395958.P9464374076531810370

`A395961(A003188(n))`
-/

namespace A395958.P9464374076531810370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395961 (A003188 n).toNat

end

end A395958.P9464374076531810370

namespace A395958

/-- `A395961(A003188(n))` -/
def P9464374076531810370.Spec : Prop :=
  ∀ n, P9464374076531810370.a n = A395958 n

end A395958

/-! ## A395958.P3531644500725902041

`A269723(A268716(n))`
-/

namespace A395958.P3531644500725902041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269723 (A268716 n).toNat

end

end A395958.P3531644500725902041

namespace A395958

/-- `A269723(A268716(n))` -/
def P3531644500725902041.Spec : Prop :=
  ∀ n, P3531644500725902041.a n = A395958 n

end A395958

/-! ## A395958.P4074060363660343200

`A395961(A163241(n))`
-/

namespace A395958.P4074060363660343200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395961 (A163241 n).toNat

end

end A395958.P4074060363660343200

namespace A395958

/-- `A395961(A163241(n))` -/
def P4074060363660343200.Spec : Prop :=
  ∀ n, P4074060363660343200.a n = A395958 n

end A395958

/-! ## A395958.P2279157450248690415

`A395961(A163355(n))`
-/

namespace A395958.P2279157450248690415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395961 (A163355 n).toNat

end

end A395958.P2279157450248690415

namespace A395958

/-- `A395961(A163355(n))` -/
def P2279157450248690415.Spec : Prop :=
  ∀ n, P2279157450248690415.a n = A395958 n

end A395958

/-!
# A395959: Numbers k such that A395958(k) = 0.

The programs for A395959, the canonical program `A395959.P2730340011751273461` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395959 has offset 1).

The definition of A395959 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A395958, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A395959.P2730340011751273461

`2*n+A395958(2*n)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A395959

/-- `2*n+A395958(2*n)` -/
def P2730340011751273461.Spec : Prop :=
  ∀ n, P2730340011751273461.a n = A395959 (n + 1)

theorem P2730340011751273461.correct : P2730340011751273461.Spec := by
  intro n
  simp only [A395959, Nat.add_sub_cancel]

end A395959

/-! ## A395959.P17441411921508620069

`xor(1, A395960(1+n))`
-/

namespace A395959.P17441411921508620069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A395960 (1 + n))

end

end A395959.P17441411921508620069

namespace A395959

/-- `xor(1, A395960(1+n))` -/
def P17441411921508620069.Spec : Prop :=
  ∀ n, P17441411921508620069.a n = A395959 (n + 1)

end A395959

/-! ## A395959.P7269277556593066112

`A016813(n)-A395960(n+1)`
-/

namespace A395959.P7269277556593066112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n - A395960 (n + 1)

end

end A395959.P7269277556593066112

namespace A395959

/-- `A016813(n)-A395960(n+1)` -/
def P7269277556593066112.Spec : Prop :=
  ∀ n, P7269277556593066112.a n = A395959 (n + 1)

theorem P7269277556593066112.correct : P7269277556593066112.Spec := by
  intro n
  simp only [A395959, Nat.add_sub_cancel, A395959.P7269277556593066112.a, A395959.P2730340011751273461.a, A016813, A016813.P15626904835145642280.a, A395958, A395958.P5165968733303486376.a, A395960, A395960.P5958715908451391238.a, A010060, A010060.P3080921269106500717.a, A064707, A064707.P16779567911126322867.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A180200, A180200.P2958972076606443306.a, A233279, A233279.P10877154597455539139.a, A003817, A003817.P16251594020616633079.a, A005187, A005187.P3874015513960485494.a, A006068, A006068.P433290056721054414.a, A063946, A063946.P16527692200540905240.a, A292600, A292600.P3914548694480041296.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A395959

/-! ## A395959.P3493203959655040220

`A002943(n)/A395960(n+1)`
-/

namespace A395959.P3493203959655040220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002943 n : ℚ) / (A395960 (n + 1) : ℚ)

end

end A395959.P3493203959655040220

namespace A395959

/-- `A002943(n)/A395960(n+1)` -/
def P3493203959655040220.Spec : Prop :=
  ∀ n, P3493203959655040220.a n = (A395959 (n + 1) : ℚ)

end A395959

/-! ## A395959.P9714823752039904361

`xor(A158704(n+1), A395958(n))`
-/

namespace A395959.P9714823752039904361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A158704 (n + 1)) (A395958 n)

end

end A395959.P9714823752039904361

namespace A395959

/-- `xor(A158704(n+1), A395958(n))` -/
def P9714823752039904361.Spec : Prop :=
  ∀ n, P9714823752039904361.a n = A395959 (n + 1)

end A395959

/-! ## A395959.P7485574554681714467

`xor(A395961(n), A395962(n+1))`
-/

namespace A395959.P7485574554681714467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A395961 n) (A395962 (n + 1))

end

end A395959.P7485574554681714467

namespace A395959

/-- `xor(A395961(n), A395962(n+1))` -/
def P7485574554681714467.Spec : Prop :=
  ∀ n, P7485574554681714467.a n = A395959 (n + 1)

end A395959

/-! ## A395959.P5474870238635279113

`A000069(n+1)+A001969(n+1)-A395960(n+1)`
-/

namespace A395959.P5474870238635279113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1) + (A001969 (n + 1) - A395960 (n + 1))

end

end A395959.P5474870238635279113

namespace A395959

/-- `A000069(n+1)+A001969(n+1)-A395960(n+1)` -/
def P5474870238635279113.Spec : Prop :=
  ∀ n, P5474870238635279113.a n = A395959 (n + 1)

end A395959

/-! ## A395959.P9953028874553506893

`A158704(n+1)+A158705(n+1)-A395960(n+1)`
-/

namespace A395959.P9953028874553506893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158704 (n + 1) + (A158705 (n + 1) - A395960 (n + 1))

end

end A395959.P9953028874553506893

namespace A395959

/-- `A158704(n+1)+A158705(n+1)-A395960(n+1)` -/
def P9953028874553506893.Spec : Prop :=
  ∀ n, P9953028874553506893.a n = A395959 (n + 1)

end A395959

/-! ## A395959.P7066820002874987282

`A395962(n+1)+A395963(n+1)-A395960(n+1)`
-/

namespace A395959.P7066820002874987282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395962 (n + 1) + (A395963 (n + 1) - A395960 (n + 1))

end

end A395959.P7066820002874987282

namespace A395959

/-- `A395962(n+1)+A395963(n+1)-A395960(n+1)` -/
def P7066820002874987282.Spec : Prop :=
  ∀ n, P7066820002874987282.a n = A395959 (n + 1)

theorem P7066820002874987282.correct : P7066820002874987282.Spec := by
  intro n
  simp only [A395959, Nat.add_sub_cancel, A395959.P7066820002874987282.a, A395959.P2730340011751273461.a, A395958, A395958.P5165968733303486376.a, A395960, A395960.P5958715908451391238.a, A395962, A395962.P3547014246278371736.a, A395963, A395963.P2013661775841027138.a, A010060, A010060.P3080921269106500717.a, A064707, A064707.P16779567911126322867.a, A395961, A395961.P9208801736051543594.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A053836, A053836.P6566921165131624833.a, A180200, A180200.P2958972076606443306.a, A233279, A233279.P10877154597455539139.a, A003817, A003817.P16251594020616633079.a, A005187, A005187.P3874015513960485494.a, A006068, A006068.P433290056721054414.a, A054900, A054900.P10951327238473995848.a, A063946, A063946.P16527692200540905240.a, A292600, A292600.P3914548694480041296.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A395959

/-! ## A395959.P4396228982941411716

`comp[A395960(n+1)]`
-/

namespace A395959.P4396228982941411716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A395959.P4396228982941411716

namespace A395959

/-- `comp[A395960(n+1)]` -/
def P4396228982941411716.Spec : Prop :=
  ∀ n, (P4396228982941411716.a n : ℤ) = A395959 (n + 1)

end A395959

/-! ## A395959.P18415577603704080382

`lt[n*A395958(n), 1]`
-/

namespace A395959.P18415577603704080382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A395958 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A395959.P18415577603704080382

namespace A395959

/-- `lt[n*A395958(n), 1]` -/
def P18415577603704080382.Spec : Prop :=
  ∀ n, (P18415577603704080382.a n : ℤ) = A395959 (n + 1)

end A395959

/-! ## A395959.P9478918717210016886

`xor(Δ[n²], A395958(Δ[n²]))`
-/

namespace A395959.P9478918717210016886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) (A395958 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat)

end

end A395959.P9478918717210016886

namespace A395959

/-- `xor(Δ[n²], A395958(Δ[n²]))` -/
def P9478918717210016886.Spec : Prop :=
  ∀ n, P9478918717210016886.a n = A395959 (n + 1)

end A395959

/-! ## A395959.P3075683231214673971

`lt[A065620(A064707(n)), 1]`
-/

namespace A395959.P3075683231214673971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065620 (A064707 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A395959.P3075683231214673971

namespace A395959

/-- `lt[A065620(A064707(n)), 1]` -/
def P3075683231214673971.Spec : Prop :=
  ∀ n, (P3075683231214673971.a n : ℤ) = A395959 (n + 1)

end A395959

/-! ## A395959.P12524603400481249381

`eq[A181405(n+1), A395958(n)]`
-/

namespace A395959.P12524603400481249381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395958 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A395959.P12524603400481249381

namespace A395959

/-- `eq[A181405(n+1), A395958(n)]` -/
def P12524603400481249381.Spec : Prop :=
  ∀ n, (P12524603400481249381.a n : ℤ) = A395959 (n + 1)

end A395959

/-! ## A395959.P68712833505823515

`comp[xor(3, A395960(A028310(n)))]`
-/

namespace A395959.P68712833505823515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A395960 (A028310 n).toNat)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A395959.P68712833505823515

namespace A395959

/-- `comp[xor(3, A395960(A028310(n)))]` -/
def P68712833505823515.Spec : Prop :=
  ∀ n, (P68712833505823515.a n : ℤ) = A395959 (n + 1)

end A395959

/-! ## A395959.P16261064291723872713

`comp[filter[A173517(n), A395958(#)]]`
-/

namespace A395959.P16261064291723872713
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173517 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => A395958 (f2 j).toNat = 1) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A395959.P16261064291723872713

namespace A395959

/-- `comp[filter[A173517(n), A395958(#)]]` -/
def P16261064291723872713.Spec : Prop :=
  ∀ n, (P16261064291723872713.a n : ℤ) = A395959 (n + 1)

end A395959

/-! ## A395959.P6139315733353768638

`comp[xor(n, A158705(n+1))]`
-/

namespace A395959.P6139315733353768638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A158705 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A395959.P6139315733353768638

namespace A395959

/-- `comp[xor(n, A158705(n+1))]` -/
def P6139315733353768638.Spec : Prop :=
  ∀ n, (P6139315733353768638.a n : ℤ) = A395959 (n + 1)

end A395959

/-! ## A395959.P12933835565869691761

`comp[xor(floor(n/2), A000069(n+1))]`
-/

namespace A395959.P12933835565869691761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ⌊(n : ℚ) / 2⌋ (A000069 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A395959.P12933835565869691761

namespace A395959

/-- `comp[xor(floor(n/2), A000069(n+1))]` -/
def P12933835565869691761.Spec : Prop :=
  ∀ n, (P12933835565869691761.a n : ℤ) = A395959 (n + 1)

end A395959

/-! ## A395959.P1509625262454531276

`comp[A028310(n*A395958(n))]`
-/

namespace A395959.P1509625262454531276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((n : ℤ) * A395958 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A395959.P1509625262454531276

namespace A395959

/-- `comp[A028310(n*A395958(n))]` -/
def P1509625262454531276.Spec : Prop :=
  ∀ n, (P1509625262454531276.a n : ℤ) = A395959 (n + 1)

end A395959

/-! ## A395959.P10783490515935878079

`2*n+1-A341389(A395960(2*n+1))`
-/

namespace A395959.P10783490515935878079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A341389 (A395960 (2 * n + 1)).toNat

end

end A395959.P10783490515935878079

namespace A395959

/-- `2*n+1-A341389(A395960(2*n+1))` -/
def P10783490515935878079.Spec : Prop :=
  ∀ n, P10783490515935878079.a n = A395959 (n + 1)

end A395959

/-!
# A395960: Numbers k such that A395958(k) = 1.

The programs for A395960, the canonical program `A395960.P5958715908451391238` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395960 has offset 1).

The definition of A395960 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A395958, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A395960.P5958715908451391238

`2*n+1-A395958(2*n)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A395960

/-- `2*n+1-A395958(2*n)` -/
def P5958715908451391238.Spec : Prop :=
  ∀ n, P5958715908451391238.a n = A395960 (n + 1)

theorem P5958715908451391238.correct : P5958715908451391238.Spec := by
  intro n
  simp only [A395960, Nat.add_sub_cancel]

end A395960

/-! ## A395960.P9895227511985977831

`comp[A395959(1+n)]`
-/

namespace A395960.P9895227511985977831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395959 (1 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A395960.P9895227511985977831

namespace A395960

/-- `comp[A395959(1+n)]` -/
def P9895227511985977831.Spec : Prop :=
  ∀ n, (P9895227511985977831.a n : ℤ) = A395960 (n + 1)

end A395960

/-! ## A395960.P3330792508498185626

`xor(1, A395959(n+1))`
-/

namespace A395960.P3330792508498185626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A395959 (n + 1))

end

end A395960.P3330792508498185626

namespace A395960

/-- `xor(1, A395959(n+1))` -/
def P3330792508498185626.Spec : Prop :=
  ∀ n, P3330792508498185626.a n = A395960 (n + 1)

end A395960

/-! ## A395960.P11498477628546384965

`A016813(n)-A395959(n+1)`
-/

namespace A395960.P11498477628546384965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n - A395959 (n + 1)

end

end A395960.P11498477628546384965

namespace A395960

/-- `A016813(n)-A395959(n+1)` -/
def P11498477628546384965.Spec : Prop :=
  ∀ n, P11498477628546384965.a n = A395960 (n + 1)

theorem P11498477628546384965.correct : P11498477628546384965.Spec := by
  intro n
  simp only [A395960, Nat.add_sub_cancel, A395960.P11498477628546384965.a, A395960.P5958715908451391238.a, A016813, A016813.P15626904835145642280.a, A395958, A395958.P5165968733303486376.a, A395959, A395959.P2730340011751273461.a, A010060, A010060.P3080921269106500717.a, A064707, A064707.P16779567911126322867.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A180200, A180200.P2958972076606443306.a, A233279, A233279.P10877154597455539139.a, A003817, A003817.P16251594020616633079.a, A005187, A005187.P3874015513960485494.a, A006068, A006068.P433290056721054414.a, A063946, A063946.P16527692200540905240.a, A292600, A292600.P3914548694480041296.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A395960

/-! ## A395960.P17893372463751852632

`xor(A158705(n+1), A395958(n))`
-/

namespace A395960.P17893372463751852632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A158705 (n + 1)) (A395958 n)

end

end A395960.P17893372463751852632

namespace A395960

/-- `xor(A158705(n+1), A395958(n))` -/
def P17893372463751852632.Spec : Prop :=
  ∀ n, P17893372463751852632.a n = A395960 (n + 1)

end A395960

/-! ## A395960.P11286974273670211296

`xor(A395961(n), A395963(n+1))`
-/

namespace A395960.P11286974273670211296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A395961 n) (A395963 (n + 1))

end

end A395960.P11286974273670211296

namespace A395960

/-- `xor(A395961(n), A395963(n+1))` -/
def P11286974273670211296.Spec : Prop :=
  ∀ n, P11286974273670211296.a n = A395960 (n + 1)

end A395960

/-! ## A395960.P1378202431698301557

`A000069(n+1)+A001969(n+1)-A395959(n+1)`
-/

namespace A395960.P1378202431698301557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1) + (A001969 (n + 1) - A395959 (n + 1))

end

end A395960.P1378202431698301557

namespace A395960

/-- `A000069(n+1)+A001969(n+1)-A395959(n+1)` -/
def P1378202431698301557.Spec : Prop :=
  ∀ n, P1378202431698301557.a n = A395960 (n + 1)

end A395960

/-! ## A395960.P15921205474309839961

`A158704(n+1)+A158705(n+1)-A395959(n+1)`
-/

namespace A395960.P15921205474309839961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158704 (n + 1) + (A158705 (n + 1) - A395959 (n + 1))

end

end A395960.P15921205474309839961

namespace A395960

/-- `A158704(n+1)+A158705(n+1)-A395959(n+1)` -/
def P15921205474309839961.Spec : Prop :=
  ∀ n, P15921205474309839961.a n = A395960 (n + 1)

end A395960

/-! ## A395960.P1464641239969025867

`A395962(n+1)+A395963(n+1)-A395959(n+1)`
-/

namespace A395960.P1464641239969025867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395962 (n + 1) + (A395963 (n + 1) - A395959 (n + 1))

end

end A395960.P1464641239969025867

namespace A395960

/-- `A395962(n+1)+A395963(n+1)-A395959(n+1)` -/
def P1464641239969025867.Spec : Prop :=
  ∀ n, P1464641239969025867.a n = A395960 (n + 1)

theorem P1464641239969025867.correct : P1464641239969025867.Spec := by
  intro n
  simp only [A395960, Nat.add_sub_cancel, A395960.P1464641239969025867.a, A395960.P5958715908451391238.a, A395958, A395958.P5165968733303486376.a, A395959, A395959.P2730340011751273461.a, A395962, A395962.P3547014246278371736.a, A395963, A395963.P2013661775841027138.a, A010060, A010060.P3080921269106500717.a, A064707, A064707.P16779567911126322867.a, A395961, A395961.P9208801736051543594.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A053836, A053836.P6566921165131624833.a, A180200, A180200.P2958972076606443306.a, A233279, A233279.P10877154597455539139.a, A003817, A003817.P16251594020616633079.a, A005187, A005187.P3874015513960485494.a, A006068, A006068.P433290056721054414.a, A054900, A054900.P10951327238473995848.a, A063946, A063946.P16527692200540905240.a, A292600, A292600.P3914548694480041296.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A395960

/-! ## A395960.P18195507512285487767

`A003188(A003188(A000069(A066194(A066194(n+1)))))`
-/

namespace A395960.P18195507512285487767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A003188 (A000069 (A066194 (A066194 (n + 1)).toNat).toNat).toNat).toNat

end

end A395960.P18195507512285487767

namespace A395960

/-- `A003188(A003188(A000069(A066194(A066194(n+1)))))` -/
def P18195507512285487767.Spec : Prop :=
  ∀ n, P18195507512285487767.a n = A395960 (n + 1)

end A395960

/-! ## A395960.P17358423147572213006

`A004442(A395959(n+1))`
-/

namespace A395960.P17358423147572213006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A395959 (n + 1)).toNat

end

end A395960.P17358423147572213006

namespace A395960

/-- `A004442(A395959(n+1))` -/
def P17358423147572213006.Spec : Prop :=
  ∀ n, P17358423147572213006.a n = A395960 (n + 1)

end A395960

/-! ## A395960.P8939763314195477642

`fp[∑[A395958(n)]]`
-/

namespace A395960.P8939763314195477642
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395958 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0

end

end A395960.P8939763314195477642

namespace A395960

/-- `fp[∑[A395958(n)]]` -/
def P8939763314195477642.Spec : Prop :=
  ∀ n, (P8939763314195477642.a n : ℤ) = A395960 (n + 1)

end A395960

/-! ## A395960.P17489088635558376228

`record[(n+1)*A395958(n+1)]`
-/

namespace A395960.P17489088635558376228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A395958 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A395960.P17489088635558376228

namespace A395960

/-- `record[(n+1)*A395958(n+1)]` -/
def P17489088635558376228.Spec : Prop :=
  ∀ n, P17489088635558376228.a n = A395960 (n + 1)

end A395960

/-! ## A395960.P15516122156737004607

`A395958(2*n+1)+2*n`
-/

namespace A395960.P15516122156737004607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395958 (2 * n + 1) + (2 * n : ℤ)

end

end A395960.P15516122156737004607

namespace A395960

/-- `A395958(2*n+1)+2*n` -/
def P15516122156737004607.Spec : Prop :=
  ∀ n, P15516122156737004607.a n = A395960 (n + 1)

end A395960

/-! ## A395960.P9707446932701083763

`lt[0, A065620(A064707(n))]`
-/

namespace A395960.P9707446932701083763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065620 (A064707 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A395960.P9707446932701083763

namespace A395960

/-- `lt[0, A065620(A064707(n))]` -/
def P9707446932701083763.Spec : Prop :=
  ∀ n, (P9707446932701083763.a n : ℤ) = A395960 (n + 1)

end A395960

/-! ## A395960.P12063964374436439870

`filter[A004442(n), A395958(#)]`
-/

namespace A395960.P12063964374436439870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A395958 (f1 j).toNat = 1) n)

end

end A395960.P12063964374436439870

namespace A395960

/-- `filter[A004442(n), A395958(#)]` -/
def P12063964374436439870.Spec : Prop :=
  ∀ n, P12063964374436439870.a n = A395960 (n + 1)

end A395960

/-! ## A395960.P5233968459300185407

`filter[A116966(n), A395958(#)]`
-/

namespace A395960.P5233968459300185407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A395958 (f1 j).toNat = 1) n)

end

end A395960.P5233968459300185407

namespace A395960

/-- `filter[A116966(n), A395958(#)]` -/
def P5233968459300185407.Spec : Prop :=
  ∀ n, P5233968459300185407.a n = A395960 (n + 1)

end A395960

/-! ## A395960.P6775062063653208458

`filter[A143579(n), A395958(#)]`
-/

namespace A395960.P6775062063653208458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A395958 (f1 j).toNat = 1) n)

end

end A395960.P6775062063653208458

namespace A395960

/-- `filter[A143579(n), A395958(#)]` -/
def P6775062063653208458.Spec : Prop :=
  ∀ n, P6775062063653208458.a n = A395960 (n + 1)

end A395960

/-! ## A395960.P10744460087536262009

`filter[A160017(n), A395958(#)]`
-/

namespace A395960.P10744460087536262009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A395958 (f1 j).toNat = 1) n)

end

end A395960.P10744460087536262009

namespace A395960

/-- `filter[A160017(n), A395958(#)]` -/
def P10744460087536262009.Spec : Prop :=
  ∀ n, P10744460087536262009.a n = A395960 (n + 1)

end A395960

/-! ## A395960.P18267256786141969382

`comp[2*n+A395958(2*n)]`
-/

namespace A395960.P18267256786141969382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + A395958 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A395960.P18267256786141969382

namespace A395960

/-- `comp[2*n+A395958(2*n)]` -/
def P18267256786141969382.Spec : Prop :=
  ∀ n, (P18267256786141969382.a n : ℤ) = A395960 (n + 1)

end A395960

/-!
# A395961: Fourth iterate of the Thue-Morse transform applied to A000035.

The programs for A395961, the canonical program `A395961.P9208801736051543594` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395961 has offset 0).

The definition of A395961 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A395961.P4786598650141916304

`char[xor(2*n+1, floor(n/8))]`
-/

namespace A395961.P4786598650141916304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * n + 1 : ℤ) ⌊(n : ℚ) / 8⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A395961.P4786598650141916304

namespace A395961

/-- `char[xor(2*n+1, floor(n/8))]` -/
def P4786598650141916304.Spec : Prop :=
  ∀ n, (P4786598650141916304.a n : ℤ) = A395961 n

end A395961

/-! ## A395961.P17198057700072244298

`1-char[xor(2*n, floor(n/8))]`
-/

namespace A395961.P17198057700072244298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * n : ℤ) ⌊(n : ℚ) / 8⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A395961.P17198057700072244298

namespace A395961

/-- `1-char[xor(2*n, floor(n/8))]` -/
def P17198057700072244298.Spec : Prop :=
  ∀ n, P17198057700072244298.a n = A395961 n

end A395961

/-! ## A395961.P9208801736051543594

`A053836(n)%2`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A395961

/-- `A053836(n)%2` -/
def P9208801736051543594.Spec : Prop :=
  ∀ n, P9208801736051543594.a n = A395961 n

theorem P9208801736051543594.correct : P9208801736051543594.Spec := by
  intro n
  simp only [A395961]

end A395961

/-! ## A395961.P6111198385996075714

`A160700(n)%2`
-/

namespace A395961.P6111198385996075714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160700 n) 2

end

end A395961.P6111198385996075714

namespace A395961

/-- `A160700(n)%2` -/
def P6111198385996075714.Spec : Prop :=
  ∀ n, P6111198385996075714.a n = A395961 n

end A395961

/-! ## A395961.P17507604994995521225

`char[A395963(n+1)]`
-/

namespace A395961.P17507604994995521225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A395961.P17507604994995521225

namespace A395961

/-- `char[A395963(n+1)]` -/
def P17507604994995521225.Spec : Prop :=
  ∀ n, (P17507604994995521225.a n : ℤ) = A395961 n

end A395961

/-! ## A395961.P6038939166642292162

`A161440(n+1)%2`
-/

namespace A395961.P6038939166642292162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161440 (n + 1)) 2

end

end A395961.P6038939166642292162

namespace A395961

/-- `A161440(n+1)%2` -/
def P6038939166642292162.Spec : Prop :=
  ∀ n, P6038939166642292162.a n = A395961 n

end A395961

/-! ## A395961.P14596973488601683122

`A161442(n+1)%2`
-/

namespace A395961.P14596973488601683122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161442 (n + 1)) 2

end

end A395961.P14596973488601683122

namespace A395961

/-- `A161442(n+1)%2` -/
def P14596973488601683122.Spec : Prop :=
  ∀ n, P14596973488601683122.a n = A395961 n

end A395961

/-! ## A395961.P13963469156602708827

`A161444(n+1)%2`
-/

namespace A395961.P13963469156602708827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161444 (n + 1)) 2

end

end A395961.P13963469156602708827

namespace A395961

/-- `A161444(n+1)%2` -/
def P13963469156602708827.Spec : Prop :=
  ∀ n, P13963469156602708827.a n = A395961 n

end A395961

/-! ## A395961.P11397341610385480912

`A161446(n+1)%2`
-/

namespace A395961.P11397341610385480912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161446 (n + 1)) 2

end

end A395961.P11397341610385480912

namespace A395961

/-- `A161446(n+1)%2` -/
def P11397341610385480912.Spec : Prop :=
  ∀ n, P11397341610385480912.a n = A395961 n

end A395961

/-! ## A395961.P2851411582280525627

`A161448(n+1)%2`
-/

namespace A395961.P2851411582280525627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161448 (n + 1)) 2

end

end A395961.P2851411582280525627

namespace A395961

/-- `A161448(n+1)%2` -/
def P2851411582280525627.Spec : Prop :=
  ∀ n, P2851411582280525627.a n = A395961 n

end A395961

/-! ## A395961.P16954482704537067152

`A161450(n+1)%2`
-/

namespace A395961.P16954482704537067152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161450 (n + 1)) 2

end

end A395961.P16954482704537067152

namespace A395961

/-- `A161450(n+1)%2` -/
def P16954482704537067152.Spec : Prop :=
  ∀ n, P16954482704537067152.a n = A395961 n

end A395961

/-! ## A395961.P8797847212928800122

`A161452(n+1)%2`
-/

namespace A395961.P8797847212928800122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161452 (n + 1)) 2

end

end A395961.P8797847212928800122

namespace A395961

/-- `A161452(n+1)%2` -/
def P8797847212928800122.Spec : Prop :=
  ∀ n, P8797847212928800122.a n = A395961 n

end A395961

/-! ## A395961.P4811574139151443634

`A161454(n+1)%2`
-/

namespace A395961.P4811574139151443634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161454 (n + 1)) 2

end

end A395961.P4811574139151443634

namespace A395961

/-- `A161454(n+1)%2` -/
def P4811574139151443634.Spec : Prop :=
  ∀ n, P4811574139151443634.a n = A395961 n

end A395961

/-! ## A395961.P1093102511241441901

`gcd(2, A161455(n+1))-1`
-/

namespace A395961.P1093102511241441901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A161455 (n + 1)) : ℤ) - 1

end

end A395961.P1093102511241441901

namespace A395961

/-- `gcd(2, A161455(n+1))-1` -/
def P1093102511241441901.Spec : Prop :=
  ∀ n, P1093102511241441901.a n = A395961 n

end A395961

/-! ## A395961.P5217465268054682149

`A000035(A053836(n))`
-/

namespace A395961.P5217465268054682149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A053836 n).toNat

end

end A395961.P5217465268054682149

namespace A395961

/-- `A000035(A053836(n))` -/
def P5217465268054682149.Spec : Prop :=
  ∀ n, P5217465268054682149.a n = A395961 n

end A395961

/-! ## A395961.P469990935586357794

`A000035(A160700(n))`
-/

namespace A395961.P469990935586357794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A160700 n).toNat

end

end A395961.P469990935586357794

namespace A395961

/-- `A000035(A160700(n))` -/
def P469990935586357794.Spec : Prop :=
  ∀ n, P469990935586357794.a n = A395961 n

end A395961

/-! ## A395961.P1315113778028798124

`and(A016760(n), A160700(n))`
-/

namespace A395961.P1315113778028798124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016760 n) (A160700 n)

end

end A395961.P1315113778028798124

namespace A395961

/-- `and(A016760(n), A160700(n))` -/
def P1315113778028798124.Spec : Prop :=
  ∀ n, P1315113778028798124.a n = A395961 n

end A395961

/-! ## A395961.P13015728120225881800

`and(A016820(n), A160700(n))`
-/

namespace A395961.P13015728120225881800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016820 n) (A160700 n)

end

end A395961.P13015728120225881800

namespace A395961

/-- `and(A016820(n), A160700(n))` -/
def P13015728120225881800.Spec : Prop :=
  ∀ n, P13015728120225881800.a n = A395961 n

end A395961

/-! ## A395961.P7700400347138480407

`and(A160700(n), A282997(n+1))`
-/

namespace A395961.P7700400347138480407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A160700 n) (A282997 (n + 1))

end

end A395961.P7700400347138480407

namespace A395961

/-- `and(A160700(n), A282997(n+1))` -/
def P7700400347138480407.Spec : Prop :=
  ∀ n, P7700400347138480407.a n = A395961 n

end A395961

/-! ## A395961.P1918862927542464862

`A341389(A064707(n))`
-/

namespace A395961.P1918862927542464862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341389 (A064707 n).toNat

end

end A395961.P1918862927542464862

namespace A395961

/-- `A341389(A064707(n))` -/
def P1918862927542464862.Spec : Prop :=
  ∀ n, P1918862927542464862.a n = A395961 n

end A395961

/-!
# A395962: Numbers k such that A395961(k) = 0.

The programs for A395962, the canonical program `A395962.P3547014246278371736` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395962 has offset 1).

The definition of A395962 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A395961, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A395962.P3547014246278371736

`2*n+A395961(2*n)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A395962

/-- `2*n+A395961(2*n)` -/
def P3547014246278371736.Spec : Prop :=
  ∀ n, P3547014246278371736.a n = A395962 (n + 1)

theorem P3547014246278371736.correct : P3547014246278371736.Spec := by
  intro n
  simp only [A395962, Nat.add_sub_cancel]

end A395962

/-! ## A395962.P9259841425629453527

`xor(1, A395963(1+n))`
-/

namespace A395962.P9259841425629453527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A395963 (1 + n))

end

end A395962.P9259841425629453527

namespace A395962

/-- `xor(1, A395963(1+n))` -/
def P9259841425629453527.Spec : Prop :=
  ∀ n, P9259841425629453527.a n = A395962 (n + 1)

end A395962

/-! ## A395962.P17717595874120264638

`floor(A161441(1+n)/8)`
-/

namespace A395962.P17717595874120264638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A161441 (1 + n) : ℚ) / 8⌋

end

end A395962.P17717595874120264638

namespace A395962

/-- `floor(A161441(1+n)/8)` -/
def P17717595874120264638.Spec : Prop :=
  ∀ n, P17717595874120264638.a n = A395962 (n + 1)

end A395962

/-! ## A395962.P4152184187921098879

`floor(A161442(n+1)/8)`
-/

namespace A395962.P4152184187921098879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A161442 (n + 1) : ℚ) / 8⌋

end

end A395962.P4152184187921098879

namespace A395962

/-- `floor(A161442(n+1)/8)` -/
def P4152184187921098879.Spec : Prop :=
  ∀ n, P4152184187921098879.a n = A395962 (n + 1)

end A395962

/-! ## A395962.P3765953578767312993

`floor(A161444(n+1)/8)`
-/

namespace A395962.P3765953578767312993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A161444 (n + 1) : ℚ) / 8⌋

end

end A395962.P3765953578767312993

namespace A395962

/-- `floor(A161444(n+1)/8)` -/
def P3765953578767312993.Spec : Prop :=
  ∀ n, P3765953578767312993.a n = A395962 (n + 1)

end A395962

/-! ## A395962.P814300319926166696

`floor(A161446(n+1)/8)`
-/

namespace A395962.P814300319926166696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A161446 (n + 1) : ℚ) / 8⌋

end

end A395962.P814300319926166696

namespace A395962

/-- `floor(A161446(n+1)/8)` -/
def P814300319926166696.Spec : Prop :=
  ∀ n, P814300319926166696.a n = A395962 (n + 1)

end A395962

/-! ## A395962.P10975257711702702527

`floor(A161447(n+1)/8)`
-/

namespace A395962.P10975257711702702527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A161447 (n + 1) : ℚ) / 8⌋

end

end A395962.P10975257711702702527

namespace A395962

/-- `floor(A161447(n+1)/8)` -/
def P10975257711702702527.Spec : Prop :=
  ∀ n, P10975257711702702527.a n = A395962 (n + 1)

end A395962

/-! ## A395962.P13023405340579524804

`A016813(n)-A395963(n+1)`
-/

namespace A395962.P13023405340579524804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n - A395963 (n + 1)

end

end A395962.P13023405340579524804

namespace A395962

/-- `A016813(n)-A395963(n+1)` -/
def P13023405340579524804.Spec : Prop :=
  ∀ n, P13023405340579524804.a n = A395962 (n + 1)

theorem P13023405340579524804.correct : P13023405340579524804.Spec := by
  intro n
  simp only [A395962, Nat.add_sub_cancel, A395962.P13023405340579524804.a, A395962.P3547014246278371736.a, A016813, A016813.P15626904835145642280.a, A395961, A395961.P9208801736051543594.a, A395963, A395963.P2013661775841027138.a, A053836, A053836.P6566921165131624833.a, A054900, A054900.P10951327238473995848.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A395962

/-! ## A395962.P8061547621421497270

`A002943(n)/A395963(n+1)`
-/

namespace A395962.P8061547621421497270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002943 n : ℚ) / (A395963 (n + 1) : ℚ)

end

end A395962.P8061547621421497270

namespace A395962

/-- `A002943(n)/A395963(n+1)` -/
def P8061547621421497270.Spec : Prop :=
  ∀ n, P8061547621421497270.a n = (A395962 (n + 1) : ℚ)

end A395962

/-! ## A395962.P13989916355927260178

`xor(A395959(n+1), A395961(n))`
-/

namespace A395962.P13989916355927260178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A395959 (n + 1)) (A395961 n)

end

end A395962.P13989916355927260178

namespace A395962

/-- `xor(A395959(n+1), A395961(n))` -/
def P13989916355927260178.Spec : Prop :=
  ∀ n, P13989916355927260178.a n = A395962 (n + 1)

end A395962

/-! ## A395962.P595439239897668235

`A158704(n+1)+A158705(n+1)-A395963(n+1)`
-/

namespace A395962.P595439239897668235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158704 (n + 1) + (A158705 (n + 1) - A395963 (n + 1))

end

end A395962.P595439239897668235

namespace A395962

/-- `A158704(n+1)+A158705(n+1)-A395963(n+1)` -/
def P595439239897668235.Spec : Prop :=
  ∀ n, P595439239897668235.a n = A395962 (n + 1)

end A395962

/-! ## A395962.P504876506253807869

`A395959(n+1)+A395960(n+1)-A395963(n+1)`
-/

namespace A395962.P504876506253807869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395959 (n + 1) + (A395960 (n + 1) - A395963 (n + 1))

end

end A395962.P504876506253807869

namespace A395962

/-- `A395959(n+1)+A395960(n+1)-A395963(n+1)` -/
def P504876506253807869.Spec : Prop :=
  ∀ n, P504876506253807869.a n = A395962 (n + 1)

theorem P504876506253807869.correct : P504876506253807869.Spec := by
  intro n
  simp only [A395962, Nat.add_sub_cancel, A395962.P504876506253807869.a, A395962.P3547014246278371736.a, A395959, A395959.P2730340011751273461.a, A395960, A395960.P5958715908451391238.a, A395961, A395961.P9208801736051543594.a, A395963, A395963.P2013661775841027138.a, A053836, A053836.P6566921165131624833.a, A395958, A395958.P5165968733303486376.a, A010060, A010060.P3080921269106500717.a, A054900, A054900.P10951327238473995848.a, A064707, A064707.P16779567911126322867.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A180200, A180200.P2958972076606443306.a, A233279, A233279.P10877154597455539139.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A395962

/-! ## A395962.P17502150435626921683

`comp[A395963(n+1)]`
-/

namespace A395962.P17502150435626921683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A395962.P17502150435626921683

namespace A395962

/-- `comp[A395963(n+1)]` -/
def P17502150435626921683.Spec : Prop :=
  ∀ n, (P17502150435626921683.a n : ℤ) = A395962 (n + 1)

end A395962

/-! ## A395962.P5203960474138607057

`lt[0, (-2)^A053836(n)]`
-/

namespace A395962.P5203960474138607057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-2 : ℚ) ^ (A053836 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A395962.P5203960474138607057

namespace A395962

/-- `lt[0, (-2)^A053836(n)]` -/
def P5203960474138607057.Spec : Prop :=
  ∀ n, (P5203960474138607057.a n : ℤ) = A395962 (n + 1)

end A395962

/-! ## A395962.P603309647290178736

`lt[-1, (-3)^A160700(n)]`
-/

namespace A395962.P603309647290178736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-3 : ℚ) ^ (A160700 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A395962.P603309647290178736

namespace A395962

/-- `lt[-1, (-3)^A160700(n)]` -/
def P603309647290178736.Spec : Prop :=
  ∀ n, (P603309647290178736.a n : ℤ) = A395962 (n + 1)

end A395962

/-! ## A395962.P7162655601930537626

`eq[A053839(n), A287576(n+1)]`
-/

namespace A395962.P7162655601930537626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053839 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287576 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A395962.P7162655601930537626

namespace A395962

/-- `eq[A053839(n), A287576(n+1)]` -/
def P7162655601930537626.Spec : Prop :=
  ∀ n, (P7162655601930537626.a n : ℤ) = A395962 (n + 1)

end A395962

/-! ## A395962.P18118138762739728572

`eq[2, A020639(A161448(n+1))]`
-/

namespace A395962.P18118138762739728572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A161448 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A395962.P18118138762739728572

namespace A395962

/-- `eq[2, A020639(A161448(n+1))]` -/
def P18118138762739728572.Spec : Prop :=
  ∀ n, (P18118138762739728572.a n : ℤ) = A395962 (n + 1)

end A395962

/-! ## A395962.P9695645752665682375

`2*n+1-A395958(A395963(2*n+1))`
-/

namespace A395962.P9695645752665682375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A395958 (A395963 (2 * n + 1)).toNat

end

end A395962.P9695645752665682375

namespace A395962

/-- `2*n+1-A395958(A395963(2*n+1))` -/
def P9695645752665682375.Spec : Prop :=
  ∀ n, P9695645752665682375.a n = A395962 (n + 1)

end A395962

/-! ## A395962.P2340382046545205374

`lt[1, A257993(A161454(n+1))]`
-/

namespace A395962.P2340382046545205374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257993 (A161454 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A395962.P2340382046545205374

namespace A395962

/-- `lt[1, A257993(A161454(n+1))]` -/
def P2340382046545205374.Spec : Prop :=
  ∀ n, (P2340382046545205374.a n : ℤ) = A395962 (n + 1)

end A395962

/-! ## A395962.P213758210606663473

`lt[A007814(A161455(n+1)), 1]`
-/

namespace A395962.P213758210606663473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A161455 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A395962.P213758210606663473

namespace A395962

/-- `lt[A007814(A161455(n+1)), 1]` -/
def P213758210606663473.Spec : Prop :=
  ∀ n, (P213758210606663473.a n : ℤ) = A395962 (n + 1)

end A395962

/-!
# A395963: Numbers k such that A395961(k) = 1.

The programs for A395963, the canonical program `A395963.P2013661775841027138` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395963 has offset 1).

The definition of A395963 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A395961, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A395963.P2013661775841027138

`2*n+1-A395961(2*n)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A395963

/-- `2*n+1-A395961(2*n)` -/
def P2013661775841027138.Spec : Prop :=
  ∀ n, P2013661775841027138.a n = A395963 (n + 1)

theorem P2013661775841027138.correct : P2013661775841027138.Spec := by
  intro n
  simp only [A395963, Nat.add_sub_cancel]

end A395963

/-! ## A395963.P14995952675099317961

`comp[xor(floor(n/8), 2*n)]`
-/

namespace A395963.P14995952675099317961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ⌊(n : ℚ) / 8⌋ (2 * n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A395963.P14995952675099317961

namespace A395963

/-- `comp[xor(floor(n/8), 2*n)]` -/
def P14995952675099317961.Spec : Prop :=
  ∀ n, (P14995952675099317961.a n : ℤ) = A395963 (n + 1)

end A395963

/-! ## A395963.P18337093610437043812

`comp[A395962(1+n)]`
-/

namespace A395963.P18337093610437043812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395962 (1 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A395963.P18337093610437043812

namespace A395963

/-- `comp[A395962(1+n)]` -/
def P18337093610437043812.Spec : Prop :=
  ∀ n, (P18337093610437043812.a n : ℤ) = A395963 (n + 1)

end A395963

/-! ## A395963.P17400460767957990540

`xor(1, A395962(n+1))`
-/

namespace A395963.P17400460767957990540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A395962 (n + 1))

end

end A395963.P17400460767957990540

namespace A395963

/-- `xor(1, A395962(n+1))` -/
def P17400460767957990540.Spec : Prop :=
  ∀ n, P17400460767957990540.a n = A395963 (n + 1)

end A395963

/-! ## A395963.P781162022296134506

`floor(A161448(1+n)/8)`
-/

namespace A395963.P781162022296134506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A161448 (1 + n) : ℚ) / 8⌋

end

end A395963.P781162022296134506

namespace A395963

/-- `floor(A161448(1+n)/8)` -/
def P781162022296134506.Spec : Prop :=
  ∀ n, P781162022296134506.a n = A395963 (n + 1)

end A395963

/-! ## A395963.P15797960230331865597

`floor(A161449(n+1)/8)`
-/

namespace A395963.P15797960230331865597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A161449 (n + 1) : ℚ) / 8⌋

end

end A395963.P15797960230331865597

namespace A395963

/-- `floor(A161449(n+1)/8)` -/
def P15797960230331865597.Spec : Prop :=
  ∀ n, P15797960230331865597.a n = A395963 (n + 1)

end A395963

/-! ## A395963.P6789593702201452321

`floor(A161450(n+1)/8)`
-/

namespace A395963.P6789593702201452321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A161450 (n + 1) : ℚ) / 8⌋

end

end A395963.P6789593702201452321

namespace A395963

/-- `floor(A161450(n+1)/8)` -/
def P6789593702201452321.Spec : Prop :=
  ∀ n, P6789593702201452321.a n = A395963 (n + 1)

end A395963

/-! ## A395963.P5700132810917811388

`floor(A161451(n+1)/8)`
-/

namespace A395963.P5700132810917811388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A161451 (n + 1) : ℚ) / 8⌋

end

end A395963.P5700132810917811388

namespace A395963

/-- `floor(A161451(n+1)/8)` -/
def P5700132810917811388.Spec : Prop :=
  ∀ n, P5700132810917811388.a n = A395963 (n + 1)

end A395963

/-! ## A395963.P9275278730054529903

`floor(A161452(n+1)/8)`
-/

namespace A395963.P9275278730054529903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A161452 (n + 1) : ℚ) / 8⌋

end

end A395963.P9275278730054529903

namespace A395963

/-- `floor(A161452(n+1)/8)` -/
def P9275278730054529903.Spec : Prop :=
  ∀ n, P9275278730054529903.a n = A395963 (n + 1)

end A395963

/-! ## A395963.P6753393696318421662

`floor(A161454(n+1)/8)`
-/

namespace A395963.P6753393696318421662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A161454 (n + 1) : ℚ) / 8⌋

end

end A395963.P6753393696318421662

namespace A395963

/-- `floor(A161454(n+1)/8)` -/
def P6753393696318421662.Spec : Prop :=
  ∀ n, P6753393696318421662.a n = A395963 (n + 1)

end A395963

/-! ## A395963.P1341570323341825881

`floor(A161455(n+1)/8)`
-/

namespace A395963.P1341570323341825881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A161455 (n + 1) : ℚ) / 8⌋

end

end A395963.P1341570323341825881

namespace A395963

/-- `floor(A161455(n+1)/8)` -/
def P1341570323341825881.Spec : Prop :=
  ∀ n, P1341570323341825881.a n = A395963 (n + 1)

end A395963

/-! ## A395963.P10291464391889346565

`A016813(n)-A395962(n+1)`
-/

namespace A395963.P10291464391889346565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n - A395962 (n + 1)

end

end A395963.P10291464391889346565

namespace A395963

/-- `A016813(n)-A395962(n+1)` -/
def P10291464391889346565.Spec : Prop :=
  ∀ n, P10291464391889346565.a n = A395963 (n + 1)

theorem P10291464391889346565.correct : P10291464391889346565.Spec := by
  intro n
  simp only [A395963, Nat.add_sub_cancel, A395963.P10291464391889346565.a, A395963.P2013661775841027138.a, A016813, A016813.P15626904835145642280.a, A395961, A395961.P9208801736051543594.a, A395962, A395962.P3547014246278371736.a, A053836, A053836.P6566921165131624833.a, A054900, A054900.P10951327238473995848.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A395963

/-! ## A395963.P14515872184336648535

`xor(A395960(n+1), A395961(n))`
-/

namespace A395963.P14515872184336648535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A395960 (n + 1)) (A395961 n)

end

end A395963.P14515872184336648535

namespace A395963

/-- `xor(A395960(n+1), A395961(n))` -/
def P14515872184336648535.Spec : Prop :=
  ∀ n, P14515872184336648535.a n = A395963 (n + 1)

end A395963

/-! ## A395963.P5707616934327735928

`A000069(n+1)+A001969(n+1)-A395962(n+1)`
-/

namespace A395963.P5707616934327735928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1) + (A001969 (n + 1) - A395962 (n + 1))

end

end A395963.P5707616934327735928

namespace A395963

/-- `A000069(n+1)+A001969(n+1)-A395962(n+1)` -/
def P5707616934327735928.Spec : Prop :=
  ∀ n, P5707616934327735928.a n = A395963 (n + 1)

end A395963

/-! ## A395963.P7575353757214265521

`A158704(n+1)+A158705(n+1)-A395962(n+1)`
-/

namespace A395963.P7575353757214265521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158704 (n + 1) + (A158705 (n + 1) - A395962 (n + 1))

end

end A395963.P7575353757214265521

namespace A395963

/-- `A158704(n+1)+A158705(n+1)-A395962(n+1)` -/
def P7575353757214265521.Spec : Prop :=
  ∀ n, P7575353757214265521.a n = A395963 (n + 1)

end A395963

/-! ## A395963.P2369903363610294967

`A395959(n+1)+A395960(n+1)-A395962(n+1)`
-/

namespace A395963.P2369903363610294967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395959 (n + 1) + (A395960 (n + 1) - A395962 (n + 1))

end

end A395963.P2369903363610294967

namespace A395963

/-- `A395959(n+1)+A395960(n+1)-A395962(n+1)` -/
def P2369903363610294967.Spec : Prop :=
  ∀ n, P2369903363610294967.a n = A395963 (n + 1)

theorem P2369903363610294967.correct : P2369903363610294967.Spec := by
  intro n
  simp only [A395963, Nat.add_sub_cancel, A395963.P2369903363610294967.a, A395963.P2013661775841027138.a, A395959, A395959.P2730340011751273461.a, A395960, A395960.P5958715908451391238.a, A395961, A395961.P9208801736051543594.a, A395962, A395962.P3547014246278371736.a, A053836, A053836.P6566921165131624833.a, A395958, A395958.P5165968733303486376.a, A010060, A010060.P3080921269106500717.a, A054900, A054900.P10951327238473995848.a, A064707, A064707.P16779567911126322867.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A180200, A180200.P2958972076606443306.a, A233279, A233279.P10877154597455539139.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A395963

/-! ## A395963.P13090695029425316655

`A004442(A395962(n+1))`
-/

namespace A395963.P13090695029425316655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A395962 (n + 1)).toNat

end

end A395963.P13090695029425316655

namespace A395963

/-- `A004442(A395962(n+1))` -/
def P13090695029425316655.Spec : Prop :=
  ∀ n, P13090695029425316655.a n = A395963 (n + 1)

end A395963

/-! ## A395963.P3058299915600271901

`fp[∑[A395961(n)]]`
-/

namespace A395963.P3058299915600271901
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395961 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0

end

end A395963.P3058299915600271901

namespace A395963

/-- `fp[∑[A395961(n)]]` -/
def P3058299915600271901.Spec : Prop :=
  ∀ n, (P3058299915600271901.a n : ℤ) = A395963 (n + 1)

end A395963

/-! ## A395963.P10892753996472946514

`A395961(2*n+1)+2*n`
-/

namespace A395963.P10892753996472946514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395961 (2 * n + 1) + (2 * n : ℤ)

end

end A395963.P10892753996472946514

namespace A395963

/-- `A395961(2*n+1)+2*n` -/
def P10892753996472946514.Spec : Prop :=
  ∀ n, P10892753996472946514.a n = A395963 (n + 1)

end A395963

/-! ## A395963.P18088361819118164892

`filter[A004442(n), A395961(#)]`
-/

namespace A395963.P18088361819118164892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A395961 (f1 j).toNat = 1) n)

end

end A395963.P18088361819118164892

namespace A395963

/-- `filter[A004442(n), A395961(#)]` -/
def P18088361819118164892.Spec : Prop :=
  ∀ n, P18088361819118164892.a n = A395963 (n + 1)

end A395963

/-!
# A395964: Second iterate of the Thue-Morse transform applied to the Fibonacci word A003849.

The programs for A395964, there is no canonical definition to state claims against.
-/

/-! ## A395964.P6245706318634800988

`char[A395966(1+n)]`
-/

namespace A395964.P6245706318634800988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395966 (1 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A395964.P6245706318634800988

/-! ## A395964.P2059037962027677404

`char[comp[A395965(1+n)]]`
-/

namespace A395964.P2059037962027677404
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395965 (1 + n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A395964.P2059037962027677404

/-! ## A395964.P9679512462049731085

`1-char[A395965(n+1)]`
-/

namespace A395964.P9679512462049731085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395965 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A395964.P9679512462049731085

/-! ## A395964.P11623004558938470104

`A080887(A066880(n+1))`
-/

namespace A395964.P11623004558938470104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080887 (A066880 (n + 1)).toNat

end

end A395964.P11623004558938470104

/-! ## A395964.P13106152891728703635

`A080887(A075427(n+1))`
-/

namespace A395964.P13106152891728703635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080887 (A075427 (n + 1)).toNat

end

end A395964.P13106152891728703635

/-!
# A395965: Numbers k such that A395964(k) = 0.

The programs for A395965, there is no canonical definition to state claims against.
-/

/-! ## A395965.P17891902879307160033

`comp[A395966(n+1)]`
-/

namespace A395965.P17891902879307160033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A395965.P17891902879307160033

/-! ## A395965.P18016772078804291702

`eq[0, A395964(n)]`
-/

namespace A395965.P18016772078804291702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395964 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A395965.P18016772078804291702

/-! ## A395965.P17706386764962512167

`lt[A395964(n), A329684(n)]`
-/

namespace A395965.P17706386764962512167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395964 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A395965.P17706386764962512167

/-! ## A395965.P4825611753751883079

`lt[A395964(n), A010060(A000069(n+1))]`
-/

namespace A395965.P4825611753751883079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395964 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A000069 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A395965.P4825611753751883079

/-! ## A395965.P13478169234810802339

`lt[A395964(n), A395958(A395960(n+1))]`
-/

namespace A395965.P13478169234810802339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395964 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395958 (A395960 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A395965.P13478169234810802339

/-! ## A395965.P18056907927144432267

`lt[A395964(n), A395961(A395963(n+1))]`
-/

namespace A395965.P18056907927144432267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395964 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395961 (A395963 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A395965.P18056907927144432267

/-! ## A395965.P2017030229251869757

`lt[A395964(n), A395964(A395966(n+1))]`
-/

namespace A395965.P2017030229251869757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395964 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395964 (A395966 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A395965.P2017030229251869757

/-! ## A395965.P12368072594442703809

`lt[A395964(n), A061347(3*n+1)]`
-/

namespace A395965.P12368072594442703809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395964 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A395965.P12368072594442703809

/-! ## A395965.P17833200309344294939

`lt[A395964(n), A001511(A004767(n))]`
-/

namespace A395965.P17833200309344294939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395964 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A004767 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A395965.P17833200309344294939

/-! ## A395965.P18194300938933968274

`lt[A395964(n), A001511(A028870(n+1))]`
-/

namespace A395965.P18194300938933968274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395964 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A028870 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A395965.P18194300938933968274

/-! ## A395965.P9418508605182843920

`lt[A395964(n), A001222(A005385(n+1))]`
-/

namespace A395965.P9418508605182843920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395964 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A005385 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A395965.P9418508605182843920

/-!
# A395966: Numbers k such that A395964(k) = 1.

The programs for A395966, there is no canonical definition to state claims against.
-/

/-! ## A395966.P6779612546258804019

`comp[A395965(1+n)]`
-/

namespace A395966.P6779612546258804019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395965 (1 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A395966.P6779612546258804019

/-! ## A395966.P5688426010713886181

`lt[0, A395964(n)]`
-/

namespace A395966.P5688426010713886181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395964 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A395966.P5688426010713886181

/-! ## A395966.P12015932063850754794

`eq[1, A395964(n+1)]+1`
-/

namespace A395966.P12015932063850754794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395964 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A395966.P12015932063850754794

/-! ## A395966.P15741007458940027448

`eq[A054977(n), A395964(n)]`
-/

namespace A395966.P15741007458940027448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395964 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A395966.P15741007458940027448

/-! ## A395966.P4580938120491140379

`eq[A158388(n), A395964(n)]`
-/

namespace A395966.P4580938120491140379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395964 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A395966.P4580938120491140379

/-! ## A395966.P6564328015017603944

`eq[A329684(n), A395964(n)]`
-/

namespace A395966.P6564328015017603944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395964 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A395966.P6564328015017603944

/-! ## A395966.P4335448373126873903

`eq[A283149(n+1), A395964(n)]`
-/

namespace A395966.P4335448373126873903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395964 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A395966.P4335448373126873903

/-! ## A395966.P7775589649828324257

`filter[A173517(n), A395964(#)]`
-/

namespace A395966.P7775589649828324257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A395964 (f1 j).toNat = 1) n)

end

end A395966.P7775589649828324257

/-! ## A395966.P10669255602234897914

`filter[A271439(n), A395964(#)]`
-/

namespace A395966.P10669255602234897914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271439 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A395964 (f1 j).toNat = 1) n)

end

end A395966.P10669255602234897914

/-! ## A395966.P6543498508633618674

`filter[A066246(n+1), A395964(#)]`
-/

namespace A395966.P6543498508633618674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A395964 (f1 j).toNat = 1) n)

end

end A395966.P6543498508633618674

/-! ## A395966.P13631476056577305048

`filter[A261094(n), A395964(#)]`
-/

namespace A395966.P13631476056577305048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261094 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A395964 (f1 j).toNat = 1) n)

end

end A395966.P13631476056577305048

/-! ## A395966.P17243582425095894341

`filter[A117909(n), A395964(#)]`
-/

namespace A395966.P17243582425095894341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A395964 (f1 j).toNat = 1) n)

end

end A395966.P17243582425095894341

/-! ## A395966.P8702811029964963123

`filter[A083926(n), A395964(#)]`
-/

namespace A395966.P8702811029964963123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083926 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A395964 (f1 j).toNat = 1) n)

end

end A395966.P8702811029964963123

/-! ## A395966.P13845254555417681994

`filter[A230414(n), A395964(#)]`
-/

namespace A395966.P13845254555417681994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230414 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A395964 (f1 j).toNat = 1) n)

end

end A395966.P13845254555417681994

/-! ## A395966.P13719469071724478245

`filter[A027656(n), A395964(#)]`
-/

namespace A395966.P13719469071724478245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A395964 (f1 j).toNat = 1) n)

end

end A395966.P13719469071724478245

/-! ## A395966.P3516815678112196412

`filter[A102389(n), A395964(#)]`
-/

namespace A395966.P3516815678112196412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102389 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A395964 (f1 j).toNat = 1) n)

end

end A395966.P3516815678112196412

/-! ## A395966.P15672303061455643854

`filter[A102390(n), A395964(#)]`
-/

namespace A395966.P15672303061455643854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102390 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A395964 (f1 j).toNat = 1) n)

end

end A395966.P15672303061455643854

/-! ## A395966.P12678020803761329057

`filter[A131360(n), A395964(#)]`
-/

namespace A395966.P12678020803761329057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131360 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A395964 (f1 j).toNat = 1) n)

end

end A395966.P12678020803761329057

/-! ## A395966.P5722557225047230856

`filter[A142150(n), A395964(#)]`
-/

namespace A395966.P5722557225047230856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A395964 (f1 j).toNat = 1) n)

end

end A395966.P5722557225047230856

/-! ## A395966.P17436961856531963786

`filter[A234017(n), A395964(#)]`
-/

namespace A395966.P17436961856531963786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A395964 (f1 j).toNat = 1) n)

end

end A395966.P17436961856531963786

/-!
# A395967: Triangle T(n,k), n >= 1, 0 <= k <= n-1, read by rows, where T(n,k) = [x^n] x * cycle_index(S_k, B(x)-1), where B(x) is g.f. for A000598.

The programs for A395967, there is no canonical definition to state claims against.
-/

/-! ## A395967.P659584550878576691

`xor(A106234(n+1), A322358(A144026(n)))`
-/

namespace A395967.P659584550878576691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A106234 (n + 1)) (A322358 (A144026 n).toNat)

end

end A395967.P659584550878576691

/-! ## A395967.P12519384751922379279

`A255704(n+1)-A025469(A208450(2*(n+1)))`
-/

namespace A395967.P12519384751922379279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255704 (n + 1) - A025469 (A208450 (2 * (n + 1))).toNat

end

end A395967.P12519384751922379279

/-! ## A395967.P14223718694756990019

`xor(A191347(n), A204843(A186311(n)))`
-/

namespace A395967.P14223718694756990019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A191347 n) (A204843 (A186311 n).toNat)

end

end A395967.P14223718694756990019

/-!
# A395969: Numbers k such that 3*(k+1) divides the decimal concatenation [k, k+1, k+2].

The programs for A395969, there is no canonical definition to state claims against.
-/

/-! ## A395969.P3196482344513416154

`A349464(record[A106016(2*(n+1))%A093013(3*n+2)])`
-/

namespace A395969.P3196482344513416154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106016 (2 * (n + 1))) (A093013 (3 * n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349464 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A395969.P3196482344513416154

/-!
# A395972: Triangle read by rows: T(n, k) = 2^n * [x^k] hypergeom([-n, -n, 1], [1], x).

The programs for A395972, there is no canonical definition to state claims against.
-/

/-! ## A395972.P6598498569807232493

`2*((2*row(n)-col(n))*T(n-1,k-1)+T(n-1,k))` with `a(0)=1`
-/

namespace A395972.P6598498569807232493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (((2 * SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) * SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp a n)

end

end A395972.P6598498569807232493

/-! ## A395972.P9767349351738115626

`2*(T(n-1,k)-(col(n)-2*row(n))*T(n-1,k-1))` with `a(0)=1`
-/

namespace A395972.P9767349351738115626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (SequenceMachineLib.triUp a n - ((SequenceMachineLib.triCol n : ℤ) - (2 * SequenceMachineLib.triRow n : ℤ)) * SequenceMachineLib.triUpLeft a n)

end

end A395972.P9767349351738115626

/-! ## A395972.P4124340170191024303

`A008279(n)*A038208(n)`
-/

namespace A395972.P4124340170191024303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n * A038208 n

end

end A395972.P4124340170191024303

/-! ## A395972.P14393045566546788226

`A013609(n)*A090802(n)`
-/

namespace A395972.P14393045566546788226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 n * A090802 n

end

end A395972.P14393045566546788226

/-! ## A395972.P4827354699944260478

`A038207(n)*A161381(n)`
-/

namespace A395972.P4827354699944260478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 n * A161381 n

end

end A395972.P4827354699944260478

/-!
# A395974: a(n) = A395975(n, 1), and a(0) = 0.

The programs for A395974, there is no canonical definition to state claims against.
-/

/-! ## A395974.P15237111832939569583

`A395975(C(n+1, 2)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A395974.P15237111832939569583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395975 (Nat.choose (n + 1) 2 + 1)

end

end A395974.P15237111832939569583

/-! ## A395974.P17233369313605929001

`A395975(∑[n]+1)`
-/

namespace A395974.P17233369313605929001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395975 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A395974.P17233369313605929001

/-!
# A395977: Denominators of rational coefficients related to asymptotic of A336293.

The programs for A395977, there is no canonical definition to state claims against.
-/

/-! ## A395977.P12107886325858043741

`A144618(n)/A003557(A000629(n))`
-/

namespace A395977.P12107886325858043741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144618 n : ℚ) / (A003557 (A000629 n).toNat : ℚ)

end

end A395977.P12107886325858043741

/-! ## A395977.P13105385595348280477

`A321940(n)/A181819(A002110(n))`
-/

namespace A395977.P13105385595348280477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321940 n : ℚ) / (A181819 (A002110 n).toNat : ℚ)

end

end A395977.P13105385595348280477

/-!
# A395979: Ultra-elite primes: elite primes p such that all their Fermat remainders are either primitive roots, or all nonprimitive roots, modulo p.

The programs for A395979, there is no canonical definition to state claims against.
-/

/-! ## A395979.P779161806215411342

`A102742(A340911(n))`
-/

namespace A395979.P779161806215411342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102742 (A340911 n).toNat

end

end A395979.P779161806215411342

/-!
# A395982: Primes p such that the Fermat quotient q = (2^(p-1) - 1)/p mod p satisfies 1 < q < p and q divides p - 1.

The programs for A395982, there is no canonical definition to state claims against.
-/

/-! ## A395982.P15015086618197419714

`A186645(lt[A100491(n+5), A190821(2*n+3)])`
-/

namespace A395982.P15015086618197419714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100491 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190821 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186645 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A395982.P15015086618197419714

/-! ## A395982.P8934850992577193258

`∩[A101635(n+1), A186645(n+1)]`
-/

namespace A395982.P8934850992577193258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101635 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186645 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395982.P8934850992577193258

/-!
# A395983: Surviving primes in the strict greedy gap sieve.

The programs for A395983, there is no canonical definition to state claims against.
-/

/-! ## A395983.P4404095688923710993

`∩[A268343(n+1), A102821(n)]`
-/

namespace A395983.P4404095688923710993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268343 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102821 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395983.P4404095688923710993

/-!
# A395984: Number of residue classes r (mod n) for which k = r + m*n, m >= 1, is such that rad(n) | gcd(k,n) but rad(k) does not divide n, where rad = A007947.

The programs for A395984, there is no canonical definition to state claims against.
-/

/-! ## A395984.P4957358843669141940

`A381803(n+1)-A395900(n+1)`
-/

namespace A395984.P4957358843669141940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381803 (n + 1) - A395900 (n + 1)

end

end A395984.P4957358843669141940

/-! ## A395984.P13791467457431059508

`A243823(n+1)-A381804(n+1)-A395900(n+1)`
-/

namespace A395984.P13791467457431059508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243823 (n + 1) - A381804 (n + 1) - A395900 (n + 1)

end

end A395984.P13791467457431059508

/-! ## A395984.P2176900626961649377

`A360543(n+1)%A378908(n+1)`
-/

namespace A395984.P2176900626961649377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A360543 (n + 1)) (A378908 (n + 1))

end

end A395984.P2176900626961649377

/-! ## A395984.P14622702832768563719

`A360543(n+1)%A010960(n)`
-/

namespace A395984.P14622702832768563719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A360543 (n + 1)) (A010960 n)

end

end A395984.P14622702832768563719

/-! ## A395984.P16706757081624640693

`A225595(n+1)*A360543(n+1)`
-/

namespace A395984.P16706757081624640693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225595 (n + 1) * A360543 (n + 1)

end

end A395984.P16706757081624640693

/-!
# A395986: Minimum transmission of a connected cubic graph on 2n vertices.

The programs for A395986, there is no canonical definition to state claims against.
-/

/-! ## A395986.P6371451027343674617

`(n+2)*A381812(3*(n+2))`
-/

namespace A395986.P6371451027343674617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A381812 (3 * (n + 2))

end

end A395986.P6371451027343674617

/-! ## A395986.P12555915630034348123

`A058654(3*n+1)*A081604(A048054(n+1))`
-/

namespace A395986.P12555915630034348123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058654 (3 * n + 1) * A081604 (A048054 (n + 1)).toNat

end

end A395986.P12555915630034348123

/-!
# A395988: Minimum transmission of a connected quartic graph on n vertices.

The programs for A395988, there is no canonical definition to state claims against.
-/

/-! ## A395988.P2303824446316342932

`A196051(3*2^(n+1))`
-/

namespace A395988.P2303824446316342932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196051 (3 * 2 ^ (n + 1))

end

end A395988.P2303824446316342932

/-! ## A395988.P13776465447812996086

`2*lt[A223625(n+1), n]`
-/

namespace A395988.P13776465447812996086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223625 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A395988.P13776465447812996086

/-! ## A395988.P17548854414168979259

`record[A152205(n+3)]+n+1`
-/

namespace A395988.P17548854414168979259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152205 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n + 1 : ℤ)

end

end A395988.P17548854414168979259

/-! ## A395988.P6318205187729697600

`record[A331145(n+4)+1]+n`
-/

namespace A395988.P6318205187729697600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331145 (n + 4) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)

end

end A395988.P6318205187729697600

/-! ## A395988.P7115815075875804113

`2*(eq[2, A334467(n+1)]+1)`
-/

namespace A395988.P7115815075875804113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334467 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A395988.P7115815075875804113

/-!
# A395990: a(n) = Sum_{d|n} d^(tau(n/d) mod 2).

The programs for A395990, the canonical program `A395990.P6546272165125092159` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395990 has offset 1).

The definition of A395990 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395990.P15994030705724009621

`∑{d}[n+1, #^(A000005((n+1)/#)%2)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A395990.P15994030705724009621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℚ) ^ (Int.tmod (A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat) 2 : ℤ)

end

end A395990.P15994030705724009621

namespace A395990

/-- `∑{d}[n+1, #^(A000005((n+1)/#)%2)]` -/
def P15994030705724009621.Spec : Prop :=
  ∀ n, P15994030705724009621.a n = (A395990 (n + 1) : ℚ)

end A395990

/-! ## A395990.P6546272165125092159

`A000005(n+1)+A076752(n+1)-A046951(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A395990

/-- `A000005(n+1)+A076752(n+1)-A046951(n+1)` -/
def P6546272165125092159.Spec : Prop :=
  ∀ n, P6546272165125092159.a n = A395990 (n + 1)

theorem P6546272165125092159.correct : P6546272165125092159.Spec := by
  intro n
  simp only [A395990, Nat.add_sub_cancel]

end A395990

/-! ## A395990.P7427504613845280777

`A076752(n+1)+A056595(n+1)`
-/

namespace A395990.P7427504613845280777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076752 (n + 1) + A056595 (n + 1)

end

end A395990.P7427504613845280777

namespace A395990

/-- `A076752(n+1)+A056595(n+1)` -/
def P7427504613845280777.Spec : Prop :=
  ∀ n, P7427504613845280777.a n = A395990 (n + 1)

theorem P7427504613845280777.correct : P7427504613845280777.Spec := by
  intro n
  simp only [A395990, Nat.add_sub_cancel, A395990.P7427504613845280777.a, A395990.P6546272165125092159.a, A000005, A000005.P16091521709108585461.a, A046951, A046951.P12586408086602964063.a, A056595, A056595.P14242287842452137538.a, A076752, A076752.P13994849808398541863.f1, A076752.P13994849808398541863.a, A000188, A000188.P18128357374562736993.f1, A000188.P18128357374562736993.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A395990

/-! ## A395990.P9840420699426652360

`A076752(n+1)+val(A293514(n+1), 2)`
-/

namespace A395990.P9840420699426652360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076752 (n + 1) + (SequenceMachineLib.valuation (A293514 (n + 1)).toNat 2 : ℤ)

end

end A395990.P9840420699426652360

namespace A395990

/-- `A076752(n+1)+val(A293514(n+1), 2)` -/
def P9840420699426652360.Spec : Prop :=
  ∀ n, P9840420699426652360.a n = A395990 (n + 1)

end A395990

/-! ## A395990.P15877877959667009809

`A076752(n+1)+2*A056924(n+1)-A293234(n+1)`
-/

namespace A395990.P15877877959667009809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076752 (n + 1) + (2 * A056924 (n + 1) - A293234 (n + 1))

end

end A395990.P15877877959667009809

namespace A395990

/-- `A076752(n+1)+2*A056924(n+1)-A293234(n+1)` -/
def P15877877959667009809.Spec : Prop :=
  ∀ n, P15877877959667009809.a n = A395990 (n + 1)

end A395990

/-!
# A395991: First indices of zeta zeros corresponding to Lehmer Pairs.

The programs for A395991, there is no canonical definition to state claims against.
-/

/-! ## A395991.P4886991931430507390

`A326502(∪[A058946(n+1), A121037(n+1)])`
-/

namespace A395991.P4886991931430507390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121037 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326502 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A395991.P4886991931430507390

/-! ## A395991.P16285438065641074310

`A326502(A058946(n+1))`
-/

namespace A395991.P16285438065641074310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326502 (A058946 (n + 1)).toNat

end

end A395991.P16285438065641074310

/-!
# A395994: Number of fractions k/n, with 1 <= k <= n and GCD(n,k) = 1, whose greedy Egyptian fraction representation has more terms than the shortest representation of k/n as a sum of unit fractions.

The programs for A395994, there is no canonical definition to state claims against.
-/

/-! ## A395994.P3798166751556909476

`A082501(A395996(n+1))`
-/

namespace A395994.P3798166751556909476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082501 (A395996 (n + 1)).toNat

end

end A395994.P3798166751556909476

/-!
# A395997: Numbers k > 3 such that the greedy Egyptian fraction representation of 3/k has more terms than the shortest representation of 3/k as a sum of unit fractions.

The programs for A395997, the canonical program `A395997.P11981143081767539596` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395997 has offset 1).

The definition of A395997 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A395997.P11981143081767539596

`6*A070799(n+1)+1`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A395997

/-- `6*A070799(n+1)+1` -/
def P11981143081767539596.Spec : Prop :=
  ∀ n, P11981143081767539596.a n = A395997 (n + 1)

theorem P11981143081767539596.correct : P11981143081767539596.Spec := by
  intro n
  simp only [A395997, Nat.add_sub_cancel]

end A395997

/-! ## A395997.P3155127088775821677

`A016921(A070799(n+1))`
-/

namespace A395997.P3155127088775821677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A070799 (n + 1)).toNat

end

end A395997.P3155127088775821677

namespace A395997

/-- `A016921(A070799(n+1))` -/
def P3155127088775821677.Spec : Prop :=
  ∀ n, P3155127088775821677.a n = A395997 (n + 1)

end A395997

/-! ## A395997.P13228434548144724332

`A016921(lt[1, A363891(2*n+1)]+1-A005171(2*(n+2)))`
-/

namespace A395997.P13228434548144724332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363891 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1 : ℤ) - A005171 (2 * (n + 2))).toNat

end

end A395997.P13228434548144724332

namespace A395997

/-- `A016921(lt[1, A363891(2*n+1)]+1-A005171(2*(n+2)))` -/
def P13228434548144724332.Spec : Prop :=
  ∀ n, P13228434548144724332.a n = A395997 (n + 1)

end A395997

/-! ## A395997.P3228523455976201633

`A016921(lt[0, A359325(3*n+1)]+1-A005171(2*(n+2)))`
-/

namespace A395997.P3228523455976201633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359325 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1 : ℤ) - A005171 (2 * (n + 2))).toNat

end

end A395997.P3228523455976201633

namespace A395997

/-- `A016921(lt[0, A359325(3*n+1)]+1-A005171(2*(n+2)))` -/
def P3228523455976201633.Spec : Prop :=
  ∀ n, P3228523455976201633.a n = A395997 (n + 1)

end A395997

/-! ## A395997.P679532991498129041

`∩[A226946(n+1), A016921(n)]`
-/

namespace A395997.P679532991498129041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395997.P679532991498129041

namespace A395997

/-- `∩[A226946(n+1), A016921(n)]` -/
def P679532991498129041.Spec : Prop :=
  ∀ n, (P679532991498129041.a n : ℤ) = A395997 (n + 1)

end A395997

/-! ## A395997.P11981462315952955799

`∩[A091300(n+1), A226946(n+1)]`
-/

namespace A395997.P11981462315952955799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395997.P11981462315952955799

namespace A395997

/-- `∩[A091300(n+1), A226946(n+1)]` -/
def P11981462315952955799.Spec : Prop :=
  ∀ n, (P11981462315952955799.a n : ℤ) = A395997 (n + 1)

end A395997

/-! ## A395997.P16228035223650071675

`filter[A016921(n), A056556(A395995(#))]`
-/

namespace A395997.P16228035223650071675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A056556 (A395995 (f1 j).toNat).toNat = 1) n)

end

end A395997.P16228035223650071675

namespace A395997

/-- `filter[A016921(n), A056556(A395995(#))]` -/
def P16228035223650071675.Spec : Prop :=
  ∀ n, P16228035223650071675.a n = A395997 (n + 1)

end A395997

/-! ## A395997.P18170291377079677657

`A016921(A199860(n+1)-1)`
-/

namespace A395997.P18170291377079677657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A199860 (n + 1) - 1).toNat

end

end A395997.P18170291377079677657

namespace A395997

/-- `A016921(A199860(n+1)-1)` -/
def P18170291377079677657.Spec : Prop :=
  ∀ n, P18170291377079677657.a n = A395997 (n + 1)

end A395997

