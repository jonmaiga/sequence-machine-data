import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C048
import Seq.B000.C051
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
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

/-!
# A399100: Triangle read by rows: T(n,k) is the number of simple connected graphs on n nodes with longest induced path having k nodes.

The programs for A399100, there is no canonical definition to state claims against.
-/

/-! ## A399100.P14284945286906389306

`∑{e}[(A048993(n)+1)!, #]`
-/

namespace A399100.P14284945286906389306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A048993 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A399100.P14284945286906389306

/-! ## A399100.P3290305145390793409

`A001222((A048993(n)+1)!)`
-/

namespace A399100.P3290305145390793409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.factorial (A048993 n + 1).toNat)

end

end A399100.P3290305145390793409

/-! ## A399100.P11890578172291398108

`A123125(n)-A366076(A123209(n))`
-/

namespace A399100.P11890578172291398108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 n - A366076 (A123209 (n + 33)).toNat

end

end A399100.P11890578172291398108

/-! ## A399100.P11802902656371244080

`A112310(A058710(n)^A045917(n+1))`
-/

namespace A399100.P11802902656371244080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112310 (SequenceMachineLib.roundAway ((A058710 n : ℚ) ^ (A045917 (n + 1) : ℤ))).toNat

end

end A399100.P11802902656371244080

/-! ## A399100.P16261897846235486906

`A220527(A058710(n))-A025442(A051038(n+1))`
-/

namespace A399100.P16261897846235486906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220527 (A058710 n).toNat - A025442 (A051038 (n + 1)).toNat

end

end A399100.P16261897846235486906

/-!
# A399102: Number of independent vertex sets in the n X n Klein bottle graph.

The programs for A399102, there is no canonical definition to state claims against.
-/

/-! ## A399102.P14376611511470538045

`A399101((n+1)²+n²)`
-/

namespace A399102.P14376611511470538045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399101 ((n + 1) ^ 2 + n ^ 2)

end

end A399102.P14376611511470538045

/-! ## A399102.P17947396202036361768

`or(A000007(n), A399101(A001844(n)))`
-/

namespace A399102.P17947396202036361768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A399101 (A001844 n).toNat)

end

end A399102.P17947396202036361768

/-! ## A399102.P110207150940449088

`or(A063524(n), A399101(A001844(n)))`
-/

namespace A399102.P110207150940449088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A063524 n) (A399101 (A001844 n).toNat)

end

end A399102.P110207150940449088

/-! ## A399102.P5605276877613621865

`or(A100283(n), A399101(A001844(n)))`
-/

namespace A399102.P5605276877613621865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A100283 n) (A399101 (A001844 n).toNat)

end

end A399102.P5605276877613621865

/-! ## A399102.P2822128578267954236

`A399101(A001844(n))+A090318(n+1)`
-/

namespace A399102.P2822128578267954236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399101 (A001844 n).toNat + A090318 (n + 1)

end

end A399102.P2822128578267954236

/-!
# A399103: Array read by antidiagonals: T(n,k) is the number of independent vertex sets in the n X k Moebius strip graph.

The programs for A399103, there is no canonical definition to state claims against.
-/

/-! ## A399103.P7027165345879527766

`A118668(A342663(n+1)*A380841(n))`
-/

namespace A399103.P7027165345879527766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118668 (A342663 (n + 1) * A380841 n).toNat

end

end A399103.P7027165345879527766

/-!
# A399104: Number of independent vertex sets in the n X n Moebius strip graph.

The programs for A399104, there is no canonical definition to state claims against.
-/

/-! ## A399104.P15567968397901483275

`A399103(∑[4*n])`
-/

namespace A399104.P15567968397901483275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399103 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A399104.P15567968397901483275

/-! ## A399104.P14317394335776707796

`A000265(A399103(2*(n+1)*n))`
-/

namespace A399104.P14317394335776707796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A399103 (2 * (n + 1) * n)).toNat

end

end A399104.P14317394335776707796

/-!
# A399105: Primes that are the concatenation of a prime and a square.

The programs for A399105, there is no canonical definition to state claims against.
-/

/-! ## A399105.P3407365749200643897

`∩[A227919(n+1), A232658(n+1)]`
-/

namespace A399105.P3407365749200643897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232658 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399105.P3407365749200643897

/-! ## A399105.P5226653305445534993

`∩[A237415(n), A240898(n+1)]`
-/

namespace A399105.P5226653305445534993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399105.P5226653305445534993

/-! ## A399105.P4737750700531608157

`∩[A240898(n+1), A275068(n)]`
-/

namespace A399105.P4737750700531608157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275068 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399105.P4737750700531608157

/-! ## A399105.P5537546722235371596

`∩[A008854(n+1), A240898(n+1)]`
-/

namespace A399105.P5537546722235371596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399105.P5537546722235371596

/-! ## A399105.P16469504249316274238

`∩[A023173(n+1), A240898(n+1)]`
-/

namespace A399105.P16469504249316274238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399105.P16469504249316274238

/-!
# A399107: Number of nonisomorphic posets on n elements with trivial automorphism group.

The programs for A399107, there is no canonical definition to state claims against.
-/

/-! ## A399107.P2765445322830497780

`A103221(A265758(n)+A176408(n))`
-/

namespace A399107.P2765445322830497780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A265758 n + A176408 n).toNat

end

end A399107.P2765445322830497780

/-! ## A399107.P6712550382379347572

`A060384(∑[A151265(n)+A054726(n)])`
-/

namespace A399107.P6712550382379347572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151265 n + A054726 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A399107.P6712550382379347572

/-!
# A399108: Irregular triangle read by rows: T(n,k) is the number of labeled K_4-free graphs on n nodes with exactly k edges, 0 <= k <= floor(n^2/3).

The programs for A399108, there is no canonical definition to state claims against.
-/

/-! ## A399108.P13246709582960534493

`A288266(A324109(n+1))%A166945(2*(n+2))`
-/

namespace A399108.P13246709582960534493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288266 (A324109 (n + 1)).toNat) (A166945 (2 * (n + 2)))

end

end A399108.P13246709582960534493

/-! ## A399108.P3254021659723284317

`A288266(lt[A270411(n+6), A369240(n+5)])`
-/

namespace A399108.P3254021659723284317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270411 (n + 6)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369240 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288266 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A399108.P3254021659723284317

/-!
# A399110: Number of endofunctions on [2n] with exactly n isolated fixed points.

The programs for A399110, the canonical program `A399110.P15232046065306847275` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399110 has offset 0).

The definition of A399110 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A399110.P2179984537948047202

`A350212(C(2*n+1, 2)+n)`
-/

namespace A399110.P2179984537948047202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350212 (Nat.choose (2 * n + 1) 2 + n)

end

end A399110.P2179984537948047202

namespace A399110

/-- `A350212(C(2*n+1, 2)+n)` -/
def P2179984537948047202.Spec : Prop :=
  ∀ n, P2179984537948047202.a n = A399110 n

end A399110

/-! ## A399110.P15232046065306847275

`∑{#}[n, (-1)^(n-#)*#^#*(2*n)!/((n-#)!*#!*n!)]`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A399110

/-- `∑{#}[n, (-1)^(n-#)*#^#*(2*n)!/((n-#)!*#!*n!)]` -/
def P15232046065306847275.Spec : Prop :=
  ∀ n, P15232046065306847275.a n = (A399110 n : ℚ)

end A399110

/-! ## A399110.P14894783266124265310

`abs(A069856(n))*A000984(n)`
-/

namespace A399110.P14894783266124265310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A069856 n| * A000984 n

end

end A399110.P14894783266124265310

namespace A399110

/-- `abs(A069856(n))*A000984(n)` -/
def P14894783266124265310.Spec : Prop :=
  ∀ n, P14894783266124265310.a n = A399110 n

end A399110

/-! ## A399110.P17678662911068286416

`A000108(n)*A348590(n+1)`
-/

namespace A399110.P17678662911068286416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A348590 (n + 1)

end

end A399110.P17678662911068286416

namespace A399110

/-- `A000108(n)*A348590(n+1)` -/
def P17678662911068286416.Spec : Prop :=
  ∀ n, P17678662911068286416.a n = A399110 n

end A399110

/-! ## A399110.P4471145902423689215

`A000984(n)*A350212(A000217(n))`
-/

namespace A399110.P4471145902423689215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A350212 (A000217 n).toNat

end

end A399110.P4471145902423689215

namespace A399110

/-- `A000984(n)*A350212(A000217(n))` -/
def P4471145902423689215.Spec : Prop :=
  ∀ n, P4471145902423689215.a n = A399110 n

end A399110

/-!
# A399112: G.f.: (Sum_{k>=1} x^(4*k)/(1 + x^(4*k))) / Product_{k>=1} (1 - x^k).

The programs for A399112, there is no canonical definition to state claims against.
-/

/-! ## A399112.P8876689537200416996

`A382019(A399074(n))`
-/

namespace A399112.P8876689537200416996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382019 (A399074 n).toNat

end

end A399112.P8876689537200416996

/-! ## A399112.P18369943737688472841

`A059995(1+floor(n/2)+A360362(n+1))`
-/

namespace A399112.P18369943737688472841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (1 + ⌊(n : ℚ) / 2⌋ + A360362 (n + 1)).toNat

end

end A399112.P18369943737688472841

/-! ## A399112.P5271903199935923609

`floor((A066815(n)+A000007(A094783(n+1)))/6)`
-/

namespace A399112.P5271903199935923609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A066815 n + A000007 (A094783 (n + 1)).toNat : ℚ) / 6⌋

end

end A399112.P5271903199935923609

/-!
# A399115: Expansion of e.g.f. 1/(cosh(x) - x*cosh(x)^2).

The programs for A399115, there is no canonical definition to state claims against.
-/

/-! ## A399115.P5777074042346438224

`A175137(A097123(n))`
-/

namespace A399115.P5777074042346438224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175137 (A097123 n).toNat

end

end A399115.P5777074042346438224

