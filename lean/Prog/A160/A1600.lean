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
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C011
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
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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
# A160001: Number of partitions of n into distinct parts occurring in '3x+1'-trajectory starting with n.

The programs for A160001, there is no canonical definition to state claims against.
-/

/-! ## A160001.P17232708240695071343

`A131923(A227165(n+1)%A291296(n+1))`
-/

namespace A160001.P17232708240695071343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131923 (Int.tmod (A227165 (n + 1)) (A291296 (n + 1))).toNat

end

end A160001.P17232708240695071343

/-! ## A160001.P1273835905873909090

`A001222(2*n+5)*A380528(A113040(n+1))`
-/

namespace A160001.P1273835905873909090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 5) * A380528 (A113040 (n + 1)).toNat

end

end A160001.P1273835905873909090

/-!
# A160002: Number of moves needed to solve 4-peg Tower of Hanoi Puzzle with n disks.

The programs for A160002, there is no canonical definition to state claims against.
-/

/-! ## A160002.P15817390125897027353

`A042962(3*n+2)-A001227(A140298(3*n+4))`
-/

namespace A160002.P15817390125897027353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042962 (3 * n + 2) - A001227 (A140298 (3 * n + 4)).toNat

end

end A160002.P15817390125897027353

/-!
# A160006: a(n) = least number b such that A000404(n) = b^2+c^2, 0 < b <= c.

The programs for A160006, there is no canonical definition to state claims against.
-/

/-! ## A160006.P5769833328696825469

`A329320(A000005(A220423(n+1))²)`
-/

namespace A160006.P5769833328696825469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329320 (A000005 (A220423 (n + 1)).toNat ^ 2).toNat

end

end A160006.P5769833328696825469

/-! ## A160006.P4821812356756495529

`A193348(∪[A220423(n+1), A135786(n+4)])`
-/

namespace A160006.P4821812356756495529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220423 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135786 (n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193348 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A160006.P4821812356756495529

/-! ## A160006.P2889096290446843922

`A193348(A220423(n+1))`
-/

namespace A160006.P2889096290446843922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193348 (A220423 (n + 1)).toNat

end

end A160006.P2889096290446843922

/-! ## A160006.P14481815290806399248

`A184170(A377386(n+2))`
-/

namespace A160006.P14481815290806399248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184170 (A377386 (n + 2)).toNat

end

end A160006.P14481815290806399248

/-! ## A160006.P4933667752941951476

`A001222(record[A003059(A086958(n+1))])`
-/

namespace A160006.P4933667752941951476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A086958 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A160006.P4933667752941951476

/-!
# A160007: Deficient numbers more than 1 unit away from their predecessors.

The programs for A160007, the canonical program `A160007.P3271446756844872376` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160007 has offset 1).

The definition of A160007 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1400 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160007.P12681401297523034102

`eq[A336915(n+1), A336917(A007821(n+1))]+2`
-/

namespace A160007.P12681401297523034102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336917 (A007821 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A160007.P12681401297523034102

namespace A160007

/-- `eq[A336915(n+1), A336917(A007821(n+1))]+2` -/
def P12681401297523034102.Spec : Prop :=
  ∀ n, (P12681401297523034102.a n : ℤ) = A160007 (n + 1)

end A160007

/-! ## A160007.P14081121915210769450

`A023196(n+1)+A001221(A109611(3*(n+1)))`
-/

namespace A160007.P14081121915210769450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023196 (n + 1) + A001221 (A109611 (3 * (n + 1))).toNat

end

end A160007.P14081121915210769450

namespace A160007

/-- `A023196(n+1)+A001221(A109611(3*(n+1)))` -/
def P14081121915210769450.Spec : Prop :=
  ∀ n, P14081121915210769450.a n = A160007 (n + 1)

end A160007

/-! ## A160007.P3271446756844872376

`A023196(n+1)+A000035(A002659(2*n+5))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A160007

/-- `A023196(n+1)+A000035(A002659(2*n+5))` -/
def P3271446756844872376.Spec : Prop :=
  ∀ n, P3271446756844872376.a n = A160007 (n + 1)

theorem P3271446756844872376.correct : P3271446756844872376.Spec := by
  intro n
  simp only [A160007, Nat.add_sub_cancel]

end A160007

/-! ## A160007.P11706539016929140956

`A023196(n+1)+A001221(A087762(n+1))`
-/

namespace A160007.P11706539016929140956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023196 (n + 1) + A001221 (A087762 (n + 1)).toNat

end

end A160007.P11706539016929140956

namespace A160007

/-- `A023196(n+1)+A001221(A087762(n+1))` -/
def P11706539016929140956.Spec : Prop :=
  ∀ n, P11706539016929140956.a n = A160007 (n + 1)

end A160007

/-! ## A160007.P10590138970378354955

`A349905(A302491(n+1))+A023196(n+1)`
-/

namespace A160007.P10590138970378354955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349905 (A302491 (n + 1)).toNat + A023196 (n + 1)

end

end A160007.P10590138970378354955

namespace A160007

/-- `A349905(A302491(n+1))+A023196(n+1)` -/
def P10590138970378354955.Spec : Prop :=
  ∀ n, P10590138970378354955.a n = A160007 (n + 1)

end A160007

/-! ## A160007.P7753868882178118662

`A328569(A286243(n+1))+A023196(n+1)`
-/

namespace A160007.P7753868882178118662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328569 (A286243 (n + 1)).toNat + A023196 (n + 1)

end

end A160007.P7753868882178118662

namespace A160007

/-- `A328569(A286243(n+1))+A023196(n+1)` -/
def P7753868882178118662.Spec : Prop :=
  ∀ n, P7753868882178118662.a n = A160007 (n + 1)

end A160007

/-! ## A160007.P10543059720998159308

`A168181(A130824(3*n+1))+A023196(n+1)`
-/

namespace A160007.P10543059720998159308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168181 (A130824 (3 * n + 1)).toNat + A023196 (n + 1)

end

end A160007.P10543059720998159308

namespace A160007

/-- `A168181(A130824(3*n+1))+A023196(n+1)` -/
def P10543059720998159308.Spec : Prop :=
  ∀ n, P10543059720998159308.a n = A160007 (n + 1)

end A160007

/-! ## A160007.P10662568659437876420

`A178226(A023197(n+1))+A023196(n+1)`
-/

namespace A160007.P10662568659437876420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178226 (A023197 (n + 1)).toNat + A023196 (n + 1)

end

end A160007.P10662568659437876420

namespace A160007

/-- `A178226(A023197(n+1))+A023196(n+1)` -/
def P10662568659437876420.Spec : Prop :=
  ∀ n, P10662568659437876420.a n = A160007 (n + 1)

end A160007

/-! ## A160007.P13434306552917833955

`A023196(n+1)+A000002(A074273(2*n+3))`
-/

namespace A160007.P13434306552917833955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023196 (n + 1) + A000002 (A074273 (2 * n + 3)).toNat

end

end A160007.P13434306552917833955

namespace A160007

/-- `A023196(n+1)+A000002(A074273(2*n+3))` -/
def P13434306552917833955.Spec : Prop :=
  ∀ n, P13434306552917833955.a n = A160007 (n + 1)

end A160007

/-! ## A160007.P13621533321741823152

`A023196(n+1)+A001221(A252091(n+1))`
-/

namespace A160007.P13621533321741823152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023196 (n + 1) + A001221 (A252091 (n + 1)).toNat

end

end A160007.P13621533321741823152

namespace A160007

/-- `A023196(n+1)+A001221(A252091(n+1))` -/
def P13621533321741823152.Spec : Prop :=
  ∀ n, P13621533321741823152.a n = A160007 (n + 1)

end A160007

/-! ## A160007.P10654997438090070857

`A023196(n+1)+A000688(A006881(2*(n+2)))`
-/

namespace A160007.P10654997438090070857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023196 (n + 1) + A000688 (A006881 (2 * (n + 2))).toNat

end

end A160007.P10654997438090070857

namespace A160007

/-- `A023196(n+1)+A000688(A006881(2*(n+2)))` -/
def P10654997438090070857.Spec : Prop :=
  ∀ n, P10654997438090070857.a n = A160007 (n + 1)

end A160007

/-! ## A160007.P8073482886271913015

`A028234(A000961(n+1))+A023196(n+1)`
-/

namespace A160007.P8073482886271913015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (A000961 (n + 1)).toNat + A023196 (n + 1)

end

end A160007.P8073482886271913015

namespace A160007

/-- `A028234(A000961(n+1))+A023196(n+1)` -/
def P8073482886271913015.Spec : Prop :=
  ∀ n, P8073482886271913015.a n = A160007 (n + 1)

end A160007

/-! ## A160007.P5964116621202390140

`A355825(A105184(2*(n+2)))+A023196(n+1)`
-/

namespace A160007.P5964116621202390140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355825 (A105184 (2 * (n + 2))).toNat + A023196 (n + 1)

end

end A160007.P5964116621202390140

namespace A160007

/-- `A355825(A105184(2*(n+2)))+A023196(n+1)` -/
def P5964116621202390140.Spec : Prop :=
  ∀ n, P5964116621202390140.a n = A160007 (n + 1)

end A160007

/-! ## A160007.P8367585208510789614

`A023196(n+1)+A008480(A050376(n+1))`
-/

namespace A160007.P8367585208510789614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023196 (n + 1) + A008480 (A050376 (n + 1)).toNat

end

end A160007.P8367585208510789614

namespace A160007

/-- `A023196(n+1)+A008480(A050376(n+1))` -/
def P8367585208510789614.Spec : Prop :=
  ∀ n, P8367585208510789614.a n = A160007 (n + 1)

end A160007

/-! ## A160007.P15063009984397495415

`A023196(n+1)+A010887(8*n)`
-/

namespace A160007.P15063009984397495415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023196 (n + 1) + A010887 (8 * n)

end

end A160007.P15063009984397495415

namespace A160007

/-- `A023196(n+1)+A010887(8*n)` -/
def P15063009984397495415.Spec : Prop :=
  ∀ n, P15063009984397495415.a n = A160007 (n + 1)

end A160007

/-! ## A160007.P16211038543698912727

`A317048(n+1)+A067029(A017113(n))`
-/

namespace A160007.P16211038543698912727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317048 (n + 1) + A067029 (A017113 n).toNat

end

end A160007.P16211038543698912727

namespace A160007

/-- `A317048(n+1)+A067029(A017113(n))` -/
def P16211038543698912727.Spec : Prop :=
  ∀ n, P16211038543698912727.a n = A160007 (n + 1)

end A160007

/-! ## A160007.P17537847630611885567

`A023196(n+1)+A014963(A023196(2*(n+2)))`
-/

namespace A160007.P17537847630611885567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023196 (n + 1) + A014963 (A023196 (2 * (n + 2))).toNat

end

end A160007.P17537847630611885567

namespace A160007

/-- `A023196(n+1)+A014963(A023196(2*(n+2)))` -/
def P17537847630611885567.Spec : Prop :=
  ∀ n, P17537847630611885567.a n = A160007 (n + 1)

end A160007

/-! ## A160007.P4306950685894889625

`A143731(A023196(2*n+5))+A023196(n+1)`
-/

namespace A160007.P4306950685894889625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143731 (A023196 (2 * n + 5)).toNat + A023196 (n + 1)

end

end A160007.P4306950685894889625

namespace A160007

/-- `A143731(A023196(2*n+5))+A023196(n+1)` -/
def P4306950685894889625.Spec : Prop :=
  ∀ n, P4306950685894889625.a n = A160007 (n + 1)

end A160007

/-! ## A160007.P7106907827400729272

`A004526(lt[n, A245092(n)])+2`
-/

namespace A160007.P7106907827400729272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) + 2

end

end A160007.P7106907827400729272

namespace A160007

/-- `A004526(lt[n, A245092(n)])+2` -/
def P7106907827400729272.Spec : Prop :=
  ∀ n, P7106907827400729272.a n = A160007 (n + 1)

end A160007

/-! ## A160007.P5741296203911248184

`A023196(n+1)+A000188(A000040(n+1))`
-/

namespace A160007.P5741296203911248184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023196 (n + 1) + A000188 (A000040 (n + 1)).toNat

end

end A160007.P5741296203911248184

namespace A160007

/-- `A023196(n+1)+A000188(A000040(n+1))` -/
def P5741296203911248184.Spec : Prop :=
  ∀ n, P5741296203911248184.a n = A160007 (n + 1)

end A160007

/-!
# A160009: Numbers that are the product of distinct Fibonacci numbers.

The programs for A160009, there is no canonical definition to state claims against.
-/

/-! ## A160009.P15344012262970441999

`A049862(n+1)-A184955(A034868(n))`
-/

namespace A160009.P15344012262970441999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049862 (n + 1) - A184955 (A034868 n).toNat

end

end A160009.P15344012262970441999

/-! ## A160009.P8218507805524441120

`A049862(n+1)-A350386(A049875(n))`
-/

namespace A160009.P8218507805524441120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049862 (n + 1) - A350386 (A049875 n).toNat

end

end A160009.P8218507805524441120

/-!
# A160014: Generalized Clausen numbers (table read by antidiagonals).

The programs for A160014, there is no canonical definition to state claims against.
-/

/-! ## A160014.P2121686470047804287

`gcd(A025581(A057977(n)), A107230(n))`
-/

namespace A160014.P2121686470047804287
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 (A057977 n).toNat) (A107230 n)

end

end A160014.P2121686470047804287

/-! ## A160014.P13236777645316479794

`gcd(6, A152248(A055249(n)))`
-/

namespace A160014.P13236777645316479794
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A152248 (A055249 n).toNat)

end

end A160014.P13236777645316479794

/-! ## A160014.P9958407911526090600

`gcd(A094587(n), A248470(A171018(n+1)))`
-/

namespace A160014.P9958407911526090600
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A094587 n) (A248470 (A171018 (n + 1)).toNat)

end

end A160014.P9958407911526090600

/-! ## A160014.P12424266535894831469

`gcd(A187829(A094587(n)), A255837(n+1))`
-/

namespace A160014.P12424266535894831469
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A187829 (A094587 n).toNat) (A255837 (n + 1))

end

end A160014.P12424266535894831469

/-! ## A160014.P6770569669646653321

`gcd(A183158(n), A255837(A187829(n+1)))`
-/

namespace A160014.P6770569669646653321
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A183158 n) (A255837 (A187829 (n + 1)).toNat)

end

end A160014.P6770569669646653321

/-!
# A160016: Lodumo_2 transform of A159833.

The programs for A160016, the canonical program `A160016.P18102945791737797298` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160016 has offset 0).

The definition of A160016 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160016.P18102945791737797298

`A004525(n)+n%A116966(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A160016

/-- `A004525(n)+n%A116966(n)` -/
def P18102945791737797298.Spec : Prop :=
  ∀ n, P18102945791737797298.a n = A160016 n

theorem P18102945791737797298.correct : P18102945791737797298.Spec := by
  intro n
  simp only [A160016]

end A160016

/-! ## A160016.P1429530322920920343

`2*n-A347365(A004524(n+1))`
-/

namespace A160016.P1429530322920920343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A347365 (A004524 (n + 1)).toNat

end

end A160016.P1429530322920920343

namespace A160016

/-- `2*n-A347365(A004524(n+1))` -/
def P1429530322920920343.Spec : Prop :=
  ∀ n, P1429530322920920343.a n = A160016 n

end A160016

/-! ## A160016.P17585771142798874824

`xor(1, A026200(n+3)-3)`
-/

namespace A160016.P17585771142798874824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A026200 (n + 3) - 3)

end

end A160016.P17585771142798874824

namespace A160016

/-- `xor(1, A026200(n+3)-3)` -/
def P17585771142798874824.Spec : Prop :=
  ∀ n, P17585771142798874824.a n = A160016 n

end A160016

/-! ## A160016.P8965236395085569083

`A047229(n+1)-n*Δ[A002265(n+1)]`
-/

namespace A160016.P8965236395085569083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047229 (n + 1) - (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A160016.P8965236395085569083

namespace A160016

/-- `A047229(n+1)-n*Δ[A002265(n+1)]` -/
def P8965236395085569083.Spec : Prop :=
  ∀ n, P8965236395085569083.a n = A160016 n

end A160016

/-! ## A160016.P10680991838961385252

`A004525(n)+n*A059841(A001281(n))`
-/

namespace A160016.P10680991838961385252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (n : ℤ) * A059841 (A001281 n).toNat

end

end A160016.P10680991838961385252

namespace A160016

/-- `A004525(n)+n*A059841(A001281(n))` -/
def P10680991838961385252.Spec : Prop :=
  ∀ n, P10680991838961385252.a n = A160016 n

end A160016

/-! ## A160016.P16309633419041462967

`A047229(n+1)/gcd(3, A000032(n))`
-/

namespace A160016.P16309633419041462967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047229 (n + 1) : ℚ) / (Int.gcd 3 (A000032 n) : ℚ)

end

end A160016.P16309633419041462967

namespace A160016

/-- `A047229(n+1)/gcd(3, A000032(n))` -/
def P16309633419041462967.Spec : Prop :=
  ∀ n, P16309633419041462967.a n = (A160016 n : ℚ)

end A160016

/-!
# A160017: Lodumo_2 of Thue-Morse sequence A010060.

The programs for A160017, the canonical program `A160017.P1226462455152148588` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160017 has offset 0).

