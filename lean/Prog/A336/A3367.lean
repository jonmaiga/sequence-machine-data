import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
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
import Seq.Opaque.C025

/-!
# A336700: Numbers k such that the odd part of (1+k) divides (1 + odd part of sigma(k)).

The programs for A336700, there is no canonical definition to state claims against.
-/

/-! ## A336700.P2459619531171317854

`A387415(A043317(n+1))`
-/

namespace A336700.P2459619531171317854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387415 (A043317 (n + 1)).toNat

end

end A336700.P2459619531171317854

/-! ## A336700.P15258199177651722662

`A387415(A044914(n+1))`
-/

namespace A336700.P15258199177651722662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387415 (A044914 (n + 1)).toNat

end

end A336700.P15258199177651722662

/-! ## A336700.P80641926481246573

`A387415(A055648(n+1))`
-/

namespace A336700.P80641926481246573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387415 (A055648 (n + 1)).toNat

end

end A336700.P80641926481246573

/-! ## A336700.P4371716415655780645

`A387415(A132378(n+1))`
-/

namespace A336700.P4371716415655780645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387415 (A132378 (n + 1)).toNat

end

end A336700.P4371716415655780645

/-! ## A336700.P9245795017099410912

`A387415(A004863(n+2))`
-/

namespace A336700.P9245795017099410912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387415 (A004863 (n + 2)).toNat

end

end A336700.P9245795017099410912

/-!
# A336701: Numbers k for which A000265(1+A000265(sigma(k))) is equal to A000265(1+k).

The programs for A336701, there is no canonical definition to state claims against.
-/

/-! ## A336701.P9381677493835206667

`A003817(n!+n)`
-/

namespace A336701.P9381677493835206667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 (Nat.factorial n + n)

end

end A336701.P9381677493835206667

/-! ## A336701.P2193538340342225896

`A062383(n!+n)-1`
-/

namespace A336701.P2193538340342225896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 (Nat.factorial n + n) - 1

end

end A336701.P2193538340342225896

/-! ## A336701.P16955194847730778345

`A003817(or(2^n, n!))`
-/

namespace A336701.P16955194847730778345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 (Nat.lor (2 ^ n) (Nat.factorial n))

end

end A336701.P16955194847730778345

/-! ## A336701.P226490635322216315

`A003817(∏[ceil(abs(γ-n))]+n)`
-/

namespace A336701.P226490635322216315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 (∏ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A336701.P226490635322216315

/-!
# A336702: Numbers whose abundancy index is a power of 2.

The programs for A336702, there is no canonical definition to state claims against.
-/

/-! ## A336702.P7676762763582819416

`∏{e}[2^n, A325637(#)]`
-/

namespace A336702.P7676762763582819416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A325637 (Nat.factorization (f1 n) p)

end

end A336702.P7676762763582819416

/-! ## A336702.P5084391133344725314

`record[A325637(A342010(n+1))^(n%2)]`
-/

namespace A336702.P5084391133344725314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325637 (A342010 (n + 1)).toNat ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336702.P5084391133344725314

/-! ## A336702.P9426712900085729967

`A325637(A028310(n))%A350973(n+5)`
-/

namespace A336702.P9426712900085729967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325637 (A028310 n).toNat) (A350973 (n + 5))

end

end A336702.P9426712900085729967

/-! ## A336702.P3073418560854911202

`∩[A007691(n+1), A351440(n+1)]`
-/

namespace A336702.P3073418560854911202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336702.P3073418560854911202

/-! ## A336702.P17275100705775732765

`∩[A325023(n+1), A351440(n+1)]`
-/

namespace A336702.P17275100705775732765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325023 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336702.P17275100705775732765

/-!
# A336703: Rectangular array read by antidiagonals. T(n,k) is the number of length k walks from {} to [n] in the digraph representation of the superset/subset relation on P([n]) the powerset of [n], n>=0, k>=0.

The programs for A336703, there is no canonical definition to state claims against.
-/

/-! ## A336703.P17758642229147622096

`A160162(A071919(n))^∑[A151722(n)]`
-/

namespace A336703.P17758642229147622096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151722 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160162 (A071919 n).toNat : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A336703.P17758642229147622096

/-! ## A336703.P3469502071208884767

`∑{d}[A071919(n), A348687(#*A002618(#))]`
-/

namespace A336703.P3469502071208884767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A348687 ((d : ℤ) * A002618 d).toNat

end

end A336703.P3469502071208884767

/-! ## A336703.P15272194096338170583

`A160162(A071919(n))^A007318(A025747(n))`
-/

namespace A336703.P15272194096338170583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160162 (A071919 n).toNat : ℚ) ^ (A007318 (A025747 n).toNat : ℤ)

end

end A336703.P15272194096338170583

/-! ## A336703.P3061614403908377609

`A009195(A000043(n+1))*A160162(A071919(n))`
-/

namespace A336703.P3061614403908377609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009195 (A000043 (n + 1)).toNat * A160162 (A071919 n).toNat

end

end A336703.P3061614403908377609

/-! ## A336703.P10113671419946651016

`A160162(∑[A151722(n)]*A071919(n))`
-/

namespace A336703.P10113671419946651016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151722 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160162 ((∑ j ∈ Finset.range (n + 1), f1 j) * A071919 n).toNat

end

end A336703.P10113671419946651016

/-!
# A336704: Number of nonisomorphic matroids of rank 4 on n labeled points.

The programs for A336704, there is no canonical definition to state claims against.
-/

/-! ## A336704.P11242724648325066996

`A053534(∑[n+5]+5)`
-/

namespace A336704.P11242724648325066996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053534 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A336704.P11242724648325066996

/-! ## A336704.P6814785384773782779

`record[gcd(A053534(n), A185700(n+5))]`
-/

namespace A336704.P6814785384773782779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053534 n) (A185700 (n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336704.P6814785384773782779

/-!
# A336705: Coordination sequence for the half-Manhattan lattice.

The programs for A336705, the canonical program `A336705.P9753560575267502364` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336705 has offset 0).

The definition of A336705 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A336705.P9753560575267502364

`2*a(n-1)-a(n-2)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=12, a(4)=16`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A336705

/-- `2*a(n-1)-a(n-2)` -/
def P9753560575267502364.Spec : Prop :=
  ∀ n, P9753560575267502364.a n = A336705 n

theorem P9753560575267502364.correct : P9753560575267502364.Spec := by
  intro n
  simp only [A336705]

end A336705

/-!
# A336707: Square array T(n,k), n>=0, k>=0, read by antidiagonals, where T(0,k) = 1 and T(n,k) = (1/n) * Sum_{j=1..n} 2^(n-j) * binomial(n,j) * binomial(n+(k-1)*j,j-1) for n > 0.

The programs for A336707, there is no canonical definition to state claims against.
-/

/-! ## A336707.P5774900915999869029

`A185284(A000931(n))+A122262(A128325(n))`
-/

namespace A336707.P5774900915999869029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A000931 n).toNat + A122262 (A128325 n).toNat

end

end A336707.P5774900915999869029

/-!
# A336708: Square array T(n,k), n>=0, k>=0, read by antidiagonals, where T(0,k) = 1 and T(n,k) = (1/n) * Sum_{j=1..n} (-1)^(n-j) * binomial(n,j) * binomial(n+(k-1)*j,j-1) for n > 0.

The programs for A336708, there is no canonical definition to state claims against.
-/

/-! ## A336708.P3764621583345412205

`A065359(A336707(n))%A135024(n+1)`
-/

namespace A336708.P3764621583345412205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065359 (A336707 n).toNat) (A135024 (n + 1))

end

end A336708.P3764621583345412205

/-!
# A336712: a(0) = 1 and a(n) = (1/n) * Sum_{k=1..n} 2^(n-k) * binomial(n,k) * binomial(n+(n-1)*k,k-1) for n > 0.

The programs for A336712, there is no canonical definition to state claims against.
-/

/-! ## A336712.P2762409692740308457

`A336707(∑[4*n])`
-/

namespace A336712.P2762409692740308457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336707 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A336712.P2762409692740308457

/-! ## A336712.P4881277341625216090

`gcd(C(2, n+2), A336707(A046092(n)))`
-/

namespace A336712.P4881277341625216090
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose 2 (n + 2) : ℤ) (A336707 (A046092 n).toNat)

end

end A336712.P4881277341625216090

/-! ## A336712.P11223574874862409385

`gcd(A000038(n), A336707(A046092(n)))`
-/

namespace A336712.P11223574874862409385
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A336707 (A046092 n).toNat)

end

end A336712.P11223574874862409385

/-! ## A336712.P12321563452099556405

`or(A000007(n), A336707(A046092(n)))`
-/

namespace A336712.P12321563452099556405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A336707 (A046092 n).toNat)

end

end A336712.P12321563452099556405

/-! ## A336712.P4370934025139542098

`or(A000007(n), A336707(A106232(n+1)))`
-/

namespace A336712.P4370934025139542098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A336707 (A106232 (n + 1)).toNat)

end

end A336712.P4370934025139542098

/-!
# A336713: a(0) = 1 and a(n) = (1/n) * Sum_{k=1..n} (-1)^(n-k) * binomial(n,k) * binomial(n+(n-1)*k,k-1) for n > 0.

The programs for A336713, there is no canonical definition to state claims against.
-/

/-! ## A336713.P8843005776020885595

`A336708(∑[4*n])`
-/

namespace A336713.P8843005776020885595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336708 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A336713.P8843005776020885595

/-! ## A336713.P11117713645065296771

`abs(A336708(A046092(n)))`
-/

namespace A336713.P11117713645065296771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A336708 (A046092 n).toNat|

end

end A336713.P11117713645065296771

/-! ## A336713.P14459882702122852996

`abs(A336708(∑[A008586(n)]))`
-/

namespace A336713.P14459882702122852996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A336708 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A336713.P14459882702122852996

/-! ## A336713.P5749877707574907776

`abs(A336708(A106232(n+1)))`
-/

namespace A336713.P5749877707574907776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A336708 (A106232 (n + 1)).toNat|

end

end A336713.P5749877707574907776

/-! ## A336713.P6663452945389399220

`lcm(A178334(n+1), A336708(A046092(n)))`
-/

namespace A336713.P6663452945389399220
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A178334 (n + 1)) (A336708 (A046092 n).toNat)

end

end A336713.P6663452945389399220

/-!
# A336714: a(0) = 1 and a(n) = (1/n) * Sum_{k=1..n} (-2)^(n-k) * binomial(n,k) * binomial(n+(n-1)*k,k-1) for n > 0.

The programs for A336714, there is no canonical definition to state claims against.
-/

/-! ## A336714.P16993059048902909504

`A336709(∑[4*n])`
-/

namespace A336714.P16993059048902909504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336709 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A336714.P16993059048902909504

/-! ## A336714.P6068825612079051918

`abs(A336709(A046092(n)))`
-/

namespace A336714.P6068825612079051918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A336709 (A046092 n).toNat|

end

end A336714.P6068825612079051918

/-! ## A336714.P18427114231023875514

`abs(A336709(∑[A008586(n)]))`
-/

namespace A336714.P18427114231023875514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A336709 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A336714.P18427114231023875514

/-! ## A336714.P6703478776407005956

`gcd(A000038(n), A336709(A046092(n)))`
-/

namespace A336714.P6703478776407005956
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A336709 (A046092 n).toNat)

end

end A336714.P6703478776407005956

/-! ## A336714.P11313573512525957896

`or(A000007(n), A336709(A046092(n)))`
-/

namespace A336714.P11313573512525957896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A336709 (A046092 n).toNat)

end

end A336714.P11313573512525957896

/-!
# A336715: Numbers m that divide the product phi(m) * tau(m), where tau is the number of divisors function (A000005) and phi is the Euler totient function (A000010).

The programs for A336715, the canonical program `A336715.P8758040222245764786` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336715 has offset 1).

The definition of A336715 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336715.P8758040222245764786

