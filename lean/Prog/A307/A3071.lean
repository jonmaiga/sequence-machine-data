import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C045
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
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
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
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

/-!
# A307100: a(n) = Sum_{d|n} (tau(d)*pod(d)) where tau(k) = the number of divisors of k (A000005) and pod(k) = the product of the divisors of k (A007955).

The programs for A307100, the canonical program `A307100.P11035796224426084874` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307100 has offset 1).

The definition of A307100 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A307100.P11035796224426084874

`∑{d}[n+1, A394346(#)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A307100

/-- `∑{d}[n+1, A394346(#)]` -/
def P11035796224426084874.Spec : Prop :=
  ∀ n, P11035796224426084874.a n = A307100 (n + 1)

theorem P11035796224426084874.correct : P11035796224426084874.Spec := by
  intro n
  simp only [A307100, Nat.add_sub_cancel]

end A307100

/-! ## A307100.P14909713248410619955

`∑{d}[n+1, A000005(#)*A007955(#)]`
-/

namespace A307100.P14909713248410619955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A007955 d

end

end A307100.P14909713248410619955

namespace A307100

/-- `∑{d}[n+1, A000005(#)*A007955(#)]` -/
def P14909713248410619955.Spec : Prop :=
  ∀ n, P14909713248410619955.a n = A307100 (n + 1)

end A307100

/-!
# A307101: a(n) = Product_{d|n} (tau(d)*pod(d)) where tau(k) = the number of divisors of k (A000005) and pod(k) = the product of the divisors of k (A007955).

The programs for A307101, the canonical program `A307101.P8537828544159030044` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307101 has offset 1).

The definition of A307101 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A211776, A266265, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A307101.P8537828544159030044

`A211776(n+1)*A266265(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A307101

/-- `A211776(n+1)*A266265(n+1)` -/
def P8537828544159030044.Spec : Prop :=
  ∀ n, P8537828544159030044.a n = A307101 (n + 1)

theorem P8537828544159030044.correct : P8537828544159030044.Spec := by
  intro n
  simp only [A307101, Nat.add_sub_cancel]

end A307101

/-! ## A307101.P1049056456001765581

`∏{d}[n+1, A394346(#)]`
-/

namespace A307101.P1049056456001765581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A394346 d

end

end A307101.P1049056456001765581

namespace A307101

/-- `∏{d}[n+1, A394346(#)]` -/
def P1049056456001765581.Spec : Prop :=
  ∀ n, P1049056456001765581.a n = A307101 (n + 1)

end A307101

/-! ## A307101.P18378059967173442308

`A306705(n+1)*A322672(n+1)`
-/

namespace A307101.P18378059967173442308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306705 (n + 1) * A322672 (n + 1)

end

end A307101.P18378059967173442308

namespace A307101

/-- `A306705(n+1)*A322672(n+1)` -/
def P18378059967173442308.Spec : Prop :=
  ∀ n, P18378059967173442308.a n = A307101 (n + 1)

end A307101

/-! ## A307101.P5343791931069073070

`A334730(n+1)*A334807(n+1)`
-/

namespace A307101.P5343791931069073070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334730 (n + 1) * A334807 (n + 1)

end

end A307101.P5343791931069073070

namespace A307101

/-- `A334730(n+1)*A334807(n+1)` -/
def P5343791931069073070.Spec : Prop :=
  ∀ n, P5343791931069073070.a n = A307101 (n + 1)

end A307101

/-! ## A307101.P16673412959471005757

`A266265(n+1)/A007955(n+1)*A306705(n+1)`
-/

namespace A307101.P16673412959471005757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266265 (n + 1) : ℚ) / (A007955 (n + 1) : ℚ) * (A306705 (n + 1) : ℚ)

end

end A307101.P16673412959471005757

namespace A307101

/-- `A266265(n+1)/A007955(n+1)*A306705(n+1)` -/
def P16673412959471005757.Spec : Prop :=
  ∀ n, P16673412959471005757.a n = (A307101 (n + 1) : ℚ)

end A307101

/-! ## A307101.P13859386119284584876

`A266265(n+1)/A206032(n+1)*A324987(n+1)`
-/

namespace A307101.P13859386119284584876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266265 (n + 1) : ℚ) / (A206032 (n + 1) : ℚ) * (A324987 (n + 1) : ℚ)

end

end A307101.P13859386119284584876

namespace A307101

/-- `A266265(n+1)/A206032(n+1)*A324987(n+1)` -/
def P13859386119284584876.Spec : Prop :=
  ∀ n, P13859386119284584876.a n = (A307101 (n + 1) : ℚ)

end A307101

/-!
# A307102: Numbers written in base of double factorial numbers (A006882).

The programs for A307102, there is no canonical definition to state claims against.
-/

/-! ## A307102.P13302114460747252835

`∑{digits}[A181521(n+1), A135654(#)]`
-/

namespace A307102.P13302114460747252835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A135654 x).sum

end

end A307102.P13302114460747252835

/-! ## A307102.P1899889888418262465

`∑{digits}[A181521(n+1), A135655(#)]`
-/

namespace A307102.P1899889888418262465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A135655 x).sum

end

end A307102.P1899889888418262465

/-! ## A307102.P16261135347964245741

`A007623(∑{digits}[A181521(n+1), A061602(#)])`
-/

namespace A307102.P16261135347964245741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A061602 x).sum.toNat

end

end A307102.P16261135347964245741

/-! ## A307102.P2077129374921406093

`A007623(A061602(A181521(n+1)))`
-/

namespace A307102.P2077129374921406093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (A061602 (A181521 (n + 1)).toNat).toNat

end

end A307102.P2077129374921406093

/-! ## A307102.P10251451207729684919

`A007623(A181521(n+1)-A108911(A181521(n+1)))`
-/

namespace A307102.P10251451207729684919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (A181521 (n + 1) - A108911 (A181521 (n + 1)).toNat).toNat

end

end A307102.P10251451207729684919

/-!
# A307103: G.f. A(x) satisfies x = A( A(x) + 4*A(x)^2 ).

The programs for A307103, there is no canonical definition to state claims against.
-/

/-! ## A307103.P518911600805820974

`(-1)^(n+1)*A213422(n)`
-/

namespace A307103.P518911600805820974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 1) * A213422 n

end

end A307103.P518911600805820974

/-! ## A307103.P10374338786494644600

`A213422(n)/A062157(n+2)`
-/

namespace A307103.P10374338786494644600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213422 n : ℚ) / (A062157 (n + 2) : ℚ)

end

end A307103.P10374338786494644600

/-! ## A307103.P295335807986466324

`A213422(n)*A343785(A004207(n))`
-/

namespace A307103.P295335807986466324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213422 n * A343785 (A004207 n).toNat

end

end A307103.P295335807986466324

/-! ## A307103.P5354763789296287749

`A213422(n)*A257075(A165355(n))`
-/

namespace A307103.P5354763789296287749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213422 n * A257075 (A165355 n).toNat

end

end A307103.P5354763789296287749

/-! ## A307103.P4299612946591846972

`A213422(n)*A343785(A165355(3*(n+1)))`
-/

namespace A307103.P4299612946591846972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213422 n * A343785 (A165355 (3 * (n + 1))).toNat

end

end A307103.P4299612946591846972

/-!
# A307104: a(n) is the number which, when concatenated with A003226(n), the n-th automorphic number, gives (A003226(n))^2.

The programs for A307104, there is no canonical definition to state claims against.
-/

/-! ## A307104.P2721197264797892745

`A003226(n+1)*(A003226(n+1)-1)/10^A055642(A003226(n+1))`
-/

namespace A307104.P2721197264797892745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003226 (n + 1) * (A003226 (n + 1) - 1) : ℚ) / (10 : ℚ) ^ (A055642 (A003226 (n + 1)).toNat : ℤ)

end

end A307104.P2721197264797892745

/-! ## A307104.P13206425602127275623

`A114412(A114551(n))*A114539(n)`
-/

namespace A307104.P13206425602127275623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114412 (A114551 n).toNat * A114539 n

end

end A307104.P13206425602127275623

/-! ## A307104.P11744222367271430133

`A059995(lcm(A167499(n), A293743(n)))`
-/

namespace A307104.P11744222367271430133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (Int.lcm (A167499 n) (A293743 n))

end

end A307104.P11744222367271430133

/-!
# A307105: Number of rational numbers which can be constructed from the set of integers between 1 and n, through a combination of multiplication and division.

The programs for A307105, there is no canonical definition to state claims against.
-/

/-! ## A307105.P5174081997582839656

`∏{e}[(n!/floor(n/2)!)², A000040(#)]`
-/

namespace A307105.P5174081997582839656
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial n : ℚ) / (Nat.factorial ⌊(n : ℚ) / 2⌋.toNat : ℚ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, A000040 (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p)

end

end A307105.P5174081997582839656

/-! ## A307105.P15776280285518557346

`∏{e}[A193282(n), A000040(#)]`
-/

namespace A307105.P15776280285518557346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193282 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)

end

end A307105.P15776280285518557346

/-! ## A307105.P17671384662524031306

`∏{e}[A193282(n), A030059(#)]`
-/

namespace A307105.P17671384662524031306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193282 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A030059 (Nat.factorization (f1 n).natAbs p)

end

end A307105.P17671384662524031306

/-!
# A307107: a(n) = A025487(n)/A247451(n).

The programs for A307107, there is no canonical definition to state claims against.
-/

/-! ## A307107.P16816841132014351478

`A025487(n+1)/A247451(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A307107.P16816841132014351478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025487 (n + 1) : ℚ) / (A247451 (n + 1) : ℚ)

end

end A307107.P16816841132014351478

/-! ## A307107.P6013302899289190047

`A025487(n+1)/A002110(A061394(n+1))`
-/

namespace A307107.P6013302899289190047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025487 (n + 1) : ℚ) / (A002110 (A061394 (n + 1)).toNat : ℚ)

end

end A307107.P6013302899289190047

/-! ## A307107.P11623869838103581126

`∪[A099992(n+1), A099993(n+1)]/A247451(n+1)`
-/

namespace A307107.P11623869838103581126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099993 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℚ) / (A247451 (n + 1) : ℚ)

end

end A307107.P11623869838103581126

/-! ## A307107.P11900724730089881974

`record[A329899(n+1)]/A247451(n+1)`
-/

namespace A307107.P11900724730089881974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A247451 (n + 1) : ℚ)

end

end A307107.P11900724730089881974

/-! ## A307107.P2730914037046857751

`record[A051466(n+2)]/A247451(n+1)`
-/

namespace A307107.P2730914037046857751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A247451 (n + 1) : ℚ)

end

end A307107.P2730914037046857751

/-! ## A307107.P7610694423300388571

`A051466(A329898(n+1))/A247451(n+1)`
-/

namespace A307107.P7610694423300388571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051466 (A329898 (n + 1)).toNat : ℚ) / (A247451 (n + 1) : ℚ)

end

end A307107.P7610694423300388571

/-! ## A307107.P2470689227089192490

`A397499(A331119(n+1))`
-/

namespace A307107.P2470689227089192490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397499 (A331119 (n + 1)).toNat

end

end A307107.P2470689227089192490

/-! ## A307107.P10128368832052433707

`A055932(A331119(n+1))/A247451(n+1)`
-/

namespace A307107.P10128368832052433707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055932 (A331119 (n + 1)).toNat : ℚ) / (A247451 (n + 1) : ℚ)

end

end A307107.P10128368832052433707

/-! ## A307107.P15428931653576023741

`A181821(A181820(n+1))/A247451(n+1)`
-/

namespace A307107.P15428931653576023741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181821 (A181820 (n + 1)).toNat : ℚ) / (A247451 (n + 1) : ℚ)

end

end A307107.P15428931653576023741

/-! ## A307107.P581818065053493760

`A329899(A330683(n+1))/A247451(n+1)`
-/

namespace A307107.P581818065053493760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329899 (A330683 (n + 1)).toNat : ℚ) / (A247451 (n + 1) : ℚ)

end

end A307107.P581818065053493760

/-! ## A307107.P3132954706341349051

`filter[A397499(n+1), A322585(#)]`
-/

namespace A307107.P3132954706341349051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322585 (f1 j).toNat = 1) n)

end

end A307107.P3132954706341349051

/-! ## A307107.P554362405486349316

`A025487(n+1)/A034386(A006530(A181815(n+1)))`
-/

namespace A307107.P554362405486349316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025487 (n + 1) : ℚ) / (A034386 (A006530 (A181815 (n + 1)).toNat).toNat : ℚ)

end

end A307107.P554362405486349316

/-! ## A307107.P15716570434873439400

`A025487(n+1)/gcd(A025487(n+1), A117213(n+1))`
-/

namespace A307107.P15716570434873439400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025487 (n + 1) : ℚ) / (Int.gcd (A025487 (n + 1)) (A117213 (n + 1)) : ℚ)

end

end A307107.P15716570434873439400

/-! ## A307107.P15240775987827244059

`A336551(A025487(n+1))+1`
-/

namespace A307107.P15240775987827244059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336551 (A025487 (n + 1)).toNat + 1

end

end A307107.P15240775987827244059

/-! ## A307107.P7795874652774568959

`A331188(A181815(n+1))`
-/

namespace A307107.P7795874652774568959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331188 (A181815 (n + 1)).toNat

end

end A307107.P7795874652774568959

/-!
# A307108: Numbers x that are equal to lpf(x)*gpf(x)*(lpf(x)+gpf(x))/2, where lpf(x) < gpf(x) are the least and the greatest prime factors of x: A020639 and A006530.

The programs for A307108, there is no canonical definition to state claims against.
-/

/-! ## A307108.P4944196641609460274

`filter[A307117(n+1), A212793(#)]`
-/

namespace A307108.P4944196641609460274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A307108.P4944196641609460274

/-! ## A307108.P7432115049005074826

`filter[A307117(n+1), A354996(#)]`
-/

namespace A307108.P7432115049005074826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354996 (f1 j).toNat = 1) n)

end

end A307108.P7432115049005074826

/-! ## A307108.P13312586776630936076

`filter[A307117(n+1), A355823(#)]`
-/

namespace A307108.P13312586776630936076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355823 (f1 j).toNat = 1) n)

end

end A307108.P13312586776630936076

/-! ## A307108.P7946922928760245778

`filter[A307117(n+1), A355825(#)]`
-/

namespace A307108.P7946922928760245778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355825 (f1 j).toNat = 1) n)

end

end A307108.P7946922928760245778

/-! ## A307108.P17705284807498912605

`filter[A307117(n+1), A359471(#)]`
-/

namespace A307108.P17705284807498912605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A307108.P17705284807498912605

/-!
# A307109: Number of integer solutions to x^2 + x*y + y^2 <= n excluding (0,0), divided by 2.

The programs for A307109, there is no canonical definition to state claims against.
-/

/-! ## A307109.P8871008051154182950

`∑[3*A002324(n+1)-A000122(n+1)]`
-/

namespace A307109.P8871008051154182950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A002324 (n + 1) - A000122 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307109.P8871008051154182950

/-! ## A307109.P1621442417688719446

`∑[A004016(n+1)/2-A000122(n+1)]`
-/

namespace A307109.P1621442417688719446
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004016 (n + 1) : ℚ) / 2 - (A000122 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307109.P1621442417688719446

/-!
# A307110: Index of matching grid point in the bijection between two infinite quadratic grids with one grid rotated by Pi/4 around the common point (0,0), using an enumeration of the grid points by A305575 and A305576.

The programs for A307110, there is no canonical definition to state claims against.
-/

/-! ## A307110.P4499494246041006246

`A307731(n)%p?[A084849(n)]`
-/

namespace A307110.P4499494246041006246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084849 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307731 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A307110.P4499494246041006246

/-! ## A307110.P12213331229876497530

`A003056(A000217(A307731(n)))`
-/

namespace A307110.P12213331229876497530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A000217 (A307731 n).toNat).toNat

end

end A307110.P12213331229876497530

/-! ## A307110.P12721231059939645742

`A307731(n)+A098108(A217776(n))`
-/

namespace A307110.P12721231059939645742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307731 n + A098108 (A217776 n).toNat

end

end A307110.P12721231059939645742

/-! ## A307110.P17436269448490016946

`A097325(A032661(n))*A307731(n)`
-/

namespace A307110.P17436269448490016946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097325 (A032661 n).toNat * A307731 n

end

end A307110.P17436269448490016946

/-! ## A307110.P1044640504013633247

`A307731(n)*A322356(A002061(n))`
-/

namespace A307110.P1044640504013633247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307731 n * A322356 (A002061 n).toNat

end

end A307110.P1044640504013633247

/-! ## A307110.P14847206481994429786

`A124778(A227287(n))*A307731(n)`
-/

namespace A307110.P14847206481994429786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124778 (A227287 n).toNat * A307731 n

end

end A307110.P14847206481994429786

/-! ## A307110.P13127131271247479242

`A307731(n)*A318320(p?[A152998(n)])`
-/

namespace A307110.P13127131271247479242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307731 n * A318320 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A307110.P13127131271247479242

/-! ## A307110.P18385851331964223381

`A307731(n)+A000007(A001597(n+1))`
-/

namespace A307110.P18385851331964223381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307731 n + A000007 (A001597 (n + 1)).toNat

end

end A307110.P18385851331964223381

/-! ## A307110.P6698079036384083341

`A307731(A016406(A056191(n+1))+n)`
-/

namespace A307110.P6698079036384083341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307731 (A016406 (A056191 (n + 1)).toNat + (n : ℤ)).toNat

end

end A307110.P6698079036384083341

/-! ## A307110.P14762720819404952113

`A307731(A151878(A056191(n+1))+n)`
-/

namespace A307110.P14762720819404952113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307731 (A151878 (A056191 (n + 1)).toNat + (n : ℤ)).toNat

end

end A307110.P14762720819404952113

/-! ## A307110.P1702806026612753885

`A307731(n)+A269175(A154576(n+1))`
-/

namespace A307110.P1702806026612753885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307731 n + A269175 (A154576 (n + 1)).toNat

end

end A307110.P1702806026612753885

/-! ## A307110.P3790933695003348278

`A307731(n)+A049084(A001597(n+2))`
-/

namespace A307110.P3790933695003348278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307731 n + A049084 (A001597 (n + 2)).toNat

end

end A307110.P3790933695003348278

/-! ## A307110.P13088472851723402741

`A124778(A056191(n+1))*A307731(n)`
-/

namespace A307110.P13088472851723402741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124778 (A056191 (n + 1)).toNat * A307731 n

end

end A307110.P13088472851723402741

/-! ## A307110.P15773808606968475534

`A028234(p?[A319966(n+1)])*A307731(n)`
-/

namespace A307110.P15773808606968475534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat * A307731 n

end

end A307110.P15773808606968475534

/-! ## A307110.P2579999019209944686

`A283463(p?[A319966(n+1)])*A307731(n)`
-/

namespace A307110.P2579999019209944686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283463 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat * A307731 n

end

end A307110.P2579999019209944686

/-! ## A307110.P10463023560102026152

`A000034(A053799(n))*A307731(n)`
-/

namespace A307110.P10463023560102026152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A053799 n).toNat * A307731 n

end

end A307110.P10463023560102026152

/-! ## A307110.P5037429994815227344

`A307731(n)*A322356(A002522(n))`
-/

namespace A307110.P5037429994815227344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307731 n * A322356 (A002522 n).toNat

end

end A307110.P5037429994815227344

/-! ## A307110.P5568968255788765900

`∑{d}[n+1, A151878(#-1)*A307731((n+1)/#-1)]`
-/

namespace A307110.P5568968255788765900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A151878 (d - 1) * A307731 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A307110.P5568968255788765900

/-!
# A307112: Primitive 3-abundant numbers: Numbers k such that sigma(k) > 3k (A068403) all of whose proper divisors d are 3-deficient numbers having sigma(d) < 3d.

