import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
# A385304: Expansion of e.g.f. 1/(1 - 2 * sinh(x))^(1/2).

The programs for A385304, there is no canonical definition to state claims against.
-/

/-! ## A385304.P17488406095571842976

`A143599(n)+A093391(A066068(n))`
-/

namespace A385304.P17488406095571842976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143599 n + A093391 (A066068 n).toNat

end

end A385304.P17488406095571842976

/-! ## A385304.P17432864509545081407

`A028310(A072597(n)-A305986(n))`
-/

namespace A385304.P17432864509545081407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A072597 n - A305986 n).toNat

end

end A385304.P17432864509545081407

/-!
# A385305: Expansion of e.g.f. 1/(1 - 3 * sinh(x))^(1/3).

The programs for A385305, there is no canonical definition to state claims against.
-/

/-! ## A385305.P11526528344731533094

`A088804(A045631(n))`
-/

namespace A385305.P11526528344731533094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088804 (A045631 n).toNat

end

end A385305.P11526528344731533094

/-!
# A385306: Expansion of e.g.f. 1/(1 - 2 * sin(x))^(1/2).

The programs for A385306, there is no canonical definition to state claims against.
-/

/-! ## A385306.P4443797555568487249

`filter[A195134(n), A022932(#)]`
-/

namespace A385306.P4443797555568487249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195134 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A022932 (f1 j).toNat = 1) n)

end

end A385306.P4443797555568487249

/-! ## A385306.P13287288861103469699

`A005185(∑[n]*A241842(n+1)+1)`
-/

namespace A385306.P13287288861103469699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A241842 (n + 1) + 1).toNat

end

end A385306.P13287288861103469699

/-!
# A385307: Expansion of e.g.f. 1/(1 - 3 * sin(x))^(1/3).

The programs for A385307, there is no canonical definition to state claims against.
-/

/-! ## A385307.P17813333421479239406

`A084469(n^n)`
-/

namespace A385307.P17813333421479239406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084469 (n ^ n)

end

end A385307.P17813333421479239406

/-!
# A385308: Expansion of e.g.f. 1/(1 - 2 * x * cosh(x))^(1/2).

The programs for A385308, there is no canonical definition to state claims against.
-/

/-! ## A385308.P6277316138376098321

`A322467(n^n)`
-/

namespace A385308.P6277316138376098321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322467 (n ^ n)

end

end A385308.P6277316138376098321

/-!
# A385309: Expansion of e.g.f. 1/(1 - 3 * x * cosh(x))^(1/3).

The programs for A385309, there is no canonical definition to state claims against.
-/

/-! ## A385309.P2848160709321712113

`A286302(A249582(n))`
-/

namespace A385309.P2848160709321712113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286302 (A249582 n).toNat

end

end A385309.P2848160709321712113

/-!
# A385310: Expansion of e.g.f. 1/(1 - 2 * x * cos(x))^(1/2).

The programs for A385310, there is no canonical definition to state claims against.
-/

/-! ## A385310.P9762098525695325473

`A247176(A000262(n))+1`
-/

namespace A385310.P9762098525695325473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247176 (A000262 n).toNat + 1

end

end A385310.P9762098525695325473

/-! ## A385310.P8124450396226638783

`A008621(A002874(n)+n)`
-/

namespace A385310.P8124450396226638783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A002874 n + (n : ℤ)).toNat

end

end A385310.P8124450396226638783

/-!
# A385311: Expansion of e.g.f. 1/(1 - 3 * x * cos(x))^(1/3).

The programs for A385311, there is no canonical definition to state claims against.
-/

/-! ## A385311.P6502114463938304318

`A055256(∏[2*n+1])`
-/

namespace A385311.P6502114463938304318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055256 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A385311.P6502114463938304318

/-!
# A385312: a(n) is the number of ternary strings of length n with at least one 0, at least two 1's and at least three 2's.

The programs for A385312, there is no canonical definition to state claims against.
-/

/-! ## A385312.P16754052551447654923

`A048720(C(A000041(n), 8))`
-/

namespace A385312.P16754052551447654923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048720 (Nat.choose (A000041 n).toNat 8)

end

end A385312.P16754052551447654923

/-! ## A385312.P13400908654990529872

`A000332(n)*A357638(A054599(n))`
-/

namespace A385312.P13400908654990529872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 n * A357638 (A054599 n).toNat

end

end A385312.P13400908654990529872

/-! ## A385312.P8503269632083242780

`A000910(n)*A324704(A037443(n+1))`
-/

namespace A385312.P8503269632083242780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000910 n * A324704 (A037443 (n + 1)).toNat

end

end A385312.P8503269632083242780

/-! ## A385312.P18194525181900815324

`A008587(n)*A355532(A112960(n+1))`
-/

namespace A385312.P18194525181900815324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 n * A355532 (A112960 (n + 1)).toNat

end

end A385312.P18194525181900815324

/-!
# A385313: a(n) = c(n) + Sum_{d|n} d * phi(n/d) * (1 - c(d)), where c = A010051.

The programs for A385313, there is no canonical definition to state claims against.
-/

/-! ## A385313.P2090871860569150372

`∑{d}[n+1, A008683(#)*A380447((n+1)/#)]`
-/

namespace A385313.P2090871860569150372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A380447 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A385313.P2090871860569150372

/-!
# A385317: G.f. A(x) satisfies A(x) = 1 + x*(1+x^2)^3*A(x)^3.

The programs for A385317, there is no canonical definition to state claims against.
-/

/-! ## A385317.P14349709498728823316

`A187185(A006130(2*n))`
-/

namespace A385317.P14349709498728823316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187185 (A006130 (2 * n)).toNat

end

end A385317.P14349709498728823316

/-! ## A385317.P5826161944392390558

`A357161(n)+A334209(A000088(n))`
-/

namespace A385317.P5826161944392390558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357161 n + A334209 (A000088 n).toNat

end

end A385317.P5826161944392390558

/-!
# A385319: a(n) = Sum_{k=0..n} 2^k * binomial(2*n,k) * binomial(2*n-k-1,n-k).

The programs for A385319, there is no canonical definition to state claims against.
-/

/-! ## A385319.P4813507514849984864

`A193856(2*n²)`
-/

namespace A385319.P4813507514849984864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193856 (2 * n ^ 2)

end

end A385319.P4813507514849984864

/-! ## A385319.P18168861290705017749

`A193857(A001105(n)-A178334(n))`
-/

namespace A385319.P18168861290705017749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193857 (A001105 n - A178334 n).toNat

end

end A385319.P18168861290705017749

/-! ## A385319.P3905403040211641073

`A193857(A056220(n)%A110520(n))`
-/

namespace A385319.P3905403040211641073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193857 (Int.tmod (A056220 n) (A110520 n)).toNat

end

end A385319.P3905403040211641073

/-! ## A385319.P13124794214384407293

`A178334(n+4)*A193856(A001105(n))`
-/

namespace A385319.P13124794214384407293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (n + 4) * A193856 (A001105 n).toNat

end

end A385319.P13124794214384407293

/-! ## A385319.P16224034453975006777

`A193856(A001105(n))+A007814(2*n+1)`
-/

