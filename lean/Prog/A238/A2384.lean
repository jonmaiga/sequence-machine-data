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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
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
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
# A238400: Primes in A238399.

The programs for A238400, there is no canonical definition to state claims against.
-/

/-! ## A238400.P2781160988639703233

`p?[A238399(n+1)]`
-/

namespace A238400.P2781160988639703233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238399 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A238400.P2781160988639703233

/-! ## A238400.P1245358014084771237

`p?[record[A238399(A007306(n))]]`
-/

namespace A238400.P1245358014084771237
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238399 (A007306 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A238400.P1245358014084771237

/-! ## A238400.P10820533135218125230

`p?[record[A238399(A117910(n))]]`
-/

namespace A238400.P10820533135218125230
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238399 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A238400.P10820533135218125230

/-!
# A238401: Floor(sum(i/(i+1)),i=1..n).

The programs for A238401, the canonical program `A238401.P535674780687341578` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238401 has offset 0).

The definition of A238401 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1839 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A238401.P535674780687341578

`floor(∑[n/(n+1)])`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A238401

/-- `floor(∑[n/(n+1)])` -/
def P535674780687341578.Spec : Prop :=
  ∀ n, P535674780687341578.a n = A238401 n

theorem P535674780687341578.correct : P535674780687341578.Spec := by
  intro n
  simp only [A238401]

end A238401

/-! ## A238401.P5414146757975026885

`round(∑[xor(n, char[1])/(n+1)])`
-/

namespace A238401.P5414146757975026885
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (if ∃ j, f2 j = n then 1 else 0) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A238401.P5414146757975026885

namespace A238401

/-- `round(∑[xor(n, char[1])/(n+1)])` -/
def P5414146757975026885.Spec : Prop :=
  ∀ n, P5414146757975026885.a n = A238401 n

end A238401

/-! ## A238401.P2957642400110613491

`n+1-dr(ceil(∑[1/(n+1)]))`
-/

namespace A238401.P2957642400110613491
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (SequenceMachineLib.digitalRoot ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉ : ℤ)

end

end A238401.P2957642400110613491

namespace A238401

/-- `n+1-dr(ceil(∑[1/(n+1)]))` -/
def P2957642400110613491.Spec : Prop :=
  ∀ n, P2957642400110613491.a n = A238401 n

end A238401

/-! ## A238401.P12525589933061538482

`1-A096143(n+1)+n`
-/

namespace A238401.P12525589933061538482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A096143 (n + 1) + (n : ℤ)

end

end A238401.P12525589933061538482

namespace A238401

/-- `1-A096143(n+1)+n` -/
def P12525589933061538482.Spec : Prop :=
  ∀ n, P12525589933061538482.a n = A238401 n

end A238401

/-! ## A238401.P4620826135557739329

`A028310(n)-A055980(n+1)`
-/

namespace A238401.P4620826135557739329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - A055980 (n + 1)

end

end A238401.P4620826135557739329

namespace A238401

/-- `A028310(n)-A055980(n+1)` -/
def P4620826135557739329.Spec : Prop :=
  ∀ n, P4620826135557739329.a n = A238401 n

end A238401

/-! ## A238401.P4612610005664764384

`A055980(n+1)*A057428(n)+n`
-/

namespace A238401.P4612610005664764384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055980 (n + 1) * A057428 n + (n : ℤ)

end

end A238401.P4612610005664764384

namespace A238401

/-- `A055980(n+1)*A057428(n)+n` -/
def P4612610005664764384.Spec : Prop :=
  ∀ n, P4612610005664764384.a n = A238401 n

end A238401

/-! ## A238401.P17561283262467315117

`n-A055980(n+1)*A057427(n)`
-/

namespace A238401.P17561283262467315117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A055980 (n + 1) * A057427 n

end

end A238401.P17561283262467315117

namespace A238401

/-- `n-A055980(n+1)*A057427(n)` -/
def P17561283262467315117.Spec : Prop :=
  ∀ n, P17561283262467315117.a n = A238401 n

end A238401

/-! ## A238401.P8096290083729868638

`A131209(n)-A071578(n+1)`
-/

namespace A238401.P8096290083729868638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131209 n - A071578 (n + 1)

end

end A238401.P8096290083729868638

namespace A238401

/-- `A131209(n)-A071578(n+1)` -/
def P8096290083729868638.Spec : Prop :=
  ∀ n, P8096290083729868638.a n = A238401 n

end A238401

/-! ## A238401.P6318159922461033855

`n-A073458(A328792(n+1)+n)`
-/

namespace A238401.P6318159922461033855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A073458 (A328792 (n + 1) + (n : ℤ)).toNat

end

end A238401.P6318159922461033855

namespace A238401

/-- `n-A073458(A328792(n+1)+n)` -/
def P6318159922461033855.Spec : Prop :=
  ∀ n, P6318159922461033855.a n = A238401 n

end A238401

/-!
# A238403: Number of ways a number can be decomposed as a sum of the form pq + qr + rp where p < q < r are distinct primes.

The programs for A238403, there is no canonical definition to state claims against.
-/

/-! ## A238403.P14611429292858472572

`A004188(A317839(3*n+5))%A303707(n+5)`
-/

namespace A238403.P14611429292858472572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004188 (A317839 (3 * n + 5)).toNat) (A303707 (n + 5))

end

end A238403.P14611429292858472572

/-! ## A238403.P7547811228502885600

`and(A025442(A118344(n)), A117923(n+1))`
-/

namespace A238403.P7547811228502885600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A025442 (A118344 n).toNat) (A117923 (n + 1))

end

end A238403.P7547811228502885600

/-! ## A238403.P14079354175498946078

`A139352(A293071(A166333(n))²)`
-/

namespace A238403.P14079354175498946078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (A293071 (A166333 n).toNat ^ 2).toNat

end

end A238403.P14079354175498946078

/-! ## A238403.P13439590479746509879

`A230103(A119258(A348972(n+1)))`
-/

namespace A238403.P13439590479746509879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230103 (A119258 (A348972 (n + 1)).toNat).toNat

end

end A238403.P13439590479746509879

/-! ## A238403.P4351159934894178044

`A086080(C(A056239(n+1), A124771(n)))`
-/

namespace A238403.P4351159934894178044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086080 (Nat.choose (A056239 (n + 1)).toNat (A124771 n).toNat)

end

end A238403.P4351159934894178044

/-! ## A238403.P480306996540285614

`A086073(gcd(A171142(n+1), A333750(n+1)))`
-/

namespace A238403.P480306996540285614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086073 (Int.gcd (A171142 (n + 1)) (A333750 (n + 1)))

end

end A238403.P480306996540285614

/-! ## A238403.P2644787684947425625

`A048720(A338060(n+1)%A217581(2*n+5))`
-/

namespace A238403.P2644787684947425625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048720 (Int.tmod (A338060 (n + 1)) (A217581 (2 * n + 5))).toNat

end

end A238403.P2644787684947425625

/-! ## A238403.P2691798697500501095

`A061013(A365892(2*(n+1)))%A160267(3*n+1)`
-/

namespace A238403.P2691798697500501095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061013 (A365892 (2 * (n + 1))).toNat) (A160267 (3 * n + 1))

end

end A238403.P2691798697500501095

/-! ## A238403.P15990177836495550168

`and(A002372(n+1), A257000(A342751(n+1)))`
-/

namespace A238403.P15990177836495550168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002372 (n + 1)) (A257000 (A342751 (n + 1)).toNat)

end

end A238403.P15990177836495550168

/-! ## A238403.P12631011557810422689

`A324822(A116491(3*(n+1))+2)`
-/

namespace A238403.P12631011557810422689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324822 (A116491 (3 * (n + 1)) + 2).toNat

end

end A238403.P12631011557810422689

/-!
# A238404: Number of ways a prime from A087054 can be decomposed as a sum of the form p*q+q*r+r*p where p, q and r are distinct primes (p < q < r).

The programs for A238404, there is no canonical definition to state claims against.
-/

/-! ## A238404.P7613762107455299882

`A238403(A087054(n+1))`
-/

namespace A238404.P7613762107455299882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238403 (A087054 (n + 1)).toNat

end

end A238404.P7613762107455299882

/-! ## A238404.P7159636225537883465

`A238403(p?[A238397(n+1)])`
-/

namespace A238404.P7159636225537883465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238403 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A238404.P7159636225537883465

/-! ## A238404.P10282616708453494840

`A238403(record[A006530(A238397(n+1))])`
-/

namespace A238404.P10282616708453494840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A238397 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238403 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A238404.P10282616708453494840

/-! ## A238404.P4164227942683955770

`A238403(record[A014963(A238397(n+1))])`
-/

namespace A238404.P4164227942683955770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A238397 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238403 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A238404.P4164227942683955770

/-! ## A238404.P6751673529115013403

`A238403(record[A020639(A238397(n+1))])`
-/

namespace A238404.P6751673529115013403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A238397 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238403 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A238404.P6751673529115013403

/-! ## A238404.P14682133198812457328

`A238403(∩[A000040(n+1), A238397(n+1)])`
-/

namespace A238404.P14682133198812457328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238397 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238403 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A238404.P14682133198812457328

/-!
# A238405: a(n) = |{0 < k < n: prime(k) + pi(n-k) is a triangular number}|, where pi(.) is given by A000720.

The programs for A238405, there is no canonical definition to state claims against.
-/

/-! ## A238405.P5428870507395645197

`A326918(n)+A316863(A034386(n))`
-/

namespace A238405.P5428870507395645197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326918 n + A316863 (A034386 n).toNat

end

end A238405.P5428870507395645197

/-! ## A238405.P2957224839376128176

`A108731(A283706(n)-A084938(n))`
-/

namespace A238405.P2957224839376128176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108731 (A283706 n - A084938 n).toNat

end

end A238405.P2957224839376128176

/-! ## A238405.P2150803816066639403

`A077267(A283651(n)+A004893(n+1))`
-/

namespace A238405.P2150803816066639403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 (A283651 n + A004893 (n + 1)).toNat

end

end A238405.P2150803816066639403

/-! ## A238405.P11479482525600522598

`A071465(lt[A071510(3*n+1), A071490(n+1)])`
-/

namespace A238405.P11479482525600522598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071510 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071490 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071465 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A238405.P11479482525600522598

/-!
# A238406: Number T(n,k) of partitions of n into k parts such that every i-th smallest part (counted with multiplicity) is different from i; triangle T(n,k), n>=0, 0<=k<=floor((sqrt(9+8*n)-3)/2) read by rows.

The programs for A238406, there is no canonical definition to state claims against.
-/

/-! ## A238406.P697549310537515692

`A102669(A080953(n)+A080934(3*(n+1)))`
-/

namespace A238406.P697549310537515692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (A080953 n + A080934 (3 * (n + 1))).toNat

end

end A238406.P697549310537515692

/-! ## A238406.P2528868852301858706

`A067080(A285176(n+1))%3`
-/

namespace A238406.P2528868852301858706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067080 (A285176 (n + 1)).toNat) 3

end

end A238406.P2528868852301858706

/-! ## A238406.P17767016145371025033

`A001221(A103323(3*n+5)+A000007(n))`
-/

namespace A238406.P17767016145371025033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A103323 (3 * n + 5) + A000007 n).toNat

end

end A238406.P17767016145371025033

/-! ## A238406.P13315965910840759573

`A001221(A054977(n)*A103323(3*n+5))`
-/

namespace A238406.P13315965910840759573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A054977 n * A103323 (3 * n + 5)).toNat

end

end A238406.P13315965910840759573

/-!
# A238407: The (rounded) first geometric-arithmetic index of the rooted tree with Matula number n (n >= 2).

The programs for A238407, there is no canonical definition to state claims against.
-/

/-! ## A238407.P610318169688287917

`A130241(A212629(n+2))%A057752(n+1)`
-/

namespace A238407.P610318169688287917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130241 (A212629 (n + 2)).toNat) (A057752 (n + 1))

end

end A238407.P610318169688287917

/-! ## A238407.P8519591828358677953

`A098388((A193404(n+2)+1)%A055693(n+1))`
-/

namespace A238407.P8519591828358677953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098388 (Int.tmod (A193404 (n + 2) + 1) (A055693 (n + 1))).toNat

end

end A238407.P8519591828358677953

/-! ## A238407.P1651790965686555901

`A130241(A212629(n+2)%A255694(n+1))`
-/

namespace A238407.P1651790965686555901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130241 (Int.tmod (A212629 (n + 2)) (A255694 (n + 1))).toNat

end

end A238407.P1651790965686555901

/-! ## A238407.P1134721165577676878

`A038605(A193404(n+2)²-A254761(2*n+1))`
-/

namespace A238407.P1134721165577676878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038605 (A193404 (n + 2) ^ 2 - A254761 (2 * n + 1)).toNat

end

end A238407.P1134721165577676878

/-! ## A238407.P1688646779731638152

`A125269(A196065(n+2))`
-/

namespace A238407.P1688646779731638152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125269 (A196065 (n + 2)).toNat

end

end A238407.P1688646779731638152

/-!
# A238408: The (rounded) 2nd modified Zagreb index of the rooted tree with Matula number n (n >= 2).

The programs for A238408, there is no canonical definition to state claims against.
-/

/-! ## A238408.P13988699751719882934

`A001222(A212628(n+2)!+1)`
-/

namespace A238408.P13988699751719882934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.factorial (A212628 (n + 2)).toNat + 1)

end

end A238408.P13988699751719882934

/-! ## A238408.P1595507144390932354

`A056556(xor(A206499(3*n+4), A212628(n+2)))`
-/

namespace A238408.P1595507144390932354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (Int.xor (A206499 (3 * n + 4)) (A212628 (n + 2))).toNat

end

end A238408.P1595507144390932354

/-! ## A238408.P3352207574231703814

`A198333(A318692(A214571(A198329(n+2))))`
-/

namespace A238408.P3352207574231703814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198333 (A318692 (A214571 (A198329 (n + 2)).toNat).toNat).toNat

end

end A238408.P3352207574231703814

/-!
# A238410: a(n) = floor((3(n-1)^2 + 1)/2).

The programs for A238410, the canonical program `A238410.P17920813530718900268` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238410 has offset 1).

The definition of A238410 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((3*n²+1)/2)` (program `A238410.P17920813530718900268`, by `A238410.P17920813530718900268.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A238410.P17920813530718900268

`floor((3*n²+1)/2)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A238410

/-- `floor((3*n²+1)/2)` -/
def P17920813530718900268.Spec : Prop :=
  ∀ n, P17920813530718900268.a n = A238410 (n + 1)

theorem P17920813530718900268.correct : P17920813530718900268.Spec := by
  intro n
  simp only [A238410, Nat.add_sub_cancel]

end A238410

/-! ## A238410.P10868417698370385454

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=0, a(1)=2, a(2)=6, a(3)=14`
-/

namespace A238410.P10868417698370385454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 6, 14] fun n a =>
  2 * a (n - 1) - 2 * a (n - 3) + a (n - 4)

end

end A238410.P10868417698370385454

namespace A238410

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P10868417698370385454.Spec : Prop :=
  ∀ n, P10868417698370385454.a n = A238410 (n + 1)

end A238410

/-! ## A238410.P16461148046209025145

`2*A077043(n)`
-/

namespace A238410.P16461148046209025145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077043 n

end

end A238410.P16461148046209025145

namespace A238410

/-- `2*A077043(n)` -/
def P16461148046209025145.Spec : Prop :=
  ∀ n, P16461148046209025145.a n = A238410 (n + 1)

end A238410

/-! ## A238410.P6045731863337425761

`∑[record[lcm(3, n)-n]]`
-/

namespace A238410.P6045731863337425761
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 3 n : ℤ) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238410.P6045731863337425761

namespace A238410

/-- `∑[record[lcm(3, n)-n]]` -/
def P6045731863337425761.Spec : Prop :=
  ∀ n, P6045731863337425761.a n = A238410 (n + 1)

end A238410

/-! ## A238410.P5468982557583473446

`round(xor(2, (3*n)²)/6)`
-/

namespace A238410.P5468982557583473446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 2 ((3 * n) ^ 2) : ℚ) / 6)

end

end A238410.P5468982557583473446

namespace A238410

/-- `round(xor(2, (3*n)²)/6)` -/
def P5468982557583473446.Spec : Prop :=
  ∀ n, P5468982557583473446.a n = A238410 (n + 1)

end A238410

/-! ## A238410.P5069921493417303147

`2*n²-∑[and(n, -2)]`
-/

namespace A238410.P5069921493417303147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238410.P5069921493417303147

namespace A238410

/-- `2*n²-∑[and(n, -2)]` -/
def P5069921493417303147.Spec : Prop :=
  ∀ n, P5069921493417303147.a n = A238410 (n + 1)

end A238410

/-! ## A238410.P13611127538210393235

`∑[a(n-2)+6]` with `a(0)=0, a(1)=2, a(2)=4`
-/

namespace A238410.P13611127538210393235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 4] fun n f1 =>
  f1 (n - 2) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238410.P13611127538210393235

namespace A238410

/-- `∑[a(n-2)+6]` -/
def P13611127538210393235.Spec : Prop :=
  ∀ n, (P13611127538210393235.a n : ℤ) = A238410 (n + 1)

end A238410

/-! ## A238410.P14685867252114288749

`(n%2+3*n²)/2`
-/

namespace A238410.P14685867252114288749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n % 2 + 3 * n ^ 2 : ℕ) : ℚ) / 2

end

end A238410.P14685867252114288749

namespace A238410

/-- `(n%2+3*n²)/2` -/
def P14685867252114288749.Spec : Prop :=
  ∀ n, P14685867252114288749.a n = (A238410 (n + 1) : ℚ)

end A238410

/-! ## A238410.P2754158292329683734

`∑[3*n-gcd(2, n)]+2`
-/

namespace A238410.P2754158292329683734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - (Nat.gcd 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A238410.P2754158292329683734

namespace A238410

/-- `∑[3*n-gcd(2, n)]+2` -/
def P2754158292329683734.Spec : Prop :=
  ∀ n, P2754158292329683734.a n = A238410 (n + 1)

end A238410

/-! ## A238410.P2935148474714950954

`∑[∑[6-a(n-1)]]` with `a(0)=0, a(1)=2, a(2)=2`
-/

namespace A238410.P2935148474714950954
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 2] fun n f2 =>
  6 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238410.P2935148474714950954

namespace A238410

/-- `∑[∑[6-a(n-1)]]` -/
def P2935148474714950954.Spec : Prop :=
  ∀ n, P2935148474714950954.a n = A238410 (n + 1)

end A238410

/-! ## A238410.P4017783491391151432

`∑[and(1, n)+n]+n²-n`
-/

namespace A238410.P4017783491391151432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((n ^ 2 : ℤ) - (n : ℤ))

end

end A238410.P4017783491391151432

namespace A238410

/-- `∑[and(1, n)+n]+n²-n` -/
def P4017783491391151432.Spec : Prop :=
  ∀ n, P4017783491391151432.a n = A238410 (n + 1)

end A238410

/-! ## A238410.P13249504379886255920

`ogf((2x+2x^2+2x^3)/(1-2x+2x^3-x^4))`
-/

namespace A238410.P13249504379886255920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 2, 2] [1, -2, 0, 2, -1] n

end

end A238410.P13249504379886255920

namespace A238410

/-- `ogf((2x+2x^2+2x^3)/(1-2x+2x^3-x^4))` -/
def P13249504379886255920.Spec : Prop :=
  ∀ n, P13249504379886255920.a n = A238410 (n + 1)

end A238410

/-! ## A238410.P8502071991227294628

`a(n-2)+6*(n-1)` with `a(0)=0, a(1)=2`
-/

namespace A238410.P8502071991227294628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 2) + 6 * ((n : ℤ) - 1)

end

end A238410.P8502071991227294628

namespace A238410

/-- `a(n-2)+6*(n-1)` -/
def P8502071991227294628.Spec : Prop :=
  ∀ n, P8502071991227294628.a n = A238410 (n + 1)

end A238410

/-! ## A238410.P5150510952269177002

`6*n-(6-a(n-2))` with `a(0)=0, a(1)=2`
-/

namespace A238410.P5150510952269177002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  (6 * n : ℤ) - (6 - a (n - 2))

end

end A238410.P5150510952269177002

namespace A238410

/-- `6*n-(6-a(n-2))` -/
def P5150510952269177002.Spec : Prop :=
  ∀ n, P5150510952269177002.a n = A238410 (n + 1)

end A238410

/-! ## A238410.P11970632873142882793

`∑[or(1, 3*(n-1))]+n+3`
-/

