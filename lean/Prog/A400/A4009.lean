import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C050
import Seq.B000.C051
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C011
import Seq.B001.C013
import Seq.B001.C015
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C003
import Seq.B006.C000
import Seq.B006.C002
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
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A400900: Number of connected simple unlabeled bipartite Eulerian graphs on 2*n vertices that admit an automorphism interchanging the two parts of the bipartition.

The programs for A400900, there is no canonical definition to state claims against.
-/

/-! ## A400900.P12558199172913038104

`A103221(A048086(n+3)+∑[A330042(n+1)])`
-/

namespace A400900.P12558199172913038104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A048086 (n + 3) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A400900.P12558199172913038104

/-!
# A400907: Number of labeled loopless digraphs on n vertices such that deg^+(v) + deg^-(v) = 2 for every vertex v.

The programs for A400907, there is no canonical definition to state claims against.
-/

/-! ## A400907.P16334471339415155667

`A088980(A117060(n+1)-A022333(2*n+5))`
-/

namespace A400907.P16334471339415155667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088980 (A117060 (n + 1) - A022333 (2 * n + 5)).toNat

end

end A400907.P16334471339415155667

/-!
# A400912: Number of compositions of n into parts of the form Fibonacci(k) - 1, k >= 3.

The programs for A400912, there is no canonical definition to state claims against.
-/

/-! ## A400912.P75682318860371698

`A357451(n)+A277157(A056391(n+4))`
-/

namespace A400912.P75682318860371698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357451 n + A277157 (A056391 (n + 4)).toNat

end

end A400912.P75682318860371698

/-!
# A400914: Number of nonisomorphic g-dimonoids of order n.

The programs for A400914, there is no canonical definition to state claims against.
-/

/-! ## A400914.P8539649741719085410

`A246443(A298647(n)+A000364(n))`
-/

namespace A400914.P8539649741719085410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246443 (A298647 n + A000364 n).toNat

end

end A400914.P8539649741719085410

/-!
# A400915: Number of nonisomorphic commutative g-dimonoids of order n.

The programs for A400915, there is no canonical definition to state claims against.
-/

/-! ## A400915.P7858050192255095490

`A173021(n^(n+2))`
-/

namespace A400915.P7858050192255095490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173021 (n ^ (n + 2))

end

end A400915.P7858050192255095490

/-!
# A400919: Sum of the remainders of n modulo the odd numbers 3, 5, ..., 2*floor(n/3)+1.

The programs for A400919, the canonical program `A400919.P349381899427335323` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400919 has offset 1).

The definition of A400919 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A400919.P349381899427335323

`(n+1)*floor((n+1)/3)-∑{#}[floor((n+1)/3)-1, (2*(#+1)+1)*floor((n+1)/(2*(#+1)+1))]`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A400919

/-- `(n+1)*floor((n+1)/3)-∑{#}[floor((n+1)/3)-1, (2*(#+1)+1)*floor((n+1)/(2*(#+1)+1))]` -/
def P349381899427335323.Spec : Prop :=
  ∀ n, P349381899427335323.a n = A400919 (n + 1)

theorem P349381899427335323.correct : P349381899427335323.Spec := by
  intro n
  simp only [A400919, Nat.add_sub_cancel]

end A400919

/-!
# A400921: Number of monosubstituted acyclic hydrocarbons (alkanes and olefins), ignoring stereoisomers.

The programs for A400921, there is no canonical definition to state claims against.
-/

/-! ## A400921.P7958888852461777120

`A319242(a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A400921.P7958888852461777120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A319242 (a (n - 1)).toNat

end

end A400921.P7958888852461777120

/-! ## A400921.P2332904999058563785

`A023190(A148866(n))`
-/

namespace A400921.P2332904999058563785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023190 (A148866 n).toNat

end

end A400921.P2332904999058563785

/-! ## A400921.P5643579578714186999

`A023193(A149967(n))`
-/

namespace A400921.P5643579578714186999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A149967 n).toNat

end

end A400921.P5643579578714186999

/-!
# A400922: Number of monosubstituted acyclic hydrocarbons (alkanes and olefins), taking stereoisomers into account.

The programs for A400922, there is no canonical definition to state claims against.
-/

/-! ## A400922.P987625504716878642

`A226762(A150585(n))`
-/

namespace A400922.P987625504716878642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226762 (A150585 n).toNat

end

end A400922.P987625504716878642

/-! ## A400922.P17070653017617483909

`A264749(A151073(n))`
-/

namespace A400922.P17070653017617483909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264749 (A151073 n).toNat

end

end A400922.P17070653017617483909

/-! ## A400922.P18268778132773669835

`A054404(A038056(n+1))`
-/

namespace A400922.P18268778132773669835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A038056 (n + 1)).toNat

end

end A400922.P18268778132773669835

/-!
# A400923: Number of achiral n-carbon alkyl radicals C(n)H(2n+1) ignoring stereoisomers.

The programs for A400923, there is no canonical definition to state claims against.
-/

/-! ## A400923.P4994201037431976982

`A082447(A309508(n))`
-/

namespace A400923.P4994201037431976982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082447 (A309508 n).toNat

end

end A400923.P4994201037431976982

/-! ## A400923.P3113829012447013459

`A227568(A135346(n))`
-/

namespace A400923.P3113829012447013459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227568 (A135346 n).toNat

end

end A400923.P3113829012447013459

/-! ## A400923.P14584756274155864856

`A327534(A229194(n))`
-/

namespace A400923.P14584756274155864856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327534 (A229194 n).toNat

end

end A400923.P14584756274155864856

/-! ## A400923.P1648984550884385997

`A325389(A349843(n))`
-/

namespace A400923.P1648984550884385997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325389 (A349843 n).toNat

end

end A400923.P1648984550884385997

/-! ## A400923.P4285111476005189992

`A135662(A191628(n+1))`
-/

namespace A400923.P4285111476005189992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135662 (A191628 (n + 1)).toNat

end

end A400923.P4285111476005189992

/-!
# A400927: Number of distinct time intervals measurable by burning n non-uniform ropes, each burning for 1 unit of time, extinguishing allowed, as measured from the initial state to any transition.

The programs for A400927, there is no canonical definition to state claims against.
-/

/-! ## A400927.P3658538833533804430

`A001462(A077234(n))`
-/

namespace A400927.P3658538833533804430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A077234 n).toNat

end

end A400927.P3658538833533804430

/-! ## A400927.P16757353421001736540

`A001462(A047107(n+1))`
-/

namespace A400927.P16757353421001736540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A047107 (n + 1)).toNat

end

end A400927.P16757353421001736540

/-! ## A400927.P8011987232905546269

`A295091(n+1)-A010060(A057173(n+1))`
-/

namespace A400927.P8011987232905546269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295091 (n + 1) - A010060 (A057173 (n + 1)).toNat

end

end A400927.P8011987232905546269

/-!
# A400928: Array read by ascending antidiagonals: A(n,k) = Sum_{m=0..n} binomial(n,m)^k, with k >= 0.

The programs for A400928, there is no canonical definition to state claims against.
-/

/-! ## A400928.P2272488666070541244

`A309010(row(n)-2*col(n)+n)`
-/

namespace A400928.P2272488666070541244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309010 ((SequenceMachineLib.triRow n : ℤ) - (2 * SequenceMachineLib.triCol n : ℤ) + (n : ℤ)).toNat

end

end A400928.P2272488666070541244

/-! ## A400928.P17793910336234019643

`A309010(A061579(n))`
-/

namespace A400928.P17793910336234019643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309010 (A061579 n).toNat

end

end A400928.P17793910336234019643

/-! ## A400928.P7427730506963918767

`A309010(A114327(n)+n)`
-/

namespace A400928.P7427730506963918767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309010 (A114327 n + (n : ℤ)).toNat

end

end A400928.P7427730506963918767

/-! ## A400928.P14148206928161385161

`A309010(A038722(n+2))`
-/

namespace A400928.P14148206928161385161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309010 (A038722 (n + 2)).toNat

end

end A400928.P14148206928161385161

/-! ## A400928.P5020411562323039837

`A120397(A300437(n))`
-/

namespace A400928.P5020411562323039837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120397 (A300437 n).toNat

end

end A400928.P5020411562323039837

/-!
# A400929: Antidiagonal sums of the array A400928.

The programs for A400929, there is no canonical definition to state claims against.
-/

/-! ## A400929.P9206742414742349393

`∑[A029837(n+1)+A001462(A393744(n))]`
-/

namespace A400929.P9206742414742349393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (n + 1) + A001462 (A393744 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400929.P9206742414742349393

/-! ## A400929.P12857252624133111978

`or(A027336(2*(n+1)), A324766(A000079(n)))`
-/

namespace A400929.P12857252624133111978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A027336 (2 * (n + 1))) (A324766 (A000079 n).toNat)

end

end A400929.P12857252624133111978

/-!
# A400930: Maximum length of a strictly increasing sequence of distinct prime divisors p_1, ..., p_k of n such that p_i divides p_{i+1} - 1 for 1 <= i < k.

The programs for A400930, the canonical program `A400930.P9795398723456261995` is in `Seq.B005.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400930 has offset 1).

