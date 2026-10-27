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
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B003.C006
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
# A049400: Partial sums of rows of A047884. Young Tableaux by height.

The programs for A049400, there is no canonical definition to state claims against.
-/

/-! ## A049400.P5912118910137725470

`A087739(A370382(n))`
-/

namespace A049400.P5912118910137725470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087739 (A370382 n).toNat

end

end A049400.P5912118910137725470

/-! ## A049400.P11301282308151009692

`A047701(A126198(n+1))`
-/

namespace A049400.P11301282308151009692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047701 (A126198 (n + 1)).toNat

end

end A049400.P11301282308151009692

/-! ## A049400.P1240238340512309763

`A381349(A043317(n+1))`
-/

namespace A049400.P1240238340512309763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381349 (A043317 (n + 1)).toNat

end

end A049400.P1240238340512309763

/-! ## A049400.P4662170445028969059

`A381349(A044914(n+1))`
-/

namespace A049400.P4662170445028969059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381349 (A044914 (n + 1)).toNat

end

end A049400.P4662170445028969059

/-! ## A049400.P12444298357897640076

`A381349(A055648(n+1))`
-/

namespace A049400.P12444298357897640076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381349 (A055648 (n + 1)).toNat

end

end A049400.P12444298357897640076

/-!
# A049401: Number of Young tableaux of height <= 5.

The programs for A049401, there is no canonical definition to state claims against.
-/

/-! ## A049401.P8425151170134301489

`A182172(A055999(n+3))`
-/

namespace A049401.P8425151170134301489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182172 (A055999 (n + 3)).toNat

end

end A049401.P8425151170134301489

/-! ## A049401.P9394605856210737091

`A182172(eq[5, A025581(n)])`
-/

namespace A049401.P9394605856210737091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182172 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A049401.P9394605856210737091

/-! ## A049401.P8523634766387172847

`A182172(Δ[A026054(n+3)])`
-/

namespace A049401.P8523634766387172847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182172 (f1 (n + 1) - f1 n).toNat

end

end A049401.P8523634766387172847

/-! ## A049401.P15346896118484433586

`A182172(A046691(n+4)-2)`
-/

namespace A049401.P15346896118484433586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182172 (A046691 (n + 4) - 2).toNat

end

end A049401.P15346896118484433586

/-! ## A049401.P7212805240022829683

`A182172(A000217(n+6)-6)`
-/

namespace A049401.P7212805240022829683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182172 (A000217 (n + 6) - 6).toNat

end

end A049401.P7212805240022829683

/-!
# A049402: Row sums of triangle A049374.

The programs for A049402, there is no canonical definition to state claims against.
-/

/-! ## A049402.P2089767401358239913

`A291709(eq[6, A025581(n)])`
-/

namespace A049402.P2089767401358239913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291709 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A049402.P2089767401358239913

/-! ## A049402.P17131184997855249211

`A291709(eq[7, A193739(n)])`
-/

namespace A049402.P17131184997855249211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291709 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A049402.P17131184997855249211

/-! ## A049402.P11254066380832935235

`A291709(eq[13, A099375(n)])`
-/

namespace A049402.P11254066380832935235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291709 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A049402.P11254066380832935235

/-! ## A049402.P9248209715359684702

`A291709(eq[64, A130321(n)])`
-/

namespace A049402.P9248209715359684702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291709 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A049402.P9248209715359684702

/-! ## A049402.P17327945143552118120

`A291709(eq[7, A004736(n+1)])`
-/

namespace A049402.P17327945143552118120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291709 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A049402.P17327945143552118120

/-! ## A049402.P5617342589709829349

`A291709(eq[8, A272172(n+1)])`
-/

namespace A049402.P5617342589709829349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272172 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291709 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A049402.P5617342589709829349

/-!
# A049403: A triangle of numbers related to triangle A030528; array a(n,m), read by rows (1 <= m <= n).

The programs for A049403, the canonical program `A049403.P15328222639639073379` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049403 has offset 1).

The definition of A049403 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6964 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049403.P15328222639639073379

`T(n-1,k-1)+row(n)*T(n-2,k-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049403

/-- `T(n-1,k-1)+row(n)*T(n-2,k-1)` -/
def P15328222639639073379.Spec : Prop :=
  ∀ n, (P15328222639639073379.a n : ℤ) = A049403 (n + 1)

theorem P15328222639639073379.correct : P15328222639639073379.Spec := by
  intro n
  simp only [A049403, Nat.add_sub_cancel]

end A049403

/-! ## A049403.P8275825231165936079

`A122848(A014132(n+1))`
-/

namespace A049403.P8275825231165936079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122848 (A014132 (n + 1)).toNat

end

end A049403.P8275825231165936079

namespace A049403

/-- `A122848(A014132(n+1))` -/
def P8275825231165936079.Spec : Prop :=
  ∀ n, P8275825231165936079.a n = A049403 (n + 1)

end A049403

/-! ## A049403.P18031325689095909949

`A122848(A047839(n+1))`
-/

namespace A049403.P18031325689095909949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122848 (A047839 (n + 1)).toNat

end

end A049403.P18031325689095909949

namespace A049403

/-- `A122848(A047839(n+1))` -/
def P18031325689095909949.Spec : Prop :=
  ∀ n, P18031325689095909949.a n = A049403 (n + 1)

end A049403

/-! ## A049403.P17446857762762034162

`A122848(A183573(n+1))`
-/

namespace A049403.P17446857762762034162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122848 (A183573 (n + 1)).toNat

end

end A049403.P17446857762762034162

namespace A049403

/-- `A122848(A183573(n+1))` -/
def P17446857762762034162.Spec : Prop :=
  ∀ n, P17446857762762034162.a n = A049403 (n + 1)

end A049403

/-! ## A049403.P3545014877742402337

`A122848(A003056(n)+2+n)`
-/

namespace A049403.P3545014877742402337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122848 (A003056 n + 2 + (n : ℤ)).toNat

end

end A049403.P3545014877742402337

namespace A049403

/-- `A122848(A003056(n)+2+n)` -/
def P3545014877742402337.Spec : Prop :=
  ∀ n, P3545014877742402337.a n = A049403 (n + 1)

end A049403

/-! ## A049403.P5923016673635024003

`A111924(A038722(n+1))`
-/

namespace A049403.P5923016673635024003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111924 (A038722 (n + 1)).toNat

end

end A049403.P5923016673635024003

namespace A049403

/-- `A111924(A038722(n+1))` -/
def P5923016673635024003.Spec : Prop :=
  ∀ n, P5923016673635024003.a n = A049403 (n + 1)

end A049403

/-! ## A049403.P6431999513944741097

`abs(A104556(n))`
-/

namespace A049403.P6431999513944741097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A104556 n|

end

end A049403.P6431999513944741097

namespace A049403

/-- `abs(A104556(n))` -/
def P6431999513944741097.Spec : Prop :=
  ∀ n, P6431999513944741097.a n = A049403 (n + 1)

end A049403

/-! ## A049403.P14440392728545723446

`A097807(n)*A104556(n)`
-/

namespace A049403.P14440392728545723446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A104556 n

end

end A049403.P14440392728545723446

namespace A049403

/-- `A097807(n)*A104556(n)` -/
def P14440392728545723446.Spec : Prop :=
  ∀ n, P14440392728545723446.a n = A049403 (n + 1)

end A049403

/-! ## A049403.P4525698914322415656

`gcd(A000038(n), A104556(n))`
-/

namespace A049403.P4525698914322415656
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A104556 n)

end

end A049403.P4525698914322415656

namespace A049403

/-- `gcd(A000038(n), A104556(n))` -/
def P4525698914322415656.Spec : Prop :=
  ∀ n, (P4525698914322415656.a n : ℤ) = A049403 (n + 1)

end A049403

/-! ## A049403.P5063759909553840676

`lcm(A033999(n), A104556(n))`
-/

namespace A049403.P5063759909553840676
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A104556 n)

end

end A049403.P5063759909553840676

namespace A049403

/-- `lcm(A033999(n), A104556(n))` -/
def P5063759909553840676.Spec : Prop :=
  ∀ n, (P5063759909553840676.a n : ℤ) = A049403 (n + 1)

end A049403

/-! ## A049403.P14323930492776106836

`lcm(A098157(n), A308624(n+1))`
-/

namespace A049403.P14323930492776106836
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A098157 n) (A308624 (n + 1))

end

end A049403.P14323930492776106836

namespace A049403

/-- `lcm(A098157(n), A308624(n+1))` -/
def P14323930492776106836.Spec : Prop :=
  ∀ n, (P14323930492776106836.a n : ℤ) = A049403 (n + 1)

end A049403

/-! ## A049403.P1153759543682142815

`A145362(n+1)*A308624(n+1)`
-/

namespace A049403.P1153759543682142815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145362 (n + 1) * A308624 (n + 1)

end

end A049403.P1153759543682142815

namespace A049403

/-- `A145362(n+1)*A308624(n+1)` -/
def P1153759543682142815.Spec : Prop :=
  ∀ n, P1153759543682142815.a n = A049403 (n + 1)

end A049403

/-!
# A049404: Triangle read by rows, the Bell transform of n!*binomial(2,n) (without column 0).

The programs for A049404, there is no canonical definition to state claims against.
-/

/-! ## A049404.P11846684523573242683

`A004747(n+1)/A048966(n+1)*A049324(n+1)`
-/

namespace A049404.P11846684523573242683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004747 (n + 1) : ℚ) / (A048966 (n + 1) : ℚ) * (A049324 (n + 1) : ℚ)

end

end A049404.P11846684523573242683

/-! ## A049404.P3940329284939643108

`A187082(n+1)/A000244(A002260(n+1))`
-/

namespace A049404.P3940329284939643108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187082 (n + 1) : ℚ) / (A000244 (A002260 (n + 1)).toNat : ℚ)

end

end A049404.P3940329284939643108

/-!
# A049407: Numbers m such that m^3 + m + 1 is prime.

The programs for A049407, there is no canonical definition to state claims against.
-/

/-! ## A049407.P11556841248028815948

`floor(root(A095692(n+1), 3))`
-/

namespace A049407.P11556841248028815948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A095692 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌋

end

end A049407.P11556841248028815948

/-! ## A049407.P13794995986914085090

`A000027(round(root(A095692(n+1), 3)))`
-/

namespace A049407.P13794995986914085090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A095692 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))).toNat

end

end A049407.P13794995986914085090

/-! ## A049407.P18053360660251055984

`round(root(A095692(n+1), 3))%A016958(n)`
-/

namespace A049407.P18053360660251055984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A095692 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))) (A016958 n)

end

end A049407.P18053360660251055984

/-! ## A049407.P13224283351711451217

`A033999(n)²*round(root(A095692(n+1), 3))`
-/

namespace A049407.P13224283351711451217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * SequenceMachineLib.roundAway ((A095692 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))

end

end A049407.P13224283351711451217

/-! ## A049407.P4754854987677229659

`round(root(A095692(n+1), 3))+A001489(n)+n`
-/

namespace A049407.P4754854987677229659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A095692 (n + 1) : ℝ) ^ (1 / (3 : ℝ))) + (A001489 n + (n : ℤ))

end

end A049407.P4754854987677229659

/-! ## A049407.P13072665124122751763

`A010156(2*n+1)²*round(root(A095692(n+1), 3))`
-/

namespace A049407.P13072665124122751763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010156 (2 * n + 1) ^ 2 * SequenceMachineLib.roundAway ((A095692 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))

end

end A049407.P13072665124122751763

/-! ## A049407.P17304751905939641258

`round(root(A095692(n+1), 3))*A014963(40*(n+1))`
-/

namespace A049407.P17304751905939641258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A095692 (n + 1) : ℝ) ^ (1 / (3 : ℝ))) * A014963 (40 * (n + 1))

end

end A049407.P17304751905939641258

/-!
# A049408: Numbers k such that k^4 + k + 1 is prime.

The programs for A049408, there is no canonical definition to state claims against.
-/

/-! ## A049408.P13539663926832425855

`floor(root(A272571(n+1), 4))`
-/

namespace A049408.P13539663926832425855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A272571 (n + 1) : ℝ) ^ (1 / (4 : ℝ))⌋

end

end A049408.P13539663926832425855

/-! ## A049408.P9171859255931054338

`A000027(round(root(A272571(n+1), 4)))`
-/

namespace A049408.P9171859255931054338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A272571 (n + 1) : ℝ) ^ (1 / (4 : ℝ)))).toNat

end

end A049408.P9171859255931054338

/-! ## A049408.P6174897462659803596

`round(root(A272571(n+1), 4))%A017198(n)`
-/

namespace A049408.P6174897462659803596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A272571 (n + 1) : ℝ) ^ (1 / (4 : ℝ)))) (A017198 n)

end

end A049408.P6174897462659803596

/-! ## A049408.P3842140208340932970

`round(root(A272571(n+1), 4))^-A057428(n)`
-/

namespace A049408.P3842140208340932970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((A272571 (n + 1) : ℝ) ^ (1 / (4 : ℝ))) : ℚ) ^ (-A057428 n : ℤ)

end

end A049408.P3842140208340932970

/-! ## A049408.P5857381367990321352

`A056594(2*n)²*round(root(A272571(n+1), 4))`
-/

namespace A049408.P5857381367990321352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) ^ 2 * SequenceMachineLib.roundAway ((A272571 (n + 1) : ℝ) ^ (1 / (4 : ℝ)))

end

end A049408.P5857381367990321352

/-! ## A049408.P10370523424411617444

`2*n+round(root(A272571(n+1), 4))-A005843(n)`
-/

namespace A049408.P10370523424411617444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (SequenceMachineLib.roundAway ((A272571 (n + 1) : ℝ) ^ (1 / (4 : ℝ))) - A005843 n)

end

end A049408.P10370523424411617444

/-! ## A049408.P5663264200829201229

`(A008619(2*n)-n)*round(root(A272571(n+1), 4))`
-/

namespace A049408.P5663264200829201229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008619 (2 * n) - (n : ℤ)) * SequenceMachineLib.roundAway ((A272571 (n + 1) : ℝ) ^ (1 / (4 : ℝ)))

end

end A049408.P5663264200829201229

/-!
# A049409: Numbers n such that n^4 + n^3 + n^2 + n + 1 is prime.

The programs for A049409, there is no canonical definition to state claims against.
-/

/-! ## A049409.P11845453305725505703

`round(root(A088548(n+1), 4))`
-/

namespace A049409.P11845453305725505703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A088548 (n + 1) : ℝ) ^ (1 / (4 : ℝ)))

end

end A049409.P11845453305725505703

/-! ## A049409.P4246375516352117961

`A000027(floor(root(A088548(n+1), 4)))`
-/

namespace A049409.P4246375516352117961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ⌊(A088548 (n + 1) : ℝ) ^ (1 / (4 : ℝ))⌋.toNat

end

end A049409.P4246375516352117961

/-! ## A049409.P9374279736990494154

`∪[A065509(n+1), A286094(n+1)]`
-/

namespace A049409.P9374279736990494154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A049409.P9374279736990494154

/-! ## A049409.P12782975465740343023

`floor(root(A088548(n+1), 4))%A048058(n)`
-/

namespace A049409.P12782975465740343023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(A088548 (n + 1) : ℝ) ^ (1 / (4 : ℝ))⌋ (A048058 n)

end

end A049409.P12782975465740343023

/-! ## A049409.P4587478086402309170

`A033999(n)²*floor(root(A088548(n+1), 4))`
-/

namespace A049409.P4587478086402309170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * ⌊(A088548 (n + 1) : ℝ) ^ (1 / (4 : ℝ))⌋

end

end A049409.P4587478086402309170

/-! ## A049409.P8331741869624223021

`(A004442(n)-n)²*floor(root(A088548(n+1), 4))`
-/

namespace A049409.P8331741869624223021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) ^ 2 * ⌊(A088548 (n + 1) : ℝ) ^ (1 / (4 : ℝ))⌋

end

end A049409.P8331741869624223021

/-! ## A049409.P3765056581905394605

`floor(root(A088548(n+1), 4))^A014963(4*n+2)`
-/

namespace A049409.P3765056581905394605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(A088548 (n + 1) : ℝ) ^ (1 / (4 : ℝ))⌋ : ℚ) ^ (A014963 (4 * n + 2) : ℤ)

end

end A049409.P3765056581905394605

/-!
# A049410: A triangle of numbers related to triangle A049325.

The programs for A049410, there is no canonical definition to state claims against.
-/

/-! ## A049410.P8989143550744002498

`A000369(n+1)/A049213(n+1)*A049325(n+1)`
-/

namespace A049410.P8989143550744002498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000369 (n + 1) : ℚ) / (A049213 (n + 1) : ℚ) * (A049325 (n + 1) : ℚ)

end

end A049410.P8989143550744002498

/-! ## A049410.P12728710490188227074

`A187084(n+1)/4^A002260(n+1)`
-/

namespace A049410.P12728710490188227074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187084 (n + 1) : ℚ) / (4 : ℚ) ^ (A002260 (n + 1) : ℤ)

end

end A049410.P12728710490188227074

/-!
# A049411: Triangle read by rows, the Bell transform of n!*binomial(5,n) (without column 0).

The programs for A049411, there is no canonical definition to state claims against.
-/

/-! ## A049411.P8265707800860159872

`A008706(A113360(∑[n+1]+1)%A113345(n))`
-/

namespace A049411.P8265707800860159872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (Int.tmod (A113360 (∑ j ∈ Finset.range (n + 1), f1 j + 1)) (A113345 n)).toNat

end

end A049411.P8265707800860159872

/-!
# A049413: Largest prime dividing Sum_{k=0..n} k! * (n-k)!.

The programs for A049413, there is no canonical definition to state claims against.
-/

/-! ## A049413.P15337890435945881513

`char[6]+A006530(A046825(n+1))`
-/

namespace A049413.P15337890435945881513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + A006530 (A046825 (n + 1)).toNat

end

end A049413.P15337890435945881513

/-! ## A049413.P12867194610046608887

`or(A006530(A046825(n+1)), A085862(n))`
-/

namespace A049413.P12867194610046608887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A006530 (A046825 (n + 1)).toNat) (A085862 n)

end

end A049413.P12867194610046608887

/-! ## A049413.P7064775592784833808

`A006530(A046820(n+1)*A046825(n+1))`
-/

namespace A049413.P7064775592784833808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A046820 (n + 1) * A046825 (n + 1)).toNat

end

end A049413.P7064775592784833808

/-! ## A049413.P17791364032099213428

`A006530(A046823(n+1)*A046825(n+1))`
-/

namespace A049413.P17791364032099213428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A046823 (n + 1) * A046825 (n + 1)).toNat

end

end A049413.P17791364032099213428

/-! ## A049413.P11861763281123646123

`A006530(A046825(n+1)*A125769(n+1))`
-/

namespace A049413.P11861763281123646123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A046825 (n + 1) * A125769 (n + 1)).toNat

end

end A049413.P11861763281123646123

/-!
# A049415: Number of squares (of positive integers) with n digits.

The programs for A049415, the canonical program `A049415.P13981343860301954148` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049415 has offset 1).

The definition of A049415 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049415.P13981343860301954148

`ceil(sqrt(10^(n+1)))-ceil(sqrt(10^n))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049415

/-- `ceil(sqrt(10^(n+1)))-ceil(sqrt(10^n))` -/
def P13981343860301954148.Spec : Prop :=
  ∀ n, P13981343860301954148.a n = A049415 (n + 1)

theorem P13981343860301954148.correct : P13981343860301954148.Spec := by
  intro n
  simp only [A049415, Nat.add_sub_cancel]

end A049415

/-! ## A049415.P13043850225259359832

`Δ[A017936(n+1)]`
-/

namespace A049415.P13043850225259359832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017936 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049415.P13043850225259359832

namespace A049415

/-- `Δ[A017936(n+1)]` -/
def P13043850225259359832.Spec : Prop :=
  ∀ n, P13043850225259359832.a n = A049415 (n + 1)

end A049415

/-! ## A049415.P6814114334807026904

`Δ[A018074(2*n)]`
-/

namespace A049415.P6814114334807026904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018074 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049415.P6814114334807026904

namespace A049415

/-- `Δ[A018074(2*n)]` -/
def P6814114334807026904.Spec : Prop :=
  ∀ n, P6814114334807026904.a n = A049415 (n + 1)

end A049415

/-! ## A049415.P7938407487499552501

`abs(Δ[A018072(2*n)+and(1, n)])`
-/

namespace A049415.P7938407487499552501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018072 (2 * n) + (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A049415.P7938407487499552501

namespace A049415

/-- `abs(Δ[A018072(2*n)+and(1, n)])` -/
def P7938407487499552501.Spec : Prop :=
  ∀ n, P7938407487499552501.a n = A049415 (n + 1)

end A049415

/-! ## A049415.P2452265978609961154

`A062940(n-C(n, a(n-1))+1)` with `a(0)=3`
-/

namespace A049415.P2452265978609961154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A062940 ((n : ℤ) - (Nat.choose n (a (n - 1)).toNat : ℤ) + 1).toNat

end

end A049415.P2452265978609961154

namespace A049415

/-- `A062940(n-C(n, a(n-1))+1)` -/
def P2452265978609961154.Spec : Prop :=
  ∀ n, P2452265978609961154.a n = A049415 (n + 1)

end A049415

/-! ## A049415.P10219415950062037404

`Δ[sqrt(A061432(n+1))]`
-/

namespace A049415.P10219415950062037404
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A061432 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049415.P10219415950062037404

namespace A049415

/-- `Δ[sqrt(A061432(n+1))]` -/
def P10219415950062037404.Spec : Prop :=
  ∀ n, P10219415950062037404.a n = (A049415 (n + 1) : ℝ)

end A049415

/-! ## A049415.P5821386642960136434

`A216653(A347553(n+4))`
-/

namespace A049415.P5821386642960136434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216653 (A347553 (n + 4)).toNat

end

end A049415.P5821386642960136434

namespace A049415

/-- `A216653(A347553(n+4))` -/
def P5821386642960136434.Spec : Prop :=
  ∀ n, P5821386642960136434.a n = A049415 (n + 1)

end A049415

/-!
# A049416: Largest number whose square has n digits.

The programs for A049416, the canonical program `A049416.P9006845360093669421` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049416 has offset 1).

The definition of A049416 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049416.P9006845360093669421

`ceil(sqrt(10^(n+1)))-1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049416

/-- `ceil(sqrt(10^(n+1)))-1` -/
def P9006845360093669421.Spec : Prop :=
  ∀ n, P9006845360093669421.a n = A049416 (n + 1)

theorem P9006845360093669421.correct : P9006845360093669421.Spec := by
  intro n
  simp only [A049416, Nat.add_sub_cancel]

end A049416

/-! ## A049416.P18422635801172898222

`∑[A049415(n+1)]`
-/

namespace A049416.P18422635801172898222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049416.P18422635801172898222

namespace A049416

/-- `∑[A049415(n+1)]` -/
def P18422635801172898222.Spec : Prop :=
  ∀ n, P18422635801172898222.a n = A049416 (n + 1)

end A049416

/-! ## A049416.P7321434997990527631

`A114322(2*(n+1))`
-/

namespace A049416.P7321434997990527631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114322 (2 * (n + 1))

end

end A049416.P7321434997990527631

namespace A049416

/-- `A114322(2*(n+1))` -/
def P7321434997990527631.Spec : Prop :=
  ∀ n, P7321434997990527631.a n = A049416 (n + 1)

end A049416

/-! ## A049416.P12127201539166545413

`sqrt(A061433(n+1))`
-/

namespace A049416.P12127201539166545413
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A061433 (n + 1) : ℝ)

end

end A049416.P12127201539166545413

namespace A049416

/-- `sqrt(A061433(n+1))` -/
def P12127201539166545413.Spec : Prop :=
  ∀ n, P12127201539166545413.a n = (A049416 (n + 1) : ℝ)

end A049416

/-! ## A049416.P54448152456305455

`floor(sqrt(A002283(n+1)))`
-/

namespace A049416.P54448152456305455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A002283 (n + 1))

end

end A049416.P54448152456305455

namespace A049416

/-- `floor(sqrt(A002283(n+1)))` -/
def P54448152456305455.Spec : Prop :=
  ∀ n, P54448152456305455.a n = A049416 (n + 1)

end A049416

/-! ## A049416.P15867215230356160627

`floor(sqrt(A024115(n+1)))`
-/

namespace A049416.P15867215230356160627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A024115 (n + 1))

end

end A049416.P15867215230356160627

namespace A049416

/-- `floor(sqrt(A024115(n+1)))` -/
def P15867215230356160627.Spec : Prop :=
  ∀ n, P15867215230356160627.a n = A049416 (n + 1)

end A049416

/-! ## A049416.P15853025670640746852

`floor(sqrt(A024116(n+1)))`
-/

namespace A049416.P15853025670640746852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A024116 (n + 1))

end

end A049416.P15853025670640746852

namespace A049416

/-- `floor(sqrt(A024116(n+1)))` -/
def P15853025670640746852.Spec : Prop :=
  ∀ n, P15853025670640746852.a n = A049416 (n + 1)

end A049416

/-! ## A049416.P15060807315791669282

`floor(sqrt(A024117(n+1)))`
-/

namespace A049416.P15060807315791669282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A024117 (n + 1))

end

end A049416.P15060807315791669282

namespace A049416

/-- `floor(sqrt(A024117(n+1)))` -/
def P15060807315791669282.Spec : Prop :=
  ∀ n, P15060807315791669282.a n = A049416 (n + 1)

end A049416

/-! ## A049416.P17067379420184103056

`floor(sqrt(A066557(n+1)))`
-/

namespace A049416.P17067379420184103056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A066557 (n + 1))

end

end A049416.P17067379420184103056

namespace A049416

/-- `floor(sqrt(A066557(n+1)))` -/
def P17067379420184103056.Spec : Prop :=
  ∀ n, P17067379420184103056.a n = A049416 (n + 1)

end A049416

/-! ## A049416.P15333193257376189941

`floor(sqrt(A098450(n+1)))`
-/

namespace A049416.P15333193257376189941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A098450 (n + 1))

end

end A049416.P15333193257376189941

namespace A049416

/-- `floor(sqrt(A098450(n+1)))` -/
def P15333193257376189941.Spec : Prop :=
  ∀ n, P15333193257376189941.a n = A049416 (n + 1)

end A049416

/-! ## A049416.P17349980584739734311

`floor(sqrt(A098611(n+1)))`
-/

namespace A049416.P17349980584739734311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A098611 (n + 1))

end

end A049416.P17349980584739734311

namespace A049416

/-- `floor(sqrt(A098611(n+1)))` -/
def P17349980584739734311.Spec : Prop :=
  ∀ n, P17349980584739734311.a n = A049416 (n + 1)

end A049416

/-! ## A049416.P14854168914075135239

`floor(sqrt(A103456(n+1)))`
-/

namespace A049416.P14854168914075135239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A103456 (n + 1))

end

end A049416.P14854168914075135239

namespace A049416

/-- `floor(sqrt(A103456(n+1)))` -/
def P14854168914075135239.Spec : Prop :=
  ∀ n, P14854168914075135239.a n = A049416 (n + 1)

end A049416

/-! ## A049416.P5692704378680830631

`floor(sqrt(A108908(n+1)))`
-/

namespace A049416.P5692704378680830631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A108908 (n + 1))

end

end A049416.P5692704378680830631

namespace A049416

/-- `floor(sqrt(A108908(n+1)))` -/
def P5692704378680830631.Spec : Prop :=
  ∀ n, P5692704378680830631.a n = A049416 (n + 1)

end A049416

/-! ## A049416.P14816765645180005277

`floor(sqrt(A155601(n+1)))`
-/

namespace A049416.P14816765645180005277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A155601 (n + 1))

end

end A049416.P14816765645180005277

namespace A049416

/-- `floor(sqrt(A155601(n+1)))` -/
def P14816765645180005277.Spec : Prop :=
  ∀ n, P14816765645180005277.a n = A049416 (n + 1)

end A049416

/-! ## A049416.P17770110491705144613

`floor(sqrt(A218127(n+1)))`
-/

namespace A049416.P17770110491705144613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A218127 (n + 1))

end

end A049416.P17770110491705144613

namespace A049416

/-- `floor(sqrt(A218127(n+1)))` -/
def P17770110491705144613.Spec : Prop :=
  ∀ n, P17770110491705144613.a n = A049416 (n + 1)

end A049416

/-! ## A049416.P16126653863511821863

`floor(sqrt(A348316(n+1)))`
-/

namespace A049416.P16126653863511821863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A348316 (n + 1))

end

end A049416.P16126653863511821863

namespace A049416

/-- `floor(sqrt(A348316(n+1)))` -/
def P16126653863511821863.Spec : Prop :=
  ∀ n, P16126653863511821863.a n = A049416 (n + 1)

end A049416

/-! ## A049416.P2094496108744796604

`floor(sqrt(A268099(2*n+1)))`
-/

namespace A049416.P2094496108744796604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A268099 (2 * n + 1))

end

end A049416.P2094496108744796604

namespace A049416

/-- `floor(sqrt(A268099(2*n+1)))` -/
def P2094496108744796604.Spec : Prop :=
  ∀ n, P2094496108744796604.a n = A049416 (n + 1)

end A049416

/-!
# A049417: a(n) = isigma(n): sum of infinitary divisors of n.

The programs for A049417, there is no canonical definition to state claims against.
-/

/-! ## A049417.P1664904388030484957

`A126168(n+1)+n+1`
-/

namespace A049417.P1664904388030484957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126168 (n + 1) + (n + 1 : ℤ)

end

end A049417.P1664904388030484957

/-! ## A049417.P13082022709913624419

`Δ[A160664(n)]-A348271(n+1)`
-/

namespace A049417.P13082022709913624419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A348271 (n + 1)

end

end A049417.P13082022709913624419

/-! ## A049417.P6874780766382891484

`A000203(n+1)-A348271(n+1)`
-/

namespace A049417.P6874780766382891484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A348271 (n + 1)

end

end A049417.P6874780766382891484

/-! ## A049417.P952102802893915537

`sqrt(A072861(n+1))-A348271(n+1)`
-/

namespace A049417.P952102802893915537
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A072861 (n + 1) : ℝ) - (A348271 (n + 1) : ℝ)

end

end A049417.P952102802893915537

/-! ## A049417.P4256607623733422000

`A074400(n+1)/2-A348271(n+1)`
-/

namespace A049417.P4256607623733422000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 1) : ℚ) / 2 - (A348271 (n + 1) : ℚ)

end

end A049417.P4256607623733422000

/-! ## A049417.P7504508960221828709

`A272027(n+1)/3-A348271(n+1)`
-/

namespace A049417.P7504508960221828709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272027 (n + 1) : ℚ) / 3 - (A348271 (n + 1) : ℚ)

end

end A049417.P7504508960221828709

/-! ## A049417.P4916865082906548677

`floor(sqrt(A258774(n+1))-A348271(n+1))`
-/

namespace A049417.P4916865082906548677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A258774 (n + 1) : ℝ) - (A348271 (n + 1) : ℝ)⌋

end

end A049417.P4916865082906548677

/-! ## A049417.P12074167241032928679

`A001065(n+1)+n+1-A348271(n+1)`
-/

namespace A049417.P12074167241032928679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + ((n + 1 : ℤ) - A348271 (n + 1))

end

end A049417.P12074167241032928679

/-! ## A049417.P4592812546381385835

`A245092(A005408(n))-A348271(n+1)`
-/

namespace A049417.P4592812546381385835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A005408 n).toNat - A348271 (n + 1)

end

end A049417.P4592812546381385835

/-! ## A049417.P3521046668261435015

`A034448(n+1)+A048146(n+1)-A348271(n+1)`
-/

namespace A049417.P3521046668261435015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) + (A048146 (n + 1) - A348271 (n + 1))

end

end A049417.P3521046668261435015

/-! ## A049417.P1434863547945345495

`A064212(n+1)-(A348271(n+1)+A034448(n+1))`
-/

namespace A049417.P1434863547945345495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064212 (n + 1) - (A348271 (n + 1) + A034448 (n + 1))

end

end A049417.P1434863547945345495

/-! ## A049417.P15589768068829097978

`A188999(n+1)+A319072(n+1)-A348271(n+1)`
-/

namespace A049417.P15589768068829097978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188999 (n + 1) + (A319072 (n + 1) - A348271 (n + 1))

end

end A049417.P15589768068829097978

/-! ## A049417.P6792361371472400427

`A091732((n+1)²)/A091732(n+1)`
-/

namespace A049417.P6792361371472400427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091732 ((n + 1) ^ 2) : ℚ) / (A091732 (n + 1) : ℚ)

end

end A049417.P6792361371472400427

/-!
# A049418: 3-i-sigma(n): sum of 3-infinitary divisors of n: if n=Product p(i)^r(i) and d=Product p(i)^s(i), each s(i) has a digit a<=b in its ternary expansion everywhere that the corresponding r(i) has a digit b, then d is a 3-i-divisor of n.

The programs for A049418, the canonical program `A049418.P15748433190609100064` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049418 has offset 1).

The definition of A049418 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049418.P15748433190609100064

`A073185(A050985(n+1))*A113061(A159253(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A049418

/-- `A073185(A050985(n+1))*A113061(A159253(n+1))` -/
def P15748433190609100064.Spec : Prop :=
  ∀ n, P15748433190609100064.a n = A049418 (n + 1)

theorem P15748433190609100064.correct : P15748433190609100064.Spec := by
  intro n
  simp only [A049418, Nat.add_sub_cancel]

end A049418

/-! ## A049418.P7360851585118865381

`A000203(A048798((n+1)²))*A113061(n+1)`
-/

namespace A049418.P7360851585118865381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A048798 ((n + 1) ^ 2)).toNat * A113061 (n + 1)

end

end A049418.P7360851585118865381

namespace A049418

/-- `A000203(A048798((n+1)²))*A113061(n+1)` -/
def P7360851585118865381.Spec : Prop :=
  ∀ n, P7360851585118865381.a n = A049418 (n + 1)

end A049418

/-! ## A049418.P13255402678055470374

`A000203(A053149((n+1)²)/(n+1)²)*A113061(n+1)`
-/

namespace A049418.P13255402678055470374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((A053149 ((n + 1) ^ 2) : ℚ) / ((n + 1) ^ 2 : ℚ))).toNat * A113061 (n + 1)

end

end A049418.P13255402678055470374

namespace A049418

/-- `A000203(A053149((n+1)²)/(n+1)²)*A113061(n+1)` -/
def P13255402678055470374.Spec : Prop :=
  ∀ n, P13255402678055470374.a n = A049418 (n + 1)

end A049418

/-! ## A049418.P5506396804168048307

`A073185(A053149((n+1)²)/(n+1)²)*A113061(n+1)`
-/

namespace A049418.P5506396804168048307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073185 (SequenceMachineLib.roundAway ((A053149 ((n + 1) ^ 2) : ℚ) / ((n + 1) ^ 2 : ℚ))).toNat * A113061 (n + 1)

end

end A049418.P5506396804168048307

namespace A049418

/-- `A073185(A053149((n+1)²)/(n+1)²)*A113061(n+1)` -/
def P5506396804168048307.Spec : Prop :=
  ∀ n, P5506396804168048307.a n = A049418 (n + 1)

end A049418

/-! ## A049418.P18281019837359200238

`A348271(A065667(n+1))+A331107(n+1)`
-/

namespace A049418.P18281019837359200238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348271 (A065667 (n + 1)).toNat + A331107 (n + 1)

end

end A049418.P18281019837359200238

namespace A049418

/-- `A348271(A065667(n+1))+A331107(n+1)` -/
def P18281019837359200238.Spec : Prop :=
  ∀ n, P18281019837359200238.a n = A049418 (n + 1)

end A049418

/-!
# A049419: a(1) = 1; for n > 1, a(n) = number of exponential divisors of n.

The programs for A049419, the canonical program `A049419.P11075566220394595585` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049419 has offset 1).

The definition of A049419 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049419.P9360753038457027513

`∏{e}[n+1, A000005(#)]`
-/

namespace A049419.P9360753038457027513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000005 (Nat.factorization (f1 n) p)

end

end A049419.P9360753038457027513

namespace A049419

/-- `∏{e}[n+1, A000005(#)]` -/
def P9360753038457027513.Spec : Prop :=
  ∀ n, P9360753038457027513.a n = A049419 (n + 1)

end A049419

/-! ## A049419.P14059871670496630376

`∏{e}[n+1, A074848(#)]`
-/

namespace A049419.P14059871670496630376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A074848 (Nat.factorization (f1 n) p)

end

end A049419.P14059871670496630376

namespace A049419

/-- `∏{e}[n+1, A074848(#)]` -/
def P14059871670496630376.Spec : Prop :=
  ∀ n, P14059871670496630376.a n = A049419 (n + 1)

end A049419

/-! ## A049419.P3348075071406159614

`∏{e}[n+1, A122667(#)]`
-/

namespace A049419.P3348075071406159614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A122667 (Nat.factorization (f1 n) p)

end

end A049419.P3348075071406159614

namespace A049419

/-- `∏{e}[n+1, A122667(#)]` -/
def P3348075071406159614.Spec : Prop :=
  ∀ n, P3348075071406159614.a n = A049419 (n + 1)

end A049419

/-! ## A049419.P5931103837199045555

`∏{e}[n+1, A167447(#)]`
-/

namespace A049419.P5931103837199045555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A167447 (Nat.factorization (f1 n) p)

end

end A049419.P5931103837199045555

namespace A049419

/-- `∏{e}[n+1, A167447(#)]` -/
def P5931103837199045555.Spec : Prop :=
  ∀ n, P5931103837199045555.a n = A049419 (n + 1)

end A049419

/-! ## A049419.P6024796332456447368

`∏{e}[n+1, A184395(#)]`
-/

namespace A049419.P6024796332456447368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A184395 (Nat.factorization (f1 n) p)

end

end A049419.P6024796332456447368

namespace A049419

/-- `∏{e}[n+1, A184395(#)]` -/
def P6024796332456447368.Spec : Prop :=
  ∀ n, P6024796332456447368.a n = A049419 (n + 1)

end A049419

/-! ## A049419.P14955001192033491276

`∏{e}[n+1, A302051(#)]`
-/

namespace A049419.P14955001192033491276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A302051 (Nat.factorization (f1 n) p)

end

end A049419.P14955001192033491276

namespace A049419

/-- `∏{e}[n+1, A302051(#)]` -/
def P14955001192033491276.Spec : Prop :=
  ∀ n, P14955001192033491276.a n = A049419 (n + 1)

end A049419

/-! ## A049419.P6323697906964330789

`∏{e}[n+1, A325560(#)]`
-/

namespace A049419.P6323697906964330789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A325560 (Nat.factorization (f1 n) p)

end

end A049419.P6323697906964330789

namespace A049419

/-- `∏{e}[n+1, A325560(#)]` -/
def P6323697906964330789.Spec : Prop :=
  ∀ n, P6323697906964330789.a n = A049419 (n + 1)

end A049419

/-! ## A049419.P11075566220394595585

`∏{e}[n+1, A032741(#)+1]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A049419

/-- `∏{e}[n+1, A032741(#)+1]` -/
def P11075566220394595585.Spec : Prop :=
  ∀ n, P11075566220394595585.a n = A049419 (n + 1)

theorem P11075566220394595585.correct : P11075566220394595585.Spec := by
  intro n
  simp only [A049419, Nat.add_sub_cancel]

end A049419

/-! ## A049419.P12684715044095784126

`∏{e}[n+1, A277692(2*#+1)]`
-/

namespace A049419.P12684715044095784126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A277692 (2 * Nat.factorization (f1 n) p + 1)

end

end A049419.P12684715044095784126

namespace A049419

/-- `∏{e}[n+1, A277692(2*#+1)]` -/
def P12684715044095784126.Spec : Prop :=
  ∀ n, P12684715044095784126.a n = A049419 (n + 1)

end A049419

/-! ## A049419.P12521058242386486735

`∏{p}[n+1, A000005(val(n+1, #))]`
-/

namespace A049419.P12521058242386486735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000005 (SequenceMachineLib.valuation (n + 1) p)

end

end A049419.P12521058242386486735

namespace A049419

/-- `∏{p}[n+1, A000005(val(n+1, #))]` -/
def P12521058242386486735.Spec : Prop :=
  ∀ n, P12521058242386486735.a n = A049419 (n + 1)

end A049419

/-! ## A049419.P6339734079684969214

`A005361(n+1)-A396543(n+1)`
-/

namespace A049419.P6339734079684969214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) - A396543 (n + 1)

end

end A049419.P6339734079684969214

namespace A049419

/-- `A005361(n+1)-A396543(n+1)` -/
def P6339734079684969214.Spec : Prop :=
  ∀ n, P6339734079684969214.a n = A049419 (n + 1)

theorem P6339734079684969214.correct : P6339734079684969214.Spec := by
  intro n
  simp only [A049419, Nat.add_sub_cancel, A049419.P6339734079684969214.a, A049419.P11075566220394595585.f1, A049419.P11075566220394595585.a, A005361, A005361.P7238185687981551187.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A396543, A396543.P10005515851274933396.a, A000005, A000005.P16091521709108585461.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049419

/-! ## A049419.P5480062787846242234

`∏{e}[A101296(A025487(n+1)), A101296(#)]`
-/

namespace A049419.P5480062787846242234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (A025487 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A101296 (Nat.factorization (f1 n).natAbs p)

end

end A049419.P5480062787846242234

namespace A049419

/-- `∏{e}[A101296(A025487(n+1)), A101296(#)]` -/
def P5480062787846242234.Spec : Prop :=
  ∀ n, P5480062787846242234.a n = A049419 (n + 1)

end A049419

/-! ## A049419.P11443736498751414384

`A001055(A091050(A203025(n+1)²))`
-/

namespace A049419.P11443736498751414384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A091050 (A203025 (n + 1) ^ 2).toNat).toNat

end

end A049419.P11443736498751414384

namespace A049419

/-- `A001055(A091050(A203025(n+1)²))` -/
def P11443736498751414384.Spec : Prop :=
  ∀ n, P11443736498751414384.a n = A049419 (n + 1)

end A049419

/-! ## A049419.P4661858640780019188

`A368980((n+1)²)`
-/

namespace A049419.P4661858640780019188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368980 ((n + 1) ^ 2)

end

end A049419.P4661858640780019188

namespace A049419

/-- `A368980((n+1)²)` -/
def P4661858640780019188.Spec : Prop :=
  ∀ n, P4661858640780019188.a n = A049419 (n + 1)

end A049419

/-!
# A049420: Composite numbers k such that k!/k# + 1 is prime, where k# = primorial numbers A034386.

The programs for A049420, there is no canonical definition to state claims against.
-/

/-! ## A049420.P5810864002470637133

`filter[A140294(n+2), A066247(#)]`
-/

namespace A049420.P5810864002470637133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140294 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A049420.P5810864002470637133

/-! ## A049420.P8336408804226890870

`filter[A140294(n+3), A005171(#)]`
-/

namespace A049420.P8336408804226890870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140294 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A049420.P8336408804226890870

/-! ## A049420.P8137130990418791254

`filter[A140294(n+3), A283265(#)]`
-/

namespace A049420.P8137130990418791254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140294 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283265 (f1 j).toNat = 1) n)

end

end A049420.P8137130990418791254

/-! ## A049420.P18101857081814409688

`A002808(A053982(n+1))`
-/

namespace A049420.P18101857081814409688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A053982 (n + 1)).toNat

end

end A049420.P18101857081814409688

/-! ## A049420.P14356140318446392992

`A018252(A053982(n+1)+1)`
-/

namespace A049420.P14356140318446392992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A053982 (n + 1) + 1).toNat

end

end A049420.P14356140318446392992

/-!
# A049421: Composite numbers k such that k!/k# - 1 is prime, where k# = primorial numbers A034386.

The programs for A049421, there is no canonical definition to state claims against.
-/

/-! ## A049421.P5138538192828567534

`filter[A140293(n+1), A005171(#)]`
-/

namespace A049421.P5138538192828567534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140293 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A049421.P5138538192828567534

/-! ## A049421.P12439801300033258563

`filter[A140293(n+1), A066247(#)]`
-/

namespace A049421.P12439801300033258563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140293 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A049421.P12439801300033258563

/-! ## A049421.P2654332505242531927

`filter[A140293(n+1), A283265(#)]`
-/

namespace A049421.P2654332505242531927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140293 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283265 (f1 j).toNat = 1) n)

end

end A049421.P2654332505242531927

/-! ## A049421.P6230400689277450146

`A002808(A057017(n+1))`
-/

namespace A049421.P6230400689277450146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A057017 (n + 1)).toNat

end

end A049421.P6230400689277450146

/-! ## A049421.P2114271922486318316

`A018252(A057017(n+1)+1)`
-/

namespace A049421.P2114271922486318316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A057017 (n + 1) + 1).toNat

end

end A049421.P2114271922486318316

/-!
# A049422: Numbers k such that k^2 + 3 is prime.

The programs for A049422, there is no canonical definition to state claims against.
-/

/-! ## A049422.P16868289940470994132

`sqrt(A049423(n+1)-3)`
-/

namespace A049422.P16868289940470994132
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A049423 (n + 1) - 3 : ℝ)

end

end A049422.P16868289940470994132

/-! ## A049422.P152045957327080853

`floor(sqrt(A049423(n+1)))%A034857(n+1)`
-/

namespace A049422.P152045957327080853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.sqrt (A049423 (n + 1))) (A034857 (n + 1))

end

end A049422.P152045957327080853

/-! ## A049422.P12799868738470931231

`floor(sqrt(A049423(n+1)%A182344(n+1)))`
-/

namespace A049422.P12799868738470931231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (Int.tmod (A049423 (n + 1)) (A182344 (n + 1)))

end

end A049422.P12799868738470931231

/-! ## A049422.P2325884465947439553

`eq[A157532(n+1), A300817(n)]`
-/

namespace A049422.P2325884465947439553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300817 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A049422.P2325884465947439553

/-! ## A049422.P16491048728390109751

`eq[A019426(n)+2, A300817(n)]`
-/

namespace A049422.P16491048728390109751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300817 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A049422.P16491048728390109751

/-! ## A049422.P13587836760411218054

`eq[A057427(n)+2, A300817(n)]`
-/

namespace A049422.P13587836760411218054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300817 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A049422.P13587836760411218054

/-! ## A049422.P964840219175416650

`record[n*A300817(A300817(2*n))]`
-/

namespace A049422.P964840219175416650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A300817 (A300817 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049422.P964840219175416650

/-! ## A049422.P18411931076848908400

`record[A014681(n)%A089123(n+1)]`
-/

namespace A049422.P18411931076848908400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014681 n) (A089123 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049422.P18411931076848908400

/-! ## A049422.P11212808236218367060

`lt[(A089120(n+1)-A300817(n))², 2]`
-/

namespace A049422.P11212808236218367060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A089120 (n + 1) - A300817 n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A049422.P11212808236218367060

/-! ## A049422.P3208921523708482504

`lt[(A089123(n+1)-A300817(n))², 2]`
-/

namespace A049422.P3208921523708482504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A089123 (n + 1) - A300817 n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A049422.P3208921523708482504

/-! ## A049422.P13008233433343601866

`record[A008588(n)/A300817(A005843(n))]`
-/

namespace A049422.P13008233433343601866
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008588 n : ℚ) / (A300817 (A005843 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049422.P13008233433343601866

/-! ## A049422.P12939270204128961013

`eq[A300817(2*A019426(n)), A300817(n)]`
-/

namespace A049422.P12939270204128961013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300817 (2 * A019426 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300817 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A049422.P12939270204128961013

/-! ## A049422.P16422167137346292150

`sqrt(p?[n²+3]-3)`
-/

namespace A049422.P16422167137346292150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 3

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 3 : ℝ)

end

end A049422.P16422167137346292150

/-! ## A049422.P4760202113237662643

`sqrt(xor(3, p?[n²+3]))`
-/

namespace A049422.P4760202113237662643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 3

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.xor 3 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℝ)

end

end A049422.P4760202113237662643

/-! ## A049422.P13917258024509864496

`eq[1, ∑{e}[n²+3, #]]`
-/

namespace A049422.P13917258024509864496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A049422.P13917258024509864496

/-! ## A049422.P14984151815455588142

`lt[∑{e}[n²+3, #], 2]`
-/

namespace A049422.P14984151815455588142
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A049422.P14984151815455588142

/-!
# A049423: Primes of the form k^2 + 3.

The programs for A049423, there is no canonical definition to state claims against.
-/

/-! ## A049423.P8142446110775999019

`A049422(n+1)²+3`
-/

namespace A049423.P8142446110775999019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049422 (n + 1) ^ 2 + 3

end

end A049423.P8142446110775999019

/-! ## A049423.P882292180302916680

`A222465(A049422(n+1)/2)`
-/

namespace A049423.P882292180302916680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222465 (SequenceMachineLib.roundAway ((A049422 (n + 1) : ℚ) / 2)).toNat

end

end A049423.P882292180302916680

/-! ## A049423.P13386255345493002169

`record[or(1, A089123(n+1))]`
-/

namespace A049423.P13386255345493002169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A089123 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049423.P13386255345493002169

/-! ## A049423.P5587346134859039795

`record[or(1, A089124(n+1))]`
-/

namespace A049423.P5587346134859039795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A089124 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049423.P5587346134859039795

/-! ## A049423.P17999581653691359898

`A117950(A049422(n+1))`
-/

namespace A049423.P17999581653691359898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117950 (A049422 (n + 1)).toNat

end

end A049423.P17999581653691359898

/-! ## A049423.P9839089809996038686

`record[A089123(n+1)+A000007(n)]`
-/

namespace A049423.P9839089809996038686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089123 (n + 1) + A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049423.P9839089809996038686

/-! ## A049423.P12159948268352960330

`record[A089124(n+1)+A000007(n)]`
-/

namespace A049423.P12159948268352960330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089124 (n + 1) + A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049423.P12159948268352960330

/-! ## A049423.P2237754646732561746

`record[A089123(n+1)+A056594(n)]`
-/

namespace A049423.P2237754646732561746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089123 (n + 1) + A056594 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049423.P2237754646732561746

/-! ## A049423.P11790190643002593971

`record[A089124(n+1)+A059841(n)]`
-/

namespace A049423.P11790190643002593971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089124 (n + 1) + A059841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049423.P11790190643002593971

/-! ## A049423.P6057217176111643623

`record[A089124(n+1)+2-A020639(n+1)]`
-/

namespace A049423.P6057217176111643623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089124 (n + 1) + (2 - A020639 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049423.P6057217176111643623

/-! ## A049423.P16989781539945816572

`A087475(A049422(n+1))-A000034(A005843(n))`
-/

namespace A049423.P16989781539945816572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087475 (A049422 (n + 1)).toNat - A000034 (A005843 n).toNat

end

end A049423.P16989781539945816572

/-! ## A049423.P2640351071691369045

`A087475(A049422(n+1))-A000034(A016825(n))`
-/

namespace A049423.P2640351071691369045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087475 (A049422 (n + 1)).toNat - A000034 (A016825 n).toNat

end

end A049423.P2640351071691369045

/-! ## A049423.P11360526698235365445

`A087475(A049422(n+1))-A071936(A093178(n))`
-/

namespace A049423.P11360526698235365445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087475 (A049422 (n + 1)).toNat - A071936 (A093178 n).toNat

end

end A049423.P11360526698235365445

/-! ## A049423.P858020972677620151

`A087475(A049422(n+1))-A093178(A265722(n))`
-/

namespace A049423.P858020972677620151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087475 (A049422 (n + 1)).toNat - A093178 (A265722 n).toNat

end

end A049423.P858020972677620151

/-! ## A049423.P12553825021304213202

`A087475(A049422(n+1))-A093178(A278162(n))`
-/

namespace A049423.P12553825021304213202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087475 (A049422 (n + 1)).toNat - A093178 (A278162 n).toNat

end

end A049423.P12553825021304213202

/-! ## A049423.P9634538024451775527

`A087475(A049422(n+1))-A028920(A102261(n+1))`
-/

namespace A049423.P9634538024451775527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087475 (A049422 (n + 1)).toNat - A028920 (A102261 (n + 1)).toNat

end

end A049423.P9634538024451775527

/-! ## A049423.P9995472580503363053

`A087475(A049422(n+1))-A028920(A114272(n+1))`
-/

namespace A049423.P9995472580503363053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087475 (A049422 (n + 1)).toNat - A028920 (A114272 (n + 1)).toNat

end

end A049423.P9995472580503363053

/-! ## A049423.P17715184606954996619

`A087475(A049422(n+1))-A001222(A089123(n+1))`
-/

namespace A049423.P17715184606954996619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087475 (A049422 (n + 1)).toNat - A001222 (A089123 (n + 1)).toNat

end

end A049423.P17715184606954996619

/-! ## A049423.P1780817910716130083

`A087475(A049422(n+1))-A093178(A333169(n))`
-/

namespace A049423.P1780817910716130083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087475 (A049422 (n + 1)).toNat - A093178 (A333169 n).toNat

end

end A049423.P1780817910716130083

/-! ## A049423.P15883328655602350869

`p?[n²+3]`
-/

namespace A049423.P15883328655602350869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A049423.P15883328655602350869

/-!
# A049425: Row sums of triangle A049404.

The programs for A049425, there is no canonical definition to state claims against.
-/

/-! ## A049425.P6634044364278632268

`a(n-1)+2*(n-1)*a(n-2)+(2-3*n+n²)*a(n-3)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A049425.P6634044364278632268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  a (n - 1) + 2 * ((n : ℤ) - 1) * a (n - 2) + (2 - (3 * n : ℤ) + (n ^ 2 : ℤ)) * a (n - 3)

end

end A049425.P6634044364278632268

/-! ## A049425.P8579875094156023722

`A249062(n)-n*a(n-1)` with `a(0)=1`
-/

namespace A049425.P8579875094156023722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A249062 n - (n : ℤ) * a (n - 1)

end

end A049425.P8579875094156023722

/-! ## A049425.P18041184668545456872

`A293991(∑[n+3])`
-/

namespace A049425.P18041184668545456872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293991 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A049425.P18041184668545456872

/-! ## A049425.P897067877981851147

`or(1, A293991(A027379(n+1)))`
-/

namespace A049425.P897067877981851147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A293991 (A027379 (n + 1)).toNat)

end

end A049425.P897067877981851147

/-! ## A049425.P12621329271618558633

`or(1, A293991(A055998(n+1)))`
-/

namespace A049425.P12621329271618558633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A293991 (A055998 (n + 1)).toNat)

end

end A049425.P12621329271618558633

/-! ## A049425.P13800132164140228845

`gcd(A000038(n), A293991(A055998(n+1)))`
-/

namespace A049425.P13800132164140228845
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A293991 (A055998 (n + 1)).toNat)

end

end A049425.P13800132164140228845

/-! ## A049425.P15977389314040516991

`A293991(A027379(n+1))^abs(A062157(n))`
-/

namespace A049425.P15977389314040516991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293991 (A027379 (n + 1)).toNat : ℚ) ^ (|A062157 n| : ℤ)

end

end A049425.P15977389314040516991

/-! ## A049425.P2199531290907013877

`A293991(A027379(n+1))+A000007(n+1)`
-/

namespace A049425.P2199531290907013877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293991 (A027379 (n + 1)).toNat + A000007 (n + 1)

end

end A049425.P2199531290907013877

/-! ## A049425.P15319241215014737628

`A000034(2*n²)*A293991(A027379(n+1))`
-/

namespace A049425.P15319241215014737628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n ^ 2) * A293991 (A027379 (n + 1)).toNat

end

end A049425.P15319241215014737628

/-!
# A049426: Row sums of triangle A049410.

The programs for A049426, there is no canonical definition to state claims against.
-/

/-! ## A049426.P17092145874420118140

`A293991(∑[n+3]+n+3)`
-/

namespace A049426.P17092145874420118140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293991 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A049426.P17092145874420118140

/-! ## A049426.P16495494266998389437

`A293991(A046691(n+2))+(3*n)%3`
-/

namespace A049426.P16495494266998389437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293991 (A046691 (n + 2)).toNat + ((3 * n % 3 : ℕ) : ℤ)

end

end A049426.P16495494266998389437

/-! ## A049426.P18122055756300214404

`A293991(A046691(n+2))+C(3, A023197(n+1))`
-/

namespace A049426.P18122055756300214404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293991 (A046691 (n + 2)).toNat + (Nat.choose 3 (A023197 (n + 1)).toNat : ℤ)

end

end A049426.P18122055756300214404

/-! ## A049426.P13416447054552113653

`A293991(A046691(n+2))+C(3, A107576(n+1))`
-/

namespace A049426.P13416447054552113653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293991 (A046691 (n + 2)).toNat + (Nat.choose 3 (A107576 (n + 1)).toNat : ℤ)

end

end A049426.P13416447054552113653

/-! ## A049426.P8258924514549582955

`A293991(A046691(n+2))+C(3, A152680(n+1))`
-/

namespace A049426.P8258924514549582955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293991 (A046691 (n + 2)).toNat + (Nat.choose 3 (A152680 (n + 1)).toNat : ℤ)

end

end A049426.P8258924514549582955

/-! ## A049426.P3143153209391897777

`A293991(A046691(n+2))+C(3, A050399(n+2))`
-/

namespace A049426.P3143153209391897777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293991 (A046691 (n + 2)).toNat + (Nat.choose 3 (A050399 (n + 2)).toNat : ℤ)

end

end A049426.P3143153209391897777

/-! ## A049426.P13473716614249262150

`A293991(A046691(n+2))+C(3, A278734(n+2))`
-/

namespace A049426.P13473716614249262150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293991 (A046691 (n + 2)).toNat + (Nat.choose 3 (A278734 (n + 2)).toNat : ℤ)

end

end A049426.P13473716614249262150

/-! ## A049426.P12346600132731176287

`A293991(A046691(n+2))+C(3, A299284(n+3))`
-/

namespace A049426.P12346600132731176287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293991 (A046691 (n + 2)).toNat + (Nat.choose 3 (A299284 (n + 3)).toNat : ℤ)

end

end A049426.P12346600132731176287

/-! ## A049426.P12433455848682115018

`A293991(A046691(n+2))+C(3, A289167(n+4))`
-/

namespace A049426.P12433455848682115018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293991 (A046691 (n + 2)).toNat + (Nat.choose 3 (A289167 (n + 4)).toNat : ℤ)

end

end A049426.P12433455848682115018

/-! ## A049426.P16517376472329186432

`A293991(A046691(n+2))+C(3, A228424(n+5))`
-/

namespace A049426.P16517376472329186432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293991 (A046691 (n + 2)).toNat + (Nat.choose 3 (A228424 (n + 5)).toNat : ℤ)

end

end A049426.P16517376472329186432

/-!
# A049427: Row sums of triangle A049424.

The programs for A049427, there is no canonical definition to state claims against.
-/

/-! ## A049427.P10910949222173113952

`A293991(A052905(n+2))`
-/

namespace A049427.P10910949222173113952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293991 (A052905 (n + 2)).toNat

end

end A049427.P10910949222173113952

/-! ## A049427.P13967070867239929675

`A293991(eq[4, A025581(n)])`
-/

namespace A049427.P13967070867239929675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293991 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A049427.P13967070867239929675

/-! ## A049427.P8928174901918794853

`A293991(A155212(n+1)+3)`
-/

namespace A049427.P8928174901918794853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293991 (A155212 (n + 1) + 3).toNat

end

end A049427.P8928174901918794853

/-! ## A049427.P16875064133608702960

`A293991(A046691(n+3)-1)`
-/

namespace A049427.P16875064133608702960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293991 (A046691 (n + 3) - 1).toNat

end

end A049427.P16875064133608702960

/-! ## A049427.P11830429223506341911

`A293991(A027379(n+3)-2)`
-/

namespace A049427.P11830429223506341911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293991 (A027379 (n + 3) - 2).toNat

end

end A049427.P11830429223506341911

/-! ## A049427.P694613606970501925

`A293991(A000217(n+5)-5)`
-/

namespace A049427.P694613606970501925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293991 (A000217 (n + 5) - 5).toNat

end

end A049427.P694613606970501925

/-! ## A049427.P6732149015594449823

`A293991(eq[5, A004736(n+1)])`
-/

namespace A049427.P6732149015594449823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293991 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A049427.P6732149015594449823

/-!
# A049428: Row sums of triangle A049411.

The programs for A049428, there is no canonical definition to state claims against.
-/

/-! ## A049428.P9207646244508450113

`A293991(A055999(n+3))`
-/

namespace A049428.P9207646244508450113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293991 (A055999 (n + 3)).toNat

end

end A049428.P9207646244508450113

/-! ## A049428.P17075905166918637810

`A293991(eq[5, A025581(n)])`
-/

namespace A049428.P17075905166918637810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293991 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A049428.P17075905166918637810

/-! ## A049428.P4903274367913322069

`A293991(A155212(n+2)+2)`
-/

namespace A049428.P4903274367913322069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293991 (A155212 (n + 2) + 2).toNat

end

end A049428.P4903274367913322069

/-! ## A049428.P17584984569600876765

`A293991(A000217(n+6)-6)`
-/

namespace A049428.P17584984569600876765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293991 (A000217 (n + 6) - 6).toNat

end

end A049428.P17584984569600876765

/-! ## A049428.P1205607677273884424

`A293991(eq[6, A004736(n+1)])`
-/

namespace A049428.P1205607677273884424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293991 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A049428.P1205607677273884424

/-!
# A049429: Triangle T(n,d) = number of distinct d-dimensional polyominoes (or polycubes) with n cells (0 < d < n).

The programs for A049429, there is no canonical definition to state claims against.
-/

/-! ## A049429.P5424366215694560958

`A049430(comp[∑[n]]+1)`
-/

namespace A049429.P5424366215694560958
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049430 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A049429.P5424366215694560958

/-! ## A049429.P15265327359672734686

`filter[A049430(n+2), A168182(#)]`
-/

namespace A049429.P15265327359672734686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049430 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168182 (f1 j).toNat = 1) n)

end

end A049429.P15265327359672734686

/-! ## A049429.P9071805764912322550

`filter[A049430(n+2), A168184(#)]`
-/

namespace A049429.P9071805764912322550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049430 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168184 (f1 j).toNat = 1) n)

end

end A049429.P9071805764912322550

/-! ## A049429.P12663582818178823552

`filter[A049430(n+2), A276398(#)]`
-/

namespace A049429.P12663582818178823552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049430 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A276398 (f1 j).toNat = 1) n)

end

end A049429.P12663582818178823552

/-! ## A049429.P14326872059009261146

`A003059(or(A022174(n), A049600(n)))`
-/

namespace A049429.P14326872059009261146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (Int.lor (A022174 n) (A049600 n)).toNat

end

end A049429.P14326872059009261146

/-!
# A049430: Triangle read by rows: T(n,d) is the number of distinct properly d-dimensional polyominoes (or polycubes) with n cells (n >= 1, d >= 0).

The programs for A049430, there is no canonical definition to state claims against.
-/

/-! ## A049430.P16984233534067375752

`A344646(A195738(n+1))`
-/

namespace A049430.P16984233534067375752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344646 (A195738 (n + 1)).toNat

end

end A049430.P16984233534067375752

/-! ## A049430.P8892002251937209620

`A127321(A023434(A265583(n+1))²)`
-/

namespace A049430.P8892002251937209620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (A023434 (A265583 (n + 1)).toNat ^ 2).toNat

end

end A049430.P8892002251937209620

/-! ## A049430.P14427778580028732516

`A085852(n)+A046080(A318576(n+1))`
-/

namespace A049430.P14427778580028732516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085852 n + A046080 (A318576 (n + 1)).toNat

end

end A049430.P14427778580028732516

/-! ## A049430.P6564205465819468970

`A123125(n)+A046080(A318576(n+1))`
-/

namespace A049430.P6564205465819468970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 n + A046080 (A318576 (n + 1)).toNat

end

end A049430.P6564205465819468970

/-! ## A049430.P15761001435536181466

`A005206(A195738(n+1)^A291168(2*n))`
-/

namespace A049430.P15761001435536181466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (SequenceMachineLib.roundAway ((A195738 (n + 1) : ℚ) ^ (A291168 (2 * n) : ℤ))).toNat

end

end A049430.P15761001435536181466

/-!
# A049432: Numbers k such that k! - (k-1)! + 1 is prime.

The programs for A049432, there is no canonical definition to state claims against.
-/

/-! ## A049432.P4561275898311766390

`A090703(n+1)+1`
-/

namespace A049432.P4561275898311766390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090703 (n + 1) + 1

end

end A049432.P4561275898311766390

/-! ## A049432.P8600564938690185805

`record[A090703(A117910(n))-log2(1/2)]`
-/

namespace A049432.P8600564938690185805
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A090703 (A117910 n).toNat : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049432.P8600564938690185805

/-! ## A049432.P7074494638073413462

`record[A090703(A126759(n))-log2(1/2)]`
-/

namespace A049432.P7074494638073413462
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A090703 (A126759 n).toNat : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049432.P7074494638073413462

/-! ## A049432.P163968866070265604

`A020725(A090703(n+1))`
-/

namespace A049432.P163968866070265604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A090703 (n + 1)).toNat

end

end A049432.P163968866070265604

/-!
# A049433: Numbers k such that k! - (k-1)! - 1 is prime.

The programs for A049433, there is no canonical definition to state claims against.
-/

/-! ## A049433.P16395579831716876537

`A090704(n+1)+1`
-/

namespace A049433.P16395579831716876537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090704 (n + 1) + 1

end

end A049433.P16395579831716876537

/-! ## A049433.P10508651786934121855

`A020725(A090704(n+1))`
-/

namespace A049433.P10508651786934121855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A090704 (n + 1)).toNat

end

end A049433.P10508651786934121855

/-!
# A049434: Stirling numbers of second kind: 8th column of Stirling2 triangle A008277.

The programs for A049434, there is no canonical definition to state claims against.
-/

/-! ## A049434.P8934229909899407953

`A008277(A000124(n+7)+7)`
-/

namespace A049434.P8934229909899407953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (A000124 (n + 7) + 7).toNat

end

end A049434.P8934229909899407953

/-! ## A049434.P421418995727550021

`A008277(A000096(n+6)+9)`
-/

namespace A049434.P421418995727550021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (A000096 (n + 6) + 9).toNat

end

end A049434.P421418995727550021

/-! ## A049434.P10079960498939986334

`A008277(A000217(n+7)+8)`
-/

namespace A049434.P10079960498939986334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (A000217 (n + 7) + 8).toNat

end

end A049434.P10079960498939986334

/-! ## A049434.P15292697204100766748

`A008277(A020722(A000217(n+7)))`
-/

namespace A049434.P15292697204100766748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (A020722 (A000217 (n + 7)).toNat).toNat

end

end A049434.P15292697204100766748

/-! ## A049434.P2118047417915587026

`A008278(A000217(n+8)-7)`
-/

namespace A049434.P2118047417915587026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008278 (A000217 (n + 8) - 7).toNat

end

end A049434.P2118047417915587026

/-!
# A049435: Stirling numbers of second kind: 10th column of Stirling2 triangle A008277.

The programs for A049435, there is no canonical definition to state claims against.
-/

/-! ## A049435.P3502654601076869791

`A048993(eq[10, A002262(n)])`
-/

namespace A049435.P3502654601076869791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A049435.P3502654601076869791

/-! ## A049435.P2285136984497551212

`A048993(eq[11, A002260(n+1)])`
-/

namespace A049435.P2285136984497551212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A049435.P2285136984497551212

/-! ## A049435.P1602408058379791544

`A048993(A052905(n+8)-(n-4))`
-/

namespace A049435.P1602408058379791544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (A052905 (n + 8) - ((n : ℤ) - 4)).toNat

end

end A049435.P1602408058379791544

/-! ## A049435.P17645892754106467498

`A106800(eq[10, A025581(n)])`
-/

namespace A049435.P17645892754106467498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106800 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A049435.P17645892754106467498

/-! ## A049435.P5136675195823789723

`A106800(eq[11, A004736(n+1)])`
-/

namespace A049435.P5136675195823789723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106800 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A049435.P5136675195823789723

/-!
# A049436: p, p+8 and either p+2 or p+6 or both are all primes.

The programs for A049436, there is no canonical definition to state claims against.
-/

/-! ## A049436.P13189143167888632031

`∪[A046134(n+1), A046138(n+1)]`
-/

namespace A049436.P13189143167888632031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A049436.P13189143167888632031

/-! ## A049436.P16369876336234944919

`∪[A046134(n+1), A049438(n+1)]`
-/

namespace A049436.P16369876336234944919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A049436.P16369876336234944919

/-! ## A049436.P11020569824918527098

`∪[A046138(n+1), A049437(n+1)]`
-/

namespace A049436.P11020569824918527098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A049436.P11020569824918527098

/-! ## A049436.P5286516514259407172

`∩[A015915(n+1), A124590(n+1)]`
-/

namespace A049436.P5286516514259407172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049436.P5286516514259407172

/-! ## A049436.P13638152323019760372

`∩[A023202(n+1), A124590(n+1)]`
-/

namespace A049436.P13638152323019760372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049436.P13638152323019760372

/-! ## A049436.P6276673472396556536

`∩[A124590(n+1), A262085(n+1)]`
-/

namespace A049436.P6276673472396556536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049436.P6276673472396556536

/-! ## A049436.P16656198984490711514

`p?[A098058(n+1)+8]-8`
-/

namespace A049436.P16656198984490711514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098058 (n + 1) + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 8

end

end A049436.P16656198984490711514

/-! ## A049436.P12856083099687087095

`∩[A015915(n+1), A098058(n+1)]`
-/

namespace A049436.P12856083099687087095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049436.P12856083099687087095

/-! ## A049436.P17749161372189879908

`∩[A023202(n+1), A098058(n+1)]`
-/

namespace A049436.P17749161372189879908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049436.P17749161372189879908

/-! ## A049436.P11155854295857962152

`∩[A098058(n+1), A262085(n+1)]`
-/

namespace A049436.P11155854295857962152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049436.P11155854295857962152

/-! ## A049436.P12955423266792766414

`∩[A124590(n+1), A172407(n+1)+2]`
-/

namespace A049436.P12955423266792766414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172407 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049436.P12955423266792766414

/-! ## A049436.P12660859994886191675

`p?[A000040(n+1)-(9-A151800(A001223(n+1)))]`
-/

namespace A049436.P12660859994886191675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (9 - A151800 (A001223 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049436.P12660859994886191675

/-! ## A049436.P2175548726512372290

`p?[A151800(A001097(n+1))-8]`
-/

namespace A049436.P2175548726512372290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A001097 (n + 1)).toNat - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049436.P2175548726512372290

/-! ## A049436.P15652872749326894679

`p?[A151800(A099609(n+1))-8]`
-/

namespace A049436.P15652872749326894679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A099609 (n + 1)).toNat - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049436.P15652872749326894679

/-! ## A049436.P7700717359671832962

`p?[A151800(A171821(n+1))-8]`
-/

namespace A049436.P7700717359671832962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A171821 (n + 1)).toNat - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049436.P7700717359671832962

/-!
# A049437: Primes p such that p+2 and p+8 are also primes but p+6 is not.

The programs for A049437, the canonical program `A049437.P3365650477123560235` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049437 has offset 1).

The definition of A049437 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1261 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049437.P18340474284384005797

`∩[A046134(n+1), A210360(n+1)]`
-/

namespace A049437.P18340474284384005797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049437.P18340474284384005797

namespace A049437

/-- `∩[A046134(n+1), A210360(n+1)]` -/
def P18340474284384005797.Spec : Prop :=
  ∀ n, (P18340474284384005797.a n : ℤ) = A049437 (n + 1)

end A049437

/-! ## A049437.P5663093960537488015

`∩[A049436(n+1), A210360(n+1)]`
-/

namespace A049437.P5663093960537488015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049437.P5663093960537488015

namespace A049437

/-- `∩[A049436(n+1), A210360(n+1)]` -/
def P5663093960537488015.Spec : Prop :=
  ∀ n, (P5663093960537488015.a n : ℤ) = A049437 (n + 1)

end A049437

/-! ## A049437.P6747552997808605591

`∩[A015915(n+1), A210360(n+1)]`
-/

namespace A049437.P6747552997808605591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049437.P6747552997808605591

namespace A049437

/-- `∩[A015915(n+1), A210360(n+1)]` -/
def P6747552997808605591.Spec : Prop :=
  ∀ n, (P6747552997808605591.a n : ℤ) = A049437 (n + 1)

end A049437

/-! ## A049437.P12972503517562977153

`∩[A023202(n+1), A210360(n+1)]`
-/

namespace A049437.P12972503517562977153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049437.P12972503517562977153

namespace A049437

/-- `∩[A023202(n+1), A210360(n+1)]` -/
def P12972503517562977153.Spec : Prop :=
  ∀ n, (P12972503517562977153.a n : ℤ) = A049437 (n + 1)

end A049437

/-! ## A049437.P6710319719094041482

`∩[A210360(n+1), A262085(n+1)]`
-/

namespace A049437.P6710319719094041482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210360 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049437.P6710319719094041482

namespace A049437

/-- `∩[A210360(n+1), A262085(n+1)]` -/
def P6710319719094041482.Spec : Prop :=
  ∀ n, (P6710319719094041482.a n : ℤ) = A049437 (n + 1)

end A049437

/-! ## A049437.P3365650477123560235

`p?[A088176(n+1)-8]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A049437

/-- `p?[A088176(n+1)-8]` -/
def P3365650477123560235.Spec : Prop :=
  ∀ n, P3365650477123560235.a n = A049437 (n + 1)

theorem P3365650477123560235.correct : P3365650477123560235.Spec := by
  intro n
  simp only [A049437, Nat.add_sub_cancel]

end A049437

/-! ## A049437.P15497369757098489254

`∩[A023202(n+1), A098058(n+1)-2]`
-/

namespace A049437.P15497369757098489254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098058 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049437.P15497369757098489254

namespace A049437

/-- `∩[A023202(n+1), A098058(n+1)-2]` -/
def P15497369757098489254.Spec : Prop :=
  ∀ n, (P15497369757098489254.a n : ℤ) = A049437 (n + 1)

end A049437

/-! ## A049437.P13606294531035644283

`∩[A098058(n+1)-2, A262085(n+1)]`
-/

namespace A049437.P13606294531035644283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098058 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049437.P13606294531035644283

namespace A049437

/-- `∩[A098058(n+1)-2, A262085(n+1)]` -/
def P13606294531035644283.Spec : Prop :=
  ∀ n, (P13606294531035644283.a n : ℤ) = A049437 (n + 1)

end A049437

/-! ## A049437.P8442698936075717459

`∩[A046134(n+1), A140555(n+1)]`
-/

namespace A049437.P8442698936075717459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049437.P8442698936075717459

namespace A049437

/-- `∩[A046134(n+1), A140555(n+1)]` -/
def P8442698936075717459.Spec : Prop :=
  ∀ n, (P8442698936075717459.a n : ℤ) = A049437 (n + 1)

end A049437

/-! ## A049437.P138209948622807973

`∩[A049436(n+1), A140555(n+1)]`
-/

namespace A049437.P138209948622807973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049437.P138209948622807973

namespace A049437

/-- `∩[A049436(n+1), A140555(n+1)]` -/
def P138209948622807973.Spec : Prop :=
  ∀ n, (P138209948622807973.a n : ℤ) = A049437 (n + 1)

end A049437

/-! ## A049437.P12631113389737913991

`p?[A000040(A029707(n+1)+2)-8]`
-/

namespace A049437.P12631113389737913991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A029707 (n + 1) + 2).toNat - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049437.P12631113389737913991

namespace A049437

/-- `p?[A000040(A029707(n+1)+2)-8]` -/
def P12631113389737913991.Spec : Prop :=
  ∀ n, P12631113389737913991.a n = A049437 (n + 1)

end A049437

/-! ## A049437.P17352723830090620967

`record[A020639(A031924(n+1)-2)]`
-/

namespace A049437.P17352723830090620967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A031924 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049437.P17352723830090620967

namespace A049437

/-- `record[A020639(A031924(n+1)-2)]` -/
def P17352723830090620967.Spec : Prop :=
  ∀ n, P17352723830090620967.a n = A049437 (n + 1)

end A049437

/-! ## A049437.P9850096917939710322

`record[A020639(A072571(n+1)-5)]`
-/

namespace A049437.P9850096917939710322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A072571 (n + 1) - 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049437.P9850096917939710322

namespace A049437

/-- `record[A020639(A072571(n+1)-5)]` -/
def P9850096917939710322.Spec : Prop :=
  ∀ n, P9850096917939710322.a n = A049437 (n + 1)

end A049437

/-! ## A049437.P13200814014661041513

`record[A020639(A031925(n+1)-8)]`
-/

namespace A049437.P13200814014661041513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A031925 (n + 1) - 8).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049437.P13200814014661041513

namespace A049437

/-- `record[A020639(A031925(n+1)-8)]` -/
def P13200814014661041513.Spec : Prop :=
  ∀ n, P13200814014661041513.a n = A049437 (n + 1)

end A049437

/-! ## A049437.P5348659885736547826

`filter[A046134(n+1), A341347(#)]`
-/

namespace A049437.P5348659885736547826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341347 (f1 j).toNat = 1) n)

end

end A049437.P5348659885736547826

namespace A049437

/-- `filter[A046134(n+1), A341347(#)]` -/
def P5348659885736547826.Spec : Prop :=
  ∀ n, P5348659885736547826.a n = A049437 (n + 1)

end A049437

/-!
# A049438: p, p+6 and p+8 are all primes (A046138) but p+2 is not.

The programs for A049438, there is no canonical definition to state claims against.
-/

/-! ## A049438.P4645391700623570833

`A073651(n+1)-6`
-/

namespace A049438.P4645391700623570833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073651 (n + 1) - 6

end

end A049438.P4645391700623570833

/-! ## A049438.P7228972457988685298

`∩[A046138(n+1), A052159(n+1)]`
-/

namespace A049438.P7228972457988685298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049438.P7228972457988685298

/-! ## A049438.P9252311284890159458

`∩[A049436(n+1), A052159(n+1)]`
-/

namespace A049438.P9252311284890159458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049438.P9252311284890159458

/-! ## A049438.P3578020566551465677

`∩[A046138(n+1), A088175(n+1)]`
-/

namespace A049438.P3578020566551465677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088175 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049438.P3578020566551465677

/-! ## A049438.P9701032720476994349

`∩[A052159(n+1), A088175(n+1)]`
-/

namespace A049438.P9701032720476994349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088175 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049438.P9701032720476994349

/-! ## A049438.P4472595741536498432

`A088175(eq[6, A001359(n+1)%A088175(n+1)]+1)`
-/

namespace A049438.P4472595741536498432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001359 (n + 1)) (A088175 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088175 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A049438.P4472595741536498432

/-! ## A049438.P3409120108337053165

`∩[A023202(n+1), A052159(n+1)]`
-/

namespace A049438.P3409120108337053165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049438.P3409120108337053165

/-! ## A049438.P8688128305351926116

`∩[A015915(n+1), A052159(n+1)]`
-/

namespace A049438.P8688128305351926116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049438.P8688128305351926116

/-! ## A049438.P968500127530078732

`∩[A052159(n+1), A262085(n+1)]`
-/

namespace A049438.P968500127530078732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049438.P968500127530078732

/-! ## A049438.P17872762730177528427

`p?[A031925(n+1)+2]-8`
-/

namespace A049438.P17872762730177528427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031925 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 8

end

end A049438.P17872762730177528427

/-! ## A049438.P6351846830967445214

`p?[A031924(n+1)+8]-8`
-/

namespace A049438.P6351846830967445214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1) + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 8

end

end A049438.P6351846830967445214

/-! ## A049438.P4630036831326892312

`∩[A015915(n+1), A031924(n+1)]`
-/

namespace A049438.P4630036831326892312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049438.P4630036831326892312

/-! ## A049438.P6102376895957553759

`∩[A023202(n+1), A031924(n+1)]`
-/

namespace A049438.P6102376895957553759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049438.P6102376895957553759

/-! ## A049438.P1404894629909704547

`∩[A031924(n+1), A046138(n+1)]`
-/

namespace A049438.P1404894629909704547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049438.P1404894629909704547

/-! ## A049438.P9597596338386529

`∩[A031924(n+1), A049436(n+1)]`
-/

namespace A049438.P9597596338386529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049436 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049438.P9597596338386529

/-! ## A049438.P12367250973015781412

`∩[A031924(n+1), A088175(n+1)]`
-/

namespace A049438.P12367250973015781412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088175 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049438.P12367250973015781412

/-! ## A049438.P5636503712360774408

`∩[A031924(n+1), A262085(n+1)]`
-/

namespace A049438.P5636503712360774408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049438.P5636503712360774408

/-! ## A049438.P3916623936529764491

`∩[A046138(n+1), A121762(n+1)]`
-/

namespace A049438.P3916623936529764491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049438.P3916623936529764491

/-! ## A049438.P7746362777409346873

`∩[A049436(n+1), A121762(n+1)]`
-/

namespace A049438.P7746362777409346873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049438.P7746362777409346873

/-! ## A049438.P1122090023618420347

`∩[A015915(n+1), A258578(n+1)]`
-/

namespace A049438.P1122090023618420347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049438.P1122090023618420347

/-!
# A049439: Numbers k such that the number of odd divisors of k is an odd divisor of k.

The programs for A049439, the canonical program `A049439.P3678346078929510445` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049439 has offset 1).

The definition of A049439 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049439.P3678346078929510445

`record[(n+1)*A336040(A000265(n+1))]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A049439

/-- `record[(n+1)*A336040(A000265(n+1))]` -/
def P3678346078929510445.Spec : Prop :=
  ∀ n, P3678346078929510445.a n = A049439 (n + 1)

theorem P3678346078929510445.correct : P3678346078929510445.Spec := by
  intro n
  simp only [A049439, Nat.add_sub_cancel]

end A049439

/-! ## A049439.P2337551166841761310

`lt[0, A336040(A000265(n+1))]+1`
-/

namespace A049439.P2337551166841761310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336040 (A000265 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A049439.P2337551166841761310

namespace A049439

/-- `lt[0, A336040(A000265(n+1))]+1` -/
def P2337551166841761310.Spec : Prop :=
  ∀ n, (P2337551166841761310.a n : ℤ) = A049439 (n + 1)

end A049439

/-! ## A049439.P17341781920537642037

`lt[A028234(2*(n+1))%A001227(n+1), 1]+1`
-/

namespace A049439.P17341781920537642037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028234 (2 * (n + 1))) (A001227 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A049439.P17341781920537642037

namespace A049439

/-- `lt[A028234(2*(n+1))%A001227(n+1), 1]+1` -/
def P17341781920537642037.Spec : Prop :=
  ∀ n, (P17341781920537642037.a n : ℤ) = A049439 (n + 1)

end A049439

/-! ## A049439.P606334475306768897

`eq[1, A177878(floor(n/(xor(n, n+1)+1)))]+1`
-/

namespace A049439.P606334475306768897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177878 ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A049439.P606334475306768897

namespace A049439

/-- `eq[1, A177878(floor(n/(xor(n, n+1)+1)))]+1` -/
def P606334475306768897.Spec : Prop :=
  ∀ n, (P606334475306768897.a n : ℤ) = A049439 (n + 1)

end A049439

/-! ## A049439.P12934668061727286926

`eq[3, A083743(A366285(n))]`
-/

namespace A049439.P12934668061727286926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083743 (A366285 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A049439.P12934668061727286926

namespace A049439

/-- `eq[3, A083743(A366285(n))]` -/
def P12934668061727286926.Spec : Prop :=
  ∀ n, (P12934668061727286926.a n : ℤ) = A049439 (n + 1)

end A049439

/-!
# A049440: a(n) = Fib(3*n)^2 - 2*Fib(3*n) + 4*Fib(3*n+1) + 5, where Fib = A000045.

The programs for A049440, the canonical program `A049440.P4134242343462474814` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049440 has offset 0).

The definition of A049440 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(3*n)²-2*A000045(3*n)+4*A000045(3*n+1)+5` (program `A049440.P4134242343462474814`, by `A049440.P4134242343462474814.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A049440.P4134242343462474814

`A000045(3*n)²-2*A000045(3*n)+4*A000045(3*n+1)+5`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A049440

/-- `A000045(3*n)²-2*A000045(3*n)+4*A000045(3*n+1)+5` -/
def P4134242343462474814.Spec : Prop :=
  ∀ n, P4134242343462474814.a n = A049440 n

theorem P4134242343462474814.correct : P4134242343462474814.Spec := by
  intro n
  simp only [A049440]

end A049440

/-! ## A049440.P2946075105936234097

`A211434(A001077(n)+2)`
-/

namespace A049440.P2946075105936234097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211434 (A001077 n + 2).toNat

end

end A049440.P2946075105936234097

namespace A049440

/-- `A211434(A001077(n)+2)` -/
def P2946075105936234097.Spec : Prop :=
  ∀ n, P2946075105936234097.a n = A049440 n

end A049440

/-!
# A049441: Numbers k such that k^3 + 3 is prime.

The programs for A049441, the canonical program `A049441.P4202534320219273296` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049441 has offset 1).

The definition of A049441 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 586 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049441.P8872639363400168085

`eq[A121842(n), A157532(n+1)]`
-/

namespace A049441.P8872639363400168085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121842 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157532 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A049441.P8872639363400168085

namespace A049441

/-- `eq[A121842(n), A157532(n+1)]` -/
def P8872639363400168085.Spec : Prop :=
  ∀ n, (P8872639363400168085.a n : ℤ) = A049441 (n + 1)

end A049441

/-! ## A049441.P4202534320219273296

`eq[3, A121842(A000038(n)+n)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A049441

/-- `eq[3, A121842(A000038(n)+n)]` -/
def P4202534320219273296.Spec : Prop :=
  ∀ n, (P4202534320219273296.a n : ℤ) = A049441 (n + 1)

theorem P4202534320219273296.correct : P4202534320219273296.Spec := by
  intro n
  simp only [A049441, Nat.add_sub_cancel]

end A049441

/-! ## A049441.P11484207715838413959

`eq[3, A121842(or(n, A000038(n)))]`
-/

namespace A049441.P11484207715838413959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121842 (Int.lor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A049441.P11484207715838413959

namespace A049441

/-- `eq[3, A121842(or(n, A000038(n)))]` -/
def P11484207715838413959.Spec : Prop :=
  ∀ n, (P11484207715838413959.a n : ℤ) = A049441 (n + 1)

end A049441

/-! ## A049441.P5314395491392636895

`eq[A000034(n), A331134(A121842(n))]`
-/

namespace A049441.P5314395491392636895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331134 (A121842 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A049441.P5314395491392636895

namespace A049441

/-- `eq[A000034(n), A331134(A121842(n))]` -/
def P5314395491392636895.Spec : Prop :=
  ∀ n, (P5314395491392636895.a n : ℤ) = A049441 (n + 1)

end A049441

/-! ## A049441.P5299405293480672855

`eq[A008794(A121842(n)), A108103(n+1)]`
-/

namespace A049441.P5299405293480672855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 (A121842 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108103 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A049441.P5299405293480672855

namespace A049441

/-- `eq[A008794(A121842(n)), A108103(n+1)]` -/
def P5299405293480672855.Spec : Prop :=
  ∀ n, (P5299405293480672855.a n : ℤ) = A049441 (n + 1)

end A049441

/-! ## A049441.P10733933100869683966

`eq[A121842(n)+A008486(n), A008486(n+1)]`
-/

namespace A049441.P10733933100869683966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121842 n + A008486 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A049441.P10733933100869683966

namespace A049441

/-- `eq[A121842(n)+A008486(n), A008486(n+1)]` -/
def P10733933100869683966.Spec : Prop :=
  ∀ n, (P10733933100869683966.a n : ℤ) = A049441 (n + 1)

end A049441

/-!
# A049442: Numbers n such that sum of first n consecutive prime numbers is pandigital (includes all 10 digits exactly once).

The programs for A049442, there is no canonical definition to state claims against.
-/

/-! ## A049442.P2612000270171017666

`A228468(A005496(n))`
-/

namespace A049442.P2612000270171017666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228468 (A005496 n).toNat

end

end A049442.P2612000270171017666

/-! ## A049442.P9582259289981538155

`A228468(A005555(n))`
-/

namespace A049442.P9582259289981538155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228468 (A005555 n).toNat

end

end A049442.P9582259289981538155

/-! ## A049442.P12984186370746313313

`A228468(A291766(n))`
-/

namespace A049442.P12984186370746313313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228468 (A291766 n).toNat

end

end A049442.P12984186370746313313

/-! ## A049442.P3605842468433673169

`A228468(A291769(n))`
-/

namespace A049442.P3605842468433673169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228468 (A291769 n).toNat

end

end A049442.P3605842468433673169

/-! ## A049442.P15447340527176342546

`A228468(A331300(n))`
-/

namespace A049442.P15447340527176342546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228468 (A331300 n).toNat

end

end A049442.P15447340527176342546

/-!
# A049443: Numbers n such that sum of consecutive primes to p is pandigital (includes all 10 digits exactly once).

The programs for A049443, there is no canonical definition to state claims against.
-/

/-! ## A049443.P16580547237058436626

`A228473(n+1)+char[17]`
-/

namespace A049443.P16580547237058436626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228473 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A049443.P16580547237058436626

/-! ## A049443.P11947949439980122616

`A228473(A005496(n))`
-/

namespace A049443.P11947949439980122616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228473 (A005496 n).toNat

end

end A049443.P11947949439980122616

/-! ## A049443.P7843173670158842700

`A228473(A005555(n))`
-/

namespace A049443.P7843173670158842700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228473 (A005555 n).toNat

end

end A049443.P7843173670158842700

/-! ## A049443.P5737404690234279895

`A228473(A291766(n))`
-/

namespace A049443.P5737404690234279895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228473 (A291766 n).toNat

end

end A049443.P5737404690234279895

/-! ## A049443.P1748666938508165674

`A228473(A291769(n))`
-/

namespace A049443.P1748666938508165674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228473 (A291769 n).toNat

end

end A049443.P1748666938508165674

/-!
# A049444: Generalized Stirling number triangle of first kind read by rows: T(n, k) = [x^k] Product_{m=1..n} (x - m - r), with r = 1.

The programs for A049444, the canonical program `A049444.P8662314299629733863` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049444 has offset 0).

The definition of A049444 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049444.P8662314299629733863

`T(n-1,k-1)-(row(n)+1)*T(n-1,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049444

/-- `T(n-1,k-1)-(row(n)+1)*T(n-1,k)` -/
def P8662314299629733863.Spec : Prop :=
  ∀ n, P8662314299629733863.a n = A049444 n

theorem P8662314299629733863.correct : P8662314299629733863.Spec := by
  intro n
  simp only [A049444]

end A049444

/-! ## A049444.P9833386829436521106

`A097807(n)*A136124(n+2)`
-/

namespace A049444.P9833386829436521106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A136124 (n + 2)

end

end A049444.P9833386829436521106

namespace A049444

/-- `A097807(n)*A136124(n+2)` -/
def P9833386829436521106.Spec : Prop :=
  ∀ n, P9833386829436521106.a n = A049444 n

end A049444

/-! ## A049444.P16992350874184217452

`A033999(A025581(n))*A136124(n+2)`
-/

namespace A049444.P16992350874184217452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A025581 n).toNat * A136124 (n + 2)

end

end A049444.P16992350874184217452

namespace A049444

/-- `A033999(A025581(n))*A136124(n+2)` -/
def P16992350874184217452.Spec : Prop :=
  ∀ n, P16992350874184217452.a n = A049444 n

end A049444

/-! ## A049444.P126166402135350808

`A033999(A051162(n))*A136124(n+2)`
-/

namespace A049444.P126166402135350808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A051162 n).toNat * A136124 (n + 2)

end

end A049444.P126166402135350808

namespace A049444

/-- `A033999(A051162(n))*A136124(n+2)` -/
def P126166402135350808.Spec : Prop :=
  ∀ n, P126166402135350808.a n = A049444 n

end A049444

/-! ## A049444.P10185221920352224686

`A033999(A067731(n))*A136124(n+2)`
-/

namespace A049444.P10185221920352224686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A067731 n).toNat * A136124 (n + 2)

end

end A049444.P10185221920352224686

namespace A049444

/-- `A033999(A067731(n))*A136124(n+2)` -/
def P10185221920352224686.Spec : Prop :=
  ∀ n, P10185221920352224686.a n = A049444 n

end A049444

/-! ## A049444.P18288107372131385786

`A009531(A099375(n))*A136124(n+2)`
-/

namespace A049444.P18288107372131385786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A099375 n).toNat * A136124 (n + 2)

end

end A049444.P18288107372131385786

namespace A049444

/-- `A009531(A099375(n))*A136124(n+2)` -/
def P18288107372131385786.Spec : Prop :=
  ∀ n, P18288107372131385786.a n = A049444 n

end A049444

/-! ## A049444.P11418711961978400451

`A062157(A004736(n+1))*A136124(n+2)`
-/

namespace A049444.P11418711961978400451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A004736 (n + 1)).toNat * A136124 (n + 2)

end

end A049444.P11418711961978400451

namespace A049444

/-- `A062157(A004736(n+1))*A136124(n+2)` -/
def P11418711961978400451.Spec : Prop :=
  ∀ n, P11418711961978400451.a n = A049444 n

end A049444

/-! ## A049444.P2115799429390849941

`A033999(A108872(n+1))*A136124(n+2)`
-/

namespace A049444.P2115799429390849941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A108872 (n + 1)).toNat * A136124 (n + 2)

end

end A049444.P2115799429390849941

namespace A049444

/-- `A033999(A108872(n+1))*A136124(n+2)` -/
def P2115799429390849941.Spec : Prop :=
  ∀ n, P2115799429390849941.a n = A049444 n

end A049444

/-! ## A049444.P3724157351587789251

`A062157(A094727(n+1))*A136124(n+2)`
-/

namespace A049444.P3724157351587789251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A094727 (n + 1)).toNat * A136124 (n + 2)

end

end A049444.P3724157351587789251

namespace A049444

/-- `A062157(A094727(n+1))*A136124(n+2)` -/
def P3724157351587789251.Spec : Prop :=
  ∀ n, P3724157351587789251.a n = A049444 n

end A049444

/-! ## A049444.P12792234590315698539

`A136124(n+2)*A165586(A130321(n))`
-/

namespace A049444.P12792234590315698539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136124 (n + 2) * A165586 (A130321 n).toNat

end

end A049444.P12792234590315698539

namespace A049444

/-- `A136124(n+2)*A165586(A130321(n))` -/
def P12792234590315698539.Spec : Prop :=
  ∀ n, P12792234590315698539.a n = A049444 n

end A049444

/-! ## A049444.P12717300308131272154

`A008836(A130321(n))*A145324(A038722(n+1))`
-/

namespace A049444.P12717300308131272154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A130321 n).toNat * A145324 (A038722 (n + 1)).toNat

end

end A049444.P12717300308131272154

namespace A049444

/-- `A008836(A130321(n))*A145324(A038722(n+1))` -/
def P12717300308131272154.Spec : Prop :=
  ∀ n, P12717300308131272154.a n = A049444 n

end A049444

/-!
# A049445: Numbers k with the property that the number of 1's in binary expansion of k (see A000120) divides k.

The programs for A049445, the canonical program `A049445.P7939714702885269085` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049445 has offset 1).

The definition of A049445 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1764 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049445.P5261578681251044406

`record[C(A161764(n+1), n)]`
-/

namespace A049445.P5261578681251044406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A161764 (n + 1)).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049445.P5261578681251044406

namespace A049445

/-- `record[C(A161764(n+1), n)]` -/
def P5261578681251044406.Spec : Prop :=
  ∀ n, (P5261578681251044406.a n : ℤ) = A049445 (n + 1)

end A049445

/-! ## A049445.P6201198362528870290

`eq[0, A199238(n+1)]+1`
-/

namespace A049445.P6201198362528870290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199238 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A049445.P6201198362528870290

namespace A049445

/-- `eq[0, A199238(n+1)]+1` -/
def P6201198362528870290.Spec : Prop :=
  ∀ n, (P6201198362528870290.a n : ℤ) = A049445 (n + 1)

end A049445

/-! ## A049445.P5947286016022211114

`eq[2, A356552(n+1)]+1`
-/

namespace A049445.P5947286016022211114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356552 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A049445.P5947286016022211114

namespace A049445

/-- `eq[2, A356552(n+1)]+1` -/
def P5947286016022211114.Spec : Prop :=
  ∀ n, (P5947286016022211114.a n : ℤ) = A049445 (n + 1)

end A049445

/-! ## A049445.P7939714702885269085

`lt[lcm(n, A000120(n)), 2*n]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A049445

/-- `lt[lcm(n, A000120(n)), 2*n]` -/
def P7939714702885269085.Spec : Prop :=
  ∀ n, (P7939714702885269085.a n : ℤ) = A049445 (n + 1)

theorem P7939714702885269085.correct : P7939714702885269085.Spec := by
  intro n
  simp only [A049445, Nat.add_sub_cancel]

end A049445

/-! ## A049445.P4944756067644663130

`eq[0, (n+1)%A000120(n+1)]+1`
-/

namespace A049445.P4944756067644663130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A000120 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A049445.P4944756067644663130

namespace A049445

/-- `eq[0, (n+1)%A000120(n+1)]+1` -/
def P4944756067644663130.Spec : Prop :=
  ∀ n, (P4944756067644663130.a n : ℤ) = A049445 (n + 1)

end A049445

/-! ## A049445.P3228621093402133480

`lt[A161765(A028310(n)), n+1]`
-/

namespace A049445.P3228621093402133480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161765 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A049445.P3228621093402133480

namespace A049445

/-- `lt[A161765(A028310(n)), n+1]` -/
def P3228621093402133480.Spec : Prop :=
  ∀ n, (P3228621093402133480.a n : ℤ) = A049445 (n + 1)

end A049445

/-! ## A049445.P17970366238808078823

`record[gcd(A161764(n+1), A161765(n+1))]`
-/

namespace A049445.P17970366238808078823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A161764 (n + 1)) (A161765 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049445.P17970366238808078823

namespace A049445

/-- `record[gcd(A161764(n+1), A161765(n+1))]` -/
def P17970366238808078823.Spec : Prop :=
  ∀ n, (P17970366238808078823.a n : ℤ) = A049445 (n + 1)

end A049445

/-! ## A049445.P12243643909259770663

`A161764(eq[n+1, A161764(n+1)]+1)`
-/

namespace A049445.P12243643909259770663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161764 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A049445.P12243643909259770663

namespace A049445

/-- `A161764(eq[n+1, A161764(n+1)]+1)` -/
def P12243643909259770663.Spec : Prop :=
  ∀ n, P12243643909259770663.a n = A049445 (n + 1)

end A049445

/-! ## A049445.P4517022266631729080

`lt[A005811(n), C(A161764(n+1), n)]+1`
-/

namespace A049445.P4517022266631729080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A161764 (n + 1)).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A049445.P4517022266631729080

namespace A049445

/-- `lt[A005811(n), C(A161764(n+1), n)]+1` -/
def P4517022266631729080.Spec : Prop :=
  ∀ n, (P4517022266631729080.a n : ℤ) = A049445 (n + 1)

end A049445

/-! ## A049445.P17774439193867352535

`A161764(record[n*(A161764(n+1)-n)]+1)`
-/

namespace A049445.P17774439193867352535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A161764 (n + 1) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161764 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A049445.P17774439193867352535

namespace A049445

/-- `A161764(record[n*(A161764(n+1)-n)]+1)` -/
def P17774439193867352535.Spec : Prop :=
  ∀ n, P17774439193867352535.a n = A049445 (n + 1)

end A049445

/-! ## A049445.P8039298138397455188

`A161764(record[n^(A161764(n+1)-n)]+1)`
-/

namespace A049445.P8039298138397455188
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A161764 (n + 1) - (n : ℤ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161764 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1)).toNat

end

end A049445.P8039298138397455188

namespace A049445

/-- `A161764(record[n^(A161764(n+1)-n)]+1)` -/
def P8039298138397455188.Spec : Prop :=
  ∀ n, P8039298138397455188.a n = A049445 (n + 1)

end A049445

/-! ## A049445.P11784756467641292634

`lt[A000027(n+1), C(A161764(n+1), n)+1]+1`
-/

namespace A049445.P11784756467641292634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A161764 (n + 1)).toNat n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A049445.P11784756467641292634

namespace A049445

/-- `lt[A000027(n+1), C(A161764(n+1), n)+1]+1` -/
def P11784756467641292634.Spec : Prop :=
  ∀ n, (P11784756467641292634.a n : ℤ) = A049445 (n + 1)

end A049445

/-! ## A049445.P10750729359972380290

`lt[A020639(n+1), C(A161764(n+1), n)+1]+1`
-/

namespace A049445.P10750729359972380290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A161764 (n + 1)).toNat n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A049445.P10750729359972380290

namespace A049445

/-- `lt[A020639(n+1), C(A161764(n+1), n)+1]+1` -/
def P10750729359972380290.Spec : Prop :=
  ∀ n, (P10750729359972380290.a n : ℤ) = A049445 (n + 1)

end A049445

/-! ## A049445.P3593971911980996984

`lt[A071188(n+1), C(A161764(n+1), n)+1]+1`
-/

namespace A049445.P3593971911980996984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071188 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A161764 (n + 1)).toNat n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A049445.P3593971911980996984

namespace A049445

/-- `lt[A071188(n+1), C(A161764(n+1), n)+1]+1` -/
def P3593971911980996984.Spec : Prop :=
  ∀ n, (P3593971911980996984.a n : ℤ) = A049445 (n + 1)

end A049445

/-! ## A049445.P10125118731522709634

`A325309(∑[n]+2)`
-/

namespace A049445.P10125118731522709634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325309 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A049445.P10125118731522709634

namespace A049445

/-- `A325309(∑[n]+2)` -/
def P10125118731522709634.Spec : Prop :=
  ∀ n, P10125118731522709634.a n = A049445 (n + 1)

end A049445

/-!
# A049446: Pandigital sums associated with A049442.

The programs for A049446, there is no canonical definition to state claims against.
-/

/-! ## A049446.P5973175743047859127

`A007504(A049442(n+1))`
-/

namespace A049446.P5973175743047859127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A049442 (n + 1)).toNat

end

end A049446.P5973175743047859127

/-! ## A049446.P7163215548546277908

`A007504(A228468(n+1))`
-/

namespace A049446.P7163215548546277908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A228468 (n + 1)).toNat

end

end A049446.P7163215548546277908

/-!
# A049447: Stirling numbers of second kind: 9th column of Stirling2 triangle A008277.

The programs for A049447, there is no canonical definition to state claims against.
-/

/-! ## A049447.P6720508113234009002

`A048993(eq[9, A002262(n)])`
-/

namespace A049447.P6720508113234009002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A049447.P6720508113234009002

/-! ## A049447.P8155662671123907594

`A048993(eq[9, A144328(n+1)])`
-/

namespace A049447.P8155662671123907594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A049447.P8155662671123907594

/-! ## A049447.P13131450122789164827

`A048993(eq[10, A002260(n+1)])`
-/

namespace A049447.P13131450122789164827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A049447.P13131450122789164827

/-! ## A049447.P4856392531642968441

`A048993(eq[10, A080521(n+1)])`
-/

namespace A049447.P4856392531642968441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A049447.P4856392531642968441

/-! ## A049447.P3362666532242831822

`A048993(eq[10, A134868(n+1)])`
-/

namespace A049447.P3362666532242831822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A049447.P3362666532242831822

/-! ## A049447.P11710866676311625509

`A106800(eq[9, A025581(n)])`
-/

namespace A049447.P11710866676311625509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106800 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A049447.P11710866676311625509

/-! ## A049447.P10339838371607102123

`A106800(eq[10, A004736(n+1)])`
-/

namespace A049447.P10339838371607102123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106800 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A049447.P10339838371607102123

/-!
# A049448: Sum of numerator and denominator of fractions in Farey tree A007305/A007306.

The programs for A049448, the canonical program `A049448.P1299469161137968042` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049448 has offset 0).

The definition of A049448 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049448.P1299469161137968042

`A007306(n)+A007305(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A049448

/-- `A007306(n)+A007305(n)` -/
def P1299469161137968042.Spec : Prop :=
  ∀ n, P1299469161137968042.a n = A049448 n

theorem P1299469161137968042.correct : P1299469161137968042.Spec := by
  intro n
  simp only [A049448]

end A049448

/-! ## A049448.P7524476387525369897

`A049465(n)-A007305(n)`
-/

namespace A049448.P7524476387525369897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049465 n - A007305 n

end

end A049448.P7524476387525369897

namespace A049448

/-- `A049465(n)-A007305(n)` -/
def P7524476387525369897.Spec : Prop :=
  ∀ n, P7524476387525369897.a n = A049448 n

theorem P7524476387525369897.correct : P7524476387525369897.Spec := by
  intro n
  simp only [A049448, Nat.add_sub_cancel, A049448.P7524476387525369897.a, A049448.P1299469161137968042.a, A007305, A007305.P14904390197358887400.a, A007306, A007306.P17183682227013142410.a, A049465, A049465.P10062401916254781799.a, A003602, A003602.P7612175048291952394.a, A004761, A004761.P12493427440050159717.f1, A004761.P12493427440050159717.f2, A004761.P12493427440050159717.a, A110963, A110963.P3344771894533151408.a, A025480, A025480.P15873863116418380882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049448

/-! ## A049448.P845749750087094613

`A049468(n)-A007306(n)`
-/

namespace A049448.P845749750087094613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049468 n - A007306 n

end

end A049448.P845749750087094613

namespace A049448

/-- `A049468(n)-A007306(n)` -/
def P845749750087094613.Spec : Prop :=
  ∀ n, P845749750087094613.a n = A049448 n

theorem P845749750087094613.correct : P845749750087094613.Spec := by
  intro n
  simp only [A049448, Nat.add_sub_cancel, A049448.P845749750087094613.a, A049448.P1299469161137968042.a, A007305, A007305.P14904390197358887400.a, A007306, A007306.P17183682227013142410.a, A049468, A049468.P14759900804743389918.a, A003602, A003602.P7612175048291952394.a, A004761, A004761.P12493427440050159717.f1, A004761.P12493427440050159717.f2, A004761.P12493427440050159717.a, A110963, A110963.P3344771894533151408.a, A025480, A025480.P15873863116418380882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049448

/-! ## A049448.P9455566675384526190

`(A049465(n)+A007306(n))/2`
-/

namespace A049448.P9455566675384526190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049465 n + A007306 n : ℚ) / 2

end

end A049448.P9455566675384526190

namespace A049448

/-- `(A049465(n)+A007306(n))/2` -/
def P9455566675384526190.Spec : Prop :=
  ∀ n, P9455566675384526190.a n = (A049448 n : ℚ)

theorem P9455566675384526190.correct : P9455566675384526190.Spec := by
  intro n
  simp only [A049448, Nat.add_sub_cancel, A049448.P9455566675384526190.a, A049448.P1299469161137968042.a, A007305, A007305.P14904390197358887400.a, A007306, A007306.P17183682227013142410.a, A049465, A049465.P10062401916254781799.a, A003602, A003602.P7612175048291952394.a, A004761, A004761.P12493427440050159717.f1, A004761.P12493427440050159717.f2, A004761.P12493427440050159717.a, A110963, A110963.P3344771894533151408.a, A025480, A025480.P15873863116418380882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049448

/-! ## A049448.P14673611814845327911

`A049466(n)-2*A007305(n)`
-/

namespace A049448.P14673611814845327911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049466 n - 2 * A007305 n

end

end A049448.P14673611814845327911

namespace A049448

/-- `A049466(n)-2*A007305(n)` -/
def P14673611814845327911.Spec : Prop :=
  ∀ n, P14673611814845327911.a n = A049448 n

theorem P14673611814845327911.correct : P14673611814845327911.Spec := by
  intro n
  simp only [A049448, Nat.add_sub_cancel, A049448.P14673611814845327911.a, A049448.P1299469161137968042.a, A007305, A007305.P14904390197358887400.a, A007306, A007306.P17183682227013142410.a, A049466, A049466.P3280888729849273153.a, A003602, A003602.P7612175048291952394.a, A004761, A004761.P12493427440050159717.f1, A004761.P12493427440050159717.f2, A004761.P12493427440050159717.a, A049465, A049465.P10062401916254781799.a, A110963, A110963.P3344771894533151408.a, A025480, A025480.P15873863116418380882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049448

/-! ## A049448.P10117151843423138685

`(A049468(n)+A007305(n))/2`
-/

namespace A049448.P10117151843423138685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049468 n + A007305 n : ℚ) / 2

end

end A049448.P10117151843423138685

namespace A049448

/-- `(A049468(n)+A007305(n))/2` -/
def P10117151843423138685.Spec : Prop :=
  ∀ n, P10117151843423138685.a n = (A049448 n : ℚ)

theorem P10117151843423138685.correct : P10117151843423138685.Spec := by
  intro n
  simp only [A049448, Nat.add_sub_cancel, A049448.P10117151843423138685.a, A049448.P1299469161137968042.a, A007305, A007305.P14904390197358887400.a, A007306, A007306.P17183682227013142410.a, A049468, A049468.P14759900804743389918.a, A003602, A003602.P7612175048291952394.a, A004761, A004761.P12493427440050159717.f1, A004761.P12493427440050159717.f2, A004761.P12493427440050159717.a, A110963, A110963.P3344771894533151408.a, A025480, A025480.P15873863116418380882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049448

/-! ## A049448.P14020214073158412629

`2*A049465(n)-A049466(n)`
-/

namespace A049448.P14020214073158412629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049465 n - A049466 n

end

end A049448.P14020214073158412629

namespace A049448

/-- `2*A049465(n)-A049466(n)` -/
def P14020214073158412629.Spec : Prop :=
  ∀ n, P14020214073158412629.a n = A049448 n

theorem P14020214073158412629.correct : P14020214073158412629.Spec := by
  intro n
  simp only [A049448, Nat.add_sub_cancel, A049448.P14020214073158412629.a, A049448.P1299469161137968042.a, A007305, A007305.P14904390197358887400.a, A007306, A007306.P17183682227013142410.a, A049465, A049465.P10062401916254781799.a, A049466, A049466.P3280888729849273153.a, A003602, A003602.P7612175048291952394.a, A004761, A004761.P12493427440050159717.f1, A004761.P12493427440050159717.f2, A004761.P12493427440050159717.a, A110963, A110963.P3344771894533151408.a, A025480, A025480.P15873863116418380882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049448

/-! ## A049448.P13490900072273177581

`A078898(A049465(n)+A007306(n))`
-/

namespace A049448.P13490900072273177581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A049465 n + A007306 n).toNat

end

end A049448.P13490900072273177581

namespace A049448

/-- `A078898(A049465(n)+A007306(n))` -/
def P13490900072273177581.Spec : Prop :=
  ∀ n, P13490900072273177581.a n = A049448 n

end A049448

/-! ## A049448.P18305766776893653635

`A007306(n)+A049467(n)-A049466(n)`
-/

namespace A049448.P18305766776893653635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 n + (A049467 n - A049466 n)

end

end A049448.P18305766776893653635

namespace A049448

/-- `A007306(n)+A049467(n)-A049466(n)` -/
def P18305766776893653635.Spec : Prop :=
  ∀ n, P18305766776893653635.a n = A049448 n

theorem P18305766776893653635.correct : P18305766776893653635.Spec := by
  intro n
  simp only [A049448, Nat.add_sub_cancel, A049448.P18305766776893653635.a, A049448.P1299469161137968042.a, A007305, A007305.P14904390197358887400.a, A007306, A007306.P17183682227013142410.a, A049466, A049466.P3280888729849273153.a, A049467, A049467.P18232101049590991763.a, A003602, A003602.P7612175048291952394.a, A004761, A004761.P12493427440050159717.f1, A004761.P12493427440050159717.f2, A004761.P12493427440050159717.a, A049465, A049465.P10062401916254781799.a, A110963, A110963.P3344771894533151408.a, A025480, A025480.P15873863116418380882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049448

/-! ## A049448.P17885796016166085581

`A007306(n)+A049449(n)/A007306(n)`
-/

namespace A049448.P17885796016166085581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007306 n : ℚ) + (A049449 n : ℚ) / (A007306 n : ℚ)

end

end A049448.P17885796016166085581

namespace A049448

/-- `A007306(n)+A049449(n)/A007306(n)` -/
def P17885796016166085581.Spec : Prop :=
  ∀ n, P17885796016166085581.a n = (A049448 n : ℚ)

end A049448

/-! ## A049448.P849778768021649298

`A007305(n)+∑{d}[2*n-1, A317839(#)]`
-/

namespace A049448.P849778768021649298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007305 n + ∑ d ∈ Nat.divisors (f1 n).natAbs, A317839 d

end

end A049448.P849778768021649298

namespace A049448

/-- `A007305(n)+∑{d}[2*n-1, A317839(#)]` -/
def P849778768021649298.Spec : Prop :=
  ∀ n, P849778768021649298.a n = A049448 n

end A049448

/-! ## A049448.P13175985788139835757

`A007306(A004761(n+1)+1)`
-/

namespace A049448.P13175985788139835757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (A004761 (n + 1) + 1).toNat

end

end A049448.P13175985788139835757

namespace A049448

/-- `A007306(A004761(n+1)+1)` -/
def P13175985788139835757.Spec : Prop :=
  ∀ n, P13175985788139835757.a n = A049448 n

theorem P13175985788139835757.correct : P13175985788139835757.Spec := by
  intro n
  simp only [A049448, Nat.add_sub_cancel, A049448.P13175985788139835757.a, A049448.P1299469161137968042.a, A004761, A004761.P12493427440050159717.f1, A004761.P12493427440050159717.f2, A004761.P12493427440050159717.a, A007305, A007305.P14904390197358887400.a, A007306, A007306.P17183682227013142410.a, A003602, A003602.P7612175048291952394.a, A110963, A110963.P3344771894533151408.a, A025480, A025480.P15873863116418380882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049448

/-! ## A049448.P5511503458598237916

`A057431(2*n)+A007306(n)`
-/

namespace A049448.P5511503458598237916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057431 (2 * n) + A007306 n

end

end A049448.P5511503458598237916

namespace A049448

/-- `A057431(2*n)+A007306(n)` -/
def P5511503458598237916.Spec : Prop :=
  ∀ n, P5511503458598237916.a n = A049448 n

end A049448

/-! ## A049448.P10099764115377441338

`A049465(n)-A057431(2*n)`
-/

namespace A049448.P10099764115377441338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049465 n - A057431 (2 * n)

end

end A049448.P10099764115377441338

namespace A049448

/-- `A049465(n)-A057431(2*n)` -/
def P10099764115377441338.Spec : Prop :=
  ∀ n, P10099764115377441338.a n = A049448 n

end A049448

/-! ## A049448.P17775752473182707226

`A007305(n)+A002487(abs(1-2*n))`
-/

namespace A049448.P17775752473182707226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007305 n + A002487 |1 - (2 * n : ℤ)|.toNat

end

end A049448.P17775752473182707226

namespace A049448

/-- `A007305(n)+A002487(abs(1-2*n))` -/
def P17775752473182707226.Spec : Prop :=
  ∀ n, P17775752473182707226.a n = A049448 n

end A049448

/-! ## A049448.P12538589091629957596

`A057431(2*n+1)+2*A057431(2*n)`
-/

namespace A049448.P12538589091629957596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057431 (2 * n + 1) + 2 * A057431 (2 * n)

end

end A049448.P12538589091629957596

namespace A049448

/-- `A057431(2*n+1)+2*A057431(2*n)` -/
def P12538589091629957596.Spec : Prop :=
  ∀ n, P12538589091629957596.a n = A049448 n

end A049448

/-! ## A049448.P1493336193211778515

`A007305(A004760(n+2))+A007305(n)`
-/

namespace A049448.P1493336193211778515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007305 (A004760 (n + 2)).toNat + A007305 n

end

end A049448.P1493336193211778515

namespace A049448

/-- `A007305(A004760(n+2))+A007305(n)` -/
def P1493336193211778515.Spec : Prop :=
  ∀ n, P1493336193211778515.a n = A049448 n

end A049448

/-! ## A049448.P5850918768693228839

`A007305(A038572(2*n+1))+A007305(n)`
-/

namespace A049448.P5850918768693228839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007305 (A038572 (2 * n + 1)).toNat + A007305 n

end

end A049448.P5850918768693228839

namespace A049448

/-- `A007305(A038572(2*n+1))+A007305(n)` -/
def P5850918768693228839.Spec : Prop :=
  ∀ n, P5850918768693228839.a n = A049448 n

end A049448

/-! ## A049448.P10616985361635715179

`A007305(A171757(n+1)-n)+A007305(n)`
-/

namespace A049448.P10616985361635715179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007305 (A171757 (n + 1) - (n : ℤ)).toNat + A007305 n

end

end A049448.P10616985361635715179

namespace A049448

/-- `A007305(A171757(n+1)-n)+A007305(n)` -/
def P10616985361635715179.Spec : Prop :=
  ∀ n, P10616985361635715179.a n = A049448 n

end A049448

/-! ## A049448.P12214208640790717610

`A007305(A206332(n+1))+A007305(n)`
-/

namespace A049448.P12214208640790717610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007305 (A206332 (n + 1)).toNat + A007305 n

end

end A049448.P12214208640790717610

namespace A049448

/-- `A007305(A206332(n+1))+A007305(n)` -/
def P12214208640790717610.Spec : Prop :=
  ∀ n, P12214208640790717610.a n = A049448 n

end A049448

/-!
# A049449: Product of numerator and denominator of fractions in Farey tree A007305/A007306.

The programs for A049449, the canonical program `A049449.P5536593259919512893` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049449 has offset 0).

The definition of A049449 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049449.P5536593259919512893

`A007305(n)*A007306(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A049449

/-- `A007305(n)*A007306(n)` -/
def P5536593259919512893.Spec : Prop :=
  ∀ n, P5536593259919512893.a n = A049449 n

theorem P5536593259919512893.correct : P5536593259919512893.Spec := by
  intro n
  simp only [A049449]

end A049449

/-! ## A049449.P11587806198603151497

`A119272(n+1)+A007305(n)²`
-/

namespace A049449.P11587806198603151497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119272 (n + 1) + A007305 n ^ 2

end

end A049449.P11587806198603151497

namespace A049449

/-- `A119272(n+1)+A007305(n)²` -/
def P11587806198603151497.Spec : Prop :=
  ∀ n, P11587806198603151497.a n = A049449 n

theorem P11587806198603151497.correct : P11587806198603151497.Spec := by
  intro n
  simp only [A049449, Nat.add_sub_cancel, A049449.P11587806198603151497.a, A049449.P5536593259919512893.a, A007305, A007305.P14904390197358887400.a, A007306, A007306.P17183682227013142410.a, A119272, A119272.P14198164838686910294.a, A003602, A003602.P7612175048291952394.a, A004761, A004761.P12493427440050159717.f1, A004761.P12493427440050159717.f2, A004761.P12493427440050159717.a, A110963, A110963.P3344771894533151408.a, A025480, A025480.P15873863116418380882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049449

/-! ## A049449.P1396265058943284648

`(1-A309256(n)+n)*A007305(n)`
-/

namespace A049449.P1396265058943284648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A309256 n + (n : ℤ)) * A007305 n

end

end A049449.P1396265058943284648

namespace A049449

/-- `(1-A309256(n)+n)*A007305(n)` -/
def P1396265058943284648.Spec : Prop :=
  ∀ n, P1396265058943284648.a n = A049449 n

theorem P1396265058943284648.correct : P1396265058943284648.Spec := by
  intro n
  simp only [A049449, Nat.add_sub_cancel, A049449.P1396265058943284648.a, A049449.P5536593259919512893.a, A007305, A007305.P14904390197358887400.a, A007306, A007306.P17183682227013142410.a, A309256, A309256.P1094537150064723946.a, A003602, A003602.P7612175048291952394.a, A004761, A004761.P12493427440050159717.f1, A004761.P12493427440050159717.f2, A004761.P12493427440050159717.a, A110963, A110963.P3344771894533151408.a, A025480, A025480.P15873863116418380882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049449

/-! ## A049449.P4028456237353799493

`(A049448(n)-A007305(n))*A007305(n)`
-/

namespace A049449.P4028456237353799493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A049448 n - A007305 n) * A007305 n

end

end A049449.P4028456237353799493

namespace A049449

/-- `(A049448(n)-A007305(n))*A007305(n)` -/
def P4028456237353799493.Spec : Prop :=
  ∀ n, P4028456237353799493.a n = A049449 n

theorem P4028456237353799493.correct : P4028456237353799493.Spec := by
  intro n
  simp only [A049449, Nat.add_sub_cancel, A049449.P4028456237353799493.a, A049449.P5536593259919512893.a, A007305, A007305.P14904390197358887400.a, A007306, A007306.P17183682227013142410.a, A049448, A049448.P1299469161137968042.a, A003602, A003602.P7612175048291952394.a, A004761, A004761.P12493427440050159717.f1, A004761.P12493427440050159717.f2, A004761.P12493427440050159717.a, A110963, A110963.P3344771894533151408.a, A025480, A025480.P15873863116418380882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049449

/-! ## A049449.P11938606975386379608

`(A049448(n)-A007306(n))*A007306(n)`
-/

namespace A049449.P11938606975386379608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A049448 n - A007306 n) * A007306 n

end

end A049449.P11938606975386379608

namespace A049449

/-- `(A049448(n)-A007306(n))*A007306(n)` -/
def P11938606975386379608.Spec : Prop :=
  ∀ n, P11938606975386379608.a n = A049449 n

theorem P11938606975386379608.correct : P11938606975386379608.Spec := by
  intro n
  simp only [A049449, Nat.add_sub_cancel, A049449.P11938606975386379608.a, A049449.P5536593259919512893.a, A007305, A007305.P14904390197358887400.a, A007306, A007306.P17183682227013142410.a, A049448, A049448.P1299469161137968042.a, A003602, A003602.P7612175048291952394.a, A004761, A004761.P12493427440050159717.f1, A004761.P12493427440050159717.f2, A004761.P12493427440050159717.a, A110963, A110963.P3344771894533151408.a, A025480, A025480.P15873863116418380882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049449

/-! ## A049449.P6731279970267077427

`(A049467(n)-A049466(n))*A007306(n)`
-/

namespace A049449.P6731279970267077427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A049467 n - A049466 n) * A007306 n

end

end A049449.P6731279970267077427

namespace A049449

/-- `(A049467(n)-A049466(n))*A007306(n)` -/
def P6731279970267077427.Spec : Prop :=
  ∀ n, P6731279970267077427.a n = A049449 n

theorem P6731279970267077427.correct : P6731279970267077427.Spec := by
  intro n
  simp only [A049449, Nat.add_sub_cancel, A049449.P6731279970267077427.a, A049449.P5536593259919512893.a, A007305, A007305.P14904390197358887400.a, A007306, A007306.P17183682227013142410.a, A049466, A049466.P3280888729849273153.a, A049467, A049467.P18232101049590991763.a, A003602, A003602.P7612175048291952394.a, A004761, A004761.P12493427440050159717.f1, A004761.P12493427440050159717.f2, A004761.P12493427440050159717.a, A049465, A049465.P10062401916254781799.a, A049448, A049448.P1299469161137968042.a, A110963, A110963.P3344771894533151408.a, A025480, A025480.P15873863116418380882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049449

/-! ## A049449.P5316952237109960690

`(A049465(n)-2*A007305(n))*A007305(n)`
-/

namespace A049449.P5316952237109960690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A049465 n - 2 * A007305 n) * A007305 n

end

end A049449.P5316952237109960690

namespace A049449

/-- `(A049465(n)-2*A007305(n))*A007305(n)` -/
def P5316952237109960690.Spec : Prop :=
  ∀ n, P5316952237109960690.a n = A049449 n

theorem P5316952237109960690.correct : P5316952237109960690.Spec := by
  intro n
  simp only [A049449, Nat.add_sub_cancel, A049449.P5316952237109960690.a, A049449.P5536593259919512893.a, A007305, A007305.P14904390197358887400.a, A007306, A007306.P17183682227013142410.a, A049465, A049465.P10062401916254781799.a, A003602, A003602.P7612175048291952394.a, A004761, A004761.P12493427440050159717.f1, A004761.P12493427440050159717.f2, A004761.P12493427440050159717.a, A049448, A049448.P1299469161137968042.a, A110963, A110963.P3344771894533151408.a, A025480, A025480.P15873863116418380882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049449

/-! ## A049449.P4715184062189048540

`(A049465(n)-A005843(A007305(n)))*A007305(n)`
-/

namespace A049449.P4715184062189048540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A049465 n - A005843 (A007305 n).toNat) * A007305 n

end

end A049449.P4715184062189048540

namespace A049449

/-- `(A049465(n)-A005843(A007305(n)))*A007305(n)` -/
def P4715184062189048540.Spec : Prop :=
  ∀ n, P4715184062189048540.a n = A049449 n

end A049449

/-! ## A049449.P4672861823913454348

`A007306(n)*A078898(A049465(n)-A007306(n))`
-/

namespace A049449.P4672861823913454348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 n * A078898 (A049465 n - A007306 n).toNat

end

end A049449.P4672861823913454348

namespace A049449

/-- `A007306(n)*A078898(A049465(n)-A007306(n))` -/
def P4672861823913454348.Spec : Prop :=
  ∀ n, P4672861823913454348.a n = A049449 n

end A049449

/-! ## A049449.P3087570606857479554

`∑{d}[2*n-1, A317839(#)]*A007305(n)`
-/

namespace A049449.P3087570606857479554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n).natAbs, A317839 d) * A007305 n

end

end A049449.P3087570606857479554

namespace A049449

/-- `∑{d}[2*n-1, A317839(#)]*A007305(n)` -/
def P3087570606857479554.Spec : Prop :=
  ∀ n, P3087570606857479554.a n = A049449 n

end A049449

/-! ## A049449.P10923468189153480951

`A119272(A004761(n+1)+2)`
-/

namespace A049449.P10923468189153480951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119272 (A004761 (n + 1) + 2).toNat

end

end A049449.P10923468189153480951

namespace A049449

/-- `A119272(A004761(n+1)+2)` -/
def P10923468189153480951.Spec : Prop :=
  ∀ n, P10923468189153480951.a n = A049449 n

end A049449

/-! ## A049449.P6037331401886592319

`A007306(n)*A057431(2*n)`
-/

namespace A049449.P6037331401886592319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 n * A057431 (2 * n)

end

end A049449.P6037331401886592319

namespace A049449

/-- `A007306(n)*A057431(2*n)` -/
def P6037331401886592319.Spec : Prop :=
  ∀ n, P6037331401886592319.a n = A049449 n

end A049449

/-! ## A049449.P4874201383662006587

`A002487(abs(1-2*n))*A007305(n)`
-/

namespace A049449.P4874201383662006587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 |1 - (2 * n : ℤ)|.toNat * A007305 n

end

end A049449.P4874201383662006587

namespace A049449

/-- `A002487(abs(1-2*n))*A007305(n)` -/
def P4874201383662006587.Spec : Prop :=
  ∀ n, P4874201383662006587.a n = A049449 n

end A049449

/-! ## A049449.P8032354601224134218

`∑{d}[2*n-1, A317839(#)]*A057431(2*n)`
-/

namespace A049449.P8032354601224134218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n).natAbs, A317839 d) * A057431 (2 * n)

end

end A049449.P8032354601224134218

namespace A049449

/-- `∑{d}[2*n-1, A317839(#)]*A057431(2*n)` -/
def P8032354601224134218.Spec : Prop :=
  ∀ n, P8032354601224134218.a n = A049449 n

end A049449

/-! ## A049449.P15586841458547811089

`lcm(A007305(A025480(n+n)), A007306(n))`
-/

namespace A049449.P15586841458547811089
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007305 (A025480 (n + n)).toNat) (A007306 n)

end

end A049449.P15586841458547811089

namespace A049449

/-- `lcm(A007305(A025480(n+n)), A007306(n))` -/
def P15586841458547811089.Spec : Prop :=
  ∀ n, (P15586841458547811089.a n : ℤ) = A049449 n

end A049449

/-! ## A049449.P11213570885540274222

`(A057431(2*n+1)+A057431(2*n))*A057431(2*n)`
-/

namespace A049449.P11213570885540274222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057431 (2 * n + 1) + A057431 (2 * n)) * A057431 (2 * n)

end

end A049449.P11213570885540274222

namespace A049449

/-- `(A057431(2*n+1)+A057431(2*n))*A057431(2*n)` -/
def P11213570885540274222.Spec : Prop :=
  ∀ n, P11213570885540274222.a n = A049449 n

end A049449

/-! ## A049449.P12335905717917084492

`A007305(2^ceil(log2(n+1))+n)*A007305(n)`
-/

namespace A049449.P12335905717917084492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007305 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ) + (n : ℚ))).toNat * A007305 n

end

end A049449.P12335905717917084492

namespace A049449

/-- `A007305(2^ceil(log2(n+1))+n)*A007305(n)` -/
def P12335905717917084492.Spec : Prop :=
  ∀ n, P12335905717917084492.a n = A049449 n

end A049449

/-! ## A049449.P14569523840038993317

`A007305(n)*A283976(A004277(abs(1-2*n)))`
-/

namespace A049449.P14569523840038993317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007305 n * A283976 (A004277 |1 - (2 * n : ℤ)|.toNat).toNat

end

end A049449.P14569523840038993317

namespace A049449

/-- `A007305(n)*A283976(A004277(abs(1-2*n)))` -/
def P14569523840038993317.Spec : Prop :=
  ∀ n, P14569523840038993317.a n = A049449 n

end A049449

/-! ## A049449.P8322317221056277061

`A057431(2*n)*A283976(A004277(abs(1-2*n)))`
-/

namespace A049449.P8322317221056277061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057431 (2 * n) * A283976 (A004277 |1 - (2 * n : ℤ)|.toNat).toNat

end

end A049449.P8322317221056277061

namespace A049449

/-- `A057431(2*n)*A283976(A004277(abs(1-2*n)))` -/
def P8322317221056277061.Spec : Prop :=
  ∀ n, P8322317221056277061.a n = A049449 n

end A049449

/-!
# A049450: Pentagonal numbers multiplied by 2: a(n) = n*(3*n-1).

The programs for A049450, the canonical program `A049450.P1815257678583562472` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049450 has offset 0).

The definition of A049450 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(3*n-1)` (program `A049450.P1815257678583562472`, by `A049450.P1815257678583562472.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A049450.P1815257678583562472

`n*(3*n-1)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049450

/-- `n*(3*n-1)` -/
def P1815257678583562472.Spec : Prop :=
  ∀ n, P1815257678583562472.a n = A049450 n

theorem P1815257678583562472.correct : P1815257678583562472.Spec := by
  intro n
  simp only [A049450]

end A049450

/-! ## A049450.P18098149266129022273

`A033579(n)/2`
-/

namespace A049450.P18098149266129022273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033579 n : ℚ) / 2

end

end A049450.P18098149266129022273

namespace A049450

/-- `A033579(n)/2` -/
def P18098149266129022273.Spec : Prop :=
  ∀ n, P18098149266129022273.a n = (A049450 n : ℚ)

theorem P18098149266129022273.correct : P18098149266129022273.Spec := by
  intro n
  simp only [A049450, Nat.add_sub_cancel, A049450.P18098149266129022273.a, A049450.P1815257678583562472.a, A033579, A033579.P8592719016639374159.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049450

/-! ## A049450.P16295430888003199563

`A014642(n)/4`
-/

namespace A049450.P16295430888003199563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014642 n : ℚ) / 4

end

end A049450.P16295430888003199563

namespace A049450

/-- `A014642(n)/4` -/
def P16295430888003199563.Spec : Prop :=
  ∀ n, P16295430888003199563.a n = (A049450 n : ℚ)

theorem P16295430888003199563.correct : P16295430888003199563.Spec := by
  intro n
  simp only [A049450, Nat.add_sub_cancel, A049450.P16295430888003199563.a, A049450.P1815257678583562472.a, A014642, A014642.P1230047363248524840.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049450

/-! ## A049450.P2219557200056147898

`A000290(n)+A000384(n)`
-/

namespace A049450.P2219557200056147898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n + A000384 n

end

end A049450.P2219557200056147898

namespace A049450

/-- `A000290(n)+A000384(n)` -/
def P2219557200056147898.Spec : Prop :=
  ∀ n, P2219557200056147898.a n = A049450 n

theorem P2219557200056147898.correct : P2219557200056147898.Spec := by
  intro n
  simp only [A049450, Nat.add_sub_cancel, A049450.P2219557200056147898.a, A049450.P1815257678583562472.a, A000290, A000290.P12206242496348924484.a, A000384, A000384.P5392390561999168282.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049450

/-! ## A049450.P6084431403927772241

`A000217(n)+A000566(n)`
-/

namespace A049450.P6084431403927772241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + A000566 n

end

end A049450.P6084431403927772241

namespace A049450

/-- `A000217(n)+A000566(n)` -/
def P6084431403927772241.Spec : Prop :=
  ∀ n, P6084431403927772241.a n = A049450 n

end A049450

/-! ## A049450.P16144057584229721248

`A002061(n)+A056220(n)`
-/

namespace A049450.P16144057584229721248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 n + A056220 n

end

end A049450.P16144057584229721248

namespace A049450

/-- `A002061(n)+A056220(n)` -/
def P16144057584229721248.Spec : Prop :=
  ∀ n, P16144057584229721248.a n = A049450 n

theorem P16144057584229721248.correct : P16144057584229721248.Spec := by
  intro n
  simp only [A049450, Nat.add_sub_cancel, A049450.P16144057584229721248.a, A049450.P1815257678583562472.a, A002061, A002061.P13016590216674735232.a, A056220, A056220.P5045014962229294692.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049450

/-! ## A049450.P16832003223799791833

`A003215(n)-A016813(n)`
-/

namespace A049450.P16832003223799791833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n - A016813 n

end

end A049450.P16832003223799791833

namespace A049450

/-- `A003215(n)-A016813(n)` -/
def P16832003223799791833.Spec : Prop :=
  ∀ n, P16832003223799791833.a n = A049450 n

theorem P16832003223799791833.correct : P16832003223799791833.Spec := by
  intro n
  simp only [A049450, Nat.add_sub_cancel, A049450.P16832003223799791833.a, A049450.P1815257678583562472.a, A003215, A003215.P5851317289441473820.a, A016813, A016813.P15626904835145642280.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049450

/-! ## A049450.P9566152070493815435

`A022264(n)-A000217(n)`
-/

namespace A049450.P9566152070493815435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022264 n - A000217 n

end

end A049450.P9566152070493815435

namespace A049450

/-- `A022264(n)-A000217(n)` -/
def P9566152070493815435.Spec : Prop :=
  ∀ n, P9566152070493815435.a n = A049450 n

end A049450

/-! ## A049450.P547835925339650065

`A049452(n)-A033428(n)`
-/

namespace A049450.P547835925339650065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049452 n - A033428 n

end

end A049450.P547835925339650065

namespace A049450

/-- `A049452(n)-A033428(n)` -/
def P547835925339650065.Spec : Prop :=
  ∀ n, P547835925339650065.a n = A049450 n

theorem P547835925339650065.correct : P547835925339650065.Spec := by
  intro n
  simp only [A049450, Nat.add_sub_cancel, A049450.P547835925339650065.a, A049450.P1815257678583562472.a, A033428, A033428.P10473664201403486648.a, A049452, A049452.P12714994684333640872.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049450

/-! ## A049450.P486685008848801378

`∑[a(n-1)+6]` with `a(0)=0, a(1)=2`
-/

namespace A049450.P486685008848801378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049450.P486685008848801378

namespace A049450

/-- `∑[a(n-1)+6]` -/
def P486685008848801378.Spec : Prop :=
  ∀ n, (P486685008848801378.a n : ℤ) = A049450 n

end A049450

/-! ## A049450.P16680665392150583201

`2*n+6*C(n, 2)`
-/

namespace A049450.P16680665392150583201
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 6 * Nat.choose n 2

end

end A049450.P16680665392150583201

namespace A049450

/-- `2*n+6*C(n, 2)` -/
def P16680665392150583201.Spec : Prop :=
  ∀ n, (P16680665392150583201.a n : ℤ) = A049450 n

theorem P16680665392150583201.correct : P16680665392150583201.Spec := by
  intro n
  simp only [A049450, Nat.add_sub_cancel, A049450.P16680665392150583201.a, A049450.P1815257678583562472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A049450

/-! ## A049450.P6928314469346508916

`∑[ogf((2x+4x^2)/(1-2x+x^2))]`
-/

namespace A049450.P6928314469346508916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 4] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049450.P6928314469346508916

namespace A049450

/-- `∑[ogf((2x+4x^2)/(1-2x+x^2))]` -/
def P6928314469346508916.Spec : Prop :=
  ∀ n, P6928314469346508916.a n = A049450 n

end A049450

/-! ## A049450.P9486376290982558227

`ogf((2x+4x^2)/(1-3x+3x^2-x^3))`
-/

namespace A049450.P9486376290982558227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 4] [1, -3, 3, -1] n

end

end A049450.P9486376290982558227

namespace A049450

/-- `ogf((2x+4x^2)/(1-3x+3x^2-x^3))` -/
def P9486376290982558227.Spec : Prop :=
  ∀ n, P9486376290982558227.a n = A049450 n

end A049450

/-! ## A049450.P2117863647151845935

`floor(3/acot(n)²-(n+1))`
-/

namespace A049450.P2117863647151845935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 / SequenceMachineLib.acot (n : ℝ) ^ 2 - (n + 1 : ℝ)⌋

end

end A049450.P2117863647151845935

namespace A049450

/-- `floor(3/acot(n)²-(n+1))` -/
def P2117863647151845935.Spec : Prop :=
  ∀ n, P2117863647151845935.a n = A049450 n

end A049450

/-! ## A049450.P2864521492980159341

`Δ[lcm(n-n², (1-n)²)]`
-/

namespace A049450.P2864521492980159341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - (n ^ 2 : ℤ)) ((1 - (n : ℤ)) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A049450.P2864521492980159341

namespace A049450

/-- `Δ[lcm(n-n², (1-n)²)]` -/
def P2864521492980159341.Spec : Prop :=
  ∀ n, P2864521492980159341.a n = A049450 n

end A049450

/-! ## A049450.P526321230989312411

`Δ[n*((2*n)%(n+1))²]`
-/

namespace A049450.P526321230989312411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 * n % (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A049450.P526321230989312411

namespace A049450

/-- `Δ[n*((2*n)%(n+1))²]` -/
def P526321230989312411.Spec : Prop :=
  ∀ n, P526321230989312411.a n = A049450 n

end A049450

/-! ## A049450.P5476734006126107138

`A056106(n)-1`
-/

namespace A049450.P5476734006126107138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056106 n - 1

end

end A049450.P5476734006126107138

namespace A049450

/-- `A056106(n)-1` -/
def P5476734006126107138.Spec : Prop :=
  ∀ n, P5476734006126107138.a n = A049450 n

theorem P5476734006126107138.correct : P5476734006126107138.Spec := by
  intro n
  simp only [A049450, Nat.add_sub_cancel, A049450.P5476734006126107138.a, A049450.P1815257678583562472.a, A056106, A056106.P14646240334205012070.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049450

/-! ## A049450.P6088823489413749027

`A152743(n)/3`
-/

namespace A049450.P6088823489413749027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152743 n : ℚ) / 3

end

end A049450.P6088823489413749027

namespace A049450

/-- `A152743(n)/3` -/
def P6088823489413749027.Spec : Prop :=
  ∀ n, P6088823489413749027.a n = (A049450 n : ℚ)

theorem P6088823489413749027.correct : P6088823489413749027.Spec := by
  intro n
  simp only [A049450, Nat.add_sub_cancel, A049450.P6088823489413749027.a, A049450.P1815257678583562472.a, A152743, A152743.P11194544778889005777.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049450

/-! ## A049450.P6116020062447147129

`A153780(n)/5`
-/

namespace A049450.P6116020062447147129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153780 n : ℚ) / 5

end

end A049450.P6116020062447147129

namespace A049450

/-- `A153780(n)/5` -/
def P6116020062447147129.Spec : Prop :=
  ∀ n, P6116020062447147129.a n = (A049450 n : ℚ)

theorem P6116020062447147129.correct : P6116020062447147129.Spec := by
  intro n
  simp only [A049450, Nat.add_sub_cancel, A049450.P6116020062447147129.a, A049450.P1815257678583562472.a, A153780, A153780.P13444899708151239759.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049450

/-! ## A049450.P4593178428031002302

`A153792(n)/6`
-/

namespace A049450.P4593178428031002302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153792 n : ℚ) / 6

end

end A049450.P4593178428031002302

namespace A049450

/-- `A153792(n)/6` -/
def P4593178428031002302.Spec : Prop :=
  ∀ n, P4593178428031002302.a n = (A049450 n : ℚ)

theorem P4593178428031002302.correct : P4593178428031002302.Spec := by
  intro n
  simp only [A049450, Nat.add_sub_cancel, A049450.P4593178428031002302.a, A049450.P1815257678583562472.a, A153792, A153792.P13758873412561183293.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049450

/-!
# A049451: Twice second pentagonal numbers.

The programs for A049451, the canonical program `A049451.P10593396330720355076` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049451 has offset 0).

The definition of A049451 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049451.P10593396330720355076

`n*(3*n+1)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049451

/-- `n*(3*n+1)` -/
def P10593396330720355076.Spec : Prop :=
  ∀ n, (P10593396330720355076.a n : ℤ) = A049451 n

theorem P10593396330720355076.correct : P10593396330720355076.Spec := by
  intro n
  simp only [A049451]

end A049451

/-! ## A049451.P1486003313861888309

`A001105(n)+A002378(n)`
-/

namespace A049451.P1486003313861888309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 n + A002378 n

end

end A049451.P1486003313861888309

namespace A049451

/-- `A001105(n)+A002378(n)` -/
def P1486003313861888309.Spec : Prop :=
  ∀ n, P1486003313861888309.a n = A049451 n

theorem P1486003313861888309.correct : P1486003313861888309.Spec := by
  intro n
  simp only [A049451, Nat.add_sub_cancel, A049451.P1486003313861888309.a, A049451.P10593396330720355076.a, A001105, A001105.P6098599260439307493.a, A002378, A002378.P6342434596694243671.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049451

/-! ## A049451.P6862082622702500895

`A003215(n)-A005408(n)`
-/

namespace A049451.P6862082622702500895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n - A005408 n

end

end A049451.P6862082622702500895

namespace A049451

/-- `A003215(n)-A005408(n)` -/
def P6862082622702500895.Spec : Prop :=
  ∀ n, P6862082622702500895.a n = A049451 n

theorem P6862082622702500895.correct : P6862082622702500895.Spec := by
  intro n
  simp only [A049451, Nat.add_sub_cancel, A049451.P6862082622702500895.a, A049451.P10593396330720355076.a, A003215, A003215.P5851317289441473820.a, A005408, A005408.P17437947328870227736.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049451

/-! ## A049451.P4235469773344664044

`A002061(n+1)+A056220(n)`
-/

namespace A049451.P4235469773344664044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (n + 1) + A056220 n

end

end A049451.P4235469773344664044

namespace A049451

/-- `A002061(n+1)+A056220(n)` -/
def P4235469773344664044.Spec : Prop :=
  ∀ n, P4235469773344664044.a n = A049451 n

theorem P4235469773344664044.correct : P4235469773344664044.Spec := by
  intro n
  simp only [A049451, Nat.add_sub_cancel, A049451.P4235469773344664044.a, A049451.P10593396330720355076.a, A002061, A002061.P13016590216674735232.a, A056220, A056220.P5045014962229294692.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049451

/-! ## A049451.P15435252220436524013

`A100104(n+1)-A100104(n)`
-/

namespace A049451.P15435252220436524013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100104 (n + 1) - A100104 n

end

end A049451.P15435252220436524013

namespace A049451

/-- `A100104(n+1)-A100104(n)` -/
def P15435252220436524013.Spec : Prop :=
  ∀ n, P15435252220436524013.a n = A049451 n

theorem P15435252220436524013.correct : P15435252220436524013.Spec := by
  intro n
  simp only [A049451, Nat.add_sub_cancel, A049451.P15435252220436524013.a, A049451.P10593396330720355076.a, A100104, A100104.P5986239298925528183.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049451

/-! ## A049451.P16897079699749321138

`A174709(6*n+3)`
-/

namespace A049451.P16897079699749321138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174709 (6 * n + 3)

end

end A049451.P16897079699749321138

namespace A049451

/-- `A174709(6*n+3)` -/
def P16897079699749321138.Spec : Prop :=
  ∀ n, P16897079699749321138.a n = A049451 n

end A049451

/-! ## A049451.P9802429522422489652

`Δ[lcm(1-n, n²)]`
-/

namespace A049451.P9802429522422489652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (n : ℤ)) (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A049451.P9802429522422489652

namespace A049451

/-- `Δ[lcm(1-n, n²)]` -/
def P9802429522422489652.Spec : Prop :=
  ∀ n, P9802429522422489652.a n = A049451 n

end A049451

/-! ## A049451.P15880184028373993518

`Δ[2*n*C(n, 2)]`
-/

namespace A049451.P15880184028373993518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n * Nat.choose n 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A049451.P15880184028373993518

namespace A049451

/-- `Δ[2*n*C(n, 2)]` -/
def P15880184028373993518.Spec : Prop :=
  ∀ n, P15880184028373993518.a n = A049451 n

theorem P15880184028373993518.correct : P15880184028373993518.Spec := by
  intro n
  simp only [A049451, Nat.add_sub_cancel, A049451.P15880184028373993518.f1, A049451.P15880184028373993518.a, A049451.P10593396330720355076.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A049451

/-! ## A049451.P8869219494145506811

`∑[a(n-1)+6]` with `a(0)=0, a(1)=4`
-/

namespace A049451.P8869219494145506811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049451.P8869219494145506811

namespace A049451

/-- `∑[a(n-1)+6]` -/
def P8869219494145506811.Spec : Prop :=
  ∀ n, (P8869219494145506811.a n : ℤ) = A049451 n

end A049451

/-! ## A049451.P8613469504785463459

`Δ[or(1, (n-1)*n²)]`
-/

namespace A049451.P8613469504785463459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (((n : ℤ) - 1) * (n ^ 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049451.P8613469504785463459

namespace A049451

/-- `Δ[or(1, (n-1)*n²)]` -/
def P8613469504785463459.Spec : Prop :=
  ∀ n, P8613469504785463459.a n = A049451 n

end A049451

/-! ## A049451.P12962702750931331458

`Δ[xor(1, (n-1)*n²)]`
-/

namespace A049451.P12962702750931331458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (((n : ℤ) - 1) * (n ^ 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049451.P12962702750931331458

namespace A049451

/-- `Δ[xor(1, (n-1)*n²)]` -/
def P12962702750931331458.Spec : Prop :=
  ∀ n, P12962702750931331458.a n = A049451 n

end A049451

/-! ## A049451.P18399797567428513317

`∑[ogf((4x+2x^2)/(1-2x+x^2))]`
-/

namespace A049451.P18399797567428513317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, 2] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049451.P18399797567428513317

namespace A049451

/-- `∑[ogf((4x+2x^2)/(1-2x+x^2))]` -/
def P18399797567428513317.Spec : Prop :=
  ∀ n, P18399797567428513317.a n = A049451 n

end A049451

/-! ## A049451.P2553232950882265936

`ogf((4x+2x^2)/(1-3x+3x^2-x^3))`
-/

namespace A049451.P2553232950882265936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, 2] [1, -3, 3, -1] n

end

end A049451.P2553232950882265936

namespace A049451

/-- `ogf((4x+2x^2)/(1-3x+3x^2-x^3))` -/
def P2553232950882265936.Spec : Prop :=
  ∀ n, P2553232950882265936.a n = A049451 n

end A049451

/-! ## A049451.P4709944049338102761

`xor(1, Δ[n^3]-2*n)`
-/

namespace A049451.P4709944049338102761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (2 * n : ℤ))

end

end A049451.P4709944049338102761

namespace A049451

/-- `xor(1, Δ[n^3]-2*n)` -/
def P4709944049338102761.Spec : Prop :=
  ∀ n, P4709944049338102761.a n = A049451 n

end A049451

/-! ## A049451.P4349301272788087428

`Δ[n*lcm(2, n*(n-1))]`
-/

namespace A049451.P4349301272788087428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Int.lcm 2 ((n : ℤ) * ((n : ℤ) - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A049451.P4349301272788087428

namespace A049451

/-- `Δ[n*lcm(2, n*(n-1))]` -/
def P4349301272788087428.Spec : Prop :=
  ∀ n, P4349301272788087428.a n = A049451 n

end A049451

/-! ## A049451.P8358681010552206304

`and(-2, Δ[(n-1)*n²])`
-/

namespace A049451.P8358681010552206304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (f1 (n + 1) - f1 n)

end

end A049451.P8358681010552206304

namespace A049451

/-- `and(-2, Δ[(n-1)*n²])` -/
def P8358681010552206304.Spec : Prop :=
  ∀ n, P8358681010552206304.a n = A049451 n

end A049451

/-! ## A049451.P14281175839630178002

`6*n-(2-a(n-1))` with `a(0)=0`
-/

namespace A049451.P14281175839630178002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (6 * n : ℤ) - (2 - a (n - 1))

end

end A049451.P14281175839630178002

namespace A049451

/-- `6*n-(2-a(n-1))` -/
def P14281175839630178002.Spec : Prop :=
  ∀ n, P14281175839630178002.a n = A049451 n

theorem P14281175839630178002.correct : P14281175839630178002.Spec := by
  intro n
  induction n with
  | zero => simp [A049451, A049451.P14281175839630178002.a, A049451.P10593396330720355076.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A049451, Nat.add_sub_cancel, A049451.P14281175839630178002.a, A049451.P10593396330720355076.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A049451

/-! ## A049451.P3432879806187656158

`A056108(n)-1`
-/

namespace A049451.P3432879806187656158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056108 n - 1

end

end A049451.P3432879806187656158

namespace A049451

/-- `A056108(n)-1` -/
def P3432879806187656158.Spec : Prop :=
  ∀ n, P3432879806187656158.a n = A049451 n

theorem P3432879806187656158.correct : P3432879806187656158.Spec := by
  intro n
  simp only [A049451, Nat.add_sub_cancel, A049451.P3432879806187656158.a, A049451.P10593396330720355076.a, A056108, A056108.P17425937018567532737.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049451

/-! ## A049451.P14285029710264256426

`A295089(n)-3`
-/

namespace A049451.P14285029710264256426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295089 n - 3

end

end A049451.P14285029710264256426

namespace A049451

/-- `A295089(n)-3` -/
def P14285029710264256426.Spec : Prop :=
  ∀ n, P14285029710264256426.a n = A049451 n

theorem P14285029710264256426.correct : P14285029710264256426.Spec := by
  intro n
  simp only [A049451, Nat.add_sub_cancel, A049451.P14285029710264256426.a, A049451.P10593396330720355076.a, A295089, A295089.P4252073232684347397.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049451

/-! ## A049451.P14123221766745965154

`A033580(n)/2`
-/

namespace A049451.P14123221766745965154
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033580 n : ℚ) / 2

end

end A049451.P14123221766745965154

namespace A049451

/-- `A033580(n)/2` -/
def P14123221766745965154.Spec : Prop :=
  ∀ n, P14123221766745965154.a n = (A049451 n : ℚ)

theorem P14123221766745965154.correct : P14123221766745965154.Spec := by
  intro n
  simp only [A049451, Nat.add_sub_cancel, A049451.P14123221766745965154.a, A049451.P10593396330720355076.a, A033580, A033580.P10508890947649140634.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049451

/-!
# A049452: Pentagonal numbers with even index.

The programs for A049452, the canonical program `A049452.P12714994684333640872` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049452 has offset 0).

The definition of A049452 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049452.P17771868490862190566

`C(6*n, 2)/3`
-/

namespace A049452.P17771868490862190566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (6 * n) 2 : ℚ) / 3

end

end A049452.P17771868490862190566

namespace A049452

/-- `C(6*n, 2)/3` -/
def P17771868490862190566.Spec : Prop :=
  ∀ n, P17771868490862190566.a n = (A049452 n : ℚ)

theorem P17771868490862190566.correct : P17771868490862190566.Spec := by
  intro n
  simp only [A049452, Nat.add_sub_cancel, A049452.P17771868490862190566.a, A049452.P12714994684333640872.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A049452

/-! ## A049452.P12714994684333640872

`n*(6*n-1)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049452

/-- `n*(6*n-1)` -/
def P12714994684333640872.Spec : Prop :=
  ∀ n, P12714994684333640872.a n = A049452 n

theorem P12714994684333640872.correct : P12714994684333640872.Spec := by
  intro n
  simp only [A049452]

end A049452

/-! ## A049452.P2836604893206644581

`A022266(n)+A000326(n)`
-/

namespace A049452.P2836604893206644581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022266 n + A000326 n

end

end A049452.P2836604893206644581

namespace A049452

/-- `A022266(n)+A000326(n)` -/
def P2836604893206644581.Spec : Prop :=
  ∀ n, P2836604893206644581.a n = A049452 n

end A049452

/-! ## A049452.P9005981257698506802

`A001105(n)+A033991(n)`
-/

namespace A049452.P9005981257698506802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 n + A033991 n

end

end A049452.P9005981257698506802

namespace A049452

/-- `A001105(n)+A033991(n)` -/
def P9005981257698506802.Spec : Prop :=
  ∀ n, P9005981257698506802.a n = A049452 n

theorem P9005981257698506802.correct : P9005981257698506802.Spec := by
  intro n
  simp only [A049452, Nat.add_sub_cancel, A049452.P9005981257698506802.a, A049452.P12714994684333640872.a, A001105, A001105.P6098599260439307493.a, A033991, A033991.P11968073306702908903.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049452

/-! ## A049452.P4574793915134613790

`A033428(n)+A049450(n)`
-/

namespace A049452.P4574793915134613790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033428 n + A049450 n

end

end A049452.P4574793915134613790

namespace A049452

/-- `A033428(n)+A049450(n)` -/
def P4574793915134613790.Spec : Prop :=
  ∀ n, P4574793915134613790.a n = A049452 n

theorem P4574793915134613790.correct : P4574793915134613790.Spec := by
  intro n
  simp only [A049452, Nat.add_sub_cancel, A049452.P4574793915134613790.a, A049452.P12714994684333640872.a, A033428, A033428.P10473664201403486648.a, A049450, A049450.P1815257678583562472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049452

/-! ## A049452.P103644755507104385

`4*A000217(n)+A001107(n)`
-/

namespace A049452.P103644755507104385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000217 n + A001107 n

end

end A049452.P103644755507104385

namespace A049452

/-- `4*A000217(n)+A001107(n)` -/
def P103644755507104385.Spec : Prop :=
  ∀ n, P103644755507104385.a n = A049452 n

theorem P103644755507104385.correct : P103644755507104385.Spec := by
  intro n
  simp only [A049452, Nat.add_sub_cancel, A049452.P103644755507104385.a, A049452.P12714994684333640872.a, A000217, A000217.P10269402890581615239.a, A001107, A001107.P15766833630772781234.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A049452

/-! ## A049452.P3059217971838115424

`∑[a(n-1)+12]` with `a(0)=0, a(1)=5`
-/

namespace A049452.P3059217971838115424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 5] fun n f1 =>
  f1 (n - 1) + 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049452.P3059217971838115424

namespace A049452

/-- `∑[a(n-1)+12]` -/
def P3059217971838115424.Spec : Prop :=
  ∀ n, (P3059217971838115424.a n : ℤ) = A049452 n

end A049452

/-! ## A049452.P7552994067930874123

`∑[ogf((5x+7x^2)/(1-2x+x^2))]`
-/

namespace A049452.P7552994067930874123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, 7] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049452.P7552994067930874123

namespace A049452

/-- `∑[ogf((5x+7x^2)/(1-2x+x^2))]` -/
def P7552994067930874123.Spec : Prop :=
  ∀ n, P7552994067930874123.a n = A049452 n

end A049452

/-! ## A049452.P11965616949626051543

`ogf((5x+7x^2)/(1-3x+3x^2-x^3))`
-/

namespace A049452.P11965616949626051543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, 7] [1, -3, 3, -1] n

end

end A049452.P11965616949626051543

namespace A049452

/-- `ogf((5x+7x^2)/(1-3x+3x^2-x^3))` -/
def P11965616949626051543.Spec : Prop :=
  ∀ n, P11965616949626051543.a n = A049452 n

end A049452

/-! ## A049452.P17464040036478812124

`ceil(2*n*sqrt(2*C(3*n, 2)))`
-/

namespace A049452.P17464040036478812124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n : ℝ) * Real.sqrt (2 * Nat.choose (3 * n) 2 : ℝ)⌉

end

end A049452.P17464040036478812124

namespace A049452

/-- `ceil(2*n*sqrt(2*C(3*n, 2)))` -/
def P17464040036478812124.Spec : Prop :=
  ∀ n, P17464040036478812124.a n = A049452 n

end A049452

/-! ## A049452.P9796609581956589897

`A033569(n)+1`
-/

namespace A049452.P9796609581956589897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033569 n + 1

end

end A049452.P9796609581956589897

namespace A049452

/-- `A033569(n)+1` -/
def P9796609581956589897.Spec : Prop :=
  ∀ n, P9796609581956589897.a n = A049452 n

theorem P9796609581956589897.correct : P9796609581956589897.Spec := by
  intro n
  simp only [A049452, Nat.add_sub_cancel, A049452.P9796609581956589897.a, A049452.P12714994684333640872.a, A033569, A033569.P5108390427402809841.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049452

/-! ## A049452.P14135162902057619795

`A126964(n)/2`
-/

namespace A049452.P14135162902057619795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126964 n : ℚ) / 2

end

end A049452.P14135162902057619795

namespace A049452

/-- `A126964(n)/2` -/
def P14135162902057619795.Spec : Prop :=
  ∀ n, P14135162902057619795.a n = (A049452 n : ℚ)

theorem P14135162902057619795.correct : P14135162902057619795.Spec := by
  intro n
  simp only [A049452, Nat.add_sub_cancel, A049452.P14135162902057619795.a, A049452.P12714994684333640872.a, A126964, A126964.P15256011894595819792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049452

/-! ## A049452.P4438167832361374442

`A033579(n)+n`
-/

namespace A049452.P4438167832361374442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033579 n + (n : ℤ)

end

end A049452.P4438167832361374442

namespace A049452

/-- `A033579(n)+n` -/
def P4438167832361374442.Spec : Prop :=
  ∀ n, P4438167832361374442.a n = A049452 n

theorem P4438167832361374442.correct : P4438167832361374442.Spec := by
  intro n
  simp only [A049452, Nat.add_sub_cancel, A049452.P4438167832361374442.a, A049452.P12714994684333640872.a, A033579, A033579.P8592719016639374159.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049452

/-! ## A049452.P15219709958868462290

`A033581(n)-n`
-/

namespace A049452.P15219709958868462290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 n - (n : ℤ)

end

end A049452.P15219709958868462290

namespace A049452

/-- `A033581(n)-n` -/
def P15219709958868462290.Spec : Prop :=
  ∀ n, P15219709958868462290.a n = A049452 n

theorem P15219709958868462290.correct : P15219709958868462290.Spec := by
  intro n
  simp only [A049452, Nat.add_sub_cancel, A049452.P15219709958868462290.a, A049452.P12714994684333640872.a, A033581, A033581.P13583599227635646969.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049452

/-! ## A049452.P7823526596634657397

`(A185918(n)+1)/2`
-/

namespace A049452.P7823526596634657397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185918 n + 1 : ℚ) / 2

end

end A049452.P7823526596634657397

namespace A049452

/-- `(A185918(n)+1)/2` -/
def P7823526596634657397.Spec : Prop :=
  ∀ n, P7823526596634657397.a n = (A049452 n : ℚ)

theorem P7823526596634657397.correct : P7823526596634657397.Spec := by
  intro n
  simp only [A049452, Nat.add_sub_cancel, A049452.P7823526596634657397.a, A049452.P12714994684333640872.a, A185918, A185918.P12744030162887049850.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049452

/-! ## A049452.P13498546291488170265

`A227776(n)-(n+1)`
-/

namespace A049452.P13498546291488170265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227776 n - (n + 1 : ℤ)

end

end A049452.P13498546291488170265

namespace A049452

/-- `A227776(n)-(n+1)` -/
def P13498546291488170265.Spec : Prop :=
  ∀ n, P13498546291488170265.a n = A049452 n

theorem P13498546291488170265.correct : P13498546291488170265.Spec := by
  intro n
  simp only [A049452, Nat.add_sub_cancel, A049452.P13498546291488170265.a, A049452.P12714994684333640872.a, A227776, A227776.P10684709739672148907.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049452

/-! ## A049452.P15087219661201652006

`A014105(n)+A002939(n)`
-/

namespace A049452.P15087219661201652006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014105 n + A002939 n

end

end A049452.P15087219661201652006

namespace A049452

/-- `A014105(n)+A002939(n)` -/
def P15087219661201652006.Spec : Prop :=
  ∀ n, P15087219661201652006.a n = A049452 n

theorem P15087219661201652006.correct : P15087219661201652006.Spec := by
  intro n
  simp only [A049452, Nat.add_sub_cancel, A049452.P15087219661201652006.a, A049452.P12714994684333640872.a, A002939, A002939.P11095602872349887610.a, A014105, A014105.P182524374866796289.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049452

/-! ## A049452.P2682650609200470043

`A014107(n)+A002943(n)`
-/

namespace A049452.P2682650609200470043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014107 n + A002943 n

end

end A049452.P2682650609200470043

namespace A049452

/-- `A014107(n)+A002943(n)` -/
def P2682650609200470043.Spec : Prop :=
  ∀ n, P2682650609200470043.a n = A049452 n

theorem P2682650609200470043.correct : P2682650609200470043.Spec := by
  intro n
  simp only [A049452, Nat.add_sub_cancel, A049452.P2682650609200470043.a, A049452.P12714994684333640872.a, A002943, A002943.P6554007946647441496.a, A014107, A014107.P7046062318563033165.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049452

/-! ## A049452.P3693275200974057705

`A016742(n)+A000384(n)`
-/

namespace A049452.P3693275200974057705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016742 n + A000384 n

end

end A049452.P3693275200974057705

namespace A049452

/-- `A016742(n)+A000384(n)` -/
def P3693275200974057705.Spec : Prop :=
  ∀ n, P3693275200974057705.a n = A049452 n

theorem P3693275200974057705.correct : P3693275200974057705.Spec := by
  intro n
  simp only [A049452, Nat.add_sub_cancel, A049452.P3693275200974057705.a, A049452.P12714994684333640872.a, A000384, A000384.P5392390561999168282.a, A016742, A016742.P17821809754172938154.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049452

/-! ## A049452.P5008076505821353039

`A022265(n)+A000566(n)`
-/

namespace A049452.P5008076505821353039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022265 n + A000566 n

end

end A049452.P5008076505821353039

namespace A049452

/-- `A022265(n)+A000566(n)` -/
def P5008076505821353039.Spec : Prop :=
  ∀ n, P5008076505821353039.a n = A049452 n

end A049452

/-!
# A049453: Second pentagonal numbers with even index: a(n) = n*(6*n+1).

The programs for A049453, the canonical program `A049453.P17699736680454431626` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049453 has offset 0).

The definition of A049453 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(6*n+1)` (program `A049453.P17699736680454431626`, by `A049453.P17699736680454431626.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A049453.P17699736680454431626

`n*(6*n+1)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049453

/-- `n*(6*n+1)` -/
def P17699736680454431626.Spec : Prop :=
  ∀ n, (P17699736680454431626.a n : ℤ) = A049453 n

theorem P17699736680454431626.correct : P17699736680454431626.Spec := by
  intro n
  simp only [A049453]

end A049453

/-! ## A049453.P3149283398558078197

`∑[a(n-1)+12]` with `a(0)=0, a(1)=7`
-/

namespace A049453.P3149283398558078197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 7] fun n f1 =>
  f1 (n - 1) + 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049453.P3149283398558078197

namespace A049453

/-- `∑[a(n-1)+12]` -/
def P3149283398558078197.Spec : Prop :=
  ∀ n, (P3149283398558078197.a n : ℤ) = A049453 n

end A049453

/-! ## A049453.P3440565441763672626

`∑[ogf((7x+5x^2)/(1-2x+x^2))]`
-/

namespace A049453.P3440565441763672626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 7, 5] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049453.P3440565441763672626

namespace A049453

/-- `∑[ogf((7x+5x^2)/(1-2x+x^2))]` -/
def P3440565441763672626.Spec : Prop :=
  ∀ n, P3440565441763672626.a n = A049453 n

end A049453

/-! ## A049453.P18341130525103726397

`ogf((7x+5x^2)/(1-3x+3x^2-x^3))`
-/

namespace A049453.P18341130525103726397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 7, 5] [1, -3, 3, -1] n

end

end A049453.P18341130525103726397

namespace A049453

/-- `ogf((7x+5x^2)/(1-3x+3x^2-x^3))` -/
def P18341130525103726397.Spec : Prop :=
  ∀ n, P18341130525103726397.a n = A049453 n

end A049453

/-! ## A049453.P17042136723384712995

`Δ[2*n^3-C(5*n, 2)/5]`
-/

namespace A049453.P17042136723384712995
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n ^ 3 : ℚ) - (Nat.choose (5 * n) 2 : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049453.P17042136723384712995

namespace A049453

/-- `Δ[2*n^3-C(5*n, 2)/5]` -/
def P17042136723384712995.Spec : Prop :=
  ∀ n, P17042136723384712995.a n = (A049453 n : ℚ)

theorem P17042136723384712995.correct : P17042136723384712995.Spec := by
  intro n
  simp only [A049453, Nat.add_sub_cancel, A049453.P17042136723384712995.f1, A049453.P17042136723384712995.a, A049453.P17699736680454431626.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A049453

/-! ## A049453.P16922403085449027677

`A144314(n)/3`
-/

namespace A049453.P16922403085449027677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144314 n : ℚ) / 3

end

end A049453.P16922403085449027677

namespace A049453

/-- `A144314(n)/3` -/
def P16922403085449027677.Spec : Prop :=
  ∀ n, P16922403085449027677.a n = (A049453 n : ℚ)

theorem P16922403085449027677.correct : P16922403085449027677.Spec := by
  intro n
  simp only [A049453, Nat.add_sub_cancel, A049453.P16922403085449027677.a, A049453.P17699736680454431626.a, A144314, A144314.P8498779635623249334.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049453

/-! ## A049453.P1373634081816479905

`n+A033581(n)`
-/

namespace A049453.P1373634081816479905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A033581 n

end

end A049453.P1373634081816479905

namespace A049453

/-- `n+A033581(n)` -/
def P1373634081816479905.Spec : Prop :=
  ∀ n, P1373634081816479905.a n = A049453 n

theorem P1373634081816479905.correct : P1373634081816479905.Spec := by
  intro n
  simp only [A049453, Nat.add_sub_cancel, A049453.P1373634081816479905.a, A049453.P17699736680454431626.a, A033581, A033581.P13583599227635646969.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049453

/-! ## A049453.P2951198415141408497

`A033580(n)-n`
-/

namespace A049453.P2951198415141408497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033580 n - (n : ℤ)

end

end A049453.P2951198415141408497

namespace A049453

/-- `A033580(n)-n` -/
def P2951198415141408497.Spec : Prop :=
  ∀ n, P2951198415141408497.a n = A049453 n

theorem P2951198415141408497.correct : P2951198415141408497.Spec := by
  intro n
  simp only [A049453, Nat.add_sub_cancel, A049453.P2951198415141408497.a, A049453.P17699736680454431626.a, A033580, A033580.P10508890947649140634.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049453

/-! ## A049453.P9957621286139587008

`(A194454(n)-1)/2`
-/

namespace A049453.P9957621286139587008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194454 n - 1 : ℚ) / 2

end

end A049453.P9957621286139587008

namespace A049453

/-- `(A194454(n)-1)/2` -/
def P9957621286139587008.Spec : Prop :=
  ∀ n, P9957621286139587008.a n = (A049453 n : ℚ)

theorem P9957621286139587008.correct : P9957621286139587008.Spec := by
  intro n
  simp only [A049453, Nat.add_sub_cancel, A049453.P9957621286139587008.a, A049453.P17699736680454431626.a, A194454, A194454.P11085170661089486753.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049453

/-! ## A049453.P12510158747209681649

`A140811(n)+1+n`
-/

namespace A049453.P12510158747209681649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140811 n + 1 + (n : ℤ)

end

end A049453.P12510158747209681649

namespace A049453

/-- `A140811(n)+1+n` -/
def P12510158747209681649.Spec : Prop :=
  ∀ n, P12510158747209681649.a n = A049453 n

theorem P12510158747209681649.correct : P12510158747209681649.Spec := by
  intro n
  simp only [A049453, Nat.add_sub_cancel, A049453.P12510158747209681649.a, A049453.P17699736680454431626.a, A140811, A140811.P17716776478933671421.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049453

/-! ## A049453.P5738565075047391362

`A227776(n)+n-1`
-/

namespace A049453.P5738565075047391362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227776 n + ((n : ℤ) - 1)

end

end A049453.P5738565075047391362

namespace A049453

/-- `A227776(n)+n-1` -/
def P5738565075047391362.Spec : Prop :=
  ∀ n, P5738565075047391362.a n = A049453 n

theorem P5738565075047391362.correct : P5738565075047391362.Spec := by
  intro n
  simp only [A049453, Nat.add_sub_cancel, A049453.P5738565075047391362.a, A049453.P17699736680454431626.a, A227776, A227776.P10684709739672148907.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049453

/-! ## A049453.P13065942551391398748

`n+6*A000290(n)`
-/

namespace A049453.P13065942551391398748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + 6 * A000290 n

end

end A049453.P13065942551391398748

namespace A049453

/-- `n+6*A000290(n)` -/
def P13065942551391398748.Spec : Prop :=
  ∀ n, P13065942551391398748.a n = A049453 n

theorem P13065942551391398748.correct : P13065942551391398748.Spec := by
  intro n
  simp only [A049453, Nat.add_sub_cancel, A049453.P13065942551391398748.a, A049453.P17699736680454431626.a, A000290, A000290.P12206242496348924484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049453

/-! ## A049453.P9587514696895654153

`6*n+A051866(n)`
-/

namespace A049453.P9587514696895654153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n : ℤ) + A051866 n

end

end A049453.P9587514696895654153

namespace A049453

/-- `6*n+A051866(n)` -/
def P9587514696895654153.Spec : Prop :=
  ∀ n, P9587514696895654153.a n = A049453 n

theorem P9587514696895654153.correct : P9587514696895654153.Spec := by
  intro n
  simp only [A049453, Nat.add_sub_cancel, A049453.P9587514696895654153.a, A049453.P17699736680454431626.a, A051866, A051866.P7037994286834974710.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049453

/-! ## A049453.P15857795331226199822

`A002943(n)+A000384(n)`
-/

namespace A049453.P15857795331226199822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002943 n + A000384 n

end

end A049453.P15857795331226199822

namespace A049453

/-- `A002943(n)+A000384(n)` -/
def P15857795331226199822.Spec : Prop :=
  ∀ n, P15857795331226199822.a n = A049453 n

theorem P15857795331226199822.correct : P15857795331226199822.Spec := by
  intro n
  simp only [A049453, Nat.add_sub_cancel, A049453.P15857795331226199822.a, A049453.P17699736680454431626.a, A000384, A000384.P5392390561999168282.a, A002943, A002943.P6554007946647441496.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049453

/-! ## A049453.P18130139992263911692

`A007742(n)+A001105(n)`
-/

namespace A049453.P18130139992263911692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007742 n + A001105 n

end

end A049453.P18130139992263911692

namespace A049453

/-- `A007742(n)+A001105(n)` -/
def P18130139992263911692.Spec : Prop :=
  ∀ n, P18130139992263911692.a n = A049453 n

theorem P18130139992263911692.correct : P18130139992263911692.Spec := by
  intro n
  simp only [A049453, Nat.add_sub_cancel, A049453.P18130139992263911692.a, A049453.P17699736680454431626.a, A001105, A001105.P6098599260439307493.a, A007742, A007742.P14173437786459717136.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049453

/-! ## A049453.P45884103873867707

`A014106(n)+A002939(n)`
-/

namespace A049453.P45884103873867707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014106 n + A002939 n

end

end A049453.P45884103873867707

namespace A049453

/-- `A014106(n)+A002939(n)` -/
def P45884103873867707.Spec : Prop :=
  ∀ n, P45884103873867707.a n = A049453 n

theorem P45884103873867707.correct : P45884103873867707.Spec := by
  intro n
  simp only [A049453, Nat.add_sub_cancel, A049453.P45884103873867707.a, A049453.P17699736680454431626.a, A002939, A002939.P11095602872349887610.a, A014106, A014106.P1375640882817375549.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049453

/-! ## A049453.P5533506054089482524

`A022268(n)+A000096(n)`
-/

namespace A049453.P5533506054089482524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022268 n + A000096 n

end

end A049453.P5533506054089482524

namespace A049453

/-- `A022268(n)+A000096(n)` -/
def P5533506054089482524.Spec : Prop :=
  ∀ n, P5533506054089482524.a n = A049453 n

end A049453

/-! ## A049453.P15315028924831840526

`A022269(n)+A000217(n)`
-/

namespace A049453.P15315028924831840526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022269 n + A000217 n

end

end A049453.P15315028924831840526

namespace A049453

/-- `A022269(n)+A000217(n)` -/
def P15315028924831840526.Spec : Prop :=
  ∀ n, P15315028924831840526.a n = A049453 n

end A049453

/-! ## A049453.P6172952340778270744

`A022267(n)+A005449(n)`
-/

namespace A049453.P6172952340778270744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022267 n + A005449 n

end

end A049453.P6172952340778270744

namespace A049453

/-- `A022267(n)+A005449(n)` -/
def P6172952340778270744.Spec : Prop :=
  ∀ n, P6172952340778270744.a n = A049453 n

end A049453

/-! ## A049453.P16655713648799940921

`A022265(n)+A005475(n)`
-/

namespace A049453.P16655713648799940921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022265 n + A005475 n

end

end A049453.P16655713648799940921

namespace A049453

/-- `A022265(n)+A005475(n)` -/
def P16655713648799940921.Spec : Prop :=
  ∀ n, P16655713648799940921.a n = A049453 n

end A049453

/-!
# A049454: a(n) = 1 + Sum_{i=1..n} phi(i)^2.

The programs for A049454, the canonical program `A049454.P18198278345640105493` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049454 has offset 0).

The definition of A049454 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049454.P8815511505576337959

`A127473(n)+a(n-1)` with `a(0)=1`
-/

namespace A049454.P8815511505576337959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A127473 n + a (n - 1)

end

end A049454.P8815511505576337959

namespace A049454

/-- `A127473(n)+a(n-1)` -/
def P8815511505576337959.Spec : Prop :=
  ∀ n, P8815511505576337959.a n = A049454 n

end A049454

/-! ## A049454.P7761152716059249883

`∑[A000010(round(acot(n)+n))²]`
-/

namespace A049454.P7761152716059249883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049454.P7761152716059249883

namespace A049454

/-- `∑[A000010(round(acot(n)+n))²]` -/
def P7761152716059249883.Spec : Prop :=
  ∀ n, P7761152716059249883.a n = A049454 n

end A049454

/-! ## A049454.P18198278345640105493

`a(n-1)+A000010(n)²` with `a(0)=1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A049454

/-- `a(n-1)+A000010(n)²` -/
def P18198278345640105493.Spec : Prop :=
  ∀ n, P18198278345640105493.a n = A049454 n

theorem P18198278345640105493.correct : P18198278345640105493.Spec := by
  intro n
  simp only [A049454]

end A049454

/-! ## A049454.P1728333662528050319

`∑[A000010(abs(1-n)+1)²]`
-/

namespace A049454.P1728333662528050319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (|1 - (n : ℤ)| + 1).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049454.P1728333662528050319

namespace A049454

/-- `∑[A000010(abs(1-n)+1)²]` -/
def P1728333662528050319.Spec : Prop :=
  ∀ n, P1728333662528050319.a n = A049454 n

end A049454

/-! ## A049454.P11876785168139030677

`a(n-1)+(A039649(n)-1)²` with `a(0)=1`
-/

namespace A049454.P11876785168139030677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A039649 n - 1) ^ 2

end

end A049454.P11876785168139030677

namespace A049454

/-- `a(n-1)+(A039649(n)-1)²` -/
def P11876785168139030677.Spec : Prop :=
  ∀ n, P11876785168139030677.a n = A049454 n

end A049454

/-! ## A049454.P13094957446074919390

`∑[(A109606(abs(1-n)+1)+1)²]`
-/

namespace A049454.P13094957446074919390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109606 (|1 - (n : ℤ)| + 1).toNat + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049454.P13094957446074919390

namespace A049454

/-- `∑[(A109606(abs(1-n)+1)+1)²]` -/
def P13094957446074919390.Spec : Prop :=
  ∀ n, P13094957446074919390.a n = A049454 n

end A049454

/-! ## A049454.P7074728586426999220

`∑[(A039649(abs(1-n)+1)-1)²]`
-/

namespace A049454.P7074728586426999220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A039649 (|1 - (n : ℤ)| + 1).toNat - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049454.P7074728586426999220

namespace A049454

/-- `∑[(A039649(abs(1-n)+1)-1)²]` -/
def P7074728586426999220.Spec : Prop :=
  ∀ n, P7074728586426999220.a n = A049454 n

end A049454

/-! ## A049454.P15716044150331432506

`∑[A127473(n+1)]+1-A127473(n+1)`
-/

namespace A049454.P15716044150331432506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A127473 (n + 1))

end

end A049454.P15716044150331432506

namespace A049454

/-- `∑[A127473(n+1)]+1-A127473(n+1)` -/
def P15716044150331432506.Spec : Prop :=
  ∀ n, P15716044150331432506.a n = A049454 n

end A049454

/-! ## A049454.P6792378008373283702

`∑[A000010(A253909(n))²/A253909(n)]`
-/

namespace A049454.P6792378008373283702
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A253909 n).toNat ^ 2 : ℚ) / (A253909 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049454.P6792378008373283702

namespace A049454

/-- `∑[A000010(A253909(n))²/A253909(n)]` -/
def P6792378008373283702.Spec : Prop :=
  ∀ n, P6792378008373283702.a n = (A049454 n : ℚ)

end A049454

/-! ## A049454.P12026469477440125554

`∑[A007431(n²)]+1`
-/

namespace A049454.P12026469477440125554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007431 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A049454.P12026469477440125554

namespace A049454

/-- `∑[A007431(n²)]+1` -/
def P12026469477440125554.Spec : Prop :=
  ∀ n, P12026469477440125554.a n = A049454 n

end A049454

/-! ## A049454.P825306893465434888

`A007431(n*n)+a(n-1)` with `a(0)=1`
-/

namespace A049454.P825306893465434888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007431 (n * n) + a (n - 1)

end

end A049454.P825306893465434888

namespace A049454

/-- `A007431(n*n)+a(n-1)` -/
def P825306893465434888.Spec : Prop :=
  ∀ n, P825306893465434888.a n = A049454 n

end A049454

/-! ## A049454.P539778315671042591

`∑[A282634(A152947(n+1))²]`
-/

namespace A049454.P539778315671042591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282634 (A152947 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049454.P539778315671042591

namespace A049454

/-- `∑[A282634(A152947(n+1))²]` -/
def P539778315671042591.Spec : Prop :=
  ∀ n, P539778315671042591.a n = A049454 n

end A049454

/-! ## A049454.P906780159698610630

`∑[A282634(A000124(n)-n)²]`
-/

namespace A049454.P906780159698610630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282634 (A000124 n - (n : ℤ)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049454.P906780159698610630

namespace A049454

/-- `∑[A282634(A000124(n)-n)²]` -/
def P906780159698610630.Spec : Prop :=
  ∀ n, P906780159698610630.a n = A049454 n

end A049454

/-! ## A049454.P3558402503767299741

`∑[A238453(A000124(n))²]`
-/

namespace A049454.P3558402503767299741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238453 (A000124 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049454.P3558402503767299741

namespace A049454

/-- `∑[A238453(A000124(n))²]` -/
def P3558402503767299741.Spec : Prop :=
  ∀ n, P3558402503767299741.a n = A049454 n

end A049454

/-! ## A049454.P3539386570683222680

`∑[A054522(A028310(∑[n]))²]`
-/

namespace A049454.P3539386570683222680
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054522 (A028310 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049454.P3539386570683222680

namespace A049454

/-- `∑[A054522(A028310(∑[n]))²]` -/
def P3539386570683222680.Spec : Prop :=
  ∀ n, P3539386570683222680.a n = A049454 n

end A049454

/-! ## A049454.P17974818082443394556

`∑[A054526(∑[n+3])²]`
-/

namespace A049454.P17974818082443394556
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054526 (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049454.P17974818082443394556

namespace A049454

/-- `∑[A054526(∑[n+3])²]` -/
def P17974818082443394556.Spec : Prop :=
  ∀ n, P17974818082443394556.a n = A049454 n

end A049454

/-! ## A049454.P15342014973805016946

`A074919(n²)+a(n-1)` with `a(0)=1`
-/

namespace A049454.P15342014973805016946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A074919 (n ^ 2) + a (n - 1)

end

end A049454.P15342014973805016946

namespace A049454

/-- `A074919(n²)+a(n-1)` -/
def P15342014973805016946.Spec : Prop :=
  ∀ n, P15342014973805016946.a n = A049454 n

end A049454

/-! ## A049454.P12367842290018344361

`A114810(n²)+a(n-1)` with `a(0)=1`
-/

namespace A049454.P12367842290018344361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A114810 (n ^ 2) + a (n - 1)

end

end A049454.P12367842290018344361

namespace A049454

/-- `A114810(n²)+a(n-1)` -/
def P12367842290018344361.Spec : Prop :=
  ∀ n, P12367842290018344361.a n = A049454 n

end A049454

/-!
# A049455: Triangle read by rows: T(n,k) = numerator of fraction in k-th term of n-th row of variant of Farey series.

The programs for A049455, there is no canonical definition to state claims against.
-/

/-! ## A049455.P8503712452280021413

`A049456(n+1)-A070878(n)`
-/

namespace A049455.P8503712452280021413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049456 (n + 1) - A070878 n

end

end A049455.P8503712452280021413

/-! ## A049455.P5830484563895399210

`A064881(n+1)-A049456(n+1)`
-/

namespace A049455.P5830484563895399210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064881 (n + 1) - A049456 (n + 1)

end

end A049455.P5830484563895399210

/-! ## A049455.P14090194507028810924

`A064883(n+1)-A064881(n+1)`
-/

namespace A049455.P14090194507028810924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064883 (n + 1) - A064881 (n + 1)

end

end A049455.P14090194507028810924

/-! ## A049455.P11571858789624010717

`A064885(n+1)-A064884(n+1)`
-/

namespace A049455.P11571858789624010717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064885 (n + 1) - A064884 (n + 1)

end

end A049455.P11571858789624010717

/-! ## A049455.P13004934651043851182

`A064882(n+1)-2*A070878(n)`
-/

namespace A049455.P13004934651043851182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064882 (n + 1) - 2 * A070878 n

end

end A049455.P13004934651043851182

/-! ## A049455.P9585522175382358600

`(A064881(n+1)-A070878(n))/2`
-/

namespace A049455.P9585522175382358600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064881 (n + 1) - A070878 n : ℚ) / 2

end

end A049455.P9585522175382358600

/-! ## A049455.P3561174856830378917

`2*A049456(n+1)-A064882(n+1)`
-/

namespace A049455.P3561174856830378917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049456 (n + 1) - A064882 (n + 1)

end

end A049455.P3561174856830378917

/-! ## A049455.P14028517785622497992

`A064886(n+1)-2*A049456(n+1)`
-/

namespace A049455.P14028517785622497992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064886 (n + 1) - 2 * A049456 (n + 1)

end

end A049455.P14028517785622497992

/-! ## A049455.P7212486785485156659

`2*A064881(n+1)-A064886(n+1)`
-/

namespace A049455.P7212486785485156659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A064881 (n + 1) - A064886 (n + 1)

end

end A049455.P7212486785485156659

/-! ## A049455.P1640586467327466419

`(A064883(n+1)-A049456(n+1))/2`
-/

namespace A049455.P1640586467327466419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064883 (n + 1) - A049456 (n + 1) : ℚ) / 2

end

end A049455.P1640586467327466419

/-! ## A049455.P9353866579463869968

`(A064886(n+1)-A064882(n+1))/2`
-/

namespace A049455.P9353866579463869968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064886 (n + 1) - A064882 (n + 1) : ℚ) / 2

end

end A049455.P9353866579463869968

/-! ## A049455.P4442233613261747426

`A004277(A049456(n+1))-A064882(n+1)`
-/

namespace A049455.P4442233613261747426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A049456 (n + 1)).toNat - A064882 (n + 1)

end

end A049455.P4442233613261747426

/-! ## A049455.P11962602281951231314

`A049456(n+1)+A064883(n+1)-A064886(n+1)`
-/

namespace A049455.P11962602281951231314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049456 (n + 1) + (A064883 (n + 1) - A064886 (n + 1))

end

end A049455.P11962602281951231314

/-! ## A049455.P4396674334128562797

`A002487(A103354(n+2))-A070878(n)`
-/

namespace A049455.P4396674334128562797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A103354 (n + 2)).toNat - A070878 n

end

end A049455.P4396674334128562797

/-! ## A049455.P14666035432671973176

`A002487(∑[A288132(n+2)]+1)-A070878(n)`
-/

namespace A049455.P14666035432671973176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288132 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat - A070878 n

end

end A049455.P14666035432671973176

/-! ## A049455.P18372279808506519455

`A288003(A088948(n+1))-A070878(n)`
-/

namespace A049455.P18372279808506519455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288003 (A088948 (n + 1)).toNat - A070878 n

end

end A049455.P18372279808506519455

/-! ## A049455.P9593501532902607269

`A295515(A088948(n+1)+1)-A070878(n)`
-/

namespace A049455.P9593501532902607269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295515 (A088948 (n + 1) + 1).toNat - A070878 n

end

end A049455.P9593501532902607269

/-! ## A049455.P17350862857784812588

`A295515(A088948(n+2))-A070878(n)`
-/

namespace A049455.P17350862857784812588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295515 (A088948 (n + 2)).toNat - A070878 n

end

end A049455.P17350862857784812588

/-! ## A049455.P13859664721832885737

`A049456(n+1)+A008683(A019546(n+1))*A070878(n)`
-/

namespace A049455.P13859664721832885737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049456 (n + 1) + A008683 (A019546 (n + 1)).toNat * A070878 n

end

end A049455.P13859664721832885737

/-!
# A049456: Triangle T(n,k) = denominator of fraction in k-th term of n-th row of variant of Farey series. This is also Stern's diatomic array read by rows (version 1).

The programs for A049456, the canonical program `A049456.P5211538082339159720` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049456 has offset 1).

The definition of A049456 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049456.P15453281022567030874

`A070878(n)+A049455(n+1)`
-/

namespace A049456.P15453281022567030874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070878 n + A049455 (n + 1)

end

end A049456.P15453281022567030874

namespace A049456

/-- `A070878(n)+A049455(n+1)` -/
def P15453281022567030874.Spec : Prop :=
  ∀ n, P15453281022567030874.a n = A049456 (n + 1)

end A049456

/-! ## A049456.P8086658873982546468

`A064882(n+1)-A070878(n)`
-/

namespace A049456.P8086658873982546468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064882 (n + 1) - A070878 n

end

end A049456.P8086658873982546468

namespace A049456

/-- `A064882(n+1)-A070878(n)` -/
def P8086658873982546468.Spec : Prop :=
  ∀ n, P8086658873982546468.a n = A049456 (n + 1)

end A049456

/-! ## A049456.P1830134334174368147

`A064881(n+1)-A049455(n+1)`
-/

namespace A049456.P1830134334174368147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064881 (n + 1) - A049455 (n + 1)

end

end A049456.P1830134334174368147

namespace A049456

/-- `A064881(n+1)-A049455(n+1)` -/
def P1830134334174368147.Spec : Prop :=
  ∀ n, P1830134334174368147.a n = A049456 (n + 1)

end A049456

/-! ## A049456.P10027839288663250039

`A064885(n+1)-A064882(n+1)`
-/

namespace A049456.P10027839288663250039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064885 (n + 1) - A064882 (n + 1)

end

end A049456.P10027839288663250039

namespace A049456

/-- `A064885(n+1)-A064882(n+1)` -/
def P10027839288663250039.Spec : Prop :=
  ∀ n, P10027839288663250039.a n = A049456 (n + 1)

end A049456

/-! ## A049456.P9466485649608261113

`A064886(n+1)-A064881(n+1)`
-/

namespace A049456.P9466485649608261113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064886 (n + 1) - A064881 (n + 1)

end

end A049456.P9466485649608261113

namespace A049456

/-- `A064886(n+1)-A064881(n+1)` -/
def P9466485649608261113.Spec : Prop :=
  ∀ n, P9466485649608261113.a n = A049456 (n + 1)

end A049456

/-! ## A049456.P13824151141953106668

`A064884(n+1)-2*A070878(n)`
-/

namespace A049456.P13824151141953106668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064884 (n + 1) - 2 * A070878 n

end

end A049456.P13824151141953106668

namespace A049456

/-- `A064884(n+1)-2*A070878(n)` -/
def P13824151141953106668.Spec : Prop :=
  ∀ n, P13824151141953106668.a n = A049456 (n + 1)

end A049456

/-! ## A049456.P10109129995201539863

`(A070878(n)+A064881(n+1))/2`
-/

namespace A049456.P10109129995201539863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070878 n + A064881 (n + 1) : ℚ) / 2

end

end A049456.P10109129995201539863

namespace A049456

/-- `(A070878(n)+A064881(n+1))/2` -/
def P10109129995201539863.Spec : Prop :=
  ∀ n, P10109129995201539863.a n = (A049456 (n + 1) : ℚ)

end A049456

/-! ## A049456.P9446327231304272699

`(A064882(n+1)+A049455(n+1))/2`
-/

namespace A049456.P9446327231304272699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064882 (n + 1) + A049455 (n + 1) : ℚ) / 2

end

end A049456.P9446327231304272699

namespace A049456

/-- `(A064882(n+1)+A049455(n+1))/2` -/
def P9446327231304272699.Spec : Prop :=
  ∀ n, P9446327231304272699.a n = (A049456 (n + 1) : ℚ)

end A049456

/-! ## A049456.P12611707633278278141

`A064883(n+1)-2*A049455(n+1)`
-/

namespace A049456.P12611707633278278141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064883 (n + 1) - 2 * A049455 (n + 1)

end

end A049456.P12611707633278278141

namespace A049456

/-- `A064883(n+1)-2*A049455(n+1)` -/
def P12611707633278278141.Spec : Prop :=
  ∀ n, P12611707633278278141.a n = A049456 (n + 1)

end A049456

/-! ## A049456.P15871117937380837313

`2*A064881(n+1)-A064883(n+1)`
-/

namespace A049456.P15871117937380837313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A064881 (n + 1) - A064883 (n + 1)

end

end A049456.P15871117937380837313

namespace A049456

/-- `2*A064881(n+1)-A064883(n+1)` -/
def P15871117937380837313.Spec : Prop :=
  ∀ n, P15871117937380837313.a n = A049456 (n + 1)

end A049456

/-! ## A049456.P1402788616659788143

`2*A064882(n+1)-A064884(n+1)`
-/

namespace A049456.P1402788616659788143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A064882 (n + 1) - A064884 (n + 1)

end

end A049456.P1402788616659788143

namespace A049456

/-- `2*A064882(n+1)-A064884(n+1)` -/
def P1402788616659788143.Spec : Prop :=
  ∀ n, P1402788616659788143.a n = A049456 (n + 1)

end A049456

/-! ## A049456.P1162156962578754340

`(A064886(n+1)-A049455(n+1))/2`
-/

namespace A049456.P1162156962578754340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064886 (n + 1) - A049455 (n + 1) : ℚ) / 2

end

end A049456.P1162156962578754340

namespace A049456

/-- `(A064886(n+1)-A049455(n+1))/2` -/
def P1162156962578754340.Spec : Prop :=
  ∀ n, P1162156962578754340.a n = (A049456 (n + 1) : ℚ)

end A049456

/-! ## A049456.P13540919885816224373

`A064882(n+1)+A064883(n+1)-A064886(n+1)`
-/

namespace A049456.P13540919885816224373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064882 (n + 1) + (A064883 (n + 1) - A064886 (n + 1))

end

end A049456.P13540919885816224373

namespace A049456

/-- `A064882(n+1)+A064883(n+1)-A064886(n+1)` -/
def P13540919885816224373.Spec : Prop :=
  ∀ n, P13540919885816224373.a n = A049456 (n + 1)

end A049456

/-! ## A049456.P5211538082339159720

`A002487(A103354(n+2))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A049456

/-- `A002487(A103354(n+2))` -/
def P5211538082339159720.Spec : Prop :=
  ∀ n, P5211538082339159720.a n = A049456 (n + 1)

theorem P5211538082339159720.correct : P5211538082339159720.Spec := by
  intro n
  simp only [A049456, Nat.add_sub_cancel]

end A049456

/-! ## A049456.P11747839271235464919

`A002487(∑[A288132(n+2)]+1)`
-/

namespace A049456.P11747839271235464919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288132 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A049456.P11747839271235464919

namespace A049456

/-- `A002487(∑[A288132(n+2)]+1)` -/
def P11747839271235464919.Spec : Prop :=
  ∀ n, P11747839271235464919.a n = A049456 (n + 1)

end A049456

/-! ## A049456.P21684365239527285

`A288003(A088948(n+1))`
-/

namespace A049456.P21684365239527285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288003 (A088948 (n + 1)).toNat

end

end A049456.P21684365239527285

namespace A049456

/-- `A288003(A088948(n+1))` -/
def P21684365239527285.Spec : Prop :=
  ∀ n, P21684365239527285.a n = A049456 (n + 1)

end A049456

/-! ## A049456.P1921748776142458026

`A295515(A088948(n+1)+1)`
-/

namespace A049456.P1921748776142458026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295515 (A088948 (n + 1) + 1).toNat

end

end A049456.P1921748776142458026

namespace A049456

/-- `A295515(A088948(n+1)+1)` -/
def P1921748776142458026.Spec : Prop :=
  ∀ n, P1921748776142458026.a n = A049456 (n + 1)

end A049456

/-! ## A049456.P11027222546313277486

`A295515(A088948(n+2))`
-/

namespace A049456.P11027222546313277486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295515 (A088948 (n + 2)).toNat

end

end A049456.P11027222546313277486

namespace A049456

/-- `A295515(A088948(n+2))` -/
def P11027222546313277486.Spec : Prop :=
  ∀ n, P11027222546313277486.a n = A049456 (n + 1)

end A049456

/-!
# A049457: Least positive integer k such that the number having periodic continued fraction [ 1,m,1,m,1,m,... ] is of form (a+b*sqrt(k))/c, where a,b,c are positive integers.

The programs for A049457, the canonical program `A049457.P8150701209677912842` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049457 has offset 1).

The definition of A049457 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049457.P8150701209677912842

`A007913((n+1)²+4*(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A049457

/-- `A007913((n+1)²+4*(n+1))` -/
def P8150701209677912842.Spec : Prop :=
  ∀ n, P8150701209677912842.a n = A049457 (n + 1)

theorem P8150701209677912842.correct : P8150701209677912842.Spec := by
  intro n
  simp only [A049457, Nat.add_sub_cancel]

end A049457

/-! ## A049457.P12253503886500926101

`A007913(A070262(n+1))%A045533(n+1)`
-/

namespace A049457.P12253503886500926101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007913 (A070262 (n + 1)).toNat) (A045533 (n + 1))

end

end A049457.P12253503886500926101

namespace A049457

/-- `A007913(A070262(n+1))%A045533(n+1)` -/
def P12253503886500926101.Spec : Prop :=
  ∀ n, P12253503886500926101.a n = A049457 (n + 1)

end A049457

/-! ## A049457.P16864443052818608469

`A007913(A070262(n+1))/A007913(A007913(n+1)²)`
-/

namespace A049457.P16864443052818608469
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007913 (A070262 (n + 1)).toNat : ℚ) / (A007913 (A007913 (n + 1) ^ 2).toNat : ℚ)

end

end A049457.P16864443052818608469

namespace A049457

/-- `A007913(A070262(n+1))/A007913(A007913(n+1)²)` -/
def P16864443052818608469.Spec : Prop :=
  ∀ n, P16864443052818608469.a n = (A049457 (n + 1) : ℚ)

end A049457

/-! ## A049457.P5921169953471505081

`A226693(A047838(n+2))`
-/

namespace A049457.P5921169953471505081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226693 (A047838 (n + 2)).toNat

end

end A049457.P5921169953471505081

namespace A049457

/-- `A226693(A047838(n+2))` -/
def P5921169953471505081.Spec : Prop :=
  ∀ n, P5921169953471505081.a n = A049457 (n + 1)

end A049457

/-! ## A049457.P15564704598429572158

`sqrt(A055491((n+3)²-4))`
-/

namespace A049457.P15564704598429572158
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A055491 ((n + 3) ^ 2 - 4) : ℝ)

end

end A049457.P15564704598429572158

namespace A049457

/-- `sqrt(A055491((n+3)²-4))` -/
def P15564704598429572158.Spec : Prop :=
  ∀ n, P15564704598429572158.a n = (A049457 (n + 1) : ℝ)

end A049457

/-! ## A049457.P17594849392918404714

`A002734((n+2)²+n-1)`
-/

namespace A049457.P17594849392918404714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002734 (((n + 2) ^ 2 : ℤ) + ((n : ℤ) - 1)).toNat

end

end A049457.P17594849392918404714

namespace A049457

/-- `A002734((n+2)²+n-1)` -/
def P17594849392918404714.Spec : Prop :=
  ∀ n, P17594849392918404714.a n = A049457 (n + 1)

end A049457

/-!
# A049458: Generalized Stirling number triangle of first kind read by rows: T(n, k) = [x^k] Product_{m=1..n} (x - m - r), with r = 2.

The programs for A049458, the canonical program `A049458.P4114736529831879766` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049458 has offset 0).

The definition of A049458 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049458.P4114736529831879766

`T(n-1,k-1)-(row(n)+2)*T(n-1,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049458

/-- `T(n-1,k-1)-(row(n)+2)*T(n-1,k)` -/
def P4114736529831879766.Spec : Prop :=
  ∀ n, P4114736529831879766.a n = A049458 n

theorem P4114736529831879766.correct : P4114736529831879766.Spec := by
  intro n
  simp only [A049458]

end A049458

/-! ## A049458.P14829104790848757840

`A097807(n)*A143492(n+3)`
-/

namespace A049458.P14829104790848757840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A143492 (n + 3)

end

end A049458.P14829104790848757840

namespace A049458

/-- `A097807(n)*A143492(n+3)` -/
def P14829104790848757840.Spec : Prop :=
  ∀ n, P14829104790848757840.a n = A049458 n

end A049458

/-! ## A049458.P1819613124199267971

`A033999(A025581(n))*A143492(n+3)`
-/

namespace A049458.P1819613124199267971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A025581 n).toNat * A143492 (n + 3)

end

end A049458.P1819613124199267971

namespace A049458

/-- `A033999(A025581(n))*A143492(n+3)` -/
def P1819613124199267971.Spec : Prop :=
  ∀ n, P1819613124199267971.a n = A049458 n

end A049458

/-! ## A049458.P3850937371299756512

`A033999(A051162(n))*A143492(n+3)`
-/

namespace A049458.P3850937371299756512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A051162 n).toNat * A143492 (n + 3)

end

end A049458.P3850937371299756512

namespace A049458

/-- `A033999(A051162(n))*A143492(n+3)` -/
def P3850937371299756512.Spec : Prop :=
  ∀ n, P3850937371299756512.a n = A049458 n

end A049458

/-! ## A049458.P10107971554703867566

`A033999(A051933(n))*A143492(n+3)`
-/

namespace A049458.P10107971554703867566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A051933 n).toNat * A143492 (n + 3)

end

end A049458.P10107971554703867566

namespace A049458

/-- `A033999(A051933(n))*A143492(n+3)` -/
def P10107971554703867566.Spec : Prop :=
  ∀ n, P10107971554703867566.a n = A049458 n

end A049458

/-! ## A049458.P1877027679541231751

`A033999(A063656(n))*A143492(n+3)`
-/

namespace A049458.P1877027679541231751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A063656 n).toNat * A143492 (n + 3)

end

end A049458.P1877027679541231751

namespace A049458

/-- `A033999(A063656(n))*A143492(n+3)` -/
def P1877027679541231751.Spec : Prop :=
  ∀ n, P1877027679541231751.a n = A049458 n

end A049458

/-! ## A049458.P14424773975967807054

`A009531(A099375(n))*A143492(n+3)`
-/

namespace A049458.P14424773975967807054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A099375 n).toNat * A143492 (n + 3)

end

end A049458.P14424773975967807054

namespace A049458

/-- `A009531(A099375(n))*A143492(n+3)` -/
def P14424773975967807054.Spec : Prop :=
  ∀ n, P14424773975967807054.a n = A049458 n

end A049458

/-! ## A049458.P11968718727553844528

`A062157(A004736(n+1))*A143492(n+3)`
-/

namespace A049458.P11968718727553844528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A004736 (n + 1)).toNat * A143492 (n + 3)

end

end A049458.P11968718727553844528

namespace A049458

/-- `A062157(A004736(n+1))*A143492(n+3)` -/
def P11968718727553844528.Spec : Prop :=
  ∀ n, P11968718727553844528.a n = A049458 n

end A049458

/-! ## A049458.P18249653023678618250

`A143492(n+3)/A097807(A014132(n+1))`
-/

namespace A049458.P18249653023678618250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143492 (n + 3) : ℚ) / (A097807 (A014132 (n + 1)).toNat : ℚ)

end

end A049458.P18249653023678618250

namespace A049458

/-- `A143492(n+3)/A097807(A014132(n+1))` -/
def P18249653023678618250.Spec : Prop :=
  ∀ n, P18249653023678618250.a n = (A049458 n : ℚ)

end A049458

/-! ## A049458.P8947570922379686718

`A097807(n)*A196845(A061579(n))`
-/

namespace A049458.P8947570922379686718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A196845 (A061579 n).toNat

end

end A049458.P8947570922379686718

namespace A049458

/-- `A097807(n)*A196845(A061579(n))` -/
def P8947570922379686718.Spec : Prop :=
  ∀ n, P8947570922379686718.a n = A049458 n

end A049458

/-! ## A049458.P6560401220259473647

`A008836(A130321(n))*A143492(n+3)`
-/

namespace A049458.P6560401220259473647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A130321 n).toNat * A143492 (n + 3)

end

end A049458.P6560401220259473647

namespace A049458

/-- `A008836(A130321(n))*A143492(n+3)` -/
def P6560401220259473647.Spec : Prop :=
  ∀ n, P6560401220259473647.a n = A049458 n

end A049458

/-!
# A049459: Generalized Stirling number triangle of first kind read by rows: T(n, k) = [x^k] Product_{m=1..n} (x - m - r), with r = 3.

The programs for A049459, the canonical program `A049459.P7162828418170219848` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049459 has offset 0).

The definition of A049459 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049459.P7162828418170219848

`T(n-1,k-1)-(row(n)+3)*T(n-1,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049459

/-- `T(n-1,k-1)-(row(n)+3)*T(n-1,k)` -/
def P7162828418170219848.Spec : Prop :=
  ∀ n, P7162828418170219848.a n = A049459 n

theorem P7162828418170219848.correct : P7162828418170219848.Spec := by
  intro n
  simp only [A049459]

end A049459

/-! ## A049459.P7217622119510383486

`A097807(n)*A143493(n+4)`
-/

namespace A049459.P7217622119510383486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A143493 (n + 4)

end

end A049459.P7217622119510383486

namespace A049459

/-- `A097807(n)*A143493(n+4)` -/
def P7217622119510383486.Spec : Prop :=
  ∀ n, P7217622119510383486.a n = A049459 n

end A049459

/-! ## A049459.P3229574981834696216

`A009531(A099375(n))*A143493(n+4)`
-/

namespace A049459.P3229574981834696216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A099375 n).toNat * A143493 (n + 4)

end

end A049459.P3229574981834696216

namespace A049459

/-- `A009531(A099375(n))*A143493(n+4)` -/
def P3229574981834696216.Spec : Prop :=
  ∀ n, P3229574981834696216.a n = A049459 n

end A049459

/-! ## A049459.P7475908898500991105

`A062157(A004736(n+1))*A143493(n+4)`
-/

namespace A049459.P7475908898500991105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A004736 (n + 1)).toNat * A143493 (n + 4)

end

end A049459.P7475908898500991105

namespace A049459

/-- `A062157(A004736(n+1))*A143493(n+4)` -/
def P7475908898500991105.Spec : Prop :=
  ∀ n, P7475908898500991105.a n = A049459 n

end A049459

/-! ## A049459.P12551918306253572721

`A033999(A108872(n+1))*A143493(n+4)`
-/

namespace A049459.P12551918306253572721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A108872 (n + 1)).toNat * A143493 (n + 4)

end

end A049459.P12551918306253572721

namespace A049459

/-- `A033999(A108872(n+1))*A143493(n+4)` -/
def P12551918306253572721.Spec : Prop :=
  ∀ n, P12551918306253572721.a n = A049459 n

end A049459

/-! ## A049459.P4025997365687233695

`A117568(A185871(n+1))*A143493(n+4)`
-/

namespace A049459.P4025997365687233695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117568 (A185871 (n + 1)).toNat * A143493 (n + 4)

end

end A049459.P4025997365687233695

namespace A049459

/-- `A117568(A185871(n+1))*A143493(n+4)` -/
def P4025997365687233695.Spec : Prop :=
  ∀ n, P4025997365687233695.a n = A049459 n

end A049459

/-! ## A049459.P10951642619897958303

`A143492(n+3)/A049458(n)*A143493(n+4)`
-/

namespace A049459.P10951642619897958303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143492 (n + 3) : ℚ) / (A049458 n : ℚ) * (A143493 (n + 4) : ℚ)

end

end A049459.P10951642619897958303

namespace A049459

/-- `A143492(n+3)/A049458(n)*A143493(n+4)` -/
def P10951642619897958303.Spec : Prop :=
  ∀ n, P10951642619897958303.a n = (A049459 n : ℚ)

end A049459

/-! ## A049459.P17914368986068215321

`A029883(A130330(n))*A143493(n+4)`
-/

namespace A049459.P17914368986068215321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029883 (A130330 n).toNat * A143493 (n + 4)

end

end A049459.P17914368986068215321

namespace A049459

/-- `A029883(A130330(n))*A143493(n+4)` -/
def P17914368986068215321.Spec : Prop :=
  ∀ n, P17914368986068215321.a n = A049459 n

end A049459

/-!
# A049460: Generalized Stirling number triangle of first kind read by rows: T(n, k) = [x^k] Product_{m=1..n} (x - m - r), with r = 4.

The programs for A049460, the canonical program `A049460.P13241689364201878870` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049460 has offset 0).

The definition of A049460 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049460.P13241689364201878870

`T(n-1,k-1)-(row(n)+4)*T(n-1,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049460

/-- `T(n-1,k-1)-(row(n)+4)*T(n-1,k)` -/
def P13241689364201878870.Spec : Prop :=
  ∀ n, P13241689364201878870.a n = A049460 n

theorem P13241689364201878870.correct : P13241689364201878870.Spec := by
  intro n
  simp only [A049460]

end A049460

/-!
# A049461: Number of equivalence classes of self-dual Boolean functions of n variables under action of LSD(n,2).

The programs for A049461, there is no canonical definition to state claims against.
-/

/-! ## A049461.P15788917977444429197

`A000214(n+1)-A053037(n+1)`
-/

namespace A049461.P15788917977444429197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000214 (n + 1) - A053037 (n + 1)

end

end A049461.P15788917977444429197

/-! ## A049461.P10998479350998259119

`2*(A000214(n+1)-A000614(n+1))`
-/

namespace A049461.P10998479350998259119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000214 (n + 1) - A000614 (n + 1))

end

end A049461.P10998479350998259119

/-!
# A049463: Number of basic interval orders of length n.

The programs for A049463, there is no canonical definition to state claims against.
-/

/-! ## A049463.P11145889746606806555

`A071542(A329113(n)-n)`
-/

namespace A049463.P11145889746606806555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071542 (A329113 n - (n : ℤ)).toNat

end

end A049463.P11145889746606806555

/-! ## A049463.P6210192069813624911

`A316854(A080855(n+1)+1)`
-/

namespace A049463.P6210192069813624911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316854 (A080855 (n + 1) + 1).toNat

end

end A049463.P6210192069813624911

/-!
# A049464: Number of n-photon quenched skeletons.

The programs for A049464, there is no canonical definition to state claims against.
-/

/-! ## A049464.P7829939596395827959

`A286800(A008620(n²))`
-/

namespace A049464.P7829939596395827959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286800 (A008620 (n ^ 2)).toNat

end

end A049464.P7829939596395827959

/-! ## A049464.P12676531194880707974

`A286800(A000212(n)+1)`
-/

namespace A049464.P12676531194880707974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286800 (A000212 n + 1).toNat

end

end A049464.P12676531194880707974

/-! ## A049464.P8843711547379554521

`A286800(A014591(2*n))`
-/

namespace A049464.P8843711547379554521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286800 (A014591 (2 * n)).toNat

end

end A049464.P8843711547379554521

/-! ## A049464.P2613504149985756186

`A286800(A103221(2*n²))`
-/

namespace A049464.P2613504149985756186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286800 (A103221 (2 * n ^ 2)).toNat

end

end A049464.P2613504149985756186

/-! ## A049464.P12968237364938541142

`A286800(A014591(n)+A002620(n))`
-/

namespace A049464.P12968237364938541142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286800 (A014591 n + A002620 n).toNat

end

end A049464.P12968237364938541142

/-!
# A049465: Replace each fraction p/q in Farey tree A007305/A007306 with 2p + q.

The programs for A049465, the canonical program `A049465.P10062401916254781799` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049465 has offset 0).

The definition of A049465 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049465.P10062401916254781799

`A049448(n)+A007305(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A049465

/-- `A049448(n)+A007305(n)` -/
def P10062401916254781799.Spec : Prop :=
  ∀ n, P10062401916254781799.a n = A049465 n

theorem P10062401916254781799.correct : P10062401916254781799.Spec := by
  intro n
  simp only [A049465]

end A049465

/-! ## A049465.P8884717263451275484

`A049466(n)-A007305(n)`
-/

namespace A049465.P8884717263451275484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049466 n - A007305 n

end

end A049465.P8884717263451275484

namespace A049465

/-- `A049466(n)-A007305(n)` -/
def P8884717263451275484.Spec : Prop :=
  ∀ n, P8884717263451275484.a n = A049465 n

theorem P8884717263451275484.correct : P8884717263451275484.Spec := by
  intro n
  simp only [A049465, Nat.add_sub_cancel, A049465.P8884717263451275484.a, A049465.P10062401916254781799.a, A007305, A007305.P14904390197358887400.a, A049448, A049448.P1299469161137968042.a, A049466, A049466.P3280888729849273153.a, A004761, A004761.P12493427440050159717.f1, A004761.P12493427440050159717.f2, A004761.P12493427440050159717.a, A007306, A007306.P17183682227013142410.a, A003602, A003602.P7612175048291952394.a, A110963, A110963.P3344771894533151408.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049465

/-! ## A049465.P7319766272683129686

`A007306(n)+2*A007305(n)`
-/

namespace A049465.P7319766272683129686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 n + 2 * A007305 n

end

end A049465.P7319766272683129686

namespace A049465

/-- `A007306(n)+2*A007305(n)` -/
def P7319766272683129686.Spec : Prop :=
  ∀ n, P7319766272683129686.a n = A049465 n

theorem P7319766272683129686.correct : P7319766272683129686.Spec := by
  intro n
  simp only [A049465, Nat.add_sub_cancel, A049465.P7319766272683129686.a, A049465.P10062401916254781799.a, A007305, A007305.P14904390197358887400.a, A007306, A007306.P17183682227013142410.a, A049448, A049448.P1299469161137968042.a, A003602, A003602.P7612175048291952394.a, A004761, A004761.P12493427440050159717.f1, A004761.P12493427440050159717.f2, A004761.P12493427440050159717.a, A110963, A110963.P3344771894533151408.a, A025480, A025480.P15873863116418380882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049465

/-! ## A049465.P2649170642132480893

`2*A049448(n)-A007306(n)`
-/

namespace A049465.P2649170642132480893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049448 n - A007306 n

end

end A049465.P2649170642132480893

namespace A049465

/-- `2*A049448(n)-A007306(n)` -/
def P2649170642132480893.Spec : Prop :=
  ∀ n, P2649170642132480893.a n = A049465 n

theorem P2649170642132480893.correct : P2649170642132480893.Spec := by
  intro n
  simp only [A049465, Nat.add_sub_cancel, A049465.P2649170642132480893.a, A049465.P10062401916254781799.a, A007305, A007305.P14904390197358887400.a, A007306, A007306.P17183682227013142410.a, A049448, A049448.P1299469161137968042.a, A003602, A003602.P7612175048291952394.a, A004761, A004761.P12493427440050159717.f1, A004761.P12493427440050159717.f2, A004761.P12493427440050159717.a, A110963, A110963.P3344771894533151408.a, A025480, A025480.P15873863116418380882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049465

/-! ## A049465.P16390293059576195742

`A049467(n)-2*A007305(n)`
-/

namespace A049465.P16390293059576195742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049467 n - 2 * A007305 n

end

end A049465.P16390293059576195742

namespace A049465

/-- `A049467(n)-2*A007305(n)` -/
def P16390293059576195742.Spec : Prop :=
  ∀ n, P16390293059576195742.a n = A049465 n

theorem P16390293059576195742.correct : P16390293059576195742.Spec := by
  intro n
  simp only [A049465, Nat.add_sub_cancel, A049465.P16390293059576195742.a, A049465.P10062401916254781799.a, A007305, A007305.P14904390197358887400.a, A049448, A049448.P1299469161137968042.a, A049467, A049467.P18232101049590991763.a, A004761, A004761.P12493427440050159717.f1, A004761.P12493427440050159717.f2, A004761.P12493427440050159717.a, A007306, A007306.P17183682227013142410.a, A049466, A049466.P3280888729849273153.a, A003602, A003602.P7612175048291952394.a, A110963, A110963.P3344771894533151408.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049465

/-! ## A049465.P14038242695411972158

`(A049467(n)+A007306(n))/2`
-/

namespace A049465.P14038242695411972158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049467 n + A007306 n : ℚ) / 2

end

end A049465.P14038242695411972158

namespace A049465

/-- `(A049467(n)+A007306(n))/2` -/
def P14038242695411972158.Spec : Prop :=
  ∀ n, P14038242695411972158.a n = (A049465 n : ℚ)

theorem P14038242695411972158.correct : P14038242695411972158.Spec := by
  intro n
  simp only [A049465, Nat.add_sub_cancel, A049465.P14038242695411972158.a, A049465.P10062401916254781799.a, A007305, A007305.P14904390197358887400.a, A007306, A007306.P17183682227013142410.a, A049448, A049448.P1299469161137968042.a, A049467, A049467.P18232101049590991763.a, A003602, A003602.P7612175048291952394.a, A004761, A004761.P12493427440050159717.f1, A004761.P12493427440050159717.f2, A004761.P12493427440050159717.a, A049466, A049466.P3280888729849273153.a, A110963, A110963.P3344771894533151408.a, A025480, A025480.P15873863116418380882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049465

/-! ## A049465.P2042845958178745182

`(A049466(n)+A049448(n))/2`
-/

namespace A049465.P2042845958178745182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049466 n + A049448 n : ℚ) / 2

end

end A049465.P2042845958178745182

namespace A049465

/-- `(A049466(n)+A049448(n))/2` -/
def P2042845958178745182.Spec : Prop :=
  ∀ n, P2042845958178745182.a n = (A049465 n : ℚ)

theorem P2042845958178745182.correct : P2042845958178745182.Spec := by
  intro n
  simp only [A049465, Nat.add_sub_cancel, A049465.P2042845958178745182.a, A049465.P10062401916254781799.a, A007305, A007305.P14904390197358887400.a, A049448, A049448.P1299469161137968042.a, A049466, A049466.P3280888729849273153.a, A004761, A004761.P12493427440050159717.f1, A004761.P12493427440050159717.f2, A004761.P12493427440050159717.a, A007306, A007306.P17183682227013142410.a, A003602, A003602.P7612175048291952394.a, A110963, A110963.P3344771894533151408.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049465

/-! ## A049465.P16593483475677000632

`2*A049466(n)-A049467(n)`
-/

namespace A049465.P16593483475677000632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049466 n - A049467 n

end

end A049465.P16593483475677000632

namespace A049465

/-- `2*A049466(n)-A049467(n)` -/
def P16593483475677000632.Spec : Prop :=
  ∀ n, P16593483475677000632.a n = A049465 n

theorem P16593483475677000632.correct : P16593483475677000632.Spec := by
  intro n
  simp only [A049465, Nat.add_sub_cancel, A049465.P16593483475677000632.a, A049465.P10062401916254781799.a, A007305, A007305.P14904390197358887400.a, A049448, A049448.P1299469161137968042.a, A049466, A049466.P3280888729849273153.a, A049467, A049467.P18232101049590991763.a, A004761, A004761.P12493427440050159717.f1, A004761.P12493427440050159717.f2, A004761.P12493427440050159717.a, A007306, A007306.P17183682227013142410.a, A003602, A003602.P7612175048291952394.a, A110963, A110963.P3344771894533151408.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049465

/-! ## A049465.P2401699618021585328

`A007306(n)+A005843(A007305(n))`
-/

namespace A049465.P2401699618021585328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 n + A005843 (A007305 n).toNat

end

end A049465.P2401699618021585328

namespace A049465

/-- `A007306(n)+A005843(A007305(n))` -/
def P2401699618021585328.Spec : Prop :=
  ∀ n, P2401699618021585328.a n = A049465 n

end A049465

/-! ## A049465.P15356269112242020172

`A001281(A049466(n)+A049448(n))`
-/

namespace A049465.P15356269112242020172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A049466 n + A049448 n).toNat

end

end A049465.P15356269112242020172

namespace A049465

/-- `A001281(A049466(n)+A049448(n))` -/
def P15356269112242020172.Spec : Prop :=
  ∀ n, P15356269112242020172.a n = A049465 n

end A049465

/-! ## A049465.P4706347654803905054

`A004526(A049466(n)+A049448(n))`
-/

namespace A049465.P4706347654803905054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A049466 n + A049448 n).toNat

end

end A049465.P4706347654803905054

namespace A049465

/-- `A004526(A049466(n)+A049448(n))` -/
def P4706347654803905054.Spec : Prop :=
  ∀ n, P4706347654803905054.a n = A049465 n

end A049465

/-! ## A049465.P15759707065070351468

`A025480(A049466(n)+A049448(n))`
-/

namespace A049465.P15759707065070351468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A049466 n + A049448 n).toNat

end

end A049465.P15759707065070351468

namespace A049465

/-- `A025480(A049466(n)+A049448(n))` -/
def P15759707065070351468.Spec : Prop :=
  ∀ n, P15759707065070351468.a n = A049465 n

end A049465

/-! ## A049465.P14588690248993399664

`A004277(A049448(n))-A007306(n)`
-/

namespace A049465.P14588690248993399664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A049448 n).toNat - A007306 n

end

end A049465.P14588690248993399664

namespace A049465

/-- `A004277(A049448(n))-A007306(n)` -/
def P14588690248993399664.Spec : Prop :=
  ∀ n, P14588690248993399664.a n = A049465 n

end A049465

/-! ## A049465.P1082964272775739908

`A007305(n)+A049468(n)-A007306(n)`
-/

namespace A049465.P1082964272775739908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007305 n + (A049468 n - A007306 n)

end

end A049465.P1082964272775739908

namespace A049465

/-- `A007305(n)+A049468(n)-A007306(n)` -/
def P1082964272775739908.Spec : Prop :=
  ∀ n, P1082964272775739908.a n = A049465 n

theorem P1082964272775739908.correct : P1082964272775739908.Spec := by
  intro n
  simp only [A049465, Nat.add_sub_cancel, A049465.P1082964272775739908.a, A049465.P10062401916254781799.a, A007305, A007305.P14904390197358887400.a, A007306, A007306.P17183682227013142410.a, A049448, A049448.P1299469161137968042.a, A049468, A049468.P14759900804743389918.a, A003602, A003602.P7612175048291952394.a, A004761, A004761.P12493427440050159717.f1, A004761.P12493427440050159717.f2, A004761.P12493427440050159717.a, A110963, A110963.P3344771894533151408.a, A025480, A025480.P15873863116418380882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049465

/-! ## A049465.P4722463903262712196

`A049448(n)+A049449(n)/A007306(n)`
-/

namespace A049465.P4722463903262712196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049448 n : ℚ) + (A049449 n : ℚ) / (A007306 n : ℚ)

end

end A049465.P4722463903262712196

namespace A049465

/-- `A049448(n)+A049449(n)/A007306(n)` -/
def P4722463903262712196.Spec : Prop :=
  ∀ n, P4722463903262712196.a n = (A049465 n : ℚ)

end A049465

/-! ## A049465.P12992173680771811560

`A049466(n)-A004526(A049466(n)-A049448(n))`
-/

namespace A049465.P12992173680771811560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049466 n - A004526 (A049466 n - A049448 n).toNat

end

end A049465.P12992173680771811560

namespace A049465

/-- `A049466(n)-A004526(A049466(n)-A049448(n))` -/
def P12992173680771811560.Spec : Prop :=
  ∀ n, P12992173680771811560.a n = A049465 n

end A049465

/-! ## A049465.P2000500122371847359

`A049466(n)-A025480(A049466(n)-A049448(n))`
-/

namespace A049465.P2000500122371847359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049466 n - A025480 (A049466 n - A049448 n).toNat

end

end A049465.P2000500122371847359

namespace A049465

/-- `A049466(n)-A025480(A049466(n)-A049448(n))` -/
def P2000500122371847359.Spec : Prop :=
  ∀ n, P2000500122371847359.a n = A049465 n

end A049465

/-! ## A049465.P13242110669819952800

`A057431(2*n)+A049448(n)`
-/

namespace A049465.P13242110669819952800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057431 (2 * n) + A049448 n

end

end A049465.P13242110669819952800

namespace A049465

/-- `A057431(2*n)+A049448(n)` -/
def P13242110669819952800.Spec : Prop :=
  ∀ n, P13242110669819952800.a n = A049465 n

end A049465

/-! ## A049465.P8859991740994847213

`A049466(n)-A057431(2*n)`
-/

namespace A049465.P8859991740994847213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049466 n - A057431 (2 * n)

end

end A049465.P8859991740994847213

namespace A049465

/-- `A049466(n)-A057431(2*n)` -/
def P8859991740994847213.Spec : Prop :=
  ∀ n, P8859991740994847213.a n = A049465 n

end A049465

/-! ## A049465.P11339900890077273199

`2*A049448(n)-A002487(A004280(n+1))`
-/

namespace A049465.P11339900890077273199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049448 n - A002487 (A004280 (n + 1)).toNat

end

end A049465.P11339900890077273199

namespace A049465

/-- `2*A049448(n)-A002487(A004280(n+1))` -/
def P11339900890077273199.Spec : Prop :=
  ∀ n, P11339900890077273199.a n = A049465 n

end A049465

/-!
# A049466: Replace each fraction p/q in Farey tree A007305/A007306 with 3p+q.

The programs for A049466, the canonical program `A049466.P3280888729849273153` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049466 has offset 0).

The definition of A049466 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049466.P3280888729849273153

`A049465(n)+A007305(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A049466

/-- `A049465(n)+A007305(n)` -/
def P3280888729849273153.Spec : Prop :=
  ∀ n, P3280888729849273153.a n = A049466 n

theorem P3280888729849273153.correct : P3280888729849273153.Spec := by
  intro n
  simp only [A049466]

end A049466

/-! ## A049466.P8193160495533001292

`A049467(n)-A007305(n)`
-/

namespace A049466.P8193160495533001292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049467 n - A007305 n

end

end A049466.P8193160495533001292

namespace A049466

/-- `A049467(n)-A007305(n)` -/
def P8193160495533001292.Spec : Prop :=
  ∀ n, P8193160495533001292.a n = A049466 n

theorem P8193160495533001292.correct : P8193160495533001292.Spec := by
  intro n
  simp only [A049466, Nat.add_sub_cancel, A049466.P8193160495533001292.a, A049466.P3280888729849273153.a, A007305, A007305.P14904390197358887400.a, A049465, A049465.P10062401916254781799.a, A049467, A049467.P18232101049590991763.a, A004761, A004761.P12493427440050159717.f1, A004761.P12493427440050159717.f2, A004761.P12493427440050159717.a, A007306, A007306.P17183682227013142410.a, A049448, A049448.P1299469161137968042.a, A003602, A003602.P7612175048291952394.a, A110963, A110963.P3344771894533151408.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049466

/-! ## A049466.P2407052547548582855

`A049448(n)+2*A007305(n)`
-/

namespace A049466.P2407052547548582855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049448 n + 2 * A007305 n

end

end A049466.P2407052547548582855

namespace A049466

/-- `A049448(n)+2*A007305(n)` -/
def P2407052547548582855.Spec : Prop :=
  ∀ n, P2407052547548582855.a n = A049466 n

theorem P2407052547548582855.correct : P2407052547548582855.Spec := by
  intro n
  simp only [A049466, Nat.add_sub_cancel, A049466.P2407052547548582855.a, A049466.P3280888729849273153.a, A007305, A007305.P14904390197358887400.a, A049448, A049448.P1299469161137968042.a, A049465, A049465.P10062401916254781799.a, A004761, A004761.P12493427440050159717.f1, A004761.P12493427440050159717.f2, A004761.P12493427440050159717.a, A007306, A007306.P17183682227013142410.a, A003602, A003602.P7612175048291952394.a, A110963, A110963.P3344771894533151408.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049466

/-! ## A049466.P5124251916754571029

`A007306(n)+3*A007305(n)`
-/

namespace A049466.P5124251916754571029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 n + 3 * A007305 n

end

end A049466.P5124251916754571029

namespace A049466

/-- `A007306(n)+3*A007305(n)` -/
def P5124251916754571029.Spec : Prop :=
  ∀ n, P5124251916754571029.a n = A049466 n

theorem P5124251916754571029.correct : P5124251916754571029.Spec := by
  intro n
  simp only [A049466, Nat.add_sub_cancel, A049466.P5124251916754571029.a, A049466.P3280888729849273153.a, A007305, A007305.P14904390197358887400.a, A007306, A007306.P17183682227013142410.a, A049465, A049465.P10062401916254781799.a, A003602, A003602.P7612175048291952394.a, A004761, A004761.P12493427440050159717.f1, A004761.P12493427440050159717.f2, A004761.P12493427440050159717.a, A049448, A049448.P1299469161137968042.a, A110963, A110963.P3344771894533151408.a, A025480, A025480.P15873863116418380882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049466

/-! ## A049466.P17560597883630093741

`2*A049465(n)-A049448(n)`
-/

namespace A049466.P17560597883630093741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049465 n - A049448 n

end

end A049466.P17560597883630093741

namespace A049466

/-- `2*A049465(n)-A049448(n)` -/
def P17560597883630093741.Spec : Prop :=
  ∀ n, P17560597883630093741.a n = A049466 n

theorem P17560597883630093741.correct : P17560597883630093741.Spec := by
  intro n
  simp only [A049466, Nat.add_sub_cancel, A049466.P17560597883630093741.a, A049466.P3280888729849273153.a, A007305, A007305.P14904390197358887400.a, A049448, A049448.P1299469161137968042.a, A049465, A049465.P10062401916254781799.a, A004761, A004761.P12493427440050159717.f1, A004761.P12493427440050159717.f2, A004761.P12493427440050159717.a, A007306, A007306.P17183682227013142410.a, A003602, A003602.P7612175048291952394.a, A110963, A110963.P3344771894533151408.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049466

/-! ## A049466.P16336497336180678413

`A008585(A007305(n))+A007306(n)`
-/

namespace A049466.P16336497336180678413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A007305 n).toNat + A007306 n

end

end A049466.P16336497336180678413

namespace A049466

/-- `A008585(A007305(n))+A007306(n)` -/
def P16336497336180678413.Spec : Prop :=
  ∀ n, P16336497336180678413.a n = A049466 n

end A049466

/-! ## A049466.P17862869760384647598

`A049448(n)+A005843(A007305(n))`
-/

namespace A049466.P17862869760384647598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049448 n + A005843 (A007305 n).toNat

end

end A049466.P17862869760384647598

namespace A049466

/-- `A049448(n)+A005843(A007305(n))` -/
def P17862869760384647598.Spec : Prop :=
  ∀ n, P17862869760384647598.a n = A049466 n

end A049466

/-! ## A049466.P13167273557276467292

`A004277(A049465(n))-A049448(n)`
-/

namespace A049466.P13167273557276467292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A049465 n).toNat - A049448 n

end

end A049466.P13167273557276467292

namespace A049466

/-- `A004277(A049465(n))-A049448(n)` -/
def P13167273557276467292.Spec : Prop :=
  ∀ n, P13167273557276467292.a n = A049466 n

end A049466

/-! ## A049466.P14634620517227569206

`A049448(n)+A049465(n)-A007306(n)`
-/

namespace A049466.P14634620517227569206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049448 n + (A049465 n - A007306 n)

end

end A049466.P14634620517227569206

namespace A049466

/-- `A049448(n)+A049465(n)-A007306(n)` -/
def P14634620517227569206.Spec : Prop :=
  ∀ n, P14634620517227569206.a n = A049466 n

theorem P14634620517227569206.correct : P14634620517227569206.Spec := by
  intro n
  simp only [A049466, Nat.add_sub_cancel, A049466.P14634620517227569206.a, A049466.P3280888729849273153.a, A007305, A007305.P14904390197358887400.a, A007306, A007306.P17183682227013142410.a, A049448, A049448.P1299469161137968042.a, A049465, A049465.P10062401916254781799.a, A003602, A003602.P7612175048291952394.a, A004761, A004761.P12493427440050159717.f1, A004761.P12493427440050159717.f2, A004761.P12493427440050159717.a, A110963, A110963.P3344771894533151408.a, A025480, A025480.P15873863116418380882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049466

/-! ## A049466.P2989442117037407412

`A078898(A049465(n)-A007306(n))+A049465(n)`
-/

namespace A049466.P2989442117037407412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A049465 n - A007306 n).toNat + A049465 n

end

end A049466.P2989442117037407412

namespace A049466

/-- `A078898(A049465(n)-A007306(n))+A049465(n)` -/
def P2989442117037407412.Spec : Prop :=
  ∀ n, P2989442117037407412.a n = A049466 n

end A049466

/-! ## A049466.P13084673090847028456

`A057431(2*n)+A049465(n)`
-/

namespace A049466.P13084673090847028456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057431 (2 * n) + A049465 n

end

end A049466.P13084673090847028456

namespace A049466

/-- `A057431(2*n)+A049465(n)` -/
def P13084673090847028456.Spec : Prop :=
  ∀ n, P13084673090847028456.a n = A049466 n

end A049466

/-! ## A049466.P5588533762492986520

`A049467(n)-A057431(2*n)`
-/

namespace A049466.P5588533762492986520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049467 n - A057431 (2 * n)

end

end A049466.P5588533762492986520

namespace A049466

/-- `A049467(n)-A057431(2*n)` -/
def P5588533762492986520.Spec : Prop :=
  ∀ n, P5588533762492986520.a n = A049466 n

end A049466

/-!
# A049467: Replace each fraction p/q in Farey tree A007305/A007306 with 4p+q.

The programs for A049467, the canonical program `A049467.P18232101049590991763` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049467 has offset 0).

The definition of A049467 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049467.P18232101049590991763

`A049466(n)+A007305(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A049467

/-- `A049466(n)+A007305(n)` -/
def P18232101049590991763.Spec : Prop :=
  ∀ n, P18232101049590991763.a n = A049467 n

theorem P18232101049590991763.correct : P18232101049590991763.Spec := by
  intro n
  simp only [A049467]

end A049467

/-! ## A049467.P12349353764886066480

`A049465(n)+2*A007305(n)`
-/

namespace A049467.P12349353764886066480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049465 n + 2 * A007305 n

end

end A049467.P12349353764886066480

namespace A049467

/-- `A049465(n)+2*A007305(n)` -/
def P12349353764886066480.Spec : Prop :=
  ∀ n, P12349353764886066480.a n = A049467 n

theorem P12349353764886066480.correct : P12349353764886066480.Spec := by
  intro n
  simp only [A049467, Nat.add_sub_cancel, A049467.P12349353764886066480.a, A049467.P18232101049590991763.a, A007305, A007305.P14904390197358887400.a, A049465, A049465.P10062401916254781799.a, A049466, A049466.P3280888729849273153.a, A004761, A004761.P12493427440050159717.f1, A004761.P12493427440050159717.f2, A004761.P12493427440050159717.a, A007306, A007306.P17183682227013142410.a, A049448, A049448.P1299469161137968042.a, A003602, A003602.P7612175048291952394.a, A110963, A110963.P3344771894533151408.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049467

/-! ## A049467.P7575419414776746936

`A049448(n)+3*A007305(n)`
-/

namespace A049467.P7575419414776746936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049448 n + 3 * A007305 n

end

end A049467.P7575419414776746936

namespace A049467

/-- `A049448(n)+3*A007305(n)` -/
def P7575419414776746936.Spec : Prop :=
  ∀ n, P7575419414776746936.a n = A049467 n

theorem P7575419414776746936.correct : P7575419414776746936.Spec := by
  intro n
  simp only [A049467, Nat.add_sub_cancel, A049467.P7575419414776746936.a, A049467.P18232101049590991763.a, A007305, A007305.P14904390197358887400.a, A049448, A049448.P1299469161137968042.a, A049466, A049466.P3280888729849273153.a, A004761, A004761.P12493427440050159717.f1, A004761.P12493427440050159717.f2, A004761.P12493427440050159717.a, A007306, A007306.P17183682227013142410.a, A049465, A049465.P10062401916254781799.a, A003602, A003602.P7612175048291952394.a, A110963, A110963.P3344771894533151408.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049467

/-! ## A049467.P8966740941332267967

`2*A049465(n)-A007306(n)`
-/

namespace A049467.P8966740941332267967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049465 n - A007306 n

end

end A049467.P8966740941332267967

namespace A049467

/-- `2*A049465(n)-A007306(n)` -/
def P8966740941332267967.Spec : Prop :=
  ∀ n, P8966740941332267967.a n = A049467 n

theorem P8966740941332267967.correct : P8966740941332267967.Spec := by
  intro n
  simp only [A049467, Nat.add_sub_cancel, A049467.P8966740941332267967.a, A049467.P18232101049590991763.a, A007305, A007305.P14904390197358887400.a, A007306, A007306.P17183682227013142410.a, A049465, A049465.P10062401916254781799.a, A049466, A049466.P3280888729849273153.a, A003602, A003602.P7612175048291952394.a, A004761, A004761.P12493427440050159717.f1, A004761.P12493427440050159717.f2, A004761.P12493427440050159717.a, A049448, A049448.P1299469161137968042.a, A110963, A110963.P3344771894533151408.a, A025480, A025480.P15873863116418380882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049467

/-! ## A049467.P16908458837540743240

`2*A049466(n)-A049465(n)`
-/

namespace A049467.P16908458837540743240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049466 n - A049465 n

end

end A049467.P16908458837540743240

namespace A049467

/-- `2*A049466(n)-A049465(n)` -/
def P16908458837540743240.Spec : Prop :=
  ∀ n, P16908458837540743240.a n = A049467 n

theorem P16908458837540743240.correct : P16908458837540743240.Spec := by
  intro n
  simp only [A049467, Nat.add_sub_cancel, A049467.P16908458837540743240.a, A049467.P18232101049590991763.a, A007305, A007305.P14904390197358887400.a, A049465, A049465.P10062401916254781799.a, A049466, A049466.P3280888729849273153.a, A004761, A004761.P12493427440050159717.f1, A004761.P12493427440050159717.f2, A004761.P12493427440050159717.a, A007306, A007306.P17183682227013142410.a, A049448, A049448.P1299469161137968042.a, A003602, A003602.P7612175048291952394.a, A110963, A110963.P3344771894533151408.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049467

/-! ## A049467.P9021160776889905925

`A007306(n)+4*A007305(n)`
-/

namespace A049467.P9021160776889905925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 n + 4 * A007305 n

end

end A049467.P9021160776889905925

namespace A049467

/-- `A007306(n)+4*A007305(n)` -/
def P9021160776889905925.Spec : Prop :=
  ∀ n, P9021160776889905925.a n = A049467 n

theorem P9021160776889905925.correct : P9021160776889905925.Spec := by
  intro n
  simp only [A049467, Nat.add_sub_cancel, A049467.P9021160776889905925.a, A049467.P18232101049590991763.a, A007305, A007305.P14904390197358887400.a, A007306, A007306.P17183682227013142410.a, A049466, A049466.P3280888729849273153.a, A003602, A003602.P7612175048291952394.a, A004761, A004761.P12493427440050159717.f1, A004761.P12493427440050159717.f2, A004761.P12493427440050159717.a, A049465, A049465.P10062401916254781799.a, A049448, A049448.P1299469161137968042.a, A110963, A110963.P3344771894533151408.a, A025480, A025480.P15873863116418380882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049467

/-! ## A049467.P13294551022224710416

`A008586(A007305(n))+A007306(n)`
-/

namespace A049467.P13294551022224710416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A007305 n).toNat + A007306 n

end

end A049467.P13294551022224710416

namespace A049467

/-- `A008586(A007305(n))+A007306(n)` -/
def P13294551022224710416.Spec : Prop :=
  ∀ n, P13294551022224710416.a n = A049467 n

end A049467

/-! ## A049467.P13963957665828808665

`A049465(n)+A005843(A007305(n))`
-/

namespace A049467.P13963957665828808665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049465 n + A005843 (A007305 n).toNat

end

end A049467.P13963957665828808665

namespace A049467

/-- `A049465(n)+A005843(A007305(n))` -/
def P13963957665828808665.Spec : Prop :=
  ∀ n, P13963957665828808665.a n = A049467 n

end A049467

/-! ## A049467.P13646139236616513371

`A049448(n)+A008585(A007305(n))`
-/

namespace A049467.P13646139236616513371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049448 n + A008585 (A007305 n).toNat

end

end A049467.P13646139236616513371

namespace A049467

/-- `A049448(n)+A008585(A007305(n))` -/
def P13646139236616513371.Spec : Prop :=
  ∀ n, P13646139236616513371.a n = A049467 n

end A049467

/-! ## A049467.P9380785389824855310

`A004277(A049465(n))-A007306(n)`
-/

namespace A049467.P9380785389824855310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A049465 n).toNat - A007306 n

end

end A049467.P9380785389824855310

namespace A049467

/-- `A004277(A049465(n))-A007306(n)` -/
def P9380785389824855310.Spec : Prop :=
  ∀ n, P9380785389824855310.a n = A049467 n

end A049467

/-! ## A049467.P11620930873656514873

`A008486(A049465(n))-2*A049448(n)`
-/

namespace A049467.P11620930873656514873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A049465 n).toNat - 2 * A049448 n

end

end A049467.P11620930873656514873

namespace A049467

/-- `A008486(A049465(n))-2*A049448(n)` -/
def P11620930873656514873.Spec : Prop :=
  ∀ n, P11620930873656514873.a n = A049467 n

end A049467

/-! ## A049467.P13012054726687190158

`A049466(n)+A001281(A049466(n)-A049448(n))`
-/

namespace A049467.P13012054726687190158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049466 n + A001281 (A049466 n - A049448 n).toNat

end

end A049467.P13012054726687190158

namespace A049467

/-- `A049466(n)+A001281(A049466(n)-A049448(n))` -/
def P13012054726687190158.Spec : Prop :=
  ∀ n, P13012054726687190158.a n = A049467 n

end A049467

/-! ## A049467.P14937939246998883280

`A049466(n)+A004526(A049466(n)-A049448(n))`
-/

namespace A049467.P14937939246998883280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049466 n + A004526 (A049466 n - A049448 n).toNat

end

end A049467.P14937939246998883280

namespace A049467

/-- `A049466(n)+A004526(A049466(n)-A049448(n))` -/
def P14937939246998883280.Spec : Prop :=
  ∀ n, P14937939246998883280.a n = A049467 n

end A049467

/-! ## A049467.P11672456334170688802

`A049466(n)+A025480(A049466(n)-A049448(n))`
-/

namespace A049467.P11672456334170688802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049466 n + A025480 (A049466 n - A049448 n).toNat

end

end A049467.P11672456334170688802

namespace A049467

/-- `A049466(n)+A025480(A049466(n)-A049448(n))` -/
def P11672456334170688802.Spec : Prop :=
  ∀ n, P11672456334170688802.a n = A049467 n

end A049467

/-! ## A049467.P14262269719034093292

`A057431(2*n)+A049466(n)`
-/

namespace A049467.P14262269719034093292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057431 (2 * n) + A049466 n

end

end A049467.P14262269719034093292

namespace A049467

/-- `A057431(2*n)+A049466(n)` -/
def P14262269719034093292.Spec : Prop :=
  ∀ n, P14262269719034093292.a n = A049467 n

end A049467

/-!
# A049468: Replace each fraction p/q in Farey tree A007305/A007306 with p+2q.

The programs for A049468, the canonical program `A049468.P14759900804743389918` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049468 has offset 0).

The definition of A049468 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049468.P14759900804743389918

`A049448(n)+A007306(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A049468

/-- `A049448(n)+A007306(n)` -/
def P14759900804743389918.Spec : Prop :=
  ∀ n, P14759900804743389918.a n = A049468 n

theorem P14759900804743389918.correct : P14759900804743389918.Spec := by
  intro n
  simp only [A049468]

end A049468

/-! ## A049468.P10282830777827752546

`A007305(n)+2*A007306(n)`
-/

namespace A049468.P10282830777827752546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007305 n + 2 * A007306 n

end

end A049468.P10282830777827752546

namespace A049468

/-- `A007305(n)+2*A007306(n)` -/
def P10282830777827752546.Spec : Prop :=
  ∀ n, P10282830777827752546.a n = A049468 n

theorem P10282830777827752546.correct : P10282830777827752546.Spec := by
  intro n
  simp only [A049468, Nat.add_sub_cancel, A049468.P10282830777827752546.a, A049468.P14759900804743389918.a, A007305, A007305.P14904390197358887400.a, A007306, A007306.P17183682227013142410.a, A049448, A049448.P1299469161137968042.a, A003602, A003602.P7612175048291952394.a, A004761, A004761.P12493427440050159717.f1, A004761.P12493427440050159717.f2, A004761.P12493427440050159717.a, A110963, A110963.P3344771894533151408.a, A025480, A025480.P15873863116418380882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049468

/-! ## A049468.P13929102162666061634

`2*A049448(n)-A007305(n)`
-/

namespace A049468.P13929102162666061634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049448 n - A007305 n

end

end A049468.P13929102162666061634

namespace A049468

/-- `2*A049448(n)-A007305(n)` -/
def P13929102162666061634.Spec : Prop :=
  ∀ n, P13929102162666061634.a n = A049468 n

theorem P13929102162666061634.correct : P13929102162666061634.Spec := by
  intro n
  simp only [A049468, Nat.add_sub_cancel, A049468.P13929102162666061634.a, A049468.P14759900804743389918.a, A007305, A007305.P14904390197358887400.a, A007306, A007306.P17183682227013142410.a, A049448, A049448.P1299469161137968042.a, A003602, A003602.P7612175048291952394.a, A004761, A004761.P12493427440050159717.f1, A004761.P12493427440050159717.f2, A004761.P12493427440050159717.a, A110963, A110963.P3344771894533151408.a, A025480, A025480.P15873863116418380882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049468

/-! ## A049468.P10867385921173614261

`3*A049448(n)-A049465(n)`
-/

namespace A049468.P10867385921173614261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A049448 n - A049465 n

end

end A049468.P10867385921173614261

namespace A049468

/-- `3*A049448(n)-A049465(n)` -/
def P10867385921173614261.Spec : Prop :=
  ∀ n, P10867385921173614261.a n = A049468 n

theorem P10867385921173614261.correct : P10867385921173614261.Spec := by
  intro n
  simp only [A049468, Nat.add_sub_cancel, A049468.P10867385921173614261.a, A049468.P14759900804743389918.a, A007306, A007306.P17183682227013142410.a, A049448, A049448.P1299469161137968042.a, A049465, A049465.P10062401916254781799.a, A003602, A003602.P7612175048291952394.a, A007305, A007305.P14904390197358887400.a, A004761, A004761.P12493427440050159717.f1, A004761.P12493427440050159717.f2, A004761.P12493427440050159717.a, A110963, A110963.P3344771894533151408.a, A025480, A025480.P15873863116418380882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049468

/-! ## A049468.P8620129630386443331

`A049448(n)+1-A309256(n)+n`
-/

namespace A049468.P8620129630386443331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049448 n + (1 - A309256 n + (n : ℤ))

end

end A049468.P8620129630386443331

namespace A049468

/-- `A049448(n)+1-A309256(n)+n` -/
def P8620129630386443331.Spec : Prop :=
  ∀ n, P8620129630386443331.a n = A049468 n

theorem P8620129630386443331.correct : P8620129630386443331.Spec := by
  intro n
  simp only [A049468, Nat.add_sub_cancel, A049468.P8620129630386443331.a, A049468.P14759900804743389918.a, A007306, A007306.P17183682227013142410.a, A049448, A049448.P1299469161137968042.a, A309256, A309256.P1094537150064723946.a, A003602, A003602.P7612175048291952394.a, A007305, A007305.P14904390197358887400.a, A004761, A004761.P12493427440050159717.f1, A004761.P12493427440050159717.f2, A004761.P12493427440050159717.a, A110963, A110963.P3344771894533151408.a, A025480, A025480.P15873863116418380882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049468

/-! ## A049468.P7520836365702686051

`A007305(n)+A004277(A007306(n))`
-/

namespace A049468.P7520836365702686051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007305 n + A004277 (A007306 n).toNat

end

end A049468.P7520836365702686051

namespace A049468

/-- `A007305(n)+A004277(A007306(n))` -/
def P7520836365702686051.Spec : Prop :=
  ∀ n, P7520836365702686051.a n = A049468 n

end A049468

/-! ## A049468.P9217184503404424726

`A004277(A049448(n))-A007305(n)`
-/

namespace A049468.P9217184503404424726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A049448 n).toNat - A007305 n

end

end A049468.P9217184503404424726

namespace A049468

/-- `A004277(A049448(n))-A007305(n)` -/
def P9217184503404424726.Spec : Prop :=
  ∀ n, P9217184503404424726.a n = A049468 n

end A049468

/-! ## A049468.P4542111168248546395

`A008486(A049448(n))-A049465(n)`
-/

namespace A049468.P4542111168248546395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A049448 n).toNat - A049465 n

end

end A049468.P4542111168248546395

namespace A049468

/-- `A008486(A049448(n))-A049465(n)` -/
def P4542111168248546395.Spec : Prop :=
  ∀ n, P4542111168248546395.a n = A049468 n

end A049468

/-! ## A049468.P15180510844658447433

`A007306(n)+A049465(n)-A007305(n)`
-/

namespace A049468.P15180510844658447433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 n + (A049465 n - A007305 n)

end

end A049468.P15180510844658447433

namespace A049468

/-- `A007306(n)+A049465(n)-A007305(n)` -/
def P15180510844658447433.Spec : Prop :=
  ∀ n, P15180510844658447433.a n = A049468 n

theorem P15180510844658447433.correct : P15180510844658447433.Spec := by
  intro n
  simp only [A049468, Nat.add_sub_cancel, A049468.P15180510844658447433.a, A049468.P14759900804743389918.a, A007305, A007305.P14904390197358887400.a, A007306, A007306.P17183682227013142410.a, A049448, A049448.P1299469161137968042.a, A049465, A049465.P10062401916254781799.a, A003602, A003602.P7612175048291952394.a, A004761, A004761.P12493427440050159717.f1, A004761.P12493427440050159717.f2, A004761.P12493427440050159717.a, A110963, A110963.P3344771894533151408.a, A025480, A025480.P15873863116418380882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049468

/-! ## A049468.P13235584465216460428

`A078898(A049465(n)+A007306(n))+A007306(n)`
-/

namespace A049468.P13235584465216460428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A049465 n + A007306 n).toNat + A007306 n

end

end A049468.P13235584465216460428

namespace A049468

/-- `A078898(A049465(n)+A007306(n))+A007306(n)` -/
def P13235584465216460428.Spec : Prop :=
  ∀ n, P13235584465216460428.a n = A049468 n

end A049468

/-! ## A049468.P4697289840711700080

`A005843(A049465(n)-A007305(n))-A007305(n)`
-/

namespace A049468.P4697289840711700080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A049465 n - A007305 n).toNat - A007305 n

end

end A049468.P4697289840711700080

namespace A049468

/-- `A005843(A049465(n)-A007305(n))-A007305(n)` -/
def P4697289840711700080.Spec : Prop :=
  ∀ n, P4697289840711700080.a n = A049468 n

end A049468

/-! ## A049468.P5610366342248619656

`A007306(A004761(n+1)+1)+A007306(n)`
-/

namespace A049468.P5610366342248619656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (A004761 (n + 1) + 1).toNat + A007306 n

end

end A049468.P5610366342248619656

namespace A049468

/-- `A007306(A004761(n+1)+1)+A007306(n)` -/
def P5610366342248619656.Spec : Prop :=
  ∀ n, P5610366342248619656.a n = A049468 n

theorem P5610366342248619656.correct : P5610366342248619656.Spec := by
  intro n
  simp only [A049468, Nat.add_sub_cancel, A049468.P5610366342248619656.a, A049468.P14759900804743389918.a, A004761, A004761.P12493427440050159717.f1, A004761.P12493427440050159717.f2, A004761.P12493427440050159717.a, A007306, A007306.P17183682227013142410.a, A049448, A049448.P1299469161137968042.a, A003602, A003602.P7612175048291952394.a, A007305, A007305.P14904390197358887400.a, A110963, A110963.P3344771894533151408.a, A025480, A025480.P15873863116418380882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049468

/-! ## A049468.P9995116259249658690

`A049448(n)+A002487(A004280(n+1))`
-/

namespace A049468.P9995116259249658690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049448 n + A002487 (A004280 (n + 1)).toNat

end

end A049468.P9995116259249658690

namespace A049468

/-- `A049448(n)+A002487(A004280(n+1))` -/
def P9995116259249658690.Spec : Prop :=
  ∀ n, P9995116259249658690.a n = A049468 n

end A049468

/-! ## A049468.P18369190298292688687

`A057431(2*n+1)+A049465(n)`
-/

namespace A049468.P18369190298292688687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057431 (2 * n + 1) + A049465 n

end

end A049468.P18369190298292688687

namespace A049468

/-- `A057431(2*n+1)+A049465(n)` -/
def P18369190298292688687.Spec : Prop :=
  ∀ n, P18369190298292688687.a n = A049468 n

end A049468

/-! ## A049468.P10859502395267007852

`A007305(n)+2*A007305(A206332(n+1))`
-/

namespace A049468.P10859502395267007852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007305 n + 2 * A007305 (A206332 (n + 1)).toNat

end

end A049468.P10859502395267007852

namespace A049468

/-- `A007305(n)+2*A007305(A206332(n+1))` -/
def P10859502395267007852.Spec : Prop :=
  ∀ n, P10859502395267007852.a n = A049468 n

end A049468

/-!
# A049470: Decimal expansion of cos(1).

The programs for A049470, there is no canonical definition to state claims against.
-/

/-! ## A049470.P17514202472548310453

`9-A371936(n)`
-/

namespace A049470.P17514202472548310453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A371936 n

end

end A049470.P17514202472548310453

/-!
# A049472: a(n) = floor(n/sqrt(2)).

The programs for A049472, the canonical program `A049472.P13396613520496134978` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049472 has offset 0).

The definition of A049472 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n/sqrt(2))` (program `A049472.P13396613520496134978`, by `A049472.P13396613520496134978.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A049472.P13396613520496134978

`floor(n/sqrt(2))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049472

/-- `floor(n/sqrt(2))` -/
def P13396613520496134978.Spec : Prop :=
  ∀ n, P13396613520496134978.a n = A049472 n

theorem P13396613520496134978.correct : P13396613520496134978.Spec := by
  intro n
  simp only [A049472]

end A049472

/-! ## A049472.P10802758341284401313

`A083088(n)-(n+1)`
-/

namespace A049472.P10802758341284401313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083088 n - (n + 1 : ℤ)

end

end A049472.P10802758341284401313

namespace A049472

/-- `A083088(n)-(n+1)` -/
def P10802758341284401313.Spec : Prop :=
  ∀ n, P10802758341284401313.a n = A049472 n

theorem P10802758341284401313.correct : P10802758341284401313.Spec := by
  intro n
  simp only [A049472, Nat.add_sub_cancel, A049472.P10802758341284401313.a, A049472.P13396613520496134978.a, A083088, A083088.P2188734894265162216.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A049472

/-! ## A049472.P6616247005460310794

`2*n-A195128(n)`
-/

namespace A049472.P6616247005460310794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A195128 n

end

end A049472.P6616247005460310794

namespace A049472

/-- `2*n-A195128(n)` -/
def P6616247005460310794.Spec : Prop :=
  ∀ n, P6616247005460310794.a n = A049472 n

end A049472

/-! ## A049472.P12405099891598210065

`∑[char[A087057(n+1)]]`
-/

namespace A049472.P12405099891598210065
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087057 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049472.P12405099891598210065

namespace A049472

/-- `∑[char[A087057(n+1)]]` -/
def P12405099891598210065.Spec : Prop :=
  ∀ n, (P12405099891598210065.a n : ℤ) = A049472 n

end A049472

/-! ## A049472.P13842193957958002010

`ceil((A001951(n)-1)/2)`
-/

namespace A049472.P13842193957958002010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001951 n - 1 : ℚ) / 2⌉

end

end A049472.P13842193957958002010

namespace A049472

/-- `ceil((A001951(n)-1)/2)` -/
def P13842193957958002010.Spec : Prop :=
  ∀ n, P13842193957958002010.a n = A049472 n

end A049472

/-! ## A049472.P1455723205837486078

`∑[A036697(n)%2]-1`
-/

namespace A049472.P1455723205837486078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036697 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A049472.P1455723205837486078

namespace A049472

/-- `∑[A036697(n)%2]-1` -/
def P1455723205837486078.Spec : Prop :=
  ∀ n, P1455723205837486078.a n = A049472 n

end A049472

/-! ## A049472.P10090719401290512947

`n-ceil(A195119(n)/2)`
-/

namespace A049472.P10090719401290512947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌈(A195119 n : ℚ) / 2⌉

end

end A049472.P10090719401290512947

namespace A049472

/-- `n-ceil(A195119(n)/2)` -/
def P10090719401290512947.Spec : Prop :=
  ∀ n, P10090719401290512947.a n = A049472 n

end A049472

/-! ## A049472.P6499449546254521337

`comp[A003151(n+1)]-n`
-/

namespace A049472.P6499449546254521337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A049472.P6499449546254521337

namespace A049472

/-- `comp[A003151(n+1)]-n` -/
def P6499449546254521337.Spec : Prop :=
  ∀ n, P6499449546254521337.a n = A049472 n

end A049472

/-! ## A049472.P18233878376726087319

`n-floor(sqrt(∑[A195177(n)]))`
-/

namespace A049472.P18233878376726087319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.sqrt (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A049472.P18233878376726087319

namespace A049472

/-- `n-floor(sqrt(∑[A195177(n)]))` -/
def P18233878376726087319.Spec : Prop :=
  ∀ n, P18233878376726087319.a n = A049472 n

end A049472

/-! ## A049472.P17972883947300721795

`A285077(n+1)-(n+2)`
-/

namespace A049472.P17972883947300721795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285077 (n + 1) - (n + 2 : ℤ)

end

end A049472.P17972883947300721795

namespace A049472

/-- `A285077(n+1)-(n+2)` -/
def P17972883947300721795.Spec : Prop :=
  ∀ n, P17972883947300721795.a n = A049472 n

end A049472

/-! ## A049472.P1995627740635397924

`A188295(n)+a(n-1)` with `a(0)=0`
-/

namespace A049472.P1995627740635397924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A188295 n + a (n - 1)

end

end A049472.P1995627740635397924

namespace A049472

/-- `A188295(n)+a(n-1)` -/
def P1995627740635397924.Spec : Prop :=
  ∀ n, P1995627740635397924.a n = A049472 n

end A049472

/-! ## A049472.P5103642466086966894

`∑[char[A001951(n+1)+1]]`
-/

namespace A049472.P5103642466086966894
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049472.P5103642466086966894

namespace A049472

/-- `∑[char[A001951(n+1)+1]]` -/
def P5103642466086966894.Spec : Prop :=
  ∀ n, (P5103642466086966894.a n : ℤ) = A049472 n

end A049472

/-! ## A049472.P13055151875768817597

`(ceil(sqrt(A000982(n)))-1)%(n+1)`
-/

namespace A049472.P13055151875768817597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌈Real.sqrt (A000982 n : ℝ)⌉ - 1) (n + 1 : ℤ)

end

end A049472.P13055151875768817597

namespace A049472

/-- `(ceil(sqrt(A000982(n)))-1)%(n+1)` -/
def P13055151875768817597.Spec : Prop :=
  ∀ n, P13055151875768817597.a n = A049472 n

end A049472

/-! ## A049472.P652460923936335959

`∑[char[A054071(n+1)+n+1]]`
-/

namespace A049472.P652460923936335959
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054071 (n + 1) + (n + 1 : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049472.P652460923936335959

namespace A049472

/-- `∑[char[A054071(n+1)+n+1]]` -/
def P652460923936335959.Spec : Prop :=
  ∀ n, (P652460923936335959.a n : ℤ) = A049472 n

end A049472

/-! ## A049472.P7002267048612447022

`∑[char[A188398(n+1)+n+1]]`
-/

namespace A049472.P7002267048612447022
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188398 (n + 1) + (n + 1 : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049472.P7002267048612447022

namespace A049472

/-- `∑[char[A188398(n+1)+n+1]]` -/
def P7002267048612447022.Spec : Prop :=
  ∀ n, (P7002267048612447022.a n : ℤ) = A049472 n

end A049472

/-!
# A049473: Nearest integer to n/sqrt(2).

The programs for A049473, the canonical program `A049473.P14529483528457698653` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049473 has offset 0).

The definition of A049473 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049473.P14529483528457698653

`round(n/sqrt(2))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049473

/-- `round(n/sqrt(2))` -/
def P14529483528457698653.Spec : Prop :=
  ∀ n, P14529483528457698653.a n = A049473 n

theorem P14529483528457698653.correct : P14529483528457698653.Spec := by
  intro n
  simp only [A049473]

end A049473

/-! ## A049473.P11218388410629615700

`floor(sqrt((sqrt(2)+n)/2*n%(n+1)))`
-/

namespace A049473.P11218388410629615700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((Real.sqrt (2 : ℝ) + (n : ℝ)) / 2 * ((n % (n + 1) : ℕ) : ℝ))⌋

end

end A049473.P11218388410629615700

namespace A049473

/-- `floor(sqrt((sqrt(2)+n)/2*n%(n+1)))` -/
def P11218388410629615700.Spec : Prop :=
  ∀ n, P11218388410629615700.a n = A049473 n

end A049473

/-! ## A049473.P18417697871080129901

`ceil(A001951(n)/2)`
-/

namespace A049473.P18417697871080129901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001951 n : ℚ) / 2⌉

end

end A049473.P18417697871080129901

namespace A049473

/-- `ceil(A001951(n)/2)` -/
def P18417697871080129901.Spec : Prop :=
  ∀ n, P18417697871080129901.a n = A049473 n

end A049473

/-! ## A049473.P968098177825386751

`ceil(A091087(n)/3)`
-/

namespace A049473.P968098177825386751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A091087 n : ℚ) / 3⌉

end

end A049473.P968098177825386751

namespace A049473

/-- `ceil(A091087(n)/3)` -/
def P968098177825386751.Spec : Prop :=
  ∀ n, P968098177825386751.a n = A049473 n

end A049473

/-! ## A049473.P11903312569124596862

`∑[A104521(abs(1-n))]`
-/

namespace A049473.P11903312569124596862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104521 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049473.P11903312569124596862

namespace A049473

/-- `∑[A104521(abs(1-n))]` -/
def P11903312569124596862.Spec : Prop :=
  ∀ n, P11903312569124596862.a n = A049473 n

end A049473

/-! ## A049473.P12666242693480034367

`∑[char[A001953(n)+1]]`
-/

namespace A049473.P12666242693480034367
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001953 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049473.P12666242693480034367

namespace A049473

/-- `∑[char[A001953(n)+1]]` -/
def P12666242693480034367.Spec : Prop :=
  ∀ n, (P12666242693480034367.a n : ℤ) = A049473 n

end A049473

/-! ## A049473.P12156231474100451344

`∑[char[A136119(n+1)]]`
-/

namespace A049473.P12156231474100451344
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136119 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049473.P12156231474100451344

namespace A049473

/-- `∑[char[A136119(n+1)]]` -/
def P12156231474100451344.Spec : Prop :=
  ∀ n, (P12156231474100451344.a n : ℤ) = A049473 n

end A049473

/-! ## A049473.P18004468475659816188

`ceil(n-A195119(n)/2)`
-/

namespace A049473.P18004468475659816188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) - (A195119 n : ℚ) / 2⌉

end

end A049473.P18004468475659816188

namespace A049473

/-- `ceil(n-A195119(n)/2)` -/
def P18004468475659816188.Spec : Prop :=
  ∀ n, P18004468475659816188.a n = A049473 n

end A049473

/-! ## A049473.P13073000186085622594

`comp[A086377(n+1)]-n`
-/

namespace A049473.P13073000186085622594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086377 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A049473.P13073000186085622594

namespace A049473

/-- `comp[A086377(n+1)]-n` -/
def P13073000186085622594.Spec : Prop :=
  ∀ n, P13073000186085622594.a n = A049473 n

end A049473

/-! ## A049473.P14829285407938231845

`comp[A001954(n)-n]-n`
-/

namespace A049473.P14829285407938231845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001954 n - (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A049473.P14829285407938231845

namespace A049473

/-- `comp[A001954(n)-n]-n` -/
def P14829285407938231845.Spec : Prop :=
  ∀ n, P14829285407938231845.a n = A049473 n

end A049473

/-! ## A049473.P1910555488771105231

`A189573(n+1)-(n+1)`
-/

namespace A049473.P1910555488771105231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189573 (n + 1) - (n + 1 : ℤ)

end

end A049473.P1910555488771105231

namespace A049473

/-- `A189573(n+1)-(n+1)` -/
def P1910555488771105231.Spec : Prop :=
  ∀ n, P1910555488771105231.a n = A049473 n

end A049473

/-! ## A049473.P17574447539045814280

`ceil(comp[A001952(n+1)]/2)`
-/

namespace A049473.P17574447539045814280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℚ) / 2⌉

end

end A049473.P17574447539045814280

namespace A049473

/-- `ceil(comp[A001952(n+1)]/2)` -/
def P17574447539045814280.Spec : Prop :=
  ∀ n, P17574447539045814280.a n = A049473 n

end A049473

/-! ## A049473.P7902619609456993920

`n-∑[char[A184119(n+1)]]`
-/

namespace A049473.P7902619609456993920
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184119 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A049473.P7902619609456993920

namespace A049473

/-- `n-∑[char[A184119(n+1)]]` -/
def P7902619609456993920.Spec : Prop :=
  ∀ n, P7902619609456993920.a n = A049473 n

end A049473

/-! ## A049473.P4683951880761631662

`A104521(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A049473.P4683951880761631662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A104521 (n - 1) + a (n - 1)

end

end A049473.P4683951880761631662

namespace A049473

/-- `A104521(n-1)+a(n-1)` -/
def P4683951880761631662.Spec : Prop :=
  ∀ n, P4683951880761631662.a n = A049473 n

end A049473

/-! ## A049473.P13667315942486397786

`n-∑[char[A101369(2*(n+1))]]`
-/

namespace A049473.P13667315942486397786
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101369 (2 * (n + 1))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A049473.P13667315942486397786

namespace A049473

/-- `n-∑[char[A101369(2*(n+1))]]` -/
def P13667315942486397786.Spec : Prop :=
  ∀ n, P13667315942486397786.a n = A049473 n

end A049473

/-! ## A049473.P18054904230918734315

`a(n-1)-A001953(a(n-1))+n` with `a(0)=0`
-/

namespace A049473.P18054904230918734315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - A001953 (a (n - 1)).toNat + (n : ℤ)

end

end A049473.P18054904230918734315

namespace A049473

/-- `a(n-1)-A001953(a(n-1))+n` -/
def P18054904230918734315.Spec : Prop :=
  ∀ n, P18054904230918734315.a n = A049473 n

end A049473

/-! ## A049473.P2682320636181935759

`A258703(A106035(n)+n)`
-/

namespace A049473.P2682320636181935759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258703 (A106035 n + (n : ℤ)).toNat

end

end A049473.P2682320636181935759

namespace A049473

/-- `A258703(A106035(n)+n)` -/
def P2682320636181935759.Spec : Prop :=
  ∀ n, P2682320636181935759.a n = A049473 n

end A049473

/-! ## A049473.P9627217541098105222

`A001951(n)-A049472(n)`
-/

namespace A049473.P9627217541098105222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n - A049472 n

end

end A049473.P9627217541098105222

namespace A049473

/-- `A001951(n)-A049472(n)` -/
def P9627217541098105222.Spec : Prop :=
  ∀ n, P9627217541098105222.a n = A049473 n

end A049473

/-! ## A049473.P14723022546188162326

`A195128(n)-A195119(n)`
-/

namespace A049473.P14723022546188162326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195128 n - A195119 n

end

end A049473.P14723022546188162326

namespace A049473

/-- `A195128(n)-A195119(n)` -/
def P14723022546188162326.Spec : Prop :=
  ∀ n, P14723022546188162326.a n = A049473 n

end A049473

/-!
# A049474: a(n) = ceiling(n/sqrt(2)).

The programs for A049474, the canonical program `A049474.P15997388566845969696` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049474 has offset 0).

The definition of A049474 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n/sqrt(2))` (program `A049474.P15997388566845969696`, by `A049474.P15997388566845969696.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A049474.P15997388566845969696

`ceil(n/sqrt(2))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049474

/-- `ceil(n/sqrt(2))` -/
def P15997388566845969696.Spec : Prop :=
  ∀ n, P15997388566845969696.a n = A049474 n

theorem P15997388566845969696.correct : P15997388566845969696.Spec := by
  intro n
  simp only [A049474]

end A049474

/-! ## A049474.P15187477561887838320

`(floor(n*(sqrt(2)+2)/2)+2)%(n+1)`
-/

namespace A049474.P15187477561887838320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌊(n : ℝ) * ((Real.sqrt (2 : ℝ) + 2) / 2)⌋ + 2) (n + 1 : ℤ)

end

end A049474.P15187477561887838320

namespace A049474

/-- `(floor(n*(sqrt(2)+2)/2)+2)%(n+1)` -/
def P15187477561887838320.Spec : Prop :=
  ∀ n, P15187477561887838320.a n = A049474 n

end A049474

/-! ## A049474.P7334824349181156118

`n-floor(n/(n/a(n-1)+2))` with `a(0)=0, a(1)=1`
-/

namespace A049474.P7334824349181156118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n : ℤ) - ⌊(n : ℚ) / ((n : ℚ) / (a (n - 1) : ℚ) + 2)⌋

end

end A049474.P7334824349181156118

namespace A049474

/-- `n-floor(n/(n/a(n-1)+2))` -/
def P7334824349181156118.Spec : Prop :=
  ∀ n, P7334824349181156118.a n = A049474 n

end A049474

/-! ## A049474.P10606789988665028024

`A099188(n)/2`
-/

namespace A049474.P10606789988665028024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099188 n : ℚ) / 2

end

end A049474.P10606789988665028024

namespace A049474

/-- `A099188(n)/2` -/
def P10606789988665028024.Spec : Prop :=
  ∀ n, P10606789988665028024.a n = (A049474 n : ℚ)

theorem P10606789988665028024.correct : P10606789988665028024.Spec := by
  intro n
  simp only [A049474, Nat.add_sub_cancel, A049474.P10606789988665028024.a, A049474.P15997388566845969696.a, A099188, A099188.P7971677640823074041.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A049474

/-! ## A049474.P15171211950481323478

`2*n-A187328(n)`
-/

namespace A049474.P15171211950481323478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A187328 n

end

end A049474.P15171211950481323478

namespace A049474

/-- `2*n-A187328(n)` -/
def P15171211950481323478.Spec : Prop :=
  ∀ n, P15171211950481323478.a n = A049474 n

end A049474

/-! ## A049474.P10934389704252992183

`∑[A080764(abs(2-n))]`
-/

namespace A049474.P10934389704252992183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080764 |2 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049474.P10934389704252992183

namespace A049474

/-- `∑[A080764(abs(2-n))]` -/
def P10934389704252992183.Spec : Prop :=
  ∀ n, P10934389704252992183.a n = A049474 n

end A049474

/-! ## A049474.P14320055143575077199

`∑[char[A001951(n)+1]]`
-/

namespace A049474.P14320055143575077199
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049474.P14320055143575077199

namespace A049474

/-- `∑[char[A001951(n)+1]]` -/
def P14320055143575077199.Spec : Prop :=
  ∀ n, (P14320055143575077199.a n : ℤ) = A049474 n

end A049474

/-! ## A049474.P12052520052376829823

`round(sqrt(A049472(n)²+n))`
-/

namespace A049474.P12052520052376829823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A049472 n ^ 2 + (n : ℤ) : ℝ))

end

end A049474.P12052520052376829823

namespace A049474

/-- `round(sqrt(A049472(n)²+n))` -/
def P12052520052376829823.Spec : Prop :=
  ∀ n, P12052520052376829823.a n = A049474 n

end A049474

/-! ## A049474.P12112780136110488563

`A285074(n+1)-(n+1)`
-/

namespace A049474.P12112780136110488563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285074 (n + 1) - (n + 1 : ℤ)

end

end A049474.P12112780136110488563

namespace A049474

/-- `A285074(n+1)-(n+1)` -/
def P12112780136110488563.Spec : Prop :=
  ∀ n, P12112780136110488563.a n = A049474 n

end A049474

/-! ## A049474.P18280645229954028636

`n-A097508(a(n-1))` with `a(0)=0`
-/

namespace A049474.P18280645229954028636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - A097508 (a (n - 1)).toNat

end

end A049474.P18280645229954028636

namespace A049474

/-- `n-A097508(a(n-1))` -/
def P18280645229954028636.Spec : Prop :=
  ∀ n, P18280645229954028636.a n = A049474 n

end A049474

/-! ## A049474.P1360655426605093345

`A188295(n)+a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A049474.P1360655426605093345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A188295 n + a (n - 1)

end

end A049474.P1360655426605093345

namespace A049474

/-- `A188295(n)+a(n-1)` -/
def P1360655426605093345.Spec : Prop :=
  ∀ n, P1360655426605093345.a n = A049474 n

end A049474

/-! ## A049474.P3804261306958669000

`2*n-comp[A187338(n+1)]`
-/

namespace A049474.P3804261306958669000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187338 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A049474.P3804261306958669000

namespace A049474

/-- `2*n-comp[A187338(n+1)]` -/
def P3804261306958669000.Spec : Prop :=
  ∀ n, P3804261306958669000.a n = A049474 n

end A049474

/-! ## A049474.P7766655436282978132

`abs(∑[char[A001952(n+1)+1]]-n)`
-/

namespace A049474.P7766655436282978132
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)|

end

end A049474.P7766655436282978132

namespace A049474

/-- `abs(∑[char[A001952(n+1)+1]]-n)` -/
def P7766655436282978132.Spec : Prop :=
  ∀ n, P7766655436282978132.a n = A049474 n

end A049474

/-! ## A049474.P6345912098641599160

`∑[char[A054071(abs(1-n)+1)+n]]`
-/

namespace A049474.P6345912098641599160
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054071 (|1 - (n : ℤ)| + 1).toNat + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049474.P6345912098641599160

namespace A049474

/-- `∑[char[A054071(abs(1-n)+1)+n]]` -/
def P6345912098641599160.Spec : Prop :=
  ∀ n, (P6345912098641599160.a n : ℤ) = A049474 n

end A049474

/-! ## A049474.P6684937041623094696

`a(n-1)-A001951(a(n-1))+n` with `a(0)=0`
-/

namespace A049474.P6684937041623094696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - A001951 (a (n - 1)).toNat + (n : ℤ)

end

end A049474.P6684937041623094696

namespace A049474

/-- `a(n-1)-A001951(a(n-1))+n` -/
def P6684937041623094696.Spec : Prop :=
  ∀ n, P6684937041623094696.a n = A049474 n

end A049474

/-! ## A049474.P9866753749182445699

`A195119(a(n-1))-a(n-1)+n` with `a(0)=0`
-/

namespace A049474.P9866753749182445699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A195119 (a (n - 1)).toNat - a (n - 1) + (n : ℤ)

end

end A049474.P9866753749182445699

namespace A049474

/-- `A195119(a(n-1))-a(n-1)+n` -/
def P9866753749182445699.Spec : Prop :=
  ∀ n, P9866753749182445699.a n = A049474 n

end A049474

/-! ## A049474.P14804905595144295393

`A057427(n)+A049472(n)`
-/

namespace A049474.P14804905595144295393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A049472 n

end

end A049474.P14804905595144295393

namespace A049474

/-- `A057427(n)+A049472(n)` -/
def P14804905595144295393.Spec : Prop :=
  ∀ n, P14804905595144295393.a n = A049474 n

end A049474

/-! ## A049474.P6314452242803545541

`A049472(n)-A057428(n)`
-/

namespace A049474.P6314452242803545541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 n - A057428 n

end

end A049474.P6314452242803545541

namespace A049474

/-- `A049472(n)-A057428(n)` -/
def P6314452242803545541.Spec : Prop :=
  ∀ n, P6314452242803545541.a n = A049474 n

end A049474

/-! ## A049474.P2240509860977160756

`A083088(n)-A028310(n)`
-/

namespace A049474.P2240509860977160756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083088 n - A028310 n

end

end A049474.P2240509860977160756

namespace A049474

/-- `A083088(n)-A028310(n)` -/
def P2240509860977160756.Spec : Prop :=
  ∀ n, P2240509860977160756.a n = A049474 n

end A049474

/-!
# A049476: Positions of records in A346778.

The programs for A049476, there is no canonical definition to state claims against.
-/

/-! ## A049476.P9265795060196277582

`A049478(n+1)+A049477(n+1)`
-/

namespace A049476.P9265795060196277582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049478 (n + 1) + A049477 (n + 1)

end

end A049476.P9265795060196277582

/-! ## A049476.P9098827463433836954

`A049477(n+1)+record[A346778(n+1)]`
-/

namespace A049476.P9098827463433836954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049477 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049476.P9098827463433836954

/-!
# A049477: For each record-breaking row, m, of A088643, the sequence gives the length, k, of the longest earlier row contained in row m.

The programs for A049477, there is no canonical definition to state claims against.
-/

/-! ## A049477.P11283311144990546457

`A049476(n+1)-A049478(n+1)`
-/

namespace A049477.P11283311144990546457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049476 (n + 1) - A049478 (n + 1)

end

end A049477.P11283311144990546457

/-! ## A049477.P13967222107117652096

`A049476(n+1)-record[A346778(n+1)]`
-/

namespace A049477.P13967222107117652096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049476 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049477.P13967222107117652096

/-! ## A049477.P657400621236198609

`A049476(A000027(n+1))-A346778(A049476(n+1))`
-/

namespace A049477.P657400621236198609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049476 (A000027 (n + 1)).toNat - A346778 (A049476 (n + 1)).toNat

end

end A049477.P657400621236198609

/-!
# A049478: Record values in A346778.

The programs for A049478, there is no canonical definition to state claims against.
-/

/-! ## A049478.P979552268833435020

`record[A346778(n+1)]`
-/

namespace A049478.P979552268833435020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049478.P979552268833435020

/-! ## A049478.P6356253751152852029

`record[A346778(A291769(n))%A000009(n)]`
-/

namespace A049478.P6356253751152852029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346778 (A291769 n).toNat) (A000009 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049478.P6356253751152852029

/-! ## A049478.P1421470316524857045

`A346778(A049476(n+1))`
-/

namespace A049478.P1421470316524857045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346778 (A049476 (n + 1)).toNat

end

end A049478.P1421470316524857045

/-! ## A049478.P11048716653160372306

`A049476(n+1)-A049477(n+1)`
-/

namespace A049478.P11048716653160372306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049476 (n + 1) - A049477 (n + 1)

end

end A049478.P11048716653160372306

/-!
# A049479: Smallest prime dividing 2^n - 1.

The programs for A049479, there is no canonical definition to state claims against.
-/

/-! ## A049479.P6141732206426990671

`A001265(∑[A046051(n+1)]+2)`
-/

namespace A049479.P6141732206426990671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001265 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A049479.P6141732206426990671

/-! ## A049479.P13896901335412137294

`A060443(∑[A046800(n+1)]+2)`
-/

namespace A049479.P13896901335412137294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060443 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A049479.P13896901335412137294

/-! ## A049479.P7939858238232150624

`A249780(n+2)/A005420(n+2)`
-/

namespace A049479.P7939858238232150624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249780 (n + 2) : ℚ) / (A005420 (n + 2) : ℚ)

end

end A049479.P7939858238232150624

/-! ## A049479.P18410048313557278903

`A361438(∑[A046801(n+1)]+2)`
-/

namespace A049479.P18410048313557278903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361438 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A049479.P18410048313557278903

/-! ## A049479.P2599228691906787579

`A112927(A092028(n+3)%A175251(n+1))`
-/

namespace A049479.P2599228691906787579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112927 (Int.tmod (A092028 (n + 3)) (A175251 (n + 1))).toNat

end

end A049479.P2599228691906787579

/-!
# A049480: a(n) = (2*n-1)*(n^2 -n +6)/6.

The programs for A049480, the canonical program `A049480.P2420942401070284196` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049480 has offset 1).

The definition of A049480 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*(n+1)-1)*((n+1)²-(n+1)+6)/6` (program `A049480.P3945936898442624819`, by `A049480.P3945936898442624819.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A049480.P3945936898442624819

`(2*(n+1)-1)*((n+1)²-(n+1)+6)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A049480.P3945936898442624819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((2 * (n + 1) : ℤ) - 1) * (((n + 1) ^ 2 : ℤ) - (n + 1 : ℤ) + 6) : ℚ) / 6

end

end A049480.P3945936898442624819

namespace A049480

/-- `(2*(n+1)-1)*((n+1)²-(n+1)+6)/6` -/
def P3945936898442624819.Spec : Prop :=
  ∀ n, P3945936898442624819.a n = (A049480 (n + 1) : ℚ)

theorem P3945936898442624819.correct : P3945936898442624819.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A049480, Nat.add_sub_cancel, A049480.P3945936898442624819.a, A049480.P2420942401070284196.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A049480, Nat.add_sub_cancel, A049480.P3945936898442624819.a, A049480.P2420942401070284196.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A049480

/-! ## A049480.P2420942401070284196

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=10, a(3)=21`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049480

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P2420942401070284196.Spec : Prop :=
  ∀ n, P2420942401070284196.a n = A049480 (n + 1)

theorem P2420942401070284196.correct : P2420942401070284196.Spec := by
  intro n
  simp only [A049480, Nat.add_sub_cancel]

end A049480

/-! ## A049480.P16507670225353746661

`abs(1-∑[or(2, n²)])`
-/

namespace A049480.P16507670225353746661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)|

end

end A049480.P16507670225353746661

namespace A049480

/-- `abs(1-∑[or(2, n²)])` -/
def P16507670225353746661.Spec : Prop :=
  ∀ n, P16507670225353746661.a n = A049480 (n + 1)

end A049480

/-! ## A049480.P14434787500373936191

`abs(1-∑[xor(2, n²)])`
-/

namespace A049480.P14434787500373936191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)|

end

end A049480.P14434787500373936191

namespace A049480

/-- `abs(1-∑[xor(2, n²)])` -/
def P14434787500373936191.Spec : Prop :=
  ∀ n, P14434787500373936191.a n = A049480 (n + 1)

end A049480

/-! ## A049480.P10544312420492451017

`∑[ceil(n/acot(n))+1]`
-/

namespace A049480.P10544312420492451017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / SequenceMachineLib.acot (n : ℝ)⌉ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049480.P10544312420492451017

namespace A049480

/-- `∑[ceil(n/acot(n))+1]` -/
def P10544312420492451017.Spec : Prop :=
  ∀ n, P10544312420492451017.a n = A049480 (n + 1)

end A049480

/-! ## A049480.P5516103518175707561

`C(n, 3)+C(n+3, 3)`
-/

namespace A049480.P5516103518175707561
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3 + Nat.choose (n + 3) 3

end

end A049480.P5516103518175707561

namespace A049480

/-- `C(n, 3)+C(n+3, 3)` -/
def P5516103518175707561.Spec : Prop :=
  ∀ n, (P5516103518175707561.a n : ℤ) = A049480 (n + 1)

end A049480

/-! ## A049480.P14167452746938385106

`∑[∑[record[abs(xor(1, n-2))]]]`
-/

namespace A049480.P14167452746938385106
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 ((n : ℤ) - 2)|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049480.P14167452746938385106

namespace A049480

/-- `∑[∑[record[abs(xor(1, n-2))]]]` -/
def P14167452746938385106.Spec : Prop :=
  ∀ n, P14167452746938385106.a n = A049480 (n + 1)

end A049480

/-! ## A049480.P16076097706868921161

`∑[ceil(atan(n+1)+n²)]`
-/

namespace A049480.P16076097706868921161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (n + 1 : ℝ) + (n ^ 2 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049480.P16076097706868921161

namespace A049480

/-- `∑[ceil(atan(n+1)+n²)]` -/
def P16076097706868921161.Spec : Prop :=
  ∀ n, P16076097706868921161.a n = A049480 (n + 1)

end A049480

/-! ## A049480.P11499016906159636984

`∑[ceil((acot(n+1)+n)²)]`
-/

namespace A049480.P11499016906159636984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.acot (n + 1 : ℝ) + (n : ℝ)) ^ 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049480.P11499016906159636984

namespace A049480

/-- `∑[ceil((acot(n+1)+n)²)]` -/
def P11499016906159636984.Spec : Prop :=
  ∀ n, P11499016906159636984.a n = A049480 (n + 1)

end A049480

/-! ## A049480.P18149794875120769282

`∑[∑[comp[2*xor(1, n+1)]]]`
-/

namespace A049480.P18149794875120769282
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.xor 1 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049480.P18149794875120769282

namespace A049480

/-- `∑[∑[comp[2*xor(1, n+1)]]]` -/
def P18149794875120769282.Spec : Prop :=
  ∀ n, (P18149794875120769282.a n : ℤ) = A049480 (n + 1)

end A049480

/-! ## A049480.P2690771303297178817

`∑[∑[comp[n*2%(n+1)]]]`
-/

namespace A049480.P2690771303297178817
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 % (n + 1))

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049480.P2690771303297178817

namespace A049480

/-- `∑[∑[comp[n*2%(n+1)]]]` -/
def P2690771303297178817.Spec : Prop :=
  ∀ n, (P2690771303297178817.a n : ℤ) = A049480 (n + 1)

end A049480

/-! ## A049480.P1929818604793215734

`∑[∑[a(n-1)+2]]` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A049480.P1929818604793215734
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049480.P1929818604793215734

namespace A049480

/-- `∑[∑[a(n-1)+2]]` -/
def P1929818604793215734.Spec : Prop :=
  ∀ n, (P1929818604793215734.a n : ℤ) = A049480 (n + 1)

end A049480

/-! ## A049480.P17005161969736683954

`abs(a(n-1)+n²+2)` with `a(0)=1`
-/

namespace A049480.P17005161969736683954
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n ^ 2 + 2)

end

end A049480.P17005161969736683954

namespace A049480

/-- `abs(a(n-1)+n²+2)` -/
def P17005161969736683954.Spec : Prop :=
  ∀ n, (P17005161969736683954.a n : ℤ) = A049480 (n + 1)

end A049480

/-! ## A049480.P15754179536091614157

`floor(a(n-1)+n²+2)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A049480.P15754179536091614157
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n ^ 2 + 2)

end

end A049480.P15754179536091614157

namespace A049480

/-- `floor(a(n-1)+n²+2)` -/
def P15754179536091614157.Spec : Prop :=
  ∀ n, (P15754179536091614157.a n : ℤ) = A049480 (n + 1)

end A049480

/-! ## A049480.P9648261518670194873

`ceil(a(n-1)+n²+2)` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A049480.P9648261518670194873
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n ^ 2 + 2)

end

end A049480.P9648261518670194873

namespace A049480

/-- `ceil(a(n-1)+n²+2)` -/
def P9648261518670194873.Spec : Prop :=
  ∀ n, (P9648261518670194873.a n : ℤ) = A049480 (n + 1)

end A049480

/-! ## A049480.P14105577008723503139

`round(a(n-1)+n²+2)` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A049480.P14105577008723503139
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n ^ 2 + 2)

end

end A049480.P14105577008723503139

namespace A049480

/-- `round(a(n-1)+n²+2)` -/
def P14105577008723503139.Spec : Prop :=
  ∀ n, (P14105577008723503139.a n : ℤ) = A049480 (n + 1)

end A049480

/-! ## A049480.P9083871660845087253

`∑[2-(C(n, 2*n)-n²)]`
-/

namespace A049480.P9083871660845087253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((Nat.choose n (2 * n) : ℤ) - (n ^ 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049480.P9083871660845087253

namespace A049480

/-- `∑[2-(C(n, 2*n)-n²)]` -/
def P9083871660845087253.Spec : Prop :=
  ∀ n, P9083871660845087253.a n = A049480 (n + 1)

end A049480

/-! ## A049480.P11415666362014833181

`floor(n*n+a(n-1)+2)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A049480.P11415666362014833181
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n * n + (a (n - 1) + 2)

end

end A049480.P11415666362014833181

namespace A049480

/-- `floor(n*n+a(n-1)+2)` -/
def P11415666362014833181.Spec : Prop :=
  ∀ n, (P11415666362014833181.a n : ℤ) = A049480 (n + 1)

end A049480

/-! ## A049480.P7836501009938711557

`∑[2*n-(1-a(n-1))]` with `a(0)=1, a(1)=3`
-/

namespace A049480.P7836501009938711557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  (2 * n : ℤ) - (1 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049480.P7836501009938711557

namespace A049480

/-- `∑[2*n-(1-a(n-1))]` -/
def P7836501009938711557.Spec : Prop :=
  ∀ n, P7836501009938711557.a n = A049480 (n + 1)

end A049480

/-! ## A049480.P18269987314103643225

`∑[n-(1-a(n-1)-n)]` with `a(0)=1, a(1)=3`
-/

namespace A049480.P18269987314103643225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  (n : ℤ) - (1 - f1 (n - 1) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049480.P18269987314103643225

namespace A049480

/-- `∑[n-(1-a(n-1)-n)]` -/
def P18269987314103643225.Spec : Prop :=
  ∀ n, P18269987314103643225.a n = A049480 (n + 1)

end A049480

/-!
# A049481: Primes p such that p + 30 is also prime.

The programs for A049481, the canonical program `A049481.P10792709172836752510` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049481 has offset 1).

The definition of A049481 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3449 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049481.P10792709172836752510

`p?[p?[2*n+1]-30]`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049481

/-- `p?[p?[2*n+1]-30]` -/
def P10792709172836752510.Spec : Prop :=
  ∀ n, P10792709172836752510.a n = A049481 (n + 1)

theorem P10792709172836752510.correct : P10792709172836752510.Spec := by
  intro n
  simp only [A049481, Nat.add_sub_cancel]

end A049481

/-! ## A049481.P497795512979530369

`p?[A040976(n+1)-28]`
-/

namespace A049481.P497795512979530369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) - 28

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049481.P497795512979530369

namespace A049481

/-- `p?[A040976(n+1)-28]` -/
def P497795512979530369.Spec : Prop :=
  ∀ n, P497795512979530369.a n = A049481 (n + 1)

end A049481

/-! ## A049481.P806740252212559356

`p?[A006093(n+1)-29]`
-/

namespace A049481.P806740252212559356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - 29

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049481.P806740252212559356

namespace A049481

/-- `p?[A006093(n+1)-29]` -/
def P806740252212559356.Spec : Prop :=
  ∀ n, P806740252212559356.a n = A049481 (n + 1)

end A049481

/-! ## A049481.P17393773689625238466

`p?[A000040(n+1)-30]`
-/

namespace A049481.P17393773689625238466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049481.P17393773689625238466

namespace A049481

/-- `p?[A000040(n+1)-30]` -/
def P17393773689625238466.Spec : Prop :=
  ∀ n, P17393773689625238466.a n = A049481 (n + 1)

end A049481

/-! ## A049481.P14756924624704588832

`p?[A008578(n+1)-30]`
-/

namespace A049481.P14756924624704588832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) - 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049481.P14756924624704588832

namespace A049481

/-- `p?[A008578(n+1)-30]` -/
def P14756924624704588832.Spec : Prop :=
  ∀ n, P14756924624704588832.a n = A049481 (n + 1)

end A049481

/-! ## A049481.P2109353854526103683

`p?[A065091(n+1)-30]`
-/

namespace A049481.P2109353854526103683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) - 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049481.P2109353854526103683

namespace A049481

/-- `p?[A065091(n+1)-30]` -/
def P2109353854526103683.Spec : Prop :=
  ∀ n, P2109353854526103683.a n = A049481 (n + 1)

end A049481

/-! ## A049481.P12488247138968560742

`p?[A052147(n+1)-32]`
-/

namespace A049481.P12488247138968560742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1) - 32

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049481.P12488247138968560742

namespace A049481

/-- `p?[A052147(n+1)-32]` -/
def P12488247138968560742.Spec : Prop :=
  ∀ n, P12488247138968560742.a n = A049481 (n + 1)

end A049481

/-! ## A049481.P9061923113761734691

`p?[record[A000010(n+1)]-29]`
-/

namespace A049481.P9061923113761734691
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - 29

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049481.P9061923113761734691

namespace A049481

/-- `p?[record[A000010(n+1)]-29]` -/
def P9061923113761734691.Spec : Prop :=
  ∀ n, P9061923113761734691.a n = A049481 (n + 1)

end A049481

/-! ## A049481.P5369136107766219217

`p?[record[A006530(n+2)]-30]`
-/

namespace A049481.P5369136107766219217
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049481.P5369136107766219217

namespace A049481

/-- `p?[record[A006530(n+2)]-30]` -/
def P5369136107766219217.Spec : Prop :=
  ∀ n, P5369136107766219217.a n = A049481 (n + 1)

end A049481

/-! ## A049481.P12858344228556215477

`p?[A006530(lt[n, A006530(n+2)]+2)-30]`
-/

namespace A049481.P12858344228556215477
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 2) - 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049481.P12858344228556215477

namespace A049481

/-- `p?[A006530(lt[n, A006530(n+2)]+2)-30]` -/
def P12858344228556215477.Spec : Prop :=
  ∀ n, P12858344228556215477.a n = A049481 (n + 1)

end A049481

/-! ## A049481.P4231195319773707664

`p?[eq[65, A297150(A297169(n+1))]-29]`
-/

namespace A049481.P4231195319773707664
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  65

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297150 (A297169 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ) - 29

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049481.P4231195319773707664

namespace A049481

/-- `p?[eq[65, A297150(A297169(n+1))]-29]` -/
def P4231195319773707664.Spec : Prop :=
  ∀ n, P4231195319773707664.a n = A049481 (n + 1)

end A049481

/-! ## A049481.P13426667337994133151

`p?[A023472(p?[2*n+1])]`
-/

namespace A049481.P13426667337994133151
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023472 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049481.P13426667337994133151

namespace A049481

/-- `p?[A023472(p?[2*n+1])]` -/
def P13426667337994133151.Spec : Prop :=
  ∀ n, P13426667337994133151.a n = A049481 (n + 1)

theorem P13426667337994133151.correct : P13426667337994133151.Spec := by
  intro n
  simp only [A049481, Nat.add_sub_cancel, A049481.P13426667337994133151.f2, A049481.P13426667337994133151.f1, A049481.P13426667337994133151.a, A049481.P10792709172836752510.f2, A049481.P10792709172836752510.f1, A049481.P10792709172836752510.a, A023472, A023472.P7905059235647750017.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049481

/-! ## A049481.P4852843594907057114

`p?[record[A014963(n+2)]-30]`
-/

namespace A049481.P4852843594907057114
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049481.P4852843594907057114

namespace A049481

/-- `p?[record[A014963(n+2)]-30]` -/
def P4852843594907057114.Spec : Prop :=
  ∀ n, P4852843594907057114.a n = A049481 (n + 1)

end A049481

/-! ## A049481.P6910365608474600589

`p?[A023472(A000040(n+1))]`
-/

namespace A049481.P6910365608474600589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023472 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049481.P6910365608474600589

namespace A049481

/-- `p?[A023472(A000040(n+1))]` -/
def P6910365608474600589.Spec : Prop :=
  ∀ n, P6910365608474600589.a n = A049481 (n + 1)

end A049481

/-! ## A049481.P5706012008906752358

`eq[A003415(n+30), A003415(n)]`
-/

namespace A049481.P5706012008906752358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n + 30)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A049481.P5706012008906752358

namespace A049481

/-- `eq[A003415(n+30), A003415(n)]` -/
def P5706012008906752358.Spec : Prop :=
  ∀ n, (P5706012008906752358.a n : ℤ) = A049481 (n + 1)

end A049481

/-! ## A049481.P6297121578613472713

`p?[A023474(A000040(n+1)+2)]`
-/

namespace A049481.P6297121578613472713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023474 (A000040 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049481.P6297121578613472713

namespace A049481

/-- `p?[A023474(A000040(n+1)+2)]` -/
def P6297121578613472713.Spec : Prop :=
  ∀ n, P6297121578613472713.a n = A049481 (n + 1)

end A049481

/-! ## A049481.P13426651031432874667

`record[A006530(A229270(n+2))]`
-/

namespace A049481.P13426651031432874667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A229270 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049481.P13426651031432874667

namespace A049481

/-- `record[A006530(A229270(n+2))]` -/
def P13426651031432874667.Spec : Prop :=
  ∀ n, P13426651031432874667.a n = A049481 (n + 1)

end A049481

/-!
# A049482: Primes p such that p + 210 is also prime.

The programs for A049482, the canonical program `A049482.P14194032820589337229` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049482 has offset 1).

The definition of A049482 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3923 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049482.P14194032820589337229

`p?[n+1-C(10, A000005(n+1)²)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A049482

/-- `p?[n+1-C(10, A000005(n+1)²)]` -/
def P14194032820589337229.Spec : Prop :=
  ∀ n, P14194032820589337229.a n = A049482 (n + 1)

theorem P14194032820589337229.correct : P14194032820589337229.Spec := by
  intro n
  simp only [A049482, Nat.add_sub_cancel]

end A049482

/-! ## A049482.P3737212094750754770

`p?[A045344(n+1)-A086568(A014613(n+1))]`
-/

namespace A049482.P3737212094750754770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1) - A086568 (A014613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049482.P3737212094750754770

namespace A049482

/-- `p?[A045344(n+1)-A086568(A014613(n+1))]` -/
def P3737212094750754770.Spec : Prop :=
  ∀ n, P3737212094750754770.a n = A049482 (n + 1)

end A049482

/-! ## A049482.P16113995509871680189

`p?[A065091(n+1)-A086568(A014613(n+1))]`
-/

namespace A049482.P16113995509871680189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) - A086568 (A014613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049482.P16113995509871680189

namespace A049482

/-- `p?[A065091(n+1)-A086568(A014613(n+1))]` -/
def P16113995509871680189.Spec : Prop :=
  ∀ n, P16113995509871680189.a n = A049482 (n + 1)

end A049482

/-! ## A049482.P18343441080932790052

`p?[11-A063990(A032742(n+1))+n]`
-/

namespace A049482.P18343441080932790052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 - A063990 (A032742 (n + 1)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049482.P18343441080932790052

namespace A049482

/-- `p?[11-A063990(A032742(n+1))+n]` -/
def P18343441080932790052.Spec : Prop :=
  ∀ n, P18343441080932790052.a n = A049482 (n + 1)

end A049482

/-! ## A049482.P16299498488706340472

`p?[A004139(n+1)-A279690(A046386(n+1))]`
-/

namespace A049482.P16299498488706340472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1) - A279690 (A046386 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049482.P16299498488706340472

namespace A049482

/-- `p?[A004139(n+1)-A279690(A046386(n+1))]` -/
def P16299498488706340472.Spec : Prop :=
  ∀ n, P16299498488706340472.a n = A049482 (n + 1)

end A049482

/-! ## A049482.P9005318101036537951

`p?[n+1-A019565(A119347(2*(n+1)))]`
-/

namespace A049482.P9005318101036537951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A019565 (A119347 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049482.P9005318101036537951

namespace A049482

/-- `p?[n+1-A019565(A119347(2*(n+1)))]` -/
def P9005318101036537951.Spec : Prop :=
  ∀ n, P9005318101036537951.a n = A049482 (n + 1)

end A049482

/-!
# A049483: Primes p such that p + 2310 is also prime, where 2310 is the 5th primorial number A002110(5).

The programs for A049483, there is no canonical definition to state claims against.
-/

/-! ## A049483.P10959040690737616928

`p?[A114886(n+4)+18]`
-/

namespace A049483.P10959040690737616928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114886 (n + 4) + 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049483.P10959040690737616928

/-! ## A049483.P7252890880343417162

`p?[lt[1, A129718(A046854(n))]]`
-/

namespace A049483.P7252890880343417162
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129718 (A046854 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A049483.P7252890880343417162

/-! ## A049483.P11461768667563193261

`lt[A041024(A323436(n)), A235201(n)]`
-/

namespace A049483.P11461768667563193261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041024 (A323436 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235201 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A049483.P11461768667563193261

/-! ## A049483.P14066911034478676340

`∩[A162855(n+1), A348517(n+1)]`
-/

namespace A049483.P14066911034478676340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348517 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049483.P14066911034478676340

/-!
# A049484: Primes p such that p + 30030 is also prime, where 30030 is the 6th primorial number A002110(6).

The programs for A049484, there is no canonical definition to state claims against.
-/

/-! ## A049484.P17631963308584174188

`record[A037126(A110264(n+1))]`
-/

namespace A049484.P17631963308584174188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (A110264 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049484.P17631963308584174188

/-! ## A049484.P2414913256397565162

`p?[eq[A101948(n), A309754(n)]]`
-/

namespace A049484.P2414913256397565162
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101948 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309754 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A049484.P2414913256397565162

/-!
# A049486: Maximum length of non-crossing path on n X n square lattice.

The programs for A049486, the canonical program `A049486.P15779660224283629680` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049486 has offset 1).

The definition of A049486 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049486.P15779660224283629680

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=4, a(2)=10, a(3)=21, a(4)=34, a(5)=53`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049486

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P15779660224283629680.Spec : Prop :=
  ∀ n, P15779660224283629680.a n = A049486 (n + 1)

theorem P15779660224283629680.correct : P15779660224283629680.Spec := by
  intro n
  simp only [A049486, Nat.add_sub_cancel]

end A049486

/-! ## A049486.P8147504114143083505

`xor(3, a(n%2)+2*n²)` with `a(0)=1, a(1)=4`
-/

namespace A049486.P8147504114143083505
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  Nat.xor 3 (a (n % 2) + 2 * n ^ 2)

end

end A049486.P8147504114143083505

namespace A049486

/-- `xor(3, a(n%2)+2*n²)` -/
def P8147504114143083505.Spec : Prop :=
  ∀ n, (P8147504114143083505.a n : ℤ) = A049486 (n + 1)

end A049486

/-! ## A049486.P3885947835404960083

`ceil(char[2*n+3]+2/acot(n)²)`
-/

namespace A049486.P3885947835404960083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ) + 2 / SequenceMachineLib.acot (n : ℝ) ^ 2⌉

end

end A049486.P3885947835404960083

namespace A049486

/-- `ceil(char[2*n+3]+2/acot(n)²)` -/
def P3885947835404960083.Spec : Prop :=
  ∀ n, P3885947835404960083.a n = A049486 (n + 1)

end A049486

/-! ## A049486.P6651576307949722965

`A174296(n)+2*n²`
-/

namespace A049486.P6651576307949722965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174296 n + (2 * n ^ 2 : ℤ)

end

end A049486.P6651576307949722965

namespace A049486

/-- `A174296(n)+2*n²` -/
def P6651576307949722965.Spec : Prop :=
  ∀ n, P6651576307949722965.a n = A049486 (n + 1)

end A049486

/-! ## A049486.P17590315264259801272

`A005893(n)+char[2*n+3]`
-/

namespace A049486.P17590315264259801272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A049486.P17590315264259801272

namespace A049486

/-- `A005893(n)+char[2*n+3]` -/
def P17590315264259801272.Spec : Prop :=
  ∀ n, P17590315264259801272.a n = A049486 (n + 1)

end A049486

/-! ## A049486.P18420810303748176913

`char[2*n+3]+∑[A113127(n)]`
-/

namespace A049486.P18420810303748176913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113127 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A049486.P18420810303748176913

namespace A049486

/-- `char[2*n+3]+∑[A113127(n)]` -/
def P18420810303748176913.Spec : Prop :=
  ∀ n, P18420810303748176913.a n = A049486 (n + 1)

end A049486

/-! ## A049486.P588522926686290452

`A000032(and(2, a(n-1)))+2*n²` with `a(0)=1`
-/

namespace A049486.P588522926686290452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000032 (Int.land 2 (a (n - 1))).toNat + (2 * n ^ 2 : ℤ)

end

end A049486.P588522926686290452

namespace A049486

/-- `A000032(and(2, a(n-1)))+2*n²` -/
def P588522926686290452.Spec : Prop :=
  ∀ n, P588522926686290452.a n = A049486 (n + 1)

end A049486

/-! ## A049486.P5649525817379552668

`char[A293990(n+1)]+(n²+1)*ceil(atan(n+1))`
-/

namespace A049486.P5649525817379552668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293990 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (n ^ 2 + 1 : ℤ) * ⌈Real.arctan (n + 1 : ℝ)⌉

end

end A049486.P5649525817379552668

namespace A049486

/-- `char[A293990(n+1)]+(n²+1)*ceil(atan(n+1))` -/
def P5649525817379552668.Spec : Prop :=
  ∀ n, P5649525817379552668.a n = A049486 (n + 1)

end A049486

/-! ## A049486.P7618571528605857329

`char[A109613(n+2)]+(n²+1)*ceil(atan(n+1))`
-/

namespace A049486.P7618571528605857329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (n ^ 2 + 1 : ℤ) * ⌈Real.arctan (n + 1 : ℝ)⌉

end

end A049486.P7618571528605857329

namespace A049486

/-- `char[A109613(n+2)]+(n²+1)*ceil(atan(n+1))` -/
def P7618571528605857329.Spec : Prop :=
  ∀ n, P7618571528605857329.a n = A049486 (n + 1)

end A049486

/-! ## A049486.P11877151244706447519

`A265283(n)+A000384(n)`
-/

namespace A049486.P11877151244706447519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265283 n + A000384 n

end

end A049486.P11877151244706447519

namespace A049486

/-- `A265283(n)+A000384(n)` -/
def P11877151244706447519.Spec : Prop :=
  ∀ n, P11877151244706447519.a n = A049486 (n + 1)

end A049486

/-! ## A049486.P4942493369509959410

`A394499(n+1)+A060576(n)`
-/

namespace A049486.P4942493369509959410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394499 (n + 1) + A060576 n

end

end A049486.P4942493369509959410

namespace A049486

/-- `A394499(n+1)+A060576(n)` -/
def P4942493369509959410.Spec : Prop :=
  ∀ n, P4942493369509959410.a n = A049486 (n + 1)

end A049486

/-! ## A049486.P1990334973165147199

`A265283(n)+n*A004273(n)`
-/

namespace A049486.P1990334973165147199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265283 n + (n : ℤ) * A004273 n

end

end A049486.P1990334973165147199

namespace A049486

/-- `A265283(n)+n*A004273(n)` -/
def P1990334973165147199.Spec : Prop :=
  ∀ n, P1990334973165147199.a n = A049486 (n + 1)

end A049486

/-! ## A049486.P6342898617985801237

`A000005(A135680(n+1))+2*n²`
-/

namespace A049486.P6342898617985801237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A135680 (n + 1)).toNat + (2 * n ^ 2 : ℤ)

end

end A049486.P6342898617985801237

namespace A049486

/-- `A000005(A135680(n+1))+2*n²` -/
def P6342898617985801237.Spec : Prop :=
  ∀ n, P6342898617985801237.a n = A049486 (n + 1)

end A049486

/-! ## A049486.P10788731388762554517

`A001844(n)-(A004273(A004526(n))+n)`
-/

namespace A049486.P10788731388762554517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n - (A004273 (A004526 n).toNat + (n : ℤ))

end

end A049486.P10788731388762554517

namespace A049486

/-- `A001844(n)-(A004273(A004526(n))+n)` -/
def P10788731388762554517.Spec : Prop :=
  ∀ n, P10788731388762554517.a n = A049486 (n + 1)

end A049486

/-! ## A049486.P15118678004632466342

`A001844(n)-(A014681(A052928(n))+n)`
-/

namespace A049486.P15118678004632466342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n - (A014681 (A052928 n).toNat + (n : ℤ))

end

end A049486.P15118678004632466342

namespace A049486

/-- `A001844(n)-(A014681(A052928(n))+n)` -/
def P15118678004632466342.Spec : Prop :=
  ∀ n, P15118678004632466342.a n = A049486 (n + 1)

end A049486

/-! ## A049486.P11000727670690772829

`∑[A267158(2*n+1)]-2*n`
-/

namespace A049486.P11000727670690772829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267158 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (2 * n : ℤ)

end

end A049486.P11000727670690772829

namespace A049486

/-- `∑[A267158(2*n+1)]-2*n` -/
def P11000727670690772829.Spec : Prop :=
  ∀ n, P11000727670690772829.a n = A049486 (n + 1)

end A049486

/-! ## A049486.P5714817155419438189

`A266448(2*n)-A266444(n+11)`
-/

namespace A049486.P5714817155419438189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266448 (2 * n) - A266444 (n + 11)

end

end A049486.P5714817155419438189

namespace A049486

/-- `A266448(2*n)-A266444(n+11)` -/
def P5714817155419438189.Spec : Prop :=
  ∀ n, P5714817155419438189.a n = A049486 (n + 1)

end A049486

/-! ## A049486.P8565959150011289699

`A266793(2*n)-(A004524(2*n)+n)`
-/

namespace A049486.P8565959150011289699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266793 (2 * n) - (A004524 (2 * n) + (n : ℤ))

end

end A049486.P8565959150011289699

namespace A049486

/-- `A266793(2*n)-(A004524(2*n)+n)` -/
def P8565959150011289699.Spec : Prop :=
  ∀ n, P8565959150011289699.a n = A049486 (n + 1)

end A049486

/-! ## A049486.P2292390574126877294

`A001844(n)-(A293137(A002620(n))+n)`
-/

namespace A049486.P2292390574126877294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n - (A293137 (A002620 n).toNat + (n : ℤ))

end

end A049486.P2292390574126877294

namespace A049486

/-- `A001844(n)-(A293137(A002620(n))+n)` -/
def P2292390574126877294.Spec : Prop :=
  ∀ n, P2292390574126877294.a n = A049486 (n + 1)

end A049486

/-! ## A049486.P12720619679323782051

`A265283(n²)+n²`
-/

namespace A049486.P12720619679323782051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265283 (n ^ 2) + (n ^ 2 : ℤ)

end

end A049486.P12720619679323782051

namespace A049486

/-- `A265283(n²)+n²` -/
def P12720619679323782051.Spec : Prop :=
  ∀ n, P12720619679323782051.a n = A049486 (n + 1)

end A049486

/-!
# A049488: Primes p such that p+16 is prime.

The programs for A049488, there is no canonical definition to state claims against.
-/

/-! ## A049488.P6443102538389905075

`A087682(n+1)-8`
-/

namespace A049488.P6443102538389905075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087682 (n + 1) - 8

end

end A049488.P6443102538389905075

/-! ## A049488.P9061862962525143190

`A272815(Δ[n²])`
-/

namespace A049488.P9061862962525143190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272815 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A049488.P9061862962525143190

/-! ## A049488.P17446587666293014541

`record[A272815(abs(A118402(n)))]`
-/

namespace A049488.P17446587666293014541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272815 |A118402 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049488.P17446587666293014541

/-! ## A049488.P4141419828579867235

`record[A272815(A000265(n+1))]`
-/

namespace A049488.P4141419828579867235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272815 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049488.P4141419828579867235

/-! ## A049488.P10039694701079730919

`or(1, A272815(A000027(2*n+1)))`
-/

namespace A049488.P10039694701079730919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A272815 (A000027 (2 * n + 1)).toNat)

end

end A049488.P10039694701079730919

/-! ## A049488.P4627965189173632195

`A272815(2*n+1)+A226782(2*(n+2))`
-/

namespace A049488.P4627965189173632195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272815 (2 * n + 1) + A226782 (2 * (n + 2))

end

end A049488.P4627965189173632195

/-! ## A049488.P2043005597553514748

`p?[A086303(n+1)-1]`
-/

namespace A049488.P2043005597553514748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086303 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049488.P2043005597553514748

/-! ## A049488.P17345870916822210357

`p?[2*A173059(n+1)+1]`
-/

namespace A049488.P17345870916822210357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A173059 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049488.P17345870916822210357

/-! ## A049488.P1394175534537844759

`p?[2*A089559(n+1)-1]`
-/

namespace A049488.P1394175534537844759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A089559 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049488.P1394175534537844759

/-! ## A049488.P8180295130133521320

`p?[p?[2*n+1]-16]`
-/

namespace A049488.P8180295130133521320
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049488.P8180295130133521320

/-! ## A049488.P17245039527592349183

`p?[A028815(n)-17]`
-/

namespace A049488.P17245039527592349183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n - 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049488.P17245039527592349183

/-! ## A049488.P10509926450397279951

`p?[A040976(n+1)-14]`
-/

namespace A049488.P10509926450397279951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) - 14

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049488.P10509926450397279951

/-! ## A049488.P14447308696971884655

`p?[A006093(n+1)-15]`
-/

namespace A049488.P14447308696971884655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - 15

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049488.P14447308696971884655

/-! ## A049488.P14606543618509280781

`p?[A000040(n+1)-16]`
-/

namespace A049488.P14606543618509280781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049488.P14606543618509280781

/-! ## A049488.P2953339220507771002

`p?[A008578(n+1)-16]`
-/

namespace A049488.P2953339220507771002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) - 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049488.P2953339220507771002

/-! ## A049488.P5846707941371643218

`p?[A008864(n+1)-17]`
-/

namespace A049488.P5846707941371643218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049488.P5846707941371643218

/-! ## A049488.P17429758009255228277

`p?[A175216(n+1)-17]`
-/

namespace A049488.P17429758009255228277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175216 (n + 1) - 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049488.P17429758009255228277

/-! ## A049488.P17127218887759590317

`p?[A158611(n+1)-16]`
-/

namespace A049488.P17127218887759590317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1) - 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049488.P17127218887759590317

/-! ## A049488.P7190541382745125664

`p?[A000430(n+1)-16]`
-/

namespace A049488.P7190541382745125664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1) - 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049488.P7190541382745125664

/-!
# A049489: Primes p such that p + 32 is also prime.

The programs for A049489, the canonical program `A049489.P12593003460184970767` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049489 has offset 1).

The definition of A049489 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2355 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049489.P12593003460184970767

`p?[p?[a(n-1)+3]-32]` with `a(0)=31`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049489

/-- `p?[p?[a(n-1)+3]-32]` -/
def P12593003460184970767.Spec : Prop :=
  ∀ n, P12593003460184970767.a n = A049489 (n + 1)

theorem P12593003460184970767.correct : P12593003460184970767.Spec := by
  intro n
  simp only [A049489, Nat.add_sub_cancel]

end A049489

/-! ## A049489.P11531533343048514846

`p?[A002476(n+1)-32]`
-/

namespace A049489.P11531533343048514846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1) - 32

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049489.P11531533343048514846

namespace A049489

/-- `p?[A002476(n+1)-32]` -/
def P11531533343048514846.Spec : Prop :=
  ∀ n, P11531533343048514846.a n = A049489 (n + 1)

end A049489

/-! ## A049489.P6149881840442233246

`p?[A053176(n+1)-32]`
-/

namespace A049489.P6149881840442233246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053176 (n + 1) - 32

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049489.P6149881840442233246

namespace A049489

/-- `p?[A053176(n+1)-32]` -/
def P6149881840442233246.Spec : Prop :=
  ∀ n, P6149881840442233246.a n = A049489 (n + 1)

end A049489

/-! ## A049489.P2488910678193082506

`p?[A156037(n+1)-31]`
-/

namespace A049489.P2488910678193082506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156037 (n + 1) - 31

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049489.P2488910678193082506

namespace A049489

/-- `p?[A156037(n+1)-31]` -/
def P2488910678193082506.Spec : Prop :=
  ∀ n, P2488910678193082506.a n = A049489 (n + 1)

end A049489

/-! ## A049489.P6666725457563819490

`p?[p?[2*n+1]-32]`
-/

namespace A049489.P6666725457563819490
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 32

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049489.P6666725457563819490

namespace A049489

/-- `p?[p?[2*n+1]-32]` -/
def P6666725457563819490.Spec : Prop :=
  ∀ n, P6666725457563819490.a n = A049489 (n + 1)

end A049489

/-! ## A049489.P3949202601570163752

`p?[A040976(n+1)-30]`
-/

namespace A049489.P3949202601570163752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) - 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049489.P3949202601570163752

namespace A049489

/-- `p?[A040976(n+1)-30]` -/
def P3949202601570163752.Spec : Prop :=
  ∀ n, P3949202601570163752.a n = A049489 (n + 1)

end A049489

/-! ## A049489.P15432352539537813946

`p?[A000040(n+1)-32]`
-/

namespace A049489.P15432352539537813946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 32

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049489.P15432352539537813946

namespace A049489

/-- `p?[A000040(n+1)-32]` -/
def P15432352539537813946.Spec : Prop :=
  ∀ n, P15432352539537813946.a n = A049489 (n + 1)

end A049489

/-! ## A049489.P7403066380362411571

`p?[A008578(n+1)-32]`
-/

namespace A049489.P7403066380362411571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) - 32

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049489.P7403066380362411571

namespace A049489

/-- `p?[A008578(n+1)-32]` -/
def P7403066380362411571.Spec : Prop :=
  ∀ n, P7403066380362411571.a n = A049489 (n + 1)

end A049489

/-! ## A049489.P16197068917363322331

`p?[A158611(n+1)-32]`
-/

namespace A049489.P16197068917363322331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1) - 32

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049489.P16197068917363322331

namespace A049489

/-- `p?[A158611(n+1)-32]` -/
def P16197068917363322331.Spec : Prop :=
  ∀ n, P16197068917363322331.a n = A049489 (n + 1)

end A049489

/-! ## A049489.P9987865178722654665

`p?[A008864(n+1)-33]`
-/

namespace A049489.P9987865178722654665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - 33

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049489.P9987865178722654665

namespace A049489

/-- `p?[A008864(n+1)-33]` -/
def P9987865178722654665.Spec : Prop :=
  ∀ n, P9987865178722654665.a n = A049489 (n + 1)

end A049489

/-! ## A049489.P5739916974117219427

`p?[record[A006530(n+2)]-32]`
-/

namespace A049489.P5739916974117219427
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - 32

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049489.P5739916974117219427

namespace A049489

/-- `p?[record[A006530(n+2)]-32]` -/
def P5739916974117219427.Spec : Prop :=
  ∀ n, P5739916974117219427.a n = A049489 (n + 1)

end A049489

/-! ## A049489.P15362426118434005493

`p?[record[A020639(n+2)]-32]`
-/

namespace A049489.P15362426118434005493
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - 32

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049489.P15362426118434005493

namespace A049489

/-- `p?[record[A020639(n+2)]-32]` -/
def P15362426118434005493.Spec : Prop :=
  ∀ n, P15362426118434005493.a n = A049489 (n + 1)

end A049489

/-! ## A049489.P4781236656553591169

`p?[eq[2, A225767(n)]]`
-/

namespace A049489.P4781236656553591169
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225767 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A049489.P4781236656553591169

namespace A049489

/-- `p?[eq[2, A225767(n)]]` -/
def P4781236656553591169.Spec : Prop :=
  ∀ n, (P4781236656553591169.a n : ℤ) = A049489 (n + 1)

end A049489

/-! ## A049489.P14626365248378672077

`p?[A023474(p?[2*n+1])]`
-/

namespace A049489.P14626365248378672077
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023474 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049489.P14626365248378672077

namespace A049489

/-- `p?[A023474(p?[2*n+1])]` -/
def P14626365248378672077.Spec : Prop :=
  ∀ n, P14626365248378672077.a n = A049489 (n + 1)

end A049489

/-! ## A049489.P1568805903711651204

`p?[record[A014963(n+2)]-32]`
-/

namespace A049489.P1568805903711651204
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - 32

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049489.P1568805903711651204

namespace A049489

/-- `p?[record[A014963(n+2)]-32]` -/
def P1568805903711651204.Spec : Prop :=
  ∀ n, P1568805903711651204.a n = A049489 (n + 1)

end A049489

/-! ## A049489.P11222606598601456909

`p?[A023474(A000040(n+1))]`
-/

namespace A049489.P11222606598601456909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023474 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049489.P11222606598601456909

namespace A049489

/-- `p?[A023474(A000040(n+1))]` -/
def P11222606598601456909.Spec : Prop :=
  ∀ n, P11222606598601456909.a n = A049489 (n + 1)

end A049489

/-! ## A049489.P6363314490793605125

`eq[2, A003415(n)*A225767(n)]`
-/

namespace A049489.P6363314490793605125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n * A225767 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A049489.P6363314490793605125

namespace A049489

/-- `eq[2, A003415(n)*A225767(n)]` -/
def P6363314490793605125.Spec : Prop :=
  ∀ n, (P6363314490793605125.a n : ℤ) = A049489 (n + 1)

end A049489

/-! ## A049489.P9225219413286536630

`p?[A023476(A000040(n+1)+2)]`
-/

namespace A049489.P9225219413286536630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023476 (A000040 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049489.P9225219413286536630

namespace A049489

/-- `p?[A023476(A000040(n+1)+2)]` -/
def P9225219413286536630.Spec : Prop :=
  ∀ n, P9225219413286536630.a n = A049489 (n + 1)

end A049489

/-!
# A049490: a(n) and a(n)+64 both prime.

The programs for A049490, the canonical program `A049490.P11331321976391377834` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049490 has offset 1).

The definition of A049490 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1301 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049490.P11331321976391377834

`p?[p?[2*n+1]-64]`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049490

/-- `p?[p?[2*n+1]-64]` -/
def P11331321976391377834.Spec : Prop :=
  ∀ n, P11331321976391377834.a n = A049490 (n + 1)

theorem P11331321976391377834.correct : P11331321976391377834.Spec := by
  intro n
  simp only [A049490, Nat.add_sub_cancel]

end A049490

/-! ## A049490.P10991803307758312663

`p?[A006093(n+1)-63]`
-/

namespace A049490.P10991803307758312663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - 63

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049490.P10991803307758312663

namespace A049490

/-- `p?[A006093(n+1)-63]` -/
def P10991803307758312663.Spec : Prop :=
  ∀ n, P10991803307758312663.a n = A049490 (n + 1)

end A049490

/-! ## A049490.P16495006103823297326

`p?[A000040(n+1)-64]`
-/

namespace A049490.P16495006103823297326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 64

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049490.P16495006103823297326

namespace A049490

/-- `p?[A000040(n+1)-64]` -/
def P16495006103823297326.Spec : Prop :=
  ∀ n, P16495006103823297326.a n = A049490 (n + 1)

end A049490

/-! ## A049490.P8374626244266101453

`p?[A008578(n+1)-64]`
-/

namespace A049490.P8374626244266101453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) - 64

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049490.P8374626244266101453

namespace A049490

/-- `p?[A008578(n+1)-64]` -/
def P8374626244266101453.Spec : Prop :=
  ∀ n, P8374626244266101453.a n = A049490 (n + 1)

end A049490

/-! ## A049490.P4480758665532223589

`p?[A065091(n+1)-64]`
-/

namespace A049490.P4480758665532223589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) - 64

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049490.P4480758665532223589

namespace A049490

/-- `p?[A065091(n+1)-64]` -/
def P4480758665532223589.Spec : Prop :=
  ∀ n, P4480758665532223589.a n = A049490 (n + 1)

end A049490

/-! ## A049490.P5872902661046790136

`p?[A181901(n+1)-64]`
-/

namespace A049490.P5872902661046790136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181901 (n + 1) - 64

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049490.P5872902661046790136

namespace A049490

/-- `p?[A181901(n+1)-64]` -/
def P5872902661046790136.Spec : Prop :=
  ∀ n, P5872902661046790136.a n = A049490 (n + 1)

end A049490

/-! ## A049490.P7107723920645318774

`p?[A000430(n+1)-64]`
-/

namespace A049490.P7107723920645318774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1) - 64

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049490.P7107723920645318774

namespace A049490

/-- `p?[A000430(n+1)-64]` -/
def P7107723920645318774.Spec : Prop :=
  ∀ n, P7107723920645318774.a n = A049490 (n + 1)

end A049490

/-! ## A049490.P7911960641543547479

`p?[A001751(n+1)-64]`
-/

namespace A049490.P7911960641543547479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 1) - 64

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049490.P7911960641543547479

namespace A049490

/-- `p?[A001751(n+1)-64]` -/
def P7911960641543547479.Spec : Prop :=
  ∀ n, P7911960641543547479.a n = A049490 (n + 1)

end A049490

/-! ## A049490.P9939726223840464734

`p?[A085118(n+1)-64]`
-/

namespace A049490.P9939726223840464734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085118 (n + 1) - 64

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049490.P9939726223840464734

namespace A049490

/-- `p?[A085118(n+1)-64]` -/
def P9939726223840464734.Spec : Prop :=
  ∀ n, P9939726223840464734.a n = A049490 (n + 1)

end A049490

/-! ## A049490.P4929355716833759401

`p?[n-A018252(A323161(n+1))²]`
-/

namespace A049490.P4929355716833759401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A018252 (A323161 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049490.P4929355716833759401

namespace A049490

/-- `p?[n-A018252(A323161(n+1))²]` -/
def P4929355716833759401.Spec : Prop :=
  ∀ n, P4929355716833759401.a n = A049490 (n + 1)

end A049490

/-! ## A049490.P1293274448539838498

`p?[n-A121283(A175126(n))²]`
-/

namespace A049490.P1293274448539838498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A121283 (A175126 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049490.P1293274448539838498

namespace A049490

/-- `p?[n-A121283(A175126(n))²]` -/
def P1293274448539838498.Spec : Prop :=
  ∀ n, P1293274448539838498.a n = A049490 (n + 1)

end A049490

/-! ## A049490.P7027081909072220130

`p?[A061397(n+1)-64]`
-/

namespace A049490.P7027081909072220130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (n + 1) - 64

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049490.P7027081909072220130

namespace A049490

/-- `p?[A061397(n+1)-64]` -/
def P7027081909072220130.Spec : Prop :=
  ∀ n, P7027081909072220130.a n = A049490 (n + 1)

end A049490

/-! ## A049490.P12329873172713757321

`p?[A220627(n+1)-64]`
-/

namespace A049490.P12329873172713757321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220627 (n + 1) - 64

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049490.P12329873172713757321

namespace A049490

/-- `p?[A220627(n+1)-64]` -/
def P12329873172713757321.Spec : Prop :=
  ∀ n, P12329873172713757321.a n = A049490 (n + 1)

end A049490

/-!
# A049491: Numbers k such that k and k+128 are both prime.

The programs for A049491, the canonical program `A049491.P3427742740246822641` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049491 has offset 1).

The definition of A049491 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1250 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049491.P3427742740246822641

`p?[A065091(n+2)-A171442(n)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A049491

/-- `p?[A065091(n+2)-A171442(n)]` -/
def P3427742740246822641.Spec : Prop :=
  ∀ n, P3427742740246822641.a n = A049491 (n + 1)

theorem P3427742740246822641.correct : P3427742740246822641.Spec := by
  intro n
  simp only [A049491, Nat.add_sub_cancel]

end A049491

/-! ## A049491.P9415837513687533405

`p?[A005408(n)-A033431(A305901(n+1))]`
-/

namespace A049491.P9415837513687533405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - A033431 (A305901 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049491.P9415837513687533405

namespace A049491

/-- `p?[A005408(n)-A033431(A305901(n+1))]` -/
def P9415837513687533405.Spec : Prop :=
  ∀ n, P9415837513687533405.a n = A049491 (n + 1)

end A049491

/-! ## A049491.P5067274084510592842

`p?[n-A208711(A054843(n))]`
-/

namespace A049491.P5067274084510592842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A208711 (A054843 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049491.P5067274084510592842

namespace A049491

/-- `p?[n-A208711(A054843(n))]` -/
def P5067274084510592842.Spec : Prop :=
  ∀ n, P5067274084510592842.a n = A049491 (n + 1)

end A049491

/-! ## A049491.P5197411002546011906

`p?[A014963(n+1)-A171442(n)]`
-/

namespace A049491.P5197411002546011906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1) - A171442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049491.P5197411002546011906

namespace A049491

/-- `p?[A014963(n+1)-A171442(n)]` -/
def P5197411002546011906.Spec : Prop :=
  ∀ n, P5197411002546011906.a n = A049491 (n + 1)

end A049491

/-! ## A049491.P12717711876895190280

`p?[n-A181126(A329620(n+1))]`
-/

namespace A049491.P12717711876895190280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A181126 (A329620 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049491.P12717711876895190280

namespace A049491

/-- `p?[n-A181126(A329620(n+1))]` -/
def P12717711876895190280.Spec : Prop :=
  ∀ n, P12717711876895190280.a n = A049491 (n + 1)

end A049491

/-!
# A049492: Primes p such that p+4 and p+16 are also primes.

The programs for A049492, there is no canonical definition to state claims against.
-/

/-! ## A049492.P3627862045979542054

`∩[A015913(n+1), A049488(n+1)]`
-/

namespace A049492.P3627862045979542054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049488 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049492.P3627862045979542054

/-! ## A049492.P15307187226454747653

`∩[A049488(n+1), A172238(n+1)]`
-/

namespace A049492.P15307187226454747653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049492.P15307187226454747653

/-! ## A049492.P10843847798357568523

`∩[A049488(n+1), A056772(n+1)]`
-/

namespace A049492.P10843847798357568523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049492.P10843847798357568523

/-! ## A049492.P13455686250035225736

`p?[A087682(n+1)-4]-4`
-/

namespace A049492.P13455686250035225736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087682 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 4

end

end A049492.P13455686250035225736

/-! ## A049492.P4525552218433629718

`p?[A046133(n+1)-4]`
-/

namespace A049492.P4525552218433629718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046133 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049492.P4525552218433629718

/-! ## A049492.P14625905602348701924

`p?[A087681(n+1)-10]`
-/

namespace A049492.P14625905602348701924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087681 (n + 1) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049492.P14625905602348701924

/-! ## A049492.P12955750868432322316

`p?[A092216(n+1)-16]`
-/

namespace A049492.P12955750868432322316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092216 (n + 1) - 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049492.P12955750868432322316

/-! ## A049492.P12423737833424719083

`p?[2*A088766(n+1)-9]`
-/

namespace A049492.P12423737833424719083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088766 (n + 1) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049492.P12423737833424719083

/-! ## A049492.P13303311063837076448

`∩[A049488(n+1), A172367(n+1)]`
-/

namespace A049492.P13303311063837076448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049492.P13303311063837076448

/-! ## A049492.P10176978115726723655

`record[A006530(A087682(n+1)-4)-4]`
-/

namespace A049492.P10176978115726723655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A087682 (n + 1) - 4).toNat - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049492.P10176978115726723655

/-! ## A049492.P7590110476220067595

`∩[A049488(n+1), A282354(n+1)]`
-/

namespace A049492.P7590110476220067595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049492.P7590110476220067595

/-! ## A049492.P12832126464466088744

`∩[A049488(n+1), A124589(n+1)]`
-/

namespace A049492.P12832126464466088744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049492.P12832126464466088744

/-!
# A049493: Numbers n such that n and n+4^k are all primes for k=1,2,3.

The programs for A049493, there is no canonical definition to state claims against.
-/

/-! ## A049493.P15406791163160563688

`∩[A049490(n+1), A049492(n+1)]`
-/

namespace A049493.P15406791163160563688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049490 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049493.P15406791163160563688

/-! ## A049493.P18246365254951047707

`∩[A049490(n+1), p?[A087682(n+1)-4]-4]`
-/

namespace A049493.P18246365254951047707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049490 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087682 (n + 1) - 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n) - 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049493.P18246365254951047707

/-! ## A049493.P2083062539854607014

`∩[p?[A046133(n+1)-4], A049490(n+1)]`
-/

namespace A049493.P2083062539854607014
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046133 (n + 1) - 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049490 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A049493.P2083062539854607014

/-! ## A049493.P18426250657567047918

`∩[A049490(n+1), p?[A087681(n+1)-10]]`
-/

namespace A049493.P18426250657567047918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049490 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087681 (n + 1) - 10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049493.P18426250657567047918

/-! ## A049493.P1019138895952967518

`∩[A049490(n+1), p?[A092216(n+1)-16]]`
-/

namespace A049493.P1019138895952967518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049490 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092216 (n + 1) - 16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049493.P1019138895952967518

/-!
# A049494: a(n) and a(n)+4^k are primes at least for k=1,2,3,4.

The programs for A049494, there is no canonical definition to state claims against.
-/

/-! ## A049494.P16997952824159829244

`∩[A049493(n+1), A269257(n+1)]`
-/

namespace A049494.P16997952824159829244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049494.P16997952824159829244

/-! ## A049494.P17831092491094437861

`∩[A049492(n+1), A269257(n+1)]`
-/

namespace A049494.P17831092491094437861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049494.P17831092491094437861

/-! ## A049494.P546378851117910869

`∩[A029710(n+1), A269257(n+1)]`
-/

namespace A049494.P546378851117910869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049494.P546378851117910869

/-! ## A049494.P15036185831855553412

`∩[A015913(n+1), A269257(n+1)]`
-/

namespace A049494.P15036185831855553412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049494.P15036185831855553412

/-! ## A049494.P8389320501508495021

`∩[A049493(n+1), A361483(n+1)]`
-/

namespace A049494.P8389320501508495021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361483 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049494.P8389320501508495021

/-! ## A049494.P1721518854566901027

`∩[A164572(n+1), A269257(n+1)]`
-/

namespace A049494.P1721518854566901027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164572 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049494.P1721518854566901027

/-! ## A049494.P9727076362962494209

`∩[A172238(n+1), A269257(n+1)]`
-/

namespace A049494.P9727076362962494209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049494.P9727076362962494209

/-! ## A049494.P7637806397133537282

`∩[A056772(n+1), A269257(n+1)]`
-/

namespace A049494.P7637806397133537282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049494.P7637806397133537282

/-! ## A049494.P15310721268792671035

`∩[A049490(n+1), A233747(n+1)]`
-/

namespace A049494.P15310721268792671035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049490 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049494.P15310721268792671035

/-! ## A049494.P4897295853197867549

`∩[A049493(n+1), A233747(n+1)]`
-/

namespace A049494.P4897295853197867549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049494.P4897295853197867549

/-! ## A049494.P5133657952067386055

`∩[A233747(n+1), A269257(n+1)]`
-/

namespace A049494.P5133657952067386055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049494.P5133657952067386055

/-!
# A049495: a(n) and a(n)+4^k are primes at least for k=1,2,3,4,5.

The programs for A049495, there is no canonical definition to state claims against.
-/

/-! ## A049495.P12514347449563224217

`∩[A049494(n+1), A269258(n+1)]`
-/

namespace A049495.P12514347449563224217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049495.P12514347449563224217

/-! ## A049495.P4439360947295610310

`∩[A049493(n+1), A269258(n+1)]`
-/

namespace A049495.P4439360947295610310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049495.P4439360947295610310

/-! ## A049495.P18227946019992837721

`∩[A049492(n+1), A269258(n+1)]`
-/

namespace A049495.P18227946019992837721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049495.P18227946019992837721

/-! ## A049495.P15257783563314397554

`∩[A015913(n+1), A269258(n+1)]`
-/

namespace A049495.P15257783563314397554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049495.P15257783563314397554

/-! ## A049495.P10591343773429862654

`∩[A164572(n+1), A269258(n+1)]`
-/

namespace A049495.P10591343773429862654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164572 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049495.P10591343773429862654

/-!
# A049496: a(n) and a(n)+4^k are primes at least for k=1,2,3,4,5,6.

The programs for A049496, there is no canonical definition to state claims against.
-/

/-! ## A049496.P14446542775240404070

`∩[A049493(n+1), A269259(n+1)]`
-/

namespace A049496.P14446542775240404070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049496.P14446542775240404070

/-! ## A049496.P6781769859973239227

`∩[A049494(n+1), A269259(n+1)]`
-/

namespace A049496.P6781769859973239227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049496.P6781769859973239227

/-! ## A049496.P4592943566973813083

`∩[A049495(n+1), A269259(n+1)]`
-/

namespace A049496.P4592943566973813083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049495 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049496.P4592943566973813083

/-! ## A049496.P17205143006612528846

`∩[A049492(n+1), A269259(n+1)]`
-/

namespace A049496.P17205143006612528846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049496.P17205143006612528846

/-! ## A049496.P957694472911251094

`∩[A015913(n+1), A269259(n+1)]`
-/

namespace A049496.P957694472911251094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049496.P957694472911251094

/-!
# A049497: a(n) and a(n)+4^k are primes at least for k=1,2,3,4,5,6,7.

The programs for A049497, there is no canonical definition to state claims against.
-/

/-! ## A049497.P1587103495420819981

`∩[A049495(n+1), A269859(n+1)]`
-/

namespace A049497.P1587103495420819981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049495 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049497.P1587103495420819981

/-! ## A049497.P10215205875384617866

`∩[A049494(n+1), A269859(n+1)]`
-/

namespace A049497.P10215205875384617866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049497.P10215205875384617866

/-! ## A049497.P16166166633699765169

`∩[A049493(n+1), A269859(n+1)]`
-/

namespace A049497.P16166166633699765169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049497.P16166166633699765169

/-! ## A049497.P13982782737430148939

`∩[A049496(n+1), A269859(n+1)]`
-/

namespace A049497.P13982782737430148939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049497.P13982782737430148939

/-!
# A049498: a(n) and a(n)+4^k are primes at least for k=1,2,3,4,5,6,7,8.

The programs for A049498, there is no canonical definition to state claims against.
-/

/-! ## A049498.P3358499934298020117

`∩[A049497(n+1), A270203(n+1)]`
-/

namespace A049498.P3358499934298020117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049497 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270203 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049498.P3358499934298020117

/-! ## A049498.P9695988751662110004

`∩[A049495(n+1), A270203(n+1)]`
-/

namespace A049498.P9695988751662110004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049495 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270203 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049498.P9695988751662110004

/-! ## A049498.P6879213784323705948

`∩[A049494(n+1), A270203(n+1)]`
-/

namespace A049498.P6879213784323705948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270203 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049498.P6879213784323705948

/-! ## A049498.P12667905523778933248

`∩[A049496(n+1), A270203(n+1)]`
-/

namespace A049498.P12667905523778933248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270203 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049498.P12667905523778933248

