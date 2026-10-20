import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C002
import Seq.B008.C001
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
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C023
import Seq.Opaque.C024

/-!
# A119000: Minimal determinant of real n X n symmetric (+1,-1) matrices.

The programs for A119000, there is no canonical definition to state claims against.
-/

/-! ## A119000.P6271414068728802158

`A001478(A034917(n+1))`
-/

namespace A119000.P6271414068728802158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (A034917 (n + 1)).toNat

end

end A119000.P6271414068728802158

/-! ## A119000.P10909777607704017353

`A124762(round(2^(n-1)))-A034917(n+1)`
-/

namespace A119000.P10909777607704017353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124762 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat - A034917 (n + 1)

end

end A119000.P10909777607704017353

/-! ## A119000.P16133349006695337064

`A000007(A226875(n))-A034917(n+1)`
-/

namespace A119000.P16133349006695337064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A226875 n).toNat - A034917 (n + 1)

end

end A119000.P16133349006695337064

/-! ## A119000.P4112784880268902004

`A001678(A290663(n))-A034917(n+1)`
-/

namespace A119000.P4112784880268902004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001678 (A290663 n).toNat - A034917 (n + 1)

end

end A119000.P4112784880268902004

/-!
# A119001: Minimal permanent of real n X n symmetric (+1,-1) matrices.

The programs for A119001, there is no canonical definition to state claims against.
-/

/-! ## A119001.P10985103217522498728

`n-A076314(A007556(n))`
-/

namespace A119001.P10985103217522498728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A076314 (A007556 n).toNat

end

end A119001.P10985103217522498728

/-!
# A119002: Maximal determinant of real n X n symmetric (0,1) matrices.

The programs for A119002, there is no canonical definition to state claims against.
-/

/-! ## A119002.P6265633059521912192

`A003432(n)-A243830(2*n)`
-/

namespace A119002.P6265633059521912192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003432 n - A243830 (2 * n)

end

end A119002.P6265633059521912192

/-! ## A119002.P11569648775341334837

`A003432(n)-A132759(A026800(n))`
-/

namespace A119002.P11569648775341334837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003432 n - A132759 (A026800 n).toNat

end

end A119002.P11569648775341334837

/-! ## A119002.P11003381511734370646

`A003432(n)-A231080(A001316(n))`
-/

namespace A119002.P11003381511734370646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003432 n - A231080 (A001316 n).toNat

end

end A119002.P11003381511734370646

/-! ## A119002.P15453565217931244408

`A003432(n)-A243055(A249388(n))`
-/

namespace A119002.P15453565217931244408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003432 n - A243055 (A249388 n).toNat

end

end A119002.P15453565217931244408

/-! ## A119002.P14818932327279687040

`A003432(n)-A357625(A219347(n))`
-/

namespace A119002.P14818932327279687040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003432 n - A357625 (A219347 n).toNat

end

end A119002.P14818932327279687040

/-!
# A119003: Maximal determinant of real n X n symmetric (+1,-1) matrices.

The programs for A119003, there is no canonical definition to state claims against.
-/

/-! ## A119003.P15111483391286599186

`A004443(or(2, A003433(n+1)))`
-/

namespace A119003.P15111483391286599186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004443 (Int.lor 2 (A003433 (n + 1))).toNat

end

end A119003.P15111483391286599186

/-! ## A119003.P16756612022362604837

`A003433(n+1)%A001105(A000110(n))`
-/

namespace A119003.P16756612022362604837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003433 (n + 1)) (A001105 (A000110 n).toNat)

end

end A119003.P16756612022362604837

/-! ## A119003.P5979711116534377365

`A003433(n+1)*A359550(A108919(n+1))`
-/

namespace A119003.P5979711116534377365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003433 (n + 1) * A359550 (A108919 (n + 1)).toNat

end

end A119003.P5979711116534377365

/-! ## A119003.P8014183659788944269

`A003433(n+1)*A008966(A102288(2*(n+2)))`
-/

namespace A119003.P8014183659788944269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003433 (n + 1) * A008966 (A102288 (2 * (n + 2))).toNat

end

end A119003.P8014183659788944269

/-!
# A119004: Number of n X n real symmetric (0,1)-matrices having maximal determinant (=A119002(n)).

The programs for A119004, there is no canonical definition to state claims against.
-/

/-! ## A119004.P11693574806893727988

`A128718(A123467(n+1))`
-/

namespace A119004.P11693574806893727988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128718 (A123467 (n + 1)).toNat

end

end A119004.P11693574806893727988

/-! ## A119004.P1392476113483235117

`A128718(A000081(n+2))`
-/

namespace A119004.P1392476113483235117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128718 (A000081 (n + 2)).toNat

end

end A119004.P1392476113483235117

/-!
# A119005: Number of n X n real symmetric (+1,-1)-matrices having maximal determinant (=A119003(n)).

The programs for A119005, there is no canonical definition to state claims against.
-/

/-! ## A119005.P6614864736055251492

`A384056(A007680(n)*A322788(n+1))`
-/

namespace A119005.P6614864736055251492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384056 (A007680 n * A322788 (n + 1)).toNat

end

end A119005.P6614864736055251492

/-! ## A119005.P11920577468425234500

`A018642(A220219(n+1))*A318151(n+1)`
-/

namespace A119005.P11920577468425234500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018642 (A220219 (n + 1)).toNat * A318151 (n + 1)

end

end A119005.P11920577468425234500

/-!
# A119006: Number of n X n real symmetric (0,1)-matrices having minimal determinant (=A118998(n)).

The programs for A119006, there is no canonical definition to state claims against.
-/

/-! ## A119006.P5091055558821673105

`A000203(A288568(n)+A062111(n))`
-/

namespace A119006.P5091055558821673105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A288568 n + A062111 n).toNat

end

end A119006.P5091055558821673105

/-! ## A119006.P6143613243638516546

`gcd(A073982(n+1), A273323(A286866(n)))`
-/

namespace A119006.P6143613243638516546
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A073982 (n + 1)) (A273323 (A286866 n).toNat)

end

end A119006.P6143613243638516546

/-!
# A119007: Number of n X n real symmetric (+1,-1)-matrices having minimal determinant (=A119000(n)).

The programs for A119007, there is no canonical definition to state claims against.
-/

/-! ## A119007.P14143926542665040901

`A067824((n!+n)²)`
-/

namespace A119007.P14143926542665040901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067824 ((Nat.factorial n + n) ^ 2)

end

end A119007.P14143926542665040901

/-!
# A119008: Number of n X n real symmetric (0,1)-matrices with determinant = 1.

The programs for A119008, there is no canonical definition to state claims against.
-/

/-! ## A119008.P8300468533708902554

`A069535(A000178(n))*A108530(n)`
-/

namespace A119008.P8300468533708902554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069535 (A000178 n).toNat * A108530 n

end

end A119008.P8300468533708902554

/-!
# A119009: Number of n X n real symmetric (0,1)-matrices with permanent = 1.

The programs for A119009, there is no canonical definition to state claims against.
-/

/-! ## A119009.P13930562225314030180

`A031297(A365997(n+1))+n²`
-/

namespace A119009.P13930562225314030180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031297 (A365997 (n + 1)).toNat + (n ^ 2 : ℤ)

end

end A119009.P13930562225314030180

/-!
# A119010: Number of symmetric n X n (+1,-1)-matrices over the reals with zero permanent.

The programs for A119010, there is no canonical definition to state claims against.
-/

/-! ## A119010.P7435165592585045207

`and(A026301(n), A217319(A000058(n)))`
-/

namespace A119010.P7435165592585045207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A026301 n) (A217319 (A000058 n).toNat)

end

end A119010.P7435165592585045207

/-!
# A119011: Triangle read by rows: T(n,k) is the number of hill-free Dyck paths of semilength n and having k valleys strictly above the x-axis (0<=k<=n-2; n>=2). A hill in a Dyck path is a peak at level 1.

The programs for A119011, there is no canonical definition to state claims against.
-/

/-! ## A119011.P1990094215430739719

`A380573(A209419(n+1))`
-/

namespace A119011.P1990094215430739719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380573 (A209419 (n + 1)).toNat

end

end A119011.P1990094215430739719

/-! ## A119011.P17409487971885944126

`A003056(A194640(A209419(n+1)²))`
-/

namespace A119011.P17409487971885944126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A194640 (A209419 (n + 1) ^ 2).toNat).toNat

end

end A119011.P17409487971885944126

/-! ## A119011.P12237333589487297583

`A209419(n+1)+A018843(A209583(n+1))`
-/

namespace A119011.P12237333589487297583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209419 (n + 1) + A018843 (A209583 (n + 1)).toNat

end

end A119011.P12237333589487297583

/-! ## A119011.P12135765201255081209

`A202390(A061579(n))+A018843(A209583(n+1))`
-/

namespace A119011.P12135765201255081209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202390 (A061579 n).toNat + A018843 (A209583 (n + 1)).toNat

end

end A119011.P12135765201255081209

/-! ## A119011.P4030364113748239087

`A209419(n+1)+A025466(A185234(n))`
-/

namespace A119011.P4030364113748239087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209419 (n + 1) + A025466 (A185234 n).toNat

end

end A119011.P4030364113748239087

/-!
# A119012: Number of valleys strictly above the x-axis in all hill-free Dyck paths of semilength n (a hill in a Dyck path is a peak at level 1).

The programs for A119012, the canonical program `A119012.P17349838365231914682` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119012 has offset 1).

The definition of A119012 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119012.P10990315496507784456

`A116914(n+2)-A389115(n)`
-/

namespace A119012.P10990315496507784456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116914 (n + 2) - A389115 n

end

end A119012.P10990315496507784456

namespace A119012

/-- `A116914(n+2)-A389115(n)` -/
def P10990315496507784456.Spec : Prop :=
  ∀ n, P10990315496507784456.a n = A119012 (n + 1)

end A119012

/-! ## A119012.P17349838365231914682