namespace A238410.P11970632873142882793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (3 * ((n : ℤ) - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 3 : ℤ)

end

end A238410.P11970632873142882793

namespace A238410

/-- `∑[or(1, 3*(n-1))]+n+3` -/
def P11970632873142882793.Spec : Prop :=
  ∀ n, P11970632873142882793.a n = A238410 (n + 1)

end A238410

/-! ## A238410.P15108400782679464478

`∑[eq[n, n*gcd(n+3, 2*n)]]`
-/

namespace A238410.P15108400782679464478
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd (n + 3) (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238410.P15108400782679464478

namespace A238410

/-- `∑[eq[n, n*gcd(n+3, 2*n)]]` -/
def P15108400782679464478.Spec : Prop :=
  ∀ n, (P15108400782679464478.a n : ℤ) = A238410 (n + 1)

end A238410

/-! ## A238410.P7615973042511237044

`floor(a(n-1)/3+n)+n²` with `a(0)=0`
-/

namespace A238410.P7615973042511237044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℚ) / 3 + (n : ℚ)⌋ + (n ^ 2 : ℤ)

end

end A238410.P7615973042511237044

namespace A238410

/-- `floor(a(n-1)/3+n)+n²` -/
def P7615973042511237044.Spec : Prop :=
  ∀ n, P7615973042511237044.a n = A238410 (n + 1)

end A238410

/-! ## A238410.P18034849000804995830

`∑[∑[and(2, 2*n)]]+n*(n-1)`
-/

namespace A238410.P18034849000804995830
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (n : ℤ) * ((n : ℤ) - 1)

end

end A238410.P18034849000804995830

namespace A238410

/-- `∑[∑[and(2, 2*n)]]+n*(n-1)` -/
def P18034849000804995830.Spec : Prop :=
  ∀ n, P18034849000804995830.a n = A238410 (n + 1)

end A238410

/-! ## A238410.P13433146527099257837

`∑[eq[(n+3)*2*n, lcm(n+3, 2*n)]]`
-/

namespace A238410.P13433146527099257837
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) * (2 * n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 3) (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238410.P13433146527099257837

namespace A238410

/-- `∑[eq[(n+3)*2*n, lcm(n+3, 2*n)]]` -/
def P13433146527099257837.Spec : Prop :=
  ∀ n, (P13433146527099257837.a n : ℤ) = A238410 (n + 1)

end A238410

/-!
# A238411: a(n) = 2*n*floor(n/2).

The programs for A238411, the canonical program `A238411.P13244127702162683664` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238411 has offset 1).

The definition of A238411 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(n+1)*floor((n+1)/2)` (program `A238411.P13244127702162683664`, by `A238411.P13244127702162683664.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A238411.P13244127702162683664

`2*(n+1)*floor((n+1)/2)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A238411

/-- `2*(n+1)*floor((n+1)/2)` -/
def P13244127702162683664.Spec : Prop :=
  ∀ n, P13244127702162683664.a n = A238411 (n + 1)

theorem P13244127702162683664.correct : P13244127702162683664.Spec := by
  intro n
  simp only [A238411, Nat.add_sub_cancel]

end A238411

/-! ## A238411.P1442598902238075342

`floor((1/gcd(2, n)+n)²)`
-/

namespace A238411.P1442598902238075342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(1 / (Nat.gcd 2 n : ℚ) + (n : ℚ)) ^ 2⌋

end

end A238411.P1442598902238075342

namespace A238411

/-- `floor((1/gcd(2, n)+n)²)` -/
def P1442598902238075342.Spec : Prop :=
  ∀ n, P1442598902238075342.a n = A238411 (n + 1)

end A238411

/-! ## A238411.P4225684033882226026

`∑[Δ[n*or(1, n)]-1]`
-/

namespace A238411.P4225684033882226026
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.lor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238411.P4225684033882226026

namespace A238411

/-- `∑[Δ[n*or(1, n)]-1]` -/
def P4225684033882226026.Spec : Prop :=
  ∀ n, P4225684033882226026.a n = A238411 (n + 1)

end A238411

/-! ## A238411.P10869662488283211861

`∑[n]+C(or(1, n+1), 2)`
-/

namespace A238411.P10869662488283211861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (Nat.lor 1 (n + 1)) 2

end

end A238411.P10869662488283211861

namespace A238411

/-- `∑[n]+C(or(1, n+1), 2)` -/
def P10869662488283211861.Spec : Prop :=
  ∀ n, (P10869662488283211861.a n : ℤ) = A238411 (n + 1)

end A238411

/-! ## A238411.P3384667556508883947

`n*(n+1)²/or(1, n)`
-/

namespace A238411.P3384667556508883947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 1) ^ 2 : ℚ) / (Nat.lor 1 n : ℚ)

end

end A238411.P3384667556508883947

namespace A238411

/-- `n*(n+1)²/or(1, n)` -/
def P3384667556508883947.Spec : Prop :=
  ∀ n, P3384667556508883947.a n = (A238411 (n + 1) : ℚ)

end A238411

/-! ## A238411.P11003132864112415161

`(n+1)²-C(xor(1, n), n)`
-/

namespace A238411.P11003132864112415161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - (Nat.choose (Nat.xor 1 n) n : ℤ)

end

end A238411.P11003132864112415161

namespace A238411

/-- `(n+1)²-C(xor(1, n), n)` -/
def P11003132864112415161.Spec : Prop :=
  ∀ n, P11003132864112415161.a n = A238411 (n + 1)

end A238411

/-! ## A238411.P2092929150365916733

`∑[2*(n+1)-Δ[lcm(2, n)]]`
-/

namespace A238411.P2092929150365916733
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238411.P2092929150365916733

namespace A238411

/-- `∑[2*(n+1)-Δ[lcm(2, n)]]` -/
def P2092929150365916733.Spec : Prop :=
  ∀ n, P2092929150365916733.a n = A238411 (n + 1)

end A238411

/-! ## A238411.P5492147253072216924

`abs((n+1)*(1-or(1, n+1)))`
-/

namespace A238411.P5492147253072216924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * (1 - (Nat.lor 1 (n + 1) : ℤ))|

end

end A238411.P5492147253072216924

namespace A238411

/-- `abs((n+1)*(1-or(1, n+1)))` -/
def P5492147253072216924.Spec : Prop :=
  ∀ n, P5492147253072216924.a n = A238411 (n + 1)

end A238411

/-! ## A238411.P2620287737628937410

`floor((∑[4-a(n-1)]/2)²)` with `a(0)=1`
-/

namespace A238411.P2620287737628937410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  4 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2) ^ 2⌋

end

end A238411.P2620287737628937410

namespace A238411

/-- `floor((∑[4-a(n-1)]/2)²)` -/
def P2620287737628937410.Spec : Prop :=
  ∀ n, P2620287737628937410.a n = A238411 (n + 1)

end A238411

/-! ## A238411.P10459180885180744547

`∪[2*n*Δ[n²], (2*n)²]`
-/

namespace A238411.P10459180885180744547
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

end

end A238411.P10459180885180744547

namespace A238411

/-- `∪[2*n*Δ[n²], (2*n)²]` -/
def P10459180885180744547.Spec : Prop :=
  ∀ n, (P10459180885180744547.a n : ℤ) = A238411 (n + 1)

end A238411

/-! ## A238411.P12450464830939899093

`∑[∑[∑[ogf((4x+2x^2+2x^3)/(1+2x+x^2))]]]`
-/

namespace A238411.P12450464830939899093
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, 2, 2] [1, 2, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238411.P12450464830939899093

namespace A238411

/-- `∑[∑[∑[ogf((4x+2x^2+2x^3)/(1+2x+x^2))]]]` -/
def P12450464830939899093.Spec : Prop :=
  ∀ n, P12450464830939899093.a n = A238411 (n + 1)

end A238411

/-! ## A238411.P5435118069603426895

`(n+1)*or(1, n+1)-(n+1)`
-/

namespace A238411.P5435118069603426895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * Nat.lor 1 (n + 1) : ℤ) - (n + 1 : ℤ)

end

end A238411.P5435118069603426895

namespace A238411

/-- `(n+1)*or(1, n+1)-(n+1)` -/
def P5435118069603426895.Spec : Prop :=
  ∀ n, P5435118069603426895.a n = A238411 (n + 1)

end A238411

/-! ## A238411.P17668472796872426774

`floor((and(1, n+1)/2-(n+1))²)`
-/

namespace A238411.P17668472796872426774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.land 1 (n + 1) : ℚ) / 2 - (n + 1 : ℚ)) ^ 2⌋

end

end A238411.P17668472796872426774

namespace A238411

/-- `floor((and(1, n+1)/2-(n+1))²)` -/
def P17668472796872426774.Spec : Prop :=
  ∀ n, P17668472796872426774.a n = A238411 (n + 1)

end A238411

/-! ## A238411.P16164380667992125038

`floor(n^4/a(n-1)+n)` with `a(0)=0, a(1)=4`
-/

namespace A238411.P16164380667992125038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n a =>
  ⌊(n ^ 4 : ℚ) / (a (n - 1) : ℚ) + (n : ℚ)⌋

end

end A238411.P16164380667992125038

namespace A238411

/-- `floor(n^4/a(n-1)+n)` -/
def P16164380667992125038.Spec : Prop :=
  ∀ n, P16164380667992125038.a n = A238411 (n + 1)

end A238411

/-! ## A238411.P16787425965902114157

`abs((n+1)*∑[2-a(n-1)])` with `a(0)=0`
-/

namespace A238411.P16787425965902114157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  2 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A238411.P16787425965902114157

namespace A238411

/-- `abs((n+1)*∑[2-a(n-1)])` -/
def P16787425965902114157.Spec : Prop :=
  ∀ n, P16787425965902114157.a n = A238411 (n + 1)

end A238411

/-! ## A238411.P10459805207837681350

`floor((n+1)*∑[2-a(n-1)])` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A238411.P10459805207837681350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  2 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A238411.P10459805207837681350

namespace A238411

/-- `floor((n+1)*∑[2-a(n-1)])` -/
def P10459805207837681350.Spec : Prop :=
  ∀ n, P10459805207837681350.a n = A238411 (n + 1)

end A238411

/-! ## A238411.P9098441764998428706

`round((n+1)*∑[2-a(n-1)])` with `a(0)=0`

`round` is left out, it is the identity on integers.
-/

namespace A238411.P9098441764998428706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  2 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A238411.P9098441764998428706

namespace A238411

/-- `round((n+1)*∑[2-a(n-1)])` -/
def P9098441764998428706.Spec : Prop :=
  ∀ n, P9098441764998428706.a n = A238411 (n + 1)

end A238411

/-! ## A238411.P16936794914593720103

`floor(n²²/a(n-1))+n` with `a(0)=0, a(1)=4`
-/

namespace A238411.P16936794914593720103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n a =>
  ⌊((n ^ 2) ^ 2 : ℚ) / (a (n - 1) : ℚ)⌋ + (n : ℤ)

end

end A238411.P16936794914593720103

namespace A238411

/-- `floor(n²²/a(n-1))+n` -/
def P16936794914593720103.Spec : Prop :=
  ∀ n, P16936794914593720103.a n = A238411 (n + 1)

end A238411

/-! ## A238411.P12545165840577535450

`∑[2*n]²/(a(n-1)+n)` with `a(0)=0`
-/

namespace A238411.P12545165840577535450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ) / (a (n - 1) + (n : ℚ))

end

end A238411.P12545165840577535450

namespace A238411

/-- `∑[2*n]²/(a(n-1)+n)` -/
def P12545165840577535450.Spec : Prop :=
  ∀ n, P12545165840577535450.a n = (A238411 (n + 1) : ℚ)

end A238411

/-! ## A238411.P1915948590674441690

`(n+1)*∑[4-a(n-1)]/2` with `a(0)=0`
-/

namespace A238411.P1915948590674441690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  4 - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) : ℚ) / 2

end

end A238411.P1915948590674441690

namespace A238411

/-- `(n+1)*∑[4-a(n-1)]/2` -/
def P1915948590674441690.Spec : Prop :=
  ∀ n, P1915948590674441690.a n = (A238411 (n + 1) : ℚ)

end A238411

/-!
# A238414: Triangle read by rows: T(n,k) is the number of trees with n vertices having maximum vertex degree k (n>=1, 0<=k<=n-1).

The programs for A238414, there is no canonical definition to state claims against.
-/

/-! ## A238414.P2151660873393616369

`ceil(∑{digits}[A320606(n+1), #]/9)`
-/

namespace A238414.P2151660873393616369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℚ) / 9⌉

end

end A238414.P2151660873393616369

/-! ## A238414.P13007023964232208176

`A262905(ceil(sqrt(A320606(n+1))))`
-/

namespace A238414.P13007023964232208176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262905 ⌈Real.sqrt (A320606 (n + 1) : ℝ)⌉.toNat

end

end A238414.P13007023964232208176

/-! ## A238414.P16046164268629851223

`A110656(∑{digits}[A320606(n+1), #])`
-/

namespace A238414.P16046164268629851223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A238414.P16046164268629851223

/-! ## A238414.P580920821286321130

`A000120(A274537(n)^A031324(n))`
-/

namespace A238414.P580920821286321130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A274537 n : ℚ) ^ (A031324 n : ℤ))).toNat

end

end A238414.P580920821286321130

/-! ## A238414.P15676326860535394846

`A102396(A320606(n+1))`
-/

namespace A238414.P15676326860535394846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102396 (A320606 (n + 1)).toNat

end

end A238414.P15676326860535394846

/-!
# A238415: Triangle read by rows: T(n,k) is the number of trees with n vertices having k branching vertices (n>=2, 0<=k<=floor(n/2) - 1).

The programs for A238415, there is no canonical definition to state claims against.
-/

/-! ## A238415.P9628883384162073448

`A380363(n+2)+A000122(A007708(n+1))`
-/

namespace A238415.P9628883384162073448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380363 (n + 2) + A000122 (A007708 (n + 1)).toNat

end

end A238415.P9628883384162073448

/-! ## A238415.P11153405966763635017

`A052126(A018800(n+4)*A380363(n+2))`
-/

namespace A238415.P11153405966763635017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A018800 (n + 4) * A380363 (n + 2)).toNat

end

end A238415.P11153405966763635017

/-! ## A238415.P7668074507636213372

`or(A079260(A363251(n)), A380363(n+2))`
-/

namespace A238415.P7668074507636213372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A079260 (A363251 n).toNat) (A380363 (n + 2))

end

end A238415.P7668074507636213372

/-! ## A238415.P9008664801587028050

`or(A082784(A079606(n+1)), A380363(n+2))`
-/

namespace A238415.P9008664801587028050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A082784 (A079606 (n + 1)).toNat) (A380363 (n + 2))

end

end A238415.P9008664801587028050

/-! ## A238415.P16888687603804608612

`A287355(A114580(n))`
-/

namespace A238415.P16888687603804608612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287355 (A114580 n).toNat

end

end A238415.P16888687603804608612

/-!
# A238416: Triangle read by rows: T(n,k) is the number of trees with n vertices having k vertices of degree 2 (n>=2, 0 <= k <= n - 2).

The programs for A238416, there is no canonical definition to state claims against.
-/

/-! ## A238416.P9911461794437215128

`A240159(∑[char[∑[n]]]²+1-n)`
-/

namespace A238416.P9911461794437215128
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240159 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 1 - n)

end

end A238416.P9911461794437215128

/-! ## A238416.P1977357388270063554

`xor(A055641(A120415(n)), A211359(n))`
-/

namespace A238416.P1977357388270063554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A055641 (A120415 n).toNat) (A211359 n)

end

end A238416.P1977357388270063554

/-! ## A238416.P16326916951122196439

`A192064(A186761(n))`
-/

namespace A238416.P16326916951122196439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192064 (A186761 n).toNat

end

end A238416.P16326916951122196439

/-! ## A238416.P6006370485952799976

`A124765(A186761(n)²)`
-/

namespace A238416.P6006370485952799976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 (A186761 n ^ 2).toNat

end

end A238416.P6006370485952799976

/-! ## A238416.P15767556475930830006

`A307706(A143496(n+5))`
-/

namespace A238416.P15767556475930830006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307706 (A143496 (n + 5)).toNat

end

end A238416.P15767556475930830006

/-!
# A238417: Irregular triangle read by rows: T(n,k) is the number of edges having imbalance k in the rooted tree with Matula number n (n>=2, k>=0).

The programs for A238417, there is no canonical definition to state claims against.
-/

/-! ## A238417.P843324475842406050

`A283938(A060528(n+1))%A000005(n+4)`
-/

namespace A238417.P843324475842406050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283938 (A060528 (n + 1)).toNat) (A000005 (n + 4))

end

end A238417.P843324475842406050

/-! ## A238417.P16052736882820464103

`C(A194822(n+3), A194825(A194805(2*n+3)))`
-/

namespace A238417.P16052736882820464103
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A194822 (n + 3)).toNat (A194825 (A194805 (2 * n + 3)).toNat).toNat

end

end A238417.P16052736882820464103

/-! ## A238417.P2465910365602107897

`A353129(eq[A102243(3*(n+1)), A347883(3*n+1)])`
-/

namespace A238417.P2465910365602107897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102243 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347883 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353129 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A238417.P2465910365602107897

/-! ## A238417.P866503544020557631

`gcd(2, ∏{p}[n, #])*A213727(A079641(2*(n+2)))`
-/

namespace A238417.P866503544020557631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℤ) * A213727 (A079641 (2 * (n + 2))).toNat

end

end A238417.P866503544020557631

/-! ## A238417.P1109075713279369204

`A054576(n+1)+A008683(A331413(n))`
-/

namespace A238417.P1109075713279369204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (n + 1) + A008683 (A331413 n).toNat

end

end A238417.P1109075713279369204

/-!
# A238418: The rounded Randic index of the rooted tree with Matula number n (n>=2).

The programs for A238418, there is no canonical definition to state claims against.
-/

/-! ## A238418.P18006667813073445464

`floor(log(A193404(n+2)-1))+1`
-/

namespace A238418.P18006667813073445464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A193404 (n + 2) - 1 : ℝ)⌋ + 1

end

end A238418.P18006667813073445464

/-! ## A238418.P55174608183498398

`A230774(A193404(n+2)+1)`
-/

namespace A238418.P55174608183498398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230774 (A193404 (n + 2) + 1).toNat

end

end A238418.P55174608183498398

/-! ## A238418.P1309338971691688432

`A127434(floor(sqrt(A193404(n+2))))`
-/

namespace A238418.P1309338971691688432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127434 (Int.sqrt (A193404 (n + 2))).toNat

end

end A238418.P1309338971691688432

/-! ## A238418.P16832903058536869884

`A219642(floor(sqrt(A193404(n+2))))`
-/

namespace A238418.P16832903058536869884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219642 (Int.sqrt (A193404 (n + 2))).toNat

end

end A238418.P16832903058536869884

/-! ## A238418.P3769052153423092595

`A294991(floor(sqrt(A193404(n+2))))`
-/

namespace A238418.P3769052153423092595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294991 (Int.sqrt (A193404 (n + 2))).toNat

end

end A238418.P3769052153423092595

/-! ## A238418.P2619976117404634145

`A000720(floor(sqrt(A193404(n+2))))+1`
-/

namespace A238418.P2619976117404634145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (Int.sqrt (A193404 (n + 2))).toNat + 1

end

end A238418.P2619976117404634145

/-! ## A238418.P11109407626942291373

`A243503(floor(sqrt(A193404(n+2))))+1`
-/

namespace A238418.P11109407626942291373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243503 (Int.sqrt (A193404 (n + 2))).toNat + 1

end

end A238418.P11109407626942291373

/-! ## A238418.P11524650254269537628

`A263323(floor(sqrt(A193404(n+2))))+1`
-/

namespace A238418.P11524650254269537628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263323 (Int.sqrt (A193404 (n + 2))).toNat + 1

end

end A238418.P11524650254269537628

/-! ## A238418.P9406648402420680173

`A170891(ceil(sqrt(A193404(n+2)+1)))`
-/

namespace A238418.P9406648402420680173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170891 ⌈Real.sqrt (A193404 (n + 2) + 1 : ℝ)⌉.toNat

end

end A238418.P9406648402420680173

/-!
# A238419: a(n) = the Wiener index of the Fibonacci cube G_n.

The programs for A238419, the canonical program `A238419.P9724100965708549392` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238419 has offset 0).

The definition of A238419 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A238419.P9724100965708549392

`4*a(n-1)-10*a(n-3)+4*a(n-5)-a(n-6)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=16, a(4)=54, a(5)=176`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A238419

/-- `4*a(n-1)-10*a(n-3)+4*a(n-5)-a(n-6)` -/
def P9724100965708549392.Spec : Prop :=
  ∀ n, P9724100965708549392.a n = A238419 n

theorem P9724100965708549392.correct : P9724100965708549392.Spec := by
  intro n
  simp only [A238419]

end A238419

/-! ## A238419.P16840586121682541613

`∑[A350787(n+1)]`
-/

namespace A238419.P16840586121682541613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238419.P16840586121682541613

namespace A238419

/-- `∑[A350787(n+1)]` -/
def P16840586121682541613.Spec : Prop :=
  ∀ n, P16840586121682541613.a n = A238419 n

end A238419

/-! ## A238419.P8226110445786814307

`∑[∑[A136429(n)]-A136429(n)]`
-/

namespace A238419.P8226110445786814307
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136429 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A136429 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238419.P8226110445786814307

namespace A238419

/-- `∑[∑[A136429(n)]-A136429(n)]` -/
def P8226110445786814307.Spec : Prop :=
  ∀ n, P8226110445786814307.a n = A238419 n

end A238419

/-! ## A238419.P11978177747417716368