The programs for A307112, there is no canonical definition to state claims against.
-/

/-! ## A307112.P1994319029558414775

`∩[A068403(n+1), A388019(n+1)]`
-/

namespace A307112.P1994319029558414775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307112.P1994319029558414775

/-! ## A307112.P15841027504536899923

`A322377(A104147(n)+A097931(n+1))`
-/

namespace A307112.P15841027504536899923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322377 (A104147 n + A097931 (n + 1)).toNat

end

end A307112.P15841027504536899923

/-!
# A307113: Number of highly composite numbers (m in A002182) in the interval p_k# <= m < p_(k+1)#, where p_i# = A002110(i).

The programs for A307113, there is no canonical definition to state claims against.
-/

/-! ## A307113.P10702562594441630384

`∑[A175922(A049948(n+1)+C(n, 2))]`
-/

namespace A307113.P10702562594441630384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175922 (A049948 (n + 1) + (Nat.choose n 2 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307113.P10702562594441630384

/-!
# A307114: Primitive 4-abundant numbers: Numbers k such that sigma(k) > 4k (A068404) all of whose proper divisors d are 4-deficient numbers (having sigma(d) < 4d).

The programs for A307114, there is no canonical definition to state claims against.
-/

/-! ## A307114.P4309328754605298901

`A392936(A171463(n+1))`
-/

namespace A307114.P4309328754605298901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392936 (A171463 (n + 1)).toNat

end

end A307114.P4309328754605298901

/-! ## A307114.P3025526232026917826

`∩[A068404(n+1), A392936(n+1)]`
-/

namespace A307114.P3025526232026917826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307114.P3025526232026917826

/-!
# A307115: Primitive 5-abundant numbers: Numbers k such that sigma(k) > 5k (A215264) all of whose proper divisors d are 5-deficient numbers (having sigma(d) < 5d).

The programs for A307115, there is no canonical definition to state claims against.
-/

/-! ## A307115.P17716816433119313390

`A215264(lt[A238480(n+1), A084530(n+1)])`
-/

namespace A307115.P17716816433119313390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238480 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215264 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A307115.P17716816433119313390

/-! ## A307115.P14443593586160752447

`A215264(lt[A285844(n), A085195(3*n+1)])`
-/

namespace A307115.P14443593586160752447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285844 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085195 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215264 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A307115.P14443593586160752447

/-! ## A307115.P9364521421304970301

`record[gcd(A215264(n+1), A240866(n))]`
-/

namespace A307115.P9364521421304970301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A215264 (n + 1)) (A240866 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307115.P9364521421304970301

/-!
# A307116: A special version of Pascal's triangle where only Fibonacci numbers are permitted.

The programs for A307116, there is no canonical definition to state claims against.
-/

/-! ## A307116.P12807707897904319238

`A327168(3*A305509(n+1))!%7`
-/

namespace A307116.P12807707897904319238
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A327168 (3 * A305509 (n + 1)).toNat).toNat % 7

end

end A307116.P12807707897904319238

/-! ## A307116.P4831082693662009208

`∑{d}[A327168(3*A305509(n+1)), A006257(#)]`
-/

namespace A307116.P4831082693662009208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327168 (3 * A305509 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A006257 d

end

end A307116.P4831082693662009208

/-! ## A307116.P8916048991793069262

`∏{e}[A327168(3*A305509(n+1)), A000040(#)]`
-/

namespace A307116.P8916048991793069262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327168 (3 * A305509 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)

end

end A307116.P8916048991793069262

/-! ## A307116.P14356307954855247362

`∑{digits}[A327168(3*A305509(n+1)), A000005(#)]`
-/

namespace A307116.P14356307954855247362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327168 (3 * A305509 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000005 x).sum

end

end A307116.P14356307954855247362

/-! ## A307116.P7004264159180259503

`∑{d}[A327168(3*A305509(n+1)), A007318(#-#%(n+1))]`
-/

namespace A307116.P7004264159180259503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327168 (3 * A305509 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007318 (d - d % (n + 1))

end

end A307116.P7004264159180259503

/-!
# A307117: Numbers x that are equal to lpf(x)*gpf(x)*(lpf(x)+gpf(x))/2, where lpf(x) and gpf(x) are the least and the greatest prime factors of x: A020639 and A006530.

The programs for A307117, there is no canonical definition to state claims against.
-/

/-! ## A307117.P16142161612016104982

`∪[A030078(n+1), A307108(n+1)]`
-/

namespace A307117.P16142161612016104982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A307117.P16142161612016104982

/-! ## A307117.P8628390552391306586

`∪[A051751(n+1), A307108(n+1)]`
-/

namespace A307117.P8628390552391306586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A307117.P8628390552391306586

/-!
# A307118: a(1) = 0; for n>1, a(n) = dr(n-1) + dr(n) + dr(n+1), where dr(n) is the number of nontrivial divisors of n (A070824).

The programs for A307118, there is no canonical definition to state claims against.
-/

/-! ## A307118.P17627559307988048151

`A325459(n+2)-A325459(abs(1-n))`
-/

namespace A307118.P17627559307988048151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325459 (n + 2) - A325459 |1 - (n : ℤ)|.toNat

end

end A307118.P17627559307988048151

/-! ## A307118.P191059629840530059

`A343005(n+2)+∏{e}[n, #+1]-A158799(n)`
-/

namespace A307118.P191059629840530059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343005 (n + 2) + ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - A158799 n

end

end A307118.P191059629840530059

/-! ## A307118.P15017918123568074962

`A092405(C(2, n+1)+n+1)+A032741(n)-5`
-/

namespace A307118.P15017918123568074962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092405 (Nat.choose 2 (n + 1) + (n + 1)) + A032741 n - 5

end

end A307118.P15017918123568074962

/-! ## A307118.P9529781432729443616

`A233583(∑[A000005(n+2)-∏{e}[n-1, #+1]])-2`
-/

namespace A307118.P9529781432729443616
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2) - ((∏ p ∈ Nat.primeFactors (f2 n).natAbs, (Nat.factorization (f2 n).natAbs p + 1) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 2

end

end A307118.P9529781432729443616

/-! ## A307118.P12818192636119215564

`∑[A000005(n+2)-∏{e}[n-1, #+1]]-A158799(n)`
-/

namespace A307118.P12818192636119215564
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2) - ((∏ p ∈ Nat.primeFactors (f2 n).natAbs, (Nat.factorization (f2 n).natAbs p + 1) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A158799 n

end

end A307118.P12818192636119215564

/-! ## A307118.P13429953357696983590

`a(n-1)+A000005(n+2)-A000005(n-1)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A307118.P13429953357696983590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a (n - 1) + (A000005 (n + 2) - A000005 (n - 1))

end

end A307118.P13429953357696983590

/-! ## A307118.P2955886903206431503

`A289207(A274010(n+1)+A070824(n+2))`
-/

namespace A307118.P2955886903206431503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A274010 (n + 1) + A070824 (n + 2)).toNat

end

end A307118.P2955886903206431503

/-! ## A307118.P4614704275382255916

`A274010(n+2)+A032741(n)-A158799(n)`
-/

namespace A307118.P4614704275382255916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274010 (n + 2) + A032741 n - A158799 n

end

end A307118.P4614704275382255916

/-! ## A307118.P1949568575053948773

`A289207(A092338(n+1)+A070824(n+2)-1)`
-/

namespace A307118.P1949568575053948773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A092338 (n + 1) + A070824 (n + 2) - 1).toNat

end

end A307118.P1949568575053948773

/-! ## A307118.P17456646806337398083

`(A092405(n+1)+A032741(n)-5)%A000196(A002522(n))`
-/

namespace A307118.P17456646806337398083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092405 (n + 1) + A032741 n - 5) (A000196 (A002522 n).toNat)

end

end A307118.P17456646806337398083

/-!
# A307119: a(1) = 1, for n>1, a(n) = dp(n-1) + dp(n) + dp(n+1), where dp(n) is the number of divisors of n less than n (A032741).

The programs for A307119, there is no canonical definition to state claims against.
-/

/-! ## A307119.P6485722913606787608

`∑[∏{e}[n+2, #+1]]-∑[∏{e}[n-1, #+1]]`
-/

namespace A307119.P6485722913606787608
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f4 n).natAbs, (Nat.factorization (f4 n).natAbs p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A307119.P6485722913606787608

/-! ## A307119.P16508320423587561798

`A343005(n+2)+∏{e}[n, #+1]`
-/

namespace A307119.P16508320423587561798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343005 (n + 2) + ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)

end

end A307119.P16508320423587561798

/-! ## A307119.P1227812876087822380

`ceil(A307118(n+1)+atan(n)+1)`
-/

namespace A307119.P1227812876087822380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A307118 (n + 1) : ℝ) + (Real.arctan (n : ℝ) + 1)⌉

end

end A307119.P1227812876087822380

/-! ## A307119.P14090107588632800028

`A274010(n+2)+∑{d}[n, floor(atan(#))]`
-/

namespace A307119.P14090107588632800028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274010 (n + 2) + ∑ d ∈ Nat.divisors (f1 n), ⌊Real.arctan (d : ℝ)⌋

end

end A307119.P14090107588632800028

/-! ## A307119.P18296209335584516009

`∑[A000005(n+2)-∏{e}[n-1, #+1]]`
-/

namespace A307119.P18296209335584516009
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2) - ((∏ p ∈ Nat.primeFactors (f2 n).natAbs, (Nat.factorization (f2 n).natAbs p + 1) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307119.P18296209335584516009

/-! ## A307119.P6100119873818904194

`A307118(n+1)+A158799(n)`
-/

namespace A307119.P6100119873818904194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307118 (n + 1) + A158799 n

end

end A307119.P6100119873818904194

/-! ## A307119.P16632003782624752632

`A274010(n+2)+A032741(n)`
-/

namespace A307119.P16632003782624752632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274010 (n + 2) + A032741 n

end

end A307119.P16632003782624752632

/-! ## A307119.P6891236565532643312

`A307120(n+1)-A157532(n+1)`
-/

namespace A307119.P6891236565532643312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307120 (n + 1) - A157532 (n + 1)

end

end A307119.P6891236565532643312

/-! ## A307119.P9048206675805102384

`A092405(n+1)+A032741(n)-2`
-/

namespace A307119.P9048206675805102384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092405 (n + 1) + (A032741 n - 2)

end

end A307119.P9048206675805102384

/-! ## A307119.P8106410962835630985

`∑[A000005(n+2)-A238353(C(n, 2))]`
-/

namespace A307119.P8106410962835630985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2) - A238353 (Nat.choose n 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307119.P8106410962835630985

/-!
# A307120: a(1) = 3, for n>1, a(n) = A000005(n-1) + A000005(n) + A000005(n+1).

The programs for A307120, the canonical program `A307120.P1673145710130968314` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307120 has offset 1).

The definition of A307120 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A307120.P1673145710130968314

`A009005(A343005(n+2)+∏{e}[n, #+1])`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A307120

/-- `A009005(A343005(n+2)+∏{e}[n, #+1])` -/
def P1673145710130968314.Spec : Prop :=
  ∀ n, P1673145710130968314.a n = A307120 (n + 1)

theorem P1673145710130968314.correct : P1673145710130968314.Spec := by
  intro n
  simp only [A307120, Nat.add_sub_cancel]

end A307120

/-! ## A307120.P10588502194330476722

`A009005(∑[A000005(n+2)-∏{e}[n-1, #+1]])`
-/

namespace A307120.P10588502194330476722
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2) - ((∏ p ∈ Nat.primeFactors (f2 n).natAbs, (Nat.factorization (f2 n).natAbs p + 1) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009005 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A307120.P10588502194330476722

namespace A307120

/-- `A009005(∑[A000005(n+2)-∏{e}[n-1, #+1]])` -/
def P10588502194330476722.Spec : Prop :=
  ∀ n, P10588502194330476722.a n = A307120 (n + 1)

end A307120

/-! ## A307120.P3982971403171651080

`A157532(n+1)+∑[A000005(n+2)-∏{e}[n-1, #+1]]`
-/

namespace A307120.P3982971403171651080
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2) - ((∏ p ∈ Nat.primeFactors (f2 n).natAbs, (Nat.factorization (f2 n).natAbs p + 1) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157532 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307120.P3982971403171651080

namespace A307120

/-- `A157532(n+1)+∑[A000005(n+2)-∏{e}[n-1, #+1]]` -/
def P3982971403171651080.Spec : Prop :=
  ∀ n, P3982971403171651080.a n = A307120 (n + 1)

end A307120

/-! ## A307120.P13971132022546232411

`A051951(n)+A008486(A000005(n+1))`
-/

namespace A307120.P13971132022546232411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051951 n + A008486 (A000005 (n + 1)).toNat

end

end A307120.P13971132022546232411

namespace A307120

/-- `A051951(n)+A008486(A000005(n+1))` -/
def P13971132022546232411.Spec : Prop :=
  ∀ n, P13971132022546232411.a n = A307120 (n + 1)

end A307120

/-! ## A307120.P5453125855774520116

`A065475(A092338(n+1))+A000005(n+2)`
-/

namespace A307120.P5453125855774520116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A092338 (n + 1)).toNat + A000005 (n + 2)

end

end A307120.P5453125855774520116

namespace A307120

/-- `A065475(A092338(n+1))+A000005(n+2)` -/
def P5453125855774520116.Spec : Prop :=
  ∀ n, P5453125855774520116.a n = A307120 (n + 1)

end A307120

/-! ## A307120.P15479891448430472534

`A212356(n+2)+A032741(n)+A000005(n+1)`
-/

namespace A307120.P15479891448430472534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212356 (n + 2) + A032741 n + A000005 (n + 1)

end

end A307120.P15479891448430472534

namespace A307120

/-- `A212356(n+2)+A032741(n)+A000005(n+1)` -/
def P15479891448430472534.Spec : Prop :=
  ∀ n, P15479891448430472534.a n = A307120 (n + 1)

end A307120

/-! ## A307120.P3470684471811273505

`A307119(n+1)%Δ[n^3]+3`
-/

namespace A307120.P3470684471811273505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307119 (n + 1)) ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) + 3

end

end A307120.P3470684471811273505

namespace A307120

/-- `A307119(n+1)%Δ[n^3]+3` -/
def P3470684471811273505.Spec : Prop :=
  ∀ n, P3470684471811273505.a n = A307120 (n + 1)

end A307120

/-! ## A307120.P9670513632338224450

`A009005(A307119(n+1))`
-/

namespace A307120.P9670513632338224450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009005 (A307119 (n + 1)).toNat

end

end A307120.P9670513632338224450

namespace A307120

/-- `A009005(A307119(n+1))` -/
def P9670513632338224450.Spec : Prop :=
  ∀ n, P9670513632338224450.a n = A307120 (n + 1)

end A307120

/-! ## A307120.P259427046817767246

`A307119(n+1)+A157532(n+1)`
-/

namespace A307120.P259427046817767246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307119 (n + 1) + A157532 (n + 1)

end

end A307120.P259427046817767246

namespace A307120

/-- `A307119(n+1)+A157532(n+1)` -/
def P259427046817767246.Spec : Prop :=
  ∀ n, P259427046817767246.a n = A307120 (n + 1)

end A307120

/-!
# A307121: Number of Lucasian primes less than 10^n.

The programs for A307121, there is no canonical definition to state claims against.
-/

/-! ## A307121.P10741945392386612196

`A092816(n+1)-(A307176(n+1)+1)`
-/

namespace A307121.P10741945392386612196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092816 (n + 1) - (A307176 (n + 1) + 1)

end

end A307121.P10741945392386612196

/-! ## A307121.P6514634959374722379

`A156900(A126959(n+1))+n`
-/

namespace A307121.P6514634959374722379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156900 (A126959 (n + 1)).toNat + (n : ℤ)

end

end A307121.P6514634959374722379

/-!
# A307122: 3-deficient numbers with increasing abundancy: Numbers k such that sigma(m)/m < sigma(k)/k < 3 for all numbers m < k such that sigma(m)/m < 3.

The programs for A307122, there is no canonical definition to state claims against.
-/

/-! ## A307122.P6799597611978228500

`A281477(A000108(n))+A002182(n+1)`
-/

namespace A307122.P6799597611978228500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281477 (A000108 n).toNat + A002182 (n + 1)

end

end A307122.P6799597611978228500

/-! ## A307122.P6658089358875247281

`A244963(A124659(n+1))+A094348(n+1)`
-/

namespace A307122.P6658089358875247281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244963 (A124659 (n + 1)).toNat + A094348 (n + 1)

end

end A307122.P6658089358875247281

/-! ## A307122.P10931453974623143474

`A094348(A034710(n+1))%A000217(2*n+3)`
-/

namespace A307122.P10931453974623143474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094348 (A034710 (n + 1)).toNat) (A000217 (2 * n + 3))

end

end A307122.P10931453974623143474

/-!
# A307124: a(n) is twice the square of the product of the first n primes each decreased by one.

The programs for A307124, the canonical program `A307124.P3472363838436474427` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307124 has offset 1).

The definition of A307124 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A307124.P3472363838436474427

`2*A005867(n+1)²`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A307124

/-- `2*A005867(n+1)²` -/
def P3472363838436474427.Spec : Prop :=
  ∀ n, P3472363838436474427.a n = A307124 (n + 1)

theorem P3472363838436474427.correct : P3472363838436474427.Spec := by
  intro n
  simp only [A307124, Nat.add_sub_cancel]

end A307124

/-! ## A307124.P17041251808379785710

`(p?[abs(xor(n, -2))]-1)²*a(n-1)` with `a(0)=2`
-/

namespace A307124.P17041251808379785710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1) ^ 2 * a (n - 1)

end

end A307124.P17041251808379785710

namespace A307124

/-- `(p?[abs(xor(n, -2))]-1)²*a(n-1)` -/
def P17041251808379785710.Spec : Prop :=
  ∀ n, P17041251808379785710.a n = A307124 (n + 1)

end A307124

/-! ## A307124.P3404246707757022278

`(1-p?[n%3+n])²*a(n-1)` with `a(0)=2`
-/

namespace A307124.P3404246707757022278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (1 - (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)) ^ 2 * a (n - 1)

end

end A307124.P3404246707757022278

namespace A307124

/-- `(1-p?[n%3+n])²*a(n-1)` -/
def P3404246707757022278.Spec : Prop :=
  ∀ n, P3404246707757022278.a n = A307124 (n + 1)

end A307124

/-! ## A307124.P7327750393775611224

`record[∏{p}[n+1, #-1]]²*a(n-1)` with `a(0)=2`
-/

namespace A307124.P7327750393775611224
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2 * a (n - 1)

end

end A307124.P7327750393775611224

namespace A307124

/-- `record[∏{p}[n+1, #-1]]²*a(n-1)` -/
def P7327750393775611224.Spec : Prop :=
  ∀ n, P7327750393775611224.a n = A307124 (n + 1)

end A307124

/-! ## A307124.P15975195865778499414

`2*∏[A006093(n+1)²]`
-/

namespace A307124.P15975195865778499414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A307124.P15975195865778499414

namespace A307124

/-- `2*∏[A006093(n+1)²]` -/
def P15975195865778499414.Spec : Prop :=
  ∀ n, P15975195865778499414.a n = A307124 (n + 1)

end A307124

/-!
# A307125: Expansion of e.g.f. log(1 - log(1 - x*exp(x))).

The programs for A307125, there is no canonical definition to state claims against.
-/

/-! ## A307125.P4575574594030986752

`A294448(n+1)+A156077(A007889(n))`
-/

namespace A307125.P4575574594030986752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294448 (n + 1) + A156077 (A007889 n).toNat

end

end A307125.P4575574594030986752

/-! ## A307125.P16813849239198997937

`∑[A128155(a(n-1))]` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A307125.P16813849239198997937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n f1 =>
  A128155 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307125.P16813849239198997937

/-!
# A307127: Expansion of Product_{j>=1} 1/(1 - (-1 + Product_{k>=1} 1/(1 - x^k))^j).

The programs for A307127, there is no canonical definition to state claims against.
-/

/-! ## A307127.P12896470069863596524

`A008615(A038085(2*(n+2)))`
-/

namespace A307127.P12896470069863596524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A038085 (2 * (n + 2))).toNat