`record[gcd(n+1, A062355(n+1))]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A336715

/-- `record[gcd(n+1, A062355(n+1))]` -/
def P8758040222245764786.Spec : Prop :=
  ∀ n, (P8758040222245764786.a n : ℤ) = A336715 (n + 1)

theorem P8758040222245764786.correct : P8758040222245764786.Spec := by
  intro n
  simp only [A336715, Nat.add_sub_cancel]

end A336715

/-! ## A336715.P14579992393326536781

`record[gcd(A062355(n+1), A131738(n))]`
-/

namespace A336715.P14579992393326536781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A062355 (n + 1)) (A131738 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336715.P14579992393326536781

namespace A336715

/-- `record[gcd(A062355(n+1), A131738(n))]` -/
def P14579992393326536781.Spec : Prop :=
  ∀ n, (P14579992393326536781.a n : ℤ) = A336715 (n + 1)

end A336715

/-! ## A336715.P17085110625735653024

`record[gcd(A014684(n+1), A022157(n+1))]`
-/

namespace A336715.P17085110625735653024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014684 (n + 1)) (A022157 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336715.P17085110625735653024

namespace A336715

/-- `record[gcd(A014684(n+1), A022157(n+1))]` -/
def P17085110625735653024.Spec : Prop :=
  ∀ n, (P17085110625735653024.a n : ℤ) = A336715 (n + 1)

end A336715

/-! ## A336715.P18074508379610202395

`record[gcd(A000027(n+1), A079535(n+1))]`
-/

namespace A336715.P18074508379610202395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A079535 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336715.P18074508379610202395

namespace A336715

/-- `record[gcd(A000027(n+1), A079535(n+1))]` -/
def P18074508379610202395.Spec : Prop :=
  ∀ n, (P18074508379610202395.a n : ℤ) = A336715 (n + 1)

end A336715

/-! ## A336715.P10293943262444662978

`record[gcd(A033286(n+1), A110601(n+1))]`
-/

namespace A336715.P10293943262444662978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033286 (n + 1)) (A110601 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336715.P10293943262444662978

namespace A336715

/-- `record[gcd(A033286(n+1), A110601(n+1))]` -/
def P10293943262444662978.Spec : Prop :=
  ∀ n, (P10293943262444662978.a n : ℤ) = A336715 (n + 1)

end A336715

/-!
# A336717: a(n) is the least k such that R(k) = n for some random Fibonacci sequence R (a random Fibonacci sequence R satisfies R(0) = 0, R(1) = 1, and for m > 0, R(m+1) = R(m) + (-1)^r(m) * R(m-1) where r is a sequence of integers).

The programs for A336717, there is no canonical definition to state claims against.
-/

/-! ## A336717.P2928744063355937334

`A299757(A106244(n+1)*A305901(n+1))`
-/

namespace A336717.P2928744063355937334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299757 (A106244 (n + 1) * A305901 (n + 1)).toNat

end

end A336717.P2928744063355937334

/-!
# A336718: Total number of left-to-right maxima in all compositions of n into distinct parts.

The programs for A336718, there is no canonical definition to state claims against.
-/

/-! ## A336718.P4785778744941455394

`A351017(A039723(n))-A000009(n)`
-/

namespace A336718.P4785778744941455394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351017 (A039723 n).toNat - A000009 n

end

end A336718.P4785778744941455394

/-! ## A336718.P4533207569211244137

`A118759(A351017(n)-A000009(n))`
-/

namespace A336718.P4533207569211244137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A351017 n - A000009 n).toNat

end

end A336718.P4533207569211244137

/-! ## A336718.P14751403817424884546

`A237590(A032020(n))%A367902(n)`
-/

namespace A336718.P14751403817424884546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237590 (A032020 n).toNat) (A367902 n)

end

end A336718.P14751403817424884546

/-! ## A336718.P370413911545771617

`A032006(n)-A266619(A216519(n+1))`
-/

namespace A336718.P370413911545771617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032006 n - A266619 (A216519 (n + 1)).toNat

end

end A336718.P370413911545771617

/-!
# A336719: Largest odd prime p for which the order of 2 mod p is at most n.

The programs for A336719, there is no canonical definition to state claims against.
-/

/-! ## A336719.P12112166915785926702

`p?[or(a(n-1), A112927(n+1))]` with `a(0)=0`
-/

namespace A336719.P12112166915785926702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  Int.lor (f1 (n - 1)) (A112927 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A336719.P12112166915785926702

/-! ## A336719.P3100167200091122445

`p?[or(a(n-1), A005420(n+2))]` with `a(0)=3`
-/

namespace A336719.P3100167200091122445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  Int.lor (f1 (n - 1)) (A005420 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A336719.P3100167200091122445

/-! ## A336719.P15357310023269630542

`p?[or(a(n-1), A049479(n+2))]` with `a(0)=3`
-/

namespace A336719.P15357310023269630542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  Int.lor (f1 (n - 1)) (A049479 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A336719.P15357310023269630542

/-! ## A336719.P6788811246658811412

`p?[or(a(n-1), A186522(n+2))]` with `a(0)=3`
-/

namespace A336719.P6788811246658811412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  Int.lor (f1 (n - 1)) (A186522 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A336719.P6788811246658811412

/-! ## A336719.P4348270978389125185

`A243071(A332210(A059305(A332220(n+2))))`
-/

namespace A336719.P4348270978389125185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243071 (A332210 (A059305 (A332220 (n + 2)).toNat).toNat).toNat

end

end A336719.P4348270978389125185

/-!
# A336720: A336719 with duplicates removed.

The programs for A336720, there is no canonical definition to state claims against.
-/

/-! ## A336720.P1421617825353680885

`record[A108974(n+1)]`
-/

namespace A336720.P1421617825353680885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336720.P1421617825353680885

/-! ## A336720.P5376679809113029120

`record[A001265(n+2)]`
-/

namespace A336720.P5376679809113029120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001265 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336720.P5376679809113029120

/-! ## A336720.P11820663191063744628

`record[A005420(n+2)]`
-/

namespace A336720.P11820663191063744628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005420 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336720.P11820663191063744628

/-! ## A336720.P3161149986055403217

`record[A060443(n+2)]`
-/

namespace A336720.P3161149986055403217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060443 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336720.P3161149986055403217

/-! ## A336720.P2668318691566218473

`record[A097406(n+2)]`
-/

namespace A336720.P2668318691566218473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097406 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336720.P2668318691566218473

/-!
# A336721: Values k where A336719(k) increases.

The programs for A336721, there is no canonical definition to state claims against.
-/

/-! ## A336721.P2365157123068227631

`eq[A005420(n+2), A336719(n+2)]+2`
-/

namespace A336721.P2365157123068227631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005420 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336719 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A336721.P2365157123068227631

/-! ## A336721.P1448937020192194817

`eq[A006498(A246690(n)), A046800(n)]`
-/

namespace A336721.P1448937020192194817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006498 (A246690 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A336721.P1448937020192194817

/-! ## A336721.P14316758611961307643

`eq[A046800(n), A127321(A124148(n+1))]`
-/

namespace A336721.P14316758611961307643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (A124148 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A336721.P14316758611961307643

/-! ## A336721.P11875728425776880639

`eq[A046800(n), A124148(2*A124148(n+1))]`
-/

namespace A336721.P11875728425776880639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124148 (2 * A124148 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A336721.P11875728425776880639

/-! ## A336721.P13199080854164177915

`eq[A181692(n), A257738(n+1)]`
-/

namespace A336721.P13199080854164177915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181692 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257738 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A336721.P13199080854164177915

/-!
# A336722: a(n) = gcd(tau(n), sigma(n), pod(n)) where tau(k) is the number of divisors of k (A000005), sigma(k) is the sum of divisors of k (A000203) and pod(k) is the product of divisors of k (A007955).

The programs for A336722, the canonical program `A336722.P5907045246606139148` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336722 has offset 1).

The definition of A336722 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336722.P5907045246606139148

`gcd(Δ[A006218(n)], A306682(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A336722

/-- `gcd(Δ[A006218(n)], A306682(n+1))` -/
def P5907045246606139148.Spec : Prop :=
  ∀ n, (P5907045246606139148.a n : ℤ) = A336722 (n + 1)

theorem P5907045246606139148.correct : P5907045246606139148.Spec := by
  intro n
  simp only [A336722, Nat.add_sub_cancel]

end A336722

/-! ## A336722.P2537210328820705613

`gcd(Δ[A330725(n)], A306671(n+1))`
-/

namespace A336722.P2537210328820705613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330725 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A306671 (n + 1))

end

end A336722.P2537210328820705613

namespace A336722

/-- `gcd(Δ[A330725(n)], A306671(n+1))` -/
def P2537210328820705613.Spec : Prop :=
  ∀ n, (P2537210328820705613.a n : ℤ) = A336722 (n + 1)

end A336722

/-! ## A336722.P8006763824410904599

`gcd(A009205(n+1), A017684(n+1))`
-/

namespace A336722.P8006763824410904599
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A009205 (n + 1)) (A017684 (n + 1))

end

end A336722.P8006763824410904599

namespace A336722

/-- `gcd(A009205(n+1), A017684(n+1))` -/
def P8006763824410904599.Spec : Prop :=
  ∀ n, (P8006763824410904599.a n : ℤ) = A336722 (n + 1)

end A336722

/-! ## A336722.P18318455369049393822

`gcd((n+1)^6, gcd(A000005(n+1), A000203(n+1)))`
-/

namespace A336722.P18318455369049393822
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd ((n + 1) ^ 6) (Int.gcd (A000005 (n + 1)) (A000203 (n + 1)))

end

end A336722.P18318455369049393822

namespace A336722

/-- `gcd((n+1)^6, gcd(A000005(n+1), A000203(n+1)))` -/
def P18318455369049393822.Spec : Prop :=
  ∀ n, (P18318455369049393822.a n : ℤ) = A336722 (n + 1)

end A336722

/-! ## A336722.P15857714337040293614

`gcd(A000027(A306671(n+1)), A065608(n+1))`
-/

namespace A336722.P15857714337040293614
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (A306671 (n + 1)).toNat) (A065608 (n + 1))

end

end A336722.P15857714337040293614

namespace A336722

/-- `gcd(A000027(A306671(n+1)), A065608(n+1))` -/
def P15857714337040293614.Spec : Prop :=
  ∀ n, (P15857714337040293614.a n : ℤ) = A336722 (n + 1)

end A336722

/-! ## A336722.P8315448627251721199

`gcd(Δ[A000539(n)], A009205(n+1))`
-/

namespace A336722.P8315448627251721199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000539 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A009205 (n + 1))

end

end A336722.P8315448627251721199

namespace A336722

/-- `gcd(Δ[A000539(n)], A009205(n+1))` -/
def P8315448627251721199.Spec : Prop :=
  ∀ n, (P8315448627251721199.a n : ℤ) = A336722 (n + 1)

end A336722

/-! ## A336722.P6710327269750993419

`A336723(n+1)/A329929(n+1)`
-/

namespace A336722.P6710327269750993419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336723 (n + 1) : ℚ) / (A329929 (n + 1) : ℚ)

end

end A336722.P6710327269750993419

namespace A336722

/-- `A336723(n+1)/A329929(n+1)` -/
def P6710327269750993419.Spec : Prop :=
  ∀ n, P6710327269750993419.a n = (A336722 (n + 1) : ℚ)

end A336722

/-! ## A336722.P8189569375194857686

`gcd(n*A009205(n+1), A007955(n+1))`
-/

namespace A336722.P8189569375194857686
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) * A009205 (n + 1)) (A007955 (n + 1))

end

end A336722.P8189569375194857686

namespace A336722

/-- `gcd(n*A009205(n+1), A007955(n+1))` -/
def P8189569375194857686.Spec : Prop :=
  ∀ n, (P8189569375194857686.a n : ℤ) = A336722 (n + 1)

end A336722

/-! ## A336722.P3274241249921869533

`A334985(n+1)/A329929(n+1)*A337323(n+1)`
-/

namespace A336722.P3274241249921869533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334985 (n + 1) : ℚ) / (A329929 (n + 1) : ℚ) * (A337323 (n + 1) : ℚ)

end

end A336722.P3274241249921869533

namespace A336722

/-- `A334985(n+1)/A329929(n+1)*A337323(n+1)` -/
def P3274241249921869533.Spec : Prop :=
  ∀ n, P3274241249921869533.a n = (A336722 (n + 1) : ℚ)

end A336722

/-! ## A336722.P5275967037984222815

`gcd(A009205(n+1), A152291(n))`
-/

namespace A336722.P5275967037984222815
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A009205 (n + 1)) (A152291 n)

end

end A336722.P5275967037984222815

namespace A336722

/-- `gcd(A009205(n+1), A152291(n))` -/
def P5275967037984222815.Spec : Prop :=
  ∀ n, (P5275967037984222815.a n : ℤ) = A336722 (n + 1)

end A336722

/-!
# A336723: a(n) = lcm(tau(n), sigma(n), pod(n)) where tau(k) is the number of divisors of k (A000005), sigma(k) is the sum of divisors of k (A000203) and pod(k) is the product of divisors of k (A007955).

The programs for A336723, the canonical program `A336723.P17108432050027795908` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336723 has offset 1).

The definition of A336723 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336723.P3769744238144400019

`lcm(∑{d}[n+1, #], A324528(n+1))`
-/

namespace A336723.P3769744238144400019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) (A324528 (n + 1))

end

