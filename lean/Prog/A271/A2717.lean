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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
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
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A271701: Triangle read by rows, T(n, k) = Sum_{j=0..n} (-1)^(n-j)*C(-j, -n)*S2(k, j), S2 the Stirling set numbers A048993, for n >= 0 and 0 <= k <= n.

The programs for A271701, there is no canonical definition to state claims against.
-/

/-! ## A271701.P2319961389977228187

`A271699(n)-A186747(A166350(n+1))`
-/

namespace A271701.P2319961389977228187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271699 n - A186747 (A166350 (n + 1)).toNat

end

end A271701.P2319961389977228187

/-! ## A271701.P240550070634400997

`A271699(n)-A184964(A142071(n+4))`
-/

namespace A271701.P240550070634400997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271699 n - A184964 (A142071 (n + 4)).toNat

end

end A271701.P240550070634400997

/-! ## A271701.P10888237076019351619

`A333627(A211402(n))`
-/

namespace A271701.P10888237076019351619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333627 (A211402 n).toNat

end

end A271701.P10888237076019351619

/-! ## A271701.P6938353139740686510

`A335474(A267480(n))`
-/

namespace A271701.P6938353139740686510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335474 (A267480 n).toNat

end

end A271701.P6938353139740686510

/-!
# A271702: Triangle read by rows, T(n,k) = Sum_{j=0..n} (-1)^(n-j)*C(-j-1,-n-1)*S2(k,j), S2 the Stirling set numbers A048993, for n>=0 and 0<=k<=n.

The programs for A271702, there is no canonical definition to state claims against.
-/

/-! ## A271702.P8066789213186858650

`A162344(A292915(n))`
-/

namespace A271702.P8066789213186858650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162344 (A292915 n).toNat

end

end A271702.P8066789213186858650

/-! ## A271702.P11984321566404952419

`A292915(n)-A179527(A255047(n))`
-/

namespace A271702.P11984321566404952419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292915 n - A179527 (A255047 n).toNat

end

end A271702.P11984321566404952419

/-! ## A271702.P18281270223152954783

`A292915(n)-A271584(A271700(n))`
-/

namespace A271702.P18281270223152954783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292915 n - A271584 (A271700 n).toNat

end

end A271702.P18281270223152954783

/-! ## A271702.P4239950903477004956

`A292915(n)-A292946(A292941(3*n+1))`
-/

namespace A271702.P4239950903477004956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292915 n - A292946 (A292941 (3 * n + 1)).toNat

end

end A271702.P4239950903477004956

/-!
# A271703: Triangle read by rows: the unsigned Lah numbers T(n, k) = binomial(n-1, k-1)*n!/k! if n > 0 and k > 0, T(n, 0) = 0^n and otherwise 0, for n >= 0 and 0 <= k <= n.

The programs for A271703, the canonical program `A271703.P8618835330592467245` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271703 has offset 0).

The definition of A271703 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2351 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A271703.P15591975423340027160

`abs(A111596(n))`
-/

namespace A271703.P15591975423340027160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A111596 n|

end

end A271703.P15591975423340027160

namespace A271703

/-- `abs(A111596(n))` -/
def P15591975423340027160.Spec : Prop :=
  ∀ n, P15591975423340027160.a n = A271703 n

end A271703

/-! ## A271703.P8618835330592467245

`A094587(n)*A097805(n)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A271703

/-- `A094587(n)*A097805(n)` -/
def P8618835330592467245.Spec : Prop :=
  ∀ n, P8618835330592467245.a n = A271703 n

theorem P8618835330592467245.correct : P8618835330592467245.Spec := by
  intro n
  simp only [A271703]

end A271703

/-! ## A271703.P11817704155014779362

`A097807(n)*A111596(n)`
-/

namespace A271703.P11817704155014779362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A111596 n

end

end A271703.P11817704155014779362

namespace A271703

/-- `A097807(n)*A111596(n)` -/
def P11817704155014779362.Spec : Prop :=
  ∀ n, P11817704155014779362.a n = A271703 n

end A271703

/-! ## A271703.P5751483180221293432

`gcd(A000038(n), A111596(n))`
-/

namespace A271703.P5751483180221293432
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A111596 n)

end

end A271703.P5751483180221293432

namespace A271703

/-- `gcd(A000038(n), A111596(n))` -/
def P5751483180221293432.Spec : Prop :=
  ∀ n, (P5751483180221293432.a n : ℤ) = A271703 n

end A271703

/-! ## A271703.P14647782543251523931

`lcm(A007318(n), A111596(n))`
-/

namespace A271703.P14647782543251523931
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 n) (A111596 n)

end

end A271703.P14647782543251523931

namespace A271703

/-- `lcm(A007318(n), A111596(n))` -/
def P14647782543251523931.Spec : Prop :=
  ∀ n, (P14647782543251523931.a n : ℤ) = A271703 n

end A271703

/-! ## A271703.P688823866057682039

`A004736(n+1)!*A090181(n)`
-/

namespace A271703.P688823866057682039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A004736 (n + 1)).toNat : ℤ) * A090181 n

end

end A271703.P688823866057682039

namespace A271703

/-- `A004736(n+1)!*A090181(n)` -/
def P688823866057682039.Spec : Prop :=
  ∀ n, P688823866057682039.a n = A271703 n

end A271703

/-! ## A271703.P957193690576116782

`A057555(2*(n+1))!*A090181(n)`
-/

namespace A271703.P957193690576116782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A057555 (2 * (n + 1))).toNat : ℤ) * A090181 n

end

end A271703.P957193690576116782

namespace A271703

/-- `A057555(2*(n+1))!*A090181(n)` -/
def P957193690576116782.Spec : Prop :=
  ∀ n, P957193690576116782.a n = A271703 n

end A271703

/-! ## A271703.P9621901842151218961

`lcm(A020985(n)*A111596(n), A020985(n))`
-/

namespace A271703.P9621901842151218961
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n * A111596 n) (A020985 n)

end

end A271703.P9621901842151218961

namespace A271703

/-- `lcm(A020985(n)*A111596(n), A020985(n))` -/
def P9621901842151218961.Spec : Prop :=
  ∀ n, (P9621901842151218961.a n : ℤ) = A271703 n

end A271703

/-! ## A271703.P7304883918161478286

`A105278(n+1)/A001263(n+1)*A090181(n)`
-/

namespace A271703.P7304883918161478286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105278 (n + 1) : ℚ) / (A001263 (n + 1) : ℚ) * (A090181 n : ℚ)

end

end A271703.P7304883918161478286

namespace A271703

/-- `A105278(n+1)/A001263(n+1)*A090181(n)` -/
def P7304883918161478286.Spec : Prop :=
  ∀ n, P7304883918161478286.a n = (A271703 n : ℚ)

end A271703

/-! ## A271703.P14602038358977824090

`A119502(n)*A367267(n)`
-/

namespace A271703.P14602038358977824090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119502 n * A367267 n

end

end A271703.P14602038358977824090

namespace A271703

/-- `A119502(n)*A367267(n)` -/
def P14602038358977824090.Spec : Prop :=
  ∀ n, P14602038358977824090.a n = A271703 n

end A271703

/-!
# A271704: Triangle read by rows, T(n,k) = Sum_{j=0..n} (-1)^(n-j)*C(-j,-n)*L(j,k), L the unsigned Lah numbers A271703, for n>=0 and 0<=k<=n.

The programs for A271704, there is no canonical definition to state claims against.
-/

/-! ## A271704.P3422238079583772405

`A097805(n)*A143409(n)`
-/

namespace A271704.P3422238079583772405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n * A143409 n

end

end A271704.P3422238079583772405

/-! ## A271704.P8605523512078794332

`A071919(A061579(n))*A143409(n)`
-/

namespace A271704.P8605523512078794332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 (A061579 n).toNat * A143409 n

end

end A271704.P8605523512078794332

/-! ## A271704.P9871981086029169416

`A073474(n)/A008279(n)*A097805(n)`
-/

namespace A271704.P9871981086029169416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073474 n : ℚ) / (A008279 n : ℚ) * (A097805 n : ℚ)

end

end A271704.P9871981086029169416

/-! ## A271704.P202790407283473103

`A073474(n)/A196347(n)*A271703(n)`
-/

namespace A271704.P202790407283473103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073474 n : ℚ) / (A196347 n : ℚ) * (A271703 n : ℚ)

end

end A271704.P202790407283473103

/-! ## A271704.P13425594877026903804

`A073474(n)/A094587(A061579(n))*A097805(n)`
-/

namespace A271704.P13425594877026903804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073474 n : ℚ) / (A094587 (A061579 n).toNat : ℚ) * (A097805 n : ℚ)

end

end A271704.P13425594877026903804

/-! ## A271704.P13810263309699679898

`A073474(n)/A021010(n)*A130595(n)*A097805(n)`
-/

namespace A271704.P13810263309699679898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073474 n : ℚ) / (A021010 n : ℚ) * (A130595 n : ℚ) * (A097805 n : ℚ)

end

end A271704.P13810263309699679898

/-!
# A271705: Triangle read by rows, T(n,k) = Sum_{j=0..n} (-1)^(n-j)*C(-j-1,-n-1)*L(j,k), L the unsigned Lah numbers A271703, for n>=0 and 0<=k<=n.

The programs for A271705, there is no canonical definition to state claims against.
-/

/-! ## A271705.P6304975622950763464

`A326659(n)/A233543(n)`
-/

namespace A271705.P6304975622950763464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326659 n : ℚ) / (A233543 n : ℚ)

end

end A271705.P6304975622950763464

/-! ## A271705.P15836823324517413986

`A326659(n)/A002262(n)!`
-/

namespace A271705.P15836823324517413986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326659 n : ℚ) / (Nat.factorial (A002262 n).toNat : ℚ)

end

end A271705.P15836823324517413986

/-! ## A271705.P11191148556901842648

`A326659(n)/A144328(n+1)!`
-/

namespace A271705.P11191148556901842648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326659 n : ℚ) / (Nat.factorial (A144328 (n + 1)).toNat : ℚ)

end

end A271705.P11191148556901842648

/-! ## A271705.P640990471574313425

`A326659(n)/A021009(A112367(n))`
-/

namespace A271705.P640990471574313425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326659 n : ℚ) / (A021009 (A112367 n).toNat : ℚ)

end

end A271705.P640990471574313425

/-! ## A271705.P10044647631130213528

`A326659(n)/A119502(A061579(n))`
-/

namespace A271705.P10044647631130213528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326659 n : ℚ) / (A119502 (A061579 n).toNat : ℚ)

end

end A271705.P10044647631130213528

/-! ## A271705.P6289156267797260487

`A326659(n)/A104150(A002260(n+1))`
-/

namespace A271705.P6289156267797260487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326659 n : ℚ) / (A104150 (A002260 (n + 1)).toNat : ℚ)

end

end A271705.P6289156267797260487

/-! ## A271705.P18387054486434365313

`A326659(n)/A081123(A158405(n+1))`
-/

namespace A271705.P18387054486434365313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326659 n : ℚ) / (A081123 (A158405 (n + 1)).toNat : ℚ)

end

end A271705.P18387054486434365313

/-! ## A271705.P5521351732711854352

`A059110(n)/A059114(n)*A326659(n)`
-/

namespace A271705.P5521351732711854352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059110 n : ℚ) / (A059114 n : ℚ) * (A326659 n : ℚ)

end

end A271705.P5521351732711854352

/-! ## A271705.P4415567804577777271

`A326659(n)/A112624(A059268(n))`
-/

namespace A271705.P4415567804577777271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326659 n : ℚ) / (A112624 (A059268 n).toNat : ℚ)

end

end A271705.P4415567804577777271

/-!
# A271707: Triangle read by rows, T(n,k) = Sum_{p in P(n,k)} Aut(p) where P(n,k) are the partitions of n with length k and Aut(p) = 1^j[1]*j[1]!*...*n^j[n]*j[n]! where j[m] is the number of parts in the partition p equal to m; for n>=0 and 0<=k<=n.

The programs for A271707, there is no canonical definition to state claims against.
-/

/-! ## A271707.P4022073045878305893

`A339170(A339030(n))+A339033(n)`
-/

namespace A271707.P4022073045878305893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339170 (A339030 n).toNat + A339033 n

end

end A271707.P4022073045878305893

/-! ## A271707.P12287622608289679700

`A347088(A152536(n))+A339033(n)`
-/

namespace A271707.P12287622608289679700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347088 (A152536 n).toNat + A339033 n

end

end A271707.P12287622608289679700

/-!
# A271708: Triangle read by rows, T(n,k) = Sum_{p in P(n,k)} Aut(p) where P(n,k) are the partitions of n with largest part k and Aut(p) = 1^j[1]*j[1]!*...*n^j[n]*j[n]! where j[m] is the number of parts in the partition p equal to m; for n>=0 and 0<=k<=n.

The programs for A271708, there is no canonical definition to state claims against.
-/

/-! ## A271708.P6290121089734948099

`A043568(A164204(n))*A289978(n)`
-/

namespace A271708.P6290121089734948099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043568 (A164204 n).toNat * A289978 n

end

end A271708.P6290121089734948099

/-! ## A271708.P5519823760527117424

`A043568(A169949(n))*A289978(n)`
-/

namespace A271708.P5519823760527117424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043568 (A169949 n).toNat * A289978 n

end

end A271708.P5519823760527117424

/-! ## A271708.P17566736591487631692

`A338001(n)+A184955(A000009(n))`
-/

namespace A271708.P17566736591487631692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338001 n + A184955 (A000009 n).toNat

end

end A271708.P17566736591487631692

/-! ## A271708.P8016351887655557286

`A338001(A049872(n))`
-/

namespace A271708.P8016351887655557286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338001 (A049872 n).toNat

end

end A271708.P8016351887655557286

/-! ## A271708.P8230573863408916443

`A338001(A061816(n))`
-/

namespace A271708.P8230573863408916443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338001 (A061816 n).toNat

end

end A271708.P8230573863408916443

/-!
# A271709: Table T(n,k) = 2^n + 2^k read by antidiagonals.

The programs for A271709, the canonical program `A271709.P2626185223326178723` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271709 has offset 0).

The definition of A271709 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A271709.P2626185223326178723

`A131816(n)+1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A271709

/-- `A131816(n)+1` -/
def P2626185223326178723.Spec : Prop :=
  ∀ n, P2626185223326178723.a n = A271709 n

theorem P2626185223326178723.correct : P2626185223326178723.Spec := by
  intro n
  simp only [A271709]

end A271709

/-! ## A271709.P12786714375088462775

`A130321(n)+A059268(n)`
-/

namespace A271709.P12786714375088462775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n + A059268 n

end

end A271709.P12786714375088462775

namespace A271709

/-- `A130321(n)+A059268(n)` -/
def P12786714375088462775.Spec : Prop :=
  ∀ n, P12786714375088462775.a n = A271709 n

end A271709

/-! ## A271709.P2217853874829232274

`A131953(n)+A097807(n)`
-/

namespace A271709.P2217853874829232274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131953 n + A097807 n

end

end A271709.P2217853874829232274

namespace A271709

/-- `A131953(n)+A097807(n)` -/
def P2217853874829232274.Spec : Prop :=
  ∀ n, P2217853874829232274.a n = A271709 n

end A271709

/-! ## A271709.P10525838567955758206

`A176224(n)+A137688(n)`
-/

namespace A271709.P10525838567955758206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176224 n + A137688 n

end

end A271709.P10525838567955758206

namespace A271709

/-- `A176224(n)+A137688(n)` -/
def P10525838567955758206.Spec : Prop :=
  ∀ n, P10525838567955758206.a n = A271709 n

end A271709

/-! ## A271709.P3371037544513638168

`A154690(n)/A007318(n)`
-/

namespace A271709.P3371037544513638168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154690 n : ℚ) / (A007318 n : ℚ)

end

end A271709.P3371037544513638168

namespace A271709

/-- `A154690(n)/A007318(n)` -/
def P3371037544513638168.Spec : Prop :=
  ∀ n, P3371037544513638168.a n = (A271709 n : ℚ)

end A271709

/-! ## A271709.P14515151835215059138

`A099628(n+1)-A089633(n)`
-/

namespace A271709.P14515151835215059138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099628 (n + 1) - A089633 n

end

end A271709.P14515151835215059138

namespace A271709

/-- `A099628(n+1)-A089633(n)` -/
def P14515151835215059138.Spec : Prop :=
  ∀ n, P14515151835215059138.a n = A271709 n

end A271709

/-! ## A271709.P8494344738223910408

`A264802(n+1)-A173787(n)`
-/

namespace A271709.P8494344738223910408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264802 (n + 1) - A173787 n

end

end A271709.P8494344738223910408

namespace A271709

/-- `A264802(n+1)-A173787(n)` -/
def P8494344738223910408.Spec : Prop :=
  ∀ n, P8494344738223910408.a n = A271709 n

end A271709

/-! ## A271709.P9211938924283014845

`2/A028326(n)*A154690(n)`
-/

namespace A271709.P9211938924283014845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A028326 n : ℚ) * (A154690 n : ℚ)

end

end A271709.P9211938924283014845

namespace A271709

/-- `2/A028326(n)*A154690(n)` -/
def P9211938924283014845.Spec : Prop :=
  ∀ n, P9211938924283014845.a n = (A271709 n : ℚ)

end A271709

/-! ## A271709.P17616390730946079627

`xor(A143086(n), A271710(n))+1`
-/

namespace A271709.P17616390730946079627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A143086 n) (A271710 n) + 1

end

end A271709.P17616390730946079627

namespace A271709

/-- `xor(A143086(n), A271710(n))+1` -/
def P17616390730946079627.Spec : Prop :=
  ∀ n, P17616390730946079627.a n = A271709 n

end A271709

/-! ## A271709.P4309881469021095646

`n-(A023443(n)-A131816(n))`
-/

namespace A271709.P4309881469021095646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A023443 n - A131816 n)

end

end A271709.P4309881469021095646

namespace A271709

/-- `n-(A023443(n)-A131816(n))` -/
def P4309881469021095646.Spec : Prop :=
  ∀ n, P4309881469021095646.a n = A271709 n

end A271709

/-! ## A271709.P5388328146114032593

`A018900(n+1)-(A089633(n)+1)`
-/

namespace A271709.P5388328146114032593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018900 (n + 1) - (A089633 n + 1)

end

end A271709.P5388328146114032593

namespace A271709

/-- `A018900(n+1)-(A089633(n)+1)` -/
def P5388328146114032593.Spec : Prop :=
  ∀ n, P5388328146114032593.a n = A271709 n

end A271709

/-! ## A271709.P2999809989330402371

`A059268(n)+A090988(n+1)/2`
-/

namespace A271709.P2999809989330402371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059268 n : ℚ) + (A090988 (n + 1) : ℚ) / 2

end

end A271709.P2999809989330402371

namespace A271709

/-- `A059268(n)+A090988(n+1)/2` -/
def P2999809989330402371.Spec : Prop :=
  ∀ n, P2999809989330402371.a n = (A271709 n : ℚ)

end A271709

/-! ## A271709.P1442708786025741966

`A136318(n+1)%A175332(n+1)`
-/

namespace A271709.P1442708786025741966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136318 (n + 1)) (A175332 (n + 1))

end

end A271709.P1442708786025741966

namespace A271709

/-- `A136318(n+1)%A175332(n+1)` -/
def P1442708786025741966.Spec : Prop :=
  ∀ n, P1442708786025741966.a n = A271709 n

end A271709

/-! ## A271709.P7571380857726470120

`A059268(n)+A000079(A025581(n))`
-/

namespace A271709.P7571380857726470120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n + A000079 (A025581 n).toNat

end

end A271709.P7571380857726470120

namespace A271709

/-- `A059268(n)+A000079(A025581(n))` -/
def P7571380857726470120.Spec : Prop :=
  ∀ n, P7571380857726470120.a n = A271709 n

end A271709

/-! ## A271709.P18144602162362604475

`A130321(n)+A000079(A002262(n))`
-/

namespace A271709.P18144602162362604475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n + A000079 (A002262 n).toNat

end

end A271709.P18144602162362604475

namespace A271709

/-- `A130321(n)+A000079(A002262(n))` -/
def P18144602162362604475.Spec : Prop :=
  ∀ n, P18144602162362604475.a n = A271709 n

end A271709

/-! ## A271709.P10145048605966892332

`A059268(n)+A059268(A061579(n))`
-/

namespace A271709.P10145048605966892332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n + A059268 (A061579 n).toNat

end

end A271709.P10145048605966892332

namespace A271709

/-- `A059268(n)+A059268(A061579(n))` -/
def P10145048605966892332.Spec : Prop :=
  ∀ n, P10145048605966892332.a n = A271709 n

end A271709

/-! ## A271709.P2321410659716541482

`A059268(n)+A011782(A004736(n+1))`
-/

namespace A271709.P2321410659716541482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n + A011782 (A004736 (n + 1)).toNat

end

end A271709.P2321410659716541482

namespace A271709

/-- `A059268(n)+A011782(A004736(n+1))` -/
def P2321410659716541482.Spec : Prop :=
  ∀ n, P2321410659716541482.a n = A271709 n

end A271709

/-! ## A271709.P7567069306455985436

`A059268(n)+A059268(A099375(n)+n)`
-/

namespace A271709.P7567069306455985436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n + A059268 (A099375 n + (n : ℤ)).toNat

end

end A271709.P7567069306455985436

namespace A271709

/-- `A059268(n)+A059268(A099375(n)+n)` -/
def P7567069306455985436.Spec : Prop :=
  ∀ n, P7567069306455985436.a n = A271709 n

end A271709

/-! ## A271709.P7887216834061493945

`(A038207(n)+A013609(n))/A007318(n)`
-/

namespace A271709.P7887216834061493945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038207 n + A013609 n : ℚ) / (A007318 n : ℚ)

end

end A271709.P7887216834061493945

namespace A271709

/-- `(A038207(n)+A013609(n))/A007318(n)` -/
def P7887216834061493945.Spec : Prop :=
  ∀ n, P7887216834061493945.a n = (A271709 n : ℚ)

end A271709

/-! ## A271709.P12625546493989441530

`A059268(n)+A038207(n)/A007318(n)`
-/

namespace A271709.P12625546493989441530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059268 n : ℚ) + (A038207 n : ℚ) / (A007318 n : ℚ)

end

end A271709.P12625546493989441530

namespace A271709

/-- `A059268(n)+A038207(n)/A007318(n)` -/
def P12625546493989441530.Spec : Prop :=
  ∀ n, P12625546493989441530.a n = (A271709 n : ℚ)

end A271709

/-!
# A271710: Table T(n,k) = 2^n XOR 2^k read by antidiagonals, where XOR is the binary exclusive or operator.

The programs for A271710, the canonical program `A271710.P8123047399099080066` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271710 has offset 0).

The definition of A271710 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A271710.P8123047399099080066

