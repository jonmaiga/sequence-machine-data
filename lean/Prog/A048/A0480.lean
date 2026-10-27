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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
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
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B003.C006
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A048001: Number of nonempty subsets of {1,2,...,n} in which exactly 1/6 of the elements are <= n/3.

The programs for A048001, there is no canonical definition to state claims against.
-/

/-! ## A048001.P14600588311539371355

`round(sqrt(n))*A025428(A268571(n+1))`
-/

namespace A048001.P14600588311539371355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ)) * A025428 (A268571 (n + 1)).toNat

end

end A048001.P14600588311539371355

/-! ## A048001.P3780390331903131433

`(floor(sqrt((n+1)^5))-1)%A007318(A288425(n+1))`
-/

namespace A048001.P3780390331903131433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((Nat.sqrt ((n + 1) ^ 5) : ℤ) - 1) (A007318 (A288425 (n + 1)).toNat)

end

end A048001.P3780390331903131433

/-! ## A048001.P10910683468903533430

`A048047(n+1)*A078772(A000108(n))`
-/

namespace A048001.P10910683468903533430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048047 (n + 1) * A078772 (A000108 n).toNat

end

end A048001.P10910683468903533430

/-! ## A048001.P2682485680979268048

`A000196(A000120(n)*A320645(n+1))`
-/

namespace A048001.P2682485680979268048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A000120 n * A320645 (n + 1)).toNat

end

end A048001.P2682485680979268048

/-! ## A048001.P10079754233679205214

`A061819(A085399(n+1))%A004149(n)`
-/

namespace A048001.P10079754233679205214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061819 (A085399 (n + 1)).toNat) (A004149 n)

end

end A048001.P10079754233679205214

/-!
# A048002: Number of nonempty subsets of {1,2,...,n} in which exactly 5/6 of the elements are <= n/3.

The programs for A048002, there is no canonical definition to state claims against.
-/

/-! ## A048002.P17205108832637554710

`A301337(n+3)*A338708(A301337(n+1))`
-/

namespace A048002.P17205108832637554710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301337 (n + 3) * A338708 (A301337 (n + 1)).toNat

end

end A048002.P17205108832637554710

/-!
# A048003: Triangular array T read by rows: T(h,k) = number of binary words of length h and maximal runlength k.

The programs for A048003, there is no canonical definition to state claims against.
-/

/-! ## A048003.P9947489970889819673

`2*A048004(n)`
-/

namespace A048003.P9947489970889819673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048004 n

end

end A048003.P9947489970889819673

/-! ## A048003.P12989322021295379592

`A048004(char[1]+n)+A048004(n)`
-/

namespace A048003.P12989322021295379592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048004 ((if ∃ j, f1 j = n then 1 else 0) + n) + A048004 n

end

end A048003.P12989322021295379592

/-! ## A048003.P9214552141176110112

`A048004(n)+gcd(A000038(n), A048004(n))`
-/

namespace A048003.P9214552141176110112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048004 n + (Int.gcd (A000038 n) (A048004 n) : ℤ)

end

end A048003.P9214552141176110112

/-! ## A048003.P11550467992995681411

`A048004(n)+or(A000007(n), A048004(n))`
-/

namespace A048003.P11550467992995681411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048004 n + Int.lor (A000007 n) (A048004 n)

end

end A048003.P11550467992995681411

/-! ## A048003.P407078551261476101

`A048004(n)+A048004(n)^(A139250(n)%2)`
-/

namespace A048003.P407078551261476101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048004 n : ℚ) + (A048004 n : ℚ) ^ (Int.tmod (A139250 n) 2 : ℤ)

end

end A048003.P407078551261476101

/-! ## A048003.P10911195016616395120

`A048004(n)-(A193581(A004185(n))-A048004(n))`
-/

namespace A048003.P10911195016616395120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048004 n - (A193581 (A004185 n).toNat - A048004 n)

end

end A048003.P10911195016616395120

/-! ## A048003.P9896774248315841948

`A000007(A008574(n))+A048004(n)+A048004(n)`
-/

namespace A048003.P9896774248315841948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A008574 n).toNat + (A048004 n + A048004 n)

end

end A048003.P9896774248315841948

/-! ## A048003.P4203160333648569779

`A004277(A048004(n))`
-/

namespace A048003.P4203160333648569779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A048004 n).toNat

end

end A048003.P4203160333648569779

/-! ## A048003.P16075716882655011137

`A004275(A048004(n)+1)`
-/

namespace A048003.P16075716882655011137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A048004 n + 1).toNat

end

end A048003.P16075716882655011137

/-! ## A048003.P1079304628160371135

`A005843(A048004(n)%(n+2)²)`
-/

namespace A048003.P1079304628160371135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Int.tmod (A048004 n) ((n + 2) ^ 2 : ℤ)).toNat

end

end A048003.P1079304628160371135

/-! ## A048003.P15403468937505052780

`A005843(or(A000007(n), A048004(n)))`
-/

namespace A048003.P15403468937505052780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Int.lor (A000007 n) (A048004 n)).toNat

end

end A048003.P15403468937505052780

/-!
# A048004: Triangular array read by rows: T(n,k) = number of binary vectors of length n whose longest run of consecutive 1's has length k, for n >= 0, 0 <= k <= n.

The programs for A048004, there is no canonical definition to state claims against.
-/

/-! ## A048004.P3984406219922796390

`A048003(n+1)/2`
-/

namespace A048004.P3984406219922796390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048003 (n + 1) : ℚ) / 2

end

end A048004.P3984406219922796390

/-! ## A048004.P15852463703163781981

`2^A008683(A020483(n))*A048003(n+1)`
-/

namespace A048004.P15852463703163781981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A020483 n).toNat : ℤ) * (A048003 (n + 1) : ℚ)

end

end A048004.P15852463703163781981

/-! ## A048004.P15394676668857700650

`2^A008683(A020484(n))*A048003(n+1)`
-/

namespace A048004.P15394676668857700650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A020484 n).toNat : ℤ) * (A048003 (n + 1) : ℚ)

end

end A048004.P15394676668857700650

/-! ## A048004.P791182181265002646

`2^A008683(A104272(n+1))*A048003(n+1)`
-/

namespace A048004.P791182181265002646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A104272 (n + 1)).toNat : ℤ) * (A048003 (n + 1) : ℚ)

end

end A048004.P791182181265002646

/-! ## A048004.P10365715689077415650

`2^A008683(A058500(n+1))*A048003(n+1)`
-/

namespace A048004.P10365715689077415650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A058500 (n + 1)).toNat : ℤ) * (A048003 (n + 1) : ℚ)

end

end A048004.P10365715689077415650

/-! ## A048004.P7112760403182248627

`2^A008683(A213521(n+1))*A048003(n+1)`
-/

namespace A048004.P7112760403182248627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A213521 (n + 1)).toNat : ℤ) * (A048003 (n + 1) : ℚ)

end

end A048004.P7112760403182248627

/-! ## A048004.P12359675298471965407

`A014682(A048003(n+1))`
-/

namespace A048004.P12359675298471965407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A048003 (n + 1)).toNat

end

end A048004.P12359675298471965407

/-! ## A048004.P14597462022202206986

`A273943(lcm(2, A048003(n+1)))`
-/

namespace A048004.P14597462022202206986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (Int.lcm 2 (A048003 (n + 1)))

end

end A048004.P14597462022202206986

/-! ## A048004.P10268058448048537559

`A273943(A048003(n+1)+2)-1`
-/

namespace A048004.P10268058448048537559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A048003 (n + 1) + 2).toNat - 1

end

end A048004.P10268058448048537559

/-! ## A048004.P7773045569585793314

`A273943(A048003(n+1)-A000007(n))`
-/

namespace A048004.P7773045569585793314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A048003 (n + 1) - A000007 n).toNat

end

end A048004.P7773045569585793314

/-! ## A048004.P13220166498355947986

`gcd(A000038(n), A273943(A048003(n+1)))`
-/

namespace A048004.P13220166498355947986
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A273943 (A048003 (n + 1)).toNat)

end

end A048004.P13220166498355947986

/-! ## A048004.P358989599797909402

`A273943(or(A000038(n), A048003(n+1)))`
-/

namespace A048004.P358989599797909402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (Int.lor (A000038 n) (A048003 (n + 1))).toNat

end

end A048004.P358989599797909402

/-! ## A048004.P17237272606098448955

`A007318(C(2, n))*A273943(A048003(n+1))`
-/

namespace A048004.P17237272606098448955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A273943 (A048003 (n + 1)).toNat

end

end A048004.P17237272606098448955

/-! ## A048004.P6426533674564026743

`A000108(C(2, n+2))*A273943(A048003(n+1))`
-/

namespace A048004.P6426533674564026743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A273943 (A048003 (n + 1)).toNat

end

end A048004.P6426533674564026743

/-! ## A048004.P8754861990000099657

`A000108(gcd(n, n+1))*A273943(A048003(n+1))`
-/

namespace A048004.P8754861990000099657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.gcd n (n + 1)) * A273943 (A048003 (n + 1)).toNat

end

end A048004.P8754861990000099657

/-! ## A048004.P6092362643913536375

`((-1)^A020639(n+1))²*A273943(A048003(n+1))`
-/

namespace A048004.P6092362643913536375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1 : ℚ) ^ (A020639 (n + 1) : ℤ)) ^ 2 * (A273943 (A048003 (n + 1)).toNat : ℚ)

end

end A048004.P6092362643913536375

/-! ## A048004.P18224002654268064167

`A246425(A048003(n+1)-1)`
-/

namespace A048004.P18224002654268064167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 (A048003 (n + 1) - 1).toNat

end

end A048004.P18224002654268064167

/-! ## A048004.P794243809848329915

`A328399(A048003(n+1)-2)`
-/

namespace A048004.P794243809848329915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (A048003 (n + 1) - 2).toNat

end

end A048004.P794243809848329915

/-! ## A048004.P1029863104246002364

`A038572(and(-2, A048003(n+1)))`
-/

namespace A048004.P1029863104246002364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (Int.land (-2) (A048003 (n + 1))).toNat

end

end A048004.P1029863104246002364

/-!
# A048005: Number of nonempty subsets of {1,2,...,n} in which exactly 1/2 of the elements are <= (n-1)/3.

The programs for A048005, the canonical program `A048005.P957266765891189045` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048005 has offset 1).

The definition of A048005 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048005.P957266765891189045

`C(n+1, floor(n/3))-1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048005

/-- `C(n+1, floor(n/3))-1` -/
def P957266765891189045.Spec : Prop :=
  ∀ n, P957266765891189045.a n = A048005 (n + 1)

theorem P957266765891189045.correct : P957266765891189045.Spec := by
  intro n
  simp only [A048005, Nat.add_sub_cancel]

end A048005

/-! ## A048005.P17308914452536640122

`abs(1-C(n+1, A002264(n)))`
-/

namespace A048005.P17308914452536640122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (Nat.choose (n + 1) (A002264 n).toNat : ℤ)|

end

end A048005.P17308914452536640122

namespace A048005

/-- `abs(1-C(n+1, A002264(n)))` -/
def P17308914452536640122.Spec : Prop :=
  ∀ n, P17308914452536640122.a n = A048005 (n + 1)

end A048005

/-! ## A048005.P1730194072606343591

`A074909(A171452(n)+n)-1`
-/

namespace A048005.P1730194072606343591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (A171452 n + (n : ℤ)).toNat - 1

end

end A048005.P1730194072606343591

namespace A048005

/-- `A074909(A171452(n)+n)-1` -/
def P1730194072606343591.Spec : Prop :=
  ∀ n, P1730194072606343591.a n = A048005 (n + 1)

end A048005

/-! ## A048005.P10693733033816165547

`A007318(floor(∑[γ²+n+1]))-1`
-/

namespace A048005.P10693733033816165547
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.eulerMascheroniConstant ^ 2 + (n + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋.toNat - 1

end

end A048005.P10693733033816165547

namespace A048005

/-- `A007318(floor(∑[γ²+n+1]))-1` -/
def P10693733033816165547.Spec : Prop :=
  ∀ n, P10693733033816165547.a n = A048005 (n + 1)

end A048005

/-! ## A048005.P8446457547088876234

`A014473(A024401(n+1))`
-/

namespace A048005.P8446457547088876234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 (A024401 (n + 1)).toNat

end

end A048005.P8446457547088876234

namespace A048005

/-- `A014473(A024401(n+1))` -/
def P8446457547088876234.Spec : Prop :=
  ∀ n, P8446457547088876234.a n = A048005 (n + 1)

end A048005

/-! ## A048005.P7114870358379124696

`A014473(A000217(n)+comp[4*n])`
-/

namespace A048005.P7114870358379124696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 (A000217 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)).toNat

end

end A048005.P7114870358379124696

namespace A048005

/-- `A014473(A000217(n)+comp[4*n])` -/
def P7114870358379124696.Spec : Prop :=
  ∀ n, P7114870358379124696.a n = A048005 (n + 1)

end A048005

/-! ## A048005.P1993277761318345373

`A014473(A004396(2*n+1)+∑[n])`
-/

namespace A048005.P1993277761318345373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 (A004396 (2 * n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A048005.P1993277761318345373

namespace A048005

/-- `A014473(A004396(2*n+1)+∑[n])` -/
def P1993277761318345373.Spec : Prop :=
  ∀ n, P1993277761318345373.a n = A048005 (n + 1)

end A048005

/-! ## A048005.P9839859471248384546

`A014473(A047220(n+2)+A000124(n))`
-/

namespace A048005.P9839859471248384546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 (A047220 (n + 2) + A000124 n).toNat

end

end A048005.P9839859471248384546

namespace A048005

/-- `A014473(A047220(n+2)+A000124(n))` -/
def P9839859471248384546.Spec : Prop :=
  ∀ n, P9839859471248384546.a n = A048005 (n + 1)

end A048005

/-! ## A048005.P1564393116638387552

`A014473(A000124(n)+A002264(4*n))`
-/

namespace A048005.P1564393116638387552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 (A000124 n + A002264 (4 * n)).toNat

end

end A048005.P1564393116638387552

namespace A048005

/-- `A014473(A000124(n)+A002264(4*n))` -/
def P1564393116638387552.Spec : Prop :=
  ∀ n, P1564393116638387552.a n = A048005 (n + 1)

end A048005

/-! ## A048005.P16340193370799491405

`A014473(A000124(n)+A002264(n)+n)`
-/

namespace A048005.P16340193370799491405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 (A000124 n + (A002264 n + (n : ℤ))).toNat

end

end A048005.P16340193370799491405

namespace A048005

/-- `A014473(A000124(n)+A002264(n)+n)` -/
def P16340193370799491405.Spec : Prop :=
  ∀ n, P16340193370799491405.a n = A048005 (n + 1)

end A048005

/-!
# A048006: Number of nonempty subsets of {1,2,...,n} in which exactly 1/3 of the elements are <= (n-1)/3.

The programs for A048006, there is no canonical definition to state claims against.
-/

/-! ## A048006.P6127474677207826273

`A330060(A156145(n+1))-A330060(A057957(n+1))`
-/

namespace A048006.P6127474677207826273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330060 (A156145 (n + 1)).toNat - A330060 (A057957 (n + 1)).toNat

end

end A048006.P6127474677207826273

/-!
# A048008: Number of nonempty subsets of {1,2,...,n} in which exactly 1/4 of the elements are <= (n-1)/3.

The programs for A048008, there is no canonical definition to state claims against.
-/

/-! ## A048008.P2382441841807657001

`∑[C(A174066((n+1)²), 2)]`
-/

namespace A048008.P2382441841807657001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A174066 ((n + 1) ^ 2)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048008.P2382441841807657001

/-! ## A048008.P5235036804639850142

`A382630(A047091(n))`
-/

namespace A048008.P5235036804639850142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382630 (A047091 n).toNat

end

end A048008.P5235036804639850142

/-! ## A048008.P7521750964132870727

`A072292(A379742(n))`
-/

namespace A048008.P7521750964132870727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072292 (A379742 n).toNat

end

end A048008.P7521750964132870727

/-! ## A048008.P4319304516808442405

`∑[A145805(∑[A000009(n)])]`
-/

namespace A048008.P4319304516808442405
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145805 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048008.P4319304516808442405

/-! ## A048008.P13576079613844219527

`∑[A145805(∑[A067596(n)])]`
-/

namespace A048008.P13576079613844219527
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067596 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145805 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048008.P13576079613844219527

/-!
# A048009: Number of nonempty subsets of {1,2,...,n} in which exactly 3/4 of the elements are <= (n-1)/3.

The programs for A048009, there is no canonical definition to state claims against.
-/

/-! ## A048009.P15047314002877920572

`lcm(A130255(A000079(n)), A326531(n))`
-/

namespace A048009.P15047314002877920572
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A130255 (A000079 n).toNat) (A326531 n)

end

end A048009.P15047314002877920572

/-! ## A048009.P18133104929659377102

`A347470(A147417(n+1)+A026741(n))`
-/

namespace A048009.P18133104929659377102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347470 (A147417 (n + 1) + A026741 n).toNat

end

end A048009.P18133104929659377102

/-! ## A048009.P1909521920691775665

`A122307(A057561(n+1)*A122265(n))`
-/

namespace A048009.P1909521920691775665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122307 (A057561 (n + 1) * A122265 n).toNat

end

end A048009.P1909521920691775665

/-! ## A048009.P15501351518027140048

`A122308(A057561(n+1)*A122265(n))`
-/

namespace A048009.P15501351518027140048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122308 (A057561 (n + 1) * A122265 n).toNat

end

end A048009.P15501351518027140048

/-!
# A048010: Number of nonempty subsets of {1,2,...,n} in which exactly 1/5 of the elements are <= (n-1)/3.

The programs for A048010, there is no canonical definition to state claims against.
-/

/-! ## A048010.P14073372913627638643

`A265541(C(n, 4))`
-/

namespace A048010.P14073372913627638643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265541 (Nat.choose n 4)

end

end A048010.P14073372913627638643

/-! ## A048010.P13017172216002794232

`A265541(A000332(n))`
-/

namespace A048010.P13017172216002794232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265541 (A000332 n).toNat

end

end A048010.P13017172216002794232

/-! ## A048010.P11312986414318891565

`A265541(A011932(n))`
-/

namespace A048010.P11312986414318891565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265541 (A011932 n).toNat

end

end A048010.P11312986414318891565

/-! ## A048010.P14889768682476446450

`A265541(A011933(n))`
-/

namespace A048010.P14889768682476446450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265541 (A011933 n).toNat

end

end A048010.P14889768682476446450

/-! ## A048010.P3078135556006397019

`A265541(A111926(n))`
-/

namespace A048010.P3078135556006397019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265541 (A111926 n).toNat

end

end A048010.P3078135556006397019

/-!
# A048011: Number of nonempty subsets of {1,2,...,n} in which exactly 2/5 of the elements are <= (n-1)/3.

The programs for A048011, there is no canonical definition to state claims against.
-/

/-! ## A048011.P18426039099391079410

`A007838(2*n)%A257639(A000110(n))`
-/

namespace A048011.P18426039099391079410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007838 (2 * n)) (A257639 (A000110 n).toNat)

end

end A048011.P18426039099391079410

/-! ## A048011.P9767515833870394661

`C((n-1)%A282741(n), 3)`
-/

namespace A048011.P9767515833870394661
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Int.tmod ((n : ℤ) - 1) (A282741 n)).toNat 3

end

end A048011.P9767515833870394661

/-! ## A048011.P7365697582769050812

`Δ[5*A147008(2*(n+1))]`
-/

namespace A048011.P7365697582769050812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A147008 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048011.P7365697582769050812

/-! ## A048011.P5828825506534448283

`∑[5*A083518(n+5)%5]`
-/

namespace A048011.P5828825506534448283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * Int.tmod (A083518 (n + 5)) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048011.P5828825506534448283

/-! ## A048011.P2078791936709113998

`A133924(A361658(n))`
-/

namespace A048011.P2078791936709113998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133924 (A361658 n).toNat

end

end A048011.P2078791936709113998

/-!
# A048012: Number of nonempty subsets of {1,2,...,n} in which exactly 3/5 of the elements are <= (n-1)/3.

The programs for A048012, there is no canonical definition to state claims against.
-/

/-! ## A048012.P17583760823073017939

`A237765(A048023(n+2))`
-/

namespace A048012.P17583760823073017939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237765 (A048023 (n + 2)).toNat

end

end A048012.P17583760823073017939

/-! ## A048012.P13233100252897168250

`A118759(C(A048009(n+1), 2))`
-/

namespace A048012.P13233100252897168250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (Nat.choose (A048009 (n + 1)).toNat 2)

end

end A048012.P13233100252897168250

/-! ## A048012.P13167202422700712472

`C(∑[A003415(A099999(n+1))], 2)`
-/

namespace A048012.P13167202422700712472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A099999 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A048012.P13167202422700712472

/-! ## A048012.P3755719914672377776

`A020987(A000170(n))*A073576(n)`
-/

namespace A048012.P3755719914672377776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020987 (A000170 n).toNat * A073576 n

end

end A048012.P3755719914672377776

/-! ## A048012.P196800516674880202

`A073576(n)%A227690(A279786(n))`
-/

namespace A048012.P196800516674880202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073576 n) (A227690 (A279786 n).toNat)

end

end A048012.P196800516674880202

/-!
# A048013: Number of nonempty subsets of {1,2,...,n} in which exactly 4/5 of the elements are <= (n-1)/3.

The programs for A048013, there is no canonical definition to state claims against.
-/

/-! ## A048013.P10633033374449637794

`A075324(n+5)*A117138(∑[A326531(n)])`
-/

namespace A048013.P10633033374449637794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326531 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075324 (n + 5) * A117138 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A048013.P10633033374449637794

/-! ## A048013.P11453012278633844016

`(1-A117707(n)+n)*A117138(∑[A326531(n)])`
-/

namespace A048013.P11453012278633844016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326531 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A117707 n + (n : ℤ)) * A117138 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A048013.P11453012278633844016

/-! ## A048013.P3873464601492404727

`(n-(A177704(n)+2))*A117138(∑[A326531(n)])`
-/

namespace A048013.P3873464601492404727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326531 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - (A177704 n + 2)) * A117138 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A048013.P3873464601492404727

/-!
# A048014: Number of nonempty subsets of {1,2,...,n} in which exactly 1/6 of the elements are <= (n-1)/3.

The programs for A048014, there is no canonical definition to state claims against.
-/

/-! ## A048014.P12457477665657283311

`A048069(n+1)%A275444(A198381(n))`
-/

namespace A048014.P12457477665657283311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048069 (n + 1)) (A275444 (A198381 n).toNat)

end

end A048014.P12457477665657283311

/-! ## A048014.P18262195054170140407

`A048069(n+1)/A063062(A182107(n+2)/A063062(n))`
-/

namespace A048014.P18262195054170140407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048069 (n + 1) : ℚ) / (A063062 (SequenceMachineLib.roundAway ((A182107 (n + 2) : ℚ) / (A063062 n : ℚ))).toNat : ℚ)

end

end A048014.P18262195054170140407

/-! ## A048014.P6243661182525225325

`A048069(n+1)-A048105(A000108(n))`
-/

namespace A048014.P6243661182525225325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048069 (n + 1) - A048105 (A000108 n).toNat

end

end A048014.P6243661182525225325

/-! ## A048014.P14642300600124076619

`A026758(n)*A059995(A309328(n+1))`
-/

namespace A048014.P14642300600124076619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 n * A059995 (A309328 (n + 1)).toNat

end

end A048014.P14642300600124076619

/-! ## A048014.P9522293074665558024

`and(A048069(n+1), A246655(A124504(n)))`
-/

namespace A048014.P9522293074665558024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048069 (n + 1)) (A246655 (A124504 n).toNat)

end

end A048014.P9522293074665558024

/-!
# A048016: Number of nonempty subsets of {1,2,...,n} in which exactly 1/2 of the elements are <= (n-2)/3.

The programs for A048016, the canonical program `A048016.P1288274029840204420` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048016 has offset 1).

The definition of A048016 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048016.P1288274029840204420

`C(n+1, ceil((abs(1-n)-2)/3))-1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048016

