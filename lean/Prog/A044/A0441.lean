import SequenceMachineLib
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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
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
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
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
# A044100: Numbers k such that string 4,3 occurs in the base 5 representation of k but not of k-1.

The programs for A044100, there is no canonical definition to state claims against.
-/

/-! ## A044100.P12225599778762570238

`(A044480(n+1)+1)%A002110(2*n+3)`
-/

namespace A044100.P12225599778762570238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044480 (n + 1) + 1) (A002110 (2 * n + 3))

end

end A044100.P12225599778762570238

/-! ## A044100.P17177973548372569842

`A044480(n+1)+A000120(A034583(n))`
-/

namespace A044100.P17177973548372569842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044480 (n + 1) + A000120 (A034583 n).toNat

end

end A044100.P17177973548372569842

/-! ## A044100.P2127627120679472770

`A044480(n+1)+A001222(A338762(n+1))`
-/

namespace A044100.P2127627120679472770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044480 (n + 1) + A001222 (A338762 (n + 1)).toNat

end

end A044100.P2127627120679472770

/-! ## A044100.P3594670545128355421

`A044480(n+1)+A003415(A000043(n+1))`
-/

namespace A044100.P3594670545128355421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044480 (n + 1) + A003415 (A000043 (n + 1)).toNat

end

end A044100.P3594670545128355421

/-! ## A044100.P3684454035395087120

`A044480(n+1)-A106510(A005897(2*n+1))`
-/

namespace A044100.P3684454035395087120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044480 (n + 1) - A106510 (A005897 (2 * n + 1)).toNat

end

end A044100.P3684454035395087120

/-!
# A044101: Numbers k such that string 4,4 occurs in the base 5 representation of k but not of k-1.

The programs for A044101, there is no canonical definition to state claims against.
-/

/-! ## A044101.P3923188792647530164

`Δ[A061793(n)]-A060904(A037237(n))`
-/

namespace A044101.P3923188792647530164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061793 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A060904 (A037237 n).toNat

end

end A044101.P3923188792647530164

/-! ## A044101.P13628105274961758481

`A008706(A008706(n+1))-A060904(A037237(n))`
-/

namespace A044101.P13628105274961758481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (A008706 (n + 1)).toNat - A060904 (A037237 n).toNat

end

end A044101.P13628105274961758481

/-! ## A044101.P17409783765516186814

`A008607(A187829(n+1))-A060904(n+1)`
-/

namespace A044101.P17409783765516186814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008607 (A187829 (n + 1)).toNat - A060904 (n + 1)

end

end A044101.P17409783765516186814

/-! ## A044101.P13491509324450336090

`eq[2, A305936(A355003(n+1))]`
-/

namespace A044101.P13491509324450336090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305936 (A355003 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044101.P13491509324450336090

/-!
# A044102: Multiples of 36.

The programs for A044102, the canonical program `A044102.P13317920450440868156` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A044102 has offset 0).

The definition of A044102 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A044102.P13317920450440868156

`36*n`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A044102

/-- `36*n` -/
def P13317920450440868156.Spec : Prop :=
  ∀ n, (P13317920450440868156.a n : ℤ) = A044102 n

theorem P13317920450440868156.correct : P13317920450440868156.Spec := by
  intro n
  simp only [A044102]

end A044102

/-!
# A044103: Numbers k such that string 0,1 occurs in the base 6 representation of k but not of k-1.

The programs for A044103, there is no canonical definition to state claims against.
-/

/-! ## A044103.P17048531697058263671

`A044104(n+1)-A025449(A184953(n))`
-/

namespace A044103.P17048531697058263671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044104 (n + 1) - A025449 (A184953 n).toNat

end

end A044103.P17048531697058263671

/-!
# A044104: Numbers k such that string 0,2 occurs in the base 6 representation of k but not of k-1.

The programs for A044104, there is no canonical definition to state claims against.
-/

/-! ## A044104.P3031060529589787017

`A164020(A044484(n+1))`
-/

namespace A044104.P3031060529589787017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164020 (A044484 (n + 1)).toNat

end

end A044104.P3031060529589787017

/-! ## A044104.P5911241936069855590

`A044484(n+1)+A001222(A052333(n+1))`
-/

namespace A044104.P5911241936069855590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044484 (n + 1) + A001222 (A052333 (n + 1)).toNat

end

end A044104.P5911241936069855590

/-! ## A044104.P14142763718710925838

`A044484(n+1)+A001222(A095184(n+1))`
-/

namespace A044104.P14142763718710925838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044484 (n + 1) + A001222 (A095184 (n + 1)).toNat

end

end A044104.P14142763718710925838

/-! ## A044104.P13647566500869673219

`A044484(n+1)+A008683(2*A095184(n+1))`
-/

namespace A044104.P13647566500869673219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044484 (n + 1) + A008683 (2 * A095184 (n + 1)).toNat

end

end A044104.P13647566500869673219

/-! ## A044104.P15987552039321717341

`A380398(A052333(2*(n+2)))+A044484(n+1)`
-/

namespace A044104.P15987552039321717341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380398 (A052333 (2 * (n + 2))).toNat + A044484 (n + 1)

end

end A044104.P15987552039321717341

/-!
# A044105: Numbers k such that string 0,3 occurs in the base 6 representation of k but not of k-1.

The programs for A044105, there is no canonical definition to state claims against.
-/

/-! ## A044105.P15584865124745072247

`A097031((6*n+1)²)+A044485(n+1)`
-/

namespace A044105.P15584865124745072247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097031 ((6 * n + 1) ^ 2) + A044485 (n + 1)

end

end A044105.P15584865124745072247

/-! ## A044105.P16785308980083142213

`A044485(n+1)+A001222(A104165(n+1))`
-/

namespace A044105.P16785308980083142213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044485 (n + 1) + A001222 (A104165 (n + 1)).toNat

end

end A044105.P16785308980083142213

/-! ## A044105.P10753456793318114100

`A044485(n+1)+A001222(A125873(n+1))`
-/

namespace A044105.P10753456793318114100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044485 (n + 1) + A001222 (A125873 (n + 1)).toNat

end

end A044105.P10753456793318114100

/-! ## A044105.P16072532520694338224

`A104705(3*n+1)+A044485(n+1)`
-/

namespace A044105.P16072532520694338224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104705 (3 * n + 1) + A044485 (n + 1)

end

end A044105.P16072532520694338224

/-! ## A044105.P16662297258281030261

`A113484(A044485(n+1))`
-/

namespace A044105.P16662297258281030261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (A044485 (n + 1)).toNat

end

end A044105.P16662297258281030261

/-!
# A044106: Numbers k such that string 0,4 occurs in the base 6 representation of k but not of k-1.

The programs for A044106, there is no canonical definition to state claims against.
-/

/-! ## A044106.P2295760439337153034

`A044486(n+1)+A000079(A243834(n))`
-/

namespace A044106.P2295760439337153034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044486 (n + 1) + A000079 (A243834 n).toNat

end

end A044106.P2295760439337153034

/-! ## A044106.P2020614955908579307

`A044486(n+1)+A001221(A090607(n+1))`
-/

namespace A044106.P2020614955908579307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044486 (n + 1) + A001221 (A090607 (n + 1)).toNat

end

end A044106.P2020614955908579307

/-! ## A044106.P879023190255820125

`A044486(n+1)+A000035(A272406(n+1))`
-/

namespace A044106.P879023190255820125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044486 (n + 1) + A000035 (A272406 (n + 1)).toNat

end

end A044106.P879023190255820125

/-! ## A044106.P8949919997239084446

`A000007(2*n+3)+A044486(n+1)+A000108(A243834(n))`
-/

namespace A044106.P8949919997239084446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (2 * n + 3) + (A044486 (n + 1) + A000108 (A243834 n).toNat)

end

end A044106.P8949919997239084446

/-! ## A044106.P17335155955862147105

`A057078(3*n+4)+A044486(n+1)+A000108(A243834(n))`
-/

namespace A044106.P17335155955862147105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 (3 * n + 4) + (A044486 (n + 1) + A000108 (A243834 n).toNat)

end

end A044106.P17335155955862147105

/-!
# A044107: Numbers k such that string 0,5 occurs in the base 6 representation of k but not of k-1.

The programs for A044107, there is no canonical definition to state claims against.
-/

/-! ## A044107.P150369803583385483

`A044487(n+1)+A007318(A010894(n))`
-/

namespace A044107.P150369803583385483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044487 (n + 1) + A007318 (A010894 (n + 21)).toNat

end

end A044107.P150369803583385483

/-! ## A044107.P2516881582309287342

`A044487(n+1)+A001222(A100669(n))`
-/

namespace A044107.P2516881582309287342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044487 (n + 1) + A001222 (A100669 n).toNat

end

end A044107.P2516881582309287342

/-! ## A044107.P9962445116793732600

`A044487(n+1)+A001511(A062786(n+1))`
-/

namespace A044107.P9962445116793732600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044487 (n + 1) + A001511 (A062786 (n + 1)).toNat

end

end A044107.P9962445116793732600

/-! ## A044107.P2853483754260297695

`A044487(n+1)+A001055(A109946(n+1))`
-/

namespace A044107.P2853483754260297695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044487 (n + 1) + A001055 (A109946 (n + 1)).toNat

end

end A044107.P2853483754260297695

/-! ## A044107.P1126940835676734431

`A078572(A175754(n+1))+A044487(n+1)`
-/

namespace A044107.P1126940835676734431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078572 (A175754 (n + 1)).toNat + A044487 (n + 1)

end

end A044107.P1126940835676734431

/-!
# A044108: Numbers k such that string 1,0 occurs in the base 6 representation of k but not of k-1.

The programs for A044108, there is no canonical definition to state claims against.
-/

/-! ## A044108.P12556790088018261913

`∩[A043116(n+1), A007494(n)]`
-/

namespace A044108.P12556790088018261913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044108.P12556790088018261913

/-! ## A044108.P4278267873742579489

`∩[A043116(n+1), A049636(n)]`
-/

namespace A044108.P4278267873742579489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049636 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044108.P4278267873742579489

/-! ## A044108.P10274331704042970423

`∩[A043116(n+1), A114119(n)]`
-/

namespace A044108.P10274331704042970423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114119 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044108.P10274331704042970423

/-! ## A044108.P625235539224905788

`∩[A043116(n+1), A047229(n+1)]`
-/

namespace A044108.P625235539224905788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044108.P625235539224905788

/-! ## A044108.P13592996160419134682

`∩[A043116(n+1), A047250(n+1)]`
-/

namespace A044108.P13592996160419134682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044108.P13592996160419134682

/-! ## A044108.P289156592094683591

`∩[A043116(n+1), A047262(n+1)]`
-/

namespace A044108.P289156592094683591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044108.P289156592094683591

/-! ## A044108.P11915389874065989329

`∩[A043116(n+1), A121538(n+1)]`
-/

namespace A044108.P11915389874065989329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044108.P11915389874065989329

/-! ## A044108.P737501931101433668

`∩[A043116(n+1), A121539(n+1)]`
-/

namespace A044108.P737501931101433668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044108.P737501931101433668

/-! ## A044108.P11896107446668182284

`∩[A043116(n+1), A294732(n+2)]`
-/

namespace A044108.P11896107446668182284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294732 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044108.P11896107446668182284

/-! ## A044108.P8749702690424887265

`∩[A043116(n+1), A225551(n+3)]`
-/

namespace A044108.P8749702690424887265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225551 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044108.P8749702690424887265

/-! ## A044108.P14236607978382202735

`∩[A004772(n+1), A043116(n+1)]`
-/

namespace A044108.P14236607978382202735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044108.P14236607978382202735

/-! ## A044108.P16963017817838129906

`∩[A043116(n+1), A319371(n+1)]`
-/

namespace A044108.P16963017817838129906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044108.P16963017817838129906

/-! ## A044108.P640621495779064707

`∩[A043116(n+1), A315273(n)]`
-/

namespace A044108.P640621495779064707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044108.P640621495779064707

/-! ## A044108.P104888390063297256

`∩[A043116(n+1), A315634(n)]`
-/

namespace A044108.P104888390063297256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315634 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044108.P104888390063297256

/-! ## A044108.P8645950177067545169

`∩[A043116(n+1), A315423(n)]`
-/

namespace A044108.P8645950177067545169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315423 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044108.P8645950177067545169

/-! ## A044108.P17123646081992473497

`∩[A043116(n+1), A047248(n+1)]`
-/

namespace A044108.P17123646081992473497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047248 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044108.P17123646081992473497

/-! ## A044108.P15862062256754547540

`∩[A043116(n+1), A315452(n)]`
-/

namespace A044108.P15862062256754547540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315452 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044108.P15862062256754547540

/-! ## A044108.P11530453158893284344

`∩[A043116(n+1), A315309(n)]`
-/

namespace A044108.P11530453158893284344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315309 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044108.P11530453158893284344

/-! ## A044108.P6267123550660843817

`∩[A043116(n+1), A315173(n)]`
-/

namespace A044108.P6267123550660843817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315173 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044108.P6267123550660843817

/-! ## A044108.P11984253955001108737

`record[A038608(A043116(n+1))]`
-/

namespace A044108.P11984253955001108737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A043116 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044108.P11984253955001108737

/-!
# A044110: Numbers n such that string 1,2 occurs in the base 6 representation of n but not of n-1.

The programs for A044110, there is no canonical definition to state claims against.
-/

/-! ## A044110.P9913396861993774949

`A028901(A044344(n+1)^A109842(n+1))`
-/

namespace A044110.P9913396861993774949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028901 (SequenceMachineLib.roundAway ((A044344 (n + 1) : ℚ) ^ (A109842 (n + 1) : ℤ))).toNat

end

end A044110.P9913396861993774949

/-! ## A044110.P431183762743364235

`A028901(A109842(n+1)²²*A044344(n+1))`
-/

namespace A044110.P431183762743364235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028901 ((A109842 (n + 1) ^ 2) ^ 2 * A044344 (n + 1)).toNat

end

end A044110.P431183762743364235

/-! ## A044110.P717722427040476540

`A028901(A044344(n+1)^A143632(n))`
-/

namespace A044110.P717722427040476540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028901 (SequenceMachineLib.roundAway ((A044344 (n + 1) : ℚ) ^ (A143632 n : ℤ))).toNat

end

end A044110.P717722427040476540

/-! ## A044110.P11942211753152047256

`A028901(A143632(n)²²*A044344(n+1))`
-/

namespace A044110.P11942211753152047256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028901 ((A143632 n ^ 2) ^ 2 * A044344 (n + 1)).toNat

end

end A044110.P11942211753152047256

/-!
# A044111: Numbers k such that string 1,3 occurs in the base 6 representation of k but not of k-1.

The programs for A044111, there is no canonical definition to state claims against.
-/

/-! ## A044111.P10582819407255999747

`A044491(n+1)+2^A159713(n)`
-/

namespace A044111.P10582819407255999747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A044491 (n + 1) : ℚ) + (2 : ℚ) ^ (A159713 n : ℤ)

end

end A044111.P10582819407255999747

/-! ## A044111.P9650964289099646834

`A044491(n+1)+A000041(A061603(n))`
-/

namespace A044111.P9650964289099646834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044491 (n + 1) + A000041 (A061603 n).toNat

end

end A044111.P9650964289099646834

/-! ## A044111.P18077131735494456015

`A044491(n+1)+A001222(A096640(n))`
-/

namespace A044111.P18077131735494456015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044491 (n + 1) + A001222 (A096640 n).toNat

end

end A044111.P18077131735494456015

/-! ## A044111.P9198258713054961779

`A044491(n+1)+A000041(A159713(n))`
-/

namespace A044111.P9198258713054961779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044491 (n + 1) + A000041 (A159713 n).toNat

end

end A044111.P9198258713054961779

/-! ## A044111.P15482591675364166002

`A164878(A090150(n+1))+A044491(n+1)`
-/

namespace A044111.P15482591675364166002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164878 (A090150 (n + 1)).toNat + A044491 (n + 1)

end

end A044111.P15482591675364166002

/-!
# A044112: Numbers n such that string 1,4 occurs in the base 6 representation of n but not of n-1.

The programs for A044112, there is no canonical definition to state claims against.
-/

/-! ## A044112.P11470913427539356393

`A044492(n+1)+A001221(A051301(n))`
-/

namespace A044112.P11470913427539356393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044492 (n + 1) + A001221 (A051301 n).toNat

end

end A044112.P11470913427539356393

/-! ## A044112.P7817314992655269936

`A071178(A002203(n))+A044492(n+1)`
-/

namespace A044112.P7817314992655269936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071178 (A002203 n).toNat + A044492 (n + 1)

end

end A044112.P7817314992655269936

/-! ## A044112.P1375590069190137975

`A244490(A000217(n))+A044492(n+1)`
-/

namespace A044112.P1375590069190137975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244490 (A000217 n).toNat + A044492 (n + 1)

end

end A044112.P1375590069190137975

/-! ## A044112.P10101905772430157936

`A044492(n+1)+A003557(A309863(n))`
-/

namespace A044112.P10101905772430157936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044492 (n + 1) + A003557 (A309863 n).toNat

end

end A044112.P10101905772430157936

/-!
# A044113: Numbers n such that string 1,5 occurs in the base 6 representation of n but not of n-1.

The programs for A044113, there is no canonical definition to state claims against.
-/

/-! ## A044113.P10406743461316442562

`(A044493(n+1)+1)%A349086(3*(n+1))`
-/

namespace A044113.P10406743461316442562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044493 (n + 1) + 1) (A349086 (3 * (n + 1)))

end

end A044113.P10406743461316442562

/-! ## A044113.P8899497011538435267

`A044493(n+1)+A108782(A087019(n))!`
-/

namespace A044113.P8899497011538435267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044493 (n + 1) + (Nat.factorial (A108782 (A087019 n).toNat).toNat : ℤ)

end

end A044113.P8899497011538435267

/-! ## A044113.P7769735502598957694

`A044493(n+1)+A001222(A074477(n+1))`
-/