`xor(A059268(n), A130321(n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A271710

/-- `xor(A059268(n), A130321(n))` -/
def P8123047399099080066.Spec : Prop :=
  ∀ n, P8123047399099080066.a n = A271710 n

theorem P8123047399099080066.correct : P8123047399099080066.Spec := by
  intro n
  simp only [A271710]

end A271710

/-! ## A271710.P15533709240319950660

`xor(A131816(n), A143086(n))`
-/

namespace A271710.P15533709240319950660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A131816 n) (A143086 n)

end

end A271710.P15533709240319950660

namespace A271710

/-- `xor(A131816(n), A143086(n))` -/
def P15533709240319950660.Spec : Prop :=
  ∀ n, P15533709240319950660.a n = A271710 n

end A271710

/-! ## A271710.P17623189552029672547

`lcm(A271709(n), A323377(n+1))`
-/

namespace A271710.P17623189552029672547
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A271709 n) (A323377 (n + 1))

end

end A271710.P17623189552029672547

namespace A271710

/-- `lcm(A271709(n), A323377(n+1))` -/
def P17623189552029672547.Spec : Prop :=
  ∀ n, (P17623189552029672547.a n : ℤ) = A271710 n

end A271710

/-! ## A271710.P6497639923852009736

`xor(A000079(A025581(n)), A059268(n))`
-/

namespace A271710.P6497639923852009736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000079 (A025581 n).toNat) (A059268 n)

end

end A271710.P6497639923852009736

namespace A271710

/-- `xor(A000079(A025581(n)), A059268(n))` -/
def P6497639923852009736.Spec : Prop :=
  ∀ n, P6497639923852009736.a n = A271710 n

end A271710

/-! ## A271710.P12931567293824662993

`xor(A059268(n), A059268(A061579(n)))`
-/

namespace A271710.P12931567293824662993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A059268 n) (A059268 (A061579 n).toNat)

end

end A271710.P12931567293824662993

namespace A271710

/-- `xor(A059268(n), A059268(A061579(n)))` -/
def P12931567293824662993.Spec : Prop :=
  ∀ n, P12931567293824662993.a n = A271710 n

end A271710

/-! ## A271710.P9723748359453430977

`xor(A011782(A004736(n+1)), A059268(n))`
-/

namespace A271710.P9723748359453430977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A011782 (A004736 (n + 1)).toNat) (A059268 n)

end

end A271710.P9723748359453430977

namespace A271710

/-- `xor(A011782(A004736(n+1)), A059268(n))` -/
def P9723748359453430977.Spec : Prop :=
  ∀ n, P9723748359453430977.a n = A271710 n

end A271710

/-! ## A271710.P306460976219661507

`A271709(n)%(A271709(n)+A049581(n))`
-/

namespace A271710.P306460976219661507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271709 n) (A271709 n + A049581 n)

end

end A271710.P306460976219661507

namespace A271710

/-- `A271709(n)%(A271709(n)+A049581(n))` -/
def P306460976219661507.Spec : Prop :=
  ∀ n, P306460976219661507.a n = A271710 n

end A271710

/-! ## A271710.P11510526408681424830

`xor(2^A002262(n), A011782(A004736(n+1)))`
-/

namespace A271710.P11510526408681424830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A002262 n : ℤ))) (A011782 (A004736 (n + 1)).toNat)

end

end A271710.P11510526408681424830

namespace A271710

/-- `xor(2^A002262(n), A011782(A004736(n+1)))` -/
def P11510526408681424830.Spec : Prop :=
  ∀ n, P11510526408681424830.a n = A271710 n

end A271710

/-! ## A271710.P12877408208217965950

`xor(A130321(A061579(n)), A130321(n))`
-/

namespace A271710.P12877408208217965950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A130321 (A061579 n).toNat) (A130321 n)

end

end A271710.P12877408208217965950

namespace A271710

/-- `xor(A130321(A061579(n)), A130321(n))` -/
def P12877408208217965950.Spec : Prop :=
  ∀ n, P12877408208217965950.a n = A271710 n

end A271710

/-! ## A271710.P12614670312794568987

`xor(A018900(n+1), A018900(A061579(n)+1))`
-/

namespace A271710.P12614670312794568987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A018900 (n + 1)) (A018900 (A061579 n + 1).toNat)

end

end A271710.P12614670312794568987

namespace A271710

/-- `xor(A018900(n+1), A018900(A061579(n)+1))` -/
def P12614670312794568987.Spec : Prop :=
  ∀ n, P12614670312794568987.a n = A271710 n

end A271710

/-! ## A271710.P1140714389907525409

`xor(2^(A057555(2*n+1)-1), A011782(A004736(n+1)))`
-/

namespace A271710.P1140714389907525409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A057555 (2 * n + 1) - 1 : ℤ))) (A011782 (A004736 (n + 1)).toNat)

end

end A271710.P1140714389907525409

namespace A271710

/-- `xor(2^(A057555(2*n+1)-1), A011782(A004736(n+1)))` -/
def P1140714389907525409.Spec : Prop :=
  ∀ n, P1140714389907525409.a n = A271710 n

end A271710

/-! ## A271710.P5198610839302470953

`A248663(A098350(n+1))`
-/

namespace A271710.P5198610839302470953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248663 (A098350 (n + 1)).toNat

end

end A271710.P5198610839302470953

namespace A271710

/-- `A248663(A098350(n+1))` -/
def P5198610839302470953.Spec : Prop :=
  ∀ n, P5198610839302470953.a n = A271710 n

end A271710

/-! ## A271710.P839096569191332985

`A038556(A131816(n))`
-/

namespace A271710.P839096569191332985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038556 (A131816 n).toNat

end

end A271710.P839096569191332985

namespace A271710

/-- `A038556(A131816(n))` -/
def P839096569191332985.Spec : Prop :=
  ∀ n, P839096569191332985.a n = A271710 n

end A271710

/-! ## A271710.P18194968097569942549

`A102391(A271709(n))`
-/

namespace A271710.P18194968097569942549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102391 (A271709 n).toNat

end

end A271710.P18194968097569942549

namespace A271710

/-- `A102391(A271709(n))` -/
def P18194968097569942549.Spec : Prop :=
  ∀ n, P18194968097569942549.a n = A271710 n

end A271710

/-!
# A271713: Numbers n such that 3*n - 5 is a square.

The programs for A271713, the canonical program `A271713.P16576202234827121117` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271713 has offset 1).

The definition of A271713 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A271713.P16576202234827121117

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=2, a(1)=3, a(2)=7, a(3)=10, a(4)=18`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A271713

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P16576202234827121117.Spec : Prop :=
  ∀ n, P16576202234827121117.a n = A271713 (n + 1)

theorem P16576202234827121117.correct : P16576202234827121117.Spec := by
  intro n
  simp only [A271713, Nat.add_sub_cancel]

end A271713

/-! ## A271713.P16832448908916558808

`∑[n*gcd(2, n)]+2`
-/

namespace A271713.P16832448908916558808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A271713.P16832448908916558808

namespace A271713

/-- `∑[n*gcd(2, n)]+2` -/
def P16832448908916558808.Spec : Prop :=
  ∀ n, (P16832448908916558808.a n : ℤ) = A271713 (n + 1)

end A271713

/-! ## A271713.P5864001042417375952

`(comp[3*n]²+5)/3`
-/

namespace A271713.P5864001042417375952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 2 + 5 : ℚ) / 3

end

end A271713.P5864001042417375952

namespace A271713

/-- `(comp[3*n]²+5)/3` -/
def P5864001042417375952.Spec : Prop :=
  ∀ n, P5864001042417375952.a n = (A271713 (n + 1) : ℚ)

end A271713

/-! ## A271713.P95376888629004283

`∑[n*a(n%2)]` with `a(0)=2, a(1)=1`
-/

