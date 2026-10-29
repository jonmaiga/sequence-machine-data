import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C018
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C048
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
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C006
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A362204: Expansion of e.g.f. exp(x/sqrt(1-2*x)).

The programs for A362204, there is no canonical definition to state claims against.
-/

/-! ## A362204.P10254843248951304819

`A111159(A125306(n))`
-/

namespace A362204.P10254843248951304819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111159 (A125306 n).toNat

end

end A362204.P10254843248951304819

/-! ## A362204.P15686752146624053950

`A057361(A293021(n))+1`
-/

namespace A362204.P15686752146624053950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057361 (A293021 n).toNat + 1

end

end A362204.P15686752146624053950

/-!
# A362205: Expansion of e.g.f. exp(x/(1-3*x)^(1/3)).

The programs for A362205, there is no canonical definition to state claims against.
-/

/-! ## A362205.P8559769330600437008

`A008620(A181939(n+1))`
-/

namespace A362205.P8559769330600437008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A181939 (n + 1)).toNat

end

end A362205.P8559769330600437008

/-! ## A362205.P7797176313869703792

`A130497(A109516(n+1))`
-/

namespace A362205.P7797176313869703792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130497 (A109516 (n + 1)).toNat

end

end A362205.P7797176313869703792

/-!
# A362206: Expansion of 1/(1 - x/(1-9*x)^(1/3)).

The programs for A362206, there is no canonical definition to state claims against.
-/

/-! ## A362206.P7496011862222691259

`A100682(A198953(n))`
-/

namespace A362206.P7496011862222691259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100682 (A198953 n).toNat

end

end A362206.P7496011862222691259

/-! ## A362206.P15102875426709177437

`A186705(A103293(n))+A103334(n)`
-/

namespace A362206.P15102875426709177437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186705 (A103293 n).toNat + A103334 n

end

end A362206.P15102875426709177437

/-!
# A362208: Irregular triangle read by rows: T(n, k) is the number of compositions (ordered partitions) of n into exactly k distinct parts between the members of [k^2].

The programs for A362208, there is no canonical definition to state claims against.
-/

/-! ## A362208.P17044816259226158166

`and(A161645(A000051(n)), A208615(3*(n+1)))`
-/

namespace A362208.P17044816259226158166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A161645 (A000051 n).toNat) (A208615 (3 * (n + 1)))

end

end A362208.P17044816259226158166

/-! ## A362208.P2347344903627713882

`A284021(n)%A008329(A247026(3*(n+1)))`
-/

namespace A362208.P2347344903627713882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284021 n) (A008329 (A247026 (3 * (n + 1))).toNat)

end

end A362208.P2347344903627713882

/-! ## A362208.P7323342322007578644

`and(A067720(n+1), A097688(A015753(2*n)))`
-/

namespace A362208.P7323342322007578644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A067720 (n + 1)) (A097688 (A015753 (2 * n)).toNat)

end

end A362208.P7323342322007578644

/-! ## A362208.P3156266703483399001

`and(A124531(2*n), A239550(3*n+4))`
-/

namespace A362208.P3156266703483399001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A124531 (2 * n)) (A239550 (3 * n + 4))

end

end A362208.P3156266703483399001

/-! ## A362208.P5014271627137460548

`and(A007947(A007837(n)), A273496(n))`
-/

namespace A362208.P5014271627137460548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007947 (A007837 n).toNat) (A273496 n)

end

end A362208.P5014271627137460548

/-!
# A362210: Expansion of 1/(1 - x/(1-9*x)^(2/3)).

The programs for A362210, there is no canonical definition to state claims against.
-/

/-! ## A362210.P9187061524329078060

`A371456(2*n)`
-/

namespace A362210.P9187061524329078060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371456 (2 * n)

end

end A362210.P9187061524329078060

/-! ## A362210.P11274027757021027329

`filter[A371456(n+1), A276793(#)]`
-/

namespace A362210.P11274027757021027329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371456 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A276793 (f1 j).toNat = 1) n)

end

end A362210.P11274027757021027329

/-!
# A362212: a(n) is the unique solution to A047994(x) = A361969(n).

The programs for A362212, there is no canonical definition to state claims against.
-/

/-! ## A362212.P14653844152948183977

`A135347(A361969(n+1))`
-/

namespace A362212.P14653844152948183977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135347 (A361969 (n + 1)).toNat

end

end A362212.P14653844152948183977

/-! ## A362212.P3333159252013955110

`A362229(eq[1, A361967(n+1)]+1)`
-/

namespace A362212.P3333159252013955110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362229 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A362212.P3333159252013955110

/-! ## A362212.P12874857376149127474

`A362229(A361969(2*n+1-n))`
-/

namespace A362212.P12874857376149127474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362229 (A361969 (2 * n + 1 - n)).toNat

end

end A362212.P12874857376149127474

/-! ## A362212.P8157311227005328941

`A362229(A361969(n+1)%A127364(n+1))`
-/

namespace A362212.P8157311227005328941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362229 (Int.tmod (A361969 (n + 1)) (A127364 (n + 1))).toNat

end

end A362212.P8157311227005328941

/-! ## A362212.P582723123957377508

`A362229(A361969(n+1))%A241792(n+1)`
-/

namespace A362212.P582723123957377508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A362229 (A361969 (n + 1)).toNat) (A241792 (n + 1))

end

end A362212.P582723123957377508

/-!
# A362221: Irregular triangle read by rows: T(n, k) is the number of partitions of n into exactly k distinct parts between the members of [k^2].

The programs for A362221, there is no canonical definition to state claims against.
-/

/-! ## A362221.P17669399658264160022

`A265893(A362209(n+1))`
-/

namespace A362221.P17669399658264160022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265893 (A362209 (n + 1)).toNat

end

end A362221.P17669399658264160022

/-! ## A362221.P149918311450354960

`A341524(n+2)%A250120(A362209(n+1))`
-/

namespace A362221.P149918311450354960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341524 (n + 2)) (A250120 (A362209 (n + 1)).toNat)

end

end A362221.P149918311450354960

/-! ## A362221.P2130684773092041501

`A380959(A294675(n+1)+A284470(n+1))`
-/

namespace A362221.P2130684773092041501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380959 (A294675 (n + 1) + A284470 (n + 1)).toNat

end

end A362221.P2130684773092041501

/-! ## A362221.P16231277162359947045

`A239068(n+3)%A295664(A214503(n+5))`
-/

namespace A362221.P16231277162359947045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239068 (n + 3)) (A295664 (A214503 (n + 5)).toNat)

end

end A362221.P16231277162359947045

/-! ## A362221.P13082558284617001519

`A351014(and(A112333(3*n+4), A119444(3*n+4)))`
-/

namespace A362221.P13082558284617001519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351014 (Int.land (A112333 (3 * n + 4)) (A119444 (3 * n + 4))).toNat

end

end A362221.P13082558284617001519

/-!
# A362223: a(n) is the number of n-celled fixed rounded polyominoes.

The programs for A362223, there is no canonical definition to state claims against.
-/

/-! ## A362223.P8229438720880421054

`A285975(n+1)+A285962(A346374(n))`
-/

namespace A362223.P8229438720880421054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285975 (n + 1) + A285962 (A346374 n).toNat

end

end A362223.P8229438720880421054

/-!
# A362224: a(n) is the number of n-celled one-sided rounded polyominoes.

The programs for A362224, there is no canonical definition to state claims against.
-/

/-! ## A362224.P2246857437393870447

`A289437(A343848(n+1)+A329158(n+1))`
-/

namespace A362224.P2246857437393870447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289437 (A343848 (n + 1) + A329158 (n + 1)).toNat

end

end A362224.P2246857437393870447

/-!
# A362225: Primes of the form (2*p^2 + 1)/3 where p is a prime > 3.

The programs for A362225, the canonical program `A362225.P17099261379294199932` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362225 has offset 1).

The definition of A362225 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175255, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A362225.P17099261379294199932

`(2*A175255(n+2)+1)/3`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A362225

/-- `(2*A175255(n+2)+1)/3` -/
def P17099261379294199932.Spec : Prop :=
  ∀ n, P17099261379294199932.a n = (A362225 (n + 1) : ℚ)

end A362225

/-! ## A362225.P9864141778243967191

`p?[A286679(n+3)]`
-/

namespace A362225.P9864141778243967191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286679 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A362225.P9864141778243967191

namespace A362225

/-- `p?[A286679(n+3)]` -/
def P9864141778243967191.Spec : Prop :=
  ∀ n, P9864141778243967191.a n = A362225 (n + 1)

end A362225

/-! ## A362225.P1866385763629458737

`p?[round(A143928(n+1)/3)]`
-/

namespace A362225.P1866385763629458737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A143928 (n + 1) : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A362225.P1866385763629458737

namespace A362225

/-- `p?[round(A143928(n+1)/3)]` -/
def P1866385763629458737.Spec : Prop :=
  ∀ n, P1866385763629458737.a n = A362225 (n + 1)

end A362225

/-! ## A362225.P6596230546061328206

`p?[A071619(p?[2*n+1])]`
-/

namespace A362225.P6596230546061328206
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071619 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A362225.P6596230546061328206

namespace A362225

/-- `p?[A071619(p?[2*n+1])]` -/
def P6596230546061328206.Spec : Prop :=
  ∀ n, P6596230546061328206.a n = A362225 (n + 1)

end A362225

