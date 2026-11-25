import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C036
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C001
import Seq.B007.C001
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
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C023
import Seq.Opaque.C024

/-!
# A044100: Numbers k such that string 4,3 occurs in the base 5 representation of k but not of k-1.

The programs for A044100, there is no canonical definition to state claims against.
-/

/-! ## A044100.P11415444329469522307

`1+A044480(n+1)`
-/

namespace A044100.P11415444329469522307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A044480 (n + 1)

end

end A044100.P11415444329469522307

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

/-! ## A044101.P14729353353778987936

`A008706(A008706(n+1))-A060904(A187829(n+1))`
-/

namespace A044101.P14729353353778987936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (A008706 (n + 1)).toNat - A060904 (A187829 (n + 1)).toNat

end

end A044101.P14729353353778987936

/-!
# A044102: Multiples of 36.

The programs for A044102, the canonical program `A044102.P13317920450440868156` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A044102 has offset 0).

The definition of A044102 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A044102.anchor (n : ℕ) : A044102 n = 36 * n` in `Proof.A044.A044102`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A044102.P13317920450440868156

`36*n`

The canonical program, it is in `Seq.B000.C008`.
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

/-! ## A044103.P2653051486915034722

`A044105(n+1)-1-A044484(n+1)%18`
-/

namespace A044103.P2653051486915034722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044105 (n + 1) - 1 - Int.tmod (A044484 (n + 1)) 18

end

end A044103.P2653051486915034722

/-! ## A044103.P14419882615878288642

`A044486(n+1)-(A044105(n+1)-1)%18`
-/

namespace A044103.P14419882615878288642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044486 (n + 1) - Int.tmod (A044105 (n + 1) - 1) 18

end

end A044103.P14419882615878288642

/-! ## A044103.P14134141481720469042

`A044106(n+1)+A044104(n+1)-1-A044487(n+1)`
-/

namespace A044103.P14134141481720469042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044106 (n + 1) + (A044104 (n + 1) - 1) - A044487 (n + 1)

end

end A044103.P14134141481720469042

/-! ## A044103.P8381175549584966485

`A044106(n+1)+A044105(n+1)-1-A044488(n+1)`
-/

namespace A044103.P8381175549584966485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044106 (n + 1) + (A044105 (n + 1) - 1) - A044488 (n + 1)

end

end A044103.P8381175549584966485

/-! ## A044103.P13020341326791017089

`A164020(A044484(n+1))+A044106(n+1)-A044107(n+1)`
-/

namespace A044103.P13020341326791017089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164020 (A044484 (n + 1)).toNat + A044106 (n + 1) - A044107 (n + 1)

end

end A044103.P13020341326791017089

/-!
# A044104: Numbers k such that string 0,2 occurs in the base 6 representation of k but not of k-1.

The programs for A044104, there is no canonical definition to state claims against.
-/

/-! ## A044104.P6160042219437986401

`A044105(n+1)+1+A044485(n+1)-A044106(n+1)`
-/

namespace A044104.P6160042219437986401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044105 (n + 1) + (1 + A044485 (n + 1)) - A044106 (n + 1)

end

end A044104.P6160042219437986401

/-! ## A044104.P17561058081368362363

`A044106(n+1)+1+A044485(n+1)-A044107(n+1)`
-/

namespace A044104.P17561058081368362363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044106 (n + 1) + (1 + A044485 (n + 1)) - A044107 (n + 1)

end

end A044104.P17561058081368362363

/-! ## A044104.P11571588524847424951

`A044485(n+1)+1+A044485(n+1)-A044486(n+1)`
-/

namespace A044104.P11571588524847424951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044485 (n + 1) + (1 + A044485 (n + 1)) - A044486 (n + 1)

end

end A044104.P11571588524847424951

/-! ## A044104.P9040986011054213849

`(A044486(n+1)+1+A044485(n+1))%A044487(n+1)`
-/

namespace A044104.P9040986011054213849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044486 (n + 1) + (1 + A044485 (n + 1))) (A044487 (n + 1))

end

end A044104.P9040986011054213849

/-! ## A044104.P3031060529589787017

`A164020(A044484(n+1))`
-/

namespace A044104.P3031060529589787017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164020 (A044484 (n + 1)).toNat

end

end A044104.P3031060529589787017

/-!
# A044105: Numbers k such that string 0,3 occurs in the base 6 representation of k but not of k-1.

The programs for A044105, there is no canonical definition to state claims against.
-/

/-! ## A044105.P10180946626954386502

`A044106(n+1)+A044486(n+1)+1-A044107(n+1)`
-/

namespace A044105.P10180946626954386502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044106 (n + 1) + (A044486 (n + 1) + 1) - A044107 (n + 1)

end

end A044105.P10180946626954386502

/-! ## A044105.P16954307269229536560

`A044486(n+1)+A044486(n+1)+1-A044487(n+1)`
-/

namespace A044105.P16954307269229536560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044486 (n + 1) + (A044486 (n + 1) + 1) - A044487 (n + 1)

end

end A044105.P16954307269229536560

/-! ## A044105.P11593920917539259244

`A044106(n+1)+A044106(n+1)-1-A044487(n+1)`
-/

namespace A044105.P11593920917539259244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044106 (n + 1) + (A044106 (n + 1) - 1) - A044487 (n + 1)

end

end A044105.P11593920917539259244

/-! ## A044105.P12259755814881360484

`A044107(n+1)+A044106(n+1)-1-A044488(n+1)`
-/

namespace A044105.P12259755814881360484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044107 (n + 1) + (A044106 (n + 1) - 1) - A044488 (n + 1)

end

end A044105.P12259755814881360484

/-! ## A044105.P9872706199024030482

`1+A044485(n+1)`
-/

namespace A044105.P9872706199024030482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A044485 (n + 1)

end

end A044105.P9872706199024030482

/-!
# A044106: Numbers k such that string 0,4 occurs in the base 6 representation of k but not of k-1.

The programs for A044106, there is no canonical definition to state claims against.
-/

/-! ## A044106.P5795778797314453992

`1+A044486(n+1)`
-/

namespace A044106.P5795778797314453992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A044486 (n + 1)

end

end A044106.P5795778797314453992

/-! ## A044106.P18199694529054414539

`A164020(A044486(n+1))`
-/

namespace A044106.P18199694529054414539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164020 (A044486 (n + 1)).toNat

end

end A044106.P18199694529054414539

/-! ## A044106.P4860162051381255053

`A113484(A044486(n+1))`
-/

namespace A044106.P4860162051381255053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (A044486 (n + 1)).toNat

end

end A044106.P4860162051381255053

/-!
# A044107: Numbers k such that string 0,5 occurs in the base 6 representation of k but not of k-1.

The programs for A044107, there is no canonical definition to state claims against.
-/

/-! ## A044107.P8638277383279815422

`1+A044487(n+1)`
-/

namespace A044107.P8638277383279815422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A044487 (n + 1)

end

end A044107.P8638277383279815422

/-! ## A044107.P613003268733354659

`A110699(A044487(n+1))`
-/

namespace A044107.P613003268733354659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110699 (A044487 (n + 1)).toNat

end

end A044107.P613003268733354659

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

/-! ## A044108.P8020822412919333006

`∩[A043116(n+1), A399801(n+1)]`
-/

namespace A044108.P8020822412919333006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044108.P8020822412919333006

/-! ## A044108.P4075300565957895909

`∩[A043116(n+1), A399866(n+1)]`
-/

namespace A044108.P4075300565957895909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399866 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044108.P4075300565957895909

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

/-! ## A044110.P717722427040476540

`A028901(A044344(n+1)^A143632(n))`
-/

namespace A044110.P717722427040476540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028901 (SequenceMachineLib.roundAway ((A044344 (n + 1) : ℚ) ^ (A143632 n : ℤ))).toNat

end

end A044110.P717722427040476540

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

/-! ## A044113.P16340384023808747640

`A044493(n+1)+1`
-/

namespace A044113.P16340384023808747640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044493 (n + 1) + 1

end

end A044113.P16340384023808747640

/-! ## A044113.P1249141709207277321

`∩[A043124(n+1), A260823(n+1)]`
-/

namespace A044113.P1249141709207277321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260823 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044113.P1249141709207277321

/-!
# A044114: Numbers n such that string 2,0 occurs in the base 6 representation of n but not of n-1.

The programs for A044114, there is no canonical definition to state claims against.
-/

/-! ## A044114.P8183983557376742080

`∩[A008458(n), A043117(n+1)]%A380661(n+4)`
-/

namespace A044114.P8183983557376742080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043117 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A380661 (n + 4))

end

end A044114.P8183983557376742080

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

/-! ## A044114.P16939791738605468785

`∩[A008458(n), A043117(n+1)]%A133961(n+1)`
-/

namespace A044114.P16939791738605468785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043117 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A133961 (n + 1))

end

end A044114.P16939791738605468785

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

/-!
# A044115: Numbers k such that string 2,1 occurs in the base 6 representation of k but not of k-1.

The programs for A044115, there is no canonical definition to state claims against.
-/

/-! ## A044115.P12176462126049945812

`A044495(n+1)+1`
-/

namespace A044115.P12176462126049945812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044495 (n + 1) + 1

end

end A044115.P12176462126049945812

/-!
# A044116: Numbers n such that string 2,2 occurs in the base 6 representation of n but not of n-1.

The programs for A044116, there is no canonical definition to state claims against.
-/

/-! ## A044116.P9587019991782133821

`A017569(3*n+1)-A074803(7*A000079(n))`
-/

namespace A044116.P9587019991782133821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017569 (3 * n + 1) - A074803 (7 * A000079 n).toNat

end

end A044116.P9587019991782133821

/-! ## A044116.P14875376659927431432

`A017569(3*n+1)-A074803(A000079(n+4))`
-/

namespace A044116.P14875376659927431432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017569 (3 * n + 1) - A074803 (A000079 (n + 4)).toNat

end

end A044116.P14875376659927431432

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

/-! ## A044118.P3661794399930626063

`A174965(∑[A043909(3*n+2)])+A044498(n+1)`
-/

namespace A044118.P3661794399930626063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043909 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174965 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A044498 (n + 1)

end

end A044118.P3661794399930626063

/-! ## A044118.P15165610719318570942

`A044498(n+1)+A001221(A002496(3*n+2))`
-/

namespace A044118.P15165610719318570942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044498 (n + 1) + A001221 (A002496 (3 * n + 2)).toNat

end

end A044118.P15165610719318570942

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

/-! ## A044120.P5318823619279105958

`A008458(A277569(n+1)^1)`
-/

namespace A044120.P5318823619279105958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A277569 (n + 1) ^ 1).toNat

end

end A044120.P5318823619279105958

/-! ## A044120.P9122364823974530019

`6*A277569(n+1)`
-/

namespace A044120.P9122364823974530019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A277569 (n + 1)

end

end A044120.P9122364823974530019

/-!
# A044121: Numbers n such that string 3,1 occurs in the base 6 representation of n but not of n-1.

The programs for A044121, there is no canonical definition to state claims against.
-/

/-! ## A044121.P8777236668718696646

`1+A044501(n+1)`
-/

namespace A044121.P8777236668718696646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A044501 (n + 1)

end

end A044121.P8777236668718696646

/-!
# A044122: Numbers n such that string 3,2 occurs in the base 6 representation of n but not of n-1.

The programs for A044122, there is no canonical definition to state claims against.
-/

/-! ## A044122.P7551579185128031268

`A044502(n+1)+1`
-/

namespace A044122.P7551579185128031268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044502 (n + 1) + 1

end

end A044122.P7551579185128031268

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

/-! ## A044123.P5304590205845349360

`A123762(A025549(n+1))+A044503(n+1)`
-/

namespace A044123.P5304590205845349360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123762 (A025549 (n + 1)).toNat + A044503 (n + 1)

end

end A044123.P5304590205845349360

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

/-! ## A044124.P8138851527354395747

`A044125(n+1)+A044505(n+1)-(A044126(n+1)-1)`
-/

namespace A044124.P8138851527354395747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044125 (n + 1) + (A044505 (n + 1) - (A044126 (n + 1) - 1))

end

end A044124.P8138851527354395747

/-! ## A044124.P8023206213478255538

`A044125(n+1)-gcd(A044125(n+1), A105416(n+1))`
-/

namespace A044124.P8023206213478255538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044125 (n + 1) - (Int.gcd (A044125 (n + 1)) (A105416 (n + 1)) : ℤ)

end

end A044124.P8023206213478255538

/-! ## A044124.P15515747314080079221

`A044506(n+1)-gcd(A044506(n+1), A146190(3*n+4))`
-/

namespace A044124.P15515747314080079221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044506 (n + 1) - (Int.gcd (A044506 (n + 1)) (A146190 (3 * n + 4)) : ℤ)

end

end A044124.P15515747314080079221

/-!
# A044125: Numbers k such that string 3,5 occurs in the base 6 representation of k but not of k-1.

The programs for A044125, there is no canonical definition to state claims against.
-/

/-! ## A044125.P9549372525579784986

`1+A044505(n+1)`
-/

namespace A044125.P9549372525579784986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A044505 (n + 1)

end

end A044125.P9549372525579784986

/-! ## A044125.P9390043239330047184

`∩[A043129(n+1), A335478(n+1)]`
-/

namespace A044125.P9390043239330047184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335478 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044125.P9390043239330047184

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

/-! ## A044126.P11452055324109413876

`∩[A008458(n+4), A043119(n+1)]%A133961(n+1)`
-/

namespace A044126.P11452055324109413876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043119 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A133961 (n + 1))

end

end A044126.P11452055324109413876

/-! ## A044126.P11096782756303455680

`∩[A008458(n), A043119(n+1)]%A093472(n)`
-/

namespace A044126.P11096782756303455680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043119 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A093472 n)

end

end A044126.P11096782756303455680

/-! ## A044126.P13315605644146646049

`A008458(A277570(n+1)^1)`
-/

namespace A044126.P13315605644146646049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A277570 (n + 1) ^ 1).toNat

end

end A044126.P13315605644146646049

/-! ## A044126.P18179337760275379783

`12*A097450(A277574(n+1))`
-/

namespace A044126.P18179337760275379783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A097450 (A277574 (n + 1)).toNat

end

end A044126.P18179337760275379783

/-!
# A044127: Numbers n such that string 4,1 occurs in the base 6 representation of n but not of n-1.

The programs for A044127, there is no canonical definition to state claims against.
-/

/-! ## A044127.P5150163473865848128

`2*(1+A044508(n+1))-A044129(n+1)`
-/

namespace A044127.P5150163473865848128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (1 + A044508 (n + 1)) - A044129 (n + 1)

end

end A044127.P5150163473865848128

/-! ## A044127.P5588652532264536160

`1+A044507(n+1)`
-/

namespace A044127.P5588652532264536160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A044507 (n + 1)

end

end A044127.P5588652532264536160

/-!
# A044128: Numbers n such that string 4,2 occurs in the base 6 representation of n but not of n-1.

The programs for A044128, there is no canonical definition to state claims against.
-/

/-! ## A044128.P10723681678096796003

`1+A044508(n+1)`
-/

namespace A044128.P10723681678096796003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A044508 (n + 1)

end

end A044128.P10723681678096796003

/-!
# A044129: Numbers n such that string 4,3 occurs in the base 6 representation of n but not of n-1.

The programs for A044129, there is no canonical definition to state claims against.
-/

/-! ## A044129.P3489877712522963483

`1+A044509(n+1)`
-/

namespace A044129.P3489877712522963483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A044509 (n + 1)

end

end A044129.P3489877712522963483

/-! ## A044129.P5604778695036805486

`∩[A047531(n+1), A375399(n+1)]`
-/

namespace A044129.P5604778695036805486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044129.P5604778695036805486

/-!
# A044130: Numbers n such that string 4,4 occurs in the base 6 representation of n but not of n-1.

The programs for A044130, there is no canonical definition to state claims against.
-/

/-! ## A044130.P10972500363321991393

`A043128(2*n+1)+A040006(A014545(n+5))`
-/

namespace A044130.P10972500363321991393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043128 (2 * n + 1) + A040006 (A014545 (n + 5)).toNat

end

end A044130.P10972500363321991393

/-! ## A044130.P18316551040848578934

`A043128(2*n+1)+A040006(A359019(n))`
-/

namespace A044130.P18316551040848578934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043128 (2 * n + 1) + A040006 (A359019 n).toNat

end

end A044130.P18316551040848578934

/-! ## A044130.P6415836026507669366

`A043128(2*n+1)+A040006(A048628(n+1))`
-/

namespace A044130.P6415836026507669366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043128 (2 * n + 1) + A040006 (A048628 (n + 1)).toNat

end

end A044130.P6415836026507669366

/-! ## A044130.P15860358227513839900

`A043128(2*n+1)+A040006(A089504(n+1))`
-/

namespace A044130.P15860358227513839900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043128 (2 * n + 1) + A040006 (A089504 (n + 1)).toNat

end

end A044130.P15860358227513839900

/-! ## A044130.P5363508306194745058

`A043128(2*n+1)+A040006(A119104(n+1))`
-/

namespace A044130.P5363508306194745058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043128 (2 * n + 1) + A040006 (A119104 (n + 1)).toNat

end

end A044130.P5363508306194745058

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

/-! ## A044132.P1496015682917932869

`6*A277571(n+1)`
-/

namespace A044132.P1496015682917932869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A277571 (n + 1)

end

end A044132.P1496015682917932869

/-! ## A044132.P12890749113917901517

`A008458(A277571(n+1))`
-/

namespace A044132.P12890749113917901517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A277571 (n + 1)).toNat

end

end A044132.P12890749113917901517

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

/-! ## A044133.P3930910787699752503

`1+A044513(n+1)`
-/

namespace A044133.P3930910787699752503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A044513 (n + 1)

end

end A044133.P3930910787699752503

/-!
# A044134: Numbers n such that string 5,2 occurs in the base 6 representation of n but not of n-1.

The programs for A044134, there is no canonical definition to state claims against.
-/

/-! ## A044134.P362189646555972314

`A044514(n+1)+1`
-/

namespace A044134.P362189646555972314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044514 (n + 1) + 1

end

end A044134.P362189646555972314

/-! ## A044134.P8000291680663270679

`A113484(A044514(n+1))`
-/

namespace A044134.P8000291680663270679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (A044514 (n + 1)).toNat

end

end A044134.P8000291680663270679

/-!
# A044135: Numbers k such that string 5,3 occurs in the base 6 representation of k but not of k-1.

The programs for A044135, there is no canonical definition to state claims against.
-/

/-! ## A044135.P1401771192828773985

`A044515(n+1)+1`
-/

namespace A044135.P1401771192828773985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044515 (n + 1) + 1

end

end A044135.P1401771192828773985

/-! ## A044135.P956597631062805529

`A110699(A044515(n+1))`
-/

namespace A044135.P956597631062805529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110699 (A044515 (n + 1)).toNat

end

end A044135.P956597631062805529

/-!
# A044136: Numbers n such that string 5,4 occurs in the base 6 representation of n but not of n-1.

The programs for A044136, there is no canonical definition to state claims against.
-/

/-! ## A044136.P14118704135760369957

`1+A044516(n+1)`
-/

namespace A044136.P14118704135760369957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A044516 (n + 1)

end

end A044136.P14118704135760369957

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

/-! ## A044138.P3875997702233459154

`record[A028902(A044399(1+n))]`
-/

namespace A044138.P3875997702233459154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028902 (A044399 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044138.P3875997702233459154

/-! ## A044138.P4579086162320026411

`49*(n+1)`
-/

namespace A044138.P4579086162320026411
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  49 * (n + 1)

end

end A044138.P4579086162320026411

/-! ## A044138.P9032719987928118677

`Δ[A016969(A016754(n))]+n+1`
-/

namespace A044138.P9032719987928118677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 (A016754 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n + 1 : ℤ)

end

end A044138.P9032719987928118677

/-! ## A044138.P2570761665711136074

`A134341(n+1)/3+n+1`
-/

namespace A044138.P2570761665711136074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134341 (n + 1) : ℚ) / 3 + (n + 1 : ℚ)

end

end A044138.P2570761665711136074

/-! ## A044138.P12006133699551960760

`A331803(A158223(n+1))`
-/

namespace A044138.P12006133699551960760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331803 (A158223 (n + 1)).toNat

end

end A044138.P12006133699551960760

/-!
# A044139: Numbers n such that string 0,1 occurs in the base 7 representation of n but not of n-1.

The programs for A044139, there is no canonical definition to state claims against.
-/

/-! ## A044139.P6096079569659518474

`record[A025480(A044140(2+n))]`
-/

namespace A044139.P6096079569659518474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A044140 (2 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044139.P6096079569659518474

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

/-! ## A044140.P16294352057273751683

`record[A025480(A044142(2+n))]`
-/

namespace A044140.P16294352057273751683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A044142 (2 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044140.P16294352057273751683

/-! ## A044140.P16573243732666562675

`A044142(n+1)+A044141(n+1)-1-A044523(n+1)`
-/

namespace A044140.P16573243732666562675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044142 (n + 1) + (A044141 (n + 1) - 1) - A044523 (n + 1)

end

end A044140.P16573243732666562675

/-! ## A044140.P6661603563906079920

`A044520(1+n)+1`
-/

namespace A044140.P6661603563906079920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044520 (1 + n) + 1

end

end A044140.P6661603563906079920

/-! ## A044140.P7966536526434305283

`A257646(A044520(n+1))`
-/

namespace A044140.P7966536526434305283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257646 (A044520 (n + 1)).toNat

end

end A044140.P7966536526434305283

/-!
# A044141: Numbers k such that string 0,3 occurs in the base 7 representation of k but not of k-1.

The programs for A044141, there is no canonical definition to state claims against.
-/

/-! ## A044141.P4363031967671489761

`record[A025480(A044144(2+n))]`
-/

namespace A044141.P4363031967671489761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A044144 (2 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044141.P4363031967671489761

/-! ## A044141.P5045630154673455674

`2*(1+A044522(n+1))-A044143(n+1)`
-/

namespace A044141.P5045630154673455674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (1 + A044522 (n + 1)) - A044143 (n + 1)

end

end A044141.P5045630154673455674

/-! ## A044141.P15084937119809768360

`A044521(n+1)+1`
-/

namespace A044141.P15084937119809768360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044521 (n + 1) + 1

end

end A044141.P15084937119809768360

/-! ## A044141.P3087840266307626312

`A257646(A044521(n+1))`
-/

namespace A044141.P3087840266307626312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257646 (A044521 (n + 1)).toNat

end

end A044141.P3087840266307626312

/-!
# A044142: Numbers k such that string 0,4 occurs in the base 7 representation of k but not of k-1.

The programs for A044142, there is no canonical definition to state claims against.
-/

/-! ## A044142.P6147523761426027620

`1+A044522(n+1)`
-/

namespace A044142.P6147523761426027620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A044522 (n + 1)

end

end A044142.P6147523761426027620

/-!
# A044143: Numbers k such that string 0,5 occurs in the base 7 representation of k but not of k-1.

The programs for A044143, there is no canonical definition to state claims against.
-/

/-! ## A044143.P12298513021893405542

`1+A044523(n+1)`
-/

namespace A044143.P12298513021893405542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A044523 (n + 1)

end

end A044143.P12298513021893405542

/-!
# A044144: Numbers k such that string 0,6 occurs in the base 7 representation of k but not of k-1.

The programs for A044144, there is no canonical definition to state claims against.
-/

/-! ## A044144.P17473167974730612815

`1+A044524(n+1)`
-/

namespace A044144.P17473167974730612815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A044524 (n + 1)

end

end A044144.P17473167974730612815

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

/-! ## A044146.P13863996113590961638

`A044162(3*n+1)/3`
-/

namespace A044146.P13863996113590961638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A044162 (3 * n + 1) : ℚ) / 3

end

end A044146.P13863996113590961638

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

/-! ## A044148.P12314239583610848984

`A268354(A100862(n)!)+A044528(n+1)`
-/

namespace A044148.P12314239583610848984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268354 (Nat.factorial (A100862 n).toNat) + A044528 (n + 1)

end

end A044148.P12314239583610848984

/-!
# A044149: Numbers k such that string 1,4 occurs in the base 7 representation of k but not of k-1.

The programs for A044149, there is no canonical definition to state claims against.
-/

/-! ## A044149.P4734002346378161193

`record[A135997(A044171(1+n))]`
-/

namespace A044149.P4734002346378161193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (A044171 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044149.P4734002346378161193

/-! ## A044149.P16497409211997699632

`record[A054576(A044182(1+n))]`
-/

namespace A044149.P16497409211997699632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A044182 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044149.P16497409211997699632

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

/-! ## A044150.P11217319082071797427

`record[A135997(A044174(1+n))]`
-/

namespace A044150.P11217319082071797427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (A044174 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044150.P11217319082071797427

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

/-! ## A044150.P3190496083910572640

`A044530(n+1)-A057428(A080877(n))`
-/

namespace A044150.P3190496083910572640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044530 (n + 1) - A057428 (A080877 n).toNat

end

end A044150.P3190496083910572640

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

/-! ## A044151.P15988914129507650832

`record[A025480(A044164(n+1))]`
-/

namespace A044151.P15988914129507650832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A044164 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044151.P15988914129507650832

/-! ## A044151.P14904390343227652244

`A044531(A077168(n))+1`
-/

namespace A044151.P14904390343227652244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044531 (A077168 n).toNat + 1

end

end A044151.P14904390343227652244

/-!
# A044152: Numbers n such that string 2,0 occurs in the base 7 representation of n but not of n-1.

The programs for A044152, there is no canonical definition to state claims against.
-/

/-! ## A044152.P9393171390228766159

`record[A032742(A044166(1+n))]`
-/

namespace A044152.P9393171390228766159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A044166 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044152.P9393171390228766159

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

/-! ## A044152.P7525269177965636186

`record[A135997(A044180(1+n))]`
-/

namespace A044152.P7525269177965636186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (A044180 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044152.P7525269177965636186

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

/-! ## A044153.P1736787789190809864

`record[A260739(A044168(1+n))]`
-/

namespace A044153.P1736787789190809864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260739 (A044168 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044153.P1736787789190809864

/-! ## A044153.P8303938849087676758

`record[A025480(A044168(1+n))]`
-/

namespace A044153.P8303938849087676758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A044168 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044153.P8303938849087676758

/-! ## A044153.P17639013528022348866

`record[A078898(A044168(n+1))]`
-/

namespace A044153.P17639013528022348866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A044168 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044153.P17639013528022348866

/-! ## A044153.P8236643826601445231

`record[A032742(A044168(n+1)*1)]`
-/

namespace A044153.P8236643826601445231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A044168 (n + 1) * 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044153.P8236643826601445231

/-! ## A044153.P14241363794105881956

`A323166(A011782(n))+A044533(n+1)`
-/

namespace A044153.P14241363794105881956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323166 (A011782 n).toNat + A044533 (n + 1)

end

end A044153.P14241363794105881956

/-!
# A044154: Numbers n such that string 2,2 occurs in the base 7 representation of n but not of n-1.

The programs for A044154, there is no canonical definition to state claims against.
-/

/-! ## A044154.P15052008350879085757

`A044170(Δ[n²])/2`
-/

namespace A044154.P15052008350879085757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A044170 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A044154.P15052008350879085757

/-! ## A044154.P18023755948423147326

`record[A260739(A044170(1+n))]`
-/

namespace A044154.P18023755948423147326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260739 (A044170 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044154.P18023755948423147326

/-! ## A044154.P12279535762486369122

`A260739(A044170(1+2*n))`
-/

namespace A044154.P12279535762486369122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260739 (A044170 (1 + 2 * n)).toNat

end

end A044154.P12279535762486369122

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

/-!
# A044155: Numbers k such that string 2,3 occurs in the base 7 representation of k but not of k-1.

The programs for A044155, there is no canonical definition to state claims against.
-/

/-! ## A044155.P10420207189958662528

`record[A025480(A044172(1+n))]`
-/

namespace A044155.P10420207189958662528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A044172 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044155.P10420207189958662528

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

/-! ## A044155.P6735393788281102876

`A044156(n+1)-A322361(A001611(3*n))`
-/

namespace A044155.P6735393788281102876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044156 (n + 1) - A322361 (A001611 (3 * n)).toNat

end

end A044155.P6735393788281102876

/-!
# A044156: Numbers n such that string 2,4 occurs in the base 7 representation of n but not of n-1.

The programs for A044156, there is no canonical definition to state claims against.
-/

/-! ## A044156.P5330297911949343147

`record[A032742(A044174(1+n))]`
-/

namespace A044156.P5330297911949343147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A044174 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044156.P5330297911949343147

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

/-! ## A044156.P8506735457126449633

`2*(A044537(n+1)+1)-A044158(n+1)`
-/

namespace A044156.P8506735457126449633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A044537 (n + 1) + 1) - A044158 (n + 1)

end

end A044156.P8506735457126449633

/-! ## A044156.P4093839129978980239

`A044158(n+1)+A044537(n+1)+1-A044159(n+1)`
-/

namespace A044156.P4093839129978980239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044158 (n + 1) + (A044537 (n + 1) + 1) - A044159 (n + 1)

end

end A044156.P4093839129978980239

/-!
# A044157: Numbers n such that string 2,5 occurs in the base 7 representation of n but not of n-1.

The programs for A044157, there is no canonical definition to state claims against.
-/

/-! ## A044157.P16210552225769057630

`record[A025480(A044176(1+n))]`
-/

namespace A044157.P16210552225769057630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A044176 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044157.P16210552225769057630

/-! ## A044157.P16567170676859390795

`1+A044537(n+1)`
-/

namespace A044157.P16567170676859390795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A044537 (n + 1)

end

end A044157.P16567170676859390795

/-!
# A044158: Numbers n such that string 2,6 occurs in the base 7 representation of n but not of n-1.

The programs for A044158, there is no canonical definition to state claims against.
-/

/-! ## A044158.P3898383176386278101

`2*A113484(A044539(n+1))-A044160(n+1)`
-/

namespace A044158.P3898383176386278101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A113484 (A044539 (n + 1)).toNat - A044160 (n + 1)

end

end A044158.P3898383176386278101

/-! ## A044158.P10497166799736990034

`A113484(A044539(n+1))+A044159(n+1)-A044160(n+1)`
-/

namespace A044158.P10497166799736990034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (A044539 (n + 1)).toNat + A044159 (n + 1) - A044160 (n + 1)

end

end A044158.P10497166799736990034

/-! ## A044158.P17946265526729929865

`1+A044538(n+1)`
-/

namespace A044158.P17946265526729929865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A044538 (n + 1)

end

end A044158.P17946265526729929865

/-!
# A044159: Numbers n such that string 3,0 occurs in the base 7 representation of n but not of n-1.

The programs for A044159, there is no canonical definition to state claims against.
-/

/-! ## A044159.P105962560383325951

`record[A025480(A044180(1+n))]`
-/

namespace A044159.P105962560383325951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A044180 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044159.P105962560383325951

/-! ## A044159.P16319168070144805443

`A044540(n+1)+A115510(A044540(n+1))+1-A044541(n+1)`
-/

namespace A044159.P16319168070144805443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044540 (n + 1) + (A115510 (A044540 (n + 1)).toNat + 1 - A044541 (n + 1))

end

end A044159.P16319168070144805443

/-! ## A044159.P10975274565150619712

`A115510(A044160(n+1)-1)+A044161(n+1)-A044542(n+1)`
-/

namespace A044159.P10975274565150619712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115510 (A044160 (n + 1) - 1).toNat + A044161 (n + 1) - A044542 (n + 1)

end

end A044159.P10975274565150619712

/-! ## A044159.P8264521786265254294

`A044161(n+1)+A233583(A044160(n+1)-2)+2-A044542(n+1)`
-/

namespace A044159.P8264521786265254294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044161 (n + 1) + (A233583 (A044160 (n + 1) - 2).toNat + 2) - A044542 (n + 1)

end

end A044159.P8264521786265254294

/-! ## A044159.P398645986935054129

`A113484(A044539(n+1))`
-/

namespace A044159.P398645986935054129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (A044539 (n + 1)).toNat

end

end A044159.P398645986935054129

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

/-! ## A044160.P1853639288251739470

`1+A044540(n+1)`
-/

namespace A044160.P1853639288251739470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A044540 (n + 1)

end

end A044160.P1853639288251739470

/-!
# A044161: Numbers k such that string 3,2 occurs in the base 7 representation of k but not of k-1.

The programs for A044161, there is no canonical definition to state claims against.
-/

/-! ## A044161.P5212622094433676277

`record[A278529(A044184(1+n))]`
-/

namespace A044161.P5212622094433676277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278529 (A044184 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044161.P5212622094433676277

/-! ## A044161.P1679259307658588381

`record[-A001057(A044184(n+1))]`
-/

namespace A044161.P1679259307658588381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A001057 (A044184 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044161.P1679259307658588381

/-! ## A044161.P17616220567171184033

`record[A001057(A044184(1+n)-1)]`
-/

namespace A044161.P17616220567171184033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A044184 (1 + n) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044161.P17616220567171184033

/-! ## A044161.P17668318070975941572

`A044541(n+1)+1`
-/

namespace A044161.P17668318070975941572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044541 (n + 1) + 1

end

end A044161.P17668318070975941572

/-! ## A044161.P7297030233616165152

`A257646(A044541(n+1))`
-/

namespace A044161.P7297030233616165152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257646 (A044541 (n + 1)).toNat

end

end A044161.P7297030233616165152

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

/-! ## A044162.P6382773354515950369

`A044186(2*n+1)/A340831(A001248(3*n+4))`
-/

namespace A044162.P6382773354515950369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A044186 (2 * n + 1) : ℚ) / (A340831 (A001248 (3 * n + 4)).toNat : ℚ)

end

end A044162.P6382773354515950369

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

/-! ## A044164.P11312414832549080476

`1+A044544(n+1)`
-/

namespace A044164.P11312414832549080476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A044544 (n + 1)

end

end A044164.P11312414832549080476

/-!
# A044165: Numbers k such that string 3,6 occurs in the base 7 representation of k but not of k-1.

The programs for A044165, there is no canonical definition to state claims against.
-/

/-! ## A044165.P18317383526682568167

`1+A044545(n+1)`
-/

namespace A044165.P18317383526682568167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A044545 (n + 1)

end

end A044165.P18317383526682568167

/-!
# A044166: Numbers n such that string 4,0 occurs in the base 7 representation of n but not of n-1.

The programs for A044166, there is no canonical definition to state claims against.
-/

/-! ## A044166.P8235743964253681695

`1+A044546(n+1)`
-/

namespace A044166.P8235743964253681695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A044546 (n + 1)

end

end A044166.P8235743964253681695

/-! ## A044166.P11006729856631737881

`A113484(A044546(n+1))`
-/

namespace A044166.P11006729856631737881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (A044546 (n + 1)).toNat

end

end A044166.P11006729856631737881

/-! ## A044166.P9699000374021818044

`filter[A043134(n+1), A261185(#)]`
-/

namespace A044166.P9699000374021818044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A261185 (f1 j).toNat = 1) n)