end

end A307127.P12896470069863596524

/-! ## A307127.P4778650362990810144

`A008612(A019481(n)-A212132(n))`
-/

namespace A307127.P4778650362990810144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A019481 n - A212132 n).toNat

end

end A307127.P4778650362990810144

/-! ## A307127.P1209995708821743107

`A127757(A123620(n))-A154440(n)`
-/

namespace A307127.P1209995708821743107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (A123620 n).toNat - A154440 n

end

end A307127.P1209995708821743107

/-!
# A307128: Expansion of Product_{j>=1} (1 + (-1 + Product_{k>=1} (1 + x^k))^j).

The programs for A307128, there is no canonical definition to state claims against.
-/

/-! ## A307128.P15281431020246881507

`A110656(A318975(n)+A002906(n))`
-/

namespace A307128.P15281431020246881507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A318975 n + A002906 n).toNat

end

end A307128.P15281431020246881507

/-! ## A307128.P1954649655255398578

`A110656(A002906(n)-(1-A318975(n)))`
-/

namespace A307128.P1954649655255398578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A002906 n - (1 - A318975 n)).toNat

end

end A307128.P1954649655255398578

/-! ## A307128.P16036946725897195334

`A243284(A150124(n))`
-/

namespace A307128.P16036946725897195334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243284 (A150124 n).toNat

end

end A307128.P16036946725897195334

/-! ## A307128.P16759770114847025026

`A100196(ceil(A265919(n+2)/5))`
-/

namespace A307128.P16759770114847025026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 ⌈(A265919 (n + 2) : ℚ) / 5⌉.toNat

end

end A307128.P16759770114847025026

/-!
# A307129: Lexicographically earliest sequence of distinct terms such that the sequence of digits has alternating parity, and the same holds for the digits of the sequence a(n) + a(n+1).

The programs for A307129, there is no canonical definition to state claims against.
-/

/-! ## A307129.P11098181993814093515

`A307130(n)-a(n-1)` with `a(0)=1`
-/

namespace A307129.P11098181993814093515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A307130 n - a (n - 1)

end

end A307129.P11098181993814093515

/-!
# A307130: Sequence associated to A307129. The terms of the sequence are the successive sums of the successive pairs of adjacent terms of A307129.

The programs for A307130, there is no canonical definition to state claims against.
-/

/-! ## A307130.P7131437181205071407

`A307129(n+1)+A307129(n+2)`
-/

namespace A307130.P7131437181205071407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307129 (n + 1) + A307129 (n + 2)

end

end A307130.P7131437181205071407

/-!
# A307133: T(n,m) = number of k <= A002110(n) such that A001221(k) = m, where k is a term in A025487.

The programs for A307133, there is no canonical definition to state claims against.
-/

/-! ## A307133.P13096225394139302298

`A031943(A034781(n+2)%A120862(2*(n+1)))`
-/

namespace A307133.P13096225394139302298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031943 (Int.tmod (A034781 (n + 2)) (A120862 (2 * (n + 1)))).toNat

end

end A307133.P13096225394139302298

/-! ## A307133.P4132906561515884124

`A057354(A208513(n+1))+A000034(A337400(n+1))`
-/

namespace A307133.P4132906561515884124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A208513 (n + 1)).toNat + A000034 (A337400 (n + 1)).toNat

end

end A307133.P4132906561515884124

/-! ## A307133.P5718084290271091841

`A124625(A035597(n))+A057354(A208513(n+1))`
-/

namespace A307133.P5718084290271091841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 (A035597 n).toNat + A057354 (A208513 (n + 1)).toNat

end

end A307133.P5718084290271091841

/-! ## A307133.P16971871128598632149

`A057354(A208513(n+1))-A057428(A001612(n))`
-/

namespace A307133.P16971871128598632149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A208513 (n + 1)).toNat - A057428 (A001612 n).toNat

end

end A307133.P16971871128598632149

/-! ## A307133.P13779973268368615701

`A057354(A208513(n+1))+A008683(A212074(n+1))`
-/

namespace A307133.P13779973268368615701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A208513 (n + 1)).toNat + A008683 (A212074 (n + 1)).toNat

end

end A307133.P13779973268368615701

/-!
# A307136: a(n) = ceiling(2*sqrt(A000037(n))), n >= 1.

The programs for A307136, the canonical program `A307136.P2732469706360605279` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307136 has offset 1).

The definition of A307136 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A307136.P3050930057385528657

`ceil(2*sqrt(n+1+round(sqrt(n+1))))`
-/

namespace A307136.P3050930057385528657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * Real.sqrt ((n + 1 : ℤ) + SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) : ℝ)⌉

end

end A307136.P3050930057385528657

namespace A307136

/-- `ceil(2*sqrt(n+1+round(sqrt(n+1))))` -/
def P3050930057385528657.Spec : Prop :=
  ∀ n, P3050930057385528657.a n = A307136 (n + 1)

end A307136

/-! ## A307136.P2732469706360605279

`ceil(2*sqrt(A000037(n+1)))`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A307136

/-- `ceil(2*sqrt(A000037(n+1)))` -/
def P2732469706360605279.Spec : Prop :=
  ∀ n, P2732469706360605279.a n = A307136 (n + 1)

theorem P2732469706360605279.correct : P2732469706360605279.Spec := by
  intro n
  simp only [A307136, Nat.add_sub_cancel]

end A307136

/-! ## A307136.P13971886728496941114

`floor(record[sqrt(xor(3, n))+2])`
-/

namespace A307136.P13971886728496941114
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.xor 3 n : ℝ) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A307136.P13971886728496941114

namespace A307136

/-- `floor(record[sqrt(xor(3, n))+2])` -/
def P13971886728496941114.Spec : Prop :=
  ∀ n, P13971886728496941114.a n = A307136 (n + 1)

end A307136

/-! ## A307136.P3879606116749172228

`ceil(record[sqrt(xor(3, n))])+1`
-/

namespace A307136.P3879606116749172228
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.xor 3 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉ + 1

end

end A307136.P3879606116749172228

namespace A307136

/-- `ceil(record[sqrt(xor(3, n))])+1` -/
def P3879606116749172228.Spec : Prop :=
  ∀ n, P3879606116749172228.a n = A307136 (n + 1)

end A307136

/-! ## A307136.P557564794204279073

`floor(2/acot(sqrt(n)))+2`
-/

namespace A307136.P557564794204279073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (Real.sqrt (n : ℝ))⌋ + 2

end

end A307136.P557564794204279073

namespace A307136

/-- `floor(2/acot(sqrt(n)))+2` -/
def P557564794204279073.Spec : Prop :=
  ∀ n, P557564794204279073.a n = A307136 (n + 1)

end A307136

/-! ## A307136.P10915112804620822713

`ceil(2/acot(sqrt(n)))+1`
-/

namespace A307136.P10915112804620822713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (Real.sqrt (n : ℝ))⌉ + 1

end

end A307136.P10915112804620822713

namespace A307136

/-- `ceil(2/acot(sqrt(n)))+1` -/
def P10915112804620822713.Spec : Prop :=
  ∀ n, P10915112804620822713.a n = A307136 (n + 1)

end A307136

/-! ## A307136.P13326109117493387471

`comp[∑[∑[n%2]]]-n`
-/

namespace A307136.P13326109117493387471
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A307136.P13326109117493387471

namespace A307136

/-- `comp[∑[∑[n%2]]]-n` -/
def P13326109117493387471.Spec : Prop :=
  ∀ n, P13326109117493387471.a n = A307136 (n + 1)

end A307136

/-! ## A307136.P10222199156905259724

`comp[∑[∑[and(1, n)]]]-n`
-/

namespace A307136.P10222199156905259724
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A307136.P10222199156905259724

namespace A307136

/-- `comp[∑[∑[and(1, n)]]]-n` -/
def P10222199156905259724.Spec : Prop :=
  ∀ n, P10222199156905259724.a n = A307136 (n + 1)

end A307136

/-! ## A307136.P9313033557219342634

`a(round(n-sqrt(n)))+1` with `a(0)=3`
-/

namespace A307136.P9313033557219342634
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  a (SequenceMachineLib.roundAway ((n : ℝ) - Real.sqrt (n : ℝ))).toNat + 1

end

end A307136.P9313033557219342634

namespace A307136

/-- `a(round(n-sqrt(n)))+1` -/
def P9313033557219342634.Spec : Prop :=
  ∀ n, (P9313033557219342634.a n : ℤ) = A307136 (n + 1)

end A307136

/-! ## A307136.P2879608477301613001

`floor(2*(tanh(6)+sqrt(n+1)))`
-/

namespace A307136.P2879608477301613001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * (Real.tanh (6 : ℝ) + Real.sqrt (n + 1 : ℝ))⌋

end

end A307136.P2879608477301613001

namespace A307136

/-- `floor(2*(tanh(6)+sqrt(n+1)))` -/
def P2879608477301613001.Spec : Prop :=
  ∀ n, P2879608477301613001.a n = A307136 (n + 1)

end A307136

/-! ## A307136.P12713807640895578666

`comp[a(n-2)+n]-n` with `a(0)=0, a(1)=1`
-/

namespace A307136.P12713807640895578666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A307136.P12713807640895578666

namespace A307136

/-- `comp[a(n-2)+n]-n` -/
def P12713807640895578666.Spec : Prop :=
  ∀ n, P12713807640895578666.a n = A307136 (n + 1)

end A307136

/-! ## A307136.P14549843135865904786

`A000267(n)+2`
-/

namespace A307136.P14549843135865904786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 n + 2

end

end A307136.P14549843135865904786

namespace A307136

/-- `A000267(n)+2` -/
def P14549843135865904786.Spec : Prop :=
  ∀ n, P14549843135865904786.a n = A307136 (n + 1)

end A307136

/-! ## A307136.P18158538431799232985

`A055086(n)+3`
-/

namespace A307136.P18158538431799232985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 n + 3

end

end A307136.P18158538431799232985

namespace A307136

/-- `A055086(n)+3` -/
def P18158538431799232985.Spec : Prop :=
  ∀ n, P18158538431799232985.a n = A307136 (n + 1)

end A307136

/-! ## A307136.P17574343804908757631

`sqrt(A248928(n))+1`
-/

namespace A307136.P17574343804908757631
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A248928 n : ℝ) + 1

end

end A307136.P17574343804908757631

namespace A307136

/-- `sqrt(A248928(n))+1` -/
def P17574343804908757631.Spec : Prop :=
  ∀ n, P17574343804908757631.a n = (A307136 (n + 1) : ℝ)

end A307136

/-! ## A307136.P5045887794058411348

`∑[A240025(n)]+2`
-/

namespace A307136.P5045887794058411348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240025 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A307136.P5045887794058411348

namespace A307136

/-- `∑[A240025(n)]+2` -/
def P5045887794058411348.Spec : Prop :=
  ∀ n, P5045887794058411348.a n = A307136 (n + 1)

end A307136

/-! ## A307136.P3114553151824734994

`comp[A002620(n)]-n`
-/

namespace A307136.P3114553151824734994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A307136.P3114553151824734994

namespace A307136

/-- `comp[A002620(n)]-n` -/
def P3114553151824734994.Spec : Prop :=
  ∀ n, P3114553151824734994.a n = A307136 (n + 1)

end A307136

/-! ## A307136.P9399245599503727512

`comp[A008130(n)]-n`
-/

namespace A307136.P9399245599503727512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008130 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A307136.P9399245599503727512

namespace A307136

/-- `comp[A008130(n)]-n` -/
def P9399245599503727512.Spec : Prop :=
  ∀ n, P9399245599503727512.a n = A307136 (n + 1)

end A307136

/-! ## A307136.P16718454369592638480

`comp[A008133(n)]-n`
-/

namespace A307136.P16718454369592638480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008133 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A307136.P16718454369592638480

namespace A307136

/-- `comp[A008133(n)]-n` -/
def P16718454369592638480.Spec : Prop :=
  ∀ n, P16718454369592638480.a n = A307136 (n + 1)

end A307136

/-! ## A307136.P7689006601781179199

`comp[A008217(n)]-n`
-/

namespace A307136.P7689006601781179199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008217 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A307136.P7689006601781179199

namespace A307136

/-- `comp[A008217(n)]-n` -/
def P7689006601781179199.Spec : Prop :=
  ∀ n, P7689006601781179199.a n = A307136 (n + 1)

end A307136

/-! ## A307136.P227716014375522841

`comp[A008497(n)]-n`
-/

namespace A307136.P227716014375522841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008497 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A307136.P227716014375522841

namespace A307136

/-- `comp[A008497(n)]-n` -/
def P227716014375522841.Spec : Prop :=
  ∀ n, P227716014375522841.a n = A307136 (n + 1)

end A307136

/-!
# A307138: State complexity profile of R-Lambda_24 version of Leech lattice.

The programs for A307138, there is no canonical definition to state claims against.
-/

/-! ## A307138.P11509886112147618995

`4^round(log((n+1)²))`
-/

namespace A307138.P11509886112147618995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (SequenceMachineLib.roundAway (Real.log ((n + 1) ^ 2 : ℝ)) : ℤ)

end

end A307138.P11509886112147618995

/-! ## A307138.P11401622018051267433

`4*a(ceil(sinh(log(n))))` with `a(0)=1`
-/

namespace A307138.P11401622018051267433
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  4 * a ⌈Real.sinh (Real.log (n : ℝ))⌉.toNat

end

end A307138.P11401622018051267433

/-! ## A307138.P14864989389964668582

`4*a(ceil(n/2))` with `a(0)=1, a(1)=4`
-/

namespace A307138.P14864989389964668582
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  4 * a ⌈(n : ℚ) / 2⌉.toNat

end

end A307138.P14864989389964668582

/-! ## A307138.P5827593382186968850

`floor(4*a(∑[and(1, n)]))` with `a(0)=1, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A307138.P5827593382186968850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  4 * a (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A307138.P5827593382186968850

/-! ## A307138.P7213156003549588425

`4*ceil(a(∑[and(1, n)]))` with `a(0)=1, a(1)=4`

`ceil` is left out, it is the identity on integers.
-/

namespace A307138.P7213156003549588425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  4 * a (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A307138.P7213156003549588425

/-!
# A307139: Triangle read by rows: f-vectors of the binary partition polytopes Q^{~}_n.

The programs for A307139, there is no canonical definition to state claims against.
-/

/-! ## A307139.P4667193056699842112

`A178780(A124067(n+1))+A078121(n)`
-/

namespace A307139.P4667193056699842112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178780 (A124067 (n + 1)).toNat + A078121 n

end

end A307139.P4667193056699842112

/-! ## A307139.P7158159281166355837

`A078121(n)-A089311(A089456(n+1))`
-/

namespace A307139.P7158159281166355837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078121 n - A089311 (A089456 (n + 1)).toNat

end

end A307139.P7158159281166355837

/-! ## A307139.P1981996042811437254

`A078121(n)-A185644(A034254(2*n+5))`
-/

namespace A307139.P1981996042811437254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078121 n - A185644 (A034254 (2 * n + 5)).toNat

end

end A307139.P1981996042811437254

/-!
# A307140: Number of symmetry classes of coarsest matroid subdivisions in the hypersimplex Delta(3,n) in the Stiefel image.

The programs for A307140, there is no canonical definition to state claims against.
-/

/-! ## A307140.P3752890630148565971

`round(∑[abs(1-n)!]^(3/2))`
-/

namespace A307140.P3752890630148565971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) ^ ((3 : ℚ) / 2 : ℝ))

end

end A307140.P3752890630148565971

/-!
# A307142: Number of symmetry classes of coarsest matroid corank subdivisions in the hypersimplex Delta(3,n).

The programs for A307142, there is no canonical definition to state claims against.
-/

/-! ## A307142.P11250215630848838939

`ogf((1-2x-5x^2+2x^3+4x^4+5x^5)/(1-5x+5x^2))`
-/

namespace A307142.P11250215630848838939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -5, 2, 4, 5] [1, -5, 5] n

end

end A307142.P11250215630848838939

/-!
# A307146: Number of symmetry classes of coarsest matroid subdivisions in the hypersimplex Delta(3,n) that are either corank subdivisions or are in the image of the Stiefel map.

The programs for A307146, there is no canonical definition to state claims against.
-/

/-! ## A307146.P1846816079498902906

`record[(n-1)*a(n-2)]` with `a(0)=1, a(1)=3, a(2)=5, a(3)=12, a(4)=4`
-/

namespace A307146.P1846816079498902906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 5, 12, 4] fun n f1 =>
  ((n : ℤ) - 1) * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307146.P1846816079498902906

/-!
# A307148: Number of binary partitions of n in which exactly one of the powers of 2 is used an odd number of times.

The programs for A307148, there is no canonical definition to state claims against.
-/

/-! ## A307148.P15773902707381368125

`Δ[A307149(A004273(n))]`
-/

namespace A307148.P15773902707381368125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307149 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A307148.P15773902707381368125

/-! ## A307148.P5261922034057345547

`Δ[A307149(record[A006257(n)])]`
-/

namespace A307148.P5261922034057345547
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307149 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A307148.P5261922034057345547

/-! ## A307148.P15727029679425402748

`Δ[A307149(record[A026741(n)])]`
-/

namespace A307148.P15727029679425402748
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307149 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A307148.P15727029679425402748

/-! ## A307148.P7788435074438244338

`Δ[A307149(record[A106617(n)])]`
-/

namespace A307148.P7788435074438244338
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106617 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307149 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A307148.P7788435074438244338

/-! ## A307148.P15043609078758770296

`Δ[A307149(A004280(n+1))]`
-/

namespace A307148.P15043609078758770296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307149 (A004280 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A307148.P15043609078758770296

/-! ## A307148.P9313527157510620936

`A307149(2*n+1)-A307149(A004273(n))`
-/

namespace A307148.P9313527157510620936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307149 (2 * n + 1) - A307149 (A004273 n).toNat

end

end A307148.P9313527157510620936

/-! ## A307148.P17137358554413004053

`A307149(2*n+1)-A307149(record[A106617(n)])`
-/

namespace A307148.P17137358554413004053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106617 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307149 (2 * n + 1) - A307149 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A307148.P17137358554413004053

/-! ## A307148.P17325141789257434139

`Δ[A307149(A008288(A000124(n)))]`
-/

namespace A307148.P17325141789257434139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307149 (A008288 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A307148.P17325141789257434139

/-!
# A307149: Number of binary partitions of n in which exactly two of the powers of 2 are used an odd number of times.

The programs for A307149, there is no canonical definition to state claims against.
-/

/-! ## A307149.P8464264487651793705

`A117707(A076736(n+1)-A034851(n))`
-/

namespace A307149.P8464264487651793705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (A076736 (n + 1) - A034851 n).toNat

end

end A307149.P8464264487651793705

/-! ## A307149.P17672529873912736853

`A117707(A076736(n+1)-A065941(n))`
-/

namespace A307149.P17672529873912736853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (A076736 (n + 1) - A065941 n).toNat

end

end A307149.P17672529873912736853

/-! ## A307149.P15249400015023103103

`A117707(A076736(n+1)-A169623(n))`
-/

namespace A307149.P15249400015023103103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (A076736 (n + 1) - A169623 n).toNat

end

end A307149.P15249400015023103103

/-! ## A307149.P1113764825445883662

`A301461(A076736(n+1)+A056924(n+1))`
-/

namespace A307149.P1113764825445883662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301461 (A076736 (n + 1) + A056924 (n + 1)).toNat

end

end A307149.P1113764825445883662

/-! ## A307149.P15262050720355533720

`A301461(A169623(n+2)+A076736(n+1))`
-/

namespace A307149.P15262050720355533720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301461 (A169623 (n + 2) + A076736 (n + 1)).toNat

end

end A307149.P15262050720355533720

/-!
# A307150: Row 6 of array in A059897.

The programs for A307150, the canonical program `A307150.P13642716402476447275` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307150 has offset 1).

The definition of A307150 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073675, A120229, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A307150.P13642716402476447275

`A120229(A073675(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A307150

/-- `A120229(A073675(n+1))` -/
def P13642716402476447275.Spec : Prop :=
  ∀ n, P13642716402476447275.a n = A307150 (n + 1)

theorem P13642716402476447275.correct : P13642716402476447275.Spec := by
  intro n
  simp only [A307150, Nat.add_sub_cancel]

end A307150

/-! ## A307150.P1332541620232911485

`A007913(6*(n+1))*A008833(n+1)`
-/

namespace A307150.P1332541620232911485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (6 * (n + 1)) * A008833 (n + 1)

end

end A307150.P1332541620232911485

namespace A307150

/-- `A007913(6*(n+1))*A008833(n+1)` -/
def P1332541620232911485.Spec : Prop :=
  ∀ n, P1332541620232911485.a n = A307150 (n + 1)

end A307150

/-! ## A307150.P12882610200890331488

`A000188(n+1)²*A007913(6*(n+1))`
-/

namespace A307150.P12882610200890331488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1) ^ 2 * A007913 (6 * (n + 1))

end

end A307150.P12882610200890331488

namespace A307150

/-- `A000188(n+1)²*A007913(6*(n+1))` -/
def P12882610200890331488.Spec : Prop :=
  ∀ n, P12882610200890331488.a n = A307150 (n + 1)

end A307150

/-! ## A307150.P17382387617491820542

`A073675(n+1)/A307266(n+1)*A307267(n+1)`
-/

namespace A307150.P17382387617491820542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073675 (n + 1) : ℚ) / (A307266 (n + 1) : ℚ) * (A307267 (n + 1) : ℚ)