/-! ## A362225.P792901073617636449

`A071619(A175256(n+2))`
-/

namespace A362225.P792901073617636449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071619 (A175256 (n + 2)).toNat

end

end A362225.P792901073617636449

namespace A362225

/-- `A071619(A175256(n+2))` -/
def P792901073617636449.Spec : Prop :=
  ∀ n, P792901073617636449.a n = A362225 (n + 1)

end A362225

/-!
# A362227: a(n) = Product_{k=1..w(n)} p(k)^(S(n,k)-1), where set S(n,k) = row n of A272011 and w(n) = A000120(n) is the binary weight of n.

The programs for A362227, the canonical program `A362227.P57805626971450803` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362227 has offset 0).

The definition of A362227 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A362227.P57805626971450803

`lcm(-a(and(n, n-1)), A057335(n))` with `a(0)=1`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A362227

/-- `lcm(-a(and(n, n-1)), A057335(n))` -/
def P57805626971450803.Spec : Prop :=
  ∀ n, (P57805626971450803.a n : ℤ) = A362227 n

theorem P57805626971450803.correct : P57805626971450803.Spec := by
  intro n
  simp only [A362227]

end A362227

/-! ## A362227.P8801737592022795792

`A278236(A276091(n))`
-/

namespace A362227.P8801737592022795792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278236 (A276091 n).toNat

end

end A362227.P8801737592022795792

namespace A362227

/-- `A278236(A276091(n))` -/
def P8801737592022795792.Spec : Prop :=
  ∀ n, P8801737592022795792.a n = A362227 n

end A362227

/-! ## A362227.P7542545556631689237

`A278236(record[A225901(n)])`
-/

namespace A362227.P7542545556631689237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225901 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278236 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A362227.P7542545556631689237

namespace A362227

/-- `A278236(record[A225901(n)])` -/
def P7542545556631689237.Spec : Prop :=
  ∀ n, P7542545556631689237.a n = A362227 n

end A362227

/-! ## A362227.P2408430419575881146

`A329600(A057335(n))`
-/

namespace A362227.P2408430419575881146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329600 (A057335 n).toNat

end

end A362227.P2408430419575881146

namespace A362227

/-- `A329600(A057335(n))` -/
def P2408430419575881146.Spec : Prop :=
  ∀ n, P2408430419575881146.a n = A362227 n

end A362227

/-! ## A362227.P9925960214159108787

`A054842(A048794(n))`
-/

namespace A362227.P9925960214159108787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054842 (A048794 n).toNat

end

end A362227.P9925960214159108787

namespace A362227

/-- `A054842(A048794(n))` -/
def P9925960214159108787.Spec : Prop :=
  ∀ n, P9925960214159108787.a n = A362227 n

end A362227

/-!
# A362228: Triangle read by rows: row n is the shortest, then lexicographically earliest sequence of positive integers that takes n iterations of the run transform to reach 1.

The programs for A362228, there is no canonical definition to state claims against.
-/

/-! ## A362228.P11193870665119362089

`A317960(A204688(n)*A304533(n+2))`
-/

namespace A362228.P11193870665119362089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317960 (A204688 n * A304533 (n + 2)).toNat

end

end A362228.P11193870665119362089

/-! ## A362228.P13484186553204292388

`A000005(gcd(A136414(2*n+5), A151710(n+1)))`
-/

namespace A362228.P13484186553204292388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (A136414 (2 * n + 5)) (A151710 (n + 1)))

end

end A362228.P13484186553204292388

/-! ## A362228.P16093487375915498120

`A026605(A284632(n+4)+A042965(n+2))`
-/

namespace A362228.P16093487375915498120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026605 (A284632 (n + 4) + A042965 (n + 2)).toNat

end

end A362228.P16093487375915498120

/-! ## A362228.P6289595393736478179

`A000002(gcd(A067080(n+1), A254009(n+1)))`
-/

namespace A362228.P6289595393736478179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (Int.gcd (A067080 (n + 1)) (A254009 (n + 1)))

end

end A362228.P6289595393736478179

/-! ## A362228.P13300275874168377903

`A175128(A182194(n+1))`
-/

namespace A362228.P13300275874168377903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175128 (A182194 (n + 1)).toNat

end

end A362228.P13300275874168377903

/-!
# A362230: Unitary sparsely totient numbers: numbers k such that m > k implies uphi(m) > uphi(k), where uphi is the unitary totient function (A047994).

The programs for A362230, there is no canonical definition to state claims against.
-/

/-! ## A362230.P4188227711830814020

`record[A362229(n+1)]`
-/

namespace A362230.P4188227711830814020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A362230.P4188227711830814020

/-! ## A362230.P8413902353582165387

`A362229(A362231(n+1))`
-/

namespace A362230.P8413902353582165387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362229 (A362231 (n + 1)).toNat

end

end A362230.P8413902353582165387

/-! ## A362230.P13493919346080374634

`record[A361966(∑[A361967(n+1)])]`
-/

namespace A362230.P13493919346080374634
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361967 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361966 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A362230.P13493919346080374634

/-! ## A362230.P17831804631352116407

`record[A208547(∑[A174353(n+1)])]`
-/

namespace A362230.P17831804631352116407
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174353 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208547 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A362230.P17831804631352116407

/-! ## A362230.P6910861840243624542

`record[∏{p}[A195199(n+1), #]]`
-/

namespace A362230.P6910861840243624542
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195199 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A362230.P6910861840243624542

/-!
# A362231: a(n) = A047994(A362230(n)).

The programs for A362231, there is no canonical definition to state claims against.
-/

/-! ## A362231.P5473565804354689967

`A047994(A362230(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A362231.P5473565804354689967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A362230 (n + 1)).toNat

end

end A362231.P5473565804354689967

/-! ## A362231.P14587380217106557856

`A091732(A362230(n+1)/2)`
-/

namespace A362231.P14587380217106557856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091732 (SequenceMachineLib.roundAway ((A362230 (n + 1) : ℚ) / 2)).toNat

end

end A362231.P14587380217106557856

/-! ## A362231.P6900252852654035630

`A091732(record[A362229(n+1)/2])`
-/

namespace A362231.P6900252852654035630
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A362229 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091732 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A362231.P6900252852654035630

/-! ## A362231.P10831161036852671456

`A091732(record[A362229(n+1)])`
-/

namespace A362231.P10831161036852671456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091732 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A362231.P10831161036852671456

/-! ## A362231.P17963034202873506093

`A109712(A362230(n+1)/2)`
-/

namespace A362231.P17963034202873506093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109712 (SequenceMachineLib.roundAway ((A362230 (n + 1) : ℚ) / 2)).toNat

end

end A362231.P17963034202873506093

/-! ## A362231.P16534723160989989175

`A047994(record[A362229(n+1)/2])`
-/

namespace A362231.P16534723160989989175
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A362229 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A362231.P16534723160989989175

/-!
# A362232: a(1) = 1; for n > 1, a(n) is number of terms in the first n-1 terms of the sequence that are not proper divisors of a(n-1).

The programs for A362232, there is no canonical definition to state claims against.
-/

/-! ## A362232.P14073809982412729722

`A394739(A187829(n+1))`
-/

namespace A362232.P14073809982412729722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394739 (A187829 (n + 1)).toNat

end

end A362232.P14073809982412729722

/-! ## A362232.P5465559606301478072

`A394739(A077168(n))`
-/

namespace A362232.P5465559606301478072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394739 (A077168 n).toNat

end

end A362232.P5465559606301478072

/-! ## A362232.P7784871692799345797

`A000120(A027642(n)*A171943(n+1))`
-/

namespace A362232.P7784871692799345797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A027642 n * A171943 (n + 1)).toNat

end

end A362232.P7784871692799345797

/-!
# A362233: Number of vertices among all distinct circles that can be constructed from a point on the origin and n equally spaced points on each of the +x,-x,+y,-y coordinates axes when each pair of points is connected by a circle and where the points lie at the ends of the circles' diameter.

The programs for A362233, there is no canonical definition to state claims against.
-/

/-! ## A362233.P13700368148500578240

`A362235(n+1)-A362234(n+1)+1`
-/

namespace A362233.P13700368148500578240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362235 (n + 1) - A362234 (n + 1) + 1

end

end A362233.P13700368148500578240

/-!
# A362234: Number of regions among all distinct circles that can be constructed from a point on the origin and n equally spaced points on each of the +x,-x,+y,-y coordinates axes when each pair of points is connected by a circle and where the points lie at the ends of the circles' diameter.

The programs for A362234, there is no canonical definition to state claims against.
-/

/-! ## A362234.P896288254976318094

`A362235(n+1)-A362233(n+1)+1`
-/

namespace A362234.P896288254976318094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362235 (n + 1) - A362233 (n + 1) + 1

end

end A362234.P896288254976318094

/-!
# A362235: Number of edges among all distinct circles that can be constructed from a point on the origin and n equally spaced points on each of the +x,-x,+y,-y coordinates axes when each pair of points is connected by a circle and where the points lie at the ends of the circles' diameter.

The programs for A362235, there is no canonical definition to state claims against.
-/

/-! ## A362235.P11069007777220056110

`A362234(n+1)+A362233(n+1)-1`
-/

namespace A362235.P11069007777220056110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362234 (n + 1) + A362233 (n + 1) - 1

end

end A362235.P11069007777220056110

/-!
# A362237: Expansion of e.g.f.: 1/(1 - x/(1-x)^x).

The programs for A362237, there is no canonical definition to state claims against.
-/

/-! ## A362237.P6959683415041637771

`∏{p}[A130472(n^n)+1, #-1]`
-/

namespace A362237.P6959683415041637771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130472 (n ^ n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - 1)

end

end A362237.P6959683415041637771

/-! ## A362237.P10938964087537647502

`∏{p}[2*A028242(n^n), #-1]`
-/

namespace A362237.P10938964087537647502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028242 (n ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - 1)

end

end A362237.P10938964087537647502

/-!
# A362238: Expansion of e.g.f.: 1/(1 - x*(1+x)^x).

The programs for A362238, there is no canonical definition to state claims against.
-/

/-! ## A362238.P5601579622025582343

`A001462(A000258(n))*A055226(n)`
-/

namespace A362238.P5601579622025582343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A000258 n).toNat * A055226 n

