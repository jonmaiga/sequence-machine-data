import SequenceMachineLib
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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C036
import Seq.B000.C037
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
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
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

/-! ## A044100.P12827545323038659355

`A168184(A032020(n))+A044480(n+1)`
-/

namespace A044100.P12827545323038659355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168184 (A032020 n).toNat + A044480 (n + 1)

end

end A044100.P12827545323038659355

/-! ## A044100.P2127627120679472770

`A044480(n+1)+A001222(A338762(n+1))`
-/

namespace A044100.P2127627120679472770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044480 (n + 1) + A001222 (A338762 (n + 1)).toNat

end

end A044100.P2127627120679472770

/-! ## A044100.P6356265009074670188

`A044480(n+1)-A057428(∑[A044480(n+5)])`
-/

namespace A044100.P6356265009074670188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044480 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044480 (n + 1) - A057428 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A044100.P6356265009074670188

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

/-! ## A044103.P653841570638079842

`A044105(n+1)-and(1, A095184(n+1))-A044484(n+1)%18`
-/

namespace A044103.P653841570638079842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044105 (n + 1) - Int.land 1 (A095184 (n + 1)) - Int.tmod (A044484 (n + 1)) 18

end

end A044103.P653841570638079842

/-! ## A044103.P5918284937399332920

`A044486(n+1)-(A044105(n+1)-and(1, A095184(n+1)))%18`
-/

namespace A044103.P5918284937399332920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044486 (n + 1) - Int.tmod (A044105 (n + 1) - Int.land 1 (A095184 (n + 1))) 18

end

end A044103.P5918284937399332920

/-! ## A044103.P13020341326791017089

`A164020(A044484(n+1))+A044106(n+1)-A044107(n+1)`
-/

namespace A044103.P13020341326791017089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164020 (A044484 (n + 1)).toNat + A044106 (n + 1) - A044107 (n + 1)

end

end A044103.P13020341326791017089

/-! ## A044103.P14553423064573069201

`A044106(n+1)+A044104(n+1)-A243834(n+2)!-A044487(n+1)`
-/

namespace A044103.P14553423064573069201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044106 (n + 1) + (A044104 (n + 1) - (Nat.factorial (A243834 (n + 2)).toNat : ℤ)) - A044487 (n + 1)

end

end A044103.P14553423064573069201

/-! ## A044103.P4724902837955798184

`A044106(n+1)+A044105(n+1)-A243834(n+2)!-A044488(n+1)`
-/

namespace A044103.P4724902837955798184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044106 (n + 1) + (A044105 (n + 1) - (Nat.factorial (A243834 (n + 2)).toNat : ℤ)) - A044488 (n + 1)

end

end A044103.P4724902837955798184

/-!
# A044104: Numbers k such that string 0,2 occurs in the base 6 representation of k but not of k-1.

The programs for A044104, there is no canonical definition to state claims against.
-/

/-! ## A044104.P6064329327723329435

`A044105(n+1)+A097031((6*n+1)²)+A044485(n+1)-A044106(n+1)`
-/

namespace A044104.P6064329327723329435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044105 (n + 1) + (A097031 ((6 * n + 1) ^ 2) + A044485 (n + 1)) - A044106 (n + 1)

end

end A044104.P6064329327723329435

/-! ## A044104.P4990862691495370481

`A044106(n+1)+A097031((6*n+1)²)+A044485(n+1)-A044107(n+1)`
-/

namespace A044104.P4990862691495370481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044106 (n + 1) + (A097031 ((6 * n + 1) ^ 2) + A044485 (n + 1)) - A044107 (n + 1)

end

end A044104.P4990862691495370481

/-! ## A044104.P16701502406016649594

`A044485(n+1)+A097031((6*n+1)²)+A044485(n+1)-A044486(n+1)`
-/

namespace A044104.P16701502406016649594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044485 (n + 1) + (A097031 ((6 * n + 1) ^ 2) + A044485 (n + 1)) - A044486 (n + 1)

end

end A044104.P16701502406016649594

/-! ## A044104.P13416737320296558948

`(A044486(n+1)+A097031((6*n+1)²)+A044485(n+1))%A044487(n+1)`
-/

namespace A044104.P13416737320296558948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044486 (n + 1) + (A097031 ((6 * n + 1) ^ 2) + A044485 (n + 1))) (A044487 (n + 1))

end

end A044104.P13416737320296558948

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

/-! ## A044105.P743422578613639273

`A044106(n+1)+A044486(n+1)+A243834(n)!-A044107(n+1)`
-/