The definition of A160017 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160017.P1226462455152148588

`xor(n, a(floor(n/2))%2)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A160017

/-- `xor(n, a(floor(n/2))%2)` -/
def P1226462455152148588.Spec : Prop :=
  ∀ n, (P1226462455152148588.a n : ℤ) = A160017 n

theorem P1226462455152148588.correct : P1226462455152148588.Spec := by
  intro n
  simp only [A160017]

end A160017

/-! ## A160017.P14573172524741339092

`xor(n, and(1, a(floor(n/2))))` with `a(0)=0`
-/

namespace A160017.P14573172524741339092
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor n (Nat.land 1 (a ⌊(n : ℚ) / 2⌋.toNat))

end

end A160017.P14573172524741339092

namespace A160017

/-- `xor(n, and(1, a(floor(n/2))))` -/
def P14573172524741339092.Spec : Prop :=
  ∀ n, (P14573172524741339092.a n : ℤ) = A160017 n

theorem P14573172524741339092.correct : P14573172524741339092.Spec := by
  intro n
  simp only [A160017, Nat.add_sub_cancel, A160017.P14573172524741339092.a, A160017.P1226462455152148588.a, SequenceMachineLib.memo_apply]
  try simp

end A160017

/-! ## A160017.P6794379117277245806

`or(1, n)-char[xor(n, 2*n)]`
-/

namespace A160017.P6794379117277245806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A160017.P6794379117277245806

namespace A160017

/-- `or(1, n)-char[xor(n, 2*n)]` -/
def P6794379117277245806.Spec : Prop :=
  ∀ n, P6794379117277245806.a n = A160017 n

end A160017

/-! ## A160017.P16924084521689395244

`xor(or(1, n), char[xor(n, 2*n)])`
-/

namespace A160017.P16924084521689395244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (Nat.lor 1 n) (if ∃ j, f1 j = n then 1 else 0)

end

end A160017.P16924084521689395244

namespace A160017

/-- `xor(or(1, n), char[xor(n, 2*n)])` -/
def P16924084521689395244.Spec : Prop :=
  ∀ n, (P16924084521689395244.a n : ℤ) = A160017 n

end A160017

/-! ## A160017.P16676901003472989520

`xor(n, char[xor(n, or(2, n+n))])`
-/

namespace A160017.P16676901003472989520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (Nat.lor 2 (n + n))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (if ∃ j, f1 j = n then 1 else 0)

end

end A160017.P16676901003472989520

namespace A160017

/-- `xor(n, char[xor(n, or(2, n+n))])` -/
def P16676901003472989520.Spec : Prop :=
  ∀ n, (P16676901003472989520.a n : ℤ) = A160017 n

end A160017

/-! ## A160017.P18382560747212784866

`xor(n, ∑[∑{e}[and(n, -n), #]]%2)`
-/

namespace A160017.P18382560747212784866
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n ((∑ j ∈ Finset.range (n + 1), f1 j) % 2)

end

end A160017.P18382560747212784866

namespace A160017

/-- `xor(n, ∑[∑{e}[and(n, -n), #]]%2)` -/
def P18382560747212784866.Spec : Prop :=
  ∀ n, (P18382560747212784866.a n : ℤ) = A160017 n

end A160017

/-! ## A160017.P14147345414122112127

`or(1, 3*n)-comp[xor(n, 2*n)]`
-/

namespace A160017.P14147345414122112127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (3 * n) : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A160017.P14147345414122112127

namespace A160017

/-- `or(1, 3*n)-comp[xor(n, 2*n)]` -/
def P14147345414122112127.Spec : Prop :=
  ∀ n, P14147345414122112127.a n = A160017 n

end A160017

/-! ## A160017.P6997509776512814821

`or(1, 3*n)%comp[xor(n, 2*n)]`
-/

namespace A160017.P6997509776512814821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (3 * n) % SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A160017.P6997509776512814821

namespace A160017

/-- `or(1, 3*n)%comp[xor(n, 2*n)]` -/
def P6997509776512814821.Spec : Prop :=
  ∀ n, (P6997509776512814821.a n : ℤ) = A160017 n

end A160017

/-! ## A160017.P11253838253640952717

`A143579(xor(1, n))`
-/

namespace A160017.P11253838253640952717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143579 (Nat.xor 1 n)

end

end A160017.P11253838253640952717

namespace A160017

/-- `A143579(xor(1, n))` -/
def P11253838253640952717.Spec : Prop :=
  ∀ n, P11253838253640952717.a n = A160017 n

end A160017

/-! ## A160017.P4881972955602065904

`xor(n, A095190(n))`
-/

namespace A160017.P4881972955602065904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A095190 n)

end

end A160017.P4881972955602065904

namespace A160017

/-- `xor(n, A095190(n))` -/
def P4881972955602065904.Spec : Prop :=
  ∀ n, P4881972955602065904.a n = A160017 n

end A160017

/-! ## A160017.P10447066420631059029

`or(1, n)-A010059(n)`
-/

namespace A160017.P10447066420631059029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℤ) - A010059 n

end

end A160017.P10447066420631059029

namespace A160017

/-- `or(1, n)-A010059(n)` -/
def P10447066420631059029.Spec : Prop :=
  ∀ n, P10447066420631059029.a n = A160017 n

end A160017

/-! ## A160017.P1174793666403989555

`xor(n, 1-A179020(n))`
-/

namespace A160017.P1174793666403989555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (1 - A179020 n)

end

end A160017.P1174793666403989555

namespace A160017

/-- `xor(n, 1-A179020(n))` -/
def P1174793666403989555.Spec : Prop :=
  ∀ n, P1174793666403989555.a n = A160017 n

end A160017

/-! ## A160017.P5475836017639626431

`xor(n, A010060(floor(n/2)))`
-/

namespace A160017.P5475836017639626431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A010060 ⌊(n : ℚ) / 2⌋.toNat)

end

end A160017.P5475836017639626431

namespace A160017

/-- `xor(n, A010060(floor(n/2)))` -/
def P5475836017639626431.Spec : Prop :=
  ∀ n, P5475836017639626431.a n = A160017 n

end A160017

/-! ## A160017.P13249110074943995815

`A143579(A004442(n))`
-/

namespace A160017.P13249110074943995815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143579 (A004442 n).toNat

end

end A160017.P13249110074943995815

namespace A160017

/-- `A143579(A004442(n))` -/
def P13249110074943995815.Spec : Prop :=
  ∀ n, P13249110074943995815.a n = A160017 n

end A160017

/-! ## A160017.P8617279953677585586

`A052928(n)+A010060(n)`
-/

namespace A160017.P8617279953677585586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 n + A010060 n