namespace A271713.P95376888629004283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  n * f1 (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271713.P95376888629004283

namespace A271713

/-- `∑[n*a(n%2)]` -/
def P95376888629004283.Spec : Prop :=
  ∀ n, (P95376888629004283.a n : ℤ) = A271713 (n + 1)

end A271713

/-! ## A271713.P16307608201634257886

`∑[n*a(and(1, n))]` with `a(0)=2, a(1)=1`
-/

namespace A271713.P16307608201634257886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  n * f1 (Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271713.P16307608201634257886

namespace A271713

/-- `∑[n*a(and(1, n))]` -/
def P16307608201634257886.Spec : Prop :=
  ∀ n, (P16307608201634257886.a n : ℤ) = A271713 (n + 1)

end A271713

/-! ## A271713.P742669253162255031

`2-∑[n*or(n, -2)]`
-/

namespace A271713.P742669253162255031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.lor (n : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271713.P742669253162255031

namespace A271713

/-- `2-∑[n*or(n, -2)]` -/
def P742669253162255031.Spec : Prop :=
  ∀ n, P742669253162255031.a n = A271713 (n + 1)

end A271713

/-! ## A271713.P3297969343058427779

`or(2, ∑[gcd(2*n, n²)])`
-/

namespace A271713.P3297969343058427779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 * n) (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A271713.P3297969343058427779

namespace A271713

/-- `or(2, ∑[gcd(2*n, n²)])` -/
def P3297969343058427779.Spec : Prop :=
  ∀ n, (P3297969343058427779.a n : ℤ) = A271713 (n + 1)

end A271713

/-! ## A271713.P52175825964477610

`2-∑[lcm(2, n)-3*n]`
-/

namespace A271713.P52175825964477610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 n : ℤ) - (3 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271713.P52175825964477610

namespace A271713

/-- `2-∑[lcm(2, n)-3*n]` -/
def P52175825964477610.Spec : Prop :=
  ∀ n, P52175825964477610.a n = A271713 (n + 1)

end A271713

/-! ## A271713.P7557327865599207256

`∑[n*(2-and(1, n))]+2`
-/

namespace A271713.P7557327865599207256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (2 - (Nat.land 1 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A271713.P7557327865599207256

namespace A271713

/-- `∑[n*(2-and(1, n))]+2` -/
def P7557327865599207256.Spec : Prop :=
  ∀ n, P7557327865599207256.a n = A271713 (n + 1)

end A271713

/-! ## A271713.P3401751946769731527

`2-∑[n*(and(1, n)-2)]`
-/

namespace A271713.P3401751946769731527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((Nat.land 1 n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271713.P3401751946769731527

namespace A271713

/-- `2-∑[n*(and(1, n)-2)]` -/
def P3401751946769731527.Spec : Prop :=
  ∀ n, P3401751946769731527.a n = A271713 (n + 1)

end A271713

/-! ## A271713.P9066984129737738550

`∑[C(n, a(n-1))+n]` with `a(0)=2`
-/

namespace A271713.P9066984129737738550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  Nat.choose n (f1 (n - 1)) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271713.P9066984129737738550

namespace A271713

/-- `∑[C(n, a(n-1))+n]` -/
def P9066984129737738550.Spec : Prop :=
  ∀ n, (P9066984129737738550.a n : ℤ) = A271713 (n + 1)

end A271713

/-! ## A271713.P12546535533169460743

`∑[n*ceil(n/a(n-1))]` with `a(0)=2`
-/

namespace A271713.P12546535533169460743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  (n : ℤ) * ⌈(n : ℚ) / (f1 (n - 1) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271713.P12546535533169460743

namespace A271713

/-- `∑[n*ceil(n/a(n-1))]` -/
def P12546535533169460743.Spec : Prop :=
  ∀ n, P12546535533169460743.a n = A271713 (n + 1)

end A271713

/-! ## A271713.P15780433138692569085

`∑[n*((n+1)%2+1)]+2`
-/

namespace A271713.P15780433138692569085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * ((n + 1) % 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A271713.P15780433138692569085

namespace A271713

/-- `∑[n*((n+1)%2+1)]+2` -/
def P15780433138692569085.Spec : Prop :=
  ∀ n, (P15780433138692569085.a n : ℤ) = A271713 (n + 1)

end A271713

/-! ## A271713.P13652427549609135

`∑[n*a(floor(a(n-1)/n))]` with `a(0)=2, a(1)=1`
-/

namespace A271713.P13652427549609135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  n * f1 ⌊(f1 (n - 1) : ℚ) / (n : ℚ)⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271713.P13652427549609135

namespace A271713

/-- `∑[n*a(floor(a(n-1)/n))]` -/
def P13652427549609135.Spec : Prop :=
  ∀ n, (P13652427549609135.a n : ℤ) = A271713 (n + 1)

end A271713

/-! ## A271713.P15977879085346772919

`∑[xor(1, a(n-2))+3]+1` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A271713.P15977879085346772919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 4] fun n f1 =>
  Nat.xor 1 (f1 (n - 2)) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A271713.P15977879085346772919

namespace A271713

/-- `∑[xor(1, a(n-2))+3]+1` -/
def P15977879085346772919.Spec : Prop :=
  ∀ n, (P15977879085346772919.a n : ℤ) = A271713 (n + 1)

end A271713

/-! ## A271713.P9786567671837633664

`∑[lcm(n+1, 2*n)/(n+1)]+2`
-/

namespace A271713.P9786567671837633664
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 1) (2 * n) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A271713.P9786567671837633664

namespace A271713

/-- `∑[lcm(n+1, 2*n)/(n+1)]+2` -/
def P9786567671837633664.Spec : Prop :=
  ∀ n, P9786567671837633664.a n = (A271713 (n + 1) : ℚ)

end A271713

/-! ## A271713.P1371019074468656702

`∑[2*n-(n-C(n, a(n-1)))]` with `a(0)=2`
-/

namespace A271713.P1371019074468656702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  (2 * n : ℤ) - ((n : ℤ) - (Nat.choose n (f1 (n - 1)).toNat : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271713.P1371019074468656702

namespace A271713

/-- `∑[2*n-(n-C(n, a(n-1)))]` -/
def P1371019074468656702.Spec : Prop :=
  ∀ n, P1371019074468656702.a n = A271713 (n + 1)

end A271713

/-! ## A271713.P1284413738913839055

`∑[and(n, n-3-a(n-1))+n]` with `a(0)=2`
-/

namespace A271713.P1284413738913839055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  Int.land (n : ℤ) ((n : ℤ) - 3 - f1 (n - 1)) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271713.P1284413738913839055

namespace A271713

/-- `∑[and(n, n-3-a(n-1))+n]` -/
def P1284413738913839055.Spec : Prop :=
  ∀ n, P1284413738913839055.a n = A271713 (n + 1)

end A271713

/-! ## A271713.P9276231261118960516

`∑[gcd(2*n*a(n-1), n²²)]` with `a(0)=2`
-/

namespace A271713.P9276231261118960516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  Nat.gcd (2 * n * f1 (n - 1)) ((n ^ 2) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271713.P9276231261118960516

namespace A271713

/-- `∑[gcd(2*n*a(n-1), n²²)]` -/
def P9276231261118960516.Spec : Prop :=
  ∀ n, (P9276231261118960516.a n : ℤ) = A271713 (n + 1)

end A271713

/-! ## A271713.P10654771392702325790

`∑[ogf((x+4x^2+x^3)/(1-2x^2+x^4))]+2`
-/

namespace A271713.P10654771392702325790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 4, 1] [1, 0, -2, 0, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A271713.P10654771392702325790

namespace A271713

/-- `∑[ogf((x+4x^2+x^3)/(1-2x^2+x^4))]+2` -/
def P10654771392702325790.Spec : Prop :=
  ∀ n, P10654771392702325790.a n = A271713 (n + 1)

end A271713

/-!
# A271714: Number of ordered ways to write n as w^2 + x^2 + y^2 + z^2 such that (10*w+5*x)^2 + (12*y+36*z)^2 is a square, where w is a positive integer and x,y,z are nonnegative integers.

The programs for A271714, there is no canonical definition to state claims against.
-/

/-! ## A271714.P7627404871322425835

`A198067(A312566(n)+4)`
-/

namespace A271714.P7627404871322425835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198067 (A312566 n + 4).toNat

end

end A271714.P7627404871322425835

/-! ## A271714.P6394135453913041075

`A341618((A231716(2*(n+2))+3)²)`
-/

namespace A271714.P6394135453913041075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341618 ((A231716 (2 * (n + 2)) + 3) ^ 2).toNat

end

end A271714.P6394135453913041075

/-! ## A271714.P11941563044425406798

`A014963(A348038(record[A245559(n+1)]))`
-/

namespace A271714.P11941563044425406798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245559 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A348038 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A271714.P11941563044425406798

/-! ## A271714.P12772586513841943785

`gcd(A017233(n), A143587(A060106(n+1)))`
-/

namespace A271714.P12772586513841943785
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A017233 n) (A143587 (A060106 (n + 1)).toNat)

end

end A271714.P12772586513841943785

/-! ## A271714.P13245364484114562584

`gcd(A037477(A099721(n)), A060118(n))`
-/

namespace A271714.P13245364484114562584
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037477 (A099721 n).toNat) (A060118 n)

end

end A271714.P13245364484114562584

/-!
# A271715: Number of set partitions of [3n] with minimal block length multiplicity equal to n.

The programs for A271715, there is no canonical definition to state claims against.
-/

/-! ## A271715.P5342497319404276572

`A271424(A062725(n))`
-/

namespace A271715.P5342497319404276572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271424 (A062725 n).toNat

end

end A271715.P5342497319404276572

/-! ## A271715.P12202484078429224757

`A271424(A064225(n)-1)`
-/

namespace A271715.P12202484078429224757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271424 (A064225 n - 1).toNat

end

end A271715.P12202484078429224757

/-! ## A271715.P9416964876044825874

`A271424(A081266(n)+n)`
-/

namespace A271715.P9416964876044825874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271424 (A081266 n + (n : ℤ)).toNat

end

end A271715.P9416964876044825874

/-! ## A271715.P11825567849667407123

`A271424(A062728(n)-n)`
-/

namespace A271715.P11825567849667407123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271424 (A062728 n - (n : ℤ)).toNat

end

end A271715.P11825567849667407123

/-! ## A271715.P1406069776381940974

`A271424(A007742(n)+A000096(n))`
-/

namespace A271715.P1406069776381940974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271424 (A007742 n + A000096 n).toNat

end

end A271715.P1406069776381940974

/-!
# A271721: Number of ordered ways to write n as x^2 + y^2 + z^2 + w^2 with x >= y >= z >= 0, x > 0 and w >= z such that (x-y)*(w-z) is a square.

The programs for A271721, there is no canonical definition to state claims against.
-/

/-! ## A271721.P9902240409675858551

`A106798(A198179(n+1))`
-/

namespace A271721.P9902240409675858551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106798 (A198179 (n + 1)).toNat

end

end A271721.P9902240409675858551

/-! ## A271721.P5193333706607812111

`A324816(A156552(3*(n+1))²)`
-/

namespace A271721.P5193333706607812111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324816 (A156552 (3 * (n + 1)) ^ 2).toNat

end

end A271721.P5193333706607812111

/-! ## A271721.P12838720664600281216

`A045778(A094540(n+2)+1+n)`
-/

namespace A271721.P12838720664600281216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (A094540 (n + 2) + 1 + (n : ℤ)).toNat

end

end A271721.P12838720664600281216

/-! ## A271721.P3128230649055934472

`A363718(gcd(n, A363740(3*(n+1))))`
-/

namespace A271721.P3128230649055934472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363718 (Int.gcd (n : ℤ) (A363740 (3 * (n + 1))))

end

end A271721.P3128230649055934472

/-! ## A271721.P10508528863626222697

`A001222(or(A005043(n), A087711(n)))`
-/

namespace A271721.P10508528863626222697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (A005043 n) (A087711 n)).toNat

end

end A271721.P10508528863626222697

/-!
# A271722: Expansion of phi(-x^3)^2 / (psi(-x) * psi(-x^3)) in powers of x where phi(), psi() are Ramanujan theta functions.

The programs for A271722, there is no canonical definition to state claims against.
-/

/-! ## A271722.P7126122475033942383

`A256626((A294178(n)-1)/2)`
-/

namespace A271722.P7126122475033942383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256626 (SequenceMachineLib.roundAway ((A294178 n - 1 : ℚ) / 2)).toNat

end

end A271722.P7126122475033942383

/-! ## A271722.P3669728443189503711

`A256626(n²%A004280(n+1))`
-/

namespace A271722.P3669728443189503711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256626 (Int.tmod (n ^ 2 : ℤ) (A004280 (n + 1))).toNat

end

end A271722.P3669728443189503711

/-! ## A271722.P1760790005536257757

`A256626(A014682(n)-A000035(n))`
-/

namespace A271722.P1760790005536257757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256626 (A014682 n - A000035 n).toNat

end

end A271722.P1760790005536257757

/-! ## A271722.P17733315019344523653

`A256626(A001281(n)/A000034(n))`
-/

namespace A271722.P17733315019344523653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256626 (SequenceMachineLib.roundAway ((A001281 n : ℚ) / (A000034 n : ℚ))).toNat

end

end A271722.P17733315019344523653

/-! ## A271722.P3616305233709342006

`A256626(gcd(A000326(n), A032766(n)))`
-/

namespace A271722.P3616305233709342006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256626 (Int.gcd (A000326 n) (A032766 n))

end

end A271722.P3616305233709342006

/-! ## A271722.P17062463316577084220

`A256626(A004526(A294178(n)))`
-/

namespace A271722.P17062463316577084220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256626 (A004526 (A294178 n).toNat).toNat

end

end A271722.P17062463316577084220

/-!
# A271723: Numbers k such that 3*k - 8 is a square.

The programs for A271723, the canonical program `A271723.P14860297337512354625` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271723 has offset 1).

The definition of A271723 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A271723.P14860297337512354625

`(6*n*(n+1)-(2*(n+1)-1)*(-1)^(n+1)+23)/8`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A271723

/-- `(6*n*(n+1)-(2*(n+1)-1)*(-1)^(n+1)+23)/8` -/
def P14860297337512354625.Spec : Prop :=
  ∀ n, P14860297337512354625.a n = (A271723 (n + 1) : ℚ)

end A271723

/-! ## A271723.P6243686249032101742

`∑[n*gcd(2, n)]+3`
-/

namespace A271723.P6243686249032101742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A271723.P6243686249032101742

namespace A271723

/-- `∑[n*gcd(2, n)]+3` -/
def P6243686249032101742.Spec : Prop :=
  ∀ n, (P6243686249032101742.a n : ℤ) = A271723 (n + 1)

end A271723

/-! ## A271723.P605636674576871767

`∑[n*(2-n%2)]+3`
-/

namespace A271723.P605636674576871767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (2 - ((n % 2 : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A271723.P605636674576871767

namespace A271723

/-- `∑[n*(2-n%2)]+3` -/
def P605636674576871767.Spec : Prop :=
  ∀ n, P605636674576871767.a n = A271723 (n + 1)

end A271723

/-! ## A271723.P5894520747662187046

`∑[C(n, a(n-1))+n]` with `a(0)=3`
-/

namespace A271723.P5894520747662187046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  Nat.choose n (f1 (n - 1)) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271723.P5894520747662187046

namespace A271723

/-- `∑[C(n, a(n-1))+n]` -/
def P5894520747662187046.Spec : Prop :=
  ∀ n, (P5894520747662187046.a n : ℤ) = A271723 (n + 1)

end A271723

/-! ## A271723.P14168073582644065573

`∑[n*ceil(n/a(n-1))]` with `a(0)=3`
-/

namespace A271723.P14168073582644065573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  (n : ℤ) * ⌈(n : ℚ) / (f1 (n - 1) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271723.P14168073582644065573

namespace A271723

/-- `∑[n*ceil(n/a(n-1))]` -/
def P14168073582644065573.Spec : Prop :=
  ∀ n, P14168073582644065573.a n = A271723 (n + 1)

end A271723

/-! ## A271723.P14731839641019462860

`∑[lcm(n+1, 2*n)/(n+1)]+3`
-/

namespace A271723.P14731839641019462860
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 1) (2 * n) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A271723.P14731839641019462860

namespace A271723

/-- `∑[lcm(n+1, 2*n)/(n+1)]+3` -/
def P14731839641019462860.Spec : Prop :=
  ∀ n, P14731839641019462860.a n = (A271723 (n + 1) : ℚ)

end A271723

/-! ## A271723.P12252003235500096758

`∑[2*n*(n-1)/a(n-1)]` with `a(0)=3, a(1)=1`
-/

namespace A271723.P12252003235500096758
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [3, 1] fun n f1 =>
  (2 * n : ℚ) * (((n : ℤ) - 1 : ℚ) / f1 (n - 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271723.P12252003235500096758

namespace A271723

/-- `∑[2*n*(n-1)/a(n-1)]` -/
def P12252003235500096758.Spec : Prop :=
  ∀ n, P12252003235500096758.a n = (A271723 (n + 1) : ℚ)

end A271723

/-! ## A271723.P15080671336401745570

`∑[n-(a(n-2)%n-a(n-2))]` with `a(0)=3, a(1)=1`
-/

namespace A271723.P15080671336401745570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f1 =>
  (n : ℤ) - (Int.tmod (f1 (n - 2)) (n : ℤ) - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271723.P15080671336401745570

namespace A271723

/-- `∑[n-(a(n-2)%n-a(n-2))]` -/
def P15080671336401745570.Spec : Prop :=
  ∀ n, P15080671336401745570.a n = A271723 (n + 1)

end A271723

/-! ## A271723.P11234428040578763457

`A257083(n)+2`
-/

namespace A271723.P11234428040578763457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257083 n + 2

end

end A271723.P11234428040578763457

namespace A271723

/-- `A257083(n)+2` -/
def P11234428040578763457.Spec : Prop :=
  ∀ n, P11234428040578763457.a n = A271723 (n + 1)

end A271723

/-! ## A271723.P10884205308600523052

`∑[A257088(n)]+2`
-/

namespace A271723.P10884205308600523052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A271723.P10884205308600523052

namespace A271723

/-- `∑[A257088(n)]+2` -/
def P10884205308600523052.Spec : Prop :=
  ∀ n, P10884205308600523052.a n = A271723 (n + 1)

end A271723

/-! ## A271723.P17022337280251859147

`∑[A022998(n)]+3`
-/

namespace A271723.P17022337280251859147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A271723.P17022337280251859147

namespace A271723

/-- `∑[A022998(n)]+3` -/
def P17022337280251859147.Spec : Prop :=
  ∀ n, P17022337280251859147.a n = A271723 (n + 1)

end A271723

/-! ## A271723.P11078653807580007166

`A271713(n+1)+1`
-/

namespace A271723.P11078653807580007166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271713 (n + 1) + 1

end

end A271723.P11078653807580007166

namespace A271723

/-- `A271713(n+1)+1` -/
def P11078653807580007166.Spec : Prop :=
  ∀ n, P11078653807580007166.a n = A271723 (n + 1)

end A271723

/-! ## A271723.P2297026846525481241

`A001082(n+1)+3`
-/

namespace A271723.P2297026846525481241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001082 (n + 1) + 3

end

end A271723.P2297026846525481241

namespace A271723

/-- `A001082(n+1)+3` -/
def P2297026846525481241.Spec : Prop :=
  ∀ n, P2297026846525481241.a n = A271723 (n + 1)

end A271723

/-! ## A271723.P8314760551340155055

`A014255(n)+2-n`
-/

namespace A271723.P8314760551340155055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014255 n + (2 - (n : ℤ))

end

end A271723.P8314760551340155055

namespace A271723

/-- `A014255(n)+2-n` -/
def P8314760551340155055.Spec : Prop :=
  ∀ n, P8314760551340155055.a n = A271723 (n + 1)

end A271723

/-! ## A271723.P16653698667821065426

`A032438(n)+3+n`
-/

namespace A271723.P16653698667821065426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032438 n + 3 + (n : ℤ)

end

end A271723.P16653698667821065426

namespace A271723

/-- `A032438(n)+3+n` -/
def P16653698667821065426.Spec : Prop :=
  ∀ n, P16653698667821065426.a n = A271723 (n + 1)

end A271723

/-! ## A271723.P16177201470956939051

`A057780(n+1)/3+3`
-/

namespace A271723.P16177201470956939051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057780 (n + 1) : ℚ) / 3 + 3

end

end A271723.P16177201470956939051

namespace A271723

/-- `A057780(n+1)/3+3` -/
def P16177201470956939051.Spec : Prop :=
  ∀ n, P16177201470956939051.a n = (A271723 (n + 1) : ℚ)

end A271723

/-! ## A271723.P9551920191445945287

`A022958(n)+A014255(n)`
-/

namespace A271723.P9551920191445945287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022958 n + A014255 n

end

end A271723.P9551920191445945287

namespace A271723

/-- `A022958(n)+A014255(n)` -/
def P9551920191445945287.Spec : Prop :=
  ∀ n, P9551920191445945287.a n = A271723 (n + 1)

end A271723

/-! ## A271723.P623050208147050394

`A152950(n+1)+A110660(n)`
-/

namespace A271723.P623050208147050394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152950 (n + 1) + A110660 n

end

end A271723.P623050208147050394

namespace A271723

/-- `A152950(n+1)+A110660(n)` -/
def P623050208147050394.Spec : Prop :=
  ∀ n, P623050208147050394.a n = A271723 (n + 1)

end A271723

/-! ## A271723.P1100064004434091951

`A247018(n+1)+A130472(n)`
-/

namespace A271723.P1100064004434091951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247018 (n + 1) + A130472 n

end

end A271723.P1100064004434091951

namespace A271723

/-- `A247018(n+1)+A130472(n)` -/
def P1100064004434091951.Spec : Prop :=
  ∀ n, P1100064004434091951.a n = A271723 (n + 1)

end A271723

/-! ## A271723.P2149876119847017097

`A338042(n+1)+A266257(n)`
-/

namespace A271723.P2149876119847017097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338042 (n + 1) + A266257 n

end

end A271723.P2149876119847017097

namespace A271723

/-- `A338042(n+1)+A266257(n)` -/
def P2149876119847017097.Spec : Prop :=
  ∀ n, P2149876119847017097.a n = A271723 (n + 1)

end A271723

/-!
# A271726: Let f(x) = 1 -x^3+ Sum_{j>=2} (x^(2^j)-x^(1+2^j)). Then a(n) is n times the coefficient of x^n in the expansion of log(f(x)).

The programs for A271726, there is no canonical definition to state claims against.
-/

/-! ## A271726.P6023324376975255828

`A092462(n+1)-1`
-/

namespace A271726.P6023324376975255828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092462 (n + 1) - 1

end

end A271726.P6023324376975255828

/-! ## A271726.P6243706525659000957

`Δ[∑[A092462(n)]-n]`
-/

namespace A271726.P6243706525659000957
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092462 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271726.P6243706525659000957

/-! ## A271726.P2165992390813470075

`∑[Δ[A092462(n)]*A057427(n)]`
-/

namespace A271726.P2165992390813470075
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092462 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271726.P2165992390813470075

/-! ## A271726.P3729559014023425171

`∑[Δ[A092462(n)]%A000079(n)]`
-/

namespace A271726.P3729559014023425171
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092462 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A000079 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271726.P3729559014023425171

/-! ## A271726.P14913507558630326298

`floor(A092462(n+1)+ratio[A033999(n)])`
-/

namespace A271726.P14913507558630326298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A092462 (n + 1) : ℚ) + (f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A271726.P14913507558630326298

/-! ## A271726.P12624331374064082085

`A112030(A125169(n))+A092462(n+1)`
-/

namespace A271726.P12624331374064082085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112030 (A125169 n).toNat + A092462 (n + 1)

end

end A271726.P12624331374064082085

/-! ## A271726.P16600756429500979076

`A182394(A260808(n+1))+A092462(n+1)`
-/

namespace A271726.P16600756429500979076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182394 (A260808 (n + 1)).toNat + A092462 (n + 1)

end

end A271726.P16600756429500979076

/-! ## A271726.P11850433992057402757

`A033999(2*n+1)+A033999(2*n)*A092462(n+1)`
-/

namespace A271726.P11850433992057402757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + A033999 (2 * n) * A092462 (n + 1)

end

end A271726.P11850433992057402757

/-!
# A271728: Numbers n such that A076478(n)=1.

The programs for A271728, there is no canonical definition to state claims against.
-/

/-! ## A271728.P1223724233867309295

`lt[0, A076478(n)]`
-/

namespace A271728.P1223724233867309295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076478 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A271728.P1223724233867309295

/-! ## A271728.P4804192875206322561

`eq[2, A392106(n)]`
-/

namespace A271728.P4804192875206322561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392106 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A271728.P4804192875206322561

/-! ## A271728.P2873034578939705324

`A206446(n+1)-1`
-/

namespace A271728.P2873034578939705324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206446 (n + 1) - 1

end

end A271728.P2873034578939705324

/-! ## A271728.P14233607912387374717

`filter[n+1, A076478(#)]`
-/

namespace A271728.P14233607912387374717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A076478 (f1 j) = 1) n)

end

end A271728.P14233607912387374717

/-! ## A271728.P14076999836878381734

`comp[A206445(n+1)-1]`
-/

namespace A271728.P14076999836878381734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206445 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A271728.P14076999836878381734

/-! ## A271728.P5627762050617716154

`record[(n+1)*A076478(n+1)]`
-/

namespace A271728.P5627762050617716154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A076478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271728.P5627762050617716154

/-! ## A271728.P8910705130916644030

`A023443(A206446(n+1))`
-/

namespace A271728.P8910705130916644030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A206446 (n + 1)).toNat

end

end A271728.P8910705130916644030

/-! ## A271728.P17000803381848994234

`eq[A054977(n), A076478(n)]`
-/

namespace A271728.P17000803381848994234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076478 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A271728.P17000803381848994234

/-! ## A271728.P17829395987154549374

`eq[A076478(n), A158388(n)]`
-/

namespace A271728.P17829395987154549374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076478 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A271728.P17829395987154549374

/-! ## A271728.P3649386074470392365

`eq[A076478(n), A329684(n)]`
-/

namespace A271728.P3649386074470392365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076478 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A271728.P3649386074470392365

/-! ## A271728.P5319026887706639371

`lt[A277914(n+1), A277914(n)]`
-/

namespace A271728.P5319026887706639371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277914 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A271728.P5319026887706639371

/-! ## A271728.P17259486395527179103

`eq[1, A076478(n*A076478(n))]`
-/

namespace A271728.P17259486395527179103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076478 ((n : ℤ) * A076478 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A271728.P17259486395527179103

/-! ## A271728.P5554817851097104781

`eq[1, A076478(n)]-val(A017078(n), 2)`
-/

namespace A271728.P5554817851097104781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076478 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (SequenceMachineLib.valuation (A017078 n).toNat 2 : ℤ)

end

end A271728.P5554817851097104781

/-! ## A271728.P4373986566813894639

`record[A004442(A004442(n)*A076478(n))]`
-/

namespace A271728.P4373986566813894639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A004442 n * A076478 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271728.P4373986566813894639

/-! ## A271728.P7405607229759206426

`eq[1, A076478(n)]-val(A272828(n), 2)`
-/

namespace A271728.P7405607229759206426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076478 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (SequenceMachineLib.valuation (A272828 n).toNat 2 : ℤ)

end

end A271728.P7405607229759206426

/-! ## A271728.P14844670500087489688

`A336563(A006093(n+1)+1)+eq[1, A076478(n)]`
-/

namespace A271728.P14844670500087489688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076478 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336563 (A006093 (n + 1) + 1).toNat + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A271728.P14844670500087489688

/-! ## A271728.P14428173293641218777

`eq[1, A233136(n+3)]-n`
-/

namespace A271728.P14428173293641218777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233136 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A271728.P14428173293641218777

/-! ## A271728.P4757725767495773329

`eq[1, A076478(n)]-val(A075059(n), 4)`
-/

namespace A271728.P4757725767495773329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076478 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (SequenceMachineLib.valuation (A075059 n).toNat 4 : ℤ)

end

end A271728.P4757725767495773329

/-!
# A271729: Numbers k such that 2*Fibonacci(k+2) + ((-1)^k-3)/2 is prime.

The programs for A271729, there is no canonical definition to state claims against.
-/

/-! ## A271729.P15263392742296015501

`record[and(A000010(3*n+1), A127351(n+1))]`
-/

namespace A271729.P15263392742296015501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000010 (3 * n + 1)) (A127351 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271729.P15263392742296015501

/-!
# A271731: Number of set partitions of [n] with maximal block length multiplicity equal to two.

The programs for A271731, there is no canonical definition to state claims against.
-/

/-! ## A271731.P12412234816110839864

`A271423(∑[n+2]+3)`
-/

namespace A271731.P12412234816110839864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271423 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A271731.P12412234816110839864

/-! ## A271731.P4291073425800219785

`gcd(A000038(n), A271423(A052905(n)+4-n))`
-/

namespace A271731.P4291073425800219785
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A271423 (A052905 n + (4 - (n : ℤ))).toNat)

end

end A271731.P4291073425800219785

/-! ## A271731.P10598896182554938791

`A271423(A052905(n)+4-n)+A000007(n+1)`
-/

namespace A271731.P10598896182554938791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271423 (A052905 n + (4 - (n : ℤ))).toNat + A000007 (n + 1)

end

end A271731.P10598896182554938791

/-! ## A271731.P1179259552347867394

`A014963(4*n+6)*A271423(A052905(n)+4-n)`
-/

namespace A271731.P1179259552347867394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 6) * A271423 (A052905 n + (4 - (n : ℤ))).toNat

end

end A271731.P1179259552347867394

/-! ## A271731.P11651806849620166358

`A000041(gcd(n, n+1))*A271423(A052905(n)+4-n)`
-/

namespace A271731.P11651806849620166358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.gcd n (n + 1)) * A271423 (A052905 n + (4 - (n : ℤ))).toNat

end

end A271731.P11651806849620166358

/-! ## A271731.P1020412289526190739

`A271423(A052905(n)+4-n)+A140129(A059268(n))`
-/

namespace A271731.P1020412289526190739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271423 (A052905 n + (4 - (n : ℤ))).toNat + A140129 (A059268 n).toNat

end

end A271731.P1020412289526190739

/-! ## A271731.P8800477055155440538

`A001222(A037126(n+1))*A271423(A052905(n)+4-n)`
-/

namespace A271731.P8800477055155440538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A037126 (n + 1)).toNat * A271423 (A052905 n + (4 - (n : ℤ))).toNat

end

end A271731.P8800477055155440538

/-! ## A271731.P15361878644637364986

`A271423(A052905(n)+4-n)+A008683(A046092(n+5))`
-/

namespace A271731.P15361878644637364986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271423 (A052905 n + (4 - (n : ℤ))).toNat + A008683 (A046092 (n + 5)).toNat

end

end A271731.P15361878644637364986

/-! ## A271731.P416890192484099514

`A271423(A052905(n)+4-n)+A008683(A001248(n+1))`
-/

namespace A271731.P416890192484099514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271423 (A052905 n + (4 - (n : ℤ))).toNat + A008683 (A001248 (n + 1)).toNat

end

end A271731.P416890192484099514

/-! ## A271731.P383627883424375912

`A008683(A006094(n+1))*A271423(A052905(n)+4-n)`
-/

namespace A271731.P383627883424375912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A006094 (n + 1)).toNat * A271423 (A052905 n + (4 - (n : ℤ))).toNat

end

end A271731.P383627883424375912

/-!
# A271732: Number of set partitions of [n] with maximal block length multiplicity equal to three.

The programs for A271732, there is no canonical definition to state claims against.
-/

/-! ## A271732.P5966891391455795734

`A271423(A167614(n+2))`
-/

namespace A271732.P5966891391455795734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271423 (A167614 (n + 2)).toNat

end

end A271732.P5966891391455795734

/-! ## A271732.P13311415402036189036

`A271423(A052905(n)+8)`
-/

namespace A271732.P13311415402036189036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271423 (A052905 n + 8).toNat

end

end A271732.P13311415402036189036

/-! ## A271732.P15960691851568141365

`A271423(eq[3, A002262(n)])`
-/

namespace A271732.P15960691851568141365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271423 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271732.P15960691851568141365

/-! ## A271732.P6161878168544010915

`A271423(A000096(n+2)+4)`
-/

namespace A271732.P6161878168544010915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271423 (A000096 (n + 2) + 4).toNat

end

end A271732.P6161878168544010915

/-! ## A271732.P4974943055157220286

`A271423(A166136(n+2)-3)`
-/

namespace A271732.P4974943055157220286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271423 (A166136 (n + 2) - 3).toNat

end

end A271732.P4974943055157220286

/-! ## A271732.P13040695269809456267

`A271423(A034856(n+2)+5)`
-/

namespace A271732.P13040695269809456267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271423 (A034856 (n + 2) + 5).toNat

end

end A271732.P13040695269809456267

/-! ## A271732.P9404160031394375859

`A271423(A046691(n+1)+7)`
-/

namespace A271732.P9404160031394375859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271423 (A046691 (n + 1) + 7).toNat

end

end A271732.P9404160031394375859

/-! ## A271732.P8943123122235586607

`A271423(eq[1, A104763(n+1)-2])`
-/

namespace A271732.P8943123122235586607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271423 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271732.P8943123122235586607

/-! ## A271732.P12786288896259635043

`A271423(eq[1, A144328(n+1)-2])`
-/

namespace A271732.P12786288896259635043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271423 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271732.P12786288896259635043

/-! ## A271732.P3340222777165814140

`A271423(eq[2, A002260(n+1)-2])`
-/

namespace A271732.P3340222777165814140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271423 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271732.P3340222777165814140

/-!
# A271733: Number of set partitions of [n] with maximal block length multiplicity equal to four.

The programs for A271733, there is no canonical definition to state claims against.
-/

/-! ## A271733.P14397995798318027872

`A271423(eq[4, A002262(n)])`
-/

namespace A271733.P14397995798318027872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271423 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271733.P14397995798318027872

/-! ## A271733.P17139208795425913070

`A271423(A000124(n+4)+3)`
-/

namespace A271733.P17139208795425913070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271423 (A000124 (n + 4) + 3).toNat

end

end A271733.P17139208795425913070

/-! ## A271733.P6778005604444398557

`A271423(A034856(n+3)+6)`
-/

namespace A271733.P6778005604444398557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271423 (A034856 (n + 3) + 6).toNat

end

end A271733.P6778005604444398557

/-! ## A271733.P10575500394245570278

`A271423(A055998(n+2)+7)`
-/

namespace A271733.P10575500394245570278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271423 (A055998 (n + 2) + 7).toNat

end

end A271733.P10575500394245570278

/-! ## A271733.P12479705405442256534

`A271423(A165157(2*(n+2))+7)`
-/

namespace A271733.P12479705405442256534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271423 (A165157 (2 * (n + 2)) + 7).toNat

end

end A271733.P12479705405442256534

/-! ## A271733.P17272018233176990503

`A271423(eq[2, A144328(n+1)-2])`
-/

namespace A271733.P17272018233176990503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271423 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271733.P17272018233176990503

/-! ## A271733.P3595791649449015405

`A271423(eq[2, A144328(n+1)/2])`
-/

namespace A271733.P3595791649449015405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144328 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271423 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A271733.P3595791649449015405

/-! ## A271733.P12154878082453566792

`A271423(A000217(n+9)-A016861(n+6))`
-/

namespace A271733.P12154878082453566792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271423 (A000217 (n + 9) - A016861 (n + 6)).toNat

end

end A271733.P12154878082453566792

/-! ## A271733.P14551188967030982874

`A271423(A032766(2*n+9)+A000217(n+1))`
-/

namespace A271733.P14551188967030982874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271423 (A032766 (2 * n + 9) + A000217 (n + 1)).toNat

end

end A271733.P14551188967030982874

/-!
# A271734: Number of set partitions of [n] with maximal block length multiplicity equal to five.

The programs for A271734, there is no canonical definition to state claims against.
-/

/-! ## A271734.P13823788216881497523

`A271423(A167499(n+4))`
-/

namespace A271734.P13823788216881497523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271423 (A167499 (n + 4)).toNat

end

end A271734.P13823788216881497523

/-! ## A271734.P9653561199038361094

`A271423(eq[5, A002262(n)])`
-/

namespace A271734.P9653561199038361094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271423 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271734.P9653561199038361094

/-! ## A271734.P12702952354172697817

`A271423(eq[32, A059268(n)])`
-/

namespace A271734.P12702952354172697817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271423 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271734.P12702952354172697817

/-! ## A271734.P7487930665678079464

`A271423(A027379(n+3)+8)`
-/

namespace A271734.P7487930665678079464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271423 (A027379 (n + 3) + 8).toNat

end

end A271734.P7487930665678079464

/-! ## A271734.P9483106051850459246

`A271423(A046691(n+3)+9)`
-/

namespace A271734.P9483106051850459246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271423 (A046691 (n + 3) + 9).toNat

end

end A271734.P9483106051850459246

/-! ## A271734.P8923740907192906533

`A271423(eq[9, A099375(n)]+10)`
-/

namespace A271734.P8923740907192906533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271423 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 10)

end

end A271734.P8923740907192906533

/-!
# A271735: Number of set partitions of [n] with maximal block length multiplicity equal to six.

The programs for A271735, there is no canonical definition to state claims against.
-/

/-! ## A271735.P12130383464871657554

`A271423(A166136(n+5))`
-/

namespace A271735.P12130383464871657554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271423 (A166136 (n + 5)).toNat

end

end A271735.P12130383464871657554

/-! ## A271735.P12276780473421830829

`A271423(eq[6, A002262(n)])`
-/

namespace A271735.P12276780473421830829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271423 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271735.P12276780473421830829

/-! ## A271735.P11757815854109784778

`A271423(eq[7, A002260(n+1)])`
-/

namespace A271735.P11757815854109784778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271423 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271735.P11757815854109784778

/-! ## A271735.P17338070566035357311

`A271423(A016861(n+5)+A000217(n+1))`
-/

namespace A271735.P17338070566035357311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271423 (A016861 (n + 5) + A000217 (n + 1)).toNat

end

end A271735.P17338070566035357311

/-! ## A271735.P4226394324409317306

`A271423(A016028(n+7)+A005843(n+7))`
-/

namespace A271735.P4226394324409317306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271423 (A016028 (n + 7) + A005843 (n + 7)).toNat

end

end A271735.P4226394324409317306

/-! ## A271735.P93929588591890846

`A271423(A027379(n+9)-A016861(n+7))`
-/

namespace A271735.P93929588591890846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271423 (A027379 (n + 9) - A016861 (n + 7)).toNat

end

end A271735.P93929588591890846

/-!
# A271736: Number of set partitions of [n] with maximal block length multiplicity equal to seven.

The programs for A271736, there is no canonical definition to state claims against.
-/

/-! ## A271736.P1923155103922877526

`A271423(A167487(n+6))`
-/

namespace A271736.P1923155103922877526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271423 (A167487 (n + 6)).toNat

end

end A271736.P1923155103922877526

/-! ## A271736.P2727328143916655968

`A271423(eq[7, A002262(n)])`
-/

namespace A271736.P2727328143916655968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271423 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271736.P2727328143916655968

/-! ## A271736.P4351517746730973695

`A271423(eq[8, A002260(n+1)])`
-/

namespace A271736.P4351517746730973695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271423 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271736.P4351517746730973695

/-! ## A271736.P11334797673954381789

`A271423(eq[21, A104763(n+1)])`
-/

namespace A271736.P11334797673954381789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271423 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271736.P11334797673954381789

/-! ## A271736.P9628079202573617027

`A271423(A008586(n+7)+A000124(n+3))`
-/

namespace A271736.P9628079202573617027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271423 (A008586 (n + 7) + A000124 (n + 3)).toNat

end

end A271736.P9628079202573617027

/-!
# A271737: Number of set partitions of [n] with maximal block length multiplicity equal to eight.

The programs for A271737, there is no canonical definition to state claims against.
-/

/-! ## A271737.P13666577743577517438

`A271423(A167499(n+7)+3)`
-/

namespace A271737.P13666577743577517438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271423 (A167499 (n + 7) + 3).toNat

end

end A271737.P13666577743577517438

/-! ## A271737.P14552886931896301369

`A271423(A167614(n+7)+5)`
-/

namespace A271737.P14552886931896301369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271423 (A167614 (n + 7) + 5).toNat

end

end A271737.P14552886931896301369

/-! ## A271737.P8761143712481427141

`A271423(A000124(n+8)+7)`
-/

namespace A271737.P8761143712481427141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271423 (A000124 (n + 8) + 7).toNat

end

end A271737.P8761143712481427141

/-! ## A271737.P9207049365560239131

`A271423(A000217(n+8)+8)`
-/

namespace A271737.P9207049365560239131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271423 (A000217 (n + 8) + 8).toNat

end

end A271737.P9207049365560239131

/-! ## A271737.P2330618924665852703

`A271423(A027379(n+1)+A016861(n+8))`
-/

namespace A271737.P2330618924665852703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271423 (A027379 (n + 1) + A016861 (n + 8)).toNat

end

end A271737.P2330618924665852703

/-!
# A271738: Number of set partitions of [n] with maximal block length multiplicity equal to nine.

The programs for A271738, there is no canonical definition to state claims against.
-/

/-! ## A271738.P8580764386260670416

`A271423(eq[9, A002262(n)])`
-/

namespace A271738.P8580764386260670416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271423 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271738.P8580764386260670416

/-! ## A271738.P13868954551948997289

`A271423(A000217(n+9)+9)`
-/

namespace A271738.P13868954551948997289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271423 (A000217 (n + 9) + 9).toNat

end

end A271738.P13868954551948997289

/-! ## A271738.P17063088880255732560

`A271423(eq[9, A144328(n+1)])`
-/

namespace A271738.P17063088880255732560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271423 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271738.P17063088880255732560

/-! ## A271738.P6792775273380159406

`A271423(eq[10, A002260(n+1)])`
-/

namespace A271738.P6792775273380159406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271423 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271738.P6792775273380159406

/-! ## A271738.P3157797852225690501

`A271423(eq[10, A134868(n+1)])`
-/

namespace A271738.P3157797852225690501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271423 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271738.P3157797852225690501

/-! ## A271738.P7363948454038840385

`A271423(eq[19, A158405(n+1)])`
-/

namespace A271738.P7363948454038840385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271423 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271738.P7363948454038840385

/-!
# A271739: Number of set partitions of [n] with maximal block length multiplicity equal to ten.

The programs for A271739, there is no canonical definition to state claims against.
-/

/-! ## A271739.P12297289327167683293

`A271423(eq[10, A002262(n)])`
-/

namespace A271739.P12297289327167683293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271423 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271739.P12297289327167683293

/-! ## A271739.P14612784823201449719

`A271423(eq[10, A144328(n+1)])`
-/

namespace A271739.P14612784823201449719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271423 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271739.P14612784823201449719

/-! ## A271739.P9326300504273114283

`A271423(eq[11, A002260(n+1)])`
-/

namespace A271739.P9326300504273114283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271423 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271739.P9326300504273114283

/-! ## A271739.P5857118236554812988

`A271423(eq[11, A134868(n+1)])`
-/

namespace A271739.P5857118236554812988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271423 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271739.P5857118236554812988

/-! ## A271739.P3317284763872342381

`A271423(eq[31, A037126(n+1)])`
-/

namespace A271739.P3317284763872342381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271423 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271739.P3317284763872342381

/-! ## A271739.P12452180887651681158

`A271423(A052905(2*(n+4)-n)+4-n)`
-/

namespace A271739.P12452180887651681158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271423 (A052905 (2 * (n + 4) - n) + (4 - (n : ℤ))).toNat

end

end A271739.P12452180887651681158

/-!
# A271740: a(n) = 3*n^2 - 2*n + 2.

The programs for A271740, the canonical program `A271740.P6949473724138630553` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271740 has offset 0).

The definition of A271740 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n²-2*n+2` (program `A271740.P6949473724138630553`, by `A271740.P6949473724138630553.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A271740.P6949473724138630553

`3*n²-2*n+2`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A271740

/-- `3*n²-2*n+2` -/
def P6949473724138630553.Spec : Prop :=
  ∀ n, P6949473724138630553.a n = A271740 n

theorem P6949473724138630553.correct : P6949473724138630553.Spec := by
  intro n
  simp only [A271740]

end A271740

/-! ## A271740.P14540078671199566095

`∑[a(n-1)+6]` with `a(0)=2, a(1)=1`
-/

namespace A271740.P14540078671199566095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271740.P14540078671199566095

namespace A271740

/-- `∑[a(n-1)+6]` -/
def P14540078671199566095.Spec : Prop :=
  ∀ n, (P14540078671199566095.a n : ℤ) = A271740 n

end A271740

/-! ## A271740.P9103830317870876681

`or(2, n*(3*n-2))`
-/

namespace A271740.P9103830317870876681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 ((n : ℤ) * ((3 * n : ℤ) - 2))

end

end A271740.P9103830317870876681

namespace A271740

/-- `or(2, n*(3*n-2))` -/
def P9103830317870876681.Spec : Prop :=
  ∀ n, P9103830317870876681.a n = A271740 n

end A271740

/-! ## A271740.P9620354934156803430

`xor(2, n*(3*n-2))`
-/

namespace A271740.P9620354934156803430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 ((n : ℤ) * ((3 * n : ℤ) - 2))

end

end A271740.P9620354934156803430

namespace A271740

/-- `xor(2, n*(3*n-2))` -/
def P9620354934156803430.Spec : Prop :=
  ∀ n, P9620354934156803430.a n = A271740 n

end A271740

/-! ## A271740.P16607001697032245939

`∑[ogf((2-3x+7x^2)/(1-2x+x^2))]`
-/

namespace A271740.P16607001697032245939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -3, 7] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271740.P16607001697032245939

namespace A271740

/-- `∑[ogf((2-3x+7x^2)/(1-2x+x^2))]` -/
def P16607001697032245939.Spec : Prop :=
  ∀ n, P16607001697032245939.a n = A271740 n

end A271740

/-! ## A271740.P8086329001112210854

`ogf((2-3x+7x^2)/(1-3x+3x^2-x^3))`
-/

namespace A271740.P8086329001112210854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -3, 7] [1, -3, 3, -1] n