namespace A044105.P743422578613639273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044106 (n + 1) + (A044486 (n + 1) + (Nat.factorial (A243834 n).toNat : ℤ)) - A044107 (n + 1)

end

end A044105.P743422578613639273

/-! ## A044105.P6783587865553784123

`A044106(n+1)+A044106(n+1)-A243834(n)!-A044487(n+1)`
-/

namespace A044105.P6783587865553784123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044106 (n + 1) + (A044106 (n + 1) - (Nat.factorial (A243834 n).toNat : ℤ)) - A044487 (n + 1)

end

end A044105.P6783587865553784123

/-! ## A044105.P13515191197424978647

`A044107(n+1)+A044106(n+1)-A243834(n)!-A044488(n+1)`
-/

namespace A044105.P13515191197424978647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044107 (n + 1) + (A044106 (n + 1) - (Nat.factorial (A243834 n).toNat : ℤ)) - A044488 (n + 1)

end

end A044105.P13515191197424978647

/-! ## A044105.P7006482902312540575

`A044486(n+1)+A044486(n+1)+A090607(n+1)%3-A044487(n+1)`
-/

namespace A044105.P7006482902312540575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044486 (n + 1) + (A044486 (n + 1) + Int.tmod (A090607 (n + 1)) 3) - A044487 (n + 1)

end

end A044105.P7006482902312540575

/-! ## A044105.P15584865124745072247

`A097031((6*n+1)²)+A044485(n+1)`
-/

namespace A044105.P15584865124745072247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097031 ((6 * n + 1) ^ 2) + A044485 (n + 1)

end

end A044105.P15584865124745072247

/-!
# A044106: Numbers k such that string 0,4 occurs in the base 6 representation of k but not of k-1.

The programs for A044106, there is no canonical definition to state claims against.
-/

/-! ## A044106.P16033236891766893404

`A044486(n+1)+A243834(n)!`
-/

namespace A044106.P16033236891766893404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044486 (n + 1) + (Nat.factorial (A243834 n).toNat : ℤ)

end

end A044106.P16033236891766893404

/-! ## A044106.P1956399533467803953

`A044486(n+1)+A090607(n+1)%3`
-/

namespace A044106.P1956399533467803953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044486 (n + 1) + Int.tmod (A090607 (n + 1)) 3

end

end A044106.P1956399533467803953

/-! ## A044106.P429021291162813009

`A044486(n+1)+A007318(A243834(n)²)`
-/

namespace A044106.P429021291162813009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044486 (n + 1) + A007318 (A243834 n ^ 2).toNat

end

end A044106.P429021291162813009

/-! ## A044106.P4565983352625232377

`A046693(A243834(n)²)+A044486(n+1)`
-/

namespace A044106.P4565983352625232377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046693 (A243834 n ^ 2).toNat + A044486 (n + 1)

end

end A044106.P4565983352625232377

/-! ## A044106.P1067151661564437975

`A056545(A243834(n)²)+A044486(n+1)`
-/

namespace A044106.P1067151661564437975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056545 (A243834 n ^ 2).toNat + A044486 (n + 1)

end

end A044106.P1067151661564437975

/-!
# A044107: Numbers k such that string 0,5 occurs in the base 6 representation of k but not of k-1.

The programs for A044107, there is no canonical definition to state claims against.
-/

/-! ## A044107.P17201083683650851307

`∏{e}[A109946(n+1), A044487(n+1)+#]`
-/