namespace A044113.P7769735502598957694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044493 (n + 1) + A001222 (A074477 (n + 1)).toNat

end

end A044113.P7769735502598957694

/-! ## A044113.P4920437933908639966

`A044493(n+1)+A001222(A344175(n+1))`
-/

namespace A044113.P4920437933908639966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044493 (n + 1) + A001222 (A344175 (n + 1)).toNat

end

end A044113.P4920437933908639966

/-! ## A044113.P17568128391049367005

`A356233(A192229(n+1))+A044493(n+1)`
-/

namespace A044113.P17568128391049367005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356233 (A192229 (n + 1)).toNat + A044493 (n + 1)

end

end A044113.P17568128391049367005

/-!
# A044114: Numbers n such that string 2,0 occurs in the base 6 representation of n but not of n-1.

The programs for A044114, there is no canonical definition to state claims against.
-/

/-! ## A044114.P4098150304782949904

`∩[A043117(n+1), A103291(n+1)]`
-/

namespace A044114.P4098150304782949904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103291 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044114.P4098150304782949904

/-! ## A044114.P2580526646651801632

`∩[A043117(n+1), A103292(n+1)]`
-/

namespace A044114.P2580526646651801632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044114.P2580526646651801632

/-! ## A044114.P3659771922439409240

`filter[A043117(n+1), A164056(#)]`
-/

namespace A044114.P3659771922439409240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A164056 (f1 j).toNat = 1) n)

end

end A044114.P3659771922439409240

/-! ## A044114.P6122580347923478468

`∩[A043117(n+1), A267415(n+1)]`
-/

namespace A044114.P6122580347923478468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044114.P6122580347923478468

/-! ## A044114.P1733963660045225945

`∩[A043117(n+1), A355455(n+1)]`
-/

namespace A044114.P1733963660045225945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044114.P1733963660045225945

/-!
# A044115: Numbers k such that string 2,1 occurs in the base 6 representation of k but not of k-1.

The programs for A044115, there is no canonical definition to state claims against.
-/

/-! ## A044115.P12519614879858461016

`A044495(A077168(n))+1`
-/

namespace A044115.P12519614879858461016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044495 (A077168 n).toNat + 1

end

end A044115.P12519614879858461016

/-! ## A044115.P2477283212369688721

`(A044495(n+1)+1)%A274234(3*n+5)`
-/

namespace A044115.P2477283212369688721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044495 (n + 1) + 1) (A274234 (3 * n + 5))

end

end A044115.P2477283212369688721

/-! ## A044115.P4889393978210219881

`A044495(n+1)+A000035(A000605(n))`
-/

namespace A044115.P4889393978210219881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044495 (n + 1) + A000035 (A000605 n).toNat

end

end A044115.P4889393978210219881

/-! ## A044115.P15507454984795247563

`A064989(A000079(n))+A044495(n+1)`
-/

namespace A044115.P15507454984795247563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A000079 n).toNat + A044495 (n + 1)

end

end A044115.P15507454984795247563

/-! ## A044115.P18390509837033994612

`A140356(∑[n])+A044495(n+1)`
-/

namespace A044115.P18390509837033994612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140356 (∑ j ∈ Finset.range (n + 1), f1 j) + A044495 (n + 1)

end

end A044115.P18390509837033994612

/-!
# A044116: Numbers n such that string 2,2 occurs in the base 6 representation of n but not of n-1.

The programs for A044116, there is no canonical definition to state claims against.
-/

/-! ## A044116.P17849176920130775431

`2*A201206(A157265(2*n+1))`
-/

namespace A044116.P17849176920130775431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A201206 (A157265 (2 * n + 1)).toNat

end

end A044116.P17849176920130775431

/-! ## A044116.P15093526912528433377

`A340220(A000142(n))+A017221(4*n)`
-/

namespace A044116.P15093526912528433377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340220 (A000142 n).toNat + A017221 (4 * n)

end

end A044116.P15093526912528433377

/-! ## A044116.P13450032400104179564

`A316344(A061355(n))+A008594(3*n+1)`
-/

namespace A044116.P13450032400104179564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316344 (A061355 n).toNat + A008594 (3 * n + 1)

end

end A044116.P13450032400104179564

/-! ## A044116.P10542296962296732016

`xor(A017533(3*n+1), A110550(A049029(2*n+1)))`
-/

namespace A044116.P10542296962296732016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A017533 (3 * n + 1)) (A110550 (A049029 (2 * n + 1)).toNat)

end

end A044116.P10542296962296732016

/-!
# A044117: Numbers n such that string 2,3 occurs in the base 6 representation of n but not of n-1.

The programs for A044117, there is no canonical definition to state claims against.
-/

/-! ## A044117.P12703876079583516634

`A044498(n+1)-A103495(A101735(n+1))`
-/

namespace A044117.P12703876079583516634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044498 (n + 1) - A103495 (A101735 (n + 1)).toNat

end

end A044117.P12703876079583516634

/-! ## A044117.P10196940059539361702

`A044499(n+1)-A018590(A327564(n+1))`
-/

namespace A044117.P10196940059539361702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044499 (n + 1) - A018590 (A327564 (n + 1)).toNat

end

end A044117.P10196940059539361702

/-!
# A044118: Numbers n such that string 2,4 occurs in the base 6 representation of n but not of n-1.

The programs for A044118, there is no canonical definition to state claims against.
-/

/-! ## A044118.P12633385470904058743

`A044498(n+1)+A001055(A050266(n+1))`
-/

namespace A044118.P12633385470904058743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044498 (n + 1) + A001055 (A050266 (n + 1)).toNat

end

end A044118.P12633385470904058743

/-! ## A044118.P11898831891536765660

`A060576(A099011(n+1))+A044498(n+1)`
-/

namespace A044118.P11898831891536765660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (A099011 (n + 1)).toNat + A044498 (n + 1)

end

end A044118.P11898831891536765660

/-! ## A044118.P410594310292233225

`A044498(n+1)+A035115(A357814(3*(n+1)))`
-/

namespace A044118.P410594310292233225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044498 (n + 1) + A035115 (A357814 (3 * (n + 1))).toNat

end

end A044118.P410594310292233225

/-! ## A044118.P17317571771633221843

`A057077(A002496(n+4))+A044498(n+1)`
-/

namespace A044118.P17317571771633221843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A002496 (n + 4)).toNat + A044498 (n + 1)

end

end A044118.P17317571771633221843

/-!
# A044119: Numbers k such that string 2,5 occurs in the base 6 representation of k but not of k-1.

The programs for A044119, there is no canonical definition to state claims against.
-/

/-! ## A044119.P1332640097922840178

`A044499(∑[∑[A151838(n)]])+1`
-/

namespace A044119.P1332640097922840178
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151838 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044499 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A044119.P1332640097922840178

/-! ## A044119.P14901020983293748745

`A044499(n+1)+A151838(n)!`
-/

namespace A044119.P14901020983293748745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044499 (n + 1) + (Nat.factorial (A151838 n).toNat : ℤ)

end

end A044119.P14901020983293748745

/-! ## A044119.P17857279405323131036

`A044499(n+1)+A001055(A000230(n))`
-/

namespace A044119.P17857279405323131036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044499 (n + 1) + A001055 (A000230 n).toNat

end

end A044119.P17857279405323131036

/-! ## A044119.P1954726250623244357

`A044499(n+1)+A000041(A151838(n)²)`
-/

namespace A044119.P1954726250623244357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044499 (n + 1) + A000041 (A151838 n ^ 2).toNat

end

end A044119.P1954726250623244357

/-! ## A044119.P170322282187433232

`A044499(n+1)+A007318(A151838(n)²)`
-/

namespace A044119.P170322282187433232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044499 (n + 1) + A007318 (A151838 n ^ 2).toNat

end

end A044119.P170322282187433232

/-!
# A044120: Numbers n such that string 3,0 occurs in the base 6 representation of n but not of n-1.

The programs for A044120, there is no canonical definition to state claims against.
-/

/-! ## A044120.P17912217468720001766

`∩[A043118(n+1), A175130(n+1)]`
-/

namespace A044120.P17912217468720001766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175130 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044120.P17912217468720001766

/-! ## A044120.P5492109160271337041

`∩[A043118(n+1), A261991(n+1)]`
-/

namespace A044120.P5492109160271337041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261991 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044120.P5492109160271337041

/-! ## A044120.P12203801748244414024

`∩[A043118(n+1), A350780(n+1)]`
-/

namespace A044120.P12203801748244414024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044120.P12203801748244414024

/-! ## A044120.P1025460622100228487

`A008458(A277569(n+1)^A254730(n))`
-/

namespace A044120.P1025460622100228487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (SequenceMachineLib.roundAway ((A277569 (n + 1) : ℚ) ^ (A254730 n : ℤ))).toNat

end

end A044120.P1025460622100228487

/-! ## A044120.P9144379752386515414

`∩[A008600(n), A335377(n+1)]`
-/

namespace A044120.P9144379752386515414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008600 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335377 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044120.P9144379752386515414

/-!
# A044121: Numbers n such that string 3,1 occurs in the base 6 representation of n but not of n-1.

The programs for A044121, there is no canonical definition to state claims against.
-/

/-! ## A044121.P15079947077220019333

`A137278(n²)+A044501(n+1)`
-/

namespace A044121.P15079947077220019333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137278 (n ^ 2) + A044501 (n + 1)

end

end A044121.P15079947077220019333

/-! ## A044121.P11784357123165932730

`A044501(n+1)+A151722(n)!`
-/

namespace A044121.P11784357123165932730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044501 (n + 1) + (Nat.factorial (A151722 n).toNat : ℤ)

end

end A044121.P11784357123165932730

/-! ## A044121.P4996420880613078469

`A353801(A324738(n))+A044501(n+1)`
-/

namespace A044121.P4996420880613078469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353801 (A324738 n).toNat + A044501 (n + 1)

end

end A044121.P4996420880613078469

/-! ## A044121.P6700701307791157558

`A044501(n+1)+A001222(A033875(n+1))`
-/

namespace A044121.P6700701307791157558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044501 (n + 1) + A001222 (A033875 (n + 1)).toNat

end

end A044121.P6700701307791157558

/-! ## A044121.P5348030063114606052

`A044501(n+1)+A001222(A059801(n+1))`
-/

namespace A044121.P5348030063114606052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044501 (n + 1) + A001222 (A059801 (n + 1)).toNat

end

end A044121.P5348030063114606052

/-!
# A044122: Numbers n such that string 3,2 occurs in the base 6 representation of n but not of n-1.

The programs for A044122, there is no canonical definition to state claims against.
-/

/-! ## A044122.P16355528417172395565

`A044502(n+1)+A000035(A005491(n))`
-/

namespace A044122.P16355528417172395565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044502 (n + 1) + A000035 (A005491 n).toNat

end

end A044122.P16355528417172395565

/-! ## A044122.P11761250385310431075

`A044502(n+1)+A010057(A000578(n))`
-/

namespace A044122.P11761250385310431075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044502 (n + 1) + A010057 (A000578 n).toNat

end

end A044122.P11761250385310431075

/-! ## A044122.P12015879119121672827

`A044502(n+1)+A008835(A010737(n))`
-/

namespace A044122.P12015879119121672827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044502 (n + 1) + A008835 (A010737 n).toNat

end

end A044122.P12015879119121672827

/-! ## A044122.P5244749490267563931

`A044502(n+1)+A008835(A074873(n))`
-/

namespace A044122.P5244749490267563931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044502 (n + 1) + A008835 (A074873 n).toNat

end

end A044122.P5244749490267563931

/-! ## A044122.P4421087460350010091

`A044502(n+1)+A000188(A000043(n+1))`
-/

namespace A044122.P4421087460350010091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044502 (n + 1) + A000188 (A000043 (n + 1)).toNat

end

end A044122.P4421087460350010091

/-!
# A044123: Numbers n such that string 3,3 occurs in the base 6 representation of n but not of n-1.

The programs for A044123, there is no canonical definition to state claims against.
-/

/-! ## A044123.P9885235538764968320

`xor(1, A360134(A008586(2*n+1)))`
-/

namespace A044123.P9885235538764968320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A360134 (A008586 (2 * n + 1)).toNat)

end

end A044123.P9885235538764968320

/-! ## A044123.P17684790069715732316

`A008594(3*n+2)-A010704(A053508(n+1))`
-/

namespace A044123.P17684790069715732316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008594 (3 * n + 2) - A010704 (A053508 (n + 1)).toNat

end

end A044123.P17684790069715732316

/-!
# A044124: Numbers k such that string 3,4 occurs in the base 6 representation of k but not of k-1.

The programs for A044124, there is no canonical definition to state claims against.
-/

/-! ## A044124.P819984922775979469

`A044125(n+1)+A044505(n+1)-(A044126(n+1)-A096891(2*n+3)%2)`
-/

namespace A044124.P819984922775979469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044125 (n + 1) + (A044505 (n + 1) - (A044126 (n + 1) - Int.tmod (A096891 (2 * n + 3)) 2))

end

end A044124.P819984922775979469

/-! ## A044124.P8023206213478255538

`A044125(n+1)-gcd(A044125(n+1), A105416(n+1))`
-/

namespace A044124.P8023206213478255538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044125 (n + 1) - (Int.gcd (A044125 (n + 1)) (A105416 (n + 1)) : ℤ)

end

end A044124.P8023206213478255538

/-!
# A044125: Numbers k such that string 3,5 occurs in the base 6 representation of k but not of k-1.

The programs for A044125, there is no canonical definition to state claims against.
-/

/-! ## A044125.P6262118451889540366

`A283821(3^val(n+1, 3))+A044505(n+1)`
-/

namespace A044125.P6262118451889540366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283821 (3 ^ SequenceMachineLib.valuation (n + 1) 3) + A044505 (n + 1)

end

end A044125.P6262118451889540366

/-! ## A044125.P1500021202005384643

`A128604(A133961(n+1))+A044505(n+1)`
-/

namespace A044125.P1500021202005384643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128604 (A133961 (n + 1)).toNat + A044505 (n + 1)

end

end A044125.P1500021202005384643

/-! ## A044125.P7451900156979307203

`A044505(n+1)+A001222(A338762(n+1))`
-/

namespace A044125.P7451900156979307203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044505 (n + 1) + A001222 (A338762 (n + 1)).toNat

end

end A044125.P7451900156979307203

/-! ## A044125.P6744175047848839493

`A128604(A128604(n+1)²)+A044505(n+1)`
-/

namespace A044125.P6744175047848839493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128604 (A128604 (n + 1) ^ 2).toNat + A044505 (n + 1)

end

end A044125.P6744175047848839493

/-! ## A044125.P8189228679562220628

`A044505(n+1)+A001222(A201011(n+1))`
-/

namespace A044125.P8189228679562220628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044505 (n + 1) + A001222 (A201011 (n + 1)).toNat

end

end A044125.P8189228679562220628

/-!
# A044126: Numbers n such that string 4,0 occurs in the base 6 representation of n but not of n-1.

The programs for A044126, there is no canonical definition to state claims against.
-/

/-! ## A044126.P319534092999893913

`∩[A043119(n+1), A175130(n+1)]`
-/

namespace A044126.P319534092999893913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175130 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044126.P319534092999893913

/-! ## A044126.P18179337760275379783

`12*A097450(A277574(n+1))`
-/

namespace A044126.P18179337760275379783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A097450 (A277574 (n + 1)).toNat

end

end A044126.P18179337760275379783

/-! ## A044126.P9149754049872703100

`A008458(A277570(n+1)^A062513(n+1))`
-/

namespace A044126.P9149754049872703100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (SequenceMachineLib.roundAway ((A277570 (n + 1) : ℚ) ^ (A062513 (n + 1) : ℤ))).toNat

end

end A044126.P9149754049872703100

/-! ## A044126.P17961230287522786123

`A008458(C(A277570(n+1), A062513(n+1)))`
-/

namespace A044126.P17961230287522786123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (Nat.choose (A277570 (n + 1)).toNat (A062513 (n + 1)).toNat)

end

end A044126.P17961230287522786123

/-! ## A044126.P8614619215599125314

`A007283(A062513(n+1)²)*A277570(n+1)`
-/

namespace A044126.P8614619215599125314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 (A062513 (n + 1) ^ 2).toNat * A277570 (n + 1)

end

end A044126.P8614619215599125314

/-!
# A044127: Numbers n such that string 4,1 occurs in the base 6 representation of n but not of n-1.

The programs for A044127, there is no canonical definition to state claims against.
-/

/-! ## A044127.P16178554165526369180

`A044507(n+1)+A007318(A061793(n))`
-/

namespace A044127.P16178554165526369180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044507 (n + 1) + A007318 (A061793 n).toNat

end

end A044127.P16178554165526369180

/-! ## A044127.P1555701539825799899

`A044507(n+1)+A001222(A087387(n+1))`
-/

namespace A044127.P1555701539825799899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044507 (n + 1) + A001222 (A087387 (n + 1)).toNat

end

end A044127.P1555701539825799899

/-! ## A044127.P14031302521462633786

`A353361(A000978(n+3))+A044507(n+1)`
-/

namespace A044127.P14031302521462633786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353361 (A000978 (n + 3)).toNat + A044507 (n + 1)

end

end A044127.P14031302521462633786

/-! ## A044127.P224842227883164526

`A257993(A131687(2*n+5))+A044507(n+1)`
-/

namespace A044127.P224842227883164526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257993 (A131687 (2 * n + 5)).toNat + A044507 (n + 1)

end

end A044127.P224842227883164526

/-! ## A044127.P3249139976400624032

`A049419(A054811(n+1))+A044507(n+1)`
-/

namespace A044127.P3249139976400624032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (A054811 (n + 1)).toNat + A044507 (n + 1)

end

end A044127.P3249139976400624032

/-!
# A044128: Numbers n such that string 4,2 occurs in the base 6 representation of n but not of n-1.

The programs for A044128, there is no canonical definition to state claims against.
-/

/-! ## A044128.P10640174911702640244

`A133233(∑[n])+A044508(n+1)`
-/