end A336723.P3769744238144400019

namespace A336723

/-- `lcm(∑{d}[n+1, #], A324528(n+1))` -/
def P3769744238144400019.Spec : Prop :=
  ∀ n, (P3769744238144400019.a n : ℤ) = A336723 (n + 1)

end A336723

/-! ## A336723.P7558003727905918464

`lcm(∏{d}[n+1, #], A009278(n+1))`
-/

namespace A336723.P7558003727905918464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) (A009278 (n + 1))

end

end A336723.P7558003727905918464

namespace A336723

/-- `lcm(∏{d}[n+1, #], A009278(n+1))` -/
def P7558003727905918464.Spec : Prop :=
  ∀ n, (P7558003727905918464.a n : ℤ) = A336723 (n + 1)

end A336723

/-! ## A336723.P17108432050027795908

`lcm(∏{e}[n+1, #+1], A324529(n+1))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A336723

/-- `lcm(∏{e}[n+1, #+1], A324529(n+1))` -/
def P17108432050027795908.Spec : Prop :=
  ∀ n, (P17108432050027795908.a n : ℤ) = A336723 (n + 1)

theorem P17108432050027795908.correct : P17108432050027795908.Spec := by
  intro n
  simp only [A336723, Nat.add_sub_cancel]

end A336723

/-! ## A336723.P9309777373896510627

`lcm((n+1)*A307893(n+1), ∑{d}[n+1, gcd(n, #)])`
-/

namespace A336723.P9309777373896510627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n + 1 : ℤ) * A307893 (n + 1)) ((∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d : ℕ) : ℤ)

end

end A336723.P9309777373896510627

namespace A336723

/-- `lcm((n+1)*A307893(n+1), ∑{d}[n+1, gcd(n, #)])` -/
def P9309777373896510627.Spec : Prop :=
  ∀ n, (P9309777373896510627.a n : ℤ) = A336723 (n + 1)

end A336723

/-! ## A336723.P17305427363467902305

`lcm(Δ[A006218(n)], A324529(n+1))`
-/

namespace A336723.P17305427363467902305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A324529 (n + 1))

end

end A336723.P17305427363467902305

namespace A336723

/-- `lcm(Δ[A006218(n)], A324529(n+1))` -/
def P17305427363467902305.Spec : Prop :=
  ∀ n, (P17305427363467902305.a n : ℤ) = A336723 (n + 1)

end A336723

/-! ## A336723.P7771447104608366652

`A329929(n+1)*A336722(n+1)`
-/

namespace A336723.P7771447104608366652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329929 (n + 1) * A336722 (n + 1)

end

end A336723.P7771447104608366652

namespace A336723

/-- `A329929(n+1)*A336722(n+1)` -/
def P7771447104608366652.Spec : Prop :=
  ∀ n, P7771447104608366652.a n = A336723 (n + 1)

end A336723

/-! ## A336723.P7393350306023422624

`A334985(n+1)*A337323(n+1)`
-/

namespace A336723.P7393350306023422624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334985 (n + 1) * A337323 (n + 1)

end

end A336723.P7393350306023422624

namespace A336723

/-- `A334985(n+1)*A337323(n+1)` -/
def P7393350306023422624.Spec : Prop :=
  ∀ n, P7393350306023422624.a n = A336723 (n + 1)

end A336723

/-! ## A336723.P521463688801504803

`lcm(A007955(n+1), A009278(n+1))`
-/

namespace A336723.P521463688801504803
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007955 (n + 1)) (A009278 (n + 1))

end

end A336723.P521463688801504803

namespace A336723

/-- `lcm(A007955(n+1), A009278(n+1))` -/
def P521463688801504803.Spec : Prop :=
  ∀ n, (P521463688801504803.a n : ℤ) = A336723 (n + 1)

end A336723

/-! ## A336723.P14644824150699036608

`lcm(A000203(n+1), A324528(n+1))`
-/

namespace A336723.P14644824150699036608
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000203 (n + 1)) (A324528 (n + 1))

end

end A336723.P14644824150699036608

namespace A336723

/-- `lcm(A000203(n+1), A324528(n+1))` -/
def P14644824150699036608.Spec : Prop :=
  ∀ n, (P14644824150699036608.a n : ℤ) = A336723 (n + 1)

end A336723

/-!
# A336724: Number of n-step self-avoiding walks on the half-Manhattan square lattice.

The programs for A336724, there is no canonical definition to state claims against.
-/

/-! ## A336724.P54309008320181163

`or(A004525(A283314(n)), A077852(n))`
-/

namespace A336724.P54309008320181163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004525 (A283314 n).toNat) (A077852 n)

end

end A336724.P54309008320181163

/-! ## A336724.P13903039808231062770

`A225055(A001792(n)+A001318(n))`
-/

namespace A336724.P13903039808231062770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225055 (A001792 n + A001318 n).toNat

end

end A336724.P13903039808231062770

/-! ## A336724.P4922226551352802109

`or(A077852(n), A226046(A114832(n+1)))`
-/

namespace A336724.P4922226551352802109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A077852 n) (A226046 (A114832 (n + 1)).toNat)

end

end A336724.P4922226551352802109

/-!
# A336725: A(n,k) is the n-th number that is a sum of k positive k-th powers; square array A(n,k), n>=1, k>=1, read by antidiagonals.

The programs for A336725, there is no canonical definition to state claims against.
-/

/-! ## A336725.P11638990683559141401

`A227177(A166979(n+1))+A003056(n)`
-/

namespace A336725.P11638990683559141401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227177 (A166979 (n + 1)).toNat + A003056 n

end

end A336725.P11638990683559141401

/-! ## A336725.P12797887349813700795

`A002024(n+1)+A227177(A166979(n+1))-1`
-/

namespace A336725.P12797887349813700795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + (A227177 (A166979 (n + 1)).toNat - 1)

end

end A336725.P12797887349813700795

/-! ## A336725.P639459005539768052

`A227177(A166979(n+1))+A001222(A120027(n))`
-/

namespace A336725.P639459005539768052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227177 (A166979 (n + 1)).toNat + A001222 (A120027 n).toNat

end

end A336725.P639459005539768052

/-! ## A336725.P15438141197822446735

`A227177(A166979(n+1))+A001222(A137688(n))`
-/

namespace A336725.P15438141197822446735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227177 (A166979 (n + 1)).toNat + A001222 (A137688 n).toNat

end

end A336725.P15438141197822446735

/-! ## A336725.P2499718482689210384

`A227177(A166979(n+1))+A039207(A002024(n+1))`
-/

namespace A336725.P2499718482689210384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227177 (A166979 (n + 1)).toNat + A039207 (A002024 (n + 1)).toNat

end

end A336725.P2499718482689210384

/-!
# A336726: Number of n-step self-avoiding walks on the half-Manhattan lattice with no non-contiguous adjacencies.

The programs for A336726, there is no canonical definition to state claims against.
-/

/-! ## A336726.P10514192247455227356

`or(1, A100196(A215580(n)))`
-/

namespace A336726.P10514192247455227356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A100196 (A215580 n).toNat)

end

end A336726.P10514192247455227356

/-! ## A336726.P3956406827298756943

`∏{e}[A000351(n), A201081(#)]`
-/

namespace A336726.P3956406827298756943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A201081 (Nat.factorization (f1 n).natAbs p)

end

end A336726.P3956406827298756943

/-! ## A336726.P12115578845792579729

`∑[A082447(∑[A149246(n)])]`
-/

namespace A336726.P12115578845792579729
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149246 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082447 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336726.P12115578845792579729

/-! ## A336726.P1052630413496627215

`or(1, A018081(A032555(n+1)))`
-/

namespace A336726.P1052630413496627215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A018081 (A032555 (n + 1)).toNat)

end

end A336726.P1052630413496627215

/-! ## A336726.P15367292882756530435

`or(1, A018081(A032565(n+1)))`
-/

namespace A336726.P15367292882756530435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A018081 (A032565 (n + 1)).toNat)

end

end A336726.P15367292882756530435

/-!
# A336727: Square array T(n,k), n>=0, k>=0, read by antidiagonals, where T(0,k) = 1 and T(n,k) = (1/n) * Sum_{j=1..n} (-k)^(n-j) * binomial(n,j) * binomial(n,j-1) for n > 0.

The programs for A336727, there is no canonical definition to state claims against.
-/

/-! ## A336727.P4948044023250795723

`A309386(n)%(A059801(n+1)%44)`
-/

namespace A336727.P4948044023250795723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A309386 n) (Int.tmod (A059801 (n + 1)) 44)

end

end A336727.P4948044023250795723

/-! ## A336727.P2130705244901290615

`A309386(n)%A266131(A001952(n+4))`
-/

namespace A336727.P2130705244901290615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A309386 n) (A266131 (A001952 (n + 4)).toNat)

end

end A336727.P2130705244901290615

/-! ## A336727.P13265891622830381553

`1-A106493(A181783(n))`
-/

namespace A336727.P13265891622830381553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A106493 (A181783 n).toNat

end

end A336727.P13265891622830381553

/-! ## A336727.P17804991435179128511

`A290789(n)%A057939(A006512(n+1))`
-/

namespace A336727.P17804991435179128511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290789 n) (A057939 (A006512 (n + 1)).toNat)

end

end A336727.P17804991435179128511

/-! ## A336727.P14974869383355050769

`A362394(n)%A362367(A362378(3*n+2))`
-/

namespace A336727.P14974869383355050769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A362394 n) (A362367 (A362378 (3 * n + 2)).toNat)

end

end A336727.P14974869383355050769

/-!
# A336728: a(0) = 1 and a(n) = (1/n) * Sum_{k=1..n} (-n)^(n-k) * binomial(n,k) * binomial(n,k-1) for n > 0.

The programs for A336728, there is no canonical definition to state claims against.
-/

/-! ## A336728.P14360204866070775388

`A336727(∑[4*n])`
-/

namespace A336728.P14360204866070775388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336727 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A336728.P14360204866070775388

/-! ## A336728.P14371741161297969371

`A336727(A046092(n))+C(n, n+1)`
-/

namespace A336728.P14371741161297969371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336727 (A046092 n).toNat + (Nat.choose n (n + 1) : ℤ)

end

end A336728.P14371741161297969371

/-! ## A336728.P6402828322095607287

`A336727(A046092(n))^A178334(n)`
-/

namespace A336728.P6402828322095607287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336727 (A046092 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A336728.P6402828322095607287

/-! ## A336728.P9303930197911769697

`or(A000007(n), A336727(A046092(n)))`
-/

namespace A336728.P9303930197911769697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A336727 (A046092 n).toNat)

end

end A336728.P9303930197911769697

/-! ## A336728.P13463439833929893053

`A336727(A046092(n))^A193592(∑[n])`
-/

namespace A336728.P13463439833929893053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336727 (A046092 n).toNat : ℚ) ^ (A193592 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A336728.P13463439833929893053

/-! ## A336728.P17785044541590970758

`A336727(A046092(n))+char[A017381(n)]`
-/

namespace A336728.P17785044541590970758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017381 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336727 (A046092 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A336728.P17785044541590970758

/-! ## A336728.P8154048290906839947

`A336727(A046092(n))+char[A100896(n)]`
-/

namespace A336728.P8154048290906839947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100896 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336727 (A046092 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A336728.P8154048290906839947

/-! ## A336728.P14658763851092742774

`char[A002262(n)]*A336727(A046092(n))`
-/

namespace A336728.P14658763851092742774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A336727 (A046092 n).toNat

end

end A336728.P14658763851092742774

/-! ## A336728.P3616560402391570535

`char[A056019(n)]*A336727(A046092(n))`
-/

namespace A336728.P3616560402391570535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056019 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A336727 (A046092 n).toNat

end

end A336728.P3616560402391570535

/-!
# A336729: G.f. A(x) satisfies: A(x) = 1 + x * A(x) / (1 + 3 * x * A(x)).

The programs for A336729, there is no canonical definition to state claims against.
-/

/-! ## A336729.P5804932450485796871

`A336727(∑[n+3]+n+3)`
-/

namespace A336729.P5804932450485796871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336727 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A336729.P5804932450485796871

/-!
# A336732: The number of tight 4 X n pavings.

The programs for A336732, there is no canonical definition to state claims against.
-/

/-! ## A336732.P7694176311983085371

`A285357(A141214(n))%(4^n)²`
-/

namespace A336732.P7694176311983085371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285357 (A141214 n).toNat) ((4 ^ n) ^ 2 : ℤ)

end

end A336732.P7694176311983085371

/-! ## A336732.P9692175926264389623

`record[A010054(n+4)*A285357(n+1)]`
-/

namespace A336732.P9692175926264389623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 4) * A285357 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336732.P9692175926264389623

/-! ## A336732.P9681073491152550693

`A285357(A141214(n))-A000007(n)`
-/

namespace A336732.P9681073491152550693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285357 (A141214 n).toNat - A000007 n

end

end A336732.P9681073491152550693

/-! ## A336732.P2436535204865410783

`A285357(A141214(n))-A058343(n)`
-/

namespace A336732.P2436535204865410783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285357 (A141214 n).toNat - A058343 n

end

end A336732.P2436535204865410783

/-! ## A336732.P14288346412038040084

`A285357(A055998(n+1))%A029547(n)`
-/

namespace A336732.P14288346412038040084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285357 (A055998 (n + 1)).toNat) (A029547 n)