namespace A044107.P17201083683650851307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109946 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A044487 (n + 1) + (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A044107.P17201083683650851307

/-! ## A044107.P150369803583385483

`A044487(n+1)+A007318(A010894(n))`
-/

namespace A044107.P150369803583385483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044487 (n + 1) + A007318 (A010894 (n + 21)).toNat

end

end A044107.P150369803583385483

/-! ## A044107.P17710545626065513113

`A044487(n+1)+A001221(A100669(n))`
-/

namespace A044107.P17710545626065513113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044487 (n + 1) + A001221 (A100669 n).toNat

end

end A044107.P17710545626065513113

/-! ## A044107.P15069904819214092101

`A137278(A010894(n)²)+A044487(n+1)`
-/

namespace A044107.P15069904819214092101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137278 (A010894 (n + 21) ^ 2).toNat + A044487 (n + 1)

end

end A044107.P15069904819214092101

/-! ## A044107.P1385785302616394540

`A119788(∑[A010894(n)])+A044487(n+1)`
-/

namespace A044107.P1385785302616394540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010894 (n + 21)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119788 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A044487 (n + 1)

end

end A044107.P1385785302616394540

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

/-! ## A044113.P5398806707353370247

`A137278(A007318(n)!)+A044493(n+1)`
-/

namespace A044113.P5398806707353370247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137278 (Nat.factorial (A007318 n).toNat) + A044493 (n + 1)

end

end A044113.P5398806707353370247

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

/-! ## A044115.P9518376652782288940

`A044495(n+1)+A001222(A108816(n+1))`
-/

namespace A044115.P9518376652782288940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044495 (n + 1) + A001222 (A108816 (n + 1)).toNat

end

end A044115.P9518376652782288940

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

/-! ## A044120.P1025460622100228487

`A008458(A277569(n+1)^A254730(n))`
-/

namespace A044120.P1025460622100228487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (SequenceMachineLib.roundAway ((A277569 (n + 1) : ℚ) ^ (A254730 n : ℤ))).toNat

end

end A044120.P1025460622100228487

/-! ## A044120.P13312259810958624963

`A126664(A015128(n+1))*A277569(n+1)`
-/

namespace A044120.P13312259810958624963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126664 (A015128 (n + 1)).toNat * A277569 (n + 1)

end

end A044120.P13312259810958624963

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

/-! ## A044121.P11480333177032418300

`A044501(n+1)+A010894(2*n+3)+1`
-/

namespace A044121.P11480333177032418300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044501 (n + 1) + A010894 (2 * n + 3 + 21) + 1

end

end A044121.P11480333177032418300

/-! ## A044121.P4737555071602560146

`∏{e}[A095184(2*(n+1)), A044501(n+1)+#]`
-/

namespace A044121.P4737555071602560146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095184 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A044501 (n + 1) + (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A044121.P4737555071602560146

/-! ## A044121.P14349649856003807115

`∏{e}[A109946(2*(n+2)), A044501(n+1)+#]`
-/

namespace A044121.P14349649856003807115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109946 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A044501 (n + 1) + (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A044121.P14349649856003807115

/-!
# A044122: Numbers n such that string 3,2 occurs in the base 6 representation of n but not of n-1.

The programs for A044122, there is no canonical definition to state claims against.
-/

/-! ## A044122.P17600508058171198870

`A044502(n+1)+A010894(2*n+1)+1`
-/

namespace A044122.P17600508058171198870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044502 (n + 1) + A010894 (2 * n + 1 + 21) + 1

end

end A044122.P17600508058171198870

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

/-! ## A044125.P15027478007853145432

`record[A044505(A046693(n))+1]`
-/

namespace A044125.P15027478007853145432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044505 (A046693 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044125.P15027478007853145432

/-! ## A044125.P6262118451889540366

`A283821(3^val(n+1, 3))+A044505(n+1)`
-/

namespace A044125.P6262118451889540366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283821 (3 ^ SequenceMachineLib.valuation (n + 1) 3) + A044505 (n + 1)

end

end A044125.P6262118451889540366

/-! ## A044125.P11372686196573054256

`A044505(n+1)+A000035(A120027(n+1))`
-/

namespace A044125.P11372686196573054256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044505 (n + 1) + A000035 (A120027 (n + 1)).toNat

end

end A044125.P11372686196573054256

/-! ## A044125.P5104292712721480451

`A044505(n+1)+A001221(A199326(n+1))`
-/

namespace A044125.P5104292712721480451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044505 (n + 1) + A001221 (A199326 (n + 1)).toNat

end

end A044125.P5104292712721480451

/-! ## A044125.P2130838367150339740

`A179926(A033274(n+1))+A044505(n+1)`
-/

namespace A044125.P2130838367150339740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179926 (A033274 (n + 1)).toNat + A044505 (n + 1)

end

end A044125.P2130838367150339740

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

/-!
# A044127: Numbers n such that string 4,1 occurs in the base 6 representation of n but not of n-1.

The programs for A044127, there is no canonical definition to state claims against.
-/

/-! ## A044127.P15022894071161426234

`2*(A133233(∑[n])+A044508(n+1))-A044129(n+1)`
-/

namespace A044127.P15022894071161426234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A133233 (∑ j ∈ Finset.range (n + 1), f1 j) + A044508 (n + 1)) - A044129 (n + 1)

end

end A044127.P15022894071161426234

/-! ## A044127.P10138388011197237055

`2*(A044508(n+1)+A010146(A000978(n+1)))-A044129(n+1)`
-/

namespace A044127.P10138388011197237055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A044508 (n + 1) + A010146 (A000978 (n + 1)).toNat) - A044129 (n + 1)

end

end A044127.P10138388011197237055

/-! ## A044127.P16178554165526369180

`A044507(n+1)+A007318(A061793(n))`
-/

namespace A044127.P16178554165526369180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044507 (n + 1) + A007318 (A061793 n).toNat

end

end A044127.P16178554165526369180

/-! ## A044127.P4073907593131188886

`A257993(A005491(n))+A044507(n+1)`
-/

namespace A044127.P4073907593131188886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257993 (A005491 n).toNat + A044507 (n + 1)

end

end A044127.P4073907593131188886

/-! ## A044127.P14489822627142001364

`A044507(n+1)+A001222(A061275(n+1))`
-/

namespace A044127.P14489822627142001364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044507 (n + 1) + A001222 (A061275 (n + 1)).toNat

end

end A044127.P14489822627142001364

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

/-! ## A044128.P6824737552557130678

`A044508(n+1)+A019425(A151722(n))!`
-/

namespace A044128.P6824737552557130678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044508 (n + 1) + (Nat.factorial (A019425 (A151722 n).toNat).toNat : ℤ)

end

end A044128.P6824737552557130678

/-! ## A044128.P433425399289329111

`A044508(n+1)+A010146(A000978(n+1))`
-/

namespace A044128.P433425399289329111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044508 (n + 1) + A010146 (A000978 (n + 1)).toNat

end

end A044128.P433425399289329111

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

/-! ## A044133.P9856124382243651362

`A044513(n+1)+A035263(A120027(n))`
-/

namespace A044133.P9856124382243651362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044513 (n + 1) + A035263 (A120027 n).toNat

end

end A044133.P9856124382243651362

/-! ## A044133.P13350312880183251179

`A174965(A141214(n))+A044513(n+1)`
-/

namespace A044133.P13350312880183251179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174965 (A141214 n).toNat + A044513 (n + 1)

end

end A044133.P13350312880183251179

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

/-! ## A044135.P1771209013755568807

`A044515(n+1)+A035263(A017042(n))`
-/

namespace A044135.P1771209013755568807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044515 (n + 1) + A035263 (A017042 n).toNat

end

end A044135.P1771209013755568807

/-! ## A044135.P15126624526477935938

`A044515(n+1)+A000688(A137847(2*n+3))`
-/

namespace A044135.P15126624526477935938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044515 (n + 1) + A000688 (A137847 (2 * n + 3)).toNat

end

end A044135.P15126624526477935938

/-!
# A044136: Numbers n such that string 5,4 occurs in the base 6 representation of n but not of n-1.

The programs for A044136, there is no canonical definition to state claims against.
-/

/-! ## A044136.P6262088900525741060

`(A044516(n+1)+1)%A133961(n+1)`
-/

namespace A044136.P6262088900525741060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044516 (n + 1) + 1) (A133961 (n + 1))

end

end A044136.P6262088900525741060

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

/-! ## A044136.P7624009814782509803

`A044516(n+1)+gcd(A009998(n), A133961(n+1))`
-/

namespace A044136.P7624009814782509803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044516 (n + 1) + (Int.gcd (A009998 n) (A133961 (n + 1)) : ℤ)

end

end A044136.P7624009814782509803

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

/-! ## A044138.P3877252013768410028

`7^A087230(A000290(2*(n+2)))*(n+1)`
-/

namespace A044138.P3877252013768410028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ (A087230 (A000290 (2 * (n + 2))).toNat : ℤ) * (n + 1 : ℚ)

end

end A044138.P3877252013768410028

/-! ## A044138.P16161508154551246894

`A141747(6+A259584(n+1))+49*(n+1)`
-/

namespace A044138.P16161508154551246894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141747 (6 + A259584 (n + 1)).toNat + (49 * (n + 1) : ℤ)

end

end A044138.P16161508154551246894

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

/-! ## A044140.P17760725853234278532

`A044142(n+1)+A044141(n+1)-A125631(n+1)%2-A044523(n+1)`
-/

namespace A044140.P17760725853234278532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044142 (n + 1) + (A044141 (n + 1) - Int.tmod (A125631 (n + 1)) 2) - A044523 (n + 1)

end

end A044140.P17760725853234278532

/-! ## A044140.P4699917059120118078

`A044520(1+n)+A000034(A028330(n))`
-/

namespace A044140.P4699917059120118078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044520 (1 + n) + A000034 (A028330 n).toNat

end

end A044140.P4699917059120118078

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

/-! ## A044141.P9343187654020658471

`2*(A054977(A009998(n))+A044522(n+1))-A044143(n+1)`
-/

namespace A044141.P9343187654020658471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A054977 (A009998 n).toNat + A044522 (n + 1)) - A044143 (n + 1)