end

end A362238.P5601579622025582343

/-! ## A362238.P11096890673892787697

`lcm(4, A020897(a(n-1)+3))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A362238.P11096890673892787697
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  Int.lcm 4 (A020897 (a (n - 1) + 3))

end

end A362238.P11096890673892787697

/-!
# A362239: Primes such that all composite numbers up to the next prime have the same number of distinct prime divisors.

The programs for A362239, there is no canonical definition to state claims against.
-/

/-! ## A362239.P10855070636872947889

`∩[A088254(n+1), A252474(n+1)]`
-/

namespace A362239.P10855070636872947889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252474 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A362239.P10855070636872947889

/-! ## A362239.P3076888456966679265

`eq[A237593(A262827(n)), A363723(n)]`
-/

namespace A362239.P3076888456966679265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237593 (A262827 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363723 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A362239.P3076888456966679265

/-! ## A362239.P14952053782092879028

`eq[A003415(n), A051731(A307088(n+2))]`
-/

namespace A362239.P14952053782092879028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (A307088 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A362239.P14952053782092879028

/-! ## A362239.P11855045771386995215

`A020639(A274386(n+1)*A301916(n+1))`
-/

namespace A362239.P11855045771386995215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A274386 (n + 1) * A301916 (n + 1)).toNat

end

end A362239.P11855045771386995215

/-! ## A362239.P9317053415017592510

`p?[∑[A394392(n+1)]]`
-/

namespace A362239.P9317053415017592510
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394392 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A362239.P9317053415017592510

/-!
# A362240: Triangle read by rows: Row n is the shortest, then lexicographically earliest sequence of 0's and 1's not yet in the sequence.

The programs for A362240, there is no canonical definition to state claims against.
-/

/-! ## A362240.P8679375470462319252

`A331917(Δ[A362598(n)]+1)`
-/

namespace A362240.P8679375470462319252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331917 (f1 (n + 1) - f1 n + 1).toNat

end

end A362240.P8679375470462319252

/-! ## A362240.P2264089800128492146

`A000045(1-Δ[A362598(n)])`
-/

namespace A362240.P2264089800128492146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (1 - (f1 (n + 1) - f1 n)).toNat

end

end A362240.P2264089800128492146

/-! ## A362240.P5658623156892098075

`A000073(1-Δ[A362598(n)])`
-/

namespace A362240.P5658623156892098075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (1 - (f1 (n + 1) - f1 n)).toNat

end

end A362240.P5658623156892098075

/-! ## A362240.P17856625611693226146

`A011371(1-Δ[A362598(n)])`
-/

namespace A362240.P17856625611693226146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (1 - (f1 (n + 1) - f1 n)).toNat

end

end A362240.P17856625611693226146

/-! ## A362240.P4898216234843175712

`A124767(1-Δ[A362598(n)])`
-/

namespace A362240.P4898216234843175712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 (1 - (f1 (n + 1) - f1 n)).toNat

end

end A362240.P4898216234843175712

/-! ## A362240.P13931618373540018045

`A000607(2-Δ[A362598(n)])`
-/

namespace A362240.P13931618373540018045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 (2 - (f1 (n + 1) - f1 n)).toNat

end

end A362240.P13931618373540018045

/-! ## A362240.P14585243611712842243

`A001222(2-Δ[A362598(n)])`
-/

namespace A362240.P14585243611712842243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 - (f1 (n + 1) - f1 n)).toNat

end

end A362240.P14585243611712842243

/-! ## A362240.P8822505731981253353

`A022329(2-Δ[A362598(n)])`
-/

namespace A362240.P8822505731981253353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022329 (2 - (f1 (n + 1) - f1 n)).toNat

end

end A362240.P8822505731981253353

/-! ## A362240.P3737474293533589677

`A063647(2-Δ[A362598(n)])`
-/

namespace A362240.P3737474293533589677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063647 (2 - (f1 (n + 1) - f1 n)).toNat

end

end A362240.P3737474293533589677

/-! ## A362240.P3892106927037131390

`A111133(2-Δ[A362598(n)])`
-/

namespace A362240.P3892106927037131390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 (2 - (f1 (n + 1) - f1 n)).toNat

end

end A362240.P3892106927037131390

/-!
# A362241: Binary encoding of the rows of A362240.

The programs for A362241, there is no canonical definition to state claims against.
-/

/-! ## A362241.P5444185342580906137

`A053645(A362009(n+1)+1)`
-/

namespace A362241.P5444185342580906137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A362009 (n + 1) + 1).toNat

end

end A362241.P5444185342580906137

/-!
# A362242: Triangle read by rows: T(n,k) is the number of lattice paths from (0,0) to (k,n-k) using steps (i,j) with i,j>=0 and gcd(i,j)=1.

The programs for A362242, there is no canonical definition to state claims against.
-/

/-! ## A362242.P4535332726260396093

`A114176(n)-A173636(A174545(n))`
-/

namespace A362242.P4535332726260396093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114176 n - A173636 (A174545 n).toNat

end

end A362242.P4535332726260396093

/-! ## A362242.P3287157983316060993

`A001263(n+1)-A253830(A001263(n+1))`
-/

namespace A362242.P3287157983316060993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) - A253830 (A001263 (n + 1)).toNat

end

end A362242.P3287157983316060993

/-! ## A362242.P9131467756074509578

`A120565(A089447(n))`
-/

namespace A362242.P9131467756074509578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120565 (A089447 n).toNat

end

end A362242.P9131467756074509578

/-! ## A362242.P16085716572505578961

`A103298(A157147(n))`
-/

namespace A362242.P16085716572505578961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103298 (A157147 n).toNat

end

end A362242.P16085716572505578961

/-! ## A362242.P13878375702212328449

`A132663(A154983(n))`
-/

namespace A362242.P13878375702212328449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132663 (A154983 n).toNat

end

end A362242.P13878375702212328449

/-!
# A362244: Expansion of e.g.f. 1/(1 - x * exp(-x * (exp(-x) - 1))).

The programs for A362244, there is no canonical definition to state claims against.
-/

/-! ## A362244.P5205706312236869674

`A090695(A306463(n))`
-/

namespace A362244.P5205706312236869674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090695 (A306463 n).toNat

end

end A362244.P5205706312236869674

/-! ## A362244.P16707798498617125612

`A386497(n*A386504(n))`
-/

namespace A362244.P16707798498617125612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386497 ((n : ℤ) * A386504 n).toNat

end

end A362244.P16707798498617125612

/-!
# A362245: Expansion of e.g.f. 1/(1 - x * exp(x * (exp(x) - 1))).

The programs for A362245, there is no canonical definition to state claims against.
-/

/-! ## A362245.P52537397005892496

`A244225(A184639(n²))`
-/

namespace A362245.P52537397005892496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244225 (A184639 (n ^ 2)).toNat

end

end A362245.P52537397005892496

/-! ## A362245.P9559840482857183717

`A065033(A112242(n)-1)`
-/

namespace A362245.P9559840482857183717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A112242 n - 1).toNat

end

end A362245.P9559840482857183717

/-!
# A362246: Expansion of e.g.f. exp(x * exp(-x * (exp(-x) - 1))).

The programs for A362246, there is no canonical definition to state claims against.
-/

/-! ## A362246.P4734873317761492603

`A220232(n)+A124769(2^n)`
-/

namespace A362246.P4734873317761492603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220232 n + A124769 (2 ^ n)

end

end A362246.P4734873317761492603

/-! ## A362246.P6805063445963101814

`A220232(n)+A172541(n+1)!`
-/

namespace A362246.P6805063445963101814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220232 n + (Nat.factorial (A172541 (n + 1)).toNat : ℤ)

end

end A362246.P6805063445963101814

/-! ## A362246.P14462833487797549275

`A220232(A000038(4^n)+n)+1`
-/

namespace A362246.P14462833487797549275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220232 (A000038 (4 ^ n) + (n : ℤ)).toNat + 1

end

end A362246.P14462833487797549275

/-!
# A362247: Expansion of e.g.f. exp(x * exp(x * (exp(x) - 1))).

The programs for A362247, there is no canonical definition to state claims against.
-/

/-! ## A362247.P17317799960037452675

`A154488(a(n-1))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=7`
-/

namespace A362247.P17317799960037452675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 7] fun n a =>
  A154488 (a (n - 1)).toNat

end

end A362247.P17317799960037452675

/-! ## A362247.P4090241123199724309

`A215800(A193036(n))`
-/

namespace A362247.P4090241123199724309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215800 (A193036 n).toNat

end

end A362247.P4090241123199724309

/-!
# A362248: a(n) is the number of locations 1..n-1 which can reach i=n-1, where jumps from location i to i +- a(i) are permitted (within 1..n-1); a(1)=1. See example.

The programs for A362248, the canonical program `A362248.P13210532930817746483` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362248 has offset 1).

The definition of A362248 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A362248.P14098890612828349058

`1-A393292(n+1)+n`
-/

namespace A362248.P14098890612828349058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A393292 (n + 1) + (n : ℤ)

end

end A362248.P14098890612828349058

namespace A362248

/-- `1-A393292(n+1)+n` -/
def P14098890612828349058.Spec : Prop :=
  ∀ n, P14098890612828349058.a n = A362248 (n + 1)

theorem P14098890612828349058.correct : P14098890612828349058.Spec := by
  intro n
  simp only [A362248, Nat.add_sub_cancel, A362248.P14098890612828349058.a, A362248.P13210532930817746483.a, A028310, A028310.P18130301328277559831.a, A352729, A352729.P3431698846437154592.a, A393292, A393292.P14481508653223136911.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A362248

/-! ## A362248.P14380960917114033366

`xor(A004442(n), A393292(n+1))`
-/

namespace A362248.P14380960917114033366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004442 n) (A393292 (n + 1))

end

end A362248.P14380960917114033366

namespace A362248

/-- `xor(A004442(n), A393292(n+1))` -/
def P14380960917114033366.Spec : Prop :=
  ∀ n, P14380960917114033366.a n = A362248 (n + 1)

end A362248

/-! ## A362248.P13210532930817746483

`A028310(n-A352729(n))`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A362248

/-- `A028310(n-A352729(n))` -/
def P13210532930817746483.Spec : Prop :=
  ∀ n, P13210532930817746483.a n = A362248 (n + 1)

theorem P13210532930817746483.correct : P13210532930817746483.Spec := by
  intro n
  simp only [A362248, Nat.add_sub_cancel]

end A362248

/-! ## A362248.P9870907293807356307

`A028310(A342410(n+1)-1)`
-/

namespace A362248.P9870907293807356307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A342410 (n + 1) - 1).toNat

end

end A362248.P9870907293807356307

namespace A362248

/-- `A028310(A342410(n+1)-1)` -/
def P9870907293807356307.Spec : Prop :=
  ∀ n, P9870907293807356307.a n = A362248 (n + 1)

end A362248

/-! ## A362248.P9669294186339725627

`A000007(A342410(n+1)-1)+A342410(n+1)-1`
-/

namespace A362248.P9669294186339725627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A342410 (n + 1) - 1).toNat + (A342410 (n + 1) - 1)

end

end A362248.P9669294186339725627

namespace A362248

/-- `A000007(A342410(n+1)-1)+A342410(n+1)-1` -/
def P9669294186339725627.Spec : Prop :=
  ∀ n, P9669294186339725627.a n = A362248 (n + 1)

end A362248

/-!
# A362250: Primes dividing terms of A231831.

The programs for A362250, there is no canonical definition to state claims against.
-/

/-! ## A362250.P7327807475294547833

`A322394(A322391(3*(n+1))+A004709(n+1))`
-/

namespace A362250.P7327807475294547833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322394 (A322391 (3 * (n + 1)) + A004709 (n + 1)).toNat

end

end A362250.P7327807475294547833

/-!
# A362252: Primes dividing terms of A231830.

The programs for A362252, there is no canonical definition to state claims against.
-/

/-! ## A362252.P8586553503641471105

`∩[A162795(A004050(n+1)), A323782(n+1)]`
-/

namespace A362252.P8586553503641471105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162795 (A004050 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A362252.P8586553503641471105

/-!
# A362254: Reciprocal of n modulo largest prime smaller than n.

The programs for A362254, there is no canonical definition to state claims against.
-/

/-! ## A362254.P15431578751970058965

`A243147(n+1)%(A085163(n)+3)`
-/

namespace A362254.P15431578751970058965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243147 (n + 1)) (A085163 n + 3)

end

end A362254.P15431578751970058965

/-! ## A362254.P1619922422776926732

`A353286(A349831(n+5))%ceil(sqrt(n²+4))`
-/

namespace A362254.P1619922422776926732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353286 (A349831 (n + 5)).toNat) ⌈Real.sqrt (n ^ 2 + 4 : ℝ)⌉

end

end A362254.P1619922422776926732

/-! ## A362254.P1833620799405918384

`A081604(A053989(n+3)^A330101(n))`
-/

namespace A362254.P1833620799405918384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (SequenceMachineLib.roundAway ((A053989 (n + 3) : ℚ) ^ (A330101 n : ℤ))).toNat

end

end A362254.P1833620799405918384

/-! ## A362254.P9792602846067135539

`gcd(A007895(A020439(n+5)), A079583(n))`
-/

namespace A362254.P9792602846067135539
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007895 (A020439 (n + 5)).toNat) (A079583 n)

end

end A362254.P9792602846067135539

/-! ## A362254.P5821059074961397286

`A102097(A194650(n+1)+A127430(n+1))`
-/

namespace A362254.P5821059074961397286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102097 (A194650 (n + 1) + A127430 (n + 1)).toNat

end

end A362254.P5821059074961397286

/-!
# A362255: a(0) = a(1) = a(2) = 1, for n > 2, a(n) = a(n-1) + a(n-k) + k with k = 2.

The programs for A362255, the canonical program `A362255.P15597463466131303734` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362255 has offset 0).

The definition of A362255 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362255.P16187399233987633941

`ogf((1-x+2x^3)/(1-2x+x^2-x^3+x^4))`
-/

namespace A362255.P16187399233987633941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 0, 2] [1, -2, 1, -1, 1] n

end

end A362255.P16187399233987633941

namespace A362255

/-- `ogf((1-x+2x^3)/(1-2x+x^2-x^3+x^4))` -/
def P16187399233987633941.Spec : Prop :=
  ∀ n, P16187399233987633941.a n = A362255 n

end A362255

/-! ## A362255.P15597463466131303734

`2*a(n-1)-a(n-2)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=4`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A362255

/-- `2*a(n-1)-a(n-2)+a(n-3)-a(n-4)` -/
def P15597463466131303734.Spec : Prop :=
  ∀ n, P15597463466131303734.a n = A362255 n

theorem P15597463466131303734.correct : P15597463466131303734.Spec := by
  intro n
  simp only [A362255]

end A362255

/-! ## A362255.P13861906106599444600

`a(n-1)+a(n-3)+2` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A362255.P13861906106599444600
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 1) + (a (n - 3) + 2)

end

end A362255.P13861906106599444600

namespace A362255

/-- `a(n-1)+a(n-3)+2` -/
def P13861906106599444600.Spec : Prop :=
  ∀ n, (P13861906106599444600.a n : ℤ) = A362255 n

end A362255

/-! ## A362255.P2513097050228193330

`3*A000930(n)-2`
-/

namespace A362255.P2513097050228193330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000930 n - 2

end

end A362255.P2513097050228193330

namespace A362255

/-- `3*A000930(n)-2` -/
def P2513097050228193330.Spec : Prop :=
  ∀ n, P2513097050228193330.a n = A362255 n

end A362255

/-! ## A362255.P13208091574328222009

`abs(3*A199804(n))-2`
-/

namespace A362255.P13208091574328222009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 * A199804 n| - 2

end

end A362255.P13208091574328222009

namespace A362255

/-- `abs(3*A199804(n))-2` -/
def P13208091574328222009.Spec : Prop :=
  ∀ n, P13208091574328222009.a n = A362255 n

end A362255

/-! ## A362255.P12493380542268982992

`3*A078012(n+3)-2`
-/

namespace A362255.P12493380542268982992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A078012 (n + 3) - 2

end

end A362255.P12493380542268982992

namespace A362255

/-- `3*A078012(n+3)-2` -/
def P12493380542268982992.Spec : Prop :=
  ∀ n, P12493380542268982992.a n = A362255 n

end A362255

/-! ## A362255.P12227331483301901733

`A077868(n)-(A135851(n)+1)`
-/

namespace A362255.P12227331483301901733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077868 n - (A135851 n + 1)

end

end A362255.P12227331483301901733

namespace A362255

/-- `A077868(n)-(A135851(n)+1)` -/
def P12227331483301901733.Spec : Prop :=
  ∀ n, P12227331483301901733.a n = A362255 n

end A362255

/-! ## A362255.P9309238625371812459

`A038718(n+1)+A058278(n)-1`
-/

namespace A362255.P9309238625371812459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038718 (n + 1) + (A058278 n - 1)

end

end A362255.P9309238625371812459

namespace A362255

/-- `A038718(n+1)+A058278(n)-1` -/
def P9309238625371812459.Spec : Prop :=
  ∀ n, P9309238625371812459.a n = A362255 n

end A362255

/-!
# A362256: a(0) = a(1) = a(2) = 1, for n > 2, a(n) = a(n-1) + a(n-k) + k with k = 3.

The programs for A362256, the canonical program `A362256.P9057610953881356695` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362256 has offset 0).

The definition of A362256 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362256.P5528835978000559710

`ogf((1-x+4x^3-x^4)/(1-2x+x^2-x^4+x^5))`
-/

namespace A362256.P5528835978000559710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 0, 4, -1] [1, -2, 1, 0, -1, 1] n

end

end A362256.P5528835978000559710

namespace A362256

/-- `ogf((1-x+4x^3-x^4)/(1-2x+x^2-x^4+x^5))` -/
def P5528835978000559710.Spec : Prop :=
  ∀ n, P5528835978000559710.a n = A362256 n

end A362256

/-! ## A362256.P9057610953881356695

`2*a(n-1)-a(n-2)+a(n-4)-a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=5, a(4)=9`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A362256

/-- `2*a(n-1)-a(n-2)+a(n-4)-a(n-5)` -/
def P9057610953881356695.Spec : Prop :=
  ∀ n, P9057610953881356695.a n = A362256 n

theorem P9057610953881356695.correct : P9057610953881356695.Spec := by
  intro n
  simp only [A362256]

end A362256

/-! ## A362256.P1648920000730680824

`a(n-1)+a(n-4)+3` with `a(0)=1, a(1)=1, a(2)=1, a(3)=5`
-/

namespace A362256.P1648920000730680824
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 5] fun n a =>
  a (n - 1) + (a (n - 4) + 3)

end

end A362256.P1648920000730680824

namespace A362256

/-- `a(n-1)+a(n-4)+3` -/
def P1648920000730680824.Spec : Prop :=
  ∀ n, (P1648920000730680824.a n : ℤ) = A362256 n

end A362256

/-! ## A362256.P15261556945452451164

`4*∑[A017898(n+1)]+1`
-/

namespace A362256.P15261556945452451164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A362256.P15261556945452451164

namespace A362256

/-- `4*∑[A017898(n+1)]+1` -/
def P15261556945452451164.Spec : Prop :=
  ∀ n, P15261556945452451164.a n = A362256 n

end A362256

/-! ## A362256.P14200692028721394848

`4*(A003269(n+2)-1)+1`
-/

namespace A362256.P14200692028721394848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A003269 (n + 2) - 1) + 1

end

end A362256.P14200692028721394848

namespace A362256

/-- `4*(A003269(n+2)-1)+1` -/
def P14200692028721394848.Spec : Prop :=
  ∀ n, P14200692028721394848.a n = A362256 n

end A362256

/-!
# A362257: a(n) = 2*Q(n) - n, where Q(n) is Hofstadter's Q-sequence A005185.

The programs for A362257, there is no canonical definition to state claims against.
-/

/-! ## A362257.P1791159426389180527

`2*A005185(n+1)-(n+1)`
-/

namespace A362257.P1791159426389180527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005185 (n + 1) - (n + 1 : ℤ)

end

end A362257.P1791159426389180527

/-! ## A362257.P2934584643964891187

`n+1-2*A239913(n+1)`
-/

namespace A362257.P2934584643964891187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - 2 * A239913 (n + 1)

end

end A362257.P2934584643964891187

/-! ## A362257.P10817194519390100195

`A004273(A005185(n+1))-n`
-/

namespace A362257.P10817194519390100195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A005185 (n + 1)).toNat - (n : ℤ)

end

end A362257.P10817194519390100195

/-! ## A362257.P7484987520101303024

`A005185(n+1)-A239913(n+1)`
-/

namespace A362257.P7484987520101303024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (n + 1) - A239913 (n + 1)

end

end A362257.P7484987520101303024

/-! ## A362257.P12764736220323328147

`A005408(A005185(n+1)-1)-n`
-/

namespace A362257.P12764736220323328147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A005185 (n + 1) - 1).toNat - (n : ℤ)

end

end A362257.P12764736220323328147

/-! ## A362257.P15688690498331981433

`A023443(2*A005185(n+1))-n`
-/

namespace A362257.P15688690498331981433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (2 * A005185 (n + 1)).toNat - (n : ℤ)

end

end A362257.P15688690498331981433

/-! ## A362257.P3280536631389454277

`A004275(A005185(n+1)+1)-(n+1)`
-/

namespace A362257.P3280536631389454277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A005185 (n + 1) + 1).toNat - (n + 1 : ℤ)

end

end A362257.P3280536631389454277

/-! ## A362257.P2861740324794029417

`A001478(n+1)+2*A005185(n+1)`
-/

namespace A362257.P2861740324794029417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + 2 * A005185 (n + 1)

end

end A362257.P2861740324794029417

/-! ## A362257.P11586565657817238560

`A004074(n+1)-2*A284019(n+1)`
-/

namespace A362257.P11586565657817238560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004074 (n + 1) - 2 * A284019 (n + 1)

end

end A362257.P11586565657817238560

/-! ## A362257.P10181399653168254718

`2*(∑[A081827(A065033(2*n))]+1)-(n+1)`
-/

namespace A362257.P10181399653168254718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081827 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j + 1) - (n + 1 : ℤ)

end

end A362257.P10181399653168254718

/-!
# A362259: Maximum number of ways in which a set of integer-sided squares can tile an n X n square, up to rotations and reflections.

The programs for A362259, there is no canonical definition to state claims against.
-/

/-! ## A362259.P16901330082120701799

`A362258(∑[n]+n)`
-/

namespace A362259.P16901330082120701799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362258 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A362259.P16901330082120701799

/-! ## A362259.P17277918008604873832

`A362258(A000096(n))+A308922(n)`
-/

namespace A362259.P17277918008604873832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362258 (A000096 n).toNat + A308922 n

end

end A362259.P17277918008604873832

/-! ## A362259.P15570038748043554646

`A362258(A000096(n))*A362258(n)`
-/

namespace A362259.P15570038748043554646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362258 (A000096 n).toNat * A362258 n

end

end A362259.P15570038748043554646

/-! ## A362259.P15257566177476388549

`lcm(A087960(n), A362258(A000096(n)))`
-/

namespace A362259.P15257566177476388549
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A087960 n) (A362258 (A000096 n).toNat)

end

end A362259.P15257566177476388549

/-! ## A362259.P15920811075949052539

`A362258(A000096(n))+A326016(n+1)`
-/

namespace A362259.P15920811075949052539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362258 (A000096 n).toNat + A326016 (n + 1)

end

end A362259.P15920811075949052539

/-!
# A362260: Maximum over 0 <= k <= n/2 of the number of permutations of two symbols occurring k and n-2*k times, respectively, where a permutation and its reversal are counted only once.

The programs for A362260, there is no canonical definition to state claims against.
-/

/-! ## A362260.P13304685539958634957

`A102541(lt[A140995(2*n), 2])`
-/

namespace A362260.P13304685539958634957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140995 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102541 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A362260.P13304685539958634957

/-! ## A362260.P5590522678247366578

`A102541(record[A346873(n+1)-1])`
-/

namespace A362260.P5590522678247366578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346873 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102541 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A362260.P5590522678247366578

/-! ## A362260.P5087924619697724488

`A102541(lt[A174037(2*n), A094321(2*n+5)])`
-/

namespace A362260.P5087924619697724488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174037 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094321 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102541 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A362260.P5087924619697724488

/-! ## A362260.P1013557041389997114

`A102541(lt[A299366(2*n+1), A385970(2*n+5)])`
-/

namespace A362260.P1013557041389997114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299366 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385970 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102541 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A362260.P1013557041389997114

/-!
# A362261: Maximum number of ways in which a set of integer-sided squares can tile an n X 3 rectangle, up to rotations and reflections.

The programs for A362261, there is no canonical definition to state claims against.
-/

/-! ## A362261.P5187791872233937339

`A137735(A163529(n)+A114464(n))`
-/

namespace A362261.P5187791872233937339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (A163529 n + A114464 n).toNat

end

end A362261.P5187791872233937339

/-! ## A362261.P15189445256597960666

`A259361(A342463(n)+A198888(n))`
-/

namespace A362261.P15189445256597960666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A342463 n + A198888 n).toNat

end

end A362261.P15189445256597960666

/-! ## A362261.P2674234775025917195

`A000194(A198888(n))-A236412(n+2)`
-/

namespace A362261.P2674234775025917195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A198888 n).toNat - A236412 (n + 2)

end

end A362261.P2674234775025917195

/-! ## A362261.P14686112343992747694

`A115316(A036650(n))`
-/

namespace A362261.P14686112343992747694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115316 (A036650 n).toNat

end

end A362261.P14686112343992747694

/-! ## A362261.P14059962022242642387

`A322077(A006498(n))`
-/

namespace A362261.P14059962022242642387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322077 (A006498 n).toNat

end

end A362261.P14059962022242642387

/-!
# A362263: Maximum number of ways in which a set of integer-sided squares can tile an n X 5 rectangle, up to rotations and reflections.

The programs for A362263, there is no canonical definition to state claims against.
-/

/-! ## A362263.P13318869452364275591

`A193691(A226316(n))`
-/

namespace A362263.P13318869452364275591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193691 (A226316 n).toNat

end

end A362263.P13318869452364275591

/-! ## A362263.P13401490096778241226

`A319713(A113882(n))+1`
-/

namespace A362263.P13401490096778241226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319713 (A113882 n).toNat + 1

end

end A362263.P13401490096778241226

/-! ## A362263.P1775529072904175463

`A007306(round(A179663(n+3)/12)+1)`
-/

namespace A362263.P1775529072904175463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (SequenceMachineLib.roundAway ((A179663 (n + 3) : ℚ) / 12) + 1).toNat

end

end A362263.P1775529072904175463

/-!
# A362265: Indices m for which A362363(m) = 0, meaning the large spiral point in A362249 falls on the East base spiral.

The programs for A362265, there is no canonical definition to state claims against.
-/

/-! ## A362265.P3965933550882182662

`eq[0, A362363(n+1)]+1`
-/

namespace A362265.P3965933550882182662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362363 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A362265.P3965933550882182662

/-!
# A362266: Triangle read by rows: T(n,k) = LCM({p_j-1 : j=1..n})/(p_k-1) for prime p.

The programs for A362266, the canonical program `A362266.P13006912141537441528` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362266 has offset 1).

The definition of A362266 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A058254, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A362266.P13006912141537441528

`A058254(row(n)+1)/A006093(col(n)+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A362266

/-- `A058254(row(n)+1)/A006093(col(n)+1)` -/
def P13006912141537441528.Spec : Prop :=
  ∀ n, P13006912141537441528.a n = (A362266 (n + 1) : ℚ)

end A362266

/-!
# A362274: Expansion of e.g.f. 1/(1-x*exp(x*exp(x))).

The programs for A362274, there is no canonical definition to state claims against.
-/

/-! ## A362274.P10823758236529785631

`A350356(A350354(n))+A064299(n)`
-/

namespace A362274.P10823758236529785631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350356 (A350354 n).toNat + A064299 n

end

end A362274.P10823758236529785631

/-! ## A362274.P15906798480965694144

`A348613(n+1)+A006368(A109253(n))`
-/

namespace A362274.P15906798480965694144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348613 (n + 1) + A006368 (A109253 n).toNat

end

end A362274.P15906798480965694144

/-!
# A362276: a(n) = n! * Sum_{k=0..floor(n/2)} (-n/2)^k * binomial(n-k,k)/(n-k)!.

The programs for A362276, the canonical program `A362276.P1714682932673394220` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362276 has offset 0).