/-! ## A399115.P408941879688791215

`A249151(floor(A373543(n)^((n+1)/3)))`
-/

namespace A399115.P408941879688791215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249151 ⌊(A373543 n : ℝ) ^ ((n + 1 : ℚ) / 3 : ℝ)⌋.toNat

end

end A399115.P408941879688791215

/-!
# A399116: Expansion of e.g.f. 1/(cosh(x) - x*cosh(x)^3).

The programs for A399116, there is no canonical definition to state claims against.
-/

/-! ## A399116.P8310847112983431118

`A300945(A055864(n+1))`
-/

namespace A399116.P8310847112983431118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300945 (A055864 (n + 1)).toNat

end

end A399116.P8310847112983431118

/-! ## A399116.P12261729788250764516

`and(A007808(n), A107145(A022636(n)))`
-/

namespace A399116.P12261729788250764516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007808 n) (A107145 (A022636 n).toNat)

end

end A399116.P12261729788250764516

/-!
# A399117: Expansion of e.g.f. 1/(cosh(x) - x*cosh(x)^4).

The programs for A399117, there is no canonical definition to state claims against.
-/

/-! ## A399117.P16861392413449681325

`A050913(n)-A321781(A050535(n))`
-/

namespace A399117.P16861392413449681325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050913 n - A321781 (A050535 n).toNat

end

end A399117.P16861392413449681325

/-!
# A399119: a(n) is the number of distinct cardinalities of inclusion-maximal Sidon subsets of {1, ..., n}.

The programs for A399119, there is no canonical definition to state claims against.
-/

/-! ## A399119.P1522532936123323215

`A143824(n)-A382397(n)+1`
-/

namespace A399119.P1522532936123323215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143824 n - A382397 n + 1

end

end A399119.P1522532936123323215

/-! ## A399119.P15163343813149103039

`A143824(n)+1-A382397(n)`
-/

namespace A399119.P15163343813149103039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143824 n + 1 - A382397 n

end

end A399119.P15163343813149103039

/-! ## A399119.P15698511675860690043

`A008728(A143824(n)-A382397(n))`
-/

namespace A399119.P15698511675860690043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008728 (A143824 n - A382397 n).toNat

end

end A399119.P15698511675860690043

/-! ## A399119.P10439475748198126165

`A008619(2*(A143824(n)-A382397(n)))`
-/

namespace A399119.P10439475748198126165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * (A143824 n - A382397 n)).toNat

end

end A399119.P10439475748198126165

/-! ## A399119.P11471660775180126539

`A001489(n)+comp[A227590(n+1)+n]+1-A382397(n)`
-/

namespace A399119.P11471660775180126539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227590 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + 1 - A382397 n

end

end A399119.P11471660775180126539

/-!
# A399125: Numbers k = rad(k) * lpf(k)^2 such that A008479(k) = 3, where rad = A007947 and lpf(k) is the least prime factor of k.

The programs for A399125, there is no canonical definition to state claims against.
-/

/-! ## A399125.P9356543056236350126

`∩[A048109(n+1), A397742(n+1)]`
-/

namespace A399125.P9356543056236350126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399125.P9356543056236350126

/-! ## A399125.P7446137929253887846

`∩[A175496(n+1), A397742(n+1)]`
-/

namespace A399125.P7446137929253887846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399125.P7446137929253887846

/-! ## A399125.P18325601280240769532

`∩[A176297(n+1), A397742(n+1)]`
-/

namespace A399125.P18325601280240769532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176297 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399125.P18325601280240769532

/-! ## A399125.P7623060106051791168

`∩[A195086(n+1), A397742(n+1)]`
-/

namespace A399125.P7623060106051791168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399125.P7623060106051791168

/-! ## A399125.P17045110151100600344

`∩[A374459(n+1), A397742(n+1)]`
-/

namespace A399125.P17045110151100600344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374459 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399125.P17045110151100600344

/-! ## A399125.P17848480257217723863

`∩[A301517(n+1), A397742(n+1)]`
-/

namespace A399125.P17848480257217723863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301517 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399125.P17848480257217723863

/-! ## A399125.P15817764953292786666

`∩[A336593(n+1), A397742(n+1)]`
-/

namespace A399125.P15817764953292786666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399125.P15817764953292786666

/-! ## A399125.P422755403670867054

`filter[A048109(n+1), A355453(#)]`
-/

namespace A399125.P422755403670867054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048109 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355453 (f1 j).toNat = 1) n)

end

end A399125.P422755403670867054

/-! ## A399125.P7292923491748856798

`filter[A397458(n+1), A355453(#)]`
-/

namespace A399125.P7292923491748856798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397458 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355453 (f1 j).toNat = 1) n)

end

end A399125.P7292923491748856798

/-! ## A399125.P13955872476637925639

`filter[A397742(n+1), A355453(#)]`
-/

namespace A399125.P13955872476637925639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355453 (f1 j).toNat = 1) n)

end

end A399125.P13955872476637925639

/-! ## A399125.P10098824317413908210

`filter[A397742(n+1), A359472(#)]`
-/

namespace A399125.P10098824317413908210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359472 (f1 j).toNat = 1) n)

end

end A399125.P10098824317413908210

/-! ## A399125.P3991596830466703364

`filter[A397742(n+1), A359473(#)]`
-/

namespace A399125.P3991596830466703364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A399125.P3991596830466703364

/-! ## A399125.P17536067438474824645

`∩[A366761(n+1), A397742(n+1)]`
-/

namespace A399125.P17536067438474824645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366761 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399125.P17536067438474824645

/-! ## A399125.P11884747738784205091

`∩[A240111(n+1), A397742(n+1)]`
-/

namespace A399125.P11884747738784205091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399125.P11884747738784205091

/-! ## A399125.P12916299056937239345

`∩[A177899(n+1), A397742(n+1)]`
-/

namespace A399125.P12916299056937239345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399125.P12916299056937239345

/-! ## A399125.P2167003393151454405

`∩[A060476(n+1), A397742(n+1)]`
-/

namespace A399125.P2167003393151454405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399125.P2167003393151454405

/-! ## A399125.P2059223661958831825

`∩[A295661(n+1), A397742(n+1)]`
-/

namespace A399125.P2059223661958831825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295661 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399125.P2059223661958831825

/-! ## A399125.P634323147841424828

`∩[A325990(n+1), A397742(n+1)]`
-/

namespace A399125.P634323147841424828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325990 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399125.P634323147841424828

/-! ## A399125.P6781576429278707852

`∩[A173743(n+1), A397742(n+1)]`
-/

namespace A399125.P6781576429278707852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399125.P6781576429278707852

/-! ## A399125.P14961407658160466620

`∩[A365866(n+1), A397742(n+1)]`
-/

namespace A399125.P14961407658160466620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365866 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399125.P14961407658160466620

/-!
# A399126: Numbers k = rad(k) * lpf(k)^3 such that A008479(k) = 4, where rad = A007947 and lpf = least prime factor.

The programs for A399126, there is no canonical definition to state claims against.
-/

/-! ## A399126.P4618340006660141252

`∩[A048946(n+1), A398804(n+1)]`
-/

namespace A399126.P4618340006660141252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399126.P4618340006660141252

/-! ## A399126.P1976223575575625694

`∩[A336595(n+1), A398804(n+1)]`
-/

namespace A399126.P1976223575575625694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336595 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399126.P1976223575575625694

/-! ## A399126.P17632367437450948134

`∩[A383264(n+1), A398804(n+1)]`
-/

namespace A399126.P17632367437450948134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383264 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399126.P17632367437450948134

/-! ## A399126.P3750027388614353785

`∩[A386804(n+1), A398804(n+1)]`
-/

namespace A399126.P3750027388614353785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386804 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399126.P3750027388614353785

/-! ## A399126.P6643299764527445196

`∩[A397459(n+1), A398804(n+1)]`
-/

namespace A399126.P6643299764527445196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397459 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399126.P6643299764527445196

/-! ## A399126.P5887887656794322105

`∩[A374589(n+1), A398804(n+1)]`
-/

namespace A399126.P5887887656794322105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374589 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399126.P5887887656794322105

/-! ## A399126.P14479639595467366261

`∩[A392279(n+1), A398804(n+1)]`
-/

namespace A399126.P14479639595467366261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392279 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399126.P14479639595467366261

/-! ## A399126.P15902390229987517985

`∩[A130897(n+1), A398804(n+1)]`
-/

namespace A399126.P15902390229987517985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399126.P15902390229987517985

/-! ## A399126.P6163885008814038927

`∩[A082294(n+1), A398804(n+1)]`
-/

namespace A399126.P6163885008814038927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082294 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399126.P6163885008814038927

/-! ## A399126.P16064241638127218748

`∩[A195087(n+1), A398804(n+1)]`
-/

namespace A399126.P16064241638127218748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399126.P16064241638127218748

/-! ## A399126.P17775778105674233166

`∩[A354181(n+1), A398804(n+1)]`
-/

namespace A399126.P17775778105674233166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399126.P17775778105674233166

/-! ## A399126.P2562990614956102126

`∩[A374588(n+1), A398804(n+1)]`
-/

namespace A399126.P2562990614956102126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399126.P2562990614956102126

/-! ## A399126.P6374193161545619828

`∩[A322448(n+1), A398804(n+1)]`
-/

namespace A399126.P6374193161545619828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322448 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399126.P6374193161545619828

/-! ## A399126.P13419467819636549778

`∩[A360723(n+1), A398804(n+1)]`
-/

namespace A399126.P13419467819636549778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399126.P13419467819636549778

/-! ## A399126.P13330405157031257018

`∩[A377563(n+1), A398804(n+1)]`
-/

namespace A399126.P13330405157031257018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377563 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399126.P13330405157031257018

/-! ## A399126.P7776563234353255489

`∩[A375146(n+1), A398804(n+1)]`
-/

namespace A399126.P7776563234353255489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399126.P7776563234353255489

/-! ## A399126.P5603896972786237432