end

end A271740.P8086329001112210854

namespace A271740

/-- `ogf((2-3x+7x^2)/(1-3x+3x^2-x^3))` -/
def P8086329001112210854.Spec : Prop :=
  ∀ n, P8086329001112210854.a n = A271740 n

end A271740

/-! ## A271740.P17154926976578250396

`floor(6*n+a(n-1)-5)` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A271740.P17154926976578250396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (6 * n : ℤ) + (a (n - 1) - 5)

end

end A271740.P17154926976578250396

namespace A271740

/-- `floor(6*n+a(n-1)-5)` -/
def P17154926976578250396.Spec : Prop :=
  ∀ n, P17154926976578250396.a n = A271740 n

theorem P17154926976578250396.correct : P17154926976578250396.Spec := by
  intro n
  induction n with
  | zero => simp [A271740, A271740.P17154926976578250396.a, A271740.P6949473724138630553.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A271740, Nat.add_sub_cancel, A271740.P17154926976578250396.a, A271740.P6949473724138630553.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A271740

/-! ## A271740.P15304412824422558048

`floor(6*n-(5-a(n-1)))` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A271740.P15304412824422558048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (6 * n : ℤ) - (5 - a (n - 1))

end

end A271740.P15304412824422558048

namespace A271740

/-- `floor(6*n-(5-a(n-1)))` -/
def P15304412824422558048.Spec : Prop :=
  ∀ n, P15304412824422558048.a n = A271740 n

theorem P15304412824422558048.correct : P15304412824422558048.Spec := by
  intro n
  induction n with
  | zero => simp [A271740, A271740.P15304412824422558048.a, A271740.P6949473724138630553.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A271740, Nat.add_sub_cancel, A271740.P15304412824422558048.a, A271740.P6949473724138630553.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A271740

/-! ## A271740.P5544992328469346573

`Δ[C(n+1, 2)+(n-1)^3]`
-/

namespace A271740.P5544992328469346573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) 2 : ℤ) + ((n : ℤ) - 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271740.P5544992328469346573

namespace A271740

/-- `Δ[C(n+1, 2)+(n-1)^3]` -/
def P5544992328469346573.Spec : Prop :=
  ∀ n, P5544992328469346573.a n = A271740 n

end A271740

/-! ## A271740.P2530425455550691583

`∑[2*a(n-1)-a(n-2)]` with `a(0)=2, a(1)=1, a(2)=7`
-/

namespace A271740.P2530425455550691583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 7] fun n f1 =>
  2 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271740.P2530425455550691583

namespace A271740

/-- `∑[2*a(n-1)-a(n-2)]` -/
def P2530425455550691583.Spec : Prop :=
  ∀ n, P2530425455550691583.a n = A271740 n

end A271740

/-! ## A271740.P4916286159611684254

`2*(a(n-1)+3-a(n-2)/2)` with `a(0)=2, a(1)=3`
-/

namespace A271740.P4916286159611684254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 3] fun n a =>
  2 * (a (n - 1) + (3 - a (n - 2) / 2))

end

end A271740.P4916286159611684254

namespace A271740

/-- `2*(a(n-1)+3-a(n-2)/2)` -/
def P4916286159611684254.Spec : Prop :=
  ∀ n, P4916286159611684254.a n = (A271740 n : ℚ)

theorem P4916286159611684254.correct : P4916286159611684254.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A271740, Nat.add_sub_cancel, A271740.P4916286159611684254.a, A271740.P6949473724138630553.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A271740, Nat.add_sub_cancel, A271740.P4916286159611684254.a, A271740.P6949473724138630553.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A271740

/-! ## A271740.P8868937543413850261

`2*(3-(a(n-2)/2-a(n-1)))` with `a(0)=2, a(1)=3`
-/

namespace A271740.P8868937543413850261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 3] fun n a =>
  2 * (3 - (a (n - 2) / 2 - a (n - 1)))

end

end A271740.P8868937543413850261

namespace A271740

/-- `2*(3-(a(n-2)/2-a(n-1)))` -/
def P8868937543413850261.Spec : Prop :=
  ∀ n, P8868937543413850261.a n = (A271740 n : ℚ)

theorem P8868937543413850261.correct : P8868937543413850261.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A271740, Nat.add_sub_cancel, A271740.P8868937543413850261.a, A271740.P6949473724138630553.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A271740, Nat.add_sub_cancel, A271740.P8868937543413850261.a, A271740.P6949473724138630553.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A271740

/-! ## A271740.P8054645855753158804

`2*(A000567(n)/2+1)`
-/

namespace A271740.P8054645855753158804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A000567 n : ℚ) / 2 + 1)

end

end A271740.P8054645855753158804

namespace A271740

/-- `2*(A000567(n)/2+1)` -/
def P8054645855753158804.Spec : Prop :=
  ∀ n, P8054645855753158804.a n = (A271740 n : ℚ)

end A271740

/-! ## A271740.P2835563405629770222

`(A294315(n)+2)/(n+1)`
-/

namespace A271740.P2835563405629770222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294315 n + 2 : ℚ) / (n + 1 : ℚ)

end

end A271740.P2835563405629770222

namespace A271740

/-- `(A294315(n)+2)/(n+1)` -/
def P2835563405629770222.Spec : Prop :=
  ∀ n, P2835563405629770222.a n = (A271740 n : ℚ)

end A271740

/-! ## A271740.P13018264987558128810

`(A033568(n)+3+n)/2`
-/

namespace A271740.P13018264987558128810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033568 n + 3 + (n : ℤ) : ℚ) / 2

end

end A271740.P13018264987558128810

namespace A271740

/-- `(A033568(n)+3+n)/2` -/
def P13018264987558128810.Spec : Prop :=
  ∀ n, P13018264987558128810.a n = (A271740 n : ℚ)

end A271740

/-! ## A271740.P4068735315680820765

`(n²*A016777(n)+2)/(n+1)`
-/

namespace A271740.P4068735315680820765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) * A016777 n + 2 : ℚ) / (n + 1 : ℚ)

end

end A271740.P4068735315680820765

namespace A271740

/-- `(n²*A016777(n)+2)/(n+1)` -/
def P4068735315680820765.Spec : Prop :=
  ∀ n, P4068735315680820765.a n = (A271740 n : ℚ)

end A271740

/-! ## A271740.P579919538809923632

`A129111(n)%A235332(n)`
-/

namespace A271740.P579919538809923632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129111 n) (A235332 n)

end

end A271740.P579919538809923632

namespace A271740

/-- `A129111(n)%A235332(n)` -/
def P579919538809923632.Spec : Prop :=
  ∀ n, P579919538809923632.a n = A271740 n

end A271740

/-! ## A271740.P5972959096848678486

`A128822(n+1)%A129109(n)`
-/

namespace A271740.P5972959096848678486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128822 (n + 1)) (A129109 n)

end

end A271740.P5972959096848678486

namespace A271740

/-- `A128822(n+1)%A129109(n)` -/
def P5972959096848678486.Spec : Prop :=
  ∀ n, P5972959096848678486.a n = A271740 n

end A271740

/-! ## A271740.P17902653912133828333

`A229014(n+1)%A027965(n+2)`
-/

namespace A271740.P17902653912133828333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A229014 (n + 1)) (A027965 (n + 2))

end

end A271740.P17902653912133828333

namespace A271740

/-- `A229014(n+1)%A027965(n+2)` -/
def P17902653912133828333.Spec : Prop :=
  ∀ n, P17902653912133828333.a n = A271740 n

end A271740

/-!
# A271743: Number of set partitions of [n] such that 4 is the largest element of the last block.

The programs for A271743, the canonical program `A271743.P17982373825395148856` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271743 has offset 4).

The definition of A271743 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A271743.P17982373825395148856

`6*a(n-1)-11*a(n-2)+6*a(n-3)` with `a(0)=10, a(1)=15, a(2)=29, a(3)=63`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A271743

/-- `6*a(n-1)-11*a(n-2)+6*a(n-3)` -/
def P17982373825395148856.Spec : Prop :=
  ∀ n, P17982373825395148856.a n = A271743 (n + 4)

theorem P17982373825395148856.correct : P17982373825395148856.Spec := by
  intro n
  simp only [A271743, Nat.add_sub_cancel]

end A271743

/-! ## A271743.P15304221276998746567

`A362316(n)+A231643(n)`
-/

namespace A271743.P15304221276998746567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362316 n + A231643 n

end

end A271743.P15304221276998746567

namespace A271743

/-- `A362316(n)+A231643(n)` -/
def P15304221276998746567.Spec : Prop :=
  ∀ n, P15304221276998746567.a n = A271743 (n + 4)

end A271743

/-! ## A271743.P5790411613131347283

`A001550(n)+or(1, 3*A000051(n))`
-/

namespace A271743.P5790411613131347283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001550 n + Int.lor 1 (3 * A000051 n)

end

end A271743.P5790411613131347283

namespace A271743

/-- `A001550(n)+or(1, 3*A000051(n))` -/
def P5790411613131347283.Spec : Prop :=
  ∀ n, P5790411613131347283.a n = A271743 (n + 4)

end A271743

/-! ## A271743.P15886332763950751177

`A068156(n)+A254362(n)-A126646(n)`
-/

namespace A271743.P15886332763950751177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068156 n + (A254362 n - A126646 n)

end

end A271743.P15886332763950751177

namespace A271743

/-- `A068156(n)+A254362(n)-A126646(n)` -/
def P15886332763950751177.Spec : Prop :=
  ∀ n, P15886332763950751177.a n = A271743 (n + 4)

end A271743

/-! ## A271743.P2759127497601471731

`A254362(n)+and(A000225(n), A000918(n))`
-/

namespace A271743.P2759127497601471731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254362 n + Int.land (A000225 n) (A000918 n)

end

end A271743.P2759127497601471731

namespace A271743

/-- `A254362(n)+and(A000225(n), A000918(n))` -/
def P2759127497601471731.Spec : Prop :=
  ∀ n, P2759127497601471731.a n = A271743 (n + 4)

end A271743

/-! ## A271743.P1047877105443771334

`A000051(n+1)+A259821(n)+A000051(n+1)`
-/

namespace A271743.P1047877105443771334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (n + 1) + (A259821 n + A000051 (n + 1))

end

end A271743.P1047877105443771334

namespace A271743

/-- `A000051(n+1)+A259821(n)+A000051(n+1)` -/
def P1047877105443771334.Spec : Prop :=
  ∀ n, P1047877105443771334.a n = A271743 (n + 4)

end A271743

/-! ## A271743.P3823942427461112655

`A198635(n)+A135913(n)`
-/

namespace A271743.P3823942427461112655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198635 n + A135913 n

end

end A271743.P3823942427461112655

namespace A271743

/-- `A198635(n)+A135913(n)` -/
def P3823942427461112655.Spec : Prop :=
  ∀ n, P3823942427461112655.a n = A271743 (n + 4)

end A271743

/-! ## A271743.P2407275430414345946

`A271466(A167614(n+2)+1)`
-/

namespace A271743.P2407275430414345946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (A167614 (n + 2) + 1).toNat

end

end A271743.P2407275430414345946

namespace A271743

/-- `A271466(A167614(n+2)+1)` -/
def P2407275430414345946.Spec : Prop :=
  ∀ n, P2407275430414345946.a n = A271743 (n + 4)

end A271743

/-! ## A271743.P15113644602163673239

`A271466(A166136(n+2)-2)`
-/

namespace A271743.P15113644602163673239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (A166136 (n + 2) - 2).toNat

end

end A271743.P15113644602163673239

namespace A271743

/-- `A271466(A166136(n+2)-2)` -/
def P15113644602163673239.Spec : Prop :=
  ∀ n, P15113644602163673239.a n = A271743 (n + 4)

end A271743

/-! ## A271743.P12354777735874438728

`A271466(A000124(n+3)+3)`
-/

namespace A271743.P12354777735874438728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (A000124 (n + 3) + 3).toNat

end

end A271743.P12354777735874438728

namespace A271743

/-- `A271466(A000124(n+3)+3)` -/
def P12354777735874438728.Spec : Prop :=
  ∀ n, P12354777735874438728.a n = A271743 (n + 4)

end A271743

/-!
# A271744: Number of set partitions of [n] such that 5 is the largest element of the last block.

The programs for A271744, there is no canonical definition to state claims against.
-/

/-! ## A271744.P15547643669704762531

`A271466(A167499(n+3))`
-/

namespace A271744.P15547643669704762531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (A167499 (n + 3)).toNat

end

end A271744.P15547643669704762531

/-! ## A271744.P275613948659713643

`A271466(A155212(n)+13)`
-/

namespace A271744.P275613948659713643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (A155212 n + 13).toNat

end

end A271744.P275613948659713643

/-! ## A271744.P14925210923301886439

`A271466(A056000(n)+15)`
-/

namespace A271744.P14925210923301886439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (A056000 n + 15).toNat

end

end A271744.P14925210923301886439

/-! ## A271744.P8343313224452408295

`A271466(A000217(n+4)+5)`
-/

namespace A271744.P8343313224452408295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (A000217 (n + 4) + 5).toNat

end

end A271744.P8343313224452408295

/-! ## A271744.P12705096976052030105

`A271466(A034856(n+3)+7)`
-/

namespace A271744.P12705096976052030105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (A034856 (n + 3) + 7).toNat

end

end A271744.P12705096976052030105

/-! ## A271744.P17606054858042400894

`A271466(A055998(n+2)+8)`
-/

namespace A271744.P17606054858042400894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (A055998 (n + 2) + 8).toNat

end

end A271744.P17606054858042400894

/-! ## A271744.P12515771614314936821

`A271466(A020705(n+1)+A167614(n+2)+1)`
-/

namespace A271744.P12515771614314936821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (A020705 (n + 1) + (A167614 (n + 2) + 1)).toNat

end

end A271744.P12515771614314936821

/-!
# A271745: Number of set partitions of [n] such that 6 is the largest element of the last block.

The programs for A271745, there is no canonical definition to state claims against.
-/

/-! ## A271745.P14254133670948527154

`A271466(A166136(n+4))`
-/

namespace A271745.P14254133670948527154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (A166136 (n + 4)).toNat

end

end A271745.P14254133670948527154

/-! ## A271745.P8344040899698382381

`A271466(Δ[A264443(n)]+10)`
-/

namespace A271745.P8344040899698382381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (f1 (n + 1) - f1 n + 10).toNat

end

end A271745.P8344040899698382381

/-! ## A271745.P7698472112429202160

`A271466(A167499(n+4)+1)`
-/

namespace A271745.P7698472112429202160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (A167499 (n + 4) + 1).toNat

end

end A271745.P7698472112429202160

/-! ## A271745.P6493330008362571373

`A271466(A000124(n+5)+5)`
-/

namespace A271745.P6493330008362571373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (A000124 (n + 5) + 5).toNat

end

end A271745.P6493330008362571373