The definition of A400930 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A400930.P9795398723456261995

`A326195(∏{p}[1+n, #])`

The canonical program, it is in `Seq.B005.C003`.
-/

namespace A400930

/-- `A326195(∏{p}[1+n, #])` -/
def P9795398723456261995.Spec : Prop :=
  ∀ n, P9795398723456261995.a n = A400930 (n + 1)

theorem P9795398723456261995.correct : P9795398723456261995.Spec := by
  intro n
  simp only [A400930, Nat.add_sub_cancel]

end A400930

/-! ## A400930.P10987508709401265789

`a(A173751(n+1)-1)+1` with `a(0)=0`
-/

namespace A400930.P10987508709401265789
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A173751 (n + 1) - 1).toNat + 1

end

end A400930.P10987508709401265789

namespace A400930

/-- `a(A173751(n+1)-1)+1` -/
def P10987508709401265789.Spec : Prop :=
  ∀ n, (P10987508709401265789.a n : ℤ) = A400930 (n + 1)

end A400930

/-! ## A400930.P2755496242258888279

`1+a(gcd(n+1, A125131(n+1))-1)` with `a(0)=0`
-/

namespace A400930.P2755496242258888279
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  1 + a (Int.gcd (n + 1 : ℤ) (A125131 (n + 1)) - 1)

end

end A400930.P2755496242258888279

namespace A400930

/-- `1+a(gcd(n+1, A125131(n+1))-1)` -/
def P2755496242258888279.Spec : Prop :=
  ∀ n, (P2755496242258888279.a n : ℤ) = A400930 (n + 1)

end A400930

/-! ## A400930.P3694804326321644560

`A326195(A007947(1+n))`
-/

namespace A400930.P3694804326321644560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326195 (A007947 (1 + n)).toNat

end

end A400930.P3694804326321644560

namespace A400930

/-- `A326195(A007947(1+n))` -/
def P3694804326321644560.Spec : Prop :=
  ∀ n, P3694804326321644560.a n = A400930 (n + 1)

end A400930

/-! ## A400930.P11958477952332550324

`A326195(A064549(n+1))-A326195(n+1)`
-/

namespace A400930.P11958477952332550324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326195 (A064549 (n + 1)).toNat - A326195 (n + 1)

end

end A400930.P11958477952332550324

namespace A400930

/-- `A326195(A064549(n+1))-A326195(n+1)` -/
def P11958477952332550324.Spec : Prop :=
  ∀ n, P11958477952332550324.a n = A400930 (n + 1)

end A400930

/-! ## A400930.P2512982734438137685

`A067131(A173751(n+1))%A320456(n+1)`
-/

namespace A400930.P2512982734438137685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067131 (A173751 (n + 1)).toNat) (A320456 (n + 1))

end

end A400930.P2512982734438137685

namespace A400930

/-- `A067131(A173751(n+1))%A320456(n+1)` -/
def P2512982734438137685.Spec : Prop :=
  ∀ n, P2512982734438137685.a n = A400930 (n + 1)

end A400930

/-!
# A400931: Numbers all of whose divisors are undulating numbers (A355301).

The programs for A400931, the canonical program `A400931.P7317097379673727350` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400931 has offset 1).

The definition of A400931 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A400931.P11512905980340285825

`eq[C(A351868(n), n), A178334(n)]`
-/

namespace A400931.P11512905980340285825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A351868 n).toNat n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A400931.P11512905980340285825

namespace A400931

/-- `eq[C(A351868(n), n), A178334(n)]` -/
def P11512905980340285825.Spec : Prop :=
  ∀ n, (P11512905980340285825.a n : ℤ) = A400931 (n + 1)

end A400931

/-! ## A400931.P12105553098970942665

`A043096(n+2)%A067926(n+1)`
-/

namespace A400931.P12105553098970942665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043096 (n + 2)) (A067926 (n + 1))

end

end A400931.P12105553098970942665

namespace A400931

/-- `A043096(n+2)%A067926(n+1)` -/
def P12105553098970942665.Spec : Prop :=
  ∀ n, P12105553098970942665.a n = A400931 (n + 1)

end A400931

/-! ## A400931.P7317097379673727350

`A185012(A000290(n))+A043096(n+2)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A400931

/-- `A185012(A000290(n))+A043096(n+2)` -/
def P7317097379673727350.Spec : Prop :=
  ∀ n, P7317097379673727350.a n = A400931 (n + 1)

theorem P7317097379673727350.correct : P7317097379673727350.Spec := by
  intro n
  simp only [A400931, Nat.add_sub_cancel]

end A400931

/-! ## A400931.P93778877325206679

`eq[A010057(A321804(n)+2), A178334(n)]`
-/

namespace A400931.P93778877325206679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (A321804 n + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A400931.P93778877325206679

namespace A400931

/-- `eq[A010057(A321804(n)+2), A178334(n)]` -/
def P93778877325206679.Spec : Prop :=
  ∀ n, (P93778877325206679.a n : ℤ) = A400931 (n + 1)

end A400931

/-! ## A400931.P5495224732398867085

`A059841(A087484(n+1))+A043096(n+2)`
-/

namespace A400931.P5495224732398867085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A087484 (n + 1)).toNat + A043096 (n + 2)

end

end A400931.P5495224732398867085

namespace A400931

/-- `A059841(A087484(n+1))+A043096(n+2)` -/
def P5495224732398867085.Spec : Prop :=
  ∀ n, P5495224732398867085.a n = A400931 (n + 1)

end A400931

/-! ## A400931.P16448855838915067271

`A183063(A002378(n)+1)+A043096(n+2)`
-/

namespace A400931.P16448855838915067271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (A002378 n + 1).toNat + A043096 (n + 2)

end

end A400931.P16448855838915067271

namespace A400931

/-- `A183063(A002378(n)+1)+A043096(n+2)` -/
def P16448855838915067271.Spec : Prop :=
  ∀ n, P16448855838915067271.a n = A400931 (n + 1)

end A400931

/-! ## A400931.P10277784818689764996

`lt[A000041(n), A045823(n+4)*A321802(n)]`
-/

namespace A400931.P10277784818689764996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045823 (n + 4) * A321802 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A400931.P10277784818689764996

namespace A400931

/-- `lt[A000041(n), A045823(n+4)*A321802(n)]` -/
def P10277784818689764996.Spec : Prop :=
  ∀ n, (P10277784818689764996.a n : ℤ) = A400931 (n + 1)

end A400931

/-! ## A400931.P15033831698747532276

`A043096(n+2)*A055023(A366523((n+1)²))`
-/

namespace A400931.P15033831698747532276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043096 (n + 2) * A055023 (A366523 ((n + 1) ^ 2)).toNat

end

end A400931.P15033831698747532276

namespace A400931

/-- `A043096(n+2)*A055023(A366523((n+1)²))` -/
def P15033831698747532276.Spec : Prop :=
  ∀ n, P15033831698747532276.a n = A400931 (n + 1)

end A400931

/-! ## A400931.P4301043493937279036

`lt[A112735(n+1), A005897(3*n+2)*A321801(n)]`
-/

namespace A400931.P4301043493937279036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005897 (3 * n + 2) * A321801 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A400931.P4301043493937279036

namespace A400931

/-- `lt[A112735(n+1), A005897(3*n+2)*A321801(n)]` -/
def P4301043493937279036.Spec : Prop :=
  ∀ n, (P4301043493937279036.a n : ℤ) = A400931 (n + 1)

end A400931

/-! ## A400931.P17044054789995304185

`lt[A048307(n), 10*A321801(n)]`
-/

namespace A400931.P17044054789995304185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048307 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A321801 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A400931.P17044054789995304185

namespace A400931

/-- `lt[A048307(n), 10*A321801(n)]` -/
def P17044054789995304185.Spec : Prop :=
  ∀ n, (P17044054789995304185.a n : ℤ) = A400931 (n + 1)

end A400931

/-!
# A400937: Squares visited by knight moves on a diagonally numbered Q1 board and always taking the available unvisited square with the shortest distance to the bisecting line of Q1. In the case of a tie, first squares with the larger row index are preferred, second the square with larger column index is preferred. Starting square is labeled 1.

The programs for A400937, the canonical program `A400937.P6020951137863311618` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400937 has offset 1).

The definition of A400937 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A400937.P6020951137863311618

`ogf((1+7x+7x^2+3x^3)/(1-2x+2x^3-x^4))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A400937

/-- `ogf((1+7x+7x^2+3x^3)/(1-2x+2x^3-x^4))` -/
def P6020951137863311618.Spec : Prop :=
  ∀ n, P6020951137863311618.a n = A400937 (n + 1)

theorem P6020951137863311618.correct : P6020951137863311618.Spec := by
  intro n
  simp only [A400937, Nat.add_sub_cancel]

end A400937

/-! ## A400937.P2787446749888826431

`floor((9*(n+1)²-12*(n+1)+6)/2)`
-/