`∩[A046101(n+1), A398804(n+1)]`
-/

namespace A399126.P5603896972786237432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399126.P5603896972786237432

/-! ## A399126.P5328959526779293867

`filter[A398804(n+1), A355453(#)]`
-/

namespace A399126.P5328959526779293867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355453 (f1 j).toNat = 1) n)

end

end A399126.P5328959526779293867

/-! ## A399126.P4689483460555846657

`filter[A398804(n+1), A380454(#)]`
-/

namespace A399126.P4689483460555846657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380454 (f1 j).toNat = 1) n)

end

end A399126.P4689483460555846657

/-! ## A399126.P13432954294175489559

`∩[A048111(n+1), A398804(n+1)]`
-/

namespace A399126.P13432954294175489559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399126.P13432954294175489559

/-!
# A399127: Numbers k = rad(k) * q(k) such that A008479(k) = 3, where rad = A007947 and q(k) = second smallest distinct prime factor of k.

The programs for A399127, there is no canonical definition to state claims against.
-/

/-! ## A399127.P18370435880873031044

`∩[A093617(n+1), A397742(n+1)]`
-/

namespace A399127.P18370435880873031044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399127.P18370435880873031044

/-! ## A399127.P15740864207613808901

`∩[A397742(n+1), A398442(n+1)]`
-/

namespace A399127.P15740864207613808901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399127.P15740864207613808901

/-! ## A399127.P4186424580068141960

`∩[A397742(n+1), A400801(n+1)]`
-/

namespace A399127.P4186424580068141960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399127.P4186424580068141960

/-! ## A399127.P14085222558995415133

`∩[A071365(n+1), A397742(n+1)]`
-/

namespace A399127.P14085222558995415133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399127.P14085222558995415133

/-! ## A399127.P16829207472418849877

`∩[A397742(n+1), A398375(n+1)]`
-/

namespace A399127.P16829207472418849877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399127.P16829207472418849877

/-! ## A399127.P14157493730811847732

`filter[A397742(n+1), A212793(#)]`
-/

namespace A399127.P14157493730811847732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A399127.P14157493730811847732

/-! ## A399127.P9241255409782814532

`filter[A397742(n+1), A355823(#)]`
-/

namespace A399127.P9241255409782814532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355823 (f1 j).toNat = 1) n)

end

end A399127.P9241255409782814532

/-! ## A399127.P6610192949509362859

`filter[A397742(n+1), A355825(#)]`
-/

namespace A399127.P6610192949509362859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355825 (f1 j).toNat = 1) n)

end

end A399127.P6610192949509362859

/-! ## A399127.P11456030875043911583

`filter[A397742(n+1), A359429(#)]`
-/

namespace A399127.P11456030875043911583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359429 (f1 j).toNat = 1) n)

end

end A399127.P11456030875043911583

/-! ## A399127.P7728143437688913559

`filter[A397742(n+1), A359471(#)]`
-/

namespace A399127.P7728143437688913559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A399127.P7728143437688913559

/-! ## A399127.P2281299086278162633

`filter[A397742(n+1), A359474(#)]`
-/

namespace A399127.P2281299086278162633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359474 (f1 j).toNat = 1) n)

end

end A399127.P2281299086278162633

/-! ## A399127.P3147549555246461639

`filter[A397742(n+1), A359475(#)]`
-/

namespace A399127.P3147549555246461639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359475 (f1 j).toNat = 1) n)

end

end A399127.P3147549555246461639

/-! ## A399127.P5352660462172883592

`∩[A375397(n+1), A397742(n+1)]`
-/

namespace A399127.P5352660462172883592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375397 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399127.P5352660462172883592

/-! ## A399127.P15642978004724569260

`filter[A397742(n+1), A353470(#)]`
-/

namespace A399127.P15642978004724569260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353470 (f1 j).toNat = 1) n)

end

end A399127.P15642978004724569260

/-! ## A399127.P13455091683669714266

`∩[A376216(n+1), A397742(n+1)]`
-/

namespace A399127.P13455091683669714266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399127.P13455091683669714266

/-! ## A399127.P5558177638257093935

`∩[A360768(n+1), A397742(n+1)]`
-/

namespace A399127.P5558177638257093935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360768 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399127.P5558177638257093935

/-! ## A399127.P16834129546027261431

`∩[A072357(n+1), A397742(n+1)]`
-/

namespace A399127.P16834129546027261431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399127.P16834129546027261431

/-! ## A399127.P3347006427010508900

`∩[A060687(n+1), A397742(n+1)]`
-/

namespace A399127.P3347006427010508900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399127.P3347006427010508900

/-! ## A399127.P5014586179974707170

`∩[A376249(n+1), A397742(n+1)]`
-/

namespace A399127.P5014586179974707170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399127.P5014586179974707170

/-! ## A399127.P18268019216667954168

`∩[A386684(n+1), A397742(n+1)]`
-/

namespace A399127.P18268019216667954168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399127.P18268019216667954168

/-!
# A399128: Numbers k = rad(k) * lpf(k)^4 such that A008479(k) = 5, where rad = A007947 and lpf = least prime factor of k.

The programs for A399128, there is no canonical definition to state claims against.
-/

/-! ## A399128.P5542130320919489493

`∩[A195088(n+1), A399320(n+1)]`
-/

namespace A399128.P5542130320919489493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195088 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399128.P5542130320919489493

/-! ## A399128.P7985800424899442661

`∩[A362841(1+n), A399320(n+1)]`
-/

namespace A399128.P7985800424899442661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362841 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399128.P7985800424899442661

/-! ## A399128.P5238206472207110442

`∩[A386808(n+1), A399320(n+1)]`
-/

namespace A399128.P5238206472207110442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399128.P5238206472207110442

/-! ## A399128.P3168508295194042618

`∩[A398443(n+1), A399320(n+1)]`
-/

namespace A399128.P3168508295194042618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399128.P3168508295194042618

/-!
# A399129: Primes of the forms 10*k+1 and 10*k+9 for which the number of primes of the forms 10*k+1 and 10*k+9 are equal.

The programs for A399129, there is no canonical definition to state claims against.
-/

/-! ## A399129.P186479941605207660

`A064739(A056911(n+2))%A344274(2*(n+2))`
-/

namespace A399129.P186479941605207660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064739 (A056911 (n + 2)).toNat) (A344274 (2 * (n + 2)))

end

end A399129.P186479941605207660

/-! ## A399129.P3341024846492367110

`∩[A064739(A368100(n+1)), A368100(n+1)]`
-/

namespace A399129.P3341024846492367110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064739 (A368100 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399129.P3341024846492367110

/-!
# A399131: Number of moves to solve the Tower of Hanoi whose disks are the prime factors of n.

The programs for A399131, there is no canonical definition to state claims against.
-/

/-! ## A399131.P10848441228586635458

`A048675(A331580(n+1))`
-/

namespace A399131.P10848441228586635458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A331580 (n + 1)).toNat

end

end A399131.P10848441228586635458

/-! ## A399131.P11006707876807982543

`A000005(n+1)-A372287(A348610(2*(n+1)))`
-/

namespace A399131.P11006707876807982543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A372287 (A348610 (2 * (n + 1))).toNat

end

end A399131.P11006707876807982543

/-! ## A399131.P2984733268176590840

`A037916(n+1)%A278545(A350946(n+1))`
-/

namespace A399131.P2984733268176590840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037916 (n + 1)) (A278545 (A350946 (n + 1)).toNat)

end

end A399131.P2984733268176590840

/-! ## A399131.P9566748424199329309

`A037916(n+1)%A278545(A304660(n+1))`
-/

namespace A399131.P9566748424199329309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037916 (n + 1)) (A278545 (A304660 (n + 1)).toNat)

end

end A399131.P9566748424199329309

/-! ## A399131.P5652476671787232568

`A000005(n+1)-A236853(A072861(n+1))`
-/

namespace A399131.P5652476671787232568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A236853 (A072861 (n + 1)).toNat

end

end A399131.P5652476671787232568

/-!
# A399132: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals: T(n,k) = Sum_{j=0..n} Stirling2(n,j) * binomial(k+j-1, j-1), where Stirling2 are the Stirling numbers of the second kind (A008277).

The programs for A399132, there is no canonical definition to state claims against.
-/

/-! ## A399132.P9380369415369631933

`A108458(n+1)-A276404(A121281(n+4))`
-/

namespace A399132.P9380369415369631933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108458 (n + 1) - A276404 (A121281 (n + 4)).toNat

end

end A399132.P9380369415369631933

/-! ## A399132.P12670168266075561547

`A355173(n)+char[A306498(A033877(n+1))]`
-/

