import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
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
import Seq.B008.C001
import Seq.B009.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A268700: Total number of sequences with p_j copies of j and longest increasing subsequence of length k summed over all partitions [p_1, p_2, ..., p_k] of n into distinct parts.

The programs for A268700, there is no canonical definition to state claims against.
-/

/-! ## A268700.P18133429184652480895

`or(A000065(n), A320439(A000142(n)))`
-/

namespace A268700.P18133429184652480895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000065 n) (A320439 (A000142 n).toNat)

end

end A268700.P18133429184652480895

/-! ## A268700.P3739201326884053455

`A175515(or(A262735(n), A285339(n)))`
-/

namespace A268700.P3739201326884053455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175515 (Int.lor (A262735 n) (A285339 n)).toNat

end

end A268700.P3739201326884053455

/-! ## A268700.P1135269653120919943

`A003987(A125630(n+1)%(A005651(n)+1)+1)`
-/

namespace A268700.P1135269653120919943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 (Int.tmod (A125630 (n + 1)) (A005651 n + 1) + 1).toNat

end

end A268700.P1135269653120919943

/-!
# A268701: Total number of sequences with c_j copies of j and longest increasing subsequence of length k summed over all compositions [c_1, c_2, ..., c_k] of n into distinct parts.

The programs for A268701, there is no canonical definition to state claims against.
-/

/-! ## A268701.P16463575044027067658

`A095231(A003422(n)+4)`
-/

namespace A268701.P16463575044027067658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095231 (A003422 n + 4).toNat

end

end A268701.P16463575044027067658

/-! ## A268701.P8010242776998365567

`A191356(A322836(n)+A007661(n))`
-/

namespace A268701.P8010242776998365567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191356 (A322836 n + A007661 n).toNat

end

end A268701.P8010242776998365567

/-! ## A268701.P14955337505107729990

`A331804(A149477(n)+A149473(n))`
-/

namespace A268701.P14955337505107729990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331804 (A149477 n + A149473 n).toNat

end

end A268701.P14955337505107729990

/-!
# A268702: Largest n digit prime having at least n-1 digits equal to 1.

The programs for A268702, there is no canonical definition to state claims against.
-/

/-! ## A268702.P8586557788535115200

`A389720(A002275(n))`
-/

namespace A268702.P8586557788535115200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389720 (A002275 n).toNat

end

end A268702.P8586557788535115200

/-!
# A268703: Smallest n-digit prime having at least n-1 digits equal to 3.

The programs for A268703, there is no canonical definition to state claims against.
-/

/-! ## A268703.P3891413027927398941

`A037059(n)+10*char[1]`
-/

namespace A268703.P3891413027927398941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037059 n + ((10 * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ)

end

end A268703.P3891413027927398941

/-! ## A268703.P17826524778267191047

`A268705(n+1)+A037059(n)-A037067(n)`
-/

namespace A268703.P17826524778267191047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268705 (n + 1) + (A037059 n - A037067 n)

end

end A268703.P17826524778267191047

/-! ## A268703.P4505776666597014654

`A268705(n+1)+A037059(n)-A268705(n+1)%(5*A037057(n))`
-/

namespace A268703.P4505776666597014654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268705 (n + 1) + (A037059 n - Int.tmod (A268705 (n + 1)) (5 * A037057 n))

end

end A268703.P4505776666597014654

/-! ## A268703.P1880836384291384216

`A286236(A023271(n+1))+A037059(n)`
-/

namespace A268703.P1880836384291384216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286236 (A023271 (n + 1)).toNat + A037059 n

end

end A268703.P1880836384291384216

/-!
# A268704: Greatest n-digit prime having at least n-1 digits equal to 3.

The programs for A268704, there is no canonical definition to state claims against.
-/

/-! ## A268704.P1723286414777695572

`A178001(n+1)+A000038(n)²`
-/

namespace A268704.P1723286414777695572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178001 (n + 1) + A000038 n ^ 2

end

end A268704.P1723286414777695572

/-! ## A268704.P13803154279787289124

`A178001(n+1)+4*A000007(n)`
-/

namespace A268704.P13803154279787289124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178001 (n + 1) + 4 * A000007 n

end

end A268704.P13803154279787289124

/-! ## A268704.P3571440412642598638

`A178001(n+1)+A000038(n)*A240808(n)`
-/

namespace A268704.P3571440412642598638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178001 (n + 1) + A000038 n * A240808 n

end

end A268704.P3571440412642598638

/-! ## A268704.P1846574321950209980

`A178001(n+1)+A000038(n)*A000122(3*n+1)`
-/

namespace A268704.P1846574321950209980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178001 (n + 1) + A000038 n * A000122 (3 * n + 1)

end

end A268704.P1846574321950209980

/-! ## A268704.P9732040471692339730

`A178001(n+1)+A000038(n)*A147822(3*n+4)`
-/

namespace A268704.P9732040471692339730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178001 (n + 1) + A000038 n * A147822 (3 * n + 4)

end

end A268704.P9732040471692339730

/-!
# A268705: Smallest n-digit prime having at least n-1 digits equal to 7.

The programs for A268705, there is no canonical definition to state claims against.
-/

/-! ## A268705.P3551881902285177408

`A037067(n)+10*char[1]`
-/

namespace A268705.P3551881902285177408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037067 n + ((10 * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ)

end

end A268705.P3551881902285177408

/-! ## A268705.P11880802328429705400

`A268703(n+1)+A037067(n)-A037059(n)`
-/

namespace A268705.P11880802328429705400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268703 (n + 1) + (A037067 n - A037059 n)

end

end A268705.P11880802328429705400

/-! ## A268705.P426669861651811887

`A285478(A008578(n+1))+A037067(n)`
-/

namespace A268705.P426669861651811887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285478 (A008578 (n + 1)).toNat + A037067 n

end

end A268705.P426669861651811887

/-! ## A268705.P4079403506305896810

`A286236(A023271(n+1))+A037067(n)`
-/

namespace A268705.P4079403506305896810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286236 (A023271 (n + 1)).toNat + A037067 n

end

end A268705.P4079403506305896810

/-!
# A268706: Largest n-digit prime having at least n-1 digits equal to 7.

The programs for A268706, there is no canonical definition to state claims against.
-/

/-! ## A268706.P12762419120772820277

`A178005(A308070(n+1)+1)`
-/

namespace A268706.P12762419120772820277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178005 (A308070 (n + 1) + 1).toNat

end

end A268706.P12762419120772820277

/-! ## A268706.P11751875170895799005

`A178005(n+1)%A178017(n+3)`
-/

namespace A268706.P11751875170895799005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178005 (n + 1)) (A178017 (n + 3))

end

end A268706.P11751875170895799005

/-! ## A268706.P13336710575861051913

`A178005(n+1)+A000122(A052539(n))`
-/

namespace A268706.P13336710575861051913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178005 (n + 1) + A000122 (A052539 n).toNat

end

end A268706.P13336710575861051913

/-!
# A268708: Number of iterations of A268395 needed to reach zero: a(0) = 0, for n >= 1, a(n) = 1 + a(A268395(n)).

The programs for A268708, there is no canonical definition to state claims against.
-/

/-! ## A268708.P5490603159504517436

`1+a(A268395(n))` with `a(0)=0, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A268708.P5490603159504517436
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 + a (A268395 n).toNat

end

end A268708.P5490603159504517436

/-! ## A268708.P17239759766174772499

`a(A268395(n))+1` with `a(0)=0`
-/

namespace A268708.P17239759766174772499
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A268395 n).toNat + 1

end

end A268708.P17239759766174772499

/-! ## A268708.P14592544656563999132

`a(n-A268672(n))+1` with `a(0)=0`
-/

namespace A268708.P14592544656563999132
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A268672 n).toNat + 1

end

end A268708.P14592544656563999132

/-! ## A268708.P13166022693111507462

`ceil(a(A268395(n))-A057428(n))` with `a(0)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A268708.P13166022693111507462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (A268395 n).toNat - A057428 n

end

end A268708.P13166022693111507462

/-! ## A268708.P15564375936484707962

`a(A268395(n))-A057428(n)-A000038(n)` with `a(0)=0`
-/

namespace A268708.P15564375936484707962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (A268395 n).toNat - A057428 n - A000038 n

end

end A268708.P15564375936484707962

/-!
# A268709: Number of iterations of A268395 needed to reach zero from 2^n: a(n) = A268708(2^n).

The programs for A268709, there is no canonical definition to state claims against.
-/

/-! ## A268709.P2241323487455827328

`A268708(2^n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A268709.P2241323487455827328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268708 (2 ^ n)

end

end A268709.P2241323487455827328

/-! ## A268709.P16723032747369016141

`A268708(A000295(n))+1`
-/

namespace A268709.P16723032747369016141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268708 (A000295 n).toNat + 1

end

end A268709.P16723032747369016141

/-! ## A268709.P7240887843049556559

`and(-1, A268708(A000079(n)))`
-/

namespace A268709.P7240887843049556559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A268708 (A000079 n).toNat)

end

end A268709.P7240887843049556559

/-! ## A268709.P2553646628925107113

`A268708(A000225(n)-n)+1`
-/

namespace A268709.P2553646628925107113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268708 (A000225 n - (n : ℤ)).toNat + 1

end

end A268709.P2553646628925107113

/-! ## A268709.P14703078426839828716

`A268708(A000079(n)-(n+1))+1`
-/

namespace A268709.P14703078426839828716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268708 (A000079 n - (n + 1 : ℤ)).toNat + 1

end

end A268709.P14703078426839828716

/-!
# A268710: Number of iterations of A268395 needed to reach zero from 2^n + 1: a(n) = A268708(2^n + 1).

The programs for A268710, there is no canonical definition to state claims against.
-/

/-! ## A268710.P11634435496315832098

`A268708(2^n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A268710.P11634435496315832098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268708 (2 ^ n + 1)

end

end A268710.P11634435496315832098

/-! ## A268710.P11915481469715827795

`record[A268708(A052552(n))]`
-/

namespace A268710.P11915481469715827795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268708 (A052552 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268710.P11915481469715827795

/-! ## A268710.P18392791878983087877

`record[A268708(A055248(n)+1)]`
-/

namespace A268710.P18392791878983087877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268708 (A055248 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268710.P18392791878983087877

/-! ## A268710.P10518377286194147730

`A268708(A000051(n))+char[17]`
-/

namespace A268710.P10518377286194147730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268708 (A000051 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A268710.P10518377286194147730

/-! ## A268710.P13276292954966023487

`A326541(n)+A268708(A000051(n))`
-/

namespace A268710.P13276292954966023487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326541 n + A268708 (A000051 n).toNat

end

end A268710.P13276292954966023487

/-!
# A268714: Square array A(i,j) = A006068(i) + A006068(j), read by antidiagonals.

The programs for A268714, the canonical program `A268714.P4144777170643476713` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268714 has offset 0).

The definition of A268714 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268714.P1632622892801331299

`A006068(A268715(n))`
-/

namespace A268714.P1632622892801331299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A268715 n).toNat

end

end A268714.P1632622892801331299

namespace A268714

/-- `A006068(A268715(n))` -/
def P1632622892801331299.Spec : Prop :=
  ∀ n, P1632622892801331299.a n = A268714 n

end A268714

/-! ## A268714.P9750657596716852095

`A292600(2*A268715(n))`
-/

namespace A268714.P9750657596716852095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292600 (2 * A268715 n).toNat

end

end A268714.P9750657596716852095

namespace A268714

/-- `A292600(2*A268715(n))` -/
def P9750657596716852095.Spec : Prop :=
  ∀ n, P9750657596716852095.a n = A268714 n

end A268714

/-! ## A268714.P13432129937301454795

`A292600(A268715(n)+A268715(n))`
-/

namespace A268714.P13432129937301454795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292600 (A268715 n + A268715 n).toNat

end

end A268714.P13432129937301454795

namespace A268714

/-- `A292600(A268715(n)+A268715(n))` -/
def P13432129937301454795.Spec : Prop :=
  ∀ n, P13432129937301454795.a n = A268714 n

end A268714

/-! ## A268714.P4144777170643476713

`A006068(A002262(n))+A006068(A025581(n))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A268714

/-- `A006068(A002262(n))+A006068(A025581(n))` -/
def P4144777170643476713.Spec : Prop :=
  ∀ n, P4144777170643476713.a n = A268714 n

theorem P4144777170643476713.correct : P4144777170643476713.Spec := by
  intro n
  simp only [A268714]

end A268714

/-! ## A268714.P5258842395821030633

`A292600(A268715(n)-A001489(A268715(n)))`
-/

namespace A268714.P5258842395821030633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292600 (A268715 n - A001489 (A268715 n).toNat).toNat

end

end A268714.P5258842395821030633

namespace A268714

/-- `A292600(A268715(n)-A001489(A268715(n)))` -/
def P5258842395821030633.Spec : Prop :=
  ∀ n, P5258842395821030633.a n = A268714 n

end A268714

/-! ## A268714.P18071245421653270229

`A292600(A016777(A268715(n))-A268715(n))`
-/

namespace A268714.P18071245421653270229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292600 (A016777 (A268715 n).toNat - A268715 n).toNat

end

end A268714.P18071245421653270229

namespace A268714

/-- `A292600(A016777(A268715(n))-A268715(n))` -/
def P18071245421653270229.Spec : Prop :=
  ∀ n, P18071245421653270229.a n = A268714 n

end A268714

/-! ## A268714.P17763741866097607728

`∑{e}[A036561(n), A006068(#)]`
-/

namespace A268714.P17763741866097607728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A006068 (Nat.factorization (f1 n).natAbs p)

end

end A268714.P17763741866097607728

namespace A268714

/-- `∑{e}[A036561(n), A006068(#)]` -/
def P17763741866097607728.Spec : Prop :=
  ∀ n, P17763741866097607728.a n = A268714 n

end A268714

/-! ## A268714.P17920704728151911849

`∑{e}[A175840(n), A006068(#)]`
-/

namespace A268714.P17920704728151911849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A006068 (Nat.factorization (f1 n).natAbs p)

end

end A268714.P17920704728151911849

namespace A268714

/-- `∑{e}[A175840(n), A006068(#)]` -/
def P17920704728151911849.Spec : Prop :=
  ∀ n, P17920704728151911849.a n = A268714 n

end A268714

/-!
# A268715: Square array A(i,j) = A003188(A006068(i) + A006068(j)), read by antidiagonals as A(0,0), A(0,1), A(1,0), A(0,2), A(1,1), A(2,0), ...

The programs for A268715, the canonical program `A268715.P16379897427228210898` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268715 has offset 0).

The definition of A268715 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268715.P16379897427228210898

`A003188(A268714(n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A268715

/-- `A003188(A268714(n))` -/
def P16379897427228210898.Spec : Prop :=
  ∀ n, P16379897427228210898.a n = A268715 n

theorem P16379897427228210898.correct : P16379897427228210898.Spec := by
  intro n
  simp only [A268715]

end A268715

/-! ## A268715.P2447158677348204659

`A268820(A000096(n+8)-A268714(n))`
-/

namespace A268715.P2447158677348204659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268820 (A000096 (n + 8) - A268714 n).toNat

end

end A268715.P2447158677348204659

namespace A268715

/-- `A268820(A000096(n+8)-A268714(n))` -/
def P2447158677348204659.Spec : Prop :=
  ∀ n, P2447158677348204659.a n = A268715 n

end A268715

/-! ## A268715.P18233021952548452941

`A003188(∑{e}[A036561(n), A006068(#)])`
-/

namespace A268715.P18233021952548452941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A006068 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A268715.P18233021952548452941

namespace A268715

/-- `A003188(∑{e}[A036561(n), A006068(#)])` -/
def P18233021952548452941.Spec : Prop :=
  ∀ n, P18233021952548452941.a n = A268715 n

end A268715

/-! ## A268715.P2728912234814772889

`A003188(∑{e}[A175840(n), A006068(#)])`
-/

namespace A268715.P2728912234814772889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A006068 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A268715.P2728912234814772889

namespace A268715

/-- `A003188(∑{e}[A175840(n), A006068(#)])` -/
def P2728912234814772889.Spec : Prop :=
  ∀ n, P2728912234814772889.a n = A268715 n

end A268715

/-! ## A268715.P10767822016670773155

`A233275(A268714(n)%A333221(3*n+4))`
-/

namespace A268715.P10767822016670773155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233275 (Int.tmod (A268714 n) (A333221 (3 * n + 4))).toNat

end

end A268715.P10767822016670773155

namespace A268715

/-- `A233275(A268714(n)%A333221(3*n+4))` -/
def P10767822016670773155.Spec : Prop :=
  ∀ n, P10767822016670773155.a n = A268715 n

end A268715

/-!
# A268716: a(n) = 2*A006068(n); main diagonal of A268714.

The programs for A268716, the canonical program `A268716.P9381113325776133009` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268716 has offset 0).

The definition of A268716 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006068, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A268716.P9381113325776133009

`2*A006068(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A268716

/-- `2*A006068(n)` -/
def P9381113325776133009.Spec : Prop :=
  ∀ n, P9381113325776133009.a n = A268716 n

theorem P9381113325776133009.correct : P9381113325776133009.Spec := by
  intro n
  simp only [A268716]

end A268716

/-! ## A268716.P15858188197362481791

`A006068(A001969(n+1))`
-/

namespace A268716.P15858188197362481791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A001969 (n + 1)).toNat

end

end A268716.P15858188197362481791

namespace A268716

/-- `A006068(A001969(n+1))` -/
def P15858188197362481791.Spec : Prop :=
  ∀ n, P15858188197362481791.a n = A268716 n

end A268716

/-! ## A268716.P11511033287709936687

`xor(a(floor(n/4))+n%2, xor(n, 2*n))` with `a(0)=0`
-/

namespace A268716.P11511033287709936687
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor (a ⌊(n : ℚ) / 4⌋.toNat + n % 2) (Nat.xor n (2 * n))

end

end A268716.P11511033287709936687

namespace A268716

/-- `xor(a(floor(n/4))+n%2, xor(n, 2*n))` -/
def P11511033287709936687.Spec : Prop :=
  ∀ n, (P11511033287709936687.a n : ℤ) = A268716 n

end A268716

/-! ## A268716.P11874724898993470238

`2*(a(floor(n/2))+1-char[xor(n, 2*n)])` with `a(0)=0`
-/

namespace A268716.P11874724898993470238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * (a ⌊(n : ℚ) / 2⌋.toNat + (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)))

end

end A268716.P11874724898993470238

namespace A268716

/-- `2*(a(floor(n/2))+1-char[xor(n, 2*n)])` -/
def P11874724898993470238.Spec : Prop :=
  ∀ n, P11874724898993470238.a n = A268716 n

end A268716

/-! ## A268716.P2184466210754047330

`2*(A286546(n)+n)`
-/

namespace A268716.P2184466210754047330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A286546 n + (n : ℤ))

end

end A268716.P2184466210754047330

namespace A268716

/-- `2*(A286546(n)+n)` -/
def P2184466210754047330.Spec : Prop :=
  ∀ n, P2184466210754047330.a n = A268716 n

theorem P2184466210754047330.correct : P2184466210754047330.Spec := by
  intro n
  simp only [A268716, Nat.add_sub_cancel, A268716.P2184466210754047330.a, A268716.P9381113325776133009.a, A006068, A006068.P16534033749009019403.a, A286546, A286546.P17363262112593177841.a, A010060, A010060.P3080921269106500717.a, A265263, A265263.P13560857298709796040.a, A377404, A377404.P15784403255783113757.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A066194, A066194.P17197319264784136366.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A268716

/-! ## A268716.P12267085447312058995

`2*xor(n, A292600(n))`
-/

namespace A268716.P12267085447312058995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.xor (n : ℤ) (A292600 n)

end

end A268716.P12267085447312058995

namespace A268716

/-- `2*xor(n, A292600(n))` -/
def P12267085447312058995.Spec : Prop :=
  ∀ n, P12267085447312058995.a n = A268716 n

end A268716

/-! ## A268716.P15645581057153923199

`2*(A066194(n+1)-1)`
-/

namespace A268716.P15645581057153923199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A066194 (n + 1) - 1)

end

end A268716.P15645581057153923199

namespace A268716

/-- `2*(A066194(n+1)-1)` -/
def P15645581057153923199.Spec : Prop :=
  ∀ n, P15645581057153923199.a n = A268716 n

end A268716

/-! ## A268716.P461432632933105503

`2*A003188(A064707(n))`
-/

namespace A268716.P461432632933105503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003188 (A064707 n).toNat

end

end A268716.P461432632933105503

namespace A268716

/-- `2*A003188(A064707(n))` -/
def P461432632933105503.Spec : Prop :=
  ∀ n, P461432632933105503.a n = A268716 n

end A268716

/-! ## A268716.P8362423875382006917

`2*A300839(A057300(n))`
-/

namespace A268716.P8362423875382006917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A300839 (A057300 n).toNat

end

end A268716.P8362423875382006917

namespace A268716

/-- `2*A300839(A057300(n))` -/
def P8362423875382006917.Spec : Prop :=
  ∀ n, P8362423875382006917.a n = A268716 n

end A268716

/-! ## A268716.P1944993853940620530

`2*A163356(A302843(n))`
-/

namespace A268716.P1944993853940620530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A163356 (A302843 n).toNat

end

end A268716.P1944993853940620530

namespace A268716

/-- `2*A163356(A302843(n))` -/
def P1944993853940620530.Spec : Prop :=
  ∀ n, P1944993853940620530.a n = A268716 n

end A268716

/-! ## A268716.P2598809992620079784

`2*A302844(A302845(n))`
-/

namespace A268716.P2598809992620079784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A302844 (A302845 n).toNat

end

end A268716.P2598809992620079784

namespace A268716

/-- `2*A302844(A302845(n))` -/
def P2598809992620079784.Spec : Prop :=
  ∀ n, P2598809992620079784.a n = A268716 n

end A268716

/-! ## A268716.P17325417899797615806

`A268670(A000069(n+1))-1`
-/

namespace A268716.P17325417899797615806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268670 (A000069 (n + 1)).toNat - 1

end

end A268716.P17325417899797615806

namespace A268716

/-- `A268670(A000069(n+1))-1` -/
def P17325417899797615806.Spec : Prop :=
  ∀ n, P17325417899797615806.a n = A268716 n

end A268716

/-! ## A268716.P7730669160836012726

`xor(comp[A000069(n+1)], A006068(n))`
-/

namespace A268716.P7730669160836012726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A006068 n)

end

end A268716.P7730669160836012726

namespace A268716

/-- `xor(comp[A000069(n+1)], A006068(n))` -/
def P7730669160836012726.Spec : Prop :=
  ∀ n, P7730669160836012726.a n = A268716 n

end A268716

/-! ## A268716.P5674980827543320012

`A006068(n)+A003188(A064707(n))`
-/

namespace A268716.P5674980827543320012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 n + A003188 (A064707 n).toNat

end

end A268716.P5674980827543320012

namespace A268716

/-- `A006068(n)+A003188(A064707(n))` -/
def P5674980827543320012.Spec : Prop :=
  ∀ n, P5674980827543320012.a n = A268716 n

end A268716

/-! ## A268716.P10252209751449061999

`A006068(n)+A000027(A006068(n)+1)-1`
-/

namespace A268716.P10252209751449061999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 n + (A000027 (A006068 n + 1).toNat - 1)

end

end A268716.P10252209751449061999

namespace A268716

/-- `A006068(n)+A000027(A006068(n)+1)-1` -/
def P10252209751449061999.Spec : Prop :=
  ∀ n, P10252209751449061999.a n = A268716 n

end A268716

/-! ## A268716.P17384513470778692361

`2*A292600(2*n)`
-/

namespace A268716.P17384513470778692361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A292600 (2 * n)

end

end A268716.P17384513470778692361

namespace A268716

/-- `2*A292600(2*n)` -/
def P17384513470778692361.Spec : Prop :=
  ∀ n, P17384513470778692361.a n = A268716 n

end A268716

/-! ## A268716.P14465074432406793373

`A005843(A006068(n))`
-/

namespace A268716.P14465074432406793373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A006068 n).toNat

end

end A268716.P14465074432406793373

namespace A268716

/-- `A005843(A006068(n))` -/
def P14465074432406793373.Spec : Prop :=
  ∀ n, P14465074432406793373.a n = A268716 n

end A268716

/-! ## A268716.P9300736894155541653

`2*A233279(A063946(n))`
-/

namespace A268716.P9300736894155541653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A233279 (A063946 n).toNat

end

end A268716.P9300736894155541653

namespace A268716

/-- `2*A233279(A063946(n))` -/
def P9300736894155541653.Spec : Prop :=
  ∀ n, P9300736894155541653.a n = A268716 n

end A268716

/-! ## A268716.P2992269264422467945

`A005843(A292600(2*n))`
-/

namespace A268716.P2992269264422467945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A292600 (2 * n)).toNat

end

end A268716.P2992269264422467945

namespace A268716

/-- `A005843(A292600(2*n))` -/
def P2992269264422467945.Spec : Prop :=
  ∀ n, P2992269264422467945.a n = A268716 n

end A268716

/-! ## A268716.P13810497511231094768

`2*A056539(A341916(n))`
-/

namespace A268716.P13810497511231094768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056539 (A341916 n).toNat

end

end A268716.P13810497511231094768

namespace A268716

/-- `2*A056539(A341916(n))` -/
def P13810497511231094768.Spec : Prop :=
  ∀ n, P13810497511231094768.a n = A268716 n

end A268716

/-!
# A268717: Permutation of natural numbers: a(0) = 0, a(n) = A003188(1+A006068(n-1)), where A003188 is binary Gray code and A006068 is its inverse.

The programs for A268717, there is no canonical definition to state claims against.
-/

/-! ## A268717.P5683806599825996781

`A268817(A268718(n))`
-/

namespace A268717.P5683806599825996781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268817 (A268718 n).toNat

end

end A268717.P5683806599825996781

/-! ## A268717.P14512722796965380282

`A268718(A268821(n+1))-1`
-/

namespace A268717.P14512722796965380282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268718 (A268821 (n + 1)).toNat - 1

end

end A268717.P14512722796965380282

/-! ## A268717.P12473736455479827408

`A268822(A268823(n+2))-2`
-/

namespace A268717.P12473736455479827408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268822 (A268823 (n + 2)).toNat - 2

end

end A268717.P12473736455479827408

/-! ## A268717.P3019006979411258496

`floor(A268821(2*n)/2)`
-/

namespace A268717.P3019006979411258496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A268821 (2 * n) : ℚ) / 2⌋

end

end A268717.P3019006979411258496

/-! ## A268717.P5124135234788794761

`A000217(A268821(2*n+1))%A268821(2*n+1)`
-/

namespace A268717.P5124135234788794761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A268821 (2 * n + 1)).toNat) (A268821 (2 * n + 1))

end

end A268717.P5124135234788794761

/-! ## A268717.P6696228235326732859

`A268821(2*n+1)-A028242(A268821(2*n))`
-/

namespace A268717.P6696228235326732859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268821 (2 * n + 1) - A028242 (A268821 (2 * n)).toNat

end

end A268717.P6696228235326732859

/-! ## A268717.P15443817189386623181

`A268820(∑[n+1]+1)`
-/

namespace A268717.P15443817189386623181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268820 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A268717.P15443817189386623181

/-! ## A268717.P13669749325889232640

`A268715(A000217(n)+A004273(n)-n)`
-/

namespace A268717.P13669749325889232640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268715 (A000217 n + (A004273 n - (n : ℤ))).toNat

end

end A268717.P13669749325889232640

/-! ## A268717.P11464310668426900879

`A268715(A000217(n)-(n-A004273(n)))`
-/

namespace A268717.P11464310668426900879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268715 (A000217 n - ((n : ℤ) - A004273 n)).toNat

end

end A268717.P11464310668426900879

/-!
# A268718: Permutation of natural numbers: a(0) = 0, a(n) = 1 + A003188(A006068(n)-1), where A003188 is binary Gray code and A006068 is its inverse.

The programs for A268718, there is no canonical definition to state claims against.
-/

/-! ## A268718.P10859850278618205286

`A268717(A268818(n))`
-/

namespace A268718.P10859850278618205286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268717 (A268818 n).toNat

end

end A268718.P10859850278618205286

/-! ## A268718.P13922737149977587794

`floor(A268822(2*n)/2)`
-/

namespace A268718.P13922737149977587794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A268822 (2 * n) : ℚ) / 2⌋

end

end A268718.P13922737149977587794

/-! ## A268718.P12764864507029165813

`A004526(A268822(2*n))`
-/

namespace A268718.P12764864507029165813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A268822 (2 * n)).toNat

end

end A268718.P12764864507029165813

/-! ## A268718.P12396876721237293358

`A268822(A268717(n+1))-1`
-/

namespace A268718.P12396876721237293358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268822 (A268717 (n + 1)).toNat - 1

end

end A268718.P12396876721237293358

/-! ## A268718.P4236352995394525184

`A268824(A268821(n+2))-2`
-/

namespace A268718.P4236352995394525184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268824 (A268821 (n + 2)).toNat - 2

end

end A268718.P4236352995394525184

/-! ## A268718.P7184151737190739065

`A268830(∑[n+1]+1)`
-/

namespace A268718.P7184151737190739065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268830 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A268718.P7184151737190739065

/-!
# A268719: Triangular table T(n>=0,k=0..n) = A003188(A006068(n) + A006068(k)), read by rows as A(0,0), A(1,0), A(1,1), A(2,0), A(2,1), A(2,2), ...

The programs for A268719, the canonical program `A268719.P9072516025595210906` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268719 has offset 0).

The definition of A268719 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3914 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268719.P9072516025595210906

`A268715(A245300(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A268719

/-- `A268715(A245300(n))` -/
def P9072516025595210906.Spec : Prop :=
  ∀ n, P9072516025595210906.a n = A268719 n

theorem P9072516025595210906.correct : P9072516025595210906.Spec := by
  intro n
  simp only [A268719]

end A268719

/-!
# A268722: a(n) = A003188(3*A006068(n)), where A003188 is binary Gray code and A006068 is its inverse.

The programs for A268722, the canonical program `A268722.P6401053392494273194` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268722 has offset 0).

The definition of A268722 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006068, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A268722.P6401053392494273194

`A003188(3*A006068(n))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A268722

/-- `A003188(3*A006068(n))` -/
def P6401053392494273194.Spec : Prop :=
  ∀ n, P6401053392494273194.a n = A268722 n

theorem P6401053392494273194.correct : P6401053392494273194.Spec := by
  intro n
  simp only [A268722]

end A268722

/-! ## A268722.P16179195650606639376

`A003188(3*(A066194(n+1)-1))`
-/

namespace A268722.P16179195650606639376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (3 * (A066194 (n + 1) - 1)).toNat

end

end A268722.P16179195650606639376

namespace A268722

/-- `A003188(3*(A066194(n+1)-1))` -/
def P16179195650606639376.Spec : Prop :=
  ∀ n, P16179195650606639376.a n = A268722 n

end A268722

/-! ## A268722.P5709124778461863199

`A003188(A268716(n)+A006068(n))`
-/

namespace A268722.P5709124778461863199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A268716 n + A006068 n).toNat

end

end A268722.P5709124778461863199

namespace A268722

/-- `A003188(A268716(n)+A006068(n))` -/
def P5709124778461863199.Spec : Prop :=
  ∀ n, P5709124778461863199.a n = A268722 n

theorem P5709124778461863199.correct : P5709124778461863199.Spec := by
  intro n
  simp only [A268722, Nat.add_sub_cancel, A268722.P5709124778461863199.a, A268722.P6401053392494273194.a, A003188, A003188.P10544524695508875182.a, A006068, A006068.P16534033749009019403.a, A268716, A268716.P9381113325776133009.a, A010060, A010060.P3080921269106500717.a, A265263, A265263.P13560857298709796040.a, A377404, A377404.P15784403255783113757.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A066194, A066194.P17197319264784136366.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A268722

/-! ## A268722.P8145140616883240428

`A003188(A268716(n)+A268716(n)/2)`
-/

namespace A268722.P8145140616883240428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (SequenceMachineLib.roundAway ((A268716 n : ℚ) + (A268716 n : ℚ) / 2)).toNat

end

end A268722.P8145140616883240428

namespace A268722

/-- `A003188(A268716(n)+A268716(n)/2)` -/
def P8145140616883240428.Spec : Prop :=
  ∀ n, P8145140616883240428.a n = A268722 n

end A268722

/-! ## A268722.P11440494212816095680

`A003188(A066194(n+1)+A268716(n)-1)`
-/

namespace A268722.P11440494212816095680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A066194 (n + 1) + (A268716 n - 1)).toNat

end

end A268722.P11440494212816095680

namespace A268722

/-- `A003188(A066194(n+1)+A268716(n)-1)` -/
def P11440494212816095680.Spec : Prop :=
  ∀ n, P11440494212816095680.a n = A268722 n

end A268722

/-! ## A268722.P17197130344371837977

`A003188(A008585(A104895(A001969(n+1))))`
-/

namespace A268722.P17197130344371837977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A008585 (A104895 (A001969 (n + 1)).toNat).toNat).toNat

end

end A268722.P17197130344371837977

namespace A268722

/-- `A003188(A008585(A104895(A001969(n+1))))` -/
def P17197130344371837977.Spec : Prop :=
  ∀ n, P17197130344371837977.a n = A268722 n

end A268722

/-! ## A268722.P8123866444849513979

`A003188(A268716(n)-(A006068(n)-A268716(n)))`
-/

namespace A268722.P8123866444849513979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A268716 n - (A006068 n - A268716 n)).toNat

end

end A268722.P8123866444849513979

namespace A268722

/-- `A003188(A268716(n)-(A006068(n)-A268716(n)))` -/
def P8123866444849513979.Spec : Prop :=
  ∀ n, P8123866444849513979.a n = A268722 n

theorem P8123866444849513979.correct : P8123866444849513979.Spec := by
  intro n
  simp only [A268722, Nat.add_sub_cancel, A268722.P8123866444849513979.a, A268722.P6401053392494273194.a, A003188, A003188.P10544524695508875182.a, A006068, A006068.P16534033749009019403.a, A268716, A268716.P9381113325776133009.a, A010060, A010060.P3080921269106500717.a, A265263, A265263.P13560857298709796040.a, A377404, A377404.P15784403255783113757.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A066194, A066194.P17197319264784136366.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A268722

/-!
# A268723: Main diagonal of A268725: a(n) = A003188(A006068(n)^2), where A003188 is binary Gray code and A006068 is its inverse.

The programs for A268723, the canonical program `A268723.P2389493602278608129` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268723 has offset 0).

The definition of A268723 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006068, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A268723.P2389493602278608129

`A003188(A006068(n)²)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A268723

/-- `A003188(A006068(n)²)` -/
def P2389493602278608129.Spec : Prop :=
  ∀ n, P2389493602278608129.a n = A268723 n

theorem P2389493602278608129.correct : P2389493602278608129.Spec := by
  intro n
  simp only [A268723]

end A268723

/-! ## A268723.P6008214772822386524

`A003188(A006068(n)^2)`
-/

namespace A268723.P6008214772822386524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A006068 n ^ 2).toNat

end

end A268723.P6008214772822386524

namespace A268723

/-- `A003188(A006068(n)^2)` -/
def P6008214772822386524.Spec : Prop :=
  ∀ n, P6008214772822386524.a n = A268723 n

theorem P6008214772822386524.correct : P6008214772822386524.Spec := by
  intro n
  simp only [A268723, Nat.add_sub_cancel, A268723.P6008214772822386524.a, A268723.P2389493602278608129.a, SequenceMachineLib.memo_apply]

end A268723

/-! ## A268723.P2334758851455052446

`A003188(A268714(∑[n])²)`
-/

namespace A268723.P2334758851455052446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A268714 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A268723.P2334758851455052446

namespace A268723

/-- `A003188(A268714(∑[n])²)` -/
def P2334758851455052446.Spec : Prop :=
  ∀ n, P2334758851455052446.a n = A268723 n

end A268723

/-! ## A268723.P16416643457649978535

`A003188(A292600(2*n)²)`
-/

namespace A268723.P16416643457649978535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A292600 (2 * n) ^ 2).toNat

end

end A268723.P16416643457649978535

namespace A268723

/-- `A003188(A292600(2*n)²)` -/
def P16416643457649978535.Spec : Prop :=
  ∀ n, P16416643457649978535.a n = A268723 n

end A268723

/-! ## A268723.P224027890335701209

`A003188((A268716(n)/2)²)`
-/

namespace A268723.P224027890335701209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (SequenceMachineLib.roundAway (((A268716 n : ℚ) / 2) ^ 2)).toNat

end

end A268723.P224027890335701209

namespace A268723

/-- `A003188((A268716(n)/2)²)` -/
def P224027890335701209.Spec : Prop :=
  ∀ n, P224027890335701209.a n = A268723 n

end A268723

/-! ## A268723.P7212734506384611639

`A003188((A286546(n)+n)²)`
-/

namespace A268723.P7212734506384611639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 ((A286546 n + (n : ℤ)) ^ 2).toNat

end

end A268723.P7212734506384611639

namespace A268723

/-- `A003188((A286546(n)+n)²)` -/
def P7212734506384611639.Spec : Prop :=
  ∀ n, P7212734506384611639.a n = A268723 n

theorem P7212734506384611639.correct : P7212734506384611639.Spec := by
  intro n
  simp only [A268723, Nat.add_sub_cancel, A268723.P7212734506384611639.a, A268723.P2389493602278608129.a, A003188, A003188.P10544524695508875182.a, A006068, A006068.P16534033749009019403.a, A286546, A286546.P17363262112593177841.a, A010060, A010060.P3080921269106500717.a, A265263, A265263.P13560857298709796040.a, A377404, A377404.P15784403255783113757.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A066194, A066194.P17197319264784136366.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A268723

/-! ## A268723.P1102873860504298713

`A003188((1-A066194(n+1))²)`
-/

namespace A268723.P1102873860504298713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 ((1 - A066194 (n + 1)) ^ 2).toNat

end

end A268723.P1102873860504298713

namespace A268723

/-- `A003188((1-A066194(n+1))²)` -/
def P1102873860504298713.Spec : Prop :=
  ∀ n, P1102873860504298713.a n = A268723 n

end A268723

/-! ## A268723.P10157296561647196301

`A003188(A002620(A268716(n)))`
-/

namespace A268723.P10157296561647196301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A002620 (A268716 n).toNat).toNat

end

end A268723.P10157296561647196301

namespace A268723

/-- `A003188(A002620(A268716(n)))` -/
def P10157296561647196301.Spec : Prop :=
  ∀ n, P10157296561647196301.a n = A268723 n

end A268723

/-! ## A268723.P7564188907937106700

`A003188(A064707(A003188(n))²)`
-/

namespace A268723.P7564188907937106700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A064707 (A003188 n).toNat ^ 2).toNat

end

end A268723.P7564188907937106700

namespace A268723

/-- `A003188(A064707(A003188(n))²)` -/
def P7564188907937106700.Spec : Prop :=
  ∀ n, P7564188907937106700.a n = A268723 n

end A268723

/-! ## A268723.P11282277809409222158

`A003188(A227351(A048680(n))²)`
-/

namespace A268723.P11282277809409222158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A227351 (A048680 n).toNat ^ 2).toNat

end

end A268723.P11282277809409222158

namespace A268723

/-- `A003188(A227351(A048680(n))²)` -/
def P11282277809409222158.Spec : Prop :=
  ∀ n, P11282277809409222158.a n = A268723 n

end A268723

/-! ## A268723.P8441223214230108802

`A003188(A233279(A063946(n))²)`
-/

namespace A268723.P8441223214230108802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A233279 (A063946 n).toNat ^ 2).toNat

end

end A268723.P8441223214230108802

namespace A268723

/-- `A003188(A233279(A063946(n))²)` -/
def P8441223214230108802.Spec : Prop :=
  ∀ n, P8441223214230108802.a n = A268723 n

end A268723

/-! ## A268723.P3259438329639322522

`A003188(A300839(A057300(n))²)`
-/

namespace A268723.P3259438329639322522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A300839 (A057300 n).toNat ^ 2).toNat

end

end A268723.P3259438329639322522

namespace A268723

/-- `A003188(A300839(A057300(n))²)` -/
def P3259438329639322522.Spec : Prop :=
  ∀ n, P3259438329639322522.a n = A268723 n

end A268723

/-! ## A268723.P3057620401955122070

`A057300(A300838(A006068(n)²))`
-/

namespace A268723.P3057620401955122070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (A300838 (A006068 n ^ 2).toNat).toNat

end

end A268723.P3057620401955122070

namespace A268723

/-- `A057300(A300838(A006068(n)²))` -/
def P3057620401955122070.Spec : Prop :=
  ∀ n, P3057620401955122070.a n = A268723 n

end A268723

/-! ## A268723.P12172111285657699421

`A003188(A234613(A193231(n))²)`
-/

namespace A268723.P12172111285657699421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A234613 (A193231 n).toNat ^ 2).toNat