The definition of A362276 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362276.P1714682932673394220

`n!*∑{#}[floor(n/2), (-n/2)^#*C(n-#, #)/(n-#)!]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A362276

/-- `n!*∑{#}[floor(n/2), (-n/2)^#*C(n-#, #)/(n-#)!]` -/
def P1714682932673394220.Spec : Prop :=
  ∀ n, P1714682932673394220.a n = (A362276 n : ℚ)

end A362276

/-! ## A362276.P16969514858357382243

`A362277(∑[4*n])`
-/

namespace A362276.P16969514858357382243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362277 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A362276.P16969514858357382243

namespace A362276

/-- `A362277(∑[4*n])` -/
def P16969514858357382243.Spec : Prop :=
  ∀ n, P16969514858357382243.a n = A362276 n

end A362276

/-!
# A362277: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where T(n,k) = n! * Sum_{j=0..floor(n/2)} (-k/2)^j * binomial(n-j,j)/(n-j)!.

The programs for A362277, there is no canonical definition to state claims against.
-/

/-! ## A362277.P11250829753842184486

`(1-A080791(A180843(n+1)))/A333254(A047218(2*n+3))`
-/

namespace A362277.P11250829753842184486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - A080791 (A180843 (n + 1)).toNat : ℚ) / (A333254 (A047218 (2 * n + 3)).toNat : ℚ)