/-- `C(n+1, ceil((abs(1-n)-2)/3))-1` -/
def P1288274029840204420.Spec : Prop :=
  ∀ n, P1288274029840204420.a n = A048016 (n + 1)

theorem P1288274029840204420.correct : P1288274029840204420.Spec := by
  intro n
  simp only [A048016, Nat.add_sub_cancel]

end A048016

/-! ## A048016.P2504634996566271148

`A007318(∑[∑[(n+1)%3]]-1)-1`
-/

namespace A048016.P2504634996566271148
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j - 1) - 1

end

end A048016.P2504634996566271148

namespace A048016

/-- `A007318(∑[∑[(n+1)%3]]-1)-1` -/
def P2504634996566271148.Spec : Prop :=
  ∀ n, P2504634996566271148.a n = A048016 (n + 1)

end A048016

/-! ## A048016.P375675656870606206

`A007318(record[A000124(n)-A008576(n)])-1`
-/

namespace A048016.P375675656870606206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - A008576 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1

end

end A048016.P375675656870606206

namespace A048016

/-- `A007318(record[A000124(n)-A008576(n)])-1` -/
def P375675656870606206.Spec : Prop :=
  ∀ n, P375675656870606206.a n = A048016 (n + 1)

end A048016

/-! ## A048016.P8793243814419621185

`A014473(∑[A092200(n)]-1)`
-/

namespace A048016.P8793243814419621185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092200 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A048016.P8793243814419621185

namespace A048016

/-- `A014473(∑[A092200(n)]-1)` -/
def P8793243814419621185.Spec : Prop :=
  ∀ n, P8793243814419621185.a n = A048016 (n + 1)

end A048016

/-! ## A048016.P7720445881940531932

`A014473(A000096(n)+ceil(n/3))`
-/

namespace A048016.P7720445881940531932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 (A000096 n + ⌈(n : ℚ) / 3⌉).toNat

end

end A048016.P7720445881940531932

namespace A048016

/-- `A014473(A000096(n)+ceil(n/3))` -/
def P7720445881940531932.Spec : Prop :=
  ∀ n, P7720445881940531932.a n = A048016 (n + 1)

end A048016

/-! ## A048016.P17483073877813511623

`A014473(∑[A107751(n+1)+n])`
-/

namespace A048016.P17483073877813511623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107751 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A048016.P17483073877813511623

namespace A048016

/-- `A014473(∑[A107751(n+1)+n])` -/
def P17483073877813511623.Spec : Prop :=
  ∀ n, P17483073877813511623.a n = A048016 (n + 1)

end A048016

/-! ## A048016.P3755365929127275649

`A014473(A047206(n+2)+∑[n])`
-/

namespace A048016.P3755365929127275649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 (A047206 (n + 2) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A048016.P3755365929127275649

namespace A048016

/-- `A014473(A047206(n+2)+∑[n])` -/
def P3755365929127275649.Spec : Prop :=
  ∀ n, P3755365929127275649.a n = A048016 (n + 1)

end A048016

/-! ## A048016.P16334629048179442147

`A014473(∑[A101825(2*n)+n])`
-/

namespace A048016.P16334629048179442147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101825 (2 * n) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A048016.P16334629048179442147

namespace A048016

/-- `A014473(∑[A101825(2*n)+n])` -/
def P16334629048179442147.Spec : Prop :=
  ∀ n, P16334629048179442147.a n = A048016 (n + 1)

end A048016

/-! ## A048016.P2134184541053607079

`A014473(A004523(2*n+1)+∑[n])`
-/

namespace A048016.P2134184541053607079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 (A004523 (2 * n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A048016.P2134184541053607079

namespace A048016

/-- `A014473(A004523(2*n+1)+∑[n])` -/
def P2134184541053607079.Spec : Prop :=
  ∀ n, P2134184541053607079.a n = A048016 (n + 1)

end A048016

/-! ## A048016.P7787799309369635261

`A014473(A027379(n)-A004523(n))`
-/

namespace A048016.P7787799309369635261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 (A027379 n - A004523 n).toNat

end

end A048016.P7787799309369635261

namespace A048016

/-- `A014473(A027379(n)-A004523(n))` -/
def P7787799309369635261.Spec : Prop :=
  ∀ n, P7787799309369635261.a n = A048016 (n + 1)

end A048016

/-! ## A048016.P4576369090581853134

`A014473(record[A000124(n)-A008576(n)])`
-/

namespace A048016.P4576369090581853134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - A008576 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A048016.P4576369090581853134

namespace A048016

/-- `A014473(record[A000124(n)-A008576(n)])` -/
def P4576369090581853134.Spec : Prop :=
  ∀ n, P4576369090581853134.a n = A048016 (n + 1)

end A048016

/-! ## A048016.P9110523575860516696

`A014473(A004772(n+1)+A000124(n)-1)`
-/

namespace A048016.P9110523575860516696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 (A004772 (n + 1) + (A000124 n - 1)).toNat

end

end A048016.P9110523575860516696

namespace A048016

/-- `A014473(A004772(n+1)+A000124(n)-1)` -/
def P9110523575860516696.Spec : Prop :=
  ∀ n, P9110523575860516696.a n = A048016 (n + 1)

end A048016

/-! ## A048016.P17227993278318946174

`A014473(A047220(n+1)+A000124(n)+2)`
-/

namespace A048016.P17227993278318946174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 (A047220 (n + 1) + (A000124 n + 2)).toNat

end

end A048016.P17227993278318946174

namespace A048016

/-- `A014473(A047220(n+1)+A000124(n)+2)` -/
def P17227993278318946174.Spec : Prop :=
  ∀ n, P17227993278318946174.a n = A048016 (n + 1)

end A048016

/-!
# A048019: Number of nonempty subsets of {1,2,...,n} in which exactly 1/4 of the elements are <= (n-2)/3.

The programs for A048019, there is no canonical definition to state claims against.
-/

/-! ## A048019.P15890364477667572339

`∑[A224458(∏[A197457(n+1)])]`
-/

namespace A048019.P15890364477667572339
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197457 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224458 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048019.P15890364477667572339

/-! ## A048019.P15628958028322582432

`A048008(n+1)%A093115(n)!`
-/

namespace A048019.P15628958028322582432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048008 (n + 1)) (Nat.factorial (A093115 n).toNat : ℤ)

end

end A048019.P15628958028322582432

/-! ## A048019.P8652637938598873050

`A003056(A094688(n))-A004773(n)`
-/

namespace A048019.P8652637938598873050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A094688 n).toNat - A004773 n

end

end A048019.P8652637938598873050

/-! ## A048019.P4323545256031180881

`A303637(A213225(n)-A239873(n))`
-/

namespace A048019.P4323545256031180881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303637 (A213225 n - A239873 n).toNat

end

end A048019.P4323545256031180881

/-! ## A048019.P17588904564103640413

`A000196(A060925(n))-A087006(n+1)`
-/

namespace A048019.P17588904564103640413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A060925 n).toNat - A087006 (n + 1)

end

end A048019.P17588904564103640413

/-!
# A048020: Number of nonempty subsets of {1,2,...,n} in which exactly 3/4 of the elements are <= (n-2)/3.

The programs for A048020, there is no canonical definition to state claims against.
-/

/-! ## A048020.P15305778657369424744

`A048034(A020753(n+1))-A048023(n+1)`
-/

namespace A048020.P15305778657369424744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048034 (A020753 (n + 1)).toNat - A048023 (n + 1)

end

end A048020.P15305778657369424744

/-! ## A048020.P18108998151342118402

`A257297(A257297(n+2)*A356607(n))`
-/

namespace A048020.P18108998151342118402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257297 (A257297 (n + 2) * A356607 n).toNat

end

end A048020.P18108998151342118402

/-! ## A048020.P13803394022244798779

`and(A037314(A068989(n+1)), A059053(n))`
-/

namespace A048020.P13803394022244798779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037314 (A068989 (n + 1)).toNat) (A059053 n)

end

end A048020.P13803394022244798779

/-!
# A048021: Number of nonempty subsets of {1,2,...,n} in which exactly 1/5 of the elements are <= (n-2)/3.

The programs for A048021, there is no canonical definition to state claims against.
-/

/-! ## A048021.P6801733911015553042

`C(n, 4)-A337196(A136809(3*n+4))`
-/

namespace A048021.P6801733911015553042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 4 : ℤ) - A337196 (A136809 (3 * n + 4)).toNat

end

end A048021.P6801733911015553042

/-! ## A048021.P2625095524340338070

`A100355(n+1)-A100355(A074761(3*n+1))`
-/

namespace A048021.P2625095524340338070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100355 (n + 1) - A100355 (A074761 (3 * n + 1)).toNat

end

end A048021.P2625095524340338070

/-! ## A048021.P15339557935403122558

`A093579(A166300(n+1))-A113411(A007283(n))`
-/

namespace A048021.P15339557935403122558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093579 (A166300 (n + 1)).toNat - A113411 (A007283 n).toNat

end

end A048021.P15339557935403122558

/-! ## A048021.P14919694491232496290

`A000196(A344775(n)+1)-1-A333355(A351699(3*(n+1)))`
-/

namespace A048021.P14919694491232496290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A344775 n + 1).toNat - 1 - A333355 (A351699 (3 * (n + 1))).toNat

end

end A048021.P14919694491232496290

/-!
# A048022: Number of nonempty subsets of {1,2,...,n} in which exactly 2/5 of the elements are <= (n-2)/3.

The programs for A048022, there is no canonical definition to state claims against.
-/

/-! ## A048022.P658118002372946499

`A015743(n+1)*A193741(A145018(n+1))`
-/

namespace A048022.P658118002372946499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015743 (n + 1) * A193741 (A145018 (n + 1)).toNat

end

end A048022.P658118002372946499

/-! ## A048022.P16685229847268474520

`C((n-1)%(A326590(∑{e}[2*4^n, #])+1), 3)`
-/

namespace A048022.P16685229847268474520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * 4 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Int.tmod ((n : ℤ) - 1) (A326590 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) + 1)).toNat 3

end

end A048022.P16685229847268474520

/-! ## A048022.P5092574600851922934

`A210451(A050407(n))`
-/

namespace A048022.P5092574600851922934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210451 (A050407 n).toNat

end

end A048022.P5092574600851922934

/-! ## A048022.P14287085729536118170

`A210451(A103198(n))`
-/

namespace A048022.P14287085729536118170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210451 (A103198 n).toNat

end

end A048022.P14287085729536118170

/-! ## A048022.P6215249857537900624

`A210451(A137356(n+1))`
-/

namespace A048022.P6215249857537900624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210451 (A137356 (n + 1)).toNat

end

end A048022.P6215249857537900624

/-!
# A048023: Number of nonempty subsets of {1,2,...,n} in which exactly 3/5 of the elements are <= (n-2)/3.

The programs for A048023, there is no canonical definition to state claims against.
-/

/-! ## A048023.P6715979484858567603

`A048034(A020753(n+1))-A048020(n+1)`
-/

namespace A048023.P6715979484858567603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048034 (A020753 (n + 1)).toNat - A048020 (n + 1)

end

end A048023.P6715979484858567603

/-! ## A048023.P16514978089242618191

`lcm(A079415(A183324(n+1)), A154781(n))`
-/

namespace A048023.P16514978089242618191
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A079415 (A183324 (n + 1)).toNat) (A154781 n)

end

end A048023.P16514978089242618191

/-! ## A048023.P1615861064021966281

`C(record[A122290(n)]-n, 2)`
-/

namespace A048023.P1615861064021966281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122290 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)).toNat 2

end

end A048023.P1615861064021966281

/-! ## A048023.P14388549607751131922

`A352520(A048034(n+2))`
-/

namespace A048023.P14388549607751131922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352520 (A048034 (n + 2)).toNat

end

end A048023.P14388549607751131922

/-! ## A048023.P16058506503245697336

`lcm(A059995(n), A079415(A079437(n)))`
-/

namespace A048023.P16058506503245697336
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A059995 n) (A079415 (A079437 n).toNat)

end

end A048023.P16058506503245697336

/-!
# A048024: Number of nonempty subsets of {1,2,...,n} in which exactly 4/5 of the elements are <= (n-2)/3.

The programs for A048024, there is no canonical definition to state claims against.
-/

/-! ## A048024.P2387221015847943342

`A048002(A020753(n+1))-A048026(n+1)`
-/

namespace A048024.P2387221015847943342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048002 (A020753 (n + 1)).toNat - A048026 (n + 1)

end

end A048024.P2387221015847943342

/-!
# A048025: Number of nonempty subsets of {1,2,...,n} in which exactly 1/6 of the elements are <= (n-2)/3.

The programs for A048025, there is no canonical definition to state claims against.
-/

/-! ## A048025.P6766382088248199181

`∑{d}[A287415(C(n, 5)), #]`
-/

namespace A048025.P6766382088248199181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287415 (Nat.choose n 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A048025.P6766382088248199181

/-! ## A048025.P134096478510095346

`A126696(C(floor(n²/5), 2))`
-/

namespace A048025.P134096478510095346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126696 (Nat.choose ⌊(n ^ 2 : ℚ) / 5⌋.toNat 2)

end

end A048025.P134096478510095346

/-! ## A048025.P17583794033418858983

`A126696(∑[∑[floor(n²/7)]])`
-/

namespace A048025.P17583794033418858983
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 2 : ℚ) / 7⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126696 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A048025.P17583794033418858983

/-! ## A048025.P9339744979859997285

`A037186(A319106(n))`
-/

namespace A048025.P9339744979859997285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037186 (A319106 n).toNat

end

end A048025.P9339744979859997285

/-! ## A048025.P5803829880099899116

`A187754(A214083(n))`
-/

namespace A048025.P5803829880099899116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187754 (A214083 n).toNat

end

end A048025.P5803829880099899116

/-!
# A048026: Number of nonempty subsets of {1,2,...,n} in which exactly 5/6 of the elements are <= (n-2)/3.

The programs for A048026, there is no canonical definition to state claims against.
-/

/-! ## A048026.P4179709532246030622

`and(A048015(n+1), A068783(A231384(n)))`
-/

namespace A048026.P4179709532246030622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048015 (n + 1)) (A068783 (A231384 n).toNat)

end

end A048026.P4179709532246030622

/-!
# A048027: Number of nonempty subsets of {1,2,...,n} in which exactly 1/2 of the elements are <= (n-3)/3.

The programs for A048027, the canonical program `A048027.P4856825869169260765` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048027 has offset 1).

The definition of A048027 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048027.P4856825869169260765