end

end A268723.P12172111285657699421

namespace A268723

/-- `A003188(A234613(A193231(n))²)` -/
def P12172111285657699421.Spec : Prop :=
  ∀ n, P12172111285657699421.a n = A268723 n

end A268723

/-! ## A268723.P9249160331180991494

`A003188(A193231(A234612(n))²)`
-/

namespace A268723.P9249160331180991494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A193231 (A234612 n).toNat ^ 2).toNat

end

end A268723.P9249160331180991494

namespace A268723

/-- `A003188(A193231(A234612(n))²)` -/
def P9249160331180991494.Spec : Prop :=
  ∀ n, P9249160331180991494.a n = A268723 n

end A268723

/-! ## A268723.P10095197959477345962

`A003188(A163356(A302843(n))²)`
-/

namespace A268723.P10095197959477345962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A163356 (A302843 n).toNat ^ 2).toNat

end

end A268723.P10095197959477345962

namespace A268723

/-- `A003188(A163356(A302843(n))²)` -/
def P10095197959477345962.Spec : Prop :=
  ∀ n, P10095197959477345962.a n = A268723 n

end A268723

/-! ## A268723.P14154800275945438268

`A302844(A163355(A006068(n)²))`
-/

namespace A268723.P14154800275945438268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302844 (A163355 (A006068 n ^ 2).toNat).toNat

end

end A268723.P14154800275945438268

namespace A268723

/-- `A302844(A163355(A006068(n)²))` -/
def P14154800275945438268.Spec : Prop :=
  ∀ n, P14154800275945438268.a n = A268723 n

end A268723

/-! ## A268723.P4079472578205116413

`A003188(A252756(A269855(n))²)`
-/

namespace A268723.P4079472578205116413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A252756 (A269855 n).toNat ^ 2).toNat

end

end A268723.P4079472578205116413

namespace A268723

/-- `A003188(A252756(A269855(n))²)` -/
def P4079472578205116413.Spec : Prop :=
  ∀ n, P4079472578205116413.a n = A268723 n

end A268723

/-! ## A268723.P17693960437290577793

`A003188(A286556(A252753(n))²)`
-/

namespace A268723.P17693960437290577793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A286556 (A252753 n).toNat ^ 2).toNat

end

end A268723.P17693960437290577793

namespace A268723

/-- `A003188(A286556(A252753(n))²)` -/
def P17693960437290577793.Spec : Prop :=
  ∀ n, P17693960437290577793.a n = A268723 n

end A268723

/-! ## A268723.P224088690847482099

`A003188(A302844(A302845(n))²)`
-/

namespace A268723.P224088690847482099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A302844 (A302845 n).toNat ^ 2).toNat

end

end A268723.P224088690847482099

namespace A268723

/-- `A003188(A302844(A302845(n))²)` -/
def P224088690847482099.Spec : Prop :=
  ∀ n, P224088690847482099.a n = A268723 n

end A268723

/-!
# A268724: Square array A(i,j) = A006068(i) * A006068(j), read by antidiagonals as A(1,1), A(1,2), A(2,1), A(1,3), A(2,2), A(3,1), ...

The programs for A268724, the canonical program `A268724.P7737860794128686807` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268724 has offset 1).

The definition of A268724 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268724.P7737860794128686807