`1/25*(n*A000032(2*(n+2))+2*A000045(2*n+1)-(n+2)*(-1)^n)`
-/

namespace A238419.P11978177747417716368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 25 * ((n : ℤ) * A000032 (2 * (n + 2)) + 2 * A000045 (2 * n + 1) - (n + 2 : ℤ) * (-1) ^ n : ℚ)

end

end A238419.P11978177747417716368

namespace A238419

/-- `1/25*(n*A000032(2*(n+2))+2*A000045(2*n+1)-(n+2)*(-1)^n)` -/
def P11978177747417716368.Spec : Prop :=
  ∀ n, P11978177747417716368.a n = (A238419 n : ℚ)

end A238419

/-! ## A238419.P7349596054924802161

`∑[record[A350787(A003984(n))]]`
-/

namespace A238419.P7349596054924802161
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350787 (A003984 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238419.P7349596054924802161

namespace A238419

/-- `∑[record[A350787(A003984(n))]]` -/
def P7349596054924802161.Spec : Prop :=
  ∀ n, P7349596054924802161.a n = A238419 n

end A238419

/-! ## A238419.P7207451049615921226

`∑[record[A350787(A002262(n))]]`
-/

namespace A238419.P7207451049615921226
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350787 (A002262 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238419.P7207451049615921226

namespace A238419

/-- `∑[record[A350787(A002262(n))]]` -/
def P7207451049615921226.Spec : Prop :=
  ∀ n, P7207451049615921226.a n = A238419 n

end A238419

/-!
# A238420: a(n) is the Wiener index of the Lucas cube L_n.

The programs for A238420, the canonical program `A238420.P6514765106905482554` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238420 has offset 1).

The definition of A238420 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A238420.P6514765106905482554

`(n+1)*A000045(n)*A000045(n+2)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A238420

/-- `(n+1)*A000045(n)*A000045(n+2)` -/
def P6514765106905482554.Spec : Prop :=
  ∀ n, P6514765106905482554.a n = A238420 (n + 1)

theorem P6514765106905482554.correct : P6514765106905482554.Spec := by
  intro n
  simp only [A238420, Nat.add_sub_cancel]

end A238420

/-! ## A238420.P10206116615049821009

`(3*(-1)^(n+1)+A000032(2*(n+1)))*(n+1)/5`
-/

namespace A238420.P10206116615049821009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * (-1) ^ (n + 1) + A000032 (2 * (n + 1))) * (n + 1 : ℤ) : ℚ) / 5

end

end A238420.P10206116615049821009

namespace A238420

/-- `(3*(-1)^(n+1)+A000032(2*(n+1)))*(n+1)/5` -/
def P10206116615049821009.Spec : Prop :=
  ∀ n, P10206116615049821009.a n = (A238420 (n + 1) : ℚ)

end A238420

/-! ## A238420.P1153612300768833759

`(n+1)*A059929(n)`
-/

namespace A238420.P1153612300768833759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A059929 n

end

end A238420.P1153612300768833759

namespace A238420

/-- `(n+1)*A059929(n)` -/
def P1153612300768833759.Spec : Prop :=
  ∀ n, P1153612300768833759.a n = A238420 (n + 1)

theorem P1153612300768833759.correct : P1153612300768833759.Spec := by
  intro n
  simp only [A238420, Nat.add_sub_cancel, A238420.P1153612300768833759.a, A238420.P6514765106905482554.a, A000045, A000045.P11838749114346432762.a, A059929, A059929.P14941979031348209831.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A238420

/-! ## A238420.P3774894180858153136

`(n+1)*(A208176(n)-1)`
-/

namespace A238420.P3774894180858153136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A208176 n - 1)

end

end A238420.P3774894180858153136

namespace A238420

/-- `(n+1)*(A208176(n)-1)` -/
def P3774894180858153136.Spec : Prop :=
  ∀ n, P3774894180858153136.a n = A238420 (n + 1)

end A238420

/-! ## A238420.P6773757533468637614

`(n+1)*(∑[A260259(n)]+1)`
-/

namespace A238420.P6773757533468637614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260259 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A238420.P6773757533468637614

namespace A238420

/-- `(n+1)*(∑[A260259(n)]+1)` -/
def P6773757533468637614.Spec : Prop :=
  ∀ n, P6773757533468637614.a n = A238420 (n + 1)

end A238420

/-! ## A238420.P3116667492266245165

`(n+1)*Δ[A059840(n+1)]`
-/

namespace A238420.P3116667492266245165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059840 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A238420.P3116667492266245165

namespace A238420

/-- `(n+1)*Δ[A059840(n+1)]` -/
def P3116667492266245165.Spec : Prop :=
  ∀ n, P3116667492266245165.a n = A238420 (n + 1)

end A238420

/-! ## A238420.P14947634745565606937

`(n+1)*A236165(2*(n+1))`
-/

namespace A238420.P14947634745565606937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A236165 (2 * (n + 1))

end

end A238420.P14947634745565606937

namespace A238420

/-- `(n+1)*A236165(2*(n+1))` -/
def P14947634745565606937.Spec : Prop :=
  ∀ n, P14947634745565606937.a n = A238420 (n + 1)

end A238420

/-! ## A238420.P16386043719598118216

`(n+1)*round(A000032(n+1)²/5)`
-/

namespace A238420.P16386043719598118216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * SequenceMachineLib.roundAway ((A000032 (n + 1) ^ 2 : ℚ) / 5)

end

end A238420.P16386043719598118216

namespace A238420

/-- `(n+1)*round(A000032(n+1)²/5)` -/
def P16386043719598118216.Spec : Prop :=
  ∀ n, P16386043719598118216.a n = A238420 (n + 1)

end A238420

/-! ## A238420.P12783043246845464979

`A390581(n)+A292465(n)`
-/

namespace A238420.P12783043246845464979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390581 n + A292465 n

end

end A238420.P12783043246845464979

namespace A238420

/-- `A390581(n)+A292465(n)` -/
def P12783043246845464979.Spec : Prop :=
  ∀ n, P12783043246845464979.a n = A238420 (n + 1)

end A238420

/-! ## A238420.P16328773325864382086

`record[A025480(n)*A236165(n)]`
-/

namespace A238420.P16328773325864382086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 n * A236165 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238420.P16328773325864382086

namespace A238420

/-- `record[A025480(n)*A236165(n)]` -/
def P16328773325864382086.Spec : Prop :=
  ∀ n, P16328773325864382086.a n = A238420 (n + 1)

end A238420

/-! ## A238420.P6195032715009098354

`A000045(n)*A023607(n+1)`
-/

namespace A238420.P6195032715009098354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A023607 (n + 1)

end

end A238420.P6195032715009098354

namespace A238420

/-- `A000045(n)*A023607(n+1)` -/
def P6195032715009098354.Spec : Prop :=
  ∀ n, P6195032715009098354.a n = A238420 (n + 1)

theorem P6195032715009098354.correct : P6195032715009098354.Spec := by
  intro n
  simp only [A238420, Nat.add_sub_cancel, A238420.P6195032715009098354.a, A238420.P6514765106905482554.a, A000045, A000045.P11838749114346432762.a, A023607, A023607.P1034350130520621684.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A238420

/-! ## A238420.P11279377953625725071

`A000045(n+2)*A099920(n)`
-/

namespace A238420.P11279377953625725071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) * A099920 n

end

end A238420.P11279377953625725071

namespace A238420

/-- `A000045(n+2)*A099920(n)` -/
def P11279377953625725071.Spec : Prop :=
  ∀ n, P11279377953625725071.a n = A238420 (n + 1)

theorem P11279377953625725071.correct : P11279377953625725071.Spec := by
  intro n
  simp only [A238420, Nat.add_sub_cancel, A238420.P11279377953625725071.a, A238420.P6514765106905482554.a, A000045, A000045.P11838749114346432762.a, A099920, A099920.P14828643535484264746.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A238420

/-! ## A238420.P9628351783907921271

`lcm(A023607(n+1), A099920(n))`
-/

namespace A238420.P9628351783907921271
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A023607 (n + 1)) (A099920 n)

end

end A238420.P9628351783907921271

namespace A238420

/-- `lcm(A023607(n+1), A099920(n))` -/
def P9628351783907921271.Spec : Prop :=
  ∀ n, (P9628351783907921271.a n : ℤ) = A238420 (n + 1)

end A238420

/-! ## A238420.P12531574831308105433

`A000045(n)*∑[A094588(n+1)]`
-/

namespace A238420.P12531574831308105433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A238420.P12531574831308105433

namespace A238420

/-- `A000045(n)*∑[A094588(n+1)]` -/
def P12531574831308105433.Spec : Prop :=
  ∀ n, P12531574831308105433.a n = A238420 (n + 1)

end A238420

/-! ## A238420.P15868326554676205145

`(A001654(n)+A000045(n)²)*(n+1)`
-/

namespace A238420.P15868326554676205145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001654 n + A000045 n ^ 2) * (n + 1 : ℤ)

end

end A238420.P15868326554676205145

namespace A238420

/-- `(A001654(n)+A000045(n)²)*(n+1)` -/
def P15868326554676205145.Spec : Prop :=
  ∀ n, P15868326554676205145.a n = A238420 (n + 1)

end A238420

/-! ## A238420.P6779780175587703994

`A006355(n+1)/2*A023607(n+1)`
-/

namespace A238420.P6779780175587703994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006355 (n + 1) : ℚ) / 2 * (A023607 (n + 1) : ℚ)

end

end A238420.P6779780175587703994

namespace A238420

/-- `A006355(n+1)/2*A023607(n+1)` -/
def P6779780175587703994.Spec : Prop :=
  ∀ n, P6779780175587703994.a n = (A238420 (n + 1) : ℚ)

end A238420

/-! ## A238420.P10443326125363036872

`(A215109(n)+A215108(n))*A000045(n)`
-/

namespace A238420.P10443326125363036872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A215109 n + A215108 n) * A000045 n

end

end A238420.P10443326125363036872

namespace A238420

/-- `(A215109(n)+A215108(n))*A000045(n)` -/
def P10443326125363036872.Spec : Prop :=
  ∀ n, P10443326125363036872.a n = A238420 (n + 1)

end A238420

/-! ## A238420.P2604360271069359201

`(A023610(n)+A001629(n+1))*A000045(n)`
-/

namespace A238420.P2604360271069359201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A023610 n + A001629 (n + 1)) * A000045 n

end

end A238420.P2604360271069359201

namespace A238420

/-- `(A023610(n)+A001629(n+1))*A000045(n)` -/
def P2604360271069359201.Spec : Prop :=
  ∀ n, P2604360271069359201.a n = A238420 (n + 1)

end A238420

/-! ## A238420.P15330515801130097746

`(A136376(n+1)+A000045(n))*A000045(n)`
-/

namespace A238420.P15330515801130097746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A136376 (n + 1) + A000045 n) * A000045 n

end

end A238420.P15330515801130097746

namespace A238420

/-- `(A136376(n+1)+A000045(n))*A000045(n)` -/
def P15330515801130097746.Spec : Prop :=
  ∀ n, P15330515801130097746.a n = A238420 (n + 1)

end A238420

/-! ## A238420.P3242700102145420587

`(A120940(n+1)+A120940(n))*A000045(n)`
-/

namespace A238420.P3242700102145420587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A120940 (n + 1) + A120940 n) * A000045 n

end

end A238420.P3242700102145420587

namespace A238420

/-- `(A120940(n+1)+A120940(n))*A000045(n)` -/
def P3242700102145420587.Spec : Prop :=
  ∀ n, P3242700102145420587.a n = A238420 (n + 1)

end A238420

/-!
# A238421: Row n contains the numbers obtained from the rooted tree with Matula number n in the following manner: partition the edges of the tree into subsets so that in each subset each edge has the same pair of endpoint degrees; row n contains the sizes of these subsets, listed in an arbitrary order.

The programs for A238421, there is no canonical definition to state claims against.
-/

/-! ## A238421.P13970035497350267538

`A214640(A059268(n)+A004467(n))`
-/

namespace A238421.P13970035497350267538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214640 (A059268 n + A004467 n).toNat

end

end A238421.P13970035497350267538

/-! ## A238421.P7086947858444391501

`A308176(A063655(A108965(n+1)²))`
-/

namespace A238421.P7086947858444391501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308176 (A063655 (A108965 (n + 1) ^ 2).toNat).toNat

end

end A238421.P7086947858444391501

/-!
# A238422: Number of compositions of n where no consecutive parts differ by 1.

The programs for A238422, there is no canonical definition to state claims against.
-/

/-! ## A238422.P14713263626333741277

`or(A002265(n), A137735(A015518(n)))`
-/

namespace A238422.P14713263626333741277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002265 n) (A137735 (A015518 n).toNat)

end

end A238422.P14713263626333741277

/-! ## A238422.P10484277264801009456

`or(A001222(A150229(n)), A095014(n+1))`
-/

namespace A238422.P10484277264801009456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A150229 n).toNat) (A095014 (n + 1))

end

end A238422.P10484277264801009456

/-! ## A238422.P13094708192795097464

`or(A027926(n+4), A127288(A028303(n+2)))`
-/

namespace A238422.P13094708192795097464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A027926 (n + 4)) (A127288 (A028303 (n + 2)).toNat)

end

end A238422.P13094708192795097464

/-! ## A238422.P5147217500017600163

`A247973(A056295(n+2))`
-/

namespace A238422.P5147217500017600163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247973 (A056295 (n + 2)).toNat

end

end A238422.P5147217500017600163

/-! ## A238422.P1051737067312352745

`or(A036378(n), A182134(A034472(n)))`
-/

namespace A238422.P1051737067312352745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A036378 n) (A182134 (A034472 n).toNat)

end

end A238422.P1051737067312352745

/-!
# A238423: Number of compositions of n avoiding three consecutive parts in arithmetic progression.

The programs for A238423, there is no canonical definition to state claims against.
-/

/-! ## A238423.P4506491904436104754

`A194319(A045631(n))`
-/

namespace A238423.P4506491904436104754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194319 (A045631 n).toNat

end

end A238423.P4506491904436104754

/-! ## A238423.P15767449758714020800

`A366188(A238432(n))`
-/

namespace A238423.P15767449758714020800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366188 (A238432 n).toNat

end

end A238423.P15767449758714020800

/-! ## A238423.P4961975880124829052

`A274933(A330028(n)+1)`
-/

namespace A238423.P4961975880124829052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274933 (A330028 n + 1).toNat

end

end A238423.P4961975880124829052

/-! ## A238423.P7255639180588216909

`A000196(or(2^n, A005317(n)))`
-/

namespace A238423.P7255639180588216909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.lor (2 ^ n : ℤ) (A005317 n)).toNat

end

end A238423.P7255639180588216909

/-! ## A238423.P15376168600405491537

`A025427(A026641(n))+A001405(n)`
-/

namespace A238423.P15376168600405491537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 (A026641 n).toNat + A001405 n

end

end A238423.P15376168600405491537

/-!
# A238424: Number of partitions of n without three consecutive parts in arithmetic progression.

The programs for A238424, there is no canonical definition to state claims against.
-/

/-! ## A238424.P4668552944585875241

`A238433(n)+A059841(A286892(n))`
-/

namespace A238424.P4668552944585875241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238433 n + A059841 (A286892 n).toNat

end

end A238424.P4668552944585875241

/-! ## A238424.P4892679015889367602

`A238433(n)+A059841(A111695(n+1))`
-/

namespace A238424.P4892679015889367602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238433 n + A059841 (A111695 (n + 1)).toNat

end

end A238424.P4892679015889367602

/-! ## A238424.P7297997327844485542

`A340999(A357820(n+1))+A238433(n)`
-/

namespace A238424.P7297997327844485542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340999 ((A357820 (n + 1)).toNat + 204) + A238433 n

end

end A238424.P7297997327844485542

/-!
# A238425: Number of descent sequences of length n without two consecutive identical elements (descent sequences without flat steps).

The programs for A238425, there is no canonical definition to state claims against.
-/

/-! ## A238425.P2555511713324537344

`floor(∑[A089753(n+2)]/9)+1`
-/

namespace A238425.P2555511713324537344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089753 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 9⌋ + 1

end

end A238425.P2555511713324537344

/-! ## A238425.P16808809381799018103

`A025453(Δ[A262592(n)])`
-/

namespace A238425.P16808809381799018103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025453 (f1 (n + 1) - f1 n).toNat

end

end A238425.P16808809381799018103

/-! ## A238425.P12960651108409007786

`A025453(A111277(n+1))`
-/

namespace A238425.P12960651108409007786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025453 (A111277 (n + 1)).toNat

end

end A238425.P12960651108409007786

/-! ## A238425.P8131161317881282945

`A325835(A005252(n))+1`
-/

namespace A238425.P8131161317881282945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325835 (A005252 n).toNat + 1

end

end A238425.P8131161317881282945

/-! ## A238425.P17505143842432494069

`A325835(A177116(n))+1`
-/

namespace A238425.P17505143842432494069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325835 (A177116 n).toNat + 1

end

end A238425.P17505143842432494069

/-!
# A238426: Expansion of F(x) where F(x) = 1 + x / (1 - x * F(x) * F(-x^2) ).

The programs for A238426, there is no canonical definition to state claims against.
-/

/-! ## A238426.P1123112584921499242

`A032066(A062399(n+1))`
-/

namespace A238426.P1123112584921499242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032066 (A062399 (n + 1)).toNat

end

end A238426.P1123112584921499242

/-! ## A238426.P18332615150393820485

`A032066(A120126(n+1))`
-/

namespace A238426.P18332615150393820485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032066 (A120126 (n + 1)).toNat

end

end A238426.P18332615150393820485

/-! ## A238426.P7002370794388115661

`A032066(A351870(n+1))`
-/

namespace A238426.P7002370794388115661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032066 (A351870 (n + 1)).toNat

end

end A238426.P7002370794388115661

/-! ## A238426.P12234796094725523874

`A007947(A032066(n+1)²)`
-/

namespace A238426.P12234796094725523874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A032066 (n + 1) ^ 2).toNat

end

end A238426.P12234796094725523874

/-! ## A238426.P11690072029301111806

`A262689(A032066(n+1)²)`
-/

namespace A238426.P11690072029301111806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A032066 (n + 1) ^ 2).toNat

end

end A238426.P11690072029301111806

/-!
# A238427: Expansion of F(x) where F(x) = 1 + x / (1 - x * F(x) * F(+x^2) ).

The programs for A238427, there is no canonical definition to state claims against.
-/

/-! ## A238427.P14672978469078222412

`A195174(A120895(n+1))`
-/

namespace A238427.P14672978469078222412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195174 (A120895 (n + 1)).toNat

end

end A238427.P14672978469078222412

/-! ## A238427.P15110292825160163523

`A195174(record[A120895(n)*A278657(n)])`
-/

namespace A238427.P15110292825160163523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120895 n * A278657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195174 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A238427.P15110292825160163523

/-! ## A238427.P5852194891369559507

`A195174(record[A120895(n)/A278657(n)])`
-/

namespace A238427.P5852194891369559507
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120895 n : ℚ) / (A278657 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195174 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A238427.P5852194891369559507

/-! ## A238427.P5343637482135859405

`A187188(A236913(n)+A085810(n+1))`
-/

namespace A238427.P5343637482135859405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187188 (A236913 n + A085810 (n + 1)).toNat

end

end A238427.P5343637482135859405

/-! ## A238427.P9308307112384971866

`A051889(A287582(n))`
-/

namespace A238427.P9308307112384971866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A287582 n).toNat

end

end A238427.P9308307112384971866

/-!
# A238428: Expansion of F(x) where F(x) = 1 + x / (1 - x * F(x) - x^2 * F(x^2) ).

The programs for A238428, there is no canonical definition to state claims against.
-/

/-! ## A238428.P5304109836975480784

`A096815(2*(n²-n))`
-/

namespace A238428.P5304109836975480784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096815 (2 * ((n ^ 2 : ℤ) - (n : ℤ))).toNat

end

end A238428.P5304109836975480784

/-! ## A238428.P11378233773755846581

`A338729(n)-∑{d}[n, floor(atan(#))]`
-/

namespace A238428.P11378233773755846581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338729 n - ∑ d ∈ Nat.divisors (f1 n), ⌊Real.arctan (d : ℝ)⌋

end

end A238428.P11378233773755846581

/-! ## A238428.P16482273527472383079

`A212421(A250262(n))`
-/

namespace A238428.P16482273527472383079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212421 (A250262 n).toNat

end

end A238428.P16482273527472383079

/-! ## A238428.P4065031762601565324

`A087805(A339156(n+1))`
-/

namespace A238428.P4065031762601565324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087805 (A339156 (n + 1)).toNat

end

end A238428.P4065031762601565324

/-!
# A238429: Expansion of F(x) where F(x) = 1 + x / (1 - x^2 / F(x^2) ).

The programs for A238429, there is no canonical definition to state claims against.
-/

/-! ## A238429.P6431444167909285625

`A218031(A047513(n+1)%A257088(n))`
-/

namespace A238429.P6431444167909285625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218031 (Int.tmod (A047513 (n + 1)) (A257088 n)).toNat

end

end A238429.P6431444167909285625

/-! ## A238429.P3959062677546156570

`A218031(A047513(n+1)+A038608(n))`
-/

namespace A238429.P3959062677546156570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218031 (A047513 (n + 1) + A038608 n).toNat

end

end A238429.P3959062677546156570

/-! ## A238429.P10439349743809949710

`A128834(C(A065033(n), A106610(n)))`
-/

namespace A238429.P10439349743809949710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 (Nat.choose (A065033 n).toNat (A106610 n).toNat)

end

end A238429.P10439349743809949710

/-! ## A238429.P12940898781676549231

`A128834(C(A123108(n+1), A106610(n)))`
-/

namespace A238429.P12940898781676549231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 (Nat.choose (A123108 (n + 1)).toNat (A106610 n).toNat)

end

end A238429.P12940898781676549231

/-! ## A238429.P15193629610856524318

`A054525(A361857(n+1)+A064052(2*(n+2)))`
-/

namespace A238429.P15193629610856524318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (A361857 (n + 1) + A064052 (2 * (n + 2))).toNat

end

end A238429.P15193629610856524318

/-!
# A238430: Expansion of F(x) where F(x) = 1 + x / (1 - x / F(-x^2) ).

The programs for A238430, there is no canonical definition to state claims against.
-/

/-! ## A238430.P12039049952137108601

`abs(A285484(n))%A125649(n+1)`
-/

namespace A238430.P12039049952137108601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A285484 n| (A125649 (n + 1))

end

end A238430.P12039049952137108601

/-! ## A238430.P3502240591619214998

`abs(A285484(n)%A212074(n+1))`
-/

namespace A238430.P3502240591619214998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A285484 n) (A212074 (n + 1))|

end

end A238430.P3502240591619214998

/-! ## A238430.P5276332025536555608

`A000007(A000032(n))+abs(A285484(n))`
-/

namespace A238430.P5276332025536555608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A000032 n).toNat + |A285484 n|

end

end A238430.P5276332025536555608

/-! ## A238430.P3121880338013231781

`A062157(A082981(n+1))*A285484(n)`
-/

namespace A238430.P3121880338013231781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A082981 (n + 1)).toNat * A285484 n

end

end A238430.P3121880338013231781

/-! ## A238430.P10144942917566829397

`gcd(A242284(A055469(n+1)), A285484(n))`
-/

namespace A238430.P10144942917566829397
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A242284 (A055469 (n + 1)).toNat) (A285484 n)