`A007318(∑[∑[n%3]]+n)-1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A048027

/-- `A007318(∑[∑[n%3]]+n)-1` -/
def P4856825869169260765.Spec : Prop :=
  ∀ n, P4856825869169260765.a n = A048027 (n + 1)

theorem P4856825869169260765.correct : P4856825869169260765.Spec := by
  intro n
  simp only [A048027, Nat.add_sub_cancel]

end A048027

/-! ## A048027.P12686109679472310907

`A007318(∑[A101825(n)+n])-1`
-/

namespace A048027.P12686109679472310907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101825 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1

end

end A048027.P12686109679472310907

namespace A048027

/-- `A007318(∑[A101825(n)+n])-1` -/
def P12686109679472310907.Spec : Prop :=
  ∀ n, P12686109679472310907.a n = A048027 (n + 1)

end A048027

/-! ## A048027.P17607013129361304234

`A014473(∑[A101825(n)+n])`
-/

namespace A048027.P17607013129361304234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101825 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A048027.P17607013129361304234

namespace A048027

/-- `A014473(∑[A101825(n)+n])` -/
def P17607013129361304234.Spec : Prop :=
  ∀ n, P17607013129361304234.a n = A048027 (n + 1)

end A048027

/-! ## A048027.P10288226414772508299

`A014473(∑[A107751(n)+n])`
-/

namespace A048027.P10288226414772508299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107751 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A048027.P10288226414772508299

namespace A048027

/-- `A014473(∑[A107751(n)+n])` -/
def P10288226414772508299.Spec : Prop :=
  ∀ n, P10288226414772508299.a n = A048027 (n + 1)

end A048027

/-! ## A048027.P4969751856000560112

`A014473(A027916(n+2)+1)`
-/

namespace A048027.P4969751856000560112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 (A027916 (n + 2) + 1).toNat

end

end A048027.P4969751856000560112

namespace A048027

/-- `A014473(A027916(n+2)+1)` -/
def P4969751856000560112.Spec : Prop :=
  ∀ n, P4969751856000560112.a n = A048027 (n + 1)

end A048027

/-! ## A048027.P7711274247346740910

`A014473(A111097(n+2)+1)`
-/

namespace A048027.P7711274247346740910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 (A111097 (n + 2) + 1).toNat

end

end A048027.P7711274247346740910

namespace A048027

/-- `A014473(A111097(n+2)+1)` -/
def P7711274247346740910.Spec : Prop :=
  ∀ n, P7711274247346740910.a n = A048027 (n + 1)

end A048027

/-! ## A048027.P12082444922940994756

`A014473(A004396(2*n)+∑[n])`
-/

namespace A048027.P12082444922940994756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 (A004396 (2 * n) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A048027.P12082444922940994756

namespace A048027

/-- `A014473(A004396(2*n)+∑[n])` -/
def P12082444922940994756.Spec : Prop :=
  ∀ n, P12082444922940994756.a n = A048027 (n + 1)

end A048027

/-!
# A048028: Number of nonempty subsets of {1,2,...,n} in which exactly 1/3 of the elements are <= (n-3)/3.

The programs for A048028, there is no canonical definition to state claims against.
-/

/-! ## A048028.P1027537083501140836

`A236460(∑[A024725(∑{d}[n+1, #])])`
-/

namespace A048028.P1027537083501140836
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024725 (∑ d ∈ Nat.divisors (f2 n), d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236460 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A048028.P1027537083501140836

/-! ## A048028.P12791166128936848130

`A000194(A007088(n)*A332284(n+1))`
-/

namespace A048028.P12791166128936848130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A007088 n * A332284 (n + 1)).toNat

end

end A048028.P12791166128936848130

/-! ## A048028.P13678517481279550104

`A000194(lcm(A004697(n), A281921(n+1)))`
-/

namespace A048028.P13678517481279550104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (Int.lcm (A004697 n) (A281921 (n + 1)))

end

end A048028.P13678517481279550104

/-!
# A048030: Number of nonempty subsets of {1,2,...,n} in which exactly 1/4 of the elements are <= (n-3)/3.

The programs for A048030, there is no canonical definition to state claims against.
-/

/-! ## A048030.P1547245882825179088

`A008615(C(A095243(n+1), A001414(n+1)))`
-/

namespace A048030.P1547245882825179088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (Nat.choose (A095243 (n + 1)).toNat (A001414 (n + 1)).toNat)

end

end A048030.P1547245882825179088

/-!
# A048031: Number of nonempty subsets of {1,2,...,n} in which exactly 3/4 of the elements are <= (n-3)/3.

The programs for A048031, there is no canonical definition to state claims against.
-/

/-! ## A048031.P10699534157366631087

`A048013(A020753(n+1))-A048035(n+1)`
-/

namespace A048031.P10699534157366631087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048013 (A020753 (n + 1)).toNat - A048035 (n + 1)

end

end A048031.P10699534157366631087

/-!
# A048032: Number of nonempty subsets of {1,2,...,n} in which exactly 1/5 of the elements are <= (n-3)/3.

The programs for A048032, there is no canonical definition to state claims against.
-/

/-! ## A048032.P14350276917098692075

`C(abs(∑{e}[∑[(n+1)^6], #]%2-n), 4)`
-/

namespace A048032.P14350276917098692075
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose |(((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) % 2 : ℕ) : ℤ) - (n : ℤ)|.toNat 4

end

end A048032.P14350276917098692075

/-! ## A048032.P2926931874762282661

`∏{p}[C(n, 4)^3, #]%∏{p}[C(n, 4)^3, #]²`
-/

namespace A048032.P2926931874762282661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 4 ^ 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 4 ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), p) % (∏ p ∈ Nat.primeFactors (f2 n), p) ^ 2

end

end A048032.P2926931874762282661

/-! ## A048032.P14534858259431250103

`A123574(C(n, 5))`
-/

namespace A048032.P14534858259431250103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123574 (Nat.choose n 5)

end

end A048032.P14534858259431250103

/-! ## A048032.P3658003840818712563

`C(A347381(3^n), 4)`
-/

namespace A048032.P3658003840818712563
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A347381 (3 ^ n)).toNat 4

end

end A048032.P3658003840818712563

/-! ## A048032.P12971612362726642457

`C(n, A023405(3^n))`
-/

namespace A048032.P12971612362726642457
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A023405 (3 ^ n)).toNat

end

end A048032.P12971612362726642457

/-!
# A048033: Number of nonempty subsets of {1,2,...,n} in which exactly 2/5 of the elements are <= (n-3)/3.

The programs for A048033, there is no canonical definition to state claims against.
-/

/-! ## A048033.P6830404653567621767

`C(n-A057427(n), A000120(A359720(3*n+4)))`
-/

namespace A048033.P6830404653567621767
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n : ℤ) - A057427 n).toNat (A000120 (A359720 (3 * n + 4)).toNat).toNat

end

end A048033.P6830404653567621767

/-! ## A048033.P9034286040566073

`C(A080342(7*2^n-1), xor(12, n))`
-/

namespace A048033.P9034286040566073
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A080342 (7 * 2 ^ n - 1)).toNat (Nat.xor 12 n)

end

end A048033.P9034286040566073

/-! ## A048033.P10519776945337535556

`A332023(A047200(n+1))`
-/

namespace A048033.P10519776945337535556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332023 (A047200 (n + 1)).toNat

end

end A048033.P10519776945337535556

/-! ## A048033.P5364181830059223701

`C(A318329(A069728(n)), 3)`
-/

namespace A048033.P5364181830059223701
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A318329 (A069728 n).toNat).toNat 3

end

end A048033.P5364181830059223701

/-! ## A048033.P7929492740027775319

`C(abs(1-n), A309700(A309761(n+1)))`
-/

namespace A048033.P7929492740027775319
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose |1 - (n : ℤ)|.toNat (A309700 (A309761 (n + 1)).toNat).toNat

end

end A048033.P7929492740027775319

/-!
# A048034: Number of nonempty subsets of {1,2,...,n} in which exactly 3/5 of the elements are <= (n-3)/3.

The programs for A048034, there is no canonical definition to state claims against.
-/

/-! ## A048034.P2485390381728102344

`A002265(2*A048031(n+1)*A257175(n))`
-/

namespace A048034.P2485390381728102344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * (A048031 (n + 1) * A257175 n)).toNat

end

end A048034.P2485390381728102344

/-! ## A048034.P17884297129089886103

`A048031(n+1)/A043529(A023499(n))*A257175(n)`
-/

namespace A048034.P17884297129089886103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048031 (n + 1) : ℚ) / (A043529 (A023499 n).toNat : ℚ) * (A257175 n : ℚ)

end

end A048034.P17884297129089886103

/-! ## A048034.P18323292400793332861

`A048031(n+1)/A043529(A024757(n+1))*A257175(n)`
-/

namespace A048034.P18323292400793332861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048031 (n + 1) : ℚ) / (A043529 (A024757 (n + 1)).toNat : ℚ) * (A257175 n : ℚ)

end

end A048034.P18323292400793332861

/-! ## A048034.P17440180401493263542

`A048031(n+1)/A001285(A075227(n+1))*A257175(n)`
-/

namespace A048034.P17440180401493263542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048031 (n + 1) : ℚ) / (A001285 (A075227 (n + 1)).toNat : ℚ) * (A257175 n : ℚ)

end

end A048034.P17440180401493263542

/-! ## A048034.P14239678759499794748

`A048031(n+1)/A000005(A103389(n+1))*A257175(n)`
-/

namespace A048034.P14239678759499794748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048031 (n + 1) : ℚ) / (A000005 (A103389 (n + 1)).toNat : ℚ) * (A257175 n : ℚ)

end

end A048034.P14239678759499794748

/-!
# A048035: Number of nonempty subsets of {1,2,...,n} in which exactly 4/5 of the elements are <= (n-3)/3.

The programs for A048035, there is no canonical definition to state claims against.
-/

/-! ## A048035.P10030056735265350533

`A053735(A185274(n))*A083479(n+4)`
-/

namespace A048035.P10030056735265350533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A185274 n).toNat * A083479 (n + 4)

end

end A048035.P10030056735265350533

/-! ## A048035.P15399691706202207808

`A048013(A020753(n+1))-A048031(n+1)`
-/

namespace A048035.P15399691706202207808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048013 (A020753 (n + 1)).toNat - A048031 (n + 1)

end

end A048035.P15399691706202207808

/-!
# A048036: Number of nonempty subsets of {1,2,...,n} in which exactly 1/6 of the elements are <= (n-3)/3.

The programs for A048036, there is no canonical definition to state claims against.
-/

/-! ## A048036.P16999323753769305609

`A139398(n)-A264560(A147117(n+1))`
-/

namespace A048036.P16999323753769305609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139398 n - A264560 (A147117 (n + 1)).toNat

end

end A048036.P16999323753769305609

/-! ## A048036.P13077541904302222916

`C(n, 5)-A185284(∑[n])`
-/

namespace A048036.P13077541904302222916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 5 : ℤ) - A185284 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A048036.P13077541904302222916

/-! ## A048036.P10537126437503529902

`A033111(A361762(n))`
-/

namespace A048036.P10537126437503529902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033111 (A361762 n).toNat

end

end A048036.P10537126437503529902

/-! ## A048036.P8740165089568770637

`A344982(A361703(n))`
-/

namespace A048036.P8740165089568770637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344982 (A361703 n).toNat

end

end A048036.P8740165089568770637

/-! ## A048036.P11575231721300468288

`A126290(Δ[A099132(n)])`
-/

namespace A048036.P11575231721300468288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099132 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126290 (f1 (n + 1) - f1 n).toNat

end

end A048036.P11575231721300468288

/-!
# A048038: Number of nonempty subsets of {1,2,...,n} in which exactly 1/2 of the elements are <= (n+1)/3.

The programs for A048038, the canonical program `A048038.P6901780127018906009` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048038 has offset 1).

The definition of A048038 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 328 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048038.P6901780127018906009