`A006068(A002260(n+1))*A006068(A004736(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A268724

/-- `A006068(A002260(n+1))*A006068(A004736(n+1))` -/
def P7737860794128686807.Spec : Prop :=
  ∀ n, P7737860794128686807.a n = A268724 (n + 1)

theorem P7737860794128686807.correct : P7737860794128686807.Spec := by
  intro n
  simp only [A268724, Nat.add_sub_cancel]

end A268724

/-! ## A268724.P16402239759840215448

`A006068(A268725(n+1))`
-/

namespace A268724.P16402239759840215448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A268725 (n + 1)).toNat

end

end A268724.P16402239759840215448

namespace A268724

/-- `A006068(A268725(n+1))` -/
def P16402239759840215448.Spec : Prop :=
  ∀ n, P16402239759840215448.a n = A268724 (n + 1)

end A268724

/-! ## A268724.P5063815254148938708

`A268716(A268725(n+1))/2%A028263(n)`
-/

namespace A268724.P5063815254148938708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268716 (A268725 (n + 1)).toNat : ℚ) / (Int.tmod 2 (A028263 n) : ℚ)

end

end A268724.P5063815254148938708

namespace A268724

/-- `A268716(A268725(n+1))/2%A028263(n)` -/
def P5063815254148938708.Spec : Prop :=
  ∀ n, P5063815254148938708.a n = (A268724 (n + 1) : ℚ)

end A268724

/-! ## A268724.P13796215396138227419

`A268716(A268725(n+1))/A020639(8*n+4)`
-/

namespace A268724.P13796215396138227419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268716 (A268725 (n + 1)).toNat : ℚ) / (A020639 (8 * n + 4) : ℚ)

end

end A268724.P13796215396138227419

namespace A268724

/-- `A268716(A268725(n+1))/A020639(8*n+4)` -/
def P13796215396138227419.Spec : Prop :=
  ∀ n, P13796215396138227419.a n = (A268724 (n + 1) : ℚ)

end A268724

/-! ## A268724.P16310116878025273011

`(A268716(A268725(n+1))/2)%A352273(n+1)`
-/

namespace A268724.P16310116878025273011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A268716 (A268725 (n + 1)).toNat : ℚ) / 2)) (A352273 (n + 1))

end

end A268724.P16310116878025273011

namespace A268724

/-- `(A268716(A268725(n+1))/2)%A352273(n+1)` -/
def P16310116878025273011.Spec : Prop :=
  ∀ n, P16310116878025273011.a n = A268724 (n + 1)

end A268724

/-! ## A268724.P3899423343205925227

`abs(A070748(n+1)/2*A268716(A268725(n+1)))`
-/

namespace A268724.P3899423343205925227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A070748 (n + 1) : ℚ) / 2 * (A268716 (A268725 (n + 1)).toNat : ℚ)|

end

end A268724.P3899423343205925227

namespace A268724

/-- `abs(A070748(n+1)/2*A268716(A268725(n+1)))` -/
def P3899423343205925227.Spec : Prop :=
  ∀ n, P3899423343205925227.a n = (A268724 (n + 1) : ℚ)

end A268724

/-! ## A268724.P3011674334540975155

`A292600(2*A268725(n+1))`
-/

namespace A268724.P3011674334540975155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292600 (2 * A268725 (n + 1)).toNat

end

end A268724.P3011674334540975155

namespace A268724

/-- `A292600(2*A268725(n+1))` -/
def P3011674334540975155.Spec : Prop :=
  ∀ n, P3011674334540975155.a n = A268724 (n + 1)

end A268724

/-! ## A268724.P4682528247502757342

`A292600(A268725(n+1)+A268725(n+1)+1)`
-/

namespace A268724.P4682528247502757342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292600 (A268725 (n + 1) + (A268725 (n + 1) + 1)).toNat

end

end A268724.P4682528247502757342

namespace A268724

/-- `A292600(A268725(n+1)+A268725(n+1)+1)` -/
def P4682528247502757342.Spec : Prop :=
  ∀ n, P4682528247502757342.a n = A268724 (n + 1)

end A268724

/-!
# A268725: Square array A(i,j) = A003188(A006068(i) * A006068(j)), read by antidiagonals as A(1,1), A(1,2), A(2,1), A(1,3), A(2,2), A(3,1), ...

The programs for A268725, the canonical program `A268725.P2305431121267613913` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268725 has offset 1).

The definition of A268725 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268725.P2305431121267613913

`A003188(A268724(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A268725

/-- `A003188(A268724(n+1))` -/
def P2305431121267613913.Spec : Prop :=
  ∀ n, P2305431121267613913.a n = A268725 (n + 1)

theorem P2305431121267613913.correct : P2305431121267613913.Spec := by
  intro n
  simp only [A268725, Nat.add_sub_cancel]

end A268725

/-!
# A268726: Index of the toggled bit between n and A268717(n+1): a(n) = A000523(A003987(n, A268717(1+n))).

The programs for A268726, the canonical program `A268726.P17814660548721949411` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268726 has offset 0).

The definition of A268726 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006068, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A268726.P17814660548721949411

`A007814(1+A006068(n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A268726

/-- `A007814(1+A006068(n))` -/
def P17814660548721949411.Spec : Prop :=
  ∀ n, P17814660548721949411.a n = A268726 n

theorem P17814660548721949411.correct : P17814660548721949411.Spec := by
  intro n
  simp only [A268726]

end A268726

/-! ## A268726.P16154681549082465367

`val(comp[xor(n, 2*n)], 2)`
-/

namespace A268726.P16154681549082465367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) 2

end

end A268726.P16154681549082465367

namespace A268726

/-- `val(comp[xor(n, 2*n)], 2)` -/
def P16154681549082465367.Spec : Prop :=
  ∀ n, (P16154681549082465367.a n : ℤ) = A268726 n

end A268726

/-! ## A268726.P9777205114725491326

`val(lt[-a(and(n, n-1)), 0], 2)` with `a(0)=1`
-/

namespace A268726.P9777205114725491326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  -f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n) 2

end

end A268726.P9777205114725491326

namespace A268726

/-- `val(lt[-a(and(n, n-1)), 0], 2)` -/
def P9777205114725491326.Spec : Prop :=
  ∀ n, (P9777205114725491326.a n : ℤ) = A268726 n

end A268726

/-! ## A268726.P13822959493363342801

`val(char[xor(n, 2*n)]+2*n, 2)`
-/

namespace A268726.P13822959493363342801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((if ∃ j, f1 j = n then 1 else 0) + 2 * n) 2

end

end A268726.P13822959493363342801

namespace A268726

/-- `val(char[xor(n, 2*n)]+2*n, 2)` -/
def P13822959493363342801.Spec : Prop :=
  ∀ n, (P13822959493363342801.a n : ℤ) = A268726 n

end A268726

/-! ## A268726.P8268163320599530480

`val(or(2*n, char[xor(n, 2*n)]), 2)`
-/

namespace A268726.P8268163320599530480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.lor (2 * n) (if ∃ j, f1 j = n then 1 else 0)) 2

end

end A268726.P8268163320599530480

namespace A268726

/-- `val(or(2*n, char[xor(n, 2*n)]), 2)` -/
def P8268163320599530480.Spec : Prop :=
  ∀ n, (P8268163320599530480.a n : ℤ) = A268726 n

end A268726

/-! ## A268726.P14215797955721524271

`val(eq[-a(and(n, n-1)), -1], 2)` with `a(0)=1`
-/

namespace A268726.P14215797955721524271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  -f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) 2

end

end A268726.P14215797955721524271

namespace A268726

/-- `val(eq[-a(and(n, n-1)), -1], 2)` -/
def P14215797955721524271.Spec : Prop :=
  ∀ n, (P14215797955721524271.a n : ℤ) = A268726 n

end A268726

/-! ## A268726.P851818910299974991

`val(eq[0, 1-a(and(n, n-1))], 2)` with `a(0)=1`
-/

namespace A268726.P851818910299974991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  1 - f2 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) 2

end

end A268726.P851818910299974991

namespace A268726

/-- `val(eq[0, 1-a(and(n, n-1))], 2)` -/
def P851818910299974991.Spec : Prop :=
  ∀ n, (P851818910299974991.a n : ℤ) = A268726 n

end A268726

/-! ## A268726.P16903020148604176787

`val(eq[0, (a(floor(n/2))+n)%2], 2)` with `a(0)=1`
-/

namespace A268726.P16903020148604176787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  (f2 ⌊(n : ℚ) / 2⌋.toNat + n) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) 2

end

end A268726.P16903020148604176787

namespace A268726

/-- `val(eq[0, (a(floor(n/2))+n)%2], 2)` -/
def P16903020148604176787.Spec : Prop :=
  ∀ n, (P16903020148604176787.a n : ℤ) = A268726 n

end A268726

/-! ## A268726.P6238819593511271415

`val(eq[0, (n-a(floor(n/2)))%2], 2)` with `a(0)=1, a(1)=0`
-/

namespace A268726.P6238819593511271415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  Int.tmod ((n : ℤ) - f2 ⌊(n : ℚ) / 2⌋.toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) 2

end

end A268726.P6238819593511271415

namespace A268726

/-- `val(eq[0, (n-a(floor(n/2)))%2], 2)` -/
def P6238819593511271415.Spec : Prop :=
  ∀ n, (P6238819593511271415.a n : ℤ) = A268726 n

end A268726

/-! ## A268726.P6919822660951802504

`val(eq[0, (a(n-1)+val(n, 2)+1)%2], 2)` with `a(0)=1`
-/

namespace A268726.P6919822660951802504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  (f2 (n - 1) + SequenceMachineLib.valuation n 2 + 1) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) 2

end

end A268726.P6919822660951802504

namespace A268726

/-- `val(eq[0, (a(n-1)+val(n, 2)+1)%2], 2)` -/
def P6919822660951802504.Spec : Prop :=
  ∀ n, (P6919822660951802504.a n : ℤ) = A268726 n

end A268726

/-! ## A268726.P7869264164312351144

`A268727(n)-1`
-/

namespace A268726.P7869264164312351144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268727 n - 1

end

end A268726.P7869264164312351144

namespace A268726

/-- `A268727(n)-1` -/
def P7869264164312351144.Spec : Prop :=
  ∀ n, P7869264164312351144.a n = A268726 n

end A268726

/-! ## A268726.P13306438877621097282

`val(A074938(n), 3)`
-/

namespace A268726.P13306438877621097282
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A074938 n).toNat 3

end

end A268726.P13306438877621097282

namespace A268726

/-- `val(A074938(n), 3)` -/
def P13306438877621097282.Spec : Prop :=
  ∀ n, (P13306438877621097282.a n : ℤ) = A268726 n

end A268726

/-! ## A268726.P12840680416686460221

`val(A000069(n+1), 2)`
-/

namespace A268726.P12840680416686460221
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000069 (n + 1)).toNat 2

end

end A268726.P12840680416686460221

namespace A268726

/-- `val(A000069(n+1), 2)` -/
def P12840680416686460221.Spec : Prop :=
  ∀ n, (P12840680416686460221.a n : ℤ) = A268726 n

end A268726

/-! ## A268726.P16351664343677715174

`val(A066194(n+1), 2)`
-/

namespace A268726.P16351664343677715174
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A066194 (n + 1)).toNat 2

end

end A268726.P16351664343677715174

namespace A268726

/-- `val(A066194(n+1), 2)` -/
def P16351664343677715174.Spec : Prop :=
  ∀ n, (P16351664343677715174.a n : ℤ) = A268726 n

end A268726

/-! ## A268726.P2321620838054172202

`val(record[A268669(n+1)], 2)`
-/

namespace A268726.P2321620838054172202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268669 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2

end

end A268726.P2321620838054172202

namespace A268726

/-- `val(record[A268669(n+1)], 2)` -/
def P2321620838054172202.Spec : Prop :=
  ∀ n, (P2321620838054172202.a n : ℤ) = A268726 n

end A268726

/-! ## A268726.P16916417483494211617

`val(A128309(n+1), 2)-1`
-/

namespace A268726.P16916417483494211617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A128309 (n + 1)).toNat 2 : ℤ) - 1

end

end A268726.P16916417483494211617

namespace A268726

/-- `val(A128309(n+1), 2)-1` -/
def P16916417483494211617.Spec : Prop :=
  ∀ n, P16916417483494211617.a n = A268726 n

end A268726

/-! ## A268726.P15330064482873691338

`val(abs(1-A001969(n+1)), 2)`
-/

namespace A268726.P15330064482873691338
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation |1 - A001969 (n + 1)|.toNat 2

end

end A268726.P15330064482873691338

namespace A268726

/-- `val(abs(1-A001969(n+1)), 2)` -/
def P15330064482873691338.Spec : Prop :=
  ∀ n, (P15330064482873691338.a n : ℤ) = A268726 n

end A268726

/-! ## A268726.P6776924504878997924

`A085058(A268716(n)/2)-2`
-/

namespace A268726.P6776924504878997924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085058 (SequenceMachineLib.roundAway ((A268716 n : ℚ) / 2)).toNat - 2

end

end A268726.P6776924504878997924

namespace A268726

/-- `A085058(A268716(n)/2)-2` -/
def P6776924504878997924.Spec : Prop :=
  ∀ n, P6776924504878997924.a n = A268726 n

end A268726

/-! ## A268726.P5344876380790028973

`val(A255177(n*A010060(n)), 2)`
-/

namespace A268726.P5344876380790028973
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A255177 ((n : ℤ) * A010060 n).toNat).toNat 2

end

end A268726.P5344876380790028973

namespace A268726

/-- `val(A255177(n*A010060(n)), 2)` -/
def P5344876380790028973.Spec : Prop :=
  ∀ n, (P5344876380790028973.a n : ℤ) = A268726 n

end A268726

/-!
# A268727: One-based index of the toggled bit between n and A268717(n+1): a(n) = A070939(A003987(n,A268717(1+n))).

The programs for A268727, the canonical program `A268727.P7725352305021057032` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268727 has offset 0).

The definition of A268727 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006068, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A268727.P7725352305021057032

`A001511(1+A006068(n))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A268727

/-- `A001511(1+A006068(n))` -/
def P7725352305021057032.Spec : Prop :=
  ∀ n, P7725352305021057032.a n = A268727 n

theorem P7725352305021057032.correct : P7725352305021057032.Spec := by
  intro n
  simp only [A268727]

end A268727

/-! ## A268727.P16802882252349377300

`val(comp[xor(n, 2*n)], 2)+1`
-/

namespace A268727.P16802882252349377300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) 2 + 1

end

end A268727.P16802882252349377300

namespace A268727

/-- `val(comp[xor(n, 2*n)], 2)+1` -/
def P16802882252349377300.Spec : Prop :=
  ∀ n, (P16802882252349377300.a n : ℤ) = A268727 n

end A268727

/-! ## A268727.P6785044393618241373

`val(2*comp[xor(n, 2*n)], 2)`
-/

namespace A268727.P6785044393618241373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) 2

end

end A268727.P6785044393618241373

namespace A268727

/-- `val(2*comp[xor(n, 2*n)], 2)` -/
def P6785044393618241373.Spec : Prop :=
  ∀ n, (P6785044393618241373.a n : ℤ) = A268727 n

end A268727

/-! ## A268727.P8989489723742327641

`A268726(n)+1`
-/

namespace A268727.P8989489723742327641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268726 n + 1

end

end A268727.P8989489723742327641

namespace A268727

/-- `A268726(n)+1` -/
def P8989489723742327641.Spec : Prop :=
  ∀ n, P8989489723742327641.a n = A268727 n

theorem P8989489723742327641.correct : P8989489723742327641.Spec := by
  intro n
  simp only [A268727, Nat.add_sub_cancel, A268727.P8989489723742327641.a, A268727.P7725352305021057032.a, A001511, A001511.P17146462531039486101.a, A006068, A006068.P16534033749009019403.a, A268726, A268726.P17814660548721949411.a, A006519, A006519.P10435570611646570274.a, A007814, A007814.P13537437864234730737.a, A010060, A010060.P3080921269106500717.a, A265263, A265263.P13560857298709796040.a, A377404, A377404.P15784403255783113757.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A066194, A066194.P17197319264784136366.a, A171977, A171977.P14092944863121073856.a, A005187, A005187.P3874015513960485494.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A268727

/-! ## A268727.P15335801082308452552

`val(A128309(n+1), 2)`
-/

namespace A268727.P15335801082308452552
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A128309 (n + 1)).toNat 2

end

end A268727.P15335801082308452552

namespace A268727

/-- `val(A128309(n+1), 2)` -/
def P15335801082308452552.Spec : Prop :=
  ∀ n, (P15335801082308452552.a n : ℤ) = A268727 n

end A268727

/-! ## A268727.P4840404463932702433

`val(A000069(n+1), 2)+1`
-/

namespace A268727.P4840404463932702433
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000069 (n + 1)).toNat 2 + 1

end

end A268727.P4840404463932702433

namespace A268727

/-- `val(A000069(n+1), 2)+1` -/
def P4840404463932702433.Spec : Prop :=
  ∀ n, (P4840404463932702433.a n : ℤ) = A268727 n

end A268727

/-! ## A268727.P18420586539100418705

`val(A066194(n+1), 2)+1`
-/

namespace A268727.P18420586539100418705
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A066194 (n + 1)).toNat 2 + 1

end

end A268727.P18420586539100418705

namespace A268727

/-- `val(A066194(n+1), 2)+1` -/
def P18420586539100418705.Spec : Prop :=
  ∀ n, (P18420586539100418705.a n : ℤ) = A268727 n

end A268727

/-! ## A268727.P1630694873779831936

`val(record[A268669(n+1)], 2)+1`
-/

namespace A268727.P1630694873779831936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268669 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2 + 1

end

end A268727.P1630694873779831936

namespace A268727

/-- `val(record[A268669(n+1)], 2)+1` -/
def P1630694873779831936.Spec : Prop :=
  ∀ n, (P1630694873779831936.a n : ℤ) = A268727 n

end A268727

/-! ## A268727.P543753992537572966

`A005496(A268726(n))`
-/

namespace A268727.P543753992537572966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (A268726 n).toNat

end

end A268727.P543753992537572966

namespace A268727

/-- `A005496(A268726(n))` -/
def P543753992537572966.Spec : Prop :=
  ∀ n, P543753992537572966.a n = A268727 n

end A268727

/-! ## A268727.P13956196329380445375

`A085058(A268716(n)/2)-1`
-/

namespace A268727.P13956196329380445375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085058 (SequenceMachineLib.roundAway ((A268716 n : ℚ) / 2)).toNat - 1

end

end A268727.P13956196329380445375

namespace A268727

/-- `A085058(A268716(n)/2)-1` -/
def P13956196329380445375.Spec : Prop :=
  ∀ n, P13956196329380445375.a n = A268727 n

end A268727

/-! ## A268727.P9661056039325226343

`A001511(A066194(n+1))`
-/

namespace A268727.P9661056039325226343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A066194 (n + 1)).toNat

end

end A268727.P9661056039325226343

namespace A268727

/-- `A001511(A066194(n+1))` -/
def P9661056039325226343.Spec : Prop :=
  ∀ n, P9661056039325226343.a n = A268727 n

end A268727

/-! ## A268727.P10931557584039727646

`A277822(A268717(n+1))`
-/

namespace A268727.P10931557584039727646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277822 (A268717 (n + 1)).toNat

end

end A268727.P10931557584039727646

namespace A268727

/-- `A277822(A268717(n+1))` -/
def P10931557584039727646.Spec : Prop :=
  ∀ n, P10931557584039727646.a n = A268727 n

end A268727

/-! ## A268727.P7418580570523741767

`A277822(A004760(n+2))`
-/

namespace A268727.P7418580570523741767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277822 (A004760 (n + 2)).toNat

end

end A268727.P7418580570523741767

namespace A268727

/-- `A277822(A004760(n+2))` -/
def P7418580570523741767.Spec : Prop :=
  ∀ n, P7418580570523741767.a n = A268727 n

end A268727

/-! ## A268727.P15568624777115735264

`A268726(2^A268726(n))`
-/

namespace A268727.P15568624777115735264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268726 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A268726 n : ℤ))).toNat

end

end A268727.P15568624777115735264

namespace A268727

/-- `A268726(2^A268726(n))` -/
def P15568624777115735264.Spec : Prop :=
  ∀ n, P15568624777115735264.a n = A268727 n

end A268727

/-! ## A268727.P10902579856324399749

`A268726(eq[1, A010060(n)])`
-/

namespace A268727.P10902579856324399749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268726 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268727.P10902579856324399749

namespace A268727

/-- `A268726(eq[1, A010060(n)])` -/
def P10902579856324399749.Spec : Prop :=
  ∀ n, P10902579856324399749.a n = A268727 n

end A268727

/-! ## A268727.P12452968741437910049

`A007814(A006068(n)+1)+1`
-/

namespace A268727.P12452968741437910049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A006068 n + 1).toNat + 1

end

end A268727.P12452968741437910049

namespace A268727

/-- `A007814(A006068(n)+1)+1` -/
def P12452968741437910049.Spec : Prop :=
  ∀ n, P12452968741437910049.a n = A268727 n

theorem P12452968741437910049.correct : P12452968741437910049.Spec := by
  intro n
  simp only [A268727, Nat.add_sub_cancel, A268727.P12452968741437910049.a, A268727.P7725352305021057032.a, A001511, A001511.P17146462531039486101.a, A006068, A006068.P16534033749009019403.a, A007814, A007814.P13537437864234730737.a, A006519, A006519.P10435570611646570274.a, A010060, A010060.P3080921269106500717.a, A265263, A265263.P13560857298709796040.a, A377404, A377404.P15784403255783113757.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A066194, A066194.P17197319264784136366.a, A171977, A171977.P14092944863121073856.a, A005187, A005187.P3874015513960485494.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A268727

/-! ## A268727.P460493800441317520

`A085058(A268716(n)+1)-2`
-/

namespace A268727.P460493800441317520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085058 (A268716 n + 1).toNat - 2

end

end A268727.P460493800441317520

namespace A268727

/-- `A085058(A268716(n)+1)-2` -/
def P460493800441317520.Spec : Prop :=
  ∀ n, P460493800441317520.a n = A268727 n

end A268727

/-! ## A268727.P1961357935846514582

`val(A004277(A006068(n)+1), 2)`
-/

namespace A268727.P1961357935846514582
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A004277 (A006068 n + 1).toNat).toNat 2

end

end A268727.P1961357935846514582

namespace A268727

/-- `val(A004277(A006068(n)+1), 2)` -/
def P1961357935846514582.Spec : Prop :=
  ∀ n, (P1961357935846514582.a n : ℤ) = A268727 n

end A268727

/-! ## A268727.P17166598513311072673

`A277822(A206332(n+1))`
-/

namespace A268727.P17166598513311072673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277822 (A206332 (n + 1)).toNat

end

end A268727.P17166598513311072673

namespace A268727

/-- `A277822(A206332(n+1))` -/
def P17166598513311072673.Spec : Prop :=
  ∀ n, P17166598513311072673.a n = A268727 n

end A268727

/-!
# A268728: Square array A(row,col) = B(row,(2*col)-1), where B(p,2q-1) = 0 if gcd(p,2q-1) > 1, and A269158(p,q) otherwise. Array is read by descending antidiagonals as A(1,1), A(1,2), A(2,1), A(1,3), A(2,2), A(3,1), ...

The programs for A268728, there is no canonical definition to state claims against.
-/

/-! ## A268728.P2828232704497202400

`A268729(A038722(n+1))`
-/

namespace A268728.P2828232704497202400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268729 (A038722 (n + 1)).toNat

end

end A268728.P2828232704497202400

/-! ## A268728.P11684113789239635219

`A268729(A061579(n)+1)`
-/

namespace A268728.P11684113789239635219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268729 (A061579 n + 1).toNat

end

end A268728.P11684113789239635219

/-! ## A268728.P3445575830902949048

`A268729(A093995(n+1)-n)`
-/

namespace A268728.P3445575830902949048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268729 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A268728.P3445575830902949048

/-! ## A268728.P9538165612442152393

`A268729(A057944(n)+A004736(n+1))`
-/

namespace A268728.P9538165612442152393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268729 (A057944 n + A004736 (n + 1)).toNat

end

end A268728.P9538165612442152393

/-! ## A268728.P13777356255454427680

`A268729(A004202(n+1)-A132118(n+1))`
-/

namespace A268728.P13777356255454427680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268729 (A004202 (n + 1) - A132118 (n + 1)).toNat

end

end A268728.P13777356255454427680

/-! ## A268728.P17755733476102988903

`A268729(A004736(n+1)+n-A002260(n+1)+1)`
-/

namespace A268728.P17755733476102988903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268729 (A004736 (n + 1) + ((n : ℤ) - A002260 (n + 1)) + 1).toNat

end

end A268728.P17755733476102988903

/-! ## A268728.P1711404430256750562

`floor(A268829(n+1)/2)`
-/

namespace A268728.P1711404430256750562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A268829 (n + 1) : ℚ) / 2⌋

end

end A268728.P1711404430256750562

/-! ## A268728.P10355381745860436991

`A004524(A268829(n+1))`
-/

namespace A268728.P10355381745860436991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A268829 (n + 1)).toNat

end

end A268728.P10355381745860436991

/-! ## A268728.P16855349385395437626

`A319571(A268829(n+1)²)`
-/

namespace A268728.P16855349385395437626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319571 (A268829 (n + 1) ^ 2).toNat

end

end A268728.P16855349385395437626

/-! ## A268728.P5968002887023154602

`A002265(2*A268829(n+1))`
-/

namespace A268728.P5968002887023154602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A268829 (n + 1)).toNat

end

end A268728.P5968002887023154602

/-! ## A268728.P17658527730882967830

`A004526(or(1, A268829(n+1)))`
-/

namespace A268728.P17658527730882967830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.lor 1 (A268829 (n + 1))).toNat

end

end A268728.P17658527730882967830

/-! ## A268728.P14577896468401764627

`A002265(A268829(n+1)+A268829(n+1)+1)`
-/

namespace A268728.P14577896468401764627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A268829 (n + 1) + (A268829 (n + 1) + 1)).toNat

end

end A268728.P14577896468401764627

/-!
# A268729: Transpose of A268728.

The programs for A268729, there is no canonical definition to state claims against.
-/

/-! ## A268729.P5900781019490560209

`A268728(A038722(n+1))`
-/

namespace A268729.P5900781019490560209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268728 (A038722 (n + 1)).toNat

end

end A268729.P5900781019490560209

/-! ## A268729.P2263418570211194360

`A268728(A061579(n)+1)`
-/

namespace A268729.P2263418570211194360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268728 (A061579 n + 1).toNat

end

end A268729.P2263418570211194360

/-! ## A268729.P4052135576338494404

`A268728(A093995(n+1)-n)`
-/

namespace A268729.P4052135576338494404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268728 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A268729.P4052135576338494404

/-! ## A268729.P18328317190254579521

`A268728(A057944(n)+A004736(n+1))`
-/

namespace A268729.P18328317190254579521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268728 (A057944 n + A004736 (n + 1)).toNat

end

end A268729.P18328317190254579521

/-! ## A268729.P13400288438903761653

`A268728(A004736(n+1)+n-A002260(n+1)+1)`
-/

namespace A268729.P13400288438903761653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268728 (A004736 (n + 1) + ((n : ℤ) - A002260 (n + 1)) + 1).toNat

end

end A268729.P13400288438903761653

/-!
# A268730: a(n) = Product_{k = 0..n} 2*(8*k + 5).

The programs for A268730, the canonical program `A268730.P3218529334812067018` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268730 has offset 0).

The definition of A268730 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A268730.P3218529334812067018

`2*(8*n+5)*a(n-1)` with `a(0)=10`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A268730

/-- `2*(8*n+5)*a(n-1)` -/
def P3218529334812067018.Spec : Prop :=
  ∀ n, (P3218529334812067018.a n : ℤ) = A268730 n

theorem P3218529334812067018.correct : P3218529334812067018.Spec := by
  intro n
  simp only [A268730]

end A268730

/-! ## A268730.P17246399244727678162

`2^(n+1)*A147625(n+2)`
-/

namespace A268730.P17246399244727678162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * A147625 (n + 2)

end

end A268730.P17246399244727678162

namespace A268730

/-- `2^(n+1)*A147625(n+2)` -/
def P17246399244727678162.Spec : Prop :=
  ∀ n, P17246399244727678162.a n = A268730 n

end A268730

/-! ## A268730.P4519693762026525897

`∏[16*n+10]`
-/

namespace A268730.P4519693762026525897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 * n + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A268730.P4519693762026525897

namespace A268730

/-- `∏[16*n+10]` -/
def P4519693762026525897.Spec : Prop :=
  ∀ n, (P4519693762026525897.a n : ℤ) = A268730 n

end A268730

/-! ## A268730.P17721071145622014878

`abs(∏[a(n-1)+16])` with `a(0)=10`
-/

namespace A268730.P17721071145622014878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10] fun n f1 =>
  f1 (n - 1) + 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A268730.P17721071145622014878

namespace A268730

/-- `abs(∏[a(n-1)+16])` -/
def P17721071145622014878.Spec : Prop :=
  ∀ n, (P17721071145622014878.a n : ℤ) = A268730 n

end A268730

/-! ## A268730.P11838827572508687096

`floor(∏[a(n-1)+16])` with `a(0)=10`

`floor` is left out, it is the identity on integers.
-/

namespace A268730.P11838827572508687096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10] fun n f1 =>
  f1 (n - 1) + 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A268730.P11838827572508687096

namespace A268730

/-- `floor(∏[a(n-1)+16])` -/
def P11838827572508687096.Spec : Prop :=
  ∀ n, (P11838827572508687096.a n : ℤ) = A268730 n

end A268730

/-!
# A268731: Period of the decimal expansion of 1/h(n) where h(n) is the length of the finite sequence {n, f(n), f(f(n)),...,1} in the Collatz (or 3n + 1) problem.