namespace A400937.P2787446749888826431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((9 * (n + 1) ^ 2 : ℤ) - (12 * (n + 1) : ℤ) + 6 : ℚ) / 2⌋

end

end A400937.P2787446749888826431

namespace A400937

/-- `floor((9*(n+1)²-12*(n+1)+6)/2)` -/
def P2787446749888826431.Spec : Prop :=
  ∀ n, P2787446749888826431.a n = A400937 (n + 1)

end A400937

/-! ## A400937.P2146142751674466821

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=9, a(2)=25, a(3)=51`
-/

namespace A400937.P2146142751674466821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 9, 25, 51] fun n a =>
  2 * a (n - 1) - 2 * a (n - 3) + a (n - 4)

end

end A400937.P2146142751674466821

namespace A400937

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P2146142751674466821.Spec : Prop :=
  ∀ n, P2146142751674466821.a n = A400937 (n + 1)

end A400937

/-! ## A400937.P1855797842481929342

`∑[a(n-2)+18]` with `a(0)=1, a(1)=8, a(2)=16`
-/

namespace A400937.P1855797842481929342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 8, 16] fun n f1 =>
  f1 (n - 2) + 18

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400937.P1855797842481929342

namespace A400937

/-- `∑[a(n-2)+18]` -/
def P1855797842481929342.Spec : Prop :=
  ∀ n, (P1855797842481929342.a n : ℤ) = A400937 (n + 1)

end A400937

/-! ## A400937.P16529641889133564897

`∑[∑[floor(a(n-2))]]` with `a(0)=1, a(1)=7, a(2)=8, a(3)=10`

`floor` is left out, it is the identity on integers.
-/

namespace A400937.P16529641889133564897
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 7, 8, 10] fun n f2 =>
  f2 (n - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400937.P16529641889133564897

namespace A400937

/-- `∑[∑[floor(a(n-2))]]` -/
def P16529641889133564897.Spec : Prop :=
  ∀ n, (P16529641889133564897.a n : ℤ) = A400937 (n + 1)

end A400937

/-! ## A400937.P14528734139851732702

`or(1, A204467(n))`
-/

namespace A400937.P14528734139851732702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A204467 n)

end

end A400937.P14528734139851732702

namespace A400937

/-- `or(1, A204467(n))` -/
def P14528734139851732702.Spec : Prop :=
  ∀ n, P14528734139851732702.a n = A400937 (n + 1)

end A400937

/-! ## A400937.P8730500709039503828

`A033951(n)+A000982(n)`
-/

namespace A400937.P8730500709039503828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033951 n + A000982 n

end

end A400937.P8730500709039503828

namespace A400937

/-- `A033951(n)+A000982(n)` -/
def P8730500709039503828.Spec : Prop :=
  ∀ n, P8730500709039503828.a n = A400937 (n + 1)

end A400937

/-! ## A400937.P10366488685327721338

`A038764(n)+A007494(n)`
-/

namespace A400937.P10366488685327721338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038764 n + A007494 n

end

end A400937.P10366488685327721338

namespace A400937

/-- `A038764(n)+A007494(n)` -/
def P10366488685327721338.Spec : Prop :=
  ∀ n, P10366488685327721338.a n = A400937 (n + 1)

end A400937

/-! ## A400937.P13186141487891602442

`A061925(n)+A033954(n)`
-/

namespace A400937.P13186141487891602442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061925 n + A033954 n

end

end A400937.P13186141487891602442

namespace A400937

/-- `A061925(n)+A033954(n)` -/
def P13186141487891602442.Spec : Prop :=
  ∀ n, P13186141487891602442.a n = A400937 (n + 1)

end A400937

/-! ## A400937.P7685109677617421218

`A080513(n)+A062725(n)`
-/

namespace A400937.P7685109677617421218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 n + A062725 n

end

end A400937.P7685109677617421218

namespace A400937

/-- `A080513(n)+A062725(n)` -/
def P7685109677617421218.Spec : Prop :=
  ∀ n, P7685109677617421218.a n = A400937 (n + 1)

end A400937

/-! ## A400937.P12751812537210004417

`A110654(n)+A064225(n)`
-/

namespace A400937.P12751812537210004417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n + A064225 n

end

end A400937.P12751812537210004417

namespace A400937

/-- `A110654(n)+A064225(n)` -/
def P12751812537210004417.Spec : Prop :=
  ∀ n, P12751812537210004417.a n = A400937 (n + 1)

end A400937

/-! ## A400937.P2286901292313240704

`A204467(n)+A000035(n)`
-/

namespace A400937.P2286901292313240704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204467 n + A000035 n

end

end A400937.P2286901292313240704

namespace A400937

/-- `A204467(n)+A000035(n)` -/
def P2286901292313240704.Spec : Prop :=
  ∀ n, P2286901292313240704.a n = A400937 (n + 1)

end A400937

/-! ## A400937.P8528540865358312305

`A139595(n)+A116668(n)`
-/

namespace A400937.P8528540865358312305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139595 n + A116668 n

end

end A400937.P8528540865358312305

namespace A400937

/-- `A139595(n)+A116668(n)` -/
def P8528540865358312305.Spec : Prop :=
  ∀ n, P8528540865358312305.a n = A400937 (n + 1)

end A400937

/-! ## A400937.P16937509173276295848

`A397977(n)+A005891(n)`
-/

namespace A400937.P16937509173276295848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397977 n + A005891 n

end

end A400937.P16937509173276295848

namespace A400937

/-- `A397977(n)+A005891(n)` -/
def P16937509173276295848.Spec : Prop :=
  ∀ n, P16937509173276295848.a n = A400937 (n + 1)

end A400937

/-! ## A400937.P15003931991674197899

`A263511(n)+A179986(n)`
-/

namespace A400937.P15003931991674197899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263511 n + A179986 n

end

end A400937.P15003931991674197899

namespace A400937

/-- `A263511(n)+A179986(n)` -/
def P15003931991674197899.Spec : Prop :=
  ∀ n, P15003931991674197899.a n = A400937 (n + 1)

end A400937

/-! ## A400937.P1853496851890025521

`A389615(n)+A156859(n)`
-/

namespace A400937.P1853496851890025521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389615 n + A156859 n

end

end A400937.P1853496851890025521

namespace A400937

/-- `A389615(n)+A156859(n)` -/
def P1853496851890025521.Spec : Prop :=
  ∀ n, P1853496851890025521.a n = A400937 (n + 1)

end A400937

/-! ## A400937.P4224091464553490626

`A081267(n)-A004526(n)`
-/

namespace A400937.P4224091464553490626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081267 n - A004526 n

end

end A400937.P4224091464553490626

namespace A400937

/-- `A081267(n)-A004526(n)` -/
def P4224091464553490626.Spec : Prop :=
  ∀ n, P4224091464553490626.a n = A400937 (n + 1)

end A400937

/-! ## A400937.P14965049843039389458

`A085473(n)-A032528(n)`
-/

namespace A400937.P14965049843039389458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085473 n - A032528 n

end

end A400937.P14965049843039389458

namespace A400937

/-- `A085473(n)-A032528(n)` -/
def P14965049843039389458.Spec : Prop :=
  ∀ n, P14965049843039389458.a n = A400937 (n + 1)

end A400937

/-! ## A400937.P11919596508577781566

`A236267(n)-A032525(n)`
-/

namespace A400937.P11919596508577781566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236267 n - A032525 n

end

end A400937.P11919596508577781566

namespace A400937

/-- `A236267(n)-A032525(n)` -/
def P11919596508577781566.Spec : Prop :=
  ∀ n, P11919596508577781566.a n = A400937 (n + 1)

end A400937

/-! ## A400937.P15320099780091410643

`A342914(n)-A139593(n)`
-/

namespace A400937.P15320099780091410643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342914 n - A139593 n

end

end A400937.P15320099780091410643

namespace A400937

/-- `A342914(n)-A139593(n)` -/
def P15320099780091410643.Spec : Prop :=
  ∀ n, P15320099780091410643.a n = A400937 (n + 1)

end A400937

/-!
# A400941: The number of order-preserving or reversing partial permutations of an n-element set.

The programs for A400941, the canonical program `A400941.P3048978257207949309` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400941 has offset 0).

The definition of A400941 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A400941.P3048978257207949309

`2*C(2*n, n)-n²-1`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A400941

/-- `2*C(2*n, n)-n²-1` -/
def P3048978257207949309.Spec : Prop :=
  ∀ n, P3048978257207949309.a n = A400941 n

theorem P3048978257207949309.correct : P3048978257207949309.Spec := by
  intro n
  simp only [A400941]

end A400941

/-! ## A400941.P4019262964370789805

`A134760(n)-n²`
-/

namespace A400941.P4019262964370789805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134760 n - (n ^ 2 : ℤ)

end

end A400941.P4019262964370789805

namespace A400941

/-- `A134760(n)-n²` -/
def P4019262964370789805.Spec : Prop :=
  ∀ n, P4019262964370789805.a n = A400941 n

theorem P4019262964370789805.correct : P4019262964370789805.Spec := by
  intro n
  simp only [A400941, Nat.add_sub_cancel, A400941.P4019262964370789805.a, A400941.P3048978257207949309.a, A134760, A134760.P5337587419616991528.a, A000984, A000984.P7946844122574426130.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A400941

/-! ## A400941.P6386266475255969090

`A028329(n)-(n²+1)`
-/

namespace A400941.P6386266475255969090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028329 n - (n ^ 2 + 1 : ℤ)

end

end A400941.P6386266475255969090

namespace A400941

/-- `A028329(n)-(n²+1)` -/
def P6386266475255969090.Spec : Prop :=
  ∀ n, P6386266475255969090.a n = A400941 n

theorem P6386266475255969090.correct : P6386266475255969090.Spec := by
  intro n
  simp only [A400941, Nat.add_sub_cancel, A400941.P6386266475255969090.a, A400941.P3048978257207949309.a, A028329, A028329.P2723209719397665586.a, A000984, A000984.P7946844122574426130.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A400941

/-! ## A400941.P8348970286458425475

`A134761(2*n)-n²`
-/

namespace A400941.P8348970286458425475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134761 (2 * n) - (n ^ 2 : ℤ)

end

end A400941.P8348970286458425475

namespace A400941

/-- `A134761(2*n)-n²` -/
def P8348970286458425475.Spec : Prop :=
  ∀ n, P8348970286458425475.a n = A400941 n

end A400941

/-! ## A400941.P15096894623748157104

`A134759(n)+n-n²`
-/

namespace A400941.P15096894623748157104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134759 n + (n : ℤ) - (n ^ 2 : ℤ)

end

end A400941.P15096894623748157104

namespace A400941

/-- `A134759(n)+n-n²` -/
def P15096894623748157104.Spec : Prop :=
  ∀ n, P15096894623748157104.a n = A400941 n

theorem P15096894623748157104.correct : P15096894623748157104.Spec := by
  intro n
  simp only [A400941, Nat.add_sub_cancel, A400941.P15096894623748157104.a, A400941.P3048978257207949309.a, A134759, A134759.P90257600578840069.a, A000984, A000984.P7946844122574426130.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A400941

/-! ## A400941.P2666375146492854406

`2*A000984(n)-(n²+1)`
-/

namespace A400941.P2666375146492854406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000984 n - (n ^ 2 + 1 : ℤ)

end

end A400941.P2666375146492854406

namespace A400941

/-- `2*A000984(n)-(n²+1)` -/
def P2666375146492854406.Spec : Prop :=
  ∀ n, P2666375146492854406.a n = A400941 n

theorem P2666375146492854406.correct : P2666375146492854406.Spec := by
  intro n
  simp only [A400941, Nat.add_sub_cancel, A400941.P2666375146492854406.a, A400941.P3048978257207949309.a, A000984, A000984.P7946844122574426130.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A400941

/-! ## A400941.P3916475890556145585

`A131428(n)*(n+1)-(n²-n)`
-/

namespace A400941.P3916475890556145585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131428 n * (n + 1 : ℤ) - ((n ^ 2 : ℤ) - (n : ℤ))

end

end A400941.P3916475890556145585

namespace A400941

/-- `A131428(n)*(n+1)-(n²-n)` -/
def P3916475890556145585.Spec : Prop :=
  ∀ n, P3916475890556145585.a n = A400941 n

end A400941

/-! ## A400941.P8041737130174391356

`(A089408(2*(n+1))-1)*(n+1)-(n²-n)`
-/

namespace A400941.P8041737130174391356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A089408 (2 * (n + 1)) - 1) * (n + 1 : ℤ) - ((n ^ 2 : ℤ) - (n : ℤ))

end

end A400941.P8041737130174391356

namespace A400941

/-- `(A089408(2*(n+1))-1)*(n+1)-(n²-n)` -/
def P8041737130174391356.Spec : Prop :=
  ∀ n, P8041737130174391356.a n = A400941 n

end A400941

/-! ## A400941.P14504336217569814058

`A134759(n)-A279019(n+4)`
-/

namespace A400941.P14504336217569814058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134759 n - A279019 (n + 4)

end

end A400941.P14504336217569814058

namespace A400941

/-- `A134759(n)-A279019(n+4)` -/
def P14504336217569814058.Spec : Prop :=
  ∀ n, P14504336217569814058.a n = A400941 n

theorem P14504336217569814058.correct : P14504336217569814058.Spec := by
  intro n
  simp only [A400941, Nat.add_sub_cancel, A400941.P14504336217569814058.a, A400941.P3048978257207949309.a, A134759, A134759.P90257600578840069.a, A279019, A279019.P2025257353750752592.a, A000984, A000984.P7946844122574426130.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A400941

/-! ## A400941.P3101959440686419904

`A000984(n)+A000984(n)-A002522(n)`
-/

namespace A400941.P3101959440686419904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + A000984 n - A002522 n

end

end A400941.P3101959440686419904

namespace A400941

/-- `A000984(n)+A000984(n)-A002522(n)` -/
def P3101959440686419904.Spec : Prop :=
  ∀ n, P3101959440686419904.a n = A400941 n

theorem P3101959440686419904.correct : P3101959440686419904.Spec := by
  intro n
  simp only [A400941, Nat.add_sub_cancel, A400941.P3101959440686419904.a, A400941.P3048978257207949309.a, A000984, A000984.P7946844122574426130.a, A002522, A002522.P3778392011853271743.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A400941

/-!
# A400943: Maximum length J of a chain of factorizations j*n = d(j)*e(j) (j = 1..J) with d(1), e(1) >= 2, d(j+1) >= d(j) + 2 and e(j+1) >= e(j) + 2.

The programs for A400943, there is no canonical definition to state claims against.
-/

/-! ## A400943.P1643824324447833660

`A014852(n+1)%A163377(n+1)`
-/

namespace A400943.P1643824324447833660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014852 (n + 1)) (A163377 (n + 1))

end

end A400943.P1643824324447833660

/-! ## A400943.P16151829706018310762

`A111622(n+1)%A163377(n+1)`
-/

namespace A400943.P16151829706018310762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111622 (n + 1)) (A163377 (n + 1))

end

end A400943.P16151829706018310762

/-! ## A400943.P508029736194994173

`A176960(n+1)%A163377(n+1)`
-/

namespace A400943.P508029736194994173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A176960 (n + 1)) (A163377 (n + 1))

end

end A400943.P508029736194994173

/-! ## A400943.P10024136998175945254

`A228055(n+1)%A163377(n+1)`
-/

namespace A400943.P10024136998175945254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A228055 (n + 1)) (A163377 (n + 1))

end

end A400943.P10024136998175945254

/-! ## A400943.P1043219922478273466

`A109880(n+1)%A290085(n+1)`
-/

namespace A400943.P1043219922478273466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109880 (n + 1)) (A290085 (n + 1))

end

end A400943.P1043219922478273466

/-!
# A400945: Symmetric array read by ascending antidiagonals: A(n,m) = denominator(B(n,m)), where B is defined as B(n,1)=1, B(1,m)=1 and B(n,m) = 1 + (1/(n*m))*Sum_{j=1..n-1} Sum_{k=1..m-1} B(j,k), with m > 0.

The programs for A400945, there is no canonical definition to state claims against.
-/

/-! ## A400945.P17503432149291325271

`A057561(A400944(n+1))`
-/

namespace A400945.P17503432149291325271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057561 (A400944 (n + 1)).toNat

end

end A400945.P17503432149291325271

/-! ## A400945.P10582075002708792875

`gcd(A007318(n)², A330972(3*n+1))`
-/

namespace A400945.P10582075002708792875
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007318 n ^ 2) (A330972 (3 * n + 1))

end

end A400945.P10582075002708792875

/-! ## A400945.P12007635889000731166

`gcd(A008459(n), A143146(A156765(n)))`
-/

namespace A400945.P12007635889000731166
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008459 n) (A143146 (A156765 n).toNat)

end

end A400945.P12007635889000731166

/-! ## A400945.P12741212869619794154

`gcd(A007318(n), A198534(n+1))*A007318(n)`
-/

namespace A400945.P12741212869619794154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A007318 n) (A198534 (n + 1)) : ℤ) * A007318 n

end

end A400945.P12741212869619794154

/-! ## A400945.P16372464979696447972

`gcd(A000010(A018020(n)), A141686(n+1))`
-/

namespace A400945.P16372464979696447972
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (A018020 n).toNat) (A141686 (n + 1))

end

end A400945.P16372464979696447972

/-!
# A400948: Primes p such that (p-1)/2 is either prime or a squarefree semiprime.

The programs for A400948, the canonical program `A400948.P2250991978134965370` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400948 has offset 1).

The definition of A400948 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 688 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A400948.P2250991978134965370

`∩[A000040(n+1), A223134(A167171(n+1))]`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A400948

/-- `∩[A000040(n+1), A223134(A167171(n+1))]` -/
def P2250991978134965370.Spec : Prop :=
  ∀ n, (P2250991978134965370.a n : ℤ) = A400948 (n + 1)

theorem P2250991978134965370.correct : P2250991978134965370.Spec := by
  intro n
  simp only [A400948, Nat.add_sub_cancel]

end A400948

/-! ## A400948.P10024289153998439265

`A039786(2+lt[2, A050810(3*n+1)])`
-/

namespace A400948.P10024289153998439265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050810 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039786 (2 + SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A400948.P10024289153998439265

namespace A400948

/-- `A039786(2+lt[2, A050810(3*n+1)])` -/
def P10024289153998439265.Spec : Prop :=
  ∀ n, P10024289153998439265.a n = A400948 (n + 1)

end A400948

/-! ## A400948.P970357528880152779

`∩[A066651(n+1), A139143(n+1)]`
-/

namespace A400948.P970357528880152779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400948.P970357528880152779

namespace A400948

/-- `∩[A066651(n+1), A139143(n+1)]` -/
def P970357528880152779.Spec : Prop :=
  ∀ n, (P970357528880152779.a n : ℤ) = A400948 (n + 1)

end A400948

/-! ## A400948.P4144304451843428107

`A350179(A262524(n+2))`
-/

namespace A400948.P4144304451843428107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350179 (A262524 (n + 2)).toNat

end

end A400948.P4144304451843428107

namespace A400948

/-- `A350179(A262524(n+2))` -/
def P4144304451843428107.Spec : Prop :=
  ∀ n, P4144304451843428107.a n = A400948 (n + 1)

end A400948

/-! ## A400948.P792957168871527613

`filter[A079151(n+3), A110471(#)]`
-/

namespace A400948.P792957168871527613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079151 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A110471 (f1 j).toNat = 1) n)