namespace A385319.P16224034453975006777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193856 (A001105 n).toNat + A007814 (2 * n + 1)

end

end A385319.P16224034453975006777

/-! ## A385319.P7580512520162614082

`A193856(A001105(n))+A000038(3*n+1)`
-/

namespace A385319.P7580512520162614082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193856 (A001105 n).toNat + A000038 (3 * n + 1)

end

end A385319.P7580512520162614082

/-! ## A385319.P17744572735263214968

`A193856(A001105(n))+A000007(2*n+3)`
-/

namespace A385319.P17744572735263214968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193856 (A001105 n).toNat + A000007 (2 * n + 3)

end

end A385319.P17744572735263214968

/-!
# A385320: a(n) = Sum_{k=0..n} 2^k * binomial(3*n,k) * binomial(3*n-k-1,n-k).

The programs for A385320, there is no canonical definition to state claims against.
-/

/-! ## A385320.P18113905023886913060

`A193856(A022266(n))`
-/

namespace A385320.P18113905023886913060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193856 (A022266 n).toNat

end

end A385320.P18113905023886913060

/-!
# A385321: Number of 3-dimensional permutation arrays of size n X n X n.

The programs for A385321, there is no canonical definition to state claims against.
-/

/-! ## A385321.P13922099453044252096

`A330490(A167614(n+1))`
-/

namespace A385321.P13922099453044252096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330490 (A167614 (n + 1)).toNat

end

end A385321.P13922099453044252096

/-! ## A385321.P7134551914638187668

`A330490(eq[3, A002260(n+1)]+1)`
-/

namespace A385321.P7134551914638187668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330490 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A385321.P7134551914638187668

/-!
# A385322: E.g.f. A(x) satisfies A(x) = exp(x + x^2/2 * A'(x)).

The programs for A385322, there is no canonical definition to state claims against.
-/

/-! ## A385322.P462989484626511508

`A381243(n)+A381226(A362362(n))`
-/

namespace A385322.P462989484626511508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381243 n + A381226 (A362362 n).toNat

end

end A385322.P462989484626511508

/-! ## A385322.P13307823574758515346

`A201595(n)-A023443(A222865(n))`
-/

namespace A385322.P13307823574758515346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201595 n - A023443 (A222865 n).toNat

end

end A385322.P13307823574758515346

/-!
# A385324: Numbers whose digits are all powers of the same single-digit base.

The programs for A385324, there is no canonical definition to state claims against.
-/

/-! ## A385324.P9448158952336090937

`lt[A269987(2*(n+2)), A068459(A375407(n+2))]`
-/

namespace A385324.P9448158952336090937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269987 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068459 (A375407 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A385324.P9448158952336090937

/-!
# A385325: Numbers x such that there exist two integers y, z both >0 such that sigma(x)^3 = x^3 + y^3 + z^3.

The programs for A385325, there is no canonical definition to state claims against.
-/

/-! ## A385325.P1674307482639263545

`A396309(A113929(n+1))`
-/

namespace A385325.P1674307482639263545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396309 (A113929 (n + 1)).toNat

end

end A385325.P1674307482639263545

/-! ## A385325.P10762311477738410348

`∩[A103841(n+1), A396309(n+1)]`
-/

namespace A385325.P10762311477738410348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103841 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385325.P10762311477738410348

/-!
# A385326: The number of positive k <= 2*n + 1 such that 2*n + 1 divides (2^k + 2*n + 1)^2 - 1.

The programs for A385326, there is no canonical definition to state claims against.
-/

/-! ## A385326.P9783184458152015848

`floor((2*n+1)/A053447(n))`
-/

namespace A385326.P9783184458152015848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n + 1 : ℚ) / (A053447 n : ℚ)⌋

end

end A385326.P9783184458152015848

/-!
# A385327: The numbers of people such that, in the variant of the Josephus problem in which three people are skipped and then one is eliminated, the first person is the last to be eliminated.

The programs for A385327, there is no canonical definition to state claims against.
-/

/-! ## A385327.P11751288452462852850

`A346704(A025047(3*n))+A015614(n+1)`
-/

namespace A385327.P11751288452462852850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346704 (A025047 (3 * n)).toNat + A015614 (n + 1)

end

end A385327.P11751288452462852850

/-!
# A385329: a(n) = 5^n - 2*4^(n-1)*(n+4) + 3^(n-2)*(n^2+5*n+9).

The programs for A385329, the canonical program `A385329.P12246320153405122947` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385329 has offset 0).

The definition of A385329 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A385329.P12246320153405122947

`5^n-2*4^(n-1)*(n+4)+3^(n-2)*(n²+5*n+9)`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A385329

/-- `5^n-2*4^(n-1)*(n+4)+3^(n-2)*(n²+5*n+9)` -/
def P12246320153405122947.Spec : Prop :=
  ∀ n, P12246320153405122947.a n = (A385329 n : ℚ)

end A385329

/-! ## A385329.P17600976647518900662

`A241702(∑[∏{e}[n, #+1]]-∑{e}[n+1, #])`
-/

namespace A385329.P17600976647518900662
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241702 (∑ j ∈ Finset.range (n + 1), f1 j - ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p)

end

end A385329.P17600976647518900662

namespace A385329

/-- `A241702(∑[∏{e}[n, #+1]]-∑{e}[n+1, #])` -/
def P17600976647518900662.Spec : Prop :=
  ∀ n, P17600976647518900662.a n = A385329 n

end A385329

/-!
# A385330: The point numbers encountered by a rotating marker following the process described in the Comments.

The programs for A385330, there is no canonical definition to state claims against.
-/

/-! ## A385330.P4358807454790900393

`A057515(A010352(n+1)-A074206(n))`
-/

namespace A385330.P4358807454790900393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057515 (A010352 (n + 1) - A074206 n).toNat

end

end A385330.P4358807454790900393

/-! ## A385330.P11600583416460423580

`A394091(A289439(n+2)^A051903(n+1))`
-/

namespace A385330.P11600583416460423580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394091 (SequenceMachineLib.roundAway ((A289439 (n + 2) : ℚ) ^ (A051903 (n + 1) : ℤ))).toNat

end

end A385330.P11600583416460423580

/-! ## A385330.P14970386799932613487

`A244316(or(A048692(n+1), A298501(n+1)))`
-/

namespace A385330.P14970386799932613487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244316 (Int.lor (A048692 (n + 1)) (A298501 (n + 1))).toNat

end

end A385330.P14970386799932613487

/-! ## A385330.P11488087404786612678

`A357137(A364297(2*(n+2)))*A357138(n+1)`
-/

namespace A385330.P11488087404786612678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357137 (A364297 (2 * (n + 2))).toNat * A357138 (n + 1)

end

end A385330.P11488087404786612678

/-! ## A385330.P10288955606397037974

`A161789(A023106(n+1))`
-/

namespace A385330.P10288955606397037974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161789 (A023106 (n + 1)).toNat

end

end A385330.P10288955606397037974

/-!
# A385333: The numbers of people such that, in the variant of the Josephus problem in which three people are skipped and then one is eliminated, the last person is the last to be eliminated.

The programs for A385333, there is no canonical definition to state claims against.
-/

/-! ## A385333.P11084346080889083163