end

end A238430.P10144942917566829397

/-!
# A238431: Expansion of F(x) where F(x) = 1 + x / (1 - x * F(x^2)^2 ).

The programs for A238431, there is no canonical definition to state claims against.
-/

/-! ## A238431.P9210515255382861874

`A116939(or(n, A000988(n)))`
-/

namespace A238431.P9210515255382861874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116939 (Int.lor (n : ℤ) (A000988 n)).toNat

end

end A238431.P9210515255382861874

/-! ## A238431.P15218568005122865182

`A247431(a(n-1))+a(n-2)+1` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A238431.P15218568005122865182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  A247431 (a (n - 1)).toNat + a (n - 2) + 1

end

end A238431.P15218568005122865182

/-! ## A238431.P7694795697532072343

`A067085(A000104(n))`
-/

namespace A238431.P7694795697532072343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067085 (A000104 n).toNat

end

end A238431.P7694795697532072343

/-! ## A238431.P12494076673948093286

`A000196(A193036(n))`
-/

namespace A238431.P12494076673948093286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A193036 n).toNat

end

end A238431.P12494076673948093286

/-! ## A238431.P18020368854173811192

`A135304(A066062(n))`
-/

namespace A238431.P18020368854173811192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135304 (A066062 n).toNat

end

end A238431.P18020368854173811192

/-!
# A238432: Number of compositions of n avoiding equidistant 3-term arithmetic progressions.

The programs for A238432, there is no canonical definition to state claims against.
-/

/-! ## A238432.P7279436214263461521

`A116939(or(n, A005505(n)))`
-/

namespace A238432.P7279436214263461521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116939 (Int.lor (n : ℤ) (A005505 n)).toNat

end

end A238432.P7279436214263461521

/-! ## A238432.P16190701331501643284

`A080352(n)+A055086(A054392(n))`
-/

namespace A238432.P16190701331501643284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080352 n + A055086 (A054392 n).toNat

end

end A238432.P16190701331501643284

/-! ## A238432.P16854657369153261472

`A116939(A116939(n)+A005505(n))`
-/

namespace A238432.P16854657369153261472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116939 (A116939 n + A005505 n).toNat

end

end A238432.P16854657369153261472

/-! ## A238432.P10249708813607641336

`A002024(or(A006068(n), A294764(n)))`
-/

namespace A238432.P10249708813607641336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (Int.lor (A006068 n) (A294764 n)).toNat

end

end A238432.P10249708813607641336

/-! ## A238432.P14691683077654303514

`A116939(xor(A005505(n), A116939(n)))`
-/

namespace A238432.P14691683077654303514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116939 (Int.xor (A005505 n) (A116939 n)).toNat

end

end A238432.P14691683077654303514

/-!
# A238433: Number of partitions of n avoiding equidistant 3-term arithmetic progressions.

The programs for A238433, there is no canonical definition to state claims against.
-/

/-! ## A238433.P3972359118775192306

`A238424(n)-A340370(A001333(n))`
-/

namespace A238433.P3972359118775192306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238424 n - A340370 (A001333 n).toNat

end

end A238433.P3972359118775192306

/-! ## A238433.P12748702643129078278

`A238424(n)-A059841(A286892(n))`
-/

namespace A238433.P12748702643129078278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238424 n - A059841 (A286892 n).toNat

end

end A238433.P12748702643129078278

/-! ## A238433.P17291276397553039839

`A238424(n)-A059841(A111695(n+1))`
-/

namespace A238433.P17291276397553039839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238424 n - A059841 (A111695 (n + 1)).toNat

end

end A238433.P17291276397553039839

/-! ## A238433.P11973016619395879381

`A238424(n)-A340999(A357820(n+1))`
-/

namespace A238433.P11973016619395879381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238424 n - A340999 ((A357820 (n + 1)).toNat + 204)

end

end A238433.P11973016619395879381

/-! ## A238433.P15419229492800411348

`A235145(n)+A238424(n)-A249147(A111695(n+1))`
-/

namespace A238433.P15419229492800411348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235145 n + (A238424 n - A249147 (A111695 (n + 1)).toNat)

end

end A238433.P15419229492800411348

/-!
# A238434: Expansion of G(1) where G(k) = 1 + q^k / ( 1 - q^k * G(k+2) ).

The programs for A238434, there is no canonical definition to state claims against.
-/

/-! ## A238434.P1793282777662563242

`A111654(A298118(n+1))`
-/

namespace A238434.P1793282777662563242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111654 (A298118 (n + 1)).toNat

end

end A238434.P1793282777662563242

/-! ## A238434.P8338655337599408671

`A000196(A007477(n))+char[14]`
-/

namespace A238434.P8338655337599408671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A007477 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A238434.P8338655337599408671

/-! ## A238434.P17749976114621136339

`A000196(A009714(n)+A007477(n))`
-/

namespace A238434.P17749976114621136339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A009714 n + A007477 n).toNat

end

end A238434.P17749976114621136339

/-! ## A238434.P257525262914162886

`A025437(n)+A000196(A007477(n))`
-/

namespace A238434.P257525262914162886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025437 n + A000196 (A007477 n).toNat

end

end A238434.P257525262914162886

/-! ## A238434.P8059341266562448971

`A000196(A127767(n)+A007477(n))`
-/

namespace A238434.P8059341266562448971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A127767 n + A007477 n).toNat

end

end A238434.P8059341266562448971

/-!
# A238435: Expansion of 1/G(1) where G(k) = 1 - (q/(1-q))^k / G(k+1).

The programs for A238435, there is no canonical definition to state claims against.
-/

/-! ## A238435.P15929364398691917195

`A089850(A035038(n))+A001519(n)`
-/

namespace A238435.P15929364398691917195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089850 (A035038 n).toNat + A001519 n

end

end A238435.P15929364398691917195

/-! ## A238435.P16737895088912886125

`A112689(A077846(n)+A000217(n))`
-/

namespace A238435.P16737895088912886125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (A077846 n + A000217 n).toNat

end

end A238435.P16737895088912886125

/-! ## A238435.P16323005061717329372

`A005773(n)-A137746(A032555(n+1))`
-/

namespace A238435.P16323005061717329372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 n - A137746 (A032555 (n + 1)).toNat

end

end A238435.P16323005061717329372

/-! ## A238435.P8379875947302488681

`A005773(n)-A137746(A032557(n+1))`
-/

namespace A238435.P8379875947302488681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 n - A137746 (A032557 (n + 1)).toNat

end

end A238435.P8379875947302488681

/-! ## A238435.P9396438199975281080

`A005773(n)-A137746(A032565(n+1))`
-/

namespace A238435.P9396438199975281080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 n - A137746 (A032565 (n + 1)).toNat

end

end A238435.P9396438199975281080

/-!
# A238436: Expansion of 1/G(1) where G(k) = 1 - (q*(1+q))^k / G(k+1).

The programs for A238436, there is no canonical definition to state claims against.
-/

/-! ## A238436.P1171733415812398953

`A191693(n+1)+A086080(A038205(n))`
-/

namespace A238436.P1171733415812398953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191693 (n + 1) + A086080 (A038205 n).toNat

end

end A238436.P1171733415812398953

/-! ## A238436.P13269338933231046822

`A191693(n+1)+A006926(A290995(n))`
-/

namespace A238436.P13269338933231046822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191693 (n + 1) + A006926 (A290995 n).toNat

end

end A238436.P13269338933231046822

/-! ## A238436.P15165367427327380601

`or(A188014(A162559(n)), A191693(n+1))`
-/

namespace A238436.P15165367427327380601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A188014 (A162559 n).toNat) (A191693 (n + 1))

end

end A238436.P15165367427327380601

/-! ## A238436.P6588906608730820887

`or(A191693(n+1), A339661(A328440(n)))`
-/

namespace A238436.P6588906608730820887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A191693 (n + 1)) (A339661 (A328440 n).toNat)

end

end A238436.P6588906608730820887

/-! ## A238436.P5054200093493568873

`A191693(n+1)+A014376(A191701(n+1))`
-/

namespace A238436.P5054200093493568873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191693 (n + 1) + A014376 (A191701 (n + 1)).toNat

end

end A238436.P5054200093493568873

/-!
# A238437: Expansion of 1/G(1) where G(k) = 1 - (q^k/(1-q^k)) / G(k+1).

The programs for A238437, there is no canonical definition to state claims against.
-/

/-! ## A238437.P7413270993852883626

`A003520(eq[0, A327448(n)])`
-/

namespace A238437.P7413270993852883626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327448 (n + 23)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003520 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238437.P7413270993852883626

/-! ## A238437.P4758300984460685455

`A003520(eq[1, A337548(n)])`
-/

namespace A238437.P4758300984460685455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337548 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003520 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238437.P4758300984460685455

/-! ## A238437.P703500080406453213

`A003520(lt[A327448(n), 1])`
-/

namespace A238437.P703500080406453213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327448 (n + 23)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003520 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A238437.P703500080406453213

/-! ## A238437.P5138783185900278957

`A138194(2*(A129905(n)-n))`
-/

namespace A238437.P5138783185900278957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138194 (2 * (A129905 n - (n : ℤ))).toNat

end

end A238437.P5138783185900278957

/-! ## A238437.P931725506079830896

`A079955(A287377(n)+floor(3/acot(n)))`
-/

namespace A238437.P931725506079830896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079955 (A287377 n + ⌊3 / SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A238437.P931725506079830896

/-!
# A238438: Expansion of 1/G(0) where G(k) = 1 - q/(1 - q - q^3 / G(k+1) ).

The programs for A238438, there is no canonical definition to state claims against.
-/

/-! ## A238438.P16336149906627132886

`Δ[record[A097892(n)-A054977(n)]]`
-/

namespace A238438.P16336149906627132886
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097892 n - A054977 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A238438.P16336149906627132886

/-! ## A238438.P16079783048063419422

`A257104(n)-A036639(A036424(n))`
-/

namespace A238438.P16079783048063419422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257104 n - A036639 (A036424 n).toNat

end

end A238438.P16079783048063419422

/-! ## A238438.P8647820088480755158

`A257104(n)-A036639(A036647(n))`
-/

namespace A238438.P8647820088480755158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257104 n - A036639 (A036647 n).toNat

end

end A238438.P8647820088480755158

/-! ## A238438.P1831137202147859484

`A257104(n)-A079978(A000800(n))`
-/

namespace A238438.P1831137202147859484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257104 n - A079978 (A000800 n).toNat

end

end A238438.P1831137202147859484

/-! ## A238438.P1517161142862486897

`A257104(n)-A054908(A060693(n))`
-/

namespace A238438.P1517161142862486897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257104 n - A054908 (A060693 n).toNat

end

end A238438.P1517161142862486897

/-!
# A238439: Number of pairs (C,D) where C is a composition of u, D is a composition into distinct parts of v, and u + v = n.

The programs for A238439, there is no canonical definition to state claims against.
-/

/-! ## A238439.P14228907228295231315

`A161205(A150697(n))`
-/

namespace A238439.P14228907228295231315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161205 (A150697 n).toNat

end

end A238439.P14228907228295231315

/-! ## A238439.P4236913891793552960

`A135094(n)+A046523(A333083(n))`
-/

namespace A238439.P4236913891793552960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135094 n + A046523 (A333083 n).toNat

end

end A238439.P4236913891793552960

/-! ## A238439.P17949323118422899500

`A161205(A011782(n)*A205484(n+1))`
-/

namespace A238439.P17949323118422899500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161205 (A011782 n * A205484 (n + 1)).toNat

end

end A238439.P17949323118422899500

/-! ## A238439.P10942300852854131133

`A089223(lcm(A004277(n), A301957(n+1)))`
-/

namespace A238439.P10942300852854131133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089223 (Int.lcm (A004277 n) (A301957 (n + 1)))

end

end A238439.P10942300852854131133

/-!
# A238440: Expansion of 1/E(q/E(q)) where E(q) = Product_{n>=1} (1 - q^n).

The programs for A238440, there is no canonical definition to state claims against.
-/

/-! ## A238440.P10899680580187227451

`A106609(2*A006817(n))`
-/

namespace A238440.P10899680580187227451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (2 * A006817 n).toNat

end

end A238440.P10899680580187227451

/-! ## A238440.P5481953643911576759

`A110656(2*A006817(n))`
-/

namespace A238440.P5481953643911576759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (2 * A006817 n).toNat

end

end A238440.P5481953643911576759

/-! ## A238440.P9819753690372232462

`A051724(3*A006817(n))`
-/

namespace A238440.P9819753690372232462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (3 * A006817 n).toNat

end

end A238440.P9819753690372232462

/-! ## A238440.P1276752186024057230

`A065883(4*A006817(n))`
-/

namespace A238440.P1276752186024057230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065883 (4 * A006817 n).toNat

end

end A238440.P1276752186024057230

/-!
# A238441: Expansion of 1/Product_{n>=1} (1 - (q + q^2)^n).

The programs for A238441, there is no canonical definition to state claims against.
-/

/-! ## A238441.P7659942831858667731

`A100196(A092690(n)-A342556(n+1))`
-/

namespace A238441.P7659942831858667731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A092690 n - A342556 (n + 1)).toNat

end

end A238441.P7659942831858667731

/-! ## A238441.P11107643995981045281

`A005041(A007161(n))`
-/

namespace A238441.P11107643995981045281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A007161 n).toNat

end

end A238441.P11107643995981045281

/-! ## A238441.P4700753239346796100

`A000006(A150002(n))`
-/

namespace A238441.P4700753239346796100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A150002 n).toNat

end

end A238441.P4700753239346796100

/-! ## A238441.P15783285171034142947

`A073188(A365114(n))`
-/

namespace A238441.P15783285171034142947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073188 (A365114 n).toNat

end

end A238441.P15783285171034142947

/-!
# A238443: 

The programs for A238443, there is no canonical definition to state claims against.
-/

/-! ## A238443.P10968557436288220590

`A174973(n+1)%A004771(n)`
-/

namespace A238443.P10968557436288220590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A174973 (n + 1)) (A004771 n)

end

end A238443.P10968557436288220590

/-! ## A238443.P13889205406685100067

`A174973(n+1)+char[A307809(n+1)]`
-/

namespace A238443.P13889205406685100067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307809 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174973 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A238443.P13889205406685100067

/-! ## A238443.P16919114180829611308

`A174973(n+1)+char[A346025(n+1)]`
-/

namespace A238443.P16919114180829611308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346025 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174973 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A238443.P16919114180829611308

/-! ## A238443.P8624186756347217354

`∪[A142562(n+1)², A174973(n+1)]`
-/

namespace A238443.P8624186756347217354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142562 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A238443.P8624186756347217354

/-! ## A238443.P6326116126775016697

`A174973(n+1)+A025443(A056557(n))`
-/

namespace A238443.P6326116126775016697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174973 (n + 1) + A025443 (A056557 n).toNat

end

end A238443.P6326116126775016697

/-! ## A238443.P2174660284687499151

`A174973(n+1)+A098108(A272619(n+1))`
-/

namespace A238443.P2174660284687499151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174973 (n + 1) + A098108 (A272619 (n + 1)).toNat

end

end A238443.P2174660284687499151

/-! ## A238443.P15263974809994723645

`A243833(A233867(n+1))+A174973(n+1)`
-/

namespace A238443.P15263974809994723645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243833 (A233867 (n + 1)).toNat + A174973 (n + 1)

end

end A238443.P15263974809994723645

/-! ## A238443.P4425166900776777262

`A174973(n+1)*A208970(A342507(n+3))`
-/

namespace A238443.P4425166900776777262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174973 (n + 1) * A208970 (A342507 (n + 3)).toNat

end

end A238443.P4425166900776777262

/-! ## A238443.P15723238434736153122

`lcm(A055642(A092488(n+1)), A174973(n+1))`
-/

namespace A238443.P15723238434736153122
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A055642 (A092488 (n + 1)).toNat) (A174973 (n + 1))

end

end A238443.P15723238434736153122

/-! ## A238443.P8302650305338314770

`A174973(n+1)+A118729(A001222(2*n+3))`
-/

namespace A238443.P8302650305338314770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174973 (n + 1) + A118729 (A001222 (2 * n + 3)).toNat

end

end A238443.P8302650305338314770

/-!
# A238445: Primes p such that f(f(p)) is prime, where f(x) = x^5-x^4-x^3-x^2-x-1.

The programs for A238445, there is no canonical definition to state claims against.
-/

/-! ## A238445.P198367300324988738

`ceil(root(A237640(n+1), 5))`
-/

namespace A238445.P198367300324988738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A237640 (n + 1) : ℝ) ^ (1 / (5 : ℝ))⌉

end

end A238445.P198367300324988738

/-! ## A238445.P13938690080092139480

`A265759(A160773(n+1)+A104361(n+2))`
-/

namespace A238445.P13938690080092139480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265759 (A160773 (n + 1) + A104361 (n + 2)).toNat

end

end A238445.P13938690080092139480

/-!
# A238446: Let B be a nonempty and proper subset of A_n = {1,2,...,p_n-1}, where p_n is the n-th prime. Let C be the complement of B, so that the union B and C is A_n. a(n) is half the number of sums of products of elements of B and elements of C which are divisible by p_n, when B runs through all such subsets of A_n.

The programs for A238446, there is no canonical definition to state claims against.
-/

/-! ## A238446.P15630235712001797861

`A082550(A006093(n+1))-floor(acot(n))`
-/

namespace A238446.P15630235712001797861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082550 (A006093 (n + 1)).toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A238446.P15630235712001797861

/-! ## A238446.P3129208781906852296

`A082550(A006093(n+1))-A000007(n)`
-/

namespace A238446.P3129208781906852296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082550 (A006093 (n + 1)).toNat - A000007 n

end

end A238446.P3129208781906852296

/-! ## A238446.P8212391613994805356

`A082550(A006093(n+1))%A348205(n+1)`
-/

namespace A238446.P8212391613994805356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082550 (A006093 (n + 1)).toNat) (A348205 (n + 1))

end

end A238446.P8212391613994805356

/-! ## A238446.P1333465129997489967

`record[(2*A000016(n)-1)%A265399(n+1)]`
-/

namespace A238446.P1333465129997489967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A000016 n - 1) (A265399 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238446.P1333465129997489967

/-!
# A238447: Primes p such that f(p) and f(f(p)) are both prime, where f(x) = x^2-x-1.

The programs for A238447, there is no canonical definition to state claims against.
-/

/-! ## A238447.P17466594685546507065

`ceil(sqrt(A237641(n+1)))`
-/

namespace A238447.P17466594685546507065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A237641 (n + 1) : ℝ)⌉

end

end A238447.P17466594685546507065

/-! ## A238447.P15608336316875723673

`A006530(floor(sqrt(A237641(n+1)))+1)`
-/

namespace A238447.P15608336316875723673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.sqrt (A237641 (n + 1)) + 1).toNat