namespace A399132.P12670168266075561547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306498 (A033877 (n + 1)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355173 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A399132.P12670168266075561547

/-! ## A399132.P599866871634409204

`A082861(A216806(n))`
-/

namespace A399132.P599866871634409204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082861 (A216806 n).toNat

end

end A399132.P599866871634409204

/-! ## A399132.P3635680878262711329

`A117707(A290776(n))`
-/

namespace A399132.P3635680878262711329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (A290776 n).toNat

end

end A399132.P3635680878262711329

/-! ## A399132.P17820126904646995627

`A108458(n+1)-A210717(A210713(n))`
-/

namespace A399132.P17820126904646995627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108458 (n + 1) - A210717 (A210713 n).toNat

end

end A399132.P17820126904646995627

/-!
# A399134: Triangle read by rows: T(n,m) = 2 * d_GH(S_n, S_m) for 1 <= m <= n, where d_GH is the Gromov-Hausdorff distance between symmetric groups equipped with the Hamming metric.

The programs for A399134, there is no canonical definition to state claims against.
-/

/-! ## A399134.P15569774077560742366

`A235224(A061579(n+3)*A067176(n))`
-/

namespace A399134.P15569774077560742366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235224 (A061579 (n + 3) * A067176 n).toNat

end

end A399134.P15569774077560742366

/-! ## A399134.P8393423632122467281

`A235224(A235224(3*n)*A354127(n))`
-/

namespace A399134.P8393423632122467281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235224 (A235224 (3 * n) * A354127 n).toNat

end

end A399134.P8393423632122467281

/-! ## A399134.P6081146413036602823

`A303370(A027466(n))`
-/

namespace A399134.P6081146413036602823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303370 (A027466 n).toNat

end

end A399134.P6081146413036602823

/-! ## A399134.P9876530735099546379

`A303370(A038279(n))`
-/

namespace A399134.P9876530735099546379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303370 (A038279 n).toNat

end

end A399134.P9876530735099546379

/-! ## A399134.P1465994733869376754

`A303370(A113365(n))`
-/

namespace A399134.P1465994733869376754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303370 (A113365 n).toNat

end

end A399134.P1465994733869376754

/-!
# A399137: Number of 4-element subsets of {(x,y,z) in Z^3: |x|+|y|+|z| <= n} that are the vertices of a regular tetrahedron.

The programs for A399137, there is no canonical definition to state claims against.
-/

/-! ## A399137.P16465510586098465333

`A154485(A126939(n))`
-/

namespace A399137.P16465510586098465333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154485 (A126939 n).toNat

end

end A399137.P16465510586098465333

/-!
# A399139: Maximum size of a subset of {1,...,n} in which no prime divides more than 3 elements.

The programs for A399139, the canonical program `A399139.P8237178519949403340` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399139 has offset 1).

The definition of A399139 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2098 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A399139.P17583514945278791540

`∑[char[lt[A137502(n+1), 8]]]`
-/