end

end A044141.P9343187654020658471

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

/-! ## A044143.P6692862259074975780

`A057077(A000567(n))+A044523(n+1)`
-/

namespace A044143.P6692862259074975780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A000567 n).toNat + A044523 (n + 1)

end

end A044143.P6692862259074975780

/-! ## A044143.P3594703868209634052

`A054977(A042957(n))+A044523(n+1)`
-/

namespace A044143.P3594703868209634052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A042957 n).toNat + A044523 (n + 1)

end

end A044143.P3594703868209634052

/-! ## A044143.P4014035678387635783

`A054977(A100862(n))+A044523(n+1)`
-/

namespace A044143.P4014035678387635783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A100862 n).toNat + A044523 (n + 1)

end

end A044143.P4014035678387635783

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

/-!
# A044144: Numbers k such that string 0,6 occurs in the base 7 representation of k but not of k-1.

The programs for A044144, there is no canonical definition to state claims against.
-/

/-! ## A044144.P13494372477555426355

`A054977(A000009(n))+A044524(n+1)`
-/

namespace A044144.P13494372477555426355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A000009 n).toNat + A044524 (n + 1)

end

end A044144.P13494372477555426355

/-! ## A044144.P269755183041660309

`A044524(1+n)+A000035(A193844(n))`
-/