`C(n+1, ceil(n/3))-1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048038

/-- `C(n+1, ceil(n/3))-1` -/
def P6901780127018906009.Spec : Prop :=
  ∀ n, P6901780127018906009.a n = A048038 (n + 1)

theorem P6901780127018906009.correct : P6901780127018906009.Spec := by
  intro n
  simp only [A048038, Nat.add_sub_cancel]

end A048038

/-! ## A048038.P4817565902645084446

`record[C(A008624(2*n), A008620(n))-1]`
-/

namespace A048038.P4817565902645084446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A008624 (2 * n)).toNat (A008620 n).toNat : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048038.P4817565902645084446

namespace A048038

/-- `record[C(A008624(2*n), A008620(n))-1]` -/
def P4817565902645084446.Spec : Prop :=
  ∀ n, P4817565902645084446.a n = A048038 (n + 1)

end A048038

/-! ## A048038.P417597989055846043

`A007318(∑[∑[(n+1)%3]])-1`
-/

namespace A048038.P417597989055846043
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A048038.P417597989055846043

namespace A048038

/-- `A007318(∑[∑[(n+1)%3]])-1` -/
def P417597989055846043.Spec : Prop :=
  ∀ n, P417597989055846043.a n = A048038 (n + 1)

end A048038

/-! ## A048038.P9051090514224679465

`record[Δ[A007318(A008727(n))]]`
-/

namespace A048038.P9051090514224679465
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A008727 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048038.P9051090514224679465

namespace A048038

/-- `record[Δ[A007318(A008727(n))]]` -/
def P9051090514224679465.Spec : Prop :=
  ∀ n, P9051090514224679465.a n = A048038 (n + 1)

end A048038

/-! ## A048038.P10779528754890234841

`record[A007318(A008722(n))-1]`
-/

namespace A048038.P10779528754890234841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A008722 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048038.P10779528754890234841

namespace A048038

/-- `record[A007318(A008722(n))-1]` -/
def P10779528754890234841.Spec : Prop :=
  ∀ n, P10779528754890234841.a n = A048038 (n + 1)

end A048038

/-! ## A048038.P15274877789570916111

`A007318(∑[∑[A010872(n+1)]])-1`
-/

namespace A048038.P15274877789570916111
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1

end

end A048038.P15274877789570916111

namespace A048038

/-- `A007318(∑[∑[A010872(n+1)]])-1` -/
def P15274877789570916111.Spec : Prop :=
  ∀ n, P15274877789570916111.a n = A048038 (n + 1)

end A048038

/-! ## A048038.P5625201250371972978

`A014473(∑[∑[(n+1)%3]])`
-/

namespace A048038.P5625201250371972978
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A048038.P5625201250371972978

namespace A048038

/-- `A014473(∑[∑[(n+1)%3]])` -/
def P5625201250371972978.Spec : Prop :=
  ∀ n, P5625201250371972978.a n = A048038 (n + 1)

end A048038

/-! ## A048038.P1935801918346249907

`A014473(∑[A092200(n)])`
-/

namespace A048038.P1935801918346249907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092200 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A048038.P1935801918346249907

namespace A048038

/-- `A014473(∑[A092200(n)])` -/
def P1935801918346249907.Spec : Prop :=
  ∀ n, P1935801918346249907.a n = A048038 (n + 1)

end A048038

/-! ## A048038.P3861044296746537845

`A014473(∑[A101825(n+1)+n])`
-/

namespace A048038.P3861044296746537845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101825 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A048038.P3861044296746537845

namespace A048038

/-- `A014473(∑[A101825(n+1)+n])` -/
def P3861044296746537845.Spec : Prop :=
  ∀ n, P3861044296746537845.a n = A048038 (n + 1)

end A048038

/-! ## A048038.P5259520344228235909

`A014473(A004772(n+1)+A000124(n))`
-/

namespace A048038.P5259520344228235909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 (A004772 (n + 1) + A000124 n).toNat

end

end A048038.P5259520344228235909

namespace A048038

/-- `A014473(A004772(n+1)+A000124(n))` -/
def P5259520344228235909.Spec : Prop :=
  ∀ n, P5259520344228235909.a n = A048038 (n + 1)

end A048038

/-! ## A048038.P14461451807793821911

`A014473(A027379(n)+1-A004523(n))`
-/

namespace A048038.P14461451807793821911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 (A027379 n + (1 - A004523 n)).toNat

end

end A048038.P14461451807793821911

namespace A048038

/-- `A014473(A027379(n)+1-A004523(n))` -/
def P14461451807793821911.Spec : Prop :=
  ∀ n, P14461451807793821911.a n = A048038 (n + 1)

end A048038

/-! ## A048038.P1405446293040337629

`A014473(1-(A004523(n)-A027379(n)))`
-/

namespace A048038.P1405446293040337629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 (1 - (A004523 n - A027379 n)).toNat

end

end A048038.P1405446293040337629

namespace A048038

/-- `A014473(1-(A004523(n)-A027379(n)))` -/
def P1405446293040337629.Spec : Prop :=
  ∀ n, P1405446293040337629.a n = A048038 (n + 1)

end A048038

/-! ## A048038.P16132225188243678287

`A014473(A047220(n+1)+A000124(n)+1)`
-/

namespace A048038.P16132225188243678287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 (A047220 (n + 1) + (A000124 n + 1)).toNat

end

end A048038.P16132225188243678287

namespace A048038

/-- `A014473(A047220(n+1)+A000124(n)+1)` -/
def P16132225188243678287.Spec : Prop :=
  ∀ n, P16132225188243678287.a n = A048038 (n + 1)

end A048038

/-! ## A048038.P8028555128622432616

`A014473(A002264(2*n)+A000124(n+1))`
-/

namespace A048038.P8028555128622432616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 (A002264 (2 * n) + A000124 (n + 1)).toNat

end

end A048038.P8028555128622432616

namespace A048038

/-- `A014473(A002264(2*n)+A000124(n+1))` -/
def P8028555128622432616.Spec : Prop :=
  ∀ n, P8028555128622432616.a n = A048038 (n + 1)

end A048038

/-! ## A048038.P8233263267033013886

`A014473(∑[A008620(2*n)+A008620(n+1)])`
-/

namespace A048038.P8233263267033013886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (2 * n) + A008620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A048038.P8233263267033013886

namespace A048038

/-- `A014473(∑[A008620(2*n)+A008620(n+1)])` -/
def P8233263267033013886.Spec : Prop :=
  ∀ n, P8233263267033013886.a n = A048038 (n + 1)

end A048038

/-!
# A048041: Number of nonempty subsets of {1,2,...,n} in which exactly 1/4 of the elements are <= (n+1)/3.

The programs for A048041, there is no canonical definition to state claims against.
-/

/-! ## A048041.P2829780404570991096

`A097448(A047185(n+1))`
-/

namespace A048041.P2829780404570991096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097448 (A047185 (n + 1)).toNat

end

end A048041.P2829780404570991096

/-! ## A048041.P16580675693799652398

`A056838(n)*A064415(A007469(n+1))`
-/

namespace A048041.P16580675693799652398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056838 n * A064415 (A007469 (n + 1)).toNat

end

end A048041.P16580675693799652398

/-! ## A048041.P14903229449065876660

`A046799(A358455(n+1))*A362609(n)`
-/

namespace A048041.P14903229449065876660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046799 (A358455 (n + 1)).toNat * A362609 n

end

end A048041.P14903229449065876660

/-! ## A048041.P8385118797033640192

`A004067(n+7)-A000010(A004065(3*n))`
-/

namespace A048041.P8385118797033640192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004067 (n + 7) - A000010 (A004065 (3 * n)).toNat

end

end A048041.P8385118797033640192

/-!
# A048043: Number of nonempty subsets of {1,2,...,n} in which exactly 1/5 of the elements are <= (n+1)/3.

The programs for A048043, there is no canonical definition to state claims against.
-/

/-! ## A048043.P9759803861535433546

`A025437(A323709(n+1))`
-/

namespace A048043.P9759803861535433546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025437 (A323709 (n + 1)).toNat

end

end A048043.P9759803861535433546

/-! ## A048043.P17100164472478978822

`A029931(2*A396154(n))`
-/

namespace A048043.P17100164472478978822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (2 * A396154 n).toNat

end

end A048043.P17100164472478978822

/-! ## A048043.P4648589701800822233

`∑[A248969(n)%A057574(n)]`
-/

namespace A048043.P4648589701800822233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248969 n) (A057574 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048043.P4648589701800822233

/-! ## A048043.P3389295985367301531

`A072899(n)-A134625(A072899(n))`
-/

namespace A048043.P3389295985367301531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072899 n - A134625 (A072899 n).toNat

end

end A048043.P3389295985367301531

/-! ## A048043.P12357374608250505731

`A000164(A000110(n))*A330106(n)`
-/

namespace A048043.P12357374608250505731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 (A000110 n).toNat * A330106 n

end

end A048043.P12357374608250505731

/-!
# A048044: Number of nonempty subsets of {1,2,...,n} in which exactly 2/5 of the elements are <= (n+1)/3.

The programs for A048044, there is no canonical definition to state claims against.
-/

/-! ## A048044.P5506018070574093029

`∑[A108611(A182522(n))]*A107347(n+1)`
-/

namespace A048044.P5506018070574093029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108611 (A182522 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A107347 (n + 1)

end

end A048044.P5506018070574093029

/-! ## A048044.P18176080705398308774

`∑[A108611(A182522(n))]*A262868(n+1)`
-/

namespace A048044.P18176080705398308774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108611 (A182522 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A262868 (n + 1)

end

end A048044.P18176080705398308774

/-! ## A048044.P17878413088521830913

`A130573(A118871(n))`
-/

namespace A048044.P17878413088521830913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130573 (A118871 n).toNat

end

end A048044.P17878413088521830913

/-! ## A048044.P3546125336190646506

`A265572(A192886(n))`
-/

namespace A048044.P3546125336190646506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265572 (A192886 n).toNat

end

end A048044.P3546125336190646506

/-! ## A048044.P7665952166367026682

`∑[A053188(A161125(n))]`
-/

namespace A048044.P7665952166367026682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (A161125 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048044.P7665952166367026682

/-!
# A048045: Number of nonempty subsets of {1,2,...,n} in which exactly 3/5 of the elements are <= (n+1)/3.

The programs for A048045, there is no canonical definition to state claims against.
-/

/-! ## A048045.P8704960042560857985

`A047189(n+1)%A122341(A059096(n+1))`
-/

namespace A048045.P8704960042560857985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047189 (n + 1)) (A122341 (A059096 (n + 1)).toNat)

end

end A048045.P8704960042560857985

/-! ## A048045.P4866319882072729540

`C(A000120(A358588(n+1)), A000005(n+2))`
-/

namespace A048045.P4866319882072729540
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000120 (A358588 (n + 1)).toNat).toNat (A000005 (n + 2)).toNat

end

end A048045.P4866319882072729540

/-!
# A048046: Number of nonempty subsets of {1,2,...,n} in which exactly 4/5 of the elements are <= (n+1)/3.

The programs for A048046, there is no canonical definition to state claims against.
-/

/-! ## A048046.P5540497862543534653

`lcm(A064099(2^n-1), A326597(n))`
-/

namespace A048046.P5540497862543534653
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A064099 (2 ^ n - 1)) (A326597 n)

end

end A048046.P5540497862543534653

/-! ## A048046.P14710091474116353865

`lcm(A004396(A077168(n)), A326597(n))`
-/

namespace A048046.P14710091474116353865
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004396 (A077168 n).toNat) (A326597 n)

end

end A048046.P14710091474116353865

/-! ## A048046.P6694824111478340617

`A000120(A185254(n))*A004396(n+1)`
-/

namespace A048046.P6694824111478340617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A185254 n).toNat * A004396 (n + 1)

end

end A048046.P6694824111478340617

/-!
# A048047: Number of nonempty subsets of {1,2,...,n} in which exactly 1/6 of the elements are <= (n+1)/3.

The programs for A048047, there is no canonical definition to state claims against.
-/

/-! ## A048047.P6955123652493976667

`floor(A074115(n)/A074165(n+2))`
-/

namespace A048047.P6955123652493976667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A074115 n : ℚ) / (A074165 (n + 2) : ℚ)⌋

end

end A048047.P6955123652493976667

/-! ## A048047.P7773953379129833532

`A122353(A185034(n))+A026799(n)`
-/

namespace A048047.P7773953379129833532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122353 (A185034 n).toNat + A026799 n

end

end A048047.P7773953379129833532

/-! ## A048047.P12925574543292468406

`A025460(A206947(n)+A108949(n))`
-/

namespace A048047.P12925574543292468406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025460 (A206947 n + A108949 n).toNat

end

end A048047.P12925574543292468406

/-! ## A048047.P9939359118173379807

`A358473(A255064(n)+A077267(n))`
-/

namespace A048047.P9939359118173379807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358473 (A255064 n + A077267 n).toNat

end

end A048047.P9939359118173379807

/-! ## A048047.P18309466891009844076

`A011843(n)*A329313(A062319(n))`
-/

namespace A048047.P18309466891009844076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011843 n * A329313 (A062319 n).toNat

end

end A048047.P18309466891009844076

/-!
# A048049: Denominator of Sum_{k=1..n} 1/phi(k).

The programs for A048049, there is no canonical definition to state claims against.
-/

/-! ## A048049.P3792289526944047550

`A001088(n+1)*A028415(n+1)/A067578(n+1)`
-/

namespace A048049.P3792289526944047550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001088 (n + 1) * A028415 (n + 1) : ℚ) / (A067578 (n + 1) : ℚ)

end

end A048049.P3792289526944047550

/-!
# A048050: Chowla's function: sum of divisors of n except for 1 and n.

The programs for A048050, the canonical program `A048050.P12972569362416034982` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048050 has offset 1).

The definition of A048050 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048050.P12972569362416034982

`A000203(n+1)-A065475(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A048050

/-- `A000203(n+1)-A065475(n+1)` -/
def P12972569362416034982.Spec : Prop :=
  ∀ n, P12972569362416034982.a n = A048050 (n + 1)

theorem P12972569362416034982.correct : P12972569362416034982.Spec := by
  intro n
  simp only [A048050, Nat.add_sub_cancel]

end A048050

/-! ## A048050.P18178152880360529745

`∑{d}[n+1, (#%(n+1))%#²]`
-/

namespace A048050.P18178152880360529745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d % (n + 1) % d ^ 2

end

end A048050.P18178152880360529745

namespace A048050

/-- `∑{d}[n+1, (#%(n+1))%#²]` -/
def P18178152880360529745.Spec : Prop :=
  ∀ n, (P18178152880360529745.a n : ℤ) = A048050 (n + 1)

end A048050

/-! ## A048050.P13688039840519345821

`A173455(n+1)-1`
-/

namespace A048050.P13688039840519345821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173455 (n + 1) - 1

end

end A048050.P13688039840519345821

namespace A048050

/-- `A173455(n+1)-1` -/
def P13688039840519345821.Spec : Prop :=
  ∀ n, P13688039840519345821.a n = A048050 (n + 1)

end A048050

/-! ## A048050.P17066477011030811075

`A053246(n)+a(n-1)` with `a(0)=0`
-/

namespace A048050.P17066477011030811075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A053246 n + a (n - 1)

end

end A048050.P17066477011030811075

namespace A048050

/-- `A053246(n)+a(n-1)` -/
def P17066477011030811075.Spec : Prop :=
  ∀ n, P17066477011030811075.a n = A048050 (n + 1)

end A048050

/-! ## A048050.P5432053193273351738

`(abs(A062967(n+1))-1)/2`
-/

namespace A048050.P5432053193273351738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|A062967 (n + 1)| - 1 : ℚ) / 2

end

end A048050.P5432053193273351738

namespace A048050

/-- `(abs(A062967(n+1))-1)/2` -/
def P5432053193273351738.Spec : Prop :=
  ∀ n, P5432053193273351738.a n = (A048050 (n + 1) : ℚ)

end A048050

/-! ## A048050.P17306755138955436117

`A057428(n)+A001065(n+1)`
-/

namespace A048050.P17306755138955436117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A001065 (n + 1)

end

end A048050.P17306755138955436117

namespace A048050

/-- `A057428(n)+A001065(n+1)` -/
def P17306755138955436117.Spec : Prop :=
  ∀ n, P17306755138955436117.a n = A048050 (n + 1)

end A048050

/-! ## A048050.P13824962093836392747

`A033880(n+1)+A028310(n)`
-/

namespace A048050.P13824962093836392747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (n + 1) + A028310 n

end

end A048050.P13824962093836392747

namespace A048050

/-- `A033880(n+1)+A028310(n)` -/
def P13824962093836392747.Spec : Prop :=
  ∀ n, P13824962093836392747.a n = A048050 (n + 1)

end A048050

/-! ## A048050.P9496999094067285525

`A001065(n+1)-A057427(n)`
-/

namespace A048050.P9496999094067285525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A057427 n

end

end A048050.P9496999094067285525

namespace A048050

/-- `A001065(n+1)-A057427(n)` -/
def P9496999094067285525.Spec : Prop :=
  ∀ n, P9496999094067285525.a n = A048050 (n + 1)

end A048050

/-! ## A048050.P9785577342076439560

`A028310(n)-A033879(n+1)`
-/

namespace A048050.P9785577342076439560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - A033879 (n + 1)

end

end A048050.P9785577342076439560

namespace A048050

/-- `A028310(n)-A033879(n+1)` -/
def P9785577342076439560.Spec : Prop :=
  ∀ n, P9785577342076439560.a n = A048050 (n + 1)

end A048050

/-! ## A048050.P4807697471183413106

`A004277(n)-A353190(n+1)`
-/

namespace A048050.P4807697471183413106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n - A353190 (n + 1)

end

end A048050.P4807697471183413106

namespace A048050

/-- `A004277(n)-A353190(n+1)` -/
def P4807697471183413106.Spec : Prop :=
  ∀ n, P4807697471183413106.a n = A048050 (n + 1)

end A048050

/-! ## A048050.P7723486792135363921

`A001065(n+1)-A134824(n)²`
-/

namespace A048050.P7723486792135363921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A134824 n ^ 2

end

end A048050.P7723486792135363921

namespace A048050

/-- `A001065(n+1)-A134824(n)²` -/
def P7723486792135363921.Spec : Prop :=
  ∀ n, P7723486792135363921.a n = A048050 (n + 1)

end A048050

/-! ## A048050.P10011924583000609380

`A051709(n+1)+A016035(n+1)`
-/

namespace A048050.P10011924583000609380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051709 (n + 1) + A016035 (n + 1)

end

end A048050.P10011924583000609380

namespace A048050

/-- `A051709(n+1)+A016035(n+1)` -/
def P10011924583000609380.Spec : Prop :=
  ∀ n, P10011924583000609380.a n = A048050 (n + 1)

end A048050

/-! ## A048050.P1350640010092203731

`A105221(n+1)+A060278(n+1)`
-/

namespace A048050.P1350640010092203731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105221 (n + 1) + A060278 (n + 1)

end

end A048050.P1350640010092203731

namespace A048050

/-- `A105221(n+1)+A060278(n+1)` -/
def P1350640010092203731.Spec : Prop :=
  ∀ n, P1350640010092203731.a n = A048050 (n + 1)

end A048050

/-! ## A048050.P14986191870989271297

`A152770(n+1)+A070824(n+1)`
-/

namespace A048050.P14986191870989271297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152770 (n + 1) + A070824 (n + 1)

end

end A048050.P14986191870989271297

namespace A048050

/-- `A152770(n+1)+A070824(n+1)` -/
def P14986191870989271297.Spec : Prop :=
  ∀ n, P14986191870989271297.a n = A048050 (n + 1)

end A048050

/-! ## A048050.P17241182544493125099

`A326146(n+1)+A057237(n+1)`
-/

namespace A048050.P17241182544493125099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326146 (n + 1) + A057237 (n + 1)

end

end A048050.P17241182544493125099

namespace A048050

/-- `A326146(n+1)+A057237(n+1)` -/
def P17241182544493125099.Spec : Prop :=
  ∀ n, P17241182544493125099.a n = A048050 (n + 1)

end A048050

/-! ## A048050.P754762084732949029

`A339423(n+1)+A333784(n+1)`
-/

namespace A048050.P754762084732949029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339423 (n + 1) + A333784 (n + 1)

end

end A048050.P754762084732949029

namespace A048050

/-- `A339423(n+1)+A333784(n+1)` -/
def P754762084732949029.Spec : Prop :=
  ∀ n, P754762084732949029.a n = A048050 (n + 1)

end A048050

/-! ## A048050.P15838230040115943966

`A001065(n+1)+A000007(n)-1`
-/

namespace A048050.P15838230040115943966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + (A000007 n - 1)

end

end A048050.P15838230040115943966

namespace A048050

/-- `A001065(n+1)+A000007(n)-1` -/
def P15838230040115943966.Spec : Prop :=
  ∀ n, P15838230040115943966.a n = A048050 (n + 1)

end A048050

/-! ## A048050.P14009685771245527970

`A155085(n+1)-(A103517(n)+1)`
-/

namespace A048050.P14009685771245527970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (n + 1) - (A103517 n + 1)

end

end A048050.P14009685771245527970

namespace A048050

/-- `A155085(n+1)-(A103517(n)+1)` -/
def P14009685771245527970.Spec : Prop :=
  ∀ n, P14009685771245527970.a n = A048050 (n + 1)

end A048050

/-! ## A048050.P15429158330661073670

`A134871(n+1)-A152864(n+1)`
-/

namespace A048050.P15429158330661073670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134871 (n + 1) - A152864 (n + 1)

end

end A048050.P15429158330661073670

namespace A048050

/-- `A134871(n+1)-A152864(n+1)` -/
def P15429158330661073670.Spec : Prop :=
  ∀ n, P15429158330661073670.a n = A048050 (n + 1)

end A048050

/-!
# A048052: Start of the first occurrence of n consecutive reversible primes (emirps).

The programs for A048052, there is no canonical definition to state claims against.
-/

/-! ## A048052.P9899977961665806884

`A123627(A002664(n)+7)`
-/

namespace A048052.P9899977961665806884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123627 (A002664 n + 7).toNat

end

end A048052.P9899977961665806884

/-!
# A048054: Number of n-digit reversible primes (emirps).

The programs for A048054, there is no canonical definition to state claims against.
-/

/-! ## A048054.P18349508064609973207

`2*A256623(n+1)-Δ[A050251(n)]`
-/

namespace A048054.P18349508064609973207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A256623 (n + 1) - (f1 (n + 1) - f1 n)

end

end A048054.P18349508064609973207

/-! ## A048054.P7832899236649193049

`2*A256623(n+1)-A016115(n+1)`
-/

namespace A048054.P7832899236649193049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A256623 (n + 1) - A016115 (n + 1)

end

end A048054.P7832899236649193049

/-! ## A048054.P12489881932420766361

`2*A256623(n+1)-(A050251(n+1)-A050251(n))`
-/

namespace A048054.P12489881932420766361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A256623 (n + 1) - (A050251 (n + 1) - A050251 n)

end

end A048054.P12489881932420766361

/-! ## A048054.P11143686692581444903

`A152014(n+1)+Δ[A050251(n)]`
-/

namespace A048054.P11143686692581444903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152014 (n + 1) + (f1 (n + 1) - f1 n)

end

end A048054.P11143686692581444903

/-! ## A048054.P7131743519770955350

`A152014(n+1)+A016115(n+1)`
-/

namespace A048054.P7131743519770955350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152014 (n + 1) + A016115 (n + 1)

end

end A048054.P7131743519770955350

/-!
# A048058: a(n) = n^2 + n + 11.

The programs for A048058, the canonical program `A048058.P10966972837158806934` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048058 has offset 0).

The definition of A048058 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+n+11` (program `A048058.P10966972837158806934`, by `A048058.P10966972837158806934.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A048058.P10966972837158806934

`n²+n+11`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048058

/-- `n²+n+11` -/
def P10966972837158806934.Spec : Prop :=
  ∀ n, (P10966972837158806934.a n : ℤ) = A048058 n

theorem P10966972837158806934.correct : P10966972837158806934.Spec := by
  intro n
  simp only [A048058]

end A048058

/-! ## A048058.P3007493336478751899

`∑[a(n-1)+2]` with `a(0)=11, a(1)=2`
-/

namespace A048058.P3007493336478751899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [11, 2] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048058.P3007493336478751899

namespace A048058

/-- `∑[a(n-1)+2]` -/
def P3007493336478751899.Spec : Prop :=
  ∀ n, (P3007493336478751899.a n : ℤ) = A048058 n

end A048058

/-! ## A048058.P14869853813126103582

`or(1, n*(n+1)+10)`
-/

namespace A048058.P14869853813126103582
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n * (n + 1) + 10)

end

end A048058.P14869853813126103582

namespace A048058

/-- `or(1, n*(n+1)+10)` -/
def P14869853813126103582.Spec : Prop :=
  ∀ n, (P14869853813126103582.a n : ℤ) = A048058 n

end A048058

/-! ## A048058.P6006445841977173837

`xor(1, n*(n+1)+10)`
-/

namespace A048058.P6006445841977173837
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n * (n + 1) + 10)

end

end A048058.P6006445841977173837

namespace A048058

/-- `xor(1, n*(n+1)+10)` -/
def P6006445841977173837.Spec : Prop :=
  ∀ n, (P6006445841977173837.a n : ℤ) = A048058 n

end A048058

/-! ## A048058.P1750171676129375263

`abs(a(n-1)+2*n)` with `a(0)=11`
-/

namespace A048058.P1750171676129375263
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [11] fun n a =>
  a (n - 1) + 2 * n

end

end A048058.P1750171676129375263

namespace A048058

/-- `abs(a(n-1)+2*n)` -/
def P1750171676129375263.Spec : Prop :=
  ∀ n, (P1750171676129375263.a n : ℤ) = A048058 n