namespace A399139.P17583514945278791540
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137502 (n + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399139.P17583514945278791540

namespace A399139

/-- `∑[char[lt[A137502(n+1), 8]]]` -/
def P17583514945278791540.Spec : Prop :=
  ∀ n, (P17583514945278791540.a n : ℤ) = A399139 (n + 1)

end A399139

/-! ## A399139.P8156612978175746261

`∑[round(1/sqrt(A305897(1+n)))]`
-/

namespace A399139.P8156612978175746261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / Real.sqrt (A305897 (1 + n) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399139.P8156612978175746261

namespace A399139

/-- `∑[round(1/sqrt(A305897(1+n)))]` -/
def P8156612978175746261.Spec : Prop :=
  ∀ n, P8156612978175746261.a n = A399139 (n + 1)

end A399139

/-! ## A399139.P377163897886848979

`∑[char[lt[A078898(n+1)-2, 2]]]`
-/

namespace A399139.P377163897886848979
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (n + 1) - 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399139.P377163897886848979

namespace A399139

/-- `∑[char[lt[A078898(n+1)-2, 2]]]` -/
def P377163897886848979.Spec : Prop :=
  ∀ n, (P377163897886848979.a n : ℤ) = A399139 (n + 1)

end A399139

/-! ## A399139.P5941986569838699232

`∑[1-A185114(A166469(n+1))]`
-/

namespace A399139.P5941986569838699232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A185114 (A166469 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399139.P5941986569838699232

namespace A399139

/-- `∑[1-A185114(A166469(n+1))]` -/
def P5941986569838699232.Spec : Prop :=
  ∀ n, P5941986569838699232.a n = A399139 (n + 1)

end A399139

/-! ## A399139.P7796588983542428473

`∑[A078898(C(3, A078898(n+1)))]`
-/

namespace A399139.P7796588983542428473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (Nat.choose 3 (A078898 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399139.P7796588983542428473

namespace A399139

/-- `∑[A078898(C(3, A078898(n+1)))]` -/
def P7796588983542428473.Spec : Prop :=
  ∀ n, P7796588983542428473.a n = A399139 (n + 1)

end A399139

/-! ## A399139.P12562709443213592122

`∑[C(A000005(n+1), A305897(n+1))]`
-/

namespace A399139.P12562709443213592122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000005 (n + 1)).toNat (A305897 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399139.P12562709443213592122

namespace A399139

/-- `∑[C(A000005(n+1), A305897(n+1))]` -/
def P12562709443213592122.Spec : Prop :=
  ∀ n, (P12562709443213592122.a n : ℤ) = A399139 (n + 1)

end A399139

/-! ## A399139.P10891558135236172341

`∑[C(A330751(n+1), A305796(n+1))]`
-/

namespace A399139.P10891558135236172341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A330751 (n + 1)).toNat (A305796 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399139.P10891558135236172341

namespace A399139

/-- `∑[C(A330751(n+1), A305796(n+1))]` -/
def P10891558135236172341.Spec : Prop :=
  ∀ n, (P10891558135236172341.a n : ℤ) = A399139 (n + 1)

end A399139

/-! ## A399139.P7129720039561142858

`∑[C(A345957(n+1), A305804(n+1))]`
-/

namespace A399139.P7129720039561142858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A345957 (n + 1)).toNat (A305804 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399139.P7129720039561142858

namespace A399139

/-- `∑[C(A345957(n+1), A305804(n+1))]` -/
def P7129720039561142858.Spec : Prop :=
  ∀ n, (P7129720039561142858.a n : ℤ) = A399139 (n + 1)

end A399139

/-! ## A399139.P16781679729414750818

`∑[C(A366901(n+1), A300247(n+1))]`
-/

namespace A399139.P16781679729414750818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A366901 (n + 1)).toNat (A300247 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399139.P16781679729414750818

namespace A399139

/-- `∑[C(A366901(n+1), A300247(n+1))]` -/
def P16781679729414750818.Spec : Prop :=
  ∀ n, (P16781679729414750818.a n : ℤ) = A399139 (n + 1)

end A399139

/-! ## A399139.P8237178519949403340

`∑[floor(A000005(n+1)/(A246277(n+1)+1))]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A399139

/-- `∑[floor(A000005(n+1)/(A246277(n+1)+1))]` -/
def P8237178519949403340.Spec : Prop :=
  ∀ n, P8237178519949403340.a n = A399139 (n + 1)

theorem P8237178519949403340.correct : P8237178519949403340.Spec := by
  intro n
  simp only [A399139, Nat.add_sub_cancel]

end A399139

/-!
# A399140: Integers that are both pseudoperfect and pseudo-antiperfect.

The programs for A399140, there is no canonical definition to state claims against.
-/

/-! ## A399140.P3650678020949549030

`∩[A005835(n+1), A192270(n+1)]`
-/

namespace A399140.P3650678020949549030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192270 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399140.P3650678020949549030

/-! ## A399140.P9932378655332774688

`filter[A192270(1+n), A210455(#)]`
-/

namespace A399140.P9932378655332774688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192270 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A210455 (f1 j).toNat = 1) n)

end

end A399140.P9932378655332774688

/-!
# A399142: Triangle read by rows: T(n,k) counts trees on [n] rooted at 1 together with a level assignment L:[n]->{0,...,k} that uses every level, has L(1)=0, and strictly increases from parent to child, 0<=k<=n-1.

The programs for A399142, there is no canonical definition to state claims against.
-/

/-! ## A399142.P16382229450126550973

`A172152(A323128(n))`
-/

namespace A399142.P16382229450126550973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172152 (A323128 n).toNat

end

end A399142.P16382229450126550973

/-!
# A399144: Complement of A395718.

The programs for A399144, there is no canonical definition to state claims against.
-/

/-! ## A399144.P17103601288234032389

`comp[A395718(n+1)-1]+1`
-/

namespace A399144.P17103601288234032389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395718 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A399144.P17103601288234032389

/-! ## A399144.P15957571478419067697

`eq[char[A395718(n+1)], A151933(n)]`
-/

namespace A399144.P15957571478419067697
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395718 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A399144.P15957571478419067697

/-!
# A399146: G.f.: (Sum_{k>=1} x^(k^4)/(1 - x^(k^4))) / Product_{k>=1} (1 - x^k).

The programs for A399146, there is no canonical definition to state claims against.
-/

/-! ## A399146.P11523069973183205429

`∑{#}[n-1, A063775(#+1)*A000041(n-(#+1))]`
-/

namespace A399146.P11523069973183205429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A063775 (k + 1) * A000041 (n - (k + 1))

end

end A399146.P11523069973183205429

/-! ## A399146.P10030894142058503125

`A208478(A140064(n))`
-/

namespace A399146.P10030894142058503125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208478 (A140064 n).toNat

end

end A399146.P10030894142058503125

/-! ## A399146.P12769126954426896657

`A208482(A062708(n)+1)`
-/

namespace A399146.P12769126954426896657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208482 (A062708 n + 1).toNat

end

end A399146.P12769126954426896657

/-! ## A399146.P13750128258573296906

`record[A025065(n)%A161409(n)]`
-/

namespace A399146.P13750128258573296906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025065 n) (A161409 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A399146.P13750128258573296906

/-! ## A399146.P16299392576236519127

`A303386(A042950(n))-A000007(n)`
-/

namespace A399146.P16299392576236519127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303386 (A042950 n).toNat - A000007 n

end

end A399146.P16299392576236519127

/-!
# A399147: Number of distinct proper side-crossing points among regular polygons inscribed in a common circle and aligned by their side midpoints.

The programs for A399147, there is no canonical definition to state claims against.
-/

/-! ## A399147.P17789278290723397272

`∑[2*A369366(3*n+4)*n]`
-/

namespace A399147.P17789278290723397272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A369366 (3 * n + 4) * (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399147.P17789278290723397272

/-! ## A399147.P12500359016505647180

`A243117(A300741(n))`
-/

namespace A399147.P12500359016505647180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243117 (A300741 n).toNat

end

end A399147.P12500359016505647180

/-!
# A399148: a(n) is the number of trees with n unlabeled vertices with at most two peripheral vertices.

The programs for A399148, there is no canonical definition to state claims against.
-/

/-! ## A399148.P18399593717289838050

`A399096(∑[char[1]+n]+1)`
-/

namespace A399148.P18399593717289838050
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399096 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A399148.P18399593717289838050

/-! ## A399148.P8402037144849386114

`Δ[A399096(A133263(n-1))+a(n-1)]` with `a(0)=8`
-/

namespace A399148.P8402037144849386114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8] fun n f1 =>
  A399096 (A133263 (n - 1)).toNat + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A399148.P8402037144849386114

/-! ## A399148.P11124970726078584480

`A323347(A309545(n))`
-/

namespace A399148.P11124970726078584480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323347 (A309545 n).toNat

end

end A399148.P11124970726078584480

/-! ## A399148.P5655276917898977684

`A101886(A295637(n+1))`
-/

namespace A399148.P5655276917898977684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101886 (A295637 (n + 1)).toNat

end

end A399148.P5655276917898977684

/-! ## A399148.P7419128785439809215

`A000196(A322262(n)+A102124(n))`
-/

namespace A399148.P7419128785439809215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A322262 n + A102124 n).toNat

end

end A399148.P7419128785439809215

/-!
# A399149: G.f.: (Sum_{k>=1} x^(k^2)/(1 - x^(k^2))) * Product_{k>=1} (1 + x^k).

The programs for A399149, there is no canonical definition to state claims against.
-/

/-! ## A399149.P6215728408494837604

`∑{#}[n-1, A046951(#+1)*A000009(n-(#+1))]`
-/

namespace A399149.P6215728408494837604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A046951 (k + 1) * A000009 (n - (k + 1))

end

end A399149.P6215728408494837604

/-! ## A399149.P15057132344705495769

`A000607(2*n+3)-A000007(A005081(n+1))`
-/

namespace A399149.P15057132344705495769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 (2 * n + 3) - A000007 (A005081 (n + 1)).toNat

end

end A399149.P15057132344705495769

/-! ## A399149.P1586952107891348586

`A000607(2*n+3)-A358847(A000045(2*(n+1)))`
-/

namespace A399149.P1586952107891348586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 (2 * n + 3) - A358847 (A000045 (2 * (n + 1))).toNat

end

end A399149.P1586952107891348586

/-! ## A399149.P5417350510499068068

`A048766(A056654(n+1))+A002620(n)`
-/

namespace A399149.P5417350510499068068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A056654 (n + 1)).toNat + A002620 n

end

end A399149.P5417350510499068068

/-! ## A399149.P14624680765251791418

`A007604(n+1)-A010054(A022186(n))`
-/

namespace A399149.P14624680765251791418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007604 (n + 1) - A010054 (A022186 n).toNat

end

end A399149.P14624680765251791418

/-!
# A399150: G.f.: (Sum_{k>=1} x^(k^3)/(1 - x^(k^3))) * Product_{k>=1} (1 + x^k).

The programs for A399150, there is no canonical definition to state claims against.
-/

/-! ## A399150.P15235747163421592863

`∑{#}[n-1, A061704(#+1)*A000009(n-(#+1))]`
-/

namespace A399150.P15235747163421592863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A061704 (k + 1) * A000009 (n - (k + 1))

end

end A399150.P15235747163421592863

/-! ## A399150.P3655106460022794774

`A105566(A096778(n+1))`
-/

namespace A399150.P3655106460022794774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105566 (A096778 (n + 1)).toNat

end

end A399150.P3655106460022794774

/-! ## A399150.P17954193697008280831

`A353086(A069259(n+1))`
-/

namespace A399150.P17954193697008280831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353086 (A069259 (n + 1)).toNat

end

end A399150.P17954193697008280831

/-! ## A399150.P8387442759505583012

`A121902(A124633(n+1))`
-/

namespace A399150.P8387442759505583012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121902 (A124633 (n + 1)).toNat

end

end A399150.P8387442759505583012

/-! ## A399150.P15686538467815709886

`A090532(A198950(n+1))`
-/

namespace A399150.P15686538467815709886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090532 (A198950 (n + 1)).toNat

end

end A399150.P15686538467815709886

/-!
# A399151: G.f.: (Sum_{k>=1} x^(k^4)/(1 - x^(k^4))) * Product_{k>=1} (1 + x^k).

The programs for A399151, there is no canonical definition to state claims against.
-/

/-! ## A399151.P9563022123794853734

`∑{#}[n-1, A063775(#+1)*A000009(n-(#+1))]`
-/

namespace A399151.P9563022123794853734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A063775 (k + 1) * A000009 (n - (k + 1))

end

end A399151.P9563022123794853734

/-! ## A399151.P12263415666743000601

`eq[1, A324186(A333255(n+1))]`
-/

namespace A399151.P12263415666743000601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324186 (A333255 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A399151.P12263415666743000601

/-! ## A399151.P1163156340437022468

`∑[A117409(n+1)]%A059621(n+1)`
-/

namespace A399151.P1163156340437022468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117409 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A059621 (n + 1))

end

end A399151.P1163156340437022468

/-! ## A399151.P455911893198488627

`eq[A304042(A040039(n)), A370614(n)]`
-/

namespace A399151.P455911893198488627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304042 (A040039 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370614 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A399151.P455911893198488627

/-! ## A399151.P14268215323327372902

`eq[A317933(A073609(n)), A370614(n)]`
-/

namespace A399151.P14268215323327372902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317933 (A073609 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370614 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A399151.P14268215323327372902

/-!
# A399152: a(n) is the minimum number of residues mod M = 2n+1 left uncovered when, for every divisor d > 1 of M, exactly one residue class mod d is removed.

The programs for A399152, there is no canonical definition to state claims against.
-/

/-! ## A399152.P13361295050260080971

`A318441(2*n+3)*A318449(A372591(3*n+1))`
-/

namespace A399152.P13361295050260080971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318441 (2 * n + 3) * A318449 (A372591 (3 * n + 1)).toNat

end

end A399152.P13361295050260080971

/-! ## A399152.P7983988541627519790

`A304118(A000040(n+4))*A318441(2*n+3)`
-/

namespace A399152.P7983988541627519790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304118 (A000040 (n + 4)).toNat * A318441 (2 * n + 3)

end

end A399152.P7983988541627519790

/-! ## A399152.P2854135967579880860

`A318441(2*n+3)+A156660(A161337(3*n))`
-/

namespace A399152.P2854135967579880860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318441 (2 * n + 3) + A156660 (A161337 (3 * n)).toNat

end

end A399152.P2854135967579880860

/-! ## A399152.P6031783403883776106

`A106614(A318441(2*n+3))%A080298(2*(n+1))`
-/

namespace A399152.P6031783403883776106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106614 (A318441 (2 * n + 3)).toNat) (A080298 (2 * (n + 1)))

end

end A399152.P6031783403883776106

/-! ## A399152.P5081802284810358501

`A063775(A048407(2*n+1))*A318441(2*n+3)`
-/

namespace A399152.P5081802284810358501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063775 (A048407 (2 * n + 1)).toNat * A318441 (2 * n + 3)

end

end A399152.P5081802284810358501

/-!
# A399155: a(n) = f(n) - g(n), where f(n) is the number of steps to reach 0 by repeatedly subtracting the smallest prime factor of the current value, and g(n) is the number of steps to reach 0 by repeatedly subtracting the largest prime factor.

The programs for A399155, there is no canonical definition to state claims against.
-/

/-! ## A399155.P3147471134997394495

`A175126(n+2)-A309892(n+2)`
-/

namespace A399155.P3147471134997394495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (n + 2) - A309892 (n + 2)

end

end A399155.P3147471134997394495

/-!
# A399158: Squares visited by a Dabbaba moving on a spirally numbered board always to the lowest available unvisited square.

The programs for A399158, there is no canonical definition to state claims against.
-/

/-! ## A399158.P7696453532862316540

`filter[lcm((A296030(2*n+1)+1)%2, n+1), #%2]`
-/

namespace A399158.P7696453532862316540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.tmod (A296030 (2 * n + 1) + 1) 2) (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => f1 j % 2 = 1) n)

end

end A399158.P7696453532862316540

/-! ## A399158.P12205524656708406864

`comp[A340944(n)+n]`
-/

namespace A399158.P12205524656708406864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340944 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A399158.P12205524656708406864

/-! ## A399158.P14337969774794463650

`lt[1, gcd(2-n%2, A274923(n+1))]+1`
-/

namespace A399158.P14337969774794463650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 - ((n % 2 : ℕ) : ℤ)) (A274923 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A399158.P14337969774794463650

/-! ## A399158.P12845523162501637140

`A316884(A316884(1+n))`
-/

namespace A399158.P12845523162501637140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316884 (A316884 (1 + n)).toNat

end

end A399158.P12845523162501637140

/-! ## A399158.P16585411523454608703

`A316967(A316967(n))+1`
-/

namespace A399158.P16585411523454608703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316967 (A316967 n).toNat + 1

end

end A399158.P16585411523454608703

/-! ## A399158.P4163002216322317611

`A316884(or(1, A316967(n)))`
-/

namespace A399158.P4163002216322317611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316884 (Int.lor 1 (A316967 n)).toNat

end

end A399158.P4163002216322317611

/-! ## A399158.P7640497291796500918

`A316884(xor(1, A316967(n)))`
-/

namespace A399158.P7640497291796500918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316884 (Int.xor 1 (A316967 n)).toNat

end

end A399158.P7640497291796500918

/-! ## A399158.P5722158482158887221

`or(A049347(3*n), A316967(A316967(n)))`
-/

namespace A399158.P5722158482158887221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A049347 (3 * n)) (A316967 (A316967 n).toNat)

end

end A399158.P5722158482158887221

/-! ## A399158.P1640393299051154679

`A337254(n+1)+A000007(A280315(n+1))`
-/

namespace A399158.P1640393299051154679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337254 (n + 1) + A000007 (A280315 (n + 1)).toNat

end

end A399158.P1640393299051154679

/-! ## A399158.P15851970553142109509

`A223925(A337254(n+1))`
-/

namespace A399158.P15851970553142109509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223925 (A337254 (n + 1)).toNat

end

end A399158.P15851970553142109509

/-!
# A399159: G.f. A(x) satisfies A(x) = 1/(1 - x * A(x^3)^2).

The programs for A399159, there is no canonical definition to state claims against.
-/

/-! ## A399159.P4030857587299992391

`A373654(A004896(n+1))`
-/

namespace A399159.P4030857587299992391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373654 (A004896 (n + 1)).toNat

end

end A399159.P4030857587299992391

/-! ## A399159.P935980027671599675

`A373654(A004907(n+1))`
-/

namespace A399159.P935980027671599675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373654 (A004907 (n + 1)).toNat

end

end A399159.P935980027671599675

/-! ## A399159.P9953413767443446571

`A373654(A004918(n+1))`
-/

namespace A399159.P9953413767443446571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373654 (A004918 (n + 1)).toNat

end

end A399159.P9953413767443446571

/-! ## A399159.P15582868321465652277

`A373654(n)^A395314(2*n+3)`
-/

namespace A399159.P15582868321465652277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A373654 n : ℚ) ^ (A395314 (2 * n + 3) : ℤ)