end

end A044166.P9699000374021818044

/-!
# A044167: Numbers k such that string 4,1 occurs in the base 7 representation of k but not of k-1.

The programs for A044167, there is no canonical definition to state claims against.
-/

/-! ## A044167.P4416932831099431093

`A044547(n+1)+1`
-/

namespace A044167.P4416932831099431093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044547 (n + 1) + 1

end

end A044167.P4416932831099431093

/-!
# A044168: Numbers n such that string 4,2 occurs in the base 7 representation of n but not of n-1.

The programs for A044168, there is no canonical definition to state claims against.
-/

/-! ## A044168.P1015329436566585610

`1+A044548(n+1)`
-/

namespace A044168.P1015329436566585610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A044548 (n + 1)

end

end A044168.P1015329436566585610

/-!
# A044169: Numbers k such that string 4,3 occurs in the base 7 representation of k but not of k-1.

The programs for A044169, there is no canonical definition to state claims against.
-/

/-! ## A044169.P13427802291698943266

`1+A044549(n+1)`
-/

namespace A044169.P13427802291698943266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A044549 (n + 1)

end

end A044169.P13427802291698943266

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

/-! ## A044171.P12454383239113506930

`(2*(A044552(n+1)+1))%A044173(n+1)`
-/

namespace A044171.P12454383239113506930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * (A044552 (n + 1) + 1)) (A044173 (n + 1))