`A114515(n+1)-A114495(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A119012

/-- `A114515(n+1)-A114495(n+1)` -/
def P17349838365231914682.Spec : Prop :=
  ∀ n, P17349838365231914682.a n = A119012 (n + 1)

theorem P17349838365231914682.correct : P17349838365231914682.Spec := by
  intro n
  simp only [A119012, Nat.add_sub_cancel]

end A119012

/-! ## A119012.P6458248923987307815

`∑[A014301(n+1)-A114495(n+1)]`
-/

namespace A119012.P6458248923987307815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014301 (n + 1) - A114495 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119012.P6458248923987307815

namespace A119012

/-- `∑[A014301(n+1)-A114495(n+1)]` -/
def P6458248923987307815.Spec : Prop :=
  ∀ n, P6458248923987307815.a n = A119012 (n + 1)

end A119012

/-! ## A119012.P14020801061669688532

`Δ[A114515(n+1)]-A114590(n)`
-/

namespace A119012.P14020801061669688532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A114590 n

end

end A119012.P14020801061669688532

namespace A119012

/-- `Δ[A114515(n+1)]-A114590(n)` -/
def P14020801061669688532.Spec : Prop :=
  ∀ n, P14020801061669688532.a n = A119012 (n + 1)

end A119012

/-! ## A119012.P3935556391541770091

`A114515(n+2)%A014301(n+2)`
-/

namespace A119012.P3935556391541770091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A114515 (n + 2)) (A014301 (n + 2))

end

end A119012.P3935556391541770091

namespace A119012

/-- `A114515(n+2)%A014301(n+2)` -/
def P3935556391541770091.Spec : Prop :=
  ∀ n, P3935556391541770091.a n = A119012 (n + 1)

end A119012

/-! ## A119012.P16283503069856241164

`A114590(n+1)+A114590(n)-A001700(n+1)`
-/

namespace A119012.P16283503069856241164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114590 (n + 1) + (A114590 n - A001700 (n + 1))

end

end A119012.P16283503069856241164

namespace A119012

/-- `A114590(n+1)+A114590(n)-A001700(n+1)` -/
def P16283503069856241164.Spec : Prop :=
  ∀ n, P16283503069856241164.a n = A119012 (n + 1)

end A119012

/-!
# A119013: Eigenvector of triangle A118588; E.g.f. satisfies: A(x) = exp(x)*A(x^2+x^3).

The programs for A119013, there is no canonical definition to state claims against.
-/

/-! ## A119013.P15353533708668693239

`A028310(A052770(n)+A000262(n))`
-/

namespace A119013.P15353533708668693239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A052770 n + A000262 n).toNat

end

end A119013.P15353533708668693239

/-! ## A119013.P1428245288034029618

`A052770(n)+A028310(A193932(n))`
-/

namespace A119013.P1428245288034029618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052770 n + A028310 (A193932 n).toNat

end

end A119013.P1428245288034029618

/-! ## A119013.P10430753087499876223

`A004277(A000262(n))-A193930(n)`
-/

namespace A119013.P10430753087499876223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A000262 n).toNat - A193930 n

end

end A119013.P10430753087499876223

/-!
# A119014: Numerators of "Farey fraction" approximations to e.

The programs for A119014, there is no canonical definition to state claims against.
-/

/-! ## A119014.P12430390781724605430

`A307707(A040081(2*n+1)+A001654(n))`
-/

namespace A119014.P12430390781724605430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307707 (A040081 (2 * n + 1) + A001654 n).toNat

end

end A119014.P12430390781724605430

/-!
# A119015: Denominators of "Farey fraction" approximations to e.

The programs for A119015, there is no canonical definition to state claims against.
-/

/-! ## A119015.P86056704897321668

`∑{e}[A090129(n+1), A006259(#)]`
-/

namespace A119015.P86056704897321668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A006259 (Nat.factorization (f1 n).natAbs p)

end

end A119015.P86056704897321668

/-!
# A119016: Numerators of "Farey fraction" approximations to sqrt(2).

The programs for A119016, the canonical program `A119016.P13460822893404206293` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119016 has offset 0).

The definition of A119016 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 525 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119016.P1320719277521536636

`ogf((1-x^2+2x^3)/(1-2x^2-x^4))`
-/

namespace A119016.P1320719277521536636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1, 2] [1, 0, -2, 0, -1] n

end

end A119016.P1320719277521536636

namespace A119016

/-- `ogf((1-x^2+2x^3)/(1-2x^2-x^4))` -/
def P1320719277521536636.Spec : Prop :=
  ∀ n, P1320719277521536636.a n = A119016 n

end A119016

/-! ## A119016.P13460822893404206293

`a(n-4)+2*a(n-2)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=2`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A119016

/-- `a(n-4)+2*a(n-2)` -/
def P13460822893404206293.Spec : Prop :=
  ∀ n, (P13460822893404206293.a n : ℤ) = A119016 n

theorem P13460822893404206293.correct : P13460822893404206293.Spec := by
  intro n
  simp only [A119016]

end A119016

/-! ## A119016.P7801960964245005423

`a(n-1)+a(n-(n%2+2))` with `a(0)=1, a(1)=0`
-/

namespace A119016.P7801960964245005423
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 1) + a (n - (n % 2 + 2))

end

end A119016.P7801960964245005423

namespace A119016

/-- `a(n-1)+a(n-(n%2+2))` -/
def P7801960964245005423.Spec : Prop :=
  ∀ n, (P7801960964245005423.a n : ℤ) = A119016 n

end A119016

/-! ## A119016.P5035932210296422329

`a(n-2)+a(n-2)+a(n-4)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=2`
-/

namespace A119016.P5035932210296422329
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 2] fun n a =>
  a (n - 2) + (a (n - 2) + a (n - 4))

end

end A119016.P5035932210296422329

namespace A119016

/-- `a(n-2)+a(n-2)+a(n-4)` -/
def P5035932210296422329.Spec : Prop :=
  ∀ n, (P5035932210296422329.a n : ℤ) = A119016 n

end A119016

/-! ## A119016.P17057251148123944159

`A249576(comp[3*n])`
-/

namespace A119016.P17057251148123944159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249576 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A119016.P17057251148123944159

namespace A119016

/-- `A249576(comp[3*n])` -/
def P17057251148123944159.Spec : Prop :=
  ∀ n, P17057251148123944159.a n = A119016 n

end A119016

/-! ## A119016.P4379134619763205000

`A227972(A047237(n+2))`
-/

namespace A119016.P4379134619763205000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227972 (A047237 (n + 2)).toNat

end

end A119016.P4379134619763205000

namespace A119016

/-- `A227972(A047237(n+2))` -/
def P4379134619763205000.Spec : Prop :=
  ∀ n, P4379134619763205000.a n = A119016 n

end A119016

/-! ## A119016.P7888581491385088754

`A227972(A047269(n+2))`
-/

namespace A119016.P7888581491385088754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227972 (A047269 (n + 2)).toNat

end

end A119016.P7888581491385088754

namespace A119016

/-- `A227972(A047269(n+2))` -/
def P7888581491385088754.Spec : Prop :=
  ∀ n, P7888581491385088754.a n = A119016 n

end A119016

/-! ## A119016.P18220382126058720074

`A002965(n+2)-A002965(n)`
-/

namespace A119016.P18220382126058720074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (n + 2) - A002965 n

end

end A119016.P18220382126058720074

namespace A119016

/-- `A002965(n+2)-A002965(n)` -/
def P18220382126058720074.Spec : Prop :=
  ∀ n, P18220382126058720074.a n = A119016 n

end A119016

/-! ## A119016.P6416225049445278623

`Δ[A002965(n+1)+A002965(n)]`
-/

namespace A119016.P6416225049445278623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (n + 1) + A002965 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A119016.P6416225049445278623

namespace A119016

/-- `Δ[A002965(n+1)+A002965(n)]` -/
def P6416225049445278623.Spec : Prop :=
  ∀ n, P6416225049445278623.a n = A119016 n

end A119016

/-! ## A119016.P7491422322728416068

`A143607(n+2)-2*A082766(n+2)`
-/

namespace A119016.P7491422322728416068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143607 (n + 2) - 2 * A082766 (n + 2)

end

end A119016.P7491422322728416068

namespace A119016

/-- `A143607(n+2)-2*A082766(n+2)` -/
def P7491422322728416068.Spec : Prop :=
  ∀ n, P7491422322728416068.a n = A119016 n

end A119016

/-! ## A119016.P7257684393021333827

`A228405(A165157(n+1))`
-/

namespace A119016.P7257684393021333827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228405 (A165157 (n + 1)).toNat

end

end A119016.P7257684393021333827

namespace A119016

/-- `A228405(A165157(n+1))` -/
def P7257684393021333827.Spec : Prop :=
  ∀ n, P7257684393021333827.a n = A119016 n

end A119016

/-! ## A119016.P15824453261209250405

`A228405(∑[∑[A001057(n)]+1])`
-/

namespace A119016.P15824453261209250405
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228405 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A119016.P15824453261209250405

namespace A119016

/-- `A228405(∑[∑[A001057(n)]+1])` -/
def P15824453261209250405.Spec : Prop :=
  ∀ n, P15824453261209250405.a n = A119016 n

end A119016

/-!
# A119020: Eigenvector of triangle A055151 of Motzkin polynomial coefficients, where A055151(n,k) = n!/((n-2k)!*k!*(k+1)!) for 0<=k<=[n/2], n>=0.

The programs for A119020, there is no canonical definition to state claims against.
-/

/-! ## A119020.P5140438960533649543

`A119022(n)/A000108(n)`
-/

namespace A119020.P5140438960533649543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119022 n : ℚ) / (A000108 n : ℚ)

end

end A119020.P5140438960533649543

/-! ## A119020.P5625140425234002279

`abs(A119022(n)/A168491(n))`
-/

namespace A119020.P5625140425234002279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A119022 n : ℚ) / (A168491 n : ℚ)|

end

end A119020.P5625140425234002279

/-! ## A119020.P9812543562402246550

`A119022(n)/A126120(2*n)`
-/

namespace A119020.P9812543562402246550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119022 n : ℚ) / (A126120 (2 * n) : ℚ)

end

end A119020.P9812543562402246550

/-! ## A119020.P15334832547876946449

`A119022(n)/A208355(2*n)`
-/