end

end A160017.P8617279953677585586

namespace A160017

/-- `A052928(n)+A010060(n)` -/
def P8617279953677585586.Spec : Prop :=
  ∀ n, P8617279953677585586.a n = A160017 n

end A160017

/-! ## A160017.P16196364241913505856

`A109613(n)-A010059(n)`
-/

namespace A160017.P16196364241913505856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n - A010059 n

end

end A160017.P16196364241913505856

namespace A160017

/-- `A109613(n)-A010059(n)` -/
def P16196364241913505856.Spec : Prop :=
  ∀ n, P16196364241913505856.a n = A160017 n

end A160017

/-! ## A160017.P13254542429960736566

`A143579(n)-A106400(n)`
-/

namespace A160017.P13254542429960736566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143579 n - A106400 n

end

end A160017.P13254542429960736566

namespace A160017

/-- `A143579(n)-A106400(n)` -/
def P13254542429960736566.Spec : Prop :=
  ∀ n, P13254542429960736566.a n = A160017 n

end A160017

/-! ## A160017.P6934573057134728313

`A004442(xor(n, A179020(n)))`
-/

namespace A160017.P6934573057134728313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (Int.xor (n : ℤ) (A179020 n)).toNat

end

end A160017.P6934573057134728313

namespace A160017

/-- `A004442(xor(n, A179020(n)))` -/
def P6934573057134728313.Spec : Prop :=
  ∀ n, P6934573057134728313.a n = A160017 n

end A160017

/-! ## A160017.P5343882045390210170

`A093505(n+1)-A000035(n)`
-/

namespace A160017.P5343882045390210170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093505 (n + 1) - A000035 n

end

end A160017.P5343882045390210170

namespace A160017

/-- `A093505(n+1)-A000035(n)` -/
def P5343882045390210170.Spec : Prop :=
  ∀ n, P5343882045390210170.a n = A160017 n

end A160017

/-! ## A160017.P6066963214514550153

`A042948(n)-A161560(n+1)`
-/

namespace A160017.P6066963214514550153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n - A161560 (n + 1)

end

end A160017.P6066963214514550153

namespace A160017

/-- `A042948(n)-A161560(n+1)` -/
def P6066963214514550153.Spec : Prop :=
  ∀ n, P6066963214514550153.a n = A160017 n

end A160017

/-!
# A160018: A175099 with a(3) changed from 0 to 1.

The programs for A160018, there is no canonical definition to state claims against.
-/

/-! ## A160018.P2176786841857298871

`A175099(char[3]+n)`
-/

namespace A160018.P2176786841857298871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175099 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A160018.P2176786841857298871

/-! ## A160018.P10864952585796044711

`or(char[3], A175099(n))`
-/

namespace A160018.P10864952585796044711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A175099 n)

end

end A160018.P10864952585796044711

/-! ## A160018.P8393152183610235119

`A185013(n)+A175099(n)`
-/

namespace A160018.P8393152183610235119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185013 n + A175099 n

end

end A160018.P8393152183610235119

/-! ## A160018.P8259596194439112274

`A175099(n)+1-A267871(n)`
-/

namespace A160018.P8259596194439112274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175099 n + (1 - A267871 n)

end

end A160018.P8259596194439112274

/-! ## A160018.P11300096019095601137

`A175099(n)+A010054(A062584(n))`
-/

namespace A160018.P11300096019095601137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175099 n + A010054 (A062584 n).toNat

end

end A160018.P11300096019095601137

/-! ## A160018.P3622394748622173889

`A175099(n)+A135461(A151566(n))`
-/

namespace A160018.P3622394748622173889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175099 n + A135461 (A151566 n).toNat

end

end A160018.P3622394748622173889

/-! ## A160018.P867104711845469940

`A175099(n)+A135461(A161680(n))`
-/

namespace A160018.P867104711845469940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175099 n + A135461 (A161680 n).toNat

end

end A160018.P867104711845469940

/-! ## A160018.P16842553448697965991

`A253513(A330501(n))+A175099(n)`
-/

namespace A160018.P16842553448697965991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253513 (A330501 n).toNat + A175099 n

end

end A160018.P16842553448697965991

/-! ## A160018.P17867468180343183214

`gcd(A000045(A005926(n)), A175099(n))`
-/

namespace A160018.P17867468180343183214
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000045 (A005926 n).toNat) (A175099 n)

end

end A160018.P17867468180343183214

/-! ## A160018.P15281632922487882156

`A004442(xor(A175099(n), A267871(n)))`
-/

namespace A160018.P15281632922487882156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (Int.xor (A175099 n) (A267871 n)).toNat

end

end A160018.P15281632922487882156

/-! ## A160018.P5534074144937313376

`A175099(n)+A135461(A135461(n)+n)`
-/

namespace A160018.P5534074144937313376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175099 n + A135461 (A135461 n + (n : ℤ)).toNat

end

end A160018.P5534074144937313376

/-!
# A160020: Row sums of triangle in A160019 .

The programs for A160020, the canonical program `A160020.P17457078898098785969` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160020 has offset 0).

The definition of A160020 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160020.P17457078898098785969

`A048967(n)²+A102376(n)-A048967(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A160020

/-- `A048967(n)²+A102376(n)-A048967(n)` -/
def P17457078898098785969.Spec : Prop :=
  ∀ n, P17457078898098785969.a n = A160020 n

theorem P17457078898098785969.correct : P17457078898098785969.Spec := by
  intro n
  simp only [A160020]

end A160020

/-! ## A160020.P4115050259418374048

`A001316(n)²+A048967(n)²-A048967(n)`
-/

namespace A160020.P4115050259418374048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n ^ 2 + (A048967 n ^ 2 - A048967 n)

end

end A160020.P4115050259418374048

namespace A160020

/-- `A001316(n)²+A048967(n)²-A048967(n)` -/
def P4115050259418374048.Spec : Prop :=
  ∀ n, P4115050259418374048.a n = A160020 n

end A160020

/-! ## A160020.P4929696606837603617

`Δ[A116520(n)]+A048967(n)²-A048967(n)`
-/

namespace A160020.P4929696606837603617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116520 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A048967 n ^ 2 - A048967 n)

end

end A160020.P4929696606837603617

namespace A160020

/-- `Δ[A116520(n)]+A048967(n)²-A048967(n)` -/
def P4929696606837603617.Spec : Prop :=
  ∀ n, P4929696606837603617.a n = A160020 n

end A160020

/-! ## A160020.P10700802225057291955

`A102376(n)+A056847(A048967(n)²)`
-/

namespace A160020.P10700802225057291955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102376 n + A056847 (A048967 n ^ 2).toNat

end

end A160020.P10700802225057291955

namespace A160020

/-- `A102376(n)+A056847(A048967(n)²)` -/
def P10700802225057291955.Spec : Prop :=
  ∀ n, P10700802225057291955.a n = A160020 n

end A160020

/-! ## A160020.P3470761817713904581

`A056847(A048967(n)²)+A001316(n)²`
-/

namespace A160020.P3470761817713904581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 (A048967 n ^ 2).toNat + A001316 n ^ 2

end

end A160020.P3470761817713904581

namespace A160020

/-- `A056847(A048967(n)²)+A001316(n)²` -/
def P3470761817713904581.Spec : Prop :=
  ∀ n, P3470761817713904581.a n = A160020 n

end A160020

/-!
# A160021: a(n) = 2^(2^n) + 33, Fermat numbers of order 33.

The programs for A160021, the canonical program `A160021.P17043479601092264507` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160021 has offset 0).

The definition of A160021 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^2^n+33` (program `A160021.P17043479601092264507`, by `A160021.P17043479601092264507.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A160021.P17043479601092264507

`2^2^n+33`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A160021

/-- `2^2^n+33` -/
def P17043479601092264507.Spec : Prop :=
  ∀ n, (P17043479601092264507.a n : ℤ) = A160021 n

theorem P17043479601092264507.correct : P17043479601092264507.Spec := by
  intro n
  simp only [A160021]

end A160021

/-! ## A160021.P2305847076900990378

`or(32, xor(1, 2^2^n))`
-/

namespace A160021.P2305847076900990378
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 32 (Nat.xor 1 (2 ^ 2 ^ n))

end

end A160021.P2305847076900990378

namespace A160021

/-- `or(32, xor(1, 2^2^n))` -/
def P2305847076900990378.Spec : Prop :=
  ∀ n, (P2305847076900990378.a n : ℤ) = A160021 n

end A160021

/-! ## A160021.P17509531120768132770

`xor(32, xor(1, 2^2^n))`
-/

namespace A160021.P17509531120768132770
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 32 (Nat.xor 1 (2 ^ 2 ^ n))

end

end A160021.P17509531120768132770

namespace A160021

/-- `xor(32, xor(1, 2^2^n))` -/
def P17509531120768132770.Spec : Prop :=
  ∀ n, (P17509531120768132770.a n : ℤ) = A160021 n

end A160021

/-! ## A160021.P13957435498052317883

`or(32, A000215(n))`
-/

namespace A160021.P13957435498052317883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 32 (A000215 n)

end

end A160021.P13957435498052317883

namespace A160021

/-- `or(32, A000215(n))` -/
def P13957435498052317883.Spec : Prop :=
  ∀ n, P13957435498052317883.a n = A160021 n

end A160021

/-! ## A160021.P3868808369248554384

`or(32, A051179(n)+2)`
-/

namespace A160021.P3868808369248554384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 32 (A051179 n + 2)

end

end A160021.P3868808369248554384

namespace A160021

/-- `or(32, A051179(n)+2)` -/
def P3868808369248554384.Spec : Prop :=
  ∀ n, P3868808369248554384.a n = A160021 n

end A160021

/-!
# A160022: Primes p such that p^4 + 5^4 + 3^4 is prime.

The programs for A160022, there is no canonical definition to state claims against.
-/

/-! ## A160022.P1636862028936191239

`p?[A178177(n+1)]`
-/

namespace A160022.P1636862028936191239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178177 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A160022.P1636862028936191239

/-! ## A160022.P13605146566293987448

`∩[A178177(n+1), A380468(n+1)]`
-/

namespace A160022.P13605146566293987448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160022.P13605146566293987448

/-! ## A160022.P15605786138426425702

`∩[A042989(n+1), A178177(n+1)]`
-/

namespace A160022.P15605786138426425702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160022.P15605786138426425702

/-! ## A160022.P6503681612480182021

`∩[A045308(n+1), A178177(n+1)]`
-/

namespace A160022.P6503681612480182021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160022.P6503681612480182021

/-! ## A160022.P7126029857013055461

`∩[A178177(n+1), A042988(n)]`
-/

namespace A160022.P7126029857013055461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042988 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160022.P7126029857013055461

/-! ## A160022.P8389362473948601844

`∩[A042997(n+1), A178177(n+1)]`
-/

namespace A160022.P8389362473948601844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160022.P8389362473948601844

/-! ## A160022.P10274928495142186700

`∩[A044042(n+1), A178177(n+1)]`
-/

namespace A160022.P10274928495142186700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160022.P10274928495142186700

/-! ## A160022.P18265602440784680637

`∩[A042966(n+1), A178177(n+1)]`
-/

namespace A160022.P18265602440784680637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160022.P18265602440784680637

/-! ## A160022.P10565574486491016969

`∩[A178177(n+1), A216881(n+1)]`
-/

namespace A160022.P10565574486491016969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160022.P10565574486491016969

/-! ## A160022.P12531367001177436095

`∩[A178177(n+1), A216882(n+1)]`
-/

namespace A160022.P12531367001177436095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160022.P12531367001177436095

/-! ## A160022.P1780792713661023019

`∩[A065376(n+1), A178177(n+1)]`
-/

namespace A160022.P1780792713661023019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160022.P1780792713661023019

/-! ## A160022.P2192098385227726430

`∩[A000040(n+1), A178177(n+1)]`
-/

namespace A160022.P2192098385227726430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160022.P2192098385227726430

/-! ## A160022.P10367970922000686981

`∩[A004139(n+1), A178177(n+1)]`
-/

namespace A160022.P10367970922000686981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160022.P10367970922000686981

/-! ## A160022.P11474923616510483053

`∩[A006005(n+1), A178177(n+1)]`
-/

namespace A160022.P11474923616510483053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160022.P11474923616510483053

/-! ## A160022.P7589981964110496329

`∩[A045319(n+1), A178177(n+1)]`
-/

namespace A160022.P7589981964110496329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160022.P7589981964110496329

/-! ## A160022.P9553819535010624396

`∩[A065091(n+1), A178177(n+1)]`
-/

namespace A160022.P9553819535010624396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160022.P9553819535010624396

/-! ## A160022.P10781412118067541650

`∩[A065396(n+1), A178177(n+1)]`
-/

namespace A160022.P10781412118067541650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160022.P10781412118067541650

/-! ## A160022.P11481818000038095143

`∩[A093515(n+1), A178177(n+1)]`
-/

namespace A160022.P11481818000038095143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160022.P11481818000038095143

/-! ## A160022.P16474068309246429282

`∩[A178177(n+1), A197636(n+1)]`
-/

namespace A160022.P16474068309246429282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160022.P16474068309246429282

/-! ## A160022.P5353118674119264619

`∩[A008578(n+1), A178177(n+1)]`
-/

namespace A160022.P5353118674119264619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160022.P5353118674119264619

/-!
# A160023: Primes p such that p^4 + 7^4 + 3^4 is prime.

The programs for A160023, there is no canonical definition to state claims against.
-/

/-! ## A160023.P246139759964311880

`p?[A119570(n+1)-A318454(n+1)]`
-/

namespace A160023.P246139759964311880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119570 (n + 1) - A318454 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A160023.P246139759964311880

/-! ## A160023.P2633667066373854881

`A000040(∑[dr(A263469(2*n+5))])`
-/

namespace A160023.P2633667066373854881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A263469 (2 * n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A160023.P2633667066373854881

/-!
# A160024: Primes p such that p^4 + 11^4 + 3^4 is prime.

The programs for A160024, there is no canonical definition to state claims against.
-/

/-! ## A160024.P5600274805333785944

`eq[A143862(n), A255318(A321346(n))]`
-/

namespace A160024.P5600274805333785944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143862 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255318 (A321346 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A160024.P5600274805333785944

/-! ## A160024.P2064532090939892629

`p?[or(A138891(3*n+4), A138904(n))]`
-/

namespace A160024.P2064532090939892629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A138891 (3 * n + 4)) (A138904 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A160024.P2064532090939892629

/-! ## A160024.P10846427928585414183

`p?[A020915(3*n+1)-A265209(2*(n+1))²]`
-/

namespace A160024.P10846427928585414183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 (3 * n + 1) - A265209 (2 * (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A160024.P10846427928585414183

/-! ## A160024.P1021008377797667104

`A328298(A096281(n+2)-n)`
-/

namespace A160024.P1021008377797667104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328298 (A096281 (n + 2) - (n : ℤ)).toNat

end

end A160024.P1021008377797667104

/-!
# A160025: Primes p such that p^4 + 13^4 + 3^4 is prime.

The programs for A160025, there is no canonical definition to state claims against.
-/

/-! ## A160025.P5594867755889176450

`∩[A045417(n+1), A104702(n+1)]`
-/

namespace A160025.P5594867755889176450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104702 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160025.P5594867755889176450

/-! ## A160025.P16048416503683924822

`∩[A045426(n+1), A104702(n+1)]`
-/

namespace A160025.P16048416503683924822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045426 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104702 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160025.P16048416503683924822

/-! ## A160025.P10006739577413698690

`eq[A010060(A122953(n+1)), A357062(n)]`
-/

namespace A160025.P10006739577413698690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A122953 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357062 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A160025.P10006739577413698690

/-!
# A160026: Primes p such that p^4 + 17^4 + 3^4 is prime.

The programs for A160026, there is no canonical definition to state claims against.
-/

/-! ## A160026.P6468167795617552855

`p?[xor(A336315(n+1), A336340(3*n+4))]`
-/

namespace A160026.P6468167795617552855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A336315 (n + 1)) (A336340 (3 * n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A160026.P6468167795617552855

/-! ## A160026.P13682410342775659114

`filter[A026477(2*n+1), A147781(#)]`
-/

namespace A160026.P13682410342775659114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026477 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A147781 (f1 j).toNat = 1) n)

end

end A160026.P13682410342775659114

/-!
# A160027: Primes of the form 2^(2^k)+15.

The programs for A160027, the canonical program `A160027.P10790398997134041792` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160027 has offset 1).