end

end A044171.P12454383239113506930

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

/-! ## A044172.P3604328603191555312

`A044173(n+1)+A008612(6*A044553(n+1))-A044174(n+1)`
-/

namespace A044172.P3604328603191555312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044173 (n + 1) + A008612 (6 * A044553 (n + 1)).toNat - A044174 (n + 1)

end

end A044172.P3604328603191555312

/-! ## A044172.P16432789810923219416

`A044174(n+1)+A008612(6*A044553(n+1))-A044175(n+1)`
-/

namespace A044172.P16432789810923219416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044174 (n + 1) + A008612 (6 * A044553 (n + 1)).toNat - A044175 (n + 1)

end

end A044172.P16432789810923219416

/-! ## A044172.P17193529977497637451

`1+A044552(n+1)`
-/

namespace A044172.P17193529977497637451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A044552 (n + 1)

end

end A044172.P17193529977497637451

/-!
# A044173: Numbers n such that string 5,0 occurs in the base 7 representation of n but not of n-1.

The programs for A044173, there is no canonical definition to state claims against.
-/

/-! ## A044173.P5656171077939023996

`1+A044553(n+1)`
-/

namespace A044173.P5656171077939023996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A044553 (n + 1)

end

end A044173.P5656171077939023996

/-! ## A044173.P11487092250614949832