end

end A238447.P15608336316875723673

/-! ## A238447.P14443909517869996124

`A014963(floor(sqrt(A237641(n+1)))+1)`
-/

namespace A238447.P14443909517869996124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Int.sqrt (A237641 (n + 1)) + 1).toNat

end

end A238447.P14443909517869996124

/-! ## A238447.P15272495367041447610

`A020639(floor(sqrt(A237641(n+1)))+1)`
-/

namespace A238447.P15272495367041447610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.sqrt (A237641 (n + 1)) + 1).toNat

end

end A238447.P15272495367041447610

/-! ## A238447.P15012894608957073489

`A014963(round(sqrt(A237641(n+1)))+1)`
-/

namespace A238447.P15012894608957073489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.roundAway (Real.sqrt (A237641 (n + 1) : ℝ)) + 1).toNat

end

end A238447.P15012894608957073489

/-!
# A238448: Smallest number m such that 2^m contains a string of n consecutive increasing digits in its decimal representation.

The programs for A238448, there is no canonical definition to state claims against.
-/

/-! ## A238448.P9209889657124652628

`xor(A261389(n), A262969(A000108(n)))`
-/

namespace A238448.P9209889657124652628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A261389 n) (A262969 (A000108 n).toNat)

end

end A238448.P9209889657124652628

/-!
# A238449: Smallest numbers m such that 2^m contains a string of n consecutive decreasing integers in its decimal representation.

The programs for A238449, there is no canonical definition to state claims against.
-/

/-! ## A238449.P11189851583780964532

`A243303(n+1)%A018319(n+1)²`
-/

namespace A238449.P11189851583780964532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243303 (n + 1)) (A018319 (n + 1) ^ 2)

end

end A238449.P11189851583780964532

/-! ## A238449.P8590493924097925090

`A243303(n+1)-A008683(A001018(n))`
-/

namespace A238449.P8590493924097925090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243303 (n + 1) - A008683 (A001018 n).toNat

end

end A238449.P8590493924097925090

/-!
# A238450: Triangle read by rows: T(n,k) is the number of k's in all partitions of n into an odd number of distinct parts.

The programs for A238450, there is no canonical definition to state claims against.
-/

/-! ## A238450.P15569972906827513722

`A015716(n+1)-A238451(n+1)`
-/

namespace A238450.P15569972906827513722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015716 (n + 1) - A238451 (n + 1)

end

end A238450.P15569972906827513722

/-! ## A238450.P4258297449091605202

`A000009(A002024(n+1))-(A238451(n+1)+A015718(n+1))`
-/

namespace A238450.P4258297449091605202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A002024 (n + 1)).toNat - (A238451 (n + 1) + A015718 (n + 1))

end

end A238450.P4258297449091605202

/-! ## A238450.P14975445163258134449

`A015716(n+1)-A003074(A049834(n+1))^A179456(n)`
-/

namespace A238450.P14975445163258134449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015716 (n + 1) : ℚ) - (A003074 (A049834 (n + 1)).toNat : ℚ) ^ (A179456 n : ℤ)

end

end A238450.P14975445163258134449

/-! ## A238450.P10438444965855783841

`A015716(n+1)-A003074(A054531(n+1))^A179456(n)`
-/

namespace A238450.P10438444965855783841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015716 (n + 1) : ℚ) - (A003074 (A054531 (n + 1)).toNat : ℚ) ^ (A179456 n : ℤ)

end

end A238450.P10438444965855783841

/-! ## A238450.P3903503567735313372

`A015716(n+1)-Δ[A004197(n)]^A296548(n)`
-/

namespace A238450.P3903503567735313372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015716 (n + 1) : ℚ) - (f1 (n + 1) - f1 n : ℚ) ^ (A296548 n : ℤ)

end

end A238450.P3903503567735313372

/-!
# A238451: Triangle read by rows: T(n,k) is the number of k's in all partitions of n into an even number of distinct parts.

The programs for A238451, there is no canonical definition to state claims against.
-/

/-! ## A238451.P8994945796358921138

`A015716(n+1)-A238450(n+1)`
-/

namespace A238451.P8994945796358921138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015716 (n + 1) - A238450 (n + 1)

end

end A238451.P8994945796358921138

/-! ## A238451.P10751527518992007870

`A000009(A002024(n+1))-(A238450(n+1)+A015718(n+1))`
-/

namespace A238451.P10751527518992007870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A002024 (n + 1)).toNat - (A238450 (n + 1) + A015718 (n + 1))

end

end A238451.P10751527518992007870

/-! ## A238451.P9983269336995036127

`A005131(gcd(A054523(n+1), A061428(n+1)))`
-/

namespace A238451.P9983269336995036127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005131 (Int.gcd (A054523 (n + 1)) (A061428 (n + 1)))

end

end A238451.P9983269336995036127

/-! ## A238451.P17253026511044243729

`A003074(A049834(n+1))^A179456(n)`
-/

namespace A238451.P17253026511044243729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003074 (A049834 (n + 1)).toNat : ℚ) ^ (A179456 n : ℤ)

end

end A238451.P17253026511044243729

/-! ## A238451.P7371150972056604760

`A003074(A054531(n+1))^A179456(n)`
-/

namespace A238451.P7371150972056604760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003074 (A054531 (n + 1)).toNat : ℚ) ^ (A179456 n : ℤ)

end

end A238451.P7371150972056604760

/-!
# A238452: Second column of the extended Catalan triangle A189231.

The programs for A238452, the canonical program `A238452.P3440070362232594000` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238452 has offset 0).

The definition of A238452 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A238452.P3440070362232594000

`A057977(n+1)-A057977(n)*(n+1)%2`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A238452

/-- `A057977(n+1)-A057977(n)*(n+1)%2` -/
def P3440070362232594000.Spec : Prop :=
  ∀ n, P3440070362232594000.a n = A238452 n

theorem P3440070362232594000.correct : P3440070362232594000.Spec := by
  intro n
  simp only [A238452]

end A238452

/-! ## A238452.P10935441616488023036

`gcd(n, n%2)*A208355(n)`
-/

namespace A238452.P10935441616488023036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n % 2) : ℤ) * A208355 n

end

end A238452.P10935441616488023036

namespace A238452

/-- `gcd(n, n%2)*A208355(n)` -/
def P10935441616488023036.Spec : Prop :=
  ∀ n, P10935441616488023036.a n = A238452 n

end A238452

/-! ## A238452.P280729696233780062

`A138364(n)+Δ[A057977(n)]`
-/

namespace A238452.P280729696233780062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138364 n + (f1 (n + 1) - f1 n)

end

end A238452.P280729696233780062

namespace A238452

/-- `A138364(n)+Δ[A057977(n)]` -/
def P280729696233780062.Spec : Prop :=
  ∀ n, P280729696233780062.a n = A238452 n

end A238452

/-! ## A238452.P9026345561169396531

`A057977(n+1)-A126120(n)`
-/

namespace A238452.P9026345561169396531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 (n + 1) - A126120 n

end

end A238452.P9026345561169396531

namespace A238452

/-- `A057977(n+1)-A126120(n)` -/
def P9026345561169396531.Spec : Prop :=
  ∀ n, P9026345561169396531.a n = A238452 n

end A238452

/-! ## A238452.P13061723477499348743

`A063549(n+1)-A126120(n)`
-/

namespace A238452.P13061723477499348743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063549 (n + 1) - A126120 n

end

end A238452.P13061723477499348743

namespace A238452

/-- `A063549(n+1)-A126120(n)` -/
def P13061723477499348743.Spec : Prop :=
  ∀ n, P13061723477499348743.a n = A238452 n

end A238452

/-! ## A238452.P4600219528941773567

`2/A133622(n+1)*A037952(n)`
-/

namespace A238452.P4600219528941773567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A133622 (n + 1) : ℚ) * (A037952 n : ℚ)

end

end A238452.P4600219528941773567

namespace A238452

/-- `2/A133622(n+1)*A037952(n)` -/
def P4600219528941773567.Spec : Prop :=
  ∀ n, P4600219528941773567.a n = (A238452 n : ℚ)

end A238452

/-! ## A238452.P10294181335542414496

`A057977(n+1)+A138364(n)-A057977(n)`
-/

namespace A238452.P10294181335542414496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 (n + 1) + (A138364 n - A057977 n)

end

end A238452.P10294181335542414496

namespace A238452

/-- `A057977(n+1)+A138364(n)-A057977(n)` -/
def P10294181335542414496.Spec : Prop :=
  ∀ n, P10294181335542414496.a n = A238452 n

end A238452

/-! ## A238452.P7481465661684484735

`A126120(n+1)+A138364(n+1)-A126120(n)`
-/

namespace A238452.P7481465661684484735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (n + 1) + (A138364 (n + 1) - A126120 n)

end

end A238452.P7481465661684484735

namespace A238452

/-- `A126120(n+1)+A138364(n+1)-A126120(n)` -/
def P7481465661684484735.Spec : Prop :=
  ∀ n, P7481465661684484735.a n = A238452 n

end A238452

/-! ## A238452.P467865628703513365

`2/(n+1)*A237884(n+1)`
-/

namespace A238452.P467865628703513365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) * (A237884 (n + 1) : ℚ)

end

end A238452.P467865628703513365

namespace A238452

/-- `2/(n+1)*A237884(n+1)` -/
def P467865628703513365.Spec : Prop :=
  ∀ n, P467865628703513365.a n = (A238452 n : ℚ)

end A238452

/-! ## A238452.P18153720045093105726

`gcd(n*a(n-1), A090192(n+2))` with `a(0)=0`
-/

namespace A238452.P18153720045093105726
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Int.gcd (n * a (n - 1) : ℤ) (A090192 (n + 2))

end

end A238452.P18153720045093105726

namespace A238452

/-- `gcd(n*a(n-1), A090192(n+2))` -/
def P18153720045093105726.Spec : Prop :=
  ∀ n, (P18153720045093105726.a n : ℤ) = A238452 n

end A238452

/-! ## A238452.P12709991359863543800

`A057977(n+1)-A097610(A000217(n))`
-/

namespace A238452.P12709991359863543800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 (n + 1) - A097610 (A000217 n).toNat

end

end A238452.P12709991359863543800

namespace A238452

/-- `A057977(n+1)-A097610(A000217(n))` -/
def P12709991359863543800.Spec : Prop :=
  ∀ n, P12709991359863543800.a n = A238452 n

end A238452

/-!
# A238453: Triangle read by rows: T(n,k) = A001088(n)/(A001088(k)*A001088(n-k)).

The programs for A238453, there is no canonical definition to state claims against.
-/

/-! ## A238453.P18234124531905846232

`A001088(row(n))/(A001088(col(n))*A001088(row(n)-col(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A238453.P18234124531905846232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001088 (SequenceMachineLib.triRow n) : ℚ) / (A001088 (SequenceMachineLib.triCol n) * A001088 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n) : ℚ)

end

end A238453.P18234124531905846232

/-! ## A238453.P4705364686256382377

`A239702(n)*A246465(n)`
-/

namespace A238453.P4705364686256382377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239702 n * A246465 n

end

end A238453.P4705364686256382377

/-! ## A238453.P10453945985218501159

`A238688(n)/A238498(n)`
-/

namespace A238453.P10453945985218501159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238688 n : ℚ) / (A238498 n : ℚ)

end

end A238453.P10453945985218501159

/-! ## A238453.P5137498862524371731

`A000010(A048804(n))*A246465(n)`
-/

namespace A238453.P5137498862524371731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A048804 n).toNat * A246465 n

end

end A238453.P5137498862524371731

/-! ## A238453.P482389185276846572

`A007318(n)/A048804(n)*A000010(A048804(n))`
-/

namespace A238453.P482389185276846572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) / (A048804 n : ℚ) * (A000010 (A048804 n).toNat : ℚ)

end

end A238453.P482389185276846572

/-! ## A238453.P4716185236451302367

`A000010(A007318(n)/A246465(n))*A246465(n)`
-/

namespace A238453.P4716185236451302367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A007318 n : ℚ) / (A246465 n : ℚ))).toNat * A246465 n

end

end A238453.P4716185236451302367

/-! ## A238453.P17245627460327752987

`A173557(A007318(n)/A246465(n))*A246465(n)`
-/

namespace A238453.P17245627460327752987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (SequenceMachineLib.roundAway ((A007318 n : ℚ) / (A246465 n : ℚ))).toNat * A246465 n

end

end A238453.P17245627460327752987

/-! ## A238453.P14582796299460275193

`A173557(2*A048804(n))*A246465(n)`
-/

namespace A238453.P14582796299460275193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (2 * A048804 n).toNat * A246465 n

end

end A238453.P14582796299460275193

/-! ## A238453.P2060625696602796545

`∏{p}[A048804(n)², A033879(#)]*A246465(n)`
-/

namespace A238453.P2060625696602796545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048804 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A033879 p) * A246465 n

end

end A238453.P2060625696602796545

/-! ## A238453.P5785622958296415156

`A255914(n)/A007318(n)`
-/

namespace A238453.P5785622958296415156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255914 n : ℚ) / (A007318 n : ℚ)

end

end A238453.P5785622958296415156

/-!
# A238454: Difference between 2^(2*n-1) and the next larger square.

The programs for A238454, the canonical program `A238454.P5935835337001227670` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238454 has offset 1).

The definition of A238454 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A238454.P5935835337001227670

`ceil(2^(n+1)/sqrt(2))²-2^(2*(n+1)-1)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A238454

/-- `ceil(2^(n+1)/sqrt(2))²-2^(2*(n+1)-1)` -/
def P5935835337001227670.Spec : Prop :=
  ∀ n, P5935835337001227670.a n = (A238454 (n + 1) : ℚ)

end A238454

/-! ## A238454.P15360698902153665303

`A056008(Δ[n²])`
-/

namespace A238454.P15360698902153665303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056008 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A238454.P15360698902153665303

namespace A238454

/-- `A056008(Δ[n²])` -/
def P15360698902153665303.Spec : Prop :=
  ∀ n, P15360698902153665303.a n = A238454 (n + 1)

end A238454

/-! ## A238454.P16110311348628257410

`root(A056008(2*n+1), 2)²`
-/

namespace A238454.P16110311348628257410
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A056008 (2 * n + 1) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A238454.P16110311348628257410

namespace A238454

/-- `root(A056008(2*n+1), 2)²` -/
def P16110311348628257410.Spec : Prop :=
  ∀ n, P16110311348628257410.a n = (A238454 (n + 1) : ℝ)

end A238454

/-!
# A238455: Difference between 4^n and the nearest triangular number.

The programs for A238455, the canonical program `A238455.P12384802579070016511` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238455 has offset 0).

The definition of A238455 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A238455.P12384802579070016511

`(A201125(n+1)-A084188(n))/2`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A238455

/-- `(A201125(n+1)-A084188(n))/2` -/
def P12384802579070016511.Spec : Prop :=
  ∀ n, P12384802579070016511.a n = (A238455 n : ℚ)

end A238455

/-! ## A238455.P5637600892668500099

`ceil((floor(sqrt(2)*2^n)-A238454(n+1))/2)`
-/

namespace A238455.P5637600892668500099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌊Real.sqrt (2 : ℝ) * (2 ^ n : ℝ)⌋ - A238454 (n + 1) : ℚ) / 2⌉

end

end A238455.P5637600892668500099

namespace A238455

/-- `ceil((floor(sqrt(2)*2^n)-A238454(n+1))/2)` -/
def P5637600892668500099.Spec : Prop :=
  ∀ n, P5637600892668500099.a n = A238455 n

end A238455

/-! ## A238455.P17522486273102027373

`(A136417(2*n+1)-A056008(2*n+1))/2`
-/

namespace A238455.P17522486273102027373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136417 (2 * n + 1) - A056008 (2 * n + 1) : ℚ) / 2

end

end A238455.P17522486273102027373

namespace A238455

/-- `(A136417(2*n+1)-A056008(2*n+1))/2` -/
def P17522486273102027373.Spec : Prop :=
  ∀ n, P17522486273102027373.a n = (A238455 n : ℚ)

end A238455

/-! ## A238455.P6898062640207281457

`4^n-A000217(A084188(n))`
-/

namespace A238455.P6898062640207281457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) - A000217 (A084188 n).toNat

end

end A238455.P6898062640207281457

namespace A238455

/-- `4^n-A000217(A084188(n))` -/
def P6898062640207281457.Spec : Prop :=
  ∀ n, P6898062640207281457.a n = A238455 n

end A238455

/-! ## A238455.P9225140682762075187

`4^n-A000217(A017910(2*n+1))`
-/

namespace A238455.P9225140682762075187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) - A000217 (A017910 (2 * n + 1)).toNat

end

end A238455.P9225140682762075187

namespace A238455

/-- `4^n-A000217(A017910(2*n+1))` -/
def P9225140682762075187.Spec : Prop :=
  ∀ n, P9225140682762075187.a n = A238455 n

end A238455

/-!
# A238457: a(n) = |{0 < k <= n: p(n) + k is prime}|, where p(.) is the partition function (A000041).

The programs for A238457, there is no canonical definition to state claims against.
-/

/-! ## A238457.P11078008867538257556

`A000720(A000041(n+1)+n+1)-A000720(A000041(n+1))`
-/

namespace A238457.P11078008867538257556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000041 (n + 1) + (n + 1 : ℤ)).toNat - A000720 (A000041 (n + 1)).toNat

end

end A238457.P11078008867538257556

/-!
# A238458: Number of primes p < n with 2*P(n-p) + 1 prime, where P(.) is the partition function (A000041).

The programs for A238458, there is no canonical definition to state claims against.
-/

/-! ## A238458.P17172405412367862330

`A103981(xor(n, floor(n/2))%A104024(n))`
-/

namespace A238458.P17172405412367862330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103981 (Int.tmod (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋) (A104024 n)).toNat

end

end A238458.P17172405412367862330

/-! ## A238458.P8329114942248199137

`A103981(A003188(n))%p?[A007318(n)]`
-/

namespace A238458.P8329114942248199137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103981 (A003188 n).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A238458.P8329114942248199137

/-! ## A238458.P8275699997590878036

`A218829(∑[A009998(A229198(n))])`
-/

namespace A238458.P8275699997590878036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009998 (A229198 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218829 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A238458.P8275699997590878036

/-! ## A238458.P898414116246015434

`A001221(A061255(2*n)-A000225(n))`
-/

namespace A238458.P898414116246015434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A061255 (2 * n) - A000225 n).toNat

end

end A238458.P898414116246015434

/-! ## A238458.P4017883233956518528

`A001222(A096851(2*n+3))%A096802(n)`
-/

namespace A238458.P4017883233956518528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (A096851 (2 * n + 3)).toNat) (A096802 n)

end

end A238458.P4017883233956518528

/-!
# A238459: Number of primes p < n with q(n-p) + 1 prime, where q(.) is the strict partition function (A000009).

The programs for A238459, there is no canonical definition to state claims against.
-/

/-! ## A238459.P806580418521153128

`A001221(A119340(n)*A342511(n))`
-/

namespace A238459.P806580418521153128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A119340 n * A342511 n).toNat

end

end A238459.P806580418521153128

/-! ## A238459.P10619108882453808937

`A037870(A001316(n)+A000537(n))`
-/

namespace A238459.P10619108882453808937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037870 (A001316 n + A000537 n).toNat

end

end A238459.P10619108882453808937

/-! ## A238459.P3078150047478432402

`A001222(and(-A191395(n), A001006(n)))`
-/

namespace A238459.P3078150047478432402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.land (-A191395 n) (A001006 n)).toNat

end

end A238459.P3078150047478432402

/-! ## A238459.P2087792204696482181

`A057515(A000079(n)-A243351(n+1))`
-/

namespace A238459.P2087792204696482181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057515 (A000079 n - A243351 (n + 1)).toNat

end

end A238459.P2087792204696482181

/-! ## A238459.P3147773899299113426

`A086435(A086445(n)-char[A086455(n+1)])`
-/

namespace A238459.P3147773899299113426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086455 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086435 (A086445 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A238459.P3147773899299113426

/-!
# A238460: Primes p for which x! + (p-1)!/x!==0 (mod p) has only two solutions 1<=x<=p-2 following from Wilson theorem: x = 1 and x = p-2.

The programs for A238460, there is no canonical definition to state claims against.
-/

/-! ## A238460.P11500234228569856764

`A045344(eq[2, A238444(n+1)])`
-/

namespace A238460.P11500234228569856764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238460.P11500234228569856764

/-! ## A238460.P11267845556383348574

`A065091(eq[2, A238444(n+1)])`
-/

namespace A238460.P11267845556383348574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238460.P11267845556383348574

/-! ## A238460.P5810457311535629830

`A000040(eq[2, A238444(n+1)]+1)`
-/

namespace A238460.P5810457311535629830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A238460.P5810457311535629830

/-! ## A238460.P15712476730245274962

`A008578(eq[2, A238444(n+1)]+2)`
-/

namespace A238460.P15712476730245274962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A238460.P15712476730245274962

/-! ## A238460.P8972757495660468379

`p?[(A238444(n+1)-1)*A000040(n+1)]`
-/

namespace A238460.P8972757495660468379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A238444 (n + 1) - 1) * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A238460.P8972757495660468379

/-! ## A238460.P8776904222019536928

`p?[A000040(n+2)*A238444(A238444(n+2))]`
-/

namespace A238460.P8776904222019536928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) * A238444 (A238444 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A238460.P8776904222019536928

/-!
# A238461: Greatest number k such that A000009(k) <= n.

The programs for A238461, there is no canonical definition to state claims against.
-/

/-! ## A238461.P6271783237057144376

`comp[A111133(n+1)+n]-n`
-/

namespace A238461.P6271783237057144376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A238461.P6271783237057144376

/-! ## A238461.P4471769968194302592

`comp[A000009(n)-1+n]-(n+1)`
-/

namespace A238461.P4471769968194302592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - 1 + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n + 1 : ℤ)

end

end A238461.P4471769968194302592

/-! ## A238461.P13734699531848279141

`A036453(n+1)+∑[char[A111133(n)]]`
-/

namespace A238461.P13734699531848279141
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A238461.P13734699531848279141

/-! ## A238461.P17761874743161901241

`A036453(n+1)+∑[A167393(n+1)]`
-/

namespace A238461.P17761874743161901241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167393 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238461.P17761874743161901241

/-! ## A238461.P11632241520684090742

`∑[A167393(n+1)]%A008574(n)+2`
-/

namespace A238461.P11632241520684090742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167393 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A008574 n) + 2

end

end A238461.P11632241520684090742

/-! ## A238461.P15605282196805450190

`A001489(n)+comp[A111133(n+1)+n]`
-/

namespace A238461.P15605282196805450190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A238461.P15605282196805450190

/-! ## A238461.P13581719434901938101

`∑[A167393(n+1)]+A014963(A134660(n))`
-/

namespace A238461.P13581719434901938101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167393 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A014963 (A134660 n).toNat

end

end A238461.P13581719434901938101

/-! ## A238461.P11698942262990536269

`∑[A167393(n+1)]+A000005(A008578(n+1))`
-/

namespace A238461.P11698942262990536269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167393 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A000005 (A008578 (n + 1)).toNat

end

end A238461.P11698942262990536269

/-! ## A238461.P3667536468922608437

`∑[A167393(A008578(2*(n+1)))+A167393(n+1)]`
-/

namespace A238461.P3667536468922608437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167393 (A008578 (2 * (n + 1))).toNat + A167393 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238461.P3667536468922608437

/-!
# A238462: 2-adic valuation of A052129.

The programs for A238462, the canonical program `A238462.P96404725161265213` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238462 has offset 0).

The definition of A238462 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A238462.P96404725161265213

`val(n, 2)+2*a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A238462