end

end A362277.P11250829753842184486

/-! ## A362277.P7089286453947084737

`A362394(n)%A165079(A007865(n))`
-/

namespace A362277.P7089286453947084737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A362394 n) (A165079 (A007865 n).toNat)

end

end A362277.P7089286453947084737

/-! ## A362277.P13273125188401250814

`A221131(n)+A079208(A038872(n+1))`
-/

namespace A362277.P13273125188401250814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221131 n + A079208 (A038872 (n + 1)).toNat

end

end A362277.P13273125188401250814

/-!
# A362278: Expansion of e.g.f. exp(x - 3*x^2/2).

The programs for A362278, the canonical program `A362278.P18312201673149942725` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362278 has offset 0).

The definition of A362278 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362278.P18312201673149942725

`a(n-1)-3*(n-1)*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A362278

/-- `a(n-1)-3*(n-1)*a(n-2)` -/
def P18312201673149942725.Spec : Prop :=
  ∀ n, P18312201673149942725.a n = A362278 n

theorem P18312201673149942725.correct : P18312201673149942725.Spec := by
  intro n
  simp only [A362278]

end A362278

/-! ## A362278.P633203598026949775

`A362277(A052905(n+1)+1)`
-/

namespace A362278.P633203598026949775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362277 (A052905 (n + 1) + 1).toNat

end

end A362278.P633203598026949775

namespace A362278

/-- `A362277(A052905(n+1)+1)` -/
def P633203598026949775.Spec : Prop :=
  ∀ n, P633203598026949775.a n = A362278 n

end A362278

/-! ## A362278.P9764663945350893631

`A362277(A055999(n+1)+2)`
-/

namespace A362278.P9764663945350893631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362277 (A055999 (n + 1) + 2).toNat

end

end A362278.P9764663945350893631

namespace A362278

/-- `A362277(A055999(n+1)+2)` -/
def P9764663945350893631.Spec : Prop :=
  ∀ n, P9764663945350893631.a n = A362278 n

end A362278

/-! ## A362278.P6132302859265500204

`A362277(Δ[A006503(n+1)]-1)`
-/

namespace A362278.P6132302859265500204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362277 (f1 (n + 1) - f1 n - 1).toNat

end

end A362278.P6132302859265500204

namespace A362278

/-- `A362277(Δ[A006503(n+1)]-1)` -/
def P6132302859265500204.Spec : Prop :=
  ∀ n, P6132302859265500204.a n = A362278 n

end A362278

/-! ## A362278.P9143444060956991296

`A362277(A155212(floor(acot(n)+n))+4)`
-/

namespace A362278.P9143444060956991296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362277 (A155212 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat + 4).toNat

end

end A362278.P9143444060956991296

namespace A362278

/-- `A362277(A155212(floor(acot(n)+n))+4)` -/
def P9143444060956991296.Spec : Prop :=
  ∀ n, P9143444060956991296.a n = A362278 n

end A362278

/-! ## A362278.P2700006940730221928

`A362277(A000217(n+1)+3*n+5)`
-/

namespace A362278.P2700006940730221928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362277 (A000217 (n + 1) + (3 * n + 5 : ℤ)).toNat

end

end A362278.P2700006940730221928

namespace A362278

/-- `A362277(A000217(n+1)+3*n+5)` -/
def P2700006940730221928.Spec : Prop :=
  ∀ n, P2700006940730221928.a n = A362278 n

end A362278

/-!
# A362279: Expansion of e.g.f. exp(x - 5*x^2/2).

The programs for A362279, the canonical program `A362279.P5301568007067276748` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362279 has offset 0).

The definition of A362279 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362279.P5301568007067276748

`a(n-1)-5*(n-1)*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A362279