The programs for A268731, there is no canonical definition to state claims against.
-/

/-! ## A268731.P5365700262101533152

`A007732(A006577(n+2))`
-/

namespace A268731.P5365700262101533152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (A006577 (n + 2)).toNat

end

end A268731.P5365700262101533152

/-! ## A268731.P13095254525184219338

`A007732(Δ[A058633(n+1)])`
-/

namespace A268731.P13095254525184219338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058633 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (f1 (n + 1) - f1 n).toNat

end

end A268731.P13095254525184219338

/-! ## A268731.P15902495909413206928

`A007732(A008908(n+2)-1)`
-/

namespace A268731.P15902495909413206928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (A008908 (n + 2) - 1).toNat

end

end A268731.P15902495909413206928

/-! ## A268731.P11992679272224673648

`A007732(A058261(n+1)/(n+2))`
-/

namespace A268731.P11992679272224673648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (SequenceMachineLib.roundAway ((A058261 (n + 1) : ℚ) / (n + 2 : ℚ))).toNat

end

end A268731.P11992679272224673648

/-! ## A268731.P17011945136593417849

`A007732(A006667(n+2)+A006666(n+2))`
-/

namespace A268731.P17011945136593417849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (A006667 (n + 2) + A006666 (n + 2)).toNat

end

end A268731.P17011945136593417849

/-! ## A268731.P2552374911372803242

`A007732(A008908(A006370(n+2)))`
-/

namespace A268731.P2552374911372803242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (A008908 (A006370 (n + 2)).toNat).toNat

end

end A268731.P2552374911372803242

/-!
# A268732: Sum of the numbers of divisors of gcd(x,y) with x*y <= n.

The programs for A268732, the canonical program `A268732.P7253333164487900378` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268732 has offset 1).

The definition of A268732 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268732.P7253333164487900378