namespace A044128.P10640174911702640244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133233 (∑ j ∈ Finset.range (n + 1), f1 j) + A044508 (n + 1)

end

end A044128.P10640174911702640244

/-! ## A044128.P4352892569774367780

`A257993(A000978(n+1))+A044508(n+1)`
-/

namespace A044128.P4352892569774367780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257993 (A000978 (n + 1)).toNat + A044508 (n + 1)

end

end A044128.P4352892569774367780

/-! ## A044128.P14732675629619534791

`A051904(A324042(n+4))+A044508(n+1)`
-/

namespace A044128.P14732675629619534791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (A324042 (n + 4)).toNat + A044508 (n + 1)

end

end A044128.P14732675629619534791

/-! ## A044128.P16314577116718974876

`A044508(n+1)+A040739(A003215(2*n+1))`
-/

namespace A044128.P16314577116718974876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044508 (n + 1) + A040739 (A003215 (2 * n + 1)).toNat

end

end A044128.P16314577116718974876

/-! ## A044128.P6780607301996884451

`A194285(A356233(3*n+1))+A044508(n+1)`
-/

namespace A044128.P6780607301996884451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194285 (A356233 (3 * n + 1)).toNat + A044508 (n + 1)

end

end A044128.P6780607301996884451

/-!
# A044129: Numbers n such that string 4,3 occurs in the base 6 representation of n but not of n-1.

The programs for A044129, there is no canonical definition to state claims against.
-/

/-! ## A044129.P15338626497135452550

`A044509(n+1)+A000188(A027642(n))`
-/

namespace A044129.P15338626497135452550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044509 (n + 1) + A000188 (A027642 n).toNat

end

end A044129.P15338626497135452550

/-! ## A044129.P6449291849196805903

`A044509(n+1)+A019425(A016116(n))`
-/

namespace A044129.P6449291849196805903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044509 (n + 1) + A019425 (A016116 n).toNat

end

end A044129.P6449291849196805903

/-! ## A044129.P15604146165096696899

`A044509(n+1)+A000188(A051717(n))`
-/

namespace A044129.P15604146165096696899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044509 (n + 1) + A000188 (A051717 n).toNat

end

end A044129.P15604146165096696899

/-! ## A044129.P3424708014070693789

`A057427(A029903(n))+A044509(n+1)`
-/

namespace A044129.P3424708014070693789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A029903 n).toNat + A044509 (n + 1)

end

end A044129.P3424708014070693789

/-! ## A044129.P15028698718005018400

`A054977(A178346(n))+A044509(n+1)`
-/

namespace A044129.P15028698718005018400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A178346 n).toNat + A044509 (n + 1)

end

end A044129.P15028698718005018400

/-!
# A044130: Numbers n such that string 4,4 occurs in the base 6 representation of n but not of n-1.

The programs for A044130, there is no canonical definition to state claims against.
-/

/-! ## A044130.P15279730635784985710

`A017569(3*n+2)-A000081(A258647(n))`
-/

namespace A044130.P15279730635784985710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017569 (3 * n + 2) - A000081 (A258647 n).toNat

end

end A044130.P15279730635784985710

/-! ## A044130.P15155178969388973455

`4*A325512(A044894(n+1))`
-/

namespace A044130.P15155178969388973455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A325512 (A044894 (n + 1)).toNat

end

end A044130.P15155178969388973455

/-! ## A044130.P3268622845693030846

`A044131(n+1)-A209349(A172196(n))`
-/

namespace A044130.P3268622845693030846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044131 (n + 1) - A209349 (A172196 n).toNat

end

end A044130.P3268622845693030846

/-!
# A044132: Numbers n such that string 5,0 occurs in the base 6 representation of n but not of n-1.

The programs for A044132, there is no canonical definition to state claims against.
-/

/-! ## A044132.P13292347788773890961

`∩[A043120(n+1), A175130(n+1)]`
-/

namespace A044132.P13292347788773890961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175130 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044132.P13292347788773890961

/-! ## A044132.P2490040783268677327

`∩[A043120(n+1), A049094(n+1)]`
-/

namespace A044132.P2490040783268677327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044132.P2490040783268677327

/-! ## A044132.P16872312344529553422

`A040214(A168499(n+1))*A277571(n+1)`
-/

namespace A044132.P16872312344529553422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040214 (A168499 (n + 1)).toNat * A277571 (n + 1)

end

end A044132.P16872312344529553422

/-! ## A044132.P4543374315550133590

`A008458(A277571(n+1))%A101644(n+2)`
-/

namespace A044132.P4543374315550133590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008458 (A277571 (n + 1)).toNat) (A101644 (n + 2))

end

end A044132.P4543374315550133590

/-! ## A044132.P10028434864855499208

`A008588(A277571(n+1)%A277607(n+4))`
-/

namespace A044132.P10028434864855499208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (Int.tmod (A277571 (n + 1)) (A277607 (n + 4))).toNat

end

end A044132.P10028434864855499208

/-!
# A044133: Numbers n such that string 5,1 occurs in the base 6 representation of n but not of n-1.

The programs for A044133, there is no canonical definition to state claims against.
-/

/-! ## A044133.P7472382687223088651

`A044513(n+1)+A010146(A001539(n))`
-/

namespace A044133.P7472382687223088651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044513 (n + 1) + A010146 (A001539 n).toNat

end

end A044133.P7472382687223088651

/-! ## A044133.P3552517139255602689

`A044513(n+1)-A057428(A141214(n))`
-/

namespace A044133.P3552517139255602689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044513 (n + 1) - A057428 (A141214 n).toNat

end

end A044133.P3552517139255602689

/-! ## A044133.P4880906773750168360

`A044513(n+1)+A000035(A118057(n+1))`
-/

namespace A044133.P4880906773750168360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044513 (n + 1) + A000035 (A118057 (n + 1)).toNat

end

end A044133.P4880906773750168360

/-! ## A044133.P5559847746003595954

`A044513(n+1)+A001221(A123107(n+1))`
-/

namespace A044133.P5559847746003595954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044513 (n + 1) + A001221 (A123107 (n + 1)).toNat

end

end A044133.P5559847746003595954

/-! ## A044133.P7409768648674586229

`A044513(n+1)-A057428(A007294(3*n+2))`
-/

namespace A044133.P7409768648674586229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044513 (n + 1) - A057428 (A007294 (3 * n + 2)).toNat

end

end A044133.P7409768648674586229

/-!
# A044134: Numbers n such that string 5,2 occurs in the base 6 representation of n but not of n-1.

The programs for A044134, there is no canonical definition to state claims against.
-/

/-! ## A044134.P17005289738214613328

`(A044514(n+1)+1)%A093472(n)`
-/

namespace A044134.P17005289738214613328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044514 (n + 1) + 1) (A093472 n)

end

end A044134.P17005289738214613328

/-! ## A044134.P11035069947170774427

`A044514(n+1)%A349086(n+1)+1`
-/

namespace A044134.P11035069947170774427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044514 (n + 1)) (A349086 (n + 1)) + 1

end

end A044134.P11035069947170774427

/-! ## A044134.P7530731912643895948

`A044514(n+1)+A000034(n*(8*n-6))`
-/

namespace A044134.P7530731912643895948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044514 (n + 1) + A000034 ((n : ℤ) * ((8 * n : ℤ) - 6)).toNat

end

end A044134.P7530731912643895948

/-! ## A044134.P943428047745470465

`A044514(n+1)+A035263(A017042(n))`
-/

namespace A044134.P943428047745470465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044514 (n + 1) + A035263 (A017042 n).toNat

end

end A044134.P943428047745470465

/-! ## A044134.P15163872747029369585

`A044514(n+1)+A001065(A073609(n))`
-/

namespace A044134.P15163872747029369585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044514 (n + 1) + A001065 (A073609 n).toNat

end

end A044134.P15163872747029369585

/-!
# A044135: Numbers k such that string 5,3 occurs in the base 6 representation of k but not of k-1.

The programs for A044135, there is no canonical definition to state claims against.
-/

/-! ## A044135.P18417229359881750489

`A113520(A044515(n+1)+2)`
-/

namespace A044135.P18417229359881750489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113520 (A044515 (n + 1) + 2).toNat

end

end A044135.P18417229359881750489

/-! ## A044135.P5630239810819887491

`A044515(n+1)-A057428(A046682(n))`
-/

namespace A044135.P5630239810819887491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044515 (n + 1) - A057428 (A046682 n).toNat

end

end A044135.P5630239810819887491

/-! ## A044135.P3137483958331767804

`A044515(n+1)+A057428(2*(n+1))*A057428(A046682(n))`
-/

namespace A044135.P3137483958331767804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044515 (n + 1) + A057428 (2 * (n + 1)) * A057428 (A046682 n).toNat

end

end A044135.P3137483958331767804

/-! ## A044135.P15126624526477935938

`A044515(n+1)+A000688(A137847(2*n+3))`
-/

namespace A044135.P15126624526477935938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044515 (n + 1) + A000688 (A137847 (2 * n + 3)).toNat

end

end A044135.P15126624526477935938

/-! ## A044135.P1382932808793204836

`A044515(n+1)+A000688(A110014(n+1))`
-/

namespace A044135.P1382932808793204836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044515 (n + 1) + A000688 (A110014 (n + 1)).toNat

end

end A044135.P1382932808793204836

/-!
# A044136: Numbers n such that string 5,4 occurs in the base 6 representation of n but not of n-1.

The programs for A044136, there is no canonical definition to state claims against.
-/

/-! ## A044136.P13300828790165397044

`A044516(n+1)+A007318(A185284(n))`
-/

namespace A044136.P13300828790165397044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044516 (n + 1) + A007318 (A185284 n).toNat

end

end A044136.P13300828790165397044

/-! ## A044136.P4910132004410753058

`A044516(n+1)+A001222(A133961(n+1))`
-/

namespace A044136.P4910132004410753058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044516 (n + 1) + A001222 (A133961 (n + 1)).toNat

end

end A044136.P4910132004410753058

/-! ## A044136.P3393030983828799207

`A052409(A001845(n+4))+A044516(n+1)`
-/

namespace A044136.P3393030983828799207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A001845 (n + 4)).toNat + A044516 (n + 1)

end

end A044136.P3393030983828799207

/-! ## A044136.P1343210625284631274

`A057427(A010027(n+1))+A044516(n+1)`
-/

namespace A044136.P1343210625284631274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A010027 (n + 1)).toNat + A044516 (n + 1)

end

end A044136.P1343210625284631274

/-! ## A044136.P2121243244973686873

`A113484(A044516(n+1))`
-/

namespace A044136.P2121243244973686873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (A044516 (n + 1)).toNat

end

end A044136.P2121243244973686873

/-!
# A044137: Numbers k such that string 5,5 occurs in the base 6 representation of k but not of k-1.

The programs for A044137, there is no canonical definition to state claims against.
-/

/-! ## A044137.P3669395467614292539

`A044102(A187829(n+1))-A234959(n+1)`
-/

namespace A044137.P3669395467614292539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044102 (A187829 (n + 1)).toNat - A234959 (n + 1)

end

end A044137.P3669395467614292539

/-! ## A044137.P6424196762285625296

`A044102(n+1)-A099636(A299267(2*n))`
-/

namespace A044137.P6424196762285625296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044102 (n + 1) - A099636 (A299267 (2 * n)).toNat

end

end A044137.P6424196762285625296

/-! ## A044137.P1485434647317878452

`A350055(n)-A381066(A140987(n+1))`
-/

namespace A044137.P1485434647317878452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350055 n - A381066 (A140987 (n + 1)).toNat

end

end A044137.P1485434647317878452

/-! ## A044137.P17453430529770079959

`A044483(n+1)-A306419(A140987(n+1))`
-/

namespace A044137.P17453430529770079959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044483 (n + 1) - A306419 (A140987 (n + 1)).toNat

end

end A044137.P17453430529770079959

/-! ## A044137.P4125440471604906540

`A044517(A001221(2*n!+1)+n)+1`
-/

namespace A044137.P4125440471604906540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044517 (A001221 (2 * Nat.factorial n + 1) + (n : ℤ)).toNat + 1

end

end A044137.P4125440471604906540

/-!
# A044138: Numbers n such that string 0,0 occurs in the base 7 representation of n but not of n-1.

The programs for A044138, there is no canonical definition to state claims against.
-/

/-! ## A044138.P17271412569282598319

`record[A028902(A044399(n+1))]`
-/

namespace A044138.P17271412569282598319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028902 (A044399 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044138.P17271412569282598319

/-! ## A044138.P891049403133747322

`record[49*A353840(n+1)]`
-/

namespace A044138.P891049403133747322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  49 * A353840 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044138.P891049403133747322

/-! ## A044138.P10548220164404332034

`(n+1)*A062368(A001748(A062380(n+1)))`
-/

namespace A044138.P10548220164404332034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A062368 (A001748 (A062380 (n + 1)).toNat).toNat

end

end A044138.P10548220164404332034

/-! ## A044138.P15659471173342249626

`(n+1)*A271313(A000005(A271311(n+1)))`
-/

namespace A044138.P15659471173342249626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A271313 (A000005 (A271311 (n + 1)).toNat).toNat

end

end A044138.P15659471173342249626

/-! ## A044138.P3153101421782972037

`(n+1)*A086779(A280990(A086794(n+1)))`
-/

namespace A044138.P3153101421782972037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A086779 (A280990 (A086794 (n + 1)).toNat).toNat

end

end A044138.P3153101421782972037

/-!
# A044139: Numbers n such that string 0,1 occurs in the base 7 representation of n but not of n-1.

The programs for A044139, there is no canonical definition to state claims against.
-/

/-! ## A044139.P14160405449293161830

`record[A025480(A044140(n+2))]`
-/

namespace A044139.P14160405449293161830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A044140 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044139.P14160405449293161830

/-! ## A044139.P3446370474894039608

`A044521(n+1)-∏{p}[A014384(n), #]`
-/

namespace A044139.P3446370474894039608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014384 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044521 (n + 1) - ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ)

end

end A044139.P3446370474894039608

/-!
# A044140: Numbers k such that substring "02" occurs in the base-7 representation of k but not of k-1.

The programs for A044140, there is no canonical definition to state claims against.
-/

/-! ## A044140.P3135359825477526953

`record[A025480(A044142(n+2))]`
-/

namespace A044140.P3135359825477526953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A044142 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044140.P3135359825477526953

/-! ## A044140.P11060717392106084204

`A044520(n+1)+A000034(A028330(n))`
-/

namespace A044140.P11060717392106084204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044520 (n + 1) + A000034 (A028330 n).toNat

end

end A044140.P11060717392106084204

/-! ## A044140.P897558014591604566

`A044520(n+1)+A000035(A272920(n))`
-/

namespace A044140.P897558014591604566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044520 (n + 1) + A000035 (A272920 n).toNat

end

end A044140.P897558014591604566

/-! ## A044140.P12024717099289542419

`A044520(n+1)+A001222(A091578(n+1))`
-/

namespace A044140.P12024717099289542419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044520 (n + 1) + A001222 (A091578 (n + 1)).toNat

end

end A044140.P12024717099289542419

/-! ## A044140.P17196951276697216404

`A044520(n+1)+A000035(A101635(n+1))`
-/

namespace A044140.P17196951276697216404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044520 (n + 1) + A000035 (A101635 (n + 1)).toNat

end

end A044140.P17196951276697216404

/-! ## A044140.P7175441824613696780

`A044520(n+1)+A001222(A154868(n+1))`
-/

namespace A044140.P7175441824613696780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044520 (n + 1) + A001222 (A154868 (n + 1)).toNat

end

end A044140.P7175441824613696780

/-!
# A044141: Numbers k such that string 0,3 occurs in the base 7 representation of k but not of k-1.

The programs for A044141, there is no canonical definition to state claims against.
-/

/-! ## A044141.P7448061185784863328

`record[A025480(A044144(n+2))]`
-/

namespace A044141.P7448061185784863328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A044144 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044141.P7448061185784863328

/-! ## A044141.P15616577778895553362

`A008621(4*A044521(n+1))`
-/

namespace A044141.P15616577778895553362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (4 * A044521 (n + 1)).toNat

end

end A044141.P15616577778895553362

/-! ## A044141.P3627053935869438190

`A008624(4*A044521(n+1))`
-/

namespace A044141.P3627053935869438190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (4 * A044521 (n + 1)).toNat

end

end A044141.P3627053935869438190

/-! ## A044141.P3749140043601465451

`A110659(4*A044521(n+1))`
-/

namespace A044141.P3749140043601465451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110659 (4 * A044521 (n + 1)).toNat

end

end A044141.P3749140043601465451

/-! ## A044141.P12571513393800840843

`A044521(n+1)+gcd(3, A098820(n))`
-/

namespace A044141.P12571513393800840843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044521 (n + 1) + (Int.gcd 3 (A098820 n) : ℤ)

end

end A044141.P12571513393800840843

/-! ## A044141.P3613720933566171052

`A044521(n+1)+A125631(n+1)%2`
-/

namespace A044141.P3613720933566171052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044521 (n + 1) + Int.tmod (A125631 (n + 1)) 2

end

end A044141.P3613720933566171052

/-! ## A044141.P16528349096831756066

`A044521(n+1)+A000035(A125631(n+1))`
-/

namespace A044141.P16528349096831756066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044521 (n + 1) + A000035 (A125631 (n + 1)).toNat

end

end A044141.P16528349096831756066

/-! ## A044141.P17528570421166564123

`A044521(n+1)+A001222(A172039(n+1))`
-/

namespace A044141.P17528570421166564123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044521 (n + 1) + A001222 (A172039 (n + 1)).toNat

end

end A044141.P17528570421166564123

/-! ## A044141.P13417217285074724159

`A044521(n+1)+A001222(A263980(n+1))`
-/

namespace A044141.P13417217285074724159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044521 (n + 1) + A001222 (A263980 (n + 1)).toNat

end

end A044141.P13417217285074724159

/-!
# A044142: Numbers k such that string 0,4 occurs in the base 7 representation of k but not of k-1.