/-- `a(n-1)-5*(n-1)*a(n-2)` -/
def P5301568007067276748.Spec : Prop :=
  ∀ n, P5301568007067276748.a n = A362279 n

theorem P5301568007067276748.correct : P5301568007067276748.Spec := by
  intro n
  simp only [A362279]

end A362279

/-! ## A362279.P2707034635456212270

`A362277(A055999(n+3))`
-/

namespace A362279.P2707034635456212270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362277 (A055999 (n + 3)).toNat

end

end A362279.P2707034635456212270

namespace A362279

/-- `A362277(A055999(n+3))` -/
def P2707034635456212270.Spec : Prop :=
  ∀ n, P2707034635456212270.a n = A362279 n

end A362279

/-! ## A362279.P6593424020528261332

`A362277(eq[5, A025581(n)])`
-/

namespace A362279.P6593424020528261332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362277 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A362279.P6593424020528261332

namespace A362279

/-- `A362277(eq[5, A025581(n)])` -/
def P6593424020528261332.Spec : Prop :=
  ∀ n, P6593424020528261332.a n = A362279 n

end A362279

/-! ## A362279.P15004182342876837442

`A362277(A000217(n+6)-6)`
-/

namespace A362279.P15004182342876837442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362277 (A000217 (n + 6) - 6).toNat

end

end A362279.P15004182342876837442

namespace A362279

/-- `A362277(A000217(n+6)-6)` -/
def P15004182342876837442.Spec : Prop :=
  ∀ n, P15004182342876837442.a n = A362279 n

end A362279

/-! ## A362279.P12946424962457397712

`A362277(eq[6, A004736(n+1)])`
-/

namespace A362279.P12946424962457397712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362277 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A362279.P12946424962457397712

namespace A362279

/-- `A362277(eq[6, A004736(n+1)])` -/
def P12946424962457397712.Spec : Prop :=
  ∀ n, P12946424962457397712.a n = A362279 n

end A362279

/-!
# A362281: a(n) = n! * Sum_{k=0..floor(n/2)} n^k * binomial(n-k,k)/(n-k)!.

The programs for A362281, the canonical program `A362281.P1162838853747654964` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362281 has offset 0).

The definition of A362281 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362281.P1162838853747654964