end

end A336732.P14288346412038040084

/-!
# A336733: Positive integers which can be written in two bases smaller than 10 as mutually-reversed strings of digit(s).

The programs for A336733, there is no canonical definition to state claims against.
-/

/-! ## A336733.P5081149463464839874

`∑[A304717(A171045(n+1))]`
-/

namespace A336733.P5081149463464839874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304717 (A171045 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336733.P5081149463464839874

/-! ## A336733.P10542283949354560326

`record[gcd(A003108(n), A332104(n))]`
-/

namespace A336733.P10542283949354560326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003108 n) (A332104 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336733.P10542283949354560326

/-! ## A336733.P2832771988060794573

`∑[dr(A065648(A342965(n+2)))]`
-/

namespace A336733.P2832771988060794573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A065648 (A342965 (n + 2)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336733.P2832771988060794573

/-! ## A336733.P16842147892062940016

`∑[A278055(Δ[A072966(n+1)])]`
-/

namespace A336733.P16842147892062940016
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072966 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278055 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336733.P16842147892062940016

/-! ## A336733.P8816920706783726544

`∑[A358506(Δ[A072966(n+1)])]`
-/

namespace A336733.P8816920706783726544
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072966 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358506 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336733.P8816920706783726544

/-!
# A336734: The number of tight 5 X n pavings.

The programs for A336734, there is no canonical definition to state claims against.
-/

/-! ## A336734.P7163495832615590443

`record[A023531(n+4)*A285357(n+1)]`
-/

namespace A336734.P7163495832615590443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 (n + 4) * A285357 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336734.P7163495832615590443

/-!
# A336735: Products of elements of A304711.

The programs for A336735, there is no canonical definition to state claims against.
-/

/-! ## A336735.P966519662208757679

`comp[A336620(n+1)-1]+1`
-/

namespace A336735.P966519662208757679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336620 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A336735.P966519662208757679

/-! ## A336735.P8929208132918441104

`∪[∑[∑[n+1]], A304711(n+1)]`
-/

namespace A336735.P8929208132918441104
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304711 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f4 j = (x : ℤ)) n

end

end A336735.P8929208132918441104

/-! ## A336735.P2215341300748676648

`∪[A304711(n+1), A008359(n)]`
-/

namespace A336735.P2215341300748676648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008359 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A336735.P2215341300748676648

/-! ## A336735.P490594328858860042

`∪[A304711(n+1), A008574(n)]`
-/

namespace A336735.P490594328858860042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A336735.P490594328858860042

/-! ## A336735.P6700988921428695770

`∪[A304711(n+1), A008804(n)]`
-/

namespace A336735.P6700988921428695770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008804 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A336735.P6700988921428695770

/-! ## A336735.P6183043583336922382

`∪[A304711(n+1), A010066(n)]`
-/

namespace A336735.P6183043583336922382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010066 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A336735.P6183043583336922382

/-! ## A336735.P12121069145121112605

`∪[A304711(n+1), A019557(n)]`
-/

namespace A336735.P12121069145121112605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019557 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A336735.P12121069145121112605

/-! ## A336735.P6794523109614775267

`∪[A304711(n+1), A027818(n)]`
-/

namespace A336735.P6794523109614775267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027818 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A336735.P6794523109614775267

/-! ## A336735.P13449252621563343413

`∪[A304711(n+1), A050405(n)]`
-/

namespace A336735.P13449252621563343413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050405 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A336735.P13449252621563343413

/-! ## A336735.P5497372632283329520

`∪[A304711(n+1), A053285(n)]`
-/

namespace A336735.P5497372632283329520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053285 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A336735.P5497372632283329520

/-!
# A336736: Number of factorizations of n whose distinct factors have disjoint prime signatures.

The programs for A336736, there is no canonical definition to state claims against.
-/

/-! ## A336736.P13331457083471676111

`A000688(n+1)-∑{e}[∑{e}[A085491(n), #], #]`
-/

namespace A336736.P13331457083471676111
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085491 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (n + 1) - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)

end

end A336736.P13331457083471676111

/-! ## A336736.P9618758714230576826

`A000688(n+1)-A011737(A002033(n))`
-/

namespace A336736.P9618758714230576826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (n + 1) - A011737 (A002033 n).toNat

end

end A336736.P9618758714230576826

/-! ## A336736.P15921857017921266289

`A000688(n+1)-A341994(A085491(n))`
-/

namespace A336736.P15921857017921266289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (n + 1) - A341994 (A085491 n).toNat

end

end A336736.P15921857017921266289

/-! ## A336736.P3841254258105361428

`A062977(n+1)+A000688(A062759(n+1))`
-/

namespace A336736.P3841254258105361428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062977 (n + 1) + A000688 (A062759 (n + 1)).toNat

end

end A336736.P3841254258105361428

/-! ## A336736.P11641306553672632248

`A014744(A183095(n+1))+A000688(n+1)`
-/

namespace A336736.P11641306553672632248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014744 (A183095 (n + 1)).toNat + A000688 (n + 1)

end

end A336736.P11641306553672632248

/-! ## A336736.P1036934618818047771

`A000688(n+1)-A008651(A001055(n+1))`
-/

namespace A336736.P1036934618818047771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (n + 1) - A008651 (A001055 (n + 1)).toNat

end

end A336736.P1036934618818047771

/-! ## A336736.P12587126299042964476

`A000688(n+1)-A025436(A008480(n+1))`
-/

namespace A336736.P12587126299042964476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (n + 1) - A025436 (A008480 (n + 1)).toNat

end

end A336736.P12587126299042964476

/-! ## A336736.P9761387275714722592

`A000688(n+1)-A011735(A050379(n+1))`
-/

namespace A336736.P9761387275714722592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (n + 1) - A011735 (A050379 (n + 1)).toNat

end

end A336736.P9761387275714722592

/-! ## A336736.P6321734870575819686

`A000688(n+1)-A011731(A057567(n+1))`
-/

namespace A336736.P6321734870575819686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (n + 1) - A011731 (A057567 (n + 1)).toNat

end

end A336736.P6321734870575819686

/-! ## A336736.P4481791550325794171

`A002995(A076558(n+1))+A001222(∏{e}[n+1, 2^(#-1)])`
-/

namespace A336736.P4481791550325794171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002995 (A076558 (n + 1)).toNat + A001222 (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), (2 : ℚ) ^ ((Nat.factorization (f1 n) p : ℤ) - 1 : ℤ))).toNat

end

end A336736.P4481791550325794171

/-!
# A336737: Number of factorizations of n whose factors have pairwise intersecting prime signatures.

The programs for A336737, there is no canonical definition to state claims against.
-/

/-! ## A336737.P7911035389620700341

`A327400(n+1)-char[A152951(n)]`
-/

namespace A336737.P7911035389620700341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152951 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327400 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A336737.P7911035389620700341

/-! ## A336737.P9002636342153830717

`A327400(n+1)-char[A111092(n+1)]`
-/

namespace A336737.P9002636342153830717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111092 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327400 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A336737.P9002636342153830717

/-! ## A336737.P15930069592484819962

`A327400(n+1)-char[A166252(n+1)]`
-/

namespace A336737.P15930069592484819962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166252 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327400 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A336737.P15930069592484819962

/-! ## A336737.P12806735010609929926

`A327400(n+1)-char[A195270(n+1)]`
-/

namespace A336737.P12806735010609929926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195270 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327400 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A336737.P12806735010609929926

/-! ## A336737.P18201937422720160289

`A327400(n+1)-char[A201313(n+1)]`
-/

namespace A336737.P18201937422720160289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201313 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327400 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A336737.P18201937422720160289

/-! ## A336737.P12991811889113664408

`A327400(n+1)-char[A295835(n+1)]`
-/

namespace A336737.P12991811889113664408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295835 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327400 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A336737.P12991811889113664408

/-! ## A336737.P11901359036494481729

`A327400(n+1)-char[A297846(n+1)]`
-/

namespace A336737.P11901359036494481729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297846 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327400 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A336737.P11901359036494481729

/-! ## A336737.P5868657897022512521

`A327400(n+1)-A025431(A001616(n+1))`
-/

namespace A336737.P5868657897022512521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327400 (n + 1) - A025431 (A001616 (n + 1)).toNat

end

end A336737.P5868657897022512521

/-! ## A336737.P14774960426792984653

`A327400(n+1)-A024155(A003557(n+1))`
-/

namespace A336737.P14774960426792984653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327400 (n + 1) - A024155 (A003557 (n + 1)).toNat

end

end A336737.P14774960426792984653

/-! ## A336737.P14603647211689404

`A327400(n+1)-A025466(A014963(n+2))`
-/

namespace A336737.P14603647211689404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327400 (n + 1) - A025466 (A014963 (n + 2)).toNat

end

end A336737.P14603647211689404

/-!
# A336738: Primes abs(A335592(k))/2 for k in A335593.

The programs for A336738, there is no canonical definition to state claims against.
-/

/-! ## A336738.P16299356004817889609

`A335592(A335593(n+1))/2`
-/

namespace A336738.P16299356004817889609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335592 (A335593 (n + 1)).toNat : ℚ) / 2

end

end A336738.P16299356004817889609

/-!
# A336742: Number of self-avoiding cycles of length 2n on the half-Manhattan lattice.

The programs for A336742, there is no canonical definition to state claims against.
-/

/-! ## A336742.P18433421531920754545

`A100196(A186364(n)+A082853(n))`
-/

namespace A336742.P18433421531920754545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A186364 n + A082853 n).toNat

end

end A336742.P18433421531920754545

/-! ## A336742.P17280309756967731911

`A165190(A000108(n)+A132807(n)-2)`
-/

namespace A336742.P17280309756967731911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (A000108 n + (A132807 n - 2)).toNat

end

end A336742.P17280309756967731911

/-! ## A336742.P11672465409200483857

`A165190(A000108(n)-(2-A132807(n)))`
-/

namespace A336742.P11672465409200483857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (A000108 n - (2 - A132807 n)).toNat

end

end A336742.P11672465409200483857

/-! ## A336742.P8554526693435763620

`A165190(A132807(n)+abs(A168491(n))-2)`
-/

namespace A336742.P8554526693435763620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (A132807 n + (|A168491 n| - 2)).toNat

end

end A336742.P8554526693435763620

/-! ## A336742.P4149774047253016160

`A165190(A132807(n)+A120588(n+1)-2)`
-/

namespace A336742.P4149774047253016160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (A132807 n + (A120588 (n + 1) - 2)).toNat

end

end A336742.P4149774047253016160

/-!
# A336743: a(n) is the product of the first n positive evil numbers.

The programs for A336743, there is no canonical definition to state claims against.
-/

/-! ## A336743.P10698665288642653521

`∏[lt[3, 2/a(and(n, n-1))²]]` with `a(0)=3, a(1)=5`
-/

namespace A336743.P10698665288642653521
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℚ := SequenceMachineLib.rec [3, 5] fun n f3 =>
  2 / f3 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℚ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A336743.P10698665288642653521

/-! ## A336743.P13619516363559964380

`a(n-1)*comp[xor(n, 2*n+1)]` with `a(0)=1`
-/

namespace A336743.P13619516363559964380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A336743.P13619516363559964380

/-! ## A336743.P5863356532531507137

`xor(1, comp[xor(n, 2*n)])*a(n-1)` with `a(0)=1`
-/

namespace A336743.P5863356532531507137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) * a (n - 1)

end

end A336743.P5863356532531507137

/-! ## A336743.P1236072030845446388

`∏[comp[xor(n, 2*n+1)]^ceil(n/63)]`
-/

namespace A336743.P1236072030845446388
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n + 1)

