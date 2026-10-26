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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C006
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
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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
# A225700: Denominators of coefficients arising from q-expansion of Integrate[eta[q^4]^8/eta[q^2]^4, q]/q where eta is the Dedekind eta function.

The programs for A225700, the canonical program `A225700.P11846201848307707302` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225700 has offset 0).

The definition of A225700 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A225700.P5336132875304103506

`A339966(Δ[n²])`
-/

namespace A225700.P5336132875304103506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339966 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A225700.P5336132875304103506

namespace A225700

/-- `A339966(Δ[n²])` -/
def P5336132875304103506.Spec : Prop :=
  ∀ n, P5336132875304103506.a n = A225700 n

end A225700

/-! ## A225700.P16295045448621126369

`root(A339966(2*n+1), 2)²`
-/

namespace A225700.P16295045448621126369
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A339966 (2 * n + 1) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A225700.P16295045448621126369

namespace A225700

/-- `root(A339966(2*n+1), 2)²` -/
def P16295045448621126369.Spec : Prop :=
  ∀ n, P16295045448621126369.a n = (A225700 n : ℝ)

end A225700

/-! ## A225700.P11846201848307707302

`2*(n+1)/A339964(Δ[n²])`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A225700

/-- `2*(n+1)/A339964(Δ[n²])` -/
def P11846201848307707302.Spec : Prop :=
  ∀ n, P11846201848307707302.a n = (A225700 n : ℚ)

end A225700

/-! ## A225700.P2574001711335404130

`2*(n+1)/gcd(2*(n+1), A000203(2*n+1))`
-/

namespace A225700.P2574001711335404130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℚ) / (Int.gcd (2 * (n + 1) : ℤ) (A000203 (2 * n + 1)) : ℚ)

end

end A225700.P2574001711335404130

namespace A225700

/-- `2*(n+1)/gcd(2*(n+1), A000203(2*n+1))` -/
def P2574001711335404130.Spec : Prop :=
  ∀ n, P2574001711335404130.a n = (A225700 n : ℚ)

end A225700

/-! ## A225700.P3578081327111468315

`A038712(A038712(n+1))*A339966(2*n+1)`
-/

namespace A225700.P3578081327111468315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (A038712 (n + 1)).toNat * A339966 (2 * n + 1)

end

end A225700.P3578081327111468315

namespace A225700

/-- `A038712(A038712(n+1))*A339966(2*n+1)` -/
def P3578081327111468315.Spec : Prop :=
  ∀ n, P3578081327111468315.a n = A225700 n

end A225700

/-! ## A225700.P16760027681907524790

`A001065(A000040(n+1))*A339966(2*n+1)`
-/

namespace A225700.P16760027681907524790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A000040 (n + 1)).toNat * A339966 (2 * n + 1)

end

end A225700.P16760027681907524790

namespace A225700

/-- `A001065(A000040(n+1))*A339966(2*n+1)` -/
def P16760027681907524790.Spec : Prop :=
  ∀ n, P16760027681907524790.a n = A225700 n

end A225700

/-! ## A225700.P10112812264722228834

`A001065(A140559(n+1))*A339966(2*n+1)`
-/

namespace A225700.P10112812264722228834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A140559 (n + 1)).toNat * A339966 (2 * n + 1)

end

end A225700.P10112812264722228834

namespace A225700

/-- `A001065(A140559(n+1))*A339966(2*n+1)` -/
def P10112812264722228834.Spec : Prop :=
  ∀ n, P10112812264722228834.a n = A225700 n

end A225700

/-! ## A225700.P14209837814717970178

`A038712(A211422(n))*A339966(2*n+1)`
-/

namespace A225700.P14209837814717970178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (A211422 n).toNat * A339966 (2 * n + 1)

end

end A225700.P14209837814717970178

namespace A225700

/-- `A038712(A211422(n))*A339966(2*n+1)` -/
def P14209837814717970178.Spec : Prop :=
  ∀ n, P14209837814717970178.a n = A225700 n

end A225700

/-!
# A225701: Expansion of chi(q)^5 / chi(q^5) in powers of q where chi() is a Ramanujan theta function.

The programs for A225701, there is no canonical definition to state claims against.
-/

/-! ## A225701.P4290663754422283910

`(-1)^n*A138521(n)`
-/

namespace A225701.P4290663754422283910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A138521 n

end

end A225701.P4290663754422283910

/-! ## A225701.P11915096603424225821

`abs(A138521(n))`
-/

namespace A225701.P11915096603424225821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A138521 n|

end

end A225701.P11915096603424225821

/-! ## A225701.P5123413307160649925

`gcd(A000038(n), A138521(n))`
-/

namespace A225701.P5123413307160649925
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A138521 n)

end

end A225701.P5123413307160649925

/-! ## A225701.P8132167394872347837

`lcm(A138520(n), A138521(n))`
-/

namespace A225701.P8132167394872347837
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A138520 n) (A138521 n)

end

end A225701.P8132167394872347837

/-!
# A225706: Composite squarefree numbers n such that p(i)-6 divides n+6, where p(i) are the prime factors of n.

The programs for A225706, there is no canonical definition to state claims against.
-/

/-! ## A225706.P3059170567032855008

`record[∏{p}[A331201(n+1), dr(#)]]`
-/

namespace A225706.P3059170567032855008
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331201 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, SequenceMachineLib.digitalRoot (p : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225706.P3059170567032855008

/-! ## A225706.P9178206028594761925

`A018336(lt[0, ∏{digits}[n, (1-#)²]]+5)`
-/

namespace A225706.P9178206028594761925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => (1 - (x : ℤ)) ^ 2).prod

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018336 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 5)

end

end A225706.P9178206028594761925

/-! ## A225706.P13239575629506387309

`∩[A002038(n+1), A133576(n+1)]`
-/

namespace A225706.P13239575629506387309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133576 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225706.P13239575629506387309

/-! ## A225706.P12285394119130316098

`∩[A002038(n+1), A137353(n+1)]`
-/

namespace A225706.P12285394119130316098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225706.P12285394119130316098

/-! ## A225706.P14140837133330515866

`∩[A002038(n+1), A174896(n+1)]`
-/

namespace A225706.P14140837133330515866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225706.P14140837133330515866

/-!
# A225707: Composite squarefree numbers n such that p(i)-7 divides n+7, where p(i) are the prime factors of n.

The programs for A225707, there is no canonical definition to state claims against.
-/

/-! ## A225707.P17932152389952115137

`A337110(A328016(n+2))`
-/

namespace A225707.P17932152389952115137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337110 (A328016 (n + 2)).toNat

end

end A225707.P17932152389952115137

/-!
# A225708: Composite squarefree numbers n such that p(i)-8 divides n+8, where p(i) are the prime factors of n.

The programs for A225708, there is no canonical definition to state claims against.
-/

/-! ## A225708.P16762899392545161725

`A018636(A050173(n+1)+A010892(n))`
-/

namespace A225708.P16762899392545161725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018636 (A050173 (n + 1) + A010892 n).toNat

end

end A225708.P16762899392545161725

/-!
# A225709: Composite squarefree numbers n such that p(i)-9 divides n+9, where p(i) are the prime factors of n.

The programs for A225709, there is no canonical definition to state claims against.
-/

/-! ## A225709.P8568997444634676290

`A321644(lt[A321597(n+2), A321627(2*(n+1))])`
-/

namespace A225709.P8568997444634676290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321597 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321627 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321644 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A225709.P8568997444634676290

/-!
# A225721: Starting with x = n, the number of iterations of x := 2x - 1 until x is prime, or -1 if no prime exists.

The programs for A225721, there is no canonical definition to state claims against.
-/

/-! ## A225721.P10624829708193791279

`A040076(A233583(n+1))-A003982(∑[n])`
-/

namespace A225721.P10624829708193791279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040076 (A233583 (n + 1)).toNat - A003982 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A225721.P10624829708193791279

/-! ## A225721.P5480646131611575969

`A040076(A028310(n))-A169585(A292581(n+1))`
-/

namespace A225721.P5480646131611575969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040076 (A028310 n).toNat - A169585 (A292581 (n + 1)).toNat

end

end A225721.P5480646131611575969

/-! ## A225721.P9510074871000214821

`A040076(A233583(n+1))-A169585(A292581(n+1))`
-/

namespace A225721.P9510074871000214821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040076 (A233583 (n + 1)).toNat - A169585 (A292581 (n + 1)).toNat

end

end A225721.P9510074871000214821

/-! ## A225721.P17809072173024040195

`A040076(A000007(n)+n)-A169585(A292581(n+1))`
-/

namespace A225721.P17809072173024040195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040076 (A000007 n + (n : ℤ)).toNat - A169585 (A292581 (n + 1)).toNat

end

end A225721.P17809072173024040195

/-! ## A225721.P15233466958747015389

`A040076(A233583(n+1))-A010054(A007520(n+1))`
-/

namespace A225721.P15233466958747015389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040076 (A233583 (n + 1)).toNat - A010054 (A007520 (n + 1)).toNat

end

end A225721.P15233466958747015389

/-! ## A225721.P15593230725159024097

`A040076(A233583(n+1))-A073424(A001359(n+1))`
-/

namespace A225721.P15593230725159024097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040076 (A233583 (n + 1)).toNat - A073424 (A001359 (n + 1)).toNat

end

end A225721.P15593230725159024097

/-! ## A225721.P12034484756607807170

`A040076(A233583(n+1))-A197183(A055393(n+1))`
-/

namespace A225721.P12034484756607807170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040076 (A233583 (n + 1)).toNat - A197183 (A055393 (n + 1)).toNat

end

end A225721.P12034484756607807170

/-! ## A225721.P16525992625014424485

`A040076(A233583(n+1))-A036987(A161532(n))`
-/

namespace A225721.P16525992625014424485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040076 (A233583 (n + 1)).toNat - A036987 (A161532 n).toNat

end

end A225721.P16525992625014424485

/-! ## A225721.P2519768395418812249

`A040076(A233583(n+1))-A073424(A000124(n))`
-/

namespace A225721.P2519768395418812249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040076 (A233583 (n + 1)).toNat - A073424 (A000124 n).toNat

end

end A225721.P2519768395418812249

/-! ## A225721.P17515009898517859397

`A040076(A233583(n+1))-A073424(A134869(n+1))`
-/

namespace A225721.P17515009898517859397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040076 (A233583 (n + 1)).toNat - A073424 (A134869 (n + 1)).toNat

end

end A225721.P17515009898517859397

/-! ## A225721.P6964535035364095084

`A040076(A233583(n+1))-A061199(∑[n])`
-/

namespace A225721.P6964535035364095084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040076 (A233583 (n + 1)).toNat - A061199 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A225721.P6964535035364095084

/-! ## A225721.P754038463053400972

`A040076(A233583(n+1))-A010051(A140513(n))`
-/

namespace A225721.P754038463053400972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040076 (A233583 (n + 1)).toNat - A010051 (A140513 n).toNat

end

end A225721.P754038463053400972

/-! ## A225721.P869227030265458194

`A040076(A233583(n+1))-A089010(A195685(n+1))`
-/

namespace A225721.P869227030265458194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040076 (A233583 (n + 1)).toNat - A089010 (A195685 (n + 1)).toNat

end

end A225721.P869227030265458194

/-! ## A225721.P17457194731304530647

`A040076(A233583(n+1))-A002448(n²)%2`
-/

namespace A225721.P17457194731304530647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040076 (A233583 (n + 1)).toNat - Int.tmod (A002448 (n ^ 2)) 2