`A113484(A044553(n+1))`
-/

namespace A044173.P11487092250614949832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (A044553 (n + 1)).toNat

end

end A044173.P11487092250614949832

/-! ## A044173.P2341642367228558529

`filter[A043135(n+1), A261185(#)]`
-/

namespace A044173.P2341642367228558529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A261185 (f1 j).toNat = 1) n)

end

end A044173.P2341642367228558529

/-!
# A044174: Numbers n such that string 5,1 occurs in the base 7 representation of n but not of n-1.

The programs for A044174, there is no canonical definition to state claims against.
-/

/-! ## A044174.P14117902633705866908

`1+A044554(n+1)`
-/

namespace A044174.P14117902633705866908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A044554 (n + 1)

end

end A044174.P14117902633705866908

/-!
# A044175: Numbers n such that string 5,2 occurs in the base 7 representation of n but not of n-1.

The programs for A044175, there is no canonical definition to state claims against.
-/

/-! ## A044175.P11105472440867749476

`1+A044555(n+1)`
-/

namespace A044175.P11105472440867749476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A044555 (n + 1)

end

end A044175.P11105472440867749476

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

/-! ## A044176.P103841782639651586

`1+A044556(n+1)`
-/

namespace A044176.P103841782639651586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A044556 (n + 1)