end

end A399159.P15582868321465652277

/-! ## A399159.P398178716136622819

`A373654(n)%A325883(3*n+2)`
-/

namespace A399159.P398178716136622819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A373654 n) (A325883 (3 * n + 2))

end

end A399159.P398178716136622819

/-!
# A399163: Number of roots modulo the n-th prime of x^6+2*x^5+2*x^4+2*x^3+x^2+1.

The programs for A399163, there is no canonical definition to state claims against.
-/

/-! ## A399163.P8496052389653496405

`A107110(A165307(n+1))`
-/

namespace A399163.P8496052389653496405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107110 (A165307 (n + 1)).toNat

end

end A399163.P8496052389653496405

/-! ## A399163.P13260091101156138704

`A364389(A212459(n+1)+A123209(n))`
-/

namespace A399163.P13260091101156138704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364389 (A212459 (n + 1) + A123209 (n + 33)).toNat

end

end A399163.P13260091101156138704

/-! ## A399163.P2340649878132540928

`A381990(3*n)%A161914(A005117(3*n+4))`
-/

namespace A399163.P2340649878132540928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A381990 (3 * n)) (A161914 (A005117 (3 * n + 4)).toNat)

end

end A399163.P2340649878132540928

/-! ## A399163.P6594576320068999280

`A249223(A114320(n)*A389916(n+1))`
-/

namespace A399163.P6594576320068999280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249223 (A114320 n * A389916 (n + 1)).toNat

end

end A399163.P6594576320068999280

/-! ## A399163.P11639654709629497077

`A319510(A332347(n+1)+A134506(2*(n+2)))`
-/

namespace A399163.P11639654709629497077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319510 (A332347 (n + 1) + A134506 (2 * (n + 2))).toNat

end

end A399163.P11639654709629497077

/-!
# A399164: Number of fixed point free involutions in S_{2n} (or perfect matchings on [2n]) which avoid the patterns {123, 132, 321}.

The programs for A399164, the canonical program `A399164.P4069160883750986696` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399164 has offset 0).

The definition of A399164 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A399164.P4069160883750986696

`ogf((1-3x-3x^2+2x^3)/(1-4x-2x^2+4x^3-x^4))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A399164

/-- `ogf((1-3x-3x^2+2x^3)/(1-4x-2x^2+4x^3-x^4))` -/
def P4069160883750986696.Spec : Prop :=
  ∀ n, P4069160883750986696.a n = A399164 n

theorem P4069160883750986696.correct : P4069160883750986696.Spec := by
  intro n
  simp only [A399164]

end A399164

/-! ## A399164.P6690525050479892965

`4*a(n-1)+2*a(n-2)-4*a(n-3)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=12`
-/

namespace A399164.P6690525050479892965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3, 12] fun n a =>
  4 * a (n - 1) + 2 * a (n - 2) - 4 * a (n - 3) + a (n - 4)

end

end A399164.P6690525050479892965

namespace A399164

/-- `4*a(n-1)+2*a(n-2)-4*a(n-3)+a(n-4)` -/
def P6690525050479892965.Spec : Prop :=
  ∀ n, P6690525050479892965.a n = A399164 n

end A399164

/-! ## A399164.P7083436251939865670

`A276798(A014448(n)-A001013(n+2))`
-/

namespace A399164.P7083436251939865670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276798 (A014448 n - A001013 (n + 2)).toNat

end

end A399164.P7083436251939865670

namespace A399164

/-- `A276798(A014448(n)-A001013(n+2))` -/
def P7083436251939865670.Spec : Prop :=
  ∀ n, P7083436251939865670.a n = A399164 n

end A399164

/-!
# A399166: G.f. A(x) satisfies A(x) = 1/(1 - x * A(x^4)^2).

The programs for A399166, there is no canonical definition to state claims against.
-/

/-! ## A399166.P7367302771908854006

`A367800(2*n)%A228299(A250120(n))`
-/

namespace A399166.P7367302771908854006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A367800 (2 * n)) (A228299 (A250120 n).toNat)

end

end A399166.P7367302771908854006

/-! ## A399166.P16765843731019185115

`A367800(2*n)+A010054(A002496(n+1))`
-/

namespace A399166.P16765843731019185115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367800 (2 * n) + A010054 (A002496 (n + 1)).toNat

end

end A399166.P16765843731019185115

/-! ## A399166.P5797646695189903951

`A326366(A362899(n))*A367800(2*n)`
-/

namespace A399166.P5797646695189903951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326366 (A362899 n).toNat * A367800 (2 * n)

end

end A399166.P5797646695189903951

/-! ## A399166.P8938691142636325474

`A367800(2*n)%A228299(A178883(n))`
-/

namespace A399166.P8938691142636325474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A367800 (2 * n)) (A228299 (A178883 n).toNat)

end

end A399166.P8938691142636325474

/-! ## A399166.P8168560123062214854

`A367800(2*n)+A091225(A126169(n+5))`
-/

namespace A399166.P8168560123062214854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367800 (2 * n) + A091225 (A126169 (n + 5)).toNat

end

end A399166.P8168560123062214854

/-!
# A399167: Squares visited by a "Leopard" (Knight + Fers + Alfil) moving on a spirally numbered board always to the lowest available unvisited square.

The programs for A399167, there is no canonical definition to state claims against.
-/

/-! ## A399167.P5013700480156209708

`A398717(n+1)-A007814(A157149(n+1))`
-/

namespace A399167.P5013700480156209708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398717 (n + 1) - A007814 (A157149 (n + 1)).toNat

end

end A399167.P5013700480156209708

/-! ## A399167.P594916078491815644

`A398717(n+1)-A316345(A373160(2*(n+1)))`
-/

namespace A399167.P594916078491815644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398717 (n + 1) - A316345 (A373160 (2 * (n + 1))).toNat

end

end A399167.P594916078491815644

/-! ## A399167.P4929321913738613209

`A398717(n+1)-A102683(A036423(n))`
-/

namespace A399167.P4929321913738613209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398717 (n + 1) - A102683 (A036423 n).toNat

end

end A399167.P4929321913738613209

/-! ## A399167.P4076401345162190009

`A398717(n+1)+A121373(A098859(3*n+4))`
-/

namespace A399167.P4076401345162190009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398717 (n + 1) + A121373 (A098859 (3 * n + 4)).toNat

end

end A399167.P4076401345162190009

/-! ## A399167.P11939260175046426143

`A398717(n+1)+A010815(A050409(n+2))`
-/

namespace A399167.P11939260175046426143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398717 (n + 1) + A010815 (A050409 (n + 2)).toNat

end

end A399167.P11939260175046426143

/-!
# A399169: Number of solutions to x^2 + 4*y^2 = n in positive integers x and y.

The programs for A399169, there is no canonical definition to state claims against.
-/

/-! ## A399169.P16093124998795817700

`A026741(A004531(n))-A399197(n)`
-/

namespace A399169.P16093124998795817700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A004531 n).toNat - A399197 n

end

end A399169.P16093124998795817700

/-! ## A399169.P10887979037798054439

`A272178(n)%A337743(n+1)`
-/

namespace A399169.P10887979037798054439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A272178 n) (A337743 (n + 1))

end

end A399169.P10887979037798054439

/-! ## A399169.P1919660964128005784

`and(A010414(n+1), A342154(n))`
-/

namespace A399169.P1919660964128005784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010414 (n + 1)) (A342154 n)

end

end A399169.P1919660964128005784

/-! ## A399169.P8170092958926681874

`A063725(abs(A345417(n+1))!)`
-/

namespace A399169.P8170092958926681874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 (Nat.factorial |A345417 (n + 1)|.toNat)

end

end A399169.P8170092958926681874

/-! ## A399169.P11163523032344880538

`and(A218604(n), A362152(n+1))`
-/

namespace A399169.P11163523032344880538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A218604 n) (A362152 (n + 1))

end

end A399169.P11163523032344880538

/-!
# A399172: a(n) = 2^((2^n-(-1)^n)/3).

The programs for A399172, the canonical program `A399172.P1208699379547714089` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399172 has offset 0).

The definition of A399172 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A399172.P1208699379547714089

`2^round(2^n/3)`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A399172

/-- `2^round(2^n/3)` -/
def P1208699379547714089.Spec : Prop :=
  ∀ n, P1208699379547714089.a n = (A399172 n : ℚ)

end A399172

/-! ## A399172.P7311806714402582312

`2^((2^n-(-1)^n)/3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A399172.P7311806714402582312
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (((2 ^ n : ℤ) - (-1) ^ n : ℚ) / 3 : ℝ)

end

end A399172.P7311806714402582312

namespace A399172

/-- `2^((2^n-(-1)^n)/3)` -/
def P7311806714402582312.Spec : Prop :=
  ∀ n, P7311806714402582312.a n = (A399172 n : ℝ)

end A399172

/-! ## A399172.P7938150377058837482

`2*(a(n-1)/gcd(2, n))²` with `a(0)=1`
-/

namespace A399172.P7938150377058837482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) / (Nat.gcd 2 n : ℚ)) ^ 2