`eq[n, A088333(A028310(n))]`
-/

namespace A385333.P11084346080889083163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088333 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A385333.P11084346080889083163

/-!
# A385334: Cat number of complete graphs on n vertices.

The programs for A385334, the canonical program `A385334.P15710315618376552621` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385334 has offset 1).

The definition of A385334 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A385334.P15710315618376552621

`floor((n+1)/2)*ceil((n+1)/2)+a(ceil((n+1)/2)-1)` with `a(0)=0, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A385334

/-- `floor((n+1)/2)*ceil((n+1)/2)+a(ceil((n+1)/2)-1)` -/
def P15710315618376552621.Spec : Prop :=
  ∀ n, P15710315618376552621.a n = A385334 (n + 1)

theorem P15710315618376552621.correct : P15710315618376552621.Spec := by
  intro n
  simp only [A385334, Nat.add_sub_cancel]

end A385334

/-! ## A385334.P1140849644983520429

`xor(A007952(n), A288991(A101127(n)))`
-/

namespace A385334.P1140849644983520429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007952 n) (A288991 (A101127 n).toNat)

end

end A385334.P1140849644983520429

namespace A385334

/-- `xor(A007952(n), A288991(A101127(n)))` -/
def P1140849644983520429.Spec : Prop :=
  ∀ n, P1140849644983520429.a n = A385334 (n + 1)

end A385334

/-! ## A385334.P7920834712192969417

`A135013(n+1)-A094603(A000108(n))`
-/

namespace A385334.P7920834712192969417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135013 (n + 1) - A094603 (A000108 n).toNat

end

end A385334.P7920834712192969417

namespace A385334

/-- `A135013(n+1)-A094603(A000108(n))` -/
def P7920834712192969417.Spec : Prop :=
  ∀ n, P7920834712192969417.a n = A385334 (n + 1)

end A385334

/-!
# A385343: Exponential Riordan array (1, arcsin(x)).

The programs for A385343, there is no canonical definition to state claims against.
-/

/-! ## A385343.P12056196624165978483

`A326441(A256041(n))`
-/

namespace A385343.P12056196624165978483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326441 (A256041 n).toNat

end

end A385343.P12056196624165978483

/-! ## A385343.P2794155460703841888

`A136630(n)*A225336(A000040(n+1))`
-/

namespace A385343.P2794155460703841888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136630 n * A225336 (A000040 (n + 1)).toNat

end

end A385343.P2794155460703841888

/-! ## A385343.P13933762152108040997

`A136630(n)*A241479(A252574(n+1)+2)`
-/

namespace A385343.P13933762152108040997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136630 n * A241479 (A252574 (n + 1) + 2).toNat

end

end A385343.P13933762152108040997

/-! ## A385343.P16730623458361599482

`A136630(n)*A153452(A334337(n+2))`
-/

namespace A385343.P16730623458361599482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136630 n * A153452 (A334337 (n + 2)).toNat

end

end A385343.P16730623458361599482

/-! ## A385343.P1004756083839204345

`(A124305(n)%A160474(n+5))²`
-/

namespace A385343.P1004756083839204345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124305 n) (A160474 (n + 5)) ^ 2

end

end A385343.P1004756083839204345

/-!
# A385345: Numbers without a prime factor with a digit larger than 1.

The programs for A385345, there is no canonical definition to state claims against.
-/

/-! ## A385345.P15681644593587165169

`filter[A073880(2*n+1), A189097(#)]`
-/

namespace A385345.P15681644593587165169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073880 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189097 (f1 j).toNat = 1) n)

end

end A385345.P15681644593587165169

/-!
# A385346: Expansion of e.g.f. 1/(1 - 2 * arcsin(x)).

The programs for A385346, there is no canonical definition to state claims against.
-/

/-! ## A385346.P2474845720537843121

`A235049(A063074(n)+A001221(n+3))`
-/

namespace A385346.P2474845720537843121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A063074 n + A001221 (n + 3)).toNat

end

end A385346.P2474845720537843121

/-! ## A385346.P4622694505687224312

`A235049(A333381(n+4)+A063074(n))`
-/

namespace A385346.P4622694505687224312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A333381 (n + 4) + A063074 n).toNat

end

end A385346.P4622694505687224312

/-!
# A385349: Product of odd proper divisors of n.

The programs for A385349, the canonical program `A385349.P6182123105730510131` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385349 has offset 1).

The definition of A385349 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A385349.P6182123105730510131