end

end A044176.P103841782639651586

/-!
# A044177: Numbers k such that string 5,4 occurs in the base 7 representation of k but not of k-1.

The programs for A044177, there is no canonical definition to state claims against.
-/

/-! ## A044177.P4357117248280218564

`1+A044557(n+1)`
-/

namespace A044177.P4357117248280218564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A044557 (n + 1)

end

end A044177.P4357117248280218564

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

/-! ## A044178.P2963403836894704771

`A044179(n+1)-A294609(A177145(n))`
-/

namespace A044178.P2963403836894704771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044179 (n + 1) - A294609 (A177145 n).toNat

end

end A044178.P2963403836894704771

/-! ## A044178.P14407249539348691547

`A044559(n+1)-A325801(A271455(n))`
-/

namespace A044178.P14407249539348691547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044559 (n + 1) - A325801 (A271455 n).toNat

end

end A044178.P14407249539348691547

/-!
# A044179: Numbers n such that string 5,6 occurs in the base 7 representation of n but not of n-1.

The programs for A044179, there is no canonical definition to state claims against.
-/

/-! ## A044179.P15954390972740886334

`0+49*n+41`
-/

namespace A044179.P15954390972740886334
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0 + (49 * n + 41)

end

end A044179.P15954390972740886334

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

/-! ## A044181.P4787176775718861426