theorem P1750171676129375263.correct : P1750171676129375263.Spec := by
  intro n
  induction n with
  | zero => simp [A048058, A048058.P1750171676129375263.a, A048058.P10966972837158806934.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A048058, Nat.add_sub_cancel, A048058.P1750171676129375263.a, A048058.P10966972837158806934.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A048058

/-! ## A048058.P5052858667756419699

`floor(a(n-1)+2*n)` with `a(0)=11`

`floor` is left out, it is the identity on integers.
-/

namespace A048058.P5052858667756419699
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [11] fun n a =>
  a (n - 1) + 2 * n

end

end A048058.P5052858667756419699

namespace A048058

/-- `floor(a(n-1)+2*n)` -/
def P5052858667756419699.Spec : Prop :=
  ∀ n, (P5052858667756419699.a n : ℤ) = A048058 n

theorem P5052858667756419699.correct : P5052858667756419699.Spec := by
  intro n
  induction n with
  | zero => simp [A048058, A048058.P5052858667756419699.a, A048058.P10966972837158806934.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A048058, Nat.add_sub_cancel, A048058.P5052858667756419699.a, A048058.P10966972837158806934.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A048058

/-! ## A048058.P9688887979660276613

`ceil(a(n-1)+2*n)` with `a(0)=11`

`ceil` is left out, it is the identity on integers.
-/

namespace A048058.P9688887979660276613
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [11] fun n a =>
  a (n - 1) + 2 * n

end

end A048058.P9688887979660276613

namespace A048058

/-- `ceil(a(n-1)+2*n)` -/
def P9688887979660276613.Spec : Prop :=
  ∀ n, (P9688887979660276613.a n : ℤ) = A048058 n

theorem P9688887979660276613.correct : P9688887979660276613.Spec := by
  intro n
  induction n with
  | zero => simp [A048058, A048058.P9688887979660276613.a, A048058.P10966972837158806934.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A048058, Nat.add_sub_cancel, A048058.P9688887979660276613.a, A048058.P10966972837158806934.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A048058

/-! ## A048058.P13376527245176579113

`abs(a(n-1)+n+n)` with `a(0)=11`
-/

namespace A048058.P13376527245176579113
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [11] fun n a =>
  a (n - 1) + n + n

end

end A048058.P13376527245176579113

namespace A048058

/-- `abs(a(n-1)+n+n)` -/
def P13376527245176579113.Spec : Prop :=
  ∀ n, (P13376527245176579113.a n : ℤ) = A048058 n

theorem P13376527245176579113.correct : P13376527245176579113.Spec := by
  intro n
  induction n with
  | zero => simp [A048058, A048058.P13376527245176579113.a, A048058.P10966972837158806934.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A048058, Nat.add_sub_cancel, A048058.P13376527245176579113.a, A048058.P10966972837158806934.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A048058

/-! ## A048058.P14214038933287602217

`floor(a(n-1)+n+n)` with `a(0)=11`

`floor` is left out, it is the identity on integers.
-/

namespace A048058.P14214038933287602217
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [11] fun n a =>
  a (n - 1) + n + n

end

end A048058.P14214038933287602217

namespace A048058

/-- `floor(a(n-1)+n+n)` -/
def P14214038933287602217.Spec : Prop :=
  ∀ n, (P14214038933287602217.a n : ℤ) = A048058 n

theorem P14214038933287602217.correct : P14214038933287602217.Spec := by
  intro n
  induction n with
  | zero => simp [A048058, A048058.P14214038933287602217.a, A048058.P10966972837158806934.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A048058, Nat.add_sub_cancel, A048058.P14214038933287602217.a, A048058.P10966972837158806934.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A048058

/-! ## A048058.P2123600452674687005

`ceil(a(n-1)+n+n)` with `a(0)=11`

`ceil` is left out, it is the identity on integers.
-/

namespace A048058.P2123600452674687005
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [11] fun n a =>
  a (n - 1) + n + n

end

end A048058.P2123600452674687005

namespace A048058

/-- `ceil(a(n-1)+n+n)` -/
def P2123600452674687005.Spec : Prop :=
  ∀ n, (P2123600452674687005.a n : ℤ) = A048058 n

theorem P2123600452674687005.correct : P2123600452674687005.Spec := by
  intro n
  induction n with
  | zero => simp [A048058, A048058.P2123600452674687005.a, A048058.P10966972837158806934.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A048058, Nat.add_sub_cancel, A048058.P2123600452674687005.a, A048058.P10966972837158806934.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A048058

/-! ## A048058.P3843758458675450460

`2*(a(n-1)/2+n)` with `a(0)=11`
-/

namespace A048058.P3843758458675450460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [11] fun n a =>
  2 * (a (n - 1) / 2 + (n : ℚ))

end

end A048058.P3843758458675450460

namespace A048058

/-- `2*(a(n-1)/2+n)` -/
def P3843758458675450460.Spec : Prop :=
  ∀ n, P3843758458675450460.a n = (A048058 n : ℚ)

theorem P3843758458675450460.correct : P3843758458675450460.Spec := by
  intro n
  induction n with
  | zero => simp [A048058, A048058.P3843758458675450460.a, A048058.P10966972837158806934.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A048058, Nat.add_sub_cancel, A048058.P3843758458675450460.a, A048058.P10966972837158806934.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A048058

/-! ## A048058.P12063687547269153521

`(A259555(n+1)+5)/2`
-/

namespace A048058.P12063687547269153521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259555 (n + 1) + 5 : ℚ) / 2

end

end A048058.P12063687547269153521

namespace A048058

/-- `(A259555(n+1)+5)/2` -/
def P12063687547269153521.Spec : Prop :=
  ∀ n, P12063687547269153521.a n = (A048058 n : ℚ)

theorem P12063687547269153521.correct : P12063687547269153521.Spec := by
  intro n
  simp only [A048058, Nat.add_sub_cancel, A048058.P12063687547269153521.a, A048058.P10966972837158806934.a, A259555, A259555.P7816943564928333054.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A048058

/-! ## A048058.P7002393566370543909

`A020742(∑[n]+2)`
-/

namespace A048058.P7002393566370543909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A048058.P7002393566370543909

namespace A048058

/-- `A020742(∑[n]+2)` -/
def P7002393566370543909.Spec : Prop :=
  ∀ n, P7002393566370543909.a n = A048058 n

end A048058

/-! ## A048058.P14597284129024157523

`A005818(∑[n]+4)`
-/

namespace A048058.P14597284129024157523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005818 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A048058.P14597284129024157523

namespace A048058

/-- `A005818(∑[n]+4)` -/
def P14597284129024157523.Spec : Prop :=
  ∀ n, P14597284129024157523.a n = A048058 n

end A048058

/-! ## A048058.P7310968322171788067

`A020735(∑[n]+4)`
-/

namespace A048058.P7310968322171788067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020735 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A048058.P7310968322171788067

namespace A048058

/-- `A020735(∑[n]+4)` -/
def P7310968322171788067.Spec : Prop :=
  ∀ n, P7310968322171788067.a n = A048058 n

end A048058

/-! ## A048058.P6042224040281696493

`A062545(∑[n]+4)`
-/

namespace A048058.P6042224040281696493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A048058.P6042224040281696493

namespace A048058

/-- `A062545(∑[n]+4)` -/
def P6042224040281696493.Spec : Prop :=
  ∀ n, P6042224040281696493.a n = A048058 n

end A048058

/-! ## A048058.P8474195931397330394

`A033465(∑[n]+5)`
-/

namespace A048058.P8474195931397330394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033465 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A048058.P8474195931397330394

namespace A048058

/-- `A033465(∑[n]+5)` -/
def P8474195931397330394.Spec : Prop :=
  ∀ n, P8474195931397330394.a n = A048058 n

end A048058

/-! ## A048058.P2736475255201633386

`A130773(∑[n]+5)`
-/

namespace A048058.P2736475255201633386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A048058.P2736475255201633386

namespace A048058

/-- `A130773(∑[n]+5)` -/
def P2736475255201633386.Spec : Prop :=
  ∀ n, P2736475255201633386.a n = A048058 n

end A048058

/-! ## A048058.P14969718687837747173

`A144396(∑[n]+5)`
-/

namespace A048058.P14969718687837747173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A048058.P14969718687837747173

namespace A048058

/-- `A144396(∑[n]+5)` -/
def P14969718687837747173.Spec : Prop :=
  ∀ n, P14969718687837747173.a n = A048058 n

end A048058

/-! ## A048058.P17737648002539035374

`A223134(∑[n]+5)`
-/

namespace A048058.P17737648002539035374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223134 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A048058.P17737648002539035374

namespace A048058

/-- `A223134(∑[n]+5)` -/
def P17737648002539035374.Spec : Prop :=
  ∀ n, P17737648002539035374.a n = A048058 n

end A048058

/-!
# A048059: Primes of the form k^2 + k + 11.

The programs for A048059, there is no canonical definition to state claims against.
-/

/-! ## A048059.P17363003958492553028

`A048058(A048097(n+1))`
-/

namespace A048059.P17363003958492553028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048058 (A048097 (n + 1)).toNat

end

end A048059.P17363003958492553028

/-! ## A048059.P17427791877012921219

`p?[∑[2*n]+11]`
-/

namespace A048059.P17427791877012921219
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A048059.P17427791877012921219

/-! ## A048059.P15499889454519873459

`or(1, p?[n²+11+n])`
-/

namespace A048059.P15499889454519873459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 11 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A048059.P15499889454519873459

/-! ## A048059.P15233530192061785386

`xor(1, p?[n²+11+n])+1`
-/

namespace A048059.P15233530192061785386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 11 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) + 1

end

end A048059.P15233530192061785386

/-! ## A048059.P3146712406773448562

`floor(sqrt(p?[n²+11+n]²+1))`
-/

namespace A048059.P3146712406773448562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 11 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2 + 1)

end

end A048059.P3146712406773448562

/-! ## A048059.P16167776042513815794

`p?[n²+11+n]%A016887(n)`
-/

namespace A048059.P16167776042513815794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 11 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) (A016887 n)

end

end A048059.P16167776042513815794

/-! ## A048059.P3953769040216581707

`A000027(p?[a(n-1)+2*n])` with `a(0)=11`
-/

namespace A048059.P3953769040216581707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [11] fun n f1 =>
  f1 (n - 1) + 2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A048059.P3953769040216581707

/-! ## A048059.P8176562786562259226

`∩[A106890(n+1), A048058(n)]`
-/

namespace A048059.P8176562786562259226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048058 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048059.P8176562786562259226

/-! ## A048059.P2507850561962905195

`∩[A106891(n+1), A048058(n)]`
-/

namespace A048059.P2507850561962905195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048058 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048059.P2507850561962905195

/-! ## A048059.P7754777914598250783

`∩[A191031(n+1), A048058(n)]`
-/

namespace A048059.P7754777914598250783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048058 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048059.P7754777914598250783

/-! ## A048059.P969939825876398330

`∩[A341788(n+1), A048058(n)]`
-/

namespace A048059.P969939825876398330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341788 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048058 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048059.P969939825876398330

/-! ## A048059.P895678036084688286

`∩[A045322(n+1), A048058(n)]`
-/

namespace A048059.P895678036084688286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045322 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048058 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048059.P895678036084688286

/-! ## A048059.P14666413926783560546

`∩[A045335(n+1), A048058(n)]`
-/

namespace A048059.P14666413926783560546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045335 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048058 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048059.P14666413926783560546

/-! ## A048059.P11731728412057689837

`∩[A042986(n+1), A048058(n)]`
-/

namespace A048059.P11731728412057689837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048058 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048059.P11731728412057689837

/-! ## A048059.P1198007201040483025

`∩[A045321(n+1), A048058(n)]`
-/

namespace A048059.P1198007201040483025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045321 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048058 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048059.P1198007201040483025

/-! ## A048059.P10522741585499733042

`∩[A048058(n), A339879(n+1)]`
-/

namespace A048059.P10522741585499733042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048058 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048059.P10522741585499733042

/-! ## A048059.P12882977917979827382

`∩[A042997(n+1), A048058(n)]`
-/

namespace A048059.P12882977917979827382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048058 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048059.P12882977917979827382

/-! ## A048059.P14334105003545944810

`∩[A045320(n+1), A048058(n)]`
-/

namespace A048059.P14334105003545944810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048058 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048059.P14334105003545944810

/-!
# A048060: Number of nonempty subsets of {1,2,...,n} in which exactly 1/2 of the elements are <= (n-4)/2.

The programs for A048060, the canonical program `A048060.P14837841102375301170` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048060 has offset 1).

The definition of A048060 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 273 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048060.P14837841102375301170

`C(n+1, ∑[char[2*n+5]])-1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048060

/-- `C(n+1, ∑[char[2*n+5]])-1` -/
def P14837841102375301170.Spec : Prop :=
  ∀ n, P14837841102375301170.a n = A048060 (n + 1)

theorem P14837841102375301170.correct : P14837841102375301170.Spec := by
  intro n
  simp only [A048060, Nat.add_sub_cancel]

end A048060

/-! ## A048060.P14575569084132941658

`A265848(A055998(n))-1`
-/

namespace A048060.P14575569084132941658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265848 (A055998 n).toNat - 1

end

end A048060.P14575569084132941658

namespace A048060

/-- `A265848(A055998(n))-1` -/
def P14575569084132941658.Spec : Prop :=
  ∀ n, P14575569084132941658.a n = A048060 (n + 1)

end A048060

/-! ## A048060.P16877659369778845451

`A265848(A084265(n)+2)-1`
-/

namespace A048060.P16877659369778845451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265848 (A084265 n + 2).toNat - 1

end

end A048060.P16877659369778845451

namespace A048060

/-- `A265848(A084265(n)+2)-1` -/
def P16877659369778845451.Spec : Prop :=
  ∀ n, P16877659369778845451.a n = A048060 (n + 1)

end A048060

/-! ## A048060.P15104582816428749967

`A007318(abs(∑[or(1, n+1)]-2))-1`
-/

namespace A048060.P15104582816428749967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2|.toNat - 1

end

end A048060.P15104582816428749967

namespace A048060

/-- `A007318(abs(∑[or(1, n+1)]-2))-1` -/
def P15104582816428749967.Spec : Prop :=
  ∀ n, P15104582816428749967.a n = A048060 (n + 1)

end A048060

/-! ## A048060.P8605943027425666239

`A007318(A179207(n+1))-1`
-/

namespace A048060.P8605943027425666239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A179207 (n + 1)).toNat - 1

end

end A048060.P8605943027425666239

namespace A048060

/-- `A007318(A179207(n+1))-1` -/
def P8605943027425666239.Spec : Prop :=
  ∀ n, P8605943027425666239.a n = A048060 (n + 1)

end A048060

/-! ## A048060.P4552857685121961066

`A007318(A053438(n)+A007590(n))-1`
-/

namespace A048060.P4552857685121961066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A053438 n + A007590 n).toNat - 1

end

end A048060.P4552857685121961066

namespace A048060

/-- `A007318(A053438(n)+A007590(n))-1` -/
def P4552857685121961066.Spec : Prop :=
  ∀ n, P4552857685121961066.a n = A048060 (n + 1)

end A048060

/-! ## A048060.P3574280815746657026

`A007318(A184533(n+1)-A003682(n+1))-1`
-/

namespace A048060.P3574280815746657026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A184533 (n + 1) - A003682 (n + 1)).toNat - 1

end

end A048060.P3574280815746657026

namespace A048060

/-- `A007318(A184533(n+1)-A003682(n+1))-1` -/
def P3574280815746657026.Spec : Prop :=
  ∀ n, P3574280815746657026.a n = A048060 (n + 1)

end A048060

/-! ## A048060.P3127252252039678272

`A014473(A179207(n+1))`
-/

namespace A048060.P3127252252039678272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 (A179207 (n + 1)).toNat

end

end A048060.P3127252252039678272

namespace A048060

/-- `A014473(A179207(n+1))` -/
def P3127252252039678272.Spec : Prop :=
  ∀ n, P3127252252039678272.a n = A048060 (n + 1)

end A048060

/-! ## A048060.P10652854808685885910

`A014473(A080476(n+1)-1+n)`
-/

namespace A048060.P10652854808685885910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 (A080476 (n + 1) - 1 + (n : ℤ)).toNat

end

end A048060.P10652854808685885910

namespace A048060

/-- `A014473(A080476(n+1)-1+n)` -/
def P10652854808685885910.Spec : Prop :=
  ∀ n, P10652854808685885910.a n = A048060 (n + 1)

end A048060

/-!
# A048061: Number of nonempty subsets of {1,2,...,n} in which exactly 1/3 of the elements are <= (n-4)/2.

The programs for A048061, there is no canonical definition to state claims against.
-/

/-! ## A048061.P15887737667636483393

`A008683(A190444(n))*A048017(n+1)`
-/

namespace A048061.P15887737667636483393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A190444 n).toNat * A048017 (n + 1)

end

end A048061.P15887737667636483393

/-! ## A048061.P15697507911872080375

`A048017(gcd(A008688(n), A333666(n+1)))`
-/

namespace A048061.P15697507911872080375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048017 (Int.gcd (A008688 n) (A333666 (n + 1)))

end

end A048061.P15697507911872080375

/-! ## A048061.P5372658865836062016

`lcm(A008683(A081920(n)), A048017(n+1))`
-/

namespace A048061.P5372658865836062016
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008683 (A081920 n).toNat) (A048017 (n + 1))

end

end A048061.P5372658865836062016

/-! ## A048061.P850667346393475914

`C(A048017(n+1), A267425(A011782(n)))`
-/

namespace A048061.P850667346393475914
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A048017 (n + 1)).toNat (A267425 (A011782 n).toNat).toNat

end

end A048061.P850667346393475914

/-! ## A048061.P8195468882283458421

`A048017(n+1)*A261092(A048020(3*(n+1)))`
-/

namespace A048061.P8195468882283458421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048017 (n + 1) * A261092 (A048020 (3 * (n + 1))).toNat

end

end A048061.P8195468882283458421

/-!
# A048063: Number of nonempty subsets of {1,2,...,n} in which exactly 1/4 of the elements are <= (n-4)/2.

The programs for A048063, there is no canonical definition to state claims against.
-/

/-! ## A048063.P14997046526597652867

`A048008(n+1)%A326335(n)²`
-/

namespace A048063.P14997046526597652867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048008 (n + 1)) (A326335 n ^ 2)

end

end A048063.P14997046526597652867

/-! ## A048063.P15849152419878562296

`xor(1, A318274(A082679(n)))`
-/

namespace A048063.P15849152419878562296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A318274 (A082679 n).toNat)

end

end A048063.P15849152419878562296

/-! ## A048063.P2919031813565382591

`lcm(A008683(A006318(n)), A048019(n+1))`
-/

namespace A048063.P2919031813565382591
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008683 (A006318 n).toNat) (A048019 (n + 1))

end

end A048063.P2919031813565382591

/-! ## A048063.P18043626305901901962

`A156552(C(A219327(n+1), A173525(n+1)))`
-/

namespace A048063.P18043626305901901962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (Nat.choose (A219327 (n + 1)).toNat (A173525 (n + 1)).toNat)

end

end A048063.P18043626305901901962

/-! ## A048063.P8317944364622622635

`A048019(n+1)%A048052(A210435(2*(n+1)))`
-/

namespace A048063.P8317944364622622635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048019 (n + 1)) (A048052 (A210435 (2 * (n + 1))).toNat)

end

end A048063.P8317944364622622635

/-!
# A048064: Number of nonempty subsets of {1,2,...,n} in which exactly 3/4 of the elements are <= (n-4)/2.

The programs for A048064, there is no canonical definition to state claims against.
-/

/-! ## A048064.P6341947724656762956

`A326528(n)²*A065603(n+3)`
-/

namespace A048064.P6341947724656762956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326528 n ^ 2 * A065603 (n + 3)

end

end A048064.P6341947724656762956

/-! ## A048064.P10534552735496307619

`and(p?[A005247(n)], A047197(n+1))`
-/

namespace A048064.P10534552735496307619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005247 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A047197 (n + 1))

end

end A048064.P10534552735496307619

/-! ## A048064.P14634385326526469422

`and(-A324416(n+1), A047197(n+1))`
-/

namespace A048064.P14634385326526469422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A324416 (n + 1)) (A047197 (n + 1))

end

end A048064.P14634385326526469422

/-! ## A048064.P9315279467972990906

`A047197(n+1)%A174843(A170156(n))`
-/

namespace A048064.P9315279467972990906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047197 (n + 1)) (A174843 (A170156 n).toNat)

end

end A048064.P9315279467972990906

/-! ## A048064.P14125747918202581632

`A047197(n+1)*A267525(A316473(n+1))`
-/

namespace A048064.P14125747918202581632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047197 (n + 1) * A267525 (A316473 (n + 1)).toNat

end

end A048064.P14125747918202581632

/-!
# A048065: Number of nonempty subsets of {1,2,...,n} in which exactly 1/5 of the elements are <= (n-4)/2.

The programs for A048065, there is no canonical definition to state claims against.
-/

/-! ## A048065.P17789613685725430082

`A056558(A172452(n))*A243282(3*(n+1))`
-/

namespace A048065.P17789613685725430082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056558 (A172452 n).toNat * A243282 (3 * (n + 1))

end

end A048065.P17789613685725430082

/-! ## A048065.P1815103743224102610

`5*A089840(A002664(n))`
-/

namespace A048065.P1815103743224102610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A089840 (A002664 n).toNat

end

end A048065.P1815103743224102610

/-! ## A048065.P4834967379829410166

`5*A108611(A111926(n))`
-/

namespace A048065.P4834967379829410166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A108611 (A111926 n).toNat

end

end A048065.P4834967379829410166

/-! ## A048065.P11809523239200934819

`5*A287870(A023425(n))`
-/

namespace A048065.P11809523239200934819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A287870 (A023425 n).toNat

end

end A048065.P11809523239200934819

/-! ## A048065.P3520209046519675913

`5*A108611(A238913(n))`
-/

namespace A048065.P3520209046519675913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A108611 (A238913 n).toNat

end

end A048065.P3520209046519675913

/-!
# A048066: Number of nonempty subsets of {1,2,...,n} in which exactly 2/5 of the elements are <= (n-4)/2.

The programs for A048066, there is no canonical definition to state claims against.
-/

/-! ## A048066.P4710658673189065238

`A048011(n+1)*A059841(A230695(n))`
-/

namespace A048066.P4710658673189065238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048011 (n + 1) * A059841 (A230695 n).toNat

end

end A048066.P4710658673189065238

/-! ## A048066.P4671720746641959537

`A048011(n+1)%A007772(A079262(n))`
-/

namespace A048066.P4671720746641959537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048011 (n + 1)) (A007772 (A079262 n).toNat)

end

end A048066.P4671720746641959537

/-! ## A048066.P14543901850701856893

`A047999(A047905(n+1))*A048011(n+1)`
-/

namespace A048066.P14543901850701856893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 (A047905 (n + 1)).toNat * A048011 (n + 1)

end

end A048066.P14543901850701856893

/-! ## A048066.P17163577488305398912

`A048011(n+1)*A266892(A048040(2*(n+1)))`
-/

namespace A048066.P17163577488305398912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048011 (n + 1) * A266892 (A048040 (2 * (n + 1))).toNat

end

end A048066.P17163577488305398912

/-! ## A048066.P13122223988286578057

`A031346(A203761(n+1))*A058187(n)`
-/

namespace A048066.P13122223988286578057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 (A203761 (n + 1)).toNat * A058187 n

end

end A048066.P13122223988286578057

/-!
# A048067: Number of nonempty subsets of {1,2,...,n} in which exactly 3/5 of the elements are <= (n-4)/2.

The programs for A048067, there is no canonical definition to state claims against.
-/

/-! ## A048067.P7878369254489385850

`A047200(n+1)*A126010(A053415(n))`
-/

namespace A048067.P7878369254489385850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047200 (n + 1) * A126010 (A053415 n).toNat

end

end A048067.P7878369254489385850

/-! ## A048067.P3561158577689467988

`A047200(n+1)*A060576(A185336(n))`
-/

namespace A048067.P3561158577689467988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047200 (n + 1) * A060576 (A185336 n).toNat

end

end A048067.P3561158577689467988

/-! ## A048067.P2317598305794859888

`A047200(n+1)%A061954(A089413(n))`
-/

namespace A048067.P2317598305794859888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047200 (n + 1)) (A061954 (A089413 n).toNat)

end

end A048067.P2317598305794859888

/-! ## A048067.P15456198547860776492

`lcm(A010892(A286174(n+1)), A047200(n+1))`
-/

namespace A048067.P15456198547860776492
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010892 (A286174 (n + 1)).toNat) (A047200 (n + 1))

end

end A048067.P15456198547860776492

/-! ## A048067.P2145700514722629967

`A047200(n+1)*A066247(A082981(2*n+1))`
-/

namespace A048067.P2145700514722629967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047200 (n + 1) * A066247 (A082981 (2 * n + 1)).toNat

end

end A048067.P2145700514722629967

/-!
# A048068: Number of nonempty subsets of {1,2,...,n} in which exactly 4/5 of the elements are <= (n-4)/2.

The programs for A048068, there is no canonical definition to state claims against.
-/

/-! ## A048068.P12143794534453492777

`A048046(A187829(n+1)-char[10])`
-/

namespace A048068.P12143794534453492777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048046 (A187829 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A048068.P12143794534453492777

/-! ## A048068.P1594977049660403368

`A048046(n+1)^Δ[A077168(n+4)]`
-/

namespace A048068.P1594977049660403368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 (n + 4)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048046 (n + 1) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A048068.P1594977049660403368

/-! ## A048068.P16594866910773845577

`A048046(n+1)%A317815(A087762(n+1))`
-/

namespace A048068.P16594866910773845577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048046 (n + 1)) (A317815 (A087762 (n + 1)).toNat)

end

end A048068.P16594866910773845577

/-! ## A048068.P331425429995271715

`∑[A165191(∑[n])]*A120043(n)`
-/

namespace A048068.P331425429995271715
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165191 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A120043 n

end

end A048068.P331425429995271715

/-! ## A048068.P3408116172920304270

`A120043(n)*A334098(A320663(n))`
-/

namespace A048068.P3408116172920304270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120043 n * A334098 (A320663 n).toNat

end

end A048068.P3408116172920304270

/-!
# A048069: Number of nonempty subsets of {1,2,...,n} in which exactly 1/6 of the elements are <= (n-4)/2.

The programs for A048069, there is no canonical definition to state claims against.
-/

/-! ## A048069.P9411030152166331084

`A048014(n+1)*A063062(A182107(n+2)/A063062(n))`
-/

namespace A048069.P9411030152166331084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048014 (n + 1) * A063062 (SequenceMachineLib.roundAway ((A182107 (n + 2) : ℚ) / (A063062 n : ℚ))).toNat

end

end A048069.P9411030152166331084

/-! ## A048069.P16226781958254048690

`lcm(A048014(n+1), A102669(A133494(n)))`
-/

namespace A048069.P16226781958254048690
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A048014 (n + 1)) (A102669 (A133494 n).toNat)

end

end A048069.P16226781958254048690

/-! ## A048069.P15004670279651143919

`A000189(A007443(n+1))*A048014(n+1)`
-/

namespace A048069.P15004670279651143919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000189 (A007443 (n + 1)).toNat * A048014 (n + 1)

end

end A048069.P15004670279651143919

/-! ## A048069.P7979473927434203308

`A048014(n+1)*A063062(A182107(n+2))`
-/

namespace A048069.P7979473927434203308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048014 (n + 1) * A063062 (A182107 (n + 2)).toNat

end

end A048069.P7979473927434203308

/-! ## A048069.P6371492593036714545

`A335979(A336009(n))*A336012(A335979(n))`
-/

namespace A048069.P6371492593036714545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335979 (A336009 n).toNat * A336012 (A335979 n).toNat

end

end A048069.P6371492593036714545

/-!
# A048070: Number of nonempty subsets of {1,2,...,n} in which exactly 5/6 of the elements are <= (n-4)/2.

The programs for A048070, there is no canonical definition to state claims against.
-/

/-! ## A048070.P7901376469448523877

`A038189(A022311(n))*A048081(n+1)`
-/

namespace A048070.P7901376469448523877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 (A022311 n).toNat * A048081 (n + 1)

end

end A048070.P7901376469448523877

/-! ## A048070.P4829428142155242566

`A008683(A280564(n))*A048081(n+1)`
-/

namespace A048070.P4829428142155242566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A280564 n).toNat * A048081 (n + 1)

end

end A048070.P4829428142155242566

/-! ## A048070.P7205200303857631343

`A048081(n+1)*A159689(A181836(n))`
-/

namespace A048070.P7205200303857631343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048081 (n + 1) * A159689 (A181836 n).toNat

end

end A048070.P7205200303857631343

/-! ## A048070.P11718047303554725521

`lcm(A008683(A290415(n)), A048081(n+1))`
-/

namespace A048070.P11718047303554725521
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008683 (A290415 n).toNat) (A048081 (n + 1))

end

end A048070.P11718047303554725521

/-! ## A048070.P8378597008116812164

`(A048081(n+1)%A007318(A181836(n)))%A000079(n)`
-/

namespace A048070.P8378597008116812164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A048081 (n + 1)) (A007318 (A181836 n).toNat)) (A000079 n)

end

end A048070.P8378597008116812164

/-!
# A048071: Number of nonempty subsets of {1,2,...,n} in which exactly 1/2 of the elements are <= (n+2)/3.

The programs for A048071, the canonical program `A048071.P15483674784596925337` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048071 has offset 1).

The definition of A048071 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 328 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048071.P8659075846160827175

`C(n+1, ∑[char[3*n]])-1`
-/

namespace A048071.P8659075846160827175
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - 1

end

end A048071.P8659075846160827175

namespace A048071

/-- `C(n+1, ∑[char[3*n]])-1` -/
def P8659075846160827175.Spec : Prop :=
  ∀ n, P8659075846160827175.a n = A048071 (n + 1)

end A048071

/-! ## A048071.P15483674784596925337

`abs(1-C(n+1, A103221(2*n)))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A048071

/-- `abs(1-C(n+1, A103221(2*n)))` -/
def P15483674784596925337.Spec : Prop :=
  ∀ n, P15483674784596925337.a n = A048071 (n + 1)

theorem P15483674784596925337.correct : P15483674784596925337.Spec := by
  intro n
  simp only [A048071, Nat.add_sub_cancel]

end A048071

/-! ## A048071.P2787500696695434733

`A007318(∑[∑[(n+2)%3]])-1`
-/

namespace A048071.P2787500696695434733
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) % 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A048071.P2787500696695434733

namespace A048071

/-- `A007318(∑[∑[(n+2)%3]])-1` -/
def P2787500696695434733.Spec : Prop :=
  ∀ n, P2787500696695434733.a n = A048071 (n + 1)

end A048071

/-! ## A048071.P4817629183211257510

`A007318(∑[A101825(n+2)+n])-1`
-/

namespace A048071.P4817629183211257510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101825 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1

end

end A048071.P4817629183211257510

namespace A048071

/-- `A007318(∑[A101825(n+2)+n])-1` -/
def P4817629183211257510.Spec : Prop :=
  ∀ n, P4817629183211257510.a n = A048071 (n + 1)

end A048071

/-! ## A048071.P11815989060806942041

`A007318(∑[and(1, A000045(n))+n+1])-1`
-/

namespace A048071.P11815989060806942041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000045 n) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1

end

end A048071.P11815989060806942041

namespace A048071

/-- `A007318(∑[and(1, A000045(n))+n+1])-1` -/
def P11815989060806942041.Spec : Prop :=
  ∀ n, P11815989060806942041.a n = A048071 (n + 1)

end A048071

/-! ## A048071.P15368980542415236926

`A014473(A024401(n+1)+1)`
-/

namespace A048071.P15368980542415236926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 (A024401 (n + 1) + 1).toNat

end

end A048071.P15368980542415236926

namespace A048071

/-- `A014473(A024401(n+1)+1)` -/
def P15368980542415236926.Spec : Prop :=
  ∀ n, P15368980542415236926.a n = A048071 (n + 1)

end A048071

/-! ## A048071.P17992809675168184160

`A014473(∑[A092200(n+1)-1])`
-/

namespace A048071.P17992809675168184160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092200 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A048071.P17992809675168184160

namespace A048071

/-- `A014473(∑[A092200(n+1)-1])` -/
def P17992809675168184160.Spec : Prop :=
  ∀ n, P17992809675168184160.a n = A048071 (n + 1)

end A048071

/-! ## A048071.P1839119693690592266

`A014473(A008620(n)+∑[n+1])`
-/

namespace A048071.P1839119693690592266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 (A008620 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A048071.P1839119693690592266

namespace A048071

/-- `A014473(A008620(n)+∑[n+1])` -/
def P1839119693690592266.Spec : Prop :=
  ∀ n, P1839119693690592266.a n = A048071 (n + 1)

end A048071

/-! ## A048071.P625083160478051834

`A014473(A004523(n+1)+∑[n+1])`
-/

namespace A048071.P625083160478051834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 (A004523 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A048071.P625083160478051834

namespace A048071

/-- `A014473(A004523(n+1)+∑[n+1])` -/
def P625083160478051834.Spec : Prop :=
  ∀ n, P625083160478051834.a n = A048071 (n + 1)

end A048071

/-! ## A048071.P16654859883221906109

`A014473(A002264(n)+A000124(n+1))`
-/

namespace A048071.P16654859883221906109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 (A002264 n + A000124 (n + 1)).toNat

end

end A048071.P16654859883221906109

namespace A048071

/-- `A014473(A002264(n)+A000124(n+1))` -/
def P16654859883221906109.Spec : Prop :=
  ∀ n, P16654859883221906109.a n = A048071 (n + 1)

end A048071

/-!
# A048072: Number of nonempty subsets of {1,2,...,n} in which exactly 1/3 of the elements are <= (n+2)/3.

The programs for A048072, there is no canonical definition to state claims against.
-/

/-! ## A048072.P15982660822552882198

`A342524(A342529(n))-A221131(n)`
-/

namespace A048072.P15982660822552882198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342524 (A342529 n).toNat - A221131 n

end

end A048072.P15982660822552882198

/-! ## A048072.P4487477179212718240

`A048094(n+1)-A094713(A080635(n))`
-/

namespace A048072.P4487477179212718240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048094 (n + 1) - A094713 (A080635 n).toNat

end

end A048072.P4487477179212718240

/-!
# A048074: Number of nonempty subsets of {1,2,...,n} in which exactly 1/4 of the elements are <= (n+2)/3.

The programs for A048074, there is no canonical definition to state claims against.
-/

/-! ## A048074.P4602712121891177307

`A039996(A287256(n))*A359896(n)`
-/

namespace A048074.P4602712121891177307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039996 (A287256 n).toNat * A359896 n

end

end A048074.P4602712121891177307

/-! ## A048074.P2260754143047321979

`A115751(A297200(n))*A297185(n)`
-/

namespace A048074.P2260754143047321979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115751 (A297200 n).toNat * A297185 n

end

end A048074.P2260754143047321979

/-! ## A048074.P9258955519236412738

`A045655(n)%A162226(A092544(n))`
-/

namespace A048074.P9258955519236412738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045655 n) (A162226 (A092544 n).toNat)

end

end A048074.P9258955519236412738

/-! ## A048074.P2603957803688594138

`A008133(A032555(n+1))*A011861(n)`
-/

namespace A048074.P2603957803688594138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008133 (A032555 (n + 1)).toNat * A011861 n

end

end A048074.P2603957803688594138

/-!
# A048076: Number of nonempty subsets of {1,2,...,n} in which exactly 1/5 of the elements are <= (n+2)/3.

The programs for A048076, there is no canonical definition to state claims against.
-/

/-! ## A048076.P12346506166972710707

`A084920(n+2)%A027750(A007716(n))`
-/

namespace A048076.P12346506166972710707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084920 (n + 2)) (A027750 (A007716 n).toNat)

end

end A048076.P12346506166972710707

/-! ## A048076.P2014651370828762362

`A047187(n+1)%A324775(A324767(n+1))`
-/

namespace A048076.P2014651370828762362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047187 (n + 1)) (A324775 (A324767 (n + 1)).toNat)