`gcd(A007956(n+1), A136655(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A385349

/-- `gcd(A007956(n+1), A136655(n+1))` -/
def P6182123105730510131.Spec : Prop :=
  ∀ n, (P6182123105730510131.a n : ℤ) = A385349 (n + 1)

theorem P6182123105730510131.correct : P6182123105730510131.Spec := by
  intro n
  simp only [A385349, Nat.add_sub_cancel]

end A385349

/-! ## A385349.P10280416093557433147

`A396067(A097053(n+1))`
-/

namespace A385349.P10280416093557433147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396067 (A097053 (n + 1)).toNat

end

end A385349.P10280416093557433147

namespace A385349

/-- `A396067(A097053(n+1))` -/
def P10280416093557433147.Spec : Prop :=
  ∀ n, P10280416093557433147.a n = A385349 (n + 1)

end A385349

/-! ## A385349.P10502066200704345704

`gcd(A162444(n+1), A205959(n+1))`
-/

namespace A385349.P10502066200704345704
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A162444 (n + 1)) (A205959 (n + 1))

end

end A385349.P10502066200704345704

namespace A385349

/-- `gcd(A162444(n+1), A205959(n+1))` -/
def P10502066200704345704.Spec : Prop :=
  ∀ n, (P10502066200704345704.a n : ℤ) = A385349 (n + 1)

end A385349

/-! ## A385349.P14501452906282284673

`A000265(∏{p}[n+1, ceil(n/#)]%A129152(n))`
-/

namespace A385349.P14501452906282284673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (Int.tmod (∏ p ∈ Nat.primeFactors (f1 n), ⌈(n : ℚ) / (p : ℚ)⌉) (A129152 n)).toNat

end

end A385349.P14501452906282284673

namespace A385349

/-- `A000265(∏{p}[n+1, ceil(n/#)]%A129152(n))` -/
def P14501452906282284673.Spec : Prop :=
  ∀ n, P14501452906282284673.a n = A385349 (n + 1)

end A385349

/-! ## A385349.P7648441317011697799

`A000265(A205959(n+1)%A350332(2*n+1))`
-/

namespace A385349.P7648441317011697799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (Int.tmod (A205959 (n + 1)) (A350332 (2 * n + 1))).toNat

end

end A385349.P7648441317011697799

namespace A385349

/-- `A000265(A205959(n+1)%A350332(2*n+1))` -/
def P7648441317011697799.Spec : Prop :=
  ∀ n, P7648441317011697799.a n = A385349 (n + 1)

end A385349

/-!
# A385350: Numbers j such that the product of odd proper divisors of j is j.

The programs for A385350, the canonical program `A385350.P6185656812643599907` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385350 has offset 1).

The definition of A385350 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7685 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A385350.P9610298328537171597

`∩[2*n+1, A007422(n+1)]`
-/

namespace A385350.P9610298328537171597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385350.P9610298328537171597

namespace A385350

/-- `∩[2*n+1, A007422(n+1)]` -/
def P9610298328537171597.Spec : Prop :=
  ∀ n, (P9610298328537171597.a n : ℤ) = A385350 (n + 1)

end A385350

/-! ## A385350.P6185656812643599907

`filter[A007422(n+1), A035263(#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A385350

/-- `filter[A007422(n+1), A035263(#)]` -/
def P6185656812643599907.Spec : Prop :=
  ∀ n, P6185656812643599907.a n = A385350 (n + 1)

theorem P6185656812643599907.correct : P6185656812643599907.Spec := by
  intro n
  simp only [A385350, Nat.add_sub_cancel]

end A385350

/-! ## A385350.P8447724565172778352

`filter[A007422(n+1), A322980(#)]`
-/

namespace A385350.P8447724565172778352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322980 (f1 j).toNat = 1) n)

end

end A385350.P8447724565172778352

namespace A385350

/-- `filter[A007422(n+1), A322980(#)]` -/
def P8447724565172778352.Spec : Prop :=
  ∀ n, P8447724565172778352.a n = A385350 (n + 1)

end A385350

/-! ## A385350.P2193350094783250321

`filter[A007422(n+1), A374134(#)]`
-/

namespace A385350.P2193350094783250321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A385350.P2193350094783250321

namespace A385350

/-- `filter[A007422(n+1), A374134(#)]` -/
def P2193350094783250321.Spec : Prop :=
  ∀ n, P2193350094783250321.a n = A385350 (n + 1)

end A385350

/-! ## A385350.P15149026604308124917

`filter[A007422(n+1), A379952(#)]`
-/

namespace A385350.P15149026604308124917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A385350.P15149026604308124917

namespace A385350

/-- `filter[A007422(n+1), A379952(#)]` -/
def P15149026604308124917.Spec : Prop :=
  ∀ n, P15149026604308124917.a n = A385350 (n + 1)

end A385350

/-! ## A385350.P9657050408851623928

`filter[A067800(n+1), A354927(#)]`
-/

namespace A385350.P9657050408851623928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A385350.P9657050408851623928

namespace A385350

/-- `filter[A067800(n+1), A354927(#)]` -/
def P9657050408851623928.Spec : Prop :=
  ∀ n, P9657050408851623928.a n = A385350 (n + 1)

end A385350

/-! ## A385350.P1780998877061641324

`filter[A014076(n+1), A354927(#)]`
-/

namespace A385350.P1780998877061641324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A385350.P1780998877061641324

namespace A385350

/-- `filter[A014076(n+1), A354927(#)]` -/
def P1780998877061641324.Spec : Prop :=
  ∀ n, P1780998877061641324.a n = A385350 (n + 1)

end A385350

/-! ## A385350.P15168995187246729834

`∩[A007422(n+1), A014076(n+1)]`
-/

namespace A385350.P15168995187246729834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385350.P15168995187246729834

namespace A385350

/-- `∩[A007422(n+1), A014076(n+1)]` -/
def P15168995187246729834.Spec : Prop :=
  ∀ n, (P15168995187246729834.a n : ℤ) = A385350 (n + 1)

end A385350

/-! ## A385350.P4885946724650050116

`filter[A182318(n+1), A354927(#)]`
-/

namespace A385350.P4885946724650050116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182318 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A385350.P4885946724650050116

namespace A385350

/-- `filter[A182318(n+1), A354927(#)]` -/
def P4885946724650050116.Spec : Prop :=
  ∀ n, P4885946724650050116.a n = A385350 (n + 1)

end A385350

/-! ## A385350.P5109474405000955063

`filter[A046642(n+1), A354927(#)]`
-/

namespace A385350.P5109474405000955063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046642 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A385350.P5109474405000955063

namespace A385350

/-- `filter[A046642(n+1), A354927(#)]` -/
def P5109474405000955063.Spec : Prop :=
  ∀ n, P5109474405000955063.a n = A385350 (n + 1)

end A385350

/-! ## A385350.P7164841353914426321

`filter[A255763(n+1), A354927(#)]`
-/

namespace A385350.P7164841353914426321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A385350.P7164841353914426321

namespace A385350

/-- `filter[A255763(n+1), A354927(#)]` -/
def P7164841353914426321.Spec : Prop :=
  ∀ n, P7164841353914426321.a n = A385350 (n + 1)

end A385350

/-! ## A385350.P1881352856584290631

`filter[A089684(n+1), A354927(#)]`
-/

namespace A385350.P1881352856584290631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A385350.P1881352856584290631

namespace A385350

/-- `filter[A089684(n+1), A354927(#)]` -/
def P1881352856584290631.Spec : Prop :=
  ∀ n, P1881352856584290631.a n = A385350 (n + 1)

end A385350

/-! ## A385350.P2232827618207811207

`filter[A223134(n), A354927(#)]`
-/

namespace A385350.P2232827618207811207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223134 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A385350.P2232827618207811207

namespace A385350

/-- `filter[A223134(n), A354927(#)]` -/
def P2232827618207811207.Spec : Prop :=
  ∀ n, P2232827618207811207.a n = A385350 (n + 1)

end A385350

/-! ## A385350.P7991350949549875892

`filter[A004273(n+1), A354927(#)]`
-/

namespace A385350.P7991350949549875892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A385350.P7991350949549875892

namespace A385350

/-- `filter[A004273(n+1), A354927(#)]` -/
def P7991350949549875892.Spec : Prop :=
  ∀ n, P7991350949549875892.a n = A385350 (n + 1)

end A385350

/-! ## A385350.P13932508447170567061

`filter[A140139(n+1), A354927(#)]`
-/

namespace A385350.P13932508447170567061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140139 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A385350.P13932508447170567061

namespace A385350

/-- `filter[A140139(n+1), A354927(#)]` -/
def P13932508447170567061.Spec : Prop :=
  ∀ n, P13932508447170567061.a n = A385350 (n + 1)

end A385350

/-! ## A385350.P2788316230719413734

`filter[A267872(n+1), A354927(#)]`
-/

namespace A385350.P2788316230719413734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A385350.P2788316230719413734

namespace A385350

/-- `filter[A267872(n+1), A354927(#)]` -/
def P2788316230719413734.Spec : Prop :=
  ∀ n, P2788316230719413734.a n = A385350 (n + 1)

end A385350

/-! ## A385350.P18042786730971232159

`filter[A267873(n+1), A354927(#)]`
-/

namespace A385350.P18042786730971232159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A385350.P18042786730971232159

namespace A385350

/-- `filter[A267873(n+1), A354927(#)]` -/
def P18042786730971232159.Spec : Prop :=
  ∀ n, P18042786730971232159.a n = A385350 (n + 1)

end A385350

/-!
# A385351: Perfect powers whose digits are all powers of the same single-digit base.

The programs for A385351, there is no canonical definition to state claims against.
-/

/-! ## A385351.P5172591914157921245

`∩[A001597(n+1), A385324(n+1)]`
-/

namespace A385351.P5172591914157921245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385324 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385351.P5172591914157921245

/-! ## A385351.P17509315977930055936

`∩[A359493(n+1), A385324(n+1)]`
-/

namespace A385351.P17509315977930055936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385324 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385351.P17509315977930055936

/-! ## A385351.P2874718637779331895

`A388719(A396163(n+1))`
-/

namespace A385351.P2874718637779331895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388719 (A396163 (n + 1)).toNat

end

end A385351.P2874718637779331895

/-!
# A385352: Number of sums i^2 + j^2 that occur more than once for 1 <= i <= j <= n.

The programs for A385352, there is no canonical definition to state claims against.
-/

/-! ## A385352.P10793822528992993319

`A061790(n+1)%A343577(n)`
-/

namespace A385352.P10793822528992993319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061790 (n + 1)) (A343577 n)

end

end A385352.P10793822528992993319

/-! ## A385352.P10662153997060871623

`lcm(A011596(A210736(n)), A061790(n+1))`
-/

namespace A385352.P10662153997060871623
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A011596 (A210736 n).toNat) (A061790 (n + 1))