The definition of A160027 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A160027.P10790398997134041792

`2^2^n+15`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A160027

/-- `2^2^n+15` -/
def P10790398997134041792.Spec : Prop :=
  ∀ n, (P10790398997134041792.a n : ℤ) = A160027 (n + 1)

theorem P10790398997134041792.correct : P10790398997134041792.Spec := by
  intro n
  simp only [A160027, Nat.add_sub_cancel]

end A160027

/-!
# A160028: Primes of the form 2^(2^k)+81.

The programs for A160028, there is no canonical definition to state claims against.
-/

/-! ## A160028.P2929158228096215123

`A220250(A000079(n))+81`
-/

namespace A160028.P2929158228096215123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220250 (A000079 n).toNat + 81

end

end A160028.P2929158228096215123

/-! ## A160028.P14569881460287204138

`A155543(A155559(n))+81`
-/

namespace A160028.P14569881460287204138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155543 (A155559 n).toNat + 81

end

end A160028.P14569881460287204138

/-! ## A160028.P5902980447264174340

`A000051(A151821(n+1))+80`
-/

namespace A160028.P5902980447264174340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (A151821 (n + 1)).toNat + 80

end

end A160028.P5902980447264174340

/-!
# A160030: Primes of the form 2^(2^k)+385.

The programs for A160030, there is no canonical definition to state claims against.
-/

/-! ## A160030.P2808756606883721938

`A273807(n+1)-42`
-/

namespace A160030.P2808756606883721938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273807 (n + 1) - 42

end

end A160030.P2808756606883721938

/-!
# A160031: Primes p such that p^4 + 2*3^4 is prime.

The programs for A160031, there is no canonical definition to state claims against.
-/

/-! ## A160031.P7316452368634165351

`record[p?[A038387(A134620(n+1))]]`
-/

namespace A160031.P7316452368634165351
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038387 (A134620 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160031.P7316452368634165351

/-!
# A160032: Primes of the form 2^(2^k)+93.

The programs for A160032, the canonical program `A160032.P9733613903164171199` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160032 has offset 1).

The definition of A160032 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A160032.P9733613903164171199

`2^2^(n+1)+93`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A160032

/-- `2^2^(n+1)+93` -/
def P9733613903164171199.Spec : Prop :=
  ∀ n, (P9733613903164171199.a n : ℤ) = A160032 (n + 1)

theorem P9733613903164171199.correct : P9733613903164171199.Spec := by
  intro n
  simp only [A160032, Nat.add_sub_cancel]

end A160032

/-!
# A160034: Primes of the form 2^(2^k) + 807 .

The programs for A160034, there is no canonical definition to state claims against.
-/

/-! ## A160034.P5313499546060885259

`806+p?[or(1, 2^n)]`
-/

namespace A160034.P5313499546060885259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  806 + f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A160034.P5313499546060885259

/-!
# A160035: Clausen-normalized numerators of the Bernoulli numbers of order 2.

The programs for A160035, there is no canonical definition to state claims against.
-/

/-! ## A160035.P12831776976719552244

`(1-n)*A027641(n)`
-/

namespace A160035.P12831776976719552244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) * A027641 n

end

end A160035.P12831776976719552244

/-! ## A160035.P7195746757099627413

`(1-n)*A164555(n)`
-/

namespace A160035.P7195746757099627413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) * A164555 n

end

end A160035.P7195746757099627413

/-! ## A160035.P4039240090196690605

`(1-n)*A176327(n)`
-/

namespace A160035.P4039240090196690605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) * A176327 n

end

end A160035.P4039240090196690605

/-! ## A160035.P10811439169579108349

`(1-n)*A227570(n)`
-/

namespace A160035.P10811439169579108349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) * A227570 n

end

end A160035.P10811439169579108349

/-! ## A160035.P16031831734293320853

`(1-n)*A227573(n)`
-/

namespace A160035.P16031831734293320853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) * A227573 n

end

end A160035.P16031831734293320853

/-!
# A160039: Numerators of n!*(1 + 1/2 + 1/3 +...+ 1/(n+1)).

The programs for A160039, there is no canonical definition to state claims against.
-/

/-! ## A160039.P1696139941944753617

`lcm(n+1, Δ[A097422(n)])/(n+1)`
-/

namespace A160039.P1696139941944753617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097422 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (f1 (n + 1) - f1 n) : ℚ) / (n + 1 : ℚ)

end

end A160039.P1696139941944753617

/-! ## A160039.P14950511340661133987

`A000254(n+1)/gcd(n+1, A000254(n+1))`
-/

namespace A160039.P14950511340661133987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000254 (n + 1) : ℚ) / (Int.gcd (n + 1 : ℤ) (A000254 (n + 1)) : ℚ)

end

end A160039.P14950511340661133987

/-! ## A160039.P15866210841951230860

`A001008(n+1)*A335452(A001764(n))`
-/

namespace A160039.P15866210841951230860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001008 (n + 1) * A335452 (A001764 n).toNat

end

end A160039.P15866210841951230860

/-!
# A160041: Positive numbers y such that y^2 is of the form x^2+(x+73)^2 with integer x.

The programs for A160041, the canonical program `A160041.P14756072548959804615` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160041 has offset 1).

The definition of A160041 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A160041.P14756072548959804615

`6*a(n-3)-a(n-6)` with `a(0)=53, a(1)=73, a(2)=125, a(3)=193, a(4)=365, a(5)=697`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A160041

/-- `6*a(n-3)-a(n-6)` -/
def P14756072548959804615.Spec : Prop :=
  ∀ n, P14756072548959804615.a n = A160041 (n + 1)

theorem P14756072548959804615.correct : P14756072548959804615.Spec := by
  intro n
  simp only [A160041, Nat.add_sub_cancel]

end A160041

/-! ## A160041.P18195190488624118416

`A000051(a(n-1))` with `a(0)=53, a(1)=73, a(2)=125, a(3)=193, a(4)=365, a(5)=697`
-/

namespace A160041.P18195190488624118416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [53, 73, 125, 193, 365, 697] fun n a =>
  A000051 (a (n - 1)).toNat

end

end A160041.P18195190488624118416

namespace A160041

/-- `A000051(a(n-1))` -/
def P18195190488624118416.Spec : Prop :=
  ∀ n, P18195190488624118416.a n = A160041 (n + 1)

end A160041

/-!
# A160044: Nonnegative integers x such that x^y+y^x is not prime for any integer y>1, y

The programs for A160044, there is no canonical definition to state claims against.
-/

/-! ## A160044.P13726912919650729411

`comp[A162486(n+1)]`
-/

namespace A160044.P13726912919650729411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162486 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A160044.P13726912919650729411

/-! ## A160044.P18170502996436473285

`comp[A162488(n+1)]`
-/

namespace A160044.P18170502996436473285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162488 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A160044.P18170502996436473285

/-! ## A160044.P8012919618162139562

`comp[lt[0, A300477(n+2)]+2]`
-/

namespace A160044.P8012919618162139562
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300477 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A160044.P8012919618162139562

/-! ## A160044.P8756370085500648503

`comp[A173928(n+3)+A162489(n+1)]`
-/

namespace A160044.P8756370085500648503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173928 (n + 3) + A162489 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A160044.P8756370085500648503

/-! ## A160044.P4262876756620712576

`eq[char[A162486(n+1)], A007949(3*n+4)]`
-/

namespace A160044.P4262876756620712576
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162486 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A160044.P4262876756620712576

/-!
# A160047: Denominator of the Harary number for the cycle graph C_n.