`n!*∑{#}[floor(n/2), n^#*C(n-#, #)/(n-#)!]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A362281

/-- `n!*∑{#}[floor(n/2), n^#*C(n-#, #)/(n-#)!]` -/
def P1162838853747654964.Spec : Prop :=
  ∀ n, P1162838853747654964.a n = (A362281 n : ℚ)

end A362281

/-! ## A362281.P9871070282366117655

`A085392(A365193(n)+A034691(n)+1)`
-/

namespace A362281.P9871070282366117655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (A365193 n + A034691 n + 1).toNat

end

end A362281.P9871070282366117655

namespace A362281

/-- `A085392(A365193(n)+A034691(n)+1)` -/
def P9871070282366117655.Spec : Prop :=
  ∀ n, P9871070282366117655.a n = A362281 n

end A362281

/-!
# A362282: a(n) = n! * Sum_{k=0..floor(n/2)} (-n)^k * binomial(n-k,k)/(n-k)!.

The programs for A362282, the canonical program `A362282.P13585919489129666032` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362282 has offset 0).

The definition of A362282 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362282.P13585919489129666032

`n!*∑{#}[floor(n/2), (-n)^#*C(n-#, #)/(n-#)!]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A362282

/-- `n!*∑{#}[floor(n/2), (-n)^#*C(n-#, #)/(n-#)!]` -/
def P13585919489129666032.Spec : Prop :=
  ∀ n, P13585919489129666032.a n = (A362282 n : ℚ)

end A362282

/-! ## A362282.P2709122976253925419

`A362277(A062725(n))`
-/

namespace A362282.P2709122976253925419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362277 (A062725 n).toNat

end

end A362282.P2709122976253925419

namespace A362282

/-- `A362277(A062725(n))` -/
def P2709122976253925419.Spec : Prop :=
  ∀ n, P2709122976253925419.a n = A362282 n

end A362282

/-! ## A362282.P14616937452645680367

`A362277(A081266(n)+n)`
-/

namespace A362282.P14616937452645680367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362277 (A081266 n + (n : ℤ)).toNat

end

end A362282.P14616937452645680367

namespace A362282

/-- `A362277(A081266(n)+n)` -/
def P14616937452645680367.Spec : Prop :=
  ∀ n, P14616937452645680367.a n = A362282 n

end A362282

/-! ## A362282.P14679093552678264299

`A362277(A000217(3*n)+n)`
-/

namespace A362282.P14679093552678264299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362277 (A000217 (3 * n) + (n : ℤ)).toNat

end

end A362282.P14679093552678264299

namespace A362282

/-- `A362277(A000217(3*n)+n)` -/
def P14679093552678264299.Spec : Prop :=
  ∀ n, P14679093552678264299.a n = A362282 n

end A362282

/-! ## A362282.P12721879188733055793

`A362277(A060544(n+1)-Δ[n²])`
-/

namespace A362282.P12721879188733055793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362277 (A060544 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A362282.P12721879188733055793

namespace A362282

/-- `A362277(A060544(n+1)-Δ[n²])` -/
def P12721879188733055793.Spec : Prop :=
  ∀ n, P12721879188733055793.a n = A362282 n

end A362282

/-!
# A362283: Expansion of e.g.f. exp( sqrt(-LambertW(-x^2)) ).

The programs for A362283, there is no canonical definition to state claims against.
-/

/-! ## A362283.P5988863353522098480

`A064989(A255072(2*∏[a(n-1)+2]))` with `a(0)=4, a(1)=1, a(2)=1`
-/

namespace A362283.P5988863353522098480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 1, 1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A255072 (2 * (∏ j ∈ Finset.range (n + 1), f1 j))).toNat

end

end A362283.P5988863353522098480

/-! ## A362283.P15390076166197530303

`A359762(2*n²)`
-/

namespace A362283.P15390076166197530303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359762 (2 * n ^ 2)

end

end A362283.P15390076166197530303

/-!
# A362285: Indices of records of A138705.

The programs for A362285, there is no canonical definition to state claims against.
-/

/-! ## A362285.P9396065387338131224

`A362284(A362286(n+1))`
-/

namespace A362285.P9396065387338131224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362284 (A362286 (n + 1)).toNat

end

end A362285.P9396065387338131224

/-! ## A362285.P9031715513193156062

`A362284(record[A138705(n)])`
-/

namespace A362285.P9031715513193156062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362284 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A362285.P9031715513193156062

/-!
# A362286: Record values in A138705.

The programs for A362286, there is no canonical definition to state claims against.
-/

/-! ## A362286.P5350828436964925267

`A138705(A362285(n+1))`
-/

namespace A362286.P5350828436964925267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138705 (A362285 (n + 1)).toNat

end

end A362286.P5350828436964925267

/-! ## A362286.P11052837156902044708

`record[A138702(n)]`
-/

namespace A362286.P11052837156902044708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138702 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A362286.P11052837156902044708

/-! ## A362286.P621816252888822596

`record[A138705(n)]`
-/

namespace A362286.P621816252888822596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A362286.P621816252888822596

/-! ## A362286.P6608043477961925488

`A138702(2*A362285(n+1))`
-/

namespace A362286.P6608043477961925488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138702 (2 * A362285 (n + 1)).toNat

end

end A362286.P6608043477961925488

/-! ## A362286.P4284255778024843496

`A186970(A000799(n+1))+n`
-/

namespace A362286.P4284255778024843496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186970 (A000799 (n + 1)).toNat + (n : ℤ)

end

end A362286.P4284255778024843496

/-!
# A362287: Hypertotient numbers: numbers k such that the set that includes k and the numbers less than k and relatively prime to k can be partitioned into two disjoint subsets of equal sum.

The programs for A362287, there is no canonical definition to state claims against.
-/

/-! ## A362287.P6771983684285930640

`lt[A074761(3*n+5), A273108(A195162(3*n+1))]`
-/

namespace A362287.P6771983684285930640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074761 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273108 (A195162 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A362287.P6771983684285930640

/-! ## A362287.P3854750785677065923

`eq[char[A033839(n+1)], A350251(3*n+5)]`
-/

namespace A362287.P3854750785677065923
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033839 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350251 (3 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A362287.P3854750785677065923

/-! ## A362287.P11210632020569688082

`lt[A046920(A170806(n+1)), A234337(n+1)]`
-/

namespace A362287.P11210632020569688082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046920 (A170806 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234337 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A362287.P11210632020569688082

/-! ## A362287.P11876807079954185707

`eq[A144112(A082796(n+1)), A303837(3*n+4)]`
-/

namespace A362287.P11876807079954185707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144112 (A082796 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303837 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A362287.P11876807079954185707

/-! ## A362287.P13926700717019301936

`lt[A174715(A330235(3*n+5)), A369320(n+2)]`
-/

namespace A362287.P13926700717019301936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174715 (A330235 (3 * n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369320 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A362287.P13926700717019301936

/-!
# A362288: a(n) = Product_{k=0..n} binomial(n,k)^k.

The programs for A362288, there is no canonical definition to state claims against.
-/

/-! ## A362288.P12680334082987917739

`sqrt(A001142(n))^n`
-/

namespace A362288.P12680334082987917739
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001142 n : ℝ) ^ n

end

end A362288.P12680334082987917739

/-! ## A362288.P2959343912690860270

`A001142(n)^(A215014(n+1)/2)`
-/

namespace A362288.P2959343912690860270
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A001142 n : ℝ) ^ ((A215014 (n + 1) : ℚ) / 2 : ℝ)

end

end A362288.P2959343912690860270

/-! ## A362288.P5366835212803202583

`A001142(n)^(A233583(n+1)/2)`
-/

namespace A362288.P5366835212803202583
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A001142 n : ℝ) ^ ((A233583 (n + 1) : ℚ) / 2 : ℝ)

end

end A362288.P5366835212803202583

/-! ## A362288.P13245435065622125824

`A001142(A000007(n)+n)^(n/2)`
-/

namespace A362288.P13245435065622125824
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A001142 (A000007 n + (n : ℤ)).toNat : ℝ) ^ ((n : ℚ) / 2 : ℝ)

end

end A362288.P13245435065622125824

/-!
# A362290: a(n) is the number of parts into which the inner region of the parabola y = x^2 is divided by n squares inscribed in the parabola as described in the comments.

The programs for A362290, there is no canonical definition to state claims against.
-/

/-! ## A362290.P550491731332686937

`A384063(Δ[n²])+3`
-/

namespace A362290.P550491731332686937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384063 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 3

end

end A362290.P550491731332686937

/-! ## A362290.P8719231914317331423

`∑[A161205(4*n+1)]+3`
-/

namespace A362290.P8719231914317331423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161205 (4 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A362290.P8719231914317331423

/-! ## A362290.P16399617471679264181

`A000194(∑[∑[A103966(2*n+3)]])`
-/

namespace A362290.P16399617471679264181
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103966 (2 * n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A362290.P16399617471679264181

/-! ## A362290.P12113761408669624993

`∑[A000523(A111380(n+2))]`
-/

namespace A362290.P12113761408669624993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A111380 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362290.P12113761408669624993

/-! ## A362290.P6451977342665049205

`A378283(A220977(n+3))+∑[n+3]`
-/

namespace A362290.P6451977342665049205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378283 (A220977 (n + 3)).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A362290.P6451977342665049205

/-!
# A362292: a(n) = (n+1/3)^n * (3*n)!/n!.

The programs for A362292, the canonical program `A362292.P6578854987025891009` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362292 has offset 0).

The definition of A362292 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362292.P6578854987025891009

`(n+1/3)^n*(3*n)!/n!`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A362292

/-- `(n+1/3)^n*(3*n)!/n!` -/
def P6578854987025891009.Spec : Prop :=
  ∀ n, P6578854987025891009.a n = (A362292 n : ℚ)

end A362292

/-!
# A362293: Expansion of e.g.f. exp( (-LambertW(-x^3))^(1/3) ).

The programs for A362293, there is no canonical definition to state claims against.
-/

/-! ## A362293.P5030627837518677360

`A008620(A279222(n)*A354553(n))`
-/

namespace A362293.P5030627837518677360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A279222 n * A354553 n).toNat

end

end A362293.P5030627837518677360

/-! ## A362293.P17193902447013548074

`A008620(A185329(2*(n+2))*A354553(n))`
-/

namespace A362293.P17193902447013548074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A185329 (2 * (n + 2)) * A354553 n).toNat

end

end A362293.P17193902447013548074

/-!
# A362295: Sums of two Fibonacci numbers that are also sums of two squares.

The programs for A362295, there is no canonical definition to state claims against.
-/

/-! ## A362295.P17246869494673201099

`filter[A084176(n+1), A229062(#)]`
-/

namespace A362295.P17246869494673201099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A362295.P17246869494673201099

/-! ## A362295.P15863949926995564483

`∩[A001481(n+1), A084176(n+1)]`
-/

namespace A362295.P15863949926995564483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A362295.P15863949926995564483

/-! ## A362295.P10283814406748979945

`∩[A001481(n+1), lt[n-A219641(n), 3]]`
-/

namespace A362295.P10283814406748979945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A219641 n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A362295.P10283814406748979945

/-! ## A362295.P12746861266708618383

`eq[A036857(n+1), A375202(n)]`
-/

namespace A362295.P12746861266708618383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036857 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375202 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A362295.P12746861266708618383

/-!
# A362296: Greatest common divisor of composite numbers between the n-th and (n+1)st primes.

The programs for A362296, the canonical program `A362296.P9810890298712702943` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362296 has offset 2).

The definition of A362296 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9600 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A362296.P9810890298712702943

`A000010(gcd(p?[2*n+1]+2, p?[2*n+5]))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A362296

/-- `A000010(gcd(p?[2*n+1]+2, p?[2*n+5]))` -/
def P9810890298712702943.Spec : Prop :=
  ∀ n, P9810890298712702943.a n = A362296 (n + 2)

theorem P9810890298712702943.correct : P9810890298712702943.Spec := by
  intro n
  simp only [A362296, Nat.add_sub_cancel]

end A362296

/-! ## A362296.P2421984966705693410

`A004275(A049563(n+2))`
-/

namespace A362296.P2421984966705693410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A049563 (n + 2)).toNat

end

end A362296.P2421984966705693410

namespace A362296

/-- `A004275(A049563(n+2))` -/
def P2421984966705693410.Spec : Prop :=
  ∀ n, P2421984966705693410.a n = A362296 (n + 2)

end A362296

/-! ## A362296.P5478954511420761010

`A085090(A005097(n+2))+1`
-/

namespace A362296.P5478954511420761010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085090 (A005097 (n + 2)).toNat + 1

end

end A362296.P5478954511420761010

namespace A362296

/-- `A085090(A005097(n+2))+1` -/
def P5478954511420761010.Spec : Prop :=
  ∀ n, P5478954511420761010.a n = A362296 (n + 2)

end A362296

/-! ## A362296.P4289711466860734484

`A069230(p?[2*n+1])²*p?[2*n+1]+1`
-/

namespace A362296.P4289711466860734484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069230 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) ^ 2 * (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) + 1

end

end A362296.P4289711466860734484

namespace A362296

/-- `A069230(p?[2*n+1])²*p?[2*n+1]+1` -/
def P4289711466860734484.Spec : Prop :=
  ∀ n, P4289711466860734484.a n = A362296 (n + 2)

end A362296

/-! ## A362296.P10218892092095521296

`A000010(A110560(p?[2*n+1]))`
-/

namespace A362296.P10218892092095521296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A110560 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))).toNat

end

end A362296.P10218892092095521296

namespace A362296

/-- `A000010(A110560(p?[2*n+1]))` -/
def P10218892092095521296.Spec : Prop :=
  ∀ n, P10218892092095521296.a n = A362296 (n + 2)

end A362296

/-! ## A362296.P17196108695541140476

`∑{d}[2-A110560(p?[A014681(n+2)]), #]`
-/

namespace A362296.P17196108695541140476
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A110560 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A362296.P17196108695541140476

namespace A362296

/-- `∑{d}[2-A110560(p?[A014681(n+2)]), #]` -/
def P17196108695541140476.Spec : Prop :=
  ∀ n, (P17196108695541140476.a n : ℤ) = A362296 (n + 2)

end A362296

/-! ## A362296.P10711590618364125288

`A000010(A110560(A000040(n+2)))`
-/

namespace A362296.P10711590618364125288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A110560 (A000040 (n + 2)).toNat).toNat

end

end A362296.P10711590618364125288

namespace A362296

/-- `A000010(A110560(A000040(n+2)))` -/
def P10711590618364125288.Spec : Prop :=
  ∀ n, P10711590618364125288.a n = A362296 (n + 2)

end A362296

/-!
# A362298: Number of tilings of a 4 X n rectangle using dominos and 2 X 2 right triangles.

The programs for A362298, the canonical program `A362298.P3151941356230802295` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362298 has offset 0).