namespace A044144.P269755183041660309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044524 (1 + n) + A000035 (A193844 n).toNat

end

end A044144.P269755183041660309

/-! ## A044144.P4986229931486451011

`A054977(A193844(n))+A044524(n+1)`
-/

namespace A044144.P4986229931486451011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A193844 n).toNat + A044524 (n + 1)

end

end A044144.P4986229931486451011

/-! ## A044144.P16179278196445846012

`A054977(A272486(n+1))+A044524(n+1)`
-/

namespace A044144.P16179278196445846012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A272486 (n + 1)).toNat + A044524 (n + 1)

end

end A044144.P16179278196445846012

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

/-! ## A044151.P14472133661088497277

`record[A025480(A044164(n+1))]%A145047(n+1)`
-/

namespace A044151.P14472133661088497277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A044164 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A145047 (n + 1))

end

end A044151.P14472133661088497277

/-! ## A044151.P1594821421866308647

`record[A025480(A044164(n+1))%A145047(n+1)]`
-/

namespace A044151.P1594821421866308647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025480 (A044164 (n + 1)).toNat) (A145047 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044151.P1594821421866308647

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

/-! ## A044153.P15422587304107585258

`record[A032742(A044168(n+1)*A054977(n+4))]`
-/

namespace A044153.P15422587304107585258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A044168 (n + 1) * A054977 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044153.P15422587304107585258

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

/-! ## A044156.P2139341629842878279

`2*(A044537(n+1)+A151722(n)!)-A044158(n+1)`
-/

namespace A044156.P2139341629842878279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A044537 (n + 1) + (Nat.factorial (A151722 n).toNat : ℤ)) - A044158 (n + 1)

end

end A044156.P2139341629842878279

/-! ## A044156.P15743201804652118669

`2*(A044537(n+1)+A151818(n)!)-A044158(n+1)`
-/

namespace A044156.P15743201804652118669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A044537 (n + 1) + (Nat.factorial (A151818 n).toNat : ℤ)) - A044158 (n + 1)

end

end A044156.P15743201804652118669

/-! ## A044156.P16676505337781501093

`A044158(n+1)+A044537(n+1)+A151722(n)!-A044159(n+1)`
-/

namespace A044156.P16676505337781501093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044158 (n + 1) + (A044537 (n + 1) + (Nat.factorial (A151722 n).toNat : ℤ)) - A044159 (n + 1)

end

end A044156.P16676505337781501093

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

/-! ## A044157.P576364138276751203

`A057427(A081437(n))+A044537(n+1)`
-/

namespace A044157.P576364138276751203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A081437 n).toNat + A044537 (n + 1)

end

end A044157.P576364138276751203

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

/-! ## A044160.P2234078965395092801

`A115510(A044540(n+1))+1`
-/

namespace A044160.P2234078965395092801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115510 (A044540 (n + 1)).toNat + 1

end

end A044160.P2234078965395092801

/-! ## A044160.P12556908737193520577

`A133872(A045946(n))+A044540(n+1)`
-/