`1+A044561(n+1)`
-/

namespace A044181.P4787176775718861426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A044561 (n + 1)

end

end A044181.P4787176775718861426

/-!
# A044182: Numbers n such that string 6,2 occurs in the base 7 representation of n but not of n-1.

The programs for A044182, there is no canonical definition to state claims against.
-/

/-! ## A044182.P17164671957496973844

`1+A044562(n+1)`
-/

namespace A044182.P17164671957496973844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A044562 (n + 1)

end

end A044182.P17164671957496973844

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

/-! ## A044183.P10857605969388345494

`1+A044563(n+1)`
-/

namespace A044183.P10857605969388345494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A044563 (n + 1)

end

end A044183.P10857605969388345494

/-!
# A044184: Numbers n such that string 6,4 occurs in the base 7 representation of n but not of n-1.

The programs for A044184, there is no canonical definition to state claims against.
-/

/-! ## A044184.P13943449011703192800

`1+A044564(n+1)`
-/

namespace A044184.P13943449011703192800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A044564 (n + 1)

end

end A044184.P13943449011703192800

/-!
# A044185: Numbers n such that string 6,5 occurs in the base 7 representation of n but not of n-1.

The programs for A044185, there is no canonical definition to state claims against.
-/

/-! ## A044185.P13737279792187264851