The programs for A160047, there is no canonical definition to state claims against.
-/

/-! ## A160047.P17600364855560853535

`A000142(n)/gcd(A000142(n), A101609(n+1))`
-/

namespace A160047.P17600364855560853535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (Int.gcd (A000142 n) (A101609 (n + 1)) : ℚ)

end

end A160047.P17600364855560853535

/-! ## A160047.P15093860991389221703

`A178819(A376729(n+1))`
-/

namespace A160047.P15093860991389221703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178819 (A376729 (n + 1)).toNat

end

end A160047.P15093860991389221703

/-! ## A160047.P11088689122132872950

`A008480(A062866(n)+A000129(n+1))`
-/

namespace A160047.P11088689122132872950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A062866 n + A000129 (n + 1)).toNat

end

end A160047.P11088689122132872950

/-! ## A160047.P8092813236369910716

`A124443(n+1)*A329314(A345195(n))`
-/

namespace A160047.P8092813236369910716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124443 (n + 1) * A329314 (A345195 n).toNat

end

end A160047.P8092813236369910716

/-! ## A160047.P2967936781375089077

`gcd(A047726(A131428(n)), A115389(n+1))`
-/

namespace A160047.P2967936781375089077
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A047726 (A131428 n).toNat) (A115389 (n + 1))

end

end A160047.P2967936781375089077

/-!
# A160048: Numerator of the Harary number for the path graph P_n.

The programs for A160048, there is no canonical definition to state claims against.
-/

/-! ## A160048.P9457404012667909267

`2*A093418(n)-A115107(n)`
-/

namespace A160048.P9457404012667909267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093418 n - A115107 n

end

end A160048.P9457404012667909267

/-! ## A160048.P17150003729131895509

`A093418(n)+n*A096620(n)`
-/

namespace A160048.P17150003729131895509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093418 n + (n : ℤ) * A096620 n

end

end A160048.P17150003729131895509

/-! ## A160048.P634258762204567645

`A115107(n)+2*n*A096620(n)`
-/

namespace A160048.P634258762204567645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115107 n + 2 * ((n : ℤ) * A096620 n)

end

end A160048.P634258762204567645

/-! ## A160048.P8558101824525239557

`A093418(n)+n*A027611(n+1)/A043529(n)`
-/

namespace A160048.P8558101824525239557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093418 n : ℚ) + (n : ℚ) * ((A027611 (n + 1) : ℚ) / (A043529 n : ℚ))

end

end A160048.P8558101824525239557

/-! ## A160048.P7782149581416441232

`A093418(n)+n*A027611(n+1)/gcd(2, A001405(n))`
-/

namespace A160048.P7782149581416441232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093418 n : ℚ) + (n : ℚ) * ((A027611 (n + 1) : ℚ) / (Int.gcd 2 (A001405 n) : ℚ))

end

end A160048.P7782149581416441232

/-!
# A160049: 

The programs for A160049, there is no canonical definition to state claims against.
-/

/-! ## A160049.P17154515636854525573

`A096620(n)+char[A163393(n+1)]`
-/

namespace A160049.P17154515636854525573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163393 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096620 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A160049.P17154515636854525573

/-! ## A160049.P16876172765541009687

`lcm(A016327(A002262(n)), A096620(n))`
-/

namespace A160049.P16876172765541009687
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A016327 (A002262 n).toNat) (A096620 n)

end

end A160049.P16876172765541009687

/-! ## A160049.P8905650909256470522

`A241468(A280052(n+2))+A096620(n)`
-/

namespace A160049.P8905650909256470522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241468 (A280052 (n + 2)).toNat + A096620 n

end

end A160049.P8905650909256470522

/-! ## A160049.P254959778002774093

`A000383(A061853(n+1))*A096620(n)`
-/

namespace A160049.P254959778002774093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000383 (A061853 (n + 1)).toNat * A096620 n

end

end A160049.P254959778002774093

/-! ## A160049.P16607334226130020377

`A096620(n)*A178334(A227629(n+1))`
-/

namespace A160049.P16607334226130020377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096620 n * A178334 (A227629 (n + 1)).toNat

end

end A160049.P16607334226130020377

/-!
# A160050: Numerator of the Harary number for the star graph s_n.

The programs for A160050, the canonical program `A160050.P10750561568142543269` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160050 has offset 1).

The definition of A160050 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160050.P2868151531440325254

`lcm(2, ∑[n]+n)/2`
-/

namespace A160050.P2868151531440325254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j + n) : ℚ) / 2

end

end A160050.P2868151531440325254

namespace A160050

/-- `lcm(2, ∑[n]+n)/2` -/
def P2868151531440325254.Spec : Prop :=
  ∀ n, P2868151531440325254.a n = (A160050 (n + 1) : ℚ)

end A160050

/-! ## A160050.P10750561568142543269