/-! ## A271745.P11849536200732356024

`A271466(A000217(n+5)+6)`
-/

namespace A271745.P11849536200732356024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (A000217 (n + 5) + 6).toNat

end

end A271745.P11849536200732356024

/-!
# A271746: Number of set partitions of [n] such that 7 is the largest element of the last block.

The programs for A271746, there is no canonical definition to state claims against.
-/

/-! ## A271746.P11450932611873831244

`A271466(A167487(n+5))`
-/

namespace A271746.P11450932611873831244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (A167487 (n + 5)).toNat

end

end A271746.P11450932611873831244

/-! ## A271746.P13105705517745887901

`A271466(A056119(n)+28)`
-/

namespace A271746.P13105705517745887901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (A056119 n + 28).toNat

end

end A271746.P13105705517745887901

/-! ## A271746.P5408807381096892308

`A271466(A167499(n+5)+2)`
-/

namespace A271746.P5408807381096892308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (A167499 (n + 5) + 2).toNat

end

end A271746.P5408807381096892308

/-! ## A271746.P2337768257558756543

`A271466(A167614(n+5)+4)`
-/

namespace A271746.P2337768257558756543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (A167614 (n + 5) + 4).toNat

end

end A271746.P2337768257558756543

/-! ## A271746.P11373316647274028418

`A271466(A000217(n+6)+7)`
-/

namespace A271746.P11373316647274028418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (A000217 (n + 6) + 7).toNat

end

end A271746.P11373316647274028418

/-! ## A271746.P16200852511471853290

`A271466(A055998(n+4)+10)`
-/

namespace A271746.P16200852511471853290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (A055998 (n + 4) + 10).toNat

end

end A271746.P16200852511471853290

/-! ## A271746.P5320764413044794956

`A271466(A046691(n+4)+11)`
-/

namespace A271746.P5320764413044794956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (A046691 (n + 4) + 11).toNat

end

end A271746.P5320764413044794956

/-!
# A271747: Number of set partitions of [n] such that 8 is the largest element of the last block.

The programs for A271747, there is no canonical definition to state claims against.
-/

/-! ## A271747.P17205263905297306263

`A271466(A166136(n+6)+2)`
-/

namespace A271747.P17205263905297306263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (A166136 (n + 6) + 2).toNat

end

end A271747.P17205263905297306263

/-! ## A271747.P15728168620802106211

`A271466(A167499(n+6)+3)`
-/

namespace A271747.P15728168620802106211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (A167499 (n + 6) + 3).toNat

end

end A271747.P15728168620802106211

/-! ## A271747.P15766857605339607493

`A271466(A000124(n+7)+7)`
-/

namespace A271747.P15766857605339607493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (A000124 (n + 7) + 7).toNat

end

end A271747.P15766857605339607493

/-! ## A271747.P10286579473165723268

`A271466(A000217(n+7)+8)`
-/

namespace A271747.P10286579473165723268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (A000217 (n + 7) + 8).toNat

end

end A271747.P10286579473165723268

/-! ## A271747.P16623705241342187520

`A271466(A167614(n+7)-(n+3))`
-/

namespace A271747.P16623705241342187520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (A167614 (n + 7) - (n + 3 : ℤ)).toNat

end

end A271747.P16623705241342187520

/-!
# A271748: Number of set partitions of [n] such that 9 is the largest element of the last block.

The programs for A271748, there is no canonical definition to state claims against.
-/

/-! ## A271748.P9484192032088112624

`A271466(A167499(n+7)+4)`
-/

namespace A271748.P9484192032088112624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (A167499 (n + 7) + 4).toNat

end

end A271748.P9484192032088112624

/-! ## A271748.P1581299324914895782

`A271466(A000217(n+8)+9)`
-/

namespace A271748.P1581299324914895782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (A000217 (n + 8) + 9).toNat

end

end A271748.P1581299324914895782

/-! ## A271748.P10559664849295607120

`A271466(A000096(n+8)-(n-1))`
-/

namespace A271748.P10559664849295607120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (A000096 (n + 8) - ((n : ℤ) - 1)).toNat

end

end A271748.P10559664849295607120

/-! ## A271748.P12309384188771748380

`A271466(A000124(n+9)-(n+1))`
-/

namespace A271748.P12309384188771748380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (A000124 (n + 9) - (n + 1 : ℤ)).toNat

end

end A271748.P12309384188771748380

/-! ## A271748.P325898079319437773

`A271466(A052905(n+7)-5-2*n)`
-/

namespace A271748.P325898079319437773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (A052905 (n + 7) - 5 - (2 * n : ℤ)).toNat

end

end A271748.P325898079319437773

/-! ## A271748.P15211042530782128659

`A271466(A133263(n+8)+A020742(n)-2*n)`
-/

namespace A271748.P15211042530782128659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (A133263 (n + 8) + A020742 n - (2 * n : ℤ)).toNat

end

end A271748.P15211042530782128659

/-!
# A271749: Number of set partitions of [n] such that 10 is the largest element of the last block.

The programs for A271749, there is no canonical definition to state claims against.
-/

/-! ## A271749.P5115011966087130603

`A271466(eq[11, A131818(n+1)])`
-/

namespace A271749.P5115011966087130603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271749.P5115011966087130603

/-! ## A271749.P103213107086955303

`A271466(eq[9, A130270(n+1)]+1)`
-/

namespace A271749.P103213107086955303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A271749.P103213107086955303

/-!
# A271750: a(1) = 1; a(n+1) = smallest Fibonacci number > a(n) with leading digit equal to the final digit of a(n).

The programs for A271750, there is no canonical definition to state claims against.
-/

/-! ## A271750.P6042303624633522586

`A097131(eq[A035327(n), A091298(n+1)])`
-/

namespace A271750.P6042303624633522586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091298 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097131 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A271750.P6042303624633522586

/-! ## A271750.P16366267026161151795

`A000045(∩[A154789(n+1), A222262(n+1)])`
-/

namespace A271750.P16366267026161151795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154789 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222262 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A271750.P16366267026161151795

/-!
# A271751: Period 10 zigzag sequence; repeat: [0, 1, 2, 3, 4, 5, 4, 3, 2, 1].

The programs for A271751, the canonical program `A271751.P16370695213938832626` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271751 has offset 0).

The definition of A271751 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A271751.P16370695213938832626

`abs(n-10*round(n/10))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A271751

/-- `abs(n-10*round(n/10))` -/
def P16370695213938832626.Spec : Prop :=
  ∀ n, P16370695213938832626.a n = A271751 n

theorem P16370695213938832626.correct : P16370695213938832626.Spec := by
  intro n
  simp only [A271751]

end A271751

/-!
# A271752: Number of set partitions of [n+1] such that n is the largest element of the last block.

The programs for A271752, there is no canonical definition to state claims against.
-/

/-! ## A271752.P14964556465759556710

`A271466(∑[n+2])`
-/

namespace A271752.P14964556465759556710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A271752.P14964556465759556710

/-! ## A271752.P4971274805776995369

`record[A271466(A000096(A324347(n)))]`
-/

namespace A271752.P4971274805776995369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (A000096 (A324347 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271752.P4971274805776995369

/-! ## A271752.P2105552399744719440

`record[A271466(A000096(A032742(n+1)))]`
-/

namespace A271752.P2105552399744719440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (A000096 (A032742 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271752.P2105552399744719440

/-! ## A271752.P8950211019394254750

`record[A271466(A000096(A026238(n+2)))]`
-/

namespace A271752.P8950211019394254750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (A000096 (A026238 (n + 2)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271752.P8950211019394254750

/-! ## A271752.P1701893248827683759

`A020985(n)²*A271466(A000096(n+1))`
-/

namespace A271752.P1701893248827683759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * A271466 (A000096 (n + 1)).toNat

end

end A271752.P1701893248827683759

/-! ## A271752.P5736490477359859305

`Δ[A186021(n)]-A000110(n)`
-/

namespace A271752.P5736490477359859305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186021 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000110 n

end

end A271752.P5736490477359859305

/-! ## A271752.P13730845927266701487

`Δ[A186021(n)-A005001(n)]`
-/

namespace A271752.P13730845927266701487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186021 n - A005001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271752.P13730845927266701487

/-! ## A271752.P6906882740676739340

`Δ[A186021(n)]-A108087(∑[n])`
-/

namespace A271752.P6906882740676739340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186021 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A108087 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A271752.P6906882740676739340

/-! ## A271752.P13706224856838028475

`Δ[A186021(n)]-A293024(∑[n]+n)`
-/

namespace A271752.P13706224856838028475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186021 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A293024 (∑ j ∈ Finset.range (n + 1), f2 j + n)

end

end A271752.P13706224856838028475

/-! ## A271752.P5275856606416517859

`A259691(A000124(n+1))-A000110(n)`
-/

namespace A271752.P5275856606416517859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259691 (A000124 (n + 1)).toNat - A000110 n

end

end A271752.P5275856606416517859

/-!
# A271753: Number of set partitions of [n+2] such that n is the largest element of the last block.

The programs for A271753, there is no canonical definition to state claims against.
-/

/-! ## A271753.P10400166426785914511

`A271466(∑[n+3]+1)`
-/

namespace A271753.P10400166426785914511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A271753.P10400166426785914511

/-! ## A271753.P5404860931416814954

`ceil(n/(n+1))*A271466(A000096(n+2)-1)`
-/

namespace A271753.P5404860931416814954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / (n + 1 : ℚ)⌉ * A271466 (A000096 (n + 2) - 1).toNat

end

end A271753.P5404860931416814954

/-! ## A271753.P9843506003524477016

`A000040(n+1)%2*A271466(A034856(n+2))`
-/

namespace A271753.P9843506003524477016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A271466 (A034856 (n + 2)).toNat

end

end A271753.P9843506003524477016

/-! ## A271753.P1893130710421813085

`A271752(n+2)-(A271752(n+1)+A000110(n+1))`
-/

namespace A271753.P1893130710421813085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271752 (n + 2) - (A271752 (n + 1) + A000110 (n + 1))

end

end A271753.P1893130710421813085

/-! ## A271753.P9807092908674089173

`A271466(A034856(n+2))^A050167(A001222(n+1))`
-/

namespace A271753.P9807092908674089173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271466 (A034856 (n + 2)).toNat : ℚ) ^ (A050167 (A001222 (n + 1)).toNat : ℤ)

end

end A271753.P9807092908674089173

/-! ## A271753.P12383965621007430314

`A271466(A034856(n+2))^A050167(A050167(n))`
-/

namespace A271753.P12383965621007430314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271466 (A034856 (n + 2)).toNat : ℚ) ^ (A050167 (A050167 n).toNat : ℤ)

end

end A271753.P12383965621007430314

/-!
# A271754: Number of set partitions of [n+3] such that n is the largest element of the last block.

The programs for A271754, there is no canonical definition to state claims against.
-/

/-! ## A271754.P4481153009267137684

`A271466(A027379(n+2))`
-/

namespace A271754.P4481153009267137684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (A027379 (n + 2)).toNat

end

end A271754.P4481153009267137684

/-! ## A271754.P12617039140360301912

`A271466(A055998(n+2))`
-/

namespace A271754.P12617039140360301912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (A055998 (n + 2)).toNat

end

end A271754.P12617039140360301912

/-! ## A271754.P13499949564062287840

`A271466(A155212(n)+5)`
-/

namespace A271754.P13499949564062287840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (A155212 n + 5).toNat

end

end A271754.P13499949564062287840

/-! ## A271754.P2125487876684140870

`A271466(eq[3, A193592(n)])`
-/

namespace A271754.P2125487876684140870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271754.P2125487876684140870

/-! ## A271754.P17048414191051336378

`A271466(A052905(n+1)+2)`
-/

namespace A271754.P17048414191051336378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (A052905 (n + 1) + 2).toNat

end

end A271754.P17048414191051336378

/-! ## A271754.P14706604716301563325

`A271466(A000217(n+4)-3)`
-/

namespace A271754.P14706604716301563325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (A000217 (n + 4) - 3).toNat

end

end A271754.P14706604716301563325

/-! ## A271754.P10342211415422570324

`A271466(eq[2, A185782(n+1)-2])`
-/

namespace A271754.P10342211415422570324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271754.P10342211415422570324

/-! ## A271754.P18109057546923305539

`A271466(eq[2, A185782(n+1)/2])`
-/

namespace A271754.P18109057546923305539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185782 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A271754.P18109057546923305539

/-! ## A271754.P18410055370507606653

`A271466(A000124(n+2)+2*n+3)`
-/

namespace A271754.P18410055370507606653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (A000124 (n + 2) + (2 * n + 3 : ℤ)).toNat

end

end A271754.P18410055370507606653

/-! ## A271754.P5310929206393216228

`A271466(A167614(n+1)+A005408(n))`
-/

namespace A271754.P5310929206393216228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (A167614 (n + 1) + A005408 n).toNat

end

end A271754.P5310929206393216228

/-!
# A271755: Number of set partitions of [n+4] such that n is the largest element of the last block.

The programs for A271755, there is no canonical definition to state claims against.
-/

/-! ## A271755.P17154064747979259034

`A271466(Δ[A264443(n)])`
-/

namespace A271755.P17154064747979259034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (f1 (n + 1) - f1 n).toNat

end

end A271755.P17154064747979259034

/-! ## A271755.P2575826010951401584

`A271466(A046691(n+3))`
-/

namespace A271755.P2575826010951401584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (A046691 (n + 3)).toNat

end

end A271755.P2575826010951401584

/-! ## A271755.P13160028158644065047

`A271466(eq[4, A193592(n)])`
-/

namespace A271755.P13160028158644065047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271755.P13160028158644065047

/-! ## A271755.P16965065154363892173

`A271466(Δ[A023545(n+1)])`
-/

namespace A271755.P16965065154363892173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (f1 (n + 1) - f1 n).toNat

end

end A271755.P16965065154363892173

/-! ## A271755.P2016435425190443460

`A271466(A052905(n+2)+1)`
-/

namespace A271755.P2016435425190443460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (A052905 (n + 2) + 1).toNat

end

end A271755.P2016435425190443460

/-! ## A271755.P5094803905911547319

`A271466(A055999(n+2)+2)`
-/

namespace A271755.P5094803905911547319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (A055999 (n + 2) + 2).toNat

end

end A271755.P5094803905911547319

/-! ## A271755.P4404633117900403565

`A271466(A167499(n+4)-9)`
-/

namespace A271755.P4404633117900403565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (A167499 (n + 4) - 9).toNat

end

end A271755.P4404633117900403565

/-! ## A271755.P329474250878680648

`A271466(eq[6, A002260(n+1)]-9)`
-/

namespace A271755.P329474250878680648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 9)

end

end A271755.P329474250878680648

/-! ## A271755.P2793962154484773361

`A271466(A000217(n+4)+n+1)`
-/

namespace A271755.P2793962154484773361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (A000217 (n + 4) + (n + 1 : ℤ)).toNat

end

end A271755.P2793962154484773361

/-! ## A271755.P4961934968162697403

`A271466(A264443(n+1)-A264443(n))`
-/

namespace A271755.P4961934968162697403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (A264443 (n + 1) - A264443 n).toNat

end

end A271755.P4961934968162697403

/-!
# A271756: Number of set partitions of [n+5] such that n is the largest element of the last block.

The programs for A271756, there is no canonical definition to state claims against.
-/

/-! ## A271756.P3977423754907408024

`A271466(∑[n+6]+10)`
-/

namespace A271756.P3977423754907408024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A271756.P3977423754907408024

/-! ## A271756.P4806468856523395530

`A057427(n)*A271466(A052905(n+3))`
-/

namespace A271756.P4806468856523395530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A271466 (A052905 (n + 3)).toNat

end

end A271756.P4806468856523395530

/-! ## A271756.P11955014535659473359

`A057427(n+1)+A271466(A052905(n+3))-1`
-/

namespace A271756.P11955014535659473359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) + (A271466 (A052905 (n + 3)).toNat - 1)

end

end A271756.P11955014535659473359

/-! ## A271756.P1499227865917879745

`A271466(A052905(n+3))+A126120(2*n+3)`
-/

namespace A271756.P1499227865917879745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (A052905 (n + 3)).toNat + A126120 (2 * n + 3)

end

end A271756.P1499227865917879745

/-! ## A271756.P17911737003818936593

`A271466(A052905(n+3))+A000038(3*n+4)`
-/

namespace A271756.P17911737003818936593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (A052905 (n + 3)).toNat + A000038 (3 * n + 4)

end

end A271756.P17911737003818936593

/-!
# A271757: Number of set partitions of [n+6] such that n is the largest element of the last block.

The programs for A271757, there is no canonical definition to state claims against.
-/

/-! ## A271757.P17179744323088243263

`A271466(A055999(n+4))`
-/

namespace A271757.P17179744323088243263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (A055999 (n + 4)).toNat

end

end A271757.P17179744323088243263

/-! ## A271757.P7907839516715330453

`A271466(eq[4, A219347(n)])`
-/

namespace A271757.P7907839516715330453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271757.P7907839516715330453

/-! ## A271757.P3860293505154233605

`A271466(Δ[A023551(n+2)])`
-/

namespace A271757.P3860293505154233605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (f1 (n + 1) - f1 n).toNat

end

end A271757.P3860293505154233605

/-! ## A271757.P7310753076508262503

`A271466(A000096(n+6)-5)`
-/

namespace A271757.P7310753076508262503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (A000096 (n + 6) - 5).toNat

end

end A271757.P7310753076508262503

/-! ## A271757.P7485567923214047540

`A271466(A000124(n+7)-7)`
-/

namespace A271757.P7485567923214047540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (A000124 (n + 7) - 7).toNat

end

end A271757.P7485567923214047540

/-! ## A271757.P4411075661048586249

`A271466(A000217(n+6)+n+1)`
-/

namespace A271757.P4411075661048586249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A271757.P4411075661048586249

/-! ## A271757.P7759123713827185675

`A271466(A152948(n+8)-(1-n))`
-/

namespace A271757.P7759123713827185675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (A152948 (n + 8) - (1 - (n : ℤ))).toNat

end

end A271757.P7759123713827185675

/-! ## A271757.P10515074561390495589

`A271466(A166136(n+4)+2*n+1)`
-/

namespace A271757.P10515074561390495589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (A166136 (n + 4) + (2 * n + 1 : ℤ)).toNat

end

end A271757.P10515074561390495589

/-! ## A271757.P11624749785770521013

`A271466(A046691(n+3)+2*n+11)`
-/

namespace A271757.P11624749785770521013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (A046691 (n + 3) + (2 * n + 11 : ℤ)).toNat

end

end A271757.P11624749785770521013

/-!
# A271758: Number of set partitions of [n+7] such that n is the largest element of the last block.

The programs for A271758, there is no canonical definition to state claims against.
-/

/-! ## A271758.P11801041682539294187

`A271466(A000217(n+8)-7)`
-/

namespace A271758.P11801041682539294187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (A000217 (n + 8) - 7).toNat

end

end A271758.P11801041682539294187

/-! ## A271758.P7686350602123637499

`A271466(A000096(n+6)+n+2)`
-/

namespace A271758.P7686350602123637499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (A000096 (n + 6) + (n + 2 : ℤ)).toNat

end

end A271758.P7686350602123637499

/-! ## A271758.P4527499583318914289

`A271466(A167499(n+5)+A144396(n+1))`
-/

namespace A271758.P4527499583318914289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (A167499 (n + 5) + A144396 (n + 1)).toNat

end

end A271758.P4527499583318914289

/-! ## A271758.P17526290534879897663

`A271466(A005408(n)+A000217(n+6)+7)`
-/

namespace A271758.P17526290534879897663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (A005408 n + (A000217 (n + 6) + 7)).toNat

end

end A271758.P17526290534879897663

/-!
# A271759: Number of set partitions of [n+8] such that n is the largest element of the last block.

The programs for A271759, there is no canonical definition to state claims against.
-/

/-! ## A271759.P12995813813958713035

`A271466(A155212(n+5))`
-/

namespace A271759.P12995813813958713035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (A155212 (n + 5)).toNat

end

end A271759.P12995813813958713035

/-! ## A271759.P3667710110201235364

`A271466(A034856(n+8)-6)`
-/

namespace A271759.P3667710110201235364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (A034856 (n + 8) - 6).toNat

end

end A271759.P3667710110201235364

/-! ## A271759.P1625639874707508220

`A271466(A000096(n+8)-7)`
-/

namespace A271759.P1625639874707508220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (A000096 (n + 8) - 7).toNat

end

end A271759.P1625639874707508220

/-! ## A271759.P7987962979143487661

`A271466(A000217(n+8)+n+1)`
-/

namespace A271759.P7987962979143487661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (A000217 (n + 8) + (n + 1 : ℤ)).toNat

end

end A271759.P7987962979143487661

/-! ## A271759.P1379919851550443848

`A271466(comp[2*n]+A166136(n+6)+2)`
-/

namespace A271759.P1379919851550443848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + (A166136 (n + 6) + 2)).toNat

end

end A271759.P1379919851550443848

/-!
# A271760: Number of set partitions of [n+9] such that n is the largest element of the last block.

The programs for A271760, there is no canonical definition to state claims against.
-/

/-! ## A271760.P13553409890389892147

`A271466(eq[8, A219347(n)])`
-/

namespace A271760.P13553409890389892147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271760.P13553409890389892147

/-! ## A271760.P5703547054696454509

`A271466(eq[9, A193592(n)])`
-/

namespace A271760.P5703547054696454509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271760.P5703547054696454509

/-! ## A271760.P7002015791521367610

`A271466(A155212(n+6)-1)`
-/

namespace A271760.P7002015791521367610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (A155212 (n + 6) - 1).toNat

end

end A271760.P7002015791521367610

/-! ## A271760.P3080103643393182450

`A271466(A000124(n+10)-10)`
-/

namespace A271760.P3080103643393182450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (A000124 (n + 10) - 10).toNat

end

end A271760.P3080103643393182450

/-! ## A271760.P15904943801294579913

`A271466(eq[16, A185782(n+1)])`
-/

namespace A271760.P15904943801294579913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271760.P15904943801294579913

/-!
# A271761: Number of set partitions of [n+10] such that n is the largest element of the last block.

The programs for A271761, there is no canonical definition to state claims against.
-/

/-! ## A271761.P16462921559903179515

`A271466(A056000(n+7))`
-/

namespace A271761.P16462921559903179515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (A056000 (n + 7)).toNat

end

end A271761.P16462921559903179515

/-! ## A271761.P17228609629316134577

`A271466(eq[10, A193592(n)])`
-/

namespace A271761.P17228609629316134577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271761.P17228609629316134577

/-! ## A271761.P17476417379323863436

`A271466(eq[10, A219347(n)])`
-/

namespace A271761.P17476417379323863436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271761.P17476417379323863436

/-! ## A271761.P12585744759378986681

`A271466(eq[11, A193739(n)]+1)`
-/

namespace A271761.P12585744759378986681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A271761.P12585744759378986681

/-! ## A271761.P18162567656594963253

`A271466(eq[18, A185782(n+1)])`
-/

namespace A271761.P18162567656594963253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271761.P18162567656594963253

/-!
# A271762: Number of set partitions of [n] with minimal block length multiplicity equal to two.

The programs for A271762, there is no canonical definition to state claims against.
-/

/-! ## A271762.P17922897357295914389

`A271424(∑[n+2]+3)`
-/

namespace A271762.P17922897357295914389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271424 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A271762.P17922897357295914389

/-! ## A271762.P6993996104158213167

`(char[1]+1)*A271424(A340266(n+1))`
-/

namespace A271762.P6993996104158213167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℤ) * A271424 (A340266 (n + 1)).toNat

end

end A271762.P6993996104158213167

/-! ## A271762.P3026324136039558204

`or(A000007(n), A271424(A340266(n+1)))`
-/

namespace A271762.P3026324136039558204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A271424 (A340266 (n + 1)).toNat)

end

end A271762.P3026324136039558204

/-! ## A271762.P4191191637488481532

`A271424(A340266(n+1))-A000007(n+3)`
-/

namespace A271762.P4191191637488481532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271424 (A340266 (n + 1)).toNat - A000007 (n + 3)

end

end A271762.P4191191637488481532

/-! ## A271762.P11624671513931004144

`A271424(A340266(n+1))-char[A000533(n+2)]`
-/

namespace A271762.P11624671513931004144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000533 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271424 (A340266 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A271762.P11624671513931004144

/-! ## A271762.P12205518457579017996

`A271424(A340266(n+1))+floor(A000038(n)/π)`
-/

namespace A271762.P12205518457579017996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271424 (A340266 (n + 1)).toNat + ⌊(A000038 n : ℝ) / Real.pi⌋

end

end A271762.P12205518457579017996

/-! ## A271762.P10209908999467362110

`A271424(A340266(n+1))+floor((A073424(n)+1)/π)`
-/

namespace A271762.P10209908999467362110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271424 (A340266 (n + 1)).toNat + ⌊(A073424 n + 1 : ℝ) / Real.pi⌋

end

end A271762.P10209908999467362110

/-!
# A271763: Number of set partitions of [n] with minimal block length multiplicity equal to three.

The programs for A271763, there is no canonical definition to state claims against.
-/

/-! ## A271763.P128012118860597443

`A271424(A167614(n+2))`
-/

namespace A271763.P128012118860597443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271424 (A167614 (n + 2)).toNat

end

end A271763.P128012118860597443

/-! ## A271763.P11717353674404847575

`A271424(A052905(n)+8)`
-/

namespace A271763.P11717353674404847575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271424 (A052905 n + 8).toNat

end

end A271763.P11717353674404847575

/-! ## A271763.P412271241295985156

`A271424(A055999(n)+9)`
-/

namespace A271763.P412271241295985156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271424 (A055999 n + 9).toNat

end

end A271763.P412271241295985156

/-! ## A271763.P2572989070827026452

`A271424(eq[3, A002262(n)])`
-/

namespace A271763.P2572989070827026452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271424 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271763.P2572989070827026452

/-! ## A271763.P8095205747482244564

`A271424(A340266(n+2)+1)`
-/

namespace A271763.P8095205747482244564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271424 (A340266 (n + 2) + 1).toNat

end

end A271763.P8095205747482244564

/-! ## A271763.P6484850037158431887

`A271424(A000124(n+3)+2)`
-/

namespace A271763.P6484850037158431887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271424 (A000124 (n + 3) + 2).toNat

end

end A271763.P6484850037158431887

/-! ## A271763.P11752205612417376124

`A271424(eq[1, A144328(n+1)-2])`
-/

namespace A271763.P11752205612417376124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271424 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271763.P11752205612417376124

/-! ## A271763.P4267448026700893867

`A271424(eq[2, A002260(n+1)-2])`
-/

namespace A271763.P4267448026700893867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271424 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271763.P4267448026700893867

/-! ## A271763.P17993323576839642103

`A271424(eq[2, A134868(n+1)-2])`
-/

namespace A271763.P17993323576839642103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271424 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271763.P17993323576839642103

/-! ## A271763.P11495535092063870205

`A271424(eq[2, A002260(n+1)/2])`
-/

namespace A271763.P11495535092063870205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271424 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A271763.P11495535092063870205

/-!
# A271764: Number of set partitions of [n] with minimal block length multiplicity equal to four.

The programs for A271764, there is no canonical definition to state claims against.
-/

/-! ## A271764.P12601610056069060038

`A271424(A155212(n)+12)`
-/

namespace A271764.P12601610056069060038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271424 (A155212 n + 12).toNat

end

end A271764.P12601610056069060038

/-! ## A271764.P5124212312427346932

`A271424(eq[4, A002262(n)])`
-/

namespace A271764.P5124212312427346932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271424 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271764.P5124212312427346932

/-! ## A271764.P5270950644110809288

`A271424(A167614(n+3)+1)`
-/

namespace A271764.P5270950644110809288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271424 (A167614 (n + 3) + 1).toNat

end

end A271764.P5270950644110809288

/-! ## A271764.P2851746999155667862

`A271424(A167499(n+3)-1)`
-/

namespace A271764.P2851746999155667862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271424 (A167499 (n + 3) - 1).toNat

end

end A271764.P2851746999155667862

/-! ## A271764.P12310545339016786667

`A271424(A055999(n+1)+10)`
-/

namespace A271764.P12310545339016786667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271424 (A055999 (n + 1) + 10).toNat

end

end A271764.P12310545339016786667

/-! ## A271764.P9356899124127454050

`A271424(eq[5, A002260(n+1)])`
-/

namespace A271764.P9356899124127454050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271424 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271764.P9356899124127454050

/-! ## A271764.P15305456924949540188

`A271424(eq[2, A144328(n+1)-2])`
-/

namespace A271764.P15305456924949540188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271424 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271764.P15305456924949540188

/-! ## A271764.P310054080771560928

`A271424(eq[2, A144328(n+1)/2])`
-/

namespace A271764.P310054080771560928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144328 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271424 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A271764.P310054080771560928

/-!
# A271765: Number of set partitions of [n] with minimal block length multiplicity equal to five.

The programs for A271765, there is no canonical definition to state claims against.
-/

/-! ## A271765.P11627648705502445015

`A271424(A167499(n+4))`
-/

namespace A271765.P11627648705502445015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271424 (A167499 (n + 4)).toNat

end

end A271765.P11627648705502445015

/-! ## A271765.P9099236899078448609

`A271424(eq[5, A002262(n)])`
-/

namespace A271765.P9099236899078448609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271424 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271765.P9099236899078448609

/-! ## A271765.P4907745296319921739

`A271424(A167614(n+4)+2)`
-/

namespace A271765.P4907745296319921739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271424 (A167614 (n + 4) + 2).toNat

end

end A271765.P4907745296319921739

/-! ## A271765.P4730943658195080004

`A271424(A000217(n+5)+5)`
-/

namespace A271765.P4730943658195080004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271424 (A000217 (n + 5) + 5).toNat

end

end A271765.P4730943658195080004

/-! ## A271765.P17750438872357694966

`A271424(A055999(n+2)+11)`
-/

namespace A271765.P17750438872357694966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271424 (A055999 (n + 2) + 11).toNat

end

end A271765.P17750438872357694966

/-! ## A271765.P9734942743479574005

`A271424(eq[6, A002260(n+1)])`
-/

namespace A271765.P9734942743479574005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271424 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271765.P9734942743479574005

/-!
# A271766: Number of set partitions of [n] with minimal block length multiplicity equal to six.

The programs for A271766, there is no canonical definition to state claims against.
-/

/-! ## A271766.P2627043675158997966

`A271424(eq[6, A002262(n)])`
-/

namespace A271766.P2627043675158997966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271424 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271766.P2627043675158997966

/-! ## A271766.P1034665726384295847

`A271424(A167499(n+5)+1)`
-/

namespace A271766.P1034665726384295847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271424 (A167499 (n + 5) + 1).toNat

end

end A271766.P1034665726384295847

/-! ## A271766.P11537375453635955029

`A271424(A000124(n+6)+5)`
-/

namespace A271766.P11537375453635955029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271424 (A000124 (n + 6) + 5).toNat

end

end A271766.P11537375453635955029

/-! ## A271766.P2348868783908509851

`A271424(A055999(n+3)+12)`
-/

namespace A271766.P2348868783908509851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271424 (A055999 (n + 3) + 12).toNat

end

end A271766.P2348868783908509851

/-! ## A271766.P2110443016423817846

`A271424(eq[7, A002260(n+1)])`
-/

namespace A271766.P2110443016423817846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271424 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271766.P2110443016423817846

/-!
# A271767: Number of set partitions of [n] with minimal block length multiplicity equal to seven.

The programs for A271767, there is no canonical definition to state claims against.
-/

/-! ## A271767.P3246882064751172804

`A271424(A167487(n+6))`
-/

namespace A271767.P3246882064751172804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271424 (A167487 (n + 6)).toNat

end

end A271767.P3246882064751172804

/-! ## A271767.P9688299837579088163

`A271424(eq[7, A002262(n)])`
-/

namespace A271767.P9688299837579088163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271424 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271767.P9688299837579088163

/-! ## A271767.P9716174472661124433

`A271424(eq[7, A144328(n+1)])`
-/

namespace A271767.P9716174472661124433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271424 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271767.P9716174472661124433

/-! ## A271767.P10182808531032465057

`A271424(eq[8, A002260(n+1)])`
-/

namespace A271767.P10182808531032465057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271424 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271767.P10182808531032465057

/-! ## A271767.P5135863752153494717

`A271424(eq[8, A134868(n+1)])`
-/

namespace A271767.P5135863752153494717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271424 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271767.P5135863752153494717

/-!
# A271768: Number of set partitions of [n] with minimal block length multiplicity equal to eight.

The programs for A271768, there is no canonical definition to state claims against.
-/

/-! ## A271768.P3800098065717763848

`∏[1-2*n]*A000035(C(n+7, 7))`
-/

namespace A271768.P3800098065717763848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A000035 (Nat.choose (n + 7) 7)

end

end A271768.P3800098065717763848

/-! ## A271768.P9608791579491118420

`∏[1-2*n]*A016389(-(n*(1-2*n)))`
-/

namespace A271768.P9608791579491118420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A016389 (-((n : ℤ) * (1 - (2 * n : ℤ)))).toNat

end

end A271768.P9608791579491118420

/-! ## A271768.P17098701013416980277

`A186492(A045927(n+1))`
-/

namespace A271768.P17098701013416980277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186492 (A045927 (n + 1)).toNat

end

end A271768.P17098701013416980277

/-! ## A271768.P16019375201964997877

`A186492(A139404(n+1))`
-/

namespace A271768.P16019375201964997877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186492 (A139404 (n + 1)).toNat

end

end A271768.P16019375201964997877

/-! ## A271768.P712886602165437293

`A371025(A227430(n)+n)`
-/

namespace A271768.P712886602165437293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371025 (A227430 n + (n : ℤ)).toNat

end

end A271768.P712886602165437293

/-!
# A271769: Number of set partitions of [n] with minimal block length multiplicity equal to nine.

The programs for A271769, there is no canonical definition to state claims against.
-/

/-! ## A271769.P1962715982970263532

`A271424(A000217(n+9)+9)`
-/

namespace A271769.P1962715982970263532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271424 (A000217 (n + 9) + 9).toNat

end

end A271769.P1962715982970263532

/-! ## A271769.P7182431909200946475

`C(-∏[2*n-1], A318920(n+1))`
-/

namespace A271769.P7182431909200946475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (-(∏ j ∈ Finset.range (n + 1), f1 j)).toNat (A318920 (n + 1)).toNat

end

end A271769.P7182431909200946475

/-! ## A271769.P3585750964858910371

`A123023((2*n)^A263364(n))`
-/

namespace A271769.P3585750964858910371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123023 (SequenceMachineLib.roundAway ((2 * n : ℚ) ^ (A263364 n : ℤ))).toNat

end

end A271769.P3585750964858910371

/-! ## A271769.P9196938848274297376

`C(A001147(n), A002140(n+1))`
-/

namespace A271769.P9196938848274297376
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001147 n).toNat (A002140 (n + 1)).toNat

end

end A271769.P9196938848274297376

/-! ## A271769.P7383178140026942255

`C(A001147(n), A007953(n+1)^n)`
-/

namespace A271769.P7383178140026942255
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001147 n).toNat (A007953 (n + 1) ^ n).toNat

end

end A271769.P7383178140026942255

/-!
# A271771: Maximum total Hamming distance between pairs of consecutive elements in any permutation of all 2^n binary words of length n.

The programs for A271771, the canonical program `A271771.P1012351759369634342` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271771 has offset 1).

The definition of A271771 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A271771.P1012351759369634342

`(n+1)*2^(n+1)-2^n-(n+1)+1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A271771