/-- `val(n, 2)+2*a(n-1)` -/
def P96404725161265213.Spec : Prop :=
  ∀ n, (P96404725161265213.a n : ℤ) = A238462 n

theorem P96404725161265213.correct : P96404725161265213.Spec := by
  intro n
  simp only [A238462]

end A238462

/-! ## A238462.P7425988976705785163

`a(n-1)+a(n-1)+val(n, 2)` with `a(0)=0`
-/

namespace A238462.P7425988976705785163
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (a (n - 1) + SequenceMachineLib.valuation n 2)

end

end A238462.P7425988976705785163

namespace A238462

/-- `a(n-1)+a(n-1)+val(n, 2)` -/
def P7425988976705785163.Spec : Prop :=
  ∀ n, (P7425988976705785163.a n : ℤ) = A238462 n

end A238462

/-! ## A238462.P17650939634765166415

`2-(2*(1-a(n-1))-val(n, 2))` with `a(0)=0`
-/

namespace A238462.P17650939634765166415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 - (2 * (1 - a (n - 1)) - (SequenceMachineLib.valuation n 2 : ℤ))

end

end A238462.P17650939634765166415

namespace A238462

/-- `2-(2*(1-a(n-1))-val(n, 2))` -/
def P17650939634765166415.Spec : Prop :=
  ∀ n, P17650939634765166415.a n = A238462 n

end A238462

/-! ## A238462.P7015554312773720363

`val(n, 2)-a(n-1)/(1/2-1)` with `a(0)=0`
-/

namespace A238462.P7015554312773720363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (SequenceMachineLib.valuation n 2 : ℚ) - a (n - 1) / ((1 : ℚ) / 2 - 1)

end

end A238462.P7015554312773720363

namespace A238462

/-- `val(n, 2)-a(n-1)/(1/2-1)` -/
def P7015554312773720363.Spec : Prop :=
  ∀ n, P7015554312773720363.a n = (A238462 n : ℚ)

end A238462

/-! ## A238462.P10119074842992539460

`A007814(n)+2*a(n-1)` with `a(0)=0`
-/

namespace A238462.P10119074842992539460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A007814 n + 2 * a (n - 1)

end

end A238462.P10119074842992539460

namespace A238462

/-- `A007814(n)+2*a(n-1)` -/
def P10119074842992539460.Spec : Prop :=
  ∀ n, P10119074842992539460.a n = A238462 n

end A238462

/-! ## A238462.P3403295114944248146

`2*a(n-1)+1-A088705(n)` with `a(0)=0`
-/

namespace A238462.P3403295114944248146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * a (n - 1) + (1 - A088705 n)

end

end A238462.P3403295114944248146

namespace A238462

/-- `2*a(n-1)+1-A088705(n)` -/
def P3403295114944248146.Spec : Prop :=
  ∀ n, P3403295114944248146.a n = A238462 n

end A238462

/-!
# A238463: Numbers n such that phi(n) * sigma(n) + 1 is a perfect square.

The programs for A238463, there is no canonical definition to state claims against.
-/

/-! ## A238463.P11078081710240579541

`eq[1, A015710(n+1)]+1`
-/

namespace A238463.P11078081710240579541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015710 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A238463.P11078081710240579541

/-! ## A238463.P11633322943588637759

`eq[1, A015710(A028310(n))]`
-/

namespace A238463.P11633322943588637759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015710 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A238463.P11633322943588637759

/-! ## A238463.P3827327177293823104

`A020725(eq[1, A015710(n+1)])`
-/

namespace A238463.P3827327177293823104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238463.P3827327177293823104

/-! ## A238463.P17324121200196462259

`eq[1, A015710(A000007(n)+n)]`
-/

namespace A238463.P17324121200196462259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015710 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A238463.P17324121200196462259

/-! ## A238463.P8278531222230438293

`∪[A000040(n+1), A015709(n+1)]`
-/

namespace A238463.P8278531222230438293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015709 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A238463.P8278531222230438293

/-! ## A238463.P11275819127807999728

`∪[A015709(n+1), A116974(n+1)]`
-/

namespace A238463.P11275819127807999728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A238463.P11275819127807999728

/-! ## A238463.P3727067634821111039

`eq[1, A015710(A065033(2*n))]`
-/

namespace A238463.P3727067634821111039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015710 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A238463.P3727067634821111039

/-! ## A238463.P5390454165631896033

`eq[1, A015710(A123108(2*n))]`
-/

namespace A238463.P5390454165631896033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015710 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A238463.P5390454165631896033

/-!
# A238468: Period 7: repeat [0, 0, -1, 1, -1, 1, 0].

The programs for A238468, the canonical program `A238468.P4933202717561499868` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238468 has offset 0).

The definition of A238468 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A238468.P4933202717561499868

`∑[-A234044(abs(4-n))]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A238468

/-- `∑[-A234044(abs(4-n))]` -/
def P4933202717561499868.Spec : Prop :=
  ∀ n, P4933202717561499868.a n = A238468 n

theorem P4933202717561499868.correct : P4933202717561499868.Spec := by
  intro n
  simp only [A238468]

end A238468

/-!
# A238469: Period 7: repeat [0, 1, 0, 0, 0, 0, -1].

The programs for A238469, the canonical program `A238469.P12053234808981461841` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238469 has offset 0).

The definition of A238469 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A238469.P12053234808981461841

`((n+1)^6)%7-((n+6)^6)%7`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A238469

/-- `((n+1)^6)%7-((n+6)^6)%7` -/
def P12053234808981461841.Spec : Prop :=
  ∀ n, P12053234808981461841.a n = A238469 n

theorem P12053234808981461841.correct : P12053234808981461841.Spec := by
  intro n
  simp only [A238469]

end A238469

/-!
# A238470: Period 7: repeat [0, 0, 1, 0, 0, -1, 0].

The programs for A238470, the canonical program `A238470.P1028853406756724010` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238470 has offset 0).

The definition of A238470 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A238470.P1028853406756724010

`floor((1+n)/7)-floor((2+n)/7)-floor((4+n)/7)+floor((5+n)/7)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A238470

/-- `floor((1+n)/7)-floor((2+n)/7)-floor((4+n)/7)+floor((5+n)/7)` -/
def P1028853406756724010.Spec : Prop :=
  ∀ n, P1028853406756724010.a n = A238470 n

theorem P1028853406756724010.correct : P1028853406756724010.Spec := by
  intro n
  simp only [A238470]

end A238470

/-!
# A238471: a(n) = binomial(5n+6, 4)/5 for n >= 0.

The programs for A238471, the canonical program `A238471.P7680531597729402233` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238471 has offset 0).

The definition of A238471 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A238471.P8302476332516799938

`C(5*n+6, 4)/5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A238471.P8302476332516799938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (5 * n + 6) 4 : ℚ) / 5

end

end A238471.P8302476332516799938

namespace A238471

/-- `C(5*n+6, 4)/5` -/
def P8302476332516799938.Spec : Prop :=
  ∀ n, P8302476332516799938.a n = (A238471 n : ℚ)

end A238471

/-! ## A238471.P7680531597729402233

`A234042(5*n+2)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A238471

/-- `A234042(5*n+2)` -/
def P7680531597729402233.Spec : Prop :=
  ∀ n, P7680531597729402233.a n = A238471 n

theorem P7680531597729402233.correct : P7680531597729402233.Spec := by
  intro n
  simp only [A238471]

end A238471

/-! ## A238471.P17026948157146830252

`round(C(A016861(n)+5, 4)/5)`
-/

namespace A238471.P17026948157146830252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (A016861 n + 5).toNat 4 : ℚ) / 5)

end

end A238471.P17026948157146830252

namespace A238471

/-- `round(C(A016861(n)+5, 4)/5)` -/
def P17026948157146830252.Spec : Prop :=
  ∀ n, P17026948157146830252.a n = A238471 n

end A238471

/-! ## A238471.P4474984284117878613

`record[C(A016861(A246277(n+1))+5, 4)/5]`
-/

namespace A238471.P4474984284117878613
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A016861 (A246277 (n + 1)).toNat + 5).toNat 4 : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238471.P4474984284117878613

namespace A238471

/-- `record[C(A016861(A246277(n+1))+5, 4)/5]` -/
def P4474984284117878613.Spec : Prop :=
  ∀ n, P4474984284117878613.a n = (A238471 n : ℚ)

end A238471

/-! ## A238471.P13886640249704237441

`record[C(A016861(A053645(n+1))+5, 4)/5]`
-/

namespace A238471.P13886640249704237441
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A016861 (A053645 (n + 1)).toNat + 5).toNat 4 : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238471.P13886640249704237441

namespace A238471

/-- `record[C(A016861(A053645(n+1))+5, 4)/5]` -/
def P13886640249704237441.Spec : Prop :=
  ∀ n, P13886640249704237441.a n = (A238471 n : ℚ)

end A238471

/-! ## A238471.P3689457346020554614

`A008646(5*n+2)`
-/

namespace A238471.P3689457346020554614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008646 (5 * n + 2)

end

end A238471.P3689457346020554614

namespace A238471

/-- `A008646(5*n+2)` -/
def P3689457346020554614.Spec : Prop :=
  ∀ n, P3689457346020554614.a n = A238471 n

end A238471

/-! ## A238471.P681249808338125091

`A051170(5*n+7)`
-/

namespace A238471.P681249808338125091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051170 (5 * n + 7)

end

end A238471.P681249808338125091

namespace A238471

/-- `A051170(5*n+7)` -/
def P681249808338125091.Spec : Prop :=
  ∀ n, P681249808338125091.a n = A238471 n

end A238471

/-! ## A238471.P3463283424309962240

`A050534(5*(n+1))/15`
-/

namespace A238471.P3463283424309962240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050534 (5 * (n + 1)) : ℚ) / 15

end

end A238471.P3463283424309962240

namespace A238471

/-- `A050534(5*(n+1))/15` -/
def P3463283424309962240.Spec : Prop :=
  ∀ n, P3463283424309962240.a n = (A238471 n : ℚ)

end A238471

/-! ## A238471.P1561606312460094658

`∑[A004006(4*n+2+n)]`
-/

namespace A238471.P1561606312460094658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004006 (4 * n + 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238471.P1561606312460094658

namespace A238471

/-- `∑[A004006(4*n+2+n)]` -/
def P1561606312460094658.Spec : Prop :=
  ∀ n, P1561606312460094658.a n = A238471 n

end A238471

/-! ## A238471.P11616405836654634048

`∑[A000125(A016873(n))-1]`
-/

namespace A238471.P11616405836654634048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 (A016873 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238471.P11616405836654634048

namespace A238471

/-- `∑[A000125(A016873(n))-1]` -/
def P11616405836654634048.Spec : Prop :=
  ∀ n, P11616405836654634048.a n = A238471 n

end A238471

/-! ## A238471.P17382033733643913494

`A011795(5*n+6)`
-/

namespace A238471.P17382033733643913494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011795 (5 * n + 6)

end

end A238471.P17382033733643913494

namespace A238471

/-- `A011795(5*n+6)` -/
def P17382033733643913494.Spec : Prop :=
  ∀ n, P17382033733643913494.a n = A238471 n

end A238471

/-! ## A238471.P17533271507726415378

`A378248(A139606(2*n)/2)`
-/

namespace A238471.P17533271507726415378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378248 (SequenceMachineLib.roundAway ((A139606 (2 * n) : ℚ) / 2)).toNat

end

end A238471.P17533271507726415378

namespace A238471

/-- `A378248(A139606(2*n)/2)` -/
def P17533271507726415378.Spec : Prop :=
  ∀ n, P17533271507726415378.a n = A238471 n

end A238471

/-!
# A238472: a(n) = binomial(5*n+7, 4)/5 for n >= 0.

The programs for A238472, the canonical program `A238472.P11742707975439042983` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238472 has offset 0).

The definition of A238472 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A238472.P16687318012580472307

`C(5*n+7, 4)/5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A238472.P16687318012580472307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (5 * n + 7) 4 : ℚ) / 5

end

end A238472.P16687318012580472307

namespace A238472

/-- `C(5*n+7, 4)/5` -/
def P16687318012580472307.Spec : Prop :=
  ∀ n, P16687318012580472307.a n = (A238472 n : ℚ)

end A238472

/-! ## A238472.P11742707975439042983

`A234042(5*n+3)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A238472

/-- `A234042(5*n+3)` -/
def P11742707975439042983.Spec : Prop :=
  ∀ n, P11742707975439042983.a n = A238472 n

theorem P11742707975439042983.correct : P11742707975439042983.Spec := by
  intro n
  simp only [A238472]

end A238472

/-! ## A238472.P1700427976166475256

`A002417(2*n+1)+A002417(2*(n+1))-A000914(n+1)`
-/

namespace A238472.P1700427976166475256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002417 (2 * n + 1) + (A002417 (2 * (n + 1)) - A000914 (n + 1))

end

end A238472.P1700427976166475256

namespace A238472

/-- `A002417(2*n+1)+A002417(2*(n+1))-A000914(n+1)` -/
def P1700427976166475256.Spec : Prop :=
  ∀ n, P1700427976166475256.a n = A238472 n

end A238472

/-! ## A238472.P9727493607851196632

`A008646(5*n+3)`
-/

namespace A238472.P9727493607851196632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008646 (5 * n + 3)

end

end A238472.P9727493607851196632

namespace A238472

/-- `A008646(5*n+3)` -/
def P9727493607851196632.Spec : Prop :=
  ∀ n, P9727493607851196632.a n = A238472 n

end A238472

/-! ## A238472.P5134417463500214529

`A051170(5*n+8)`
-/

namespace A238472.P5134417463500214529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051170 (5 * n + 8)

end

end A238472.P5134417463500214529

namespace A238472

/-- `A051170(5*n+8)` -/
def P5134417463500214529.Spec : Prop :=
  ∀ n, P5134417463500214529.a n = A238472 n

end A238472

/-! ## A238472.P13851215236784343799

`∑[A004006(5*n+3)]`
-/

namespace A238472.P13851215236784343799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004006 (5 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238472.P13851215236784343799

namespace A238472

/-- `∑[A004006(5*n+3)]` -/
def P13851215236784343799.Spec : Prop :=
  ∀ n, P13851215236784343799.a n = A238472 n

end A238472

/-! ## A238472.P12003979568555569596

`A011795(5*n+7)`
-/

namespace A238472.P12003979568555569596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011795 (5 * n + 7)

end

end A238472.P12003979568555569596

namespace A238472

/-- `A011795(5*n+7)` -/
def P12003979568555569596.Spec : Prop :=
  ∀ n, P12003979568555569596.a n = A238472 n

end A238472

/-! ## A238472.P17998435303424130822

`A000332(6*n+7-n)/5`
-/

namespace A238472.P17998435303424130822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000332 (6 * n + 7 - n) : ℚ) / 5

end

end A238472.P17998435303424130822

namespace A238472

/-- `A000332(6*n+7-n)/5` -/
def P17998435303424130822.Spec : Prop :=
  ∀ n, P17998435303424130822.a n = (A238472 n : ℚ)

end A238472

/-! ## A238472.P10600273580374542911

`2*A000332(A016897(n)+3)/10`
-/

namespace A238472.P10600273580374542911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A000332 (A016897 n + 3).toNat : ℚ) / 10

end

end A238472.P10600273580374542911

namespace A238472

/-- `2*A000332(A016897(n)+3)/10` -/
def P10600273580374542911.Spec : Prop :=
  ∀ n, P10600273580374542911.a n = (A238472 n : ℚ)

end A238472

/-! ## A238472.P11348758927010477949

`A378248(A139606(n))`
-/

namespace A238472.P11348758927010477949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378248 (A139606 n).toNat

end

end A238472.P11348758927010477949

namespace A238472

/-- `A378248(A139606(n))` -/
def P11348758927010477949.Spec : Prop :=
  ∀ n, P11348758927010477949.a n = A238472 n

end A238472

/-!
# A238473: a(n) = binomial(5*n+8, 4)/5 for n >= 0.

The programs for A238473, the canonical program `A238473.P15449190549937356667` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238473 has offset 0).

The definition of A238473 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A238473.P15449190549937356667

`C(5*n+8, 4)/5`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A238473

/-- `C(5*n+8, 4)/5` -/
def P15449190549937356667.Spec : Prop :=
  ∀ n, P15449190549937356667.a n = (A238473 n : ℚ)

end A238473

/-! ## A238473.P13879440413261847218

`A008646(5*n+4)`
-/

namespace A238473.P13879440413261847218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008646 (5 * n + 4)

end

end A238473.P13879440413261847218

namespace A238473

/-- `A008646(5*n+4)` -/
def P13879440413261847218.Spec : Prop :=
  ∀ n, P13879440413261847218.a n = A238473 n

end A238473

/-! ## A238473.P17164611505047257572

`A051170(5*n+9)`
-/

namespace A238473.P17164611505047257572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051170 (5 * n + 9)

end

end A238473.P17164611505047257572

namespace A238473

/-- `A051170(5*n+9)` -/
def P17164611505047257572.Spec : Prop :=
  ∀ n, P17164611505047257572.a n = A238473 n

end A238473

/-! ## A238473.P14622244922463835810

`∑[A004006(5*n+4)]`
-/

namespace A238473.P14622244922463835810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004006 (5 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238473.P14622244922463835810

namespace A238473

/-- `∑[A004006(5*n+4)]` -/
def P14622244922463835810.Spec : Prop :=
  ∀ n, P14622244922463835810.a n = A238473 n

end A238473

/-! ## A238473.P11742330315756128508

`A234042((10*n+8)/2)`
-/

namespace A238473.P11742330315756128508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234042 (SequenceMachineLib.roundAway ((10 * n + 8 : ℚ) / 2)).toNat

end

end A238473.P11742330315756128508

namespace A238473

/-- `A234042((10*n+8)/2)` -/
def P11742330315756128508.Spec : Prop :=
  ∀ n, P11742330315756128508.a n = A238473 n

end A238473

/-! ## A238473.P9427385309738360344

`∑[A003600(5*n+3)+1]`
-/

namespace A238473.P9427385309738360344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003600 (5 * n + 3) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238473.P9427385309738360344

namespace A238473

/-- `∑[A003600(5*n+3)+1]` -/
def P9427385309738360344.Spec : Prop :=
  ∀ n, P9427385309738360344.a n = A238473 n

end A238473

/-! ## A238473.P4744558591782361299

`∑[A000125(A016897(n))-1]`
-/

namespace A238473.P4744558591782361299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 (A016897 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238473.P4744558591782361299

namespace A238473

/-- `∑[A000125(A016897(n))-1]` -/
def P4744558591782361299.Spec : Prop :=
  ∀ n, P4744558591782361299.a n = A238473 n

end A238473

/-! ## A238473.P4172559628405634004

`A011795(5*n+8)`
-/

namespace A238473.P4172559628405634004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011795 (5 * n + 8)

end

end A238473.P4172559628405634004

namespace A238473

/-- `A011795(5*n+8)` -/
def P4172559628405634004.Spec : Prop :=
  ∀ n, P4172559628405634004.a n = A238473 n

end A238473

/-! ## A238473.P8079855619826379857

`A000332(abs(6*n+1-n)+7)/5`
-/

namespace A238473.P8079855619826379857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000332 (|(6 * n + 1 : ℤ) - (n : ℤ)| + 7).toNat : ℚ) / 5

end

end A238473.P8079855619826379857

namespace A238473

/-- `A000332(abs(6*n+1-n)+7)/5` -/
def P8079855619826379857.Spec : Prop :=
  ∀ n, P8079855619826379857.a n = (A238473 n : ℚ)

end A238473

/-!
# A238474: a(n) = (-1)^n*(n+3)!/(2*(n+1)) for n >= 0.

The programs for A238474, the canonical program `A238474.P6288297120275203387` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238474 has offset 0).