end

end A225721.P17457194731304530647

/-! ## A225721.P935982464500030974

`A040076(A233583(n+1))-A089010((n+1)²)`
-/

namespace A225721.P935982464500030974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040076 (A233583 (n + 1)).toNat - A089010 ((n + 1) ^ 2)

end

end A225721.P935982464500030974

/-!
# A225723: Triangular array read by rows: T(n,k) is the number of size k components in the digraph representation of all functions f:{1,2,...,n}->{1,2,...,n}; n>=1, 1<=k<=n.

The programs for A225723, there is no canonical definition to state claims against.
-/

/-! ## A225723.P12117907447480094384

`A056239(A368962(n)+A168243(n))`
-/

namespace A225723.P12117907447480094384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A368962 n + A168243 n).toNat

end

end A225723.P12117907447480094384

/-! ## A225723.P11897100117568459614

`A072622(A053633(n)*A327475(n))`
-/

namespace A225723.P11897100117568459614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072622 (A053633 n * A327475 n).toNat

end

end A225723.P11897100117568459614

/-! ## A225723.P2767144835214845894

`A092089(A004211(n)+1)-A123125(n)`
-/

namespace A225723.P2767144835214845894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092089 (A004211 n + 1).toNat - A123125 n

end

end A225723.P2767144835214845894

/-!
# A225726: Lesser of two consecutive primes, p < q, such that p*q + p - q and p*q - p + q are also consecutive primes.

The programs for A225726, there is no canonical definition to state claims against.
-/

/-! ## A225726.P17687664569253141166

`A154553(∑[A144502(n)!])`
-/

namespace A225726.P17687664569253141166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A144502 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154553 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A225726.P17687664569253141166

/-! ## A225726.P3603118547132298592

`A154553(∑[A174302(n)!])`
-/

namespace A225726.P3603118547132298592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A174302 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154553 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A225726.P3603118547132298592

/-!
# A225727: Numbers k such that sum of first k primorials (A143293) is divisible by k.

The programs for A225727, there is no canonical definition to state claims against.
-/

/-! ## A225727.P9261286469287547524

`record[gcd(A027660(n), A098547(n))]`
-/