end

end A048076.P2014651370828762362

/-! ## A048076.P2068271352177148222

`round(Δ[A268950(n+2)/15])`
-/

namespace A048076.P2068271352177148222
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268950 (n + 2) : ℚ) / 15

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)

end

end A048076.P2068271352177148222

/-! ## A048076.P9397701735606469685

`A342955(A000110(n))`
-/

namespace A048076.P9397701735606469685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342955 (A000110 n).toNat

end

end A048076.P9397701735606469685

/-! ## A048076.P3415096483255210489

`A342955(A192866(n))`
-/

namespace A048076.P3415096483255210489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342955 (A192866 n).toNat

end

end A048076.P3415096483255210489

/-!
# A048077: Number of nonempty subsets of {1,2,...,n} in which exactly 2/5 of the elements are <= (n+2)/3.

The programs for A048077, there is no canonical definition to state claims against.
-/

/-! ## A048077.P2396860419783371705

`A128616(A034959(n+1))+A047188(n+1)`
-/

namespace A048077.P2396860419783371705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128616 (A034959 (n + 1)).toNat + A047188 (n + 1)

end

end A048077.P2396860419783371705

/-! ## A048077.P1824110913150623320

`A054895(A307224(n+1))+A048088(n+1)`
-/

namespace A048077.P1824110913150623320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054895 (A307224 (n + 1)).toNat + A048088 (n + 1)

end

end A048077.P1824110913150623320

/-! ## A048077.P18078776281479402571

`A085861(n)+A240852(A307224(n+1))+A048088(n+1)`
-/

namespace A048077.P18078776281479402571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085861 n + (A240852 (A307224 (n + 1)).toNat + A048088 (n + 1))

end

end A048077.P18078776281479402571

/-!
# A048078: Number of nonempty subsets of {1,2,...,n} in which exactly 3/5 of the elements are <= (n+2)/3.

The programs for A048078, there is no canonical definition to state claims against.
-/

/-! ## A048078.P15588072166950600517

`60%A178837(A112805(n+1))`
-/

namespace A048078.P15588072166950600517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 60 (A178837 (A112805 (n + 1)).toNat)

end

end A048078.P15588072166950600517

/-! ## A048078.P3180380843928420242

`A177547(n)%A000194(A007716(n))`
-/

namespace A048078.P3180380843928420242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A177547 n) (A000194 (A007716 n).toNat)

end

end A048078.P3180380843928420242

/-! ## A048078.P11540491776478719652

`A047178(n+1)%A078457(A047842(n))`
-/

namespace A048078.P11540491776478719652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047178 (n + 1)) (A078457 (A047842 n).toNat)

end

end A048078.P11540491776478719652

/-! ## A048078.P13822951916559740049

`A000217(A217482(n))%A217430(n+1)`
-/

namespace A048078.P13822951916559740049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A217482 n).toNat) (A217430 (n + 1))

end

end A048078.P13822951916559740049

/-! ## A048078.P4734455639420798456

`A000217(A040977(n+2))%A000032(n)`
-/

namespace A048078.P4734455639420798456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A040977 (n + 2)).toNat) (A000032 n)

end

end A048078.P4734455639420798456

/-!
# A048080: Number of nonempty subsets of {1,2,...,n} in which exactly 1/6 of the elements are <= (n+2)/3.

The programs for A048080, there is no canonical definition to state claims against.
-/

/-! ## A048080.P16041633345839866721

`A099026(lcm(3, A320643(n+1)))`
-/