end

end A385352.P10662153997060871623

/-!
# A385355: Triangular array read by rows: T(n,k) is the number of n X n matrices A over GF(2) such that the dimension of the null space of A^n is equal to k, n>=0, 0<=k<=n.

The programs for A385355, there is no canonical definition to state claims against.
-/

/-! ## A385355.P12590482458785323070

`A348958(A061579(n))`
-/

namespace A385355.P12590482458785323070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348958 (A061579 n).toNat

end

end A385355.P12590482458785323070

/-! ## A385355.P11438347665722148645

`A336134(A296339(3*n+1)+A151827(n+2))`
-/

namespace A385355.P11438347665722148645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336134 (A296339 (3 * n + 1) + A151827 (n + 2)).toNat

end

end A385355.P11438347665722148645

/-! ## A385355.P10967285465730193268

`A321648(A088902(A088902(n+1)-n))`
-/

namespace A385355.P10967285465730193268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321648 (A088902 (A088902 (n + 1) - (n : ℤ)).toNat).toNat

end

end A385355.P10967285465730193268

/-!
# A385366: a(n) = Sum_{permutations p of [n]} des(p^2), where des(p) is the number of descents of p.

The programs for A385366, there is no canonical definition to state claims against.
-/

/-! ## A385366.P6259504075961224238

`a(n-1)*n+n!*n` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A385366.P6259504075961224238
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2] fun n a =>
  a (n - 1) * n + Nat.factorial n * n

end

end A385366.P6259504075961224238

/-! ## A385366.P11906728755334421203

`A000142(n)*A289207(n*(n+1)/2)`
-/

namespace A385366.P11906728755334421203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A289207 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 1 : ℚ) / 2))).toNat

end

end A385366.P11906728755334421203

/-! ## A385366.P12579929403527548184

`n!*A048766(A179058(n+1))`
-/

namespace A385366.P12579929403527548184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A048766 (A179058 (n + 1)).toNat

end

end A385366.P12579929403527548184

/-!
# A385367: Expansion of e.g.f. 1/(1 - 2 * arcsinh(x)).

The programs for A385367, there is no canonical definition to state claims against.
-/

/-! ## A385367.P15050342392218901190

`A161198(A389617(n+2)%A196418(n+5))`
-/

namespace A385367.P15050342392218901190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161198 (Int.tmod (A389617 (n + 2)) (A196418 (n + 5))).toNat

end

end A385367.P15050342392218901190

/-! ## A385367.P1840482570648775235

`A161198(A389617(n+2))%A324936(3*n+4)`
-/

namespace A385367.P1840482570648775235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161198 (A389617 (n + 2)).toNat) (A324936 (3 * n + 4))

end

end A385367.P1840482570648775235

/-!
# A385369: Expansion of e.g.f. x + sqrt(x^2 + 1).

The programs for A385369, there is no canonical definition to state claims against.
-/

/-! ## A385369.P10715978793875928438

`(1-(2-n)²)*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A385369.P10715978793875928438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (1 - (2 - (n : ℤ)) ^ 2) * a (n - 2)

end

end A385369.P10715978793875928438

/-! ## A385369.P10575185524123972654

`(1-n)*(n-3)*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A385369.P10575185524123972654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (1 - (n : ℤ)) * (((n : ℤ) - 3) * a (n - 2))

end

end A385369.P10575185524123972654

/-! ## A385369.P11259789228445362526

`A177698(A233583(n+1)-1)`
-/

namespace A385369.P11259789228445362526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177698 (A233583 (n + 1) - 1).toNat

end

end A385369.P11259789228445362526

/-! ## A385369.P17421110636960856637

`A384216(A186752(n+2))`
-/

namespace A385369.P17421110636960856637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384216 (A186752 (n + 2)).toNat

end

end A385369.P17421110636960856637

/-!
# A385371: Expansion of e.g.f. 1/(1 - 2 * arcsinh(x))^(1/2).

The programs for A385371, there is no canonical definition to state claims against.
-/

/-! ## A385371.P13451957312223171879

`∏[abs(1-2*n)]-A003415(A296406(n))`
-/

namespace A385371.P13451957312223171879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (2 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A003415 (A296406 n).toNat

end

end A385371.P13451957312223171879

/-! ## A385371.P7892047907713004982

`A074286(A196555(n)+A004074(n+1))`
-/

namespace A385371.P7892047907713004982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074286 (A196555 n + A004074 (n + 1)).toNat

end

end A385371.P7892047907713004982

/-!
# A385372: Expansion of e.g.f. 1/(1 - 3 * arcsinh(x))^(1/3).

The programs for A385372, there is no canonical definition to state claims against.
-/

/-! ## A385372.P12492378476807300356

`A046080(A002465(n))+A002465(n)`
-/

namespace A385372.P12492378476807300356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (A002465 n).toNat + A002465 n

end

end A385372.P12492378476807300356

/-! ## A385372.P16367609293227881852

`A362681(A001927(n))+A002465(n)`
-/

namespace A385372.P16367609293227881852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362681 (A001927 n).toNat + A002465 n

end

end A385372.P16367609293227881852

/-!
# A385373: Number of solid partitions with multiplicities (1, ..., n).

The programs for A385373, there is no canonical definition to state claims against.
-/

/-! ## A385373.P14976224601558170851

`A379277(A000085(n)*A120959(n))`
-/

namespace A385373.P14976224601558170851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379277 (A000085 n * A120959 n).toNat

end

end A385373.P14976224601558170851

/-!
# A385374: a(n) is the number of partitions of n into tau(n) distinct parts.

The programs for A385374, there is no canonical definition to state claims against.
-/

/-! ## A385374.P653353573658161990

`A060016(A000005(n+1)+n*(n+1)/2)`
-/

namespace A385374.P653353573658161990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060016 (SequenceMachineLib.roundAway ((A000005 (n + 1) : ℚ) + (n : ℚ) * ((n + 1 : ℚ) / 2))).toNat

end

end A385374.P653353573658161990

/-! ## A385374.P3833932305052540824

`A060016(A000217(n)+A000005(n+1))`
-/

namespace A385374.P3833932305052540824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060016 (A000217 n + A000005 (n + 1)).toNat

end

end A385374.P3833932305052540824

/-! ## A385374.P6286902379264451428

`A046073(n+1)+A010892(A011782(n+2))`
-/

namespace A385374.P6286902379264451428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046073 (n + 1) + A010892 (A011782 (n + 2)).toNat

end

end A385374.P6286902379264451428

/-! ## A385374.P437993106207427861

`C(A202453(n+1), A356224(A162657(n+1)))`
-/

namespace A385374.P437993106207427861
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A202453 (n + 1)).toNat (A356224 (A162657 (n + 1)).toNat).toNat