end

end A400948.P792957168871527613

namespace A400948

/-- `filter[A079151(n+3), A110471(#)]` -/
def P792957168871527613.Spec : Prop :=
  ∀ n, P792957168871527613.a n = A400948 (n + 1)

end A400948

/-!
# A400954: Triangle read by rows: T(n,k) is the number of distinct ways to get the minimum runtime for k threads to complete n tasks, where time(n_i) = 2^(i-1), with 1 <= i <= n.

The programs for A400954, the canonical program `A400954.P10787418138305735009` is in `Seq.B001.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400954 has offset 1).

The definition of A400954 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A400954.P15335232942181192023

`or(char[∑[n]], A048993(n))`
-/

namespace A400954.P15335232942181192023
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A048993 n)

end

end A400954.P15335232942181192023

namespace A400954

/-- `or(char[∑[n]], A048993(n))` -/
def P15335232942181192023.Spec : Prop :=
  ∀ n, P15335232942181192023.a n = A400954 (n + 1)

end A400954

/-! ## A400954.P5061390142058298549

`A048993(char[comp[∑[n]]]*n)`
-/

namespace A400954.P5061390142058298549
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 ((if ∃ j, f1 j = n then 1 else 0) * n)

end

end A400954.P5061390142058298549

namespace A400954

/-- `A048993(char[comp[∑[n]]]*n)` -/
def P5061390142058298549.Spec : Prop :=
  ∀ n, P5061390142058298549.a n = A400954 (n + 1)

end A400954

/-! ## A400954.P10787418138305735009

`A008278(n+1-2*col(n))`

The canonical program, it is in `Seq.B001.C015`.
-/

namespace A400954

/-- `A008278(n+1-2*col(n))` -/
def P10787418138305735009.Spec : Prop :=
  ∀ n, P10787418138305735009.a n = A400954 (n + 1)

theorem P10787418138305735009.correct : P10787418138305735009.Spec := by
  intro n
  simp only [A400954, Nat.add_sub_cancel]

end A400954

/-! ## A400954.P17557633227362049419

`A008277(1+n-round(sqrt(2*n)))`
-/

namespace A400954.P17557633227362049419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (1 + ((n : ℤ) - SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)))).toNat

end

end A400954.P17557633227362049419

namespace A400954

/-- `A008277(1+n-round(sqrt(2*n)))` -/
def P17557633227362049419.Spec : Prop :=
  ∀ n, P17557633227362049419.a n = A400954 (n + 1)

end A400954

/-! ## A400954.P6563394971704054478

`A008278(n+1-col(n)-col(n))`
-/

namespace A400954.P6563394971704054478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008278 ((n + 1 : ℤ) - (SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triCol n : ℤ)).toNat

end

end A400954.P6563394971704054478

namespace A400954

/-- `A008278(n+1-col(n)-col(n))` -/
def P6563394971704054478.Spec : Prop :=
  ∀ n, P6563394971704054478.a n = A400954 (n + 1)

end A400954

/-! ## A400954.P10340991492617574343

`A106800((row(n)+1)²-(n+1))+char[∑[n+1]]`
-/

namespace A400954.P10340991492617574343
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106800 ((SequenceMachineLib.triRow n + 1) ^ 2 - (n + 1)) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A400954.P10340991492617574343

namespace A400954

/-- `A106800((row(n)+1)²-(n+1))+char[∑[n+1]]` -/
def P10340991492617574343.Spec : Prop :=
  ∀ n, P10340991492617574343.a n = A400954 (n + 1)

end A400954

/-! ## A400954.P4057624093427635066

`A073424(n)+A048993(n)`
-/

namespace A400954.P4057624093427635066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n + A048993 n

end

end A400954.P4057624093427635066

namespace A400954

/-- `A073424(n)+A048993(n)` -/
def P4057624093427635066.Spec : Prop :=
  ∀ n, P4057624093427635066.a n = A400954 (n + 1)

end A400954

/-! ## A400954.P16366023270313390398

`gcd(A048993(n), A073423(n))`
-/

namespace A400954.P16366023270313390398
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048993 n) (A073423 n)

end

end A400954.P16366023270313390398

namespace A400954

/-- `gcd(A048993(n), A073423(n))` -/
def P16366023270313390398.Spec : Prop :=
  ∀ n, (P16366023270313390398.a n : ℤ) = A400954 (n + 1)

end A400954

/-! ## A400954.P6996629973212349560

`root(A048993(A073423(n)+n), 2)²`
-/

namespace A400954.P6996629973212349560
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A048993 (A073423 n + (n : ℤ)).toNat : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A400954.P6996629973212349560

namespace A400954

/-- `root(A048993(A073423(n)+n), 2)²` -/
def P6996629973212349560.Spec : Prop :=
  ∀ n, P6996629973212349560.a n = (A400954 (n + 1) : ℝ)

end A400954

/-! ## A400954.P7296961298124104195

`A048993(n)+char[A000217(n+1)]`
-/

namespace A400954.P7296961298124104195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A400954.P7296961298124104195

namespace A400954

/-- `A048993(n)+char[A000217(n+1)]` -/
def P7296961298124104195.Spec : Prop :=
  ∀ n, P7296961298124104195.a n = A400954 (n + 1)

end A400954

/-! ## A400954.P3462432972350642569

`A048993(n)^A055396(A124927(n))`
-/

namespace A400954.P3462432972350642569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048993 n : ℚ) ^ (A055396 (A124927 n).toNat : ℤ)

end

end A400954.P3462432972350642569

namespace A400954

/-- `A048993(n)^A055396(A124927(n))` -/
def P3462432972350642569.Spec : Prop :=
  ∀ n, P3462432972350642569.a n = (A400954 (n + 1) : ℚ)

end A400954

/-! ## A400954.P13016074283090509340

`(A090683(n)/A091918(n))^A055396(A124927(n))`
-/

namespace A400954.P13016074283090509340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A090683 n : ℚ) / (A091918 n : ℚ)) ^ (A055396 (A124927 n).toNat : ℤ)

end

end A400954.P13016074283090509340

namespace A400954

/-- `(A090683(n)/A091918(n))^A055396(A124927(n))` -/
def P13016074283090509340.Spec : Prop :=
  ∀ n, P13016074283090509340.a n = (A400954 (n + 1) : ℚ)

end A400954

/-! ## A400954.P8098549358362062477

`A048993(n)+A000007(A155161(n))`
-/

namespace A400954.P8098549358362062477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 n + A000007 (A155161 n).toNat

end

end A400954.P8098549358362062477

namespace A400954

/-- `A048993(n)+A000007(A155161(n))` -/
def P8098549358362062477.Spec : Prop :=
  ∀ n, P8098549358362062477.a n = A400954 (n + 1)

end A400954

/-!
# A400955: Triangle read by rows: T(n,k) is the minimum runtime for k threads to complete n tasks, where time(n_i) = 2^(i-1), with 1 <= i <= n.

The programs for A400955, the canonical program `A400955.P5010137716607798832` is in `Seq.B005.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400955 has offset 1).