`floor(lcm(4, n*(n+3))/4)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A160050

/-- `floor(lcm(4, n*(n+3))/4)` -/
def P10750561568142543269.Spec : Prop :=
  ∀ n, P10750561568142543269.a n = A160050 (n + 1)

theorem P10750561568142543269.correct : P10750561568142543269.Spec := by
  intro n
  simp only [A160050, Nat.add_sub_cancel]

end A160050

/-! ## A160050.P1762272099622896755

`gcd(∑[n]+n, C(∑[n+1], 2))`
-/

namespace A160050.P1762272099622896755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (∑ j ∈ Finset.range (n + 1), f1 j + n) (Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) 2)

end

end A160050.P1762272099622896755

namespace A160050

/-- `gcd(∑[n]+n, C(∑[n+1], 2))` -/
def P1762272099622896755.Spec : Prop :=
  ∀ n, (P1762272099622896755.a n : ℤ) = A160050 (n + 1)

end A160050

/-! ## A160050.P1207027008817907424

`(n+3)*n/(and(2, n+2)+2)`
-/

namespace A160050.P1207027008817907424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) * ((n : ℚ) / (Nat.land 2 (n + 2) + 2 : ℚ))

end

end A160050.P1207027008817907424

namespace A160050

/-- `(n+3)*n/(and(2, n+2)+2)` -/
def P1207027008817907424.Spec : Prop :=
  ∀ n, P1207027008817907424.a n = (A160050 (n + 1) : ℚ)

end A160050

/-! ## A160050.P12162912694202128525

`(∑[n]+n)/A000041(and(2, n-2))`
-/

namespace A160050.P12162912694202128525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + n : ℕ) : ℚ) / (A000041 (Int.land 2 ((n : ℤ) - 2)).toNat : ℚ)

end

end A160050.P12162912694202128525

namespace A160050

/-- `(∑[n]+n)/A000041(and(2, n-2))` -/
def P12162912694202128525.Spec : Prop :=
  ∀ n, P12162912694202128525.a n = (A160050 (n + 1) : ℚ)

end A160050

/-! ## A160050.P17934182214361837250

`A217367(n)-A266491(n)`
-/

namespace A160050.P17934182214361837250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217367 n - A266491 n

end

end A160050.P17934182214361837250

namespace A160050

/-- `A217367(n)-A266491(n)` -/
def P17934182214361837250.Spec : Prop :=
  ∀ n, P17934182214361837250.a n = A160050 (n + 1)

end A160050

/-! ## A160050.P18347805497209229606

`lcm(A125650(n), A173234(n))`
-/

namespace A160050.P18347805497209229606
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A125650 n) (A173234 n)

end

end A160050.P18347805497209229606

namespace A160050

/-- `lcm(A125650(n), A173234(n))` -/
def P18347805497209229606.Spec : Prop :=
  ∀ n, (P18347805497209229606.a n : ℤ) = A160050 (n + 1)

end A160050

/-! ## A160050.P9611646976339494249

`gcd(∑[A027480(n)], A000096(n))`
-/

namespace A160050.P9611646976339494249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027480 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A000096 n)

end

end A160050.P9611646976339494249

namespace A160050

/-- `gcd(∑[A027480(n)], A000096(n))` -/
def P9611646976339494249.Spec : Prop :=
  ∀ n, (P9611646976339494249.a n : ℤ) = A160050 (n + 1)

end A160050

/-! ## A160050.P10465653577234465072

`A226089(n+1)-A130658(n)`
-/

namespace A160050.P10465653577234465072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226089 (n + 1) - A130658 n

end

end A160050.P10465653577234465072

namespace A160050

/-- `A226089(n+1)-A130658(n)` -/
def P10465653577234465072.Spec : Prop :=
  ∀ n, P10465653577234465072.a n = A160050 (n + 1)

theorem P10465653577234465072.correct : P10465653577234465072.Spec := by
  intro n
  simp only [A160050, Nat.add_sub_cancel, A160050.P10465653577234465072.a, A160050.P10750561568142543269.a, A130658, A130658.P17554939015796868672.a, A226089, A226089.P12875362830006727066.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A160050

/-! ## A160050.P890365147594310401

`A257942(n)-A226089(n+1)`
-/

namespace A160050.P890365147594310401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257942 n - A226089 (n + 1)

end

end A160050.P890365147594310401

namespace A160050

/-- `A257942(n)-A226089(n+1)` -/
def P890365147594310401.Spec : Prop :=
  ∀ n, P890365147594310401.a n = A160050 (n + 1)

end A160050

/-! ## A160050.P2200554103127461515

`A000096(n)/(A133872(n)+1)`
-/

namespace A160050.P2200554103127461515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000096 n : ℚ) / (A133872 n + 1 : ℚ)

end

end A160050.P2200554103127461515

namespace A160050

/-- `A000096(n)/(A133872(n)+1)` -/
def P2200554103127461515.Spec : Prop :=
  ∀ n, P2200554103127461515.a n = (A160050 (n + 1) : ℚ)

end A160050

/-! ## A160050.P12186692103780909831

`A000096(n)/(2-A021913(n))`
-/

namespace A160050.P12186692103780909831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000096 n : ℚ) / (2 - A021913 n : ℚ)

end

end A160050.P12186692103780909831

namespace A160050

/-- `A000096(n)/(2-A021913(n))` -/
def P12186692103780909831.Spec : Prop :=
  ∀ n, P12186692103780909831.a n = (A160050 (n + 1) : ℚ)

end A160050

/-! ## A160050.P17206843252829764035

`A000096(n)/2*A130658(n)`
-/

namespace A160050.P17206843252829764035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000096 n : ℚ) / 2 * (A130658 n : ℚ)

end

end A160050.P17206843252829764035

namespace A160050

/-- `A000096(n)/2*A130658(n)` -/
def P17206843252829764035.Spec : Prop :=
  ∀ n, P17206843252829764035.a n = (A160050 (n + 1) : ℚ)

end A160050

/-! ## A160050.P374805145274519528

`A000096(n)/gcd(2, A055999(n))`
-/

namespace A160050.P374805145274519528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000096 n : ℚ) / (Int.gcd 2 (A055999 n) : ℚ)

end

end A160050.P374805145274519528

namespace A160050

/-- `A000096(n)/gcd(2, A055999(n))` -/
def P374805145274519528.Spec : Prop :=
  ∀ n, P374805145274519528.a n = (A160050 (n + 1) : ℚ)

end A160050

/-! ## A160050.P9999926362159388893

`A000096(n)/(A128130(n)²+1)`
-/

namespace A160050.P9999926362159388893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000096 n : ℚ) / (A128130 n ^ 2 + 1 : ℚ)

end

end A160050.P9999926362159388893

namespace A160050

/-- `A000096(n)/(A128130(n)²+1)` -/
def P9999926362159388893.Spec : Prop :=
  ∀ n, P9999926362159388893.a n = (A160050 (n + 1) : ℚ)

end A160050

/-! ## A160050.P2137530342873340826

`A064038(n+1)/A181318(n+1)*A198148(n+1)`
-/

namespace A160050.P2137530342873340826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064038 (n + 1) : ℚ) / (A181318 (n + 1) : ℚ) * (A198148 (n + 1) : ℚ)

end

end A160050.P2137530342873340826

namespace A160050

/-- `A064038(n+1)/A181318(n+1)*A198148(n+1)` -/
def P2137530342873340826.Spec : Prop :=
  ∀ n, P2137530342873340826.a n = (A160050 (n + 1) : ℚ)

end A160050

/-! ## A160050.P10499921301106190323

`A000096(n)/A014695(n+1)`
-/

namespace A160050.P10499921301106190323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000096 n : ℚ) / (A014695 (n + 1) : ℚ)

end

end A160050.P10499921301106190323

namespace A160050

/-- `A000096(n)/A014695(n+1)` -/
def P10499921301106190323.Spec : Prop :=
  ∀ n, P10499921301106190323.a n = (A160050 (n + 1) : ℚ)

end A160050

/-! ## A160050.P12656523782453354141

`(A000217(n)+n)/A014695(n+1)`
-/

namespace A160050.P12656523782453354141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 n + (n : ℤ) : ℚ) / (A014695 (n + 1) : ℚ)

end

end A160050.P12656523782453354141

namespace A160050

/-- `(A000217(n)+n)/A014695(n+1)` -/
def P12656523782453354141.Spec : Prop :=
  ∀ n, P12656523782453354141.a n = (A160050 (n + 1) : ℚ)

end A160050

/-! ## A160050.P11892213032583424713

`(A000124(n+1)-2)/A014695(n+1)`
-/

namespace A160050.P11892213032583424713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000124 (n + 1) - 2 : ℚ) / (A014695 (n + 1) : ℚ)

end

end A160050.P11892213032583424713

namespace A160050

/-- `(A000124(n+1)-2)/A014695(n+1)` -/
def P11892213032583424713.Spec : Prop :=
  ∀ n, P11892213032583424713.a n = (A160050 (n + 1) : ℚ)

end A160050

/-! ## A160050.P8650795078746461441

`A028552(n)/(A014695(n+1)+A014695(n+1))`
-/

namespace A160050.P8650795078746461441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028552 n : ℚ) / (A014695 (n + 1) + A014695 (n + 1) : ℚ)

end

end A160050.P8650795078746461441

namespace A160050

/-- `A028552(n)/(A014695(n+1)+A014695(n+1))` -/
def P8650795078746461441.Spec : Prop :=
  ∀ n, P8650795078746461441.a n = (A160050 (n + 1) : ℚ)

end A160050

/-!
# A160051: Lodumo_2 of Kolakoski sequence (A000002).

The programs for A160051, the canonical program `A160051.P932503710892421624` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160051 has offset 0).

The definition of A160051 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160051.P932503710892421624

`a(n-A171899(n+1))+2` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A160051

/-- `a(n-A171899(n+1))+2` -/
def P932503710892421624.Spec : Prop :=
  ∀ n, (P932503710892421624.a n : ℤ) = A160051 n

theorem P932503710892421624.correct : P932503710892421624.Spec := by
  intro n
  simp only [A160051]

end A160051

/-! ## A160051.P9082813917913753470

`A001222(A156552(p?[A194903(n+1)]))`
-/

namespace A160051.P9082813917913753470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A156552 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A160051.P9082813917913753470

namespace A160051

/-- `A001222(A156552(p?[A194903(n+1)]))` -/
def P9082813917913753470.Spec : Prop :=
  ∀ n, P9082813917913753470.a n = A160051 n

end A160051

/-! ## A160051.P5218416676489570671

`Δ[A010702(A050706(n+1)*A108917(n+2))]+n`
-/

namespace A160051.P5218416676489570671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010702 (A050706 (n + 1) * A108917 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A160051.P5218416676489570671

namespace A160051

/-- `Δ[A010702(A050706(n+1)*A108917(n+2))]+n` -/
def P5218416676489570671.Spec : Prop :=
  ∀ n, P5218416676489570671.a n = A160051 n

end A160051

/-! ## A160051.P7787572964016530142

`Δ[A025469(A007093(n)*A161415(3*n+5))]+n`
-/

namespace A160051.P7787572964016530142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025469 (A007093 n * A161415 (3 * n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A160051.P7787572964016530142

namespace A160051

/-- `Δ[A025469(A007093(n)*A161415(3*n+5))]+n` -/
def P7787572964016530142.Spec : Prop :=
  ∀ n, P7787572964016530142.a n = A160051 n

end A160051

/-! ## A160051.P9074868950615827006

`Δ[A053362(3*n+5)%2]+n`
-/

namespace A160051.P9074868950615827006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053362 (3 * n + 5)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A160051.P9074868950615827006

namespace A160051

/-- `Δ[A053362(3*n+5)%2]+n` -/
def P9074868950615827006.Spec : Prop :=
  ∀ n, P9074868950615827006.a n = A160051 n

end A160051

/-!
# A160054: Primes prime(k) such that prime(k)^2 + prime(k+1)^2 - 1 is a perfect square.

The programs for A160054, there is no canonical definition to state claims against.
-/

/-! ## A160054.P7409996506475755855

`A089727(3*(n+1))%A089745(A089740(n+1))`
-/

namespace A160054.P7409996506475755855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089727 (3 * (n + 1))) (A089745 (A089740 (n + 1)).toNat)

end

end A160054.P7409996506475755855

/-!
# A160055: Positive numbers y such that y^2 is of the form x^2+(x+89)^2 with integer x.

The programs for A160055, the canonical program `A160055.P13294592917540011257` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160055 has offset 1).

The definition of A160055 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A160055.P13294592917540011257

`6*a(n-3)-a(n-6)` with `a(0)=65, a(1)=89, a(2)=149, a(3)=241, a(4)=445, a(5)=829`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A160055

/-- `6*a(n-3)-a(n-6)` -/
def P13294592917540011257.Spec : Prop :=
  ∀ n, P13294592917540011257.a n = A160055 (n + 1)

theorem P13294592917540011257.correct : P13294592917540011257.Spec := by
  intro n
  simp only [A160055, Nat.add_sub_cancel]

end A160055

/-!
# A160058: Primes whose distance to both nearest neighbor primes is not of the form 2^k.

The programs for A160058, there is no canonical definition to state claims against.
-/

/-! ## A160058.P10662662058968066325

`∩[A130796(n+1), A003961(A130796(n+1))]`
-/

namespace A160058.P10662662058968066325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130796 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A130796 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160058.P10662662058968066325

/-! ## A160058.P2840271079154273386

`∩[A007918(A130796(n+1)+1), A130796(n+1)]`
-/

namespace A160058.P2840271079154273386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A130796 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160058.P2840271079154273386

/-! ## A160058.P2160271672567730647

`∩[A130796(n+1)+A082509(n+1), A130796(n+1)]`
-/

namespace A160058.P2160271672567730647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130796 (n + 1) + A082509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160058.P2160271672567730647

/-! ## A160058.P16559960690012915478

`∩[A130796(n+1), A355161(n+1)]`
-/

namespace A160058.P16559960690012915478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130796 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160058.P16559960690012915478

/-!
# A160078: Positive integers which apparently never result in a palindrome under repeated applications of the function f(x) = x + (x with digits in binary expansion reversed). Binary analog of Lychrel numbers.

The programs for A160078, there is no canonical definition to state claims against.
-/

/-! ## A160078.P3586849943769024472

`lt[A062129(n), 0]`
-/

namespace A160078.P3586849943769024472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062129 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A160078.P3586849943769024472

/-! ## A160078.P12882589906639225487

`lt[A062131(n), 0]`
-/

namespace A160078.P12882589906639225487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062131 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A160078.P12882589906639225487

/-! ## A160078.P10419672680725103407

`lt[A062128(A055944(n)), 0]`
-/

namespace A160078.P10419672680725103407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062128 (A055944 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A160078.P10419672680725103407

/-! ## A160078.P10065951032327889139

`eq[A060376(n), A062129(n)]`
-/

namespace A160078.P10065951032327889139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060376 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062129 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A160078.P10065951032327889139

/-! ## A160078.P8106542298256528978

`eq[A060376(n), A062131(n)]`
-/

namespace A160078.P8106542298256528978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060376 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062131 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A160078.P8106542298256528978

/-!
# A160079: Lodumo_3 of Fibonacci numbers.

The programs for A160079, there is no canonical definition to state claims against.
-/

/-! ## A160079.P8707841203606673357

`A160101(3*n)/2`
-/

namespace A160079.P8707841203606673357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160101 (3 * n) : ℚ) / 2

end

end A160079.P8707841203606673357

/-! ## A160079.P14792797967746417138

`A004525(A160101(3*n))`
-/

namespace A160079.P14792797967746417138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A160101 (3 * n)).toNat

end

end A160079.P14792797967746417138

/-! ## A160079.P3695657755772768218

`floor(A160101(A008486(n))/2)`
-/

namespace A160079.P3695657755772768218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A160101 (A008486 n).toNat : ℚ) / 2⌋

end

end A160079.P3695657755772768218

/-! ## A160079.P4149456852237236321

`A006370(lcm(2, A160101(3*n)))`
-/

namespace A160079.P4149456852237236321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (Int.lcm 2 (A160101 (3 * n)))

end

end A160079.P4149456852237236321

/-! ## A160079.P4569615217716280447

`A110657(2*A160101(3*n))`
-/

namespace A160079.P4569615217716280447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (2 * A160101 (3 * n)).toNat

end

end A160079.P4569615217716280447

/-!
# A160085: Number of ordered complementing systems of subsets of {0, 1, ..., n-1} (see A104725).

The programs for A160085, there is no canonical definition to state claims against.
-/

/-! ## A160085.P13732266570695813987

`A353086(A353858(n)+1)`
-/

namespace A160085.P13732266570695813987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353086 (A353858 n + 1).toNat

end

end A160085.P13732266570695813987

/-! ## A160085.P10014709273609586530

`A280079(3^A074206(n))`
-/

namespace A160085.P10014709273609586530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280079 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A074206 n : ℤ))).toNat

end

end A160085.P10014709273609586530

/-! ## A160085.P13750107281805342916

`A182662(5^A074206(n))`
-/

namespace A160085.P13750107281805342916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182662 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A074206 n : ℤ))).toNat

end

end A160085.P13750107281805342916

/-! ## A160085.P12367502012628737165

`∑{d}[A104725(n), A196444(#)]`
-/

namespace A160085.P12367502012628737165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A196444 d

end

end A160085.P12367502012628737165

/-!
# A160086: a(n) = A104725(n) - A074206(n).

The programs for A160086, there is no canonical definition to state claims against.
-/

/-! ## A160086.P14640086157661228186

`A104725(n)-A074206(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A160086.P14640086157661228186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104725 n - A074206 n

end

end A160086.P14640086157661228186

/-! ## A160086.P15888611906783577020

`A104725(n)+A057428(n)*A074206(n)`
-/

namespace A160086.P15888611906783577020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104725 n + A057428 n * A074206 n

end

end A160086.P15888611906783577020

/-! ## A160086.P5890589730041259780

`A104725(n)+A074206(n)*A153881(n+1)`
-/

namespace A160086.P5890589730041259780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104725 n + A074206 n * A153881 (n + 1)

end

end A160086.P5890589730041259780

/-! ## A160086.P18063947770909121135

`A104725(n)-∑{e}[A006530(n+1), A002033(n-#)]`
-/

namespace A160086.P18063947770909121135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104725 n - ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A002033 (n - Nat.factorization (f1 n).natAbs p)

end

end A160086.P18063947770909121135

/-! ## A160086.P1073124560279860350

`A104725(n)-A002033(n-A057427(n))*A057427(n)`
-/

namespace A160086.P1073124560279860350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104725 n - A002033 ((n : ℤ) - A057427 n).toNat * A057427 n

end

end A160086.P1073124560279860350

/-!
# A160089: The maximum of the absolute value of the coefficients of Pn = (1-x)(1-x^2)(1-x^3)...(1-x^n).

The programs for A160089, there is no canonical definition to state claims against.
-/

/-! ## A160089.P6545611829391792762

`or(A086376(n), A340998(A073122(n+1)))`
-/

namespace A160089.P6545611829391792762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A086376 n) (A340998 ((A073122 (n + 1)).toNat + 140))

end

end A160089.P6545611829391792762

/-! ## A160089.P18189541298964663557

`A340998(A107027(n))+A086376(n)`
-/

namespace A160089.P18189541298964663557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340998 ((A107027 n).toNat + 140) + A086376 n

end

end A160089.P18189541298964663557

/-! ## A160089.P11149633328058999389

`A165685(A086389(3*n+2))+A086376(n)`
-/

namespace A160089.P11149633328058999389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165685 (A086389 (3 * n + 2)).toNat + A086376 n

end

end A160089.P11149633328058999389

/-! ## A160089.P7233888905752805887

`A185284(A143619(n))+A086376(n)`
-/

namespace A160089.P7233888905752805887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A143619 n).toNat + A086376 n

end

end A160089.P7233888905752805887

/-! ## A160089.P1946541944685925549

`A185284(A086376(n+4))+A086376(n)`
-/

namespace A160089.P1946541944685925549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A086376 (n + 4)).toNat + A086376 n

end

end A160089.P1946541944685925549

/-!
# A160093: Number of digits in n, excluding any trailing zeros.

The programs for A160093, there is no canonical definition to state claims against.
-/

/-! ## A160093.P4588342551245117315

`A055642(A004086(n+1))`
-/

namespace A160093.P4588342551245117315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A004086 (n + 1)).toNat