The programs for A044142, there is no canonical definition to state claims against.
-/

/-! ## A044142.P12855124770275326007

`A054977(A009998(n))+A044522(n+1)`
-/

namespace A044142.P12855124770275326007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A009998 n).toNat + A044522 (n + 1)

end

end A044142.P12855124770275326007

/-! ## A044142.P1600858785578574288

`A057077(A045944(n))+A044522(n+1)`
-/

namespace A044142.P1600858785578574288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A045944 n).toNat + A044522 (n + 1)

end

end A044142.P1600858785578574288

/-! ## A044142.P682043633925295944

`A185117(A195036(n))+A044522(n+1)`
-/

namespace A044142.P682043633925295944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185117 (A195036 n).toNat + A044522 (n + 1)

end

end A044142.P682043633925295944

/-! ## A044142.P9320994376650382221

`A044522(n+1)+A000188(A174010(n+1))`
-/

namespace A044142.P9320994376650382221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044522 (n + 1) + A000188 (A174010 (n + 1)).toNat

end

end A044142.P9320994376650382221

/-! ## A044142.P2910994980865361844

`A166234(A086472(n+1))+A044522(n+1)`
-/

namespace A044142.P2910994980865361844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166234 (A086472 (n + 1)).toNat + A044522 (n + 1)

end

end A044142.P2910994980865361844

/-! ## A044142.P14409282151003758382

`A044522(n+1)+A000188(A299956(n+1))`
-/

namespace A044142.P14409282151003758382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044522 (n + 1) + A000188 (A299956 (n + 1)).toNat

end

end A044142.P14409282151003758382

/-! ## A044142.P6028620012390715400

`A044522(n+1)+A000188(A318953(n+1))`
-/

namespace A044142.P6028620012390715400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044522 (n + 1) + A000188 (A318953 (n + 1)).toNat

end

end A044142.P6028620012390715400

/-! ## A044142.P2764544297173039050

`A008624(4*A044522(n+1))`
-/

namespace A044142.P2764544297173039050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (4 * A044522 (n + 1)).toNat

end

end A044142.P2764544297173039050

/-! ## A044142.P13050828564132343519

`A265186(A067725(n))+A044522(n+1)`
-/

namespace A044142.P13050828564132343519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265186 (A067725 n).toNat + A044522 (n + 1)

end

end A044142.P13050828564132343519

/-! ## A044142.P4032912039606917868

`A044522(n+1)+A008835(A318401(n+1))`
-/

namespace A044142.P4032912039606917868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044522 (n + 1) + A008835 (A318401 (n + 1)).toNat

end

end A044142.P4032912039606917868

/-!
# A044143: Numbers k such that string 0,5 occurs in the base 7 representation of k but not of k-1.

The programs for A044143, there is no canonical definition to state claims against.
-/

/-! ## A044143.P7685616816998978467

`A057427(A100862(n))+A044523(n+1)`
-/

namespace A044143.P7685616816998978467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A100862 n).toNat + A044523 (n + 1)

end

end A044143.P7685616816998978467

/-! ## A044143.P1451586095994127139

`A186729(A186729(n))+A044523(n+1)`
-/

namespace A044143.P1451586095994127139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186729 (A186729 n).toNat + A044523 (n + 1)

end

end A044143.P1451586095994127139

/-! ## A044143.P13412898345591283635

`A044523(n+1)+A008480(A107807(n+1))`
-/

namespace A044143.P13412898345591283635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044523 (n + 1) + A008480 (A107807 (n + 1)).toNat

end

end A044143.P13412898345591283635

/-! ## A044143.P2424912120451242900

`A057427(A077666(n+1))+A044523(n+1)`
-/

namespace A044143.P2424912120451242900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A077666 (n + 1)).toNat + A044523 (n + 1)

end

end A044143.P2424912120451242900

/-! ## A044143.P10787638793332034412

`A057427(A088017(n+1))+A044523(n+1)`
-/

namespace A044143.P10787638793332034412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A088017 (n + 1)).toNat + A044523 (n + 1)

end

end A044143.P10787638793332034412

/-! ## A044143.P3756220806691201514

`A057427(A099512(n+1))+A044523(n+1)`
-/

namespace A044143.P3756220806691201514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A099512 (n + 1)).toNat + A044523 (n + 1)

end

end A044143.P3756220806691201514

/-! ## A044143.P9249419694071656859

`A116891(A238726(n+1))+A044523(n+1)`
-/

namespace A044143.P9249419694071656859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116891 (A238726 (n + 1)).toNat + A044523 (n + 1)

end

end A044143.P9249419694071656859

/-! ## A044143.P1251657426378850872

`A057427(A316313(n+1))+A044523(n+1)`
-/

namespace A044143.P1251657426378850872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A316313 (n + 1)).toNat + A044523 (n + 1)

end

end A044143.P1251657426378850872

/-! ## A044143.P6166284365539009940

`A057427(A243347(2*n+1))+A044523(n+1)`
-/

namespace A044143.P6166284365539009940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A243347 (2 * n + 1)).toNat + A044523 (n + 1)

end

end A044143.P6166284365539009940

/-!
# A044144: Numbers k such that string 0,6 occurs in the base 7 representation of k but not of k-1.

The programs for A044144, there is no canonical definition to state claims against.
-/

/-! ## A044144.P12423264305434232213

`A057427(A000009(n))+A044524(n+1)`
-/

namespace A044144.P12423264305434232213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A000009 n).toNat + A044524 (n + 1)

end

end A044144.P12423264305434232213

/-! ## A044144.P3954397902084818440

`A057427(A272486(n+1))+A044524(n+1)`
-/

namespace A044144.P3954397902084818440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A272486 (n + 1)).toNat + A044524 (n + 1)

end

end A044144.P3954397902084818440

/-! ## A044144.P4554376393716154283

`A044524(n+1)+A001222(A352352(n+1))`
-/

namespace A044144.P4554376393716154283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044524 (n + 1) + A001222 (A352352 (n + 1)).toNat

end

end A044144.P4554376393716154283

/-! ## A044144.P14104917205574623697

`A044524(n+1)+A000035(A240535(n+2))`
-/

namespace A044144.P14104917205574623697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044524 (n + 1) + A000035 (A240535 (n + 2)).toNat

end

end A044144.P14104917205574623697

/-! ## A044144.P3165005194784515472

`A044524(n+1)-A057428(A197545(n+1))`
-/

namespace A044144.P3165005194784515472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044524 (n + 1) - A057428 (A197545 (n + 1)).toNat

end

end A044144.P3165005194784515472

/-!
# A044145: Numbers k such that string 1,0 occurs in the base 7 representation of k but not of k-1.

The programs for A044145, there is no canonical definition to state claims against.
-/

/-! ## A044145.P14606643142763276320

`∩[A043131(n+1), A047277(n+1)]`
-/

namespace A044145.P14606643142763276320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047277 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044145.P14606643142763276320

/-! ## A044145.P5590970041404300972

`∩[A043131(n+1), A047281(n+1)]`
-/

namespace A044145.P5590970041404300972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047281 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044145.P5590970041404300972

/-! ## A044145.P3883813696003250652

`∩[A043131(n+1), A047289(n+1)]`
-/

namespace A044145.P3883813696003250652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047289 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044145.P3883813696003250652

/-! ## A044145.P7738676282506083261

`∩[A043131(n+1), A047320(n+1)]`
-/

namespace A044145.P7738676282506083261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044145.P7738676282506083261

/-! ## A044145.P14238551249760403416

`∩[A043131(n+1), A047342(n+1)]`
-/

namespace A044145.P14238551249760403416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044145.P14238551249760403416

/-! ## A044145.P2352670912606241604

`∩[A043131(n+1), A047349(n+1)]`
-/

namespace A044145.P2352670912606241604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044145.P2352670912606241604

/-! ## A044145.P8021435033625991299

`∩[A043131(n+1), A047359(n+1)]`
-/

namespace A044145.P8021435033625991299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044145.P8021435033625991299

/-! ## A044145.P3450538109969685930

`∩[A043131(n+1), A047375(n+1)]`
-/

namespace A044145.P3450538109969685930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044145.P3450538109969685930

/-! ## A044145.P9719640856621918411

`∩[A043131(n+1), A047386(n+1)]`
-/

namespace A044145.P9719640856621918411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044145.P9719640856621918411

/-! ## A044145.P2948571586065564735

`∩[A043131(n+1), A047390(n+1)]`
-/

namespace A044145.P2948571586065564735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047390 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044145.P2948571586065564735

/-! ## A044145.P5551453566280318470

`∩[A043131(n+1), A082206(n+1)]`
-/

namespace A044145.P5551453566280318470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082206 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044145.P5551453566280318470

/-! ## A044145.P7605821155156667009

`∩[A043131(n+1), A047285(n+1)]`
-/

namespace A044145.P7605821155156667009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044145.P7605821155156667009

/-! ## A044145.P3419537826160764968

`∩[A043131(n+1), A047293(n+1)]`
-/

namespace A044145.P3419537826160764968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047293 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044145.P3419537826160764968

/-! ## A044145.P8142946065217810986

`∩[A043131(n+1), A047297(n+1)]`
-/

namespace A044145.P8142946065217810986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047297 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044145.P8142946065217810986

/-! ## A044145.P4486291740810332366

`∩[A043131(n+1), A047312(n+1)]`
-/

namespace A044145.P4486291740810332366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044145.P4486291740810332366

/-! ## A044145.P2693267180563165297

`∩[A043131(n+1), A047324(n+1)]`
-/

namespace A044145.P2693267180563165297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047324 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044145.P2693267180563165297

/-! ## A044145.P16565413583699612553

`∩[A043131(n+1), A047328(n+1)]`
-/

namespace A044145.P16565413583699612553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044145.P16565413583699612553

/-! ## A044145.P1207975546018954639

`∩[A043131(n+1), A047340(n+1)]`
-/

namespace A044145.P1207975546018954639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044145.P1207975546018954639

/-! ## A044145.P12891720862026777886

`∩[A043131(n+1), A047365(n+1)]`
-/

namespace A044145.P12891720862026777886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044145.P12891720862026777886

/-! ## A044145.P13781530193013735271

`∩[A043131(n+1), A047371(n+1)]`
-/

namespace A044145.P13781530193013735271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044145.P13781530193013735271

/-!
# A044146: Numbers n such that string 1,1 occurs in the base 7 representation of n but not of n-1.

The programs for A044146, there is no canonical definition to state claims against.
-/

/-! ## A044146.P16139602037287229717

`A044162(3*n+1)/A339318(A107715(n+1))`
-/

namespace A044146.P16139602037287229717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A044162 (3 * n + 1) : ℚ) / (A339318 (A107715 (n + 1)).toNat : ℚ)

end

end A044146.P16139602037287229717

/-! ## A044146.P2478615865202250694

`A044162(3*n+1)/A267317(A250738(n+1))`
-/

namespace A044146.P2478615865202250694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A044162 (3 * n + 1) : ℚ) / (A267317 (A250738 (n + 1)).toNat : ℚ)

end

end A044146.P2478615865202250694

/-!
# A044147: Numbers k such that string 1,2 occurs in the base 7 representation of k but not of k-1.

The programs for A044147, there is no canonical definition to state claims against.
-/

/-! ## A044147.P4317961273250859661

`A044528(n+1)-A005872(A246759(n+1))`
-/

namespace A044147.P4317961273250859661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044528 (n + 1) - A005872 (A246759 (n + 1)).toNat

end

end A044147.P4317961273250859661

/-!
# A044148: Numbers n such that the string 1,3 occurs in the base 7 representation of n but not of n-1.

The programs for A044148, there is no canonical definition to state claims against.
-/

/-! ## A044148.P3334898539687255814

`record[A000292(A044168(n+1))%A044168(n+1)]`
-/

namespace A044148.P3334898539687255814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000292 (A044168 (n + 1)).toNat) (A044168 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044148.P3334898539687255814

/-! ## A044148.P4530279029930472807

`A241578(∑[n])+A044528(n+1)`
-/

namespace A044148.P4530279029930472807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241578 (∑ j ∈ Finset.range (n + 1), f1 j) + A044528 (n + 1)

end

end A044148.P4530279029930472807

/-! ## A044148.P5959046485784884748

`A165591(3^n)+A044528(n+1)`
-/

namespace A044148.P5959046485784884748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165591 (3 ^ n) + A044528 (n + 1)

end

end A044148.P5959046485784884748

/-! ## A044148.P17454624906635673906

`A165596(3^n)+A044528(n+1)`
-/

namespace A044148.P17454624906635673906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165596 (3 ^ n) + A044528 (n + 1)

end

end A044148.P17454624906635673906

/-!
# A044149: Numbers k such that string 1,4 occurs in the base 7 representation of k but not of k-1.

The programs for A044149, there is no canonical definition to state claims against.
-/

/-! ## A044149.P17948640151368531266

`record[A135997(A044171(n+1))]`
-/

namespace A044149.P17948640151368531266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (A044171 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044149.P17948640151368531266

/-! ## A044149.P11935313113905849691

`record[A054576(A044182(n+1))]`
-/

namespace A044149.P11935313113905849691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A044182 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044149.P11935313113905849691

/-! ## A044149.P16094570262326488013

`A044529(n+1)+A028234(5^floor(n/2))`
-/

namespace A044149.P16094570262326488013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044529 (n + 1) + A028234 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))).toNat

end

end A044149.P16094570262326488013

/-! ## A044149.P11088944614209444236

`A112682(∑[n]+or(1, n))+A044529(n+1)`
-/

namespace A044149.P11088944614209444236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112682 (∑ j ∈ Finset.range (n + 1), f1 j + Nat.lor 1 n) + A044529 (n + 1)

end

end A044149.P11088944614209444236

/-! ## A044149.P11851560904916481191

`A342017(A000108(n))+A044529(n+1)`
-/

namespace A044149.P11851560904916481191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342017 (A000108 n).toNat + A044529 (n + 1)

end

end A044149.P11851560904916481191

/-!
# A044150: Numbers n such that string 1,5 occurs in the base 7 representation of n but not of n-1.

The programs for A044150, there is no canonical definition to state claims against.
-/

/-! ## A044150.P5070059386474411599

`record[A135997(A044174(n+1))]`
-/