The definition of A400955 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A400955.P999707890329730139

`A066884(A193592(n)+n)`
-/

namespace A400955.P999707890329730139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066884 (A193592 n + (n : ℤ)).toNat

end

end A400955.P999707890329730139

namespace A400955

/-- `A066884(A193592(n)+n)` -/
def P999707890329730139.Spec : Prop :=
  ∀ n, P999707890329730139.a n = A400955 (n + 1)

end A400955

/-! ## A400955.P5010137716607798832

`A264802(n+1)-A057728(n+1)`

The canonical program, it is in `Seq.B005.C003`.
-/

namespace A400955

/-- `A264802(n+1)-A057728(n+1)` -/
def P5010137716607798832.Spec : Prop :=
  ∀ n, P5010137716607798832.a n = A400955 (n + 1)

theorem P5010137716607798832.correct : P5010137716607798832.Spec := by
  intro n
  simp only [A400955, Nat.add_sub_cancel]

end A400955

/-! ## A400955.P4505295924732137987

`or(2*T(n-1,k), A062383(T(n-1,k-1)))` with `a(0)=1`
-/

namespace A400955.P4505295924732137987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (2 * SequenceMachineLib.triUp a n) (A062383 (SequenceMachineLib.triUpLeft a n).toNat)

end

end A400955.P4505295924732137987