namespace A044160.P12556908737193520577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 (A045946 n).toNat + A044540 (n + 1)

end

end A044160.P12556908737193520577

/-! ## A044160.P887750589817611762

`A113340(A276837(n)!)+A044540(n+1)`
-/

namespace A044160.P887750589817611762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113340 (Nat.factorial (A276837 n).toNat) + A044540 (n + 1)

end

end A044160.P887750589817611762

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

/-! ## A044164.P17334175515170875579

`A044544(n+1)-A057428(A270831(n+1))`
-/

namespace A044164.P17334175515170875579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044544 (n + 1) - A057428 (A270831 (n + 1)).toNat

end

end A044164.P17334175515170875579

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

/-! ## A044165.P16371128913044751449

`A044545(n+1)+A035316(A146348(n+1))`
-/

namespace A044165.P16371128913044751449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044545 (n + 1) + A035316 (A146348 (n + 1)).toNat

end

end A044165.P16371128913044751449

/-! ## A044165.P10100487298925946760

`A044545(n+1)-A057428(∑[A306673(n+1)])`
-/

namespace A044165.P10100487298925946760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044545 (n + 1) - A057428 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A044165.P10100487298925946760

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

/-! ## A044166.P11504561816538496477

`A044546(n+1)+A000035(∑[A151815(n)])`
-/

namespace A044166.P11504561816538496477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044546 (n + 1) + A000035 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A044166.P11504561816538496477

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

/-! ## A044167.P9325892723440902487

`A044547(n+1)+A001221(A062064(n+1))`
-/

namespace A044167.P9325892723440902487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044547 (n + 1) + A001221 (A062064 (n + 1)).toNat

end

end A044167.P9325892723440902487

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

/-! ## A044168.P8699645396397128262

`A044548(n+1)+A000034(A001504(n))`
-/

namespace A044168.P8699645396397128262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044548 (n + 1) + A000034 (A001504 n).toNat

end

end A044168.P8699645396397128262

/-! ## A044168.P8452280451167716816

`A044548(n+1)+A003415(A001269(n))`
-/

namespace A044168.P8452280451167716816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044548 (n + 1) + A003415 (A001269 n).toNat

end

end A044168.P8452280451167716816

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

/-! ## A044169.P2863417131525460821

`A044549(n+1)+A066775(n+1)%2`
-/

namespace A044169.P2863417131525460821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044549 (n + 1) + Int.tmod (A066775 (n + 1)) 2

end

end A044169.P2863417131525460821

/-! ## A044169.P8400761094970982475

`A054977(A325832(n))+A044549(n+1)`
-/

namespace A044169.P8400761094970982475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A325832 n).toNat + A044549 (n + 1)

end

end A044169.P8400761094970982475

/-! ## A044169.P11120761946508320961

`A044549(n+1)+A000035(A066775(n+1))`
-/

namespace A044169.P11120761946508320961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044549 (n + 1) + A000035 (A066775 (n + 1)).toNat

end

end A044169.P11120761946508320961

/-! ## A044169.P1629930022364352132

`A044549(n+1)+A001222(A333424(n+1))`
-/

namespace A044169.P1629930022364352132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044549 (n + 1) + A001222 (A333424 (n + 1)).toNat

end

end A044169.P1629930022364352132

/-! ## A044169.P13348847474176382000

`A044549(n+1)+A000034(A001504(n))`
-/

namespace A044169.P13348847474176382000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044549 (n + 1) + A000034 (A001504 n).toNat

end

end A044169.P13348847474176382000

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

/-! ## A044171.P2786510351665084207

`(2*(A044552(n+1)+A007318(A185284(n))))%A044173(n+1)`
-/

namespace A044171.P2786510351665084207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * (A044552 (n + 1) + A007318 (A185284 n).toNat)) (A044173 (n + 1))

end

end A044171.P2786510351665084207

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

/-! ## A044173.P11525879216405435627

`A057427(A000326(2*(n+2)))+A044553(n+1)`
-/

namespace A044173.P11525879216405435627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A000326 (2 * (n + 2))).toNat + A044553 (n + 1)

end

end A044173.P11525879216405435627

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

/-! ## A044174.P16423770745905961020

`A044554(n+1)-A008683(A341085(n+1))`
-/

namespace A044174.P16423770745905961020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044554 (n + 1) - A008683 (A341085 (n + 1)).toNat

end

end A044174.P16423770745905961020

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

/-! ## A044175.P2698639030169129193

`A044555(n+1)+A000035(A156284(n+1))`
-/