end

end A399172.P7938150377058837482

namespace A399172

/-- `2*(a(n-1)/gcd(2, n))²` -/
def P7938150377058837482.Spec : Prop :=
  ∀ n, P7938150377058837482.a n = (A399172 n : ℚ)

end A399172

/-! ## A399172.P17112359975407879708

`a(n-1)*a(n-2)²` with `a(0)=1, a(1)=2`
-/

namespace A399172.P17112359975407879708
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) * a (n - 2) ^ 2

end

end A399172.P17112359975407879708

namespace A399172

/-- `a(n-1)*a(n-2)²` -/
def P17112359975407879708.Spec : Prop :=
  ∀ n, (P17112359975407879708.a n : ℤ) = A399172 n

end A399172

/-! ## A399172.P2206954176585034257

`2^2^(n-1)/a(n-1)` with `a(0)=1`
-/

namespace A399172.P2206954176585034257
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (2 : ℝ) ^ ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) / a (n - 1)

end

end A399172.P2206954176585034257

namespace A399172

/-- `2^2^(n-1)/a(n-1)` -/
def P2206954176585034257.Spec : Prop :=
  ∀ n, P2206954176585034257.a n = (A399172 n : ℝ)

end A399172

/-!
# A399176: A well-defined quasi-periodic solution to the recurrence (a(n) = a(n-a(n-2)) + a(n-a(n-3))).

The programs for A399176, the canonical program `A399176.P9600605657478409595` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399176 has offset 1).

The definition of A399176 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-2))+a(n-a(n-3))` (program `A399176.P9600605657478409595`, by `A399176.P9600605657478409595.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A399176.P9600605657478409595

`a(n-a(n-2))+a(n-a(n-3))` with `a(0)=4, a(1)=2, a(2)=5, a(3)=3, a(4)=1, a(5)=4, a(6)=7, a(7)=5`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A399176

/-- `a(n-a(n-2))+a(n-a(n-3))` -/
def P9600605657478409595.Spec : Prop :=
  ∀ n, (P9600605657478409595.a n : ℤ) = A399176 (n + 1)

theorem P9600605657478409595.correct : P9600605657478409595.Spec := by
  intro n
  simp only [A399176, Nat.add_sub_cancel]

end A399176

/-!
# A399178: The sequence R(n) defined by Alkan et al. (2020).

The programs for A399178, there is no canonical definition to state claims against.
-/

/-! ## A399178.P18267950346737542214

`A096907(A022644(n))`
-/

namespace A399178.P18267950346737542214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096907 (A022644 n).toNat

end

end A399178.P18267950346737542214

/-!
# A399180: Period 7: repeat 0,1,2,1,2,1,0.

The programs for A399180, the canonical program `A399180.P3731468127804606697` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399180 has offset 0).

The definition of A399180 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A399180.P3731468127804606697

`ogf((x+2x^2+x^3+2x^4+x^5)/(1-x^7))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A399180

/-- `ogf((x+2x^2+x^3+2x^4+x^5)/(1-x^7))` -/
def P3731468127804606697.Spec : Prop :=
  ∀ n, P3731468127804606697.a n = A399180 n

theorem P3731468127804606697.correct : P3731468127804606697.Spec := by
  intro n
  simp only [A399180]

end A399180

/-!
# A399181: Absolute values of A379078.

The programs for A399181, there is no canonical definition to state claims against.
-/

/-! ## A399181.P11645718850596584

`abs(A379078(n))`
-/

namespace A399181.P11645718850596584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A379078 n|

end

end A399181.P11645718850596584

/-! ## A399181.P15074728438626485269

`abs(∑[A377091(n)])`
-/

namespace A399181.P15074728438626485269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A399181.P15074728438626485269

/-! ## A399181.P17917749760279902590

`abs(∑[A379061(n-1)+a(n-1)])` with `a(0)=0`
-/

namespace A399181.P17917749760279902590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A379061 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A399181.P17917749760279902590

/-! ## A399181.P13817855548791061772

`lcm(A054977(n), A379078(n))`
-/

namespace A399181.P13817855548791061772
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A054977 n) (A379078 n)

end

end A399181.P13817855548791061772

/-! ## A399181.P1360286665404880497

`gcd(∑[A377091(n)], A379078(n))`
-/

namespace A399181.P1360286665404880497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377091 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A379078 n)

end

end A399181.P1360286665404880497

/-! ## A399181.P10060901911239965390

`lcm(∑[A377091(n)], A131561(n))`
-/

namespace A399181.P10060901911239965390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377091 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A131561 n)

end

end A399181.P10060901911239965390

/-!
# A399183: Indices of 0's in A379078 and A399181.

The programs for A399183, there is no canonical definition to state claims against.
-/

/-! ## A399183.P9087080613055389757

`eq[0, A379078(n)]`
-/

namespace A399183.P9087080613055389757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379078 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A399183.P9087080613055389757

/-! ## A399183.P11985583103400302229

`eq[2, A377091(n)+a(n-1)]` with `a(0)=2`
-/

namespace A399183.P11985583103400302229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A377091 n + f2 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A399183.P11985583103400302229

/-! ## A399183.P5987622556693724913

`eq[0, A399181(n)]`
-/

namespace A399183.P5987622556693724913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399181 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A399183.P5987622556693724913

/-! ## A399183.P18282114501182022449

`lt[A399181(n), A033999(n)]`
-/

namespace A399183.P18282114501182022449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399181 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A399183.P18282114501182022449

/-! ## A399183.P14731596537754697260

`lt[A399181(n), A001222(A002145(n+1))]`
-/

namespace A399183.P14731596537754697260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399181 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002145 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A399183.P14731596537754697260

/-!
# A399184: First differences of A164888.

The programs for A399184, there is no canonical definition to state claims against.
-/

/-! ## A399184.P1989816760028123261

`Δ[A164888(1+n)]`
-/

namespace A399184.P1989816760028123261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164888 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A399184.P1989816760028123261

/-! ## A399184.P9340248772875439640

`A164888(2+n)-A164888(n+1)`
-/

namespace A399184.P9340248772875439640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164888 (2 + n) - A164888 (n + 1)

end

end A399184.P9340248772875439640

/-!
# A399185: a(n) is the number of tilings of a 5 X 2n rectangle into Z-tetrominoes and U-pentominoes.

The programs for A399185, the canonical program `A399185.P9420212230745504611` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399185 has offset 0).

The definition of A399185 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A399185.P9420212230745504611

`a(n-4)+4*a(n-5)+a(n-6)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=2, a(6)=0`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A399185

/-- `a(n-4)+4*a(n-5)+a(n-6)` -/
def P9420212230745504611.Spec : Prop :=
  ∀ n, (P9420212230745504611.a n : ℤ) = A399185 n

theorem P9420212230745504611.correct : P9420212230745504611.Spec := by
  intro n
  simp only [A399185]

end A399185

/-! ## A399185.P9684703329168566523

`ogf((1-x^4-2x^5-x^6)/(1-x^4-4x^5-x^6))`
-/

namespace A399185.P9684703329168566523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, 0, -1, -2, -1] [1, 0, 0, 0, -1, -4, -1] n

end

end A399185.P9684703329168566523

namespace A399185

/-- `ogf((1-x^4-2x^5-x^6)/(1-x^4-4x^5-x^6))` -/
def P9684703329168566523.Spec : Prop :=
  ∀ n, P9684703329168566523.a n = A399185 n

end A399185

/-!
# A399186: Number of square (0,1)-matrices with n ones, no zero rows or columns, and the same multiset of row sums as of column sums.

The programs for A399186, there is no canonical definition to state claims against.
-/

/-! ## A399186.P12888949533072806322

`A095726(A005773(n))`
-/

namespace A399186.P12888949533072806322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095726 (A005773 n).toNat

end

end A399186.P12888949533072806322

/-! ## A399186.P13616140369807790077

`A008621(∑[A381281(n)])`
-/

namespace A399186.P13616140369807790077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A399186.P13616140369807790077

/-!
# A399188: Numbers x such that recursion {x -> A000005(x)+1} reaches a fixed-point of 4 rather than 3.

The programs for A399188, the canonical program `A399188.P10361508471299617653` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399188 has offset 1).

The definition of A399188 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A399188.P10361508471299617653

`eq[-1, a(A000005(n+1))%2]+1` with `a(0)=7, a(1)=1, a(2)=-2, a(3)=-1, a(4)=4`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A399188

/-- `eq[-1, a(A000005(n+1))%2]+1` -/
def P10361508471299617653.Spec : Prop :=
  ∀ n, (P10361508471299617653.a n : ℤ) = A399188 (n + 1)

theorem P10361508471299617653.correct : P10361508471299617653.Spec := by
  intro n
  simp only [A399188, Nat.add_sub_cancel]

end A399188

/-! ## A399188.P2716322434472888

`eq[2, A002033(A000005(1+n))]+1`
-/

namespace A399188.P2716322434472888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (A000005 (1 + n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A399188.P2716322434472888

namespace A399188

/-- `eq[2, A002033(A000005(1+n))]+1` -/
def P2716322434472888.Spec : Prop :=
  ∀ n, (P2716322434472888.a n : ℤ) = A399188 (n + 1)

end A399188

/-! ## A399188.P999583609456850985

`eq[2, A325765(A000005(n+1))]+1`
-/

namespace A399188.P999583609456850985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325765 (A000005 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A399188.P999583609456850985

namespace A399188

/-- `eq[2, A325765(A000005(n+1))]+1` -/
def P999583609456850985.Spec : Prop :=
  ∀ n, (P999583609456850985.a n : ℤ) = A399188 (n + 1)

end A399188

/-! ## A399188.P10419994801875098192

`eq[2, A032741(A000005(n+1)+1)]+1`
-/

namespace A399188.P10419994801875098192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A000005 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A399188.P10419994801875098192

namespace A399188

/-- `eq[2, A032741(A000005(n+1)+1)]+1` -/
def P10419994801875098192.Spec : Prop :=
  ∀ n, (P10419994801875098192.a n : ℤ) = A399188 (n + 1)

end A399188

/-! ## A399188.P16233934760991530016

`eq[2, A304793(1+A000005(n+1))]+1`
-/

namespace A399188.P16233934760991530016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304793 (1 + A000005 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A399188.P16233934760991530016

namespace A399188

/-- `eq[2, A304793(1+A000005(n+1))]+1` -/
def P16233934760991530016.Spec : Prop :=
  ∀ n, (P16233934760991530016.a n : ℤ) = A399188 (n + 1)

end A399188

/-! ## A399188.P18422420213026341220

`eq[3, A000005(A000005(n+1)+1)]+1`
-/

namespace A399188.P18422420213026341220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A399188.P18422420213026341220

namespace A399188

/-- `eq[3, A000005(A000005(n+1)+1)]+1` -/
def P18422420213026341220.Spec : Prop :=
  ∀ n, (P18422420213026341220.a n : ℤ) = A399188 (n + 1)

end A399188

/-! ## A399188.P17842462979940416716

`eq[2, A032741(A334954(1+n))]+1`
-/

namespace A399188.P17842462979940416716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A334954 (1 + n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A399188.P17842462979940416716

namespace A399188

/-- `eq[2, A032741(A334954(1+n))]+1` -/
def P17842462979940416716.Spec : Prop :=
  ∀ n, (P17842462979940416716.a n : ℤ) = A399188 (n + 1)

end A399188

/-! ## A399188.P1634958931843462181

`eq[3, A077462(A334954(n+1))]+1`
-/

namespace A399188.P1634958931843462181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (A334954 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A399188.P1634958931843462181

namespace A399188

/-- `eq[3, A077462(A334954(n+1))]+1` -/
def P1634958931843462181.Spec : Prop :=
  ∀ n, (P1634958931843462181.a n : ℤ) = A399188 (n + 1)

end A399188

/-!
# A399189: a(n) = n^3 - A283626(n): number of lattice points in the cube [1,n]^3 not covered by any box [1,p] X [1,q] X [1,r] with p*q*r = n.

The programs for A399189, there is no canonical definition to state claims against.
-/

/-! ## A399189.P9802972255134161803

`(n+1)^3-A283626(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A399189.P9802972255134161803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - A283626 (n + 1)

end

end A399189.P9802972255134161803

/-!
# A399190: Number of numbers equal to the sum of the swinging factorials (A056040) of their base-n digits.

The programs for A399190, there is no canonical definition to state claims against.
-/

/-! ## A399190.P13418479869172207316

`(A029931(A181391(n+1))%A295771(n))%3+2`
-/

namespace A399190.P13418479869172207316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A029931 (A181391 (n + 1)).toNat) (A295771 n)) 3 + 2