/-- `(n+1)*2^(n+1)-2^n-(n+1)+1` -/
def P1012351759369634342.Spec : Prop :=
  ∀ n, P1012351759369634342.a n = A271771 (n + 1)

theorem P1012351759369634342.correct : P1012351759369634342.Spec := by
  intro n
  simp only [A271771, Nat.add_sub_cancel]

end A271771

/-! ## A271771.P18111257748829244252

`abs(lcm(2^n, Δ[n²])-n)`
-/

namespace A271771.P18111257748829244252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Int.lcm (2 ^ n : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℤ) - (n : ℤ)|

end

end A271771.P18111257748829244252

namespace A271771

/-- `abs(lcm(2^n, Δ[n²])-n)` -/
def P18111257748829244252.Spec : Prop :=
  ∀ n, P18111257748829244252.a n = A271771 (n + 1)

end A271771

/-! ## A271771.P4571261605339763471

`abs(n-A014480(n))`
-/

namespace A271771.P4571261605339763471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A014480 n|

end

end A271771.P4571261605339763471

namespace A271771

/-- `abs(n-A014480(n))` -/
def P4571261605339763471.Spec : Prop :=
  ∀ n, P4571261605339763471.a n = A271771 (n + 1)

end A271771

/-! ## A271771.P1820236906938855764

`abs(2^n*A005408(n)-n)`
-/

namespace A271771.P1820236906938855764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ n : ℤ) * A005408 n - (n : ℤ)|

end

end A271771.P1820236906938855764

namespace A271771

/-- `abs(2^n*A005408(n)-n)` -/
def P1820236906938855764.Spec : Prop :=
  ∀ n, P1820236906938855764.a n = A271771 (n + 1)

end A271771

/-! ## A271771.P6910151659254855283

`abs(Δ[n²]*A000079(n)-n)`
-/

namespace A271771.P6910151659254855283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A000079 n - (n : ℤ)|

end

end A271771.P6910151659254855283

namespace A271771

/-- `abs(Δ[n²]*A000079(n)-n)` -/
def P6910151659254855283.Spec : Prop :=
  ∀ n, P6910151659254855283.a n = A271771 (n + 1)

end A271771

/-! ## A271771.P8078818030786126362

`abs(∑[A011782(n)]*Δ[n²]-n)`
-/

namespace A271771.P8078818030786126362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(∑ j ∈ Finset.range (n + 1), f1 j) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) - (n : ℤ)|

end

end A271771.P8078818030786126362

namespace A271771

/-- `abs(∑[A011782(n)]*Δ[n²]-n)` -/
def P8078818030786126362.Spec : Prop :=
  ∀ n, P8078818030786126362.a n = A271771 (n + 1)

end A271771

/-! ## A271771.P1458740687966789549

`abs((2*n+1)*Δ[A000225(n)]-n)`
-/

namespace A271771.P1458740687966789549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n + 1 : ℤ) * (f1 (n + 1) - f1 n) - (n : ℤ)|

end

end A271771.P1458740687966789549

namespace A271771

/-- `abs((2*n+1)*Δ[A000225(n)]-n)` -/
def P1458740687966789549.Spec : Prop :=
  ∀ n, P1458740687966789549.a n = A271771 (n + 1)

end A271771

/-! ## A271771.P11735259348321895568

`abs(comp[2*n]*A011782(n+1)-n)`
-/

namespace A271771.P11735259348321895568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) * A011782 (n + 1) - (n : ℤ)|

end

end A271771.P11735259348321895568

namespace A271771

/-- `abs(comp[2*n]*A011782(n+1)-n)` -/
def P11735259348321895568.Spec : Prop :=
  ∀ n, P11735259348321895568.a n = A271771 (n + 1)

end A271771

/-! ## A271771.P13402482838890690507

`abs(comp[2*n]*A131577(n+1)-n)`
-/

namespace A271771.P13402482838890690507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) * A131577 (n + 1) - (n : ℤ)|

end

end A271771.P13402482838890690507

namespace A271771

/-- `abs(comp[2*n]*A131577(n+1)-n)` -/
def P13402482838890690507.Spec : Prop :=
  ∀ n, P13402482838890690507.a n = A271771 (n + 1)

end A271771

/-! ## A271771.P10338279150629304230

`∑[A087323(n)+A011782(n)]`
-/

namespace A271771.P10338279150629304230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087323 n + A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271771.P10338279150629304230

namespace A271771

/-- `∑[A087323(n)+A011782(n)]` -/
def P10338279150629304230.Spec : Prop :=
  ∀ n, P10338279150629304230.a n = A271771 (n + 1)

end A271771

/-! ## A271771.P7477885472215952356

`∑[A052951(n)-A057427(n)]`
-/

namespace A271771.P7477885472215952356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052951 n - A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271771.P7477885472215952356

namespace A271771

/-- `∑[A052951(n)-A057427(n)]` -/
def P7477885472215952356.Spec : Prop :=
  ∀ n, P7477885472215952356.a n = A271771 (n + 1)

end A271771

/-! ## A271771.P13550020668563440511

`xor(A003261(n+1), A052944(n))`
-/

namespace A271771.P13550020668563440511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003261 (n + 1)) (A052944 n)

end

end A271771.P13550020668563440511

namespace A271771

/-- `xor(A003261(n+1), A052944(n))` -/
def P13550020668563440511.Spec : Prop :=
  ∀ n, P13550020668563440511.a n = A271771 (n + 1)

end A271771

/-! ## A271771.P15258353700081867673

`xor(A000325(n), A058922(n+1))`
-/

namespace A271771.P15258353700081867673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000325 n) (A058922 (n + 1))

end

end A271771.P15258353700081867673

namespace A271771

/-- `xor(A000325(n), A058922(n+1))` -/
def P15258353700081867673.Spec : Prop :=
  ∀ n, P15258353700081867673.a n = A271771 (n + 1)

end A271771

/-! ## A271771.P9819499612164839257

`abs(A000079(n)*A109613(2*n)-n)`
-/

namespace A271771.P9819499612164839257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n * A109613 (2 * n) - (n : ℤ)|

end

end A271771.P9819499612164839257

namespace A271771

/-- `abs(A000079(n)*A109613(2*n)-n)` -/
def P9819499612164839257.Spec : Prop :=
  ∀ n, P9819499612164839257.a n = A271771 (n + 1)

end A271771

/-! ## A271771.P7945432739839783804

`xor(A003261(n+1)-abs(1-n), A000079(n))`
-/

namespace A271771.P7945432739839783804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003261 (n + 1) - |1 - (n : ℤ)|) (A000079 n)

end

end A271771.P7945432739839783804

namespace A271771

/-- `xor(A003261(n+1)-abs(1-n), A000079(n))` -/
def P7945432739839783804.Spec : Prop :=
  ∀ n, P7945432739839783804.a n = A271771 (n + 1)

end A271771

/-! ## A271771.P6671438613717964485

`∑[A052951(n)-A019425(A019425(n))]`
-/

namespace A271771.P6671438613717964485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052951 n - A019425 (A019425 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271771.P6671438613717964485

namespace A271771

/-- `∑[A052951(n)-A019425(A019425(n))]` -/
def P6671438613717964485.Spec : Prop :=
  ∀ n, P6671438613717964485.a n = A271771 (n + 1)

end A271771

/-! ## A271771.P4517929819952615209

`(∑[∑[ogf((1+3x-6x^2)/(1-4x+4x^2))]]+1)/2`
-/

namespace A271771.P4517929819952615209
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, -6] [1, -4, 4] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 2

end

end A271771.P4517929819952615209

namespace A271771

/-- `(∑[∑[ogf((1+3x-6x^2)/(1-4x+4x^2))]]+1)/2` -/
def P4517929819952615209.Spec : Prop :=
  ∀ n, P4517929819952615209.a n = (A271771 (n + 1) : ℚ)

end A271771

/-! ## A271771.P12398500071314111775

`ceil(A118414(n+1)/2)`
-/

namespace A271771.P12398500071314111775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A118414 (n + 1) : ℚ) / 2⌉

end

end A271771.P12398500071314111775

namespace A271771

/-- `ceil(A118414(n+1)/2)` -/
def P12398500071314111775.Spec : Prop :=
  ∀ n, P12398500071314111775.a n = A271771 (n + 1)

end A271771

/-! ## A271771.P11660830014938736797

`Δ[A048497(n)-C(n, 2)]`
-/

namespace A271771.P11660830014938736797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048497 n - (Nat.choose n 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271771.P11660830014938736797

namespace A271771

/-- `Δ[A048497(n)-C(n, 2)]` -/
def P11660830014938736797.Spec : Prop :=
  ∀ n, P11660830014938736797.a n = A271771 (n + 1)

end A271771

/-! ## A271771.P10055359416532391412

`(A059673(n+1)-n)/2`
-/

namespace A271771.P10055359416532391412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059673 (n + 1) - (n : ℤ) : ℚ) / 2

end

end A271771.P10055359416532391412

namespace A271771

/-- `(A059673(n+1)-n)/2` -/
def P10055359416532391412.Spec : Prop :=
  ∀ n, P10055359416532391412.a n = (A271771 (n + 1) : ℚ)

end A271771

/-!
# A271772: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 406", based on the 5-celled von Neumann neighborhood.

The programs for A271772, there is no canonical definition to state claims against.
-/

/-! ## A271772.P11651176686961362509

`∑[∑[A271888(n)]+1-A271888(n)]`
-/

namespace A271772.P11651176686961362509
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271888 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A271888 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271772.P11651176686961362509

/-! ## A271772.P122270416664853337

`∑[A271885(n)]`
-/

namespace A271772.P122270416664853337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271885 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271772.P122270416664853337

/-! ## A271772.P275938272638572760

`A271885(A004526(2*n))+a(n-1)` with `a(0)=1`
-/

namespace A271772.P275938272638572760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271885 (A004526 (2 * n)).toNat + a (n - 1)

end

end A271772.P275938272638572760

/-! ## A271772.P9797162403211882926

`A271885(n%A056109(n))+a(n-1)` with `a(0)=1`
-/

namespace A271772.P9797162403211882926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271885 (Int.tmod (n : ℤ) (A056109 n)).toNat + a (n - 1)

end

end A271772.P9797162403211882926

/-! ## A271772.P897905475164857022