namespace A048080.P16041633345839866721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099026 (Int.lcm 3 (A320643 (n + 1)))

end

end A048080.P16041633345839866721

/-! ## A048080.P8324047515423200351

`A029920(n)*A328959(A235136(n))`
-/

namespace A048080.P8324047515423200351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029920 n * A328959 (A235136 n).toNat

end

end A048080.P8324047515423200351

/-! ## A048080.P3075568035355596108

`A289814(A276012(n)^A257687(n))`
-/

namespace A048080.P3075568035355596108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 (SequenceMachineLib.roundAway ((A276012 n : ℚ) ^ (A257687 n : ℤ))).toNat

end

end A048080.P3075568035355596108

/-! ## A048080.P6813630443897781837

`A047191(n+1)*A232750(A007587(n))`
-/

namespace A048080.P6813630443897781837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047191 (n + 1) * A232750 (A007587 n).toNat

end

end A048080.P6813630443897781837

/-! ## A048080.P14771864878921198282

`A182633(A107246(n))*A319861(n+4)`
-/

namespace A048080.P14771864878921198282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182633 (A107246 n).toNat * A319861 (n + 4)

end

end A048080.P14771864878921198282

/-!
# A048081: Number of nonempty subsets of {1,2,...,n} in which exactly 5/6 of the elements are <= (n+2)/3.

The programs for A048081, there is no canonical definition to state claims against.
-/

/-! ## A048081.P11588496443840354721

`A117138(∑[A326531(n)])*A233276(n)`
-/

namespace A048081.P11588496443840354721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326531 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117138 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A233276 n

end

end A048081.P11588496443840354721

/-! ## A048081.P12888562840337690653

`and(A051933(A166444(n)), A188495(n+2))`
-/

namespace A048081.P12888562840337690653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051933 (A166444 n).toNat) (A188495 (n + 2))

end

end A048081.P12888562840337690653

/-!
# A048082: Number of nonempty subsets of {1,2,...,n} in which exactly 1/2 of the elements are <= (n+3)/3.

The programs for A048082, the canonical program `A048082.P8930426167496442311` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048082 has offset 1).

The definition of A048082 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 328 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048082.P8930426167496442311