namespace A044175.P2698639030169129193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044555 (n + 1) + A000035 (A156284 (n + 1)).toNat

end

end A044175.P2698639030169129193

/-! ## A044175.P11094683478215498875

`A325640(A160370(n+4))+A044555(n+1)`
-/

namespace A044175.P11094683478215498875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325640 (A160370 (n + 4)).toNat + A044555 (n + 1)

end

end A044175.P11094683478215498875

/-! ## A044175.P13774694590853184808

`A054977(A317144(2*n+1))+A044555(n+1)`
-/

namespace A044175.P13774694590853184808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A317144 (2 * n + 1)).toNat + A044555 (n + 1)

end

end A044175.P13774694590853184808

/-! ## A044175.P13924864117023998401

`A044555(n+1)+A001511(A160796(2*n+3))`
-/

namespace A044175.P13924864117023998401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044555 (n + 1) + A001511 (A160796 (2 * n + 3)).toNat

end

end A044175.P13924864117023998401

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

/-! ## A044176.P11654250866430946332

`A057427(A092559(n+2))+A044556(n+1)`
-/

namespace A044176.P11654250866430946332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A092559 (n + 2)).toNat + A044556 (n + 1)

end

end A044176.P11654250866430946332

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

/-! ## A044177.P6454045441572883876

`A054977(A092559(n+1))+A044557(n+1)`
-/

namespace A044177.P6454045441572883876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A092559 (n + 1)).toNat + A044557 (n + 1)

end

end A044177.P6454045441572883876

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

/-! ## A044179.P12840348489192696272

`A044567(n+1)-A186684(A197298(2*(n+1)))`
-/

namespace A044179.P12840348489192696272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044567 (n + 1) - A186684 (A197298 (2 * (n + 1))).toNat

end

end A044179.P12840348489192696272

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

/-! ## A044181.P14034954461134270220

`A044561(n+1)+A001055(A095103(n+1))`
-/

namespace A044181.P14034954461134270220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044561 (n + 1) + A001055 (A095103 (n + 1)).toNat

end

end A044181.P14034954461134270220

/-! ## A044181.P3212657750249930174

`A054977(A237984(n+1))+A044561(n+1)`
-/

namespace A044181.P3212657750249930174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A237984 (n + 1)).toNat + A044561 (n + 1)

end

end A044181.P3212657750249930174

/-! ## A044181.P15235078541279538081

`A044561(n+1)+A001511(A155030(n+3))`
-/

namespace A044181.P15235078541279538081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044561 (n + 1) + A001511 (A155030 (n + 3)).toNat

end

end A044181.P15235078541279538081

/-! ## A044181.P1071285871954979451

`A044561(n+1)+A001222(A054555(n+4))`
-/

namespace A044181.P1071285871954979451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044561 (n + 1) + A001222 (A054555 (n + 4)).toNat

end

end A044181.P1071285871954979451

/-!
# A044182: Numbers n such that string 6,2 occurs in the base 7 representation of n but not of n-1.

The programs for A044182, there is no canonical definition to state claims against.
-/

/-! ## A044182.P17532798319116713950

`A044562(n+1)+A034947(A007318(n)²)`
-/

namespace A044182.P17532798319116713950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044562 (n + 1) + A034947 (A007318 n ^ 2).toNat

end

end A044182.P17532798319116713950

/-! ## A044182.P5311390487054021651

`A057427(A007318(n)²)+A044562(n+1)`
-/

namespace A044182.P5311390487054021651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A007318 n ^ 2).toNat + A044562 (n + 1)

end

end A044182.P5311390487054021651

/-! ## A044182.P8685851132073521791

`A071035(A007318(n)²)+A044562(n+1)`
-/

namespace A044182.P8685851132073521791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071035 (A007318 n ^ 2).toNat + A044562 (n + 1)

end

end A044182.P8685851132073521791

/-! ## A044182.P15899039830508003041

`A044562(n+1)-A057428(A007318(n)²)`
-/

namespace A044182.P15899039830508003041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044562 (n + 1) - A057428 (A007318 n ^ 2).toNat

end

end A044182.P15899039830508003041

/-! ## A044182.P15560009831880744651

`A044562(n+1)+A007318(A112355(n+1))`
-/

namespace A044182.P15560009831880744651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044562 (n + 1) + A007318 (A112355 (n + 1)).toNat

end

end A044182.P15560009831880744651

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

/-! ## A044183.P13297043182539316572

`val(A250197(n+5)+1, 2)+1+A044563(n+1)`
-/

namespace A044183.P13297043182539316572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A250197 (n + 5) + 1).toNat 2 + 1 : ℤ) + A044563 (n + 1)