namespace A400955

/-- `or(2*T(n-1,k), A062383(T(n-1,k-1)))` -/
def P4505295924732137987.Spec : Prop :=
  ∀ n, P4505295924732137987.a n = A400955 (n + 1)

end A400955

/-! ## A400955.P8943457142628572902

`A297110(A276618(n))`
-/

namespace A400955.P8943457142628572902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297110 (A276618 n).toNat

end

end A400955.P8943457142628572902

namespace A400955

/-- `A297110(A276618(n))` -/
def P8943457142628572902.Spec : Prop :=
  ∀ n, P8943457142628572902.a n = A400955 (n + 1)

end A400955

/-! ## A400955.P11232773038027880328

`A364571(A209492(n))`
-/

namespace A400955.P11232773038027880328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364571 (A209492 n).toNat

end

end A400955.P11232773038027880328

namespace A400955

/-- `A364571(A209492(n))` -/
def P11232773038027880328.Spec : Prop :=
  ∀ n, P11232773038027880328.a n = A400955 (n + 1)

end A400955

/-! ## A400955.P15350248058167932266

`A059942(A081118(n+1))`
-/

namespace A400955.P15350248058167932266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059942 (A081118 (n + 1)).toNat

end

end A400955.P15350248058167932266

namespace A400955

/-- `A059942(A081118(n+1))` -/
def P15350248058167932266.Spec : Prop :=
  ∀ n, P15350248058167932266.a n = A400955 (n + 1)

end A400955

/-! ## A400955.P4203620677206401887

`A200322(A130328(n))`
-/

namespace A400955.P4203620677206401887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200322 (A130328 n).toNat

end

end A400955.P4203620677206401887

namespace A400955

/-- `A200322(A130328(n))` -/
def P4203620677206401887.Spec : Prop :=
  ∀ n, P4203620677206401887.a n = A400955 (n + 1)

end A400955

/-!
# A400959: a(n) = Sum_{i=1..10^n} (-1)^bigomega(i)*(-1)^bigomega(i+1), where bigomega(n) = A001222(n).

The programs for A400959, there is no canonical definition to state claims against.
-/

/-! ## A400959.P4778177982481668272

`A349229(A086067(n))`
-/

namespace A400959.P4778177982481668272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349229 (A086067 n).toNat

end

end A400959.P4778177982481668272

/-!
# A400962: Largest integer e such that, for every k with 1 <= k < n, binomial(n,k) is divisible by p^e for some prime p (depending on k).

The programs for A400962, there is no canonical definition to state claims against.
-/

/-! ## A400962.P5102527872618614112

`A238337(A001018(A238337(A238337(n+2))))`
-/

namespace A400962.P5102527872618614112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238337 (A001018 (A238337 (A238337 (n + 2)).toNat).toNat).toNat

end

end A400962.P5102527872618614112

/-! ## A400962.P6415107434746949010

`A302243(A000188(n+2)%A276504(n+1))`
-/

namespace A400962.P6415107434746949010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302243 (Int.tmod (A000188 (n + 2)) (A276504 (n + 1))).toNat

end

end A400962.P6415107434746949010

/-! ## A400962.P18379260414940663825

`A169988(A008833(n+2))`
-/

namespace A400962.P18379260414940663825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169988 (A008833 (n + 2)).toNat

end

end A400962.P18379260414940663825

/-! ## A400962.P12862688843680537647

`A002947(A351308(n+2))`
-/

namespace A400962.P12862688843680537647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002947 (A351308 (n + 2)).toNat

end

end A400962.P12862688843680537647

/-! ## A400962.P11066655815182840190

`A112085(A348049(n+2))`
-/

namespace A400962.P11066655815182840190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112085 (A348049 (n + 2)).toNat

end

end A400962.P11066655815182840190

/-!
# A400965: a(n) = 2^A006666(n) - n*3^A006667(n).

The programs for A400965, there is no canonical definition to state claims against.
-/

/-! ## A400965.P15458733518144005300

`2^A006666(n+1)-(n+1)*3^A006667(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A400965.P15458733518144005300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A006666 (n + 1) : ℤ) - (n + 1 : ℚ) * (3 : ℚ) ^ (A006667 (n + 1) : ℤ)

end

end A400965.P15458733518144005300

/-!
# A400967: a(n) is the number of boundary lattice points minus the number of interior lattice points of the regular tetrahedron with vertices (0,0,0), (n,n,0), (n,0,n) and (0,n,n).

The programs for A400967, the canonical program `A400967.P16530172883198578615` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400967 has offset 1).

The definition of A400967 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A400967.P16530172883198578615

`ogf((4-7x+4x^2-3x^3)/(1-4x+6x^2-4x^3+x^4))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A400967

/-- `ogf((4-7x+4x^2-3x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P16530172883198578615.Spec : Prop :=
  ∀ n, P16530172883198578615.a n = A400967 (n + 1)

theorem P16530172883198578615.correct : P16530172883198578615.Spec := by
  intro n
  simp only [A400967, Nat.add_sub_cancel]

end A400967

/-! ## A400967.P8031028981000569539

`3-(n+1)*((n+1)*(n-8)+5)/3`
-/

namespace A400967.P8031028981000569539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 - ((n + 1 : ℤ) * ((n + 1 : ℤ) * ((n : ℤ) - 8) + 5) : ℚ) / 3

end

end A400967.P8031028981000569539

namespace A400967

/-- `3-(n+1)*((n+1)*(n-8)+5)/3` -/
def P8031028981000569539.Spec : Prop :=
  ∀ n, P8031028981000569539.a n = (A400967 (n + 1) : ℚ)

end A400967

/-! ## A400967.P16209634448407231240

`(n+2)²-2*C(n, 3)`
-/

namespace A400967.P16209634448407231240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - (2 * Nat.choose n 3 : ℤ)

end

end A400967.P16209634448407231240

namespace A400967

/-- `(n+2)²-2*C(n, 3)` -/
def P16209634448407231240.Spec : Prop :=
  ∀ n, P16209634448407231240.a n = A400967 (n + 1)

end A400967

/-! ## A400967.P5568076341751830594

`∑[∑[a(n-1)-2]]` with `a(0)=4, a(1)=1, a(2)=2`
-/

namespace A400967.P5568076341751830594
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 1, 2] fun n f2 =>
  f2 (n - 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400967.P5568076341751830594

namespace A400967

/-- `∑[∑[a(n-1)-2]]` -/
def P5568076341751830594.Spec : Prop :=
  ∀ n, P5568076341751830594.a n = A400967 (n + 1)

end A400967

/-! ## A400967.P1006740636657303249

`(n+2)²-C(n, 3)-C(n, 3)`
-/

namespace A400967.P1006740636657303249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - (Nat.choose n 3 : ℤ) - (Nat.choose n 3 : ℤ)

end

end A400967.P1006740636657303249

namespace A400967

/-- `(n+2)²-C(n, 3)-C(n, 3)` -/
def P1006740636657303249.Spec : Prop :=
  ∀ n, P1006740636657303249.a n = A400967 (n + 1)

end A400967

/-! ## A400967.P10690155366336725885

`1+(5-n)*n+a(n-1)` with `a(0)=4`
-/

namespace A400967.P10690155366336725885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  1 + (5 - (n : ℤ)) * (n : ℤ) + a (n - 1)

end

end A400967.P10690155366336725885

namespace A400967

/-- `1+(5-n)*n+a(n-1)` -/
def P10690155366336725885.Spec : Prop :=
  ∀ n, P10690155366336725885.a n = A400967 (n + 1)

end A400967

/-!
# A400968: a(n) is the number of boundary lattice points minus the number of interior lattice points of the octahedron |x| + |y| + |z| <= n.

The programs for A400968, the canonical program `A400968.P10195912970142873605` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400968 has offset 1).

The definition of A400968 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A400968.P10195912970142873605

`ogf((5-9x-x^2-3x^3)/(1-4x+6x^2-4x^3+x^4))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A400968