end

end A307150.P17382387617491820542

namespace A307150

/-- `A073675(n+1)/A307266(n+1)*A307267(n+1)` -/
def P17382387617491820542.Spec : Prop :=
  ∀ n, P17382387617491820542.a n = (A307150 (n + 1) : ℚ)

end A307150

/-! ## A307150.P5200880764217536732

`A120229(A118966(n+2)-1)`
-/

namespace A307150.P5200880764217536732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120229 (A118966 (n + 2) - 1).toNat

end

end A307150.P5200880764217536732

namespace A307150

/-- `A120229(A118966(n+2)-1)` -/
def P5200880764217536732.Spec : Prop :=
  ∀ n, P5200880764217536732.a n = A307150 (n + 1)

end A307150

/-! ## A307150.P1561064101356563209

`A007913(A307267(n+1))*A235872(A214682(n+1))`
-/

namespace A307150.P1561064101356563209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A307267 (n + 1)).toNat * A235872 (A214682 (n + 1)).toNat

end

end A307150.P1561064101356563209

namespace A307150

/-- `A007913(A307267(n+1))*A235872(A214682(n+1))` -/
def P1561064101356563209.Spec : Prop :=
  ∀ n, P1561064101356563209.a n = A307150 (n + 1)

end A307150

/-! ## A307150.P14821400836445132101

`A307267(A120230(n+1))`
-/

namespace A307150.P14821400836445132101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307267 (A120230 (n + 1)).toNat

end

end A307150.P14821400836445132101

namespace A307150

/-- `A307267(A120230(n+1))` -/
def P14821400836445132101.Spec : Prop :=
  ∀ n, P14821400836445132101.a n = A307150 (n + 1)

end A307150

/-! ## A307150.P3868139929902537529

`A307267(A073675(A307266(n+1)))`
-/

namespace A307150.P3868139929902537529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307267 (A073675 (A307266 (n + 1)).toNat).toNat

end

end A307150.P3868139929902537529

namespace A307150

/-- `A307267(A073675(A307266(n+1)))` -/
def P3868139929902537529.Spec : Prop :=
  ∀ n, P3868139929902537529.a n = A307150 (n + 1)

end A307150

/-! ## A307150.P13865108962920053512

`A307266(A120230(A120229(n+1)))`
-/

namespace A307150.P13865108962920053512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307266 (A120230 (A120229 (n + 1)).toNat).toNat

end

end A307150.P13865108962920053512

namespace A307150

/-- `A307266(A120230(A120229(n+1)))` -/
def P13865108962920053512.Spec : Prop :=
  ∀ n, P13865108962920053512.a n = A307150 (n + 1)

end A307150

/-! ## A307150.P676196245844072543

`A065883(A307267(n+1))*A234957(n+1)`
-/

namespace A307150.P676196245844072543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065883 (A307267 (n + 1)).toNat * A234957 (n + 1)

end

end A307150.P676196245844072543

namespace A307150

/-- `A065883(A307267(n+1))*A234957(n+1)` -/
def P676196245844072543.Spec : Prop :=
  ∀ n, P676196245844072543.a n = A307150 (n + 1)

end A307150

/-! ## A307150.P9490997698326540191

`A307267(A307266(A059897(∑[n+2])))`
-/

namespace A307150.P9490997698326540191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307267 (A307266 (A059897 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat).toNat

end

end A307150.P9490997698326540191

namespace A307150

/-- `A307267(A307266(A059897(∑[n+2])))` -/
def P9490997698326540191.Spec : Prop :=
  ∀ n, P9490997698326540191.a n = A307150 (n + 1)

end A307150

/-! ## A307150.P12091686316458655154

`A073675(A059897(∑[n+2]+4))`
-/

namespace A307150.P12091686316458655154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073675 (A059897 (∑ j ∈ Finset.range (n + 1), f1 j + 4)).toNat

end

end A307150.P12091686316458655154

namespace A307150

/-- `A073675(A059897(∑[n+2]+4))` -/
def P12091686316458655154.Spec : Prop :=
  ∀ n, P12091686316458655154.a n = A307150 (n + 1)

end A307150

/-! ## A307150.P11887775326148402600

`A059897((n+4)²-∑[n+1]+1)`
-/

namespace A307150.P11887775326148402600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059897 (((n + 4) ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 1).toNat

end

end A307150.P11887775326148402600

namespace A307150

/-- `A059897((n+4)²-∑[n+1]+1)` -/
def P11887775326148402600.Spec : Prop :=
  ∀ n, P11887775326148402600.a n = A307150 (n + 1)

end A307150

/-!
# A307151: Row 5 of array in A059897.

The programs for A307151, the canonical program `A307151.P15043162297254329505` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307151 has offset 1).

The definition of A307151 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A307151.P3316164349101289912

`(n+1)*5^A014955(val(n+1, 5))`
-/

namespace A307151.P3316164349101289912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (5 : ℚ) ^ (A014955 (SequenceMachineLib.valuation (n + 1) 5) : ℤ)

end

end A307151.P3316164349101289912

namespace A307151

/-- `(n+1)*5^A014955(val(n+1, 5))` -/
def P3316164349101289912.Spec : Prop :=
  ∀ n, P3316164349101289912.a n = (A307151 (n + 1) : ℚ)

end A307151

/-! ## A307151.P7292796572045730424

`(n+1)*5^A015063(val(n+1, 5))`
-/

namespace A307151.P7292796572045730424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (5 : ℚ) ^ (A015063 (SequenceMachineLib.valuation (n + 1) 5) : ℤ)

end

end A307151.P7292796572045730424

namespace A307151

/-- `(n+1)*5^A015063(val(n+1, 5))` -/
def P7292796572045730424.Spec : Prop :=
  ∀ n, P7292796572045730424.a n = (A307151 (n + 1) : ℚ)

end A307151

/-! ## A307151.P15421869402320993570

`A007913(5*(n+1))*A008833(n+1)`
-/

namespace A307151.P15421869402320993570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (5 * (n + 1)) * A008833 (n + 1)

end

end A307151.P15421869402320993570

namespace A307151

/-- `A007913(5*(n+1))*A008833(n+1)` -/
def P15421869402320993570.Spec : Prop :=
  ∀ n, P15421869402320993570.a n = A307151 (n + 1)

end A307151

/-! ## A307151.P5266500366520613302

`A000188(n+1)²*A007913(5*(n+1))`
-/

namespace A307151.P5266500366520613302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1) ^ 2 * A007913 (5 * (n + 1))

end

end A307151.P5266500366520613302

namespace A307151

/-- `A000188(n+1)²*A007913(5*(n+1))` -/
def P5266500366520613302.Spec : Prop :=
  ∀ n, P5266500366520613302.a n = A307151 (n + 1)

end A307151

/-! ## A307151.P15043162297254329505

`(n+1)*A007913(5*(n+1))/A007913(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A307151

/-- `(n+1)*A007913(5*(n+1))/A007913(n+1)` -/
def P15043162297254329505.Spec : Prop :=
  ∀ n, P15043162297254329505.a n = (A307151 (n + 1) : ℚ)

end A307151

/-! ## A307151.P15037687850017308059

`A059897(∑[n+5]+6)`
-/

namespace A307151.P15037687850017308059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059897 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A307151.P15037687850017308059

namespace A307151

/-- `A059897(∑[n+5]+6)` -/
def P15037687850017308059.Spec : Prop :=
  ∀ n, P15037687850017308059.a n = A307151 (n + 1)

end A307151

/-!
# A307152: a(n) = floor((A002144(n)+19)/24).

The programs for A307152, the canonical program `A307152.P11500915941825313180` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307152 has offset 1).

The definition of A307152 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((A002144(n+1)+19)/24)` (program `A307152.P11500915941825313180`, by `A307152.P11500915941825313180.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A307152.P11500915941825313180

`floor((A002144(n+1)+19)/24)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A307152

/-- `floor((A002144(n+1)+19)/24)` -/
def P11500915941825313180.Spec : Prop :=
  ∀ n, P11500915941825313180.a n = A307152 (n + 1)

theorem P11500915941825313180.correct : P11500915941825313180.Spec := by
  intro n
  simp only [A307152, Nat.add_sub_cancel]

end A307152

/-! ## A307152.P16394825322495950616

`ceil(floor(p?[2*n+2*n+1]/4)/6)`
-/

namespace A307152.P16394825322495950616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 4⌋ : ℚ) / 6⌉

end

end A307152.P16394825322495950616

namespace A307152

/-- `ceil(floor(p?[2*n+2*n+1]/4)/6)` -/
def P16394825322495950616.Spec : Prop :=
  ∀ n, P16394825322495950616.a n = A307152 (n + 1)

end A307152

/-! ## A307152.P11107568404895390581

`ceil(A005098(n+1)/6)`
-/

namespace A307152.P11107568404895390581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005098 (n + 1) : ℚ) / 6⌉

end

end A307152.P11107568404895390581

namespace A307152

/-- `ceil(A005098(n+1)/6)` -/
def P11107568404895390581.Spec : Prop :=
  ∀ n, P11107568404895390581.a n = A307152 (n + 1)

end A307152

/-! ## A307152.P2323187673911175727

`ceil(A152680(n+1)/24)`
-/

namespace A307152.P2323187673911175727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A152680 (n + 1) : ℚ) / 24⌉

end

end A307152.P2323187673911175727

namespace A307152

/-- `ceil(A152680(n+1)/24)` -/
def P2323187673911175727.Spec : Prop :=
  ∀ n, P2323187673911175727.a n = A307152 (n + 1)

end A307152

/-! ## A307152.P17593218434561942243

`A097992(A111215(n+1))`
-/

namespace A307152.P17593218434561942243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (A111215 (n + 1)).toNat

end

end A307152.P17593218434561942243

namespace A307152

/-- `A097992(A111215(n+1))` -/
def P17593218434561942243.Spec : Prop :=
  ∀ n, P17593218434561942243.a n = A307152 (n + 1)

end A307152

/-! ## A307152.P4645381398961312982

`A008615(ceil(A002144(n+1)/4))`
-/

namespace A307152.P4645381398961312982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 ⌈(A002144 (n + 1) : ℚ) / 4⌉.toNat

end

end A307152.P4645381398961312982

namespace A307152

/-- `A008615(ceil(A002144(n+1)/4))` -/
def P4645381398961312982.Spec : Prop :=
  ∀ n, P4645381398961312982.a n = A307152 (n + 1)

end A307152

/-! ## A307152.P9047417533020137355

`A103221(eq[2, A000005(2*n+2*n+1)]+1)`
-/

namespace A307152.P9047417533020137355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A307152.P9047417533020137355

namespace A307152

/-- `A103221(eq[2, A000005(2*n+2*n+1)]+1)` -/
def P9047417533020137355.Spec : Prop :=
  ∀ n, P9047417533020137355.a n = A307152 (n + 1)

end A307152

/-! ## A307152.P10462227889114235770

`A008679(A119681(n+1))`
-/

namespace A307152.P10462227889114235770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (A119681 (n + 1)).toNat

end

end A307152.P10462227889114235770

namespace A307152

/-- `A008679(A119681(n+1))` -/
def P10462227889114235770.Spec : Prop :=
  ∀ n, P10462227889114235770.a n = A307152 (n + 1)

end A307152

/-! ## A307152.P12152999601429591190

`A008647(2*(A005098(n+1)-1))`
-/

namespace A307152.P12152999601429591190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 (2 * (A005098 (n + 1) - 1)).toNat

end

end A307152.P12152999601429591190

namespace A307152

/-- `A008647(2*(A005098(n+1)-1))` -/
def P12152999601429591190.Spec : Prop :=
  ∀ n, P12152999601429591190.a n = A307152 (n + 1)

end A307152

/-! ## A307152.P3750911046999047385

`A008647(A005098(n+1)+A005098(n+1)-2)`
-/

namespace A307152.P3750911046999047385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 (A005098 (n + 1) + (A005098 (n + 1) - 2)).toNat

end

end A307152.P3750911046999047385

namespace A307152

/-- `A008647(A005098(n+1)+A005098(n+1)-2)` -/
def P3750911046999047385.Spec : Prop :=
  ∀ n, P3750911046999047385.a n = A307152 (n + 1)

end A307152

/-! ## A307152.P13570196810790529682

`A008647(2*A005098(n+1)+2)`
-/

namespace A307152.P13570196810790529682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 (2 * A005098 (n + 1) + 2).toNat

end

end A307152.P13570196810790529682

namespace A307152

/-- `A008647(2*A005098(n+1)+2)` -/
def P13570196810790529682.Spec : Prop :=
  ∀ n, P13570196810790529682.a n = A307152 (n + 1)

end A307152

/-! ## A307152.P2090597862553444158

`A008679(A159481(p?[or(n, n+1)+n]))`
-/

namespace A307152.P2090597862553444158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (n + 1) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (A159481 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))).toNat

end

end A307152.P2090597862553444158

namespace A307152

/-- `A008679(A159481(p?[or(n, n+1)+n]))` -/
def P2090597862553444158.Spec : Prop :=
  ∀ n, P2090597862553444158.a n = A307152 (n + 1)

end A307152

/-!
# A307153: Sequence gives pair of terms giving the numbers of previous even digits and previous odd digits; a(0)=0.

The programs for A307153, there is no canonical definition to state claims against.
-/

/-! ## A307153.P1698400784646018783

`n-A267115(A027306(n))`
-/

namespace A307153.P1698400784646018783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A267115 (A027306 n).toNat

end

end A307153.P1698400784646018783

/-! ## A307153.P5596880292804791593

`A019430(A161951(n+1))%(n+1)`
-/

namespace A307153.P5596880292804791593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A019430 (A161951 (n + 1)).toNat) (n + 1 : ℤ)

end

end A307153.P5596880292804791593

/-! ## A307153.P2606134682706300264

`gcd(A285383(A106629(ceil(n/2)))-n, n%2)`
-/

namespace A307153.P2606134682706300264
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A285383 (A106629 ⌈(n : ℚ) / 2⌉.toNat).toNat - (n : ℤ)) ((n % 2 : ℕ) : ℤ)

end

end A307153.P2606134682706300264

/-! ## A307153.P2023638148964860826

`A279539(A274708(∑[A008619(n)]))`
-/

namespace A307153.P2023638148964860826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279539 (A274708 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A307153.P2023638148964860826

/-! ## A307153.P9147778279918994213

`A002487(A011782(n)-A134452(3*n+1))`
-/

namespace A307153.P9147778279918994213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A011782 n - A134452 (3 * n + 1)).toNat

end

end A307153.P9147778279918994213

/-!
# A307156: Number triangle T(n,k) = Sum_{j=0..n-k} (-1)^j * binomial(k,3*j) * binomial(n-k,3*j).

The programs for A307156, there is no canonical definition to state claims against.
-/

/-! ## A307156.P16028379824230694439

`A000005(A119711(n+3))-A119335(n)`
-/

namespace A307156.P16028379824230694439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A119711 (n + 3)).toNat - A119335 n

end

end A307156.P16028379824230694439

/-! ## A307156.P11112628602210967687

`A020639(A299291(2*(n+2)))-A119335(n)`
-/

namespace A307156.P11112628602210967687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A299291 (2 * (n + 2))).toNat - A119335 n

end

end A307156.P11112628602210967687

/-! ## A307156.P721785312978425855

`2-A018851(A119335(n)²)`
-/

namespace A307156.P721785312978425855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A018851 (A119335 n ^ 2).toNat

end

end A307156.P721785312978425855

/-!
# A307157: a(n) is the Narumi-Katayama index of the Fibonacci cube Gamma(n).

The programs for A307157, there is no canonical definition to state claims against.
-/

/-! ## A307157.P2124142093283257387

`A000142(n+1)*A117732(A005190(n))`
-/

namespace A307157.P2124142093283257387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) * A117732 (A005190 n).toNat

end

end A307157.P2124142093283257387

/-!
# A307158: a(n) = Sum_{k=0..floor(n/3)} (-1)^k * binomial(n,3*k)^2.

The programs for A307158, the canonical program `A307158.P16687439116261875792` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307158 has offset 0).

The definition of A307158 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/3), (-1)^#*C(n, 3*#)²]` (program `A307158.P16687439116261875792`, by `A307158.P16687439116261875792.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A307158.P16687439116261875792

`∑{#}[floor(n/3), (-1)^#*C(n, 3*#)²]`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A307158

/-- `∑{#}[floor(n/3), (-1)^#*C(n, 3*#)²]` -/
def P16687439116261875792.Spec : Prop :=
  ∀ n, P16687439116261875792.a n = A307158 n

theorem P16687439116261875792.correct : P16687439116261875792.Spec := by
  intro n
  simp only [A307158]

end A307158

/-! ## A307158.P2432166812136461461

`A307156(∑[4*n])`
-/

namespace A307158.P2432166812136461461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307156 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A307158.P2432166812136461461

namespace A307158

/-- `A307156(∑[4*n])` -/
def P2432166812136461461.Spec : Prop :=
  ∀ n, P2432166812136461461.a n = A307158 n

end A307158

/-! ## A307158.P6445050642309225422

`A267871(n)*A307156(A106232(n+1))`
-/

namespace A307158.P6445050642309225422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267871 n * A307156 (A106232 (n + 1)).toNat

end

end A307158.P6445050642309225422

namespace A307158

/-- `A267871(n)*A307156(A106232(n+1))` -/
def P6445050642309225422.Spec : Prop :=
  ∀ n, P6445050642309225422.a n = A307158 n

end A307158

/-! ## A307158.P680198504044510519

`A307156(A106232(n+1))^A014963(∑[n+1])`
-/