end

end A160093.P4588342551245117315

/-!
# A160094: a(n) = 1 + A122840(n).

The programs for A160094, the canonical program `A160094.P14962074149469739945` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160094 has offset 1).

The definition of A160094 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A160094.P14962074149469739945

`1+A122840(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A160094

/-- `1+A122840(n+1)` -/
def P14962074149469739945.Spec : Prop :=
  ∀ n, P14962074149469739945.a n = A160094 (n + 1)

theorem P14962074149469739945.correct : P14962074149469739945.Spec := by
  intro n
  simp only [A160094, Nat.add_sub_cancel]

end A160094

/-! ## A160094.P13798705321279994431

`1+A054899(n+1)-A054899(n)`
-/

namespace A160094.P13798705321279994431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A054899 (n + 1) - A054899 n

end

end A160094.P13798705321279994431

namespace A160094

/-- `1+A054899(n+1)-A054899(n)` -/
def P13798705321279994431.Spec : Prop :=
  ∀ n, P13798705321279994431.a n = A160094 (n + 1)

end A160094

/-! ## A160094.P10166260661731593580

`val(n+1, 10)+1`
-/

namespace A160094.P10166260661731593580
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 10 + 1

end

end A160094.P10166260661731593580

namespace A160094

/-- `val(n+1, 10)+1` -/
def P10166260661731593580.Spec : Prop :=
  ∀ n, (P10166260661731593580.a n : ℤ) = A160094 (n + 1)

theorem P10166260661731593580.correct : P10166260661731593580.Spec := by
  intro n
  simp only [A160094, Nat.add_sub_cancel, A160094.P10166260661731593580.a, A160094.P14962074149469739945.a, A122840, A122840.P15384273099785302065.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A160094

/-! ## A160094.P8402606767971083414

`Δ[a(floor(n/10))+n]` with `a(0)=0`
-/

namespace A160094.P8402606767971083414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 10⌋.toNat + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A160094.P8402606767971083414

namespace A160094

/-- `Δ[a(floor(n/10))+n]` -/
def P8402606767971083414.Spec : Prop :=
  ∀ n, P8402606767971083414.a n = A160094 (n + 1)

end A160094

/-! ## A160094.P8408734610252397236

`Δ[A054899(n)]+1`
-/

namespace A160094.P8408734610252397236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A160094.P8408734610252397236

namespace A160094

/-- `Δ[A054899(n)]+1` -/
def P8408734610252397236.Spec : Prop :=
  ∀ n, P8408734610252397236.a n = A160094 (n + 1)

end A160094

/-! ## A160094.P14897352171921238112

`A005555(val(n+1, 10))`
-/

namespace A160094.P14897352171921238112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 (SequenceMachineLib.valuation (n + 1) 10)

end

end A160094.P14897352171921238112

namespace A160094

/-- `A005555(val(n+1, 10))` -/
def P14897352171921238112.Spec : Prop :=
  ∀ n, P14897352171921238112.a n = A160094 (n + 1)

end A160094

/-! ## A160094.P18271375412301415896

`val(A017377(n)+1, 10)`
-/

namespace A160094.P18271375412301415896
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A017377 n + 1).toNat 10

end

end A160094.P18271375412301415896

namespace A160094

/-- `val(A017377(n)+1, 10)` -/
def P18271375412301415896.Spec : Prop :=
  ∀ n, (P18271375412301415896.a n : ℤ) = A160094 (n + 1)

end A160094

/-! ## A160094.P12029751642960378332

`ceil((2-Δ[A007953(n)])/8)`
-/

namespace A160094.P12029751642960378332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 - (f1 (n + 1) - f1 n) : ℚ) / 8⌉

end

end A160094.P12029751642960378332

namespace A160094

/-- `ceil((2-Δ[A007953(n)])/8)` -/
def P12029751642960378332.Spec : Prop :=
  ∀ n, P12029751642960378332.a n = A160094 (n + 1)

end A160094

/-! ## A160094.P14039896018918621078

`A215366(Δ[A054899(n)])`
-/

namespace A160094.P14039896018918621078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215366 (f1 (n + 1) - f1 n).toNat

end

end A160094.P14039896018918621078

namespace A160094

/-- `A215366(Δ[A054899(n)])` -/
def P14039896018918621078.Spec : Prop :=
  ∀ n, P14039896018918621078.a n = A160094 (n + 1)

end A160094

/-! ## A160094.P5081825224718742816

`A111854(abs(Δ[A062028(n)]))`
-/

namespace A160094.P5081825224718742816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111854 |f1 (n + 1) - f1 n|.toNat

end

end A160094.P5081825224718742816

namespace A160094

/-- `A111854(abs(Δ[A062028(n)]))` -/
def P5081825224718742816.Spec : Prop :=
  ∀ n, P5081825224718742816.a n = A160094 (n + 1)

end A160094

/-! ## A160094.P4922214002144523878

`A000174(1-Δ[A007953(n)])`
-/

namespace A160094.P4922214002144523878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000174 (1 - (f1 (n + 1) - f1 n)).toNat

end

end A160094.P4922214002144523878

namespace A160094

/-- `A000174(1-Δ[A007953(n)])` -/
def P4922214002144523878.Spec : Prop :=
  ∀ n, P4922214002144523878.a n = A160094 (n + 1)

end A160094

/-! ## A160094.P2474161998037992951

`A000174(Δ[-A007953(n)]+1)`
-/

namespace A160094.P2474161998037992951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A007953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000174 (f1 (n + 1) - f1 n + 1).toNat

end

end A160094.P2474161998037992951

namespace A160094

/-- `A000174(Δ[-A007953(n)]+1)` -/
def P2474161998037992951.Spec : Prop :=
  ∀ n, P2474161998037992951.a n = A160094 (n + 1)

end A160094

/-! ## A160094.P9959396555147131773

`A078840(A054899(n+1)-A054899(n))`
-/

namespace A160094.P9959396555147131773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078840 (A054899 (n + 1) - A054899 n).toNat

end

end A160094.P9959396555147131773

namespace A160094

/-- `A078840(A054899(n+1)-A054899(n))` -/
def P9959396555147131773.Spec : Prop :=
  ∀ n, P9959396555147131773.a n = A160094 (n + 1)

end A160094

/-! ## A160094.P13089459601071149570

`Δ[A065039(n)]`
-/

namespace A160094.P13089459601071149570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065039 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160094.P13089459601071149570

namespace A160094

/-- `Δ[A065039(n)]` -/
def P13089459601071149570.Spec : Prop :=
  ∀ n, P13089459601071149570.a n = A160094 (n + 1)

end A160094

/-! ## A160094.P4554378917240229353

`val(A008592(n+1), 10)`
-/

namespace A160094.P4554378917240229353
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A008592 (n + 1)).toNat 10

end

end A160094.P4554378917240229353

namespace A160094

/-- `val(A008592(n+1), 10)` -/
def P4554378917240229353.Spec : Prop :=
  ∀ n, (P4554378917240229353.a n : ℤ) = A160094 (n + 1)

end A160094

/-! ## A160094.P5865358224811053995

`A055642(abs(Δ[A055120(n)]))`
-/

namespace A160094.P5865358224811053995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 |f1 (n + 1) - f1 n|.toNat

end

end A160094.P5865358224811053995

namespace A160094

/-- `A055642(abs(Δ[A055120(n)]))` -/
def P5865358224811053995.Spec : Prop :=
  ∀ n, P5865358224811053995.a n = A160094 (n + 1)

end A160094

/-! ## A160094.P11423985079152278845

`A122840(A008592(n+1))`
-/

namespace A160094.P11423985079152278845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122840 (A008592 (n + 1)).toNat

end

end A160094.P11423985079152278845

namespace A160094

/-- `A122840(A008592(n+1))` -/
def P11423985079152278845.Spec : Prop :=
  ∀ n, P11423985079152278845.a n = A160094 (n + 1)

end A160094

/-! ## A160094.P3670494118364002349

`Δ[A054899(A135042(A005408(n)))]`
-/

namespace A160094.P3670494118364002349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A135042 (A005408 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160094.P3670494118364002349

namespace A160094

/-- `Δ[A054899(A135042(A005408(n)))]` -/
def P3670494118364002349.Spec : Prop :=
  ∀ n, P3670494118364002349.a n = A160094 (n + 1)

end A160094

/-! ## A160094.P2966736705142656819

`Δ[A054899(A017353(n))]`
-/

namespace A160094.P2966736705142656819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A017353 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160094.P2966736705142656819

namespace A160094

/-- `Δ[A054899(A017353(n))]` -/
def P2966736705142656819.Spec : Prop :=
  ∀ n, P2966736705142656819.a n = A160094 (n + 1)

end A160094

/-!
# A160095: Terms n > 1 of A001065, sorted.

The programs for A160095, there is no canonical definition to state claims against.
-/

/-! ## A160095.P13914611632485766915

`A001065(A152454(n+2))`
-/

namespace A160095.P13914611632485766915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A152454 (n + 2)).toNat

end

end A160095.P13914611632485766915

/-! ## A160095.P12916794090046451328

`A319699(2*A152454(n+2))`
-/

namespace A160095.P12916794090046451328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319699 (2 * A152454 (n + 2)).toNat

end

end A160095.P12916794090046451328

/-! ## A160095.P274477526616886435

`∑{d}[A152454(n+2), A051953(#)]`
-/

namespace A160095.P274477526616886435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152454 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A051953 d

end

end A160095.P274477526616886435

/-! ## A160095.P18029436593484408199

`A173455(A152454(n+2))%A000041(n+5)`
-/

namespace A160095.P18029436593484408199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173455 (A152454 (n + 2)).toNat) (A000041 (n + 5))

end

end A160095.P18029436593484408199

/-! ## A160095.P498120821784706920

`A048050(A152454(n+2))+A007318(C(2, n))`
-/

namespace A160095.P498120821784706920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (A152454 (n + 2)).toNat + A007318 (Nat.choose 2 n)

end

end A160095.P498120821784706920

/-! ## A160095.P14616925004171752716

`A091818(A152454(n+2))/A020639(2*(n+1))`
-/

namespace A160095.P14616925004171752716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091818 (A152454 (n + 2)).toNat : ℚ) / (A020639 (2 * (n + 1)) : ℚ)

end

end A160095.P14616925004171752716

/-! ## A160095.P17111676392720307807

`A048050(A152454(n+2))+A014963(6*(n+1))`
-/

namespace A160095.P17111676392720307807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (A152454 (n + 2)).toNat + A014963 (6 * (n + 1))

end

end A160095.P17111676392720307807

/-! ## A160095.P3095445876628652134

`A091818(A152454(n+2))/A006530((-1)^n+3)`
-/