namespace A044150.P5070059386474411599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (A044174 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044150.P5070059386474411599

/-! ## A044150.P9389178677228742492

`A044530(n+1)+A030190(A034386(n))`
-/

namespace A044150.P9389178677228742492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044530 (n + 1) + A030190 (A034386 n).toNat

end

end A044150.P9389178677228742492

/-! ## A044150.P5846695375567129062

`A044530(n+1)+A035263(A158601(n))`
-/

namespace A044150.P5846695375567129062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044530 (n + 1) + A035263 (A158601 n).toNat

end

end A044150.P5846695375567129062

/-! ## A044150.P7507928371874465591

`A044530(n+1)+A006519(A290528(n))`
-/

namespace A044150.P7507928371874465591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044530 (n + 1) + A006519 (A290528 n).toNat

end

end A044150.P7507928371874465591

/-! ## A044150.P16955582499528860984

`A236398(A223885(n+3))+A044530(n+1)`
-/

namespace A044150.P16955582499528860984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236398 (A223885 (n + 3)).toNat + A044530 (n + 1)

end

end A044150.P16955582499528860984

/-!
# A044151: Numbers k such that string 1,6 occurs in the base 7 representation of k but not of k-1.

The programs for A044151, there is no canonical definition to state claims against.
-/

/-! ## A044151.P7808211244189623238

`record[A025480(A044164(n+1)%A044521(n+1))]`
-/

namespace A044151.P7808211244189623238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (Int.tmod (A044164 (n + 1)) (A044521 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044151.P7808211244189623238

/-! ## A044151.P5940657012466183719

`record[A135997(A044177(n+1))]`
-/

namespace A044151.P5940657012466183719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (A044177 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044151.P5940657012466183719

/-! ## A044151.P14904390343227652244

`A044531(A077168(n))+1`
-/

namespace A044151.P14904390343227652244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044531 (A077168 n).toNat + 1

end

end A044151.P14904390343227652244

/-! ## A044151.P17584169483568851907

`A204455(2^n)+A044531(n+1)`
-/

namespace A044151.P17584169483568851907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204455 (2 ^ n) + A044531 (n + 1)

end

end A044151.P17584169483568851907

/-! ## A044151.P2242511654886510606

`A044531(n+1)+A038374(A000079(n))`
-/

namespace A044151.P2242511654886510606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044531 (n + 1) + A038374 (A000079 n).toNat

end

end A044151.P2242511654886510606

/-!
# A044152: Numbers n such that string 2,0 occurs in the base 7 representation of n but not of n-1.

The programs for A044152, there is no canonical definition to state claims against.
-/

/-! ## A044152.P461811405283064714

`record[A032742(A044166(n+1))]`
-/

namespace A044152.P461811405283064714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A044166 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044152.P461811405283064714

/-! ## A044152.P15604703311212079122

`record[A025480(A044166(A052938(n)))]`
-/

namespace A044152.P15604703311212079122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A044166 (A052938 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044152.P15604703311212079122

/-! ## A044152.P7416568366741149068

`record[A135997(A044180(n+1))]`
-/

namespace A044152.P7416568366741149068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (A044180 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044152.P7416568366741149068

/-! ## A044152.P15479044577773643422

`A044153(n+1)-A001222(A065107(n+1))-A044533(n+1)%7`
-/

namespace A044152.P15479044577773643422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044153 (n + 1) - A001222 (A065107 (n + 1)).toNat - Int.tmod (A044533 (n + 1)) 7

end

end A044152.P15479044577773643422

/-! ## A044152.P2694351284116603814

`A044533(n+1)-(A044153(n+1)-A001222(A211003(n+1)))%7`
-/

namespace A044152.P2694351284116603814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044533 (n + 1) - Int.tmod (A044153 (n + 1) - A001222 (A211003 (n + 1)).toNat) 7

end

end A044152.P2694351284116603814

/-!
# A044153: Numbers n such that string 2,1 occurs in the base 7 representation of n but not of n-1.

The programs for A044153, there is no canonical definition to state claims against.
-/

/-! ## A044153.P10369538199573900752

`record[A025480(A044168(n+1))]`
-/

namespace A044153.P10369538199573900752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A044168 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044153.P10369538199573900752

/-! ## A044153.P5660667656149342496

`record[A078898(A044168(ceil((n+1)/2)))]`
-/

namespace A044153.P5660667656149342496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A044168 ⌈(n + 1 : ℚ) / 2⌉.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044153.P5660667656149342496

/-! ## A044153.P13626555496510844494

`A044533(n+1)+A001222(A065107(n+1))`
-/

namespace A044153.P13626555496510844494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044533 (n + 1) + A001222 (A065107 (n + 1)).toNat

end

end A044153.P13626555496510844494

/-! ## A044153.P16955527658958707124

`A044533(n+1)+A001222(A211003(n+1))`
-/

namespace A044153.P16955527658958707124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044533 (n + 1) + A001222 (A211003 (n + 1)).toNat

end

end A044153.P16955527658958707124

/-! ## A044153.P6461328292508216653

`A078898(A211003(n+2))+A044533(n+1)`
-/

namespace A044153.P6461328292508216653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A211003 (n + 2)).toNat + A044533 (n + 1)

end

end A044153.P6461328292508216653

/-!
# A044154: Numbers n such that string 2,2 occurs in the base 7 representation of n but not of n-1.

The programs for A044154, there is no canonical definition to state claims against.
-/

/-! ## A044154.P6207343407561781624

`A044170(Δ[n²])/A000005(A002385(n+1))`
-/

namespace A044154.P6207343407561781624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A044170 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / (A000005 (A002385 (n + 1)).toNat : ℚ)

end

end A044154.P6207343407561781624

/-! ## A044154.P15524065538984735752

`A044170(Δ[n²])/A034444(A181507(n+1))`
-/

namespace A044154.P15524065538984735752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A044170 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / (A034444 (A181507 (n + 1)).toNat : ℚ)

end

end A044154.P15524065538984735752

/-! ## A044154.P3316075590535711225

`A044170(comp[2*n])/A034444(A181507(n+1))!`
-/

namespace A044154.P3316075590535711225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A044170 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) / (Nat.factorial (A034444 (A181507 (n + 1)).toNat).toNat : ℚ)

end

end A044154.P3316075590535711225

/-! ## A044154.P10176930292032816878

`record[A260739(A044170(n+1))]`
-/

namespace A044154.P10176930292032816878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260739 (A044170 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044154.P10176930292032816878

/-! ## A044154.P10207352437867609654

`A260739(A044170(comp[2*n]))`
-/

namespace A044154.P10207352437867609654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260739 (A044170 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A044154.P10207352437867609654

/-! ## A044154.P5096868912830668328

`A004525(A044170(Δ[n²]))`
-/

namespace A044154.P5096868912830668328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A044170 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A044154.P5096868912830668328

/-! ## A044154.P6765501378752327656

`A065033(A044170(2*n+1))`
-/

namespace A044154.P6765501378752327656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A044170 (2 * n + 1)).toNat

end

end A044154.P6765501378752327656

/-! ## A044154.P8845277663829997018

`A004526(A044170(Δ[n²])+1)`
-/

namespace A044154.P8845277663829997018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A044170 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1).toNat

end

end A044154.P8845277663829997018

/-! ## A044154.P2272401715682889070

`A123108(A044170(Δ[n²])+1)`
-/

namespace A044154.P2272401715682889070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A044170 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1).toNat

end

end A044154.P2272401715682889070

/-! ## A044154.P18204356134640770209

`A004526(lcm(2, A044170(Δ[n²])))`
-/

namespace A044154.P18204356134640770209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.lcm 2 (A044170 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat))

end

end A044154.P18204356134640770209

/-! ## A044154.P11863610525692873223

`A004526(or(1, A044170(Δ[n²])))`
-/

namespace A044154.P11863610525692873223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.lor 1 (A044170 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)).toNat

end

end A044154.P11863610525692873223

/-! ## A044154.P13951584647188470136

`A004526(xor(1, A044170(Δ[n²])))`
-/

namespace A044154.P13951584647188470136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.xor 1 (A044170 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)).toNat

end

end A044154.P13951584647188470136

/-!
# A044155: Numbers k such that string 2,3 occurs in the base 7 representation of k but not of k-1.

The programs for A044155, there is no canonical definition to state claims against.
-/

/-! ## A044155.P2014509957400566859

`record[A025480(A044172(n+1))]`
-/

namespace A044155.P2014509957400566859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A044172 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044155.P2014509957400566859

/-! ## A044155.P12997914295928973491

`record[A032742(A044172(floor(n/2)+1))]`
-/

namespace A044155.P12997914295928973491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A044172 (⌊(n : ℚ) / 2⌋ + 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044155.P12997914295928973491

/-! ## A044155.P15423943736100804448

`A025480(∩[2*n, A044172(n+1)])`
-/

namespace A044155.P15423943736100804448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044172 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A044155.P15423943736100804448

/-! ## A044155.P9803938842090732306

`A044156(n+1)-A109010(A015448(n))`
-/

namespace A044155.P9803938842090732306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044156 (n + 1) - A109010 (A015448 n).toNat

end

end A044155.P9803938842090732306

/-!
# A044156: Numbers n such that string 2,4 occurs in the base 7 representation of n but not of n-1.

The programs for A044156, there is no canonical definition to state claims against.
-/

/-! ## A044156.P1652673915546967648

`record[A032742(A044174(n+1))]`
-/

namespace A044156.P1652673915546967648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A044174 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044156.P1652673915546967648

/-! ## A044156.P5568723885124442041

`record[A078898(A044174(floor((n+5)/4)))]`
-/

namespace A044156.P5568723885124442041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A044174 ⌊(n + 5 : ℚ) / 4⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044156.P5568723885124442041

/-! ## A044156.P121822645213344338

`A057427(A000032(n))+A044536(n+1)`
-/

namespace A044156.P121822645213344338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A000032 n).toNat + A044536 (n + 1)

end

end A044156.P121822645213344338

/-! ## A044156.P12045057683356463523

`A057427(A085157(n))+A044536(n+1)`
-/

namespace A044156.P12045057683356463523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A085157 n).toNat + A044536 (n + 1)

end

end A044156.P12045057683356463523

/-! ## A044156.P15801435873326639690

`A057427(A102462(n))+A044536(n+1)`
-/

namespace A044156.P15801435873326639690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A102462 n).toNat + A044536 (n + 1)

end

end A044156.P15801435873326639690

/-!
# A044157: Numbers n such that string 2,5 occurs in the base 7 representation of n but not of n-1.

The programs for A044157, there is no canonical definition to state claims against.
-/

/-! ## A044157.P5054799505539604651

`record[A025480(A044176(n+1))]`
-/

namespace A044157.P5054799505539604651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A044176 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044157.P5054799505539604651

/-! ## A044157.P8969902668369322573

`A044537(n+1)+A151722(n)!`
-/

namespace A044157.P8969902668369322573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044537 (n + 1) + (Nat.factorial (A151722 n).toNat : ℤ)

end

end A044157.P8969902668369322573

/-! ## A044157.P8707200622250138647

`A044537(n+1)+A151818(n)!`
-/

namespace A044157.P8707200622250138647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044537 (n + 1) + (Nat.factorial (A151818 n).toNat : ℤ)

end

end A044157.P8707200622250138647

/-! ## A044157.P14116751686465301814

`A044537(n+1)-A057428(A081437(n))`
-/

namespace A044157.P14116751686465301814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044537 (n + 1) - A057428 (A081437 n).toNat

end

end A044157.P14116751686465301814

/-! ## A044157.P15345031664006447921

`A044537(n+1)+A001222(A059801(n+1))`
-/

namespace A044157.P15345031664006447921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044537 (n + 1) + A001222 (A059801 (n + 1)).toNat

end

end A044157.P15345031664006447921

/-!
# A044158: Numbers n such that string 2,6 occurs in the base 7 representation of n but not of n-1.

The programs for A044158, there is no canonical definition to state claims against.
-/

/-! ## A044158.P15828059521295016455

`A136755(A113340(n))+A044538(n+1)`
-/

namespace A044158.P15828059521295016455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136755 (A113340 n).toNat + A044538 (n + 1)

end

end A044158.P15828059521295016455

/-! ## A044158.P3207646798641153774

`A044538(n+1)+A006519(A001567(n+1))`
-/

namespace A044158.P3207646798641153774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044538 (n + 1) + A006519 (A001567 (n + 1)).toNat

end

end A044158.P3207646798641153774

/-! ## A044158.P746099474467966013

`A044538(n+1)+A032742(A000043(n+1))`
-/

namespace A044158.P746099474467966013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044538 (n + 1) + A032742 (A000043 (n + 1)).toNat

end

end A044158.P746099474467966013

/-! ## A044158.P14267245312773783974

`A351202(A029743(n+1))+A044538(n+1)`
-/

namespace A044158.P14267245312773783974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351202 (A029743 (n + 1)).toNat + A044538 (n + 1)

end

end A044158.P14267245312773783974

/-!
# A044159: Numbers n such that string 3,0 occurs in the base 7 representation of n but not of n-1.

The programs for A044159, there is no canonical definition to state claims against.
-/

/-! ## A044159.P15345369870212378584

`record[A025480(A044180(n+1))]`
-/

namespace A044159.P15345369870212378584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A044180 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044159.P15345369870212378584

/-! ## A044159.P16319168070144805443

`A044540(n+1)+A115510(A044540(n+1))+1-A044541(n+1)`
-/

namespace A044159.P16319168070144805443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044540 (n + 1) + (A115510 (A044540 (n + 1)).toNat + 1 - A044541 (n + 1))

end

end A044159.P16319168070144805443

/-! ## A044159.P398645986935054129

`A113484(A044539(n+1))`
-/

namespace A044159.P398645986935054129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (A044539 (n + 1)).toNat

end

end A044159.P398645986935054129

/-! ## A044159.P17199673331955794225

`A115510(A044539(n+1)+1)`
-/

namespace A044159.P17199673331955794225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115510 (A044539 (n + 1) + 1).toNat

end

end A044159.P17199673331955794225

/-! ## A044159.P8350350816114096177

`A233583(A044539(n+1)+2)`
-/

namespace A044159.P8350350816114096177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044539 (n + 1) + 2).toNat

end

end A044159.P8350350816114096177

/-!
# A044160: Numbers n such that string 3,1 occurs in the base 7 representation of n but not of n-1.

The programs for A044160, there is no canonical definition to state claims against.
-/

/-! ## A044160.P6902231583993411504

`record[A078898(A044182(n+1))]`
-/

namespace A044160.P6902231583993411504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A044182 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044160.P6902231583993411504

/-! ## A044160.P7983211555163744678

`A004525(∩[2*n, A044182(n+1)])`
-/

namespace A044160.P7983211555163744678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044182 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A044160.P7983211555163744678

/-! ## A044160.P2234078965395092801

`A115510(A044540(n+1))+1`
-/

namespace A044160.P2234078965395092801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115510 (A044540 (n + 1)).toNat + 1

end

end A044160.P2234078965395092801

/-! ## A044160.P15788172095438741592

`A044541(n+1)-A335823(Δ[A044541(n+1)])`
-/

namespace A044160.P15788172095438741592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044541 (n + 1) - A335823 (f1 (n + 1) - f1 n).toNat

end

end A044160.P15788172095438741592

/-! ## A044160.P5286273039468395707

`A359832(A120745(2*(n+1)))+A044540(n+1)`
-/

namespace A044160.P5286273039468395707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359832 (A120745 (2 * (n + 1))).toNat + A044540 (n + 1)

end

end A044160.P5286273039468395707

/-!
# A044161: Numbers k such that string 3,2 occurs in the base 7 representation of k but not of k-1.

The programs for A044161, there is no canonical definition to state claims against.
-/

/-! ## A044161.P12694596773967843215

`record[A278529(A044184(n+1))]`
-/

namespace A044161.P12694596773967843215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278529 (A044184 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044161.P12694596773967843215

/-! ## A044161.P97112407978681401

`record[A001057(A044184(n+1)-1)]`
-/

namespace A044161.P97112407978681401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A044184 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044161.P97112407978681401

/-! ## A044161.P5877341018403084255

`record[-A001057(A044184(ceil(n/2)+1))]`
-/

namespace A044161.P5877341018403084255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A001057 (A044184 (⌈(n : ℚ) / 2⌉ + 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044161.P5877341018403084255

/-! ## A044161.P9565152309504026915

`(A044541(n+1)+1)%A265726(n+1)`
-/

namespace A044161.P9565152309504026915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044541 (n + 1) + 1) (A265726 (n + 1))

end

end A044161.P9565152309504026915

/-! ## A044161.P5698853022585124771

`A044541(n+1)+A000035(A001539(n))`
-/

namespace A044161.P5698853022585124771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044541 (n + 1) + A000035 (A001539 n).toNat

end

end A044161.P5698853022585124771

/-!
# A044162: Numbers n such that string 3,3 occurs in the base 7 representation of n but not of n-1.

The programs for A044162, there is no canonical definition to state claims against.
-/

/-! ## A044162.P9728230948058795612

`A044186(2*n+1)/A065176(A051717(2*n+1))`
-/

namespace A044162.P9728230948058795612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A044186 (2 * n + 1) : ℚ) / (A065176 (A051717 (2 * n + 1)).toNat : ℚ)

end

end A044162.P9728230948058795612

/-! ## A044162.P11198723432793245759

`A157271(A044186(Δ[n²]))`
-/

namespace A044162.P11198723432793245759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A044186 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A044162.P11198723432793245759

/-! ## A044162.P11888213150719181524

`A157271(∩[2*n, A044186(n+1)])`
-/

namespace A044162.P11888213150719181524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044186 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A044162.P11888213150719181524

/-! ## A044162.P13475294154025537974

`A157271(A043146(2*(n+1))+A043142(2*n+1))`
-/

namespace A044162.P13475294154025537974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A043146 (2 * (n + 1)) + A043142 (2 * n + 1)).toNat

end

end A044162.P13475294154025537974

/-!
# A044163: Numbers k such that string 3,4 occurs in the base 7 representation of k but not of k-1.

The programs for A044163, there is no canonical definition to state claims against.
-/

/-! ## A044163.P685537702504933637

`A044164(n+1)-A111830(A073788(n))`
-/

namespace A044163.P685537702504933637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044164 (n + 1) - A111830 (A073788 n).toNat

end

end A044163.P685537702504933637

/-! ## A044163.P5446216182668352432

`A044164(n+1)-A089657(A111830(n))`
-/

namespace A044163.P5446216182668352432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044164 (n + 1) - A089657 (A111830 n).toNat

end

end A044163.P5446216182668352432

/-!
# A044164: Numbers k such that string 3,5 occurs in the base 7 representation of k but not of k-1.

The programs for A044164, there is no canonical definition to state claims against.
-/

/-! ## A044164.P4535354884507967842

`A044544(n+1)+∑{e}[A000043(n+5), #]`
-/

namespace A044164.P4535354884507967842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044544 (n + 1) + ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A044164.P4535354884507967842

/-! ## A044164.P15535785485980945469

`∑{d}[A000040(A044544(n+1)), A003963(#)]`
-/

namespace A044164.P15535785485980945469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A044544 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A003963 d

end

end A044164.P15535785485980945469

/-! ## A044164.P2881548982315444845

`A044544(n+1)+A000035(A272723(n+1))`
-/

namespace A044164.P2881548982315444845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044544 (n + 1) + A000035 (A272723 (n + 1)).toNat

end

end A044164.P2881548982315444845

/-! ## A044164.P17394171506431822635

`A134743(A229565(n+5))+A044544(n+1)`
-/

namespace A044164.P17394171506431822635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134743 (A229565 (n + 5)).toNat + A044544 (n + 1)

end

end A044164.P17394171506431822635

/-! ## A044164.P16790746790371913579

`A057979(A272723(n+1)+1)+A044544(n+1)`
-/

namespace A044164.P16790746790371913579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A272723 (n + 1) + 1).toNat + A044544 (n + 1)

end

end A044164.P16790746790371913579

/-!
# A044165: Numbers k such that string 3,6 occurs in the base 7 representation of k but not of k-1.

The programs for A044165, there is no canonical definition to state claims against.
-/

/-! ## A044165.P4354003144055598257

`A176727(2*n+3)+A044545(n+1)`
-/

namespace A044165.P4354003144055598257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176727 (2 * n + 3) + A044545 (n + 1)

end

end A044165.P4354003144055598257

/-! ## A044165.P6205669683985064203

`A057427(A029930(n))+A044545(n+1)`
-/

namespace A044165.P6205669683985064203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A029930 n).toNat + A044545 (n + 1)

end

end A044165.P6205669683985064203

/-! ## A044165.P17833386402362178932

`A057427(A062337(n+1))+A044545(n+1)`
-/

namespace A044165.P17833386402362178932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A062337 (n + 1)).toNat + A044545 (n + 1)

end

end A044165.P17833386402362178932

/-! ## A044165.P16856395911995709575

`A052409(A205013(2*(n+1)))+A044545(n+1)`
-/

namespace A044165.P16856395911995709575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A205013 (2 * (n + 1))).toNat + A044545 (n + 1)

end

end A044165.P16856395911995709575

/-! ## A044165.P11168452911741006766

`A185115(A186990(n+1)+A044545(n+1))+A044545(n+1)`
-/

namespace A044165.P11168452911741006766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185115 (A186990 (n + 1) + A044545 (n + 1)).toNat + A044545 (n + 1)

end

end A044165.P11168452911741006766

/-!
# A044166: Numbers n such that string 4,0 occurs in the base 7 representation of n but not of n-1.

The programs for A044166, there is no canonical definition to state claims against.
-/

/-! ## A044166.P12041375137276034887

`A044546(n+1)+A151815(n)!`
-/