namespace A119020.P15334832547876946449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119022 n : ℚ) / (A208355 (2 * n) : ℚ)

end

end A119020.P15334832547876946449

/-! ## A119020.P7725354627722134169

`A119022(n)/A089408(2*n+1)`
-/

namespace A119020.P7725354627722134169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119022 n : ℚ) / (A089408 (2 * n + 1) : ℚ)

end

end A119020.P7725354627722134169

/-!
# A119021: Binomial transform of A119020.

The programs for A119021, there is no canonical definition to state claims against.
-/

/-! ## A119021.P4563258574732667769

`A004525(A071356(n)+2^n)`
-/

namespace A119021.P4563258574732667769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A071356 n + (2 ^ n : ℤ)).toNat

end

end A119021.P4563258574732667769

/-! ## A119021.P161544706974443374

`A025480(A071356(n)+2^n)`
-/

namespace A119021.P161544706974443374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A071356 n + (2 ^ n : ℤ)).toNat

end

end A119021.P161544706974443374

/-! ## A119021.P2226099632186972123

`A123108(A071356(n)+2^n)`
-/

namespace A119021.P2226099632186972123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A071356 n + (2 ^ n : ℤ)).toNat

end

end A119021.P2226099632186972123

/-! ## A119021.P12271777374796230684

`A246277(A071356(n)+2^n)`
-/

namespace A119021.P12271777374796230684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (A071356 n + (2 ^ n : ℤ)).toNat

end

end A119021.P12271777374796230684

/-!
# A119022: Inverse binomial transform of A119020, even-indexed terms only, since all odd-indexed terms are equal to zero.

The programs for A119022, there is no canonical definition to state claims against.
-/

/-! ## A119022.P17747073353134937389

`A119020(n)*A000108(n)`
-/

namespace A119022.P17747073353134937389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119020 n * A000108 n

end

end A119022.P17747073353134937389

/-! ## A119022.P1485685726998341887

`abs(A119020(n)*A168491(n))`
-/

namespace A119022.P1485685726998341887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A119020 n * A168491 n|

end

end A119022.P1485685726998341887

/-! ## A119022.P8879231614446470399

`A119020(n)*A126120(2*n)`
-/

namespace A119022.P8879231614446470399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119020 n * A126120 (2 * n)

end

end A119022.P8879231614446470399

/-! ## A119022.P6036272707547429379

`A119020(n)*A126324(2*n)`
-/

namespace A119022.P6036272707547429379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119020 n * A126324 (2 * n)

end

end A119022.P6036272707547429379

/-! ## A119022.P7777177756795893635

`A119020(n)*A208355(2*n)`
-/

namespace A119022.P7777177756795893635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119020 n * A208355 (2 * n)

end

end A119022.P7777177756795893635

/-!
# A119024: Numbers m such that A118605(m) = 0.

The programs for A119024, there is no canonical definition to state claims against.
-/

/-! ## A119024.P13484071859725816416

`comp[A119025(n+1)]`
-/

namespace A119024.P13484071859725816416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A119024.P13484071859725816416

/-! ## A119024.P17390818682228386119

`lt[n*A118605(n), 2]`
-/

namespace A119024.P17390818682228386119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A118605 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A119024.P17390818682228386119

/-! ## A119024.P12699346619114420364

`eq[0, A118605(round(acot(n)+n))]`
-/

namespace A119024.P12699346619114420364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118605 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A119024.P12699346619114420364

/-! ## A119024.P11786731115267804336

`comp[record[(n+4)*A118605(n+4)]]`
-/

namespace A119024.P11786731115267804336
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 4 : ℤ) * A118605 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A119024.P11786731115267804336

/-! ## A119024.P17197024509822187806

`comp[lt[acot(n), A118605(n+1)]+1]`
-/

namespace A119024.P17197024509822187806
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (n : ℝ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118605 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℝ)) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A119024.P17197024509822187806

/-! ## A119024.P4921425340981603779

`eq[0, A118605(A254667(n))]`
-/

namespace A119024.P4921425340981603779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118605 (A254667 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A119024.P4921425340981603779

/-! ## A119024.P14792174631025844244

`eq[A063524(n), A118605(n)]`
-/

namespace A119024.P14792174631025844244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118605 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A119024.P14792174631025844244

/-! ## A119024.P8879904018479899963

`eq[A118605(n), A178333(n)]`
-/

namespace A119024.P8879904018479899963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118605 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178333 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A119024.P8879904018479899963

/-! ## A119024.P2279280753094365444

`eq[abs(A159075(n)), A118605(n)]`
-/

namespace A119024.P2279280753094365444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A159075 n|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118605 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A119024.P2279280753094365444

/-! ## A119024.P6123532612561761555

`eq[1, A118605(n)+A060576(n)]`
-/

namespace A119024.P6123532612561761555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118605 n + A060576 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A119024.P6123532612561761555

/-!
# A119025: Numbers m such that A118605(m) = 1.

The programs for A119025, there is no canonical definition to state claims against.
-/

/-! ## A119025.P6907235215264776269

`filter[n+2, A118605(#)]`
-/

namespace A119025.P6907235215264776269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A118605 (f1 j) = 1) n)

end

end A119025.P6907235215264776269

/-! ## A119025.P11573490857304249630

`lt[1, n*A118605(n)]`
-/

namespace A119025.P11573490857304249630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A118605 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A119025.P11573490857304249630

/-! ## A119025.P2944679431991813140

`eq[1, A118605(round(acot(n)+n))]`
-/

namespace A119025.P2944679431991813140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118605 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A119025.P2944679431991813140

/-! ## A119025.P6827636121892657468

`record[(n+4)*A118605(n+4)]`
-/

namespace A119025.P6827636121892657468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 4 : ℤ) * A118605 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119025.P6827636121892657468

/-! ## A119025.P856811378120462749

`eq[1, A118605(A254667(n))]`
-/