`C(n+1, ceil((n+2)/3))-1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048082

/-- `C(n+1, ceil((n+2)/3))-1` -/
def P8930426167496442311.Spec : Prop :=
  ∀ n, P8930426167496442311.a n = A048082 (n + 1)

theorem P8930426167496442311.correct : P8930426167496442311.Spec := by
  intro n
  simp only [A048082, Nat.add_sub_cancel]

end A048082

/-! ## A048082.P3429255861166110324

`A007318(∑[∑[A028310(n)%3]]+1)-1`
-/

namespace A048082.P3429255861166110324
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 n) 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat - 1

end

end A048082.P3429255861166110324

namespace A048082

/-- `A007318(∑[∑[A028310(n)%3]]+1)-1` -/
def P3429255861166110324.Spec : Prop :=
  ∀ n, P3429255861166110324.a n = A048082 (n + 1)

end A048082

/-! ## A048082.P11318286090205901322

`A014473(∑[∑[n%3]+1]+1)`
-/

namespace A048082.P11318286090205901322
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A048082.P11318286090205901322

namespace A048082

/-- `A014473(∑[∑[n%3]+1]+1)` -/
def P11318286090205901322.Spec : Prop :=
  ∀ n, P11318286090205901322.a n = A048082 (n + 1)

end A048082

/-! ## A048082.P13954485037804866386

`A014473(A027916(n+2)-1)`
-/

namespace A048082.P13954485037804866386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 (A027916 (n + 2) - 1).toNat

end

end A048082.P13954485037804866386

namespace A048082

/-- `A014473(A027916(n+2)-1)` -/
def P13954485037804866386.Spec : Prop :=
  ∀ n, P13954485037804866386.a n = A048082 (n + 1)

end A048082

/-! ## A048082.P17658501074239254174

`A014473(A111097(n+2)-1)`
-/

namespace A048082.P17658501074239254174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 (A111097 (n + 2) - 1).toNat

end

end A048082.P17658501074239254174

namespace A048082

/-- `A014473(A111097(n+2)-1)` -/
def P17658501074239254174.Spec : Prop :=
  ∀ n, P17658501074239254174.a n = A048082 (n + 1)

end A048082

/-! ## A048082.P3358474606875163928

`A014473(A004396(n)+∑[n+1])`
-/

namespace A048082.P3358474606875163928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 (A004396 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A048082.P3358474606875163928

namespace A048082

/-- `A014473(A004396(n)+∑[n+1])` -/
def P3358474606875163928.Spec : Prop :=
  ∀ n, P3358474606875163928.a n = A048082 (n + 1)

end A048082

/-! ## A048082.P6607129798924393886

`A014473(A047206(n+1)+∑[n])`
-/

namespace A048082.P6607129798924393886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 (A047206 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A048082.P6607129798924393886

namespace A048082

/-- `A014473(A047206(n+1)+∑[n])` -/
def P6607129798924393886.Spec : Prop :=
  ∀ n, P6607129798924393886.a n = A048082 (n + 1)

end A048082

/-! ## A048082.P14709957506120404428

`A014473(A086161(n)+∑[n+1])`
-/

namespace A048082.P14709957506120404428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 (A086161 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A048082.P14709957506120404428

namespace A048082

/-- `A014473(A086161(n)+∑[n+1])` -/
def P14709957506120404428.Spec : Prop :=
  ∀ n, P14709957506120404428.a n = A048082 (n + 1)

end A048082

/-! ## A048082.P13154810411851199746

`A014473(A000124(n)+A008576(n)-n)`
-/

namespace A048082.P13154810411851199746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 (A000124 n + (A008576 n - (n : ℤ))).toNat

end

end A048082.P13154810411851199746

namespace A048082

/-- `A014473(A000124(n)+A008576(n)-n)` -/
def P13154810411851199746.Spec : Prop :=
  ∀ n, P13154810411851199746.a n = A048082 (n + 1)

end A048082

/-! ## A048082.P15447631540935840248

`A014473(A000124(n)-(n-A008576(n)))`
-/

namespace A048082.P15447631540935840248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 (A000124 n - ((n : ℤ) - A008576 n)).toNat

end

end A048082.P15447631540935840248

namespace A048082

/-- `A014473(A000124(n)-(n-A008576(n)))` -/
def P15447631540935840248.Spec : Prop :=
  ∀ n, P15447631540935840248.a n = A048082 (n + 1)

end A048082

/-! ## A048082.P3746952782763377271

`A014473(A002264(n+1)+A000124(n+1))`
-/

namespace A048082.P3746952782763377271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 (A002264 (n + 1) + A000124 (n + 1)).toNat

end

end A048082.P3746952782763377271

namespace A048082

/-- `A014473(A002264(n+1)+A000124(n+1))` -/
def P3746952782763377271.Spec : Prop :=
  ∀ n, P3746952782763377271.a n = A048082 (n + 1)

end A048082

/-!
# A048083: Number of nonempty subsets of {1,2,...,n} in which exactly 1/3 of the elements are <= (n+3)/3.

The programs for A048083, there is no canonical definition to state claims against.
-/

/-! ## A048083.P15176960165698723030

`xor(A003056(A216447(n)), A071945(n))`
-/

namespace A048083.P15176960165698723030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003056 (A216447 n).toNat) (A071945 n)

end

end A048083.P15176960165698723030

/-!
# A048084: Number of nonempty subsets of {1,2,...,n} in which exactly 2/3 of the elements are <= (n+3)/3.

The programs for A048084, there is no canonical definition to state claims against.
-/

/-! ## A048084.P7887890453866143571

`A326846(A003504(n)*A281680(3*n+2))`
-/

namespace A048084.P7887890453866143571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326846 (A003504 n * A281680 (3 * n + 2)).toNat

end

end A048084.P7887890453866143571

/-! ## A048084.P6044682194405875156

`A332286(lt[A347271(3*n+2), A092397(n)])`
-/

namespace A048084.P6044682194405875156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347271 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092397 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332286 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A048084.P6044682194405875156

/-!
# A048085: Number of nonempty subsets of {1,2,...,n} in which exactly 1/4 of the elements are <= (n+3)/3.

The programs for A048085, there is no canonical definition to state claims against.
-/

/-! ## A048085.P13236793500140151611

`A000120(A200440(n))*A026810(n)`
-/

namespace A048085.P13236793500140151611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A200440 n).toNat * A026810 n

end

end A048085.P13236793500140151611

/-! ## A048085.P12458672706943801546

`A025442(A148761(n))*A057359(n)`
-/

namespace A048085.P12458672706943801546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 (A148761 n).toNat * A057359 n

end

end A048085.P12458672706943801546

/-! ## A048085.P7922097294318544830

`A098523(n)*A170964(A002531(n))`
-/

namespace A048085.P7922097294318544830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098523 n * A170964 (A002531 n).toNat

end

end A048085.P7922097294318544830

/-! ## A048085.P2879067058218408165

`A001787(n)%A185908(A117419(n))`
-/

namespace A048085.P2879067058218408165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001787 n) (A185908 (A117419 n).toNat)

end

end A048085.P2879067058218408165

/-! ## A048085.P12920498867557801852

`A192856(n)%A003056(A238803(n))`
-/

namespace A048085.P12920498867557801852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A192856 n) (A003056 (A238803 n).toNat)

end

end A048085.P12920498867557801852

/-!
# A048087: Number of nonempty subsets of {1,2,...,n} in which exactly 1/5 of the elements are <= (n+3)/3.

The programs for A048087, there is no canonical definition to state claims against.
-/

/-! ## A048087.P100112170519563148

`A193508(A047176(n+1))`
-/

namespace A048087.P100112170519563148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193508 (A047176 (n + 1)).toNat

end

end A048087.P100112170519563148

/-! ## A048087.P3897188490846116580

`A047176(gcd(n+1, A172577(n+1)))`
-/

namespace A048087.P3897188490846116580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047176 (Int.gcd (n + 1 : ℤ) (A172577 (n + 1)))

end

end A048087.P3897188490846116580

/-! ## A048087.P2484318637741703116

`A016377(A047131(n))*A047176(n+1)`
-/

namespace A048087.P2484318637741703116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016377 (A047131 n).toNat * A047176 (n + 1)

end

end A048087.P2484318637741703116

/-! ## A048087.P5955572072779485250

`lcm(A008683(A040027(n)), A047176(n+1))`
-/

namespace A048087.P5955572072779485250
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008683 (A040027 n).toNat) (A047176 (n + 1))

end

end A048087.P5955572072779485250

/-! ## A048087.P8626773425784271144

`A008585(2*(n+1))%A131319(A001037(n))`
-/

namespace A048087.P8626773425784271144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008585 (2 * (n + 1))) (A131319 (A001037 n).toNat)

end

end A048087.P8626773425784271144

/-!
# A048088: Number of nonempty subsets of {1,2,...,n} in which exactly 2/5 of the elements are <= (n+3)/3.

The programs for A048088, there is no canonical definition to state claims against.
-/

/-! ## A048088.P322591619142833647

`A048077(n+1)-A054895(A307224(n+1))`
-/

namespace A048088.P322591619142833647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048077 (n + 1) - A054895 (A307224 (n + 1)).toNat

end

end A048088.P322591619142833647

/-! ## A048088.P8426248553296069902

`A128616(A034959(n+1))+A047188(n+1)-A254797(n+1)%2`
-/

namespace A048088.P8426248553296069902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128616 (A034959 (n + 1)).toNat + A047188 (n + 1) - Int.tmod (A254797 (n + 1)) 2

end

end A048088.P8426248553296069902

/-! ## A048088.P18308374442313945795

`A227370(A047177(n+1))`
-/

namespace A048088.P18308374442313945795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227370 (A047177 (n + 1)).toNat

end

end A048088.P18308374442313945795

/-! ## A048088.P38872739015122303

`A227370(A048077(n+1))`
-/

namespace A048088.P38872739015122303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227370 (A048077 (n + 1)).toNat

end

end A048088.P38872739015122303

/-! ## A048088.P3989010618016440367

`A048077(n+1)+A016033(A016021(n))`
-/

namespace A048088.P3989010618016440367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048077 (n + 1) + A016033 (A016021 n).toNat

end

end A048088.P3989010618016440367

/-!
# A048089: Number of nonempty subsets of {1,2,...,n} in which exactly 3/5 of the elements are <= (n+3)/3.

The programs for A048089, there is no canonical definition to state claims against.
-/

/-! ## A048089.P2514065157382526307

`A066520(A121941(n))*A321861(2*(n+2))`
-/

namespace A048089.P2514065157382526307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066520 (A121941 n).toNat * A321861 (2 * (n + 2))

end

end A048089.P2514065157382526307

/-! ## A048089.P14435072582761800460

`A334486(A006505(n+1))`
-/

namespace A048089.P14435072582761800460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334486 (A006505 (n + 1)).toNat

end

end A048089.P14435072582761800460

/-! ## A048089.P18376560492900978651

`A338335(A280381(n+1))`
-/

namespace A048089.P18376560492900978651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338335 (A280381 (n + 1)).toNat

end

end A048089.P18376560492900978651

/-! ## A048089.P13550742781047991191

`A159909(A005043(n)+3)`
-/

namespace A048089.P13550742781047991191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159909 (A005043 n + 3).toNat

end

end A048089.P13550742781047991191

/-! ## A048089.P5881731105442453423

`∑[∑[A048484(A290816(n+3))]]`
-/

namespace A048089.P5881731105442453423
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048484 (A290816 (n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048089.P5881731105442453423

/-!
# A048090: Number of nonempty subsets of {1,2,...,n} in which exactly 4/5 of the elements are <= (n+3)/3.

The programs for A048090, there is no canonical definition to state claims against.
-/

/-! ## A048090.P4201245273389842148

`A345166(∑[A297328(n)!])`
-/

namespace A048090.P4201245273389842148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A297328 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345166 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A048090.P4201245273389842148

/-! ## A048090.P7705393201143490196

`A345166(∑[A340798(n)!])`
-/

namespace A048090.P7705393201143490196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A340798 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345166 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A048090.P7705393201143490196

/-! ## A048090.P689603185777743388

`A345166(∑[A143325(n+1)!])`
-/

namespace A048090.P689603185777743388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A143325 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345166 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A048090.P689603185777743388

/-! ## A048090.P9666019365263968408

`A004396(n)*A032741(A058932(n+1))`
-/

namespace A048090.P9666019365263968408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n * A032741 (A058932 (n + 1)).toNat

end

end A048090.P9666019365263968408

/-!
# A048091: Number of nonempty subsets of {1,2,...,n} in which exactly 1/6 of the elements are <= (n+3)/3.

The programs for A048091, there is no canonical definition to state claims against.
-/

/-! ## A048091.P5337524177803232762

`A047191(n+1)%A000108(A047180(n+1))`
-/

namespace A048091.P5337524177803232762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047191 (n + 1)) (A000108 (A047180 (n + 1)).toNat)

end

end A048091.P5337524177803232762

/-! ## A048091.P6614101625333894983

`A335372(lcm(3, A095331(n+1)))`
-/

namespace A048091.P6614101625333894983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335372 (Int.lcm 3 (A095331 (n + 1)))

end

end A048091.P6614101625333894983

/-! ## A048091.P16820730737877541450

`A358475(A341975(n)+A005251(n))`
-/

namespace A048091.P16820730737877541450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358475 (A341975 (n + 11) + A005251 n).toNat

end

end A048091.P16820730737877541450

/-! ## A048091.P16626307171225915799

`and(A179175(A316239(n+1)), A370528(n))`
-/

namespace A048091.P16626307171225915799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A179175 (A316239 (n + 1)).toNat) (A370528 n)

end

end A048091.P16626307171225915799

/-!
# A048092: Number of nonempty subsets of {1,2,...,n} in which exactly 5/6 of the elements are <= (n+3)/3.

The programs for A048092, there is no canonical definition to state claims against.
-/

/-! ## A048092.P4088954938867337354

`A335447(∏[A054531(∑{d}[n+1, (#+n)%2])])`
-/

namespace A048092.P4088954938867337354
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (∑ d ∈ Nat.divisors (f2 n), (d + n) % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335447 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A048092.P4088954938867337354

/-! ## A048092.P15812530200591645273

`A047192(n+1)%A332745(A336843(n+1))`
-/

namespace A048092.P15812530200591645273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047192 (n + 1)) (A332745 (A336843 (n + 1)).toNat)

end

end A048092.P15812530200591645273

/-!
# A048093: Number of nonempty subsets of {1,2,...,n} in which exactly 1/2 of the elements are <= sqrt(n).

The programs for A048093, the canonical program `A048093.P16359371054396509096` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048093 has offset 1).

The definition of A048093 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048093.P16359371054396509096

`C(n+1, floor(sqrt(n+1)))-1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048093

/-- `C(n+1, floor(sqrt(n+1)))-1` -/
def P16359371054396509096.Spec : Prop :=
  ∀ n, P16359371054396509096.a n = A048093 (n + 1)

theorem P16359371054396509096.correct : P16359371054396509096.Spec := by
  intro n
  simp only [A048093, Nat.add_sub_cancel]

end A048093

/-! ## A048093.P11447514761996174483

`A102366(n+1)-1`
-/

namespace A048093.P11447514761996174483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102366 (n + 1) - 1

end

end A048093.P11447514761996174483

namespace A048093

/-- `A102366(n+1)-1` -/
def P11447514761996174483.Spec : Prop :=
  ∀ n, P11447514761996174483.a n = A048093 (n + 1)

end A048093

/-! ## A048093.P5657325334681826706

`∑[A084919(A028310(n))]-1`
-/

namespace A048093.P5657325334681826706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084919 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A048093.P5657325334681826706

namespace A048093

/-- `∑[A084919(A028310(n))]-1` -/
def P5657325334681826706.Spec : Prop :=
  ∀ n, P5657325334681826706.a n = A048093 (n + 1)

end A048093

/-! ## A048093.P10403787928734243430

`∑[A057427(n)*A084919(A028310(n))]`
-/

namespace A048093.P10403787928734243430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A084919 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048093.P10403787928734243430

namespace A048093

/-- `∑[A057427(n)*A084919(A028310(n))]` -/
def P10403787928734243430.Spec : Prop :=
  ∀ n, P10403787928734243430.a n = A048093 (n + 1)

end A048093

/-! ## A048093.P6657015949867349482

`A280193(2*n+1)+∑[A084919(A028310(n))]`
-/

namespace A048093.P6657015949867349482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084919 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (2 * n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048093.P6657015949867349482

namespace A048093

/-- `A280193(2*n+1)+∑[A084919(A028310(n))]` -/
def P6657015949867349482.Spec : Prop :=
  ∀ n, P6657015949867349482.a n = A048093 (n + 1)

end A048093

/-! ## A048093.P11240513346899532471

`∑[A084919(n+1)]-A084919(n+1)`
-/

namespace A048093.P11240513346899532471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A084919 (n + 1)

end

end A048093.P11240513346899532471

namespace A048093

/-- `∑[A084919(n+1)]-A084919(n+1)` -/
def P11240513346899532471.Spec : Prop :=
  ∀ n, P11240513346899532471.a n = A048093 (n + 1)

end A048093

/-! ## A048093.P11761026784974331621

`A007318(floor(∑[n+1]+sqrt(n+1)))-1`
-/

namespace A048093.P11761026784974331621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) + Real.sqrt (n + 1 : ℝ)⌋.toNat - 1

end

end A048093.P11761026784974331621

namespace A048093

/-- `A007318(floor(∑[n+1]+sqrt(n+1)))-1` -/
def P11761026784974331621.Spec : Prop :=
  ∀ n, P11761026784974331621.a n = A048093 (n + 1)

end A048093

/-! ## A048093.P2095830886751166218

`A014473(∑[A275437(n)+n])`
-/

namespace A048093.P2095830886751166218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275437 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A048093.P2095830886751166218

namespace A048093

/-- `A014473(∑[A275437(n)+n])` -/
def P2095830886751166218.Spec : Prop :=
  ∀ n, P2095830886751166218.a n = A048093 (n + 1)

end A048093

/-! ## A048093.P16837374560484102379

`A014473(A000196(n+1)+∑[n+1])`
-/

namespace A048093.P16837374560484102379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 (A000196 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A048093.P16837374560484102379

namespace A048093

/-- `A014473(A000196(n+1)+∑[n+1])` -/
def P16837374560484102379.Spec : Prop :=
  ∀ n, P16837374560484102379.a n = A048093 (n + 1)

end A048093

/-! ## A048093.P5840102258713498160

`A014473(A000096(n+1)-A000196(n+1))`
-/

namespace A048093.P5840102258713498160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 (A000096 (n + 1) - A000196 (n + 1)).toNat

end

end A048093.P5840102258713498160

namespace A048093

/-- `A014473(A000096(n+1)-A000196(n+1))` -/
def P5840102258713498160.Spec : Prop :=
  ∀ n, P5840102258713498160.a n = A048093 (n + 1)

end A048093

/-!
# A048094: Number of nonempty subsets of {1,2,...,n} in which exactly 1/3 of the elements are <= sqrt(n).

The programs for A048094, there is no canonical definition to state claims against.
-/

/-! ## A048094.P10028140520839153749

`A047194(n+1)-A014037(A000105(n))`
-/

namespace A048094.P10028140520839153749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047194 (n + 1) - A014037 (A000105 n).toNat

end

end A048094.P10028140520839153749

/-! ## A048094.P12793230926549933102

`A047194(n+1)-A151774(A048099(n+1))`
-/

namespace A048094.P12793230926549933102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047194 (n + 1) - A151774 (A048099 (n + 1)).toNat

end

end A048094.P12793230926549933102

/-! ## A048094.P35101668425723761

`A076739(n)-A016014(A000244(n))`
-/

namespace A048094.P35101668425723761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076739 n - A016014 (A000244 n).toNat

end

end A048094.P35101668425723761

/-! ## A048094.P3355291870722516416

`A076739(n)-A007920(A018224(n))`
-/

namespace A048094.P3355291870722516416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076739 n - A007920 (A018224 n).toNat

end

end A048094.P3355291870722516416

/-! ## A048094.P5447934044208926039

`A094713(A080635(n))+A048072(n+1)`
-/

namespace A048094.P5447934044208926039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094713 (A080635 n).toNat + A048072 (n + 1)

end

end A048094.P5447934044208926039

/-!
# A048095: Number of nonempty subsets of {1,2,...,n} in which exactly 2/3 of the elements are <= sqrt(n).

The programs for A048095, there is no canonical definition to state claims against.
-/

/-! ## A048095.P17805480451322981748

`A002262(A161680(n)*A228729(n+1))`
-/

namespace A048095.P17805480451322981748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A161680 n * A228729 (n + 1)).toNat

end

end A048095.P17805480451322981748

/-!
# A048096: Number of nonempty subsets of {1,2,...,n} in which exactly 1/4 of the elements are <= sqrt(n).

The programs for A048096, there is no canonical definition to state claims against.
-/

/-! ## A048096.P8029835750949564070

`A053873(A250120(n))%A209337(n+1)`
-/

namespace A048096.P8029835750949564070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053873 (A250120 n).toNat) (A209337 (n + 1))

end

end A048096.P8029835750949564070

/-!
# A048097: Numbers k such that k^2 + k + 11 is prime.

The programs for A048097, there is no canonical definition to state claims against.
-/

/-! ## A048097.P4663120174832327670

`floor(sqrt(A048059(n+1)-11))`
-/

namespace A048097.P4663120174832327670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A048059 (n + 1) - 11)

end

end A048097.P4663120174832327670

/-! ## A048097.P3841210415653774803

`round(sqrt(A048059(n+1)-11)*A057427(n))`
-/

namespace A048097.P3841210415653774803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A048059 (n + 1) - 11 : ℝ) * (A057427 n : ℝ))

end

end A048097.P3841210415653774803

/-! ## A048097.P17197387912425330588

`round(A000038(n+1)+sqrt(A048059(n+1)-11))`
-/

namespace A048097.P17197387912425330588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000038 (n + 1) : ℝ) + Real.sqrt (A048059 (n + 1) - 11 : ℝ))

end

end A048097.P17197387912425330588

/-! ## A048097.P14821632148520569623

`round(sqrt(A048059(n+1)-11))^(2-A060576(n))²`
-/

namespace A048097.P14821632148520569623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway (Real.sqrt (A048059 (n + 1) - 11 : ℝ)) : ℚ) ^ ((2 - A060576 n) ^ 2 : ℤ)

end

end A048097.P14821632148520569623

/-! ## A048097.P10707894284207886584

`round(sqrt(A048059(n+1)-11))%A055259(n)`
-/

namespace A048097.P10707894284207886584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A048059 (n + 1) - 11 : ℝ))) (A055259 n)

end

end A048097.P10707894284207886584

/-! ## A048097.P8152947449730000479

`eq[1, A001222(n²+11+n)]`
-/

namespace A048097.P8152947449730000479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n ^ 2 + 11 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048097.P8152947449730000479

/-! ## A048097.P3332837740237133809

`eq[2, A000005(n²+11+n)]`
-/

namespace A048097.P3332837740237133809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n ^ 2 + 11 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048097.P3332837740237133809

/-! ## A048097.P5486784237295880708

`lt[A000005(2*(∑[n]+5)+1), 3]`
-/

namespace A048097.P5486784237295880708
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * (∑ j ∈ Finset.range (n + 1), f2 j + 5) + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A048097.P5486784237295880708

/-! ## A048097.P12573495020567475849

`eq[2, A212595(∑[n])]`
-/

namespace A048097.P12573495020567475849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212595 (∑ j ∈ Finset.range (n + 1), f3 j + 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048097.P12573495020567475849

/-!
# A048098: Numbers k that are sqrt(k)-smooth: if p | k then p^2 <= k when p is prime.

The programs for A048098, the canonical program `A048098.P16238626268452753250` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048098 has offset 1).

The definition of A048098 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048098.P8558386870870529535

`∪[(n+1)², A063539(n+1)]`
-/

namespace A048098.P8558386870870529535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A048098.P8558386870870529535

namespace A048098

/-- `∪[(n+1)², A063539(n+1)]` -/
def P8558386870870529535.Spec : Prop :=
  ∀ n, (P8558386870870529535.a n : ℤ) = A048098 (n + 1)

end A048098

/-! ## A048098.P16238626268452753250

`comp[(n+1)%A006530(n+1)²]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A048098

/-- `comp[(n+1)%A006530(n+1)²]` -/
def P16238626268452753250.Spec : Prop :=
  ∀ n, (P16238626268452753250.a n : ℤ) = A048098 (n + 1)

theorem P16238626268452753250.correct : P16238626268452753250.Spec := by
  intro n
  simp only [A048098, Nat.add_sub_cancel]

end A048098

/-! ## A048098.P13147108169508412893

`∪[A063539(n+1), A001248(n+1)]`
-/

namespace A048098.P13147108169508412893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A048098.P13147108169508412893

namespace A048098

/-- `∪[A063539(n+1), A001248(n+1)]` -/
def P13147108169508412893.Spec : Prop :=
  ∀ n, (P13147108169508412893.a n : ℤ) = A048098 (n + 1)

end A048098

/-! ## A048098.P477995028965010506

`∪[A063539(n+1), A001597(n+1)]`
-/

namespace A048098.P477995028965010506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A048098.P477995028965010506

namespace A048098

/-- `∪[A063539(n+1), A001597(n+1)]` -/
def P477995028965010506.Spec : Prop :=
  ∀ n, (P477995028965010506.a n : ℤ) = A048098 (n + 1)

end A048098

/-! ## A048098.P2760619633950548241

`∪[A063539(n+1), A001694(n+1)]`
-/

namespace A048098.P2760619633950548241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A048098.P2760619633950548241

namespace A048098

/-- `∪[A063539(n+1), A001694(n+1)]` -/
def P2760619633950548241.Spec : Prop :=
  ∀ n, (P2760619633950548241.a n : ℤ) = A048098 (n + 1)

end A048098

/-! ## A048098.P1349371747342540660

`∪[A063539(n+1), A025475(n+1)]`
-/

namespace A048098.P1349371747342540660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A048098.P1349371747342540660

namespace A048098

/-- `∪[A063539(n+1), A025475(n+1)]` -/
def P1349371747342540660.Spec : Prop :=
  ∀ n, (P1349371747342540660.a n : ℤ) = A048098 (n + 1)

end A048098

/-! ## A048098.P6487628330512652267

`∪[A063539(n+1), A030140(n+1)]`
-/

namespace A048098.P6487628330512652267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A048098.P6487628330512652267

namespace A048098

/-- `∪[A063539(n+1), A030140(n+1)]` -/
def P6487628330512652267.Spec : Prop :=
  ∀ n, (P6487628330512652267.a n : ℤ) = A048098 (n + 1)

end A048098

/-! ## A048098.P6792379504056138578

`∪[A063539(n+1), A051676(n+1)]`
-/

namespace A048098.P6792379504056138578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051676 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A048098.P6792379504056138578

namespace A048098

/-- `∪[A063539(n+1), A051676(n+1)]` -/
def P6792379504056138578.Spec : Prop :=
  ∀ n, (P6792379504056138578.a n : ℤ) = A048098 (n + 1)

end A048098

/-! ## A048098.P16606965253610500861

`∪[A063539(n+1), A053810(n+1)]`
-/

namespace A048098.P16606965253610500861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053810 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A048098.P16606965253610500861

namespace A048098

/-- `∪[A063539(n+1), A053810(n+1)]` -/
def P16606965253610500861.Spec : Prop :=
  ∀ n, (P16606965253610500861.a n : ℤ) = A048098 (n + 1)

end A048098

/-! ## A048098.P8803622754409747283

`∪[A063539(n+1), A056166(n+1)]`
-/

namespace A048098.P8803622754409747283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A048098.P8803622754409747283

namespace A048098

/-- `∪[A063539(n+1), A056166(n+1)]` -/
def P8803622754409747283.Spec : Prop :=
  ∀ n, (P8803622754409747283.a n : ℤ) = A048098 (n + 1)

end A048098

/-! ## A048098.P15394673294062023214

`∪[A063539(n+1), A056798(n+1)]`
-/

namespace A048098.P15394673294062023214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A048098.P15394673294062023214

namespace A048098

/-- `∪[A063539(n+1), A056798(n+1)]` -/
def P15394673294062023214.Spec : Prop :=
  ∀ n, (P15394673294062023214.a n : ℤ) = A048098 (n + 1)

end A048098

/-! ## A048098.P8313056884440603433

`∪[A063539(n+1), A057109(n+1)]`
-/

namespace A048098.P8313056884440603433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A048098.P8313056884440603433

namespace A048098

/-- `∪[A063539(n+1), A057109(n+1)]` -/
def P8313056884440603433.Spec : Prop :=
  ∀ n, (P8313056884440603433.a n : ℤ) = A048098 (n + 1)

end A048098

/-! ## A048098.P17226568947453704853

`∪[A063539(n+1), A063735(n+1)]`
-/

namespace A048098.P17226568947453704853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A048098.P17226568947453704853

namespace A048098

/-- `∪[A063539(n+1), A063735(n+1)]` -/
def P17226568947453704853.Spec : Prop :=
  ∀ n, (P17226568947453704853.a n : ℤ) = A048098 (n + 1)

end A048098

/-! ## A048098.P6801400503138555628

`∪[A063539(n+1), A064599(n+1)]`
-/

namespace A048098.P6801400503138555628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064599 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A048098.P6801400503138555628

namespace A048098

/-- `∪[A063539(n+1), A064599(n+1)]` -/
def P6801400503138555628.Spec : Prop :=
  ∀ n, (P6801400503138555628.a n : ℤ) = A048098 (n + 1)

end A048098

/-! ## A048098.P6687369126767877321

`∪[A063539(n+1), A076292(n+1)]`
-/

namespace A048098.P6687369126767877321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A048098.P6687369126767877321

namespace A048098

/-- `∪[A063539(n+1), A076292(n+1)]` -/
def P6687369126767877321.Spec : Prop :=
  ∀ n, (P6687369126767877321.a n : ℤ) = A048098 (n + 1)

end A048098

/-! ## A048098.P2446596689218815752

`lt[A006530(n+1)², A151800(n)]+1`
-/

namespace A048098.P2446596689218815752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A048098.P2446596689218815752

namespace A048098

/-- `lt[A006530(n+1)², A151800(n)]+1` -/
def P2446596689218815752.Spec : Prop :=
  ∀ n, (P2446596689218815752.a n : ℤ) = A048098 (n + 1)

end A048098

/-! ## A048098.P3106123632824545163

`lt[A341642(n+1), 1]+1`
-/

namespace A048098.P3106123632824545163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341642 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A048098.P3106123632824545163

namespace A048098

/-- `lt[A341642(n+1), 1]+1` -/
def P3106123632824545163.Spec : Prop :=
  ∀ n, (P3106123632824545163.a n : ℤ) = A048098 (n + 1)

end A048098

/-! ## A048098.P9397722942362928733

`lt[n, A052126(n+1)²]+1`
-/

namespace A048098.P9397722942362928733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A048098.P9397722942362928733

namespace A048098

/-- `lt[n, A052126(n+1)²]+1` -/
def P9397722942362928733.Spec : Prop :=
  ∀ n, (P9397722942362928733.a n : ℤ) = A048098 (n + 1)

end A048098

/-! ## A048098.P15944800049414332026

`lt[n, A078897(n+1)²]+1`
-/

namespace A048098.P15944800049414332026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078897 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A048098.P15944800049414332026

namespace A048098

/-- `lt[n, A078897(n+1)²]+1` -/
def P15944800049414332026.Spec : Prop :=
  ∀ n, (P15944800049414332026.a n : ℤ) = A048098 (n + 1)

end A048098

/-! ## A048098.P8600473858914883048

`lt[A061397(A140271(n+1)), 1]+1`
-/

namespace A048098.P8600473858914883048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (A140271 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A048098.P8600473858914883048

namespace A048098

/-- `lt[A061397(A140271(n+1)), 1]+1` -/
def P8600473858914883048.Spec : Prop :=
  ∀ n, (P8600473858914883048.a n : ℤ) = A048098 (n + 1)

end A048098

/-!
# A048099: Number of degree-n even permutations of order exactly 2.

The programs for A048099, the canonical program `A048099.P9392881477138269526` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048099 has offset 1).

The definition of A048099 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048099.P9392881477138269526

`(A001189(n+1)+A051684(n+1))/2`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A048099

/-- `(A001189(n+1)+A051684(n+1))/2` -/
def P9392881477138269526.Spec : Prop :=
  ∀ n, P9392881477138269526.a n = (A048099 (n + 1) : ℚ)

end A048099

/-! ## A048099.P14721331513395707812

`∑[abs(Δ[A000704(n)])]`
-/

namespace A048099.P14721331513395707812
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000704 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048099.P14721331513395707812

namespace A048099

/-- `∑[abs(Δ[A000704(n)])]` -/
def P14721331513395707812.Spec : Prop :=
  ∀ n, P14721331513395707812.a n = A048099 (n + 1)

end A048099

/-! ## A048099.P13288572008779503600

`A000704(n+1)-1`
-/

namespace A048099.P13288572008779503600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000704 (n + 1) - 1

end

end A048099.P13288572008779503600

namespace A048099

/-- `A000704(n+1)-1` -/
def P13288572008779503600.Spec : Prop :=
  ∀ n, P13288572008779503600.a n = A048099 (n + 1)

end A048099

/-! ## A048099.P1457930936368443164

`∑[n*A001465(abs(1-n))]`
-/

namespace A048099.P1457930936368443164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001465 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048099.P1457930936368443164

namespace A048099

/-- `∑[n*A001465(abs(1-n))]` -/
def P1457930936368443164.Spec : Prop :=
  ∀ n, P1457930936368443164.a n = A048099 (n + 1)

end A048099

/-! ## A048099.P17687703421632005661

`∑[Δ[A000704(n)]*A057427(n)]`
-/

namespace A048099.P17687703421632005661
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000704 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048099.P17687703421632005661

namespace A048099

/-- `∑[Δ[A000704(n)]*A057427(n)]` -/
def P17687703421632005661.Spec : Prop :=
  ∀ n, P17687703421632005661.a n = A048099 (n + 1)

end A048099

/-! ## A048099.P5318633580200861415

`A051684(n+1)+A001465(n+1)`
-/

namespace A048099.P5318633580200861415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051684 (n + 1) + A001465 (n + 1)

end

end A048099.P5318633580200861415

namespace A048099

/-- `A051684(n+1)+A001465(n+1)` -/
def P5318633580200861415.Spec : Prop :=
  ∀ n, P5318633580200861415.a n = A048099 (n + 1)

end A048099

/-! ## A048099.P9813108673642970056

`∑[Δ[A000704(n)]%A000704(n+1)]`
-/

namespace A048099.P9813108673642970056
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000704 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A000704 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048099.P9813108673642970056

namespace A048099

/-- `∑[Δ[A000704(n)]%A000704(n+1)]` -/
def P9813108673642970056.Spec : Prop :=
  ∀ n, P9813108673642970056.a n = A048099 (n + 1)

end A048099

/-! ## A048099.P10233966287764051518

`A001189(n+1)-A001465(n+1)`
-/

namespace A048099.P10233966287764051518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001189 (n + 1) - A001465 (n + 1)

end

end A048099.P10233966287764051518

namespace A048099

/-- `A001189(n+1)-A001465(n+1)` -/
def P10233966287764051518.Spec : Prop :=
  ∀ n, P10233966287764051518.a n = A048099 (n + 1)

end A048099

/-! ## A048099.P18066523886739349194

`A000085(n+1)-(A001465(n+1)+1)`
-/

namespace A048099.P18066523886739349194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 (n + 1) - (A001465 (n + 1) + 1)

end

end A048099.P18066523886739349194

namespace A048099

/-- `A000085(n+1)-(A001465(n+1)+1)` -/
def P18066523886739349194.Spec : Prop :=
  ∀ n, P18066523886739349194.a n = A048099 (n + 1)

end A048099

/-! ## A048099.P2990199058674301965

`A051684(n+1)+A061137(n+1)-A061139(n+1)`
-/

namespace A048099.P2990199058674301965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051684 (n + 1) + (A061137 (n + 1) - A061139 (n + 1))

end

end A048099.P2990199058674301965

namespace A048099

/-- `A051684(n+1)+A061137(n+1)-A061139(n+1)` -/
def P2990199058674301965.Spec : Prop :=
  ∀ n, P2990199058674301965.a n = A048099 (n + 1)

end A048099