namespace A160095.P3095445876628652134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091818 (A152454 (n + 2)).toNat : ℚ) / (A006530 ((-1) ^ n + 3).toNat : ℚ)

end

end A160095.P3095445876628652134

/-! ## A160095.P9011191773623666429

`A091818(A152454(n+2))/A000005(A002476(n+1))`
-/

namespace A160095.P9011191773623666429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091818 (A152454 (n + 2)).toNat : ℚ) / (A000005 (A002476 (n + 1)).toNat : ℚ)

end

end A160095.P9011191773623666429

/-!
# A160096: Partial sums of A010815 starting with offset 1, and signed (+ + - - + + ...).

The programs for A160096, the canonical program `A160096.P17903727192882003524` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160096 has offset 1).

The definition of A160096 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2049 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160096.P8371431769835214522

`∑[A257628(n+1)]`
-/

namespace A160096.P8371431769835214522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257628 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160096.P8371431769835214522

namespace A160096

/-- `∑[A257628(n+1)]` -/
def P8371431769835214522.Spec : Prop :=
  ∀ n, P8371431769835214522.a n = A160096 (n + 1)

end A160096

/-! ## A160096.P17903727192882003524

`∑[-Δ[A078616(n)]]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A160096

/-- `∑[-Δ[A078616(n)]]` -/
def P17903727192882003524.Spec : Prop :=
  ∀ n, P17903727192882003524.a n = A160096 (n + 1)

theorem P17903727192882003524.correct : P17903727192882003524.Spec := by
  intro n
  simp only [A160096, Nat.add_sub_cancel]

end A160096

/-! ## A160096.P3754206353087431123

`1-A078616(n+1)`
-/

namespace A160096.P3754206353087431123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A078616 (n + 1)

end

end A160096.P3754206353087431123

namespace A160096

/-- `1-A078616(n+1)` -/
def P3754206353087431123.Spec : Prop :=
  ∀ n, P3754206353087431123.a n = A160096 (n + 1)

end A160096

/-! ## A160096.P2328700419134856478

`abs(∑[A010815(n+1)])`
-/

namespace A160096.P2328700419134856478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A160096.P2328700419134856478

namespace A160096

/-- `abs(∑[A010815(n+1)])` -/
def P2328700419134856478.Spec : Prop :=
  ∀ n, P2328700419134856478.a n = A160096 (n + 1)

end A160096

/-! ## A160096.P5044404148034782283

`1-Δ[A246575(n+1)]`
-/

namespace A160096.P5044404148034782283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246575 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A160096.P5044404148034782283

namespace A160096

/-- `1-Δ[A246575(n+1)]` -/
def P5044404148034782283.Spec : Prop :=
  ∀ n, P5044404148034782283.a n = A160096 (n + 1)

end A160096

/-! ## A160096.P297045874883786079

`-∑[A010815(C(n+1, n))]`
-/

namespace A160096.P297045874883786079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (Nat.choose (n + 1) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A160096.P297045874883786079

namespace A160096

/-- `-∑[A010815(C(n+1, n))]` -/
def P297045874883786079.Spec : Prop :=
  ∀ n, P297045874883786079.a n = A160096 (n + 1)

end A160096

/-! ## A160096.P4072599608389972822

`∑[-A010815(ceil(acot(n)+n))]`
-/

namespace A160096.P4072599608389972822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A010815 ⌈SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160096.P4072599608389972822

namespace A160096

/-- `∑[-A010815(ceil(acot(n)+n))]` -/
def P4072599608389972822.Spec : Prop :=
  ∀ n, P4072599608389972822.a n = A160096 (n + 1)

end A160096

/-! ## A160096.P9004523719478671869

`∑[n+1-A286956(n+1)]`
-/

namespace A160096.P9004523719478671869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A286956 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160096.P9004523719478671869

namespace A160096

/-- `∑[n+1-A286956(n+1)]` -/
def P9004523719478671869.Spec : Prop :=
  ∀ n, P9004523719478671869.a n = A160096 (n + 1)

end A160096

/-! ## A160096.P9123351715572785284

`∑[A147843(n+1)/(n+1)]`
-/

namespace A160096.P9123351715572785284
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147843 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160096.P9123351715572785284

namespace A160096

/-- `∑[A147843(n+1)/(n+1)]` -/
def P9123351715572785284.Spec : Prop :=
  ∀ n, P9123351715572785284.a n = (A160096 (n + 1) : ℚ)

end A160096

/-! ## A160096.P7312054567615283744

`∑[-A010815(1-char[1]+n)]`
-/

namespace A160096.P7312054567615283744
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A010815 (1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160096.P7312054567615283744

namespace A160096

/-- `∑[-A010815(1-char[1]+n)]` -/
def P7312054567615283744.Spec : Prop :=
  ∀ n, P7312054567615283744.a n = A160096 (n + 1)

end A160096

/-! ## A160096.P16845748493675729776

`∑[(-1)^n*A121373(n+1)]`
-/

namespace A160096.P16845748493675729776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A121373 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160096.P16845748493675729776

namespace A160096

/-- `∑[(-1)^n*A121373(n+1)]` -/
def P16845748493675729776.Spec : Prop :=
  ∀ n, P16845748493675729776.a n = A160096 (n + 1)

end A160096

/-! ## A160096.P7399817011045312445

`A131026(A000703(n+1))`
-/

namespace A160096.P7399817011045312445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131026 (A000703 (n + 1)).toNat

end

end A160096.P7399817011045312445

namespace A160096

/-- `A131026(A000703(n+1))` -/
def P7399817011045312445.Spec : Prop :=
  ∀ n, P7399817011045312445.a n = A160096 (n + 1)

end A160096

/-! ## A160096.P1791190733001940575

`A007877(A235963(n+1))`
-/

namespace A160096.P1791190733001940575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 (A235963 (n + 1)).toNat

end

end A160096.P1791190733001940575

namespace A160096

/-- `A007877(A235963(n+1))` -/
def P1791190733001940575.Spec : Prop :=
  ∀ n, P1791190733001940575.a n = A160096 (n + 1)

end A160096

/-! ## A160096.P13387030128192910123

`1-A101455(A193832(n+2))`
-/

namespace A160096.P13387030128192910123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A101455 (A193832 (n + 2)).toNat

end

end A160096.P13387030128192910123

namespace A160096

/-- `1-A101455(A193832(n+2))` -/
def P13387030128192910123.Spec : Prop :=
  ∀ n, P13387030128192910123.a n = A160096 (n + 1)

end A160096

/-! ## A160096.P4709014603370814641

`A024632(∑[-A010815(n+1)])`
-/

namespace A160096.P4709014603370814641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A010815 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024632 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A160096.P4709014603370814641

namespace A160096

/-- `A024632(∑[-A010815(n+1)])` -/
def P4709014603370814641.Spec : Prop :=
  ∀ n, P4709014603370814641.a n = A160096 (n + 1)

end A160096

/-! ## A160096.P15201243584574946754

`A069011(∑[-A010815(n+1)])`
-/

namespace A160096.P15201243584574946754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A010815 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069011 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A160096.P15201243584574946754

namespace A160096

/-- `A069011(∑[-A010815(n+1)])` -/
def P15201243584574946754.Spec : Prop :=
  ∀ n, P15201243584574946754.a n = A160096 (n + 1)

end A160096

/-! ## A160096.P4283829221842200422

`A334666(∑[-A010815(n+1)])`
-/

namespace A160096.P4283829221842200422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A010815 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334666 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A160096.P4283829221842200422

namespace A160096

/-- `A334666(∑[-A010815(n+1)])` -/
def P4283829221842200422.Spec : Prop :=
  ∀ n, P4283829221842200422.a n = A160096 (n + 1)

end A160096

/-! ## A160096.P9629379751845082113

`A005251(∑[A010815(n+1)]²)`
-/

namespace A160096.P9629379751845082113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005251 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A160096.P9629379751845082113

namespace A160096

/-- `A005251(∑[A010815(n+1)]²)` -/
def P9629379751845082113.Spec : Prop :=
  ∀ n, P9629379751845082113.a n = A160096 (n + 1)

end A160096

/-! ## A160096.P4422753945807230859

`A078898(∑[A010815(n+1)]²)`
-/

namespace A160096.P4422753945807230859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A160096.P4422753945807230859

namespace A160096

/-- `A078898(∑[A010815(n+1)]²)` -/
def P4422753945807230859.Spec : Prop :=
  ∀ n, P4422753945807230859.a n = A160096 (n + 1)

end A160096

/-! ## A160096.P340860700941191755

`A134451(∑[A010815(n+1)]²)`
-/

namespace A160096.P340860700941191755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A160096.P340860700941191755

namespace A160096

/-- `A134451(∑[A010815(n+1)]²)` -/
def P340860700941191755.Spec : Prop :=
  ∀ n, P340860700941191755.a n = A160096 (n + 1)

end A160096

/-!
# A160097: Number of non-exponential divisors of n.

The programs for A160097, the canonical program `A160097.P2922645543658032537` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160097 has offset 1).

The definition of A160097 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160097.P2922645543658032537

`A325765(n)+1-A049419(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A160097

/-- `A325765(n)+1-A049419(n+1)` -/
def P2922645543658032537.Spec : Prop :=
  ∀ n, P2922645543658032537.a n = A160097 (n + 1)

theorem P2922645543658032537.correct : P2922645543658032537.Spec := by
  intro n
  simp only [A160097, Nat.add_sub_cancel]

end A160097

/-! ## A160097.P4388753986332182651

`A000005(n+1)-∏{e}[n+1, A000005(#)]%(n+1)`
-/

namespace A160097.P4388753986332182651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - Int.tmod (∏ p ∈ Nat.primeFactors (f1 n), A000005 (Nat.factorization (f1 n) p)) (n + 1 : ℤ)

end

end A160097.P4388753986332182651

namespace A160097

/-- `A000005(n+1)-∏{e}[n+1, A000005(#)]%(n+1)` -/
def P4388753986332182651.Spec : Prop :=
  ∀ n, P4388753986332182651.a n = A160097 (n + 1)

end A160097

/-! ## A160097.P3495307387474680399

`A028310(A000005(n+1)-A049419(n+1))`
-/

namespace A160097.P3495307387474680399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A000005 (n + 1) - A049419 (n + 1)).toNat

end

end A160097.P3495307387474680399

namespace A160097

/-- `A028310(A000005(n+1)-A049419(n+1))` -/
def P3495307387474680399.Spec : Prop :=
  ∀ n, P3495307387474680399.a n = A160097 (n + 1)

end A160097

/-! ## A160097.P14437111004554945015

`A000005(n+1)-A049419(n+1)%A264983(n)`
-/

namespace A160097.P14437111004554945015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - Int.tmod (A049419 (n + 1)) (A264983 n)

end

end A160097.P14437111004554945015

namespace A160097

/-- `A000005(n+1)-A049419(n+1)%A264983(n)` -/
def P14437111004554945015.Spec : Prop :=
  ∀ n, P14437111004554945015.a n = A160097 (n + 1)

end A160097

/-! ## A160097.P1119909339637750356

`gcd(A000005(n+1)-A049419(n+1), A002182(n+1))`
-/

namespace A160097.P1119909339637750356
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (n + 1) - A049419 (n + 1)) (A002182 (n + 1))

end

end A160097.P1119909339637750356

namespace A160097

/-- `gcd(A000005(n+1)-A049419(n+1), A002182(n+1))` -/
def P1119909339637750356.Spec : Prop :=
  ∀ n, (P1119909339637750356.a n : ℤ) = A160097 (n + 1)

end A160097

/-! ## A160097.P7414306075658482428

`A000523(A294873(n+1)+A151935(n))`
-/

namespace A160097.P7414306075658482428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A294873 (n + 1) + A151935 n).toNat

end

end A160097.P7414306075658482428

namespace A160097

/-- `A000523(A294873(n+1)+A151935(n))` -/
def P7414306075658482428.Spec : Prop :=
  ∀ n, P7414306075658482428.a n = A160097 (n + 1)

end A160097