The definition of A362298 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362298.P3151941356230802295

`ogf((1-3x-3x^2+9x^3)/(1-4x-18x^2+48x^3+42x^4-99x^5))`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A362298

/-- `ogf((1-3x-3x^2+9x^3)/(1-4x-18x^2+48x^3+42x^4-99x^5))` -/
def P3151941356230802295.Spec : Prop :=
  ∀ n, P3151941356230802295.a n = A362298 n

theorem P3151941356230802295.correct : P3151941356230802295.Spec := by
  intro n
  simp only [A362298]

end A362298

/-! ## A362298.P11523486706112497494

`A362297(∑[n+3])`
-/

namespace A362298.P11523486706112497494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362297 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A362298.P11523486706112497494

namespace A362298

/-- `A362297(∑[n+3])` -/
def P11523486706112497494.Spec : Prop :=
  ∀ n, P11523486706112497494.a n = A362298 n

end A362298

/-! ## A362298.P9562426152412237175

`A362297(A141214(n))%A103545(n+2)`
-/

namespace A362298.P9562426152412237175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A362297 (A141214 n).toNat) (A103545 (n + 2))

end

end A362298.P9562426152412237175

namespace A362298

/-- `A362297(A141214(n))%A103545(n+2)` -/
def P9562426152412237175.Spec : Prop :=
  ∀ n, P9562426152412237175.a n = A362298 n

end A362298

/-! ## A362298.P18082092846445233535

`or(A294930(3*n+2), A362297(A141214(n)))`
-/

namespace A362298.P18082092846445233535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A294930 (3 * n + 2)) (A362297 (A141214 n).toNat)

end

end A362298.P18082092846445233535

namespace A362298

/-- `or(A294930(3*n+2), A362297(A141214(n)))` -/
def P18082092846445233535.Spec : Prop :=
  ∀ n, P18082092846445233535.a n = A362298 n

end A362298

/-!
# A362299: Number of tilings of a 3 X 2n rectangle using dominos and 2 X 2 right triangles.

The programs for A362299, the canonical program `A362299.P17041410543628596060` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362299 has offset 0).

The definition of A362299 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362299.P1985598209455366046

`ogf((1-3x)/(1-10x+15x^2))`
-/

namespace A362299.P1985598209455366046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3] [1, -10, 15] n

end

end A362299.P1985598209455366046

namespace A362299

/-- `ogf((1-3x)/(1-10x+15x^2))` -/
def P1985598209455366046.Spec : Prop :=
  ∀ n, P1985598209455366046.a n = A362299 n

end A362299

/-! ## A362299.P17041410543628596060

`10*a(n-1)-15*a(n-2)` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A362299

/-- `10*a(n-1)-15*a(n-2)` -/
def P17041410543628596060.Spec : Prop :=
  ∀ n, P17041410543628596060.a n = A362299 n

theorem P17041410543628596060.correct : P17041410543628596060.Spec := by
  intro n
  simp only [A362299]

end A362299

/-! ## A362299.P11971730216359506430

`A084135(n+1)/5`
-/

namespace A362299.P11971730216359506430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084135 (n + 1) : ℚ) / 5

end

end A362299.P11971730216359506430

namespace A362299

/-- `A084135(n+1)/5` -/
def P11971730216359506430.Spec : Prop :=
  ∀ n, P11971730216359506430.a n = (A362299 n : ℚ)

end A362299

/-! ## A362299.P11467261510409720507

`A362297(A167614(n+2))`
-/

namespace A362299.P11467261510409720507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362297 (A167614 (n + 2)).toNat

end

end A362299.P11467261510409720507

namespace A362299

/-- `A362297(A167614(n+2))` -/
def P11467261510409720507.Spec : Prop :=
  ∀ n, P11467261510409720507.a n = A362299 n

end A362299

/-! ## A362299.P14235361145716193786

`A362297(A055999(n)+9)`
-/

namespace A362299.P14235361145716193786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362297 (A055999 n + 9).toNat

end

end A362299.P14235361145716193786

namespace A362299

/-- `A362297(A055999(n)+9)` -/
def P14235361145716193786.Spec : Prop :=
  ∀ n, P14235361145716193786.a n = A362299 n

end A362299