namespace A044166.P12041375137276034887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044546 (n + 1) + (Nat.factorial (A151815 n).toNat : ℤ)

end

end A044166.P12041375137276034887

/-! ## A044166.P4429104627305774343

`A276837(∑[n])+A044546(n+1)`
-/

namespace A044166.P4429104627305774343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276837 (∑ j ∈ Finset.range (n + 1), f1 j) + A044546 (n + 1)

end

end A044166.P4429104627305774343

/-! ## A044166.P13500636889888925725

`A044546(n+1)+A000035(A028287(n))`
-/

namespace A044166.P13500636889888925725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044546 (n + 1) + A000035 (A028287 n).toNat

end

end A044166.P13500636889888925725

/-! ## A044166.P7107056859760325374

`A044546(n+1)-A057428(A174378(n))`
-/

namespace A044166.P7107056859760325374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044546 (n + 1) - A057428 (A174378 n).toNat

end

end A044166.P7107056859760325374

/-! ## A044166.P56717687994381343

`A044546(n+1)-A057428(A008292(n+1))`
-/

namespace A044166.P56717687994381343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044546 (n + 1) - A057428 (A008292 (n + 1)).toNat

end

end A044166.P56717687994381343

/-!
# A044167: Numbers k such that string 4,1 occurs in the base 7 representation of k but not of k-1.

The programs for A044167, there is no canonical definition to state claims against.
-/

/-! ## A044167.P15879635422976980969

`A044547(n+1)+A007913(A017294(n))`
-/

namespace A044167.P15879635422976980969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044547 (n + 1) + A007913 (A017294 n).toNat

end

end A044167.P15879635422976980969

/-! ## A044167.P8455052893780687665

`A044547(n+1)+A000034(A033583(n))`
-/

namespace A044167.P8455052893780687665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044547 (n + 1) + A000034 (A033583 n).toNat

end

end A044167.P8455052893780687665

/-! ## A044167.P3149116115630193869

`A044547(n+1)+A001222(A062064(n+1))`
-/

namespace A044167.P3149116115630193869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044547 (n + 1) + A001222 (A062064 (n + 1)).toNat

end

end A044167.P3149116115630193869

/-! ## A044167.P12407301431968129768

`A044547(n+1)+A001065(A113158(n+1))`
-/

namespace A044167.P12407301431968129768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044547 (n + 1) + A001065 (A113158 (n + 1)).toNat

end

end A044167.P12407301431968129768

/-! ## A044167.P13550142818926159951

`A044547(n+1)+A001222(A126784(n+1))`
-/

namespace A044167.P13550142818926159951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044547 (n + 1) + A001222 (A126784 (n + 1)).toNat

end

end A044167.P13550142818926159951

/-!
# A044168: Numbers n such that string 4,2 occurs in the base 7 representation of n but not of n-1.

The programs for A044168, there is no canonical definition to state claims against.
-/

/-! ## A044168.P8452280451167716816

`A044548(n+1)+A003415(A001269(n))`
-/

namespace A044168.P8452280451167716816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044548 (n + 1) + A003415 (A001269 n).toNat

end

end A044168.P8452280451167716816

/-! ## A044168.P13508146925791906218

`A044548(n+1)+A010684(A001504(n))`
-/

namespace A044168.P13508146925791906218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044548 (n + 1) + A010684 (A001504 n).toNat

end

end A044168.P13508146925791906218

/-! ## A044168.P6770411606068845866

`A054977(A000041(n))+A044548(n+1)`
-/

namespace A044168.P6770411606068845866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A000041 n).toNat + A044548 (n + 1)

end

end A044168.P6770411606068845866

/-! ## A044168.P12662279801354548166

`A044548(n+1)+A003415(A052480(n))`
-/

namespace A044168.P12662279801354548166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044548 (n + 1) + A003415 (A052480 n).toNat

end

end A044168.P12662279801354548166

/-! ## A044168.P2836773605396985557

`A044548(n+1)+A000265(A060546(n))`
-/

namespace A044168.P2836773605396985557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044548 (n + 1) + A000265 (A060546 n).toNat

end

end A044168.P2836773605396985557

/-!
# A044169: Numbers k such that string 4,3 occurs in the base 7 representation of k but not of k-1.

The programs for A044169, there is no canonical definition to state claims against.
-/

/-! ## A044169.P2485024277596679520

`A044549(n+1)-A057428(A325832(n))`
-/

namespace A044169.P2485024277596679520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044549 (n + 1) - A057428 (A325832 n).toNat

end

end A044169.P2485024277596679520

/-! ## A044169.P8872608215614756741

`A044549(n+1)+A001222(A066775(n+1))`
-/

namespace A044169.P8872608215614756741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044549 (n + 1) + A001222 (A066775 (n + 1)).toNat

end

end A044169.P8872608215614756741

/-! ## A044169.P1629930022364352132

`A044549(n+1)+A001222(A333424(n+1))`
-/

namespace A044169.P1629930022364352132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044549 (n + 1) + A001222 (A333424 (n + 1)).toNat

end

end A044169.P1629930022364352132

/-! ## A044169.P17927877259889722111

`A054977(A000041(n))+A044549(n+1)`
-/

namespace A044169.P17927877259889722111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A000041 n).toNat + A044549 (n + 1)

end

end A044169.P17927877259889722111

/-! ## A044169.P15280242745092359891

`A044549(n+1)+A001065(A113158(n+1))`
-/

namespace A044169.P15280242745092359891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044549 (n + 1) + A001065 (A113158 (n + 1)).toNat

end

end A044169.P15280242745092359891

/-!
# A044170: Numbers k such that string 4,4 occurs in the base 7 representation of k but not of k-1.

The programs for A044170, there is no canonical definition to state claims against.
-/

/-! ## A044170.P3853884032360471031

`2*A171945(8*n+6)+n`
-/

namespace A044170.P3853884032360471031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A171945 (8 * n + 6) + (n : ℤ)

end

end A044170.P3853884032360471031

/-! ## A044170.P14778283653949226336

`A044551(n+1)-A185036(A154693(n))`
-/

namespace A044170.P14778283653949226336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044551 (n + 1) - A185036 (A154693 n).toNat

end

end A044170.P14778283653949226336

/-! ## A044170.P2944602375329524562

`A044551(n+1)-A269303(A174689(n))`
-/

namespace A044170.P2944602375329524562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044551 (n + 1) - A269303 (A174689 n).toNat

end

end A044170.P2944602375329524562

/-!
# A044171: Numbers n such that string 4,5 occurs in the base 7 representation of n but not of n-1.

The programs for A044171, there is no canonical definition to state claims against.
-/

/-! ## A044171.P2824167995127619607

`A044172(n+1)-A109010(A131627(n+2))`
-/

namespace A044171.P2824167995127619607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044172 (n + 1) - A109010 (A131627 (n + 2)).toNat

end

end A044171.P2824167995127619607

/-! ## A044171.P14898230849991840647

`A044172(n+1)-A109010(A092497(n))`
-/

namespace A044171.P14898230849991840647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044172 (n + 1) - A109010 (A092497 n).toNat

end

end A044171.P14898230849991840647

/-! ## A044171.P10383337495139165697

`A044172(n+1)-A109010(A003688(n+1))`
-/

namespace A044171.P10383337495139165697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044172 (n + 1) - A109010 (A003688 (n + 1)).toNat

end

end A044171.P10383337495139165697

/-!
# A044172: Numbers n such that string 4,6 occurs in the base 7 representation of n but not of n-1.

The programs for A044172, there is no canonical definition to state claims against.
-/

/-! ## A044172.P2175206632717240685

`A044552(n+1)+A007318(A185284(n))`
-/

namespace A044172.P2175206632717240685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044552 (n + 1) + A007318 (A185284 n).toNat

end

end A044172.P2175206632717240685

/-! ## A044172.P17995458698103106324

`A044552(n+1)+A001221(A007530(n+1))`
-/

namespace A044172.P17995458698103106324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044552 (n + 1) + A001221 (A007530 (n + 1)).toNat

end

end A044172.P17995458698103106324

/-! ## A044172.P15221232748927451466

`A054977(A238486(n+1))+A044552(n+1)`
-/

namespace A044172.P15221232748927451466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A238486 (n + 1)).toNat + A044552 (n + 1)

end

end A044172.P15221232748927451466

/-! ## A044172.P9948711238459484444

`A165022(A217089(2*n+3))+A044552(n+1)`
-/

namespace A044172.P9948711238459484444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165022 (A217089 (2 * n + 3)).toNat + A044552 (n + 1)

end

end A044172.P9948711238459484444

/-! ## A044172.P11491563357873207677

`A044552(n+1)+A007318(A093557(3*n+2))`
-/

namespace A044172.P11491563357873207677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044552 (n + 1) + A007318 (A093557 (3 * n + 2)).toNat

end

end A044172.P11491563357873207677

/-!
# A044173: Numbers n such that string 5,0 occurs in the base 7 representation of n but not of n-1.

The programs for A044173, there is no canonical definition to state claims against.
-/

/-! ## A044173.P5954870501174119849

`A008612(6*A044553(n+1))`
-/

namespace A044173.P5954870501174119849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (6 * A044553 (n + 1)).toNat

end

end A044173.P5954870501174119849

/-! ## A044173.P12111528909914451871

`A103221(6*A044553(n+1))`
-/

namespace A044173.P12111528909914451871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (6 * A044553 (n + 1)).toNat

end

end A044173.P12111528909914451871

/-! ## A044173.P11783844537513008407

`A054977(A117401(n))+A044553(n+1)`
-/

namespace A044173.P11783844537513008407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A117401 n).toNat + A044553 (n + 1)

end

end A044173.P11783844537513008407

/-! ## A044173.P11532014570831235275

`A044553(n+1)+A001222(A128390(n+1))`
-/

namespace A044173.P11532014570831235275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044553 (n + 1) + A001222 (A128390 (n + 1)).toNat

end

end A044173.P11532014570831235275

/-! ## A044173.P11487092250614949832

`A113484(A044553(n+1))`
-/

namespace A044173.P11487092250614949832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (A044553 (n + 1)).toNat

end

end A044173.P11487092250614949832

/-!
# A044174: Numbers n such that string 5,1 occurs in the base 7 representation of n but not of n-1.

The programs for A044174, there is no canonical definition to state claims against.
-/

/-! ## A044174.P14336370515786812931

`(A044554(n+1)+1)%A325088(n+1)`
-/

namespace A044174.P14336370515786812931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044554 (n + 1) + 1) (A325088 (n + 1))

end

end A044174.P14336370515786812931

/-! ## A044174.P6781230543262544227

`A174571(∑[20*n]+2)+A044554(n+1)`
-/

namespace A044174.P6781230543262544227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (∑ j ∈ Finset.range (n + 1), f1 j + 2) + A044554 (n + 1)

end

end A044174.P6781230543262544227

/-! ## A044174.P3207645224482837106

`A044554(n+1)+A001221(A113158(n+1))`
-/

namespace A044174.P3207645224482837106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044554 (n + 1) + A001221 (A113158 (n + 1)).toNat

end

end A044174.P3207645224482837106

/-! ## A044174.P5881252471920372338

`A044554(n+1)+A001222(A325088(n+1))`
-/

namespace A044174.P5881252471920372338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044554 (n + 1) + A001222 (A325088 (n + 1)).toNat

end

end A044174.P5881252471920372338

/-! ## A044174.P13408936074762707324

`A044554(n+1)+A001222(A325089(n+1))`
-/

namespace A044174.P13408936074762707324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044554 (n + 1) + A001222 (A325089 (n + 1)).toNat

end

end A044174.P13408936074762707324

/-!
# A044175: Numbers n such that string 5,2 occurs in the base 7 representation of n but not of n-1.

The programs for A044175, there is no canonical definition to state claims against.
-/

/-! ## A044175.P18159417065073558885

`A044555(n+1)+A001222(A347259(n))`
-/

namespace A044175.P18159417065073558885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044555 (n + 1) + A001222 (A347259 n).toNat

end

end A044175.P18159417065073558885

/-! ## A044175.P11094683478215498875

`A325640(A160370(n+4))+A044555(n+1)`
-/

namespace A044175.P11094683478215498875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325640 (A160370 (n + 4)).toNat + A044555 (n + 1)

end

end A044175.P11094683478215498875

/-! ## A044175.P11456613145746799805

`A044555(n+1)+A001221(A113158(n+1))`
-/

namespace A044175.P11456613145746799805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044555 (n + 1) + A001221 (A113158 (n + 1)).toNat

end

end A044175.P11456613145746799805

/-! ## A044175.P11277204547306777831

`A047110(A185284(n))+A044555(n+1)`
-/

namespace A044175.P11277204547306777831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047110 (A185284 n).toNat + A044555 (n + 1)

end

end A044175.P11277204547306777831

/-! ## A044175.P2209145437269087063

`A257646(A044555(n+1))`
-/

namespace A044175.P2209145437269087063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257646 (A044555 (n + 1)).toNat

end

end A044175.P2209145437269087063

/-!
# A044176: Numbers k such that string 5,3 occurs in the base 7 representation of k but not of k-1.

The programs for A044176, there is no canonical definition to state claims against.
-/

/-! ## A044176.P13238050473135704159

`A044556(n+1)+A000035(A052333(n+1))`
-/

namespace A044176.P13238050473135704159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044556 (n + 1) + A000035 (A052333 (n + 1)).toNat

end

end A044176.P13238050473135704159

/-! ## A044176.P1713740822676887996

`A044556(n+1)+A000035(A145047(n+1))`
-/

namespace A044176.P1713740822676887996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044556 (n + 1) + A000035 (A145047 (n + 1)).toNat

end

end A044176.P1713740822676887996

/-! ## A044176.P17053727172462749821

`A044556(n+1)+A001221(A145048(n+1))`
-/

namespace A044176.P17053727172462749821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044556 (n + 1) + A001221 (A145048 (n + 1)).toNat

end

end A044176.P17053727172462749821

/-! ## A044176.P13418365652441356056

`A044556(n+1)+A001221(A188836(n+1))`
-/

namespace A044176.P13418365652441356056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044556 (n + 1) + A001221 (A188836 (n + 1)).toNat

end

end A044176.P13418365652441356056

/-! ## A044176.P1221510691707346815

`A252744(A007438(3*n+5))+A044556(n+1)`
-/

namespace A044176.P1221510691707346815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252744 (A007438 (3 * n + 5)).toNat + A044556 (n + 1)

end

end A044176.P1221510691707346815

/-!
# A044177: Numbers k such that string 5,4 occurs in the base 7 representation of k but not of k-1.

The programs for A044177, there is no canonical definition to state claims against.
-/

/-! ## A044177.P8624096212631249666

`A044557(n+1)+A000108(A151622(n))`
-/

namespace A044177.P8624096212631249666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044557 (n + 1) + A000108 (A151622 n).toNat

end

end A044177.P8624096212631249666

/-! ## A044177.P14209999054901592030

`A044557(n+1)+A001222(A180441(n+1))`
-/

namespace A044177.P14209999054901592030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044557 (n + 1) + A001222 (A180441 (n + 1)).toNat

end

end A044177.P14209999054901592030

/-! ## A044177.P15449420515886180738

`A044557(n+1)+A001222(A325085(n+1))`
-/

namespace A044177.P15449420515886180738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044557 (n + 1) + A001222 (A325085 (n + 1)).toNat

end

end A044177.P15449420515886180738

/-! ## A044177.P9915755971724600304

`A044557(n+1)+A001222(A325086(n+1))`
-/

namespace A044177.P9915755971724600304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044557 (n + 1) + A001222 (A325086 (n + 1)).toNat

end

end A044177.P9915755971724600304

/-! ## A044177.P17661084041015435963

`A290105(A290740(2*n))+A044557(n+1)`
-/

namespace A044177.P17661084041015435963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290105 (A290740 (2 * n)).toNat + A044557 (n + 1)

end

end A044177.P17661084041015435963

/-!
# A044178: Numbers n such that string 5,5 occurs in the base 7 representation of n but not of n-1.

The programs for A044178, there is no canonical definition to state claims against.
-/

/-! ## A044178.P8051572168969523429

`A044560(n+1)-A014963(A147208(n+1))`
-/

namespace A044178.P8051572168969523429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044560 (n + 1) - A014963 (A147208 (n + 1)).toNat

end

end A044178.P8051572168969523429

/-! ## A044178.P14407249539348691547

`A044559(n+1)-A325801(A271455(n))`
-/

namespace A044178.P14407249539348691547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044559 (n + 1) - A325801 (A271455 n).toNat

end

end A044178.P14407249539348691547

/-! ## A044178.P9423163305684864780

`A044179(n+1)-A124734(A090597(2*n+7))`
-/

namespace A044178.P9423163305684864780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044179 (n + 1) - A124734 (A090597 (2 * n + 7)).toNat

end

end A044178.P9423163305684864780

/-!
# A044179: Numbers n such that string 5,6 occurs in the base 7 representation of n but not of n-1.

The programs for A044179, there is no canonical definition to state claims against.
-/

/-! ## A044179.P11359908715269825676

`A242411(A156284(n+1))+49*n+41`
-/

namespace A044179.P11359908715269825676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242411 (A156284 (n + 1)).toNat + (49 * n + 41 : ℤ)

end

end A044179.P11359908715269825676

/-! ## A044179.P6798808476114394879

`A136521(A134600(3*n+4))+49*n+41`
-/

namespace A044179.P6798808476114394879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136521 (A134600 (3 * n + 4)).toNat + (49 * n + 41 : ℤ)

end

end A044179.P6798808476114394879

/-! ## A044179.P17237486608758102223

`or(49*n+41, A136521(A160796(2*n+3)))`
-/

namespace A044179.P17237486608758102223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (49 * n + 41 : ℤ) (A136521 (A160796 (2 * n + 3)).toNat)

end

end A044179.P17237486608758102223

/-!
# A044180: Numbers k such that string 6,0 occurs in the base 7 representation of k but not of k-1.

The programs for A044180, there is no canonical definition to state claims against.
-/

/-! ## A044180.P2019681713387293698