namespace A307158.P680198504044510519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307156 (A106232 (n + 1)).toNat : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A307158.P680198504044510519

namespace A307158

/-- `A307156(A106232(n+1))^A014963(∑[n+1])` -/
def P680198504044510519.Spec : Prop :=
  ∀ n, P680198504044510519.a n = (A307158 n : ℚ)

end A307158

/-! ## A307158.P3672041725913275098

`A307156(A106232(n+1))%Δ[A106434(n+1)]`
-/

namespace A307158.P3672041725913275098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106434 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307156 (A106232 (n + 1)).toNat) (f1 (n + 1) - f1 n)

end

end A307158.P3672041725913275098

namespace A307158

/-- `A307156(A106232(n+1))%Δ[A106434(n+1)]` -/
def P3672041725913275098.Spec : Prop :=
  ∀ n, P3672041725913275098.a n = A307158 n

end A307158

/-! ## A307158.P14734794025398714148

`A007318(A000217(n))*A307156(A106232(n+1))`
-/

namespace A307158.P14734794025398714148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A307156 (A106232 (n + 1)).toNat

end

end A307158.P14734794025398714148

namespace A307158

/-- `A007318(A000217(n))*A307156(A106232(n+1))` -/
def P14734794025398714148.Spec : Prop :=
  ∀ n, P14734794025398714148.a n = A307158 n

end A307158

/-! ## A307158.P13969102075404245962

`A212551(A055998(n))*A307156(A106232(n+1))`
-/

namespace A307158.P13969102075404245962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (A055998 n).toNat * A307156 (A106232 (n + 1)).toNat

end

end A307158.P13969102075404245962

namespace A307158

/-- `A212551(A055998(n))*A307156(A106232(n+1))` -/
def P13969102075404245962.Spec : Prop :=
  ∀ n, P13969102075404245962.a n = A307158 n

end A307158

/-! ## A307158.P17838492506267271849

`A010554(A010553(n+1))*A307156(A106232(n+1))`
-/

namespace A307158.P17838492506267271849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010554 (A010553 (n + 1)).toNat * A307156 (A106232 (n + 1)).toNat

end

end A307158.P17838492506267271849

namespace A307158

/-- `A010554(A010553(n+1))*A307156(A106232(n+1))` -/
def P17838492506267271849.Spec : Prop :=
  ∀ n, P17838492506267271849.a n = A307158 n

end A307158

/-! ## A307158.P1232300391132155105

`A001221(A001248(n+1))*A307156(A106232(n+1))`
-/

namespace A307158.P1232300391132155105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001248 (n + 1)).toNat * A307156 (A106232 (n + 1)).toNat

end

end A307158.P1232300391132155105

namespace A307158

/-- `A001221(A001248(n+1))*A307156(A106232(n+1))` -/
def P1232300391132155105.Spec : Prop :=
  ∀ n, P1232300391132155105.a n = A307158 n

end A307158

/-!
# A307159: Partial sums of the bi-unitary divisors sum function: Sum_{k=1..n} bsigma(k), where bsigma is A188999.

The programs for A307159, there is no canonical definition to state claims against.
-/

/-! ## A307159.P10099330696630839716

`∑[A188999(n+1)]`
-/

namespace A307159.P10099330696630839716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307159.P10099330696630839716

/-! ## A307159.P2516070452402848895

`∑[A331970(n+1)+1+n]`
-/

namespace A307159.P2516070452402848895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331970 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307159.P2516070452402848895

/-! ## A307159.P11972288441069325396

`∑[A000203(n+1)-A319072(n+1)]`
-/

namespace A307159.P11972288441069325396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A319072 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307159.P11972288441069325396

/-! ## A307159.P1448696521593901173

`a(n-1)+1+A188999(n+1)+A057428(n)` with `a(0)=1`
-/

namespace A307159.P1448696521593901173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 1 + (A188999 (n + 1) + A057428 n)

end

end A307159.P1448696521593901173

/-! ## A307159.P5822331093395625311

`a(n-1)+1-(A054977(n)-A188999(n+1))` with `a(0)=1`
-/

namespace A307159.P5822331093395625311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 1 - (A054977 n - A188999 (n + 1))

end

end A307159.P5822331093395625311

/-! ## A307159.P11694636135052232934

`a(n-1)+1-(A057427(n)-A188999(n+1))` with `a(0)=1`
-/

namespace A307159.P11694636135052232934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 1 - (A057427 n - A188999 (n + 1))

end

end A307159.P11694636135052232934

/-! ## A307159.P9643086770450705082

`A188999(n+1)+a(n-1)%A104326(n+1)` with `a(0)=1`
-/

namespace A307159.P9643086770450705082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A188999 (n + 1) + Int.tmod (a (n - 1)) (A104326 (n + 1))

end

end A307159.P9643086770450705082

/-!
# A307165: Numbers k such that the sequence f(0)=f(1)=k, f(x)=(a*b) mod (a+b+1), where a=f(x-1) and b=f(x-2) is a cycle.

The programs for A307165, there is no canonical definition to state claims against.
-/

/-! ## A307165.P9032753562012276098

`eq[0, A307087(n)]`
-/

namespace A307165.P9032753562012276098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307087 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A307165.P9032753562012276098

/-!
# A307167: Maximum number of loops in a diagonal Latin square of order n.

The programs for A307167, there is no canonical definition to state claims against.
-/

/-! ## A307167.P16328167584847208716

`A294839(n)-∑[A348736(n+1)]`
-/

namespace A307167.P16328167584847208716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294839 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307167.P16328167584847208716

/-!
# A307168: First class of all proper positive solutions x1(n) = a(n) of the Pell equation x^2 - 7*y^2 = 9.

The programs for A307168, the canonical program `A307168.P14320328888208026340` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307168 has offset 1).

The definition of A307168 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A307168.P14320328888208026340

`ogf((11-4x)/(1-16x+x^2))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A307168

/-- `ogf((11-4x)/(1-16x+x^2))` -/
def P14320328888208026340.Spec : Prop :=
  ∀ n, P14320328888208026340.a n = A307168 (n + 1)

theorem P14320328888208026340.correct : P14320328888208026340.Spec := by
  intro n
  simp only [A307168, Nat.add_sub_cancel]

end A307168

/-! ## A307168.P2590716564030781820

`A001081(n+1)+Δ[A001080(n)]`
-/

namespace A307168.P2590716564030781820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001080 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001081 (n + 1) + (f1 (n + 1) - f1 n)

end

end A307168.P2590716564030781820

namespace A307168

/-- `A001081(n+1)+Δ[A001080(n)]` -/
def P2590716564030781820.Spec : Prop :=
  ∀ n, P2590716564030781820.a n = A307168 (n + 1)

end A307168

/-! ## A307168.P12143732368270783486

`Δ[A253879(n+1)+A001080(n)]`
-/

namespace A307168.P12143732368270783486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253879 (n + 1) + A001080 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A307168.P12143732368270783486

namespace A307168

/-- `Δ[A253879(n+1)+A001080(n)]` -/
def P12143732368270783486.Spec : Prop :=
  ∀ n, P12143732368270783486.a n = A307168 (n + 1)

end A307168

/-! ## A307168.P17846927864263501623

`A266698(n+1)+A001081(n+1)`
-/

namespace A307168.P17846927864263501623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266698 (n + 1) + A001081 (n + 1)

end

end A307168.P17846927864263501623

namespace A307168

/-- `A266698(n+1)+A001081(n+1)` -/
def P17846927864263501623.Spec : Prop :=
  ∀ n, P17846927864263501623.a n = A307168 (n + 1)

end A307168

/-! ## A307168.P5264677372746551517

`Δ[A307173(n+1)-∑[A001081(n)]]`
-/

namespace A307168.P5264677372746551517
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001081 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307173 (n + 1) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A307168.P5264677372746551517

namespace A307168

/-- `Δ[A307173(n+1)-∑[A001081(n)]]` -/
def P5264677372746551517.Spec : Prop :=
  ∀ n, P5264677372746551517.a n = A307168 (n + 1)

end A307168

/-! ## A307168.P14880027818582564570

`A266698(n+1)+Δ[A253879(n+1)]`
-/

namespace A307168.P14880027818582564570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266698 (n + 1) + (f1 (n + 1) - f1 n)

end

end A307168.P14880027818582564570

namespace A307168

/-- `A266698(n+1)+Δ[A253879(n+1)]` -/
def P14880027818582564570.Spec : Prop :=
  ∀ n, P14880027818582564570.a n = A307168 (n + 1)

end A307168

/-! ## A307168.P8405502444976909666

`Δ[A307173(n+1)-A253879(n+1)]`
-/

namespace A307168.P8405502444976909666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307173 (n + 1) - A253879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A307168.P8405502444976909666

namespace A307168

/-- `Δ[A307173(n+1)-A253879(n+1)]` -/
def P8405502444976909666.Spec : Prop :=
  ∀ n, P8405502444976909666.a n = A307168 (n + 1)

end A307168

/-! ## A307168.P18153552102997970008

`Δ[A001080(n)+A159678(n+1)/2]`
-/

namespace A307168.P18153552102997970008
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001080 n : ℚ) + (A159678 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A307168.P18153552102997970008

namespace A307168

/-- `Δ[A001080(n)+A159678(n+1)/2]` -/
def P18153552102997970008.Spec : Prop :=
  ∀ n, P18153552102997970008.a n = (A307168 (n + 1) : ℚ)

end A307168

/-! ## A307168.P9232122707739001844

`A202638(2*n+1)+2*A161852(2*(n+1))`
-/

namespace A307168.P9232122707739001844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202638 (2 * n + 1) + 2 * A161852 (2 * (n + 1))

end

end A307168.P9232122707739001844

namespace A307168

/-- `A202638(2*n+1)+2*A161852(2*(n+1))` -/
def P9232122707739001844.Spec : Prop :=
  ∀ n, P9232122707739001844.a n = A307168 (n + 1)

end A307168

/-! ## A307168.P13030770898635476538

`A266698(n+1)+A041008(A004767(n))`
-/

namespace A307168.P13030770898635476538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266698 (n + 1) + A041008 (A004767 n).toNat

end

end A307168.P13030770898635476538

namespace A307168

/-- `A266698(n+1)+A041008(A004767(n))` -/
def P13030770898635476538.Spec : Prop :=
  ∀ n, P13030770898635476538.a n = A307168 (n + 1)

end A307168

/-!
# A307169: First class of all proper positive solutions y1(n) = a(n) of the Pell equation x^2 - 7*y^2 = 9.

The programs for A307169, the canonical program `A307169.P132655126506997167` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307169 has offset 1).

The definition of A307169 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A307169.P132655126506997167

`ogf((4+x)/(1-16x+x^2))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A307169

/-- `ogf((4+x)/(1-16x+x^2))` -/
def P132655126506997167.Spec : Prop :=
  ∀ n, P132655126506997167.a n = A307169 (n + 1)

theorem P132655126506997167.correct : P132655126506997167.Spec := by
  intro n
  simp only [A307169, Nat.add_sub_cancel]

end A307169

/-! ## A307169.P5561347828490054243

`sqrt((A307168(n+1)²-9)/7)`
-/

namespace A307169.P5561347828490054243
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A307168 (n + 1) ^ 2 - 9 : ℚ) / 7 : ℝ)

end

end A307169.P5561347828490054243

namespace A307169

/-- `sqrt((A307168(n+1)²-9)/7)` -/
def P5561347828490054243.Spec : Prop :=
  ∀ n, P5561347828490054243.a n = (A307169 (n + 1) : ℝ)

end A307169

/-! ## A307169.P15963454569472410282

`16*a(n-1)-a(n-2)` with `a(0)=4, a(1)=65`
-/

namespace A307169.P15963454569472410282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 65] fun n a =>
  16 * a (n - 1) - a (n - 2)

end

end A307169.P15963454569472410282

namespace A307169

/-- `16*a(n-1)-a(n-2)` -/
def P15963454569472410282.Spec : Prop :=
  ∀ n, P15963454569472410282.a n = A307169 (n + 1)

end A307169

/-! ## A307169.P16248023527873391341

`Δ[A350925(n)/2]`
-/

namespace A307169.P16248023527873391341
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350925 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A307169.P16248023527873391341

namespace A307169

/-- `Δ[A350925(n)/2]` -/
def P16248023527873391341.Spec : Prop :=
  ∀ n, P16248023527873391341.a n = (A307169 (n + 1) : ℚ)

end A307169

/-! ## A307169.P9928751851841052753

`A001080(n+1)+∑[ceil((sqrt(63)+8)^n)]`
-/

namespace A307169.P9928751851841052753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.sqrt (63 : ℝ) + 8) ^ n⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001080 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307169.P9928751851841052753

namespace A307169

/-- `A001080(n+1)+∑[ceil((sqrt(63)+8)^n)]` -/
def P9928751851841052753.Spec : Prop :=
  ∀ n, P9928751851841052753.a n = A307169 (n + 1)

end A307169

/-! ## A307169.P18134666538678961232

`A159678(n+1)+A001080(n+1)`
-/

namespace A307169.P18134666538678961232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159678 (n + 1) + A001080 (n + 1)

end

end A307169.P18134666538678961232

namespace A307169

/-- `A159678(n+1)+A001080(n+1)` -/
def P18134666538678961232.Spec : Prop :=
  ∀ n, P18134666538678961232.a n = A307169 (n + 1)

end A307169

/-! ## A307169.P11253630740281231899

`A259596(4*n)+A001080(n+1)`
-/

namespace A307169.P11253630740281231899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259596 (4 * n) + A001080 (n + 1)

end

end A307169.P11253630740281231899

namespace A307169

/-- `A259596(4*n)+A001080(n+1)` -/
def P11253630740281231899.Spec : Prop :=
  ∀ n, P11253630740281231899.a n = A307169 (n + 1)

end A307169

/-! ## A307169.P5663196177030179762

`A159678(n+1)+∑[A266698(n+1)]`
-/

namespace A307169.P5663196177030179762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266698 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159678 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307169.P5663196177030179762

namespace A307169

/-- `A159678(n+1)+∑[A266698(n+1)]` -/
def P5663196177030179762.Spec : Prop :=
  ∀ n, P5663196177030179762.a n = A307169 (n + 1)

end A307169

/-! ## A307169.P4017505924037644123

`(A001080(n)+Δ[A253879(n+1)])/2`
-/

namespace A307169.P4017505924037644123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253879 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001080 n + (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A307169.P4017505924037644123

namespace A307169

/-- `(A001080(n)+Δ[A253879(n+1)])/2` -/
def P4017505924037644123.Spec : Prop :=
  ∀ n, P4017505924037644123.a n = (A307169 (n + 1) : ℚ)

end A307169

/-! ## A307169.P17701455942158997528

`A084069(2*n+1)+A001080(n+1)`
-/

namespace A307169.P17701455942158997528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084069 (2 * n + 1) + A001080 (n + 1)

end

end A307169.P17701455942158997528

namespace A307169

/-- `A084069(2*n+1)+A001080(n+1)` -/
def P17701455942158997528.Spec : Prop :=
  ∀ n, P17701455942158997528.a n = A307169 (n + 1)

end A307169

/-!
# A307172: Second class of all proper positive solutions x2(n) of the Pell equation x^2 - 7*y^2 = 9.

The programs for A307172, the canonical program `A307172.P16679509841299163831` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307172 has offset 1).

The definition of A307172 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A307172.P16679509841299163831

`ogf((4-11x)/(1-16x+x^2))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A307172

/-- `ogf((4-11x)/(1-16x+x^2))` -/
def P16679509841299163831.Spec : Prop :=
  ∀ n, P16679509841299163831.a n = A307172 (n + 1)

theorem P16679509841299163831.correct : P16679509841299163831.Spec := by
  intro n
  simp only [A307172, Nat.add_sub_cancel]

end A307172

/-! ## A307172.P3853476783898680102

`sqrt(9+7*A307173(n+1)²)`
-/

namespace A307172.P3853476783898680102
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (9 + 7 * A307173 (n + 1) ^ 2 : ℝ)

end

end A307172.P3853476783898680102

namespace A307172

/-- `sqrt(9+7*A307173(n+1)²)` -/
def P3853476783898680102.Spec : Prop :=
  ∀ n, P3853476783898680102.a n = (A307172 (n + 1) : ℝ)

end A307172

/-! ## A307172.P8998311511258491404

`16*a(n-1)-a(n-2)` with `a(0)=4, a(1)=53`
-/

namespace A307172.P8998311511258491404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 53] fun n a =>
  16 * a (n - 1) - a (n - 2)

end

end A307172.P8998311511258491404

namespace A307172

/-- `16*a(n-1)-a(n-2)` -/
def P8998311511258491404.Spec : Prop :=
  ∀ n, P8998311511258491404.a n = A307172 (n + 1)

end A307172

/-! ## A307172.P11860685767962054225

`7*A007751(n)+4`
-/

namespace A307172.P11860685767962054225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A007751 n + 4

end

end A307172.P11860685767962054225

namespace A307172

/-- `7*A007751(n)+4` -/
def P11860685767962054225.Spec : Prop :=
  ∀ n, P11860685767962054225.a n = A307172 (n + 1)

end A307172

/-! ## A307172.P7169143009201574398

`A001081(n)+Δ[A001080(n)]`
-/

namespace A307172.P7169143009201574398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001080 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001081 n + (f1 (n + 1) - f1 n)

end

end A307172.P7169143009201574398

namespace A307172

/-- `A001081(n)+Δ[A001080(n)]` -/
def P7169143009201574398.Spec : Prop :=
  ∀ n, P7169143009201574398.a n = A307172 (n + 1)

end A307172

/-! ## A307172.P6875478823538185253

`A266698(n+1)+A001081(n)`
-/

namespace A307172.P6875478823538185253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266698 (n + 1) + A001081 n

end

end A307172.P6875478823538185253

namespace A307172

/-- `A266698(n+1)+A001081(n)` -/
def P6875478823538185253.Spec : Prop :=
  ∀ n, P6875478823538185253.a n = A307172 (n + 1)

end A307172

/-! ## A307172.P1915135624905548821

`A001081(n)+Δ[A204517(3*n+2)]`
-/

namespace A307172.P1915135624905548821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204517 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001081 n + (f1 (n + 1) - f1 n)

end

end A307172.P1915135624905548821

namespace A307172

/-- `A001081(n)+Δ[A204517(3*n+2)]` -/
def P1915135624905548821.Spec : Prop :=
  ∀ n, P1915135624905548821.a n = A307172 (n + 1)

end A307172

/-! ## A307172.P8719635257856832685

`A202638(2*(n+1))+2*A161852(2*n+1)`
-/

namespace A307172.P8719635257856832685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202638 (2 * (n + 1)) + 2 * A161852 (2 * n + 1)

end

end A307172.P8719635257856832685

namespace A307172

/-- `A202638(2*(n+1))+2*A161852(2*n+1)` -/
def P8719635257856832685.Spec : Prop :=
  ∀ n, P8719635257856832685.a n = A307172 (n + 1)

end A307172

/-! ## A307172.P13072392810268556205

`A090727(n)+A041008(A008586(n))`
-/

namespace A307172.P13072392810268556205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090727 n + A041008 (A008586 n).toNat

end

end A307172.P13072392810268556205

namespace A307172

/-- `A090727(n)+A041008(A008586(n))` -/
def P13072392810268556205.Spec : Prop :=
  ∀ n, P13072392810268556205.a n = A307172 (n + 1)

end A307172

/-! ## A307172.P271172484290192881

`A001080(n+1)+A001081(n)-A001080(n)`
-/

namespace A307172.P271172484290192881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001080 (n + 1) + (A001081 n - A001080 n)

end

end A307172.P271172484290192881

namespace A307172

/-- `A001080(n+1)+A001081(n)-A001080(n)` -/
def P271172484290192881.Spec : Prop :=
  ∀ n, P271172484290192881.a n = A307172 (n + 1)

end A307172

/-!
# A307173: Second class of all proper positive solutions y2(n) = a(n) of the Pell equation x^2 - 7*y^2 = 9.

The programs for A307173, the canonical program `A307173.P4414439459139758788` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307173 has offset 1).

The definition of A307173 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A307173.P4414439459139758788

`ogf((1+4x)/(1-16x+x^2))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A307173