`a(n-1)+A271885(n)%A006221(n+1)` with `a(0)=1`
-/

namespace A271772.P897905475164857022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A271885 n) (A006221 (n + 1))

end

end A271772.P897905475164857022

/-! ## A271772.P13758483206602814051

`∑[A016754(n)-A272330(n)]+1`
-/

namespace A271772.P13758483206602814051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n - A272330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A271772.P13758483206602814051

/-! ## A271772.P8017236631792339799

`∑[A033954(n)%A272330(n)+n+1]`
-/

namespace A271772.P8017236631792339799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033954 n) (A272330 n) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271772.P8017236631792339799

/-! ## A271772.P11218262889633514951

`∑[A181385(A016825(n))-A272330(n)]`
-/

namespace A271772.P11218262889633514951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A272330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271772.P11218262889633514951

/-! ## A271772.P14238905965822538447

`∑[A181385(A016825(n))]-A272824(n)`
-/

namespace A271772.P14238905965822538447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A272824 n

end

end A271772.P14238905965822538447

/-! ## A271772.P5073309738210221680

`∑[A008740(A008458(n))-A272330(n)]`
-/

namespace A271772.P5073309738210221680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat - A272330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271772.P5073309738210221680

/-!
# A271773: a(1) = 0, then a(n) is the maximum of all 0 < m < n for which n == a(m) (mod m).

The programs for A271773, there is no canonical definition to state claims against.
-/

/-! ## A271773.P472524816244052627

`A326987(A052549(n)+A010051(n+1))`
-/

namespace A271773.P472524816244052627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326987 (A052549 n + A010051 (n + 1)).toNat

end

end A271773.P472524816244052627

/-! ## A271773.P17456801652086316018

`A292393(n+2)-A285515(A292401(n))`
-/

namespace A271773.P17456801652086316018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292393 (n + 2) - A285515 (A292401 n).toNat

end

end A271773.P17456801652086316018

/-! ## A271773.P3766505803169461926

`A030101(A083329(n))%A057859(n+1)`
-/

namespace A271773.P3766505803169461926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030101 (A083329 n).toNat) (A057859 (n + 1))

end

end A271773.P3766505803169461926

/-! ## A271773.P17880758906248531561

`A059907(n+1)-A362424(A000129(n))`
-/

namespace A271773.P17880758906248531561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059907 (n + 1) - A362424 (A000129 n).toNat

end

end A271773.P17880758906248531561

/-! ## A271773.P882858051354239287

`A046660(A265745(2*(n+2))^A272565(n+1))`
-/

namespace A271773.P882858051354239287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (SequenceMachineLib.roundAway ((A265745 (2 * (n + 2)) : ℚ) ^ (A272565 (n + 1) : ℤ))).toNat

end

end A271773.P882858051354239287

/-!
# A271774: a(1) = 1, then a(n) is the maximum of all 0 < m < n for which a(m) divides n.

The programs for A271774, there is no canonical definition to state claims against.
-/

/-! ## A271774.P10674391728871238956

`A006530(A004730(n))*A078898(A141310(n))`
-/

namespace A271774.P10674391728871238956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A004730 n).toNat * A078898 (A141310 n).toNat

end

end A271774.P10674391728871238956

/-! ## A271774.P12494612952172565921

`A277127(n+1)%A217944(n)+1`
-/

namespace A271774.P12494612952172565921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277127 (n + 1)) (A217944 n) + 1

end

end A271774.P12494612952172565921

/-! ## A271774.P7299799812262834544

`A277127(n+1)+A005171(A052987(n))`
-/

namespace A271774.P7299799812262834544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277127 (n + 1) + A005171 (A052987 n).toNat

end

end A271774.P7299799812262834544

/-! ## A271774.P617265867178691600

`A277127(n+1)+A057427(A006791(n))`
-/

namespace A271774.P617265867178691600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277127 (n + 1) + A057427 (A006791 (n + 10)).toNat

end

end A271774.P617265867178691600

/-! ## A271774.P13898546294580804420

`A277127(n+1)+A057427(A052970(n))`
-/

namespace A271774.P13898546294580804420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277127 (n + 1) + A057427 (A052970 n).toNat

end

end A271774.P13898546294580804420

/-!
# A271775: Number of ordered ways to write n as x^2 + y^2 + z^2 + w^2 (x >= y >= z <= w) with x - y a square, where w,x,y,z are nonnegative integers.

The programs for A271775, there is no canonical definition to state claims against.
-/

/-! ## A271775.P5433112415559198530

`A216651(lcm(A093516(n+1), A202840(n)))`
-/

namespace A271775.P5433112415559198530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216651 (Int.lcm (A093516 (n + 1)) (A202840 n))

end

end A271775.P5433112415559198530

/-! ## A271775.P12909387060839976849

`A038548(A002153(n+1)+A001045(n))`
-/

namespace A271775.P12909387060839976849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (A002153 (n + 1) + A001045 n).toNat

end

end A271775.P12909387060839976849

/-! ## A271775.P3037939760074770798

`A230500(A230108(2*n+5)²)`
-/

namespace A271775.P3037939760074770798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230500 (A230108 (2 * n + 5) ^ 2).toNat

end

end A271775.P3037939760074770798

/-! ## A271775.P10890841985972454944

`A072273(A297852(n+1))+char[∏{p}[n, #]-1]`
-/

namespace A271775.P10890841985972454944
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072273 (A297852 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A271775.P10890841985972454944

/-! ## A271775.P7477308593041668807

`A124769(abs((n+4)!%A001748(n+1)-n)+1)`
-/

namespace A271775.P7477308593041668807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124769 (|Int.tmod (Nat.factorial (n + 4) : ℤ) (A001748 (n + 1)) - (n : ℤ)| + 1).toNat

end

end A271775.P7477308593041668807

/-!
# A271776: Triangle T(n,m) = Sum_{k=0..m} (-1)^(m-k)*binomial(m,k)*binomial(n-m+k-1,m-1)*binomial(2*n-3*m+k-1,n-m), T(n,n)=1.

The programs for A271776, there is no canonical definition to state claims against.
-/

/-! ## A271776.P13336610137944636035

`A336917(record[A130330(n)])+A189175(n)`
-/

namespace A271776.P13336610137944636035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336917 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + A189175 n

end

end A271776.P13336610137944636035

/-! ## A271776.P14441406150616432965

`A112232(or(A094587(n), A107230(n)))`
-/

namespace A271776.P14441406150616432965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112232 (Int.lor (A094587 n) (A107230 n)).toNat

end

end A271776.P14441406150616432965

/-! ## A271776.P15642938173581891170

`A351831(A201198(n+1)+A007318(n))`
-/

namespace A271776.P15642938173581891170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351831 (A201198 (n + 1) + A007318 n).toNat

end

end A271776.P15642938173581891170

/-!
# A271777: a(n) = Sum_{k=1..n} ((-1)^(n-k) * k / ((n+1)^2 + (k-1)*(n+1))) * binomial(n+1, k+1) * binomial(n+k, k)^2.

The programs for A271777, there is no canonical definition to state claims against.
-/

/-! ## A271777.P3576365353209555462

`ceil(sin(n)²)*A090452(A002061(n))`
-/

namespace A271777.P3576365353209555462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (n : ℝ) ^ 2⌉ * A090452 (A002061 n).toNat

end

end A271777.P3576365353209555462

/-! ## A271777.P8496865316620917317

`A090452(A002061(n))-A000007(n)`
-/

namespace A271777.P8496865316620917317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090452 (A002061 n).toNat - A000007 n

end

end A271777.P8496865316620917317

/-! ## A271777.P15655705623386948733

`A057427(n)*A090452(A002061(n))`
-/

namespace A271777.P15655705623386948733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A090452 (A002061 n).toNat

end

end A271777.P15655705623386948733

/-! ## A271777.P15807577356904204200

`A090452(A002061(n))%A021384(n)`
-/

namespace A271777.P15807577356904204200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090452 (A002061 n).toNat) (A021384 n)

end

end A271777.P15807577356904204200

/-! ## A271777.P7215557898255673204

`A001221(A000961(n+1))*A090452(A002061(n))`
-/

namespace A271777.P7215557898255673204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000961 (n + 1)).toNat * A090452 (A002061 n).toNat

end

end A271777.P7215557898255673204

/-! ## A271777.P5712264631104579208

`A090452(A002061(n))-A084938(A000217(n))`
-/

namespace A271777.P5712264631104579208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090452 (A002061 n).toNat - A084938 (A000217 n).toNat

end

end A271777.P5712264631104579208

/-!
# A271779: a(n) = n^3 + 2*n^2 + 5*n + 11.

The programs for A271779, the canonical program `A271779.P12969999038446798368` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271779 has offset 0).

The definition of A271779 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3+2*n²+5*n+11` (program `A271779.P12969999038446798368`, by `A271779.P12969999038446798368.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A271779.P12969999038446798368

`n^3+2*n²+5*n+11`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A271779

/-- `n^3+2*n²+5*n+11` -/
def P12969999038446798368.Spec : Prop :=
  ∀ n, (P12969999038446798368.a n : ℤ) = A271779 n

theorem P12969999038446798368.correct : P12969999038446798368.Spec := by
  intro n
  simp only [A271779]

end A271779

/-! ## A271779.P9272971456876838507

`or(1, (n+2)*(n²+5))`
-/

namespace A271779.P9272971456876838507
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 ((n + 2) * (n ^ 2 + 5))

end

end A271779.P9272971456876838507

namespace A271779

/-- `or(1, (n+2)*(n²+5))` -/
def P9272971456876838507.Spec : Prop :=
  ∀ n, (P9272971456876838507.a n : ℤ) = A271779 n

end A271779

/-! ## A271779.P17785798965638501291

`ceil((n+2)/acot(n²+5))`
-/

namespace A271779.P17785798965638501291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 2 : ℝ) / SequenceMachineLib.acot (n ^ 2 + 5 : ℝ)⌉

end

end A271779.P17785798965638501291

namespace A271779

/-- `ceil((n+2)/acot(n²+5))` -/
def P17785798965638501291.Spec : Prop :=
  ∀ n, P17785798965638501291.a n = A271779 n

end A271779

/-! ## A271779.P3775474773292375319

`xor(1, (xor(2, n*n)+3)*(n+2))`
-/

namespace A271779.P3775474773292375319
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 ((Nat.xor 2 (n * n) + 3) * (n + 2))

end

end A271779.P3775474773292375319

namespace A271779

/-- `xor(1, (xor(2, n*n)+3)*(n+2))` -/
def P3775474773292375319.Spec : Prop :=
  ∀ n, (P3775474773292375319.a n : ℤ) = A271779 n

end A271779

/-! ## A271779.P11507148215942555285

`xor(1, A167614(n+2)+A081435(n))`
-/

namespace A271779.P11507148215942555285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A167614 (n + 2) + A081435 n)

end

end A271779.P11507148215942555285

namespace A271779

/-- `xor(1, A167614(n+2)+A081435(n))` -/
def P11507148215942555285.Spec : Prop :=
  ∀ n, P11507148215942555285.a n = A271779 n

end A271779

/-! ## A271779.P2229245613247081701

`Δ[A023545(n+1)+A006011(n)-A161680(n)]`
-/