`1+A044565(n+1)`
-/

namespace A044185.P13737279792187264851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A044565 (n + 1)

end

end A044185.P13737279792187264851

/-! ## A044185.P4534366233828248679

`A257646(A044565(n+1))`
-/

namespace A044185.P4534366233828248679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257646 (A044565 (n + 1)).toNat

end

end A044185.P4534366233828248679

/-!
# A044186: Numbers k such that string 6,6 occurs in the base 7 representation of k but not of k-1.

The programs for A044186, there is no canonical definition to state claims against.
-/

/-! ## A044186.P17987236592342241047

`A158066(n+1)-1-A268354(n+1)`
-/

namespace A044186.P17987236592342241047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) - 1 - A268354 (n + 1)

end

end A044186.P17987236592342241047

/-! ## A044186.P16919642940711492898

`49*(n+1)-1+1-A268354(n+1)`
-/

namespace A044186.P16919642940711492898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (49 * (n + 1) : ℤ) - 1 + 1 - A268354 (n + 1)

end

end A044186.P16919642940711492898

/-! ## A044186.P15683183045173152978

`A044567(2*(n+1))-A044519(n+1)%A133961(3*n+4)`
-/

namespace A044186.P15683183045173152978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044567 (2 * (n + 1)) - Int.tmod (A044519 (n + 1)) (A133961 (3 * n + 4))