open Classical in
def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℚ) ^ (⌈(n : ℚ) / 63⌉ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A336743.P1236072030845446388

/-! ## A336743.P16362278988416248783

`∏[A075311(n+1)]`
-/

namespace A336743.P16362278988416248783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075311 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A336743.P16362278988416248783

/-!
# A336745: Numbers m that divide the product phi(m) * sigma(m) * tau(m), where phi is the Euler totient function (A000010), sigma is the sum of divisors function (A000203) and tau is the number of divisors function (A000005).

The programs for A336745, there is no canonical definition to state claims against.
-/

/-! ## A336745.P3427756849596168122

`lt[A069289(A334031(n)), A200507(n+3)]`
-/

namespace A336745.P3427756849596168122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069289 (A334031 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200507 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A336745.P3427756849596168122

/-! ## A336745.P13412166885410187799

`eq[n%2, A331844(4*n)]`
-/

namespace A336745.P13412166885410187799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331844 (4 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A336745.P13412166885410187799

/-! ## A336745.P6782618372263712305

`eq[A000035(n), A242434(A008574(n))]`
-/

namespace A336745.P6782618372263712305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242434 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A336745.P6782618372263712305

/-! ## A336745.P5268527342390664306

`eq[A000035(n), A242434(A008586(n))]`
-/

namespace A336745.P5268527342390664306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242434 (A008586 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A336745.P5268527342390664306

/-!
# A336751: Smallest side of integer-sided triangles whose sides a < b < c are in arithmetic progression.

The programs for A336751, the canonical program `A336751.P13144755315143841523` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336751 has offset 1).

The definition of A336751 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336751.P13144755315143841523

`n%floor(sqrt(n+1))+floor(sqrt(n))+2`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A336751

/-- `n%floor(sqrt(n+1))+floor(sqrt(n))+2` -/
def P13144755315143841523.Spec : Prop :=
  ∀ n, (P13144755315143841523.a n : ℤ) = A336751 (n + 1)

theorem P13144755315143841523.correct : P13144755315143841523.Spec := by
  intro n
  simp only [A336751, Nat.add_sub_cancel]

end A336751

/-! ## A336751.P425150823089839257

`2-(round(sqrt(n+1))-1)*floor(sqrt(n))+n`
-/

namespace A336751.P425150823089839257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) - 1) * (Nat.sqrt n : ℤ) + (n : ℤ)

end

end A336751.P425150823089839257

namespace A336751

/-- `2-(round(sqrt(n+1))-1)*floor(sqrt(n))+n` -/
def P425150823089839257.Spec : Prop :=
  ∀ n, P425150823089839257.a n = A336751 (n + 1)

end A336751

/-! ## A336751.P13655341413255901135

`A322832(comp[floor((n/2)²)])`
-/

namespace A336751.P13655341413255901135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℚ) / 2) ^ 2⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322832 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A336751.P13655341413255901135

namespace A336751

/-- `A322832(comp[floor((n/2)²)])` -/
def P13655341413255901135.Spec : Prop :=
  ∀ n, P13655341413255901135.a n = A336751 (n + 1)

end A336751

/-! ## A336751.P3148920997833251408

`A008619(2*A138099(n+1))`
-/

namespace A336751.P3148920997833251408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A138099 (n + 1)).toNat

end

end A336751.P3148920997833251408

namespace A336751

/-- `A008619(2*A138099(n+1))` -/
def P3148920997833251408.Spec : Prop :=
  ∀ n, P3148920997833251408.a n = A336751 (n + 1)

end A336751

/-! ## A336751.P1939745959043681409

`A008619(A138099(n+1)+A138099(n+1))`
-/

namespace A336751.P1939745959043681409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A138099 (n + 1) + A138099 (n + 1)).toNat

end

end A336751.P1939745959043681409

namespace A336751

/-- `A008619(A138099(n+1)+A138099(n+1))` -/
def P1939745959043681409.Spec : Prop :=
  ∀ n, P1939745959043681409.a n = A336751 (n + 1)

end A336751

/-! ## A336751.P5020178700546994346

`A138099(A135668(n+1))`
-/

namespace A336751.P5020178700546994346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138099 (A135668 (n + 1)).toNat

end

end A336751.P5020178700546994346

namespace A336751

/-- `A138099(A135668(n+1))` -/
def P5020178700546994346.Spec : Prop :=
  ∀ n, P5020178700546994346.a n = A336751 (n + 1)

end A336751

/-! ## A336751.P1324065231258257519

`A138099(A049068(n+1))`
-/

namespace A336751.P1324065231258257519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138099 (A049068 (n + 1)).toNat

end

end A336751.P1324065231258257519

namespace A336751

/-- `A138099(A049068(n+1))` -/
def P1324065231258257519.Spec : Prop :=
  ∀ n, P1324065231258257519.a n = A336751 (n + 1)

end A336751

/-! ## A336751.P5471397048340428573

`A138099(A000267(n)+n+2)`
-/

namespace A336751.P5471397048340428573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138099 (A000267 n + (n + 2 : ℤ)).toNat

end

end A336751.P5471397048340428573

namespace A336751

/-- `A138099(A000267(n)+n+2)` -/
def P5471397048340428573.Spec : Prop :=
  ∀ n, P5471397048340428573.a n = A336751 (n + 1)

end A336751

/-! ## A336751.P4806303613860747810

`A336750(3*n+1)`
-/

namespace A336751.P4806303613860747810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336750 (3 * n + 1)

end

end A336751.P4806303613860747810

namespace A336751

/-- `A336750(3*n+1)` -/
def P4806303613860747810.Spec : Prop :=
  ∀ n, P4806303613860747810.a n = A336751 (n + 1)

end A336751

/-! ## A336751.P13935566531376316799

`A002262(lt[A004736(n+1), A002262(n)])`
-/

namespace A336751.P13935566531376316799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A336751.P13935566531376316799

namespace A336751

/-- `A002262(lt[A004736(n+1), A002262(n)])` -/
def P13935566531376316799.Spec : Prop :=
  ∀ n, P13935566531376316799.a n = A336751 (n + 1)

end A336751

/-! ## A336751.P945765436914517611

`A002262(lt[1, A026729(n)])`
-/

namespace A336751.P945765436914517611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A336751.P945765436914517611

namespace A336751

/-- `A002262(lt[1, A026729(n)])` -/
def P945765436914517611.Spec : Prop :=
  ∀ n, P945765436914517611.a n = A336751 (n + 1)

end A336751

/-! ## A336751.P6663744524082137343

`A002260(lt[A002260(n+2), A030528(n+2)])`
-/

namespace A336751.P6663744524082137343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030528 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A336751.P6663744524082137343

namespace A336751

/-- `A002260(lt[A002260(n+2), A030528(n+2)])` -/
def P6663744524082137343.Spec : Prop :=
  ∀ n, P6663744524082137343.a n = A336751 (n + 1)

end A336751

/-! ## A336751.P13466350600304900782

`A002260(A274428(n+1))`
-/

namespace A336751.P13466350600304900782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A274428 (n + 1)).toNat

end

end A336751.P13466350600304900782

namespace A336751

/-- `A002260(A274428(n+1))` -/
def P13466350600304900782.Spec : Prop :=
  ∀ n, P13466350600304900782.a n = A336751 (n + 1)

end A336751

/-!
# A336752: The 'Look and Say' sequence of the concatenation of the prime numbers A033308.

The programs for A336752, there is no canonical definition to state claims against.
-/

/-! ## A336752.P3352915488207115414

`A119479(lt[A245705(n+1), A210875(3*n+2)])`
-/

namespace A336752.P3352915488207115414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210875 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119479 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A336752.P3352915488207115414

/-! ## A336752.P17841155959782212637

`A324910(n+1)+A000095(A073817(n))`
-/

namespace A336752.P17841155959782212637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324910 (n + 1) + A000095 (A073817 n).toNat

end

end A336752.P17841155959782212637

/-! ## A336752.P12493898469471112564

`gcd(A014335(n), A126132(A187829(n+1)))`
-/

namespace A336752.P12493898469471112564
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014335 n) (A126132 (A187829 (n + 1)).toNat)

end

end A336752.P12493898469471112564

/-! ## A336752.P1505339580413884443

`A126132(lt[A325331(n), A166590(n+1)])`
-/

namespace A336752.P1505339580413884443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325331 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126132 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A336752.P1505339580413884443

/-! ## A336752.P2176286692512273923

`A057021(A158901(n+1)^A173442(n+1))`
-/

namespace A336752.P2176286692512273923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057021 (SequenceMachineLib.roundAway ((A158901 (n + 1) : ℚ) ^ (A173442 (n + 1) : ℤ))).toNat

end

end A336752.P2176286692512273923

/-!
# A336753: Largest side of integer-sided triangles whose sides a < b < c are in arithmetic progression.

The programs for A336753, the canonical program `A336753.P1679691368398851325` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336753 has offset 1).

The definition of A336753 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336753.P1679691368398851325

`eq[1, floor(sqrt(8*n))%2]-2*n`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A336753

/-- `eq[1, floor(sqrt(8*n))%2]-2*n` -/
def P1679691368398851325.Spec : Prop :=
  ∀ n, P1679691368398851325.a n = A336753 (n + 1)

theorem P1679691368398851325.correct : P1679691368398851325.Spec := by
  intro n
  simp only [A336753, Nat.add_sub_cancel]

end A336753

/-! ## A336753.P10543187425340308336

`A008642(A027709(n+1))-n`
-/

namespace A336753.P10543187425340308336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008642 (A027709 (n + 1)).toNat - (n : ℤ)

end

end A336753.P10543187425340308336

namespace A336753

/-- `A008642(A027709(n+1))-n` -/
def P10543187425340308336.Spec : Prop :=
  ∀ n, P10543187425340308336.a n = A336753 (n + 1)

end A336753

/-! ## A336753.P8208856053135947769

`A143730(n+1)-A138099(n+1)`
-/

namespace A336753.P8208856053135947769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143730 (n + 1) - A138099 (n + 1)

end

end A336753.P8208856053135947769

namespace A336753

/-- `A143730(n+1)-A138099(n+1)` -/
def P8208856053135947769.Spec : Prop :=
  ∀ n, P8208856053135947769.a n = A336753 (n + 1)

end A336753

/-! ## A336753.P17842015661483754224

`2*A307136(n+1)-A336751(n+1)`
-/

namespace A336753.P17842015661483754224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A307136 (n + 1) - A336751 (n + 1)

end

end A336753.P17842015661483754224

namespace A336753

/-- `2*A307136(n+1)-A336751(n+1)` -/
def P17842015661483754224.Spec : Prop :=
  ∀ n, P17842015661483754224.a n = A336753 (n + 1)

end A336753

/-! ## A336753.P1425121942175597590

`A080037(A002620(A027434(n+1)))-n`
-/

namespace A336753.P1425121942175597590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080037 (A002620 (A027434 (n + 1)).toNat).toNat - (n : ℤ)

end

end A336753.P1425121942175597590

namespace A336753

/-- `A080037(A002620(A027434(n+1)))-n` -/
def P1425121942175597590.Spec : Prop :=
  ∀ n, P1425121942175597590.a n = A336753 (n + 1)

end A336753

/-! ## A336753.P12447452989238975879

`A232091(comp[A232091(n)])-n`
-/

namespace A336753.P12447452989238975879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232091 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232091 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) - (n : ℤ)

end

end A336753.P12447452989238975879

namespace A336753

/-- `A232091(comp[A232091(n)])-n` -/
def P12447452989238975879.Spec : Prop :=
  ∀ n, P12447452989238975879.a n = A336753 (n + 1)

end A336753

/-! ## A336753.P9306961515001431368

`A002620(A027434(A049068(n+1)))-n`
-/

namespace A336753.P9306961515001431368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A027434 (A049068 (n + 1)).toNat).toNat - (n : ℤ)

end

end A336753.P9306961515001431368

namespace A336753

/-- `A002620(A027434(A049068(n+1)))-n` -/
def P9306961515001431368.Spec : Prop :=
  ∀ n, P9306961515001431368.a n = A336753 (n + 1)

end A336753

/-! ## A336753.P13878202414174227981

`A336750(3*(n+1))`
-/

namespace A336753.P13878202414174227981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336750 (3 * (n + 1))

end

end A336753.P13878202414174227981

namespace A336753

/-- `A336750(3*(n+1))` -/
def P13878202414174227981.Spec : Prop :=
  ∀ n, P13878202414174227981.a n = A336753 (n + 1)

end A336753

/-! ## A336753.P1643818301378699549

`eq[1, A080343(n)]-2*n`
-/

namespace A336753.P1643818301378699549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080343 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (2 * n : ℤ)

end

end A336753.P1643818301378699549

namespace A336753

/-- `eq[1, A080343(n)]-2*n` -/
def P1643818301378699549.Spec : Prop :=
  ∀ n, P1643818301378699549.a n = A336753 (n + 1)

end A336753

/-! ## A336753.P3961237477782015169

`eq[0, A030528(n+1)]+1-2*n`
-/