namespace A271779.P2229245613247081701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) + (A006011 n - A161680 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271779.P2229245613247081701

namespace A271779

/-- `Δ[A023545(n+1)+A006011(n)-A161680(n)]` -/
def P2229245613247081701.Spec : Prop :=
  ∀ n, P2229245613247081701.a n = A271779 n

end A271779

/-!
# A271783: Numbers that have exactly four zeros when written in binary balanced system (A270885).

The programs for A271783, there is no canonical definition to state claims against.
-/

/-! ## A271783.P4909916819977957805

`eq[4, A092339(2*n)]`
-/

namespace A271783.P4909916819977957805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092339 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A271783.P4909916819977957805

/-! ## A271783.P13398054512448770168

`eq[5, A227185(2*n)]`
-/

namespace A271783.P13398054512448770168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227185 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A271783.P13398054512448770168

/-! ## A271783.P1268209488470533657

`eq[4, A023416(xor(n, 2*n))]`
-/

namespace A271783.P1268209488470533657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (Nat.xor n (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A271783.P1268209488470533657

/-! ## A271783.P10858017148900218121

`eq[4, A080791(xor(n, 2*n))]`
-/

namespace A271783.P10858017148900218121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (Nat.xor n (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A271783.P10858017148900218121

/-! ## A271783.P3497134966643387249

`eq[4, A037861(and(2*n, -n))]`
-/

namespace A271783.P3497134966643387249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (Int.land (2 * n : ℤ) (-(n : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A271783.P3497134966643387249

/-! ## A271783.P11684423838914430422

`eq[3, A037861(A292272(n))]`
-/

namespace A271783.P11684423838914430422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (A292272 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A271783.P11684423838914430422

/-! ## A271783.P13850515868355059350

`eq[4, A023416(A048724(n))]`
-/

namespace A271783.P13850515868355059350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A048724 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A271783.P13850515868355059350

/-! ## A271783.P550016282136692867

`eq[4, A037861(A213064(n))]`
-/

namespace A271783.P550016282136692867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (A213064 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A271783.P550016282136692867

/-! ## A271783.P1522447890406717227

`eq[5, A023416(A048726(n))]`
-/

namespace A271783.P1522447890406717227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A048726 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A271783.P1522447890406717227

/-! ## A271783.P2007211344285592469

`eq[A092339(n), A103947(n)]`
-/

namespace A271783.P2007211344285592469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092339 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103947 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A271783.P2007211344285592469

/-!
# A271784: Numbers that have exactly five zeros when written in binary balanced system (A270885).

The programs for A271784, the canonical program `A271784.P18244264633262029210` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271784 has offset 1).

The definition of A271784 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1601 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A271784.P18244264633262029210

`eq[2, A037861(A292272(n))-2]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A271784

/-- `eq[2, A037861(A292272(n))-2]` -/
def P18244264633262029210.Spec : Prop :=
  ∀ n, (P18244264633262029210.a n : ℤ) = A271784 (n + 1)

theorem P18244264633262029210.correct : P18244264633262029210.Spec := by
  intro n
  simp only [A271784, Nat.add_sub_cancel]

end A271784

/-! ## A271784.P17310396172337444756

`eq[A010710(n), A092339(n)]`
-/

namespace A271784.P17310396172337444756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010710 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092339 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A271784.P17310396172337444756

namespace A271784

/-- `eq[A010710(n), A092339(n)]` -/
def P17310396172337444756.Spec : Prop :=
  ∀ n, (P17310396172337444756.a n : ℤ) = A271784 (n + 1)

end A271784

/-! ## A271784.P3025949800490807198

`eq[A010717(n), A227185(n)]`
-/

namespace A271784.P3025949800490807198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010717 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227185 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A271784.P3025949800490807198

namespace A271784

/-- `eq[A010717(n), A227185(n)]` -/
def P3025949800490807198.Spec : Prop :=
  ∀ n, (P3025949800490807198.a n : ℤ) = A271784 (n + 1)

end A271784

/-! ## A271784.P7503865883538289584

`eq[A103947(n)+1, A092339(n)]`
-/

namespace A271784.P7503865883538289584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103947 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092339 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A271784.P7503865883538289584

namespace A271784

/-- `eq[A103947(n)+1, A092339(n)]` -/
def P7503865883538289584.Spec : Prop :=
  ∀ n, (P7503865883538289584.a n : ℤ) = A271784 (n + 1)

end A271784

/-! ## A271784.P16316989372542670199

`eq[A174296(n)+2, A092339(n)]`
-/

namespace A271784.P16316989372542670199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174296 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092339 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A271784.P16316989372542670199

namespace A271784

/-- `eq[A174296(n)+2, A092339(n)]` -/
def P16316989372542670199.Spec : Prop :=
  ∀ n, (P16316989372542670199.a n : ℤ) = A271784 (n + 1)

end A271784

/-! ## A271784.P17971318809070117366

`eq[A136004(n)+1, A007456(n+1)]`
-/

namespace A271784.P17971318809070117366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136004 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007456 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A271784.P17971318809070117366

namespace A271784

/-- `eq[A136004(n)+1, A007456(n+1)]` -/
def P17971318809070117366.Spec : Prop :=
  ∀ n, (P17971318809070117366.a n : ℤ) = A271784 (n + 1)

end A271784

/-! ## A271784.P240931350734857086

`eq[5, A092339(2*n)]`
-/

namespace A271784.P240931350734857086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092339 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A271784.P240931350734857086

namespace A271784

/-- `eq[5, A092339(2*n)]` -/
def P240931350734857086.Spec : Prop :=
  ∀ n, (P240931350734857086.a n : ℤ) = A271784 (n + 1)

end A271784

/-! ## A271784.P14600351384060212159

`eq[6, A227185(2*n)]`
-/

namespace A271784.P14600351384060212159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227185 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A271784.P14600351384060212159

namespace A271784

/-- `eq[6, A227185(2*n)]` -/
def P14600351384060212159.Spec : Prop :=
  ∀ n, (P14600351384060212159.a n : ℤ) = A271784 (n + 1)

end A271784

/-! ## A271784.P12713245355939253686

`eq[5, A023416(xor(n, 2*n))]`
-/

namespace A271784.P12713245355939253686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (Nat.xor n (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A271784.P12713245355939253686

namespace A271784

/-- `eq[5, A023416(xor(n, 2*n))]` -/
def P12713245355939253686.Spec : Prop :=
  ∀ n, (P12713245355939253686.a n : ℤ) = A271784 (n + 1)

end A271784

/-! ## A271784.P2552131803243917031

`eq[5, A080791(xor(n, 2*n))]`
-/

namespace A271784.P2552131803243917031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (Nat.xor n (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A271784.P2552131803243917031

namespace A271784

/-- `eq[5, A080791(xor(n, 2*n))]` -/
def P2552131803243917031.Spec : Prop :=
  ∀ n, (P2552131803243917031.a n : ℤ) = A271784 (n + 1)

end A271784

/-! ## A271784.P4210040479023209807

`eq[5, A023416(A048724(n))]`
-/

namespace A271784.P4210040479023209807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A048724 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A271784.P4210040479023209807

namespace A271784

/-- `eq[5, A023416(A048724(n))]` -/
def P4210040479023209807.Spec : Prop :=
  ∀ n, (P4210040479023209807.a n : ℤ) = A271784 (n + 1)

end A271784

/-! ## A271784.P7443049372541350507

`eq[2, A187496(A227185(n+n))]`
-/

namespace A271784.P7443049372541350507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187496 (A227185 (n + n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A271784.P7443049372541350507

namespace A271784

/-- `eq[2, A187496(A227185(n+n))]` -/
def P7443049372541350507.Spec : Prop :=
  ∀ n, (P7443049372541350507.a n : ℤ) = A271784 (n + 1)

end A271784

/-! ## A271784.P17998509965891063754

`eq[A000523(2*n+1), A136004(2*n)]`
-/

namespace A271784.P17998509965891063754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136004 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A271784.P17998509965891063754

namespace A271784

/-- `eq[A000523(2*n+1), A136004(2*n)]` -/
def P17998509965891063754.Spec : Prop :=
  ∀ n, (P17998509965891063754.a n : ℤ) = A271784 (n + 1)

end A271784

/-!
# A271785: a(n) = Sum_{k=0..(n-1)/2} (n+2-k)*binomial(n-1-k,k).

The programs for A271785, the canonical program `A271785.P11021279405485774573` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271785 has offset 0).

The definition of A271785 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A271785.P11021279405485774573

`A006355(n+1)+A001629(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A271785

/-- `A006355(n+1)+A001629(n+1)` -/
def P11021279405485774573.Spec : Prop :=
  ∀ n, P11021279405485774573.a n = A271785 n

theorem P11021279405485774573.correct : P11021279405485774573.Spec := by
  intro n
  simp only [A271785]

end A271785

/-! ## A271785.P9800733791517949912

`2*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)` with `a(0)=0, a(1)=3, a(2)=4, a(3)=9`
-/

namespace A271785.P9800733791517949912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 4, 9] fun n a =>
  2 * a (n - 1) + a (n - 2) - 2 * a (n - 3) - a (n - 4)

end

end A271785.P9800733791517949912

namespace A271785

/-- `2*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)` -/
def P9800733791517949912.Spec : Prop :=
  ∀ n, P9800733791517949912.a n = A271785 n

end A271785

/-! ## A271785.P2864244771921366736

`ogf((3x-2x^2-2x^3)/(1-2x-x^2+2x^3+x^4))`
-/

namespace A271785.P2864244771921366736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, -2, -2] [1, -2, -1, 2, 1] n

end

end A271785.P2864244771921366736

namespace A271785

/-- `ogf((3x-2x^2-2x^3)/(1-2x-x^2+2x^3+x^4))` -/
def P2864244771921366736.Spec : Prop :=
  ∀ n, P2864244771921366736.a n = A271785 n

end A271785

/-! ## A271785.P5801248004735507021

`a(n-1)+A000045(n)+a(n-2)` with `a(0)=0, a(1)=3`
-/

namespace A271785.P5801248004735507021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  a (n - 1) + (A000045 n + a (n - 2))

end

end A271785.P5801248004735507021

namespace A271785

/-- `a(n-1)+A000045(n)+a(n-2)` -/
def P5801248004735507021.Spec : Prop :=
  ∀ n, P5801248004735507021.a n = A271785 n

end A271785

/-! ## A271785.P12003494253908698829

`A022308(n)+A006478(n)`
-/

namespace A271785.P12003494253908698829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022308 n + A006478 n

end

end A271785.P12003494253908698829

namespace A271785

/-- `A022308(n)+A006478(n)` -/
def P12003494253908698829.Spec : Prop :=
  ∀ n, P12003494253908698829.a n = A271785 n

end A271785

/-! ## A271785.P2010612361183632609

`A029907(n)+A006367(n+1)`
-/

namespace A271785.P2010612361183632609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 n + A006367 (n + 1)

end

end A271785.P2010612361183632609

namespace A271785

/-- `A029907(n)+A006367(n+1)` -/
def P2010612361183632609.Spec : Prop :=
  ∀ n, P2010612361183632609.a n = A271785 n

end A271785

/-! ## A271785.P11443907225706060410

`A029907(n+1)-A152163(n)`
-/

namespace A271785.P11443907225706060410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 (n + 1) - A152163 n

end

end A271785.P11443907225706060410

namespace A271785

/-- `A029907(n+1)-A152163(n)` -/
def P11443907225706060410.Spec : Prop :=
  ∀ n, P11443907225706060410.a n = A271785 n

end A271785

/-! ## A271785.P64196764033394834

`A208354(n+2)-A000032(n)`
-/

namespace A271785.P64196764033394834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208354 (n + 2) - A000032 n

end

end A271785.P64196764033394834

namespace A271785

/-- `A208354(n+2)-A000032(n)` -/
def P64196764033394834.Spec : Prop :=
  ∀ n, P64196764033394834.a n = A271785 n

end A271785

/-! ## A271785.P17620470151196280693

`A010049(n+2)-A212804(n)`
-/

namespace A271785.P17620470151196280693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 (n + 2) - A212804 n

end

end A271785.P17620470151196280693

namespace A271785

/-- `A010049(n+2)-A212804(n)` -/
def P17620470151196280693.Spec : Prop :=
  ∀ n, P17620470151196280693.a n = A271785 n

end A271785

/-! ## A271785.P12756251335544540003

`A226432(n+3)+A000045(n)`
-/

namespace A271785.P12756251335544540003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226432 (n + 3) + A000045 n

end

end A271785.P12756251335544540003

namespace A271785

/-- `A226432(n+3)+A000045(n)` -/
def P12756251335544540003.Spec : Prop :=
  ∀ n, P12756251335544540003.a n = A271785 n

end A271785

/-! ## A271785.P6430505541240416832

`A029907(n)+Δ[A010049(n+1)]`
-/

namespace A271785.P6430505541240416832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 n + (f1 (n + 1) - f1 n)

end

end A271785.P6430505541240416832

namespace A271785

/-- `A029907(n)+Δ[A010049(n+1)]` -/
def P6430505541240416832.Spec : Prop :=
  ∀ n, P6430505541240416832.a n = A271785 n

end A271785

/-! ## A271785.P3856691657418435254

`A001629(n)+Δ[A006367(n+2)]`
-/

namespace A271785.P3856691657418435254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006367 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 n + (f1 (n + 1) - f1 n)

end

end A271785.P3856691657418435254

namespace A271785

/-- `A001629(n)+Δ[A006367(n+2)]` -/
def P3856691657418435254.Spec : Prop :=
  ∀ n, P3856691657418435254.a n = A271785 n

end A271785

/-! ## A271785.P1376530101757187998

`∑[A010049(n)]+2*A000045(n)`
-/

namespace A271785.P1376530101757187998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * A000045 n

end

end A271785.P1376530101757187998

namespace A271785

/-- `∑[A010049(n)]+2*A000045(n)` -/
def P1376530101757187998.Spec : Prop :=
  ∀ n, P1376530101757187998.a n = A271785 n

end A271785

/-! ## A271785.P18187042454568755505

`A152163(n+1)+A010049(n+2)`
-/

namespace A271785.P18187042454568755505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 (n + 1) + A010049 (n + 2)

end

end A271785.P18187042454568755505

namespace A271785

/-- `A152163(n+1)+A010049(n+2)` -/
def P18187042454568755505.Spec : Prop :=
  ∀ n, P18187042454568755505.a n = A271785 n

end A271785

/-! ## A271785.P5845437697204478952

`A001629(n+1)+2*A000045(n)`
-/

namespace A271785.P5845437697204478952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 (n + 1) + 2 * A000045 n

end

end A271785.P5845437697204478952

namespace A271785

/-- `A001629(n+1)+2*A000045(n)` -/
def P5845437697204478952.Spec : Prop :=
  ∀ n, P5845437697204478952.a n = A271785 n

end A271785

/-! ## A271785.P10364093133314534997

`A006367(n+3)-A006355(n+2)`
-/

namespace A271785.P10364093133314534997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006367 (n + 3) - A006355 (n + 2)

end

end A271785.P10364093133314534997

namespace A271785

/-- `A006367(n+3)-A006355(n+2)` -/
def P10364093133314534997.Spec : Prop :=
  ∀ n, P10364093133314534997.a n = A271785 n

end A271785

/-! ## A271785.P17830505188103978034

`A211228(2*n+1)-A152163(n)`
-/

namespace A271785.P17830505188103978034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211228 (2 * n + 1) - A152163 n

end

end A271785.P17830505188103978034

namespace A271785

/-- `A211228(2*n+1)-A152163(n)` -/
def P17830505188103978034.Spec : Prop :=
  ∀ n, P17830505188103978034.a n = A271785 n

end A271785

/-! ## A271785.P1082682212594452329

`A001629(n+1)+2*A212804(n+1)`
-/

namespace A271785.P1082682212594452329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 (n + 1) + 2 * A212804 (n + 1)

end

end A271785.P1082682212594452329

namespace A271785

/-- `A001629(n+1)+2*A212804(n+1)` -/
def P1082682212594452329.Spec : Prop :=
  ∀ n, P1082682212594452329.a n = A271785 n

end A271785

/-! ## A271785.P15593147934915571515

`A000045(n)+A029907(n)+A010049(n)`
-/

namespace A271785.P15593147934915571515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A029907 n + A010049 n)

end

end A271785.P15593147934915571515

namespace A271785

/-- `A000045(n)+A029907(n)+A010049(n)` -/
def P15593147934915571515.Spec : Prop :=
  ∀ n, P15593147934915571515.a n = A271785 n

end A271785

/-! ## A271785.P17685403235824745067

`A010049(n)+A102702(n)-A000032(n)`
-/

namespace A271785.P17685403235824745067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 n + (A102702 n - A000032 n)

end

end A271785.P17685403235824745067

namespace A271785

/-- `A010049(n)+A102702(n)-A000032(n)` -/
def P17685403235824745067.Spec : Prop :=
  ∀ n, P17685403235824745067.a n = A271785 n

end A271785

/-!
# A271786: Expansion of 2*(1-x)*(2*x^2+4*x+1) / (1-x-x^2)^2.

The programs for A271786, the canonical program `A271786.P867256129189748269` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271786 has offset 0).

The definition of A271786 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((2+6x-4x^2-4x^3)/(1-2x-x^2+2x^3+x^4))` (program `A271786.P867256129189748269`, by `A271786.P867256129189748269.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A271786.P867256129189748269

`ogf((2+6x-4x^2-4x^3)/(1-2x-x^2+2x^3+x^4))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A271786

/-- `ogf((2+6x-4x^2-4x^3)/(1-2x-x^2+2x^3+x^4))` -/
def P867256129189748269.Spec : Prop :=
  ∀ n, P867256129189748269.a n = A271786 n

theorem P867256129189748269.correct : P867256129189748269.Spec := by
  intro n
  simp only [A271786]

end A271786

/-! ## A271786.P16373864937216797583

`2*(A001629(n+2)+A271785(n))`
-/

namespace A271786.P16373864937216797583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A001629 (n + 2) + A271785 n)

end

end A271786.P16373864937216797583

namespace A271786

/-- `2*(A001629(n+2)+A271785(n))` -/
def P16373864937216797583.Spec : Prop :=
  ∀ n, P16373864937216797583.a n = A271786 n

end A271786

/-! ## A271786.P1645562499283188792

`A022087(n)+2*A023610(n)`
-/

namespace A271786.P1645562499283188792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022087 n + 2 * A023610 n

end

end A271786.P1645562499283188792

namespace A271786

/-- `A022087(n)+2*A023610(n)` -/
def P1645562499283188792.Spec : Prop :=
  ∀ n, P1645562499283188792.a n = A271786 n

end A271786

/-! ## A271786.P15116558707646326032

`2*(A045925(n+2)-A055244(n))`
-/

namespace A271786.P15116558707646326032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A045925 (n + 2) - A055244 n)

end

end A271786.P15116558707646326032

namespace A271786

/-- `2*(A045925(n+2)-A055244(n))` -/
def P15116558707646326032.Spec : Prop :=
  ∀ n, P15116558707646326032.a n = A271786 n

end A271786

/-! ## A271786.P7821686858746918909

`2*(A001629(n+3)-A212804(n))`
-/

namespace A271786.P7821686858746918909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A001629 (n + 3) - A212804 n)

end

end A271786.P7821686858746918909

namespace A271786

/-- `2*(A001629(n+3)-A212804(n))` -/
def P7821686858746918909.Spec : Prop :=
  ∀ n, P7821686858746918909.a n = A271786 n

end A271786

/-! ## A271786.P13662961973072915985

`Δ[A178523(n+2)]-A118658(n)`
-/

namespace A271786.P13662961973072915985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178523 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A118658 n

end

end A271786.P13662961973072915985

namespace A271786

/-- `Δ[A178523(n+2)]-A118658(n)` -/
def P13662961973072915985.Spec : Prop :=
  ∀ n, P13662961973072915985.a n = A271786 n

end A271786

/-! ## A271786.P14179149552569171322

`A242593(A167614(n+1))-A118658(n)`
-/

namespace A271786.P14179149552569171322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242593 (A167614 (n + 1)).toNat - A118658 n

end

end A271786.P14179149552569171322

namespace A271786

/-- `A242593(A167614(n+1))-A118658(n)` -/
def P14179149552569171322.Spec : Prop :=
  ∀ n, P14179149552569171322.a n = A271786 n

end A271786

/-!
# A271787: Integers k that are the sum of two nonzero squares while k*(k+1) is not.

The programs for A271787, the canonical program `A271787.P16430295729200728671` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271787 has offset 1).

The definition of A271787 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A271787.P16430295729200728671

`comp[n-A229062(n)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A271787

/-- `comp[n-A229062(n)]` -/
def P16430295729200728671.Spec : Prop :=
  ∀ n, (P16430295729200728671.a n : ℤ) = A271787 (n + 1)

theorem P16430295729200728671.correct : P16430295729200728671.Spec := by
  intro n
  simp only [A271787, Nat.add_sub_cancel]

end A271787

/-! ## A271787.P2504144741222577072

`lt[A229062(n+1), A229062(n)]`
-/

namespace A271787.P2504144741222577072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A271787.P2504144741222577072

namespace A271787

/-- `lt[A229062(n+1), A229062(n)]` -/
def P2504144741222577072.Spec : Prop :=
  ∀ n, (P2504144741222577072.a n : ℤ) = A271787 (n + 1)

end A271787

/-! ## A271787.P10405916095041020871

`lt[0, Δ[A070176(n)]]`
-/

namespace A271787.P10405916095041020871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A271787.P10405916095041020871

namespace A271787

/-- `lt[0, Δ[A070176(n)]]` -/
def P10405916095041020871.Spec : Prop :=
  ∀ n, (P10405916095041020871.a n : ℤ) = A271787 (n + 1)

end A271787

/-! ## A271787.P5235794836650502426

`eq[1, A375202(n+1)]`
-/

namespace A271787.P5235794836650502426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375202 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A271787.P5235794836650502426

namespace A271787

/-- `eq[1, A375202(n+1)]` -/
def P5235794836650502426.Spec : Prop :=
  ∀ n, (P5235794836650502426.a n : ℤ) = A271787 (n + 1)

end A271787

/-! ## A271787.P11628734937750191848

`eq[1, A375202(n)]-1`
-/

namespace A271787.P11628734937750191848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375202 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A271787.P11628734937750191848

namespace A271787

/-- `eq[1, A375202(n)]-1` -/
def P11628734937750191848.Spec : Prop :=
  ∀ n, P11628734937750191848.a n = A271787 (n + 1)

end A271787

/-! ## A271787.P9068397629922247066

`eq[A064874(n), A330315(n)]`
-/

namespace A271787.P9068397629922247066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064874 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330315 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A271787.P9068397629922247066

namespace A271787

/-- `eq[A064874(n), A330315(n)]` -/
def P9068397629922247066.Spec : Prop :=
  ∀ n, (P9068397629922247066.a n : ℤ) = A271787 (n + 1)

end A271787

/-! ## A271787.P2112553875826676075

`eq[A070176(n), A330315(n)]`
-/

namespace A271787.P2112553875826676075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330315 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A271787.P2112553875826676075

namespace A271787

/-- `eq[A070176(n), A330315(n)]` -/
def P2112553875826676075.Spec : Prop :=
  ∀ n, (P2112553875826676075.a n : ℤ) = A271787 (n + 1)

end A271787

/-! ## A271787.P3060673489092382155

`eq[A002607(n+1), A064874(n)]`
-/

namespace A271787.P3060673489092382155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002607 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064874 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A271787.P3060673489092382155

namespace A271787

/-- `eq[A002607(n+1), A064874(n)]` -/
def P3060673489092382155.Spec : Prop :=
  ∀ n, (P3060673489092382155.a n : ℤ) = A271787 (n + 1)

end A271787

/-! ## A271787.P15905189472806857657

`eq[A002607(n+1), A070176(n)]`
-/

namespace A271787.P15905189472806857657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002607 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A271787.P15905189472806857657

namespace A271787

/-- `eq[A002607(n+1), A070176(n)]` -/
def P15905189472806857657.Spec : Prop :=
  ∀ n, (P15905189472806857657.a n : ℤ) = A271787 (n + 1)

end A271787

/-! ## A271787.P147917535241231367

`eq[A004018(n+1), A070176(n)]`
-/

namespace A271787.P147917535241231367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A271787.P147917535241231367

namespace A271787

/-- `eq[A004018(n+1), A070176(n)]` -/
def P147917535241231367.Spec : Prop :=
  ∀ n, (P147917535241231367.a n : ℤ) = A271787 (n + 1)

end A271787

/-! ## A271787.P7324597044678724818

`eq[A030212(n+1), A064874(n)]`
-/

namespace A271787.P7324597044678724818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064874 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A271787.P7324597044678724818

namespace A271787

/-- `eq[A030212(n+1), A064874(n)]` -/
def P7324597044678724818.Spec : Prop :=
  ∀ n, (P7324597044678724818.a n : ℤ) = A271787 (n + 1)

end A271787

/-! ## A271787.P12238869951268156312

`eq[A030212(n+1), A070176(n)]`
-/

namespace A271787.P12238869951268156312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A271787.P12238869951268156312

namespace A271787

/-- `eq[A030212(n+1), A070176(n)]` -/
def P12238869951268156312.Spec : Prop :=
  ∀ n, (P12238869951268156312.a n : ℤ) = A271787 (n + 1)

end A271787

/-! ## A271787.P539633148218324124

`eq[A070176(n), A105673(n+1)]`
-/

namespace A271787.P539633148218324124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105673 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A271787.P539633148218324124

namespace A271787

/-- `eq[A070176(n), A105673(n+1)]` -/
def P539633148218324124.Spec : Prop :=
  ∀ n, (P539633148218324124.a n : ℤ) = A271787 (n + 1)

end A271787

/-! ## A271787.P8287192923182838006

`eq[A064874(n), A111938(n+1)]`
-/

namespace A271787.P8287192923182838006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064874 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111938 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A271787.P8287192923182838006

namespace A271787

/-- `eq[A064874(n), A111938(n+1)]` -/
def P8287192923182838006.Spec : Prop :=
  ∀ n, (P8287192923182838006.a n : ℤ) = A271787 (n + 1)

end A271787

/-! ## A271787.P2448213671262359938

`eq[A070176(n), A111938(n+1)]`
-/

namespace A271787.P2448213671262359938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111938 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A271787.P2448213671262359938

namespace A271787

/-- `eq[A070176(n), A111938(n+1)]` -/
def P2448213671262359938.Spec : Prop :=
  ∀ n, (P2448213671262359938.a n : ℤ) = A271787 (n + 1)

end A271787

/-! ## A271787.P15495792933089369324

`eq[A064874(n), A133388(n+1)]`
-/

namespace A271787.P15495792933089369324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064874 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133388 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A271787.P15495792933089369324

namespace A271787

/-- `eq[A064874(n), A133388(n+1)]` -/
def P15495792933089369324.Spec : Prop :=
  ∀ n, (P15495792933089369324.a n : ℤ) = A271787 (n + 1)

end A271787

/-! ## A271787.P12915212919777115780

`eq[A070176(n), A133388(n+1)]`
-/

namespace A271787.P12915212919777115780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133388 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A271787.P12915212919777115780

namespace A271787

/-- `eq[A070176(n), A133388(n+1)]` -/
def P12915212919777115780.Spec : Prop :=
  ∀ n, (P12915212919777115780.a n : ℤ) = A271787 (n + 1)

end A271787

/-! ## A271787.P2587388203166572051

`eq[A064874(n), A247067(n+1)]`
-/

namespace A271787.P2587388203166572051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064874 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247067 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A271787.P2587388203166572051

namespace A271787

/-- `eq[A064874(n), A247067(n+1)]` -/
def P2587388203166572051.Spec : Prop :=
  ∀ n, (P2587388203166572051.a n : ℤ) = A271787 (n + 1)

end A271787

/-! ## A271787.P16433214885082213757

`eq[A070176(n), A247067(n+1)]`
-/

namespace A271787.P16433214885082213757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247067 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A271787.P16433214885082213757

namespace A271787

/-- `eq[A070176(n), A247067(n+1)]` -/
def P16433214885082213757.Spec : Prop :=
  ∀ n, (P16433214885082213757.a n : ℤ) = A271787 (n + 1)

end A271787

/-! ## A271787.P13151902907428466396

`eq[A064874(n), A362961(n+1)]`
-/

namespace A271787.P13151902907428466396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064874 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362961 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A271787.P13151902907428466396

namespace A271787

/-- `eq[A064874(n), A362961(n+1)]` -/
def P13151902907428466396.Spec : Prop :=
  ∀ n, (P13151902907428466396.a n : ℤ) = A271787 (n + 1)

end A271787

/-!
# A271788: Number of set partitions of [n] having exactly one pair (m,m+1) such that m is in some block b and m+1 is in block b+1.

The programs for A271788, there is no canonical definition to state claims against.
-/

/-! ## A271788.P12125984448770420607

`A185982(A133263(n))-A000007(n)`
-/

namespace A271788.P12125984448770420607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185982 (A133263 n).toNat - A000007 n

end

end A271788.P12125984448770420607

/-! ## A271788.P16278519774651357140

`A057427(n)*A185982(A133263(n))`
-/

namespace A271788.P16278519774651357140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A185982 (A133263 n).toNat

end

end A271788.P16278519774651357140

/-! ## A271788.P18080251565382274048

`A178334(n)*A185982(A133263(n))`
-/

namespace A271788.P18080251565382274048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A185982 (A133263 n).toNat

end

end A271788.P18080251565382274048

/-! ## A271788.P6111800489782484618

`lcm(A165471(n), A185982(A133263(n)))`
-/

namespace A271788.P6111800489782484618
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A165471 n) (A185982 (A133263 n).toNat)

end

end A271788.P6111800489782484618

/-! ## A271788.P3748435469965820851

`A165471(n²)*A185982(A133263(n))`
-/

namespace A271788.P3748435469965820851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165471 (n ^ 2) * A185982 (A133263 n).toNat

end

end A271788.P3748435469965820851

/-! ## A271788.P5912082145139805052

`A019425(2*n)*A185982(A133263(n))`
-/

namespace A271788.P5912082145139805052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (2 * n) * A185982 (A133263 n).toNat

end

end A271788.P5912082145139805052

/-! ## A271788.P10390656549122758200

`A185982(A133263(n))%∑[(A171961(n+1)+1)^5]`
-/

namespace A271788.P10390656549122758200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A171961 (n + 1) + 1) ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185982 (A133263 n).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A271788.P10390656549122758200

/-! ## A271788.P9954155257579586839

`A185982(A133263(n))-A155797(A000194(n))`
-/

namespace A271788.P9954155257579586839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185982 (A133263 n).toNat - A155797 (A000194 n).toNat

end

end A271788.P9954155257579586839

/-!
# A271789: Number of set partitions of [n] having exactly two pairs (m,m+1) such that m is in some block b and m+1 is in block b+1.

The programs for A271789, there is no canonical definition to state claims against.
-/

/-! ## A271789.P12215928919485019330

`record[A010054(n+2)*A185982(n+5)]`
-/

namespace A271789.P12215928919485019330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 2) * A185982 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271789.P12215928919485019330

/-! ## A271789.P10987200944307681066

`record[Δ[A003056(n+1)]*A185982(n+5)]`
-/

namespace A271789.P10987200944307681066
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A185982 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271789.P10987200944307681066

/-! ## A271789.P8063254076749184938

`A080300(2*(n+2))+A002264(A115112(n+1))`
-/

namespace A271789.P8063254076749184938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080300 (2 * (n + 2)) + A002264 (A115112 (n + 1)).toNat

end

end A271789.P8063254076749184938

/-!
# A271790: Number of set partitions of [n] having exactly three pairs (m,m+1) such that m is in some block b and m+1 is in block b+1.

The programs for A271790, there is no canonical definition to state claims against.
-/

/-! ## A271790.P1834278953987953999

`record[Δ[A010054(n)]*A185982(n+5)]`
-/

namespace A271790.P1834278953987953999
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A185982 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271790.P1834278953987953999

/-! ## A271790.P12494539484542488731

`A026806(A026760(n+2))-A026765(n+1)`
-/

namespace A271790.P12494539484542488731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026806 (A026760 (n + 2)).toNat - A026765 (n + 1)

end

end A271790.P12494539484542488731

/-!
# A271791: Number of set partitions of [n] having exactly four pairs (m,m+1) such that m is in some block b and m+1 is in block b+1.

The programs for A271791, there is no canonical definition to state claims against.
-/

/-! ## A271791.P8372570474057275483

`record[Δ[A147236(n+1)]-A030101(n)]`
-/

namespace A271791.P8372570474057275483
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147236 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A030101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271791.P8372570474057275483

/-!
# A271792: Number of set partitions of [n] having exactly five pairs (m,m+1) such that m is in some block b and m+1 is in block b+1.

The programs for A271792, there is no canonical definition to state claims against.
-/

/-! ## A271792.P5615113276042289753

`A185982(A000096(n+3)+7)-A000007(n)`
-/

namespace A271792.P5615113276042289753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185982 (A000096 (n + 3) + 7).toNat - A000007 n

end

end A271792.P5615113276042289753

/-! ## A271792.P7504037591418554351

`A185982(A000096(n+3)+7)%A000166(3*n)`
-/

namespace A271792.P7504037591418554351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185982 (A000096 (n + 3) + 7).toNat) (A000166 (3 * n))

end

end A271792.P7504037591418554351

/-!
# A271793: Number of set partitions of [n] having exactly six pairs (m,m+1) such that m is in some block b and m+1 is in block b+1.

The programs for A271793, there is no canonical definition to state claims against.
-/

/-! ## A271793.P6657153030381112333

`A185982(A167499(n+4)+2)-A000007(n)`
-/

namespace A271793.P6657153030381112333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185982 (A167499 (n + 4) + 2).toNat - A000007 n

end

end A271793.P6657153030381112333

/-! ## A271793.P2929345029299251797

`char[A064989(n+1)]*A185982(A167499(n+4)+2)`
-/

namespace A271793.P2929345029299251797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A185982 (A167499 (n + 4) + 2).toNat

end

end A271793.P2929345029299251797

/-! ## A271793.P4211083205186386261

`A185982(A167499(n+4)+2)%A075515(n)`
-/

namespace A271793.P4211083205186386261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185982 (A167499 (n + 4) + 2).toNat) (A075515 n)

end

end A271793.P4211083205186386261

/-!
# A271799: Prime numbers whose reversal is a product of 3 distinct primes.

The programs for A271799, there is no canonical definition to state claims against.
-/

/-! ## A271799.P14577606111917643313

`∩[A077337(n+1), A367151(n+1)]`
-/

namespace A271799.P14577606111917643313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271799.P14577606111917643313