/-- `ogf((5-9x-x^2-3x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P10195912970142873605.Spec : Prop :=
  ∀ n, P10195912970142873605.a n = A400968 (n + 1)

theorem P10195912970142873605.correct : P10195912970142873605.Spec := by
  intro n
  simp only [A400968, Nat.add_sub_cancel]

end A400968

/-! ## A400968.P8390051273968153348

`3-2*(n-3)*(n+1)*(2*(n+1)-1)/3`
-/

namespace A400968.P8390051273968153348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 - (2 * ((n : ℤ) - 3) * (n + 1 : ℤ) * ((2 * (n + 1) : ℤ) - 1) : ℚ) / 3

end

end A400968.P8390051273968153348

namespace A400968

/-- `3-2*(n-3)*(n+1)*(2*(n+1)-1)/3` -/
def P8390051273968153348.Spec : Prop :=
  ∀ n, P8390051273968153348.a n = (A400968 (n + 1) : ℚ)

end A400968

/-! ## A400968.P12656618721010927040

`∑[∑[a(n-1)-8]]+3` with `a(0)=2, a(1)=4`
-/

namespace A400968.P12656618721010927040
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n f2 =>
  f2 (n - 1) - 8

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A400968.P12656618721010927040

namespace A400968

/-- `∑[∑[a(n-1)-8]]+3` -/
def P12656618721010927040.Spec : Prop :=
  ∀ n, P12656618721010927040.a n = A400968 (n + 1)

end A400968

/-! ## A400968.P17829991505043511740

`∑[6-(n-2+A028310(n))²]`
-/

namespace A400968.P17829991505043511740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - ((n : ℤ) - 2 + A028310 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400968.P17829991505043511740

namespace A400968

/-- `∑[6-(n-2+A028310(n))²]` -/
def P17829991505043511740.Spec : Prop :=
  ∀ n, P17829991505043511740.a n = A400968 (n + 1)

end A400968

/-! ## A400968.P17318427012049460706

`∑[6-(n-2+A000007(n)+n)²]`
-/

namespace A400968.P17318427012049460706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - ((n : ℤ) - 2 + (A000007 n + (n : ℤ))) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400968.P17318427012049460706

namespace A400968

/-- `∑[6-(n-2+A000007(n)+n)²]` -/
def P17318427012049460706.Spec : Prop :=
  ∀ n, P17318427012049460706.a n = A400968 (n + 1)

end A400968

/-!
# A400979: Maximum of r + s - n over positive integers r and s such that r!*s! divides n!.

The programs for A400979, there is no canonical definition to state claims against.
-/

/-! ## A400979.P4258112384247298087

`runs[fp[A400980(n)]]`
-/

namespace A400979.P4258112384247298087
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400980 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f2 j) 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A400979.P4258112384247298087

/-! ## A400979.P16553100193998556426

`A218878(A018122(n))`
-/

namespace A400979.P16553100193998556426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218878 (A018122 n).toNat

end

end A400979.P16553100193998556426

/-!
# A400980: a(n) = Sum_{j=0..n} A400979(j).

The programs for A400980, there is no canonical definition to state claims against.
-/

/-! ## A400980.P6711144035674947424

`∑[A400979(n)]`
-/

namespace A400980.P6711144035674947424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400979 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400980.P6711144035674947424

/-!
# A400981: Maximum of r + s + t - n over positive integers r, s and t such that r!*s!*t! divides n!.

The programs for A400981, there is no canonical definition to state claims against.
-/

/-! ## A400981.P3804200184435171640

`runs[fp[A400982(n)]]`
-/

namespace A400981.P3804200184435171640
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400982 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f2 j) 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A400981.P3804200184435171640

/-!
# A400982: a(n) = Sum_{j=0..n} A400981(j).

The programs for A400982, there is no canonical definition to state claims against.
-/

/-! ## A400982.P16007537785930452937

`∑[A400981(n)]`
-/

namespace A400982.P16007537785930452937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400981 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400982.P16007537785930452937

/-! ## A400982.P16133617935526674516

`∑[A275806(A283507(n+4)-A327310(n))]`
-/

namespace A400982.P16133617935526674516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275806 (A283507 (n + 4) - A327310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400982.P16133617935526674516

/-! ## A400982.P6978686815523796672

`∑[A103921(A000957(n)+A214562(n))+1]+2`
-/

namespace A400982.P6978686815523796672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103921 (A000957 n + A214562 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A400982.P6978686815523796672

/-! ## A400982.P13061711045394601871

`A392921(2*n+1)+A038036(A000040(n+1))`
-/

namespace A400982.P13061711045394601871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392921 (2 * n + 1) + A038036 (A000040 (n + 1)).toNat

end

end A400982.P13061711045394601871

/-! ## A400982.P9757331970706835042

`A348892(A229428(n+1))+A242414(2*n+3)`
-/

namespace A400982.P9757331970706835042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348892 (A229428 (n + 1)).toNat + A242414 (2 * n + 3)

end

end A400982.P9757331970706835042

/-!
# A400984: Numbers k > 1 whose trajectory under the Collatz map A014682 contains k+1.

The programs for A400984, there is no canonical definition to state claims against.
-/

/-! ## A400984.P15375058839492054871

`∩[A070993(n+1), A125007(n+1)]`
-/

namespace A400984.P15375058839492054871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125007 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400984.P15375058839492054871

/-! ## A400984.P16119876537399300640

`∩[A070993(n+1), A305081(n+1)]`
-/

namespace A400984.P16119876537399300640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305081 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400984.P16119876537399300640

/-! ## A400984.P15126447616418170780

`∩[A070993(n+1), A325395(n+1)]`
-/

namespace A400984.P15126447616418170780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400984.P15126447616418170780

/-!
# A400986: a(n) = max_{1 <= k < n} (k + tau(k)) - n, where tau(k) is the number of positive divisors of k.

The programs for A400986, there is no canonical definition to state claims against.
-/

/-! ## A400986.P7060734914011833126

`A001222(A100371(2*(n+2)))-A285698(A393210(n+1))`
-/

namespace A400986.P7060734914011833126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A100371 (2 * (n + 2))).toNat - A285698 (A393210 (n + 1)).toNat

end

end A400986.P7060734914011833126

/-! ## A400986.P1126096473307664194

`A320006(2*(n+1))+A319995(A250070(n+1))`
-/

namespace A400986.P1126096473307664194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320006 (2 * (n + 1)) + A319995 (A250070 (n + 1)).toNat

end

end A400986.P1126096473307664194

/-! ## A400986.P15145796584412135359

`A351946(A026644(n))`
-/

namespace A400986.P15145796584412135359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351946 (A026644 n).toNat

end

end A400986.P15145796584412135359

/-! ## A400986.P14547179834347176047

`A238949(A011947(n+1))`
-/

namespace A400986.P14547179834347176047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238949 (A011947 (n + 1)).toNat

end

end A400986.P14547179834347176047

/-! ## A400986.P2036115661009828418

`A305054(A392552(n+1))`
-/

namespace A400986.P2036115661009828418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305054 (A392552 (n + 1)).toNat

end

end A400986.P2036115661009828418

/-!
# A400987: Triangle read by rows: T(n,k) = Sum_{j=0..k} C(k,j)*(-1)^(k-j)*Stirling2(n+j,j) for n >= 0, 0 <= k <= 2*n.

The programs for A400987, there is no canonical definition to state claims against.
-/

/-! ## A400987.P3491627921290119508

`A094262(n)-a(n-1)` with `a(0)=1`
-/

namespace A400987.P3491627921290119508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A094262 n - a (n - 1)

end

end A400987.P3491627921290119508

/-!
# A400991: G.f. A(x) satisfies: A(x) = 1 + x * A(3*x/(1 + x)) / (1 + x).

The programs for A400991, there is no canonical definition to state claims against.
-/

/-! ## A400991.P4409315734143392153

`A337567(C(2*n, n+2))`
-/

namespace A400991.P4409315734143392153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337567 (Nat.choose (2 * n) (n + 2))

end

end A400991.P4409315734143392153

/-!
# A400992: G.f. A(x) satisfies: A(x) = 1 + x * A(4*x/(1 + x)) / (1 + x).

The programs for A400992, there is no canonical definition to state claims against.
-/

/-! ## A400992.P14454194439632647852

`A161984(A005195(n)^n)`
-/

namespace A400992.P14454194439632647852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161984 (A005195 n ^ n).toNat

end

end A400992.P14454194439632647852

/-!
# A400993: a(n) = (prime index of the n-th prime power)^(exponent of the n-th prime power) (cf. A000961).

The programs for A400993, the canonical program `A400993.P15630145363670834433` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400993 has offset 1).

The definition of A400993 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000961, A003963, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A400993.P8924168450683391592

`A330669(n+1)^A025474(n+1)`
-/

namespace A400993.P8924168450683391592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330669 (n + 1) : ℚ) ^ (A025474 (n + 1) : ℤ)

end

end A400993.P8924168450683391592

namespace A400993

/-- `A330669(n+1)^A025474(n+1)` -/
def P8924168450683391592.Spec : Prop :=
  ∀ n, P8924168450683391592.a n = (A400993 (n + 1) : ℚ)

end A400993

/-! ## A400993.P1045948214736387744

`A000720(A025473(n+1))^A025474(n+1)`
-/

namespace A400993.P1045948214736387744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000720 (A025473 (n + 1)).toNat : ℚ) ^ (A025474 (n + 1) : ℤ)

end

end A400993.P1045948214736387744

namespace A400993

/-- `A000720(A025473(n+1))^A025474(n+1)` -/
def P1045948214736387744.Spec : Prop :=
  ∀ n, P1045948214736387744.a n = (A400993 (n + 1) : ℚ)

end A400993

/-! ## A400993.P15630145363670834433

`A003963(A000961(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A400993

/-- `A003963(A000961(n+1))` -/
def P15630145363670834433.Spec : Prop :=
  ∀ n, P15630145363670834433.a n = A400993 (n + 1)

theorem P15630145363670834433.correct : P15630145363670834433.Spec := by
  intro n
  simp only [A400993, Nat.add_sub_cancel]

end A400993

/-! ## A400993.P11246701198359241445

`A289508(A000961(n+1))^A025474(n+1)`
-/

namespace A400993.P11246701198359241445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289508 (A000961 (n + 1)).toNat : ℚ) ^ (A025474 (n + 1) : ℤ)

end

end A400993.P11246701198359241445

namespace A400993

/-- `A289508(A000961(n+1))^A025474(n+1)` -/
def P11246701198359241445.Spec : Prop :=
  ∀ n, P11246701198359241445.a n = (A400993 (n + 1) : ℚ)

end A400993

/-! ## A400993.P7393458515280532828

`A289508(sqrt(A056798(n+1)))^A025474(n+1)`
-/

namespace A400993.P7393458515280532828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289508 (SequenceMachineLib.roundAway (Real.sqrt (A056798 (n + 1) : ℝ))).toNat : ℚ) ^ (A025474 (n + 1) : ℤ)