namespace A119025.P856811378120462749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118605 (A254667 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A119025.P856811378120462749

/-! ## A119025.P14810440980215248402

`eq[A060576(n), A118605(n)]`
-/

namespace A119025.P14810440980215248402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118605 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A119025.P14810440980215248402

/-! ## A119025.P11029457728738861810

`eq[A118605(n), A124779(n)]`
-/

namespace A119025.P11029457728738861810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118605 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124779 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A119025.P11029457728738861810

/-! ## A119025.P2061195326706470211

`eq[A118605(n), A141044(n)]`
-/

namespace A119025.P2061195326706470211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118605 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A119025.P2061195326706470211

/-! ## A119025.P13587006993933866867

`eq[A118605(n), A261143(n)]`
-/

namespace A119025.P13587006993933866867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118605 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261143 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A119025.P13587006993933866867

/-! ## A119025.P9811243473677492232

`eq[A118605(n), A373565(n)]`
-/

namespace A119025.P9811243473677492232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118605 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373565 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A119025.P9811243473677492232

/-!
# A119026: Partial sums of A118605.

The programs for A119026, there is no canonical definition to state claims against.
-/

/-! ## A119026.P10328208401677325172

`∑[A118605(n)]`
-/

namespace A119026.P10328208401677325172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118605 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119026.P10328208401677325172

/-! ## A119026.P7713450493851157761

`A269625(n)+a(n-1)` with `a(0)=0`
-/

namespace A119026.P7713450493851157761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A269625 n + a (n - 1)

end

end A119026.P7713450493851157761

/-! ## A119026.P5896405811803317791

`∑[A269625(abs(1-n)+1)]`
-/

namespace A119026.P5896405811803317791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269625 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119026.P5896405811803317791

/-! ## A119026.P16883019312652947115

`A118605(round(acot(n)+n))+a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A119026.P16883019312652947115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A118605 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat + a (n - 1)

end

end A119026.P16883019312652947115

/-! ## A119026.P13302738580624150707

`∑[A269625(A028310(n))]-1`
-/

namespace A119026.P13302738580624150707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269625 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A119026.P13302738580624150707

/-! ## A119026.P8430121489988488209

`A118605(n)+a(A023443(n))` with `a(0)=0`
-/

namespace A119026.P8430121489988488209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A118605 n + a (A023443 n).toNat

end

end A119026.P8430121489988488209

/-! ## A119026.P10287592200959270726

`∑[A269625(A004277(n)-n)]-1`
-/

namespace A119026.P10287592200959270726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269625 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A119026.P10287592200959270726

/-! ## A119026.P16573515659576289645

`∑[A269625(n+1)]-A269625(n+1)`
-/

namespace A119026.P16573515659576289645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269625 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A269625 (n + 1)

end

end A119026.P16573515659576289645

/-! ## A119026.P12140264947951424486

`a(n-1)+and(A004273(n), A118605(n))` with `a(0)=0`
-/

namespace A119026.P12140264947951424486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + Int.land (A004273 n) (A118605 n)

end

end A119026.P12140264947951424486

/-! ## A119026.P18101938849540953871

`∑[A057427(n*A269625(A028310(n)))]`
-/

namespace A119026.P18101938849540953871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 ((n : ℤ) * A269625 (A028310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119026.P18101938849540953871

/-!
# A119027: Value of the concatenation of the first n+1 terms of A118605, seen as a binary number.

The programs for A119027, there is no canonical definition to state claims against.
-/

/-! ## A119027.P8844624796896058437

`A118605(n)+2*a(n-1)` with `a(0)=0`
-/

namespace A119027.P8844624796896058437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A118605 n + 2 * a (n - 1)

end

end A119027.P8844624796896058437

/-! ## A119027.P12257561799220641761

`A269625(n)+2*a(n-1)` with `a(0)=0`
-/

namespace A119027.P12257561799220641761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A269625 n + 2 * a (n - 1)

end

end A119027.P12257561799220641761

/-! ## A119027.P13041584003401713001

`xor(2*a(n-1), A269625(A028310(n)))` with `a(0)=0`
-/

namespace A119027.P13041584003401713001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.xor (2 * a (n - 1)) (A269625 (A028310 n).toNat)

end

end A119027.P13041584003401713001

/-! ## A119027.P16456094220013694966

`or(A004277(a(n-1)), A087049(n))` with `a(0)=0`
-/

namespace A119027.P16456094220013694966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.lor (A004277 (a (n - 1)).toNat) (A087049 n)

end

end A119027.P16456094220013694966

/-! ## A119027.P13397991767766967802

`A005408(a(n-1))-char[A005117(n+1)]` with `a(0)=0, a(1)=1`
-/

namespace A119027.P13397991767766967802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A005408 (a (n - 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A119027.P13397991767766967802

/-!
# A119028: Numbers having at least 3 unique partitions into exactly 3 parts with the same product.

The programs for A119028, there is no canonical definition to state claims against.
-/

/-! ## A119028.P16042130944696308376

`lt[2, A119646(n+3)]+3`
-/

namespace A119028.P16042130944696308376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119646 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 3

end

end A119028.P16042130944696308376

/-! ## A119028.P4396762641074710047

`comp[A321993(n+1)-1]+1`
-/

namespace A119028.P4396762641074710047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321993 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A119028.P4396762641074710047

/-! ## A119028.P10660745858608877176

`comp[∪[A321988(2*n+1), A321993(n+1)]]`
-/

namespace A119028.P10660745858608877176
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321988 (2 * n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321993 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A119028.P10660745858608877176

/-!
# A119029: Numerator of Sum_{k=1..n} n^(k-1)/k!.

The programs for A119029, there is no canonical definition to state claims against.
-/

/-! ## A119029.P4335845089284023027

`A120267(n+1)/(n+1)`
-/

namespace A119029.P4335845089284023027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120267 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A119029.P4335845089284023027

/-! ## A119029.P649817794580072972

`(A120266(n+1)-A214401(n+1))/(n+1)`
-/

namespace A119029.P649817794580072972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120266 (n + 1) - A214401 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A119029.P649817794580072972

/-! ## A119029.P18116371166641310492

`(A063170(n+1)/A214402(n+1)-A214401(n+1))/(n+1)`
-/

namespace A119029.P18116371166641310492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A063170 (n + 1) : ℚ) / (A214402 (n + 1) : ℚ) - (A214401 (n + 1) : ℚ)) / (n + 1 : ℚ)

end

end A119029.P18116371166641310492

/-!
# A119030: Difference between numerator and denominator of the sum of all matrix elements of n X n Hilbert matrix M(i,j)=1/(i+j-1) (i,j = 1..n), A117731[n] - A117664[n].

The programs for A119030, there is no canonical definition to state claims against.
-/

/-! ## A119030.P791248151855908932

`A117731(n+1)-A117664(n+1)`
-/

namespace A119030.P791248151855908932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117731 (n + 1) - A117664 (n + 1)

end

end A119030.P791248151855908932

/-! ## A119030.P7375304777182684577

`A117731(n+1)-A296519(n+1)/2`
-/

namespace A119030.P7375304777182684577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117731 (n + 1) : ℚ) - (A296519 (n + 1) : ℚ) / 2

end

end A119030.P7375304777182684577

/-! ## A119030.P6583130683572403378

`A117731(n+1)-gcd(A091342(n+1), A111876(n))`
-/

namespace A119030.P6583130683572403378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117731 (n + 1) - (Int.gcd (A091342 (n + 1)) (A111876 n) : ℤ)

end

end A119030.P6583130683572403378

/-! ## A119030.P15666283063601068701

`A117731(n+1)-A091342(n+1)%A296519(n+1)`
-/

namespace A119030.P15666283063601068701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117731 (n + 1) - Int.tmod (A091342 (n + 1)) (A296519 (n + 1))

end

end A119030.P15666283063601068701

/-! ## A119030.P1731123358955053568

`lcm(A082687(n+1), A119788((n+1)²))-A117664(n+1)`
-/

namespace A119030.P1731123358955053568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A082687 (n + 1)) (A119788 ((n + 1) ^ 2)) : ℤ) - A117664 (n + 1)

end

end A119030.P1731123358955053568

/-!
# A119031: Add and Reverse: a(n) = the reversal of (a(n-1)+d), case a(1)=1 and d=4.

The programs for A119031, there is no canonical definition to state claims against.
-/

/-! ## A119031.P16765424466258726806

`A117830(n+1)-4`
-/

namespace A119031.P16765424466258726806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117830 (n + 1) - 4

end

end A119031.P16765424466258726806

/-!
# A119032: a(n+2) = 18*a(n+1) - a(n) + 8.

The programs for A119032, there is no canonical definition to state claims against.
-/

/-! ## A119032.P15809395174634971338

`∑[ogf((1-9x)/(1-18x+x^2))]-1`
-/

namespace A119032.P15809395174634971338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -9] [1, -18, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A119032.P15809395174634971338

/-! ## A119032.P6801861983739660494

`floor((ϕ^(2*n+1)/2)^3)`
-/

namespace A119032.P6801861983739660494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.goldenRatio ^ (2 * n + 1) / 2) ^ 3⌋

end

end A119032.P6801861983739660494

/-! ## A119032.P17610345214461123362

`∑[xor(3, floor(ϕ^(6*n)))/2]-1`
-/

namespace A119032.P17610345214461123362
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 3 ⌊Real.goldenRatio ^ (6 * n)⌋ : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A119032.P17610345214461123362

/-! ## A119032.P11544004323345565251

`A157092(n)/4`
-/

namespace A119032.P11544004323345565251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157092 n : ℚ) / 4

end

end A119032.P11544004323345565251

/-! ## A119032.P13495131852760512694

`∑[A023039(n)]-1`
-/

namespace A119032.P13495131852760512694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023039 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A119032.P13495131852760512694

/-! ## A119032.P17551982888801706124

`A133273(n+1)-1`
-/

namespace A119032.P17551982888801706124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133273 (n + 1) - 1

end

end A119032.P17551982888801706124

/-! ## A119032.P16114914768803819149

`(A049629(n)-1)/2`
-/

namespace A119032.P16114914768803819149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049629 n - 1 : ℚ) / 2

end

end A119032.P16114914768803819149

/-! ## A119032.P7655099412819218797

`∑[A001077(2*n)]-1`
-/

namespace A119032.P7655099412819218797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001077 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A119032.P7655099412819218797

/-! ## A119032.P8391785786978435007

`(A075796(n+1)-2)/4`
-/

namespace A119032.P8391785786978435007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075796 (n + 1) - 2 : ℚ) / 4

end

end A119032.P8391785786978435007

/-! ## A119032.P697199186841892570

`∑[A000032(6*n)/2]-1`
-/

namespace A119032.P697199186841892570
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (6 * n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A119032.P697199186841892570

/-!
# A119033: Triangular numbers composed of digits {0,1,2}.

The programs for A119033, there is no canonical definition to state claims against.
-/

/-! ## A119033.P12111717464832983905

`A000217(A119034(n+1))`
-/

namespace A119033.P12111717464832983905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119034 (n + 1)).toNat

end

end A119033.P12111717464832983905

/-! ## A119033.P543135823413200373

`C(A119034(A000027(n+1))+1, 2)`
-/

namespace A119033.P543135823413200373
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A119034 (A000027 (n + 1)).toNat + 1).toNat 2

end

end A119033.P543135823413200373

/-! ## A119033.P8647379108509130576

`C(A304042(n)+A119034(n+1), 2)`
-/

namespace A119033.P8647379108509130576
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A304042 n + A119034 (n + 1)).toNat 2

end

end A119033.P8647379108509130576

/-! ## A119033.P7070769144703559655

`A000217(record[A119034(gcd(xor(1, n²), ∑[n]))])`
-/

namespace A119033.P7070769144703559655
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119034 (Nat.gcd (Nat.xor 1 (n ^ 2)) (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A119033.P7070769144703559655

/-!
# A119034: Numbers k such that the k-th triangular number contains only digits {0,1,2}.

The programs for A119034, there is no canonical definition to state claims against.
-/

/-! ## A119034.P5690957257848912081

`floor(sqrt(2*A119033(n+1)))`
-/

namespace A119034.P5690957257848912081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119033 (n + 1))

end

end A119034.P5690957257848912081

/-! ## A119034.P4177198614892615878

`round(sqrt(2*A119033(n+1)))%A001579(n)`
-/

namespace A119034.P4177198614892615878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (2 * A119033 (n + 1) : ℝ))) (A001579 n)

end

end A119034.P4177198614892615878

/-! ## A119034.P5868016758075539038

`round(A000007(n+1)+sqrt(2*A119033(n+1)))`
-/

namespace A119034.P5868016758075539038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000007 (n + 1) : ℝ) + Real.sqrt (2 * A119033 (n + 1) : ℝ))

end

end A119034.P5868016758075539038

/-! ## A119034.P6268188272791903927

`round(A034535(n+1)+sqrt(2*A119033(n+1)))`
-/

namespace A119034.P6268188272791903927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A034535 (n + 1) : ℝ) + Real.sqrt (2 * A119033 (n + 1) : ℝ))

end

end A119034.P6268188272791903927

/-!
# A119035: Triangular numbers composed of digits {0,1,3}.

The programs for A119035, there is no canonical definition to state claims against.
-/

/-! ## A119035.P14911381720268687350

`A000217(A119036(n+1))`
-/

namespace A119035.P14911381720268687350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119036 (n + 1)).toNat

end

end A119035.P14911381720268687350

/-! ## A119035.P11083143915477056440

`A161680(A119036(n+1)+1)`
-/

namespace A119035.P11083143915477056440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A119036 (n + 1) + 1).toNat

end

end A119035.P11083143915477056440

/-! ## A119035.P17370931110003030376

`A179865(A119036(n+1)+1)`
-/

namespace A119035.P17370931110003030376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A119036 (n + 1) + 1).toNat

end

end A119035.P17370931110003030376

/-! ## A119035.P2990534631902544467

`1-A080956(A119036(n+1)+1)`
-/

namespace A119035.P2990534631902544467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A080956 (A119036 (n + 1) + 1).toNat

end

end A119035.P2990534631902544467

/-! ## A119035.P12507977172708427299

`∩[A000217(n+1), A007090(A023713(n+1))]`
-/

namespace A119035.P12507977172708427299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A023713 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119035.P12507977172708427299

/-!
# A119036: Numbers k such that the k-th triangular number contains only digits {0,1,3}.

The programs for A119036, there is no canonical definition to state claims against.
-/

/-! ## A119036.P16766575796636620232

`floor(sqrt(2*A119035(n+1)))`
-/

namespace A119036.P16766575796636620232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119035 (n + 1))

end

end A119036.P16766575796636620232

/-! ## A119036.P8427720799547894630

`ceil(sqrt(2*A119035(n+1))-A161618(n+1))`
-/

namespace A119036.P8427720799547894630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * A119035 (n + 1) : ℝ) - (A161618 (n + 1) : ℝ)⌉

end

end A119036.P8427720799547894630

/-! ## A119036.P4411040060645172384

`ceil(A033999(2*n+1)+sqrt(2*A119035(n+1)))`
-/

namespace A119036.P4411040060645172384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A033999 (2 * n + 1) : ℝ) + Real.sqrt (2 * A119035 (n + 1) : ℝ)⌉

end

end A119036.P4411040060645172384

/-!
# A119037: Triangular numbers composed of digits {0,1,4}.

The programs for A119037, there is no canonical definition to state claims against.
-/

/-! ## A119037.P3248929919410892188

`A000217(A119038(n+1))`
-/

namespace A119037.P3248929919410892188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119038 (n + 1)).toNat

end

end A119037.P3248929919410892188

/-! ## A119037.P3500869467127897974

`C(A119038(A000027(n+1))+1, 2)`
-/

namespace A119037.P3500869467127897974
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A119038 (A000027 (n + 1)).toNat + 1).toNat 2

end

end A119037.P3500869467127897974

/-! ## A119037.P1336068765950074297

`record[C(A119038(A002260(n+1))+1, 2)]`
-/

namespace A119037.P1336068765950074297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A119038 (A002260 (n + 1)).toNat + 1).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119037.P1336068765950074297

/-! ## A119037.P3860668225550508523

`record[C(A119038(A329624(n+1))+1, 2)]`
-/

namespace A119037.P3860668225550508523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A119038 (A329624 (n + 1)).toNat + 1).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119037.P3860668225550508523

/-!
# A119038: Numbers k such that the k-th triangular number contains only digits {0,1,4}.

The programs for A119038, there is no canonical definition to state claims against.
-/

/-! ## A119038.P17236191836617529741

`floor(sqrt(2*A119037(n+1)))`
-/

namespace A119038.P17236191836617529741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119037 (n + 1))

end

end A119038.P17236191836617529741

/-!
# A119039: Triangular numbers composed of digits {0,1,5}.

The programs for A119039, there is no canonical definition to state claims against.
-/

/-! ## A119039.P15639936083138322409

`A000217(A119040(n+1))`
-/

namespace A119039.P15639936083138322409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119040 (n + 1)).toNat

end

end A119039.P15639936083138322409

/-! ## A119039.P8120980879494537452

`A134869(A119040(n+1))+A057428(n)`
-/

namespace A119039.P8120980879494537452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134869 (A119040 (n + 1)).toNat + A057428 n

end

end A119039.P8120980879494537452

/-! ## A119039.P77191947102772574

`A161680(A119040(n+1)+1)`
-/

namespace A119039.P77191947102772574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A119040 (n + 1) + 1).toNat

end

end A119039.P77191947102772574

/-! ## A119039.P14664271429804108793

`A179865(A119040(n+1)+1)`
-/

namespace A119039.P14664271429804108793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A119040 (n + 1) + 1).toNat

end

end A119039.P14664271429804108793

/-!
# A119040: Numbers k such that the k-th triangular number contains only digits {0,1,5}.

The programs for A119040, there is no canonical definition to state claims against.
-/

/-! ## A119040.P11648122564131830616

`floor(sqrt(2*A119039(n+1)))`
-/

namespace A119040.P11648122564131830616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119039 (n + 1))

end

end A119040.P11648122564131830616

/-! ## A119040.P5007537079972370739

`round(sqrt(2*A119039(n+1)-A308064(n+1)))`
-/

namespace A119040.P5007537079972370739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A119039 (n + 1) - A308064 (n + 1) : ℝ))

end

end A119040.P5007537079972370739

/-! ## A119040.P5142475021579496160

`round(A056594(2*n)²*sqrt(2*A119039(n+1)))`
-/

namespace A119040.P5142475021579496160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A056594 (2 * n) ^ 2 : ℝ) * Real.sqrt (2 * A119039 (n + 1) : ℝ))

end

end A119040.P5142475021579496160

/-! ## A119040.P16420411725457835608

`round(A008683(8*(n+1))+sqrt(2*A119039(n+1)))`
-/

namespace A119040.P16420411725457835608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008683 (8 * (n + 1)) : ℝ) + Real.sqrt (2 * A119039 (n + 1) : ℝ))

end

end A119040.P16420411725457835608

/-! ## A119040.P3408087126391138671

`round(sqrt(2*A119039(n+1))*A011558(5*n+2))`
-/

namespace A119040.P3408087126391138671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A119039 (n + 1) : ℝ) * (A011558 (5 * n + 2) : ℝ))

end

end A119040.P3408087126391138671

/-!
# A119041: Triangular numbers composed of digits {0,1,6}.

The programs for A119041, there is no canonical definition to state claims against.
-/

/-! ## A119041.P8130667234480933240

`A000217(A119042(n+1))`
-/

namespace A119041.P8130667234480933240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119042 (n + 1)).toNat

end

end A119041.P8130667234480933240

/-! ## A119041.P5013463932847738254

`A179865(A119042(n+1)+1)`
-/

namespace A119041.P5013463932847738254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A119042 (n + 1) + 1).toNat

end

end A119041.P5013463932847738254

/-! ## A119041.P3675118632604269059

`A160791(2*A119042(n+1))`
-/

namespace A119041.P3675118632604269059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160791 (2 * A119042 (n + 1)).toNat

end

end A119041.P3675118632604269059

/-! ## A119041.P3296040551983455023

`A286388(2*A119042(n+1))`
-/

namespace A119041.P3296040551983455023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286388 (2 * A119042 (n + 1)).toNat

end

end A119041.P3296040551983455023

/-!
# A119042: Numbers k such that the k-th triangular number contains only digits {0,1,6}.

The programs for A119042, there is no canonical definition to state claims against.
-/

/-! ## A119042.P9039615036273419109

`floor(sqrt(2*A119041(n+1)))`
-/

namespace A119042.P9039615036273419109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119041 (n + 1))

end

end A119042.P9039615036273419109

/-! ## A119042.P7629019603825836016

`round(sqrt(2*A119041(n+1)))%A184024(n+1)`
-/

namespace A119042.P7629019603825836016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (2 * A119041 (n + 1) : ℝ))) (A184024 (n + 1))

end

end A119042.P7629019603825836016

/-! ## A119042.P2981697529048142481

`A294317(A119041(n+1))/2`
-/

namespace A119042.P2981697529048142481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294317 (A119041 (n + 1)).toNat : ℚ) / 2

end

end A119042.P2981697529048142481

/-! ## A119042.P4883237430119387703

`A294317(A119041(n+1)-1)+1`
-/

namespace A119042.P4883237430119387703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294317 (A119041 (n + 1) - 1).toNat + 1

end

end A119042.P4883237430119387703

/-!
# A119043: Triangular numbers composed of digits {0,1,7}.

The programs for A119043, there is no canonical definition to state claims against.
-/

/-! ## A119043.P15887485648308253682

`A000217(A119044(n+1))`
-/

namespace A119043.P15887485648308253682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119044 (n + 1)).toNat

end

end A119043.P15887485648308253682

/-! ## A119043.P719433754738999856

`A000124(A119044(n+1))-A152845(n)`
-/

namespace A119043.P719433754738999856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A119044 (n + 1)).toNat - A152845 n

end

end A119043.P719433754738999856

/-!
# A119044: Numbers k such that the k-th triangular number contains only digits {0,1,7}.

The programs for A119044, there is no canonical definition to state claims against.
-/

/-! ## A119044.P13672754635890799605

`floor(sqrt(2*A119043(n+1)))`
-/

namespace A119044.P13672754635890799605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119043 (n + 1))

end

end A119044.P13672754635890799605

/-! ## A119044.P12156441908977145223

`A002260(A119043(n+1))`
-/

namespace A119044.P12156441908977145223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A119043 (n + 1)).toNat

end

end A119044.P12156441908977145223

/-!
# A119045: Triangular numbers composed of digits {0,1,8}.

The programs for A119045, there is no canonical definition to state claims against.
-/

/-! ## A119045.P61934252919924432

`A000217(A119046(n+1))`
-/

namespace A119045.P61934252919924432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119046 (n + 1)).toNat

end

end A119045.P61934252919924432

/-! ## A119045.P12765019825893886639

`∩[A000217(n+1), A046031(n)]`
-/

namespace A119045.P12765019825893886639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046031 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119045.P12765019825893886639

/-! ## A119045.P14747933475490079384

`A161680(A119046(n+1)+1)`
-/

namespace A119045.P14747933475490079384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A119046 (n + 1) + 1).toNat

end

end A119045.P14747933475490079384

/-! ## A119045.P14660027378252143685

`A179865(A119046(n+1)+1)`
-/

namespace A119045.P14660027378252143685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A119046 (n + 1) + 1).toNat

end

end A119045.P14660027378252143685

/-! ## A119045.P14011674092922291034

`∩[A074134(n+1), A046031(n)]`
-/

namespace A119045.P14011674092922291034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046031 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119045.P14011674092922291034

/-!
# A119046: Numbers k such that the k-th triangular number contains only digits {0,1,8}.

The programs for A119046, there is no canonical definition to state claims against.
-/

/-! ## A119046.P6775042752104487477

`floor(sqrt(2*A119045(n+1)))`
-/

namespace A119046.P6775042752104487477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119045 (n + 1))

end

end A119046.P6775042752104487477

/-! ## A119046.P7790654765551683329

`ceil(sqrt(2*A119045(n+1))-A033999(n)²)`
-/

namespace A119046.P7790654765551683329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * A119045 (n + 1) : ℝ) - (A033999 n ^ 2 : ℝ)⌉

end

end A119046.P7790654765551683329

/-! ## A119046.P16691346354710165915

`round(sqrt(2*A119045(n+1))*A057813(n)%2)`
-/

namespace A119046.P16691346354710165915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A119045 (n + 1) : ℝ) * (Int.tmod (A057813 n) 2 : ℝ))

end

end A119046.P16691346354710165915

/-! ## A119046.P9868275396910589273

`round(sqrt(2*A119045(n+1)))%A332850(n+1)`
-/

namespace A119046.P9868275396910589273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (2 * A119045 (n + 1) : ℝ))) (A332850 (n + 1))

end

end A119046.P9868275396910589273

/-!
# A119047: Triangular numbers composed of digits {0,1,9}.

The programs for A119047, there is no canonical definition to state claims against.
-/

/-! ## A119047.P13466988376233936175

`A000217(A119048(n+1))`
-/

namespace A119047.P13466988376233936175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119048 (n + 1)).toNat

end

end A119047.P13466988376233936175

/-! ## A119047.P10127714568564593793

`A000217(record[A119048(C(comp[∑[n]]-n, 2)-n)])`
-/

namespace A119047.P10127714568564593793
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119048 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A119047.P10127714568564593793

/-! ## A119047.P3907261582422090704

`A161680(A119048(n+1)+1)`
-/

namespace A119047.P3907261582422090704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A119048 (n + 1) + 1).toNat

end

end A119047.P3907261582422090704

/-! ## A119047.P1514954533251522139

`A179865(A119048(n+1)+1)`
-/

namespace A119047.P1514954533251522139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A119048 (n + 1) + 1).toNat

end

end A119047.P1514954533251522139

/-!
# A119048: Numbers k such that the k-th triangular number contains only digits {0,1,9}.

The programs for A119048, there is no canonical definition to state claims against.
-/

/-! ## A119048.P803570863006553093

`floor(sqrt(2*A119047(n+1)))`
-/

namespace A119048.P803570863006553093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119047 (n + 1))

end

end A119048.P803570863006553093

/-! ## A119048.P16460832107862705780

`round(sqrt(2*A119047(n+1)))%A010903(n)`
-/

namespace A119048.P16460832107862705780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (2 * A119047 (n + 1) : ℝ))) (A010903 n)

end

end A119048.P16460832107862705780

/-! ## A119048.P16900410647371244345

`round(A000007(n+1)+sqrt(2*A119047(n+1)))`
-/

namespace A119048.P16900410647371244345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000007 (n + 1) : ℝ) + Real.sqrt (2 * A119047 (n + 1) : ℝ))

end

end A119048.P16900410647371244345

/-! ## A119048.P10277868449310154879

`round(A000035(2*n)+sqrt(2*A119047(n+1)))`
-/

namespace A119048.P10277868449310154879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000035 (2 * n) : ℝ) + Real.sqrt (2 * A119047 (n + 1) : ℝ))

end

end A119048.P10277868449310154879

/-! ## A119048.P13963905087201667408

`ceil(sqrt(2*A119047(n+1))-A050603(4*n))`
-/

namespace A119048.P13963905087201667408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * A119047 (n + 1) : ℝ) - (A050603 (4 * n) : ℝ)⌉

end

end A119048.P13963905087201667408

/-!
# A119049: Triangular numbers composed of digits {0,2,3}.

The programs for A119049, there is no canonical definition to state claims against.
-/

/-! ## A119049.P6598095360387415337

`A000217(A119050(n+1))`
-/

namespace A119049.P6598095360387415337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119050 (n + 1)).toNat

end

end A119049.P6598095360387415337

/-! ## A119049.P3930485528447231606

`A161680(A119050(n+1)+1)`
-/

namespace A119049.P3930485528447231606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A119050 (n + 1) + 1).toNat

end

end A119049.P3930485528447231606

/-!
# A119050: Numbers k such that the k-th triangular number contains only digits {0,2,3}.

The programs for A119050, there is no canonical definition to state claims against.
-/

/-! ## A119050.P10738018118434179332

`floor(sqrt(2*A119049(n+1)))`
-/

namespace A119050.P10738018118434179332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119049 (n + 1))

end

end A119050.P10738018118434179332

/-!
# A119051: Triangular numbers composed of digits {0,2,5}.

The programs for A119051, there is no canonical definition to state claims against.
-/

/-! ## A119051.P11375017163937220470

`A000217(A119052(n+1))`
-/

namespace A119051.P11375017163937220470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119052 (n + 1)).toNat

end

end A119051.P11375017163937220470

/-!
# A119052: Numbers k such that the k-th triangular number contains only digits {0,2,5}.

The programs for A119052, there is no canonical definition to state claims against.
-/

/-! ## A119052.P17493860747940995722

`floor(sqrt(2*A119051(n+1)))`
-/

namespace A119052.P17493860747940995722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119051 (n + 1))

end

end A119052.P17493860747940995722

/-! ## A119052.P2437965284264726081

`round(A011741(n)+sqrt(2*A119051(n+1)))`
-/

namespace A119052.P2437965284264726081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A011741 n : ℝ) + Real.sqrt (2 * A119051 (n + 1) : ℝ))

end

end A119052.P2437965284264726081

/-! ## A119052.P17124333882831970463

`round(A025439(n)+sqrt(2*A119051(n+1)))`
-/

namespace A119052.P17124333882831970463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A025439 n : ℝ) + Real.sqrt (2 * A119051 (n + 1) : ℝ))

end

end A119052.P17124333882831970463

/-! ## A119052.P4292898454230544560

`round(A326291(n+1)+sqrt(2*A119051(n+1)))`
-/

namespace A119052.P4292898454230544560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A326291 (n + 1) : ℝ) + Real.sqrt (2 * A119051 (n + 1) : ℝ))

end

end A119052.P4292898454230544560

/-!
# A119053: Triangular numbers composed of digits {0,2,6}.

The programs for A119053, there is no canonical definition to state claims against.
-/

/-! ## A119053.P1288526047252030555

`A000217(A119054(n+1))`
-/

namespace A119053.P1288526047252030555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119054 (n + 1)).toNat

end

end A119053.P1288526047252030555

/-!
# A119054: Numbers k such that the k-th triangular number contains only digits {0,2,6}.

The programs for A119054, there is no canonical definition to state claims against.
-/

/-! ## A119054.P5856187954525021295

`floor(sqrt(2*A119053(n+1)))`
-/

namespace A119054.P5856187954525021295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119053 (n + 1))

end

end A119054.P5856187954525021295

/-!
# A119055: Triangular numbers composed of digits {0,2,8}.

The programs for A119055, there is no canonical definition to state claims against.
-/

/-! ## A119055.P17195105012527307540

`A000217(A119056(n+1))`
-/

namespace A119055.P17195105012527307540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119056 (n + 1)).toNat

end

end A119055.P17195105012527307540

/-! ## A119055.P15841124132066608446

`A161680(A119056(n+1)+1)`
-/

namespace A119055.P15841124132066608446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A119056 (n + 1) + 1).toNat

end

end A119055.P15841124132066608446

/-!
# A119056: Numbers k such that the k-th triangular number contains only digits {0,2,8}.

The programs for A119056, there is no canonical definition to state claims against.
-/

/-! ## A119056.P6109352348831138088

`floor(sqrt(2*A119055(n+1)))`
-/

namespace A119056.P6109352348831138088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119055 (n + 1))

end

end A119056.P6109352348831138088

/-!
# A119059: Triangular numbers composed of digits {0,3,4}.

The programs for A119059, there is no canonical definition to state claims against.
-/

/-! ## A119059.P5857784272272534645

`A000217(A119060(n+1))`
-/

namespace A119059.P5857784272272534645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119060 (n + 1)).toNat

end

end A119059.P5857784272272534645

/-!
# A119060: Numbers k such that the k-th triangular number contains only digits {0,3,4}.

The programs for A119060, there is no canonical definition to state claims against.
-/

/-! ## A119060.P7654445614621983966

`floor(sqrt(2*A119059(n+1)))`
-/

namespace A119060.P7654445614621983966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119059 (n + 1))

end

end A119060.P7654445614621983966

/-!
# A119061: Triangular numbers composed of digits {0,3,5}.

The programs for A119061, there is no canonical definition to state claims against.
-/

/-! ## A119061.P10495758339557943987

`A000217(A119062(n+1))`
-/

namespace A119061.P10495758339557943987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119062 (n + 1)).toNat

end

end A119061.P10495758339557943987

/-! ## A119061.P14334362503204584137

`C(A119062(n+1)+1, A010673(2*n+3))`
-/

namespace A119061.P14334362503204584137
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A119062 (n + 1) + 1).toNat (A010673 (2 * n + 3)).toNat

end

end A119061.P14334362503204584137

/-!
# A119063: Triangular numbers composed of digits {0,3,6}.

The programs for A119063, there is no canonical definition to state claims against.
-/

/-! ## A119063.P15612849957140415070

`A000217(A119064(n+1))`
-/

namespace A119063.P15612849957140415070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119064 (n + 1)).toNat

end

end A119063.P15612849957140415070

/-! ## A119063.P17899223877600700646

`(A119064(n+1)+A119064(n+1)²)/A296076(n+1)`
-/

namespace A119063.P17899223877600700646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119064 (n + 1) + A119064 (n + 1) ^ 2 : ℚ) / (A296076 (n + 1) : ℚ)

end

end A119063.P17899223877600700646

/-! ## A119063.P448111863111055876

`A161680(A119064(n+1)+1)`
-/

namespace A119063.P448111863111055876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A119064 (n + 1) + 1).toNat

end

end A119063.P448111863111055876

/-! ## A119063.P11784788381478301485

`A179865(A119064(n+1)+1)`
-/

namespace A119063.P11784788381478301485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A119064 (n + 1) + 1).toNat

end

end A119063.P11784788381478301485

/-!
# A119064: Numbers k such that the k-th triangular number contains only digits {0,3,6}.

The programs for A119064, there is no canonical definition to state claims against.
-/

/-! ## A119064.P10489114667955803621

`floor(sqrt(2*A119063(n+1)))`
-/

namespace A119064.P10489114667955803621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119063 (n + 1))

end

end A119064.P10489114667955803621

/-! ## A119064.P6990737037565459523

`round(sqrt(2*A119063(n+1)))%A251802(n+1)`
-/

namespace A119064.P6990737037565459523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (2 * A119063 (n + 1) : ℝ))) (A251802 (n + 1))

end

end A119064.P6990737037565459523

/-! ## A119064.P1263010685039610384

`A080098(A119063(n+1))`
-/

namespace A119064.P1263010685039610384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080098 (A119063 (n + 1)).toNat

end

end A119064.P1263010685039610384

/-!
# A119065: Triangular numbers composed of digits {0,3,7}.

The programs for A119065, there is no canonical definition to state claims against.
-/

/-! ## A119065.P13285982691496802625

`A000217(A119066(n+1))`
-/

namespace A119065.P13285982691496802625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119066 (n + 1)).toNat

end

end A119065.P13285982691496802625

/-!
# A119066: Numbers k such that the k-th triangular number contains only digits {0,3,7}.

The programs for A119066, there is no canonical definition to state claims against.
-/

/-! ## A119066.P14841673229055831846

`round(sqrt(2*A119065(n+1)))`
-/

namespace A119066.P14841673229055831846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A119065 (n + 1) : ℝ))

end

end A119066.P14841673229055831846

/-!
# A119067: Triangular numbers composed of digits {0,3,8}.

The programs for A119067, there is no canonical definition to state claims against.
-/

/-! ## A119067.P11004834499247508760

`C(A119068(n+1)+1, 2)`
-/

namespace A119067.P11004834499247508760
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A119068 (n + 1) + 1).toNat 2

end

end A119067.P11004834499247508760

/-!
# A119068: Numbers k such that the k-th triangular number contains only digits {0,3,8}.

The programs for A119068, there is no canonical definition to state claims against.
-/

/-! ## A119068.P12182119876147224291

`floor(sqrt(2*A119067(n+1)))`
-/

namespace A119068.P12182119876147224291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119067 (n + 1))

end

end A119068.P12182119876147224291

/-!
# A119069: Triangular numbers composed of digits {0,3,9}.

The programs for A119069, there is no canonical definition to state claims against.
-/

/-! ## A119069.P6952752674889008250

`A000217(A119070(n+1))`
-/

namespace A119069.P6952752674889008250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119070 (n + 1)).toNat

end

end A119069.P6952752674889008250

/-! ## A119069.P17306357248218203503

`A161680(A119070(n+1)+1)`
-/

namespace A119069.P17306357248218203503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A119070 (n + 1) + 1).toNat

end

end A119069.P17306357248218203503

/-! ## A119069.P3868322865609078530

`A179865(A119070(n+1)+1)`
-/

namespace A119069.P3868322865609078530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A119070 (n + 1) + 1).toNat

end

end A119069.P3868322865609078530

/-! ## A119069.P2651707266026386139

`A000096(A119070(n+1)-1)+1`
-/

namespace A119069.P2651707266026386139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A119070 (n + 1) - 1).toNat + 1

end

end A119069.P2651707266026386139

/-!
# A119070: Numbers k such that the k-th triangular number contains only digits {0,3,9}.

The programs for A119070, there is no canonical definition to state claims against.
-/

/-! ## A119070.P10399291828669553008

`floor(sqrt(2*A119069(n+1)))`
-/

namespace A119070.P10399291828669553008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119069 (n + 1))

end

end A119070.P10399291828669553008

/-! ## A119070.P16079534760395211403

`round(A025439(n)+sqrt(2*A119069(n+1)))`
-/

namespace A119070.P16079534760395211403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A025439 n : ℝ) + Real.sqrt (2 * A119069 (n + 1) : ℝ))

end

end A119070.P16079534760395211403

/-! ## A119070.P15202229564445253440

`round(A185245(n)+sqrt(2*A119069(n+1)))`
-/

namespace A119070.P15202229564445253440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A185245 n : ℝ) + Real.sqrt (2 * A119069 (n + 1) : ℝ))

end

end A119070.P15202229564445253440

/-! ## A119070.P5233125518626404228

`round(sqrt(2*A119069(n+1))*A057979(2*n))`
-/

namespace A119070.P5233125518626404228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A119069 (n + 1) : ℝ) * (A057979 (2 * n) : ℝ))

end

end A119070.P5233125518626404228

/-! ## A119070.P14178388369443008615

`round(sqrt(2*A119069(n+1)))+A046092(n)%2`
-/

namespace A119070.P14178388369443008615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A119069 (n + 1) : ℝ)) + Int.tmod (A046092 n) 2

end

end A119070.P14178388369443008615

/-!
# A119071: Triangular numbers composed of digits {0,4,5}.

The programs for A119071, there is no canonical definition to state claims against.
-/

/-! ## A119071.P17646592018669155460

`A000217(A119072(n+1))`
-/

namespace A119071.P17646592018669155460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119072 (n + 1)).toNat

end

end A119071.P17646592018669155460

/-! ## A119071.P1888905728293962234

`A161680(A119072(n+1)+1)`
-/

namespace A119071.P1888905728293962234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A119072 (n + 1) + 1).toNat

end

end A119071.P1888905728293962234

/-! ## A119071.P2429027541102983859

`A179865(A119072(n+1)+1)`
-/

namespace A119071.P2429027541102983859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A119072 (n + 1) + 1).toNat

end

end A119071.P2429027541102983859

/-! ## A119071.P1248069883430482908

`A323294(A119072(n+1)+1)`
-/

namespace A119071.P1248069883430482908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323294 (A119072 (n + 1) + 1).toNat

end

end A119071.P1248069883430482908

/-!
# A119072: Numbers k such that the k-th triangular number contains only digits {0,4,5}.

The programs for A119072, there is no canonical definition to state claims against.
-/

/-! ## A119072.P3360473011238053729

`floor(sqrt(2*A119071(n+1)))`
-/

namespace A119072.P3360473011238053729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119071 (n + 1))

end

end A119072.P3360473011238053729

/-!
# A119073: Triangular numbers composed of digits {0,4,6}.

The programs for A119073, there is no canonical definition to state claims against.
-/

/-! ## A119073.P15887390706183446985

`A000217(A119074(n+1))`
-/

namespace A119073.P15887390706183446985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119074 (n + 1)).toNat

end

end A119073.P15887390706183446985

/-! ## A119073.P10656720860355316908

`A161680(A119074(n+1)+1)`
-/

namespace A119073.P10656720860355316908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A119074 (n + 1) + 1).toNat

end

end A119073.P10656720860355316908

/-! ## A119073.P14762821380126972652

`A179865(A119074(n+1)+1)`
-/

namespace A119073.P14762821380126972652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A119074 (n + 1) + 1).toNat

end

end A119073.P14762821380126972652

/-!
# A119074: Numbers k such that the k-th triangular number contains only digits {0,4,6}.

The programs for A119074, there is no canonical definition to state claims against.
-/

/-! ## A119074.P15670067311466344832

`floor(sqrt(2*A119073(n+1)))`
-/

namespace A119074.P15670067311466344832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119073 (n + 1))

end

end A119074.P15670067311466344832

/-!
# A119079: Triangular numbers composed of digits {0,5,6}.

The programs for A119079, there is no canonical definition to state claims against.
-/

/-! ## A119079.P4153521386953508496

`A000217(A119080(n+1))`
-/

namespace A119079.P4153521386953508496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119080 (n + 1)).toNat

end

end A119079.P4153521386953508496

/-! ## A119079.P15012219738840818289

`A253145(A119080(n+1)-1)`
-/

namespace A119079.P15012219738840818289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (A119080 (n + 1) - 1).toNat

end

end A119079.P15012219738840818289

/-! ## A119079.P110993800724422678

`A161680(A119080(n+1)+1)`
-/

namespace A119079.P110993800724422678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A119080 (n + 1) + 1).toNat

end

end A119079.P110993800724422678

/-! ## A119079.P15488302114855919809

`A179865(A119080(n+1)+1)`
-/

namespace A119079.P15488302114855919809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A119080 (n + 1) + 1).toNat

end

end A119079.P15488302114855919809

/-!
# A119080: Numbers k such that the k-th triangular number contains only digits {0,5,6}.

The programs for A119080, there is no canonical definition to state claims against.
-/

/-! ## A119080.P16174056221741776048

`floor(sqrt(2*A119079(n+1)))`
-/

namespace A119080.P16174056221741776048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119079 (n + 1))

end

end A119080.P16174056221741776048

/-! ## A119080.P3190890792865974006

`A080098(A119079(n+1))`
-/

namespace A119080.P3190890792865974006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080098 (A119079 (n + 1)).toNat

end

end A119080.P3190890792865974006

/-! ## A119080.P17253051319468148203

`A003056(A119079(n+1)+1)`
-/

namespace A119080.P17253051319468148203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A119079 (n + 1) + 1).toNat

end

end A119080.P17253051319468148203

/-!
# A119081: Triangular numbers composed of digits {0,5,7}.

The programs for A119081, there is no canonical definition to state claims against.
-/

/-! ## A119081.P16949416061244243281

`A000217(A119082(n+1))`
-/

namespace A119081.P16949416061244243281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119082 (n + 1)).toNat

end

end A119081.P16949416061244243281

/-!
# A119082: Numbers k such that the k-th triangular number contains only digits {0,5,7}.

The programs for A119082, there is no canonical definition to state claims against.
-/

/-! ## A119082.P171421276360245887

`floor(sqrt(2*A119081(n+1)))`
-/

namespace A119082.P171421276360245887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119081 (n + 1))

end

end A119082.P171421276360245887

/-!
# A119083: Triangular numbers composed of digits {0,5,8}.

The programs for A119083, there is no canonical definition to state claims against.
-/

/-! ## A119083.P6679444533843156691

`C(A119084(n+1)+1, 2)`
-/

namespace A119083.P6679444533843156691
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A119084 (n + 1) + 1).toNat 2

end

end A119083.P6679444533843156691

/-! ## A119083.P11568042213794211135

`A037156(A100793(n))`
-/

namespace A119083.P11568042213794211135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037156 (A100793 n).toNat

end

end A119083.P11568042213794211135

/-!
# A119084: Numbers k such that the k-th triangular number contains only digits {0,5,8}.

The programs for A119084, there is no canonical definition to state claims against.
-/

/-! ## A119084.P6359658405285072653

`floor(sqrt(2*A119083(n+1)))`
-/

namespace A119084.P6359658405285072653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119083 (n + 1))

end

end A119084.P6359658405285072653

/-!
# A119085: Triangular numbers composed of digits {0,5,9}.

The programs for A119085, there is no canonical definition to state claims against.
-/

/-! ## A119085.P17693247952263647814

`A000217(A119086(n+1))`
-/

namespace A119085.P17693247952263647814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119086 (n + 1)).toNat

end

end A119085.P17693247952263647814

/-! ## A119085.P13526667530488212272

`A000124(A119086(n+1))-A071625(2*n+3)`
-/

namespace A119085.P13526667530488212272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A119086 (n + 1)).toNat - A071625 (2 * n + 3)

end

end A119085.P13526667530488212272

/-!
# A119086: Numbers k such that the k-th triangular number contains only digits {0,5,9}.

The programs for A119086, there is no canonical definition to state claims against.
-/

/-! ## A119086.P12158614921713071311

`floor(sqrt(2*A119085(n+1)))`
-/

namespace A119086.P12158614921713071311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119085 (n + 1))

end

end A119086.P12158614921713071311

/-! ## A119086.P9451619093554898945

`ceil(sqrt(2*A119085(n+1))-A262681(n))`
-/

namespace A119086.P9451619093554898945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * A119085 (n + 1) : ℝ) - (A262681 n : ℝ)⌉

end

end A119086.P9451619093554898945

/-! ## A119086.P15126549893789190676

`round(sqrt(2*A119085(n+1)))%A033674(n)`
-/

namespace A119086.P15126549893789190676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (2 * A119085 (n + 1) : ℝ))) (A033674 n)

end

end A119086.P15126549893789190676

/-! ## A119086.P13597844986003310691

`round(A033999(n)²*sqrt(2*A119085(n+1)))`
-/

namespace A119086.P13597844986003310691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A033999 n ^ 2 : ℝ) * Real.sqrt (2 * A119085 (n + 1) : ℝ))

end

end A119086.P13597844986003310691

/-! ## A119086.P13981628487958120309

`round(sqrt(2*A119085(n+1))*A065803(n+1)!)`
-/

namespace A119086.P13981628487958120309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A119085 (n + 1) : ℝ) * (Nat.factorial (A065803 (n + 1)).toNat : ℝ))

end

end A119086.P13981628487958120309

/-!
# A119087: Triangular numbers composed of digits {0,6,7}.

The programs for A119087, there is no canonical definition to state claims against.
-/

/-! ## A119087.P13097822885487278467

`A000217(A119088(n+1))`
-/

namespace A119087.P13097822885487278467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119088 (n + 1)).toNat

end

end A119087.P13097822885487278467

/-!
# A119088: Numbers k such that the k-th triangular number contains only digits {0,6,7}.

The programs for A119088, there is no canonical definition to state claims against.
-/

/-! ## A119088.P188211194958589632

`floor(sqrt(2*A119087(n+1)))`
-/

namespace A119088.P188211194958589632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119087 (n + 1))

end

end A119088.P188211194958589632

/-!
# A119089: Triangular numbers composed of digits {0,6,8}.

The programs for A119089, there is no canonical definition to state claims against.
-/

/-! ## A119089.P128136373954327187

`C(A119090(n+1)+1, 2)`
-/

namespace A119089.P128136373954327187
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A119090 (n + 1) + 1).toNat 2

end

end A119089.P128136373954327187

/-!
# A119090: Numbers k such that the k-th triangular number contains only digits {0,6,8}.

The programs for A119090, there is no canonical definition to state claims against.
-/

/-! ## A119090.P17012825491863266569

`floor(sqrt(2*A119089(n+1)))`
-/

namespace A119090.P17012825491863266569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119089 (n + 1))

end

end A119090.P17012825491863266569

/-!
# A119091: Triangular numbers composed of digits {0,6,9}.

The programs for A119091, there is no canonical definition to state claims against.
-/

/-! ## A119091.P6960982612019323025

`A000217(A119092(n+1))`
-/

namespace A119091.P6960982612019323025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119092 (n + 1)).toNat

end

end A119091.P6960982612019323025

/-! ## A119091.P3557485120883850020

`A161680(A119092(n+1)+1)`
-/

namespace A119091.P3557485120883850020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A119092 (n + 1) + 1).toNat

end

end A119091.P3557485120883850020

/-! ## A119091.P16064314793071054028

`A179865(A119092(n+1)+1)`
-/

namespace A119091.P16064314793071054028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A119092 (n + 1) + 1).toNat

end

end A119091.P16064314793071054028

/-! ## A119091.P10590652720577834847

`A253145(A119092(n+1)-1)`
-/

namespace A119091.P10590652720577834847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (A119092 (n + 1) - 1).toNat

end

end A119091.P10590652720577834847

/-!
# A119092: Numbers k such that the k-th triangular number contains only digits {0,6,9}.

The programs for A119092, there is no canonical definition to state claims against.
-/

/-! ## A119092.P13599437494925746115

`floor(sqrt(2*A119091(n+1)))`
-/

namespace A119092.P13599437494925746115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119091 (n + 1))

end

end A119092.P13599437494925746115

/-! ## A119092.P9870384795585050122

`A358391(A016116(n))+A145849(n+1)`
-/

namespace A119092.P9870384795585050122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358391 (A016116 n).toNat + A145849 (n + 1)

end

end A119092.P9870384795585050122

/-!
# A119093: Triangular numbers composed of digits {0,7,8}.

The programs for A119093, there is no canonical definition to state claims against.
-/

/-! ## A119093.P18038132536578355331

`A000217(A119094(n+1))`
-/

namespace A119093.P18038132536578355331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119094 (n + 1)).toNat

end

end A119093.P18038132536578355331

/-! ## A119093.P6539195844506176903

`C(A119094(n+1)+A110090(3*n+4), 2)`
-/

namespace A119093.P6539195844506176903
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A119094 (n + 1) + A110090 (3 * n + 4)).toNat 2

end

end A119093.P6539195844506176903

/-!
# A119094: Numbers k such that the k-th triangular number contains only digits {0,7,8}.

The programs for A119094, there is no canonical definition to state claims against.
-/

/-! ## A119094.P13666550405933092435

`floor(sqrt(2*A119093(n+1)))`
-/

namespace A119094.P13666550405933092435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119093 (n + 1))

end

end A119094.P13666550405933092435

/-!
# A119097: Triangular numbers composed of digits {1,2,3}.

The programs for A119097, there is no canonical definition to state claims against.
-/

/-! ## A119097.P18444682137946398323

`A000217(A119098(n+1))`
-/

namespace A119097.P18444682137946398323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119098 (n + 1)).toNat

end

end A119097.P18444682137946398323

/-! ## A119097.P4373235206656061460

`A064038(A119098(n+1)+1)`
-/

namespace A119097.P4373235206656061460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064038 (A119098 (n + 1) + 1).toNat

end

end A119097.P4373235206656061460

/-! ## A119097.P6644426919758963520

`A161680(A119098(n+1)+1)`
-/

namespace A119097.P6644426919758963520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A119098 (n + 1) + 1).toNat

end

end A119097.P6644426919758963520

/-! ## A119097.P14350668220436596903

`A179865(A119098(n+1)+1)`
-/

namespace A119097.P14350668220436596903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A119098 (n + 1) + 1).toNat

end

end A119097.P14350668220436596903

/-! ## A119097.P15000093335280745919

`∩[A007932(n+1), A000217(n)]`
-/

namespace A119097.P15000093335280745919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119097.P15000093335280745919

/-!
# A119098: Numbers k such that the k-th triangular number contains only digits {1,2,3}.

The programs for A119098, there is no canonical definition to state claims against.
-/

/-! ## A119098.P10917309735111124440

`floor(sqrt(2*A119097(n+1)))`
-/

namespace A119098.P10917309735111124440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119097 (n + 1))

end

end A119098.P10917309735111124440

/-! ## A119098.P1552446123596325266

`round(sqrt(2*A119097(n+1)))%A000747(n)`
-/

namespace A119098.P1552446123596325266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (2 * A119097 (n + 1) : ℝ))) (A000747 n)

end

end A119098.P1552446123596325266

/-! ## A119098.P2585560983972598362

`A000027(round(sqrt(2*A119097(n+1))))`
-/

namespace A119098.P2585560983972598362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (Real.sqrt (2 * A119097 (n + 1) : ℝ))).toNat

end

end A119098.P2585560983972598362

/-! ## A119098.P14042244665152405372

`A028310(round(sqrt(2*A119097(n+1))))`
-/

namespace A119098.P14042244665152405372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway (Real.sqrt (2 * A119097 (n + 1) : ℝ))).toNat

end

end A119098.P14042244665152405372

/-!
# A119099: Triangular numbers composed of digits {1,2,4}.

The programs for A119099, there is no canonical definition to state claims against.
-/

/-! ## A119099.P2066384138442913253

`A000217(A119100(n+1))`
-/

namespace A119099.P2066384138442913253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119100 (n + 1)).toNat

end

end A119099.P2066384138442913253

/-! ## A119099.P17570235997868745267

`A161680(A119100(n+1)+1)`
-/

namespace A119099.P17570235997868745267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A119100 (n + 1) + 1).toNat

end

end A119099.P17570235997868745267

/-! ## A119099.P18111424355396731807

`A179865(A119100(n+1)+1)`
-/

namespace A119099.P18111424355396731807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A119100 (n + 1) + 1).toNat

end

end A119099.P18111424355396731807

/-! ## A119099.P17754930109362645247

`A000096(A119100(n+1)-1)+1`
-/

namespace A119099.P17754930109362645247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A119100 (n + 1) - 1).toNat + 1

end

end A119099.P17754930109362645247