end

end A044186.P15683183045173152978

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

/-! ## A044187.P7018155737140181253

`record[A322016(A044569(1+n))]`
-/

namespace A044187.P7018155737140181253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322016 (A044569 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044187.P7018155737140181253

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

/-! ## A044188.P15615130360961336841

`A241816(A044569(1+n)+1)`
-/

namespace A044188.P15615130360961336841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241816 (A044569 (1 + n) + 1).toNat

end

end A044188.P15615130360961336841

/-! ## A044188.P12478609820686958248

`A241816(A044189(n+1))`
-/

namespace A044188.P12478609820686958248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241816 (A044189 (n + 1)).toNat

end

end A044188.P12478609820686958248

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

/-! ## A044189.P84771612971663180

`1+A044569(n+1)`
-/

namespace A044189.P84771612971663180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A044569 (n + 1)

end

end A044189.P84771612971663180

/-! ## A044189.P7437102377167152413

`A113484(A044569(n+1))`
-/

namespace A044189.P7437102377167152413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (A044569 (n + 1)).toNat

end

end A044189.P7437102377167152413

/-!
# A044190: Numbers n such that string 0,3 occurs in the base 8 representation of n but not of n-1.

The programs for A044190, there is no canonical definition to state claims against.
-/

/-! ## A044190.P13254854748061102946

`1+A044570(n+1)`
-/

namespace A044190.P13254854748061102946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A044570 (n + 1)

end

end A044190.P13254854748061102946

/-! ## A044190.P7812497083480346018

`A257646(A044570(n+1))`
-/

namespace A044190.P7812497083480346018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257646 (A044570 (n + 1)).toNat

end

end A044190.P7812497083480346018

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

/-! ## A044191.P6277050741704695669

`and(1+A044573(n+1), -20)`
-/

namespace A044191.P6277050741704695669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (1 + A044573 (n + 1)) (-20)

end

end A044191.P6277050741704695669

/-! ## A044191.P12933985911803770647

`A044571(n+1)+1`
-/

namespace A044191.P12933985911803770647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044571 (n + 1) + 1

end

end A044191.P12933985911803770647

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

/-! ## A044192.P6706184431387168403

`1+A044572(n+1)`
-/

namespace A044192.P6706184431387168403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A044572 (n + 1)

end

end A044192.P6706184431387168403

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

/-! ## A044193.P13187341119298015962

`A129760(A044574(1+n)+1)`
-/

namespace A044193.P13187341119298015962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (A044574 (1 + n) + 1).toNat

end

end A044193.P13187341119298015962

/-! ## A044193.P13631074519275493189

`A241816(A044574(n+1))+1`
-/

namespace A044193.P13631074519275493189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241816 (A044574 (n + 1)).toNat + 1

end

end A044193.P13631074519275493189

/-! ## A044193.P2179724871982534783

`A044574(n+1)+1-A006519(A044574(n+1)+1)`
-/

namespace A044193.P2179724871982534783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044574 (n + 1) + 1 - A006519 (A044574 (n + 1) + 1).toNat

end

end A044193.P2179724871982534783

/-! ## A044193.P6399776203144441201

`A129760(A044194(n+1))`
-/

namespace A044193.P6399776203144441201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (A044194 (n + 1)).toNat

end

end A044193.P6399776203144441201

/-! ## A044193.P11688533465415031916

`1+A044573(n+1)`
-/

namespace A044193.P11688533465415031916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A044573 (n + 1)

end

end A044193.P11688533465415031916

/-!
# A044194: Numbers n such that string 0,7 occurs in the base 8 representation of n but not of n-1.

The programs for A044194, there is no canonical definition to state claims against.
-/

/-! ## A044194.P17976129969109228496

`1+A044574(n+1)`
-/

namespace A044194.P17976129969109228496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A044574 (n + 1)

end

end A044194.P17976129969109228496

/-!
# A044195: Numbers n such that string 1,0 occurs in the base 8 representation of n but not of n-1.

The programs for A044195, there is no canonical definition to state claims against.
-/

/-! ## A044195.P13990408671033773214

`filter[A043152(1+n), A354097(#)]`
-/

namespace A044195.P13990408671033773214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043152 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354097 (f1 j).toNat = 1) n)

end

end A044195.P13990408671033773214

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

/-! ## A044195.P12964501996874582031

`∩[A043152(n+1), A400162(n+1)]`
-/

namespace A044195.P12964501996874582031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400162 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044195.P12964501996874582031

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

/-! ## A044197.P10223867010096870388

`A129760(A044578(1+n)+1)`
-/

namespace A044197.P10223867010096870388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (A044578 (1 + n) + 1).toNat

end

end A044197.P10223867010096870388

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

/-! ## A044197.P487663854877157101

`A241816(A044199(n+1))`
-/

namespace A044197.P487663854877157101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241816 (A044199 (n + 1)).toNat

end

end A044197.P487663854877157101

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

/-! ## A044198.P13743767768164445531

`record[A135997(A044220(1+n))]`
-/

namespace A044198.P13743767768164445531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (A044220 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044198.P13743767768164445531

/-! ## A044198.P12605854630961345986

`A044578(n+1)+1`
-/

namespace A044198.P12605854630961345986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044578 (n + 1) + 1

end

end A044198.P12605854630961345986

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