end

end A399190.P13418479869172207316

/-! ## A399190.P16187310308753303846

`(A181391(n+1)-A000035(A389995(2*(n+2))))%3+2`
-/

namespace A399190.P16187310308753303846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181391 (n + 1) - A000035 (A389995 (2 * (n + 2))).toNat) 3 + 2

end

end A399190.P16187310308753303846

/-! ## A399190.P13581747010515173917

`A306323(A030770(n+1))`
-/

namespace A399190.P13581747010515173917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306323 (A030770 (n + 1)).toNat

end

end A399190.P13581747010515173917

/-! ## A399190.P5992968205688246988

`A384225(A158649(n))+A055893(n+4)`
-/

namespace A399190.P5992968205688246988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384225 (A158649 n).toNat + A055893 (n + 4)

end

end A399190.P5992968205688246988

/-! ## A399190.P2951079360694632613

`A288569(A067943(n+2))`
-/

namespace A399190.P2951079360694632613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288569 (A067943 (n + 2)).toNat

end

end A399190.P2951079360694632613

/-!
# A399191: a(n) is the smallest nonnegative integer k where exactly n pairs of positive integers (x, y) exist such that x^2 + 4*y^2 = k.

The programs for A399191, there is no canonical definition to state claims against.
-/

/-! ## A399191.P1283211314672424857

`A000292(n)*A262956(A285854(n+3))`
-/

namespace A399191.P1283211314672424857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n * A262956 (A285854 (n + 3)).toNat

end

end A399191.P1283211314672424857

/-!
# A399192: a(n) = number of integers k <= n with g(k)^4 < k, where g(k) is the largest divisor d of k satisfying d <= sqrt(k) (A033676).

The programs for A399192, there is no canonical definition to state claims against.
-/

/-! ## A399192.P10317784092096429102

`A000720(n+1)+∑[A185284(A014682(n))]`
-/

namespace A399192.P10317784092096429102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A014682 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399192.P10317784092096429102

/-! ## A399192.P13911390745722664222

`A255574(lt[A035462(n), A056595(2*(n+2))])`
-/

namespace A399192.P13911390745722664222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035462 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056595 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255574 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A399192.P13911390745722664222

/-! ## A399192.P5538442838482842053

`ceil(log(A276465(n+1)))`
-/

namespace A399192.P5538442838482842053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (A276465 (n + 1) : ℝ)⌉

end

end A399192.P5538442838482842053

/-! ## A399192.P9376110058152779900

`A198318(A006666(n+3))+A000720(n+1)`
-/

namespace A399192.P9376110058152779900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198318 (A006666 (n + 3)).toNat + A000720 (n + 1)

end

end A399192.P9376110058152779900

/-! ## A399192.P10307556081727332476

`A255574(n+1)+A198318(A006666(n+3))`
-/

namespace A399192.P10307556081727332476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255574 (n + 1) + A198318 (A006666 (n + 3)).toNat

end

end A399192.P10307556081727332476

/-!
# A399193: Number of connected directed 2-regular graphs on n nodes without directed 2-cycles.

The programs for A399193, there is no canonical definition to state claims against.
-/

/-! ## A399193.P676684627619776271

`A219894(n+5)-A316359(A152796(n))`
-/

namespace A399193.P676684627619776271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219894 (n + 5) - A316359 (A152796 n).toNat

end

end A399193.P676684627619776271

/-! ## A399193.P18262652248389353372

`A219894(n+5)-A025466(A099371(n))`
-/

namespace A399193.P18262652248389353372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219894 (n + 5) - A025466 (A099371 n).toNat

end

end A399193.P18262652248389353372

/-!
# A399195: Number of inequivalent self-dual Boolean functions of n variables with trivial automorphism group under permutations of the variables.

The programs for A399195, there is no canonical definition to state claims against.
-/

/-! ## A399195.P15814396804348484036

`30^a(n-1)` with `a(0)=2, a(1)=2, a(2)=0, a(3)=0, a(4)=240`
-/

namespace A399195.P15814396804348484036
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 0, 0, 240] fun n a =>
  30 ^ a (n - 1)

end

end A399195.P15814396804348484036

/-!
# A399197: Number of nonnegative integer solutions to the equation x^2 + 4*y^2 = n.

The programs for A399197, there is no canonical definition to state claims against.
-/

/-! ## A399197.P14643154663165783720

`C(A056170(A263563(3*n+1)), A000120(n))`
-/

namespace A399197.P14643154663165783720
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A056170 (A263563 (3 * n + 1)).toNat).toNat (A000120 n).toNat

end

end A399197.P14643154663165783720

/-! ## A399197.P6239537082191217008

`A355744(∑[A250230(n+1)]-A355744(n+1))`
-/

namespace A399197.P6239537082191217008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250230 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355744 (∑ j ∈ Finset.range (n + 1), f1 j - A355744 (n + 1)).toNat

end

end A399197.P6239537082191217008

/-! ## A399197.P1589626309470309447

`A344606(2*(n+1))%A113350(A001263(n+1))`
-/

namespace A399197.P1589626309470309447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344606 (2 * (n + 1))) (A113350 (A001263 (n + 1)).toNat)

end

end A399197.P1589626309470309447

/-! ## A399197.P1344084846784494351

`and(A102550(3*(n+1)), A230953(A098851(n+3)))`
-/

namespace A399197.P1344084846784494351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A102550 (3 * (n + 1))) (A230953 (A098851 (n + 3)).toNat)

end

end A399197.P1344084846784494351

/-! ## A399197.P16992267238533555868

`gcd(A047383(3*n+4), A257993(A157151(n)+1))-1`
-/

namespace A399197.P16992267238533555868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A047383 (3 * n + 4)) (A257993 (A157151 n + 1).toNat) : ℤ) - 1

end

end A399197.P16992267238533555868

/-!
# A399199: Table of T(n, k) read by antidiagonals: Exact inverse of Pascal's triangle (A007318) such that T(binomial(N, k), k) = N, for n >= 0, k >= 1.

The programs for A399199, there is no canonical definition to state claims against.
-/

/-! ## A399199.P1582140383856080328

`floor(log2(A066884(1+n)))`
-/

namespace A399199.P1582140383856080328
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A066884 (1 + n)).toNat

end

end A399199.P1582140383856080328

/-! ## A399199.P14520399115673752317

`A067586(n)+A025581(n)`
-/

namespace A399199.P14520399115673752317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067586 n + A025581 n

end

end A399199.P14520399115673752317

/-! ## A399199.P18410029044509332811

`A000523(A066884(1+n))`
-/

namespace A399199.P18410029044509332811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A066884 (1 + n)).toNat

end

end A399199.P18410029044509332811

/-! ## A399199.P16608531043208821766

`A029837(A066884(n+1)+1)-1`
-/

namespace A399199.P16608531043208821766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A066884 (n + 1) + 1).toNat - 1

end

end A399199.P16608531043208821766

/-! ## A399199.P6297148127568682719

`A059829(A264872(n))`
-/

namespace A399199.P6297148127568682719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059829 (A264872 n).toNat

end

end A399199.P6297148127568682719