`filter[A043136(n+1), A261185(#)]`
-/

namespace A044180.P2019681713387293698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A261185 (f1 j).toNat = 1) n)

end

end A044180.P2019681713387293698

/-! ## A044180.P17039636844207546918

`A327041(A020338(n+1))*A337141(n+1)`
-/

namespace A044180.P17039636844207546918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327041 (A020338 (n + 1)).toNat * A337141 (n + 1)

end

end A044180.P17039636844207546918

/-! ## A044180.P9651537512151074151

`A035026(A001990(n+2))*A337141(n+1)`
-/

namespace A044180.P9651537512151074151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035026 (A001990 (n + 2)).toNat * A337141 (n + 1)

end

end A044180.P9651537512151074151

/-!
# A044181: Numbers n such that string 6,1 occurs in the base 7 representation of n but not of n-1.

The programs for A044181, there is no canonical definition to state claims against.
-/

/-! ## A044181.P3009730117394250034

`A057427(A107235(n))+A044561(n+1)`
-/

namespace A044181.P3009730117394250034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A107235 n).toNat + A044561 (n + 1)

end

end A044181.P3009730117394250034

/-! ## A044181.P5605071587388729651

`A044561(n+1)+A001222(A095103(n+1))`
-/

namespace A044181.P5605071587388729651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044561 (n + 1) + A001222 (A095103 (n + 1)).toNat

end

end A044181.P5605071587388729651

/-!
# A044182: Numbers n such that string 6,2 occurs in the base 7 representation of n but not of n-1.

The programs for A044182, there is no canonical definition to state claims against.
-/

/-! ## A044182.P15560009831880744651

`A044562(n+1)+A007318(A112355(n+1))`
-/

namespace A044182.P15560009831880744651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044562 (n + 1) + A007318 (A112355 (n + 1)).toNat

end

end A044182.P15560009831880744651

/-! ## A044182.P9013171438898308346

`A044562(n+1)+A001222(A155030(n+1))`
-/

namespace A044182.P9013171438898308346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044562 (n + 1) + A001222 (A155030 (n + 1)).toNat

end

end A044182.P9013171438898308346

/-! ## A044182.P17069199192584829207

`A173441(A044577(3*n+4))+A044562(n+1)`
-/

namespace A044182.P17069199192584829207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173441 (A044577 (3 * n + 4)).toNat + A044562 (n + 1)

end

end A044182.P17069199192584829207

/-! ## A044182.P5828643405044628186

`A044562(n+1)+A001221(A113158(n+1))`
-/

namespace A044182.P5828643405044628186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044562 (n + 1) + A001221 (A113158 (n + 1)).toNat

end

end A044182.P5828643405044628186

/-! ## A044182.P15876798568327450067

`A257646(A044562(n+1))`
-/

namespace A044182.P15876798568327450067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257646 (A044562 (n + 1)).toNat

end

end A044182.P15876798568327450067

/-!
# A044183: Numbers k such that the string 6,3 occurs in the base 7 representation of k but not of k-1.

The programs for A044183, there is no canonical definition to state claims against.
-/

/-! ## A044183.P14225360522040838033

`A295679(∑[n])+A044563(n+1)`
-/

namespace A044183.P14225360522040838033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295679 (∑ j ∈ Finset.range (n + 1), f1 j) + A044563 (n + 1)

end

end A044183.P14225360522040838033

/-! ## A044183.P6124189207223173881

`A044563(n+1)+A000035(A016754(n))`
-/

namespace A044183.P6124189207223173881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044563 (n + 1) + A000035 (A016754 n).toNat

end

end A044183.P6124189207223173881

/-! ## A044183.P14432792411461633886

`A044563(n+1)+A001222(A179633(n+1))`
-/

namespace A044183.P14432792411461633886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044563 (n + 1) + A001222 (A179633 (n + 1)).toNat

end

end A044183.P14432792411461633886

/-!
# A044184: Numbers n such that string 6,4 occurs in the base 7 representation of n but not of n-1.

The programs for A044184, there is no canonical definition to state claims against.
-/

/-! ## A044184.P13535012473021338441

`A159623(∑[n])+A044564(n+1)`
-/

namespace A044184.P13535012473021338441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159623 (∑ j ∈ Finset.range (n + 1), f1 j) + A044564 (n + 1)

end

end A044184.P13535012473021338441

/-! ## A044184.P3734706942781694638

`A044564(n+1)+∏{e}[A155884(n), #]`
-/

namespace A044184.P3734706942781694638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155884 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044564 (n + 1) + ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A044184.P3734706942781694638

/-! ## A044184.P1104858824176216792

`A044564(n+1)+A001055(A002146(n))`
-/

namespace A044184.P1104858824176216792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044564 (n + 1) + A001055 (A002146 n).toNat

end

end A044184.P1104858824176216792

/-! ## A044184.P8979945940279383102

`A044564(n+1)+A001055(A155884(n))`
-/

namespace A044184.P8979945940279383102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044564 (n + 1) + A001055 (A155884 n).toNat

end

end A044184.P8979945940279383102

/-! ## A044184.P2401492986936418299

`A057427(A057602(n+1))+A044564(n+1)`
-/

namespace A044184.P2401492986936418299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A057602 (n + 1)).toNat + A044564 (n + 1)

end

end A044184.P2401492986936418299

/-! ## A044184.P4557196177641153546

`A044564(n+1)+A000035(A201873(n+1))`
-/

namespace A044184.P4557196177641153546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044564 (n + 1) + A000035 (A201873 (n + 1)).toNat

end

end A044184.P4557196177641153546

/-! ## A044184.P133498915325765942

`A044564(n+1)+A014963(A268396(n+1))`
-/

namespace A044184.P133498915325765942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044564 (n + 1) + A014963 (A268396 (n + 1)).toNat

end

end A044184.P133498915325765942

/-! ## A044184.P5565874006734264453

`A044564(n+1)-A057428(A189047(n+1))`
-/

namespace A044184.P5565874006734264453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044564 (n + 1) - A057428 (A189047 (n + 1)).toNat

end

end A044184.P5565874006734264453

/-! ## A044184.P8782260530752355771

`A044564(n+1)+A008683(2*A155884(n))`
-/

namespace A044184.P8782260530752355771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044564 (n + 1) + A008683 (2 * A155884 n).toNat

end

end A044184.P8782260530752355771

/-!
# A044185: Numbers n such that string 6,5 occurs in the base 7 representation of n but not of n-1.

The programs for A044185, there is no canonical definition to state claims against.
-/

/-! ## A044185.P14592651852466133759

`A057427(A025065(n))+A044565(n+1)`
-/

namespace A044185.P14592651852466133759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A025065 n).toNat + A044565 (n + 1)

end

end A044185.P14592651852466133759

/-! ## A044185.P10134881394566181096

`A044565(n+1)+A010052(A005187(n)²)`
-/

namespace A044185.P10134881394566181096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044565 (n + 1) + A010052 (A005187 n ^ 2).toNat

end

end A044185.P10134881394566181096

/-! ## A044185.P2870520273161925251

`A044565(n+1)+A010052(A250261(n)²)`
-/

namespace A044185.P2870520273161925251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044565 (n + 1) + A010052 (A250261 n ^ 2).toNat

end

end A044185.P2870520273161925251

/-! ## A044185.P9553942293693804694

`A044565(n+1)-A057428(A250261(n)²)`
-/

namespace A044185.P9553942293693804694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044565 (n + 1) - A057428 (A250261 n ^ 2).toNat

end

end A044185.P9553942293693804694

/-! ## A044185.P14361976336921291008

`A044565(n+1)+A001222(A229609(n+1))`
-/

namespace A044185.P14361976336921291008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044565 (n + 1) + A001222 (A229609 (n + 1)).toNat

end

end A044185.P14361976336921291008

/-! ## A044185.P8797624801700995348

`A044565(n+1)+A001222(A229610(n+1))`
-/

namespace A044185.P8797624801700995348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044565 (n + 1) + A001222 (A229610 (n + 1)).toNat

end

end A044185.P8797624801700995348

/-! ## A044185.P4265723755011538742

`A044565(n+1)+A001222(A125772(n+2))`
-/

namespace A044185.P4265723755011538742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044565 (n + 1) + A001222 (A125772 (n + 2)).toNat

end

end A044185.P4265723755011538742

/-! ## A044185.P16563204030202439501

`A044565(n+1)+A007318(Δ[A330117(n+12)])`
-/

namespace A044185.P16563204030202439501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330117 (n + 12)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044565 (n + 1) + A007318 (f1 (n + 1) - f1 n).toNat

end

end A044185.P16563204030202439501

/-! ## A044185.P5510102978433023345

`A159623(∑[n])+A044565(n+1)`
-/

namespace A044185.P5510102978433023345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159623 (∑ j ∈ Finset.range (n + 1), f1 j) + A044565 (n + 1)

end

end A044185.P5510102978433023345

/-!
# A044186: Numbers k such that string 6,6 occurs in the base 7 representation of k but not of k-1.

The programs for A044186, there is no canonical definition to state claims against.
-/

/-! ## A044186.P4758658947404471623

`A158066(n+1)-A343785(A268354((n+1)²)²)-A268354(n+1)`
-/

namespace A044186.P4758658947404471623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) - A343785 (A268354 ((n + 1) ^ 2) ^ 2).toNat - A268354 (n + 1)

end

end A044186.P4758658947404471623

/-! ## A044186.P16288185695215288128

`49*(n+1)-A034947(A000203(n+1)²)+1-A268354(n+1)`
-/

namespace A044186.P16288185695215288128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (49 * (n + 1) : ℤ) - A034947 (A000203 (n + 1) ^ 2).toNat + 1 - A268354 (n + 1)

end

end A044186.P16288185695215288128

/-! ## A044186.P12831367288203290719

`49*(n+1)-A071035(A000203(n+1)²)+1-A268354(n+1)`
-/

namespace A044186.P12831367288203290719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (49 * (n + 1) : ℤ) - A071035 (A000203 (n + 1) ^ 2).toNat + 1 - A268354 (n + 1)

end

end A044186.P12831367288203290719

/-! ## A044186.P8695281671780334129

`A008683(A002645(n+1))+7*7*(n+1)+1-A268354(n+1)`
-/

namespace A044186.P8695281671780334129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A002645 (n + 1)).toNat + (7 * (7 * (n + 1)) : ℤ) + 1 - A268354 (n + 1)

end

end A044186.P8695281671780334129

/-!
# A044187: Numbers n such that string 0,0 occurs in the base 8 representation of n but not of n-1.

The programs for A044187, there is no canonical definition to state claims against.
-/

/-! ## A044187.P3929179028612539982

`∩[A042948(n), A044569(n+1)-1]`
-/

namespace A044187.P3929179028612539982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044569 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044187.P3929179028612539982

/-! ## A044187.P6020769466782945808

`∩[A044188(n+1)-1, A058992(n+2)]`
-/

namespace A044187.P6020769466782945808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044188 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058992 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044187.P6020769466782945808

/-! ## A044187.P6565302326270269248

`record[A322016(A044569(n+1))]`
-/

namespace A044187.P6565302326270269248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322016 (A044569 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044187.P6565302326270269248

/-! ## A044187.P6016107099975230614

`record[A322016(or(A044188(n+1)-1, A044188(n+1)))]`
-/

namespace A044187.P6016107099975230614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322016 (Int.lor (A044188 (n + 1) - 1) (A044188 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044187.P6016107099975230614

/-! ## A044187.P7960595215491517477

`A022144(A022144(C(n, 64)²+n+1))`
-/

namespace A044187.P7960595215491517477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (A022144 (Nat.choose n 64 ^ 2 + (n + 1))).toNat

end

end A044187.P7960595215491517477

/-!
# A044188: Numbers n such that string 0,1 occurs in the base 8 representation of n but not of n-1.

The programs for A044188, there is no canonical definition to state claims against.
-/

/-! ## A044188.P10185269564552403868

`A241816(A044569(n+1)+1)`
-/

namespace A044188.P10185269564552403868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241816 (A044569 (n + 1) + 1).toNat

end

end A044188.P10185269564552403868

/-! ## A044188.P7371318641694661735

`A241816(A044189(n+1))%A173084(A024323(2*n+3))`
-/

namespace A044188.P7371318641694661735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241816 (A044189 (n + 1)).toNat) (A173084 (A024323 (2 * n + 3)).toNat)

end

end A044188.P7371318641694661735

/-! ## A044188.P1064709922035384051

`or(A000007(A000982(2*n)), A241816(A044189(n+1)))`
-/

namespace A044188.P1064709922035384051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 (A000982 (2 * n)).toNat) (A241816 (A044189 (n + 1)).toNat)

end

end A044188.P1064709922035384051

/-! ## A044188.P1207979585817689433

`A241816(A044189(n+1))+A000007(A210188(n+1))`
-/

namespace A044188.P1207979585817689433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241816 (A044189 (n + 1)).toNat + A000007 (A210188 (n + 1)).toNat

end

end A044188.P1207979585817689433

/-! ## A044188.P2360365638139240869

`A241816(A044189(n+1))+A014306(A000292(n+3))`
-/

namespace A044188.P2360365638139240869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241816 (A044189 (n + 1)).toNat + A014306 (A000292 (n + 3)).toNat

end

end A044188.P2360365638139240869

/-! ## A044188.P7695936854731520302

`A241816(A044189(n+1))%A023296(A087416(n+1))`
-/

namespace A044188.P7695936854731520302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241816 (A044189 (n + 1)).toNat) (A023296 (A087416 (n + 1)).toNat)

end

end A044188.P7695936854731520302

/-! ## A044188.P11020388020929096564

`or(A000007(A089862(n+1)), A241816(A044189(n+1)))`
-/

namespace A044188.P11020388020929096564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 (A089862 (n + 1)).toNat) (A241816 (A044189 (n + 1)).toNat)

end

end A044188.P11020388020929096564

/-! ## A044188.P5333807212968013659

`A241816(A044189(n+1))+A000007(A117846(n+1))`
-/

namespace A044188.P5333807212968013659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241816 (A044189 (n + 1)).toNat + A000007 (A117846 (n + 1)).toNat

end

end A044188.P5333807212968013659

/-! ## A044188.P10671530652988880576

`or(A000007(A086427(n+2)), A241816(A044189(n+1)))`
-/

namespace A044188.P10671530652988880576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 (A086427 (n + 2)).toNat) (A241816 (A044189 (n + 1)).toNat)

end

end A044188.P10671530652988880576

/-!
# A044189: Numbers n such that string 0,2 occurs in the base 8 representation of n but not of n-1.

The programs for A044189, there is no canonical definition to state claims against.
-/

/-! ## A044189.P11526198363992786783

`and(A044570(n+1)+1, A044570(n+1))`
-/

namespace A044189.P11526198363992786783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A044570 (n + 1) + 1) (A044570 (n + 1))

end

end A044189.P11526198363992786783

/-! ## A044189.P5680779447933307793

`and(A044570(n+1), A322015(A044570(n+1)))`
-/

namespace A044189.P5680779447933307793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A044570 (n + 1)) (A322015 (A044570 (n + 1)).toNat)

end

end A044189.P5680779447933307793

/-! ## A044189.P11567753459124199296

`A129760(A044570(n+1)+1)`
-/

namespace A044189.P11567753459124199296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (A044570 (n + 1) + 1).toNat

end

end A044189.P11567753459124199296

/-! ## A044189.P8849075034718174429

`A056926(A061793(n))+A044569(n+1)`
-/

namespace A044189.P8849075034718174429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A061793 n).toNat + A044569 (n + 1)

end

end A044189.P8849075034718174429

/-! ## A044189.P17713896501796885764

`A044569(n+1)+A040001(A273538(n))`
-/

namespace A044189.P17713896501796885764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044569 (n + 1) + A040001 (A273538 n).toNat

end

end A044189.P17713896501796885764

/-! ## A044189.P1816056953758789746

`A057427(A070045(n+1))+A044569(n+1)`
-/

namespace A044189.P1816056953758789746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A070045 (n + 1)).toNat + A044569 (n + 1)

end

end A044189.P1816056953758789746

/-! ## A044189.P16446428995821675791

`A044569(n+1)+A001222(A088524(n+3))`
-/

namespace A044189.P16446428995821675791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044569 (n + 1) + A001222 (A088524 (n + 3)).toNat

end

end A044189.P16446428995821675791

/-!
# A044190: Numbers n such that string 0,3 occurs in the base 8 representation of n but not of n-1.

The programs for A044190, there is no canonical definition to state claims against.
-/

/-! ## A044190.P2933762759579617303

`A044570(floor(acot(A229238(n+1))+n)+1)+1`
-/

namespace A044190.P2933762759579617303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044570 (⌊SequenceMachineLib.acot (A229238 (n + 1) : ℝ) + (n : ℝ)⌋ + 1).toNat + 1

end

end A044190.P2933762759579617303

/-! ## A044190.P9092406272721025833

`A044570(n+1)+A010231(A307855(n))`
-/

namespace A044190.P9092406272721025833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044570 (n + 1) + A010231 (A307855 n).toNat

end

end A044190.P9092406272721025833

/-! ## A044190.P15210475777646677243

`A227349(A220495(n))+A044570(n+1)`
-/

namespace A044190.P15210475777646677243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227349 (A220495 n).toNat + A044570 (n + 1)

end

end A044190.P15210475777646677243

/-! ## A044190.P12890323080651933381

`A044570(n+1)+A003557(A139919(n+1))`
-/

namespace A044190.P12890323080651933381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044570 (n + 1) + A003557 (A139919 (n + 1)).toNat

end

end A044190.P12890323080651933381

/-! ## A044190.P15457954441052027396

`A054977(A093697(n+1))+A044570(n+1)`
-/

namespace A044190.P15457954441052027396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A093697 (n + 1)).toNat + A044570 (n + 1)

end

end A044190.P15457954441052027396

/-! ## A044190.P9851909113609076385

`A044570(n+1)-A057428(A194593(n+1))`
-/