end

end A385374.P437993106207427861

/-! ## A385374.P804466171622993039

`A141612(A157919(n+1))`
-/

namespace A385374.P804466171622993039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141612 (A157919 (n + 1)).toNat

end

end A385374.P804466171622993039

/-!
# A385375: Numbers k that can't be partitioned into tau(k) distinct parts.

The programs for A385375, there is no canonical definition to state claims against.
-/

/-! ## A385375.P8192088595548349998

`lt[A385374(n+1), 1]+1`
-/

namespace A385375.P8192088595548349998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385374 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A385375.P8192088595548349998

/-! ## A385375.P3223141298618773610

`lt[n+1, A184389(n+1)]+1`
-/

namespace A385375.P3223141298618773610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184389 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A385375.P3223141298618773610

/-! ## A385375.P9167409271597302720

`∩[A067698(n+1), A352107(n+1)]`
-/

namespace A385375.P9167409271597302720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067698 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352107 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385375.P9167409271597302720

/-! ## A385375.P11684525910559416862

`lt[A191257(n+1), A035116(n+1)]+1`
-/

namespace A385375.P11684525910559416862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191257 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035116 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A385375.P11684525910559416862

/-! ## A385375.P10501080769820634461

`eq[A294929(2*(n+2)), A385374(n+1)]+1`
-/

namespace A385375.P10501080769820634461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294929 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385374 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A385375.P10501080769820634461

/-!
# A385377: Expansion of e.g.f. 1/(1 - 3 * arcsin(x))^(1/3).

The programs for A385377, there is no canonical definition to state claims against.
-/

/-! ## A385377.P188897532706011941

`A385305(n)+A184945(A290436(n))`
-/

namespace A385377.P188897532706011941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385305 n + A184945 (A290436 n).toNat

end

end A385377.P188897532706011941

/-! ## A385377.P15949030390351981749

`A265711(A007559(n)+char[A215602(3*n+1)])`
-/