`∑[A124315(n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A268732

/-- `∑[A124315(n+1)]` -/
def P7253333164487900378.Spec : Prop :=
  ∀ n, P7253333164487900378.a n = A268732 (n + 1)

theorem P7253333164487900378.correct : P7253333164487900378.Spec := by
  intro n
  simp only [A268732, Nat.add_sub_cancel]

end A268732

/-! ## A268732.P8922443488216391135

`∑[∑{d}[n+1, A046951(#)]]`
-/

namespace A268732.P8922443488216391135
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A046951 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268732.P8922443488216391135

namespace A268732

/-- `∑[∑{d}[n+1, A046951(#)]]` -/
def P8922443488216391135.Spec : Prop :=
  ∀ n, P8922443488216391135.a n = A268732 (n + 1)

end A268732

/-! ## A268732.P11023932922340917245

`∑[∏{e}[n+1, A002620(#+2)]]`
-/

namespace A268732.P11023932922340917245
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A002620 (Nat.factorization (f2 n) p + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268732.P11023932922340917245

namespace A268732

/-- `∑[∏{e}[n+1, A002620(#+2)]]` -/
def P11023932922340917245.Spec : Prop :=
  ∀ n, P11023932922340917245.a n = A268732 (n + 1)

end A268732

/-! ## A268732.P5171059266126230651

`∑[∏{e}[n+1, A008642(2*#)]]`
-/

namespace A268732.P5171059266126230651
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A008642 (2 * Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268732.P5171059266126230651

namespace A268732

/-- `∑[∏{e}[n+1, A008642(2*#)]]` -/
def P5171059266126230651.Spec : Prop :=
  ∀ n, P5171059266126230651.a n = A268732 (n + 1)

end A268732

/-! ## A268732.P10908193364054803205

`∑[∏{e}[n+1, A131508((#+2)²)]]`
-/

namespace A268732.P10908193364054803205
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A131508 ((Nat.factorization (f2 n) p + 2) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268732.P10908193364054803205

namespace A268732

/-- `∑[∏{e}[n+1, A131508((#+2)²)]]` -/
def P10908193364054803205.Spec : Prop :=
  ∀ n, P10908193364054803205.a n = A268732 (n + 1)

end A268732

/-! ## A268732.P17564884598562219813

`∑[A046951(n+1)*A322483(n+1)]`
-/

namespace A268732.P17564884598562219813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1) * A322483 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268732.P17564884598562219813

namespace A268732

/-- `∑[A046951(n+1)*A322483(n+1)]` -/
def P17564884598562219813.Spec : Prop :=
  ∀ n, P17564884598562219813.a n = A268732 (n + 1)

end A268732

/-!
# A268733: a(n) = A000203(A251720(n)).

The programs for A268733, the canonical program `A268733.P4062617571701723603` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268733 has offset 1).

The definition of A268733 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A268733.P4062617571701723603

`A000203(A251720(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A268733

/-- `A000203(A251720(n+1))` -/
def P4062617571701723603.Spec : Prop :=
  ∀ n, P4062617571701723603.a n = A268733 (n + 1)

theorem P4062617571701723603.correct : P4062617571701723603.Spec := by
  intro n
  simp only [A268733, Nat.add_sub_cancel]

end A268733

/-! ## A268733.P14598221901413426913

`(A065091(n+1)+1)*A060800(n+1)`
-/

namespace A268733.P14598221901413426913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A065091 (n + 1) + 1) * A060800 (n + 1)

end

end A268733.P14598221901413426913

namespace A268733

/-- `(A065091(n+1)+1)*A060800(n+1)` -/
def P14598221901413426913.Spec : Prop :=
  ∀ n, P14598221901413426913.a n = A268733 (n + 1)

end A268733

/-! ## A268733.P811271282393809247

`A180617(n+1)+A000040(n+1)*A123134(n+1)`
-/

namespace A268733.P811271282393809247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180617 (n + 1) + A000040 (n + 1) * A123134 (n + 1)

end

end A268733.P811271282393809247

namespace A268733

/-- `A180617(n+1)+A000040(n+1)*A123134(n+1)` -/
def P811271282393809247.Spec : Prop :=
  ∀ n, P811271282393809247.a n = A268733 (n + 1)

end A268733

/-! ## A268733.P10155468116808464786

`A008864(n+2)*A060800(n+1)`
-/

namespace A268733.P10155468116808464786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 2) * A060800 (n + 1)

end

end A268733.P10155468116808464786

namespace A268733

/-- `A008864(n+2)*A060800(n+1)` -/
def P10155468116808464786.Spec : Prop :=
  ∀ n, P10155468116808464786.a n = A268733 (n + 1)

end A268733

/-! ## A268733.P14441380530354273055

`(A000040(n+2)+1)*A060800(n+1)`
-/

namespace A268733.P14441380530354273055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 2) + 1) * A060800 (n + 1)

end

end A268733.P14441380530354273055

namespace A268733

/-- `(A000040(n+2)+1)*A060800(n+1)` -/
def P14441380530354273055.Spec : Prop :=
  ∀ n, P14441380530354273055.a n = A268733 (n + 1)

end A268733

/-! ## A268733.P2555099621404343490

`(A008864(n+1)+A001248(n+1))*A008864(n+2)`
-/

namespace A268733.P2555099621404343490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008864 (n + 1) + A001248 (n + 1)) * A008864 (n + 2)

end

end A268733.P2555099621404343490

namespace A268733

/-- `(A008864(n+1)+A001248(n+1))*A008864(n+2)` -/
def P2555099621404343490.Spec : Prop :=
  ∀ n, P2555099621404343490.a n = A268733 (n + 1)

end A268733

/-! ## A268733.P2940682760458953591

`(A066872(n+1)+A000040(n+1))*A008864(n+2)`
-/

namespace A268733.P2940682760458953591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A066872 (n + 1) + A000040 (n + 1)) * A008864 (n + 2)

end

end A268733.P2940682760458953591

namespace A268733

/-- `(A066872(n+1)+A000040(n+1))*A008864(n+2)` -/
def P2940682760458953591.Spec : Prop :=
  ∀ n, P2940682760458953591.a n = A268733 (n + 1)

end A268733

/-! ## A268733.P14596105061651001792

`A008864(n+2)+A008864(n+1)*A123134(n+1)`
-/

namespace A268733.P14596105061651001792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 2) + A008864 (n + 1) * A123134 (n + 1)

end

end A268733.P14596105061651001792

namespace A268733

/-- `A008864(n+2)+A008864(n+1)*A123134(n+1)` -/
def P14596105061651001792.Spec : Prop :=
  ∀ n, P14596105061651001792.a n = A268733 (n + 1)

end A268733

/-! ## A268733.P13752358768751175173

`A008864(n+2)+A000040(n+1)*A180617(n+1)`
-/

namespace A268733.P13752358768751175173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 2) + A000040 (n + 1) * A180617 (n + 1)

end

end A268733.P13752358768751175173

namespace A268733

/-- `A008864(n+2)+A000040(n+1)*A180617(n+1)` -/
def P13752358768751175173.Spec : Prop :=
  ∀ n, P13752358768751175173.a n = A268733 (n + 1)

end A268733

/-! ## A268733.P2835310496910944086

`A008864(n+2)+A008864(n+2)*A036690(n+1)`
-/

namespace A268733.P2835310496910944086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 2) + A008864 (n + 2) * A036690 (n + 1)

end

end A268733.P2835310496910944086

namespace A268733

/-- `A008864(n+2)+A008864(n+2)*A036690(n+1)` -/
def P2835310496910944086.Spec : Prop :=
  ∀ n, P2835310496910944086.a n = A268733 (n + 1)

end A268733

/-! ## A268733.P1255607570652818133

`(A110833(n+1)-A000040(n+1))*A008864(n+2)`
-/

namespace A268733.P1255607570652818133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A110833 (n + 1) - A000040 (n + 1)) * A008864 (n + 2)

end

end A268733.P1255607570652818133

namespace A268733

/-- `(A110833(n+1)-A000040(n+1))*A008864(n+2)` -/
def P1255607570652818133.Spec : Prop :=
  ∀ n, P1255607570652818133.a n = A268733 (n + 1)

end A268733

/-! ## A268733.P936987504791686567

`(A131991(n+1)-A030078(n+1))*A008864(n+2)`
-/

namespace A268733.P936987504791686567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131991 (n + 1) - A030078 (n + 1)) * A008864 (n + 2)

end

end A268733.P936987504791686567

namespace A268733

/-- `(A131991(n+1)-A030078(n+1))*A008864(n+2)` -/
def P936987504791686567.Spec : Prop :=
  ∀ n, P936987504791686567.a n = A268733 (n + 1)

end A268733

/-! ## A268733.P11462835950715696033

`(A060800(n+2)-A001248(n+2))*A060800(n+1)`
-/

namespace A268733.P11462835950715696033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A060800 (n + 2) - A001248 (n + 2)) * A060800 (n + 1)

end

end A268733.P11462835950715696033

namespace A268733

/-- `(A060800(n+2)-A001248(n+2))*A060800(n+1)` -/
def P11462835950715696033.Spec : Prop :=
  ∀ n, P11462835950715696033.a n = A268733 (n + 1)

end A268733

/-! ## A268733.P6000705646200213335

`A060800(n+1)/A001248(n+2)*A135178(n+2)`
-/

namespace A268733.P6000705646200213335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060800 (n + 1) : ℚ) / (A001248 (n + 2) : ℚ) * (A135178 (n + 2) : ℚ)

end

end A268733.P6000705646200213335

namespace A268733

/-- `A060800(n+1)/A001248(n+2)*A135178(n+2)` -/
def P6000705646200213335.Spec : Prop :=
  ∀ n, P6000705646200213335.a n = (A268733 (n + 1) : ℚ)

end A268733

/-! ## A268733.P9995516441462857848

`A060800(n+1)/A036690(n+2)*A178398(n+2)`
-/

namespace A268733.P9995516441462857848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060800 (n + 1) : ℚ) / (A036690 (n + 2) : ℚ) * (A178398 (n + 2) : ℚ)

end

end A268733.P9995516441462857848

namespace A268733

/-- `A060800(n+1)/A036690(n+2)*A178398(n+2)` -/
def P9995516441462857848.Spec : Prop :=
  ∀ n, P9995516441462857848.a n = (A268733 (n + 1) : ℚ)

end A268733

/-!
# A268734: Number of n X n binary arrays with some 1 horizontally or vertically adjacent to some other 1 exactly once.

The programs for A268734, there is no canonical definition to state claims against.
-/

/-! ## A268734.P2229133400904255002

`A268740(∑[4*n]+1)`
-/

namespace A268734.P2229133400904255002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268740 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A268734.P2229133400904255002

/-! ## A268734.P1881333185762931433

`lcm(2, A268740(A001844(n)))`
-/

namespace A268734.P1881333185762931433
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A268740 (A001844 n).toNat)

end

end A268734.P1881333185762931433

/-! ## A268734.P13928190644424152672

`record[A003982(n)*A268740(n+1)]`
-/

namespace A268734.P13928190644424152672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A268740 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268734.P13928190644424152672

/-! ## A268734.P6098693992253362455

`A268743(n+1)-A006506(n+1)`
-/

namespace A268734.P6098693992253362455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268743 (n + 1) - A006506 (n + 1)

end

end A268734.P6098693992253362455

/-! ## A268734.P10487873608972425011

`A007318(∑[n])*A268740(A001844(n))`
-/

namespace A268734.P10487873608972425011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A268740 (A001844 n).toNat

end

end A268734.P10487873608972425011

/-!
# A268735: Number of n X 3 binary arrays with some 1 horizontally or vertically adjacent to some other 1 exactly once.

The programs for A268735, there is no canonical definition to state claims against.
-/

/-! ## A268735.P15295829916577866683

`A268745(n+1)-A089934(A167614(n+1))`
-/

namespace A268735.P15295829916577866683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268745 (n + 1) - A089934 (A167614 (n + 1)).toNat

end

end A268735.P15295829916577866683

/-! ## A268735.P15445730895804552714

`A268740(∑[n+2]+4)`
-/

namespace A268735.P15445730895804552714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268740 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A268735.P15445730895804552714

/-! ## A268735.P16604648748839070242

`gcd(A000038(n), A268740(A167614(n+1)))`
-/

namespace A268735.P16604648748839070242
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A268740 (A167614 (n + 1)).toNat)

end

end A268735.P16604648748839070242

/-! ## A268735.P15863847699035573451

`A268740(A167614(n+1))+A000007(n+1)`
-/

namespace A268735.P15863847699035573451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268740 (A167614 (n + 1)).toNat + A000007 (n + 1)

end

end A268735.P15863847699035573451

/-! ## A268735.P9423787287273817700

`A268740(A167614(n+1))%A268746(n+1)`
-/

namespace A268735.P9423787287273817700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A268740 (A167614 (n + 1)).toNat) (A268746 (n + 1))

end

end A268735.P9423787287273817700

/-!
# A268736: Number of nX4 binary arrays with some 1 horizontally or vertically adjacent to some other 1 exactly once.

The programs for A268736, there is no canonical definition to state claims against.
-/

/-! ## A268736.P8945200311066193601

`A268740(A052905(n)+9)`
-/

namespace A268736.P8945200311066193601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268740 (A052905 n + 9).toNat

end

end A268736.P8945200311066193601

/-! ## A268736.P13831979623574408122

`A268740(A055999(n)+10)`
-/

namespace A268736.P13831979623574408122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268740 (A055999 n + 10).toNat

end

end A268736.P13831979623574408122

/-! ## A268736.P17392149089731038705

`A268740(A167614(n+2)+1)`
-/

namespace A268736.P17392149089731038705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268740 (A167614 (n + 2) + 1).toNat

end

end A268736.P17392149089731038705

/-! ## A268736.P5856328594564445557

`A268740(Δ[A023545(n+1)-n²])`
-/

namespace A268736.P5856328594564445557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268740 (f1 (n + 1) - f1 n).toNat

end

end A268736.P5856328594564445557

/-! ## A268736.P13419267966435298998

`record[A073424(n+3)*A268740(n+7)]`
-/

namespace A268736.P13419267966435298998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (n + 3) * A268740 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268736.P13419267966435298998

/-!
# A268737: Number of nX5 binary arrays with some 1 horizontally or vertically adjacent to some other 1 exactly once.

The programs for A268737, there is no canonical definition to state claims against.
-/

/-! ## A268737.P1727577003366239291

`A268747(n+1)-A089936(n+1)`
-/

namespace A268737.P1727577003366239291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268747 (n + 1) - A089936 (n + 1)

end

end A268737.P1727577003366239291

/-! ## A268737.P6374275859006806985

`A268740(A167499(n+3))`
-/

namespace A268737.P6374275859006806985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268740 (A167499 (n + 3)).toNat

end

end A268737.P6374275859006806985

/-! ## A268737.P14522845288445617976

`A268740(A155212(n)+13)`
-/

namespace A268737.P14522845288445617976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268740 (A155212 n + 13).toNat

end

end A268737.P14522845288445617976

/-! ## A268737.P7302917263336726564

`A268740(A374005(n+1))`
-/

namespace A268737.P7302917263336726564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268740 (A374005 (n + 1)).toNat

end

end A268737.P7302917263336726564

/-! ## A268737.P5373968130413174193

`A268740(eq[4, A193592(n)])`
-/

namespace A268737.P5373968130413174193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268740 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268737.P5373968130413174193

/-!
# A268738: Number of nX6 binary arrays with some 1 horizontally or vertically adjacent to some other 1 exactly once.

The programs for A268738, there is no canonical definition to state claims against.
-/

/-! ## A268738.P18321217556955947750

`A268748(n+1)-A089937(n+1)`
-/

namespace A268738.P18321217556955947750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268748 (n + 1) - A089937 (n + 1)

end

end A268738.P18321217556955947750

/-! ## A268738.P9163782485349165944

`A268740(A374007(n+1))`
-/

namespace A268738.P9163782485349165944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268740 (A374007 (n + 1)).toNat

end

end A268738.P9163782485349165944

/-! ## A268738.P7878381550778103389

`A268740(A052905(n+3))`
-/

namespace A268738.P7878381550778103389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268740 (A052905 (n + 3)).toNat

end

end A268738.P7878381550778103389

/-! ## A268738.P7791077609778684688

`A268740(eq[3, A219347(n)])`
-/

namespace A268738.P7791077609778684688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268740 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268738.P7791077609778684688

/-! ## A268738.P913792319754757009

`A268740(eq[5, A193592(n)])`
-/

namespace A268738.P913792319754757009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268740 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268738.P913792319754757009

/-!
# A268739: Number of nX7 binary arrays with some 1 horizontally or vertically adjacent to some other 1 exactly once.

The programs for A268739, there is no canonical definition to state claims against.
-/

/-! ## A268739.P328505414428123515

`A268749(n+1)-A089938(n+1)`
-/

namespace A268739.P328505414428123515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268749 (n + 1) - A089938 (n + 1)

end

end A268739.P328505414428123515

/-! ## A268739.P8342092152874621430

`A268740(A374008(n+1))`
-/

namespace A268739.P8342092152874621430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268740 (A374008 (n + 1)).toNat

end

end A268739.P8342092152874621430

/-! ## A268739.P18134432059850329560

`A268740(A055999(n+4))`
-/

namespace A268739.P18134432059850329560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268740 (A055999 (n + 4)).toNat

end

end A268739.P18134432059850329560

/-! ## A268739.P12686547459025679120

`A268740(eq[4, A219347(n)])`
-/

namespace A268739.P12686547459025679120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268740 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268739.P12686547459025679120

/-! ## A268739.P12133202433242713136

`A268740(eq[6, A193592(n)])`
-/

namespace A268739.P12133202433242713136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268740 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268739.P12133202433242713136

/-!
# A268740: T(n,k)=Number of nXk binary arrays with some 1 horizontally or vertically adjacent to some other 1 exactly once.

The programs for A268740, there is no canonical definition to state claims against.
-/

/-! ## A268740.P12092042569500276303

`A268750(n+1)-A089934(n+1)`
-/

namespace A268740.P12092042569500276303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268750 (n + 1) - A089934 (n + 1)

end

end A268740.P12092042569500276303

/-!
# A268741: a(n) = 2*a(n - 2) - a(n - 1) for n>1, a(0) = 4, a(1) = 5.

The programs for A268741, the canonical program `A268741.P17593506076934876424` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268741 has offset 0).

The definition of A268741 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-2)-a(n-1)` (program `A268741.P17593506076934876424`, by `A268741.P17593506076934876424.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A268741.P15151844900047167823

`(13-(-2)^n)/3`
-/

namespace A268741.P15151844900047167823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (13 - (-2) ^ n : ℚ) / 3

end

end A268741.P15151844900047167823

namespace A268741

/-- `(13-(-2)^n)/3` -/
def P15151844900047167823.Spec : Prop :=
  ∀ n, P15151844900047167823.a n = (A268741 n : ℚ)

theorem P15151844900047167823.correct : P15151844900047167823.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A268741, Nat.add_sub_cancel, A268741.P15151844900047167823.a, A268741.P17593506076934876424.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A268741, Nat.add_sub_cancel, A268741.P15151844900047167823.a, A268741.P17593506076934876424.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A268741

/-! ## A268741.P17593506076934876424

`2*a(n-2)-a(n-1)` with `a(0)=4, a(1)=5`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A268741

/-- `2*a(n-2)-a(n-1)` -/
def P17593506076934876424.Spec : Prop :=
  ∀ n, P17593506076934876424.a n = A268741 n

theorem P17593506076934876424.correct : P17593506076934876424.Spec := by
  intro n
  simp only [A268741]

end A268741

/-! ## A268741.P6813791432082874477

`A084247(n)+3`
-/

namespace A268741.P6813791432082874477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084247 n + 3

end

end A268741.P6813791432082874477

namespace A268741

/-- `A084247(n)+3` -/
def P6813791432082874477.Spec : Prop :=
  ∀ n, P6813791432082874477.a n = A268741 n

end A268741

/-! ## A268741.P2988096196446889317

`4-(-1)^n*A001045(n)`
-/

namespace A268741.P2988096196446889317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - (-1) ^ n * A001045 n

end

end A268741.P2988096196446889317

namespace A268741

/-- `4-(-1)^n*A001045(n)` -/
def P2988096196446889317.Spec : Prop :=
  ∀ n, P2988096196446889317.a n = A268741 n

end A268741

/-! ## A268741.P9831615738557395225

`(-1)^n*A154570(n+1)+1`
-/

namespace A268741.P9831615738557395225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A154570 (n + 1) + 1

end

end A268741.P9831615738557395225

namespace A268741

/-- `(-1)^n*A154570(n+1)+1` -/
def P9831615738557395225.Spec : Prop :=
  ∀ n, P9831615738557395225.a n = A268741 n

end A268741

/-! ## A268741.P16937236139015317550

`∑[ogf((4+9x)/(1+2x))]`
-/

namespace A268741.P16937236139015317550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 9] [1, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268741.P16937236139015317550

namespace A268741

/-- `∑[ogf((4+9x)/(1+2x))]` -/
def P16937236139015317550.Spec : Prop :=
  ∀ n, P16937236139015317550.a n = A268741 n

end A268741

/-! ## A268741.P12644690449950288574

`ogf((4+9x)/(1+x-2x^2))`
-/

namespace A268741.P12644690449950288574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 9] [1, 1, -2] n

end

end A268741.P12644690449950288574

namespace A268741

/-- `ogf((4+9x)/(1+x-2x^2))` -/
def P12644690449950288574.Spec : Prop :=
  ∀ n, P12644690449950288574.a n = A268741 n

end A268741

/-! ## A268741.P1975160230235933940

`13-2*a(n-1)` with `a(0)=4`
-/

namespace A268741.P1975160230235933940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  13 - 2 * a (n - 1)

end

end A268741.P1975160230235933940

namespace A268741

/-- `13-2*a(n-1)` -/
def P1975160230235933940.Spec : Prop :=
  ∀ n, P1975160230235933940.a n = A268741 n

end A268741

/-! ## A268741.P1947940332548959552

`13-a(n-1)/sqrt(1/4)` with `a(0)=4`
-/

namespace A268741.P1947940332548959552
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [4] fun n a =>
  13 - a (n - 1) / Real.sqrt ((1 : ℚ) / 4 : ℝ)

end

end A268741.P1947940332548959552

namespace A268741

/-- `13-a(n-1)/sqrt(1/4)` -/
def P1947940332548959552.Spec : Prop :=
  ∀ n, P1947940332548959552.a n = (A268741 n : ℝ)

end A268741

/-! ## A268741.P7539790641863695848

`a(n-1)+(-2)^(n-1)` with `a(0)=4`
-/

namespace A268741.P7539790641863695848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) + (-2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A268741.P7539790641863695848

namespace A268741

/-- `a(n-1)+(-2)^(n-1)` -/
def P7539790641863695848.Spec : Prop :=
  ∀ n, P7539790641863695848.a n = (A268741 n : ℚ)

end A268741

/-! ## A268741.P14285289542928915295

`13-(a(n-1)+a(n-1))` with `a(0)=4`
-/

namespace A268741.P14285289542928915295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  13 - (a (n - 1) + a (n - 1))

end

end A268741.P14285289542928915295

namespace A268741

/-- `13-(a(n-1)+a(n-1))` -/
def P14285289542928915295.Spec : Prop :=
  ∀ n, P14285289542928915295.a n = A268741 n

end A268741

/-! ## A268741.P876577846892099509

`13-a(n-1)-a(n-1)` with `a(0)=4`
-/

namespace A268741.P876577846892099509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  13 - a (n - 1) - a (n - 1)

end

end A268741.P876577846892099509

namespace A268741

/-- `13-a(n-1)-a(n-1)` -/
def P876577846892099509.Spec : Prop :=
  ∀ n, P876577846892099509.a n = A268741 n

end A268741

/-! ## A268741.P9502609384930195343

`6-A140966(n)`
-/

namespace A268741.P9502609384930195343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - A140966 n

end

end A268741.P9502609384930195343

namespace A268741

/-- `6-A140966(n)` -/
def P9502609384930195343.Spec : Prop :=
  ∀ n, P9502609384930195343.a n = A268741 n

end A268741

/-! ## A268741.P7060590646185530185

`∑[A123344(n)]+3`
-/

namespace A268741.P7060590646185530185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123344 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A268741.P7060590646185530185

namespace A268741

/-- `∑[A123344(n)]+3` -/
def P7060590646185530185.Spec : Prop :=
  ∀ n, P7060590646185530185.a n = A268741 n

end A268741

/-! ## A268741.P10982469149796624065

`Δ[A140962(n)]+5`
-/

namespace A268741.P10982469149796624065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140962 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 5

end

end A268741.P10982469149796624065

namespace A268741

/-- `Δ[A140962(n)]+5` -/
def P10982469149796624065.Spec : Prop :=
  ∀ n, P10982469149796624065.a n = A268741 n

end A268741

/-! ## A268741.P6900153291532085322

`5-A078052(2*n)`
-/

namespace A268741.P6900153291532085322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A078052 (2 * n)

end

end A268741.P6900153291532085322

namespace A268741

/-- `5-A078052(2*n)` -/
def P6900153291532085322.Spec : Prop :=
  ∀ n, P6900153291532085322.a n = A268741 n

end A268741

/-! ## A268741.P11897261416874852612

`A122803(n-1)+a(n-1)` with `a(0)=4`
-/

namespace A268741.P11897261416874852612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A122803 (n - 1) + a (n - 1)

end

end A268741.P11897261416874852612

namespace A268741

/-- `A122803(n-1)+a(n-1)` -/
def P11897261416874852612.Spec : Prop :=
  ∀ n, P11897261416874852612.a n = A268741 n

end A268741

/-! ## A268741.P8858742297781855647

`A167193(n)+A010703(n)`
-/

namespace A268741.P8858742297781855647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167193 n + A010703 n

end

end A268741.P8858742297781855647

namespace A268741

/-- `A167193(n)+A010703(n)` -/
def P8858742297781855647.Spec : Prop :=
  ∀ n, P8858742297781855647.a n = A268741 n

end A268741

/-! ## A268741.P14617041221179604073

`5-A151575(n)`
-/

namespace A268741.P14617041221179604073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A151575 n

end

end A268741.P14617041221179604073

namespace A268741

/-- `5-A151575(n)` -/
def P14617041221179604073.Spec : Prop :=
  ∀ n, P14617041221179604073.a n = A268741 n

end A268741

/-! ## A268741.P6980101756626497680

`A140504(n)-A052992(n)`
-/

namespace A268741.P6980101756626497680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140504 n - A052992 n

end

end A268741.P6980101756626497680

namespace A268741

/-- `A140504(n)-A052992(n)` -/
def P6980101756626497680.Spec : Prop :=
  ∀ n, P6980101756626497680.a n = A268741 n

end A268741

/-!
# A268742: Expansion of x*(1 + x + 18*x^2 + 10*x^3 - x^4 + 11*x^5 + 18*x^6 + 2*x^7) / (1 - x - 2*x^4 + 2*x^5 + x^8 - x^9).

The programs for A268742, the canonical program `A268742.P11230092733346406891` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268742 has offset 0).

The definition of A268742 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x+x^2+18x^3+10x^4-x^5+11x^6+18x^7+2x^8)/(1-x-2x^4+2x^5+x^8-x^9))` (program `A268742.P11230092733346406891`, by `A268742.P11230092733346406891.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A268742.P11230092733346406891

`ogf((x+x^2+18x^3+10x^4-x^5+11x^6+18x^7+2x^8)/(1-x-2x^4+2x^5+x^8-x^9))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A268742

/-- `ogf((x+x^2+18x^3+10x^4-x^5+11x^6+18x^7+2x^8)/(1-x-2x^4+2x^5+x^8-x^9))` -/
def P11230092733346406891.Spec : Prop :=
  ∀ n, P11230092733346406891.a n = A268742 n

theorem P11230092733346406891.correct : P11230092733346406891.Spec := by
  intro n
  simp only [A268742]

end A268742

/-! ## A268742.P2846746230117598215

`eq[1, A076948(A063208(n+1))]`
-/

namespace A268742.P2846746230117598215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076948 (A063208 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A268742.P2846746230117598215

namespace A268742

/-- `eq[1, A076948(A063208(n+1))]` -/
def P2846746230117598215.Spec : Prop :=
  ∀ n, (P2846746230117598215.a n : ℤ) = A268742 n

end A268742

/-!
# A268743: Number of n X n binary arrays with some element plus some horizontally or vertically adjacent neighbor totalling two no more than once.

The programs for A268743, there is no canonical definition to state claims against.
-/

/-! ## A268743.P6434884864170098740

`A268750((n+1)²+n²)`
-/

namespace A268743.P6434884864170098740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268750 ((n + 1) ^ 2 + n ^ 2)

end

end A268743.P6434884864170098740

/-! ## A268743.P8163166221043614302

`record[A003982(n)*A268750(n+1)]`
-/

namespace A268743.P8163166221043614302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A268750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268743.P8163166221043614302

/-! ## A268743.P12544360011719611088

`record[gcd(A114327(n), A268750(n+1))]`
-/

namespace A268743.P12544360011719611088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A268750 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268743.P12544360011719611088

/-! ## A268743.P16499333771005176112

`A268734(n+1)+A006506(n+1)`
-/

namespace A268743.P16499333771005176112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268734 (n + 1) + A006506 (n + 1)

end

end A268743.P16499333771005176112

/-! ## A268743.P2421738537331227267

`A268734(n+1)+A089934(∑[4*n]+1)`
-/

namespace A268743.P2421738537331227267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268734 (n + 1) + A089934 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A268743.P2421738537331227267

/-!
# A268744: Number of n X 2 binary arrays with some element plus some horizontally or vertically adjacent neighbor totalling two no more than once.

The programs for A268744, the canonical program `A268744.P7767334516591821469` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268744 has offset 1).

The definition of A268744 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268744.P12418231177754312092

`ogf((4-5x-4x^2-x^3)/(1-4x+2x^2+4x^3+x^4))`
-/

namespace A268744.P12418231177754312092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -5, -4, -1] [1, -4, 2, 4, 1] n

end

end A268744.P12418231177754312092

namespace A268744

/-- `ogf((4-5x-4x^2-x^3)/(1-4x+2x^2+4x^3+x^4))` -/
def P12418231177754312092.Spec : Prop :=
  ∀ n, P12418231177754312092.a n = A268744 (n + 1)

end A268744

/-! ## A268744.P7767334516591821469

`A286814(n+1)+A001333(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A268744

/-- `A286814(n+1)+A001333(n)` -/
def P7767334516591821469.Spec : Prop :=
  ∀ n, P7767334516591821469.a n = A268744 (n + 1)

theorem P7767334516591821469.correct : P7767334516591821469.Spec := by
  intro n
  simp only [A268744, Nat.add_sub_cancel]

end A268744

/-! ## A268744.P11443014142025350219

`A119915(n)+2*A292327(n)`
-/

namespace A268744.P11443014142025350219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119915 n + 2 * A292327 n

end

end A268744.P11443014142025350219

namespace A268744

/-- `A119915(n)+2*A292327(n)` -/
def P11443014142025350219.Spec : Prop :=
  ∀ n, P11443014142025350219.a n = A268744 (n + 1)

end A268744

/-! ## A268744.P3445357859591413961

`A093967(n+1)+A001333(n+2)`
-/

namespace A268744.P3445357859591413961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093967 (n + 1) + A001333 (n + 2)

end

end A268744.P3445357859591413961

namespace A268744

/-- `A093967(n+1)+A001333(n+2)` -/
def P3445357859591413961.Spec : Prop :=
  ∀ n, P3445357859591413961.a n = A268744 (n + 1)

end A268744

/-! ## A268744.P9495498117329556328

`A361732(n+2)+A000129(n+2)`
-/

namespace A268744.P9495498117329556328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361732 (n + 2) + A000129 (n + 2)

end

end A268744.P9495498117329556328

namespace A268744

/-- `A361732(n+2)+A000129(n+2)` -/
def P9495498117329556328.Spec : Prop :=
  ∀ n, P9495498117329556328.a n = A268744 (n + 1)

end A268744

/-! ## A268744.P779307718703512837

`A361732(n+2)+A215928(n+2)`
-/

namespace A268744.P779307718703512837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361732 (n + 2) + A215928 (n + 2)

end

end A268744.P779307718703512837

namespace A268744

/-- `A361732(n+2)+A215928(n+2)` -/
def P779307718703512837.Spec : Prop :=
  ∀ n, P779307718703512837.a n = A268744 (n + 1)

end A268744

/-! ## A268744.P17426594363379621612

`A088211(n+1)+2*A000129(n+1)`
-/

namespace A268744.P17426594363379621612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088211 (n + 1) + 2 * A000129 (n + 1)

end

end A268744.P17426594363379621612

namespace A268744

/-- `A088211(n+1)+2*A000129(n+1)` -/
def P17426594363379621612.Spec : Prop :=
  ∀ n, P17426594363379621612.a n = A268744 (n + 1)

end A268744

/-! ## A268744.P15914014439691728412

`A143607(2*(n+1))+A093967(n+1)`
-/

namespace A268744.P15914014439691728412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143607 (2 * (n + 1)) + A093967 (n + 1)

end

end A268744.P15914014439691728412

namespace A268744

/-- `A143607(2*(n+1))+A093967(n+1)` -/
def P15914014439691728412.Spec : Prop :=
  ∀ n, P15914014439691728412.a n = A268744 (n + 1)

end A268744

/-! ## A268744.P9137496360755525199

`A286814(n+1)+A002965(2*n+1)`
-/

namespace A268744.P9137496360755525199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286814 (n + 1) + A002965 (2 * n + 1)

end

end A268744.P9137496360755525199

namespace A268744

/-- `A286814(n+1)+A002965(2*n+1)` -/
def P9137496360755525199.Spec : Prop :=
  ∀ n, P9137496360755525199.a n = A268744 (n + 1)

end A268744

/-! ## A268744.P6022927276929664710

`A048654(n+1)+n*A000129(n+1)`
-/

namespace A268744.P6022927276929664710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048654 (n + 1) + (n : ℤ) * A000129 (n + 1)

end

end A268744.P6022927276929664710

namespace A268744

/-- `A048654(n+1)+n*A000129(n+1)` -/
def P6022927276929664710.Spec : Prop :=
  ∀ n, P6022927276929664710.a n = A268744 (n + 1)

end A268744

/-! ## A268744.P232641339429151482

`A000129(n+1)+A286814(n+1)-A000129(n)`
-/

namespace A268744.P232641339429151482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) + (A286814 (n + 1) - A000129 n)

end

end A268744.P232641339429151482

namespace A268744

/-- `A000129(n+1)+A286814(n+1)-A000129(n)` -/
def P232641339429151482.Spec : Prop :=
  ∀ n, P232641339429151482.a n = A268744 (n + 1)

end A268744

/-! ## A268744.P11526642153513254989

`4*a(n-1)-2*a(n-2)-4*a(n-3)-a(n-4)` with `a(0)=4, a(1)=11, a(2)=32, a(3)=89`
-/

namespace A268744.P11526642153513254989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 11, 32, 89] fun n a =>
  4 * a (n - 1) - 2 * a (n - 2) - 4 * a (n - 3) - a (n - 4)

end

end A268744.P11526642153513254989

namespace A268744

/-- `4*a(n-1)-2*a(n-2)-4*a(n-3)-a(n-4)` -/
def P11526642153513254989.Spec : Prop :=
  ∀ n, P11526642153513254989.a n = A268744 (n + 1)

end A268744

/-! ## A268744.P1294358135600839984

`A291264(n)-A093967(n)`
-/

namespace A268744.P1294358135600839984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291264 n - A093967 n

end

end A268744.P1294358135600839984

namespace A268744

/-- `A291264(n)-A093967(n)` -/
def P1294358135600839984.Spec : Prop :=
  ∀ n, P1294358135600839984.a n = A268744 (n + 1)

end A268744

/-! ## A268744.P634558803088173142

`A292400(n+1)-(A292400(n)+A000129(n+1))`
-/

namespace A268744.P634558803088173142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292400 (n + 1) - (A292400 n + A000129 (n + 1))

end

end A268744.P634558803088173142

namespace A268744

/-- `A292400(n+1)-(A292400(n)+A000129(n+1))` -/
def P634558803088173142.Spec : Prop :=
  ∀ n, P634558803088173142.a n = A268744 (n + 1)

end A268744

/-! ## A268744.P18243106906057838706

`Δ[Δ[A093967(n+1)/2]]`
-/

namespace A268744.P18243106906057838706
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093967 (n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A268744.P18243106906057838706

namespace A268744

/-- `Δ[Δ[A093967(n+1)/2]]` -/
def P18243106906057838706.Spec : Prop :=
  ∀ n, P18243106906057838706.a n = (A268744 (n + 1) : ℚ)

end A268744

/-! ## A268744.P6823110787021208490

`A286814(n+1)+A108475(n)/A000129(n+1)`
-/

namespace A268744.P6823110787021208490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286814 (n + 1) : ℚ) + (A108475 n : ℚ) / (A000129 (n + 1) : ℚ)

end

end A268744.P6823110787021208490

namespace A268744

/-- `A286814(n+1)+A108475(n)/A000129(n+1)` -/
def P6823110787021208490.Spec : Prop :=
  ∀ n, P6823110787021208490.a n = (A268744 (n + 1) : ℚ)

end A268744

/-!
# A268745: Number of n X 3 binary arrays with some element plus some horizontally or vertically adjacent neighbor totalling two no more than once.

The programs for A268745, there is no canonical definition to state claims against.
-/

/-! ## A268745.P16694390943429288009

`A268750(∑[n+2]+4)`
-/

namespace A268745.P16694390943429288009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268750 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A268745.P16694390943429288009

/-! ## A268745.P7457119399220731682

`or(val(n+2, 4), A268750(A055998(n)+6))`
-/

namespace A268745.P7457119399220731682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.valuation (n + 2) 4 : ℤ) (A268750 (A055998 n + 6).toNat)

end

end A268745.P7457119399220731682

/-! ## A268745.P12033122821577504528

`or(A000038(n), A268750(A167614(n+1)))`
-/

namespace A268745.P12033122821577504528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A268750 (A167614 (n + 1)).toNat)

end

end A268745.P12033122821577504528

/-! ## A268745.P4146115110243504504

`A268750(A167614(n+1))+A000007(n+1)`
-/

namespace A268745.P4146115110243504504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268750 (A167614 (n + 1)).toNat + A000007 (n + 1)

end

end A268745.P4146115110243504504

/-! ## A268745.P13339111157462429333

`A000041(C(n, 64))*A268750(A167614(n+1))`
-/

namespace A268745.P13339111157462429333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n 64) * A268750 (A167614 (n + 1)).toNat

end

end A268745.P13339111157462429333

/-!
# A268746: Number of nX4 binary arrays with some element plus some horizontally or vertically adjacent neighbor totalling two no more than once.

The programs for A268746, there is no canonical definition to state claims against.
-/

/-! ## A268746.P7898842258435369163

`A268750(A052905(n)+9)`
-/

namespace A268746.P7898842258435369163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268750 (A052905 n + 9).toNat

end

end A268746.P7898842258435369163

/-! ## A268746.P8296773053996178907

`A268750(A055999(n)+10)`
-/

namespace A268746.P8296773053996178907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268750 (A055999 n + 10).toNat

end

end A268746.P8296773053996178907

/-! ## A268746.P17083532220301066192

`A268750(A167614(n+2)+1)`
-/

namespace A268746.P17083532220301066192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268750 (A167614 (n + 2) + 1).toNat

end

end A268746.P17083532220301066192

/-! ## A268746.P17373115204490450066

`A268750(Δ[A023545(n+1)-n²])`
-/

namespace A268746.P17373115204490450066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268750 (f1 (n + 1) - f1 n).toNat

end

end A268746.P17373115204490450066

/-! ## A268746.P17772555940226595586

`A268750(A374004(n+1))`
-/

namespace A268746.P17772555940226595586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268750 (A374004 (n + 1)).toNat

end

end A268746.P17772555940226595586

/-!
# A268747: Number of nX5 binary arrays with some element plus some horizontally or vertically adjacent neighbor totalling two no more than once.

The programs for A268747, there is no canonical definition to state claims against.
-/

/-! ## A268747.P11085599674850678695

`A268737(n+1)+A089936(n+1)`
-/

namespace A268747.P11085599674850678695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268737 (n + 1) + A089936 (n + 1)

end

end A268747.P11085599674850678695

/-! ## A268747.P4274788985009874202

`A268750(A155212(n)+13)`
-/

namespace A268747.P4274788985009874202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268750 (A155212 n + 13).toNat

end

end A268747.P4274788985009874202

/-! ## A268747.P12050511839902993297

`A268750(A374005(n+1))`
-/

namespace A268747.P12050511839902993297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268750 (A374005 (n + 1)).toNat

end

end A268747.P12050511839902993297

/-! ## A268747.P15856250866742819057

`A268750(A046691(n+3))`
-/

namespace A268747.P15856250866742819057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268750 (A046691 (n + 3)).toNat

end

end A268747.P15856250866742819057

/-! ## A268747.P11682505109995261025

`A268750(eq[4, A193592(n)])`
-/

namespace A268747.P11682505109995261025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268750 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268747.P11682505109995261025

/-!
# A268748: Number of nX6 binary arrays with some element plus some horizontally or vertically adjacent neighbor totalling two no more than once.

The programs for A268748, there is no canonical definition to state claims against.
-/

/-! ## A268748.P137194190070768191

`A268738(n+1)+A089937(n+1)`
-/

namespace A268748.P137194190070768191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268738 (n + 1) + A089937 (n + 1)

end

end A268748.P137194190070768191

/-! ## A268748.P11422326474906784433

`A268750(eq[7, A131818(n+1)])`
-/

namespace A268748.P11422326474906784433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268750 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268748.P11422326474906784433

/-! ## A268748.P9148901332876678781

`A268750(Δ[A023545(n+1)]+10)`
-/

namespace A268748.P9148901332876678781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268750 (f1 (n + 1) - f1 n + 10).toNat

end

end A268748.P9148901332876678781

/-! ## A268748.P6923336434266044111

`A268750(A374007(n+1))`
-/

namespace A268748.P6923336434266044111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268750 (A374007 (n + 1)).toNat

end

end A268748.P6923336434266044111

/-! ## A268748.P8558111905174704412

`A268750(A052905(n+3))`
-/

namespace A268748.P8558111905174704412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268750 (A052905 (n + 3)).toNat

end

end A268748.P8558111905174704412

/-!
# A268749: Number of nX7 binary arrays with some element plus some horizontally or vertically adjacent neighbor totalling two no more than once.

The programs for A268749, there is no canonical definition to state claims against.
-/

/-! ## A268749.P5929472123590002522

`A268739(n+1)+A089938(n+1)`
-/

namespace A268749.P5929472123590002522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268739 (n + 1) + A089938 (n + 1)

end

end A268749.P5929472123590002522

/-! ## A268749.P4803799297456290688

`A268750(eq[8, A131818(n+1)])`
-/

namespace A268749.P4803799297456290688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268750 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268749.P4803799297456290688

/-! ## A268749.P15508995747074796773

`A268750(A374008(n+1))`
-/

namespace A268749.P15508995747074796773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268750 (A374008 (n + 1)).toNat

end

end A268749.P15508995747074796773

/-! ## A268749.P9789479956420410119

`A268750(A055999(n+4))`
-/

namespace A268749.P9789479956420410119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268750 (A055999 (n + 4)).toNat

end

end A268749.P9789479956420410119

/-! ## A268749.P11313673341237572602

`A268750(eq[6, A193592(n)])`
-/

namespace A268749.P11313673341237572602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268750 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268749.P11313673341237572602

/-!
# A268750: T(n,k)=Number of nXk binary arrays with some element plus some horizontally or vertically adjacent neighbor totalling two no more than once.

The programs for A268750, there is no canonical definition to state claims against.
-/

/-! ## A268750.P12220886690923073350

`A268740(n+1)+A089934(n+1)`
-/

namespace A268750.P12220886690923073350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268740 (n + 1) + A089934 (n + 1)

end

end A268750.P12220886690923073350

/-!
# A268751: Number of sequences with n copies each of 1,2,...,n avoiding the pattern 12...n.

The programs for A268751, there is no canonical definition to state claims against.
-/

/-! ## A268751.P7668524063333188421

`A034841(n)-A268485(n)`
-/

namespace A268751.P7668524063333188421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034841 n - A268485 n

end

end A268751.P7668524063333188421

/-! ## A268751.P9578755930536758426

`A269129(∑[4*n])`
-/

namespace A268751.P9578755930536758426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269129 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A268751.P9578755930536758426

/-!
# A268752: Cubefree numbers n such that n^2 + 1 is prime.

The programs for A268752, the canonical program `A268752.P3181240131180822389` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268752 has offset 1).

The definition of A268752 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4709 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268752.P3181240131180822389

`filter[A005574(n+1), A212793(#)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A268752

/-- `filter[A005574(n+1), A212793(#)]` -/
def P3181240131180822389.Spec : Prop :=
  ∀ n, P3181240131180822389.a n = A268752 (n + 1)

theorem P3181240131180822389.correct : P3181240131180822389.Spec := by
  intro n
  simp only [A268752, Nat.add_sub_cancel]

end A268752

/-! ## A268752.P6987589048287473795

`filter[A004709(n+1), A295405(#)]`
-/

namespace A268752.P6987589048287473795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295405 (f1 j).toNat = 1) n)

end

end A268752.P6987589048287473795

namespace A268752

/-- `filter[A004709(n+1), A295405(#)]` -/
def P6987589048287473795.Spec : Prop :=
  ∀ n, P6987589048287473795.a n = A268752 (n + 1)

end A268752

/-! ## A268752.P54029288542103131

`∩[A004709(n+1), A005574(n+1)]`
-/

namespace A268752.P54029288542103131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268752.P54029288542103131

namespace A268752

/-- `∩[A004709(n+1), A005574(n+1)]` -/
def P54029288542103131.Spec : Prop :=
  ∀ n, (P54029288542103131.a n : ℤ) = A268752 (n + 1)

end A268752

/-! ## A268752.P3270473367080688375

`filter[A380693(n+1), A295405(#)]`
-/

namespace A268752.P3270473367080688375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295405 (f1 j).toNat = 1) n)

end

end A268752.P3270473367080688375

namespace A268752

/-- `filter[A380693(n+1), A295405(#)]` -/
def P3270473367080688375.Spec : Prop :=
  ∀ n, P3270473367080688375.a n = A268752 (n + 1)

end A268752

/-! ## A268752.P3946172099408700696

`∩[A005574(n+1), A380693(n+1)]`
-/

namespace A268752.P3946172099408700696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268752.P3946172099408700696

namespace A268752

/-- `∩[A005574(n+1), A380693(n+1)]` -/
def P3946172099408700696.Spec : Prop :=
  ∀ n, (P3946172099408700696.a n : ℤ) = A268752 (n + 1)

end A268752

/-! ## A268752.P16831239189493560434

`record[A007948(A005574(n+1))]`
-/

namespace A268752.P16831239189493560434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (A005574 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268752.P16831239189493560434

namespace A268752

/-- `record[A007948(A005574(n+1))]` -/
def P16831239189493560434.Spec : Prop :=
  ∀ n, P16831239189493560434.a n = A268752 (n + 1)

end A268752

/-! ## A268752.P8722981152238404023

`record[A247339(A050985(n+1))]`
-/

namespace A268752.P8722981152238404023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247339 (A050985 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268752.P8722981152238404023

namespace A268752

/-- `record[A247339(A050985(n+1))]` -/
def P8722981152238404023.Spec : Prop :=
  ∀ n, P8722981152238404023.a n = A268752 (n + 1)

end A268752

/-! ## A268752.P8609496365269082256

`record[A007948(n+1)/A053000(n+1)]`
-/

namespace A268752.P8609496365269082256
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007948 (n + 1) : ℚ) / (A053000 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268752.P8609496365269082256

namespace A268752

/-- `record[A007948(n+1)/A053000(n+1)]` -/
def P8609496365269082256.Spec : Prop :=
  ∀ n, P8609496365269082256.a n = (A268752 (n + 1) : ℚ)

end A268752

/-! ## A268752.P18430397593311204433

`record[A007948(n+1)%A089120(n+1)]`
-/

namespace A268752.P18430397593311204433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007948 (n + 1)) (A089120 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268752.P18430397593311204433

namespace A268752

/-- `record[A007948(n+1)%A089120(n+1)]` -/
def P18430397593311204433.Spec : Prop :=
  ∀ n, P18430397593311204433.a n = A268752 (n + 1)

end A268752

/-! ## A268752.P2360789517533318194

`record[gcd(A050985(n+1), A249122(n+1))]`
-/

namespace A268752.P2360789517533318194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A050985 (n + 1)) (A249122 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268752.P2360789517533318194

namespace A268752

/-- `record[gcd(A050985(n+1), A249122(n+1))]` -/
def P2360789517533318194.Spec : Prop :=
  ∀ n, (P2360789517533318194.a n : ℤ) = A268752 (n + 1)

end A268752

/-!
# A268753: Primes congruent to 1 mod 13.

The programs for A268753, the canonical program `A268753.P6049220722085266056` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268753 has offset 1).

The definition of A268753 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268753.P6049220722085266056

`∪[A142159(n+1), A142167(n+1)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A268753

/-- `∪[A142159(n+1), A142167(n+1)]` -/
def P6049220722085266056.Spec : Prop :=
  ∀ n, (P6049220722085266056.a n : ℤ) = A268753 (n + 1)

theorem P6049220722085266056.correct : P6049220722085266056.Spec := by
  intro n
  simp only [A268753, Nat.add_sub_cancel]

end A268753

/-! ## A268753.P5909893403216939280

`∪[A142508(n+1), A142520(n+1)]`
-/

namespace A268753.P5909893403216939280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142508 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142520 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A268753.P5909893403216939280

namespace A268753

/-- `∪[A142508(n+1), A142520(n+1)]` -/
def P5909893403216939280.Spec : Prop :=
  ∀ n, (P5909893403216939280.a n : ℤ) = A268753 (n + 1)

end A268753

/-! ## A268753.P14309413245379273980

`p?[13*n+1]`
-/

namespace A268753.P14309413245379273980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A268753.P14309413245379273980

namespace A268753

/-- `p?[13*n+1]` -/
def P14309413245379273980.Spec : Prop :=
  ∀ n, (P14309413245379273980.a n : ℤ) = A268753 (n + 1)

end A268753

/-! ## A268753.P3715594547613634034

`or(1, p?[a(n-1)+13])` with `a(0)=1`
-/

namespace A268753.P3715594547613634034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A268753.P3715594547613634034

namespace A268753

/-- `or(1, p?[a(n-1)+13])` -/
def P3715594547613634034.Spec : Prop :=
  ∀ n, (P3715594547613634034.a n : ℤ) = A268753 (n + 1)

end A268753

/-! ## A268753.P1231611785211046719

`∏{d}[p?[a(n-1)+13], #]` with `a(0)=1`
-/

namespace A268753.P1231611785211046719
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 13

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A268753.P1231611785211046719

namespace A268753

/-- `∏{d}[p?[a(n-1)+13], #]` -/
def P1231611785211046719.Spec : Prop :=
  ∀ n, (P1231611785211046719.a n : ℤ) = A268753 (n + 1)

end A268753

/-! ## A268753.P10991258455595000281

`∑{p}[p?[a(n-1)+13], #]` with `a(0)=1`
-/

namespace A268753.P10991258455595000281
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 13

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A268753.P10991258455595000281

namespace A268753

/-- `∑{p}[p?[a(n-1)+13], #]` -/
def P10991258455595000281.Spec : Prop :=
  ∀ n, (P10991258455595000281.a n : ℤ) = A268753 (n + 1)

end A268753

/-! ## A268753.P2984441259369004326

`∏{p}[p?[a(n-1)+13], #]` with `a(0)=1`
-/

namespace A268753.P2984441259369004326
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 13

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A268753.P2984441259369004326

namespace A268753

/-- `∏{p}[p?[a(n-1)+13], #]` -/
def P2984441259369004326.Spec : Prop :=
  ∀ n, (P2984441259369004326.a n : ℤ) = A268753 (n + 1)

end A268753

/-! ## A268753.P643422961848564925

`abs(1-p?[a(n-3)+26])+1` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A268753.P643422961848564925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  f1 (n - 3) + 26

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)| + 1

end

end A268753.P643422961848564925

namespace A268753

/-- `abs(1-p?[a(n-3)+26])+1` -/
def P643422961848564925.Spec : Prop :=
  ∀ n, P643422961848564925.a n = A268753 (n + 1)

end A268753

/-! ## A268753.P6610118417170300000

`∩[A215164(n+1), A215391(n+1)]`
-/

namespace A268753.P6610118417170300000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215391 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268753.P6610118417170300000

namespace A268753

/-- `∩[A215164(n+1), A215391(n+1)]` -/
def P6610118417170300000.Spec : Prop :=
  ∀ n, (P6610118417170300000.a n : ℤ) = A268753 (n + 1)

end A268753

/-! ## A268753.P14243510669975401286

`∩[A215135(n+1), A215164(n+1)]`
-/

namespace A268753.P14243510669975401286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215164 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268753.P14243510669975401286

namespace A268753

/-- `∩[A215135(n+1), A215164(n+1)]` -/
def P14243510669975401286.Spec : Prop :=
  ∀ n, (P14243510669975401286.a n : ℤ) = A268753 (n + 1)

end A268753

/-! ## A268753.P9370116864874668581

`∩[A215164(n+1), A215379(n+1)]`
-/

namespace A268753.P9370116864874668581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215379 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268753.P9370116864874668581

namespace A268753

/-- `∩[A215164(n+1), A215379(n+1)]` -/
def P9370116864874668581.Spec : Prop :=
  ∀ n, (P9370116864874668581.a n : ℤ) = A268753 (n + 1)

end A268753

/-! ## A268753.P6284737312220902191

`∩[A215164(n+1), A215215(n+1)]`
-/

namespace A268753.P6284737312220902191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268753.P6284737312220902191

namespace A268753

/-- `∩[A215164(n+1), A215215(n+1)]` -/
def P6284737312220902191.Spec : Prop :=
  ∀ n, (P6284737312220902191.a n : ℤ) = A268753 (n + 1)

end A268753

/-! ## A268753.P607570282842530124

`∩[A215164(n+1), A215307(n+1)]`
-/

namespace A268753.P607570282842530124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215307 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268753.P607570282842530124

namespace A268753

/-- `∩[A215164(n+1), A215307(n+1)]` -/
def P607570282842530124.Spec : Prop :=
  ∀ n, (P607570282842530124.a n : ℤ) = A268753 (n + 1)

end A268753

/-! ## A268753.P13012496358483039454

`∩[A215164(n+1), A215383(n+1)]`
-/

namespace A268753.P13012496358483039454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268753.P13012496358483039454

namespace A268753

/-- `∩[A215164(n+1), A215383(n+1)]` -/
def P13012496358483039454.Spec : Prop :=
  ∀ n, (P13012496358483039454.a n : ℤ) = A268753 (n + 1)

end A268753

/-! ## A268753.P9668500493183773587

`∩[A215164(n+1), A215319(n+1)]`
-/

namespace A268753.P9668500493183773587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268753.P9668500493183773587

namespace A268753

/-- `∩[A215164(n+1), A215319(n+1)]` -/
def P9668500493183773587.Spec : Prop :=
  ∀ n, (P9668500493183773587.a n : ℤ) = A268753 (n + 1)

end A268753

/-! ## A268753.P10697836255868262930

`∩[A038883(n+1), A215391(n+1)]`
-/

namespace A268753.P10697836255868262930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215391 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268753.P10697836255868262930

namespace A268753

/-- `∩[A038883(n+1), A215391(n+1)]` -/
def P10697836255868262930.Spec : Prop :=
  ∀ n, (P10697836255868262930.a n : ℤ) = A268753 (n + 1)

end A268753

/-! ## A268753.P1694791909830189087

`∩[A215215(n+1), A296937(n+1)]`
-/

namespace A268753.P1694791909830189087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268753.P1694791909830189087

namespace A268753

/-- `∩[A215215(n+1), A296937(n+1)]` -/
def P1694791909830189087.Spec : Prop :=
  ∀ n, (P1694791909830189087.a n : ℤ) = A268753 (n + 1)

end A268753

/-! ## A268753.P6209450305375498756

`∩[A215391(n+1), A296937(n+1)]`
-/

namespace A268753.P6209450305375498756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215391 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268753.P6209450305375498756

namespace A268753

/-- `∩[A215391(n+1), A296937(n+1)]` -/
def P6209450305375498756.Spec : Prop :=
  ∀ n, (P6209450305375498756.a n : ℤ) = A268753 (n + 1)

end A268753

/-! ## A268753.P14073112030669105132

`∩[A215215(n+1), A270997(n+1)]`
-/

namespace A268753.P14073112030669105132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268753.P14073112030669105132

namespace A268753

/-- `∩[A215215(n+1), A270997(n+1)]` -/
def P14073112030669105132.Spec : Prop :=
  ∀ n, (P14073112030669105132.a n : ℤ) = A268753 (n + 1)

end A268753

/-! ## A268753.P6068012487928500715

`∩[A215391(n+1), A270997(n+1)]`
-/

namespace A268753.P6068012487928500715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215391 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268753.P6068012487928500715

namespace A268753

/-- `∩[A215391(n+1), A270997(n+1)]` -/
def P6068012487928500715.Spec : Prop :=
  ∀ n, (P6068012487928500715.a n : ℤ) = A268753 (n + 1)

end A268753

/-!
# A268754: The period of an n X 1 rectangular oscillator in the B1/S Life-like cellular automaton.

The programs for A268754, there is no canonical definition to state claims against.
-/

/-! ## A268754.P5189631227796622705

`A334504(2*(n+2))`
-/

namespace A268754.P5189631227796622705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334504 (2 * (n + 2))

end

end A268754.P5189631227796622705

/-! ## A268754.P12975342400318788521

`A334507(2*n+3)`
-/

namespace A268754.P12975342400318788521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334507 (2 * n + 3)

end

end A268754.P12975342400318788521

/-! ## A268754.P12039580429341681230

`floor(1/acot(A334507(Δ[(n+1)²])))`
-/

namespace A268754.P12039580429341681230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / SequenceMachineLib.acot (A334507 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℝ)⌋

end

end A268754.P12039580429341681230

/-! ## A268754.P4945398662322095651

`or(char[2], A334507(A005408(n+1)))`
-/

namespace A268754.P4945398662322095651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A334507 (A005408 (n + 1)).toNat)

end

end A268754.P4945398662322095651

/-! ## A268754.P10666529863357011704

`A334507(Δ[(n+1)²])/A020985(n)²`
-/

namespace A268754.P10666529863357011704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334507 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / (A020985 n ^ 2 : ℚ)

end

end A268754.P10666529863357011704

/-! ## A268754.P16564270655454986945

`(2-A036987(n+1))*A085587(n+2)`
-/

namespace A268754.P16564270655454986945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A036987 (n + 1)) * A085587 (n + 2)

end

end A268754.P16564270655454986945

/-! ## A268754.P6179619288865741155

`A334507(A005408(n+1))%∑[A000032(n)]`
-/

namespace A268754.P6179619288865741155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334507 (A005408 (n + 1)).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A268754.P6179619288865741155

/-! ## A268754.P13337539660553364620

`A334507(A005408(n+1))+A000007(n+1)`
-/

namespace A268754.P13337539660553364620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334507 (A005408 (n + 1)).toNat + A000007 (n + 1)

end

end A268754.P13337539660553364620

/-! ## A268754.P14882760900076896054

`A334507(A005408(n+1))/A007318(C(2, n))`
-/

namespace A268754.P14882760900076896054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334507 (A005408 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A268754.P14882760900076896054

/-! ## A268754.P12416018521333186862

`A334507(A005408(n+1))/ceil(1/A000005(n+1))`
-/

namespace A268754.P12416018521333186862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334507 (A005408 (n + 1)).toNat : ℚ) / (⌈1 / (A000005 (n + 1) : ℚ)⌉ : ℚ)

end

end A268754.P12416018521333186862

/-!
# A268755: Variant of A181391: For n >= 1, if there exists an m < n such that a(m) = a(n), take the largest such m and set a(n+1) = #{a(m), a(m+1), ..., a(n)}; otherwise, a(n+1) = 0. Start with a(1) = 0.

The programs for A268755, there is no canonical definition to state claims against.
-/

/-! ## A268755.P1903413899300107952

`A279211(A181391(n+1)+A172543(n+1))`
-/

namespace A268755.P1903413899300107952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279211 (A181391 (n + 1) + A172543 (n + 1)).toNat

end

end A268755.P1903413899300107952

/-! ## A268755.P2350510047799894493

`A279211(A333359(n+1)+A172543(n+1))`
-/

namespace A268755.P2350510047799894493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279211 (A333359 (n + 1) + A172543 (n + 1)).toNat

end

end A268755.P2350510047799894493

/-! ## A268755.P9849077405630430119

`A279211(A350151(n+1)+A172543(n+1))`
-/

namespace A268755.P9849077405630430119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279211 (A350151 (n + 1) + A172543 (n + 1)).toNat

end

end A268755.P9849077405630430119

/-! ## A268755.P18300712784895072141

`A279211(A172543(n+1)+A268584(2*n)/2)`
-/

namespace A268755.P18300712784895072141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279211 (SequenceMachineLib.roundAway ((A172543 (n + 1) : ℚ) + (A268584 (2 * n) : ℚ) / 2)).toNat

end

end A268755.P18300712784895072141

/-! ## A268755.P14997769581449250063

`A279211(A172543(n+1)+floor(n*A337980(n+2)/(n+1)))`
-/

namespace A268755.P14997769581449250063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279211 (A172543 (n + 1) + ⌊(n : ℚ) * ((A337980 (n + 2) : ℚ) / (n + 1 : ℚ))⌋).toNat

end

end A268755.P14997769581449250063

/-!
# A268756: Number of triples x, y, r such that r divides x*y, r divides at least one of x or y, and x*y <= n.

The programs for A268756, there is no canonical definition to state claims against.
-/

/-! ## A268756.P3525391439566551438

`∑[A036741(A034856(∏{e}[n+1, #+1]))]`
-/

namespace A268756.P3525391439566551438
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036741 (A034856 (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268756.P3525391439566551438

/-! ## A268756.P2326139078030295237

`∑[A036741(A034856(∑{d}[n+1, n²%#]+1))]`
-/

namespace A268756.P2326139078030295237
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036741 (A034856 (∑ d ∈ Nat.divisors (f2 n), n ^ 2 % d + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268756.P2326139078030295237

/-! ## A268756.P8053567125510937605

`∑[A297464(A004903(A342086(n+1)))]`
-/

namespace A268756.P8053567125510937605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297464 (A004903 (A342086 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268756.P8053567125510937605

/-! ## A268756.P13175807981757288336

`∑[A055507(∏{e}[n+1, #+1]%A350596(3*n+4))]`
-/

namespace A268756.P13175807981757288336
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055507 (Int.tmod ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℤ) (A350596 (3 * n + 4))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268756.P13175807981757288336

/-! ## A268756.P12823276655344657034

`∑[A331965(A000005(A187829(n+1)))]`
-/

namespace A268756.P12823276655344657034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331965 (A000005 (A187829 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268756.P12823276655344657034

/-!
# A268758: Number of polyominoes with width and height equal to 2n that are invariant under all symmetries of the square.

The programs for A268758, there is no canonical definition to state claims against.
-/

/-! ## A268758.P13293881371508852457

`A268339(Δ[n²])`
-/

namespace A268758.P13293881371508852457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268339 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A268758.P13293881371508852457

/-! ## A268758.P4092201055291055161

`record[A268339(∏{p}[n, #])]`
-/

namespace A268758.P4092201055291055161
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268339 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268758.P4092201055291055161

/-! ## A268758.P5438382371228881108

`record[(-1)^n*A268339(n+1)]`
-/

namespace A268758.P5438382371228881108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A268339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268758.P5438382371228881108

/-! ## A268758.P5495866513492504837

`record[A268339(A133265(n))]`
-/

namespace A268758.P5495866513492504837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268339 (A133265 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268758.P5495866513492504837

/-! ## A268758.P14140335222393824455

`A268339(2*n+1)²/A268339(2*(n+1))`
-/

namespace A268758.P14140335222393824455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268339 (2 * n + 1) ^ 2 : ℚ) / (A268339 (2 * (n + 1)) : ℚ)

end

end A268758.P14140335222393824455

/-!
# A268759: Triangle T(n,k) read by rows: T(n,k) = (1/4)*(1 + k)*(2 + k)*(k - n)*(1 + k - n).

The programs for A268759, the canonical program `A268759.P1414194246150000593` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268759 has offset 0).

The definition of A268759 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268759.P1414194246150000593

`C(A025581(n), 2)*A000217(A002260(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A268759

/-- `C(A025581(n), 2)*A000217(A002260(n+1))` -/
def P1414194246150000593.Spec : Prop :=
  ∀ n, P1414194246150000593.a n = A268759 n

theorem P1414194246150000593.correct : P1414194246150000593.Spec := by
  intro n
  simp only [A268759]

end A268759

/-! ## A268759.P2973488119823276600

`A000217(A103822(n+1))*A000217(A103823(n+1))`
-/

namespace A268759.P2973488119823276600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A103822 (n + 1)).toNat * A000217 (A103823 (n + 1)).toNat

end

end A268759.P2973488119823276600

namespace A268759

/-- `A000217(A103822(n+1))*A000217(A103823(n+1))` -/
def P2973488119823276600.Spec : Prop :=
  ∀ n, P2973488119823276600.a n = A268759 n

end A268759

/-! ## A268759.P15951878592930717137

`A113582(n+2)-1`
-/

namespace A268759.P15951878592930717137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113582 (n + 2) - 1

end

end A268759.P15951878592930717137

namespace A268759

/-- `A113582(n+2)-1` -/
def P15951878592930717137.Spec : Prop :=
  ∀ n, P15951878592930717137.a n = A268759 n

end A268759

/-! ## A268759.P14483961938692992121

`A049207(n+1)/4`
-/

namespace A268759.P14483961938692992121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049207 (n + 1) : ℚ) / 4

end

end A268759.P14483961938692992121

namespace A268759

/-- `A049207(n+1)/4` -/
def P14483961938692992121.Spec : Prop :=
  ∀ n, P14483961938692992121.a n = (A268759 n : ℚ)

end A268759

/-! ## A268759.P15364410374905935407

`A062707(n+1)/2*A002260(n+2)`
-/

namespace A268759.P15364410374905935407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062707 (n + 1) : ℚ) / 2 * (A002260 (n + 2) : ℚ)

end

end A268759.P15364410374905935407

namespace A268759

/-- `A062707(n+1)/2*A002260(n+2)` -/
def P15364410374905935407.Spec : Prop :=
  ∀ n, P15364410374905935407.a n = (A268759 n : ℚ)

end A268759

/-! ## A268759.P13958030035107273530

`A062707(n+1)/2*A134868(n+2)`
-/

namespace A268759.P13958030035107273530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062707 (n + 1) : ℚ) / 2 * (A134868 (n + 2) : ℚ)

end

end A268759.P13958030035107273530

namespace A268759

/-- `A062707(n+1)/2*A134868(n+2)` -/
def P13958030035107273530.Spec : Prop :=
  ∀ n, P13958030035107273530.a n = (A268759 n : ℚ)

end A268759

/-! ## A268759.P11479636028004392150

`A000217(A077028(n+1))-A374378(n+1)`
-/

namespace A268759.P11479636028004392150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A077028 (n + 1)).toNat - A374378 (n + 1)

end

end A268759.P11479636028004392150

namespace A268759

/-- `A000217(A077028(n+1))-A374378(n+1)` -/
def P11479636028004392150.Spec : Prop :=
  ∀ n, P11479636028004392150.a n = A268759 n

end A268759

/-! ## A268759.P13321203494769881232

`A000217(A002262(n+1))*A000217(A025581(n+1))`
-/

namespace A268759.P13321203494769881232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A002262 (n + 1)).toNat * A000217 (A025581 (n + 1)).toNat

end

end A268759.P13321203494769881232

namespace A268759

/-- `A000217(A002262(n+1))*A000217(A025581(n+1))` -/
def P13321203494769881232.Spec : Prop :=
  ∀ n, P13321203494769881232.a n = A268759 n

end A268759

/-! ## A268759.P3082759826459555979

`A161680(A002260(n+2))*A161680(A004736(n+2))`
-/

namespace A268759.P3082759826459555979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A002260 (n + 2)).toNat * A161680 (A004736 (n + 2)).toNat

end

end A268759.P3082759826459555979

namespace A268759

/-- `A161680(A002260(n+2))*A161680(A004736(n+2))` -/
def P3082759826459555979.Spec : Prop :=
  ∀ n, P3082759826459555979.a n = A268759 n

end A268759

/-! ## A268759.P16067309625554299111

`A112367(A061579(n+1))*A112367(n+1)`
-/

namespace A268759.P16067309625554299111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112367 (A061579 (n + 1)).toNat * A112367 (n + 1)

end

end A268759.P16067309625554299111

namespace A268759

/-- `A112367(A061579(n+1))*A112367(n+1)` -/
def P16067309625554299111.Spec : Prop :=
  ∀ n, P16067309625554299111.a n = A268759 n

end A268759

/-! ## A268759.P17230594991627874800

`A004483(A113582(n+2))`
-/

namespace A268759.P17230594991627874800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004483 (A113582 (n + 2)).toNat

end

end A268759.P17230594991627874800

namespace A268759

/-- `A004483(A113582(n+2))` -/
def P17230594991627874800.Spec : Prop :=
  ∀ n, P17230594991627874800.a n = A268759 n

end A268759

/-! ## A268759.P15321156828261504668

`A181204(n+2)/(2*A060854(n+2))`
-/

namespace A268759.P15321156828261504668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181204 (n + 2) : ℚ) / (2 * A060854 (n + 2) : ℚ)

end

end A268759.P15321156828261504668

namespace A268759

/-- `A181204(n+2)/(2*A060854(n+2))` -/
def P15321156828261504668.Spec : Prop :=
  ∀ n, P15321156828261504668.a n = (A268759 n : ℚ)

end A268759

/-! ## A268759.P297865680760568639

`A002265(A049207(n+1))`
-/

namespace A268759.P297865680760568639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A049207 (n + 1)).toNat

end

end A268759.P297865680760568639

namespace A268759

/-- `A002265(A049207(n+1))` -/
def P297865680760568639.Spec : Prop :=
  ∀ n, P297865680760568639.a n = A268759 n

end A268759

/-!
# A268760: Number of n X n binary arrays with some element plus some horizontally, vertically, diagonally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A268760, there is no canonical definition to state claims against.
-/

/-! ## A268760.P11892537205866706781

`A268766(∑[4*n]+1)`
-/

namespace A268760.P11892537205866706781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268766 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A268760.P11892537205866706781

/-! ## A268760.P11622638706933023491

`lcm(2, A268766(A001844(n)))`
-/

namespace A268760.P11622638706933023491
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A268766 (A001844 n).toNat)

end

end A268760.P11622638706933023491

/-! ## A268760.P9462503956930244073

`A057427(n)*A268766(A001844(n))`
-/

namespace A268760.P9462503956930244073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A268766 (A001844 n).toNat

end

end A268760.P9462503956930244073

/-! ## A268760.P7859983082567785334

`A268766(A001844(n))+C(2, A000203(n+2))`
-/

namespace A268760.P7859983082567785334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268766 (A001844 n).toNat + (Nat.choose 2 (A000203 (n + 2)).toNat : ℤ)

end

end A268760.P7859983082567785334

/-! ## A268760.P328623368858299179

`A000010(gcd(n, n+1))*A268766(A001844(n))`
-/

namespace A268760.P328623368858299179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.gcd n (n + 1)) * A268766 (A001844 n).toNat

end

end A268760.P328623368858299179

/-!
# A268761: Number of n X 3 binary arrays with some element plus some horizontally, vertically, diagonally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A268761, there is no canonical definition to state claims against.
-/

/-! ## A268761.P15425162835163767441

`A268766(∑[n+2]+4)`
-/

namespace A268761.P15425162835163767441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268766 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A268761.P15425162835163767441

/-! ## A268761.P13220754199398834090

`or(and(1, n), A268766(A046691(n)+7))`
-/

namespace A268761.P13220754199398834090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.land 1 n : ℤ) (A268766 (A046691 n + 7).toNat)

end

end A268761.P13220754199398834090

/-! ## A268761.P12855124881782739835

`(abs(1-n)-n)²*A268766(A167614(n+1))`
-/

namespace A268761.P12855124881782739835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (|1 - (n : ℤ)| - (n : ℤ)) ^ 2 * A268766 (A167614 (n + 1)).toNat

end

end A268761.P12855124881782739835

/-! ## A268761.P12008129604922089635

`gcd(A000038(n), A268766(A167614(n+1)))`
-/

namespace A268761.P12008129604922089635
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A268766 (A167614 (n + 1)).toNat)

end

end A268761.P12008129604922089635

/-! ## A268761.P14744047647283431641

`lcm(A054977(n), A268766(A167614(n+1)))`
-/

namespace A268761.P14744047647283431641
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A054977 n) (A268766 (A167614 (n + 1)).toNat)

end

end A268761.P14744047647283431641

/-! ## A268761.P2744433318857488577

`or(A000035(n), A268766(A167614(n+1)))`
-/

namespace A268761.P2744433318857488577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A268766 (A167614 (n + 1)).toNat)

end

end A268761.P2744433318857488577

/-! ## A268761.P17321756692826057969

`A268766(A167614(n+1))%A204870(n+1)`
-/

namespace A268761.P17321756692826057969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A268766 (A167614 (n + 1)).toNat) (A204870 (n + 1))

end

end A268761.P17321756692826057969

/-!
# A268762: Number of n X 4 binary arrays with some element plus some horizontally, vertically, diagonally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A268762, there is no canonical definition to state claims against.
-/

/-! ## A268762.P1852674906456761753

`A268766(A374004(n+1))`
-/

namespace A268762.P1852674906456761753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268766 (A374004 (n + 1)).toNat

end

end A268762.P1852674906456761753

/-! ## A268762.P10894840686414952855

`A268766(A052905(n)+9)`
-/

namespace A268762.P10894840686414952855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268766 (A052905 n + 9).toNat

end

end A268762.P10894840686414952855

/-! ## A268762.P9548999544216966858

`A268766(A055999(n)+10)`
-/

namespace A268762.P9548999544216966858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268766 (A055999 n + 10).toNat

end

end A268762.P9548999544216966858

/-! ## A268762.P6905381099634423469

`A268766(Δ[A008778(n)]+6)`
-/

namespace A268762.P6905381099634423469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268766 (f1 (n + 1) - f1 n + 6).toNat

end

end A268762.P6905381099634423469

/-! ## A268762.P10313591840901467123

`A268766(A167614(n+2)+1)`
-/

namespace A268762.P10313591840901467123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268766 (A167614 (n + 2) + 1).toNat

end

end A268762.P10313591840901467123

/-! ## A268762.P11355437940169430765

`A268766(A000217(n+3)+4)`
-/

namespace A268762.P11355437940169430765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268766 (A000217 (n + 3) + 4).toNat

end

end A268762.P11355437940169430765

/-! ## A268762.P1682636464920983473

`A268766(Δ[A023545(n+1)-n²])`
-/

namespace A268762.P1682636464920983473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268766 (f1 (n + 1) - f1 n).toNat

end

end A268762.P1682636464920983473

/-!
# A268763: Number of nX5 binary arrays with some element plus some horizontally, vertically, diagonally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A268763, there is no canonical definition to state claims against.
-/

/-! ## A268763.P7030391524396736297

`A268766(A374005(n+1))`
-/

namespace A268763.P7030391524396736297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268766 (A374005 (n + 1)).toNat

end

end A268763.P7030391524396736297

/-! ## A268763.P10122168251368504672

`A268766(A167499(n+3))`
-/

namespace A268763.P10122168251368504672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268766 (A167499 (n + 3)).toNat

end

end A268763.P10122168251368504672

/-! ## A268763.P7043044694610154788

`A268766(A155212(n)+13)`
-/

namespace A268763.P7043044694610154788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268766 (A155212 n + 13).toNat

end

end A268763.P7043044694610154788

/-! ## A268763.P12822859638520677124

`A268766(A000217(n+4)+5)`
-/

namespace A268763.P12822859638520677124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268766 (A000217 (n + 4) + 5).toNat

end

end A268763.P12822859638520677124

/-! ## A268763.P664278607920653361

`A268766(A000124(n+5)-(n+1))`
-/

namespace A268763.P664278607920653361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268766 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A268763.P664278607920653361

/-!
# A268764: Number of n X 6 binary arrays with some element plus some horizontally, vertically, diagonally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A268764, there is no canonical definition to state claims against.
-/

/-! ## A268764.P13279467230202344773

`A268766(A374007(n+1))`
-/

namespace A268764.P13279467230202344773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268766 (A374007 (n + 1)).toNat

end

end A268764.P13279467230202344773

/-! ## A268764.P7258348642945323251

`A268766(A167499(n+4)+1)`
-/

namespace A268764.P7258348642945323251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268766 (A167499 (n + 4) + 1).toNat

end

end A268764.P7258348642945323251

/-! ## A268764.P18173191312529134366

`A268766(A000217(n+5)+6)`
-/

namespace A268764.P18173191312529134366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268766 (A000217 (n + 5) + 6).toNat

end

end A268764.P18173191312529134366

/-! ## A268764.P10129663635294060026

`A268766(A161680(n+6)+6)`
-/

namespace A268764.P10129663635294060026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268766 (A161680 (n + 6) + 6).toNat

end

end A268764.P10129663635294060026

/-! ## A268764.P17604271734967039756

`A268766(A046691(n+3)+10)`
-/

namespace A268764.P17604271734967039756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268766 (A046691 (n + 3) + 10).toNat

end

end A268764.P17604271734967039756

/-!
# A268765: Number of nX7 binary arrays with some element plus some horizontally, vertically, diagonally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A268765, there is no canonical definition to state claims against.
-/

/-! ## A268765.P12964256323899112471

`A268766(A374008(n+1))`
-/

namespace A268765.P12964256323899112471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268766 (A374008 (n + 1)).toNat

end

end A268765.P12964256323899112471

/-! ## A268765.P7289162852940133705

`A268766(eq[11, A066657(n)])`
-/

namespace A268765.P7289162852940133705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268766 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268765.P7289162852940133705

/-! ## A268765.P1212767143755988294

`A268766(eq[8, A131818(n+1)])`
-/

namespace A268765.P1212767143755988294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268766 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268765.P1212767143755988294

/-! ## A268765.P7306710680535320907

`A268766(eq[4, A219347(n)])`
-/

namespace A268765.P7306710680535320907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268766 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268765.P7306710680535320907

/-! ## A268765.P4820805137300980214

`A268766(eq[6, A193592(n)])`
-/

namespace A268765.P4820805137300980214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268766 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268765.P4820805137300980214

/-!
# A268767: Number of n X n 0..2 arrays with some element plus some horizontally, vertically, diagonally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A268767, there is no canonical definition to state claims against.
-/

/-! ## A268767.P14392537719223310609

`2*A268760(n+1)`
-/

namespace A268767.P14392537719223310609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A268760 (n + 1)

end

end A268767.P14392537719223310609

/-! ## A268767.P15374621891317045441

`A268774(∑[4*n]+1)`
-/

namespace A268767.P15374621891317045441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268774 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A268767.P15374621891317045441

/-! ## A268767.P13859029665589327067

`2*A268766(A001844(n))`
-/

namespace A268767.P13859029665589327067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A268766 (A001844 n).toNat

end

end A268767.P13859029665589327067

/-! ## A268767.P13358509946043487103

`record[A003982(n)*A268774(n+1)]`
-/

namespace A268767.P13358509946043487103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A268774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268767.P13358509946043487103

/-! ## A268767.P4543456943829583501

`lcm(A001876(n), A268774(A001844(n)))`
-/

namespace A268767.P4543456943829583501
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001876 n) (A268774 (A001844 n).toNat)

end

end A268767.P4543456943829583501

/-!
# A268768: Number of n X 2 0..2 arrays with some element plus some horizontally, vertically, diagonally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A268768, the canonical program `A268768.P16035322319169933091` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268768 has offset 1).

The definition of A268768 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 322 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268768.P16035322319169933091

`2*a(n-1)+3*a(n-2)-4*a(n-3)-4*a(n-4)` with `a(0)=3, a(1)=12, a(2)=32, a(3)=100, a(4)=248`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A268768

/-- `2*a(n-1)+3*a(n-2)-4*a(n-3)-4*a(n-4)` -/
def P16035322319169933091.Spec : Prop :=
  ∀ n, P16035322319169933091.a n = A268768 (n + 1)

theorem P16035322319169933091.correct : P16035322319169933091.Spec := by
  intro n
  simp only [A268768, Nat.add_sub_cancel]

end A268768

/-! ## A268768.P5911498185132397719

`A268774(∑[n+1]+2)`
-/

namespace A268768.P5911498185132397719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268774 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A268768.P5911498185132397719

namespace A268768

/-- `A268774(∑[n+1]+2)` -/
def P5911498185132397719.Spec : Prop :=
  ∀ n, P5911498185132397719.a n = A268768 (n + 1)

end A268768

/-! ## A268768.P6369250819063912752

`lcm(log2(1/2), A268774(A000096(n)+3))`
-/

namespace A268768.P6369250819063912752
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway (Real.logb 2 ((1 : ℚ) / 2 : ℝ))) (A268774 (A000096 n + 3).toNat)

end

end A268768.P6369250819063912752

namespace A268768

/-- `lcm(log2(1/2), A268774(A000096(n)+3))` -/
def P6369250819063912752.Spec : Prop :=
  ∀ n, (P6369250819063912752.a n : ℤ) = A268768 (n + 1)

end A268768

/-! ## A268768.P9467833568300049653

`A268774(A000096(n)+3)%A268899(n+1)`
-/

namespace A268768.P9467833568300049653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A268774 (A000096 n + 3).toNat) (A268899 (n + 1))

end

end A268768.P9467833568300049653

namespace A268768

/-- `A268774(A000096(n)+3)%A268899(n+1)` -/
def P9467833568300049653.Spec : Prop :=
  ∀ n, P9467833568300049653.a n = A268768 (n + 1)

end A268768

/-! ## A268768.P18259847828634228394

`A005117(gcd(n, n+1))*A268774(A000096(n)+3)`
-/

namespace A268768.P18259847828634228394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (Nat.gcd n (n + 1)) * A268774 (A000096 n + 3).toNat

end

end A268768.P18259847828634228394

namespace A268768

/-- `A005117(gcd(n, n+1))*A268774(A000096(n)+3)` -/
def P18259847828634228394.Spec : Prop :=
  ∀ n, P18259847828634228394.a n = A268768 (n + 1)

end A268768

/-!
# A268769: Number of n X 3 0..2 arrays with some element plus some horizontally, vertically, diagonally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A268769, there is no canonical definition to state claims against.
-/

/-! ## A268769.P9462084696944550401

`A268774(∑[n+2]+4)`
-/

namespace A268769.P9462084696944550401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268774 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A268769.P9462084696944550401

/-! ## A268769.P166621262802313000

`lcm(2, A268774(A167614(n+1)))`
-/

namespace A268769.P166621262802313000
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A268774 (A167614 (n + 1)).toNat)

end

end A268769.P166621262802313000

/-! ## A268769.P9259798483949861825

`A268774(A167614(n+1))+A025444(n)`
-/

namespace A268769.P9259798483949861825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268774 (A167614 (n + 1)).toNat + A025444 n

end

end A268769.P9259798483949861825

/-! ## A268769.P8120290787665360336

`A268774(A046691(n)+7)%A346882(n)`
-/

namespace A268769.P8120290787665360336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A268774 (A046691 n + 7).toNat) (A346882 n)

end

end A268769.P8120290787665360336

/-! ## A268769.P17831844913173903923

`A268774(A167614(n+1))%A206515(n+1)`
-/

namespace A268769.P17831844913173903923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A268774 (A167614 (n + 1)).toNat) (A206515 (n + 1))

end

end A268769.P17831844913173903923

/-!
# A268770: Number of n X 4 0..2 arrays with some element plus some horizontally, vertically, diagonally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A268770, there is no canonical definition to state claims against.
-/

/-! ## A268770.P16068929461334194089

`A268774(A374004(n+1))`
-/

namespace A268770.P16068929461334194089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268774 (A374004 (n + 1)).toNat

end

end A268770.P16068929461334194089

/-! ## A268770.P6095706696634883316

`A268774(A055999(n)+10)`
-/

namespace A268770.P6095706696634883316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268774 (A055999 n + 10).toNat

end

end A268770.P6095706696634883316

/-! ## A268770.P9058843950813503463

`A268774(A167614(n+2)+1)`
-/

namespace A268770.P9058843950813503463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268774 (A167614 (n + 2) + 1).toNat

end

end A268770.P9058843950813503463

/-! ## A268770.P9747688589011820321

`A268774(A112355(n+1)+4)`
-/

namespace A268770.P9747688589011820321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268774 (A112355 (n + 1) + 4).toNat

end

end A268770.P9747688589011820321

/-! ## A268770.P17064138626806396401

`A268774(A000217(n+3)+4)`
-/

namespace A268770.P17064138626806396401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268774 (A000217 (n + 3) + 4).toNat

end

end A268770.P17064138626806396401

/-!
# A268771: Number of nX5 0..2 arrays with some element plus some horizontally, vertically, diagonally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A268771, there is no canonical definition to state claims against.
-/

/-! ## A268771.P2442303716506916334

`A268774(A374005(n+1))`
-/

namespace A268771.P2442303716506916334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268774 (A374005 (n + 1)).toNat

end

end A268771.P2442303716506916334

/-! ## A268771.P7942993029769086319

`A268774(A167499(n+3))`
-/

namespace A268771.P7942993029769086319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268774 (A167499 (n + 3)).toNat

end

end A268771.P7942993029769086319

/-! ## A268771.P11475479212568867467

`A268774(A000096(n+3)+6)`
-/

namespace A268771.P11475479212568867467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268774 (A000096 (n + 3) + 6).toNat

end

end A268771.P11475479212568867467

/-! ## A268771.P7290708109767338250

`A268774(A000217(n+4)+5)`
-/

namespace A268771.P7290708109767338250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268774 (A000217 (n + 4) + 5).toNat

end

end A268771.P7290708109767338250

/-! ## A268771.P17914125981235234217

`record[gcd(A084938(n+6), A268774(n+11))]`
-/

namespace A268771.P17914125981235234217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A084938 (n + 6)) (A268774 (n + 11))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268771.P17914125981235234217

/-!
# A268772: Number of nX6 0..2 arrays with some element plus some horizontally, vertically, diagonally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A268772, there is no canonical definition to state claims against.
-/

/-! ## A268772.P15521736471578060148

`A268774(A374007(n+1))`
-/

namespace A268772.P15521736471578060148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268774 (A374007 (n + 1)).toNat

end

end A268772.P15521736471578060148

/-! ## A268772.P1955263560406704846

`A268774(Δ[A264443(n)]+10)`
-/

namespace A268772.P1955263560406704846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268774 (f1 (n + 1) - f1 n + 10).toNat

end

end A268772.P1955263560406704846

/-! ## A268772.P6411105817846505202

`A268774(A000124(n+5)+5)`
-/

namespace A268772.P6411105817846505202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268774 (A000124 (n + 5) + 5).toNat

end

end A268772.P6411105817846505202

/-! ## A268772.P11502913681640770871

`A268774(A000217(n+5)+6)`
-/

namespace A268772.P11502913681640770871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268774 (A000217 (n + 5) + 6).toNat

end

end A268772.P11502913681640770871

/-! ## A268772.P12710865894311918512

`A268774(A046691(n+3)+10)`
-/

namespace A268772.P12710865894311918512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268774 (A046691 (n + 3) + 10).toNat

end

end A268772.P12710865894311918512

/-!
# A268773: Number of nX7 0..2 arrays with some element plus some horizontally, vertically, diagonally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A268773, there is no canonical definition to state claims against.
-/

/-! ## A268773.P201276654921497946

`A268774(A374008(n+1))`
-/

namespace A268773.P201276654921497946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268774 (A374008 (n + 1)).toNat

end

end A268773.P201276654921497946

/-! ## A268773.P12942603725618651269

`A268774(A000124(n+6)+6)`
-/

namespace A268773.P12942603725618651269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268774 (A000124 (n + 6) + 6).toNat

end

end A268773.P12942603725618651269

/-! ## A268773.P11030088690996183359

`A268774(eq[8, A131818(n+1)])`
-/

namespace A268773.P11030088690996183359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268774 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268773.P11030088690996183359

/-! ## A268773.P16796486389549924519

`A268774(eq[4, A219347(n)])`
-/

namespace A268773.P16796486389549924519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268774 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268773.P16796486389549924519

/-! ## A268773.P7957568381685316950

`A268774(eq[6, A193592(n)])`
-/

namespace A268773.P7957568381685316950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268774 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268773.P7957568381685316950

/-!
# A268775: Number of n X 2 binary arrays with some element plus some horizontally, vertically, diagonally or antidiagonally adjacent neighbor totalling two no more than once.

The programs for A268775, the canonical program `A268775.P165643180478746125` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268775 has offset 1).

The definition of A268775 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268775.P165643180478746125

`A093835(n)+A079859(n+4)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A268775

/-- `A093835(n)+A079859(n+4)` -/
def P165643180478746125.Spec : Prop :=
  ∀ n, P165643180478746125.a n = A268775 (n + 1)

theorem P165643180478746125.correct : P165643180478746125.Spec := by
  intro n
  simp only [A268775, Nat.add_sub_cancel]

end A268775

/-! ## A268775.P5947101105945231052

`A113954(n+2)+A045883(n+2)`
-/

namespace A268775.P5947101105945231052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113954 (n + 2) + A045883 (n + 2)

end

end A268775.P5947101105945231052

namespace A268775

/-- `A113954(n+2)+A045883(n+2)` -/
def P5947101105945231052.Spec : Prop :=
  ∀ n, P5947101105945231052.a n = A268775 (n + 1)

end A268775

/-! ## A268775.P7092090769189392419

`A193449(n+1)+A001045(n+3)`
-/

namespace A268775.P7092090769189392419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193449 (n + 1) + A001045 (n + 3)

end

end A268775.P7092090769189392419

namespace A268775

/-- `A193449(n+1)+A001045(n+3)` -/
def P7092090769189392419.Spec : Prop :=
  ∀ n, P7092090769189392419.a n = A268775 (n + 1)

end A268775

/-! ## A268775.P17503117690731574294

`A059570(n+3)-A113954(n+3)`
-/

namespace A268775.P17503117690731574294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059570 (n + 3) - A113954 (n + 3)

end

end A268775.P17503117690731574294

namespace A268775

/-- `A059570(n+3)-A113954(n+3)` -/
def P17503117690731574294.Spec : Prop :=
  ∀ n, P17503117690731574294.a n = A268775 (n + 1)

end A268775

/-! ## A268775.P5822349770595283060

`A283642(n+1)+(n+1)*A283642(n)`
-/

namespace A268775.P5822349770595283060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283642 (n + 1) + (n + 1 : ℤ) * A283642 n

end

end A268775.P5822349770595283060

namespace A268775

/-- `A283642(n+1)+(n+1)*A283642(n)` -/
def P5822349770595283060.Spec : Prop :=
  ∀ n, P5822349770595283060.a n = A268775 (n + 1)

end A268775

/-! ## A268775.P981552153176392599

`A000079(n+2)+n*A001045(n+2)`
-/

namespace A268775.P981552153176392599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 2) + (n : ℤ) * A001045 (n + 2)

end

end A268775.P981552153176392599

namespace A268775

/-- `A000079(n+2)+n*A001045(n+2)` -/
def P981552153176392599.Spec : Prop :=
  ∀ n, P981552153176392599.a n = A268775 (n + 1)

end A268775

/-! ## A268775.P5644817672917956358

`A059570(n+1)+A178748(n+1)+A059570(n+1)`
-/

namespace A268775.P5644817672917956358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059570 (n + 1) + (A178748 (n + 1) + A059570 (n + 1))

end

end A268775.P5644817672917956358

namespace A268775

/-- `A059570(n+1)+A178748(n+1)+A059570(n+1)` -/
def P5644817672917956358.Spec : Prop :=
  ∀ n, P5644817672917956358.a n = A268775 (n + 1)

end A268775

/-! ## A268775.P14135840749786428269

`2*a(n-1)+3*a(n-2)-4*a(n-3)-4*a(n-4)` with `a(0)=4, a(1)=11, a(2)=26, a(3)=65`
-/

namespace A268775.P14135840749786428269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 11, 26, 65] fun n a =>
  2 * a (n - 1) + 3 * a (n - 2) - 4 * a (n - 3) - 4 * a (n - 4)

end

end A268775.P14135840749786428269

namespace A268775

/-- `2*a(n-1)+3*a(n-2)-4*a(n-3)-4*a(n-4)` -/
def P14135840749786428269.Spec : Prop :=
  ∀ n, P14135840749786428269.a n = A268775 (n + 1)

end A268775

/-! ## A268775.P17966013795347316622

`A001787(n+2)-A193449(n)`
-/

namespace A268775.P17966013795347316622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (n + 2) - A193449 n

end

end A268775.P17966013795347316622

namespace A268775

/-- `A001787(n+2)-A193449(n)` -/
def P17966013795347316622.Spec : Prop :=
  ∀ n, P17966013795347316622.a n = A268775 (n + 1)

end A268775

/-! ## A268775.P6151815110502259007

`Δ[A053220(n+1)]-A099429(n)`
-/

namespace A268775.P6151815110502259007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053220 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A099429 n

end

end A268775.P6151815110502259007

namespace A268775

/-- `Δ[A053220(n+1)]-A099429(n)` -/
def P6151815110502259007.Spec : Prop :=
  ∀ n, P6151815110502259007.a n = A268775 (n + 1)

end A268775

/-! ## A268775.P8081484463178320637

`Δ[A004526(n+1)+(n+1)*A000975(n+1)]`
-/

namespace A268775.P8081484463178320637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1) + (n + 1 : ℤ) * A000975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A268775.P8081484463178320637

namespace A268775

/-- `Δ[A004526(n+1)+(n+1)*A000975(n+1)]` -/
def P8081484463178320637.Spec : Prop :=
  ∀ n, P8081484463178320637.a n = A268775 (n + 1)

end A268775

/-! ## A268775.P2149022244080902697

`A127980(n+2)-(A178748(n)+A127985(n))`
-/

namespace A268775.P2149022244080902697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127980 (n + 2) - (A178748 n + A127985 n)

end

end A268775.P2149022244080902697

namespace A268775

/-- `A127980(n+2)-(A178748(n)+A127985(n))` -/
def P2149022244080902697.Spec : Prop :=
  ∀ n, P2149022244080902697.a n = A268775 (n + 1)

end A268775

/-!
# A268776: Number of n X 3 binary arrays with some element plus some horizontally, vertically, diagonally or antidiagonally adjacent neighbor totalling two no more than once.

The programs for A268776, there is no canonical definition to state claims against.
-/

/-! ## A268776.P13826649531888044895

`A268781(∑[n+2]+4)`
-/

namespace A268776.P13826649531888044895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268781 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A268776.P13826649531888044895

/-! ## A268776.P12081260278114044072

`or(val(n+2, 4), A268781(A055998(n)+6))`
-/

namespace A268776.P12081260278114044072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.valuation (n + 2) 4 : ℤ) (A268781 (A055998 n + 6).toNat)

end

end A268776.P12081260278114044072

/-! ## A268776.P11629734738532766524

`lcm(A000034(n), A268781(A034856(n+2)))`
-/

namespace A268776.P11629734738532766524
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A268781 (A034856 (n + 2)).toNat)

end

end A268776.P11629734738532766524

/-! ## A268776.P18057280167606949568

`A268781(A055999(n)+4)%A268746(n+1)`
-/

namespace A268776.P18057280167606949568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A268781 (A055999 n + 4).toNat) (A268746 (n + 1))

end

end A268776.P18057280167606949568

/-! ## A268776.P8515947356698867356

`or(A000035(n+1), A268781(A034856(n+2)))`
-/

namespace A268776.P8515947356698867356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (n + 1)) (A268781 (A034856 (n + 2)).toNat)

end

end A268776.P8515947356698867356

/-! ## A268776.P912279981013879661

`or(A268781(A034856(n+2)), A322389(n+1))`
-/

namespace A268776.P912279981013879661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A268781 (A034856 (n + 2)).toNat) (A322389 (n + 1))

end

end A268776.P912279981013879661

/-!
# A268777: Number of n X 4 binary arrays with some element plus some horizontally, vertically, diagonally or antidiagonally adjacent neighbor totalling two no more than once.

The programs for A268777, there is no canonical definition to state claims against.
-/

/-! ## A268777.P11999620535368862205

`A268781(A374004(n+1))`
-/

namespace A268777.P11999620535368862205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268781 (A374004 (n + 1)).toNat

end

end A268777.P11999620535368862205

/-! ## A268777.P15115011628542462804

`A268781(A052905(n)+9)`
-/

namespace A268777.P15115011628542462804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268781 (A052905 n + 9).toNat

end

end A268777.P15115011628542462804

/-! ## A268777.P17830074354144340691

`A268781(A055999(n)+10)`
-/

namespace A268777.P17830074354144340691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268781 (A055999 n + 10).toNat

end

end A268777.P17830074354144340691

/-! ## A268777.P10405667985690747062

`A268781(A167614(n+2)+1)`
-/

namespace A268777.P10405667985690747062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268781 (A167614 (n + 2) + 1).toNat

end

end A268777.P10405667985690747062

/-! ## A268777.P647135103848161519

`A268781(A166136(n+2)-2)`
-/

namespace A268777.P647135103848161519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268781 (A166136 (n + 2) - 2).toNat

end

end A268777.P647135103848161519

/-! ## A268777.P3344249789675032364

`A268781(A000217(n+3)+4)`
-/

namespace A268777.P3344249789675032364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268781 (A000217 (n + 3) + 4).toNat

end

end A268777.P3344249789675032364

/-! ## A268777.P5069472010049515767

`A268781(A166136(n+1)+1+n)`
-/

namespace A268777.P5069472010049515767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268781 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A268777.P5069472010049515767

/-!
# A268778: Number of nX5 binary arrays with some element plus some horizontally, vertically, diagonally or antidiagonally adjacent neighbor totalling two no more than once.

The programs for A268778, there is no canonical definition to state claims against.
-/

/-! ## A268778.P339829328157676885

`A268781(A374005(n+1))`
-/

namespace A268778.P339829328157676885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268781 (A374005 (n + 1)).toNat

end

end A268778.P339829328157676885

/-! ## A268778.P10543890007737353477

`A268781(A167499(n+3))`
-/

namespace A268778.P10543890007737353477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268781 (A167499 (n + 3)).toNat

end

end A268778.P10543890007737353477

/-! ## A268778.P17371081982934437183

`A268781(A167614(n+3)+2)`
-/

namespace A268778.P17371081982934437183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268781 (A167614 (n + 3) + 2).toNat

end

end A268778.P17371081982934437183

/-! ## A268778.P7705307058719226911

`A268781(A000217(n+4)+5)`
-/

namespace A268778.P7705307058719226911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268781 (A000217 (n + 4) + 5).toNat

end

end A268778.P7705307058719226911

/-! ## A268778.P1634311123257264048

`A268781(A055999(n+1)+11)`
-/

namespace A268778.P1634311123257264048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268781 (A055999 (n + 1) + 11).toNat

end

end A268778.P1634311123257264048

/-!
# A268779: Number of nX6 binary arrays with some element plus some horizontally, vertically, diagonally or antidiagonally adjacent neighbor totalling two no more than once.

The programs for A268779, there is no canonical definition to state claims against.
-/

/-! ## A268779.P9285023749834672078

`A268781(A374007(n+1))`
-/

namespace A268779.P9285023749834672078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268781 (A374007 (n + 1)).toNat

end

end A268779.P9285023749834672078

/-! ## A268779.P6173306504352046139

`A268781(A166136(n+4))`
-/

namespace A268779.P6173306504352046139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268781 (A166136 (n + 4)).toNat

end

end A268779.P6173306504352046139

/-! ## A268779.P12364198019178800016

`A268781(A000217(n+5)+6)`
-/

namespace A268779.P12364198019178800016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268781 (A000217 (n + 5) + 6).toNat

end

end A268779.P12364198019178800016

/-! ## A268779.P2926240220935243926

`A268781(A052905(n+2)+11)`
-/

namespace A268779.P2926240220935243926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268781 (A052905 (n + 2) + 11).toNat

end

end A268779.P2926240220935243926

/-! ## A268779.P11223426143654483638

`A268781(A060577(n+4)+10)`
-/

namespace A268779.P11223426143654483638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268781 (A060577 (n + 4) + 10).toNat

end

end A268779.P11223426143654483638

/-!
# A268780: Number of n X 7 binary arrays with some element plus some horizontally, vertically, diagonally or antidiagonally adjacent neighbor totalling two no more than once.

The programs for A268780, there is no canonical definition to state claims against.
-/

/-! ## A268780.P10230263357376830067

`A268781(A374008(n+1))`
-/

namespace A268780.P10230263357376830067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268781 (A374008 (n + 1)).toNat

end

end A268780.P10230263357376830067

/-! ## A268780.P5202313379137699391

`A268781(eq[8, A131818(n+1)])`
-/

namespace A268780.P5202313379137699391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268780.P5202313379137699391

/-! ## A268780.P10538289901581578437

`A268781(eq[6, A144328(n+1)]+1)`
-/

namespace A268780.P10538289901581578437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A268780.P10538289901581578437

/-! ## A268780.P6370762228819347276

`A268781(eq[4, A219347(n)])`
-/

namespace A268780.P6370762228819347276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268780.P6370762228819347276

/-! ## A268780.P8790694613761061413

`A268781(eq[6, A193592(n)])`
-/

namespace A268780.P8790694613761061413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268780.P8790694613761061413

/-!
# A268782: Number of n X n binary arrays with some element plus some horizontally, vertically or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A268782, there is no canonical definition to state claims against.
-/

/-! ## A268782.P5742409559642233816

`A268789((n+1)²+n²)`
-/

namespace A268782.P5742409559642233816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268789 ((n + 1) ^ 2 + n ^ 2)

end

end A268782.P5742409559642233816

/-! ## A268782.P13861113418616627330

`record[A003982(n)*A268789(n+1)]`
-/

namespace A268782.P13861113418616627330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A268789 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268782.P13861113418616627330

/-! ## A268782.P1689367944503521477

`record[(2-A143182(n))*A268789(n+1)]`
-/

namespace A268782.P1689367944503521477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A143182 n) * A268789 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268782.P1689367944503521477