end

end A044183.P13297043182539316572

/-! ## A044183.P15148053451819812824

`A044563(1+n)+A000035(A016754(n))`
-/

namespace A044183.P15148053451819812824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044563 (1 + n) + A000035 (A016754 n).toNat

end

end A044183.P15148053451819812824

/-! ## A044183.P13817973806852070102

`A245618(A000217(n))+A044563(n+1)`
-/

namespace A044183.P13817973806852070102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245618 (A000217 n).toNat + A044563 (n + 1)

end

end A044183.P13817973806852070102

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

/-! ## A044184.P7970377256357697190

`A044564(1+n)+A001055(A002146(n))`
-/

namespace A044184.P7970377256357697190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044564 (1 + n) + A001055 (A002146 n).toNat

end

end A044184.P7970377256357697190

/-! ## A044184.P11178955164017464322

`A044564(1+n)+A001055(A155884(n))`
-/

namespace A044184.P11178955164017464322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044564 (1 + n) + A001055 (A155884 n).toNat

end

end A044184.P11178955164017464322

/-! ## A044184.P9303350672158366883

`A044564(n+1)+A001222(A155884(n))`
-/

namespace A044184.P9303350672158366883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044564 (n + 1) + A001222 (A155884 n).toNat

end

end A044184.P9303350672158366883

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

/-! ## A044185.P14777594839615745611

`A054977(A056773(n+1))+A044565(n+1)`
-/

namespace A044185.P14777594839615745611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A056773 (n + 1)).toNat + A044565 (n + 1)

end

end A044185.P14777594839615745611

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

/-! ## A044190.P4965564032539792676

`A044570(1+n)+A010231(A307855(n))`
-/

namespace A044190.P4965564032539792676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044570 (1 + n) + A010231 (A307855 n).toNat

end

end A044190.P4965564032539792676

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

/-! ## A044191.P8301163844592367934

`A129760(A044193(n+1)%A260705(n+1))`
-/

namespace A044191.P8301163844592367934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (Int.tmod (A044193 (n + 1)) (A260705 (n + 1))).toNat

end

end A044191.P8301163844592367934

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

/-! ## A044192.P13376309054316654968

`A044572(1+n)+A014722(A225633(n))`
-/

namespace A044192.P13376309054316654968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044572 (1 + n) + A014722 (A225633 n).toNat

end

end A044192.P13376309054316654968

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

/-! ## A044193.P16827250414980916926

`A057427(A291168(n))*A129760(A044194(n+1))`
-/

namespace A044193.P16827250414980916926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A291168 n).toNat * A129760 (A044194 (n + 1)).toNat

end

end A044193.P16827250414980916926

/-! ## A044193.P9898283393177868537

`A000035(A139847(n+1))*A129760(A044194(n+1))`
-/

namespace A044193.P9898283393177868537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A139847 (n + 1)).toNat * A129760 (A044194 (n + 1)).toNat

end

end A044193.P9898283393177868537

/-! ## A044193.P13964890919693087733

`A057427(A035312(n))+A044573(n+1)`
-/

namespace A044193.P13964890919693087733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A035312 n).toNat + A044573 (n + 1)

end

end A044193.P13964890919693087733

/-! ## A044193.P7069691394146807377

`A160338(A036561(n))+A044573(n+1)`
-/

namespace A044193.P7069691394146807377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160338 (A036561 n).toNat + A044573 (n + 1)

end

end A044193.P7069691394146807377

/-! ## A044193.P9990381196490592366

`A044573(n+1)+A040001(A140001(n+1))`
-/

namespace A044193.P9990381196490592366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044573 (n + 1) + A040001 (A140001 (n + 1)).toNat

end

end A044193.P9990381196490592366

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

/-! ## A044195.P5749672675052583590

`filter[A043152(1+n), A121262(#)]`
-/

namespace A044195.P5749672675052583590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043152 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A044195.P5749672675052583590

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

/-! ## A044197.P16618851861030665697

`A241816(A044199(n+1))+A225633(A282230(n+1))`
-/

namespace A044197.P16618851861030665697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241816 (A044199 (n + 1)).toNat + A225633 (A282230 (n + 1)).toNat

end

end A044197.P16618851861030665697

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

/-! ## A044198.P12485353819854827117

`(A044578(n+1)+1)%A325790(n+4)`
-/

namespace A044198.P12485353819854827117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044578 (n + 1) + 1) (A325790 (n + 4))

end

end A044198.P12485353819854827117

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