end

end A400993.P7393458515280532828

namespace A400993

/-- `A289508(sqrt(A056798(n+1)))^A025474(n+1)` -/
def P7393458515280532828.Spec : Prop :=
  ∀ n, P7393458515280532828.a n = (A400993 (n + 1) : ℚ)

end A400993

/-! ## A400993.P17284868399813158964

`A289508(A181062(n+1)+1)^A025474(n+1)`
-/

namespace A400993.P17284868399813158964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289508 (A181062 (n + 1) + 1).toNat : ℚ) ^ (A025474 (n + 1) : ℤ)

end

end A400993.P17284868399813158964

namespace A400993

/-- `A289508(A181062(n+1)+1)^A025474(n+1)` -/
def P17284868399813158964.Spec : Prop :=
  ∀ n, P17284868399813158964.a n = (A400993 (n + 1) : ℚ)

end A400993

/-! ## A400993.P14376524923209626183

`A003963(sqrt(A056798(1+n)))`
-/

namespace A400993.P14376524923209626183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (SequenceMachineLib.roundAway (Real.sqrt (A056798 (1 + n) : ℝ))).toNat

end

end A400993.P14376524923209626183

namespace A400993

/-- `A003963(sqrt(A056798(1+n)))` -/
def P14376524923209626183.Spec : Prop :=
  ∀ n, P14376524923209626183.a n = A400993 (n + 1)

end A400993

/-! ## A400993.P5335309543131408226

`A003963(record[A028233(1+n)])`
-/

namespace A400993.P5335309543131408226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A400993.P5335309543131408226

namespace A400993

/-- `A003963(record[A028233(1+n)])` -/
def P5335309543131408226.Spec : Prop :=
  ∀ n, P5335309543131408226.a n = A400993 (n + 1)

end A400993

/-! ## A400993.P2406819382182258302

`A003963(record[A053585(n+1)])`
-/

namespace A400993.P2406819382182258302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A400993.P2406819382182258302

namespace A400993

/-- `A003963(record[A053585(n+1)])` -/
def P2406819382182258302.Spec : Prop :=
  ∀ n, P2406819382182258302.a n = A400993 (n + 1)

end A400993

/-! ## A400993.P7801769106025495794

`A003963(A138929(n+1))`
-/

namespace A400993.P7801769106025495794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A138929 (n + 1)).toNat

end

end A400993.P7801769106025495794

namespace A400993

/-- `A003963(A138929(n+1))` -/
def P7801769106025495794.Spec : Prop :=
  ∀ n, P7801769106025495794.a n = A400993 (n + 1)

end A400993

/-! ## A400993.P8222635640993358179

`A325032(A302493(n+1))`
-/

namespace A400993.P8222635640993358179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325032 (A302493 (n + 1)).toNat

end

end A400993.P8222635640993358179

namespace A400993

/-- `A325032(A302493(n+1))` -/
def P8222635640993358179.Spec : Prop :=
  ∀ n, P8222635640993358179.a n = A400993 (n + 1)

end A400993

/-!
# A400995: Prime numbers p such that p^4 is an interprime = average of two successive primes.

The programs for A400995, there is no canonical definition to state claims against.
-/

/-! ## A400995.P10208354308940879536

`p?[A075192(n+1)]`
-/

namespace A400995.P10208354308940879536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A400995.P10208354308940879536

/-! ## A400995.P18384609952756320264

`∩[A075192(n+1), A165671(n+1)]`
-/

namespace A400995.P18384609952756320264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165671 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400995.P18384609952756320264

/-! ## A400995.P520363567718771153

`∩[A000040(n+1), A075192(n+1)]`
-/

namespace A400995.P520363567718771153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400995.P520363567718771153

/-! ## A400995.P2101783643410731515

`∩[A006005(n+1), A075192(n+1)]`
-/

namespace A400995.P2101783643410731515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400995.P2101783643410731515

/-! ## A400995.P309795021165231604

`∩[A008578(n+1), A075192(n+1)]`
-/

namespace A400995.P309795021165231604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400995.P309795021165231604

/-! ## A400995.P1982544831750588409

`∩[A033946(n+1), A075192(n+1)]`
-/

namespace A400995.P1982544831750588409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400995.P1982544831750588409

/-! ## A400995.P4110510400824461851

`∩[A046022(n+1), A075192(n+1)]`
-/

namespace A400995.P4110510400824461851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400995.P4110510400824461851

/-! ## A400995.P4910880793045941134

`∩[A051948(n+1), A075192(n+1)]`
-/

namespace A400995.P4910880793045941134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400995.P4910880793045941134

/-! ## A400995.P4418779240744021075

`∩[A053813(n+1), A075192(n+1)]`
-/

namespace A400995.P4418779240744021075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400995.P4418779240744021075

/-! ## A400995.P4340617494028965395

`∩[A062972(n+1), A075192(n+1)]`
-/

namespace A400995.P4340617494028965395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400995.P4340617494028965395

/-! ## A400995.P7571026578177234463

`∩[A064728(n+1), A075192(n+1)]`
-/

namespace A400995.P7571026578177234463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400995.P7571026578177234463

/-! ## A400995.P17541978341102513300

`∩[A065091(n+1), A075192(n+1)]`
-/

namespace A400995.P17541978341102513300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400995.P17541978341102513300

/-! ## A400995.P7602998954787714415

`filter[A075192(n+1), A010051(#)]`
-/

namespace A400995.P7602998954787714415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A400995.P7602998954787714415

/-!
# A400996: Number of fixed point free involutions in S_{2n} (or perfect matchings on [2n]) which avoid the patterns {123, 231, 321}.

The programs for A400996, the canonical program `A400996.P805758818463875474` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400996 has offset 0).

The definition of A400996 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A400996.P805758818463875474

`ogf((1-5x+5x^2)/(1-6x+8x^2-2x^3))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A400996

/-- `ogf((1-5x+5x^2)/(1-6x+8x^2-2x^3))` -/
def P805758818463875474.Spec : Prop :=
  ∀ n, P805758818463875474.a n = A400996 n

theorem P805758818463875474.correct : P805758818463875474.Spec := by
  intro n
  simp only [A400996]

end A400996

/-! ## A400996.P17520821056734228887

`6*a(n-1)-8*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A400996.P17520821056734228887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  6 * a (n - 1) - 8 * a (n - 2) + 2 * a (n - 3)

end

end A400996.P17520821056734228887

namespace A400996

/-- `6*a(n-1)-8*a(n-2)+2*a(n-3)` -/
def P17520821056734228887.Spec : Prop :=
  ∀ n, P17520821056734228887.a n = A400996 n

end A400996

/-!
# A400998: Number of fixed left-handed polymarquises with n cells.

The programs for A400998, there is no canonical definition to state claims against.
-/

/-! ## A400998.P17949128548742611082

`A009279((n+1)^(n+1)+n)`
-/

namespace A400998.P17949128548742611082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009279 ((n + 1) ^ (n + 1) + n)

end

end A400998.P17949128548742611082

/-!
# A400999: Number of one-sided left-handed polymarquises with n cells.

The programs for A400999, there is no canonical definition to state claims against.
-/

/-! ## A400999.P12232305980942675806

`A115405(A115405((n+1)!))`
-/

namespace A400999.P12232305980942675806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115405 (A115405 (Nat.factorial (n + 1))).toNat

end

end A400999.P12232305980942675806