/-- `ogf((1+4x)/(1-16x+x^2))` -/
def P4414439459139758788.Spec : Prop :=
  ∀ n, P4414439459139758788.a n = A307173 (n + 1)

theorem P4414439459139758788.correct : P4414439459139758788.Spec := by
  intro n
  simp only [A307173, Nat.add_sub_cancel]

end A307173

/-! ## A307173.P16976098811295710448

`sqrt((A307172(n+1)²-9)/7)`
-/

namespace A307173.P16976098811295710448
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A307172 (n + 1) ^ 2 - 9 : ℚ) / 7 : ℝ)

end

end A307173.P16976098811295710448

namespace A307173

/-- `sqrt((A307172(n+1)²-9)/7)` -/
def P16976098811295710448.Spec : Prop :=
  ∀ n, P16976098811295710448.a n = (A307173 (n + 1) : ℝ)

end A307173

/-! ## A307173.P12184761388061715958

`16*a(n-1)-a(n-2)` with `a(0)=1, a(1)=20`
-/

namespace A307173.P12184761388061715958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 20] fun n a =>
  16 * a (n - 1) - a (n - 2)

end

end A307173.P12184761388061715958

namespace A307173

/-- `16*a(n-1)-a(n-2)` -/
def P12184761388061715958.Spec : Prop :=
  ∀ n, P12184761388061715958.a n = A307173 (n + 1)

end A307173

/-! ## A307173.P10831665216320459366

`A001080(n)+∑[ceil((sqrt(63)+8)^n)]`
-/

namespace A307173.P10831665216320459366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.sqrt (63 : ℝ) + 8) ^ n⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001080 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307173.P10831665216320459366

namespace A307173

/-- `A001080(n)+∑[ceil((sqrt(63)+8)^n)]` -/
def P10831665216320459366.Spec : Prop :=
  ∀ n, P10831665216320459366.a n = A307173 (n + 1)

end A307173

/-! ## A307173.P7331866681738260356

`A159678(n+1)+A001080(n)`
-/

namespace A307173.P7331866681738260356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159678 (n + 1) + A001080 n

end

end A307173.P7331866681738260356

namespace A307173

/-- `A159678(n+1)+A001080(n)` -/
def P7331866681738260356.Spec : Prop :=
  ∀ n, P7331866681738260356.a n = A307173 (n + 1)

end A307173

/-! ## A307173.P13354629561206148838

`A154021(n+1)+A077412(n)`
-/

namespace A307173.P13354629561206148838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154021 (n + 1) + A077412 n

end

end A307173.P13354629561206148838

namespace A307173

/-- `A154021(n+1)+A077412(n)` -/
def P13354629561206148838.Spec : Prop :=
  ∀ n, P13354629561206148838.a n = A307173 (n + 1)

end A307173

/-! ## A307173.P13661828189233134940

`A084069(2*n+1)+A001080(n)`
-/

namespace A307173.P13661828189233134940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084069 (2 * n + 1) + A001080 n

end

end A307173.P13661828189233134940

namespace A307173

/-- `A084069(2*n+1)+A001080(n)` -/
def P13661828189233134940.Spec : Prop :=
  ∀ n, P13661828189233134940.a n = A307173 (n + 1)

end A307173

/-! ## A307173.P8261596940772846866

`A077398(2*n)+A077401(2*n)+1`
-/

namespace A307173.P8261596940772846866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077398 (2 * n) + (A077401 (2 * n) + 1)

end

end A307173.P8261596940772846866

namespace A307173

/-- `A077398(2*n)+A077401(2*n)+1` -/
def P8261596940772846866.Spec : Prop :=
  ∀ n, P8261596940772846866.a n = A307173 (n + 1)

end A307173

/-! ## A307173.P2460497369467406887

`A154021(n+1)+∑[A243470(2*n+1)]`
-/

namespace A307173.P2460497369467406887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243470 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154021 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307173.P2460497369467406887

namespace A307173

/-- `A154021(n+1)+∑[A243470(2*n+1)]` -/
def P2460497369467406887.Spec : Prop :=
  ∀ n, P2460497369467406887.a n = A307173 (n + 1)

end A307173

/-! ## A307173.P10033954349303601724

`∑[A157456(n+1)]+4/3*A001080(n)`
-/

namespace A307173.P10033954349303601724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157456 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) + (4 : ℚ) / 3 * (A001080 n : ℚ)

end

end A307173.P10033954349303601724

namespace A307173

/-- `∑[A157456(n+1)]+4/3*A001080(n)` -/
def P10033954349303601724.Spec : Prop :=
  ∀ n, P10033954349303601724.a n = (A307173 (n + 1) : ℚ)

end A307173

/-!
# A307175: Smallest power to which 1+1/n must be raised in order for an interval [k,k+1], with k an integer, to be skipped.

The programs for A307175, there is no canonical definition to state claims against.
-/

/-! ## A307175.P17298624261414283040

`A347447(A177917(2*n+1))+A328596(n+3)`
-/

namespace A307175.P17298624261414283040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347447 (A177917 (2 * n + 1)).toNat + A328596 (n + 3)

end

end A307175.P17298624261414283040

/-! ## A307175.P9371491142443668806

`3*n+5-A359511(A052547(n))`
-/

namespace A307175.P9371491142443668806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 5 : ℤ) - A359511 (A052547 n).toNat

end

end A307175.P9371491142443668806

/-! ## A307175.P12358038886101207128

`A006218(n+3)-A334029(A297457(n+3))`
-/

namespace A307175.P12358038886101207128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (n + 3) - A334029 (A297457 (n + 3)).toNat

end

end A307175.P12358038886101207128

/-! ## A307175.P13433131239502613216

`A285352(2*n+3)-A001222(A285387(2*(n+1)))`
-/

namespace A307175.P13433131239502613216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285352 (2 * n + 3) - A001222 (A285387 (2 * (n + 1))).toNat

end

end A307175.P13433131239502613216

/-! ## A307175.P3868906759597250888

`A225837(2*n+3)+A010051(A065557(3*n+2))`
-/

namespace A307175.P3868906759597250888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225837 (2 * n + 3) + A010051 (A065557 (3 * n + 2)).toNat

end

end A307175.P3868906759597250888

/-!
# A307176: Number of Sophie Germain primes of the form 4k + 1 less than 10^n.

The programs for A307176, there is no canonical definition to state claims against.
-/

/-! ## A307176.P9424731930489297901

`A092816(n+1)-A307121(n+1)-1`
-/

namespace A307176.P9424731930489297901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092816 (n + 1) - A307121 (n + 1) - 1

end

end A307176.P9424731930489297901

/-! ## A307176.P3896558797510422613

`A014681(A092816(n+1)-A307121(n+1))`
-/

namespace A307176.P3896558797510422613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A092816 (n + 1) - A307121 (n + 1)).toNat

end

end A307176.P3896558797510422613

/-!
# A307177: Decimal expansion of smallest nontrivial base-10 number that contains all pairwise products of its digits as substrings.

The programs for A307177, there is no canonical definition to state claims against.
-/

/-! ## A307177.P17487273607195287781

`and(A120072(A010346(n+2)), A308780(n+1))`
-/

namespace A307177.P17487273607195287781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A120072 (A010346 (n + 2)).toNat) (A308780 (n + 1))

end

end A307177.P17487273607195287781

/-!
# A307181: a(n) is the first Zagreb index of the Lucas cube Lambda(n).

The programs for A307181, the canonical program `A307181.P18433559893680351854` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307181 has offset 1).

The definition of A307181 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 454 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A307181.P10109439328273674677

`ogf((6x-6x^2+4x^3+6x^5-4x^6-2x^7)/(1-3x+5x^3-3x^5-x^6))`
-/

namespace A307181.P10109439328273674677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6, -6, 4, 0, 6, -4, -2] [1, -3, 0, 5, 0, -3, -1] n

end

end A307181.P10109439328273674677

namespace A307181

/-- `ogf((6x-6x^2+4x^3+6x^5-4x^6-2x^7)/(1-3x+5x^3-3x^5-x^6))` -/
def P10109439328273674677.Spec : Prop :=
  ∀ n, P10109439328273674677.a n = A307181 (n + 1)

end A307181

/-! ## A307181.P18433559893680351854

`3*a(n-1)-5*a(n-3)+3*a(n-5)+a(n-6)` with `a(0)=0, a(1)=6, a(2)=12, a(3)=40, a(4)=90, a(5)=216, a(6)=462, a(7)=976`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A307181

/-- `3*a(n-1)-5*a(n-3)+3*a(n-5)+a(n-6)` -/
def P18433559893680351854.Spec : Prop :=
  ∀ n, P18433559893680351854.a n = A307181 (n + 1)

theorem P18433559893680351854.correct : P18433559893680351854.Spec := by
  intro n
  simp only [A307181, Nat.add_sub_cancel]

end A307181

/-!
# A307182: Crossing number of the n-crown graph (conjectured).

The programs for A307182, the canonical program `A307182.P15611185271462407638` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307182 has offset 1).

The definition of A307182 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A307182.P15611185271462407638