namespace A336753.P3961237477782015169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030528 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) + (1 - (2 * n : ℤ))

end

end A336753.P3961237477782015169

namespace A336753

/-- `eq[0, A030528(n+1)]+1-2*n` -/
def P3961237477782015169.Spec : Prop :=
  ∀ n, P3961237477782015169.a n = A336753 (n + 1)

end A336753

/-! ## A336753.P3490992950863269418

`eq[0, A104558(n)]-(2*n-1)`
-/

namespace A336753.P3490992950863269418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104558 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - ((2 * n : ℤ) - 1)

end

end A336753.P3490992950863269418

namespace A336753

/-- `eq[0, A104558(n)]-(2*n-1)` -/
def P3490992950863269418.Spec : Prop :=
  ∀ n, P3490992950863269418.a n = A336753 (n + 1)

end A336753

/-! ## A336753.P1441001035104594896

`A204002(A274428(n+1))`
-/

namespace A336753.P1441001035104594896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204002 (A274428 (n + 1)).toNat

end

end A336753.P1441001035104594896

namespace A336753

/-- `A204002(A274428(n+1))` -/
def P1441001035104594896.Spec : Prop :=
  ∀ n, P1441001035104594896.a n = A336753 (n + 1)

end A336753

/-! ## A336753.P13129546712409739269

`A336751(A307136(n+1)²-A336751(n+1))`
-/

namespace A336753.P13129546712409739269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336751 (A307136 (n + 1) ^ 2 - A336751 (n + 1)).toNat

end

end A336753.P13129546712409739269

namespace A336753

/-- `A336751(A307136(n+1)²-A336751(n+1))` -/
def P13129546712409739269.Spec : Prop :=
  ∀ n, P13129546712409739269.a n = A336753 (n + 1)

end A336753

/-! ## A336753.P16627070588614452793

`eq[0, A293024(n)]-2*n`
-/

namespace A336753.P16627070588614452793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293024 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (2 * n : ℤ)

end

end A336753.P16627070588614452793

namespace A336753

/-- `eq[0, A293024(n)]-2*n` -/
def P16627070588614452793.Spec : Prop :=
  ∀ n, P16627070588614452793.a n = A336753 (n + 1)

end A336753

/-! ## A336753.P9987370004466571472

`eq[0, A336345(n)]-2*n`
-/

namespace A336753.P9987370004466571472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336345 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (2 * n : ℤ)

end

end A336753.P9987370004466571472

namespace A336753

/-- `eq[0, A336345(n)]-2*n` -/
def P9987370004466571472.Spec : Prop :=
  ∀ n, P9987370004466571472.a n = A336753 (n + 1)

end A336753

/-! ## A336753.P7787500893370607860

`eq[0, A292892(n)]-2*n`
-/

namespace A336753.P7787500893370607860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292892 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (2 * n : ℤ)

end

end A336753.P7787500893370607860

namespace A336753

/-- `eq[0, A292892(n)]-2*n` -/
def P7787500893370607860.Spec : Prop :=
  ∀ n, P7787500893370607860.a n = A336753 (n + 1)

end A336753

/-!
# A336754: Perimeters in increasing order of integer-sided triangles whose sides a < b < c are in arithmetic progression.

The programs for A336754, the canonical program `A336754.P15075467513885804309` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336754 has offset 1).

The definition of A336754 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A307136, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A336754.P15075467513885804309

`3*A307136(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A336754

/-- `3*A307136(n+1)` -/
def P15075467513885804309.Spec : Prop :=
  ∀ n, P15075467513885804309.a n = A336754 (n + 1)

theorem P15075467513885804309.correct : P15075467513885804309.Spec := by
  intro n
  simp only [A336754, Nat.add_sub_cancel]

end A336754

/-! ## A336754.P7594047813518640061

`a(round(n-sqrt(n)))+3` with `a(0)=9`
-/

namespace A336754.P7594047813518640061
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [9] fun n a =>
  a (SequenceMachineLib.roundAway ((n : ℝ) - Real.sqrt (n : ℝ))).toNat + 3

end

end A336754.P7594047813518640061

namespace A336754

/-- `a(round(n-sqrt(n)))+3` -/
def P7594047813518640061.Spec : Prop :=
  ∀ n, (P7594047813518640061.a n : ℤ) = A336754 (n + 1)

end A336754

/-! ## A336754.P319853937654723924

`3*ceil(2*sqrt(comp[n²]))`
-/

namespace A336754.P319853937654723924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌈2 * Real.sqrt (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℝ)⌉

end

end A336754.P319853937654723924

namespace A336754

/-- `3*ceil(2*sqrt(comp[n²]))` -/
def P319853937654723924.Spec : Prop :=
  ∀ n, P319853937654723924.a n = A336754 (n + 1)

end A336754

/-! ## A336754.P5297358006674948145

`3*ceil(record[sqrt(xor(3, n))])+3`
-/

namespace A336754.P5297358006674948145
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.xor 3 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉ + 3

end

end A336754.P5297358006674948145

namespace A336754

/-- `3*ceil(record[sqrt(xor(3, n))])+3` -/
def P5297358006674948145.Spec : Prop :=
  ∀ n, P5297358006674948145.a n = A336754 (n + 1)

end A336754

/-! ## A336754.P733332833211251100

`3*ceil(2/acot(sqrt(n)))+3`
-/

namespace A336754.P733332833211251100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌈2 / SequenceMachineLib.acot (Real.sqrt (n : ℝ))⌉ + 3

end

end A336754.P733332833211251100

namespace A336754

/-- `3*ceil(2/acot(sqrt(n)))+3` -/
def P733332833211251100.Spec : Prop :=
  ∀ n, P733332833211251100.a n = A336754 (n + 1)

end A336754

/-! ## A336754.P2251720992214623085

`3*∑[char[∑[∑[n%2]]]]+6`
-/

namespace A336754.P2251720992214623085
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j) + 6

end

end A336754.P2251720992214623085

namespace A336754

/-- `3*∑[char[∑[∑[n%2]]]]+6` -/
def P2251720992214623085.Spec : Prop :=
  ∀ n, (P2251720992214623085.a n : ℤ) = A336754 (n + 1)

end A336754

/-! ## A336754.P10676344573199070210

`3*A000267(n)+6`
-/

namespace A336754.P10676344573199070210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000267 n + 6

end

end A336754.P10676344573199070210

namespace A336754

/-- `3*A000267(n)+6` -/
def P10676344573199070210.Spec : Prop :=
  ∀ n, P10676344573199070210.a n = A336754 (n + 1)

end A336754

/-! ## A336754.P15962574455580982976

`3*A027434(n+1)+3`
-/

namespace A336754.P15962574455580982976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A027434 (n + 1) + 3

end

end A336754.P15962574455580982976

namespace A336754

/-- `3*A027434(n+1)+3` -/
def P15962574455580982976.Spec : Prop :=
  ∀ n, P15962574455580982976.a n = A336754 (n + 1)

end A336754

/-! ## A336754.P17816757728045373866

`A049636(A027709(n+1))`
-/

namespace A336754.P17816757728045373866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049636 (A027709 (n + 1)).toNat

end

end A336754.P17816757728045373866

namespace A336754

/-- `A049636(A027709(n+1))` -/
def P17816757728045373866.Spec : Prop :=
  ∀ n, P17816757728045373866.a n = A336754 (n + 1)

end A336754

/-! ## A336754.P777609790212947252

`A055562(A143730(n+1))`
-/

namespace A336754.P777609790212947252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055562 (A143730 (n + 1)).toNat

end

end A336754.P777609790212947252

namespace A336754

/-- `A055562(A143730(n+1))` -/
def P777609790212947252.Spec : Prop :=
  ∀ n, P777609790212947252.a n = A336754 (n + 1)

end A336754

/-! ## A336754.P6581977759706556726

`A008486(A307136(n+1))`
-/

namespace A336754.P6581977759706556726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A307136 (n + 1)).toNat

end

end A336754.P6581977759706556726

namespace A336754

/-- `A008486(A307136(n+1))` -/
def P6581977759706556726.Spec : Prop :=
  ∀ n, P6581977759706556726.a n = A336754 (n + 1)

end A336754

/-! ## A336754.P14058412057326197274

`A294732(A235382(n+1))`
-/

namespace A336754.P14058412057326197274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294732 (A235382 (n + 1)).toNat

end

end A336754.P14058412057326197274

namespace A336754

/-- `A294732(A235382(n+1))` -/
def P14058412057326197274.Spec : Prop :=
  ∀ n, P14058412057326197274.a n = A336754 (n + 1)

end A336754

/-! ## A336754.P1179353047357819182

`A016789(A027434(n+1))+1`
-/

namespace A336754.P1179353047357819182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A027434 (n + 1)).toNat + 1

end

end A336754.P1179353047357819182

namespace A336754

/-- `A016789(A027434(n+1))+1` -/
def P1179353047357819182.Spec : Prop :=
  ∀ n, P1179353047357819182.a n = A336754 (n + 1)

end A336754

/-! ## A336754.P6762794985066773138

`A032766(A143730(n+1)+1)`
-/

namespace A336754.P6762794985066773138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A143730 (n + 1) + 1).toNat

end

end A336754.P6762794985066773138

namespace A336754

/-- `A032766(A143730(n+1)+1)` -/
def P6762794985066773138.Spec : Prop :=
  ∀ n, P6762794985066773138.a n = A336754 (n + 1)

end A336754

/-! ## A336754.P15762079526317062838

`A235382(n+1)+A000267(n)`
-/

namespace A336754.P15762079526317062838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235382 (n + 1) + A000267 n

end

end A336754.P15762079526317062838

namespace A336754

/-- `A235382(n+1)+A000267(n)` -/
def P15762079526317062838.Spec : Prop :=
  ∀ n, P15762079526317062838.a n = A336754 (n + 1)

end A336754

/-! ## A336754.P11979546639823476387

`A143730(n+1)+A143730(n+1)-A000267(n)`
-/

namespace A336754.P11979546639823476387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143730 (n + 1) + (A143730 (n + 1) - A000267 n)

end

end A336754.P11979546639823476387

namespace A336754

/-- `A143730(n+1)+A143730(n+1)-A000267(n)` -/
def P11979546639823476387.Spec : Prop :=
  ∀ n, P11979546639823476387.a n = A336754 (n + 1)

end A336754

/-! ## A336754.P16465531466132887355

`A307136(n+1)+A336753(n+1)+A336751(n+1)`
-/

namespace A336754.P16465531466132887355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307136 (n + 1) + (A336753 (n + 1) + A336751 (n + 1))

end

end A336754.P16465531466132887355

namespace A336754

/-- `A307136(n+1)+A336753(n+1)+A336751(n+1)` -/
def P16465531466132887355.Spec : Prop :=
  ∀ n, P16465531466132887355.a n = A336754 (n + 1)

end A336754

/-! ## A336754.P4651149499772343368

`A078633(A049068(n+1))-(2*n+1)`
-/

namespace A336754.P4651149499772343368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078633 (A049068 (n + 1)).toNat - (2 * n + 1 : ℤ)

end

end A336754.P4651149499772343368

namespace A336754

/-- `A078633(A049068(n+1))-(2*n+1)` -/
def P4651149499772343368.Spec : Prop :=
  ∀ n, P4651149499772343368.a n = A336754 (n + 1)

end A336754

/-! ## A336754.P6898534335292167601

`A008585(A101776(2*n+1)+1)`
-/

namespace A336754.P6898534335292167601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A101776 (2 * n + 1) + 1).toNat

end

end A336754.P6898534335292167601

namespace A336754

/-- `A008585(A101776(2*n+1)+1)` -/
def P6898534335292167601.Spec : Prop :=
  ∀ n, P6898534335292167601.a n = A336754 (n + 1)

end A336754

/-!
# A336755: Primitive triples for integer-sided triangles whose sides a < b < c are in arithmetic progression.

The programs for A336755, there is no canonical definition to state claims against.
-/

/-! ## A336755.P10647110834584851988

`A336750(∑[A022167(A215924(n+1))])`
-/

namespace A336755.P10647110834584851988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022167 (A215924 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336750 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A336755.P10647110834584851988

/-! ## A336755.P13690624347748571312

`A336750(∑[A010121(A027214(n))])`
-/

namespace A336755.P13690624347748571312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010121 (A027214 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336750 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A336755.P13690624347748571312

/-!
# A336756: Perimeters in increasing order of primitive integer-sided triangles whose sides a < b < c are in arithmetic progression.

The programs for A336756, the canonical program `A336756.P6848481102697664019` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336756 has offset 1).

The definition of A336756 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336756.P13265366040260359695

`3*A038569(record[xor(3, n)])`
-/

namespace A336756.P13265366040260359695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A038569 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A336756.P13265366040260359695

namespace A336756

/-- `3*A038569(record[xor(3, n)])` -/
def P13265366040260359695.Spec : Prop :=
  ∀ n, P13265366040260359695.a n = A336756 (n + 1)

end A336756

/-! ## A336756.P6848481102697664019

`3*A038567(2*(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A336756

/-- `3*A038567(2*(n+1))` -/
def P6848481102697664019.Spec : Prop :=
  ∀ n, P6848481102697664019.a n = A336756 (n + 1)

theorem P6848481102697664019.correct : P6848481102697664019.Spec := by
  intro n
  simp only [A336756, Nat.add_sub_cancel]

end A336756

/-! ## A336756.P10056813373958822213

`3*A038568(4*(n+1))`
-/

namespace A336756.P10056813373958822213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A038568 (4 * (n + 1))

end

end A336756.P10056813373958822213

namespace A336756

/-- `3*A038568(4*(n+1))` -/
def P10056813373958822213.Spec : Prop :=
  ∀ n, P10056813373958822213.a n = A336756 (n + 1)

end A336756

/-! ## A336756.P9304123622639613550

`3*A038569(4*n+3)`
-/

namespace A336756.P9304123622639613550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A038569 (4 * n + 3)

end

end A336756.P9304123622639613550

namespace A336756

/-- `3*A038569(4*n+3)` -/
def P9304123622639613550.Spec : Prop :=
  ∀ n, P9304123622639613550.a n = A336756 (n + 1)

end A336756

/-! ## A336756.P4795093320962104355

`A008486(A038567(2*(n+1)))`
-/

namespace A336756.P4795093320962104355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A038567 (2 * (n + 1))).toNat

end

end A336756.P4795093320962104355

namespace A336756

/-- `A008486(A038567(2*(n+1)))` -/
def P4795093320962104355.Spec : Prop :=
  ∀ n, P4795093320962104355.a n = A336756 (n + 1)

end A336756

/-! ## A336756.P1203065307792399023

`A008486(A038569(4*n+3))`
-/

namespace A336756.P1203065307792399023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A038569 (4 * n + 3)).toNat