namespace A385377.P15949030390351981749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215602 (3 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265711 (A007559 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A385377.P15949030390351981749

/-!
# A385378: The maximum possible number of distinct factors in the factorization of n into prime powers (A246655).

The programs for A385378, the canonical program `A385378.P16507919324572335447` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385378 has offset 1).

The definition of A385378 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A385378.P16507919324572335447

`∑{e}[n+1, A003056(#)]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A385378

/-- `∑{e}[n+1, A003056(#)]` -/
def P16507919324572335447.Spec : Prop :=
  ∀ n, P16507919324572335447.a n = A385378 (n + 1)

theorem P16507919324572335447.correct : P16507919324572335447.Spec := by
  intro n
  simp only [A385378, Nat.add_sub_cancel]

end A385378

/-! ## A385378.P6367879075664388579

`∑{e}[n+1, A163352(#)]`
-/

namespace A385378.P6367879075664388579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A163352 (Nat.factorization (f1 n) p)

end

end A385378.P6367879075664388579

namespace A385378

/-- `∑{e}[n+1, A163352(#)]` -/
def P6367879075664388579.Spec : Prop :=
  ∀ n, P6367879075664388579.a n = A385378 (n + 1)

end A385378

/-! ## A385378.P8771896090465765802

`∑{e}[A046523(n+1), A117707(#)]`
-/

namespace A385378.P8771896090465765802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A117707 (Nat.factorization (f1 n).natAbs p)

end

end A385378.P8771896090465765802

namespace A385378

/-- `∑{e}[A046523(n+1), A117707(#)]` -/
def P8771896090465765802.Spec : Prop :=
  ∀ n, P8771896090465765802.a n = A385378 (n + 1)

end A385378

/-! ## A385378.P17038805416060314229

`∑{e}[(n+1)*∏{p}[n+1, #], A202453(#)]`
-/

namespace A385378.P17038805416060314229
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A202453 (Nat.factorization (f1 n) p)

end

end A385378.P17038805416060314229

namespace A385378

/-- `∑{e}[(n+1)*∏{p}[n+1, #], A202453(#)]` -/
def P17038805416060314229.Spec : Prop :=
  ∀ n, P17038805416060314229.a n = A385378 (n + 1)

end A385378

/-! ## A385378.P14361909027945089231

`A257089(n+1)-A046660(n+1)`
-/

namespace A385378.P14361909027945089231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257089 (n + 1) - A046660 (n + 1)

end

end A385378.P14361909027945089231

namespace A385378

/-- `A257089(n+1)-A046660(n+1)` -/
def P14361909027945089231.Spec : Prop :=
  ∀ n, P14361909027945089231.a n = A385378 (n + 1)

end A385378

/-! ## A385378.P5333308305321460766

`A257089(n+1)-A001222(A003557(n+1))`
-/

namespace A385378.P5333308305321460766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257089 (n + 1) - A001222 (A003557 (n + 1)).toNat

end

end A385378.P5333308305321460766

namespace A385378

/-- `A257089(n+1)-A001222(A003557(n+1))` -/
def P5333308305321460766.Spec : Prop :=
  ∀ n, P5333308305321460766.a n = A385378 (n + 1)

end A385378

/-!
# A385379: The maximum possible number of distinct composite prime powers (A246547) in the factorization of n into prime powers.

The programs for A385379, the canonical program `A385379.P147877078255257721` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385379 has offset 1).

The definition of A385379 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A385379.P14406378956787540873

`∑{e}[n+1, A029835(#)]`
-/

namespace A385379.P14406378956787540873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A029835 (Nat.factorization (f1 n) p)

end

end A385379.P14406378956787540873

namespace A385379

/-- `∑{e}[n+1, A029835(#)]` -/
def P14406378956787540873.Spec : Prop :=
  ∀ n, P14406378956787540873.a n = A385379 (n + 1)

end A385379

/-! ## A385379.P147877078255257721

`A029837(A368978(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A385379

/-- `A029837(A368978(n+1))` -/
def P147877078255257721.Spec : Prop :=
  ∀ n, P147877078255257721.a n = A385379 (n + 1)

theorem P147877078255257721.correct : P147877078255257721.Spec := by
  intro n
  simp only [A385379, Nat.add_sub_cancel]

end A385379

/-! ## A385379.P376034850788376151

`A384422(A321167((n+1)²)²)`
-/

namespace A385379.P376034850788376151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384422 (A321167 ((n + 1) ^ 2) ^ 2).toNat

end

end A385379.P376034850788376151

namespace A385379

/-- `A384422(A321167((n+1)²)²)` -/
def P376034850788376151.Spec : Prop :=
  ∀ n, P376034850788376151.a n = A385379 (n + 1)

end A385379

/-! ## A385379.P9763298964905212064

`A366123((n+1)*A050985(n+1))`
-/

namespace A385379.P9763298964905212064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366123 ((n + 1 : ℤ) * A050985 (n + 1)).toNat

end

end A385379.P9763298964905212064

namespace A385379

/-- `A366123((n+1)*A050985(n+1))` -/
def P9763298964905212064.Spec : Prop :=
  ∀ n, P9763298964905212064.a n = A385379 (n + 1)

end A385379

/-! ## A385379.P15283380980671072025

`A366123((n+1)*A056552(n+1))`
-/

namespace A385379.P15283380980671072025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366123 ((n + 1 : ℤ) * A056552 (n + 1)).toNat

end

end A385379.P15283380980671072025

namespace A385379

/-- `A366123((n+1)*A056552(n+1))` -/
def P15283380980671072025.Spec : Prop :=
  ∀ n, P15283380980671072025.a n = A385379 (n + 1)

end A385379

/-! ## A385379.P8245199549587750754

`A019269(A111219(n+1))`
-/

namespace A385379.P8245199549587750754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019269 (A111219 (n + 1)).toNat

end

end A385379.P8245199549587750754

namespace A385379

/-- `A019269(A111219(n+1))` -/
def P8245199549587750754.Spec : Prop :=
  ∀ n, P8245199549587750754.a n = A385379 (n + 1)

end A385379

/-! ## A385379.P12334588695426549510

`A065339(A111220(n+1))`
-/

namespace A385379.P12334588695426549510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065339 (A111220 (n + 1)).toNat

end

end A385379.P12334588695426549510

namespace A385379

/-- `A065339(A111220(n+1))` -/
def P12334588695426549510.Spec : Prop :=
  ∀ n, P12334588695426549510.a n = A385379 (n + 1)

end A385379

/-! ## A385379.P2639655283127144459

`A092779(A112624(n+1))`
-/

namespace A385379.P2639655283127144459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092779 (A112624 (n + 1)).toNat

end

end A385379.P2639655283127144459

namespace A385379

/-- `A092779(A112624(n+1))` -/
def P2639655283127144459.Spec : Prop :=
  ∀ n, P2639655283127144459.a n = A385379 (n + 1)

end A385379

/-! ## A385379.P13302364255928532410

`A083916(A124859(n+1))`
-/

namespace A385379.P13302364255928532410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083916 (A124859 (n + 1)).toNat

end

end A385379.P13302364255928532410

namespace A385379

/-- `A083916(A124859(n+1))` -/
def P13302364255928532410.Spec : Prop :=
  ∀ n, P13302364255928532410.a n = A385379 (n + 1)

end A385379

/-! ## A385379.P6206313819990577139

`A112753(A127707(n+1))`
-/

namespace A385379.P6206313819990577139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112753 (A127707 (n + 1)).toNat

end

end A385379.P6206313819990577139

namespace A385379

/-- `A112753(A127707(n+1))` -/
def P6206313819990577139.Spec : Prop :=
  ∀ n, P6206313819990577139.a n = A385379 (n + 1)

end A385379

/-!
# A385380: Partial products of the sequence nonprime powers of primes (A025475).

The programs for A385380, there is no canonical definition to state claims against.
-/

/-! ## A385380.P13644140450655668943

`∏[A025475(n+1)]`
-/

namespace A385380.P13644140450655668943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A385380.P13644140450655668943

/-! ## A385380.P14709292861077690734

`∏[record[A163813(n+1)]]`
-/

namespace A385380.P14709292861077690734
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163813 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A385380.P14709292861077690734

/-! ## A385380.P13423824358298094537

`∏[record[A274006(n+1)]]`
-/

namespace A385380.P13423824358298094537
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274006 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A385380.P13423824358298094537

/-! ## A385380.P11227850636830688757

`a(n-1)*A134612(n)` with `a(0)=1`
-/

namespace A385380.P11227850636830688757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A134612 n

end

end A385380.P11227850636830688757

/-!
# A385382: Number of polyominoes, i.e., connected nonempty subsets of square cells (or vertices), of the n X n flat torus, up to cyclic shifts and reflections of rows and columns.

The programs for A385382, there is no canonical definition to state claims against.
-/

/-! ## A385382.P9640227172246412989

`A385381(∑[n+1])`
-/

namespace A385382.P9640227172246412989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385381 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A385382.P9640227172246412989

/-!
# A385392: The number of divisors d of n such that -(d^d) == d (mod n).

The programs for A385392, there is no canonical definition to state claims against.
-/

/-! ## A385392.P9133739428231090361

`gcd(A108884(n), A394362(n+1))`
-/

namespace A385392.P9133739428231090361
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A108884 n) (A394362 (n + 1))

end

end A385392.P9133739428231090361

/-! ## A385392.P9902607151789622736

`A002024(gcd(A099969(n), A353832(n+1)))`
-/

namespace A385392.P9902607151789622736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (Int.gcd (A099969 n) (A353832 (n + 1)))

end

end A385392.P9902607151789622736

/-! ## A385392.P9116552326456206869

`A004216(A256691(3*n+1)+A189657(n))`
-/

namespace A385392.P9116552326456206869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (A256691 (3 * n + 1) + A189657 n).toNat

end

end A385392.P9116552326456206869

/-! ## A385392.P8746159534117076735

`A322338(A361966(3*n+5))+1`
-/

namespace A385392.P8746159534117076735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322338 (A361966 (3 * n + 5)).toNat + 1

end

end A385392.P8746159534117076735

/-! ## A385392.P2875469479794678213

`C(A046027(A055389(n)), A277017(3*n+4))`
-/

namespace A385392.P2875469479794678213
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A046027 (A055389 n).toNat).toNat (A277017 (3 * n + 4)).toNat

end

end A385392.P2875469479794678213

/-!
# A385393: a(n) = (Sum_{k=0..n} (binomial(n, k) mod 4)) / 2^bitcount(n).

The programs for A385393, the canonical program `A385393.P12160656990847827648` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385393 has offset 0).

The definition of A385393 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A384715, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A385393.P12160656990847827648

`A384715(n)/A001316(n)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A385393

/-- `A384715(n)/A001316(n)` -/
def P12160656990847827648.Spec : Prop :=
  ∀ n, P12160656990847827648.a n = (A385393 n : ℚ)

end A385393

/-! ## A385393.P15348690486913119397

`A384715(n)/2^A000120(n)`
-/

namespace A385393.P15348690486913119397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A384715 n : ℚ) / (2 : ℚ) ^ (A000120 n : ℤ)

end

end A385393.P15348690486913119397

namespace A385393

/-- `A384715(n)/2^A000120(n)` -/
def P15348690486913119397.Spec : Prop :=
  ∀ n, P15348690486913119397.a n = (A385393 n : ℚ)

end A385393

/-! ## A385393.P16908763012079342266

`A033264(n)-A085357(n)+2`
-/

namespace A385393.P16908763012079342266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033264 n - A085357 n + 2

end

end A385393.P16908763012079342266

namespace A385393

/-- `A033264(n)-A085357(n)+2` -/
def P16908763012079342266.Spec : Prop :=
  ∀ n, P16908763012079342266.a n = A385393 n

end A385393

/-! ## A385393.P17695400121275178610

`A384715(n)/(A038573(n)+1)`
-/

namespace A385393.P17695400121275178610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A384715 n : ℚ) / (A038573 n + 1 : ℚ)