`ogf((4x^4+4x^5+4x^6)/(1-2x-2x^2+6x^3-6x^5+2x^6+2x^7-x^8))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A307182

/-- `ogf((4x^4+4x^5+4x^6)/(1-2x-2x^2+6x^3-6x^5+2x^6+2x^7-x^8))` -/
def P15611185271462407638.Spec : Prop :=
  ∀ n, P15611185271462407638.a n = A307182 (n + 1)

theorem P15611185271462407638.correct : P15611185271462407638.Spec := by
  intro n
  simp only [A307182, Nat.add_sub_cancel]

end A307182

/-! ## A307182.P5569572041584570587

`floor((n/2-floor((n/2)²))²)`
-/

namespace A307182.P5569572041584570587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℚ) / 2 - (⌊((n : ℚ) / 2) ^ 2⌋ : ℚ)) ^ 2⌋

end

end A307182.P5569572041584570587

namespace A307182

/-- `floor((n/2-floor((n/2)²))²)` -/
def P5569572041584570587.Spec : Prop :=
  ∀ n, P5569572041584570587.a n = A307182 (n + 1)

end A307182

/-! ## A307182.P10712218112066477019

`(round((n/2)²)-(2*n)%(n+1))*round((n/2)²)`
-/

namespace A307182.P10712218112066477019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway (((n : ℚ) / 2) ^ 2) - ((2 * n % (n + 1) : ℕ) : ℤ)) * SequenceMachineLib.roundAway (((n : ℚ) / 2) ^ 2)

end

end A307182.P10712218112066477019

namespace A307182

/-- `(round((n/2)²)-(2*n)%(n+1))*round((n/2)²)` -/
def P10712218112066477019.Spec : Prop :=
  ∀ n, P10712218112066477019.a n = A307182 (n + 1)

end A307182

/-! ## A307182.P12526545482448998688

`∑[4*A028724(n)]`
-/

namespace A307182.P12526545482448998688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A028724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307182.P12526545482448998688

namespace A307182

/-- `∑[4*A028724(n)]` -/
def P12526545482448998688.Spec : Prop :=
  ∀ n, P12526545482448998688.a n = A307182 (n + 1)

end A307182

/-! ## A307182.P5342814067092607835

`round((n/2-A002620(n))²)`
-/

namespace A307182.P5342814067092607835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℚ) / 2 - (A002620 n : ℚ)) ^ 2)

end

end A307182.P5342814067092607835

namespace A307182

/-- `round((n/2-A002620(n))²)` -/
def P5342814067092607835.Spec : Prop :=
  ∀ n, P5342814067092607835.a n = A307182 (n + 1)

end A307182

/-! ## A307182.P17949311293799609091

`A028724(n)*A131055(n+1)`
-/

namespace A307182.P17949311293799609091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028724 n * A131055 (n + 1)

end

end A307182.P17949311293799609091

namespace A307182

/-- `A028724(n)*A131055(n+1)` -/
def P17949311293799609091.Spec : Prop :=
  ∀ n, P17949311293799609091.a n = A307182 (n + 1)

end A307182

/-! ## A307182.P13572595178552072030

`(A033638(n)-n)*A002620(n)`
-/

namespace A307182.P13572595178552072030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033638 n - (n : ℤ)) * A002620 n

end

end A307182.P13572595178552072030

namespace A307182

/-- `(A033638(n)-n)*A002620(n)` -/
def P13572595178552072030.Spec : Prop :=
  ∀ n, P13572595178552072030.a n = A307182 (n + 1)

end A307182

/-! ## A307182.P1504141071744038421

`A002620(abs(2-n))*A002620(n)`
-/

namespace A307182.P1504141071744038421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 |2 - (n : ℤ)|.toNat * A002620 n

end

end A307182.P1504141071744038421

namespace A307182

/-- `A002620(abs(2-n))*A002620(n)` -/
def P1504141071744038421.Spec : Prop :=
  ∀ n, P1504141071744038421.a n = A307182 (n + 1)

end A307182

/-! ## A307182.P4196674183277889181

`(A033638(n)-n)*∑[A004526(n)]`
-/

namespace A307182.P4196674183277889181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033638 n - (n : ℤ)) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A307182.P4196674183277889181

namespace A307182

/-- `(A033638(n)-n)*∑[A004526(n)]` -/
def P4196674183277889181.Spec : Prop :=
  ∀ n, P4196674183277889181.a n = A307182 (n + 1)

end A307182

/-! ## A307182.P462908226979624149

`(sqrt(A030179(n))+1-n)*sqrt(A030179(n))`
-/

namespace A307182.P462908226979624149
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (A030179 n : ℝ) + 1 - (n : ℝ)) * Real.sqrt (A030179 n : ℝ)

end

end A307182.P462908226979624149

namespace A307182

/-- `(sqrt(A030179(n))+1-n)*sqrt(A030179(n))` -/
def P462908226979624149.Spec : Prop :=
  ∀ n, P462908226979624149.a n = (A307182 (n + 1) : ℝ)

end A307182

/-! ## A307182.P4293436160672087046

`(A002620(n)-A023443(n))*A002620(n)`
-/

namespace A307182.P4293436160672087046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002620 n - A023443 n) * A002620 n

end

end A307182.P4293436160672087046

namespace A307182

/-- `(A002620(n)-A023443(n))*A002620(n)` -/
def P4293436160672087046.Spec : Prop :=
  ∀ n, P4293436160672087046.a n = A307182 (n + 1)

end A307182

/-! ## A307182.P7669023569676987644

`4*A000241(n+1)`
-/

namespace A307182.P7669023569676987644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000241 (n + 1)

end

end A307182.P7669023569676987644

namespace A307182

/-- `4*A000241(n+1)` -/
def P7669023569676987644.Spec : Prop :=
  ∀ n, P7669023569676987644.a n = A307182 (n + 1)

end A307182

/-! ## A307182.P14931920613708408933

`2*A028724(n)*A004526(n+1)`
-/

namespace A307182.P14931920613708408933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028724 n * A004526 (n + 1)

end

end A307182.P14931920613708408933

namespace A307182

/-- `2*A028724(n)*A004526(n+1)` -/
def P14931920613708408933.Spec : Prop :=
  ∀ n, P14931920613708408933.a n = A307182 (n + 1)

end A307182

/-! ## A307182.P7706265802619042791

`(A084265(n+1)-A000124(n+1))*A028724(n)`
-/

namespace A307182.P7706265802619042791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A084265 (n + 1) - A000124 (n + 1)) * A028724 n

end

end A307182.P7706265802619042791

namespace A307182

/-- `(A084265(n+1)-A000124(n+1))*A028724(n)` -/
def P7706265802619042791.Spec : Prop :=
  ∀ n, P7706265802619042791.a n = A307182 (n + 1)

end A307182

/-! ## A307182.P10052607572051094313

`(A008797(2*n)-2*n)*A008797(2*n+1)`
-/

namespace A307182.P10052607572051094313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008797 (2 * n) - (2 * n : ℤ)) * A008797 (2 * n + 1)

end

end A307182.P10052607572051094313

namespace A307182

/-- `(A008797(2*n)-2*n)*A008797(2*n+1)` -/
def P10052607572051094313.Spec : Prop :=
  ∀ n, P10052607572051094313.a n = A307182 (n + 1)

end A307182

/-! ## A307182.P16737412938196729087

`A002620(n)*A265409(A002620(n+2))`
-/

namespace A307182.P16737412938196729087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n * A265409 (A002620 (n + 2)).toNat

end

end A307182.P16737412938196729087

namespace A307182

/-- `A002620(n)*A265409(A002620(n+2))` -/
def P16737412938196729087.Spec : Prop :=
  ∀ n, P16737412938196729087.a n = A307182 (n + 1)

end A307182

/-! ## A307182.P12943847689451988992

`A182568(A261243(n+1))`
-/

namespace A307182.P12943847689451988992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182568 (A261243 (n + 1)).toNat

end

end A307182.P12943847689451988992

namespace A307182

/-- `A182568(A261243(n+1))` -/
def P12943847689451988992.Spec : Prop :=
  ∀ n, P12943847689451988992.a n = A307182 (n + 1)

end A307182

/-! ## A307182.P15063446970234460081

`A182568(A007590(n)+2-n)`
-/

namespace A307182.P15063446970234460081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182568 (A007590 n + (2 - (n : ℤ))).toNat

end

end A307182.P15063446970234460081

namespace A307182

/-- `A182568(A007590(n)+2-n)` -/
def P15063446970234460081.Spec : Prop :=
  ∀ n, P15063446970234460081.a n = A307182 (n + 1)

end A307182

/-! ## A307182.P13654538122247911085

`A182568(2-(n-A007590(n)))`
-/

namespace A307182.P13654538122247911085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182568 (2 - ((n : ℤ) - A007590 n)).toNat

end

end A307182.P13654538122247911085

namespace A307182

/-- `A182568(2-(n-A007590(n)))` -/
def P13654538122247911085.Spec : Prop :=
  ∀ n, P13654538122247911085.a n = A307182 (n + 1)

end A307182

/-! ## A307182.P3332179188183195818

`A002620(A004277(A002620(n))-n)`
-/

namespace A307182.P3332179188183195818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A004277 (A002620 n).toNat - (n : ℤ)).toNat

end

end A307182.P3332179188183195818

namespace A307182

/-- `A002620(A004277(A002620(n))-n)` -/
def P3332179188183195818.Spec : Prop :=
  ∀ n, P3332179188183195818.a n = A307182 (n + 1)

end A307182

/-!
# A307183: A fractal binary sequence: For all n >= 1, underline the term with index n + a(n) + 1; then the two subsequences of underlined terms and of non-underlined terms are both equal to the sequence itself.

The programs for A307183, there is no canonical definition to state claims against.
-/

/-! ## A307183.P15507941240654358913

`A051105(n)+a(A185284(A006257(n)))-1` with `a(0)=1`
-/

namespace A307183.P15507941240654358913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A051105 n + (a (A185284 (A006257 n).toNat).toNat - 1)

end

end A307183.P15507941240654358913

/-! ## A307183.P12053572313682999722

`A051105(abs(1-n)+1)-A185284(A006257(n))`
-/

namespace A307183.P12053572313682999722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051105 (|1 - (n : ℤ)| + 1).toNat - A185284 (A006257 n).toNat

end

end A307183.P12053572313682999722

/-! ## A307183.P7556424866113483636

`(A051105(A028310(n))-A185284(A006257(n)))^n`
-/

namespace A307183.P7556424866113483636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051105 (A028310 n).toNat - A185284 (A006257 n).toNat) ^ n

end

end A307183.P7556424866113483636

/-! ## A307183.P17817604317201352254

`(A051105(A000038(n)+n)-A185284(A006257(n)))²`
-/

namespace A307183.P17817604317201352254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051105 (A000038 n + (n : ℤ)).toNat - A185284 (A006257 n).toNat) ^ 2

end

end A307183.P17817604317201352254

/-! ## A307183.P15348504569505072743

`(A051105(A057428(n)+n+1)-A185284(A006257(n)))^n`
-/

namespace A307183.P15348504569505072743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051105 (A057428 n + (n + 1 : ℤ)).toNat - A185284 (A006257 n).toNat) ^ n

end

end A307183.P15348504569505072743

/-! ## A307183.P14382299178904192835

`A051105(A000038(∑[8*n])+n)`
-/

namespace A307183.P14382299178904192835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051105 (A000038 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)).toNat

end

end A307183.P14382299178904192835

/-! ## A307183.P16025974856606411502

`and(A051105(abs(1-n)+1), A254766(n+1))`
-/

namespace A307183.P16025974856606411502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051105 (|1 - (n : ℤ)| + 1).toNat) (A254766 (n + 1))

end

end A307183.P16025974856606411502

/-! ## A307183.P8685239305010213556

`ceil(A051105(A000038(4*(n²+n))+n)/2)`
-/

namespace A307183.P8685239305010213556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A051105 (A000038 (4 * (n ^ 2 + n)) + (n : ℤ)).toNat : ℚ) / 2⌉

end

end A307183.P8685239305010213556

/-!
# A307187: Numbers k such that A095112(k)/k sets a new record.

The programs for A307187, there is no canonical definition to state claims against.
-/

/-! ## A307187.P3488161717121486686

`record[A261358(A006368(n))]`
-/

namespace A307187.P3488161717121486686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261358 (A006368 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307187.P3488161717121486686

/-! ## A307187.P11632966161902153016

`record[A261358(A326352(3*n))]`
-/

namespace A307187.P11632966161902153016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261358 (A326352 (3 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307187.P11632966161902153016

/-! ## A307187.P2820251942374516594

`record[A261358(n)/A158068(n)]`
-/

namespace A307187.P2820251942374516594
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261358 n : ℚ) / (A158068 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307187.P2820251942374516594

/-! ## A307187.P11521163771280768770

`record[A353688(A135141(n+1)+1)]`
-/

namespace A307187.P11521163771280768770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353688 (A135141 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307187.P11521163771280768770

/-! ## A307187.P12365585129722934180

`∩[A015924(n+1), A140999(n+1)]`
-/

namespace A307187.P12365585129722934180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140999 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307187.P12365585129722934180

/-!
# A307188: Positions of 0's in the square spiral in A275609.

The programs for A307188, there is no canonical definition to state claims against.
-/

/-! ## A307188.P12284980825741282786

`eq[0, A275609(n)]`
-/

namespace A307188.P12284980825741282786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275609 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A307188.P12284980825741282786

/-! ## A307188.P743665393670944893

`A248715(n+1)-1`
-/

namespace A307188.P743665393670944893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248715 (n + 1) - 1

end

end A307188.P743665393670944893

/-! ## A307188.P17485516174008172381

`lt[A275609(2*n-n), 1]`
-/

namespace A307188.P17485516174008172381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275609 (2 * n - n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A307188.P17485516174008172381

/-! ## A307188.P6600494297513932419

`record[(n+1)*(1-A275609(n+1))]`
-/

namespace A307188.P6600494297513932419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (1 - A275609 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307188.P6600494297513932419

/-! ## A307188.P14944342437098810440

`lt[A000203(n+1)*A275609(n), 1]`
-/

namespace A307188.P14944342437098810440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A275609 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A307188.P14944342437098810440

/-! ## A307188.P5523105309864481569

`record[n-A213708(n)*A275609(n)]`
-/

namespace A307188.P5523105309864481569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A213708 n * A275609 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307188.P5523105309864481569

/-! ## A307188.P26975315094058649

`A023443(A248715(n+1))`
-/

namespace A307188.P26975315094058649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A248715 (n + 1)).toNat

end

end A307188.P26975315094058649

/-! ## A307188.P2026053949352136745

`record[n-A000290(n)*A275609(n)]`
-/

namespace A307188.P2026053949352136745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000290 n * A275609 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307188.P2026053949352136745

/-! ## A307188.P18043552233317295338

`record[n-A008458(n)*A275609(n)]`
-/

namespace A307188.P18043552233317295338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A008458 n * A275609 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307188.P18043552233317295338

/-! ## A307188.P7827292163073297140

`record[n-A105343(n)*A275609(n)]`
-/

namespace A307188.P7827292163073297140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A105343 n * A275609 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307188.P7827292163073297140

/-! ## A307188.P10102990990991346271

`record[n-A051402(n+1)*A275609(n)]`
-/

namespace A307188.P10102990990991346271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A051402 (n + 1) * A275609 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307188.P10102990990991346271

/-! ## A307188.P15906100132634571192

`lt[A109955(n)²*A275609(n), 1]`
-/

namespace A307188.P15906100132634571192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109955 n ^ 2 * A275609 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A307188.P15906100132634571192

/-! ## A307188.P11606419158199179050

`lt[A275609(n), 1]%A033484(n+1)`
-/

namespace A307188.P11606419158199179050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275609 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) (A033484 (n + 1))

end

end A307188.P11606419158199179050

/-!
# A307189: Positions of 1's in the square spiral in A275609.

The programs for A307189, there is no canonical definition to state claims against.
-/

/-! ## A307189.P1198129900871089694

`eq[1, A275609(n)]`
-/

namespace A307189.P1198129900871089694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275609 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A307189.P1198129900871089694

/-! ## A307189.P17511187208968136471

`lt[A257339(n+1)%2, 1]`
-/

namespace A307189.P17511187208968136471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257339 (n + 1)) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A307189.P17511187208968136471

/-! ## A307189.P3418223194786975910

`record[gcd(n+1, A275609(n+1)+n)]`
-/

namespace A307189.P3418223194786975910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A275609 (n + 1) + (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307189.P3418223194786975910

/-! ## A307189.P14655289964378971251

`eq[2, A020639(A257339(n+1))]`
-/

namespace A307189.P14655289964378971251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A257339 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A307189.P14655289964378971251

/-! ## A307189.P6827171458468502762

`record[gcd(n+1-A275609(n), A000290(n))]`
-/

namespace A307189.P6827171458468502762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 1 : ℤ) - A275609 n) (A000290 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307189.P6827171458468502762

/-! ## A307189.P9748617556385717718

`record[gcd(A275609(n)-(n+1), A008458(n))]`
-/

namespace A307189.P9748617556385717718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A275609 n - (n + 1 : ℤ)) (A008458 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307189.P9748617556385717718

/-! ## A307189.P2838688596078268683

`A000720(p?[A008578(n+1)*A275609(n)])`
-/

namespace A307189.P2838688596078268683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) * A275609 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A307189.P2838688596078268683

/-!
# A307190: Positions of 2's in the square spiral in A275609.

The programs for A307190, there is no canonical definition to state claims against.
-/

/-! ## A307190.P16617102702660984514

`eq[2, A275609(n)]`
-/

namespace A307190.P16617102702660984514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275609 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A307190.P16617102702660984514

/-! ## A307190.P10525319036358841437

`record[gcd(n+2, A275609(n+2)+n)]`
-/

namespace A307190.P10525319036358841437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A275609 (n + 2) + (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307190.P10525319036358841437

/-! ## A307190.P13746746933234494721

`lt[tan(A275609(n)), A057428(n)]`
-/

namespace A307190.P13746746933234494721
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (A275609 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A307190.P13746746933234494721

/-! ## A307190.P6455500149361446183

`lt[A020725(n+1)+tan(A275609(n)), n]`
-/

namespace A307190.P6455500149361446183
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A020725 (n + 1) : ℝ) + Real.tan (A275609 n : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A307190.P6455500149361446183

/-! ## A307190.P463071949954394046

`lt[A065475(n+1)+tan(A275609(n)), n]`
-/

namespace A307190.P463071949954394046
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A065475 (n + 1) : ℝ) + Real.tan (A275609 n : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A307190.P463071949954394046

/-! ## A307190.P9353174069885153604

`lt[A249579(A275609(n)+1-n-A001489(n)), 1]`
-/

namespace A307190.P9353174069885153604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249579 (A275609 n + (1 - (n : ℤ)) - A001489 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A307190.P9353174069885153604

/-! ## A307190.P18288294237529777332

`lt[A249579(A005408(n)-(2*n-A275609(n))), 1]`
-/

namespace A307190.P18288294237529777332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249579 (A005408 n - ((2 * n : ℤ) - A275609 n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A307190.P18288294237529777332

/-!
# A307191: Positions of 3's in the square spiral in A275609.

The programs for A307191, there is no canonical definition to state claims against.
-/

/-! ## A307191.P8276684504525448142

`eq[3, A275609(n)]`
-/

namespace A307191.P8276684504525448142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275609 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A307191.P8276684504525448142

/-! ## A307191.P14188121250147344135

`lt[A353682(A275609(n)^(a(n-1)+1)+2), 1]` with `a(0)=4`
-/

namespace A307191.P14188121250147344135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  A353682 (SequenceMachineLib.roundAway ((A275609 n : ℚ) ^ (f1 (n - 1) + 1 : ℤ) + 2)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A307191.P14188121250147344135

/-! ## A307191.P599716027265865270

`lt[A103451(A275609(n)+1-n-A001489(n)), 1]`
-/

namespace A307191.P599716027265865270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 (A275609 n + (1 - (n : ℤ)) - A001489 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A307191.P599716027265865270

/-! ## A307191.P5559016661394848818

`lt[1, A109955(A275609(n)+1-n-A001489(n))]`
-/

namespace A307191.P5559016661394848818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109955 (A275609 n + (1 - (n : ℤ)) - A001489 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A307191.P5559016661394848818

/-! ## A307191.P17938780697752926921

`lt[1, A154325(A275609(n)+1-n-A001489(n))]`
-/

namespace A307191.P17938780697752926921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154325 (A275609 n + (1 - (n : ℤ)) - A001489 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A307191.P17938780697752926921

/-! ## A307191.P12111734760480510632

`lt[1, A194005(A275609(n)+1-n-A001489(n))]`
-/

namespace A307191.P12111734760480510632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194005 (A275609 n + (1 - (n : ℤ)) - A001489 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A307191.P12111734760480510632

/-! ## A307191.P3199252748357912766

`lt[A103451(A005408(n)-(2*n-A275609(n))), 1]`
-/

namespace A307191.P3199252748357912766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 (A005408 n - ((2 * n : ℤ) - A275609 n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A307191.P3199252748357912766

/-! ## A307191.P12907839388814278999

`lt[1, A109955(A005408(n)-(2*n-A275609(n)))]`
-/

namespace A307191.P12907839388814278999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109955 (A005408 n - ((2 * n : ℤ) - A275609 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A307191.P12907839388814278999

/-! ## A307191.P8335793258531633814

`lt[1, A154325(A005408(n)-(2*n-A275609(n)))]`
-/

namespace A307191.P8335793258531633814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154325 (A005408 n - ((2 * n : ℤ) - A275609 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A307191.P8335793258531633814

/-! ## A307191.P5797586106816273697

`lt[1, A194005(A005408(n)-(2*n-A275609(n)))]`
-/

namespace A307191.P5797586106816273697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194005 (A005408 n - ((2 * n : ℤ) - A275609 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A307191.P5797586106816273697

/-!
# A307192: Positions of 4's in the square spiral in A275609.

The programs for A307192, there is no canonical definition to state claims against.
-/

/-! ## A307192.P16757613272689715611

`lt[3, A275609(n)]`
-/

namespace A307192.P16757613272689715611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275609 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A307192.P16757613272689715611

/-! ## A307192.P10619151743228032874

`A000027(eq[4, A275609(n)])`
-/

namespace A307192.P10619151743228032874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275609 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A307192.P10619151743228032874

/-! ## A307192.P4154436414614476165

`A052410(eq[4, A275609(n)])`
-/

namespace A307192.P4154436414614476165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275609 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A307192.P4154436414614476165

/-! ## A307192.P3339868720634502754

`eq[A001316(A001316(n))², A275609(n)]`
-/

namespace A307192.P3339868720634502754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A001316 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275609 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A307192.P3339868720634502754

/-! ## A307192.P11693563948930500406

`eq[A040002(n), A275609(n)]`
-/

namespace A307192.P11693563948930500406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040002 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275609 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A307192.P11693563948930500406

/-! ## A307192.P9007596083358711059

`eq[A151712(A001316(n)), A275609(n)]`
-/

namespace A307192.P9007596083358711059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151712 (A001316 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275609 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A307192.P9007596083358711059

/-! ## A307192.P9537703017838226949

`A028253(eq[4, A275609(n)])`
-/

namespace A307192.P9537703017838226949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275609 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028253 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A307192.P9537703017838226949

/-! ## A307192.P14330782261343700888

`eq[4, A275609(A028310(n))]`
-/

namespace A307192.P14330782261343700888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275609 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A307192.P14330782261343700888

/-! ## A307192.P3777512148422289399

`eq[4, A275609(A254667(n))]`
-/

namespace A307192.P3777512148422289399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275609 (A254667 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A307192.P3777512148422289399

/-! ## A307192.P734543191110291013

`eq[A113311(n), A275609(n)]`
-/

namespace A307192.P734543191110291013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113311 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275609 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A307192.P734543191110291013

/-! ## A307192.P17323774650988838498

`eq[A123932(n), A275609(n)]`
-/

namespace A307192.P17323774650988838498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123932 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275609 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A307192.P17323774650988838498

/-! ## A307192.P10660626194443362088

`eq[A151798(n), A275609(n)]`
-/

namespace A307192.P10660626194443362088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151798 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275609 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A307192.P10660626194443362088

/-! ## A307192.P15540866260863005057

`eq[A255176(n), A275609(n)]`
-/

namespace A307192.P15540866260863005057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255176 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275609 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A307192.P15540866260863005057

/-! ## A307192.P13890075338637963992

`eq[A267649(n), A275609(n)]`
-/

namespace A307192.P13890075338637963992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267649 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275609 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A307192.P13890075338637963992

/-! ## A307192.P13460503067401398116

`eq[A275609(n), A329505(n)]`
-/

namespace A307192.P13460503067401398116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275609 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329505 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A307192.P13460503067401398116

/-! ## A307192.P6989601957819212947

`eq[A275609(n), A329509(n)]`
-/

namespace A307192.P6989601957819212947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275609 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329509 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A307192.P6989601957819212947

/-! ## A307192.P13966849987124332336

`eq[A280560(n)², A275609(n)]`
-/

namespace A307192.P13966849987124332336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275609 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A307192.P13966849987124332336

/-! ## A307192.P14159221505841788049

`eq[4, A275609(A060000(n+1))]`
-/

namespace A307192.P14159221505841788049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275609 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A307192.P14159221505841788049

/-! ## A307192.P14708418305635477312

`eq[A271621(n+1), A275609(n)]`
-/

namespace A307192.P14708418305635477312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275609 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A307192.P14708418305635477312

/-!
# A307193: Fill the plane with the square spiral with cells numbered as in A275609; sequence gives the cells along the East spoke starting at the origin.

The programs for A307193, there is no canonical definition to state claims against.
-/

/-! ## A307193.P14439321649378080508

`A275609(n*(4*n-3))`
-/

namespace A307193.P14439321649378080508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275609 ((n : ℤ) * ((4 * n : ℤ) - 3)).toNat

end

end A307193.P14439321649378080508

/-! ## A307193.P4512905264604918323

`dr(A275609(A001107(n)))`
-/

namespace A307193.P4512905264604918323
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A275609 (A001107 n).toNat)

end

end A307193.P4512905264604918323

/-! ## A307193.P12609565020930305615

`A054977(n)*A275609(A001107(n))`
-/

namespace A307193.P12609565020930305615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A275609 (A001107 n).toNat

end

end A307193.P12609565020930305615

/-! ## A307193.P12452511525540650684

`and(A065017(n+1), A275609(A001107(n)))`
-/

namespace A307193.P12452511525540650684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A065017 (n + 1)) (A275609 (A001107 n).toNat)

end

end A307193.P12452511525540650684

/-! ## A307193.P16146602567849127252

`and(A069759(n+1), A275609(A001107(n)))`
-/

namespace A307193.P16146602567849127252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A069759 (n + 1)) (A275609 (A001107 n).toNat)

end

end A307193.P16146602567849127252

/-! ## A307193.P9975504194604149237

`and(A069756(n+2), A275609(A001107(n)))`
-/

namespace A307193.P9975504194604149237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A069756 (n + 2)) (A275609 (A001107 n).toNat)

end

end A307193.P9975504194604149237

/-! ## A307193.P4313814862934133595

`A007318(C(2, n))*A275609(A001107(n))`
-/

namespace A307193.P4313814862934133595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A275609 (A001107 n).toNat

end

end A307193.P4313814862934133595

/-! ## A307193.P6469469051603946286

`A275609(A001107(n))+A008683(4*(n+1))`
-/

namespace A307193.P6469469051603946286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275609 (A001107 n).toNat + A008683 (4 * (n + 1))

end

end A307193.P6469469051603946286

/-! ## A307193.P13374032283199503857

`A014963(4*n+2)*A275609(A001107(n))`
-/

namespace A307193.P13374032283199503857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 2) * A275609 (A001107 n).toNat

end

end A307193.P13374032283199503857

/-! ## A307193.P17114650843116681501

`A000040(n+1)%2*A275609(A001107(n))`
-/

namespace A307193.P17114650843116681501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A275609 (A001107 n).toNat

end

end A307193.P17114650843116681501

/-! ## A307193.P1424190078836033099

`A000041(C(2, n+1))*A275609(A001107(n))`
-/

namespace A307193.P1424190078836033099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 1)) * A275609 (A001107 n).toNat

end

end A307193.P1424190078836033099

/-! ## A307193.P14362037304807692448

`and(1, A000040(n+2))*A275609(A001107(n))`
-/

namespace A307193.P14362037304807692448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000040 (n + 2)) * A275609 (A001107 n).toNat

end

end A307193.P14362037304807692448

/-! ## A307193.P13347112255539636742

`A275609(A001107(n))+A001222(gcd(n, n+1))`
-/

namespace A307193.P13347112255539636742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275609 (A001107 n).toNat + A001222 (Nat.gcd n (n + 1))

end

end A307193.P13347112255539636742

/-! ## A307193.P16590654893993364235

`A000108(ceil(n/(n+1)))*A275609(A001107(n))`
-/

namespace A307193.P16590654893993364235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 ⌈(n : ℚ) / (n + 1 : ℚ)⌉.toNat * A275609 (A001107 n).toNat

end

end A307193.P16590654893993364235

/-! ## A307193.P18433692498573309602

`A001221(A001316(n))*A275609(A001107(n))`
-/

namespace A307193.P18433692498573309602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001316 n).toNat * A275609 (A001107 n).toNat

end

end A307193.P18433692498573309602

/-! ## A307193.P17032548406618317384

`A000041(A112316(n))*A275609(A001107(n))`
-/

namespace A307193.P17032548406618317384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A112316 n).toNat * A275609 (A001107 n).toNat

end

end A307193.P17032548406618317384

/-!
# A307194: Fill the plane with the square spiral with cells numbered as in A275609; sequence gives the cells along the North-East spoke starting at the origin.

The programs for A307194, there is no canonical definition to state claims against.
-/

/-! ## A307194.P5071016840247125253

`A307196(lt[A307196(n+2), A307200(n)])`
-/

namespace A307194.P5071016840247125253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307196 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307200 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307196 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A307194.P5071016840247125253

/-! ## A307194.P13340756627138049576

`A307198(∑[char[(n+1)²]+char[n²]+1])`
-/

namespace A307194.P13340756627138049576
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + (if ∃ j, f3 j = n then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307198 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A307194.P13340756627138049576

/-! ## A307194.P15925913579509992010

`A275609(n*record[lcm(2, n)])`
-/

namespace A307194.P15925913579509992010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275609 (n * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A307194.P15925913579509992010

/-! ## A307194.P17952381304510187147

`A275609(2*C(2*n, 2))`
-/

namespace A307194.P17952381304510187147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275609 (2 * Nat.choose (2 * n) 2)

end

end A307194.P17952381304510187147

/-! ## A307194.P17424638137217960065

`A275609((2*n)²-2*n)`
-/

namespace A307194.P17424638137217960065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275609 ((2 * n) ^ 2 - 2 * n)

end

end A307194.P17424638137217960065

/-! ## A307194.P14697790004236702199

`dr(A275609(A002939(n)))`
-/

namespace A307194.P14697790004236702199
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A275609 (A002939 n).toNat)

end

end A307194.P14697790004236702199

/-! ## A307194.P7891094993097142873

`lcm(A062157(n), A275609(A002939(n)))`
-/

namespace A307194.P7891094993097142873
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A062157 n) (A275609 (A002939 n).toNat)

end

end A307194.P7891094993097142873

/-! ## A307194.P10480612150338519926

`abs(A057428(n)*A275609(A002939(n)))`
-/

namespace A307194.P10480612150338519926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A057428 n * A275609 (A002939 n).toNat|

end

end A307194.P10480612150338519926

/-! ## A307194.P17604530140826372896

`A020985(n)²*A275609(A002939(n))`
-/

namespace A307194.P17604530140826372896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * A275609 (A002939 n).toNat

end

end A307194.P17604530140826372896

/-! ## A307194.P17725689174213570213

`A033999(n)²*A275609(A002939(n))`
-/

namespace A307194.P17725689174213570213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A275609 (A002939 n).toNat

end

end A307194.P17725689174213570213

/-!
# A307195: Fill the plane with the square spiral with cells numbered as in A275609; sequence gives the cells along the North spoke starting at the origin.

The programs for A307195, there is no canonical definition to state claims against.
-/

/-! ## A307195.P7138820673271502277

`A275609((2*n)²-n)`
-/

namespace A307195.P7138820673271502277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275609 ((2 * n) ^ 2 - n)

end

end A307195.P7138820673271502277

/-! ## A307195.P16737908967693106668

`A275609(A033991(n))%5`
-/

namespace A307195.P16737908967693106668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A275609 (A033991 n).toNat) 5

end

end A307195.P16737908967693106668

/-! ## A307195.P15863863416441994245

`A054977(n)*A275609(A033991(n))`
-/

namespace A307195.P15863863416441994245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A275609 (A033991 n).toNat

end

end A307195.P15863863416441994245

/-! ## A307195.P14210551380764032639

`A057427(n)*A275609(A033991(n))`
-/

namespace A307195.P14210551380764032639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A275609 (A033991 n).toNat

end

end A307195.P14210551380764032639

/-! ## A307195.P4163540377016423552

`lcm(A033999(n), A275609(A033991(n)))`
-/

namespace A307195.P4163540377016423552
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A275609 (A033991 n).toNat)

end

end A307195.P4163540377016423552

/-! ## A307195.P14350791369150258549

`and(A004771(n), A275609(A033991(n)))`
-/

namespace A307195.P14350791369150258549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004771 n) (A275609 (A033991 n).toNat)

end

end A307195.P14350791369150258549

/-! ## A307195.P6652358918160249350

`and(A057428(n), A275609(A033991(n)))`
-/

namespace A307195.P6652358918160249350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A275609 (A033991 n).toNat)

end

end A307195.P6652358918160249350

/-! ## A307195.P3135289522383527742

`or(A063524(n), A275609(A033991(n)))`
-/

namespace A307195.P3135289522383527742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A063524 n) (A275609 (A033991 n).toNat)

end

end A307195.P3135289522383527742

/-! ## A307195.P2900299403848158279

`A057428(n+1)+A275609(A033991(n))+1`
-/

namespace A307195.P2900299403848158279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + (A275609 (A033991 n).toNat + 1)

end

end A307195.P2900299403848158279

/-! ## A307195.P13616890898812471384

`A275609(A033991(n))+A131186(lcm(3, n²))`
-/

namespace A307195.P13616890898812471384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275609 (A033991 n).toNat + A131186 (Nat.lcm 3 (n ^ 2))

end

end A307195.P13616890898812471384

/-!
# A307196: Fill the plane with the square spiral with cells numbered as in A275609; sequence gives the cells along the North-West spoke starting at the origin.

The programs for A307196, there is no canonical definition to state claims against.
-/

/-! ## A307196.P3804795371267715040

`A307198(lt[1, A307200(n)]+1)`
-/

namespace A307196.P3804795371267715040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307200 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307198 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A307196.P3804795371267715040

/-! ## A307196.P334312206115366076

`A307198(lt[A307194(n), A307200(n)])`
-/

namespace A307196.P334312206115366076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307194 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307200 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307198 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A307196.P334312206115366076

/-! ## A307196.P14435269008300836440

`A307198(lt[A307198(n+2), A307198(n)+1])`
-/

namespace A307196.P14435269008300836440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307198 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307198 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307198 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A307196.P14435269008300836440

/-! ## A307196.P9921434685143614131

`A275609((2*n)²)`
-/

namespace A307196.P9921434685143614131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275609 ((2 * n) ^ 2)

end

end A307196.P9921434685143614131

/-! ## A307196.P17224815914976830238

`A275609((n+n)²)%3`
-/

namespace A307196.P17224815914976830238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A275609 ((n + n) ^ 2)) 3

end

end A307196.P17224815914976830238

/-! ## A307196.P17669941210459282260

`and(3, A275609((n+n)^2))`
-/

namespace A307196.P17669941210459282260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A275609 ((n + n) ^ 2))

end

end A307196.P17669941210459282260

/-! ## A307196.P503275381301758049

`dr(A275609(A016742(n)))`
-/

namespace A307196.P503275381301758049
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A275609 (A016742 n).toNat)

end

end A307196.P503275381301758049

/-! ## A307196.P13536085447526797599

`dr(A275609(A005843(n)²))`
-/

namespace A307196.P13536085447526797599
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A275609 (A005843 n ^ 2).toNat)

end

end A307196.P13536085447526797599

/-! ## A307196.P7908273044081141156

`dr(A275609(A000290(2*n)))`
-/

namespace A307196.P7908273044081141156
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A275609 (A000290 (2 * n)).toNat)

end

end A307196.P7908273044081141156

/-! ## A307196.P5113342748820500290

`(A000038(n)+1)*A275609(A000290(2*n))`
-/

namespace A307196.P5113342748820500290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000038 n + 1) * A275609 (A000290 (2 * n)).toNat

end

end A307196.P5113342748820500290

/-! ## A307196.P15140938702243739961

`(1-A000007(n))*A275609(A000290(2*n))`
-/

namespace A307196.P15140938702243739961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A000007 n) * A275609 (A000290 (2 * n)).toNat

end

end A307196.P15140938702243739961

/-! ## A307196.P7029927797242733692

`A014963(10*(n+1))*A275609(A000290(2*n))`
-/

namespace A307196.P7029927797242733692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * (n + 1)) * A275609 (A000290 (2 * n)).toNat

end

end A307196.P7029927797242733692

/-! ## A307196.P7939003888978806199

`A275609(A000290(2*n))+A000010(n+1)%((-1)^n)`
-/

namespace A307196.P7939003888978806199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275609 (A000290 (2 * n)).toNat + Int.tmod (A000010 (n + 1)) ((-1) ^ n)

end

end A307196.P7939003888978806199

/-! ## A307196.P7925798276259826918

`A001222(A008578(n+1))*A275609(A000290(2*n))`
-/

namespace A307196.P7925798276259826918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008578 (n + 1)).toNat * A275609 (A000290 (2 * n)).toNat

end

end A307196.P7925798276259826918

/-!
# A307197: Fill the plane with the square spiral with cells numbered as in A275609; sequence gives the cells along the West spoke starting at the origin.

The programs for A307197, there is no canonical definition to state claims against.
-/

/-! ## A307197.P11511066107878022686

`A275609((2*n)²+n)`
-/

namespace A307197.P11511066107878022686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275609 ((2 * n) ^ 2 + n)

end

end A307197.P11511066107878022686

/-! ## A307197.P9619946607148016426

`A275609(A007742(n))%4`
-/

namespace A307197.P9619946607148016426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A275609 (A007742 n).toNat) 4

end

end A307197.P9619946607148016426

/-! ## A307197.P12462192600589205654

`A054977(n)*A275609(A007742(n))`
-/

namespace A307197.P12462192600589205654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A275609 (A007742 n).toNat

end

end A307197.P12462192600589205654

/-! ## A307197.P16129729132968741650

`A057427(n)*A275609(A007742(n))`
-/

namespace A307197.P16129729132968741650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A275609 (A007742 n).toNat

end

end A307197.P16129729132968741650

/-! ## A307197.P11195434161958936161

`A158388(n)*A275609(A007742(n))`
-/

namespace A307197.P11195434161958936161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n * A275609 (A007742 n).toNat

end

end A307197.P11195434161958936161

/-! ## A307197.P4483785159391430818

`lcm(A062157(n), A275609(A007742(n)))`
-/

namespace A307197.P4483785159391430818
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A062157 n) (A275609 (A007742 n).toNat)

end

end A307197.P4483785159391430818

/-! ## A307197.P13980544409101844208

`and(A106839(n), A275609(A007742(n)))`
-/

namespace A307197.P13980544409101844208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A106839 n) (A275609 (A007742 n).toNat)

end

end A307197.P13980544409101844208

/-! ## A307197.P6813886414701559148

`(A000038(n)+1)*A275609(A007742(n))`
-/

namespace A307197.P6813886414701559148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000038 n + 1) * A275609 (A007742 n).toNat

end

end A307197.P6813886414701559148

/-! ## A307197.P10218114731533570074

`and(A136017(n+1), A275609(A007742(n)))`
-/

namespace A307197.P10218114731533570074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A136017 (n + 1)) (A275609 (A007742 n).toNat)

end

end A307197.P10218114731533570074

/-! ## A307197.P9642392859388771370

`A007318(C(2, n))*A275609(A007742(n))`
-/

namespace A307197.P9642392859388771370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A275609 (A007742 n).toNat

end

end A307197.P9642392859388771370

/-! ## A307197.P1611262807750308980

`A000010(C(2, n)!)*A275609(A007742(n))`
-/

namespace A307197.P1611262807750308980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.factorial (Nat.choose 2 n)) * A275609 (A007742 n).toNat

end

end A307197.P1611262807750308980

/-! ## A307197.P13597170578878270262

`A275609(A007742(n))+A008683(4*(n+2))`
-/

namespace A307197.P13597170578878270262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275609 (A007742 n).toNat + A008683 (4 * (n + 2))

end

end A307197.P13597170578878270262

/-! ## A307197.P15912955337635496441

`A014963(4*n+2)*A275609(A007742(n))`
-/

namespace A307197.P15912955337635496441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 2) * A275609 (A007742 n).toNat

end

end A307197.P15912955337635496441

/-! ## A307197.P15531129939593566222

`A007318(a(n-1))*A275609(A007742(n))` with `a(0)=0, a(1)=2`
-/

namespace A307197.P15531129939593566222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  A007318 (a (n - 1)).toNat * A275609 (A007742 n).toNat

end

end A307197.P15531129939593566222

/-! ## A307197.P14628248696740172463

`1-(A000010(C(n, n+1)!)-A275609(A007742(n)))`
-/

namespace A307197.P14628248696740172463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A000010 (Nat.factorial (Nat.choose n (n + 1))) - A275609 (A007742 n).toNat)

end

end A307197.P14628248696740172463

/-! ## A307197.P4366235137397444899

`A000010(2*n-n+1-n)*A275609(A007742(n))`
-/

namespace A307197.P4366235137397444899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((2 * n : ℤ) - (n : ℤ) + 1 - (n : ℤ)).toNat * A275609 (A007742 n).toNat

end

end A307197.P4366235137397444899

/-!
# A307198: Fill the plane with the square spiral with cells numbered as in A275609; sequence gives the cells along the South-West spoke starting at the origin.

The programs for A307198, there is no canonical definition to state claims against.
-/

/-! ## A307198.P17640965358947305476

`A307194(lt[1, A053186(n)])`
-/

namespace A307198.P17640965358947305476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307194 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A307198.P17640965358947305476

/-! ## A307198.P7708755339952617643

`A275609(n*(4*n+2))`
-/

namespace A307198.P7708755339952617643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275609 (n * (4 * n + 2))

end

end A307198.P7708755339952617643

/-! ## A307198.P18006873597245779927

`A275609(2*n*Δ[n²])%4`
-/

namespace A307198.P18006873597245779927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A275609 ((2 * n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat) 4

end

end A307198.P18006873597245779927

/-! ## A307198.P12087289369547109503

`dr(A275609(A002943(n)))`
-/

namespace A307198.P12087289369547109503
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A275609 (A002943 n).toNat)

end

end A307198.P12087289369547109503

/-! ## A307198.P5731394254303173388

`A158388(n)*A275609(A002943(n))`
-/

namespace A307198.P5731394254303173388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n * A275609 (A002943 n).toNat

end

end A307198.P5731394254303173388

/-! ## A307198.P9423564528011061515

`and(A002148(n), A275609(A002943(n)))`
-/

namespace A307198.P9423564528011061515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002148 n) (A275609 (A002943 n).toNat)

end

end A307198.P9423564528011061515

/-! ## A307198.P17371920738063226748

`abs(A062157(n)*A275609(A002943(n)))`
-/

namespace A307198.P17371920738063226748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A062157 n * A275609 (A002943 n).toNat|

end

end A307198.P17371920738063226748

/-! ## A307198.P4984415788401691570

`A057428(n)²*A275609(A002943(n))`
-/

namespace A307198.P4984415788401691570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n ^ 2 * A275609 (A002943 n).toNat

end

end A307198.P4984415788401691570

/-! ## A307198.P13463061233137040578

`A275609(A002943(n))+A000007(n+1)`
-/

namespace A307198.P13463061233137040578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275609 (A002943 n).toNat + A000007 (n + 1)

end

end A307198.P13463061233137040578

/-! ## A307198.P4834427862943022641

`A275609(A002943(n))^A014963(n+1)`
-/

namespace A307198.P4834427862943022641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275609 (A002943 n).toNat : ℚ) ^ (A014963 (n + 1) : ℤ)

end

end A307198.P4834427862943022641

/-! ## A307198.P11769909501004716791

`and(A065017(n+1), A275609(A002943(n)))`
-/

namespace A307198.P11769909501004716791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A065017 (n + 1)) (A275609 (A002943 n).toNat)

end

end A307198.P11769909501004716791

/-! ## A307198.P7884427204829569150

`and(A069759(n+1), A275609(A002943(n)))`
-/

namespace A307198.P7884427204829569150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A069759 (n + 1)) (A275609 (A002943 n).toNat)

end

end A307198.P7884427204829569150

/-! ## A307198.P12047266117004552321

`and(A069756(n+2), A275609(A002943(n)))`
-/

namespace A307198.P12047266117004552321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A069756 (n + 2)) (A275609 (A002943 n).toNat)

end

end A307198.P12047266117004552321

/-! ## A307198.P9243146949983475354

`A007318(C(2, n))*A275609(A002943(n))`
-/

namespace A307198.P9243146949983475354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A275609 (A002943 n).toNat

end

end A307198.P9243146949983475354

/-! ## A307198.P10845699366342050531

`A275609(A002943(n))^A000108(C(2, n))`
-/

namespace A307198.P10845699366342050531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275609 (A002943 n).toNat : ℚ) ^ (A000108 (Nat.choose 2 n) : ℤ)

end

end A307198.P10845699366342050531

/-! ## A307198.P12354768103002171883

`A275609(A002943(n))/A007318(C(2, n+1))`
-/

namespace A307198.P12354768103002171883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275609 (A002943 n).toNat : ℚ) / (A007318 (Nat.choose 2 (n + 1)) : ℚ)

end

end A307198.P12354768103002171883

/-! ## A307198.P9980867762568455535

`A275609(A002943(n))/A000045(gcd(n, n+1))`
-/

namespace A307198.P9980867762568455535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275609 (A002943 n).toNat : ℚ) / (A000045 (Nat.gcd n (n + 1)) : ℚ)

end

end A307198.P9980867762568455535

/-! ## A307198.P4539433572298371581

`A275609(A002943(n))/A007318(ceil(2/(n+1)))`
-/

namespace A307198.P4539433572298371581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275609 (A002943 n).toNat : ℚ) / (A007318 ⌈2 / (n + 1 : ℚ)⌉.toNat : ℚ)

end

end A307198.P4539433572298371581

/-! ## A307198.P10240748507274589289

`A275609(A002943(n))/A000010(2-C(2, n+2))`
-/

namespace A307198.P10240748507274589289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275609 (A002943 n).toNat : ℚ) / (A000010 (2 - Nat.choose 2 (n + 2)) : ℚ)

end

end A307198.P10240748507274589289

/-! ## A307198.P16469076018772241528

`A275609(A002943(n))^A007318(A020639(n+1))`
-/

namespace A307198.P16469076018772241528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275609 (A002943 n).toNat : ℚ) ^ (A007318 (A020639 (n + 1)).toNat : ℤ)

end

end A307198.P16469076018772241528

/-!
# A307199: Fill the plane with the square spiral with cells numbered as in A275609; sequence gives the cells along the South spoke starting at the origin.

The programs for A307199, there is no canonical definition to state claims against.
-/

/-! ## A307199.P13843004197432951802

`A275609(∑[8*n]-n)`
-/

namespace A307199.P13843004197432951802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275609 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A307199.P13843004197432951802

/-! ## A307199.P15347177173382636017

`A275609(A033954(n))%5`
-/

namespace A307199.P15347177173382636017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A275609 (A033954 n).toNat) 5

end

end A307199.P15347177173382636017

/-! ## A307199.P16972036006821860728

`A057427(n)*A275609(A033954(n))`
-/

namespace A307199.P16972036006821860728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A275609 (A033954 n).toNat

end

end A307199.P16972036006821860728

/-! ## A307199.P16343398595733614372

`A275609(A156859(2*n))%A010711(n)`
-/

namespace A307199.P16343398595733614372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A275609 (A156859 (2 * n)).toNat) (A010711 n)

end

end A307199.P16343398595733614372

/-! ## A307199.P4216233693644187385

`A275609(A033954(n))+A011765(2*n+1)`
-/

namespace A307199.P4216233693644187385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275609 (A033954 n).toNat + A011765 (2 * n + 1)

end

end A307199.P4216233693644187385

/-! ## A307199.P16299238042608367301

`A027642(2*n+1)*A275609(A033954(n))`
-/

namespace A307199.P16299238042608367301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (2 * n + 1) * A275609 (A033954 n).toNat

end

end A307199.P16299238042608367301

/-! ## A307199.P9483703817558252068

`A265575(2*(n+2))*A275609(A033954(n))`
-/

namespace A307199.P9483703817558252068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265575 (2 * (n + 2)) * A275609 (A033954 n).toNat

end

end A307199.P9483703817558252068

/-! ## A307199.P11205526905164322158

`A094603(2*n+5)*A275609(A033954(n))`
-/

namespace A307199.P11205526905164322158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094603 (2 * n + 5) * A275609 (A033954 n).toNat

end

end A307199.P11205526905164322158