The definition of A238474 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A238474.P6288297120275203387

`(-1)^n*(n+3)!/(2*(n+1))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A238474

/-- `(-1)^n*(n+3)!/(2*(n+1))` -/
def P6288297120275203387.Spec : Prop :=
  ∀ n, P6288297120275203387.a n = (A238474 n : ℚ)

end A238474

/-! ## A238474.P8012474209856082659

`(2/(n+1)-(n+2))*a(n-1)` with `a(0)=3`
-/

namespace A238474.P8012474209856082659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  (2 / (n + 1 : ℚ) - (n + 2 : ℚ)) * a (n - 1)

end

end A238474.P8012474209856082659

namespace A238474

/-- `(2/(n+1)-(n+2))*a(n-1)` -/
def P8012474209856082659.Spec : Prop :=
  ∀ n, P8012474209856082659.a n = (A238474 n : ℚ)

end A238474

/-! ## A238474.P15412581579919291087

`(∑[n+2]+1)*A133942(n)`
-/

namespace A238474.P15412581579919291087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) * A133942 n

end

end A238474.P15412581579919291087

namespace A238474

/-- `(∑[n+2]+1)*A133942(n)` -/
def P15412581579919291087.Spec : Prop :=
  ∀ n, P15412581579919291087.a n = A238474 n

end A238474

/-! ## A238474.P11226017078987397568

`(A055998(n)+3)*∏[floor(acot(n)-n)]`
-/

namespace A238474.P11226017078987397568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) - (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A055998 n + 3) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A238474.P11226017078987397568

namespace A238474

/-- `(A055998(n)+3)*∏[floor(acot(n)-n)]` -/
def P11226017078987397568.Spec : Prop :=
  ∀ n, P11226017078987397568.a n = A238474 n

end A238474

/-! ## A238474.P10284050308492212233

`A133942(n)*A253145(n+1)`
-/

namespace A238474.P10284050308492212233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133942 n * A253145 (n + 1)

end

end A238474.P10284050308492212233

namespace A238474

/-- `A133942(n)*A253145(n+1)` -/
def P10284050308492212233.Spec : Prop :=
  ∀ n, P10284050308492212233.a n = A238474 n

end A238474

/-! ## A238474.P13204236913586972061

`A133942(n)*A161680(n+3)`
-/

namespace A238474.P13204236913586972061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133942 n * A161680 (n + 3)

end

end A238474.P13204236913586972061

namespace A238474

/-- `A133942(n)*A161680(n+3)` -/
def P13204236913586972061.Spec : Prop :=
  ∀ n, P13204236913586972061.a n = A238474 n

end A238474

/-! ## A238474.P10007415401147242444

`A000217(n+2)*A008276(A000217(n+1))`
-/

namespace A238474.P10007415401147242444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 2) * A008276 (A000217 (n + 1)).toNat

end

end A238474.P10007415401147242444

namespace A238474

/-- `A000217(n+2)*A008276(A000217(n+1))` -/
def P10007415401147242444.Spec : Prop :=
  ∀ n, P10007415401147242444.a n = A238474 n

end A238474

/-! ## A238474.P3813132679276402553

`A000217(n+2)*A048994(A000124(n+1))`
-/

namespace A238474.P3813132679276402553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 2) * A048994 (A000124 (n + 1)).toNat

end

end A238474.P3813132679276402553

namespace A238474

/-- `A000217(n+2)*A048994(A000124(n+1))` -/
def P3813132679276402553.Spec : Prop :=
  ∀ n, P3813132679276402553.a n = A238474 n

end A238474

/-! ## A238474.P6495056957741041423

`-(∏[-(n+3)]/(n+1))`
-/

namespace A238474.P6495056957741041423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n + 3 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -(((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ))

end

end A238474.P6495056957741041423

namespace A238474

/-- `-(∏[-(n+3)]/(n+1))` -/
def P6495056957741041423.Spec : Prop :=
  ∀ n, P6495056957741041423.a n = (A238474 n : ℚ)

end A238474

/-! ## A238474.P14805676130968978602

`∏[A001478(n+3)]/A001478(n+1)`
-/

namespace A238474.P14805676130968978602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A001478 (n + 1) : ℚ)

end

end A238474.P14805676130968978602

namespace A238474

/-- `∏[A001478(n+3)]/A001478(n+1)` -/
def P14805676130968978602.Spec : Prop :=
  ∀ n, P14805676130968978602.a n = (A238474 n : ℚ)

end A238474

/-!
# A238475: Rectangular array with all start numbers Me(n, k), k >= 1, for the Collatz operation ud^(2*n), n >= 1, ending in an odd number, read by antidiagonals.

The programs for A238475, there is no canonical definition to state claims against.
-/

/-! ## A238475.P13348919207991226468

`A253026(A292565(n+1)-A003056(n))`
-/

namespace A238475.P13348919207991226468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253026 (A292565 (n + 1) - A003056 n).toNat

end

end A238475.P13348919207991226468

/-! ## A238475.P3565440553271833452

`A364602(A118011(n+1)+1)`
-/

namespace A238475.P3565440553271833452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364602 (A118011 (n + 1) + 1).toNat

end

end A238475.P3565440553271833452

/-!
# A238476: Rectangular array with all start numbers Mo(n, k), k >= 1, for the Collatz operation ud^(2*n-1), n >= 1, ending in an odd number, read by antidiagonals.

The programs for A238476, there is no canonical definition to state claims against.
-/

/-! ## A238476.P2610790792170934144

`A360033(A185871(n+1))`
-/

namespace A238476.P2610790792170934144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360033 (A185871 (n + 1)).toNat

end

end A238476.P2610790792170934144

/-! ## A238476.P3911923209633496374

`A191665(A038722(A038722(n+1)+A016777(n)))`
-/

namespace A238476.P3911923209633496374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191665 (A038722 (A038722 (n + 1) + A016777 n).toNat).toNat

end

end A238476.P3911923209633496374

/-! ## A238476.P12281516372452893845

`A008586(A141290(n+1))-A004525(A238475(n+1))`
-/

namespace A238476.P12281516372452893845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A141290 (n + 1)).toNat - A004525 (A238475 (n + 1)).toNat

end

end A238476.P12281516372452893845

/-! ## A238476.P12601701906992749853

`A364602(A118011(n+1))`
-/

namespace A238476.P12601701906992749853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364602 (A118011 (n + 1)).toNat

end

end A238476.P12601701906992749853

/-! ## A238476.P2465802097411316127

`filter[A364602(n+2), A073059(#)]`
-/

namespace A238476.P2465802097411316127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364602 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A073059 (f1 j).toNat = 1) n)

end

end A238476.P2465802097411316127

/-!
# A238477: a(n) = 32*n - 27 for n >= 1. Second column of triangle A238475.

The programs for A238477, the canonical program `A238477.P924985678342668189` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238477 has offset 1).