end

end A336756.P1203065307792399023

namespace A336756

/-- `A008486(A038569(4*n+3))` -/
def P1203065307792399023.Spec : Prop :=
  ∀ n, P1203065307792399023.a n = A336756 (n + 1)

end A336756

/-! ## A336756.P10619980580042535778

`A038567(A005408(n+1))/(1-2/3)`
-/

namespace A336756.P10619980580042535778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038567 (A005408 (n + 1)).toNat : ℚ) / (1 - (2 : ℚ) / 3)

end

end A336756.P10619980580042535778

namespace A336756

/-- `A038567(A005408(n+1))/(1-2/3)` -/
def P10619980580042535778.Spec : Prop :=
  ∀ n, P10619980580042535778.a n = (A336756 (n + 1) : ℚ)

end A336756

/-! ## A336756.P1562882290757647862

`A111652(A169581(2*(n+2)))`
-/

namespace A336756.P1562882290757647862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111652 (A169581 (2 * (n + 2))).toNat

end

end A336756.P1562882290757647862

namespace A336756

/-- `A111652(A169581(2*(n+2)))` -/
def P1562882290757647862.Spec : Prop :=
  ∀ n, P1562882290757647862.a n = A336756 (n + 1)

end A336756

/-! ## A336756.P10133856867144071407

`3*A071912(A004766(n+1))`
-/

namespace A336756.P10133856867144071407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A071912 (A004766 (n + 1)).toNat

end

end A336756.P10133856867144071407

namespace A336756

/-- `3*A071912(A004766(n+1))` -/
def P10133856867144071407.Spec : Prop :=
  ∀ n, P10133856867144071407.a n = A336756 (n + 1)

end A336756

/-!
# A336757: Number of primitive integer-sided triangles whose sides a < b < c are in arithmetic progression with a perimeter = n.

The programs for A336757, the canonical program `A336757.P12821724106790794418` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336757 has offset 1).

The definition of A336757 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336757.P12821724106790794418

`∑{d}[n+1, A008683(#)*A024164((n+1)/#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A336757

/-- `∑{d}[n+1, A008683(#)*A024164((n+1)/#)]` -/
def P12821724106790794418.Spec : Prop :=
  ∀ n, P12821724106790794418.a n = A336757 (n + 1)

theorem P12821724106790794418.correct : P12821724106790794418.Spec := by
  intro n
  simp only [A336757, Nat.add_sub_cancel]

end A336757

/-!
# A336758: Number of n-step self-avoiding walks on the honeycomb lattice with no non-contiguous adjacencies.

The programs for A336758, there is no canonical definition to state claims against.
-/

/-! ## A336758.P8451219897993544051

`A083354(lt[A177944(2*n+1), 2])`
-/

namespace A336758.P8451219897993544051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177944 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083354 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A336758.P8451219897993544051

/-! ## A336758.P10449166695076553124

`A057142(∑[A049889(n+1)]²)`
-/

namespace A336758.P10449166695076553124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049889 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057142 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A336758.P10449166695076553124

/-! ## A336758.P17620304304702352497

`A274213(Δ[A001590(2*n+1)])`
-/

namespace A336758.P17620304304702352497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274213 (f1 (n + 1) - f1 n).toNat

end

end A336758.P17620304304702352497

/-! ## A336758.P12690905059587567327

`lt[A001222(A287858(n)), 2]+2^n`
-/

namespace A336758.P12690905059587567327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A287858 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2 ^ n

end

end A336758.P12690905059587567327

/-!
# A336766: The number of partitions of n into an even number of parts, each part occurring at most five times, minus the number of partitions of n into an odd number of parts, each part occurring at most five times.

The programs for A336766, there is no canonical definition to state claims against.
-/

/-! ## A336766.P10677369371968925305

`A261736(n)%A008776(A287285(n))`
-/

namespace A336766.P10677369371968925305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261736 n) (A008776 (A287285 n).toNat)

end

end A336766.P10677369371968925305

/-! ## A336766.P4466807556351036647

`A353461(n+1)-A137331(A029948(n))`
-/

namespace A336766.P4466807556351036647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353461 (n + 1) - A137331 (A029948 n).toNat

end

end A336766.P4466807556351036647

/-! ## A336766.P16199935825854702383

`A230642(n)-A230632(A209981(n+2))`
-/

namespace A336766.P16199935825854702383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230642 n - A230632 (A209981 (n + 2)).toNat

end

end A336766.P16199935825854702383

/-! ## A336766.P3669274939189988794

`A248211(A282120(n+1))`
-/

namespace A336766.P3669274939189988794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248211 (A282120 (n + 1)).toNat

end

end A336766.P3669274939189988794

/-! ## A336766.P6270812586800580628

`A285069(n)%A034444(A153893(n))`
-/

namespace A336766.P6270812586800580628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285069 n) (A034444 (A153893 n).toNat)

end

end A336766.P6270812586800580628

/-!
# A336767: The number of partitions of n into an even number of parts, each part occurring at most seven times, minus the number of partitions of n into an odd number of parts, each part occurring at most seven times.

The programs for A336767, there is no canonical definition to state claims against.
-/

/-! ## A336767.P17853266238041662905

`A316441(3^A285872(n))`
-/

namespace A336767.P17853266238041662905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A285872 n : ℤ))).toNat

end

end A336767.P17853266238041662905

/-! ## A336767.P12106801674702918864

`A147602(comp[A103415(n)])`
-/

namespace A336767.P12106801674702918864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103415 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147602 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A336767.P12106801674702918864

/-! ## A336767.P14720864811838518479

`A261733(and(n, A226684(n+1)))`
-/

namespace A336767.P14720864811838518479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261733 (Int.land (n : ℤ) (A226684 (n + 1))).toNat

end

end A336767.P14720864811838518479

/-! ## A336767.P12092355704878851872

`A261733(and(n, A073350(3*(n+1))))`
-/

namespace A336767.P12092355704878851872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261733 (Int.land (n : ℤ) (A073350 (3 * (n + 1)))).toNat

end

end A336767.P12092355704878851872

/-! ## A336767.P7814541514302406003

`or(A029883(A122391(n+2)), A054899(2*n+3))`
-/

namespace A336767.P7814541514302406003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A029883 (A122391 (n + 2)).toNat) (A054899 (2 * n + 3))

end

end A336767.P7814541514302406003

/-!
# A336772: Sums s of positive exponents such that no prime of the form 2^j*3^k + 1 with j + k = s exists.

The programs for A336772, there is no canonical definition to state claims against.
-/

/-! ## A336772.P9664669951447789735

`eq[0, A167505(n+1)]+1`
-/

namespace A336772.P9664669951447789735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167505 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A336772.P9664669951447789735

/-! ## A336772.P1286439574752615681

`lt[A167505(round(acot(n)+n)), 1]`
-/

namespace A336772.P1286439574752615681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167505 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A336772.P1286439574752615681

/-! ## A336772.P16004510284491931575

`eq[0, A167505(A028310(n))]`
-/

namespace A336772.P16004510284491931575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167505 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A336772.P16004510284491931575

/-! ## A336772.P4046584897548397544

`A020725(eq[0, A167505(n+1)])`
-/

namespace A336772.P4046584897548397544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A336772.P4046584897548397544

/-! ## A336772.P15246428547851805439

`A065475(eq[0, A167505(n+1)])`
-/

namespace A336772.P15246428547851805439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A336772.P15246428547851805439

/-!
# A336773: a(n) is the least prime of the form 2^j*3^k + 1, j > 0, k > 0, j + k = n. a(n) = 0 if no such prime exists.

The programs for A336773, there is no canonical definition to state claims against.
-/

/-! ## A336773.P12157473232980790172

`A109613(A007283(n)*A130326(n))`
-/

namespace A336773.P12157473232980790172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A007283 n * A130326 n).toNat

end

end A336773.P12157473232980790172

/-! ## A336773.P12547887735113034098

`∩[A110074(n+1), A380101(n+1)]`
-/

namespace A336773.P12547887735113034098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336773.P12547887735113034098

/-! ## A336773.P8688908521273930680

`∩[A110074(n+1), A391853(n+1)]`
-/

namespace A336773.P8688908521273930680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336773.P8688908521273930680

/-!
# A336776: a(n) is the least number of repetitions such that the result of the repeated execution of the multiplication f <- f*n started at f=1 produces an overflow, when the multiplication is performed using 32-bit single precision floats according to the IEEE 754 standard.

The programs for A336776, there is no canonical definition to state claims against.
-/

/-! ## A336776.P686839448493635312

`A337068(n+2)-char[A133224(n)]`
-/

namespace A336776.P686839448493635312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133224 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337068 (n + 2) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A336776.P686839448493635312

/-! ## A336776.P532177904599166380

`A337068(n+2)-char[A216991(n+1)]`
-/

namespace A336776.P532177904599166380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216991 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337068 (n + 2) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A336776.P532177904599166380

/-! ## A336776.P4054762545742184978

`A337068(n+2)-A010054(A002378(n))`
-/

namespace A336776.P4054762545742184978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337068 (n + 2) - A010054 (A002378 n).toNat

end

end A336776.P4054762545742184978

/-! ## A336776.P14645569696136554116

`A337068(n+2)-char[A000096(A052852(n))]`
-/

namespace A336776.P14645569696136554116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A052852 n).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337068 (n + 2) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A336776.P14645569696136554116

/-! ## A336776.P13898419597130460320

`ceil(A336780(n+2)/8)`
-/

namespace A336776.P13898419597130460320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A336780 (n + 2) : ℚ) / 8⌉

end

end A336776.P13898419597130460320

/-! ## A336776.P3450177219860876471

`A110656(A336780(n+2))`
-/

namespace A336776.P3450177219860876471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A336780 (n + 2)).toNat

end

end A336776.P3450177219860876471

/-! ## A336776.P8767019551829442726

`A337068(n+2)-A209229(A336780(n+2))`
-/

namespace A336776.P8767019551829442726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337068 (n + 2) - A209229 (A336780 (n + 2)).toNat

end

end A336776.P8767019551829442726

/-!
# A336786: Value of prime number D for incrementally largest values of minimal x satisfying the equation x^2 - D*y^2 = 2.

The programs for A336786, there is no canonical definition to state claims against.
-/

/-! ## A336786.P6667986421923286291

`p?[A047540(n+1)*A139549(n)]`
-/

namespace A336786.P6667986421923286291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047540 (n + 1) * A139549 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A336786.P6667986421923286291

/-! ## A336786.P4005261203952678980

`p?[C(A003158(n+1), A339584(3*n+1))]`
-/