namespace A044190.P9851909113609076385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044570 (n + 1) - A057428 (A194593 (n + 1)).toNat

end

end A044190.P9851909113609076385

/-!
# A044191: Numbers n such that string 0,4 occurs in the base 8 representation of n but not of n-1.

The programs for A044191, there is no canonical definition to state claims against.
-/

/-! ## A044191.P9322933358729109302

`and(A044572(n+1)+1, A044572(n+1))`
-/

namespace A044191.P9322933358729109302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A044572 (n + 1) + 1) (A044572 (n + 1))

end

end A044191.P9322933358729109302

/-! ## A044191.P12092240858537266773

`and(A044572(n+1), A092486(A044572(n+1)))`
-/

namespace A044191.P12092240858537266773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A044572 (n + 1)) (A092486 (A044572 (n + 1)).toNat)

end

end A044191.P12092240858537266773

/-! ## A044191.P11566989463171583287

`A129760(A044572(n+1)+1)`
-/

namespace A044191.P11566989463171583287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (A044572 (n + 1) + 1).toNat

end

end A044191.P11566989463171583287

/-! ## A044191.P1242103681589229058

`A352729(A044572(n+1))`
-/

namespace A044191.P1242103681589229058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352729 (A044572 (n + 1)).toNat

end

end A044191.P1242103681589229058

/-! ## A044191.P14003240700914978746

`and(A044573(n+1)+A040001(A140001(n+1)), -20)`
-/

namespace A044191.P14003240700914978746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A044573 (n + 1) + A040001 (A140001 (n + 1)).toNat) (-20)

end

end A044191.P14003240700914978746

/-! ## A044191.P13141361450858844293

`and(A057427(A260300(n+1))+A044573(n+1), -20)`
-/

namespace A044191.P13141361450858844293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057427 (A260300 (n + 1)).toNat + A044573 (n + 1)) (-20)

end

end A044191.P13141361450858844293

/-! ## A044191.P14006078854323235955

`A044571(n+1)+A000688(A073489(n+1))`
-/

namespace A044191.P14006078854323235955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044571 (n + 1) + A000688 (A073489 (n + 1)).toNat

end

end A044191.P14006078854323235955

/-! ## A044191.P9843894770724650059

`A044571(n+1)+A001222(A181562(n+1))`
-/

namespace A044191.P9843894770724650059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044571 (n + 1) + A001222 (A181562 (n + 1)).toNat

end

end A044191.P9843894770724650059

/-!
# A044192: Numbers n such that string 0,5 occurs in the base 8 representation of n but not of n-1.

The programs for A044192, there is no canonical definition to state claims against.
-/

/-! ## A044192.P2518453739048866503

`A241816(A044573(n+1)+1)`
-/

namespace A044192.P2518453739048866503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241816 (A044573 (n + 1) + 1).toNat

end

end A044192.P2518453739048866503

/-! ## A044192.P12571559342940787145

`(A044572(n+1)+1)%A260705(n+1)`
-/

namespace A044192.P12571559342940787145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044572 (n + 1) + 1) (A260705 (n + 1))

end

end A044192.P12571559342940787145

/-! ## A044192.P6945046319006460428

`A044572(n+1)+A014722(A225633(n))`
-/

namespace A044192.P6945046319006460428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044572 (n + 1) + A014722 (A225633 n).toNat

end

end A044192.P6945046319006460428

/-! ## A044192.P15151551580636203577

`A044572(n+1)+A014722(A225644(n))`
-/

namespace A044192.P15151551580636203577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044572 (n + 1) + A014722 (A225644 n).toNat

end

end A044192.P15151551580636203577

/-! ## A044192.P4670092328595068512

`A063994(A278241(n))+A044572(n+1)`
-/

namespace A044192.P4670092328595068512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063994 (A278241 n).toNat + A044572 (n + 1)

end

end A044192.P4670092328595068512

/-! ## A044192.P3042907468098769659

`A291168(A101290(n))+A044572(n+1)`
-/

namespace A044192.P3042907468098769659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291168 (A101290 n).toNat + A044572 (n + 1)

end

end A044192.P3042907468098769659

/-! ## A044192.P1334812644614216594

`A337335(A284554(n))+A044572(n+1)`
-/

namespace A044192.P1334812644614216594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337335 (A284554 n).toNat + A044572 (n + 1)

end

end A044192.P1334812644614216594

/-! ## A044192.P3664664994640578263

`A020725(lcm(A044572(n+1), A132708(n)))`
-/

namespace A044192.P3664664994640578263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (Int.lcm (A044572 (n + 1)) (A132708 n))

end

end A044192.P3664664994640578263

/-! ## A044192.P2905164467814653234

`A044572(n+1)+A001222(A104822(n+1))`
-/

namespace A044192.P2905164467814653234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044572 (n + 1) + A001222 (A104822 (n + 1)).toNat

end

end A044192.P2905164467814653234

/-!
# A044193: Numbers n such that string 0,6 occurs in the base 8 representation of n but not of n-1.

The programs for A044193, there is no canonical definition to state claims against.
-/

/-! ## A044193.P4384219522804111134

`and(A044574(n+1)+1, A044574(n+1))`
-/

namespace A044193.P4384219522804111134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A044574 (n + 1) + 1) (A044574 (n + 1))

end

end A044193.P4384219522804111134

/-! ## A044193.P1067878703198791050

`A044574(n+1)-A135481(A044574(n+1))`
-/

namespace A044193.P1067878703198791050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044574 (n + 1) - A135481 (A044574 (n + 1)).toNat

end

end A044193.P1067878703198791050

/-! ## A044193.P6189870408063893720

`A129760(A044574(n+1)+1)`
-/

namespace A044193.P6189870408063893720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (A044574 (n + 1) + 1).toNat

end

end A044193.P6189870408063893720

/-! ## A044193.P2179724871982534783

`A044574(n+1)+1-A006519(A044574(n+1)+1)`
-/

namespace A044193.P2179724871982534783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044574 (n + 1) + 1 - A006519 (A044574 (n + 1) + 1).toNat

end

end A044193.P2179724871982534783

/-! ## A044193.P13964890919693087733

`A057427(A035312(n))+A044573(n+1)`
-/

namespace A044193.P13964890919693087733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A035312 n).toNat + A044573 (n + 1)

end

end A044193.P13964890919693087733

/-! ## A044193.P9990381196490592366

`A044573(n+1)+A040001(A140001(n+1))`
-/

namespace A044193.P9990381196490592366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044573 (n + 1) + A040001 (A140001 (n + 1)).toNat

end

end A044193.P9990381196490592366

/-! ## A044193.P17710747612415665973

`A057427(A260300(n+1))+A044573(n+1)`
-/

namespace A044193.P17710747612415665973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A260300 (n + 1)).toNat + A044573 (n + 1)

end

end A044193.P17710747612415665973

/-! ## A044193.P1936747927320868418

`A044573(n+1)-A008836(A268629(n+1))`
-/

namespace A044193.P1936747927320868418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044573 (n + 1) - A008836 (A268629 (n + 1)).toNat

end

end A044193.P1936747927320868418

/-!
# A044194: Numbers n such that string 0,7 occurs in the base 8 representation of n but not of n-1.

The programs for A044194, there is no canonical definition to state claims against.
-/

/-! ## A044194.P5895380112333692753

`A057427(A291168(n))+A044574(n+1)`
-/

namespace A044194.P5895380112333692753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A291168 n).toNat + A044574 (n + 1)

end

end A044194.P5895380112333692753

/-! ## A044194.P3429552798857652870

`A044574(n+1)+A008836(A056057(n+1))`
-/

namespace A044194.P3429552798857652870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044574 (n + 1) + A008836 (A056057 (n + 1)).toNat

end

end A044194.P3429552798857652870

/-! ## A044194.P9157063152733655908

`A044574(n+1)+A000035(A139847(n+1))`
-/

namespace A044194.P9157063152733655908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044574 (n + 1) + A000035 (A139847 (n + 1)).toNat

end

end A044194.P9157063152733655908

/-! ## A044194.P14425390640791407395

`A044574(n+1)+A000035(A139969(n+1))`
-/

namespace A044194.P14425390640791407395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044574 (n + 1) + A000035 (A139969 (n + 1)).toNat

end

end A044194.P14425390640791407395

/-! ## A044194.P12825843798092682142

`A044574(n+1)+A000035(A140633(n+1))`
-/

namespace A044194.P12825843798092682142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044574 (n + 1) + A000035 (A140633 (n + 1)).toNat

end

end A044194.P12825843798092682142

/-! ## A044194.P5897776301861952420

`A044574(n+1)+A007318(A244846(n+1))`
-/

namespace A044194.P5897776301861952420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044574 (n + 1) + A007318 (A244846 (n + 1)).toNat

end

end A044194.P5897776301861952420

/-! ## A044194.P1007331603794915684

`A121262(A271915(n+1))+A044574(n+1)`
-/

namespace A044194.P1007331603794915684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A271915 (n + 1)).toNat + A044574 (n + 1)

end

end A044194.P1007331603794915684

/-! ## A044194.P9813121844739423259

`A044574(n+1)+A001222(A340817(n+2))`
-/

namespace A044194.P9813121844739423259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044574 (n + 1) + A001222 (A340817 (n + 2)).toNat

end

end A044194.P9813121844739423259

/-! ## A044194.P16975395470347744268

`A044574(n+1)+∑{d}[A340817(n+2), #-A000010(#)]`
-/

namespace A044194.P16975395470347744268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340817 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044574 (n + 1) + ∑ d ∈ Nat.divisors (f1 n).natAbs, ((d : ℤ) - A000010 d)

end

end A044194.P16975395470347744268

/-! ## A044194.P3805113464977426041

`A057427(A090501(n+1))+A044574(n+1)`
-/

namespace A044194.P3805113464977426041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A090501 (n + 1)).toNat + A044574 (n + 1)

end

end A044194.P3805113464977426041

/-!
# A044195: Numbers n such that string 1,0 occurs in the base 8 representation of n but not of n-1.

The programs for A044195, there is no canonical definition to state claims against.
-/

/-! ## A044195.P18106418840275873765

`filter[A043152(n+1), A121262(#)]`
-/

namespace A044195.P18106418840275873765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043152 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A044195.P18106418840275873765

/-! ## A044195.P10084570200641460270

`filter[A043152(n+1), A354097(#)]`
-/

namespace A044195.P10084570200641460270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043152 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354097 (f1 j).toNat = 1) n)

end

end A044195.P10084570200641460270

/-! ## A044195.P1479839872341428428

`∩[2*A004014(n), A043152(n+1)]`
-/

namespace A044195.P1479839872341428428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004014 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044195.P1479839872341428428

/-! ## A044195.P9697660772967387683

`∩[2*A118286(n+1), A043152(n+1)]`
-/

namespace A044195.P9697660772967387683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A118286 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044195.P9697660772967387683

/-! ## A044195.P16708077188512691767

`∩[2*A157932(n+1), A043152(n+1)]`
-/

namespace A044195.P16708077188512691767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A157932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044195.P16708077188512691767

/-! ## A044195.P17390522846702673748

`∩[2*A162648(n+1), A043152(n+1)]`
-/

namespace A044195.P17390522846702673748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A162648 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044195.P17390522846702673748

/-! ## A044195.P3061418543395870442

`∩[A043152(n+1), A248502(n+1)]`
-/

namespace A044195.P3061418543395870442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248502 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044195.P3061418543395870442

/-! ## A044195.P17604437380271762181

`∩[A034045(n+1), A043152(n+1)]`
-/

namespace A044195.P17604437380271762181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044195.P17604437380271762181

/-! ## A044195.P16924514735906537613

`∩[A043152(n+1), A192544(n+1)]`
-/

namespace A044195.P16924514735906537613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044195.P16924514735906537613

/-! ## A044195.P893467430811136569

`∩[A043152(n+1), A008574(n)]`
-/

namespace A044195.P893467430811136569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044195.P893467430811136569

/-! ## A044195.P10407341300325863229

`∩[A043152(n+1), A008586(n)]`
-/

namespace A044195.P10407341300325863229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044195.P10407341300325863229

/-! ## A044195.P14154254741488942740

`∩[A043152(n+1), A265046(n)]`
-/

namespace A044195.P14154254741488942740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265046 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044195.P14154254741488942740

/-! ## A044195.P2947194380202969218

`∩[A043152(n+1), A337120(n)]`
-/

namespace A044195.P2947194380202969218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337120 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044195.P2947194380202969218

/-! ## A044195.P8389333525000160845

`∩[A043152(n+1), A047451(n+1)]`
-/

namespace A044195.P8389333525000160845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047451 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044195.P8389333525000160845

/-! ## A044195.P7806023043239413065

`∩[A043152(n+1), A047467(n+1)]`
-/

namespace A044195.P7806023043239413065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044195.P7806023043239413065

/-! ## A044195.P14035826427641080842

`∩[A043152(n+1), A047470(n+1)]`
-/

namespace A044195.P14035826427641080842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047470 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044195.P14035826427641080842

/-! ## A044195.P752709680407943532

`∩[A043152(n+1), A047521(n+1)]`
-/

namespace A044195.P752709680407943532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047521 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044195.P752709680407943532

/-! ## A044195.P1835765009242819350

`∩[A043152(n+1), A047615(n+1)]`
-/

namespace A044195.P1835765009242819350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044195.P1835765009242819350

/-! ## A044195.P7436949658469486051

`∩[A043152(n+1), A354098(n+1)]`
-/

namespace A044195.P7436949658469486051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044195.P7436949658469486051

/-! ## A044195.P15106456716725884145

`∩[A043152(n+1), A104235(n+1)]`
-/

namespace A044195.P15106456716725884145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104235 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044195.P15106456716725884145

/-!
# A044196: Numbers n such that string 1,1 occurs in the base 8 representation of n but not of n-1.

The programs for A044196, there is no canonical definition to state claims against.
-/

/-! ## A044196.P7154952262513271064

`record[A044214(n+1)/A228613(n)]`
-/

namespace A044196.P7154952262513271064
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A044214 (n + 1) : ℚ) / (A228613 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044196.P7154952262513271064

/-!
# A044197: Numbers n such that string 1,2 occurs in the base 8 representation of n but not of n-1.

The programs for A044197, there is no canonical definition to state claims against.
-/

/-! ## A044197.P12831949976508585489

`and(A044578(n+1)+1, A044578(n+1))`
-/

namespace A044197.P12831949976508585489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A044578 (n + 1) + 1) (A044578 (n + 1))

end

end A044197.P12831949976508585489

/-! ## A044197.P11883360259257341155

`A129760(A044578(n+1)+1)`
-/

namespace A044197.P11883360259257341155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (A044578 (n + 1) + 1).toNat

end

end A044197.P11883360259257341155

/-! ## A044197.P10199493688926984959

`record[A135997(A044217(n+1))]`
-/

namespace A044197.P10199493688926984959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (A044217 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044197.P10199493688926984959

/-! ## A044197.P17401861508067563616

`A028903(A044344(n+1)^A337006(n+1))`
-/

namespace A044197.P17401861508067563616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028903 (SequenceMachineLib.roundAway ((A044344 (n + 1) : ℚ) ^ (A337006 (n + 1) : ℤ))).toNat

end

end A044197.P17401861508067563616

/-!
# A044198: Numbers n such that string 1,3 occurs in the base 8 representation of n but not of n-1.

The programs for A044198, there is no canonical definition to state claims against.
-/

/-! ## A044198.P5807526782773072751

`record[A135997(A044220(n+1))]`
-/

namespace A044198.P5807526782773072751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (A044220 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044198.P5807526782773072751

/-! ## A044198.P9123568675167711681

`A144470(C(n, 2))+A044578(n+1)`
-/

namespace A044198.P9123568675167711681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144470 (Nat.choose n 2) + A044578 (n + 1)

end

end A044198.P9123568675167711681

/-! ## A044198.P975073372293784196

`A044578(n+1)+A282230(n+1)!`
-/

namespace A044198.P975073372293784196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044578 (n + 1) + (Nat.factorial (A282230 (n + 1)).toNat : ℤ)

end

end A044198.P975073372293784196

/-! ## A044198.P17682027743426440435

`(A044578(n+1)+1)%A180416(n+5)`
-/

namespace A044198.P17682027743426440435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044578 (n + 1) + 1) (A180416 (n + 5))

end

end A044198.P17682027743426440435

/-! ## A044198.P6633878738862270401

`ceil(A044578(n+1)+acot(A105657(n+1)))`
-/

namespace A044198.P6633878738862270401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A044578 (n + 1) : ℝ) + SequenceMachineLib.acot (A105657 (n + 1) : ℝ)⌉

end

end A044198.P6633878738862270401

/-!
# A044199: Numbers n such that string 1,4 occurs in the base 8 representation of n but not of n-1.

The programs for A044199, there is no canonical definition to state claims against.
-/

/-! ## A044199.P899552992612309675

`and(A044580(n+1)+1, A044580(n+1))`
-/

namespace A044199.P899552992612309675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A044580 (n + 1) + 1) (A044580 (n + 1))

end

end A044199.P899552992612309675

/-! ## A044199.P897713960725170949

`A044580(n+1)-A135534(A044580(n+1)+1)`
-/

namespace A044199.P897713960725170949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044580 (n + 1) - A135534 (A044580 (n + 1) + 1).toNat

end

end A044199.P897713960725170949

/-! ## A044199.P8072672868526209196

`A129760(A044580(n+1)+1)`
-/

namespace A044199.P8072672868526209196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (A044580 (n + 1) + 1).toNat

end

end A044199.P8072672868526209196

/-! ## A044199.P14712542124963115369

`A044580(n+1)+1-A006519(A044580(n+1)+1)`
-/

namespace A044199.P14712542124963115369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044580 (n + 1) + 1 - A006519 (A044580 (n + 1) + 1).toNat

end

end A044199.P14712542124963115369

/-! ## A044199.P15176400273006104292

`A352729(A044580(n+1))`
-/

namespace A044199.P15176400273006104292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352729 (A044580 (n + 1)).toNat

end

end A044199.P15176400273006104292