The definition of A238477 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `32*(n+1)-27` (program `A238477.P924985678342668189`, by `A238477.P924985678342668189.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A238477.P924985678342668189

`32*(n+1)-27`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A238477

/-- `32*(n+1)-27` -/
def P924985678342668189.Spec : Prop :=
  ∀ n, P924985678342668189.a n = A238477 (n + 1)

theorem P924985678342668189.correct : P924985678342668189.Spec := by
  intro n
  simp only [A238477, Nat.add_sub_cancel]

end A238477

/-!
# A238478: Number of partitions of n whose median is a part.

The programs for A238478, there is no canonical definition to state claims against.
-/

/-! ## A238478.P361685849110836384

`A078408(n)-A282893(n+1)`
-/

namespace A238478.P361685849110836384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078408 n - A282893 (n + 1)

end

end A238478.P361685849110836384

/-! ## A238478.P12655049144281426408

`A238589(n+1)+A238594(n+1)-A238479(n+1)`
-/

namespace A238478.P12655049144281426408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238589 (n + 1) + (A238594 (n + 1) - A238479 (n + 1))

end

end A238478.P12655049144281426408

/-! ## A238478.P10631508819513069169

`A000041(n+1)-A238479(n+1)`
-/

namespace A238478.P10631508819513069169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A238479 (n + 1)

end

end A238478.P10631508819513069169

/-! ## A238478.P3049172695288768445

`A000041(n+1)+A078408(n)-A035294(n+1)`
-/

namespace A238478.P3049172695288768445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) + (A078408 n - A035294 (n + 1))

end

end A238478.P3049172695288768445

/-! ## A238478.P6338759043125050105

`A000041(n+1)-Δ[A025147(2*n)]`
-/

namespace A238478.P6338759043125050105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025147 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - (f1 (n + 1) - f1 n)

end

end A238478.P6338759043125050105

/-! ## A238478.P14480877258163953324

`record[A282892(n+1)]-A282893(n+1)`
-/

namespace A238478.P14480877258163953324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282892 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A282893 (n + 1)

end

end A238478.P14480877258163953324

/-! ## A238478.P1381516973692444295

`A000009(2*n+1)-A282893(n+1)`
-/

namespace A238478.P1381516973692444295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (2 * n + 1) - A282893 (n + 1)

end

end A238478.P1381516973692444295

/-! ## A238478.P8935198560561397712

`A053197(2*n+1)-A282893(n+1)`
-/

namespace A238478.P8935198560561397712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053197 (2 * n + 1) - A282893 (n + 1)

end

end A238478.P8935198560561397712

/-! ## A238478.P3846615803625403699

`A096441(2*n+1)-A282893(n+1)`
-/

namespace A238478.P3846615803625403699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096441 (2 * n + 1) - A282893 (n + 1)

end

end A238478.P3846615803625403699

/-! ## A238478.P1077131487307090854

`A282892(2*n+1)-A282893(n+1)`
-/

namespace A238478.P1077131487307090854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282892 (2 * n + 1) - A282893 (n + 1)

end

end A238478.P1077131487307090854

/-! ## A238478.P8931619324279206748

`record[A035363(n)]-A087897(2*(n+1))`
-/

namespace A238478.P8931619324279206748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A087897 (2 * (n + 1))

end

end A238478.P8931619324279206748

/-!
# A238479: Number of partitions of n whose median is not a part.

The programs for A238479, there is no canonical definition to state claims against.
-/

/-! ## A238479.P4823592891178233196

`A000041(n+1)-A238478(n+1)`
-/

namespace A238479.P4823592891178233196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A238478 (n + 1)

end

end A238479.P4823592891178233196

/-! ## A238479.P1406748119187654694

`A035294(n+1)-A078408(n)`
-/

namespace A238479.P1406748119187654694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035294 (n + 1) - A078408 n

end

end A238479.P1406748119187654694

/-! ## A238479.P891730507866354378

`A087897(2*(n+1))`
-/

namespace A238479.P891730507866354378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 (2 * (n + 1))

end

end A238479.P891730507866354378

/-! ## A238479.P687583894502811214

`Δ[A025147(2*n)]`
-/

namespace A238479.P687583894502811214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025147 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A238479.P687583894502811214

/-! ## A238479.P4086213807192377623

`A000009(2*(n+1))-A078408(n)`
-/

namespace A238479.P4086213807192377623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (2 * (n + 1)) - A078408 n

end

end A238479.P4086213807192377623

/-! ## A238479.P13243391764136859182

`A035294(n+1)-A000009(2*n+1)`
-/

namespace A238479.P13243391764136859182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035294 (n + 1) - A000009 (2 * n + 1)

end

end A238479.P13243391764136859182

/-! ## A238479.P15493374783880500685

`A035294(n+1)-A053197(2*n+1)`
-/

namespace A238479.P15493374783880500685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035294 (n + 1) - A053197 (2 * n + 1)

end

end A238479.P15493374783880500685

/-! ## A238479.P8092617260535086326

`A035294(n+1)-A282892(2*n+1)`
-/

namespace A238479.P8092617260535086326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035294 (n + 1) - A282892 (2 * n + 1)

end

end A238479.P8092617260535086326

/-! ## A238479.P18072330584665943790

`A000009(2*(n+1))-A000009(2*n+1)`
-/

namespace A238479.P18072330584665943790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (2 * (n + 1)) - A000009 (2 * n + 1)

end

end A238479.P18072330584665943790

/-! ## A238479.P14365822558036258987

`A258259(A005843(n+1))-A258259(2*n+1)`
-/

namespace A238479.P14365822558036258987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258259 (A005843 (n + 1)).toNat - A258259 (2 * n + 1)

end

end A238479.P14365822558036258987

/-! ## A238479.P15732673110225448465

`Δ[A318029(2*n)]`
-/

namespace A238479.P15732673110225448465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318029 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A238479.P15732673110225448465

/-! ## A238479.P12481311725196267576

`Δ[A096765(Δ[n²])]`
-/

namespace A238479.P12481311725196267576
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096765 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A238479.P12481311725196267576

/-! ## A238479.P17482854534151675753

`abs(Δ[A096765(2*n+1)])`
-/

namespace A238479.P17482854534151675753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096765 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A238479.P17482854534151675753

/-! ## A238479.P14308216047653583383

`Δ[A038348(2*n)]-A000009(2*n+1)`
-/

namespace A238479.P14308216047653583383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038348 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000009 (2 * n + 1)

end

end A238479.P14308216047653583383

/-! ## A238479.P9070101123740202345

`A079122(n+1)-A258259(2*n+1)`
-/

namespace A238479.P9070101123740202345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079122 (n + 1) - A258259 (2 * n + 1)

end

end A238479.P9070101123740202345

/-! ## A238479.P1732354548635196255

`Δ[A238215(2*n+1)+A238208(2*n+1)]`
-/

namespace A238479.P1732354548635196255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238215 (2 * n + 1) + A238208 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A238479.P1732354548635196255

/-! ## A238479.P4116366752202976466

`A238625(n+2)-1`
-/

namespace A238479.P4116366752202976466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238625 (n + 2) - 1

end

end A238479.P4116366752202976466

/-!
# A238480: Number of partitions p of n that include (min(p) + max(p))/2 as a part.

The programs for A238480, there is no canonical definition to state claims against.
-/

/-! ## A238480.P5721717283277680317

`Δ[A000070(n)]-A238481(n+1)`
-/

namespace A238480.P5721717283277680317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A238481 (n + 1)

end

end A238480.P5721717283277680317

/-! ## A238480.P11892243351966582976

`record[A035363(n)]-A238481(n+1)`
-/

namespace A238480.P11892243351966582976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A238481 (n + 1)

end

end A238480.P11892243351966582976

/-! ## A238480.P3513060568416443940

`record[A035444(n)]-A238481(n+1)`
-/

namespace A238480.P3513060568416443940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A238481 (n + 1)

end

end A238480.P3513060568416443940

/-! ## A238480.P17496400708659032701

`record[A114099(n)]-A238481(n+1)`
-/

namespace A238480.P17496400708659032701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A238481 (n + 1)

end

end A238480.P17496400708659032701

/-! ## A238480.P10439833516092823819

`A000041(n+1)-A238481(n+1)`
-/

namespace A238480.P10439833516092823819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A238481 (n + 1)

end

end A238480.P10439833516092823819

/-!
# A238481: Number of partitions p of n that do not include (min(p) + max(p))/2 as a part.

The programs for A238481, there is no canonical definition to state claims against.
-/

/-! ## A238481.P13991686847475986262

`Δ[A000070(n)]-A238480(n+1)`
-/

namespace A238481.P13991686847475986262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A238480 (n + 1)

end

end A238481.P13991686847475986262

/-! ## A238481.P13411518133929741077

`record[A035363(n)]-A238480(n+1)`
-/

namespace A238481.P13411518133929741077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A238480 (n + 1)

end

end A238481.P13411518133929741077

/-! ## A238481.P5772383079652694877

`record[A035444(n)]-A238480(n+1)`
-/

namespace A238481.P5772383079652694877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A238480 (n + 1)

end

end A238481.P5772383079652694877

/-! ## A238481.P2629569190969203890

`record[A114099(n)]-A238480(n+1)`
-/

namespace A238481.P2629569190969203890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A238480 (n + 1)

end

end A238481.P2629569190969203890

/-! ## A238481.P16924615452371846372

`A000041(n+1)-A238480(n+1)`
-/

namespace A238481.P16924615452371846372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A238480 (n + 1)

end

end A238481.P16924615452371846372

/-!
# A238482: Number of partitions p of n containing floor((min(p) + max(p))/2) as a part.

The programs for A238482, there is no canonical definition to state claims against.
-/

/-! ## A238482.P8613924453956193377

`Δ[A000070(n)]-A238483(n+1)`
-/

namespace A238482.P8613924453956193377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A238483 (n + 1)

end

end A238482.P8613924453956193377

/-! ## A238482.P2621570370848942264

`record[A035363(n)]-A238483(n+1)`
-/

namespace A238482.P2621570370848942264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A238483 (n + 1)

end

end A238482.P2621570370848942264

/-! ## A238482.P8955622196092352385

`record[A035444(n)]-A238483(n+1)`
-/

namespace A238482.P8955622196092352385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A238483 (n + 1)

end

end A238482.P8955622196092352385

/-! ## A238482.P14401774105223112642

`record[A114099(n)]-A238483(n+1)`
-/

namespace A238482.P14401774105223112642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A238483 (n + 1)

end

end A238482.P14401774105223112642

/-! ## A238482.P16836817451075509664

`A000041(n+1)-A238483(n+1)`
-/

namespace A238482.P16836817451075509664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A238483 (n + 1)

end

end A238482.P16836817451075509664

/-!
# A238483: Number of partitions p of n not containing floor((min(p) + max(p))/2) as a part.

The programs for A238483, there is no canonical definition to state claims against.
-/

/-! ## A238483.P11151557328180737530

`Δ[A000070(n)]-A238482(n+1)`
-/

namespace A238483.P11151557328180737530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A238482 (n + 1)

end

end A238483.P11151557328180737530

/-! ## A238483.P5101953764996200599

`record[A035363(n)]-A238482(n+1)`
-/

namespace A238483.P5101953764996200599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A238482 (n + 1)

end

end A238483.P5101953764996200599

/-! ## A238483.P17212755641336089315

`record[A035444(n)]-A238482(n+1)`
-/

namespace A238483.P17212755641336089315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A238482 (n + 1)

end

end A238483.P17212755641336089315

/-! ## A238483.P1265075484840180642

`record[A114099(n)]-A238482(n+1)`
-/

namespace A238483.P1265075484840180642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A238482 (n + 1)

end

end A238483.P1265075484840180642

/-! ## A238483.P6529930337061691249

`A000041(n+1)-A238482(n+1)`
-/

namespace A238483.P6529930337061691249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A238482 (n + 1)

end

end A238483.P6529930337061691249

/-!
# A238484: Number of partitions p of n containing ceiling((min(p) + max(p))/2) as a part.

The programs for A238484, there is no canonical definition to state claims against.
-/

/-! ## A238484.P6776563562423792425

`Δ[A000070(n)]-A238485(n+1)`
-/

namespace A238484.P6776563562423792425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A238485 (n + 1)

end

end A238484.P6776563562423792425

/-! ## A238484.P14315025313634537873

`record[A035363(n)]-A238485(n+1)`
-/

namespace A238484.P14315025313634537873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A238485 (n + 1)

end

end A238484.P14315025313634537873

/-! ## A238484.P11578749328497651360

`record[A035444(n)]-A238485(n+1)`
-/

namespace A238484.P11578749328497651360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A238485 (n + 1)

end

end A238484.P11578749328497651360

/-! ## A238484.P710316030173687640

`record[A114099(n)]-A238485(n+1)`
-/

namespace A238484.P710316030173687640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A238485 (n + 1)

end

end A238484.P710316030173687640

/-! ## A238484.P15447212213372224980

`A000041(n+1)-A238485(n+1)`
-/

namespace A238484.P15447212213372224980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A238485 (n + 1)

end

end A238484.P15447212213372224980

/-!
# A238485: Number of partitions p of n not containing ceiling((min(p) + max(p))/2) as a part.

The programs for A238485, there is no canonical definition to state claims against.
-/

/-! ## A238485.P18263427705484584283

`Δ[A000070(n)]-A238484(n+1)`
-/

namespace A238485.P18263427705484584283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A238484 (n + 1)

end

end A238485.P18263427705484584283

/-! ## A238485.P6973210097349291401

`record[A035363(n)]-A238484(n+1)`
-/

namespace A238485.P6973210097349291401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A238484 (n + 1)

end

end A238485.P6973210097349291401

/-! ## A238485.P2165863673274600185

`record[A035444(n)]-A238484(n+1)`
-/

namespace A238485.P2165863673274600185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A238484 (n + 1)

end

end A238485.P2165863673274600185

/-! ## A238485.P2512536539237774340

`record[A114099(n)]-A238484(n+1)`
-/

namespace A238485.P2512536539237774340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A238484 (n + 1)

end

end A238485.P2512536539237774340

/-! ## A238485.P763436018090864652

`A000041(n+1)-A238484(n+1)`
-/

namespace A238485.P763436018090864652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A238484 (n + 1)

end

end A238485.P763436018090864652

/-!
# A238486: Number of partitions p of n containing round((min(p) + max(p))/2) as a part.

The programs for A238486, there is no canonical definition to state claims against.
-/

/-! ## A238486.P13977879784706168770

`Δ[A000070(n)]-A238487(n+1)`
-/

namespace A238486.P13977879784706168770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A238487 (n + 1)

end

end A238486.P13977879784706168770

/-! ## A238486.P4264960614406025835

`record[A035363(n)]-A238487(n+1)`
-/

namespace A238486.P4264960614406025835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A238487 (n + 1)

end

end A238486.P4264960614406025835

/-! ## A238486.P6242564795872424624

`record[A035444(n)]-A238487(n+1)`
-/

namespace A238486.P6242564795872424624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A238487 (n + 1)

end

end A238486.P6242564795872424624

/-! ## A238486.P9572126359845460859

`record[A114099(n)]-A238487(n+1)`
-/

namespace A238486.P9572126359845460859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A238487 (n + 1)

end

end A238486.P9572126359845460859

/-! ## A238486.P17469986157295268036

`A000041(n+1)-A238487(n+1)`
-/

namespace A238486.P17469986157295268036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A238487 (n + 1)

end

end A238486.P17469986157295268036

/-!
# A238487: Number of partitions p of n not containing round((min(p) + max(p))/2) as a part.

The programs for A238487, there is no canonical definition to state claims against.
-/

/-! ## A238487.P16967205401727597604

`Δ[A000070(n)]-A238486(n+1)`
-/

namespace A238487.P16967205401727597604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A238486 (n + 1)

end

end A238487.P16967205401727597604

/-! ## A238487.P15446850047511850371

`record[A035363(n)]-A238486(n+1)`
-/

namespace A238487.P15446850047511850371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A238486 (n + 1)

end

end A238487.P15446850047511850371

/-! ## A238487.P3421427808776342676

`record[A035444(n)]-A238486(n+1)`
-/

namespace A238487.P3421427808776342676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A238486 (n + 1)

end

end A238487.P3421427808776342676

/-! ## A238487.P1667483828661824826

`record[A114099(n)]-A238486(n+1)`
-/

namespace A238487.P1667483828661824826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A238486 (n + 1)

end

end A238487.P1667483828661824826

/-! ## A238487.P13758049231659430285

`A000041(n+1)-A238486(n+1)`
-/

namespace A238487.P13758049231659430285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A238486 (n + 1)

end

end A238487.P13758049231659430285

/-!
# A238488: Number of partitions of n not containing 2*(number of parts) as a part.

The programs for A238488, there is no canonical definition to state claims against.
-/

/-! ## A238488.P6295547119644331570

`A000041(n+1)-A026796(n+2)`
-/

namespace A238488.P6295547119644331570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A026796 (n + 2)

end

end A238488.P6295547119644331570

/-! ## A238488.P17364772252360105478

`A000041(n+1)-A008483(abs(1-n))`
-/

namespace A238488.P17364772252360105478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A008483 |1 - (n : ℤ)|.toNat

end

end A238488.P17364772252360105478

/-! ## A238488.P134561049762568510

`∑[A187219(n+1)]-A026796(n+2)`
-/

namespace A238488.P134561049762568510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A026796 (n + 2)

end

end A238488.P134561049762568510

/-! ## A238488.P16923855956167230795

`A035444(A008586(n+1))-A026796(n+2)`
-/

namespace A238488.P16923855956167230795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (A008586 (n + 1)).toNat - A026796 (n + 2)

end

end A238488.P16923855956167230795

/-! ## A238488.P10961427394761588182

`A000041(n+1)-(A027195(n+2)+A027189(n+2))`
-/

namespace A238488.P10961427394761588182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - (A027195 (n + 2) + A027189 (n + 2))

end

end A238488.P10961427394761588182

/-! ## A238488.P6247717052889389480

`A000041(n+1)+A121659(n+2)-A121081(n+2)`
-/

namespace A238488.P6247717052889389480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) + (A121659 (n + 2) - A121081 (n + 2))

end

end A238488.P6247717052889389480

/-! ## A238488.P12972158251031181401

`record[A026794(n+1)]-A026796(n+2)`
-/

namespace A238488.P12972158251031181401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A026796 (n + 2)

end

end A238488.P12972158251031181401

/-! ## A238488.P2527583428350109446

`A026794(∑[n+1]+1)-A026796(n+2)`
-/

namespace A238488.P2527583428350109446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026794 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A026796 (n + 2)

end

end A238488.P2527583428350109446

/-!
# A238491: Number of partitions of n not containing 3*(number of parts) as a part.

The programs for A238491, there is no canonical definition to state claims against.
-/

/-! ## A238491.P18055797632181537293

`Δ[A000070(n)]-A026797(n+2)`
-/

namespace A238491.P18055797632181537293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026797 (n + 2)

end

end A238491.P18055797632181537293

/-! ## A238491.P1689090947295518999

`record[A035363(n)]-A026797(n+2)`
-/

namespace A238491.P1689090947295518999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A026797 (n + 2)

end

end A238491.P1689090947295518999

/-! ## A238491.P8466055382391526511

`A000041(n+1)-A026797(n+2)`
-/

namespace A238491.P8466055382391526511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A026797 (n + 2)

end

end A238491.P8466055382391526511

/-! ## A238491.P17312802748814535940

`record[A035363(n)]-A008484(abs(2-n))`
-/

namespace A238491.P17312802748814535940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A008484 |2 - (n : ℤ)|.toNat

end

end A238491.P17312802748814535940

/-! ## A238491.P15842950351952634006

`record[A035444(n)]-A008484(abs(2-n))`
-/

namespace A238491.P15842950351952634006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A008484 |2 - (n : ℤ)|.toNat

end

end A238491.P15842950351952634006

/-!
# A238492: Number of partitions of n not containing 4*(number of parts) as a part.

The programs for A238492, there is no canonical definition to state claims against.
-/

/-! ## A238492.P3003055811619046361

`Δ[A000070(n)]-A026798(n+2)`
-/

namespace A238492.P3003055811619046361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026798 (n + 2)

end

end A238492.P3003055811619046361

/-! ## A238492.P4065992545345507805

`record[A035363(n)]-A026798(n+2)`
-/

namespace A238492.P4065992545345507805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A026798 (n + 2)

end

end A238492.P4065992545345507805

/-! ## A238492.P2676908086076581306

`record[A035444(n)]-A026798(n+2)`
-/

namespace A238492.P2676908086076581306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A026798 (n + 2)

end

end A238492.P2676908086076581306

/-! ## A238492.P8953566258813188814

`record[A114099(n)]-A026798(n+2)`
-/

namespace A238492.P8953566258813188814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A026798 (n + 2)

end

end A238492.P8953566258813188814

/-! ## A238492.P11040311993566148166

`A000041(n+1)-A026798(n+2)`
-/

namespace A238492.P11040311993566148166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A026798 (n + 2)

end

end A238492.P11040311993566148166

/-!
# A238493: Number of partitions p of n such that max(p) - min(p) is a part of p.

The programs for A238493, there is no canonical definition to state claims against.
-/

/-! ## A238493.P12703308167869318725

`A241383(n+1)+A241382(n+1)`
-/

namespace A238493.P12703308167869318725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241383 (n + 1) + A241382 (n + 1)

end

end A238493.P12703308167869318725

/-! ## A238493.P5226500577632426754

`A241388(n+1)+A241387(n+1)`
-/

namespace A238493.P5226500577632426754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241388 (n + 1) + A241387 (n + 1)

end

end A238493.P5226500577632426754

/-! ## A238493.P10414141786685473174

`A241448(n+1)+A241447(n+1)`
-/

namespace A238493.P10414141786685473174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241448 (n + 1) + A241447 (n + 1)

end

end A238493.P10414141786685473174

/-! ## A238493.P14503187857387532704

`A241386(n+1)-A241384(n+1)`
-/

namespace A238493.P14503187857387532704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241386 (n + 1) - A241384 (n + 1)

end

end A238493.P14503187857387532704

/-! ## A238493.P10490169207835336229

`A241391(n+1)-A241389(n+1)`
-/

namespace A238493.P10490169207835336229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241391 (n + 1) - A241389 (n + 1)

end

end A238493.P10490169207835336229

/-!
# A238494: Number of partitions p of n such that max(p) - min(p) is not a part of p.

The programs for A238494, there is no canonical definition to state claims against.
-/

/-! ## A238494.P9386088874128104058

`Δ[A000070(n)]-A238493(n+1)`
-/

namespace A238494.P9386088874128104058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A238493 (n + 1)

end

end A238494.P9386088874128104058

/-! ## A238494.P2031711579779848783

`record[A035363(n)]-A238493(n+1)`
-/

namespace A238494.P2031711579779848783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A238493 (n + 1)

end

end A238494.P2031711579779848783

/-! ## A238494.P17633957577718209662

`record[A035444(n)]-A238493(n+1)`
-/

namespace A238494.P17633957577718209662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A238493 (n + 1)

end

end A238494.P17633957577718209662

/-! ## A238494.P17836947455218148161

`A241385(n+1)+A241384(n+1)`
-/

namespace A238494.P17836947455218148161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241385 (n + 1) + A241384 (n + 1)

end

end A238494.P17836947455218148161

/-! ## A238494.P8035817560014153548

`A241390(n+1)+A241389(n+1)`
-/

namespace A238494.P8035817560014153548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241390 (n + 1) + A241389 (n + 1)

end

end A238494.P8035817560014153548

/-!
# A238495: Number of partitions p of n such that min(p) + (number of parts of p) is not a part of p.

The programs for A238495, there is no canonical definition to state claims against.
-/

/-! ## A238495.P253521147527715618

`A000041(n+2)-A027336(n+1)`
-/

namespace A238495.P253521147527715618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 2) - A027336 (n + 1)

end

end A238495.P253521147527715618

/-! ## A238495.P5152530608987691179

`A229816(n+1)+A053445(n)`
-/

namespace A238495.P5152530608987691179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229816 (n + 1) + A053445 n

end

end A238495.P5152530608987691179

/-! ## A238495.P15548870861855893759

`A008483(n+2)+A000041(n)`
-/

namespace A238495.P15548870861855893759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008483 (n + 2) + A000041 n

end

end A238495.P15548870861855893759

/-! ## A238495.P6924135370934466095

`A187219(n+2)+A000041(n)-A002865(n)`
-/

namespace A238495.P6924135370934466095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187219 (n + 2) + (A000041 n - A002865 n)

end

end A238495.P6924135370934466095

/-! ## A238495.P726630141593433985

`A121081(n+2)+A000041(n)-A121659(n+1)`
-/

namespace A238495.P726630141593433985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121081 (n + 2) + (A000041 n - A121659 (n + 1))

end

end A238495.P726630141593433985

/-! ## A238495.P2218789835241397781

`A229816(n+2)-A002865(n)`
-/

namespace A238495.P2218789835241397781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229816 (n + 2) - A002865 n

end

end A238495.P2218789835241397781

/-! ## A238495.P3179993552847176877

`A000041(n+1)+A053445(n)-A002865(n)`
-/

namespace A238495.P3179993552847176877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) + (A053445 n - A002865 n)

end

end A238495.P3179993552847176877

/-! ## A238495.P7325351390424138991

`A187219(n+2)+A084376(n)-A000041(n)`
-/

namespace A238495.P7325351390424138991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187219 (n + 2) + (A084376 n - A000041 n)

end

end A238495.P7325351390424138991

/-! ## A238495.P2053416100934455032

`A238488(n+2)+A008483(n)-A027336(n+1)`
-/

namespace A238495.P2053416100934455032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238488 (n + 2) + (A008483 n - A027336 (n + 1))

end

end A238495.P2053416100934455032

/-! ## A238495.P14503645024971617334

`A229863(n+2)-A027336(n)`
-/

namespace A238495.P14503645024971617334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229863 (n + 2) - A027336 n

end

end A238495.P14503645024971617334

/-! ## A238495.P10266566749746904405

`A100824(2*n)+A008483(n+2)`
-/

namespace A238495.P10266566749746904405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100824 (2 * n) + A008483 (n + 2)

end

end A238495.P10266566749746904405

/-!
# A238496: Number of prime factors in A052129(n).

The programs for A238496, the canonical program `A238496.P14376166226288139737` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238496 has offset 0).

The definition of A238496 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A238496.P14376166226288139737

`2*a(n-1)+A001222(n)` with `a(0)=0`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A238496

/-- `2*a(n-1)+A001222(n)` -/
def P14376166226288139737.Spec : Prop :=
  ∀ n, P14376166226288139737.a n = A238496 n

theorem P14376166226288139737.correct : P14376166226288139737.Spec := by
  intro n
  simp only [A238496]

end A238496

/-! ## A238496.P12323907875115854721

`∑{e}[n, #]+2*a(n-1)` with `a(0)=0`
-/

namespace A238496.P12323907875115854721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + 2 * a (n - 1)

end

end A238496.P12323907875115854721

namespace A238496

/-- `∑{e}[n, #]+2*a(n-1)` -/
def P12323907875115854721.Spec : Prop :=
  ∀ n, (P12323907875115854721.a n : ℤ) = A238496 n

end A238496

/-! ## A238496.P2843837576935234876

`log2(∏{e}[n, 2^#])+2*a(n-1)` with `a(0)=0`
-/

namespace A238496.P2843837576935234876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.rec [0] fun n a =>
  Real.logb 2 ((∏ p ∈ Nat.primeFactors (f1 n), 2 ^ Nat.factorization (f1 n) p : ℕ) : ℝ) + 2 * a (n - 1)

end

end A238496.P2843837576935234876

namespace A238496

/-- `log2(∏{e}[n, 2^#])+2*a(n-1)` -/
def P2843837576935234876.Spec : Prop :=
  ∀ n, P2843837576935234876.a n = (A238496 n : ℝ)

end A238496

/-! ## A238496.P3752108668052675936

`a(n-1)+∑{e}[n, #]+a(n-1)` with `a(0)=0`
-/

namespace A238496.P3752108668052675936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + a (n - 1))

end

end A238496.P3752108668052675936

namespace A238496

/-- `a(n-1)+∑{e}[n, #]+a(n-1)` -/
def P3752108668052675936.Spec : Prop :=
  ∀ n, (P3752108668052675936.a n : ℤ) = A238496 n

end A238496

/-! ## A238496.P389131701368116433

`2*a(n-1)-(1-A001222(2*n))` with `a(0)=0`
-/

namespace A238496.P389131701368116433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * a (n - 1) - (1 - A001222 (2 * n))

end

end A238496.P389131701368116433

namespace A238496

/-- `2*a(n-1)-(1-A001222(2*n))` -/
def P389131701368116433.Spec : Prop :=
  ∀ n, P389131701368116433.a n = A238496 n

end A238496

/-!
# A238497: Cubefree Fibonacci numbers.

The programs for A238497, there is no canonical definition to state claims against.
-/

/-! ## A238497.P10270582870288863607

`A000045(A047253(n+1)%A330911(n+1))`
-/

namespace A238497.P10270582870288863607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.tmod (A047253 (n + 1)) (A330911 (n + 1))).toNat

end

end A238497.P10270582870288863607

/-! ## A238497.P735934515327738640

`A000045(lcm(A047253(n+1), A155040(n)))`
-/

namespace A238497.P735934515327738640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.lcm (A047253 (n + 1)) (A155040 n))

end

end A238497.P735934515327738640

/-! ## A238497.P654672696047457728

`A000045(A155040(n)²*A047253(n+1))`
-/

namespace A238497.P654672696047457728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A155040 n ^ 2 * A047253 (n + 1)).toNat

end

end A238497.P654672696047457728

/-! ## A238497.P9288294111753606153

`A000045(A047253(n+1)/A155040(n)²)`
-/

namespace A238497.P9288294111753606153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway ((A047253 (n + 1) : ℚ) / (A155040 n ^ 2 : ℚ))).toNat

end

end A238497.P9288294111753606153

/-! ## A238497.P2917678657149208609

`A000045(eq[gcd(2, n), A278538(n²+1)])`
-/

namespace A238497.P2917678657149208609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278538 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238497.P2917678657149208609

/-! ## A238497.P9777695337425198463

`A115338(comp[6*n]²)`
-/

namespace A238497.P9777695337425198463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115338 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 2)

end

end A238497.P9777695337425198463

/-! ## A238497.P4770107869123101995

`A000045(lt[A281739(n), A281749(n)])`
-/

namespace A238497.P4770107869123101995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281739 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281749 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A238497.P4770107869123101995

/-! ## A238497.P15213539436020131481

`A000045(lt[0, A265517(n)])`
-/

namespace A238497.P15213539436020131481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A238497.P15213539436020131481

/-! ## A238497.P7881351160080119912

`A272912(A051756(n+2))`
-/

namespace A238497.P7881351160080119912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272912 (A051756 (n + 2)).toNat

end

end A238497.P7881351160080119912

/-! ## A238497.P13214800461559541255

`A283845(A002266(n)+A001844(n))`
-/

namespace A238497.P13214800461559541255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283845 (A002266 n + A001844 n).toNat

end

end A238497.P13214800461559541255

/-!
# A238498: Triangle read by rows: T(n,k) = A175836(n)/(A175836(k)* A175836(n-k)).

The programs for A238498, there is no canonical definition to state claims against.
-/

/-! ## A238498.P13973252302112625720

`A238688(n)/A238453(n)`
-/

namespace A238498.P13973252302112625720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238688 n : ℚ) / (A238453 n : ℚ)

end

end A238498.P13973252302112625720

/-! ## A238498.P18257843014462817175

`A000203(A048804(n))*A246465(n)`
-/

namespace A238498.P18257843014462817175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A048804 n).toNat * A246465 n

end

end A238498.P18257843014462817175

/-! ## A238498.P220332534776432436

`A007318(n)/A048804(n)*A000203(A048804(n))`
-/

namespace A238498.P220332534776432436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) / (A048804 n : ℚ) * (A000203 (A048804 n).toNat : ℚ)

end

end A238498.P220332534776432436

/-! ## A238498.P7228811345040901741

`A001615(A048804(n-char[1]))*A246465(n)`
-/

namespace A238498.P7228811345040901741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (A048804 (n - (if ∃ j, f1 j = n then 1 else 0))).toNat * A246465 n

end

end A238498.P7228811345040901741

/-! ## A238498.P4749575287954595688

`A000027(A001615(A048804(n))*A246465(n))`
-/

namespace A238498.P4749575287954595688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A001615 (A048804 n).toNat * A246465 n).toNat

end

end A238498.P4749575287954595688

/-! ## A238498.P11417098688371573479

`A001615(A007318(n)/A246465(n))*A246465(n)`
-/

namespace A238498.P11417098688371573479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (SequenceMachineLib.roundAway ((A007318 n : ℚ) / (A246465 n : ℚ))).toNat * A246465 n

end

end A238498.P11417098688371573479

/-! ## A238498.P6698696900319434681

`(A001615(A048804(n))*A246465(n))%A000041(n+2)`
-/

namespace A238498.P6698696900319434681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001615 (A048804 n).toNat * A246465 n) (A000041 (n + 2))

end

end A238498.P6698696900319434681

/-! ## A238498.P10232306883441327437

`A001615(A048804(n))*A246465(n)*(A007318(n)%2)!`
-/

namespace A238498.P10232306883441327437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (A048804 n).toNat * A246465 n * (Nat.factorial (Int.tmod (A007318 n) 2).toNat : ℤ)

end

end A238498.P10232306883441327437

/-! ## A238498.P1043590280166654238

`A008683(4*(n+1))+A001615(A048804(n))*A246465(n)`
-/

namespace A238498.P1043590280166654238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (4 * (n + 1)) + A001615 (A048804 n).toNat * A246465 n

end

end A238498.P1043590280166654238

/-! ## A238498.P7286740696836552334

`A001615(A048804(n))*A246465(n)*A014963(6*(n+2))`
-/

namespace A238498.P7286740696836552334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (A048804 n).toNat * A246465 n * A014963 (6 * (n + 2))

end

end A238498.P7286740696836552334