/-! ## A268782.P18091476772853027112

`A268789(A001844(n))+A025469(n)`
-/

namespace A268782.P18091476772853027112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268789 (A001844 n).toNat + A025469 n

end

end A268782.P18091476772853027112

/-! ## A268782.P345236749726526161

`A000041(val(n+1, 13))*A268789(A001844(n))`
-/

namespace A268782.P345236749726526161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.valuation (n + 1) 13) * A268789 (A001844 n).toNat

end

end A268782.P345236749726526161

/-!
# A268783: Number of n X 2 binary arrays with some element plus some horizontally, vertically or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A268783, there is no canonical definition to state claims against.
-/

/-! ## A268783.P2862481029936999376

`A268789(∑[n+1]+2)`
-/

namespace A268783.P2862481029936999376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268789 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A268783.P2862481029936999376

/-! ## A268783.P3552702121489740893

`record[A268789(A133263(A137735(n)))]`
-/

namespace A268783.P3552702121489740893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268789 (A133263 (A137735 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268783.P3552702121489740893

/-! ## A268783.P13878984639418952831

`record[A268789(A133263(A143182(n)))]`
-/

namespace A268783.P13878984639418952831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268789 (A133263 (A143182 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268783.P13878984639418952831

/-! ## A268783.P10887210447103525595

`record[A268789(A238531(A220415(n+1)))]`
-/

namespace A268783.P10887210447103525595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268789 (A238531 (A220415 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268783.P10887210447103525595

/-! ## A268783.P155079841324868035

`record[gcd(A055137(n), A268789(n+1))]`
-/

namespace A268783.P155079841324868035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055137 n) (A268789 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268783.P155079841324868035

/-!
# A268784: Number of n X 3 binary arrays with some element plus some horizontally, vertically or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A268784, there is no canonical definition to state claims against.
-/

/-! ## A268784.P532039994842818634

`A268789(∑[n+2]+4)`
-/

namespace A268784.P532039994842818634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268789 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A268784.P532039994842818634

/-! ## A268784.P13657836063732401892

`A268789(A167614(n+1))%Δ[5^n]`
-/

namespace A268784.P13657836063732401892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A268789 (A167614 (n + 1)).toNat) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A268784.P13657836063732401892

/-! ## A268784.P11084847960464514306

`lcm(A020985(n), A268789(A167614(n+1)))`
-/

namespace A268784.P11084847960464514306
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A268789 (A167614 (n + 1)).toNat)

end

end A268784.P11084847960464514306

/-! ## A268784.P8376147147889722460

`or(A000038(n), A268789(A167614(n+1)))`
-/

namespace A268784.P8376147147889722460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A268789 (A167614 (n + 1)).toNat)

end

end A268784.P8376147147889722460

/-! ## A268784.P3144865475580566332

`char[A001057(n)]*A268789(A167614(n+1))`
-/

namespace A268784.P3144865475580566332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A268789 (A167614 (n + 1)).toNat

end

end A268784.P3144865475580566332

/-!
# A268785: Number of nX4 binary arrays with some element plus some horizontally, vertically or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A268785, there is no canonical definition to state claims against.
-/

/-! ## A268785.P2330534813278077125

`A268789(A374004(n+1))`
-/

namespace A268785.P2330534813278077125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268789 (A374004 (n + 1)).toNat

end

end A268785.P2330534813278077125

/-! ## A268785.P2618860468451112819

`A268789(A055999(n)+10)`
-/

namespace A268785.P2618860468451112819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268789 (A055999 n + 10).toNat

end

end A268785.P2618860468451112819

/-! ## A268785.P2433795255712792404

`A268789(A167614(n+2)+1)`
-/

namespace A268785.P2433795255712792404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268789 (A167614 (n + 2) + 1).toNat

end

end A268785.P2433795255712792404

/-! ## A268785.P18381429512708596508

`A268789(A000217(n+3)+4)`
-/

namespace A268785.P18381429512708596508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268789 (A000217 (n + 3) + 4).toNat

end

end A268785.P18381429512708596508

/-! ## A268785.P5053125077967923836

`A268789(A000124(n+4)-(n+1))`
-/

namespace A268785.P5053125077967923836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268789 (A000124 (n + 4) - (n + 1 : ℤ)).toNat

end

end A268785.P5053125077967923836

/-!
# A268786: Number of nX5 binary arrays with some element plus some horizontally, vertically or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A268786, there is no canonical definition to state claims against.
-/

/-! ## A268786.P13097686526406631623

`A268789(A374005(n+1))`
-/

namespace A268786.P13097686526406631623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268789 (A374005 (n + 1)).toNat

end

end A268786.P13097686526406631623

/-! ## A268786.P3505930371512745641

`A268789(A167499(n+3))`
-/

namespace A268786.P3505930371512745641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268789 (A167499 (n + 3)).toNat

end

end A268786.P3505930371512745641

/-! ## A268786.P11317250207632234600

`A268789(A155212(n)+13)`
-/

namespace A268786.P11317250207632234600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268789 (A155212 n + 13).toNat

end

end A268786.P11317250207632234600

/-! ## A268786.P12439838082301330874

`A268789(A000217(n+4)+5)`
-/

namespace A268786.P12439838082301330874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268789 (A000217 (n + 4) + 5).toNat

end

end A268786.P12439838082301330874

/-! ## A268786.P564057996393925857

`A268789(A055998(n+2)+8)`
-/

namespace A268786.P564057996393925857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268789 (A055998 (n + 2) + 8).toNat

end

end A268786.P564057996393925857

/-!
# A268787: Number of nX6 binary arrays with some element plus some horizontally, vertically or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A268787, there is no canonical definition to state claims against.
-/

/-! ## A268787.P354185112497103756

`A268789(A374007(n+1))`
-/

namespace A268787.P354185112497103756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268789 (A374007 (n + 1)).toNat

end

end A268787.P354185112497103756

/-! ## A268787.P12684209116587929382

`A268789(eq[7, A131818(n+1)])`
-/

namespace A268787.P12684209116587929382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268789 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268787.P12684209116587929382

/-! ## A268787.P5725894781768984202

`A268789(eq[3, A219347(n)])`
-/

namespace A268787.P5725894781768984202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268789 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268787.P5725894781768984202

/-! ## A268787.P17200361720938206743

`A268789(eq[5, A193592(n)])`
-/

namespace A268787.P17200361720938206743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268789 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268787.P17200361720938206743

/-! ## A268787.P2423751225799342468

`A268789(eq[8, A258709(n)])`
-/

namespace A268787.P2423751225799342468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268789 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268787.P2423751225799342468

/-!
# A268788: Number of nX7 binary arrays with some element plus some horizontally, vertically or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A268788, there is no canonical definition to state claims against.
-/

/-! ## A268788.P12083593081495114339

`A268789(A374008(n+1))`
-/

namespace A268788.P12083593081495114339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268789 (A374008 (n + 1)).toNat

end

end A268788.P12083593081495114339

/-! ## A268788.P18027363438232589408

`A268789(eq[11, A066657(n)])`
-/

namespace A268788.P18027363438232589408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268789 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268788.P18027363438232589408

/-! ## A268788.P18318001344090785832

`A268789(eq[8, A131818(n+1)])`
-/

namespace A268788.P18318001344090785832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268789 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268788.P18318001344090785832

/-! ## A268788.P17195586787431314459

`A268789(A055999(n+4))`
-/

namespace A268788.P17195586787431314459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268789 (A055999 (n + 4)).toNat

end

end A268788.P17195586787431314459

/-! ## A268788.P8510896264403932917

`A268789(eq[4, A219347(n)])`
-/

namespace A268788.P8510896264403932917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268789 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268788.P8510896264403932917

/-!
# A268789: T(n,k)=Number of nXk binary arrays with some element plus some horizontally, vertically or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A268789, there is no canonical definition to state claims against.
-/

/-! ## A268789.P13621861552731132596

`A320840(A295606(n+1))-1`
-/

namespace A268789.P13621861552731132596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320840 (A295606 (n + 1)).toNat - 1

end

end A268789.P13621861552731132596

/-! ## A268789.P8258853302817454983

`A102800(A295051(n+1))-A002024(A003057(n+2))`
-/

namespace A268789.P8258853302817454983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102800 (A295051 (n + 1)).toNat - A002024 (A003057 (n + 2)).toNat

end

end A268789.P8258853302817454983

/-!
# A268791: Number of n X n 0..2 arrays with some element plus some horizontally, vertically or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A268791, there is no canonical definition to state claims against.
-/

/-! ## A268791.P14353105020751778759

`A268798(∑[4*n]+1)`
-/

namespace A268791.P14353105020751778759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268798 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A268791.P14353105020751778759

/-! ## A268791.P2376519080723795035

`lcm(2, A268798(A001844(n)))`
-/

namespace A268791.P2376519080723795035
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A268798 (A001844 n).toNat)

end

end A268791.P2376519080723795035

/-! ## A268791.P354333618049603797

`A268798(A001844(n))+A180472(n)`
-/

namespace A268791.P354333618049603797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268798 (A001844 n).toNat + A180472 n

end

end A268791.P354333618049603797

/-! ## A268791.P15098899444985536995

`A054977(n)*A268798(A001844(n))`
-/

namespace A268791.P15098899444985536995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A268798 (A001844 n).toNat

end

end A268791.P15098899444985536995

/-! ## A268791.P669220056894693902

`A268798(A001844(n))+char[A006530(19*(n+1))]`
-/

namespace A268791.P669220056894693902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (19 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268798 (A001844 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A268791.P669220056894693902

/-!
# A268792: Number of n X 2 0..2 arrays with some element plus some horizontally, vertically or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A268792, there is no canonical definition to state claims against.
-/

/-! ## A268792.P13042801250552873982

`A268803(n+1)-A232935(n+1)`
-/

namespace A268792.P13042801250552873982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268803 (n + 1) - A232935 (n + 1)

end

end A268792.P13042801250552873982

/-! ## A268792.P3459899846942366593

`A268803(n+1)-2*A002478(n+2)`
-/

namespace A268792.P3459899846942366593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268803 (n + 1) - 2 * A002478 (n + 2)

end

end A268792.P3459899846942366593

/-! ## A268792.P17983296739380482723

`A268803(n+1)-abs(Δ[2*A078039(n)])`
-/

namespace A268792.P17983296739380482723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A078039 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268803 (n + 1) - |f1 (n + 1) - f1 n|

end

end A268792.P17983296739380482723

/-! ## A268792.P18139439994947793258

`A268803(n+1)-Δ[2*A077864(n+1)]`
-/

namespace A268792.P18139439994947793258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268803 (n + 1) - (f1 (n + 1) - f1 n)

end

end A268792.P18139439994947793258

/-! ## A268792.P404349576331556373

`A268803(n+1)-2*A000930(2*(n+2))`
-/

namespace A268792.P404349576331556373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268803 (n + 1) - 2 * A000930 (2 * (n + 2))

end

end A268792.P404349576331556373

/-!
# A268793: Number of nX3 0..2 arrays with some element plus some horizontally, vertically or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A268793, there is no canonical definition to state claims against.
-/

/-! ## A268793.P2375874617384903800

`A268804(n+1)-A232936(n+1)`
-/

namespace A268793.P2375874617384903800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268804 (n + 1) - A232936 (n + 1)

end

end A268793.P2375874617384903800

/-! ## A268793.P6441280942622440411

`A268798(∑[n+2]+4)`
-/

namespace A268793.P6441280942622440411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268798 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A268793.P6441280942622440411

/-! ## A268793.P9873381549759035755

`lcm(2, A268798(A167614(n+1)))`
-/

namespace A268793.P9873381549759035755
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A268798 (A167614 (n + 1)).toNat)

end

end A268793.P9873381549759035755

/-! ## A268793.P9926874119951943682

`A268798(A167614(n+1))+A000038(n+1)`
-/

namespace A268793.P9926874119951943682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268798 (A167614 (n + 1)).toNat + A000038 (n + 1)

end

end A268793.P9926874119951943682

/-! ## A268793.P14687778795308733397

`A268798(A167614(n+1))%A186044(n+1)`
-/

namespace A268793.P14687778795308733397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A268798 (A167614 (n + 1)).toNat) (A186044 (n + 1))

end

end A268793.P14687778795308733397

/-!
# A268794: Number of nX4 0..2 arrays with some element plus some horizontally, vertically or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A268794, there is no canonical definition to state claims against.
-/

/-! ## A268794.P12471749385526684916

`A268798(A052905(n)+9)`
-/

namespace A268794.P12471749385526684916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268798 (A052905 n + 9).toNat

end

end A268794.P12471749385526684916

/-! ## A268794.P4209166152469705899

`A268798(A055999(n)+10)`
-/

namespace A268794.P4209166152469705899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268798 (A055999 n + 10).toNat

end

end A268794.P4209166152469705899

/-! ## A268794.P4180434150027998429

`A268798(A167614(n+2)+1)`
-/

namespace A268794.P4180434150027998429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268798 (A167614 (n + 2) + 1).toNat

end

end A268794.P4180434150027998429

/-! ## A268794.P3891151191702916196

`A268798(A133263(n+3)+2)`
-/

namespace A268794.P3891151191702916196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268798 (A133263 (n + 3) + 2).toNat

end

end A268794.P3891151191702916196

/-! ## A268794.P14300088025579680078

`A268798(A166136(n+2)-2)`
-/

namespace A268794.P14300088025579680078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268798 (A166136 (n + 2) - 2).toNat

end

end A268794.P14300088025579680078

/-!
# A268795: Number of nX5 0..2 arrays with some element plus some horizontally, vertically or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A268795, there is no canonical definition to state claims against.
-/

/-! ## A268795.P810656398685054885

`A268798(A167499(n+3))`
-/

namespace A268795.P810656398685054885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268798 (A167499 (n + 3)).toNat

end

end A268795.P810656398685054885

/-! ## A268795.P11742123629313136762

`A268798(A166136(n+3)-1)`
-/

namespace A268795.P11742123629313136762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268798 (A166136 (n + 3) - 1).toNat

end

end A268795.P11742123629313136762

/-! ## A268795.P3031430505203304199

`A268798(A000124(n+4)+4)`
-/

namespace A268795.P3031430505203304199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268798 (A000124 (n + 4) + 4).toNat

end

end A268795.P3031430505203304199

/-! ## A268795.P14454366174885378256

`A268798(A000096(n+3)+6)`
-/

namespace A268795.P14454366174885378256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268798 (A000096 (n + 3) + 6).toNat

end

end A268795.P14454366174885378256

/-! ## A268795.P5540638290889417154

`A268798(A038722(Δ[A023545(n+1)]))`
-/

namespace A268795.P5540638290889417154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268798 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A268795.P5540638290889417154

/-!
# A268796: Number of nX6 0..2 arrays with some element plus some horizontally, vertically or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A268796, there is no canonical definition to state claims against.
-/

/-! ## A268796.P1228781460260823654

`A268798(A000217(n+5)+6)`
-/

namespace A268796.P1228781460260823654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268798 (A000217 (n + 5) + 6).toNat

end

end A268796.P1228781460260823654

/-! ## A268796.P12241655828871971593

`A268798(eq[7, A131818(n+1)])`
-/

namespace A268796.P12241655828871971593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268798 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268796.P12241655828871971593

/-! ## A268796.P1093682058979496685

`A268798(A374007(n+1))`
-/

namespace A268796.P1093682058979496685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268798 (A374007 (n + 1)).toNat

end

end A268796.P1093682058979496685

/-! ## A268796.P17035584006305015167

`A268798(A052905(n+3))`
-/

namespace A268796.P17035584006305015167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268798 (A052905 (n + 3)).toNat

end

end A268796.P17035584006305015167

/-! ## A268796.P16835085888223751292

`A268798(eq[5, A193592(n)])`
-/

namespace A268796.P16835085888223751292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268798 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268796.P16835085888223751292

/-!
# A268797: Number of nX7 0..2 arrays with some element plus some horizontally, vertically or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A268797, there is no canonical definition to state claims against.
-/

/-! ## A268797.P10955668261532512743

`A268808(n+1)-A232940(n+1)`
-/

namespace A268797.P10955668261532512743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268808 (n + 1) - A232940 (n + 1)

end

end A268797.P10955668261532512743

/-! ## A268797.P17622018757530065743

`A268798(A000124(n+6)+6)`
-/

namespace A268797.P17622018757530065743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268798 (A000124 (n + 6) + 6).toNat

end

end A268797.P17622018757530065743

/-! ## A268797.P9366604222577439712

`A268798(eq[8, A131818(n+1)])`
-/

namespace A268797.P9366604222577439712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268798 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268797.P9366604222577439712

/-! ## A268797.P15199060140219535287

`A268798(A374008(n+1))`
-/

namespace A268797.P15199060140219535287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268798 (A374008 (n + 1)).toNat

end

end A268797.P15199060140219535287

/-! ## A268797.P16654917524715032588

`A268798(A055999(n+4))`
-/

namespace A268797.P16654917524715032588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268798 (A055999 (n + 4)).toNat

end

end A268797.P16654917524715032588

/-!
# A268798: T(n,k)=Number of nXk 0..2 arrays with some element plus some horizontally, vertically or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A268798, there is no canonical definition to state claims against.
-/

/-! ## A268798.P5594998702120414262

`A268809(n+1)-A232941(n+1)`
-/

namespace A268798.P5594998702120414262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268809 (n + 1) - A232941 (n + 1)

end

end A268798.P5594998702120414262

/-!
# A268799: Record (maximal) gaps between primes of the form 4k + 3.

The programs for A268799, there is no canonical definition to state claims against.
-/

/-! ## A268799.P17351049259261318082

`A268801(n+1)-A268800(n+1)`
-/

namespace A268799.P17351049259261318082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268801 (n + 1) - A268800 (n + 1)

end

end A268799.P17351049259261318082

/-! ## A268799.P187121274724738660

`record[A082075(n+1)]`
-/

namespace A268799.P187121274724738660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082075 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268799.P187121274724738660

/-! ## A268799.P9437391203752192325

`record[4*A082076(n+1)]`
-/

namespace A268799.P9437391203752192325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A082076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268799.P9437391203752192325

/-! ## A268799.P12757458697008232919

`A008574(record[A082076(n+1)])`
-/

namespace A268799.P12757458697008232919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A268799.P12757458697008232919

/-! ## A268799.P8381748740929949744

`A008586(record[A082076(n+1)])`
-/

namespace A268799.P8381748740929949744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A268799.P8381748740929949744