namespace A225727.P9261286469287547524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027660 n) (A098547 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225727.P9261286469287547524

/-!
# A225729: Numbers n such that n < d(n)^(21/10), where d(n) is the number of divisors of n.

The programs for A225729, there is no canonical definition to state claims against.
-/

/-! ## A225729.P3259539615080992171

`lt[A027336(n), A152409(A032741(n))]`
-/

namespace A225729.P3259539615080992171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027336 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152409 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225729.P3259539615080992171

/-! ## A225729.P14832071914918098124

`lt[A245709(n+1), A003947(A032741(n))]`
-/

namespace A225729.P14832071914918098124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003947 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225729.P14832071914918098124

/-! ## A225729.P1849994316261166695

`lt[A305630(n+2), A091073(A000005(n+1))]+1`
-/

namespace A225729.P1849994316261166695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305630 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091073 (A000005 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A225729.P1849994316261166695

/-! ## A225729.P12498727770118868444

`lt[A316843(A164385(n+1)), A145154(n)]`
-/

namespace A225729.P12498727770118868444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316843 (A164385 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225729.P12498727770118868444

/-! ## A225729.P18075154453254093461

`lt[A225541(A320224(n+1)), A032741(n)]`
-/

namespace A225729.P18075154453254093461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225541 (A320224 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225729.P18075154453254093461

/-!
# A225730: Numbers k such that k < d(k)^(22/10), where d(k) is the number of divisors of k.

The programs for A225730, there is no canonical definition to state claims against.
-/

/-! ## A225730.P4707352963227878215

`lt[A003106(3*(n+1)), A202438(A032741(n))]`
-/

namespace A225730.P4707352963227878215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003106 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202438 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225730.P4707352963227878215

/-! ## A225730.P2807895874183729882

`lt[A000041(n), A113343(A032741(n))]`
-/

namespace A225730.P2807895874183729882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113343 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225730.P2807895874183729882

/-! ## A225730.P15267005336156033464

`lt[A048273(A347454(n+2)), A226602(n)]`
-/

namespace A225730.P15267005336156033464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048273 (A347454 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226602 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225730.P15267005336156033464

/-! ## A225730.P1242492239640289978

`lt[A321451(n), A300834(n+1)]+1`
-/

namespace A225730.P1242492239640289978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321451 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300834 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A225730.P1242492239640289978

/-! ## A225730.P2206912993591719547

`lt[A353980(n+2), A003590(A032741(n))]`
-/

namespace A225730.P2206912993591719547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353980 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003590 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225730.P2206912993591719547

/-!
# A225731: Numbers n such that n < d(n)^(23/10), where d(n) is the number of divisors of n.

The programs for A225731, there is no canonical definition to state claims against.
-/

/-! ## A225731.P11447242751591486514

`lt[A000009(n+1), A152404(A032741(n))]`
-/

namespace A225731.P11447242751591486514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152404 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225731.P11447242751591486514

/-! ## A225731.P6697375102493959728

`lt[A139582(n), A202436(A032741(n))]`
-/

namespace A225731.P6697375102493959728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139582 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202436 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225731.P6697375102493959728

/-! ## A225731.P13779297066510701961

`lt[A003113(2*n+3), A166907(A032741(n))]`
-/

namespace A225731.P13779297066510701961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003113 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166907 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225731.P13779297066510701961

/-! ## A225731.P5260706112744984124

`lt[A070211(3*n), A056823(A145154(n))]`
-/

namespace A225731.P5260706112744984124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070211 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056823 (A145154 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225731.P5260706112744984124

/-! ## A225731.P14121487822578700977

`lt[A297575(n+1), A207189(A145154(n))]`
-/

namespace A225731.P14121487822578700977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297575 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207189 (A145154 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225731.P14121487822578700977

/-!
# A225732: Numbers n such that n < d(n)^(24/10), where d(n) is the number of divisors of n.

The programs for A225732, there is no canonical definition to state claims against.
-/

/-! ## A225732.P1206864323281349632

`lt[A321346(n), A369196(A032741(n))]`
-/

namespace A225732.P1206864323281349632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321346 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369196 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225732.P1206864323281349632

/-! ## A225732.P8098840673464283370

`lt[A316843(A000961(3*n+4)), A145154(n)]`
-/

namespace A225732.P8098840673464283370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316843 (A000961 (3 * n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225732.P8098840673464283370

/-! ## A225732.P6910038567473210238

`lt[A002808(3*n+5), A162342(A145154(n))]`
-/

namespace A225732.P6910038567473210238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162342 (A145154 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225732.P6910038567473210238

/-! ## A225732.P7873490201197279698

`lt[A319951(n), A347792(A319410(n))]`
-/

namespace A225732.P7873490201197279698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319951 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347792 (A319410 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225732.P7873490201197279698

/-! ## A225732.P5887959098536251232

`lt[A184421(n+1), A011540(A304442(n))]`
-/

namespace A225732.P5887959098536251232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184421 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011540 (A304442 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225732.P5887959098536251232

/-!
# A225733: Numbers n such that n < d(n)^(5/2), where d(n) is the number of divisors of n.

The programs for A225733, there is no canonical definition to state claims against.
-/

/-! ## A225733.P2656819949600676136

`lt[A128689(3*n+4), A131577(A145154(n))]`
-/

namespace A225733.P2656819949600676136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128689 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A145154 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225733.P2656819949600676136

/-! ## A225733.P14305157221488763232

`lt[A088887(n), A076765(A032741(n))]`
-/

namespace A225733.P14305157221488763232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088887 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076765 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225733.P14305157221488763232

/-! ## A225733.P6164989856478822875

`lt[n+1, A093893(A226602(n))+n/4]`
-/

namespace A225733.P6164989856478822875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093893 (A226602 n).toNat : ℚ) + (n : ℚ) / 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A225733.P6164989856478822875

/-! ## A225733.P13260439640108816138

`lt[A233583(n+1), A105965(A226602(n))]`
-/

namespace A225733.P13260439640108816138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105965 (A226602 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225733.P13260439640108816138

/-! ## A225733.P8525855879189658678

`lt[A048766((1-n)²+n), A226602(n)]`
-/

namespace A225733.P8525855879189658678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 ((1 - (n : ℤ)) ^ 2 + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226602 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225733.P8525855879189658678

/-!
# A225734: Numbers n such that n < d(n)^(26/10), where d(n) is the number of divisors of n.

The programs for A225734, there is no canonical definition to state claims against.
-/

/-! ## A225734.P822489514473419146

`lt[A256502(A003002(n+2)), A226602(n)]`
-/

namespace A225734.P822489514473419146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (A003002 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226602 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225734.P822489514473419146

/-! ## A225734.P3423632563694744147

`lt[A048766(C(n, 2)+n+1), A226602(n)]`
-/

namespace A225734.P3423632563694744147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (Nat.choose n 2 + (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226602 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225734.P3423632563694744147

/-! ## A225734.P17788299374527277799

`lt[A048766(A000124(n)), A226602(n)]`
-/

namespace A225734.P17788299374527277799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A000124 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226602 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225734.P17788299374527277799

/-! ## A225734.P2384118278874634605

`lt[A048766(A194274(n)+1), A226602(n)]`
-/

namespace A225734.P2384118278874634605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A194274 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226602 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225734.P2384118278874634605

/-! ## A225734.P2383629291017086398

`lt[A048766(A110267(n)), A226602(n)]`
-/

namespace A225734.P2383629291017086398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A110267 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226602 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225734.P2383629291017086398

/-! ## A225734.P3729997438234605521

`lt[A225875(n+1), A093893(A226602(n))]`
-/

namespace A225734.P3729997438234605521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093893 (A226602 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225734.P3729997438234605521

/-! ## A225734.P6561486888896633838

`lt[A028310(n²), A111218(A028310(n²))]`
-/

namespace A225734.P6561486888896633838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111218 (A028310 (n ^ 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225734.P6561486888896633838

/-!
# A225735: Numbers n such that n < d(n)^(27/10), where d(n) is the number of divisors of n.

The programs for A225735, there is no canonical definition to state claims against.
-/

/-! ## A225735.P4419371411323761544

`lt[A073640(n+1), A329051(A226602(n))]`
-/

namespace A225735.P4419371411323761544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329051 (A226602 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225735.P4419371411323761544

/-! ## A225735.P16068325187065864564

`lt[A048766((A186539(n+1)-n)²+n), A226602(n)]`
-/

namespace A225735.P16068325187065864564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 ((A186539 (n + 1) - (n : ℤ)) ^ 2 + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226602 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225735.P16068325187065864564

/-! ## A225735.P3708402506401647135

`lt[A247808(n+1), A237822(A145154(n))]`
-/

namespace A225735.P3708402506401647135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237822 (A145154 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225735.P3708402506401647135

/-! ## A225735.P9993297877632979532

`lt[A335040(n+1), A237822(A145154(n))]`
-/

namespace A225735.P9993297877632979532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237822 (A145154 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225735.P9993297877632979532

/-! ## A225735.P940194982712391689

`lt[A008619(n), A176654(A226602(n))]`
-/

namespace A225735.P940194982712391689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176654 (A226602 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225735.P940194982712391689

/-! ## A225735.P6821071499974416582

`lt[A034887(n), A326533(A226602(n))]`
-/

namespace A225735.P6821071499974416582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326533 (A226602 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225735.P6821071499974416582

/-! ## A225735.P14960653212431782967

`lt[A008619(n+1), A093893(A226602(n))]`
-/

namespace A225735.P14960653212431782967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093893 (A226602 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225735.P14960653212431782967

/-! ## A225735.P18363287574070979485

`lt[A093893(A225875(n+1)), A226602(n)²]`
-/

namespace A225735.P18363287574070979485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093893 (A225875 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226602 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225735.P18363287574070979485

/-! ## A225735.P244020693898871513

`lt[A028310(n), A184389(A028310(n²))]`
-/

namespace A225735.P244020693898871513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184389 (A028310 (n ^ 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225735.P244020693898871513

/-!
# A225736: Numbers n such that n < d(n)^(28/10), where d(n) is the number of divisors of n.

The programs for A225736, there is no canonical definition to state claims against.
-/

/-! ## A225736.P4117499690608972448

`lt[A211426(2*(n+1)), A211436(A211437(n))]`
-/

namespace A225736.P4117499690608972448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211426 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211436 (A211437 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225736.P4117499690608972448

/-! ## A225736.P14552121651405100255

`lt[A047342(n+2), A100625(A077462(n))]`
-/

namespace A225736.P14552121651405100255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047342 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100625 (A077462 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225736.P14552121651405100255

/-! ## A225736.P710716172536222882

`lt[A137490(n+1), A029813(A077462(n))]`
-/

namespace A225736.P710716172536222882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137490 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029813 (A077462 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225736.P710716172536222882

/-! ## A225736.P16162789994438011868

`lt[A111592(n+1), A109788(A226602(n))]`
-/

namespace A225736.P16162789994438011868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109788 (A226602 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225736.P16162789994438011868

/-! ## A225736.P9397884408435554673

`lt[A000196(2*n+3), A244481(A226602(n))]`
-/

namespace A225736.P9397884408435554673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244481 (A226602 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225736.P9397884408435554673

/-! ## A225736.P13331154978798872746

`lt[1, A194274(A226602(n))-A118759(n)]`
-/

namespace A225736.P13331154978798872746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194274 (A226602 n).toNat - A118759 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A225736.P13331154978798872746

/-! ## A225736.P10703886463108984102

`lt[A118759(n+2), A194274(A226602(n))]`
-/

namespace A225736.P10703886463108984102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194274 (A226602 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225736.P10703886463108984102

/-!
# A225737: Numbers k such that k < d(k)^(29/10), where d(k) is the number of divisors of k.

The programs for A225737, there is no canonical definition to state claims against.
-/

/-! ## A225737.P9411062401882493721

`lt[A088932(n), A088914(A032741(n))]`
-/

namespace A225737.P9411062401882493721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088932 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088914 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225737.P9411062401882493721

/-! ## A225737.P3483511688787381100

`lt[A272978(n+1), A336627(A048785(n))]`
-/

namespace A225737.P3483511688787381100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336627 (A048785 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225737.P3483511688787381100

/-! ## A225737.P13193274027189912528

`lt[A090104(A000265(n+1)), A220134(n)]`
-/

namespace A225737.P13193274027189912528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090104 (A000265 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220134 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225737.P13193274027189912528

/-! ## A225737.P10911546845004878252

`lt[A196255(n+1), A007092(A211437(n))]`
-/

namespace A225737.P10911546845004878252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196255 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A211437 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225737.P10911546845004878252

/-! ## A225737.P12003451674406112120

`lt[A105965(n+1), A226602(n²)²]`
-/

namespace A225737.P12003451674406112120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105965 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226602 (n ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225737.P12003451674406112120

/-!
# A225739: Palindromic squares whose sum of digits is also a palindromic square.

The programs for A225739, there is no canonical definition to state claims against.
-/

/-! ## A225739.P17076895928938519686

`∩[A082208(n+1), (n+1)²]`
-/

namespace A225739.P17076895928938519686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082208 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A225739.P17076895928938519686

/-! ## A225739.P10014907739969765174

`record[A055483(A007961(n+1))²]`
-/

namespace A225739.P10014907739969765174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055483 (A007961 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225739.P10014907739969765174

/-! ## A225739.P5844821806302782019

`A059729(A069748(n+2))`
-/

namespace A225739.P5844821806302782019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059729 (A069748 (n + 2)).toNat

end

end A225739.P5844821806302782019

/-!
# A225740: Number of arrangements of n nonattacking Queens on an n X n board, with no Queens on both main diagonals.

The programs for A225740, there is no canonical definition to state claims against.
-/

/-! ## A225740.P11264462564045825913

`and(A118212(A210600(n+1)), A192781(n+1))`
-/

namespace A225740.P11264462564045825913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A118212 (A210600 (n + 1)).toNat) (A192781 (n + 1))

end

end A225740.P11264462564045825913

/-!
# A225742: Numbers >= 10 that are divisible by the sum and difference of their digits.

The programs for A225742, there is no canonical definition to state claims against.
-/

/-! ## A225742.P13324529537847261575

`∩[A270263(n+1)%A330859(n), A327709(n+1)]`
-/

namespace A225742.P13324529537847261575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A270263 (n + 1)) (A330859 (n + 100))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327709 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225742.P13324529537847261575

/-! ## A225742.P6021765181308756189

`∩[A048378(n+1), A327709(n+1)]%A103117(n+5)`
-/

namespace A225742.P6021765181308756189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048378 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327709 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A103117 (n + 5))

end

end A225742.P6021765181308756189

/-! ## A225742.P14246582687315697985

`∩[A270263(n+1), A327709(n+1)]%A103117(n+5)`
-/

namespace A225742.P14246582687315697985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327709 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A103117 (n + 5))

end

end A225742.P14246582687315697985

/-! ## A225742.P11314291657089284174

`∩[A048378(n+1), A129120(n+1)]`
-/

namespace A225742.P11314291657089284174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048378 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129120 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225742.P11314291657089284174

/-! ## A225742.P743243804353948999

`∩[A129120(n+1), A270263(n+1)]`
-/

namespace A225742.P743243804353948999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270263 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225742.P743243804353948999

/-!
# A225743: Triangular array: row n is least squarefree word of length n using positive integers.

The programs for A225743, the canonical program `A225743.P7700796070945028792` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225743 has offset 1).

The definition of A225743 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A225743.P9128201937090546870

`A001511(col(n)+1)`
-/

namespace A225743.P9128201937090546870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (SequenceMachineLib.triCol n + 1)

end

end A225743.P9128201937090546870

namespace A225743

/-- `A001511(col(n)+1)` -/
def P9128201937090546870.Spec : Prop :=
  ∀ n, P9128201937090546870.a n = A225743 (n + 1)

end A225743

/-! ## A225743.P7700796070945028792

`val(A002260(n+1), 2)+1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A225743

/-- `val(A002260(n+1), 2)+1` -/
def P7700796070945028792.Spec : Prop :=
  ∀ n, (P7700796070945028792.a n : ℤ) = A225743 (n + 1)

theorem P7700796070945028792.correct : P7700796070945028792.Spec := by
  intro n
  simp only [A225743, Nat.add_sub_cancel]

end A225743

/-! ## A225743.P18228306539087278802

`val(A002262(n)+1, 2)+1`
-/

namespace A225743.P18228306539087278802
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A002262 n + 1).toNat 2 + 1

end

end A225743.P18228306539087278802

namespace A225743

/-- `val(A002262(n)+1, 2)+1` -/
def P18228306539087278802.Spec : Prop :=
  ∀ n, (P18228306539087278802.a n : ℤ) = A225743 (n + 1)

theorem P18228306539087278802.correct : P18228306539087278802.Spec := by
  intro n
  simp only [A225743, Nat.add_sub_cancel, A225743.P18228306539087278802.a, A225743.P7700796070945028792.a, A002260, A002260.P9170571874073898642.a, A002262, A002262.P17823619022233514403.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A225743

/-! ## A225743.P11607935045415259486

`val(A158405(n+1)+1, 2)`
-/

namespace A225743.P11607935045415259486
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A158405 (n + 1) + 1).toNat 2

end

end A225743.P11607935045415259486

namespace A225743

/-- `val(A158405(n+1)+1, 2)` -/
def P11607935045415259486.Spec : Prop :=
  ∀ n, (P11607935045415259486.a n : ℤ) = A225743 (n + 1)

end A225743

/-! ## A225743.P1899229001052458874

`val(sqrt(A133819(n+1)), 2)+1`
-/

namespace A225743.P1899229001052458874
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway (Real.sqrt (A133819 (n + 1) : ℝ))).toNat 2 + 1

end

end A225743.P1899229001052458874

namespace A225743

/-- `val(sqrt(A133819(n+1)), 2)+1` -/
def P1899229001052458874.Spec : Prop :=
  ∀ n, (P1899229001052458874.a n : ℤ) = A225743 (n + 1)

end A225743

/-! ## A225743.P13317748262070999002

`val(val(A204985(n+1)², 2), 2)`
-/

namespace A225743.P13317748262070999002
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.valuation (A204985 (n + 1) ^ 2).toNat 2) 2

end

end A225743.P13317748262070999002

namespace A225743

/-- `val(val(A204985(n+1)², 2), 2)` -/
def P13317748262070999002.Spec : Prop :=
  ∀ n, (P13317748262070999002.a n : ℤ) = A225743 (n + 1)

end A225743

/-! ## A225743.P2689611655485938427

`val(comp[C(n, 2)]-A061579(n), 2)`
-/

namespace A225743.P2689611655485938427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - A061579 n).toNat 2

end

end A225743.P2689611655485938427

namespace A225743

/-- `val(comp[C(n, 2)]-A061579(n), 2)` -/
def P2689611655485938427.Spec : Prop :=
  ∀ n, (P2689611655485938427.a n : ℤ) = A225743 (n + 1)

end A225743

/-! ## A225743.P17308714232874281630

`A001511(A134199(n))`
-/

namespace A225743.P17308714232874281630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A134199 n).toNat

end

end A225743.P17308714232874281630

namespace A225743

/-- `A001511(A134199(n))` -/
def P17308714232874281630.Spec : Prop :=
  ∀ n, P17308714232874281630.a n = A225743 (n + 1)

end A225743

/-! ## A225743.P12037285477030104423

`A050605(A174028(n))`
-/

namespace A225743.P12037285477030104423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050605 (A174028 n).toNat

end

end A225743.P12037285477030104423

namespace A225743

/-- `A050605(A174028(n))` -/
def P12037285477030104423.Spec : Prop :=
  ∀ n, P12037285477030104423.a n = A225743 (n + 1)

end A225743

/-! ## A225743.P17130596353387701295

`A128807(A112367(n))`
-/

namespace A225743.P17130596353387701295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128807 (A112367 n).toNat

end

end A225743.P17130596353387701295

namespace A225743

/-- `A128807(A112367(n))` -/
def P17130596353387701295.Spec : Prop :=
  ∀ n, P17130596353387701295.a n = A225743 (n + 1)

end A225743

/-! ## A225743.P9607896217331901664

`A001511(A002260(n+1))`
-/

namespace A225743.P9607896217331901664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A002260 (n + 1)).toNat

end

end A225743.P9607896217331901664

namespace A225743

/-- `A001511(A002260(n+1))` -/
def P9607896217331901664.Spec : Prop :=
  ∀ n, P9607896217331901664.a n = A225743 (n + 1)

end A225743

/-! ## A225743.P6845286225225492895

`A001511(A002262(n)+1)`
-/

namespace A225743.P6845286225225492895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A002262 n + 1).toNat

end

end A225743.P6845286225225492895

namespace A225743

/-- `A001511(A002262(n)+1)` -/
def P6845286225225492895.Spec : Prop :=
  ∀ n, P6845286225225492895.a n = A225743 (n + 1)

end A225743

/-! ## A225743.P3464293347736744125

`A050603(A158405(n+1))`
-/

namespace A225743.P3464293347736744125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050603 (A158405 (n + 1)).toNat

end

end A225743.P3464293347736744125

namespace A225743

/-- `A050603(A158405(n+1))` -/
def P3464293347736744125.Spec : Prop :=
  ∀ n, P3464293347736744125.a n = A225743 (n + 1)

end A225743

/-! ## A225743.P14183771674545695759

`A136480(A131225(n+1))`
-/

namespace A225743.P14183771674545695759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (A131225 (n + 1)).toNat

end

end A225743.P14183771674545695759

namespace A225743

/-- `A136480(A131225(n+1))` -/
def P14183771674545695759.Spec : Prop :=
  ∀ n, P14183771674545695759.a n = A225743 (n + 1)

end A225743

/-! ## A225743.P2306341205045357864

`A094267(2*A002262(n))`
-/

namespace A225743.P2306341205045357864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094267 (2 * A002262 n).toNat

end

end A225743.P2306341205045357864

namespace A225743

/-- `A094267(2*A002262(n))` -/
def P2306341205045357864.Spec : Prop :=
  ∀ n, P2306341205045357864.a n = A225743 (n + 1)

end A225743

/-! ## A225743.P2654507189841063880

`A007814(A002262(n)+1)+1`
-/

namespace A225743.P2654507189841063880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A002262 n + 1).toNat + 1

end

end A225743.P2654507189841063880

namespace A225743

/-- `A007814(A002262(n)+1)+1` -/
def P2654507189841063880.Spec : Prop :=
  ∀ n, P2654507189841063880.a n = A225743 (n + 1)

end A225743

/-! ## A225743.P7421172188631605460

`2-A088705(A002262(n)+1)`
-/

namespace A225743.P7421172188631605460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A088705 (A002262 n + 1).toNat

end

end A225743.P7421172188631605460

namespace A225743

/-- `2-A088705(A002262(n)+1)` -/
def P7421172188631605460.Spec : Prop :=
  ∀ n, P7421172188631605460.a n = A225743 (n + 1)

end A225743

/-! ## A225743.P5405076568278795603

`A007814(2*A002260(n+1))`
-/

namespace A225743.P5405076568278795603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (2 * A002260 (n + 1)).toNat

end

end A225743.P5405076568278795603

namespace A225743

/-- `A007814(2*A002260(n+1))` -/
def P5405076568278795603.Spec : Prop :=
  ∀ n, P5405076568278795603.a n = A225743 (n + 1)

end A225743

/-! ## A225743.P4358673723154714863

`A067029(2*A002260(n+1))`
-/

namespace A225743.P4358673723154714863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (2 * A002260 (n + 1)).toNat

end

end A225743.P4358673723154714863

namespace A225743

/-- `A067029(2*A002260(n+1))` -/
def P4358673723154714863.Spec : Prop :=
  ∀ n, P4358673723154714863.a n = A225743 (n + 1)

end A225743

/-! ## A225743.P14298347287388201766

`A136480(2*(A002262(n)+1))`
-/

namespace A225743.P14298347287388201766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (2 * (A002262 n + 1)).toNat

end

end A225743.P14298347287388201766

namespace A225743

/-- `A136480(2*(A002262(n)+1))` -/
def P14298347287388201766.Spec : Prop :=
  ∀ n, P14298347287388201766.a n = A225743 (n + 1)

end A225743

/-!
# A225744: The number of isomorphism classes of connected, Generalized Alexander quandles of order n.

The programs for A225744, there is no canonical definition to state claims against.
-/

/-! ## A225744.P13942582892522887753

`A279372(A046682(n))+A193067(n+1)`
-/

namespace A225744.P13942582892522887753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279372 (A046682 n).toNat + A193067 (n + 1)

end

end A225744.P13942582892522887753

/-! ## A225744.P17798181019837660680

`A193067(n+1)+A102679(A075500(n+1))`
-/

namespace A225744.P17798181019837660680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193067 (n + 1) + A102679 (A075500 (n + 1)).toNat

end

end A225744.P17798181019837660680

/-! ## A225744.P15398195100428889117

`or(A160086(n+1), A193067(A187829(n+1)))`
-/

namespace A225744.P15398195100428889117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A160086 (n + 1)) (A193067 (A187829 (n + 1)).toNat)

end

end A225744.P15398195100428889117

/-! ## A225744.P17316892810165617300

`or(A193067(A187829(n+1)), A200221(n+1))`
-/

namespace A225744.P17316892810165617300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A193067 (A187829 (n + 1)).toNat) (A200221 (n + 1))

end

end A225744.P17316892810165617300

/-! ## A225744.P17675735636959826467

`A207762(A033493(n+3))%A078587(n+4)`
-/

namespace A225744.P17675735636959826467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207762 (A033493 (n + 3)).toNat) (A078587 (n + 4))

end

end A225744.P17675735636959826467

/-!
# A225745: Smallest k such that n numbers can be picked in {1,...,k} with no four in arithmetic progression.

The programs for A225745, there is no canonical definition to state claims against.
-/

/-! ## A225745.P15526568845902907235

`comp[A003003(n+1)+n]+1-n`
-/

namespace A225745.P15526568845902907235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003003 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 : ℤ) - (n : ℤ)

end

end A225745.P15526568845902907235

/-!
# A225747: a(n) = smallest prime q > a(n-1) such that 2*prime(n)*q^prime(n)+1 is also prime.

The programs for A225747, there is no canonical definition to state claims against.
-/

/-! ## A225747.P569939628702390572

`A268391(2^A114020(n))`
-/

namespace A225747.P569939628702390572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268391 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A114020 n : ℤ))).toNat

end

end A225747.P569939628702390572

/-!
# A225749: Triangle T(n,k) giving numerator of integral_{x=0..1} B(n,x)*B(k,x) dx, B = Bernoulli polynomial, n >= 1, 1 <= k <= n.

The programs for A225749, there is no canonical definition to state claims against.
-/

/-! ## A225749.P5145152459809401675

`A287703(A014132(n+1))%A277200(A319952(n+2))`
-/

namespace A225749.P5145152459809401675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287703 (A014132 (n + 1)).toNat) (A277200 (A319952 (n + 2)).toNat)

end

end A225749.P5145152459809401675

/-! ## A225749.P12909913309404594017

`A349457(A296441(n))+A104975(n)`
-/

namespace A225749.P12909913309404594017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349457 (A296441 n).toNat + A104975 n

end

end A225749.P12909913309404594017

/-! ## A225749.P9748776997986456737

`A061494(A144304(n))*A104975(n)`
-/

namespace A225749.P9748776997986456737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061494 (A144304 n).toNat * A104975 n

end

end A225749.P9748776997986456737

/-! ## A225749.P17074221716585891995

`A287703(A014132(n+1))^A022166(n)`
-/

namespace A225749.P17074221716585891995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287703 (A014132 (n + 1)).toNat : ℚ) ^ (A022166 n : ℤ)

end

end A225749.P17074221716585891995

/-! ## A225749.P7184376666392793381

`A287703(A014132(n+1))^A007318(A213207(n))`
-/

namespace A225749.P7184376666392793381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287703 (A014132 (n + 1)).toNat : ℚ) ^ (A007318 (A213207 n).toNat : ℤ)

end

end A225749.P7184376666392793381

/-!
# A225751: Number of different figures obtained by a putting two Young diagrams of partitions lambda and mu, such that |lambda| + |mu| = n on top of each other.

The programs for A225751, there is no canonical definition to state claims against.
-/

/-! ## A225751.P16975849749000367602

`A035363(n)+∑[A086543(n)]`
-/

namespace A225751.P16975849749000367602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225751.P16975849749000367602

/-! ## A225751.P10814948429023809378

`A000070(n)+A035363(n)-A025065(n)`
-/

namespace A225751.P10814948429023809378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n + (A035363 n - A025065 n)

end

end A225751.P10814948429023809378

/-! ## A225751.P17770247218045547563

`A035363(n)+∑[A000041(n)-A035363(n)]`
-/

namespace A225751.P17770247218045547563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225751.P17770247218045547563

/-! ## A225751.P6115487108939361349

`A000041(n)+∑[A086543(n)]-A086543(n)`
-/

namespace A225751.P6115487108939361349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + (∑ j ∈ Finset.range (n + 1), f1 j - A086543 n)

end

end A225751.P6115487108939361349

/-! ## A225751.P17235223257199542250

`∑[A086543(n)+A002865(n)]-A086543(n)`
-/

namespace A225751.P17235223257199542250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086543 n + A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A086543 n

end

end A225751.P17235223257199542250

/-! ## A225751.P4197993290640449072

`A025065(2*n)+A035363(n)-A025065(n)`
-/

namespace A225751.P4197993290640449072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025065 (2 * n) + (A035363 n - A025065 n)

end

end A225751.P4197993290640449072

/-! ## A225751.P4503625066386629708

`A216053(n+1)-A330661(∑[n]+2)`
-/

namespace A225751.P4503625066386629708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216053 (n + 1) - A330661 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A225751.P4503625066386629708

/-! ## A225751.P915939950598276611

`A141155(ceil(n²/2)+n)`
-/

namespace A225751.P915939950598276611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141155 (⌈(n ^ 2 : ℚ) / 2⌉ + (n : ℤ)).toNat

end

end A225751.P915939950598276611

/-! ## A225751.P5324861887791129633

`A103919(∑[n])+∑[A086543(n)]`
-/

namespace A225751.P5324861887791129633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103919 (∑ j ∈ Finset.range (n + 1), f1 j) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A225751.P5324861887791129633

/-! ## A225751.P13547553721902104301

`A000070(n)-A386638(n+1)`
-/

namespace A225751.P13547553721902104301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n - A386638 (n + 1)

end

end A225751.P13547553721902104301

/-!
# A225752: Positions of incrementally largest terms in the continued fraction of the Glaisher-Kinkelin constant A.

The programs for A225752, there is no canonical definition to state claims against.
-/

/-! ## A225752.P17663612185207274301

`A099792(n+1)-1`
-/

namespace A225752.P17663612185207274301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099792 (n + 1) - 1

end

end A225752.P17663612185207274301

/-! ## A225752.P13456242858429638508

`A321800(n)+A099792(n+1)`
-/

namespace A225752.P13456242858429638508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 n + A099792 (n + 1)

end

end A225752.P13456242858429638508

/-! ## A225752.P2656089226739768142

`abs(A099792(n+1)+A033999(2*n+3))`
-/

namespace A225752.P2656089226739768142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A099792 (n + 1) + A033999 (2 * n + 3)|

end

end A225752.P2656089226739768142

/-! ## A225752.P9798152891366237582

`A099837(A084600(n))+A099792(n+1)`
-/

namespace A225752.P9798152891366237582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099837 (A084600 n).toNat + A099792 (n + 1)

end

end A225752.P9798152891366237582

/-! ## A225752.P3702828545226408396

`A292043(A050315(n))+A099792(n+1)`
-/

namespace A225752.P3702828545226408396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292043 (A050315 n).toNat + A099792 (n + 1)

end

end A225752.P3702828545226408396

/-!
# A225753: Triangle of transformations with k monotonic runs.

The programs for A225753, there is no canonical definition to state claims against.
-/

/-! ## A225753.P17919671387529561969

`A133332(A075349(n+2))`
-/

namespace A225753.P17919671387529561969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133332 (A075349 (n + 2)).toNat

end

end A225753.P17919671387529561969

/-! ## A225753.P3165780690220591600

`A133332(∑[A002024(n+1)]+1)`
-/

namespace A225753.P3165780690220591600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133332 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A225753.P3165780690220591600

/-!
# A225754: Primes p such that A217296(p) is a prime number. That is, when applying the walk of rotated-square spiral to the data of square spiral, on step p a prime number is hit.

The programs for A225754, there is no canonical definition to state claims against.
-/

/-! ## A225754.P16389411784242228098

`p?[∑[A328228(A328242(3*(n+1)))]]`
-/

namespace A225754.P16389411784242228098
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328228 (A328242 (3 * (n + 1))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A225754.P16389411784242228098

/-!
# A225756: Runs of consecutive numbers with the same number of divisors.

The programs for A225756, the canonical program `A225756.P8807305609864975192` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225756 has offset 1).

The definition of A225756 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A225756.P8807305609864975192

`∪[A005237(n+1), A083795(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A225756

/-- `∪[A005237(n+1), A083795(n+1)]` -/
def P8807305609864975192.Spec : Prop :=
  ∀ n, (P8807305609864975192.a n : ℤ) = A225756 (n + 1)

theorem P8807305609864975192.correct : P8807305609864975192.Spec := by
  intro n
  simp only [A225756, Nat.add_sub_cancel]

end A225756

/-! ## A225756.P1638369236459020882

`∪[eq[0, A341062(n+1)], A083795(n+1)]`
-/

namespace A225756.P1638369236459020882
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341062 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f4 j = (x : ℤ)) n

end

end A225756.P1638369236459020882

namespace A225756

/-- `∪[eq[0, A341062(n+1)], A083795(n+1)]` -/
def P1638369236459020882.Spec : Prop :=
  ∀ n, (P1638369236459020882.a n : ℤ) = A225756 (n + 1)

end A225756

/-! ## A225756.P14781376609028660830

`∪[A083795(n+1), eq[n, A347982(n+1)]]`
-/

namespace A225756.P14781376609028660830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083795 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347982 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A225756.P14781376609028660830

namespace A225756

/-- `∪[A083795(n+1), eq[n, A347982(n+1)]]` -/
def P14781376609028660830.Spec : Prop :=
  ∀ n, (P14781376609028660830.a n : ℤ) = A225756 (n + 1)

end A225756

/-! ## A225756.P4227163010674833503

`∪[eq[1, A130638(n+1)]+1, A083795(n+1)]`
-/

namespace A225756.P4227163010674833503
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130638 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f4 j = (x : ℤ)) n

end

end A225756.P4227163010674833503

namespace A225756

/-- `∪[eq[1, A130638(n+1)]+1, A083795(n+1)]` -/
def P4227163010674833503.Spec : Prop :=
  ∀ n, (P4227163010674833503.a n : ℤ) = A225756 (n + 1)

end A225756

/-! ## A225756.P5049097425126652223

`∪[eq[1, A171937(n+1)]+1, A083795(n+1)]`
-/

namespace A225756.P5049097425126652223
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171937 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f4 j = (x : ℤ)) n

end

end A225756.P5049097425126652223

namespace A225756

/-- `∪[eq[1, A171937(n+1)]+1, A083795(n+1)]` -/
def P5049097425126652223.Spec : Prop :=
  ∀ n, (P5049097425126652223.a n : ℤ) = A225756 (n + 1)

end A225756

/-! ## A225756.P1036681856307738441

`∪[A005237(A000027(n+1))+1, A005237(n+1)]`
-/

namespace A225756.P1036681856307738441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (A000027 (n + 1)).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A225756.P1036681856307738441

namespace A225756

/-- `∪[A005237(A000027(n+1))+1, A005237(n+1)]` -/
def P1036681856307738441.Spec : Prop :=
  ∀ n, (P1036681856307738441.a n : ℤ) = A225756 (n + 1)

end A225756

/-! ## A225756.P5260277807957818224

`∪[A020725(A083795(n+1)-2), A083795(n+1)]`
-/

namespace A225756.P5260277807957818224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A083795 (n + 1) - 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A225756.P5260277807957818224

namespace A225756

/-- `∪[A020725(A083795(n+1)-2), A083795(n+1)]` -/
def P5260277807957818224.Spec : Prop :=
  ∀ n, (P5260277807957818224.a n : ℤ) = A225756 (n + 1)

end A225756

/-! ## A225756.P10917267343316125216

`∪[A083795(n+1), A140578(n+1)]`
-/

namespace A225756.P10917267343316125216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083795 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A225756.P10917267343316125216

namespace A225756

/-- `∪[A083795(n+1), A140578(n+1)]` -/
def P10917267343316125216.Spec : Prop :=
  ∀ n, (P10917267343316125216.a n : ℤ) = A225756 (n + 1)

end A225756

/-!
# A225757: Table of consecutive numbers with the same sum of divisors.

The programs for A225757, there is no canonical definition to state claims against.
-/

/-! ## A225757.P14860773319464796199

`A002961(∑[log2(gcd(2, n))])+n%2`
-/

namespace A225757.P14860773319464796199
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002961 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + ((n % 2 : ℕ) : ℤ)

end

end A225757.P14860773319464796199

/-! ## A225757.P7665551788765229576

`∪[A002961(n+1), A231546(n+1)]`
-/

namespace A225757.P7665551788765229576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231546 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A225757.P7665551788765229576

/-! ## A225757.P3483999880524809022

`A002961(A008619(n))+A000035(n)`
-/

namespace A225757.P3483999880524809022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002961 (A008619 n).toNat + A000035 n

end

end A225757.P3483999880524809022

/-! ## A225757.P7645758371966603702

`A231546(A008619(n))-A059841(n)`
-/

namespace A225757.P7645758371966603702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231546 (A008619 n).toNat - A059841 n

end

end A225757.P7645758371966603702

/-! ## A225757.P918933557436131800

`A002961(A008619(n))+Δ[A004526(n)]`
-/

namespace A225757.P918933557436131800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002961 (A008619 n).toNat + (f1 (n + 1) - f1 n)

end

end A225757.P918933557436131800

/-! ## A225757.P15116788265063793390

`A231546(∑[A059841(n)])-A059841(n)`
-/

namespace A225757.P15116788265063793390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231546 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A059841 n

end

end A225757.P15116788265063793390

/-! ## A225757.P3018584951451589887

`A002961(A008615(A016789(n)))+A000035(n)`
-/

namespace A225757.P3018584951451589887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002961 (A008615 (A016789 n).toNat).toNat + A000035 n

end

end A225757.P3018584951451589887

/-! ## A225757.P8322784014419012820

`record[A231546(A193738(n))-A173018(n)]`
-/

namespace A225757.P8322784014419012820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231546 (A193738 n).toNat - A173018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225757.P8322784014419012820

/-!
# A225758: Runs of consecutive numbers with the same number and sum of divisors.

The programs for A225758, there is no canonical definition to state claims against.
-/

/-! ## A225758.P5904400961822252125

`∪[A054004(n+1)+1, A054004(n+1)]`
-/

namespace A225758.P5904400961822252125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054004 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054004 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A225758.P5904400961822252125

/-! ## A225758.P9814598460866200583

`A054004(A008619(n))+A000035(n)`
-/

namespace A225758.P9814598460866200583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054004 (A008619 n).toNat + A000035 n

end

end A225758.P9814598460866200583

/-! ## A225758.P5728197015981347987

`A054004(∑[A059841(n)])+A000035(n)`
-/

namespace A225758.P5728197015981347987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054004 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A000035 n

end

end A225758.P5728197015981347987

/-! ## A225758.P10759275730665766277

`A054004(A008619(n))+Δ[A004526(n)]`
-/

namespace A225758.P10759275730665766277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054004 (A008619 n).toNat + (f1 (n + 1) - f1 n)

end

end A225758.P10759275730665766277

/-! ## A225758.P12162138740270089572

`A054004(A008619(n))+char[A005408(n)]`
-/

namespace A225758.P12162138740270089572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054004 (A008619 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A225758.P12162138740270089572

/-! ## A225758.P11833094806721509123

`A054004(A008619(n))+A007814(A002522(n))`
-/

namespace A225758.P11833094806721509123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054004 (A008619 n).toNat + A007814 (A002522 n).toNat

end

end A225758.P11833094806721509123

/-!
# A225759: Primes p such that A179382((p+1)/2) = (p-1)/16.

The programs for A225759, there is no canonical definition to state claims against.
-/

/-! ## A225759.P14880377152965586067

`∩[A152308(n+1), A252279(n+1)]`
-/

namespace A225759.P14880377152965586067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225759.P14880377152965586067

/-! ## A225759.P14387904218734585028

`∩[A070184(n+1), A152308(n+1)]`
-/

namespace A225759.P14387904218734585028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225759.P14387904218734585028

/-! ## A225759.P6499248068360507538

`∩[A094407(n+1), A152308(n+1)]`
-/

namespace A225759.P6499248068360507538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225759.P6499248068360507538

/-! ## A225759.P11594846567928605142

`∩[A105389(n+1), A152308(n+1)]`
-/

namespace A225759.P11594846567928605142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225759.P11594846567928605142

/-! ## A225759.P17024535745833916020

`∩[A051073(n+1), A152308(n+1)]`
-/

namespace A225759.P17024535745833916020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225759.P17024535745833916020

/-! ## A225759.P1320429765893492470

`∩[A070181(n+1), A152308(n+1)]`
-/

namespace A225759.P1320429765893492470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225759.P1320429765893492470

/-! ## A225759.P10697457725593470519

`∩[A059287(n+1), A152308(n+1)]`
-/

namespace A225759.P10697457725593470519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059287 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225759.P10697457725593470519

/-!
# A225765: Least k>0 such that k^3+n is prime, or 0 if there is no such k.

The programs for A225765, there is no canonical definition to state claims against.
-/

/-! ## A225765.P3127557225908929565

`A231557(n+1)*A267773(A045925(n))`
-/

namespace A225765.P3127557225908929565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231557 (n + 1) * A267773 (A045925 n).toNat

end

end A225765.P3127557225908929565

/-! ## A225765.P12415015463828205233

`A231557(n+1)%A003644(A067311(n))`
-/

namespace A225765.P12415015463828205233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231557 (n + 1)) (A003644 (A067311 n).toNat)

end

end A225765.P12415015463828205233

/-! ## A225765.P11178298482262413773

`A117170(A108032(n))*A231557(n+1)`
-/

namespace A225765.P11178298482262413773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117170 (A108032 n).toNat * A231557 (n + 1)

end

end A225765.P11178298482262413773

/-! ## A225765.P6171116391412808276

`C(A231557(n+1), A107286(A277866(n)))`
-/

namespace A225765.P6171116391412808276
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A231557 (n + 1)).toNat (A107286 (A277866 n).toNat).toNat

end

end A225765.P6171116391412808276

/-! ## A225765.P6961876794071017855

`C(A231557(n+1), A032310(A256690(n+1)))`
-/

namespace A225765.P6961876794071017855
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A231557 (n + 1)).toNat (A032310 (A256690 (n + 1)).toNat).toNat

end

end A225765.P6961876794071017855

/-!
# A225766: Least k>0 such that k^4+n is prime, or 0 if k^4+n is always composite.

The programs for A225766, there is no canonical definition to state claims against.
-/

/-! ## A225766.P12477263478269376464

`∏{p}[∏{p}[n+1, #%n], #]%A070451(A050268(n+3))`
-/

namespace A225766.P12477263478269376464
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p % n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) (A070451 (A050268 (n + 3)).toNat)

end

end A225766.P12477263478269376464

/-! ## A225766.P3655790366414262731

`A007956(A077168(n))%A002445(n)`
-/

namespace A225766.P3655790366414262731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007956 (A077168 n).toNat) (A002445 n)

end

end A225766.P3655790366414262731

/-! ## A225766.P11526981963427191421

`gcd(A008612(A019299(n)), A153152(n))`
-/

namespace A225766.P11526981963427191421
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008612 (A019299 n).toNat) (A153152 n)

end

end A225766.P11526981963427191421

/-! ## A225766.P14518300794339238207

`gcd(A000096(A000537(n)), A225770(n))`
-/

namespace A225766.P14518300794339238207
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000096 (A000537 n).toNat) (A225770 n)

end

end A225766.P14518300794339238207

/-! ## A225766.P6513632331268466338

`A007956(n+1)%A107286(A016755(n))`
-/

namespace A225766.P6513632331268466338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007956 (n + 1)) (A107286 (A016755 n).toNat)

end

end A225766.P6513632331268466338

/-!
# A225767: Least k>0 such that k^5+n is prime, or 0 if k^5+n is never prime.

The programs for A225767, there is no canonical definition to state claims against.
-/

/-! ## A225767.P16666197565653146471

`A276976(C((char[A271625(n+1)]+1)*(n+1), n))`
-/

namespace A225767.P16666197565653146471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271625 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276976 (Nat.choose (((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1) * (n + 1)) n)

end

end A225767.P16666197565653146471

/-! ## A225767.P2234587959881808433

`A013632(n)*A051904(A049311(n+1))`
-/

namespace A225767.P2234587959881808433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 n * A051904 (A049311 (n + 1)).toNat

end

end A225767.P2234587959881808433

/-! ## A225767.P4944733526108746917

`A241299(A241299(n)*A342127(n+1))`
-/

namespace A225767.P4944733526108746917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241299 (A241299 n * A342127 (n + 1)).toNat

end

end A225767.P4944733526108746917

/-! ## A225767.P4632876357380694870

`A013632(n)*A063647(A318960(n+2))`
-/

namespace A225767.P4632876357380694870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 n * A063647 (A318960 (n + 2)).toNat

end

end A225767.P4632876357380694870

/-! ## A225767.P8477988200556113489

`A051904(A049311(n+1))*A276976(n+1)`
-/

namespace A225767.P8477988200556113489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (A049311 (n + 1)).toNat * A276976 (n + 1)

end

end A225767.P8477988200556113489

/-!
# A225771: Numbers that are positive integer divisors of 1 + 2*x^2 where x is a positive integer.

The programs for A225771, the canonical program `A225771.P7079842939819002602` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225771 has offset 1).

The definition of A225771 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A225771.P15114108820585028445

`∩[2*n+1, A057127(n+1)]`
-/

namespace A225771.P15114108820585028445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225771.P15114108820585028445

namespace A225771

/-- `∩[2*n+1, A057127(n+1)]` -/
def P15114108820585028445.Spec : Prop :=
  ∀ n, (P15114108820585028445.a n : ℤ) = A225771 (n + 1)

end A225771

/-! ## A225771.P7559628082783400794

`eq[A008594(n), A386315(n)]`
-/

namespace A225771.P7559628082783400794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008594 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386315 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A225771.P7559628082783400794

namespace A225771

/-- `eq[A008594(n), A386315(n)]` -/
def P7559628082783400794.Spec : Prop :=
  ∀ n, (P7559628082783400794.a n : ℤ) = A225771 (n + 1)

end A225771

/-! ## A225771.P247537100114581180

`record[A000265(A057127(n+1))]`
-/

namespace A225771.P247537100114581180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A057127 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225771.P247537100114581180

namespace A225771

/-- `record[A000265(A057127(n+1))]` -/
def P247537100114581180.Spec : Prop :=
  ∀ n, P247537100114581180.a n = A225771 (n + 1)

end A225771

/-! ## A225771.P15545880210284258987

`filter[A057127(n+1), A000035(#)]`
-/

namespace A225771.P15545880210284258987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A225771.P15545880210284258987

namespace A225771

/-- `filter[A057127(n+1), A000035(#)]` -/
def P15545880210284258987.Spec : Prop :=
  ∀ n, P15545880210284258987.a n = A225771 (n + 1)

end A225771

/-! ## A225771.P9361233184312754701

`filter[A057127(n+1), A035263(#)]`
-/

namespace A225771.P9361233184312754701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A225771.P9361233184312754701

namespace A225771

/-- `filter[A057127(n+1), A035263(#)]` -/
def P9361233184312754701.Spec : Prop :=
  ∀ n, P9361233184312754701.a n = A225771 (n + 1)

end A225771

/-! ## A225771.P2210999260948551029

`filter[A057127(n+1), A104106(#)]`
-/

namespace A225771.P2210999260948551029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A104106 (f1 j).toNat = 1) n)

end

end A225771.P2210999260948551029

namespace A225771

/-- `filter[A057127(n+1), A104106(#)]` -/
def P2210999260948551029.Spec : Prop :=
  ∀ n, P2210999260948551029.a n = A225771 (n + 1)

end A225771

/-! ## A225771.P3309677317847609302

`filter[A057127(n+1), A141260(#)]`
-/

namespace A225771.P3309677317847609302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A141260 (f1 j).toNat = 1) n)

end

end A225771.P3309677317847609302

namespace A225771

/-- `filter[A057127(n+1), A141260(#)]` -/
def P3309677317847609302.Spec : Prop :=
  ∀ n, P3309677317847609302.a n = A225771 (n + 1)

end A225771

/-! ## A225771.P5427010421503194101

`filter[A057127(n+1), A152822(#)]`
-/

namespace A225771.P5427010421503194101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A225771.P5427010421503194101

namespace A225771

/-- `filter[A057127(n+1), A152822(#)]` -/
def P5427010421503194101.Spec : Prop :=
  ∀ n, P5427010421503194101.a n = A225771 (n + 1)

end A225771

/-! ## A225771.P17262883983789317679

`filter[A057127(n+1), A259044(#)]`
-/

namespace A225771.P17262883983789317679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A259044 (f1 j).toNat = 1) n)

end

end A225771.P17262883983789317679

namespace A225771

/-- `filter[A057127(n+1), A259044(#)]` -/
def P17262883983789317679.Spec : Prop :=
  ∀ n, P17262883983789317679.a n = A225771 (n + 1)

end A225771

/-! ## A225771.P13333657529686687847

`filter[A057127(n+1), A259599(#)]`
-/

namespace A225771.P13333657529686687847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A259599 (f1 j).toNat = 1) n)

end

end A225771.P13333657529686687847

namespace A225771

/-- `filter[A057127(n+1), A259599(#)]` -/
def P13333657529686687847.Spec : Prop :=
  ∀ n, P13333657529686687847.a n = A225771 (n + 1)

end A225771

/-! ## A225771.P16450734809413212607

`filter[A057127(n+1), A260390(#)]`
-/

namespace A225771.P16450734809413212607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A260390 (f1 j).toNat = 1) n)

end

end A225771.P16450734809413212607

namespace A225771

/-- `filter[A057127(n+1), A260390(#)]` -/
def P16450734809413212607.Spec : Prop :=
  ∀ n, P16450734809413212607.a n = A225771 (n + 1)

end A225771

/-! ## A225771.P4189582083455642252

`filter[A057127(n+1), A373157(#)]`
-/

namespace A225771.P4189582083455642252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373157 (f1 j).toNat = 1) n)

end

end A225771.P4189582083455642252

namespace A225771

/-- `filter[A057127(n+1), A373157(#)]` -/
def P4189582083455642252.Spec : Prop :=
  ∀ n, P4189582083455642252.a n = A225771 (n + 1)

end A225771

/-! ## A225771.P3989935555710788160

`filter[A057127(n+1), A374134(#)]`
-/

namespace A225771.P3989935555710788160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A225771.P3989935555710788160

namespace A225771

/-- `filter[A057127(n+1), A374134(#)]` -/
def P3989935555710788160.Spec : Prop :=
  ∀ n, P3989935555710788160.a n = A225771 (n + 1)

end A225771

/-! ## A225771.P18208977514443561591

`filter[A057127(n+1), A379952(#)]`
-/

namespace A225771.P18208977514443561591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A225771.P18208977514443561591

namespace A225771

/-- `filter[A057127(n+1), A379952(#)]` -/
def P18208977514443561591.Spec : Prop :=
  ∀ n, P18208977514443561591.a n = A225771 (n + 1)

end A225771

/-! ## A225771.P13102682500186319271

`∩[A057127(n+1), A004273(n)]`
-/

namespace A225771.P13102682500186319271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225771.P13102682500186319271

namespace A225771

/-- `∩[A057127(n+1), A004273(n)]` -/
def P13102682500186319271.Spec : Prop :=
  ∀ n, (P13102682500186319271.a n : ℤ) = A225771 (n + 1)

end A225771

/-! ## A225771.P7772384563940408693

`∩[A057127(n+1), A005408(n)]`
-/

namespace A225771.P7772384563940408693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225771.P7772384563940408693

namespace A225771

/-- `∩[A057127(n+1), A005408(n)]` -/
def P7772384563940408693.Spec : Prop :=
  ∀ n, (P7772384563940408693.a n : ℤ) = A225771 (n + 1)

end A225771

/-! ## A225771.P18184755868449268919

`∩[A057127(n+1), A060747(n)]`
-/

namespace A225771.P18184755868449268919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225771.P18184755868449268919

namespace A225771

/-- `∩[A057127(n+1), A060747(n)]` -/
def P18184755868449268919.Spec : Prop :=
  ∀ n, (P18184755868449268919.a n : ℤ) = A225771 (n + 1)

end A225771

/-! ## A225771.P16325663478393049725

`∩[A057127(n+1), A047471(n+1)]`
-/

namespace A225771.P16325663478393049725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225771.P16325663478393049725

namespace A225771

/-- `∩[A057127(n+1), A047471(n+1)]` -/
def P16325663478393049725.Spec : Prop :=
  ∀ n, (P16325663478393049725.a n : ℤ) = A225771 (n + 1)

end A225771

/-! ## A225771.P6193246368073800031

`A057127(eq[1, gcd(2, A057127(n+1))]+1)`
-/

namespace A225771.P6193246368073800031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A057127 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A225771.P6193246368073800031

namespace A225771

/-- `A057127(eq[1, gcd(2, A057127(n+1))]+1)` -/
def P6193246368073800031.Spec : Prop :=
  ∀ n, P6193246368073800031.a n = A225771 (n + 1)

end A225771

/-! ## A225771.P7079842939819002602

`eq[A000005(n+1), A002325(n+1)]+1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A225771

/-- `eq[A000005(n+1), A002325(n+1)]+1` -/
def P7079842939819002602.Spec : Prop :=
  ∀ n, (P7079842939819002602.a n : ℤ) = A225771 (n + 1)

theorem P7079842939819002602.correct : P7079842939819002602.Spec := by
  intro n
  simp only [A225771, Nat.add_sub_cancel]

end A225771

/-!
# A225772: Number of 2-element sets of mapping patterns from n points to themselves; the number of 2-element sets of transformations on n points up to conjugation.

The programs for A225772, there is no canonical definition to state claims against.
-/

/-! ## A225772.P10529975734437630594

`A054745(n+1)-A001372(n+1)`
-/

namespace A225772.P10529975734437630594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054745 (n + 1) - A001372 (n + 1)

end

end A225772.P10529975734437630594

/-! ## A225772.P7402561182459892106

`Δ[∑[A054745(n)]-A125023(n)]`
-/

namespace A225772.P7402561182459892106
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054745 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A125023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A225772.P7402561182459892106

/-! ## A225772.P13769629292706187911

`A054745(n+1)-Δ[A125023(n)]`
-/

namespace A225772.P13769629292706187911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054745 (n + 1) - (f1 (n + 1) - f1 n)

end

end A225772.P13769629292706187911

/-! ## A225772.P12276958047436574507

`A054745(n+1)-A350571(A000217(n+1))`
-/

namespace A225772.P12276958047436574507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054745 (n + 1) - A350571 (A000217 (n + 1)).toNat

end

end A225772.P12276958047436574507

/-!
# A225773: The squares on a chessboard that are black, counting from top left corner and down.

The programs for A225773, there is no canonical definition to state claims against.
-/

/-! ## A225773.P8045456876436870094

`record[floor(or(14, n)/7)]`
-/

namespace A225773.P8045456876436870094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 14 n : ℚ) / 7⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225773.P8045456876436870094

/-! ## A225773.P17657882972948059572

`record[floor(xor(14, n)/7)]`
-/

namespace A225773.P17657882972948059572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 14 n : ℚ) / 7⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225773.P17657882972948059572

/-! ## A225773.P16280663864094429838

`comp[n-and(8, 7*n)]`
-/

namespace A225773.P16280663864094429838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.land 8 (7 * n) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A225773.P16280663864094429838

/-! ## A225773.P13063790659833529580

`char[and(n, -5)]+Δ[n²]`
-/

namespace A225773.P13063790659833529580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-5)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A225773.P13063790659833529580

/-! ## A225773.P5943725137178383055

`gcd(2, C(n, 4))+2*n`
-/

namespace A225773.P5943725137178383055
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (Nat.choose n 4) + 2 * n

end

end A225773.P5943725137178383055

/-!
# A225779: Largest coefficient of (1 + x + ... + x^11)^n.

The programs for A225779, there is no canonical definition to state claims against.
-/

/-! ## A225779.P8146098387300011411

`A077042(eq[12, A002262(n)])`
-/

namespace A225779.P8146098387300011411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077042 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A225779.P8146098387300011411

/-! ## A225779.P11611884993750650209

`A077042(eq[13, A193738(n)])`
-/

namespace A225779.P11611884993750650209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077042 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A225779.P11611884993750650209

/-! ## A225779.P622850399781167394

`A077042(eq[12, A144328(n+1)])`
-/

namespace A225779.P622850399781167394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077042 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A225779.P622850399781167394

/-! ## A225779.P17658638794968489528

`A077042(eq[13, A002260(n+1)])`
-/

namespace A225779.P17658638794968489528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077042 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A225779.P17658638794968489528

/-! ## A225779.P10078535155138366567

`A077042(A000096(n+12)-n)`
-/

namespace A225779.P10078535155138366567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077042 (A000096 (n + 12) - (n : ℤ)).toNat

end

end A225779.P10078535155138366567

/-!
# A225780: Numbers such that both n and its reversal are divisible by sum of digits of n.

The programs for A225780, there is no canonical definition to state claims against.
-/

/-! ## A225780.P2769099653415051329

`A225782(n+1)%A016825(A000292(n))`
-/

namespace A225780.P2769099653415051329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225782 (n + 1)) (A016825 (A000292 n).toNat)

end

end A225780.P2769099653415051329

/-! ## A225780.P3097147913754577937

`A225782(n+1)+A007814(A260554(2*(n+2)))`
-/

namespace A225780.P3097147913754577937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225782 (n + 1) + A007814 (A260554 (2 * (n + 2))).toNat

end

end A225780.P3097147913754577937

/-! ## A225780.P15404440962095377083

`A225782(n+1)+A185705(A165412(n+1))`
-/

namespace A225780.P15404440962095377083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225782 (n + 1) + A185705 (A165412 (n + 1)).toNat

end

end A225780.P15404440962095377083

/-! ## A225780.P15133651643888649107

`A070435(A053755(n+2))*A225782(n+1)`
-/

namespace A225780.P15133651643888649107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070435 (A053755 (n + 2)).toNat * A225782 (n + 1)

end

end A225780.P15133651643888649107

/-! ## A225780.P15264761412291689157

`lcm(A062157(A008277(n+1)), A225782(n+1))`
-/

namespace A225780.P15264761412291689157
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A062157 (A008277 (n + 1)).toNat) (A225782 (n + 1))

end

end A225780.P15264761412291689157

/-!
# A225781: Numbers k such that both k and (k+1)/2 are primes and evil.

The programs for A225781, the canonical program `A225781.P10701421741266103451` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225781 has offset 1).

The definition of A225781 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 996 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A225781.P6849108066869209511

`2*A234999(n+2)-1`
-/

namespace A225781.P6849108066869209511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A234999 (n + 2) - 1

end

end A225781.P6849108066869209511

namespace A225781

/-- `2*A234999(n+2)-1` -/
def P6849108066869209511.Spec : Prop :=
  ∀ n, P6849108066869209511.a n = A225781 (n + 1)

end A225781

/-! ## A225781.P2165324871884433533

`A008683(A020483(n))+2*A234999(n+2)`
-/

namespace A225781.P2165324871884433533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A020483 n).toNat + 2 * A234999 (n + 2)

end

end A225781.P2165324871884433533

namespace A225781

/-- `A008683(A020483(n))+2*A234999(n+2)` -/
def P2165324871884433533.Spec : Prop :=
  ∀ n, P2165324871884433533.a n = A225781 (n + 1)

end A225781

/-! ## A225781.P10701421741266103451

`p?[2*A027699(n+1)-1]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A225781

/-- `p?[2*A027699(n+1)-1]` -/
def P10701421741266103451.Spec : Prop :=
  ∀ n, P10701421741266103451.a n = A225781 (n + 1)

theorem P10701421741266103451.correct : P10701421741266103451.Spec := by
  intro n
  simp only [A225781, Nat.add_sub_cancel]

end A225781

/-! ## A225781.P2166205125102266100

`∩[A027699(n+1), A137815(n+1)]`
-/

namespace A225781.P2166205125102266100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027699 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225781.P2166205125102266100

namespace A225781

/-- `∩[A027699(n+1), A137815(n+1)]` -/
def P2166205125102266100.Spec : Prop :=
  ∀ n, (P2166205125102266100.a n : ℤ) = A225781 (n + 1)

end A225781

/-! ## A225781.P4882848350318497526

`∩[A027699(n+1), A171262(n+1)]`
-/

namespace A225781.P4882848350318497526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027699 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225781.P4882848350318497526

namespace A225781

/-- `∩[A027699(n+1), A171262(n+1)]` -/
def P4882848350318497526.Spec : Prop :=
  ∀ n, (P4882848350318497526.a n : ℤ) = A225781 (n + 1)

end A225781

/-! ## A225781.P2258415499330872895

`∩[A027699(n+1), A350593(n+1)]`
-/

namespace A225781.P2258415499330872895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027699 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225781.P2258415499330872895

namespace A225781

/-- `∩[A027699(n+1), A350593(n+1)]` -/
def P2258415499330872895.Spec : Prop :=
  ∀ n, (P2258415499330872895.a n : ℤ) = A225781 (n + 1)

end A225781

/-! ## A225781.P7040086623170809039

`∩[A137815(n+1), A385126(n+1)]`
-/

namespace A225781.P7040086623170809039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225781.P7040086623170809039

namespace A225781

/-- `∩[A137815(n+1), A385126(n+1)]` -/
def P7040086623170809039.Spec : Prop :=
  ∀ n, (P7040086623170809039.a n : ℤ) = A225781 (n + 1)

end A225781

/-! ## A225781.P3578870387833233344

`∩[A171262(n+1), A385126(n+1)]`
-/

namespace A225781.P3578870387833233344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225781.P3578870387833233344

namespace A225781

/-- `∩[A171262(n+1), A385126(n+1)]` -/
def P3578870387833233344.Spec : Prop :=
  ∀ n, (P3578870387833233344.a n : ℤ) = A225781 (n + 1)

end A225781

/-! ## A225781.P9294819082126706426

`∩[A350593(n+1), A385126(n+1)]`
-/

namespace A225781.P9294819082126706426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225781.P9294819082126706426

namespace A225781

/-- `∩[A350593(n+1), A385126(n+1)]` -/
def P9294819082126706426.Spec : Prop :=
  ∀ n, (P9294819082126706426.a n : ℤ) = A225781 (n + 1)

end A225781

/-! ## A225781.P5909928180234689221

`p?[A072055(A027700(n+1))-2]`
-/

namespace A225781.P5909928180234689221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (A027700 (n + 1)).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A225781.P5909928180234689221

namespace A225781

/-- `p?[A072055(A027700(n+1))-2]` -/
def P5909928180234689221.Spec : Prop :=
  ∀ n, P5909928180234689221.a n = A225781 (n + 1)

end A225781

/-! ## A225781.P14592395041028288356

`p?[A027699(n+1)+A006093(A027700(n+1))]`
-/

namespace A225781.P14592395041028288356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027699 (n + 1) + A006093 (A027700 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A225781.P14592395041028288356

namespace A225781

/-- `p?[A027699(n+1)+A006093(A027700(n+1))]` -/
def P14592395041028288356.Spec : Prop :=
  ∀ n, P14592395041028288356.a n = A225781 (n + 1)

end A225781

/-! ## A225781.P12917613094201875697

`∩[A093688(n+1), A171262(n+1)]`
-/

namespace A225781.P12917613094201875697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093688 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225781.P12917613094201875697

namespace A225781

/-- `∩[A093688(n+1), A171262(n+1)]` -/
def P12917613094201875697.Spec : Prop :=
  ∀ n, (P12917613094201875697.a n : ℤ) = A225781 (n + 1)

end A225781

/-! ## A225781.P9643343619076492322

`∩[A093688(n+1), A350593(n+1)]`
-/

namespace A225781.P9643343619076492322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093688 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225781.P9643343619076492322

namespace A225781

/-- `∩[A093688(n+1), A350593(n+1)]` -/
def P9643343619076492322.Spec : Prop :=
  ∀ n, (P9643343619076492322.a n : ℤ) = A225781 (n + 1)

end A225781

/-! ## A225781.P5281641010422693944

`∩[A171262(n+1), A384427(n+1)]`
-/

namespace A225781.P5281641010422693944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225781.P5281641010422693944

namespace A225781

/-- `∩[A171262(n+1), A384427(n+1)]` -/
def P5281641010422693944.Spec : Prop :=
  ∀ n, (P5281641010422693944.a n : ℤ) = A225781 (n + 1)

end A225781

/-! ## A225781.P16086619882081487538

`∩[A350593(n+1), A384427(n+1)]`
-/

namespace A225781.P16086619882081487538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225781.P16086619882081487538

namespace A225781

/-- `∩[A350593(n+1), A384427(n+1)]` -/
def P16086619882081487538.Spec : Prop :=
  ∀ n, (P16086619882081487538.a n : ℤ) = A225781 (n + 1)

end A225781

/-! ## A225781.P9043396118440111827

`∩[A027699(n+1), A162318(n+1)]`
-/

namespace A225781.P9043396118440111827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027699 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225781.P9043396118440111827

namespace A225781

/-- `∩[A027699(n+1), A162318(n+1)]` -/
def P9043396118440111827.Spec : Prop :=
  ∀ n, (P9043396118440111827.a n : ℤ) = A225781 (n + 1)

end A225781

/-! ## A225781.P929299269951272003

`∩[A027699(n+1), A063446(n+1)]`
-/

namespace A225781.P929299269951272003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027699 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225781.P929299269951272003

namespace A225781

/-- `∩[A027699(n+1), A063446(n+1)]` -/
def P929299269951272003.Spec : Prop :=
  ∀ n, (P929299269951272003.a n : ℤ) = A225781 (n + 1)

end A225781

/-! ## A225781.P11556574667033750973

`∩[A063446(n+1), A385126(n+1)]`
-/

namespace A225781.P11556574667033750973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063446 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225781.P11556574667033750973

namespace A225781

/-- `∩[A063446(n+1), A385126(n+1)]` -/
def P11556574667033750973.Spec : Prop :=
  ∀ n, (P11556574667033750973.a n : ℤ) = A225781 (n + 1)

end A225781

/-! ## A225781.P10170328086813242567

`filter[A005383(n+2), A254377(#)]`
-/

namespace A225781.P10170328086813242567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005383 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A254377 (f1 j).toNat = 1) n)

end

end A225781.P10170328086813242567

namespace A225781

/-- `filter[A005383(n+2), A254377(#)]` -/
def P10170328086813242567.Spec : Prop :=
  ∀ n, P10170328086813242567.a n = A225781 (n + 1)

end A225781

/-! ## A225781.P8315038906956755462

`filter[A079147(n+3), A254377(#)]`
-/

namespace A225781.P8315038906956755462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079147 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A254377 (f1 j).toNat = 1) n)

end

end A225781.P8315038906956755462

namespace A225781

/-- `filter[A079147(n+3), A254377(#)]` -/
def P8315038906956755462.Spec : Prop :=
  ∀ n, P8315038906956755462.a n = A225781 (n + 1)

end A225781

/-!
# A225785: Numbers n such that triangular(n) + triangular(2*n) is a triangular number.

The programs for A225785, there is no canonical definition to state claims against.
-/

/-! ## A225785.P15912888174676260425

`4*A077260(n)`
-/

namespace A225785.P15912888174676260425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A077260 n

end

end A225785.P15912888174676260425

/-! ## A225785.P8265697858630141279

`∑[lcm(3, A060645(n))]`
-/

namespace A225785.P8265697858630141279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A060645 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225785.P8265697858630141279

/-! ## A225785.P13775521648208533820

`4/5*A077261(n)`
-/

namespace A225785.P13775521648208533820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 5 * (A077261 n : ℚ)

end

end A225785.P13775521648208533820

/-! ## A225785.P16954694509402136443

`A077261(n)-A077260(n)`
-/

namespace A225785.P16954694509402136443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077261 n - A077260 n

end

end A225785.P16954694509402136443

/-! ## A225785.P13759130219369017866

`2*(A077259(n)+A077259(n)²)`
-/

namespace A225785.P13759130219369017866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A077259 n + A077259 n ^ 2)

end

end A225785.P13759130219369017866

/-! ## A225785.P5702282746376336051

`2*A351354(n+1)*A077259(n)`
-/

namespace A225785.P5702282746376336051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A351354 (n + 1) * A077259 n

end

end A225785.P5702282746376336051

/-! ## A225785.P10344149170054569155

`lcm(A000071(A007310(n+1)), A077260(n))`
-/

namespace A225785.P10344149170054569155
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000071 (A007310 (n + 1)).toNat) (A077260 n)

end

end A225785.P10344149170054569155

/-! ## A225785.P12699159830775865609

`floor(A190949(n+1)²/2)`
-/

namespace A225785.P12699159830775865609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A190949 (n + 1) ^ 2 : ℚ) / 2⌋

end

end A225785.P12699159830775865609

/-! ## A225785.P16190340898617811646

`∑[Δ[A257939(n+1)]%A007805(n)]`
-/

namespace A225785.P16190340898617811646
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257939 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A007805 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225785.P16190340898617811646

/-! ## A225785.P923692417133551855

`A257939(n+2)-2*A257940(n+2)`
-/

namespace A225785.P923692417133551855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257939 (n + 2) - 2 * A257940 (n + 2)

end

end A225785.P923692417133551855

/-!
# A225786: Numbers k such that oblong(2*k) + oblong(k) is a square, where oblong(k) = A002378(k) = k*(k+1).

The programs for A225786, the canonical program `A225786.P11139199767341721385` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225786 has offset 1).

The definition of A225786 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A225786.P11139199767341721385

`3/20*((2-sqrt(5))^(4*(n+1)-4)+(2+sqrt(5))^(4*(n+1)-4)-2)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A225786

/-- `3/20*((2-sqrt(5))^(4*(n+1)-4)+(2+sqrt(5))^(4*(n+1)-4)-2)` -/
def P11139199767341721385.Spec : Prop :=
  ∀ n, P11139199767341721385.a n = (A225786 (n + 1) : ℝ)

end A225786

/-!
# A225789: Least triangular number of the form p*triangular(n) where p is a prime number, or 0 if no such triangular number exists.

The programs for A225789, there is no canonical definition to state claims against.
-/

/-! ## A225789.P13992429744929421586

`A225787(n)*A000217(n)`
-/

namespace A225789.P13992429744929421586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225787 n * A000217 n

end

end A225789.P13992429744929421586

/-! ## A225789.P6221302839845270187

`A105340(n)*A225787(n)`
-/

namespace A225789.P6221302839845270187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105340 n * A225787 n

end

end A225789.P6221302839845270187

/-! ## A225789.P4384490907666442901

`A161680(n+1)*A225787(n)`
-/

namespace A225789.P4384490907666442901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (n + 1) * A225787 n

end

end A225789.P4384490907666442901

/-! ## A225789.P5928814555634938435

`(A000124(n)-1)*A225787(n)`
-/

namespace A225789.P5928814555634938435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000124 n - 1) * A225787 n

end

end A225789.P5928814555634938435

/-!
# A225792: Numbers n such that the sum of first n nontrivial prime powers (A025475 excluding 1) is divisible by n.

The programs for A225792, there is no canonical definition to state claims against.
-/

/-! ## A225792.P6717217551876019707

`A354254(n)+A081594(A136281(n))`
-/

namespace A225792.P6717217551876019707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354254 n + A081594 (A136281 n).toNat

end

end A225792.P6717217551876019707

/-!
# A225793: Numbers that can be uniquely expressed as (m + sum of digits of m) for some m.

The programs for A225793, there is no canonical definition to state claims against.
-/

/-! ## A225793.P2679354773726923513

`eq[A230093(A033716(n)), A230093(n)]`
-/

namespace A225793.P2679354773726923513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230093 (A033716 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230093 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A225793.P2679354773726923513

/-! ## A225793.P3997659876657307021

`eq[A178334(A262689(n)), A230093(n)]`
-/

namespace A225793.P3997659876657307021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A262689 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230093 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A225793.P3997659876657307021

/-! ## A225793.P2351686432276426921

`record[A176995(n+1)/A230093(A176995(n+1))]`
-/

namespace A225793.P2351686432276426921
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176995 (n + 1) : ℚ) / (A230093 (A176995 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225793.P2351686432276426921

/-! ## A225793.P1008283323685880907

`eq[1, A230093(A003963(A008578(n+1)))]`
-/

namespace A225793.P1008283323685880907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230093 (A003963 (A008578 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A225793.P1008283323685880907

/-! ## A225793.P8536994680222923608

`eq[2, A320004(A230093(n)^a(n-1)+1)]` with `a(0)=1`
-/

namespace A225793.P8536994680222923608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A320004 (SequenceMachineLib.roundAway ((A230093 n : ℚ) ^ (f2 (n - 1) : ℤ) + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A225793.P8536994680222923608

/-! ## A225793.P4288818281906888030

`eq[n, A233583(A230093(n)+n)]`
-/

namespace A225793.P4288818281906888030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A230093 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A225793.P4288818281906888030

/-! ## A225793.P9256135425369103282

`eq[1, A178334(n*A230093(n))]`
-/

namespace A225793.P9256135425369103282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 ((n : ℤ) * A230093 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A225793.P9256135425369103282

/-!
# A225794: Sizes of Garden of Eden partitions in Bulgarian Solitaire, given in the same order as the runlength codes of the corresponding partitions (A227753).

The programs for A225794, there is no canonical definition to state claims against.
-/

/-! ## A225794.P16005543819199079680

`A227183(A227753(n+1))`
-/

namespace A225794.P16005543819199079680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227183 (A227753 (n + 1)).toNat

end

end A225794.P16005543819199079680

/-! ## A225794.P18436249119082991864

`A227183(eq[0, A227752(n)])`
-/

namespace A225794.P18436249119082991864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227752 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227183 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A225794.P18436249119082991864

/-! ## A225794.P17328030100898933318

`A227183(lt[A227752(n), 1])`
-/

namespace A225794.P17328030100898933318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227752 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227183 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A225794.P17328030100898933318

/-! ## A225794.P14933732794886129200

`A227183(lt[4^A227185(n), n])`
-/

namespace A225794.P14933732794886129200
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A227185 n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227183 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A225794.P14933732794886129200

/-! ## A225794.P5106869640048991664

`A227183(lt[1, -A320042(n+1)]+1)`
-/

namespace A225794.P5106869640048991664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A320042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227183 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A225794.P5106869640048991664

/-! ## A225794.P1233766594445067227

`A227183(lt[2, A145037(xor(n, floor(n/2)))])`
-/

namespace A225794.P1233766594445067227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227183 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A225794.P1233766594445067227

/-!
# A225799: a(n) = Sum_{k=0..n} binomial(n,k) * 10^(n-k) * Fibonacci(n+k).

The programs for A225799, the canonical program `A225799.P2238645695953346766` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225799 has offset 0).

The definition of A225799 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A225799.P2238645695953346766

`13*a(n-1)+109*a(n-2)` with `a(0)=0, a(1)=11`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A225799

/-- `13*a(n-1)+109*a(n-2)` -/
def P2238645695953346766.Spec : Prop :=
  ∀ n, (P2238645695953346766.a n : ℤ) = A225799 n

theorem P2238645695953346766.correct : P2238645695953346766.Spec := by
  intro n
  simp only [A225799]

end A225799

/-! ## A225799.P7637646021604054181

`((13+11*sqrt(5))^n-(13-11*sqrt(5))^n)/(2^n*sqrt(5))`
-/

namespace A225799.P7637646021604054181
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((13 + 11 * Real.sqrt (5 : ℝ)) ^ n - (13 - 11 * Real.sqrt (5 : ℝ)) ^ n) / ((2 ^ n : ℝ) * Real.sqrt (5 : ℝ))

end

end A225799.P7637646021604054181

namespace A225799

/-- `((13+11*sqrt(5))^n-(13-11*sqrt(5))^n)/(2^n*sqrt(5))` -/
def P7637646021604054181.Spec : Prop :=
  ∀ n, P7637646021604054181.a n = (A225799 n : ℝ)

theorem P7637646021604054181.correct : P7637646021604054181.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A225799, Nat.add_sub_cancel, A225799.P7637646021604054181.a, A225799.P2238645695953346766.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A225799, Nat.add_sub_cancel, A225799.P7637646021604054181.a, A225799.P2238645695953346766.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A225799