end

end A385393.P17695400121275178610

namespace A385393

/-- `A384715(n)/(A038573(n)+1)` -/
def P17695400121275178610.Spec : Prop :=
  ∀ n, P17695400121275178610.a n = (A385393 n : ℚ)

end A385393

/-! ## A385393.P13356564479942596410

`A384715(n)/A385285(n)*A385394(n)`
-/

namespace A385393.P13356564479942596410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A384715 n : ℚ) / (A385285 n : ℚ) * (A385394 n : ℚ)

end

end A385393.P13356564479942596410

namespace A385393

/-- `A384715(n)/A385285(n)*A385394(n)` -/
def P13356564479942596410.Spec : Prop :=
  ∀ n, P13356564479942596410.a n = (A385393 n : ℚ)

end A385393

/-!
# A385394: a(n) = (Sum_{k=0..n} (binomial(n, k) mod 8)) / 2^bitcount(n).

The programs for A385394, there is no canonical definition to state claims against.
-/

/-! ## A385394.P16313321602323093945

`A385285(n)/A001316(n)`
-/

namespace A385394.P16313321602323093945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A385285 n : ℚ) / (A001316 n : ℚ)

end

end A385394.P16313321602323093945

/-! ## A385394.P11824244522218748550

`A385285(n)/2^A000120(n)`
-/

namespace A385394.P11824244522218748550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A385285 n : ℚ) / (2 : ℚ) ^ (A000120 n : ℤ)

end

end A385394.P11824244522218748550

/-! ## A385394.P16389381960491354645

`A385285(n)/A384715(n)*A385393(n)`
-/

namespace A385394.P16389381960491354645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A385285 n : ℚ) / (A384715 n : ℚ) * (A385393 n : ℚ)

end

end A385394.P16389381960491354645

/-! ## A385394.P3756665570234848395

`A385285(n)/A000005(A001317(n))`
-/

namespace A385394.P3756665570234848395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A385285 n : ℚ) / (A000005 (A001317 n).toNat : ℚ)

end

end A385394.P3756665570234848395

/-!
# A385395: Triangle read by rows: T(n, k) = [A047999(n, k) = 1 or A385456(n, k) = 1], where [.] is the Iverson bracket.

The programs for A385395, there is no canonical definition to state claims against.
-/

/-! ## A385395.P16409654550242708320

`and(1, A010048(n))^A004198(n)`
-/

namespace A385395.P16409654550242708320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 1 (A010048 n) : ℚ) ^ (A004198 n : ℤ)

end

end A385395.P16409654550242708320

/-! ## A385395.P9122516204653207081

`and(1, A034801(n))^A004198(n)`
-/

namespace A385395.P9122516204653207081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 1 (A034801 n) : ℚ) ^ (A004198 n : ℤ)

end

end A385395.P9122516204653207081

/-! ## A385395.P14694079046273310866

`A000035(gcd(A008459(n), A010048(n)))`
-/

namespace A385395.P14694079046273310866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (Int.gcd (A008459 n) (A010048 n))

end

end A385395.P14694079046273310866

/-! ## A385395.P6231026538718933351

`A036987(gcd(A034801(n), A087698(n)))`
-/

namespace A385395.P6231026538718933351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (Int.gcd (A034801 n) (A087698 n))

end

end A385395.P6231026538718933351

/-! ## A385395.P15739319779086023329

`A047999(n)+A385456(n)-A385627(n)`
-/

namespace A385395.P15739319779086023329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 n + (A385456 n - A385627 n)

end

end A385395.P15739319779086023329

/-!
# A385396: Numbers k such that 8 does not divide binomial(k, j) for any j in 0..k.

The programs for A385396, the canonical program `A385396.P3098394090964017503` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385396 has offset 1).

The definition of A385396 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A385396.P3098394090964017503

`a(n-1)+2*a(n-4)-2*a(n-5)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=5, a(6)=6, a(7)=7`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A385396

/-- `a(n-1)+2*a(n-4)-2*a(n-5)` -/
def P3098394090964017503.Spec : Prop :=
  ∀ n, P3098394090964017503.a n = A385396 (n + 1)

theorem P3098394090964017503.correct : P3098394090964017503.Spec := by
  intro n
  simp only [A385396, Nat.add_sub_cancel]

end A385396

/-! ## A385396.P10632285061209086265

`2*a(n-4)+1` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=5, a(6)=6, a(7)=7`
-/

namespace A385396.P10632285061209086265
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 3, 4, 5, 6, 7] fun n a =>
  2 * a (n - 4) + 1

end

end A385396.P10632285061209086265

namespace A385396

/-- `2*a(n-4)+1` -/
def P10632285061209086265.Spec : Prop :=
  ∀ n, (P10632285061209086265.a n : ℤ) = A385396 (n + 1)

end A385396

/-! ## A385396.P12019529858689642966

`A029750(n+1)-1`
-/

namespace A385396.P12019529858689642966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029750 (n + 1) - 1

end

end A385396.P12019529858689642966

namespace A385396

/-- `A029750(n+1)-1` -/
def P12019529858689642966.Spec : Prop :=
  ∀ n, P12019529858689642966.a n = A385396 (n + 1)

end A385396

/-! ## A385396.P12751488803900241534

`A057428(n+1)+A029750(n+1)`
-/

namespace A385396.P12751488803900241534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A029750 (n + 1)

end

end A385396.P12751488803900241534

namespace A385396

/-- `A057428(n+1)+A029750(n+1)` -/
def P12751488803900241534.Spec : Prop :=
  ∀ n, P12751488803900241534.a n = A385396 (n + 1)

end A385396

/-! ## A385396.P8995758286350360015

`A064179(A049591(n+1))+A029750(n+1)`
-/

namespace A385396.P8995758286350360015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064179 (A049591 (n + 1)).toNat + A029750 (n + 1)

end

end A385396.P8995758286350360015

namespace A385396

/-- `A064179(A049591(n+1))+A029750(n+1)` -/
def P8995758286350360015.Spec : Prop :=
  ∀ n, P8995758286350360015.a n = A385396 (n + 1)

end A385396

/-! ## A385396.P7830804608029900618

`A064179(A053184(n+1))+A029750(n+1)`
-/

namespace A385396.P7830804608029900618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064179 (A053184 (n + 1)).toNat + A029750 (n + 1)

end

end A385396.P7830804608029900618

namespace A385396

/-- `A064179(A053184(n+1))+A029750(n+1)` -/
def P7830804608029900618.Spec : Prop :=
  ∀ n, P7830804608029900618.a n = A385396 (n + 1)

end A385396

/-!
# A385399: a(n) is the number of free polyominoids that have faces aligned to precisely 2 planes.

The programs for A385399, there is no canonical definition to state claims against.
-/

/-! ## A385399.P13321295442077987838

`A075679(n+1)-A385400(n+1)-A000105(n+1)`
-/

namespace A385399.P13321295442077987838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075679 (n + 1) - A385400 (n + 1) - A000105 (n + 1)

end

end A385399.P13321295442077987838