namespace A336786.P4005261203952678980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003158 (n + 1)).toNat (A339584 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A336786.P4005261203952678980

/-! ## A336786.P11503646526736206916

`∩[A000040(n+1), A051213(A276625(n+1))]`
-/

namespace A336786.P11503646526736206916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051213 (A276625 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336786.P11503646526736206916

/-! ## A336786.P16915953893837659559

`∩[A003158(n+1), A248346(n+1)]`
-/

namespace A336786.P16915953893837659559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336786.P16915953893837659559

/-!
# A336787: Incrementally largest values of minimal x satisfying the equation x^2 - D*y^2 = 2, where D is a prime number.

The programs for A336787, there is no canonical definition to state claims against.
-/

/-! ## A336787.P505350909580191281

`record[A261247(n+1)%lcm(4, A261247(n+1))]`
-/

namespace A336787.P505350909580191281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261247 (n + 1)) (Int.lcm 4 (A261247 (n + 1)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336787.P505350909580191281

/-! ## A336787.P2955502217391483027

`record[floor(A263009(n+1)+acot(n))]`
-/

namespace A336787.P2955502217391483027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A263009 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336787.P2955502217391483027

/-! ## A336787.P1490132655250025109

`record[A263009(n+1)+A000007(n)]`
-/

namespace A336787.P1490132655250025109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263009 (n + 1) + A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336787.P1490132655250025109

/-! ## A336787.P8112646193549532387

`record[A263009(n+1)+A240465(n)]`
-/

namespace A336787.P8112646193549532387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263009 (n + 1) + A240465 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336787.P8112646193549532387

/-!
# A336788: Values of prime numbers, D, for incrementally largest values of minimal y satisfying the equation x^2 - D*y^2 = 2.

The programs for A336788, there is no canonical definition to state claims against.
-/

/-! ## A336788.P2031830061948316434

`A336786(A074764(n+1))`
-/

namespace A336788.P2031830061948316434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336786 (A074764 (n + 1)).toNat

end

end A336788.P2031830061948316434

/-! ## A336788.P15224290206635406876

`A336786(A113311(n)+n)`
-/

namespace A336788.P15224290206635406876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336786 (A113311 n + (n : ℤ)).toNat

end

end A336788.P15224290206635406876

/-! ## A336788.P14289497504858643211

`p?[A336786(n+1)%A049016(n)]`
-/

namespace A336788.P14289497504858643211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336786 (n + 1)) (A049016 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A336788.P14289497504858643211

/-! ## A336788.P17344616440156224790

`A336786(comp[A192181(6*(n+1))^n]+1)`
-/

namespace A336788.P17344616440156224790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192181 (6 * (n + 1)) ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336786 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A336788.P17344616440156224790

/-! ## A336788.P9348022134730046904

`A336786(comp[n^n*A061356(n+2)]+1)`
-/

namespace A336788.P9348022134730046904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) * A061356 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336786 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A336788.P9348022134730046904

/-!
# A336789: Incrementally largest values of minimal y satisfying the equation x^2 - D*y^2 = 2, where D is a prime number.

The programs for A336789, there is no canonical definition to state claims against.
-/

/-! ## A336789.P16514041700713876711

`record[A261248(n+1)^(A261246(n+1)%2)]`
-/

namespace A336789.P16514041700713876711
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261248 (n + 1) : ℚ) ^ (Int.tmod (A261246 (n + 1)) 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336789.P16514041700713876711

/-! ## A336789.P16110334731460078097

`record[A261248(n+1)^(A261247(n+1)%2)]`
-/

namespace A336789.P16110334731460078097
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261248 (n + 1) : ℚ) ^ (Int.tmod (A261247 (n + 1)) 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336789.P16110334731460078097

/-! ## A336789.P10080242489873652847

`record[A261248(n+4)%A264439(n+4)]`
-/

namespace A336789.P10080242489873652847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261248 (n + 4)) (A264439 (n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336789.P10080242489873652847

/-!
# A336790: Values of odd prime numbers, D, for incrementally largest values of minimal x satisfying the equation x^2 - D*y^2 = -2.

The programs for A336790, there is no canonical definition to state claims against.
-/

/-! ## A336790.P14301240124093072500

`∪[A022009(n+1), A336792(n+1)]`
-/

namespace A336790.P14301240124093072500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022009 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A336790.P14301240124093072500

/-! ## A336790.P17319086928930723048

`∪[A022011(n+1), A336792(n+1)]`
-/

namespace A336790.P17319086928930723048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A336790.P17319086928930723048

/-! ## A336790.P11843352249969497079

`∪[A022545(n+1), A336792(n+1)]`
-/

namespace A336790.P11843352249969497079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A336790.P11843352249969497079

/-! ## A336790.P3493531190989864714

`∪[A027569(n+1), A336792(n+1)]`
-/

namespace A336790.P3493531190989864714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A336790.P3493531190989864714

/-! ## A336790.P17568540626410627014

`∪[A076171(n+1), A336792(n+1)]`
-/

namespace A336790.P17568540626410627014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A336790.P17568540626410627014

/-! ## A336790.P11394856276745120269

`∪[A076173(n+1), A336792(n+1)]`
-/

namespace A336790.P11394856276745120269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A336790.P11394856276745120269

/-! ## A336790.P14170388179168382266

`∪[A087395(n+1), A336792(n+1)]`
-/

namespace A336790.P14170388179168382266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A336790.P14170388179168382266

/-! ## A336790.P12195908837702704237

`∪[A199169(n+1), A336792(n+1)]`
-/

namespace A336790.P12195908837702704237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A336790.P12195908837702704237

/-! ## A336790.P16179086186708656453

`∪[A213647(n+1), A336792(n+1)]`
-/

namespace A336790.P16179086186708656453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213647 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A336790.P16179086186708656453

/-! ## A336790.P9595024609164044419

`∪[A253632(n+1), A336792(n+1)]`
-/

namespace A336790.P9595024609164044419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A336790.P9595024609164044419

/-!
# A336791: Incrementally largest values of minimal x satisfying the equation x^2 - D*y^2 = -2, where D is an odd prime number.

The programs for A336791, there is no canonical definition to state claims against.
-/

/-! ## A336791.P14294183368318243057

`record[A339881(n+2)]`
-/

namespace A336791.P14294183368318243057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339881 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336791.P14294183368318243057

/-! ## A336791.P2664492976812620977

`record[Δ[A339881(A028920(n))]]`
-/

namespace A336791.P2664492976812620977
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339881 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336791.P2664492976812620977

/-! ## A336791.P14304994841253921041

`record[∏{e}[4*n-n%2, A339881(#)]]`
-/

namespace A336791.P14304994841253921041
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - ((n % 2 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, A339881 (Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336791.P14304994841253921041

/-!
# A336792: Values of odd prime numbers, D, for incrementally largest values of minimal positive y satisfying the equation x^2 - D*y^2 = -2.

The programs for A336792, there is no canonical definition to state claims against.
-/

/-! ## A336792.P17266095963020284156

`A336790(ceil(cosh(sin(n))+n))`
-/

namespace A336792.P17266095963020284156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336790 ⌈Real.cosh (Real.sin (n : ℝ)) + (n : ℝ)⌉.toNat

end

end A336792.P17266095963020284156

/-! ## A336792.P13613051323677223313

`A336790(n+2-floor(acot(n)))`
-/

namespace A336792.P13613051323677223313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336790 ((n + 2 : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A336792.P13613051323677223313

/-! ## A336792.P11322243705303603175

`A336790(ceil(sqrt(∑[2*n]))+1)`
-/

namespace A336792.P11322243705303603175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336790 (⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉ + 1).toNat

end

end A336792.P11322243705303603175

/-! ## A336792.P634034582493978628

`A336790(n+2)%∑[n+2]²`
-/

namespace A336792.P634034582493978628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336790 (n + 2)) (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A336792.P634034582493978628

/-! ## A336792.P16140587279878361470

`p?[A336790(n+1)%((n+1)^3)]`
-/

namespace A336792.P16140587279878361470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336790 (n + 1)) ((n + 1) ^ 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A336792.P16140587279878361470

/-! ## A336792.P5111619924473211852

`filter[A336790(n+1), A353815(#)]`
-/

namespace A336792.P5111619924473211852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353815 (f1 j).toNat = 1) n)

end

end A336792.P5111619924473211852

/-! ## A336792.P12989260734028021755

`filter[A336790(n+1), A353816(#)]`
-/

namespace A336792.P12989260734028021755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A336792.P12989260734028021755

/-! ## A336792.P5115578820328634374

`A001221(a(n-1))*A336790(n+2)` with `a(0)=3`
-/

namespace A336792.P5115578820328634374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A001221 (a (n - 1)).toNat * A336790 (n + 2)

end

end A336792.P5115578820328634374

/-!
# A336793: Incrementally largest values of minimal positive y satisfying the equation x^2 - D*y^2 = -2, where D is an odd prime number.

The programs for A336793, there is no canonical definition to state claims against.
-/

/-! ## A336793.P14380333911308260866

`record[A339882(n+1)]`
-/

namespace A336793.P14380333911308260866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336793.P14380333911308260866

/-! ## A336793.P3027673778757162598

`record[ratio[A339882(A152271(n))]]`
-/

namespace A336793.P3027673778757162598
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339882 (A152271 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336793.P3027673778757162598

/-! ## A336793.P10104863715473362985

`record[A339882(A152271(n))-A025444(n)]`
-/

namespace A336793.P10104863715473362985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339882 (A152271 n).toNat - A025444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336793.P10104863715473362985

/-! ## A336793.P226780583377973535

`record[A339882(A152271(n))]-A064459(n)`
-/

namespace A336793.P226780583377973535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339882 (A152271 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A064459 n

end

end A336793.P226780583377973535

/-! ## A336793.P7567971185818250860

`record[A339882(A152271(n))]-A185284(n)`
-/

namespace A336793.P7567971185818250860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339882 (A152271 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A185284 n

end

end A336793.P7567971185818250860

/-!
# A336794: Value of prime number D for incrementally largest values of minimal x satisfying the equation x^2 - D*y^2 = 3.

The programs for A336794, there is no canonical definition to state claims against.
-/

/-! ## A336794.P865414345618269852

`∪[A087513(n+1), A336796(n+1)]`
-/

namespace A336794.P865414345618269852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A336794.P865414345618269852

/-! ## A336794.P13198941091685557079

`A068228(eq[A002262(n), A029333(n)])`
-/

namespace A336794.P13198941091685557079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A336794.P13198941091685557079

/-!
# A336796: Value of prime number D for incrementally largest values of minimal y satisfying the equation x^2 - D*y^2 = 3.

The programs for A336796, there is no canonical definition to state claims against.
-/

/-! ## A336796.P8756743274062661505

`p?[A336794(n+1)+char[1]]`
-/

namespace A336796.P8756743274062661505
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336794 (n + 1) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A336796.P8756743274062661505

/-! ## A336796.P1941070568797668883

`A336794(n+2-floor(acot(n)))`
-/

namespace A336796.P1941070568797668883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336794 ((n + 2 : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A336796.P1941070568797668883

/-! ## A336796.P18194703954345502073

`A336794((n+2)/ceil(acot(n)))`
-/

namespace A336796.P18194703954345502073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336794 (SequenceMachineLib.roundAway ((n + 2 : ℚ) / (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℚ))).toNat

end

end A336796.P18194703954345502073

/-! ## A336796.P9744231201954886972

`A336794(floor(atan(n+1))+n+1)`
-/

namespace A336796.P9744231201954886972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336794 (⌊Real.arctan (n + 1 : ℝ)⌋ + (n + 1 : ℤ)).toNat

end

end A336796.P9744231201954886972

/-! ## A336796.P14984609313062876195

`A336794(A065475(n+1))`
-/

namespace A336796.P14984609313062876195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336794 (A065475 (n + 1)).toNat

end

end A336796.P14984609313062876195

/-!
# A336799: The numbers visited on a square spiral, with a(1)=1, a(2)=2, a(3) = 6, when stepping to an unvisited number as close as possible to the n = 1 starting position that has at least one common factor with the last visited number but none with the second last visited number. In case of a tie, choose the smallest number.

The programs for A336799, there is no canonical definition to state claims against.
-/

/-! ## A336799.P13051380436647540747

`A336957(n+1)+A051175(A181836(n))`
-/

namespace A336799.P13051380436647540747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336957 (n + 1) + A051175 (A181836 n).toNat

end

end A336799.P13051380436647540747

/-! ## A336799.P5722192043629867142

`A360543(A067912(n+1))+A336957(n+1)`
-/

namespace A336799.P5722192043629867142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360543 (A067912 (n + 1)).toNat + A336957 (n + 1)

end

end A336799.P5722192043629867142

