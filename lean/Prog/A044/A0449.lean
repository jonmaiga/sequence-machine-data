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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C048
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
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A044900: Base 14 run lengths alternate: even, odd, even,...

The programs for A044900, there is no canonical definition to state claims against.
-/

/-! ## A044900.P3692389905340052709

`A048325(A151838(n)+A043702(n+1))`
-/

namespace A044900.P3692389905340052709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048325 (A151838 n + A043702 (n + 1)).toNat

end

end A044900.P3692389905340052709

/-! ## A044900.P11462470615911822254

`∑[A040232(A108611(n)*A185274(n))]`
-/

namespace A044900.P11462470615911822254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040232 (A108611 n * A185274 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044900.P11462470615911822254

/-! ## A044900.P4270787278548956690

`∑[A040232(A144590(n)*A185274(n))]`
-/

namespace A044900.P4270787278548956690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040232 (A144590 n * A185274 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044900.P4270787278548956690

/-! ## A044900.P823817597512631721

`∑[A040232(∑[n*A185274(n)])]`
-/

namespace A044900.P823817597512631721
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A185274 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040232 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044900.P823817597512631721

/-!
# A044901: Base 15 run lengths alternate: even, odd, even,...

The programs for A044901, there is no canonical definition to state claims against.
-/

/-! ## A044901.P8925509740256341247

`∑[floor(root(16, A213004(n+1)))]`
-/

namespace A044901.P8925509740256341247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(16 : ℝ) ^ (1 / (A213004 (n + 1) : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044901.P8925509740256341247

/-! ## A044901.P3933013655841645166

`record[A217558(A297289(n+1)%A297290(n+1))]`
-/

namespace A044901.P3933013655841645166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217558 (Int.tmod (A297289 (n + 1)) (A297290 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044901.P3933013655841645166

/-! ## A044901.P16088826638331473782

`record[A217558(∑[A273693(n)])]`
-/

namespace A044901.P16088826638331473782
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273693 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217558 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044901.P16088826638331473782

/-! ## A044901.P2876569202718001289

`record[A217558(∑[A280865(n)])]`
-/

namespace A044901.P2876569202718001289
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280865 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217558 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044901.P2876569202718001289

/-! ## A044901.P1707589342788637509

`record[A217558(∑[A339221(n)])]`
-/

namespace A044901.P1707589342788637509
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339221 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217558 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044901.P1707589342788637509

/-!
# A044902: Base 16 run lengths alternate: even, odd, even,...

The programs for A044902, there is no canonical definition to state claims against.
-/

/-! ## A044902.P11157892536033636064

`A044857(A046100(n+1)%A212301(n))`
-/

namespace A044902.P11157892536033636064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044857 (Int.tmod (A046100 (n + 1)) (A212301 n)).toNat

end

end A044902.P11157892536033636064

/-! ## A044902.P12435424958902894963

`A044857(A046100(n+1))+A000007(A124574(n+1))`
-/

namespace A044902.P12435424958902894963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044857 (A046100 (n + 1)).toNat + A000007 (A124574 (n + 1)).toNat

end

end A044902.P12435424958902894963

/-! ## A044902.P732473386812411831

`A001221(A000043(n+1))*A044857(A046100(n+1))`
-/

namespace A044902.P732473386812411831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000043 (n + 1)).toNat * A044857 (A046100 (n + 1)).toNat

end

end A044902.P732473386812411831

/-!
# A044903: Base-2 run lengths alternate: odd, even, odd, ...

The programs for A044903, the canonical program `A044903.P13567681705427084752` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A044903 has offset 1).

The definition of A044903 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A044903.P13567681705427084752

`eq[A001511(A227349(n)), A086747(n)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A044903

/-- `eq[A001511(A227349(n)), A086747(n)]` -/
def P13567681705427084752.Spec : Prop :=
  ∀ n, (P13567681705427084752.a n : ℤ) = A044903 (n + 1)

theorem P13567681705427084752.correct : P13567681705427084752.Spec := by
  intro n
  simp only [A044903, Nat.add_sub_cancel]

end A044903

/-! ## A044903.P4460946145985568696

`eq[A006519(A284580(n)), A086747(n)]`
-/

namespace A044903.P4460946145985568696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A284580 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086747 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044903.P4460946145985568696

namespace A044903

/-- `eq[A006519(A284580(n)), A086747(n)]` -/
def P4460946145985568696.Spec : Prop :=
  ∀ n, (P4460946145985568696.a n : ℤ) = A044903 (n + 1)

end A044903

/-! ## A044903.P1535534582724194337

`eq[A010156(A227349(n)), A316831(n)]`
-/

namespace A044903.P1535534582724194337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010156 (A227349 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316831 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044903.P1535534582724194337

namespace A044903

/-- `eq[A010156(A227349(n)), A316831(n)]` -/
def P1535534582724194337.Spec : Prop :=
  ∀ n, (P1535534582724194337.a n : ℤ) = A044903 (n + 1)

end A044903

/-! ## A044903.P11826874360034276638

`eq[n+1, and(n+1, A162853(n+1))]+1`
-/

namespace A044903.P11826874360034276638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A162853 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A044903.P11826874360034276638

namespace A044903

/-- `eq[n+1, and(n+1, A162853(n+1))]+1` -/
def P11826874360034276638.Spec : Prop :=
  ∀ n, (P11826874360034276638.a n : ℤ) = A044903 (n + 1)

end A044903

/-! ## A044903.P3711685629383853428

`eq[A086747(n), A286363(A247282(n))]`
-/

namespace A044903.P3711685629383853428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086747 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286363 (A247282 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044903.P3711685629383853428

namespace A044903

/-- `eq[A086747(n), A286363(A247282(n))]` -/
def P3711685629383853428.Spec : Prop :=
  ∀ n, (P3711685629383853428.a n : ℤ) = A044903 (n + 1)

end A044903

/-!
# A044905: Numbers whose base-4 run lengths alternate: odd, even, odd, ...

The programs for A044905, there is no canonical definition to state claims against.
-/

/-! ## A044905.P7144750485853173492

`record[A292371(A044917(n+1))]`
-/

namespace A044905.P7144750485853173492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292371 (A044917 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044905.P7144750485853173492

/-! ## A044905.P12484068630691280621

`∑[A004195(Δ[A048704(n)])]`
-/

namespace A044905.P12484068630691280621
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048704 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004195 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044905.P12484068630691280621

/-! ## A044905.P7004740952887046327

`∑[and(13, A195522(∑[n+1]))]`
-/

namespace A044905.P7004740952887046327
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 13 (A195522 (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044905.P7004740952887046327

/-!
# A044906: Numbers whose base-5 run lengths alternate: odd, even, odd, ...

The programs for A044906, there is no canonical definition to state claims against.
-/

/-! ## A044906.P14425554194531701076

`∩[A364347(n+1), A048302(n)]`
-/

namespace A044906.P14425554194531701076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048302 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044906.P14425554194531701076

/-! ## A044906.P13970155020129880440

`∩[A381432(n+1), A048302(n)]`
-/

namespace A044906.P13970155020129880440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048302 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044906.P13970155020129880440

/-! ## A044906.P13571409106545334191

`n*A126459(A343319(n))+1`
-/

namespace A044906.P13571409106545334191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A126459 (A343319 n).toNat + 1

end

end A044906.P13571409106545334191

/-! ## A044906.P16696718386583259663

`∩[A116358(n+1), A048302(n)]`
-/

namespace A044906.P16696718386583259663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048302 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044906.P16696718386583259663

/-! ## A044906.P11668093819281012257

`A000196(A016921(n)^floor(sqrt(n)))`
-/

namespace A044906.P11668093819281012257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A016921 n ^ Nat.sqrt n).toNat

end

end A044906.P11668093819281012257

/-!
# A044907: Numbers whose base-6 run lengths alternate: odd, even, odd, ...

The programs for A044907, there is no canonical definition to state claims against.
-/

/-! ## A044907.P17500376954170052624

`∑[A125294(A008805(A151898(n+1)))]`
-/

namespace A044907.P17500376954170052624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125294 (A008805 (A151898 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044907.P17500376954170052624

/-! ## A044907.P3979107222372170437

`(6*n)%A051240(n+1)+n+1`
-/

namespace A044907.P3979107222372170437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (6 * n : ℤ) (A051240 (n + 1)) + (n + 1 : ℤ)

end

end A044907.P3979107222372170437

/-! ## A044907.P17586719943006234662

`A016993(n)%A018521(n+2)`
-/

namespace A044907.P17586719943006234662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016993 n) (A018521 (n + 2))

end

end A044907.P17586719943006234662

/-! ## A044907.P10380573859576306719

`Δ[A001106(n)]%A018765(n+2)`
-/

namespace A044907.P10380573859576306719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001106 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A018765 (n + 2))

end

end A044907.P10380573859576306719

/-!
# A044908: Numbers whose base-7 run lengths alternate: odd, even, odd, ...

The programs for A044908, there is no canonical definition to state claims against.
-/

/-! ## A044908.P18007154344422133230

`(8*n+1)%A273605(A048031(2*n+1))`
-/

namespace A044908.P18007154344422133230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (8 * n + 1 : ℤ) (A273605 (A048031 (2 * n + 1)).toNat)

end

end A044908.P18007154344422133230

/-! ## A044908.P16975928771818548959

`A017077(n)%A173812(A145968(n+1))`
-/

namespace A044908.P16975928771818548959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017077 n) (A173812 (A145968 (n + 1)).toNat)

end

end A044908.P16975928771818548959

/-! ## A044908.P13177805482003436437

`∑[A122689(A132015(n+1)²)]`
-/

namespace A044908.P13177805482003436437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122689 (A132015 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044908.P13177805482003436437

/-! ## A044908.P3764321854084167754

`∑[A357136(A027642(n))]*n+1`
-/

namespace A044908.P3764321854084167754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357136 (A027642 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (n : ℤ) + 1

end

end A044908.P3764321854084167754

/-! ## A044908.P17876326375354030446

`n*A126760(A018369(n+1))+1`
-/

namespace A044908.P17876326375354030446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A126760 (A018369 (n + 1)).toNat + 1

end

end A044908.P17876326375354030446

/-!
# A044909: Numbers whose base-8 run lengths alternate: odd, even, odd, ...

The programs for A044909, there is no canonical definition to state claims against.
-/

/-! ## A044909.P13937679564891503681

`n*A014381(A173068(n+2))+1`
-/

namespace A044909.P13937679564891503681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A014381 (A173068 (n + 2)).toNat + 1

end

end A044909.P13937679564891503681

/-! ## A044909.P1342294003152857627

`(9*n+1)%A024604(A147495(n+1))`
-/

namespace A044909.P1342294003152857627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (9 * n + 1 : ℤ) (A024604 (A147495 (n + 1)).toNat)

end

end A044909.P1342294003152857627

/-! ## A044909.P8950096445338555353

`A017173(n)%A017187(A035039(n))`
-/

namespace A044909.P8950096445338555353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017173 n) (A017187 (A035039 n).toNat)

end

end A044909.P8950096445338555353

/-! ## A044909.P10246947982545378725

`A326833(n+1)%A016791(A036645(n))`
-/

namespace A044909.P10246947982545378725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326833 (n + 1)) (A016791 (A036645 n).toNat)

end

end A044909.P10246947982545378725

/-! ## A044909.P8999657256341517400

`A159797(∑[A000189(A187829(n+1)²)])`
-/

namespace A044909.P8999657256341517400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000189 (A187829 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159797 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A044909.P8999657256341517400

/-!
# A044910: Numbers whose base-9 run lengths alternate: odd, even, odd, ...

The programs for A044910, there is no canonical definition to state claims against.
-/

/-! ## A044910.P16423188144667567060

`A017281(n)%A017426(A075199(n+1))`
-/

namespace A044910.P16423188144667567060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017281 n) (A017426 (A075199 (n + 1)).toNat)

end

end A044910.P16423188144667567060

/-! ## A044910.P17270890447829184224

`A017281(n)%A011539(A251077(n))`
-/

namespace A044910.P17270890447829184224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017281 n) (A011539 (A251077 n).toNat)

end

end A044910.P17270890447829184224

/-! ## A044910.P13242404310571954316

`A066492(n+1)^A329332(A138775(n))`
-/

namespace A044910.P13242404310571954316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066492 (n + 1) : ℚ) ^ (A329332 (A138775 n).toNat : ℤ)

end

end A044910.P13242404310571954316

/-! ## A044910.P16862264906685006046

`A016861(2*n)%A272293(A251077(n))`
-/

namespace A044910.P16862264906685006046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016861 (2 * n)) (A272293 (A251077 n).toNat)

end

end A044910.P16862264906685006046

/-! ## A044910.P8806921537246569425

`A066492(n+1)^A333805(A274449(n+1))`
-/

namespace A044910.P8806921537246569425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066492 (n + 1) : ℚ) ^ (A333805 (A274449 (n + 1)).toNat : ℤ)

end

end A044910.P8806921537246569425

/-!
# A044911: Numbers whose base-10 run lengths alternate: odd, even, odd, ...

The programs for A044911, there is no canonical definition to state claims against.
-/

/-! ## A044911.P7286469290935742630

`A059995(A056524(n+1))`
-/

namespace A044911.P7286469290935742630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A056524 (n + 1)).toNat

end

end A044911.P7286469290935742630

/-! ## A044911.P17522302908437432127

`A059995(A110745(1+n))`
-/

namespace A044911.P17522302908437432127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A110745 (1 + n)).toNat

end

end A044911.P17522302908437432127

/-! ## A044911.P10735763758355973581

`A217657(A044836(n+1))`
-/

namespace A044911.P10735763758355973581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217657 (A044836 (n + 1)).toNat

end

end A044911.P10735763758355973581

/-! ## A044911.P330602182191767473

`A217657(A338754(n+1))`
-/

namespace A044911.P330602182191767473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217657 (A338754 (n + 1)).toNat

end

end A044911.P330602182191767473

/-! ## A044911.P10375177960564742167

`A053392(10*A051022(n+1))`
-/

namespace A044911.P10375177960564742167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053392 (10 * A051022 (n + 1)).toNat

end

end A044911.P10375177960564742167

/-! ## A044911.P9265178609048179645

`A059995(11*A066492(n+1))`
-/

namespace A044911.P9265178609048179645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (11 * A066492 (n + 1)).toNat

end

end A044911.P9265178609048179645

/-! ## A044911.P17134920397975686995

`A056965(A056143(n+1))+A056143(A004086(n+1))`
-/

namespace A044911.P17134920397975686995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 (A056143 (n + 1)).toNat + A056143 (A004086 (n + 1)).toNat

end

end A044911.P17134920397975686995

/-!
# A044912: Numbers whose base-11 run lengths alternate: odd, even, odd, ...

The programs for A044912, there is no canonical definition to state claims against.
-/

/-! ## A044912.P1590263472107709608

`A017533(n)%p?[A058710(A008616(n))]`
-/

namespace A044912.P1590263472107709608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058710 (A008616 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017533 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A044912.P1590263472107709608

/-! ## A044912.P1651296228892557469

`∑[A213217(A097601(n)+A009993(n+1))]`
-/

namespace A044912.P1651296228892557469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213217 (A097601 n + A009993 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044912.P1651296228892557469

/-! ## A044912.P17801750110434313653

`(A110745(n+1)%A262868(A163393(n+1))-2*(n+1))/9`
-/

namespace A044912.P17801750110434313653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A110745 (n + 1)) (A262868 (A163393 (n + 1)).toNat) - (2 * (n + 1) : ℤ) : ℚ) / 9

end

end A044912.P17801750110434313653

/-! ## A044912.P575359920223928268

`11*n*A317624(A323522(n))+n+1`
-/

namespace A044912.P575359920223928268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (11 * n : ℤ) * A317624 (A323522 n).toNat + (n + 1 : ℤ)

end

end A044912.P575359920223928268

/-!
# A044913: Numbers whose base-12 run lengths alternate: odd, even, odd, ...

The programs for A044913, there is no canonical definition to state claims against.
-/

/-! ## A044913.P7523573673385810124

`record[A106614(A048309(n^A178334(n)))]`
-/

namespace A044913.P7523573673385810124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106614 (A048309 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044913.P7523573673385810124

/-! ## A044913.P15620810407101920086

`record[A106614(A048309(n^A178489(n)))]`
-/

namespace A044913.P15620810407101920086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106614 (A048309 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178489 n : ℤ))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044913.P15620810407101920086

/-! ## A044913.P7679742393347324697

`n*A320356(A002137(round(n/3)))+1`
-/

namespace A044913.P7679742393347324697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A320356 (A002137 (SequenceMachineLib.roundAway ((n : ℚ) / 3)).toNat).toNat + 1

end

end A044913.P7679742393347324697

/-! ## A044913.P16930967115270724197

`∑[gcd(A079574(n+1), A269522(n))]`
-/

namespace A044913.P16930967115270724197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A079574 (n + 1)) (A269522 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044913.P16930967115270724197

/-!
# A044914: Numbers whose base-13 run lengths alternate: odd, even, odd, ...

The programs for A044914, there is no canonical definition to state claims against.
-/

/-! ## A044914.P3686902532083892389

`n*A011784(A146711(n+1))+1`
-/

namespace A044914.P3686902532083892389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011784 (A146711 (n + 1)).toNat + 1

end

end A044914.P3686902532083892389

/-! ## A044914.P13998994534299299345

`n*A181721(A145957(n+1))+1`
-/

namespace A044914.P13998994534299299345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A181721 (A145957 (n + 1)).toNat + 1

end

end A044914.P13998994534299299345

/-! ## A044914.P13068488035667303530

`xor(A011856(A185213(n)), A043317(n+1))`
-/

namespace A044914.P13068488035667303530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A011856 (A185213 n).toNat) (A043317 (n + 1))

end

end A044914.P13068488035667303530

/-! ## A044914.P8479548745818964200

`A032741(∑[A180160(n)]^n)*A109613(n)+n+1`
-/

namespace A044914.P8479548745818964200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180160 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ n).toNat * A109613 n + (n + 1 : ℤ)

end

end A044914.P8479548745818964200

/-!
# A044915: Numbers whose base-14 run lengths alternate: odd, even, odd, ...

The programs for A044915, there is no canonical definition to state claims against.
-/

/-! ## A044915.P2262811386336075871

`A057846(A161951(n+1))%A090877(n+1)`
-/

namespace A044915.P2262811386336075871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057846 (A161951 (n + 1)).toNat) (A090877 (n + 1))

end

end A044915.P2262811386336075871

/-!
# A044916: Numbers whose base-15 run lengths alternate: odd, even, odd, ...

The programs for A044916, there is no canonical definition to state claims against.
-/

/-! ## A044916.P16866839819637842926

`A048312(∑[A187829(n+1)^A070105(n+1)])`
-/

namespace A044916.P16866839819637842926
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187829 (n + 1) : ℚ) ^ (A070105 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048312 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A044916.P16866839819637842926

/-! ## A044916.P2205567800574283128

`A185284(A072154(n))+A043319(n+1)`
-/

namespace A044916.P2205567800574283128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A072154 n).toNat + A043319 (n + 1)

end

end A044916.P2205567800574283128

/-! ## A044916.P18435794861804816736

`A185284(A324690(n))+A043319(n+1)`
-/

namespace A044916.P18435794861804816736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A324690 n).toNat + A043319 (n + 1)

end

end A044916.P18435794861804816736

/-! ## A044916.P4066011425274221720

`A185284(A246080(n+1))+A043319(n+1)`
-/

namespace A044916.P4066011425274221720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A246080 (n + 1)).toNat + A043319 (n + 1)

end

end A044916.P4066011425274221720

/-! ## A044916.P11658802965609267137

`A185284(A258028(n+1))+A043319(n+1)`
-/

namespace A044916.P11658802965609267137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A258028 (n + 1)).toNat + A043319 (n + 1)

end

end A044916.P11658802965609267137

/-!
# A044917: Numbers whose base-16 run lengths alternate: odd, even, odd, ...

The programs for A044917, there is no canonical definition to state claims against.
-/

/-! ## A044917.P2118470347634745233

`A185294(A007094(n))+A043320(n+1)`
-/

namespace A044917.P2118470347634745233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185294 (A007094 n).toNat + A043320 (n + 1)

end

end A044917.P2118470347634745233

/-! ## A044917.P3388550830725065285

`xor(A043320(n+1), A058348(A000009(n)))`
-/

namespace A044917.P3388550830725065285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A043320 (n + 1)) (A058348 (A000009 n).toNat)

end

end A044917.P3388550830725065285

/-! ## A044917.P17996266447527165655

`A198318(A332405(n+1))+A043320(n+1)`
-/

namespace A044917.P17996266447527165655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198318 (A332405 (n + 1)).toNat + A043320 (n + 1)

end

end A044917.P17996266447527165655

/-! ## A044917.P12456507647046165984

`xor(A033014(n+1)/17, A058348(A000009(n)))`
-/

namespace A044917.P12456507647046165984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway ((A033014 (n + 1) : ℚ) / 17)) (A058348 (A000009 n).toNat)

end

end A044917.P12456507647046165984

/-!
# A044918: Positive integers whose base-2 run lengths form a palindrome.

The programs for A044918, the canonical program `A044918.P15631491038652286374` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A044918 has offset 1).

The definition of A044918 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A044918.P15631491038652286374

`floor(A281379(n+3)/2)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A044918

/-- `floor(A281379(n+3)/2)` -/
def P15631491038652286374.Spec : Prop :=
  ∀ n, P15631491038652286374.a n = A044918 (n + 1)

theorem P15631491038652286374.correct : P15631491038652286374.Spec := by
  intro n
  simp only [A044918, Nat.add_sub_cancel]

end A044918

/-! ## A044918.P659812085835844868

`eq[n+1, A056539(n+1)]+1`
-/

namespace A044918.P659812085835844868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A044918.P659812085835844868

namespace A044918

/-- `eq[n+1, A056539(n+1)]+1` -/
def P659812085835844868.Spec : Prop :=
  ∀ n, (P659812085835844868.a n : ℤ) = A044918 (n + 1)

end A044918

/-! ## A044918.P14427494301041278770

`eq[n, A056539(A028310(n))]`
-/

namespace A044918.P14427494301041278770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044918.P14427494301041278770

namespace A044918

/-- `eq[n, A056539(A028310(n))]` -/
def P14427494301041278770.Spec : Prop :=
  ∀ n, (P14427494301041278770.a n : ℤ) = A044918 (n + 1)

end A044918

/-! ## A044918.P16057369512261209628

`record[gcd(A028310(n), A056539(n))]`
-/

namespace A044918.P16057369512261209628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028310 n) (A056539 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044918.P16057369512261209628

namespace A044918

/-- `record[gcd(A028310(n), A056539(n))]` -/
def P16057369512261209628.Spec : Prop :=
  ∀ n, (P16057369512261209628.a n : ℤ) = A044918 (n + 1)

end A044918

/-! ## A044918.P14028393506356200160

`eq[n, A056539(A000038(n)+n)]`
-/

namespace A044918.P14028393506356200160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044918.P14028393506356200160

namespace A044918

/-- `eq[n, A056539(A000038(n)+n)]` -/
def P14028393506356200160.Spec : Prop :=
  ∀ n, (P14028393506356200160.a n : ℤ) = A044918 (n + 1)

end A044918

/-! ## A044918.P1922096433630536266

`eq[n-A000038(n), A056539(n)]`
-/

namespace A044918.P1922096433630536266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044918.P1922096433630536266

namespace A044918

/-- `eq[n-A000038(n), A056539(n)]` -/
def P1922096433630536266.Spec : Prop :=
  ∀ n, (P1922096433630536266.a n : ℤ) = A044918 (n + 1)

end A044918

/-! ## A044918.P1923574009359347413

`record[A280503(n+1)]`
-/

namespace A044918.P1923574009359347413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044918.P1923574009359347413

namespace A044918

/-- `record[A280503(n+1)]` -/
def P1923574009359347413.Spec : Prop :=
  ∀ n, P1923574009359347413.a n = A044918 (n + 1)

end A044918

/-! ## A044918.P11026727581799434525

`record[(n+1)/A280504(n+1)]`
-/

namespace A044918.P11026727581799434525
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A280504 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044918.P11026727581799434525

namespace A044918

/-- `record[(n+1)/A280504(n+1)]` -/
def P11026727581799434525.Spec : Prop :=
  ∀ n, P11026727581799434525.a n = (A044918 (n + 1) : ℚ)

end A044918

/-! ## A044918.P14767590370270707717

`eq[n, A056539(n%A033570(a(n-1)))]` with `a(0)=2`
-/

namespace A044918.P14767590370270707717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A056539 (Int.tmod (n : ℤ) (A033570 (f2 (n - 1)).toNat)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044918.P14767590370270707717

namespace A044918

/-- `eq[n, A056539(n%A033570(a(n-1)))]` -/
def P14767590370270707717.Spec : Prop :=
  ∀ n, (P14767590370270707717.a n : ℤ) = A044918 (n + 1)

end A044918

/-! ## A044918.P12941378392682795577

`A053645(A137595(n+2))`
-/

namespace A044918.P12941378392682795577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A137595 (n + 2)).toNat

end

end A044918.P12941378392682795577

namespace A044918

/-- `A053645(A137595(n+2))` -/
def P12941378392682795577.Spec : Prop :=
  ∀ n, P12941378392682795577.a n = A044918 (n + 1)

end A044918

/-!
# A044919: Numbers whose base-3 run lengths form a palindrome.

The programs for A044919, there is no canonical definition to state claims against.
-/

/-! ## A044919.P2088888710592421337

`eq[n+1, A285916(n+1)]+1`
-/

namespace A044919.P2088888710592421337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285916 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A044919.P2088888710592421337

/-! ## A044919.P8469406534463576727

`eq[n, A285916(A028310(n))]`
-/

namespace A044919.P8469406534463576727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285916 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044919.P8469406534463576727

/-! ## A044919.P1810459190283039775

`eq[A008486(n), A008585(A285916(n))]`
-/

namespace A044919.P1810459190283039775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A285916 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044919.P1810459190283039775

/-! ## A044919.P4527448533734494336

`eq[A008574(n), A008586(A285916(n))]`
-/

namespace A044919.P4527448533734494336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A285916 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044919.P4527448533734494336

/-! ## A044919.P2482273471330826077

`eq[n, A285916(A008619(A004275(n)))]`
-/

namespace A044919.P2482273471330826077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285916 (A008619 (A004275 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044919.P2482273471330826077

/-! ## A044919.P9490596883042465241

`eq[n, A285916(A008619(A004273(n)))]`
-/

namespace A044919.P9490596883042465241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285916 (A008619 (A004273 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044919.P9490596883042465241

/-! ## A044919.P16505547600737088514

`eq[A065033(A004273(n)), A285916(n)]`
-/

namespace A044919.P16505547600737088514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A004273 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285916 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044919.P16505547600737088514

/-! ## A044919.P8021003343871926303

`eq[A065033(2*n), A285916(n)]`
-/

namespace A044919.P8021003343871926303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285916 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044919.P8021003343871926303

/-! ## A044919.P15398894940266156374

`eq[A123108(2*n), A285916(n)]`
-/

namespace A044919.P15398894940266156374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285916 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044919.P15398894940266156374

/-! ## A044919.P8316948924721628576

`eq[n, A285916(A065033(A042948(n)))]`
-/

namespace A044919.P8316948924721628576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285916 (A065033 (A042948 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044919.P8316948924721628576

/-! ## A044919.P13906571372657221682

`eq[n, A065033(A285916(n)+n)]`
-/

namespace A044919.P13906571372657221682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A285916 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044919.P13906571372657221682

/-! ## A044919.P13621525618132077371

`eq[n, A123108(A285916(n)+n)]`
-/

namespace A044919.P13621525618132077371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A285916 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044919.P13621525618132077371

/-!
# A044920: Numbers whose base-4 run lengths form a palindrome.

The programs for A044920, there is no canonical definition to state claims against.
-/

/-! ## A044920.P14080688544972554653

`eq[0, A281084(A129282(n))]`
-/

namespace A044920.P14080688544972554653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281084 (A129282 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044920.P14080688544972554653

/-! ## A044920.P5435371795225692694

`lt[A005899(A234434(n+5)), A286437(n+3)]`
-/

namespace A044920.P5435371795225692694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005899 (A234434 (n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286437 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A044920.P5435371795225692694

/-!
# A044921: Numbers whose base-5 run lengths form a palindrome.

The programs for A044921, there is no canonical definition to state claims against.
-/

/-! ## A044921.P8942223656520236498

`lt[A120454(A120424(n)), A120426(n+1)]`
-/

namespace A044921.P8942223656520236498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120454 (A120424 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120426 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A044921.P8942223656520236498

/-! ## A044921.P1268278167560578559

`lt[A303700(A289342(n+1)), A303743(n+1)]`
-/

namespace A044921.P1268278167560578559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303700 (A289342 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303743 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A044921.P1268278167560578559

/-! ## A044921.P16269537517695788634

`lt[A353970(n), A265745(A000292(n))]`
-/

namespace A044921.P16269537517695788634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353970 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265745 (A000292 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A044921.P16269537517695788634

/-! ## A044921.P16238277656482182530

`lt[A341973(A015723(n+4)), A000203(n+1)]`
-/

namespace A044921.P16238277656482182530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341973 (A015723 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A044921.P16238277656482182530

/-! ## A044921.P6175963298456477456

`lt[A058187(A176846(n+1)), A005117(2*n+1)]`
-/

namespace A044921.P6175963298456477456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058187 (A176846 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A044921.P6175963298456477456

/-!
# A044922: Base 6 run lengths form a palindrome.

The programs for A044922, there is no canonical definition to state claims against.
-/

/-! ## A044922.P13940091463692552279

`eq[char[A044862(n+1)], A151933(n)]`
-/

namespace A044922.P13940091463692552279
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044862 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A044922.P13940091463692552279

/-! ## A044922.P341525382846612638

`lt[A025826(A034091(n+1)), A046682(n)]`
-/

namespace A044922.P341525382846612638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025826 (A034091 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046682 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A044922.P341525382846612638

/-! ## A044922.P13707724236855565141

`lt[A176868(A059169(n+1)), A018804(n+1)]`
-/

namespace A044922.P13707724236855565141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176868 (A059169 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018804 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A044922.P13707724236855565141

/-! ## A044922.P15944928362041492196

`lt[A298622(n+5), A299476(n)]`
-/

namespace A044922.P15944928362041492196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298622 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A044922.P15944928362041492196

/-! ## A044922.P17181073082667016456

`∑[∏{e}[A094262(n+1), A093127(#)]]`
-/

namespace A044922.P17181073082667016456
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094262 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, A093127 (Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044922.P17181073082667016456

/-!
# A044923: Base 7 run lengths form a palindrome.

The programs for A044923, there is no canonical definition to state claims against.
-/

/-! ## A044923.P914019328203088524

`∑[A030215(A273602(n))!]`
-/

namespace A044923.P914019328203088524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A030215 (A273602 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044923.P914019328203088524

/-! ## A044923.P17713397285189616671

`∑[A179959(A322832(n))!]`
-/

namespace A044923.P17713397285189616671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A179959 (A322832 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044923.P17713397285189616671

/-! ## A044923.P7220739861821072927

`∑[A006466(∑[A112167(n)²])]`
-/

namespace A044923.P7220739861821072927
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112167 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006466 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044923.P7220739861821072927

/-! ## A044923.P3818765119526419160

`∑[A321750(A321724(n+1))!]`
-/

namespace A044923.P3818765119526419160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A321750 (A321724 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044923.P3818765119526419160

/-! ## A044923.P13695494665228528782

`∑[A000010(runs[A329288(n+1)])]`
-/

namespace A044923.P13695494665228528782
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329288 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044923.P13695494665228528782

/-! ## A044923.P3086024464797264864

`∑[gcd(A000002(3*n+1), A089025(n+1))]`
-/

namespace A044923.P3086024464797264864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000002 (3 * n + 1)) (A089025 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044923.P3086024464797264864

/-! ## A044923.P9499647665911869753

`∑[A371735(A390673(n+1))!]`
-/

namespace A044923.P9499647665911869753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A371735 (A390673 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044923.P9499647665911869753

/-! ## A044923.P8245420522266055565

`∑[A085491(A381719(n+4))!]`
-/

namespace A044923.P8245420522266055565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A085491 (A381719 (n + 4)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044923.P8245420522266055565

/-! ## A044923.P1098873435106941639

`∑[A005676(runs[A296774(n+1)])]`
-/

namespace A044923.P1098873435106941639
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296774 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005676 (SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044923.P1098873435106941639

/-! ## A044923.P4074491399454382657

`∑[runs[A085219(A320924(n+1))]]`
-/

namespace A044923.P4074491399454382657
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085219 (A320924 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044923.P4074491399454382657

/-!
# A044924: a(n) = so - se, where so(se) = sum of odd(even) base-2 run lengths of n.

The programs for A044924, there is no canonical definition to state claims against.
-/

/-! ## A044924.P1911552680004289153

`A044925(A005836(n+2))`
-/

namespace A044924.P1911552680004289153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044925 (A005836 (n + 2)).toNat

end

end A044924.P1911552680004289153

/-! ## A044924.P9796227507124170650

`A044925(A005823(n+2)/2)`
-/

namespace A044924.P9796227507124170650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044925 (SequenceMachineLib.roundAway ((A005823 (n + 2) : ℚ) / 2)).toNat

end

end A044924.P9796227507124170650

/-! ## A044924.P1780306428934271365

`A044925(A055661(n+1))`
-/

namespace A044924.P1780306428934271365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044925 (A055661 (n + 1)).toNat

end

end A044924.P1780306428934271365

/-! ## A044924.P9930855431613297369

`A044925(A005823(n+2))`
-/

namespace A044924.P9930855431613297369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044925 (A005823 (n + 2)).toNat

end

end A044924.P9930855431613297369

/-! ## A044924.P10917618656693123857

`A044926(∑[(∑{d}[2^val(n+1, 2), #²]+1)/2])`
-/

namespace A044924.P10917618656693123857
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (n + 1) 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), d ^ 2 + 1 : ℕ) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044926 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A044924.P10917618656693123857

/-! ## A044924.P10554849209709768575

`A044926(A000695(n+1))`
-/

namespace A044924.P10554849209709768575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044926 (A000695 (n + 1)).toNat

end

end A044924.P10554849209709768575

/-! ## A044924.P8044129615023577192

`A044926(A374625(n+1))`
-/

namespace A044924.P8044129615023577192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044926 (A374625 (n + 1)).toNat

end

end A044924.P8044129615023577192

/-! ## A044924.P15981167979348250543

`A044926(A062880(n+1)/2)`
-/

namespace A044924.P15981167979348250543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044926 (SequenceMachineLib.roundAway ((A062880 (n + 1) : ℚ) / 2)).toNat

end

end A044924.P15981167979348250543

/-! ## A044924.P12751438524319597288

`A044926(A062880(n+1))`
-/

namespace A044924.P12751438524319597288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044926 (A062880 (n + 1)).toNat

end

end A044924.P12751438524319597288

/-! ## A044924.P13907026303497613315

`A044926(A179888(n+1))`
-/

namespace A044924.P13907026303497613315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044926 (A179888 (n + 1)).toNat

end

end A044924.P13907026303497613315

/-!
# A044925: a(n)=so-se, where so(se)=sum of odd(even) base 3 run lengths of n.

The programs for A044925, there is no canonical definition to state claims against.
-/

/-! ## A044925.P1388829539437294817

`A044924(A371256(n+1))`
-/

namespace A044925.P1388829539437294817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044924 (A371256 (n + 1)).toNat

end

end A044925.P1388829539437294817

/-! ## A044925.P17573730547330397925

`A044926(A023717(1+n))`
-/

namespace A044925.P17573730547330397925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044926 (A023717 (1 + n)).toNat

end

end A044925.P17573730547330397925

/-! ## A044925.P963354693898968997

`A044926(A023713(n+2))`
-/

namespace A044925.P963354693898968997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044926 (A023713 (n + 2)).toNat

end

end A044925.P963354693898968997

/-! ## A044925.P1302654033131988027

`A044926(A006288(n+1))`
-/

namespace A044925.P1302654033131988027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044926 (A006288 (n + 1)).toNat

end

end A044925.P1302654033131988027

/-! ## A044925.P10297902106795685827

`A044926(A023709(n+2))`
-/

namespace A044925.P10297902106795685827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044926 (A023709 (n + 2)).toNat

end

end A044925.P10297902106795685827

/-! ## A044925.P15559046243023655479

`A044927(A037453(n+1))`
-/

namespace A044925.P15559046243023655479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044927 (A037453 (n + 1)).toNat

end

end A044925.P15559046243023655479

/-! ## A044925.P1371712011265973805

`A044928(A037454(n+1))`
-/

namespace A044925.P1371712011265973805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044928 (A037454 (n + 1)).toNat

end

end A044925.P1371712011265973805

/-! ## A044925.P12811668567228389029

`A044931(A037314(n+1))`
-/

namespace A044925.P12811668567228389029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044931 (A037314 (n + 1)).toNat

end

end A044925.P12811668567228389029

/-! ## A044925.P13549628291095735721

`A044931(A319497(n+1))`
-/

namespace A044925.P13549628291095735721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044931 (A319497 (n + 1)).toNat

end

end A044925.P13549628291095735721

/-! ## A044925.P8047258747740875019

`A044929(A037455(n+1))`
-/

namespace A044925.P8047258747740875019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044929 (A037455 (n + 1)).toNat

end

end A044925.P8047258747740875019

/-! ## A044925.P13451473862641937468

`A044930(A037456(n+1))`
-/

namespace A044925.P13451473862641937468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044930 (A037456 (n + 1)).toNat

end

end A044925.P13451473862641937468

/-! ## A044925.P5435347813094977542

`A044931(A208665(n+1))`
-/

namespace A044925.P5435347813094977542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044931 (A208665 (n + 1)).toNat

end

end A044925.P5435347813094977542

/-! ## A044925.P14227967309843524820

`A044931(A338086(n+1))`
-/

namespace A044925.P14227967309843524820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044931 (A338086 (n + 1)).toNat

end

end A044925.P14227967309843524820

/-!
# A044926: a(n)=so-se, where so(se)=sum of odd(even) base 4 run lengths of n.

The programs for A044926, there is no canonical definition to state claims against.
-/

/-! ## A044926.P15274472127867800984

`A044927(A037459(n+1))`
-/

namespace A044926.P15274472127867800984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044927 (A037459 (n + 1)).toNat

end

end A044926.P15274472127867800984

/-! ## A044926.P8668464567044483437

`A044927(A020654(n+2))`
-/

namespace A044926.P8668464567044483437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044927 (A020654 (n + 2)).toNat

end

end A044926.P8668464567044483437

/-! ## A044926.P858990858402029772

`A044927(A023733(n+2))`
-/

namespace A044926.P858990858402029772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044927 (A023733 (n + 2)).toNat

end

end A044926.P858990858402029772

/-! ## A044926.P9286614377511148410

`A044927(A023729(n+2))`
-/

namespace A044926.P9286614377511148410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044927 (A023729 (n + 2)).toNat

end

end A044926.P9286614377511148410

/-! ## A044926.P6553184788010263589

`A044927(A023725(n+2))`
-/

namespace A044926.P6553184788010263589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044927 (A023725 (n + 2)).toNat

end

end A044926.P6553184788010263589

/-! ## A044926.P6139165048369380235

`A044928(A037460(n+1))`
-/

namespace A044926.P6139165048369380235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044928 (A037460 (n + 1)).toNat

end

end A044926.P6139165048369380235

/-! ## A044926.P2751948523112642893

`A044931(A037463(n+1))`
-/

namespace A044926.P2751948523112642893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044931 (A037463 (n + 1)).toNat

end

end A044926.P2751948523112642893

/-! ## A044926.P11521042769950680612

`A044931(A005836(n+2))`
-/

namespace A044926.P11521042769950680612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044931 (A005836 (n + 2)).toNat

end

end A044926.P11521042769950680612

/-! ## A044926.P3308374319891182006

`A044931(A005823(n+2)/2)`
-/

namespace A044926.P3308374319891182006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044931 (SequenceMachineLib.roundAway ((A005823 (n + 2) : ℚ) / 2)).toNat

end

end A044926.P3308374319891182006

/-! ## A044926.P5609426783015548195

`A044929(A037461(n+1))`
-/

namespace A044926.P5609426783015548195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044929 (A037461 (n + 1)).toNat

end

end A044926.P5609426783015548195

/-! ## A044926.P12642278570202365560

`A044931(A005823(n+2))`
-/

namespace A044926.P12642278570202365560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044931 (A005823 (n + 2)).toNat

end

end A044926.P12642278570202365560

/-! ## A044926.P12489819254841307919

`A044931(record[A004488(n+1)])`
-/

namespace A044926.P12489819254841307919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044931 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A044926.P12489819254841307919

/-! ## A044926.P5037029370126485219

`A044930(A037462(n+1))`
-/

namespace A044926.P5037029370126485219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044930 (A037462 (n + 1)).toNat

end

end A044926.P5037029370126485219

/-! ## A044926.P3344836768075406416

`A044931(record[A060372(n+1)])`
-/

namespace A044926.P3344836768075406416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060372 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044931 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A044926.P3344836768075406416

/-! ## A044926.P14723314990430025624

`A044931(eq[3, A321882(n)])`
-/

namespace A044926.P14723314990430025624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321882 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044931 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044926.P14723314990430025624

/-! ## A044926.P9922711798738315883

`A044932(A007090(n+1))`
-/

namespace A044926.P9922711798738315883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044932 (A007090 (n + 1)).toNat

end

end A044926.P9922711798738315883

/-! ## A044926.P12864039991571332808

`A044932(A007284(n+1))`
-/

namespace A044926.P12864039991571332808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044932 (A007284 (n + 1)).toNat

end

end A044926.P12864039991571332808

/-! ## A044926.P5109482259893441594

`A044932(A046030(n+2))`
-/

namespace A044926.P5109482259893441594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044932 (A046030 (n + 2)).toNat

end

end A044926.P5109482259893441594

/-! ## A044926.P17264980580606683376

`A044932(A001743(n+2))`
-/

namespace A044926.P17264980580606683376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044932 (A001743 (n + 2)).toNat

end

end A044926.P17264980580606683376

/-!
# A044927: a(n)=so-se, where so(se)=sum of odd(even) base 5 run lengths of n.

The programs for A044927, there is no canonical definition to state claims against.
-/

/-! ## A044927.P9686991871484575496

`A044928(A037465(n+1))`
-/

namespace A044927.P9686991871484575496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044928 (A037465 (n + 1)).toNat

end

end A044927.P9686991871484575496

/-! ## A044927.P2029081786230185782

`A044931(A037468(n+1))`
-/

namespace A044927.P2029081786230185782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044931 (A037468 (n + 1)).toNat

end

end A044927.P2029081786230185782

/-! ## A044927.P3800053700694267790

`A044929(A037466(n+1))`
-/

namespace A044927.P3800053700694267790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044929 (A037466 (n + 1)).toNat

end

end A044927.P3800053700694267790

/-! ## A044927.P555885772724439143

`A044930(A037467(n+1))`
-/

namespace A044927.P555885772724439143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044930 (A037467 (n + 1)).toNat

end

end A044927.P555885772724439143

/-! ## A044927.P11969920088334057155

`A044931(record[A163327(n+1)])`
-/

namespace A044927.P11969920088334057155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163327 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044931 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A044927.P11969920088334057155

/-! ## A044927.P5220375548288349403

`A044932(A007091(n+1))`
-/

namespace A044927.P5220375548288349403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044932 (A007091 (n + 1)).toNat

end

end A044927.P5220375548288349403

/-! ## A044927.P6927829233806764715

`A044932(A054047(n+1))`
-/

namespace A044927.P6927829233806764715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044932 (A054047 (n + 1)).toNat

end

end A044927.P6927829233806764715

/-! ## A044927.P5996318638660828521

`A044932(A080228(n+2))`
-/

namespace A044927.P5996318638660828521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044932 (A080228 (n + 2)).toNat

end

end A044927.P5996318638660828521

/-! ## A044927.P17043839946679064156

`A044932(A014263(n+2)/2)`
-/

namespace A044927.P17043839946679064156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044932 (SequenceMachineLib.roundAway ((A014263 (n + 2) : ℚ) / 2)).toNat

end

end A044927.P17043839946679064156

/-! ## A044927.P10085061022650287714

`A044932(A001744(n+2))`
-/

namespace A044927.P10085061022650287714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044932 (A001744 (n + 2)).toNat

end

end A044927.P10085061022650287714

/-! ## A044927.P1516781223107809274

`A044932(A014263(n+2))`
-/

namespace A044927.P1516781223107809274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044932 (A014263 (n + 2)).toNat

end

end A044927.P1516781223107809274

/-! ## A044927.P12791856132794865193

`A044932(A072960(n+2))`
-/

namespace A044927.P12791856132794865193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044932 (A072960 (n + 2)).toNat

end

end A044927.P12791856132794865193

/-! ## A044927.P18084824376024030409

`A044931(record[A316823(n+1)])`
-/

namespace A044927.P18084824376024030409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316823 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044931 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A044927.P18084824376024030409

/-!
# A044928: a(n)=so-se, where so(se)=sum of odd(even) base 6 run lengths of n.

The programs for A044928, there is no canonical definition to state claims against.
-/

/-! ## A044928.P14917129786763991168

`A044931(A037472(1+n))`
-/

namespace A044928.P14917129786763991168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044931 (A037472 (1 + n)).toNat

end

end A044928.P14917129786763991168

/-! ## A044928.P10276233178214906842

`A044929(A020657(n+2))`
-/

namespace A044928.P10276233178214906842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044929 (A020657 (n + 2)).toNat

end

end A044928.P10276233178214906842

/-! ## A044928.P11929007828799958514

`A044929(A249102(n+2))`
-/

namespace A044928.P11929007828799958514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044929 (A249102 (n + 2)).toNat

end

end A044928.P11929007828799958514

/-! ## A044928.P6293472423283441980

`A044930(A037471(n+1))`
-/

namespace A044928.P6293472423283441980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044930 (A037471 (n + 1)).toNat

end

end A044928.P6293472423283441980

/-! ## A044928.P16936494104021860664

`A044932(A007092(n+1))`
-/

namespace A044928.P16936494104021860664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044932 (A007092 (n + 1)).toNat

end

end A044928.P16936494104021860664

/-! ## A044928.P14787637437360412560

`A044932(A084984(n+2))`
-/

namespace A044928.P14787637437360412560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044932 (A084984 (n + 2)).toNat

end

end A044928.P14787637437360412560

/-! ## A044928.P2180166974224711136

`A044932(A202267(n+2))`
-/

namespace A044928.P2180166974224711136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044932 (A202267 (n + 2)).toNat

end

end A044928.P2180166974224711136

/-! ## A044928.P13888054968010576770

`A044932(A321702(n+2))`
-/

namespace A044928.P13888054968010576770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044932 (A321702 (n + 2)).toNat

end

end A044928.P13888054968010576770

/-! ## A044928.P10570552547718774944

`A044932(A276138(n+2))`
-/

namespace A044928.P10570552547718774944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044932 (A276138 (n + 2)).toNat

end

end A044928.P10570552547718774944

/-! ## A044928.P12362841867080612709

`A044932(A137386(n+2))`
-/

namespace A044928.P12362841867080612709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044932 (A137386 (n + 2)).toNat

end

end A044928.P12362841867080612709

/-!
# A044929: a(n)=so-se, where so(se)=sum of odd(even) base 7 run lengths of n.

The programs for A044929, there is no canonical definition to state claims against.
-/

/-! ## A044929.P1818053124983260516

`A044931(A037475(n+1))`
-/

namespace A044929.P1818053124983260516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044931 (A037475 (n + 1)).toNat

end

end A044929.P1818053124983260516

/-! ## A044929.P17300283821426019443

`A044930(A037474(1+n))`
-/

namespace A044929.P17300283821426019443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044930 (A037474 (1 + n)).toNat

end

end A044929.P17300283821426019443

/-! ## A044929.P7600758325256787706

`A044932(A007093(n+1))`
-/

namespace A044929.P7600758325256787706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044932 (A007093 (n + 1)).toNat

end

end A044929.P7600758325256787706

/-! ## A044929.P6158430460708999963

`A044932(A168501(n+2))`
-/

namespace A044929.P6158430460708999963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044932 (A168501 (n + 2)).toNat

end

end A044929.P6158430460708999963

/-! ## A044929.P9652383089579858737

`A044932(A307913(n+2))`
-/

namespace A044929.P9652383089579858737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044932 (A307913 (n + 2)).toNat

end

end A044929.P9652383089579858737

/-! ## A044929.P10275387505599059571

`A044932(A028374(n+2))`
-/

namespace A044929.P10275387505599059571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044932 (A028374 (n + 2)).toNat

end

end A044929.P10275387505599059571

/-! ## A044929.P17171003362252051145

`A044931(A361780(n+1)+1)`
-/

namespace A044929.P17171003362252051145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044931 (A361780 (n + 1) + 1).toNat

end

end A044929.P17171003362252051145

/-! ## A044929.P7545709212107813972

`A044931(A361780(n+2))`
-/

namespace A044929.P7545709212107813972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044931 (A361780 (n + 2)).toNat

end

end A044929.P7545709212107813972

/-! ## A044929.P10822670220073690314

`A044931(A072957(n+1))`
-/

namespace A044929.P10822670220073690314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044931 (A072957 (n + 1)).toNat

end

end A044929.P10822670220073690314

/-!
# A044930: a(n)=so-se, where so(se)=sum of odd(even) base 8 run lengths of n.

The programs for A044930, there is no canonical definition to state claims against.
-/

/-! ## A044930.P17165496039900767577

`A044931(A037477(1+n))`
-/

namespace A044930.P17165496039900767577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044931 (A037477 (1 + n)).toNat

end

end A044930.P17165496039900767577

/-! ## A044930.P12970495908079959910

`A044932(A007094(n+1))`
-/

namespace A044930.P12970495908079959910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044932 (A007094 (n + 1)).toNat

end

end A044930.P12970495908079959910

/-! ## A044930.P1694154508875740014

`A044932(eq[n, A035043(A028310(n))])`
-/

namespace A044930.P1694154508875740014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044932 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044930.P1694154508875740014

/-! ## A044930.P3298180028303827042

`A044932(eq[n, A222245(A028310(n))])`
-/

namespace A044930.P3298180028303827042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222245 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044932 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044930.P3298180028303827042

/-! ## A044930.P4007586360584594803

`A044932(eq[n, A222251(A028310(n))])`
-/

namespace A044930.P4007586360584594803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222251 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044932 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044930.P4007586360584594803

/-! ## A044930.P9982766174741616640

`A044931(eq[A233583(n+1), A351870(n)])`
-/

namespace A044930.P9982766174741616640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044931 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A044930.P9982766174741616640

/-!
# A044931: a(n) = so-se, where so(se)=sum of odd(even) base 9 run lengths of n.

The programs for A044931, there is no canonical definition to state claims against.
-/

/-! ## A044931.P13565069361962571747

`A044932(A007095(n+1))`
-/

namespace A044931.P13565069361962571747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044932 (A007095 (n + 1)).toNat

end

end A044931.P13565069361962571747

/-! ## A044931.P1311832511464934189

`A044932(record[A004179(n+1)])`
-/

namespace A044931.P1311832511464934189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004179 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044932 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A044931.P1311832511464934189

/-! ## A044931.P9018841703962362316

`A044932(record[A035043(n+1)])`
-/

namespace A044931.P9018841703962362316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044932 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A044931.P9018841703962362316

/-! ## A044931.P14303110357722729296

`A044932(record[A222252(n+1)])`
-/

namespace A044931.P14303110357722729296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044932 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A044931.P14303110357722729296

/-! ## A044931.P13845149569675803649

`A044932(record[A004176(n+2)])`
-/

namespace A044931.P13845149569675803649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004176 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044932 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A044931.P13845149569675803649

/-! ## A044931.P7318199375747367233

`A044932(record[A235049(n+2)])`
-/

namespace A044931.P7318199375747367233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044932 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A044931.P7318199375747367233

/-! ## A044931.P13115236299927943486

`A044932(eq[A004176(n), A028310(n)])`
-/

namespace A044931.P13115236299927943486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004176 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044932 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A044931.P13115236299927943486

/-! ## A044931.P14823446468160375116

`A044932(eq[A000007(n), A316866(n)])`
-/

namespace A044931.P14823446468160375116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316866 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044932 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A044931.P14823446468160375116

/-! ## A044931.P7407197216934145881

`A044932(eq[A000007(n), A316868(n)])`
-/

namespace A044931.P7407197216934145881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316868 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044932 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A044931.P7407197216934145881

/-! ## A044931.P17682884571475553798

`A044932(eq[A044940(n+1), A151933(n)])`
-/

namespace A044931.P17682884571475553798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044940 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044932 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A044931.P17682884571475553798

/-!
# A044932: a(n)=so-se, where so(se)=sum of odd(even) base 10 run lengths of n.

The programs for A044932, there is no canonical definition to state claims against.
-/

/-! ## A044932.P11131877631360093176

`2-A352153(A139337(n+1))`
-/

namespace A044932.P11131877631360093176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A352153 (A139337 (n + 1)).toNat

end

end A044932.P11131877631360093176

/-! ## A044932.P16251510524351658299

`A368519(A358497(n+1))-A358497(n+1)`
-/

namespace A044932.P16251510524351658299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368519 (A358497 (n + 1)).toNat - A358497 (n + 1)

end

end A044932.P16251510524351658299

/-! ## A044932.P7235014454665850159

`A324667(A123895(n+1))+A006519(A123895(n+1))`
-/

namespace A044932.P7235014454665850159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324667 (A123895 (n + 1)).toNat + A006519 (A123895 (n + 1)).toNat

end

end A044932.P7235014454665850159

/-! ## A044932.P4761128312481453814

`A059582(C(2, A088469(n+1)))-3`
-/

namespace A044932.P4761128312481453814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 (Nat.choose 2 (A088469 (n + 1)).toNat) - 3

end

end A044932.P4761128312481453814

/-! ## A044932.P6662338434413562623

`C(2, A088469(n+1))-A000038(C(2, A088469(n+1)))`
-/

namespace A044932.P6662338434413562623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (A088469 (n + 1)).toNat : ℤ) - A000038 (Nat.choose 2 (A088469 (n + 1)).toNat)

end

end A044932.P6662338434413562623

/-! ## A044932.P2602684408370434006

`A044931(A106744(n+1)+1)`
-/

namespace A044932.P2602684408370434006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044931 (A106744 (n + 1) + 1).toNat

end

end A044932.P2602684408370434006

/-!
# A044933: Number of runs of even length in the base-2 representation of n.

The programs for A044933, the canonical program `A044933.P16468150021255286257` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A044933 has offset 1).

The definition of A044933 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A044942, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A044933.P16468150021255286257

`A005811(n+1)-A044942(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A044933

/-- `A005811(n+1)-A044942(n+1)` -/
def P16468150021255286257.Spec : Prop :=
  ∀ n, P16468150021255286257.a n = A044933 (n + 1)

theorem P16468150021255286257.correct : P16468150021255286257.Spec := by
  intro n
  simp only [A044933, Nat.add_sub_cancel]

end A044933

/-! ## A044933.P14142123742348011138

`A257992(A382255(1+n))`
-/

namespace A044933.P14142123742348011138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257992 (A382255 (1 + n)).toNat

end

end A044933.P14142123742348011138

namespace A044933

/-- `A257992(A382255(1+n))` -/
def P14142123742348011138.Spec : Prop :=
  ∀ n, P14142123742348011138.a n = A044933 (n + 1)

end A044933

/-! ## A044933.P9579802754481433167

`∑{e}[A286468(n+1), A000035(#)]`
-/

namespace A044933.P9579802754481433167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000035 (Nat.factorization (f1 n).natAbs p)

end

end A044933.P9579802754481433167

namespace A044933

/-- `∑{e}[A286468(n+1), A000035(#)]` -/
def P9579802754481433167.Spec : Prop :=
  ∀ n, P9579802754481433167.a n = A044933 (n + 1)

end A044933

/-! ## A044933.P6677069637099468883

`∑{e}[A286468(n+1), A179759(#)]`
-/

namespace A044933.P6677069637099468883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A179759 (Nat.factorization (f1 n).natAbs p)

end

end A044933.P6677069637099468883

namespace A044933

/-- `∑{e}[A286468(n+1), A179759(#)]` -/
def P6677069637099468883.Spec : Prop :=
  ∀ n, P6677069637099468883.a n = A044933 (n + 1)

end A044933

/-! ## A044933.P8170058897610035274

`∑{e}[A286468(n+1), A196564(#)]`
-/

namespace A044933.P8170058897610035274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A196564 (Nat.factorization (f1 n).natAbs p)

end

end A044933.P8170058897610035274

namespace A044933

/-- `∑{e}[A286468(n+1), A196564(#)]` -/
def P8170058897610035274.Spec : Prop :=
  ∀ n, P8170058897610035274.a n = A044933 (n + 1)

end A044933

/-! ## A044933.P10052531827048970860

`A162642(A286468(n+1))`
-/

namespace A044933.P10052531827048970860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162642 (A286468 (n + 1)).toNat

end

end A044933.P10052531827048970860

namespace A044933

/-- `A162642(A286468(n+1))` -/
def P10052531827048970860.Spec : Prop :=
  ∀ n, P10052531827048970860.a n = A044933 (n + 1)

end A044933

/-! ## A044933.P1379649152367764816

`A044934(A005836(n+2))`
-/

namespace A044933.P1379649152367764816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044934 (A005836 (n + 2)).toNat

end

end A044933.P1379649152367764816

namespace A044933

/-- `A044934(A005836(n+2))` -/
def P1379649152367764816.Spec : Prop :=
  ∀ n, P1379649152367764816.a n = A044933 (n + 1)

end A044933

/-! ## A044933.P2330280963540775839

`A044934(A005823(n+2)/2)`
-/

namespace A044933.P2330280963540775839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044934 (SequenceMachineLib.roundAway ((A005823 (n + 2) : ℚ) / 2)).toNat

end

end A044933.P2330280963540775839

namespace A044933

/-- `A044934(A005823(n+2)/2)` -/
def P2330280963540775839.Spec : Prop :=
  ∀ n, P2330280963540775839.a n = A044933 (n + 1)

end A044933

/-! ## A044933.P9586445707133527343

`A044934(A055661(n+1))`
-/

namespace A044933.P9586445707133527343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044934 (A055661 (n + 1)).toNat

end

end A044933.P9586445707133527343

namespace A044933

/-- `A044934(A055661(n+1))` -/
def P9586445707133527343.Spec : Prop :=
  ∀ n, P9586445707133527343.a n = A044933 (n + 1)

end A044933

/-! ## A044933.P2674610351082346523

`A044934(A005823(n+2))`
-/

namespace A044933.P2674610351082346523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044934 (A005823 (n + 2)).toNat

end

end A044933.P2674610351082346523

namespace A044933

/-- `A044934(A005823(n+2))` -/
def P2674610351082346523.Spec : Prop :=
  ∀ n, P2674610351082346523.a n = A044933 (n + 1)

end A044933

/-! ## A044933.P6132111980773902447

`A044934(A356426(n+2))`
-/

namespace A044933.P6132111980773902447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044934 (A356426 (n + 2)).toNat

end

end A044933.P6132111980773902447

namespace A044933

/-- `A044934(A356426(n+2))` -/
def P6132111980773902447.Spec : Prop :=
  ∀ n, P6132111980773902447.a n = A044933 (n + 1)

end A044933

/-! ## A044933.P14214512169188810154

`∑{e}[A163755(n+1), A241318(val(#, 2))]`
-/

namespace A044933.P14214512169188810154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163755 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A241318 (SequenceMachineLib.valuation (Nat.factorization (f1 n).natAbs p) 2)

end

end A044933.P14214512169188810154

namespace A044933

/-- `∑{e}[A163755(n+1), A241318(val(#, 2))]` -/
def P14214512169188810154.Spec : Prop :=
  ∀ n, P14214512169188810154.a n = A044933 (n + 1)

end A044933

/-! ## A044933.P1583884007356573135

`A044935(A000695(n+1))`
-/

namespace A044933.P1583884007356573135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044935 (A000695 (n + 1)).toNat

end

end A044933.P1583884007356573135

namespace A044933

/-- `A044935(A000695(n+1))` -/
def P1583884007356573135.Spec : Prop :=
  ∀ n, P1583884007356573135.a n = A044933 (n + 1)

end A044933

/-! ## A044933.P9217936483939065856

`A044935(A374625(n+1))`
-/

namespace A044933.P9217936483939065856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044935 (A374625 (n + 1)).toNat

end

end A044933.P9217936483939065856

namespace A044933

/-- `A044935(A374625(n+1))` -/
def P9217936483939065856.Spec : Prop :=
  ∀ n, P9217936483939065856.a n = A044933 (n + 1)

end A044933

/-! ## A044933.P14538699598806221413

`A044934(A055246(n+2))`
-/

namespace A044933.P14538699598806221413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044934 (A055246 (n + 2)).toNat

end

end A044933.P14538699598806221413

namespace A044933

/-- `A044934(A055246(n+2))` -/
def P14538699598806221413.Spec : Prop :=
  ∀ n, P14538699598806221413.a n = A044933 (n + 1)

end A044933

/-! ## A044933.P17839328419641607887

`A044935(A062880(n+1)/2)`
-/

namespace A044933.P17839328419641607887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044935 (SequenceMachineLib.roundAway ((A062880 (n + 1) : ℚ) / 2)).toNat

end

end A044933.P17839328419641607887

namespace A044933

/-- `A044935(A062880(n+1)/2)` -/
def P17839328419641607887.Spec : Prop :=
  ∀ n, P17839328419641607887.a n = A044933 (n + 1)

end A044933

/-! ## A044933.P2684939238314426848

`A077267(A293442(A286468(n+1)²))`
-/

namespace A044933.P2684939238314426848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 (A293442 (A286468 (n + 1) ^ 2).toNat).toNat

end

end A044933.P2684939238314426848

namespace A044933

/-- `A077267(A293442(A286468(n+1)²))` -/
def P2684939238314426848.Spec : Prop :=
  ∀ n, P2684939238314426848.a n = A044933 (n + 1)

end A044933

/-!
# A044934: Number of runs of even length in the base 3 representation of n.

The programs for A044934, the canonical program `A044934.P12203436465107615356` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A044934 has offset 1).

The definition of A044934 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A044934.P12203436465107615356

`A044933(A371256(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A044934

/-- `A044933(A371256(n+1))` -/
def P12203436465107615356.Spec : Prop :=
  ∀ n, P12203436465107615356.a n = A044934 (n + 1)

theorem P12203436465107615356.correct : P12203436465107615356.Spec := by
  intro n
  simp only [A044934, Nat.add_sub_cancel]

end A044934

/-! ## A044934.P5019894579344600416

`A044935(A023717(n+1))`
-/

namespace A044934.P5019894579344600416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044935 (A023717 (n + 1)).toNat

end

end A044934.P5019894579344600416

namespace A044934

/-- `A044935(A023717(n+1))` -/
def P5019894579344600416.Spec : Prop :=
  ∀ n, P5019894579344600416.a n = A044934 (n + 1)

end A044934

/-! ## A044934.P1662939713290888421

`A044935(A023713(n+2))`
-/

namespace A044934.P1662939713290888421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044935 (A023713 (n + 2)).toNat

end

end A044934.P1662939713290888421

namespace A044934

/-- `A044935(A023713(n+2))` -/
def P1662939713290888421.Spec : Prop :=
  ∀ n, P1662939713290888421.a n = A044934 (n + 1)

end A044934

/-! ## A044934.P1937172913230922440

`A044935(A006288(n+1))`
-/

namespace A044934.P1937172913230922440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044935 (A006288 (n + 1)).toNat

end

end A044934.P1937172913230922440

namespace A044934

/-- `A044935(A006288(n+1))` -/
def P1937172913230922440.Spec : Prop :=
  ∀ n, P1937172913230922440.a n = A044934 (n + 1)

end A044934

/-! ## A044934.P1339553461635792611

`A044935(A023709(n+2))`
-/

namespace A044934.P1339553461635792611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044935 (A023709 (n + 2)).toNat

end

end A044934.P1339553461635792611

namespace A044934

/-- `A044935(A023709(n+2))` -/
def P1339553461635792611.Spec : Prop :=
  ∀ n, P1339553461635792611.a n = A044934 (n + 1)

end A044934

/-! ## A044934.P3462562924907173425

`A044936(A037453(n+1))`
-/

namespace A044934.P3462562924907173425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044936 (A037453 (n + 1)).toNat

end

end A044934.P3462562924907173425

namespace A044934

/-- `A044936(A037453(n+1))` -/
def P3462562924907173425.Spec : Prop :=
  ∀ n, P3462562924907173425.a n = A044934 (n + 1)

end A044934

/-! ## A044934.P8059978048432066828

`A044940(A037314(n+1))`
-/

namespace A044934.P8059978048432066828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044940 (A037314 (n + 1)).toNat

end

end A044934.P8059978048432066828

namespace A044934

/-- `A044940(A037314(n+1))` -/
def P8059978048432066828.Spec : Prop :=
  ∀ n, P8059978048432066828.a n = A044934 (n + 1)

end A044934

/-! ## A044934.P6794706395599374466

`A044940(A319497(n+1))`
-/

namespace A044934.P6794706395599374466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044940 (A319497 (n + 1)).toNat

end

end A044934.P6794706395599374466

namespace A044934

/-- `A044940(A319497(n+1))` -/
def P6794706395599374466.Spec : Prop :=
  ∀ n, P6794706395599374466.a n = A044934 (n + 1)

end A044934

/-! ## A044934.P17933889488366969910

`A044937(A037454(n+1))`
-/

namespace A044934.P17933889488366969910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044937 (A037454 (n + 1)).toNat

end

end A044934.P17933889488366969910

namespace A044934

/-- `A044937(A037454(n+1))` -/
def P17933889488366969910.Spec : Prop :=
  ∀ n, P17933889488366969910.a n = A044934 (n + 1)

end A044934

/-! ## A044934.P8989097195255521438

`A044941(A007089(n+1))`
-/

namespace A044934.P8989097195255521438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044941 (A007089 (n + 1)).toNat

end

end A044934.P8989097195255521438

namespace A044934

/-- `A044941(A007089(n+1))` -/
def P8989097195255521438.Spec : Prop :=
  ∀ n, P8989097195255521438.a n = A044934 (n + 1)

end A044934

/-! ## A044934.P9454912472700104610

`A044938(A037455(n+1))`
-/

namespace A044934.P9454912472700104610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044938 (A037455 (n + 1)).toNat

end

end A044934.P9454912472700104610

namespace A044934

/-- `A044938(A037455(n+1))` -/
def P9454912472700104610.Spec : Prop :=
  ∀ n, P9454912472700104610.a n = A044934 (n + 1)

end A044934

/-! ## A044934.P1681420508764357851

`A044939(A037456(n+1))`
-/

namespace A044934.P1681420508764357851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044939 (A037456 (n + 1)).toNat

end

end A044934.P1681420508764357851

namespace A044934

/-- `A044939(A037456(n+1))` -/
def P1681420508764357851.Spec : Prop :=
  ∀ n, P1681420508764357851.a n = A044934 (n + 1)

end A044934

/-! ## A044934.P13555614438370728345

`A044940(A208665(n+1))`
-/

namespace A044934.P13555614438370728345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044940 (A208665 (n + 1)).toNat

end

end A044934.P13555614438370728345

namespace A044934

/-- `A044940(A208665(n+1))` -/
def P13555614438370728345.Spec : Prop :=
  ∀ n, P13555614438370728345.a n = A044934 (n + 1)

end A044934

/-! ## A044934.P1958415409355335435

`A044940(A338086(n+1))`
-/

namespace A044934.P1958415409355335435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044940 (A338086 (n + 1)).toNat

end

end A044934.P1958415409355335435

namespace A044934

/-- `A044940(A338086(n+1))` -/
def P1958415409355335435.Spec : Prop :=
  ∀ n, P1958415409355335435.a n = A044934 (n + 1)

end A044934

/-! ## A044934.P15279086558592147611

`A044941(A344892(n+1))`
-/

namespace A044934.P15279086558592147611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044941 (A344892 (n + 1)).toNat

end

end A044934.P15279086558592147611

namespace A044934

/-- `A044941(A344892(n+1))` -/
def P15279086558592147611.Spec : Prop :=
  ∀ n, P15279086558592147611.a n = A044934 (n + 1)

end A044934

/-! ## A044934.P17939939189405799921

`A044941(A046031(n+1))`
-/

namespace A044934.P17939939189405799921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044941 (A046031 (n + 1)).toNat

end

end A044934.P17939939189405799921

namespace A044934

/-- `A044941(A046031(n+1))` -/
def P17939939189405799921.Spec : Prop :=
  ∀ n, P17939939189405799921.a n = A044934 (n + 1)

end A044934

/-! ## A044934.P14382959970975280685

`A044941(A343810(n+2))`
-/

namespace A044934.P14382959970975280685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044941 (A343810 (n + 2)).toNat

end

end A044934.P14382959970975280685

namespace A044934

/-- `A044941(A343810(n+2))` -/
def P14382959970975280685.Spec : Prop :=
  ∀ n, P14382959970975280685.a n = A044934 (n + 1)

end A044934

/-!
# A044935: Number of runs of even length in the base 4 representation of n.

The programs for A044935, there is no canonical definition to state claims against.
-/

/-! ## A044935.P14164664912287054107

`A043556(n+1)-A044944(n+1)`
-/

namespace A044935.P14164664912287054107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043556 (n + 1) - A044944 (n + 1)

end

end A044935.P14164664912287054107

/-! ## A044935.P9359626061032676714

`A044936(A037459(n+1))`
-/

namespace A044935.P9359626061032676714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044936 (A037459 (n + 1)).toNat

end

end A044935.P9359626061032676714

/-! ## A044935.P14324433027886419111

`A044936(A020654(n+2))`
-/

namespace A044935.P14324433027886419111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044936 (A020654 (n + 2)).toNat

end

end A044935.P14324433027886419111

/-! ## A044935.P6566963930206616436

`A044936(A023733(n+2))`
-/

namespace A044935.P6566963930206616436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044936 (A023733 (n + 2)).toNat

end

end A044935.P6566963930206616436

/-! ## A044935.P6138638267977004984

`A044936(A023729(n+2))`
-/

namespace A044935.P6138638267977004984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044936 (A023729 (n + 2)).toNat

end

end A044935.P6138638267977004984

/-! ## A044935.P608602555448829635

`A044936(A023725(n+2))`
-/

namespace A044935.P608602555448829635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044936 (A023725 (n + 2)).toNat

end

end A044935.P608602555448829635

/-! ## A044935.P15611216135560763291

`A044940(A037463(n+1))`
-/

namespace A044935.P15611216135560763291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044940 (A037463 (n + 1)).toNat

end

end A044935.P15611216135560763291

/-! ## A044935.P14157301610100459838

`A044940(A005836(n+2))`
-/

namespace A044935.P14157301610100459838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044940 (A005836 (n + 2)).toNat

end

end A044935.P14157301610100459838

/-! ## A044935.P8371937157423216939

`A044940(A005823(n+2)/2)`
-/

namespace A044935.P8371937157423216939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044940 (SequenceMachineLib.roundAway ((A005823 (n + 2) : ℚ) / 2)).toNat

end

end A044935.P8371937157423216939

/-! ## A044935.P8888358948224270692

`A044937(A037460(n+1))`
-/

namespace A044935.P8888358948224270692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044937 (A037460 (n + 1)).toNat

end

end A044935.P8888358948224270692

/-! ## A044935.P13657594486443938525

`A044941(A007090(n+1))`
-/

namespace A044935.P13657594486443938525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044941 (A007090 (n + 1)).toNat

end

end A044935.P13657594486443938525

/-! ## A044935.P15235307367427297624

`A044938(A037461(n+1))`
-/

namespace A044935.P15235307367427297624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044938 (A037461 (n + 1)).toNat

end

end A044935.P15235307367427297624

/-! ## A044935.P17789502760940213409

`A044940(A005823(n+2))`
-/

namespace A044935.P17789502760940213409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044940 (A005823 (n + 2)).toNat

end

end A044935.P17789502760940213409

/-! ## A044935.P3162949591521036631

`A044941(A007284(n+1))`
-/

namespace A044935.P3162949591521036631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044941 (A007284 (n + 1)).toNat

end

end A044935.P3162949591521036631

/-! ## A044935.P11063621858941148151

`A044939(A037462(n+1))`
-/

namespace A044935.P11063621858941148151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044939 (A037462 (n + 1)).toNat

end

end A044935.P11063621858941148151

/-! ## A044935.P10200574164087767259

`A044941(A046030(n+2))`
-/

namespace A044935.P10200574164087767259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044941 (A046030 (n + 2)).toNat

end

end A044935.P10200574164087767259

/-! ## A044935.P5268419526191748771

`A044940(A265100(n+2))`
-/

namespace A044935.P5268419526191748771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044940 (A265100 (n + 2)).toNat

end

end A044935.P5268419526191748771

/-! ## A044935.P3992243783682393752

`A044941(A001743(n+2))`
-/

namespace A044935.P3992243783682393752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044941 (A001743 (n + 2)).toNat

end

end A044935.P3992243783682393752

/-!
# A044936: Number of runs of even length in base-5 representation of n.

The programs for A044936, there is no canonical definition to state claims against.
-/

/-! ## A044936.P5174981569088473593

`A043557(n+1)-A044945(n+1)`
-/

namespace A044936.P5174981569088473593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043557 (n + 1) - A044945 (n + 1)

end

end A044936.P5174981569088473593

/-! ## A044936.P12783900282060836310

`A044940(A037468(n+1))`
-/

namespace A044936.P12783900282060836310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044940 (A037468 (n + 1)).toNat

end

end A044936.P12783900282060836310

/-! ## A044936.P11262868034486215226

`A044937(A037465(n+1))`
-/

namespace A044936.P11262868034486215226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044937 (A037465 (n + 1)).toNat

end

end A044936.P11262868034486215226

/-! ## A044936.P17616821535078661284

`A044941(A007091(n+1))`
-/

namespace A044936.P17616821535078661284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044941 (A007091 (n + 1)).toNat

end

end A044936.P17616821535078661284

/-! ## A044936.P7187537007262309310

`A044941(A014263(n+2)/2)`
-/

namespace A044936.P7187537007262309310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044941 (SequenceMachineLib.roundAway ((A014263 (n + 2) : ℚ) / 2)).toNat

end

end A044936.P7187537007262309310

/-! ## A044936.P6077818922027304380

`A044938(A037466(n+1))`
-/

namespace A044936.P6077818922027304380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044938 (A037466 (n + 1)).toNat

end

end A044936.P6077818922027304380

/-! ## A044936.P7041090689005245795

`A044941(A080228(n+2))`
-/

namespace A044936.P7041090689005245795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044941 (A080228 (n + 2)).toNat

end

end A044936.P7041090689005245795

/-! ## A044936.P6582824375549973833

`A044941(A014263(n+2))`
-/

namespace A044936.P6582824375549973833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044941 (A014263 (n + 2)).toNat

end

end A044936.P6582824375549973833

/-! ## A044936.P12743007473433016224

`A044939(A037467(n+1))`
-/

namespace A044936.P12743007473433016224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044939 (A037467 (n + 1)).toNat

end

end A044936.P12743007473433016224

/-! ## A044936.P11016450275958515203

`A044941(A054047(n+1))`
-/

namespace A044936.P11016450275958515203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044941 (A054047 (n + 1)).toNat

end

end A044936.P11016450275958515203

/-! ## A044936.P16122054173042719216

`A044941(A001744(n+2))`
-/

namespace A044936.P16122054173042719216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044941 (A001744 (n + 2)).toNat

end

end A044936.P16122054173042719216

/-! ## A044936.P13366675081160395523

`A044941(A072960(n+2))`
-/

namespace A044936.P13366675081160395523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044941 (A072960 (n + 2)).toNat

end

end A044936.P13366675081160395523

/-! ## A044936.P4803138308891352146

`A232984(n)%A043279(n+1)`
-/

namespace A044936.P4803138308891352146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A232984 n) (A043279 (n + 1))

end

end A044936.P4803138308891352146

/-! ## A044936.P15725799440828443209

`A133221(n)%A043279(n+1)`
-/

namespace A044936.P15725799440828443209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133221 n) (A043279 (n + 1))

end

end A044936.P15725799440828443209

/-! ## A044936.P289134134490309166

`A060696(n)%A043279(n+1)`
-/

namespace A044936.P289134134490309166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060696 n) (A043279 (n + 1))

end

end A044936.P289134134490309166

/-! ## A044936.P13445809685386497240

`and(1, A351660(n)+A050433(n+1))`
-/

namespace A044936.P13445809685386497240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A351660 n + A050433 (n + 1))

end

end A044936.P13445809685386497240

/-! ## A044936.P3917789962455127713

`A203656(n+1)%A043279(n+1)`
-/

namespace A044936.P3917789962455127713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A203656 (n + 1)) (A043279 (n + 1))

end

end A044936.P3917789962455127713

/-! ## A044936.P13766959849861664549

`A232124(n+1)%A043279(n+1)`
-/

namespace A044936.P13766959849861664549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A232124 (n + 1)) (A043279 (n + 1))

end

end A044936.P13766959849861664549

/-! ## A044936.P569776451422731432

`A173503(n)%A043279(n+1)`
-/

namespace A044936.P569776451422731432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173503 n) (A043279 (n + 1))

end

end A044936.P569776451422731432

/-! ## A044936.P5393896303240121787

`A156950(n)%A043279(n+1)`
-/

namespace A044936.P5393896303240121787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156950 n) (A043279 (n + 1))

end

end A044936.P5393896303240121787

/-!
# A044937: Number of runs of even length in base-6 representation of n.

The programs for A044937, there is no canonical definition to state claims against.
-/

/-! ## A044937.P9584117152995767743

`A043558(n+1)-A044946(n+1)`
-/

namespace A044937.P9584117152995767743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043558 (n + 1) - A044946 (n + 1)

end

end A044937.P9584117152995767743

/-! ## A044937.P4538499528505755701

`A044940(A037472(n+1))`
-/

namespace A044937.P4538499528505755701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044940 (A037472 (n + 1)).toNat

end

end A044937.P4538499528505755701

/-! ## A044937.P18343049715562334571

`A044941(A007092(n+1))`
-/

namespace A044937.P18343049715562334571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044941 (A007092 (n + 1)).toNat

end

end A044937.P18343049715562334571

/-! ## A044937.P16011577742448780620

`A044941(A202267(n+2))`
-/

namespace A044937.P16011577742448780620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044941 (A202267 (n + 2)).toNat

end

end A044937.P16011577742448780620

/-! ## A044937.P14487468159400644621

`A044941(A321702(n+2))`
-/

namespace A044937.P14487468159400644621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044941 (A321702 (n + 2)).toNat

end

end A044937.P14487468159400644621

/-! ## A044937.P1316000179827968708

`A044938(A020657(n+2))`
-/

namespace A044937.P1316000179827968708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044938 (A020657 (n + 2)).toNat

end

end A044937.P1316000179827968708

/-! ## A044937.P17589588561084065681

`A044941(A084984(n+2))`
-/

namespace A044937.P17589588561084065681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044941 (A084984 (n + 2)).toNat

end

end A044937.P17589588561084065681

/-! ## A044937.P15306701512097235539

`A044941(A276138(n+2))`
-/

namespace A044937.P15306701512097235539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044941 (A276138 (n + 2)).toNat

end

end A044937.P15306701512097235539

/-! ## A044937.P17683587075639593904

`A044938(A249102(n+2))`
-/

namespace A044937.P17683587075639593904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044938 (A249102 (n + 2)).toNat

end

end A044937.P17683587075639593904

/-! ## A044937.P4196019374902738106

`A044939(A037471(n+1))`
-/

namespace A044937.P4196019374902738106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044939 (A037471 (n + 1)).toNat

end

end A044937.P4196019374902738106

/-! ## A044937.P4240451812024569392

`A044941(A137386(n+2))`
-/

namespace A044937.P4240451812024569392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044941 (A137386 (n + 2)).toNat

end

end A044937.P4240451812024569392

/-! ## A044937.P12760580584039799229

`A121566(n)%A043280(n+1)`
-/

namespace A044937.P12760580584039799229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121566 n) (A043280 (n + 1))

end

end A044937.P12760580584039799229

/-! ## A044937.P9498594545590134652

`A331519(n)%A043280(n+1)`
-/

namespace A044937.P9498594545590134652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331519 n) (A043280 (n + 1))

end

end A044937.P9498594545590134652

/-! ## A044937.P6732831622206190236

`A027151(n)%A043280(n+1)`
-/

namespace A044937.P6732831622206190236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027151 n) (A043280 (n + 1))

end

end A044937.P6732831622206190236

/-! ## A044937.P14551555042867384674

`A290344(n)%A043280(n+1)`
-/

namespace A044937.P14551555042867384674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290344 n) (A043280 (n + 1))

end

end A044937.P14551555042867384674

/-! ## A044937.P6081099410578924913

`A038547(n+1)%A043280(n+1)`
-/

namespace A044937.P6081099410578924913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038547 (n + 1)) (A043280 (n + 1))

end

end A044937.P6081099410578924913

/-! ## A044937.P54489086670251727

`A095987(n)%A043280(n+1)`
-/

namespace A044937.P54489086670251727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095987 n) (A043280 (n + 1))

end

end A044937.P54489086670251727

/-!
# A044938: Number of runs of even length in the base-7 representation of n.

The programs for A044938, there is no canonical definition to state claims against.
-/

/-! ## A044938.P17036269898583358485

`A043559(n+1)-A044947(n+1)`
-/

namespace A044938.P17036269898583358485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043559 (n + 1) - A044947 (n + 1)

end

end A044938.P17036269898583358485

/-! ## A044938.P5272128012660792099

`A044941(A007093(n+1))`
-/

namespace A044938.P5272128012660792099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044941 (A007093 (n + 1)).toNat

end

end A044938.P5272128012660792099

/-! ## A044938.P18004304894212384652

`A044940(A037475(n+1))`
-/

namespace A044938.P18004304894212384652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044940 (A037475 (n + 1)).toNat

end

end A044938.P18004304894212384652

/-! ## A044938.P5692552366776004080

`A044941(A028374(n+2))`
-/

namespace A044938.P5692552366776004080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044941 (A028374 (n + 2)).toNat

end

end A044938.P5692552366776004080

/-! ## A044938.P9573175429630686265

`A044939(A037474(n+1))`
-/

namespace A044938.P9573175429630686265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044939 (A037474 (n + 1)).toNat

end

end A044938.P9573175429630686265

/-! ## A044938.P12937517463192416379

`A027180(n)%A043281(n+1)`
-/

namespace A044938.P12937517463192416379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027180 n) (A043281 (n + 1))

end

end A044938.P12937517463192416379

/-! ## A044938.P707066675479303188

`A045883(n)%A043281(n+1)`
-/

namespace A044938.P707066675479303188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045883 n) (A043281 (n + 1))

end

end A044938.P707066675479303188

/-! ## A044938.P11181631691287007146

`A000244(n)%A043281(n+1)`
-/

namespace A044938.P11181631691287007146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000244 n) (A043281 (n + 1))

end

end A044938.P11181631691287007146

/-! ## A044938.P9095605946142456654

`A036543(n)%A043281(n+1)`
-/

namespace A044938.P9095605946142456654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036543 n) (A043281 (n + 1))

end

end A044938.P9095605946142456654

/-! ## A044938.P15557229872054992922

`A137340(n)%A043281(n+1)`
-/

namespace A044938.P15557229872054992922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137340 n) (A043281 (n + 1))

end

end A044938.P15557229872054992922

/-! ## A044938.P10586138923133164619

`A005032(n)%A043281(n+1)`
-/

namespace A044938.P10586138923133164619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005032 n) (A043281 (n + 1))

end

end A044938.P10586138923133164619

/-! ## A044938.P7303947558310965637

`A123011(n)%A043281(n+1)`
-/

namespace A044938.P7303947558310965637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123011 n) (A043281 (n + 1))

end

end A044938.P7303947558310965637

/-! ## A044938.P14578576550571799300

`A001902(n)%A043281(n+1)`
-/

namespace A044938.P14578576550571799300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001902 n) (A043281 (n + 1))

end

end A044938.P14578576550571799300

/-!
# A044939: Number of runs of even length in the base-8 representation of n.

The programs for A044939, there is no canonical definition to state claims against.
-/

/-! ## A044939.P14491803114204009399

`A044941(A007094(n+1))`
-/

namespace A044939.P14491803114204009399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044941 (A007094 (n + 1)).toNat

end

end A044939.P14491803114204009399

/-! ## A044939.P14272404741556729189

`A044940(A037477(n+1))`
-/

namespace A044939.P14272404741556729189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044940 (A037477 (n + 1)).toNat

end

end A044939.P14272404741556729189

/-! ## A044939.P8410206902852449210

`A044941(eq[n, A035043(A028310(n))])`
-/

namespace A044939.P8410206902852449210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044941 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044939.P8410206902852449210

/-! ## A044939.P4142266295081438087

`A044941(eq[n, A222251(A028310(n))])`
-/

namespace A044939.P4142266295081438087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222251 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044941 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044939.P4142266295081438087

/-! ## A044939.P13911774960854927489

`A044941(eq[n, A222252(A028310(n))])`
-/

namespace A044939.P13911774960854927489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222252 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044941 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044939.P13911774960854927489

/-! ## A044939.P5403348256893185186

`A002426(n)%A043282(n+1)`
-/

namespace A044939.P5403348256893185186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002426 n) (A043282 (n + 1))

end

end A044939.P5403348256893185186

/-! ## A044939.P6035579297820085013

`A036215(n)%A043282(n+1)`
-/

namespace A044939.P6035579297820085013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036215 n) (A043282 (n + 1))

end

end A044939.P6035579297820085013

/-! ## A044939.P9405736394358364985

`A000244(n)%A043282(n+1)`
-/

namespace A044939.P9405736394358364985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000244 n) (A043282 (n + 1))

end

end A044939.P9405736394358364985

/-! ## A044939.P2452755439084071599

`A005030(n)%A043282(n+1)`
-/

namespace A044939.P2452755439084071599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005030 n) (A043282 (n + 1))

end

end A044939.P2452755439084071599

/-! ## A044939.P8173194798214985729

`A027313(n)%A043282(n+1)`
-/

namespace A044939.P8173194798214985729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027313 n) (A043282 (n + 1))

end

end A044939.P8173194798214985729

/-! ## A044939.P13139543822830677797

`A036543(n)%A043282(n+1)`
-/

namespace A044939.P13139543822830677797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036543 n) (A043282 (n + 1))

end

end A044939.P13139543822830677797

/-! ## A044939.P5697785356101898020

`A005032(n)%A043282(n+1)`
-/

namespace A044939.P5697785356101898020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005032 n) (A043282 (n + 1))

end

end A044939.P5697785356101898020

/-! ## A044939.P12849150073679951671

`A014335(n)%A043282(n+1)`
-/

namespace A044939.P12849150073679951671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014335 n) (A043282 (n + 1))

end

end A044939.P12849150073679951671

/-! ## A044939.P4898687875602564428

`A001790(n)%A043282(n+1)`
-/

namespace A044939.P4898687875602564428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001790 n) (A043282 (n + 1))

end

end A044939.P4898687875602564428

/-!
# A044940: Number of runs of even length in base-9 representation of n.

The programs for A044940, there is no canonical definition to state claims against.
-/

/-! ## A044940.P1802584047078665915

`A044941(A007095(1+n))`
-/

namespace A044940.P1802584047078665915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044941 (A007095 (1 + n)).toNat

end

end A044940.P1802584047078665915

/-! ## A044940.P2398129653259552138

`A044941(record[A222245(A008619(n))])`
-/

namespace A044940.P2398129653259552138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222245 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044941 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A044940.P2398129653259552138

/-! ## A044940.P4072984412180027627

`A044941(record[A035043(A008619(n))])`
-/

namespace A044940.P4072984412180027627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044941 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A044940.P4072984412180027627

/-! ## A044940.P6199644467541175588

`A044941(record[A035043(A159481(n))])`
-/

namespace A044940.P6199644467541175588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 (A159481 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044941 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A044940.P6199644467541175588

/-! ## A044940.P12488360042390018255

`A044941(record[A035043(A008611(n))])`
-/

namespace A044940.P12488360042390018255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 (A008611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044941 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A044940.P12488360042390018255

/-! ## A044940.P12654391203667539172

`A000244(n)%A043283(n+1)`
-/

namespace A044940.P12654391203667539172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000244 n) (A043283 (n + 1))

end

end A044940.P12654391203667539172

/-! ## A044940.P528151945215627510

`A054387(n)%A043283(n+1)`
-/

namespace A044940.P528151945215627510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054387 n) (A043283 (n + 1))

end

end A044940.P528151945215627510

/-! ## A044940.P2241648480532026299

`A307997(A133707(∑[n]+1)+1)%A043283(n+1)`
-/

namespace A044940.P2241648480532026299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307997 (A133707 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 1).toNat) (A043283 (n + 1))

end

end A044940.P2241648480532026299

/-! ## A044940.P2813642648790669871

`A133245(A106608(n+1))%A043283(n+1)`
-/

namespace A044940.P2813642648790669871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133245 (A106608 (n + 1)).toNat) (A043283 (n + 1))

end

end A044940.P2813642648790669871

/-!
# A044941: Number of runs of even length in base-10 representation of n.

The programs for A044941, there is no canonical definition to state claims against.
-/

/-! ## A044941.P16477678007881869021

`A043562(n+1)-A044950(n+1)`
-/

namespace A044941.P16477678007881869021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (n + 1) - A044950 (n + 1)

end

end A044941.P16477678007881869021

/-! ## A044941.P11512227938915978359

`(A142456(A246674(n))+A043284(n+1))%2`
-/

namespace A044941.P11512227938915978359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A142456 (A246674 n).toNat + A043284 (n + 1)) 2

end

end A044941.P11512227938915978359

/-! ## A044941.P2757572489449799607

`(A142456(A008475(or(3, n)))+A043284(n+1))%2`
-/

namespace A044941.P2757572489449799607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A142456 (A008475 (Nat.lor 3 n)).toNat + A043284 (n + 1)) 2

end

end A044941.P2757572489449799607

/-! ## A044941.P17349039501851288350

`(A142456(n+1)+A043284(n+1))%2`
-/

namespace A044941.P17349039501851288350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A142456 (n + 1) + A043284 (n + 1)) 2

end

end A044941.P17349039501851288350

/-! ## A044941.P17999283126253832289

`A179805(A017281(n))%A043284(n+1)`
-/

namespace A044941.P17999283126253832289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179805 (A017281 n).toNat) (A043284 (n + 1))

end

end A044941.P17999283126253832289

/-! ## A044941.P655354036451224488

`(A094743(n+2)+A043284(n+1))%2`
-/

namespace A044941.P655354036451224488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094743 (n + 2) + A043284 (n + 1)) 2

end

end A044941.P655354036451224488

/-! ## A044941.P1128653332036119505

`A164349(∑{d}[A139337(n+1), A266986(#+1)]+2)`
-/

namespace A044941.P1128653332036119505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139337 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164349 (∑ d ∈ Nat.divisors (f1 n).natAbs, A266986 (d + 1) + 2).toNat

end

end A044941.P1128653332036119505

/-! ## A044941.P13184898430156936475

`A000035(A095100(n+1)-A043284(n+1))`
-/

namespace A044941.P13184898430156936475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A095100 (n + 1) - A043284 (n + 1)).toNat

end

end A044941.P13184898430156936475

/-! ## A044941.P2473789022021176833

`A283991(A094743(n+1)-A043284(n+1))`
-/

namespace A044941.P2473789022021176833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283991 (A094743 (n + 1) - A043284 (n + 1)).toNat

end

end A044941.P2473789022021176833

/-! ## A044941.P5475538516837413575

`A019425(and(A044932(n+1), A135628(n)))`
-/

namespace A044941.P5475538516837413575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (Int.land (A044932 (n + 1)) (A135628 n)).toNat

end

end A044941.P5475538516837413575

/-! ## A044941.P837480028702728290

`A007814(A016969(n)*A043284(n+1))`
-/

namespace A044941.P837480028702728290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A016969 n * A043284 (n + 1)).toNat

end

end A044941.P837480028702728290

/-! ## A044941.P8171592183416280310

`A056239(A004139(2*n+3))%A043284(n+1)`
-/

namespace A044941.P8171592183416280310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056239 (A004139 (2 * n + 3)).toNat) (A043284 (n + 1))

end

end A044941.P8171592183416280310

/-! ## A044941.P12427931761034591567

`A048481(n)%A043284(n+1)`
-/

namespace A044941.P12427931761034591567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048481 n) (A043284 (n + 1))

end

end A044941.P12427931761034591567

/-! ## A044941.P5296848889083089758

`A048509(n)%A043284(n+1)`
-/

namespace A044941.P5296848889083089758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048509 n) (A043284 (n + 1))

end

end A044941.P5296848889083089758

/-! ## A044941.P2348735587851974938

`A036826(n)%A043284(n+1)`
-/

namespace A044941.P2348735587851974938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036826 n) (A043284 (n + 1))

end

end A044941.P2348735587851974938

/-! ## A044941.P1935235079653616723

`A063397(n)%A043284(n+1)`
-/

namespace A044941.P1935235079653616723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063397 n) (A043284 (n + 1))

end

end A044941.P1935235079653616723

/-! ## A044941.P4300846033064740857

`A033718(lcm(35*n+2, A043284(n+1)-2))`
-/

namespace A044941.P4300846033064740857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033718 (Int.lcm (35 * n + 2 : ℤ) (A043284 (n + 1) - 2))

end

end A044941.P4300846033064740857

/-! ## A044941.P2066098897753087267

`A052101(n)%A043284(n+1)`
-/

namespace A044941.P2066098897753087267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052101 n) (A043284 (n + 1))

end

end A044941.P2066098897753087267

/-! ## A044941.P14734095689306138154

`A026003(n)%A043284(n+1)`
-/

namespace A044941.P14734095689306138154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026003 n) (A043284 (n + 1))

end

end A044941.P14734095689306138154

/-! ## A044941.P12251577937131679137

`A077442(n)%A043284(n+1)`
-/

namespace A044941.P12251577937131679137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077442 n) (A043284 (n + 1))

end

end A044941.P12251577937131679137

/-!
# A044942: Number of runs of odd length in the base-2 representation of n.

The programs for A044942, the canonical program `A044942.P10877582406640185609` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A044942 has offset 1).

The definition of A044942 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A044942.P10654934486012855537

`A005811(n+1)-A044933(n+1)`
-/

namespace A044942.P10654934486012855537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (n + 1) - A044933 (n + 1)

end

end A044942.P10654934486012855537

namespace A044942

/-- `A005811(n+1)-A044933(n+1)` -/
def P10654934486012855537.Spec : Prop :=
  ∀ n, P10654934486012855537.a n = A044942 (n + 1)

theorem P10654934486012855537.correct : P10654934486012855537.Spec := by
  intro n
  simp only [A044942, Nat.add_sub_cancel, A044942.P10654934486012855537.a, A044942.P10877582406640185609.a, A005811, A005811.P8696411420205566785.a, A044933, A044933.P16468150021255286257.a, A257991, A257991.P9003885035180655311.f1, A257991.P9003885035180655311.a, A382255, A382255.P11079232135365074107.a, A000120, A000120.P2816527436160941581.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A003188, A003188.P10544524695508875182.a, A014963, A014963.P5975177236000282614.a, A035327, A035327.P258997810375859489.a, A246029, A246029.P17934479731839839263.a, A005187, A005187.P3874015513960485494.a, A005940, A005940.P5942875842694471387.a, A053644, A053644.P1707366427427647095.a, A166140, A166140.P17649384582351937107.f1, A166140.P17649384582351937107.a, A166142, A166142.P2815951119682625865.f1, A166142.P2815951119682625865.a, A181819, A181819.P15090535388863431201.a, A001511, A001511.P17146462531039486101.a, A008578, A008578.P3639467937083264764.a, A064989, A064989.P13349672914146769936.a, A080304, A080304.P9910366703239988167.a, A122111, A122111.P18124015185857335041.a, A253563, A253563.P8520361847049590329.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A044942

/-! ## A044942.P10877582406640185609

`A257991(A382255(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A044942

/-- `A257991(A382255(n+1))` -/
def P10877582406640185609.Spec : Prop :=
  ∀ n, P10877582406640185609.a n = A044942 (n + 1)

theorem P10877582406640185609.correct : P10877582406640185609.Spec := by
  intro n
  simp only [A044942, Nat.add_sub_cancel]

end A044942

/-! ## A044942.P14314355802833591574

`∑[A034947(n+1)]-A044933(n+1)`
-/

namespace A044942.P14314355802833591574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A044933 (n + 1)

end

end A044942.P14314355802833591574

namespace A044942

/-- `∑[A034947(n+1)]-A044933(n+1)` -/
def P14314355802833591574.Spec : Prop :=
  ∀ n, P14314355802833591574.a n = A044942 (n + 1)

end A044942

/-! ## A044942.P11470503332608634025

`A000120(A003188(n+1))-A044933(n+1)`
-/

namespace A044942.P11470503332608634025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A003188 (n + 1)).toNat - A044933 (n + 1)

end

end A044942.P11470503332608634025

namespace A044942

/-- `A000120(A003188(n+1))-A044933(n+1)` -/
def P11470503332608634025.Spec : Prop :=
  ∀ n, P11470503332608634025.a n = A044942 (n + 1)

theorem P11470503332608634025.correct : P11470503332608634025.Spec := by
  intro n
  simp only [A044942, Nat.add_sub_cancel, A044942.P11470503332608634025.a, A044942.P10877582406640185609.a, A000120, A000120.P2816527436160941581.a, A003188, A003188.P10544524695508875182.a, A044933, A044933.P16468150021255286257.a, A257991, A257991.P9003885035180655311.f1, A257991.P9003885035180655311.a, A382255, A382255.P11079232135365074107.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A005187, A005187.P3874015513960485494.a, A005811, A005811.P8696411420205566785.a, A014963, A014963.P5975177236000282614.a, A035327, A035327.P258997810375859489.a, A246029, A246029.P17934479731839839263.a, A005940, A005940.P5942875842694471387.a, A053644, A053644.P1707366427427647095.a, A166140, A166140.P17649384582351937107.f1, A166140.P17649384582351937107.a, A166142, A166142.P2815951119682625865.f1, A166142.P2815951119682625865.a, A181819, A181819.P15090535388863431201.a, A001511, A001511.P17146462531039486101.a, A008578, A008578.P3639467937083264764.a, A064989, A064989.P13349672914146769936.a, A080304, A080304.P9910366703239988167.a, A122111, A122111.P18124015185857335041.a, A253563, A253563.P8520361847049590329.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A044942

/-! ## A044942.P3177969943436443531

`A044943(A005836(n+2))`
-/

namespace A044942.P3177969943436443531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044943 (A005836 (n + 2)).toNat

end

end A044942.P3177969943436443531

namespace A044942

/-- `A044943(A005836(n+2))` -/
def P3177969943436443531.Spec : Prop :=
  ∀ n, P3177969943436443531.a n = A044942 (n + 1)

end A044942

/-! ## A044942.P3855380996362644790

`A044943(A005823(n+2)/2)`
-/

namespace A044942.P3855380996362644790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044943 (SequenceMachineLib.roundAway ((A005823 (n + 2) : ℚ) / 2)).toNat

end

end A044942.P3855380996362644790

namespace A044942

/-- `A044943(A005823(n+2)/2)` -/
def P3855380996362644790.Spec : Prop :=
  ∀ n, P3855380996362644790.a n = A044942 (n + 1)

end A044942

/-! ## A044942.P13175489612849492308

`A044943(A055661(n+1))`
-/

namespace A044942.P13175489612849492308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044943 (A055661 (n + 1)).toNat

end

end A044942.P13175489612849492308

namespace A044942

/-- `A044943(A055661(n+1))` -/
def P13175489612849492308.Spec : Prop :=
  ∀ n, P13175489612849492308.a n = A044942 (n + 1)

end A044942

/-! ## A044942.P16349567678068279791

`A044943(A005823(n+2))`
-/

namespace A044942.P16349567678068279791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044943 (A005823 (n + 2)).toNat

end

end A044942.P16349567678068279791

namespace A044942

/-- `A044943(A005823(n+2))` -/
def P16349567678068279791.Spec : Prop :=
  ∀ n, P16349567678068279791.a n = A044942 (n + 1)

end A044942

/-! ## A044942.P12481005358842869536

`A044933(A162853(n+1))`
-/

namespace A044942.P12481005358842869536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044933 (A162853 (n + 1)).toNat

end

end A044942.P12481005358842869536

namespace A044942

/-- `A044933(A162853(n+1))` -/
def P12481005358842869536.Spec : Prop :=
  ∀ n, P12481005358842869536.a n = A044942 (n + 1)

end A044942

/-! ## A044942.P13061601975113251115

`A044933(A175046(n+1))`
-/

namespace A044942.P13061601975113251115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044933 (A175046 (n + 1)).toNat

end

end A044942.P13061601975113251115

namespace A044942

/-- `A044933(A175046(n+1))` -/
def P13061601975113251115.Spec : Prop :=
  ∀ n, P13061601975113251115.a n = A044942 (n + 1)

end A044942

/-! ## A044942.P16003025146806526912

`∑{e}[A163755(n+1), A241318(#)-A001221(#)]`
-/

namespace A044942.P16003025146806526912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163755 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A241318 (Nat.factorization (f1 n).natAbs p) - A001221 (Nat.factorization (f1 n).natAbs p))

end

end A044942.P16003025146806526912

namespace A044942

/-- `∑{e}[A163755(n+1), A241318(#)-A001221(#)]` -/
def P16003025146806526912.Spec : Prop :=
  ∀ n, P16003025146806526912.a n = A044942 (n + 1)

end A044942

/-! ## A044942.P2919167440182211091

`A044944(A000695(n+1))`
-/

namespace A044942.P2919167440182211091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044944 (A000695 (n + 1)).toNat

end

end A044942.P2919167440182211091

namespace A044942

/-- `A044944(A000695(n+1))` -/
def P2919167440182211091.Spec : Prop :=
  ∀ n, P2919167440182211091.a n = A044942 (n + 1)

end A044942

/-! ## A044942.P9863997566359102670

`A044944(A374625(n+1))`
-/

namespace A044942.P9863997566359102670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044944 (A374625 (n + 1)).toNat

end

end A044942.P9863997566359102670

namespace A044942

/-- `A044944(A374625(n+1))` -/
def P9863997566359102670.Spec : Prop :=
  ∀ n, P9863997566359102670.a n = A044942 (n + 1)

end A044942

/-! ## A044942.P8820576473817652776

`A044944(A062880(n+1)/2)`
-/

namespace A044942.P8820576473817652776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044944 (SequenceMachineLib.roundAway ((A062880 (n + 1) : ℚ) / 2)).toNat

end

end A044942.P8820576473817652776

namespace A044942

/-- `A044944(A062880(n+1)/2)` -/
def P8820576473817652776.Spec : Prop :=
  ∀ n, P8820576473817652776.a n = A044942 (n + 1)

end A044942

/-!
# A044943: Number of runs of odd length in the base 3 representation of n.

The programs for A044943, the canonical program `A044943.P17156978428470333392` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A044943 has offset 1).

The definition of A044943 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A044943.P17156978428470333392

`A044942(A371256(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A044943

/-- `A044942(A371256(n+1))` -/
def P17156978428470333392.Spec : Prop :=
  ∀ n, P17156978428470333392.a n = A044943 (n + 1)

theorem P17156978428470333392.correct : P17156978428470333392.Spec := by
  intro n
  simp only [A044943, Nat.add_sub_cancel]

end A044943

/-! ## A044943.P3634175945960424219

`A044944(A023717(n+1))`
-/

namespace A044943.P3634175945960424219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044944 (A023717 (n + 1)).toNat

end

end A044943.P3634175945960424219

namespace A044943

/-- `A044944(A023717(n+1))` -/
def P3634175945960424219.Spec : Prop :=
  ∀ n, P3634175945960424219.a n = A044943 (n + 1)

end A044943

/-! ## A044943.P12351480246911001667

`A044944(A023713(n+2))`
-/

namespace A044943.P12351480246911001667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044944 (A023713 (n + 2)).toNat

end

end A044943.P12351480246911001667

namespace A044943

/-- `A044944(A023713(n+2))` -/
def P12351480246911001667.Spec : Prop :=
  ∀ n, P12351480246911001667.a n = A044943 (n + 1)

end A044943

/-! ## A044943.P6091452154497138037

`A044944(A006288(n+1))`
-/

namespace A044943.P6091452154497138037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044944 (A006288 (n + 1)).toNat

end

end A044943.P6091452154497138037

namespace A044943

/-- `A044944(A006288(n+1))` -/
def P6091452154497138037.Spec : Prop :=
  ∀ n, P6091452154497138037.a n = A044943 (n + 1)

end A044943

/-! ## A044943.P12004395432319280624

`A044944(A023709(n+2))`
-/

namespace A044943.P12004395432319280624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044944 (A023709 (n + 2)).toNat

end

end A044943.P12004395432319280624

namespace A044943

/-- `A044944(A023709(n+2))` -/
def P12004395432319280624.Spec : Prop :=
  ∀ n, P12004395432319280624.a n = A044943 (n + 1)

end A044943

/-! ## A044943.P1357069739158255405

`A044945(A037453(n+1))`
-/

namespace A044943.P1357069739158255405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044945 (A037453 (n + 1)).toNat

end

end A044943.P1357069739158255405

namespace A044943

/-- `A044945(A037453(n+1))` -/
def P1357069739158255405.Spec : Prop :=
  ∀ n, P1357069739158255405.a n = A044943 (n + 1)

end A044943

/-! ## A044943.P4393121842902952589

`A044946(A037454(n+1))`
-/

namespace A044943.P4393121842902952589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044946 (A037454 (n + 1)).toNat

end

end A044943.P4393121842902952589

namespace A044943

/-- `A044946(A037454(n+1))` -/
def P4393121842902952589.Spec : Prop :=
  ∀ n, P4393121842902952589.a n = A044943 (n + 1)

end A044943

/-! ## A044943.P10437622061445000981

`A044949(A037314(n+1))`
-/

namespace A044943.P10437622061445000981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044949 (A037314 (n + 1)).toNat

end

end A044943.P10437622061445000981

namespace A044943

/-- `A044949(A037314(n+1))` -/
def P10437622061445000981.Spec : Prop :=
  ∀ n, P10437622061445000981.a n = A044943 (n + 1)

end A044943

/-! ## A044943.P15473369438015601090

`A044949(A319497(n+1))`
-/

namespace A044943.P15473369438015601090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044949 (A319497 (n + 1)).toNat

end

end A044943.P15473369438015601090

namespace A044943

/-- `A044949(A319497(n+1))` -/
def P15473369438015601090.Spec : Prop :=
  ∀ n, P15473369438015601090.a n = A044943 (n + 1)

end A044943

/-! ## A044943.P18152398302371194617

`A044947(A037455(n+1))`
-/

namespace A044943.P18152398302371194617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044947 (A037455 (n + 1)).toNat

end

end A044943.P18152398302371194617

namespace A044943

/-- `A044947(A037455(n+1))` -/
def P18152398302371194617.Spec : Prop :=
  ∀ n, P18152398302371194617.a n = A044943 (n + 1)

end A044943

/-! ## A044943.P12077172781309616796

`A044948(A037456(n+1))`
-/

namespace A044943.P12077172781309616796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044948 (A037456 (n + 1)).toNat

end

end A044943.P12077172781309616796

namespace A044943

/-- `A044948(A037456(n+1))` -/
def P12077172781309616796.Spec : Prop :=
  ∀ n, P12077172781309616796.a n = A044943 (n + 1)

end A044943

/-! ## A044943.P13744798164622939426

`A044949(A208665(n+1))`
-/

namespace A044943.P13744798164622939426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044949 (A208665 (n + 1)).toNat

end

end A044943.P13744798164622939426

namespace A044943

/-- `A044949(A208665(n+1))` -/
def P13744798164622939426.Spec : Prop :=
  ∀ n, P13744798164622939426.a n = A044943 (n + 1)

end A044943

/-! ## A044943.P13262248814402978016

`A044949(A338086(n+1))`
-/

namespace A044943.P13262248814402978016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044949 (A338086 (n + 1)).toNat

end

end A044943.P13262248814402978016

namespace A044943

/-- `A044949(A338086(n+1))` -/
def P13262248814402978016.Spec : Prop :=
  ∀ n, P13262248814402978016.a n = A044943 (n + 1)

end A044943

/-!
# A044944: Runs of odd length in the base 4 representation of n.

The programs for A044944, there is no canonical definition to state claims against.
-/

/-! ## A044944.P1217861874849006864

`A043556(n+1)-A044935(n+1)`
-/

namespace A044944.P1217861874849006864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043556 (n + 1) - A044935 (n + 1)

end

end A044944.P1217861874849006864

/-! ## A044944.P2548542292416181764

`A044945(A037459(n+1))`
-/

namespace A044944.P2548542292416181764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044945 (A037459 (n + 1)).toNat

end

end A044944.P2548542292416181764

/-! ## A044944.P15549143357115608295

`A044945(A020654(n+2))`
-/

namespace A044944.P15549143357115608295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044945 (A020654 (n + 2)).toNat

end

end A044944.P15549143357115608295

/-! ## A044944.P14511254676028874471

`A044945(A023733(n+2))`
-/

namespace A044944.P14511254676028874471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044945 (A023733 (n + 2)).toNat

end

end A044944.P14511254676028874471

/-! ## A044944.P17332870399491935936

`A044945(A023729(n+2))`
-/

namespace A044944.P17332870399491935936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044945 (A023729 (n + 2)).toNat

end

end A044944.P17332870399491935936

/-! ## A044944.P9218933446452305127

`A044945(A023725(n+2))`
-/

namespace A044944.P9218933446452305127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044945 (A023725 (n + 2)).toNat

end

end A044944.P9218933446452305127

/-! ## A044944.P12481637734017062134

`A044946(A037460(n+1))`
-/

namespace A044944.P12481637734017062134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044946 (A037460 (n + 1)).toNat

end

end A044944.P12481637734017062134

/-! ## A044944.P9390483327662442444

`A044949(A037463(n+1))`
-/

namespace A044944.P9390483327662442444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044949 (A037463 (n + 1)).toNat

end

end A044944.P9390483327662442444

/-! ## A044944.P16934873900125415063

`A044949(A005836(n+2))`
-/

namespace A044944.P16934873900125415063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044949 (A005836 (n + 2)).toNat

end

end A044944.P16934873900125415063

/-! ## A044944.P8046691722887719552

`A044949(A005823(n+2)/2)`
-/

namespace A044944.P8046691722887719552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044949 (SequenceMachineLib.roundAway ((A005823 (n + 2) : ℚ) / 2)).toNat

end

end A044944.P8046691722887719552

/-! ## A044944.P17162049681316214545

`A044947(A037461(n+1))`
-/

namespace A044944.P17162049681316214545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044947 (A037461 (n + 1)).toNat

end

end A044944.P17162049681316214545

/-! ## A044944.P18152619125803574304

`A044949(A005823(n+2))`
-/

namespace A044944.P18152619125803574304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044949 (A005823 (n + 2)).toNat

end

end A044944.P18152619125803574304

/-! ## A044944.P1250484388956525581

`A044949(record[A004488(n+1)])`
-/

namespace A044944.P1250484388956525581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044949 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A044944.P1250484388956525581

/-! ## A044944.P4979327565845488603

`A044949(record[A117966(n+1)])`
-/

namespace A044944.P4979327565845488603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044949 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A044944.P4979327565845488603

/-! ## A044944.P7475801762731386716

`A043556(n+1)-A044941(A007090(n+1))`
-/

namespace A044944.P7475801762731386716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043556 (n + 1) - A044941 (A007090 (n + 1)).toNat

end

end A044944.P7475801762731386716

/-! ## A044944.P2835041883693168907

`A044948(A037462(n+1))`
-/

namespace A044944.P2835041883693168907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044948 (A037462 (n + 1)).toNat

end

end A044944.P2835041883693168907

/-! ## A044944.P6264124349677226236

`A044949(record[A060372(n+1)])`
-/

namespace A044944.P6264124349677226236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060372 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044949 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A044944.P6264124349677226236

/-! ## A044944.P13259562593474004917

`A044950(A007090(n+1))`
-/

namespace A044944.P13259562593474004917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044950 (A007090 (n + 1)).toNat

end

end A044944.P13259562593474004917

/-! ## A044944.P16265817991096525439

`A044950(A007284(n+1))`
-/

namespace A044944.P16265817991096525439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044950 (A007284 (n + 1)).toNat

end

end A044944.P16265817991096525439

/-! ## A044944.P18339410340651272077

`A044950(A046030(n+2))`
-/

namespace A044944.P18339410340651272077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044950 (A046030 (n + 2)).toNat

end

end A044944.P18339410340651272077

/-!
# A044945: Runs of odd length in the base 5 representation of n.

The programs for A044945, there is no canonical definition to state claims against.
-/

/-! ## A044945.P3713722554111408904

`A043557(n+1)-A044936(n+1)`
-/

namespace A044945.P3713722554111408904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043557 (n + 1) - A044936 (n + 1)

end

end A044945.P3713722554111408904

/-! ## A044945.P335538003542562004

`A044946(A037465(n+1))`
-/

namespace A044945.P335538003542562004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044946 (A037465 (n + 1)).toNat

end

end A044945.P335538003542562004

/-! ## A044945.P6650080517974951670

`A044949(A037468(n+1))`
-/

namespace A044945.P6650080517974951670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044949 (A037468 (n + 1)).toNat

end

end A044945.P6650080517974951670

/-! ## A044945.P744003045290703805

`A043557(n+1)-A044941(A007091(n+1))`
-/

namespace A044945.P744003045290703805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043557 (n + 1) - A044941 (A007091 (n + 1)).toNat

end

end A044945.P744003045290703805

/-! ## A044945.P9411276136023125207

`A044947(A037466(n+1))`
-/

namespace A044945.P9411276136023125207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044947 (A037466 (n + 1)).toNat

end

end A044945.P9411276136023125207

/-! ## A044945.P11285464221182319423

`A044948(A037467(n+1))`
-/

namespace A044945.P11285464221182319423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044948 (A037467 (n + 1)).toNat

end

end A044945.P11285464221182319423

/-! ## A044945.P10357638606548227420

`A044949(record[A163327(n+1)])`
-/

namespace A044945.P10357638606548227420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163327 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044949 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A044945.P10357638606548227420

/-! ## A044945.P13655200172934127049

`A044950(A007091(n+1))`
-/

namespace A044945.P13655200172934127049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044950 (A007091 (n + 1)).toNat

end

end A044945.P13655200172934127049

/-! ## A044945.P282222944933645861

`A044950(A054047(n+1))`
-/

namespace A044945.P282222944933645861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044950 (A054047 (n + 1)).toNat

end

end A044945.P282222944933645861

/-! ## A044945.P4372146590717296800

`A044950(A080228(n+2))`
-/

namespace A044945.P4372146590717296800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044950 (A080228 (n + 2)).toNat

end

end A044945.P4372146590717296800

/-! ## A044945.P11923853844679237147

`A044950(A014263(n+2)/2)`
-/

namespace A044945.P11923853844679237147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044950 (SequenceMachineLib.roundAway ((A014263 (n + 2) : ℚ) / 2)).toNat

end

end A044945.P11923853844679237147

/-! ## A044945.P13421504102098219971

`A044950(A001744(n+2))`
-/

namespace A044945.P13421504102098219971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044950 (A001744 (n + 2)).toNat

end

end A044945.P13421504102098219971

/-! ## A044945.P5847807323240206706

`A044950(A014263(n+2))`
-/

namespace A044945.P5847807323240206706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044950 (A014263 (n + 2)).toNat

end

end A044945.P5847807323240206706

/-! ## A044945.P2891556763770435003

`A044950(A072960(n+2))`
-/

namespace A044945.P2891556763770435003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044950 (A072960 (n + 2)).toNat

end

end A044945.P2891556763770435003

/-!
# A044946: Runs of odd length in the base 6 representation of n.

The programs for A044946, there is no canonical definition to state claims against.
-/

/-! ## A044946.P12518356036915276045

`A043558(n+1)-A044937(n+1)`
-/

namespace A044946.P12518356036915276045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043558 (n + 1) - A044937 (n + 1)

end

end A044946.P12518356036915276045

/-! ## A044946.P4085380101045378586

`A044949(A037472(n+1))`
-/

namespace A044946.P4085380101045378586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044949 (A037472 (n + 1)).toNat

end

end A044946.P4085380101045378586

/-! ## A044946.P3425771911542926501

`A043558(n+1)-A044941(A007092(n+1))`
-/

namespace A044946.P3425771911542926501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043558 (n + 1) - A044941 (A007092 (n + 1)).toNat

end

end A044946.P3425771911542926501

/-! ## A044946.P14271783970869670124

`A044947(A020657(n+2))`
-/

namespace A044946.P14271783970869670124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044947 (A020657 (n + 2)).toNat

end

end A044946.P14271783970869670124

/-! ## A044946.P5741197782573198232

`A044947(A249102(n+2))`
-/

namespace A044946.P5741197782573198232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044947 (A249102 (n + 2)).toNat

end

end A044946.P5741197782573198232

/-! ## A044946.P11406815527371258503

`A044948(A037471(n+1))`
-/

namespace A044946.P11406815527371258503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044948 (A037471 (n + 1)).toNat

end

end A044946.P11406815527371258503

/-! ## A044946.P57978698068863564

`A044950(A007092(n+1))`
-/

namespace A044946.P57978698068863564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044950 (A007092 (n + 1)).toNat

end

end A044946.P57978698068863564

/-! ## A044946.P9263854207313785687

`A044950(A084984(n+2))`
-/

namespace A044946.P9263854207313785687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044950 (A084984 (n + 2)).toNat

end

end A044946.P9263854207313785687

/-! ## A044946.P14130267224209529132

`A044950(A202267(n+2))`
-/

namespace A044946.P14130267224209529132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044950 (A202267 (n + 2)).toNat

end

end A044946.P14130267224209529132

/-! ## A044946.P1074317041322009601

`A044950(A321702(n+2))`
-/

namespace A044946.P1074317041322009601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044950 (A321702 (n + 2)).toNat

end

end A044946.P1074317041322009601

/-! ## A044946.P577374671626468972

`A044950(A276138(n+2))`
-/

namespace A044946.P577374671626468972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044950 (A276138 (n + 2)).toNat

end

end A044946.P577374671626468972

/-! ## A044946.P1605091872748685342

`A044950(A137386(n+2))`
-/

namespace A044946.P1605091872748685342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044950 (A137386 (n + 2)).toNat

end

end A044946.P1605091872748685342

/-!
# A044947: Runs of odd length in the base 7 representation of n.

The programs for A044947, there is no canonical definition to state claims against.
-/

/-! ## A044947.P17806365121491845379

`A044949(A037475(n+1))`
-/

namespace A044947.P17806365121491845379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044949 (A037475 (n + 1)).toNat

end

end A044947.P17806365121491845379

/-! ## A044947.P17842087640027254679

`A043559(n+1)-A044938(n+1)`
-/

namespace A044947.P17842087640027254679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043559 (n + 1) - A044938 (n + 1)

end

end A044947.P17842087640027254679

/-! ## A044947.P9845410682359246165

`A043559(n+1)-A044941(A007093(n+1))`
-/

namespace A044947.P9845410682359246165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043559 (n + 1) - A044941 (A007093 (n + 1)).toNat

end

end A044947.P9845410682359246165

/-! ## A044947.P3745983063676431376

`A044948(A037474(n+1))`
-/

namespace A044947.P3745983063676431376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044948 (A037474 (n + 1)).toNat

end

end A044947.P3745983063676431376

/-! ## A044947.P5031107492296901384

`A044950(A007093(n+1))`
-/

namespace A044947.P5031107492296901384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044950 (A007093 (n + 1)).toNat

end

end A044947.P5031107492296901384

/-! ## A044947.P16943405847509422817

`A044950(A168501(n+2))`
-/

namespace A044947.P16943405847509422817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044950 (A168501 (n + 2)).toNat

end

end A044947.P16943405847509422817

/-! ## A044947.P5433552328403740080

`A044950(A307913(n+2))`
-/

namespace A044947.P5433552328403740080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044950 (A307913 (n + 2)).toNat

end

end A044947.P5433552328403740080

/-! ## A044947.P431140630515427704

`A044950(A028374(n+2))`
-/

namespace A044947.P431140630515427704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044950 (A028374 (n + 2)).toNat

end

end A044947.P431140630515427704

/-! ## A044947.P9276581986623993167

`A044949(A361780(n+1)+1)`
-/

namespace A044947.P9276581986623993167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044949 (A361780 (n + 1) + 1).toNat

end

end A044947.P9276581986623993167

/-! ## A044947.P13115320577947515631

`A044949(A361780(n+2))`
-/

namespace A044947.P13115320577947515631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044949 (A361780 (n + 2)).toNat

end

end A044947.P13115320577947515631

/-!
# A044948: Number of runs of odd length in the base 8 representation of n.

The programs for A044948, there is no canonical definition to state claims against.
-/

/-! ## A044948.P17269156904259885496

`A043560(n+1)-A044939(n+1)`
-/

namespace A044948.P17269156904259885496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043560 (n + 1) - A044939 (n + 1)

end

end A044948.P17269156904259885496

/-! ## A044948.P7041808029465652823

`A044949(A037477(n+1))`
-/

namespace A044948.P7041808029465652823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044949 (A037477 (n + 1)).toNat

end

end A044948.P7041808029465652823

/-! ## A044948.P4347557995463446633

`A044949(record[A037477(abs(1-n))])`
-/

namespace A044948.P4347557995463446633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044949 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A044948.P4347557995463446633

/-! ## A044948.P11327028975096823991

`A044950(A007094(n+1))`
-/

namespace A044948.P11327028975096823991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044950 (A007094 (n + 1)).toNat

end

end A044948.P11327028975096823991

/-! ## A044948.P2831552133430802052

`A044950(eq[n, A035043(A028310(n))])`
-/

namespace A044948.P2831552133430802052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044950 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044948.P2831552133430802052

/-! ## A044948.P1106658070426111258

`A044950(eq[n, A222245(A028310(n))])`
-/

namespace A044948.P1106658070426111258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222245 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044950 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044948.P1106658070426111258

/-! ## A044948.P3242314747159011128

`A044950(eq[n, A222251(A028310(n))])`
-/

namespace A044948.P3242314747159011128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222251 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044950 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044948.P3242314747159011128

/-! ## A044948.P17307533561464219789

`A044949(A053382(∑[n])+A052404(n+1))`
-/

namespace A044948.P17307533561464219789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044949 (A053382 (∑ j ∈ Finset.range (n + 1), f1 j) + A052404 (n + 1)).toNat

end

end A044948.P17307533561464219789

/-!
# A044949: Number of runs of odd length in the base-9 representation of n.

The programs for A044949, there is no canonical definition to state claims against.
-/

/-! ## A044949.P5946424139344536789

`A043561(n+1)-A044940(n+1)`
-/

namespace A044949.P5946424139344536789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043561 (n + 1) - A044940 (n + 1)

end

end A044949.P5946424139344536789

/-! ## A044949.P5238844245626410454

`A044950(A007095(n+1))`
-/

namespace A044949.P5238844245626410454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044950 (A007095 (n + 1)).toNat

end

end A044949.P5238844245626410454

/-! ## A044949.P8463715820910244084

`A044950(A052404(n+2))`
-/

namespace A044949.P8463715820910244084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044950 (A052404 (n + 2)).toNat

end

end A044949.P8463715820910244084

/-! ## A044949.P7194461202871480654

`A044950(A052406(n+2))`
-/

namespace A044949.P7194461202871480654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044950 (A052406 (n + 2)).toNat

end

end A044949.P7194461202871480654

/-! ## A044949.P7152642537433241747

`A044950(eq[n, A028310(A004179(n))])`
-/

namespace A044949.P7152642537433241747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A004179 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044950 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044949.P7152642537433241747

/-! ## A044949.P14190884451760208259

`A044950(eq[A000038(n), A316866(n)])`
-/

namespace A044949.P14190884451760208259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316866 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044950 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A044949.P14190884451760208259

/-! ## A044949.P5841236062797159544

`A044950(eq[A004176(n), A028310(n)])`
-/

namespace A044949.P5841236062797159544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004176 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044950 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A044949.P5841236062797159544

/-! ## A044949.P5559069574700411100

`A044950(eq[A000007(n), A316866(n)])`
-/

namespace A044949.P5559069574700411100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316866 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044950 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A044949.P5559069574700411100

/-! ## A044949.P9019523689053806961

`A044950(eq[A000007(n), A316868(n)])`
-/

namespace A044949.P9019523689053806961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316868 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044950 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A044949.P9019523689053806961

/-! ## A044949.P17499432174336813206

`A044950(eq[A000038(n), A316868(n)])`
-/

namespace A044949.P17499432174336813206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316868 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044950 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A044949.P17499432174336813206

/-! ## A044949.P7550935702491128213

`A044950(record[A028310(n-A136400(n))])`
-/

namespace A044949.P7550935702491128213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((n : ℤ) - A136400 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044950 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A044949.P7550935702491128213

/-!
# A044950: Number of runs of odd length in the base 10 representation of n.

The programs for A044950, there is no canonical definition to state claims against.
-/

/-! ## A044950.P9121041757137711719

`A043562(n+1)-A044941(n+1)`
-/

namespace A044950.P9121041757137711719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (n + 1) - A044941 (n + 1)

end

end A044950.P9121041757137711719

/-! ## A044950.P11175318115089765248

`A195819(A196222(n))%A328680(n+1)`
-/

namespace A044950.P11175318115089765248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195819 (A196222 n).toNat) (A328680 (n + 1))

end

end A044950.P11175318115089765248

/-! ## A044950.P14607627734664147665

`A044941(A321536(n+1))`
-/

namespace A044950.P14607627734664147665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044941 (A321536 (n + 1)).toNat

end

end A044950.P14607627734664147665

/-! ## A044950.P16627583126071523193

`A043284(A087019(n+1))%3`
-/

namespace A044950.P16627583126071523193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043284 (A087019 (n + 1)).toNat) 3

end

end A044950.P16627583126071523193

/-! ## A044950.P8089389382954916818

`A350530(xor(3, A139337(n+1)))`
-/

namespace A044950.P8089389382954916818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350530 (Int.xor 3 (A139337 (n + 1))).toNat

end

end A044950.P8089389382954916818

/-! ## A044950.P16436995850822341949

`A331307(A139337(n+1)²)%4`
-/

namespace A044950.P16436995850822341949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331307 (A139337 (n + 1) ^ 2).toNat) 4

end

end A044950.P16436995850822341949

/-! ## A044950.P15567636317748782869

`A196564(A139337(n+1)^A043562(n))`
-/

namespace A044950.P15567636317748782869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (SequenceMachineLib.roundAway ((A139337 (n + 1) : ℚ) ^ (A043562 n : ℤ))).toNat

end

end A044950.P15567636317748782869

/-! ## A044950.P11991675391945750601

`A196564(A139337(n+1)²)`
-/

namespace A044950.P11991675391945750601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A139337 (n + 1) ^ 2).toNat

end

end A044950.P11991675391945750601

/-! ## A044950.P17125797451075874379

`A196564(∏[ratio[A139337(n)]²])`
-/

namespace A044950.P17125797451075874379
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139337 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℚ) / (f2 n : ℚ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A044950.P17125797451075874379

/-! ## A044950.P8226111086586859225

`A107846(A020338(n+1))%3`
-/

namespace A044950.P8226111086586859225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107846 (A020338 (n + 1)).toNat) 3

end

end A044950.P8226111086586859225

/-!
# A044951: Numbers having a different number of ones and zeros in base 2.

The programs for A044951, the canonical program `A044951.P14342552118597486436` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A044951 has offset 1).

The definition of A044951 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A044951.P14342552118597486436

`∑[runs[A268289(n)]]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A044951

/-- `∑[runs[A268289(n)]]` -/
def P14342552118597486436.Spec : Prop :=
  ∀ n, (P14342552118597486436.a n : ℤ) = A044951 (n + 1)

theorem P14342552118597486436.correct : P14342552118597486436.Spec := by
  intro n
  simp only [A044951, Nat.add_sub_cancel]

end A044951

/-! ## A044951.P2749456319370426060

`lt[0, abs(A145037(n))]`
-/

namespace A044951.P2749456319370426060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A145037 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A044951.P2749456319370426060

namespace A044951

/-- `lt[0, abs(A145037(n))]` -/
def P2749456319370426060.Spec : Prop :=
  ∀ n, (P2749456319370426060.a n : ℤ) = A044951 (n + 1)

end A044951

/-! ## A044951.P996890413926554541

`comp[A031443(n+1)-1]+1`
-/

namespace A044951.P996890413926554541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031443 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A044951.P996890413926554541

namespace A044951

/-- `comp[A031443(n+1)-1]+1` -/
def P996890413926554541.Spec : Prop :=
  ∀ n, (P996890413926554541.a n : ℤ) = A044951 (n + 1)

end A044951

/-! ## A044951.P14603042722469799907

`comp[eq[1, A269735(n)+a(n-1)]]` with `a(0)=1`
-/

namespace A044951.P14603042722469799907
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f3 =>
  A269735 n + f3 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A044951.P14603042722469799907

namespace A044951

/-- `comp[eq[1, A269735(n)+a(n-1)]]` -/
def P14603042722469799907.Spec : Prop :=
  ∀ n, (P14603042722469799907.a n : ℤ) = A044951 (n + 1)

end A044951

/-! ## A044951.P11106999601398746596

`eq[1, A054977(A145037(n)²)]`
-/

namespace A044951.P11106999601398746596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A145037 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044951.P11106999601398746596

namespace A044951

/-- `eq[1, A054977(A145037(n)²)]` -/
def P11106999601398746596.Spec : Prop :=
  ∀ n, (P11106999601398746596.a n : ℤ) = A044951 (n + 1)

end A044951

/-! ## A044951.P5736249701514165688

`eq[1, A057427(A145037(n)²)]`
-/

namespace A044951.P5736249701514165688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A145037 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044951.P5736249701514165688

namespace A044951

/-- `eq[1, A057427(A145037(n)²)]` -/
def P5736249701514165688.Spec : Prop :=
  ∀ n, (P5736249701514165688.a n : ℤ) = A044951 (n + 1)

end A044951

/-! ## A044951.P17238005001563955652

`eq[1, A057428(A145037(n)²)²]`
-/

namespace A044951.P17238005001563955652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A145037 n ^ 2).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044951.P17238005001563955652

namespace A044951

/-- `eq[1, A057428(A145037(n)²)²]` -/
def P17238005001563955652.Spec : Prop :=
  ∀ n, (P17238005001563955652.a n : ℤ) = A044951 (n + 1)

end A044951

/-! ## A044951.P10380346972946019004

`eq[1, A062157(A145037(n)²)²]`
-/

namespace A044951.P10380346972946019004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A145037 n ^ 2).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044951.P10380346972946019004

namespace A044951

/-- `eq[1, A062157(A145037(n)²)²]` -/
def P10380346972946019004.Spec : Prop :=
  ∀ n, (P10380346972946019004.a n : ℤ) = A044951 (n + 1)

end A044951

/-! ## A044951.P7321892935524321204

`comp[eq[1, A000007(A145037(n)²)]]`
-/

namespace A044951.P7321892935524321204
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A145037 n ^ 2).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A044951.P7321892935524321204

namespace A044951

/-- `comp[eq[1, A000007(A145037(n)²)]]` -/
def P7321892935524321204.Spec : Prop :=
  ∀ n, (P7321892935524321204.a n : ℤ) = A044951 (n + 1)

end A044951

/-! ## A044951.P15016284696815675546

`∪[A072600(n+1), A072603(n+1)]`
-/

namespace A044951.P15016284696815675546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072600 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A044951.P15016284696815675546

namespace A044951

/-- `∪[A072600(n+1), A072603(n+1)]` -/
def P15016284696815675546.Spec : Prop :=
  ∀ n, (P15016284696815675546.a n : ℤ) = A044951 (n + 1)

end A044951

/-! ## A044951.P1898933754614673163

`lt[acot(n), A037861(n)²]`
-/

namespace A044951.P1898933754614673163
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A044951.P1898933754614673163

namespace A044951

/-- `lt[acot(n), A037861(n)²]` -/
def P1898933754614673163.Spec : Prop :=
  ∀ n, (P1898933754614673163.a n : ℤ) = A044951 (n + 1)

end A044951

/-! ## A044951.P1449051554259366661

`lt[log(2), A037861(n+1)²]+1`
-/

namespace A044951.P1449051554259366661
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (2 : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n + 1

end

end A044951.P1449051554259366661

namespace A044951

/-- `lt[log(2), A037861(n+1)²]+1` -/
def P1449051554259366661.Spec : Prop :=
  ∀ n, (P1449051554259366661.a n : ℤ) = A044951 (n + 1)

end A044951

/-! ## A044951.P963748233966750132

`lt[A000038(n), A037861(n)²]`
-/

namespace A044951.P963748233966750132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A044951.P963748233966750132

namespace A044951

/-- `lt[A000038(n), A037861(n)²]` -/
def P963748233966750132.Spec : Prop :=
  ∀ n, (P963748233966750132.a n : ℤ) = A044951 (n + 1)

end A044951

/-! ## A044951.P13559626042557363195

`lt[A080116(n), A037861(n)²]`
-/

namespace A044951.P13559626042557363195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080116 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A044951.P13559626042557363195

namespace A044951

/-- `lt[A080116(n), A037861(n)²]` -/
def P13559626042557363195.Spec : Prop :=
  ∀ n, (P13559626042557363195.a n : ℤ) = A044951 (n + 1)

end A044951

/-! ## A044951.P2047928156040515076

`lt[A152723(n+1), A152724(n+1)]+1`
-/

namespace A044951.P2047928156040515076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152724 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A044951.P2047928156040515076

namespace A044951

/-- `lt[A152723(n+1), A152724(n+1)]+1` -/
def P2047928156040515076.Spec : Prop :=
  ∀ n, (P2047928156040515076.a n : ℤ) = A044951 (n + 1)

end A044951

/-! ## A044951.P12678697935276941196

`eq[A000038(n)², A000038(A145037(n)²)]`
-/

namespace A044951.P12678697935276941196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A145037 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044951.P12678697935276941196

namespace A044951

/-- `eq[A000038(n)², A000038(A145037(n)²)]` -/
def P12678697935276941196.Spec : Prop :=
  ∀ n, (P12678697935276941196.a n : ℤ) = A044951 (n + 1)

end A044951

/-! ## A044951.P14740657604010949218

`∑[runs[A301336(n)]]`
-/

namespace A044951.P14740657604010949218
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301336 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044951.P14740657604010949218

namespace A044951

/-- `∑[runs[A301336(n)]]` -/
def P14740657604010949218.Spec : Prop :=
  ∀ n, (P14740657604010949218.a n : ℤ) = A044951 (n + 1)

end A044951

/-! ## A044951.P15200274620253158448

`lt[A000007(n), A037861(n)²]`
-/

namespace A044951.P15200274620253158448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A044951.P15200274620253158448

namespace A044951

/-- `lt[A000007(n), A037861(n)²]` -/
def P15200274620253158448.Spec : Prop :=
  ∀ n, (P15200274620253158448.a n : ℤ) = A044951 (n + 1)

end A044951

/-! ## A044951.P11994097861046627065

`lt[Δ[A006257(n)], A099246(n)]`
-/

namespace A044951.P11994097861046627065
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099246 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A044951.P11994097861046627065

namespace A044951

/-- `lt[Δ[A006257(n)], A099246(n)]` -/
def P11994097861046627065.Spec : Prop :=
  ∀ n, (P11994097861046627065.a n : ℤ) = A044951 (n + 1)

end A044951

/-! ## A044951.P15078167454511565738

`eq[0, and(A001316(n), A080100(n))]`
-/

namespace A044951.P15078167454511565738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001316 n) (A080100 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044951.P15078167454511565738

namespace A044951

/-- `eq[0, and(A001316(n), A080100(n))]` -/
def P15078167454511565738.Spec : Prop :=
  ∀ n, (P15078167454511565738.a n : ℤ) = A044951 (n + 1)

end A044951

/-!
# A044952: Positive numbers with no two equally numerous base 3 digits.

The programs for A044952, there is no canonical definition to state claims against.
-/

/-! ## A044952.P6932365448131549791

`∪[A043807(n+1), A167819(n+1)]`
-/

namespace A044952.P6932365448131549791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167819 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A044952.P6932365448131549791

/-! ## A044952.P12209194814245731377

`∪[A043816(n+1), A167819(n+1)]`
-/

namespace A044952.P12209194814245731377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043816 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167819 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A044952.P12209194814245731377

/-! ## A044952.P3467540357268303353

`eq[A073423(n), A088917(A165306(n+1))]`
-/

namespace A044952.P3467540357268303353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073423 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088917 (A165306 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044952.P3467540357268303353

/-! ## A044952.P7436023027809779721

`A134745(n+1)-A000038(A054193(n+1))`
-/

namespace A044952.P7436023027809779721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134745 (n + 1) - A000038 (A054193 (n + 1)).toNat

end

end A044952.P7436023027809779721

/-! ## A044952.P12285189854565382067

`record[and(A111660(n+3)-8, n+1)]`
-/

namespace A044952.P12285189854565382067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A111660 (n + 3) - 8) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044952.P12285189854565382067

/-!
# A044953: Numbers with no two equally numerous base 4 digits.

The programs for A044953, there is no canonical definition to state claims against.
-/

/-! ## A044953.P10821513655437462538

`record[A289813(A044958(n+1))]`
-/

namespace A044953.P10821513655437462538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (A044958 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044953.P10821513655437462538

/-! ## A044953.P7530230670905926324

`record[A059905(A044965(n+1))]`
-/

namespace A044953.P7530230670905926324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 (A044965 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044953.P7530230670905926324

/-! ## A044953.P1385379857792944294

`A059905(∩[A044965(n+1), A000695(n)])`
-/

namespace A044953.P1385379857792944294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044965 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A044953.P1385379857792944294

/-! ## A044953.P15354041885019013280

`A059905(∩[A044965(n+1), A001196(n)])`
-/

namespace A044953.P15354041885019013280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044965 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001196 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A044953.P15354041885019013280

/-!
# A044955: Numbers with no two equally numerous base 6 digits.

The programs for A044955, there is no canonical definition to state claims against.
-/

/-! ## A044955.P7703450481127053585

`eq[A004182(A165052(n)), A151622(n)]`
-/

namespace A044955.P7703450481127053585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004182 (A165052 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151622 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044955.P7703450481127053585

/-! ## A044955.P8106675412663268830

`record[A194974(A030105(n+1))]`
-/

namespace A044955.P8106675412663268830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194974 (A030105 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044955.P8106675412663268830

/-! ## A044955.P8402494335053050459

`lt[A161409(A165051(n)), n+1]`
-/

namespace A044955.P8402494335053050459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161409 (A165051 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A044955.P8402494335053050459

/-!
# A044956: Numbers with no two equally numerous base 7 digits.

The programs for A044956, there is no canonical definition to state claims against.
-/

/-! ## A044956.P3559864107793873381

`eq[A015241(A165071(n)), A178489(n)]`
-/

namespace A044956.P3559864107793873381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015241 (A165071 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044956.P3559864107793873381

/-! ## A044956.P14018084685021896342

`record[A265552(n)+A010894(n)]`
-/

namespace A044956.P14018084685021896342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265552 n + A010894 (n + 21)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044956.P14018084685021896342

/-! ## A044956.P10682272326210656544

`eq[1, A003285(n*A030106(n)+1)]`
-/

namespace A044956.P10682272326210656544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 ((n : ℤ) * A030106 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044956.P10682272326210656544

/-! ## A044956.P6089769357101331163

`A043710(A077168(n))-A210716(n)`
-/

namespace A044956.P6089769357101331163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043710 (A077168 n).toNat - A210716 n

end

end A044956.P6089769357101331163

/-!
# A044957: Numbers with no two equally numerous base 8 digits.

The programs for A044957, there is no canonical definition to state claims against.
-/

/-! ## A044957.P18353272283669140906

`eq[1, A151722(A165090(n))%(n+1)]`
-/

namespace A044957.P18353272283669140906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151722 (A165090 n).toNat) (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044957.P18353272283669140906

/-!
# A044958: Numbers with no two equally numerous base 9 digits.

The programs for A044958, there is no canonical definition to state claims against.
-/

/-! ## A044958.P11018367115039383952

`eq[A059995(A094798(n+8)), A102683(n+9)]`
-/

namespace A044958.P11018367115039383952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A094798 (n + 8)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (n + 9)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044958.P11018367115039383952

/-! ## A044958.P3412804836663713945

`record[A265556(n)+A014028(n)]`
-/

namespace A044958.P3412804836663713945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265556 n + A014028 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044958.P3412804836663713945

/-! ## A044958.P16839438299323562938

`record[A265556(n)+A112315(n)]`
-/

namespace A044958.P16839438299323562938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265556 n + A112315 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044958.P16839438299323562938

/-! ## A044958.P6768674749595321959

`record[A265556(n)+A249832(n)]`
-/

namespace A044958.P6768674749595321959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265556 n + A249832 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044958.P6768674749595321959

/-! ## A044958.P6550623900615771173

`record[or(A067898(n), A265556(n))]`
-/

namespace A044958.P6550623900615771173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A067898 n) (A265556 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044958.P6550623900615771173

/-!
# A044959: Numbers with no two equally numerous base 10 digits.

The programs for A044959, there is no canonical definition to state claims against.
-/

/-! ## A044959.P4902932942954050037

`A353181(n+1)%A000040(A353181(n+1))`
-/

namespace A044959.P4902932942954050037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353181 (n + 1)) (A000040 (A353181 (n + 1)).toNat)

end

end A044959.P4902932942954050037

/-! ## A044959.P2075478715690677244

`lt[A000007(n), A079691(A332550(n))]`
-/

namespace A044959.P2075478715690677244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079691 (A332550 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A044959.P2075478715690677244

/-! ## A044959.P9137345798615802451

`A353181(A178788(A073064(n+1))+n+1)`
-/

namespace A044959.P9137345798615802451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353181 (A178788 (A073064 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A044959.P9137345798615802451

/-! ## A044959.P10258957101163603146

`and(A353181(n+1), A375155(n+1))`
-/

namespace A044959.P10258957101163603146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A353181 (n + 1)) (A375155 (n + 1))

end

end A044959.P10258957101163603146

/-! ## A044959.P15549192749006377220

`A353181(n+1)%A004733(n)`
-/

namespace A044959.P15549192749006377220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353181 (n + 1)) (A004733 n)

end

end A044959.P15549192749006377220

/-! ## A044959.P15899511942689429467

`A353181(and(1, A003261(n+1))+n)`
-/

namespace A044959.P15899511942689429467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353181 (Int.land 1 (A003261 (n + 1)) + (n : ℤ)).toNat

end

end A044959.P15899511942689429467

/-! ## A044959.P5417618767613798808

`A353181(and(1, A163383(n+1))+n)`
-/

namespace A044959.P5417618767613798808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353181 (Int.land 1 (A163383 (n + 1)) + (n : ℤ)).toNat

end

end A044959.P5417618767613798808

/-! ## A044959.P14129470342734884007

`A353181(and(1, A055580(n))+n)`
-/

namespace A044959.P14129470342734884007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353181 (Int.land 1 (A055580 n) + (n : ℤ)).toNat

end

end A044959.P14129470342734884007

/-! ## A044959.P14951974991535440309

`A353181(and(1, A107392(n))+n)`
-/

namespace A044959.P14951974991535440309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353181 (Int.land 1 (A107392 n) + (n : ℤ)).toNat

end

end A044959.P14951974991535440309

/-! ## A044959.P4740460210678974086

`A353181(and(n-A055580(n), A055580(n)))`
-/

namespace A044959.P4740460210678974086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353181 (Int.land ((n : ℤ) - A055580 n) (A055580 n)).toNat

end

end A044959.P4740460210678974086

/-! ## A044959.P6516577014683565442

`A353181(and(n-A107392(n), A107392(n)))`
-/

namespace A044959.P6516577014683565442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353181 (Int.land ((n : ℤ) - A107392 n) (A107392 n)).toNat

end

end A044959.P6516577014683565442

/-! ## A044959.P12534512304370264534

`A353181(and(1, A107464(n))+n)`
-/

namespace A044959.P12534512304370264534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353181 (Int.land 1 (A107464 n) + (n : ℤ)).toNat

end

end A044959.P12534512304370264534

/-! ## A044959.P1433633574418882041

`A353181(and(n-A107464(n), A107464(n)))`
-/

namespace A044959.P1433633574418882041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353181 (Int.land ((n : ℤ) - A107464 n) (A107464 n)).toNat

end

end A044959.P1433633574418882041

/-! ## A044959.P6336065168394777002

`A353181(and(1, A107953(n))+n)`
-/

namespace A044959.P6336065168394777002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353181 (Int.land 1 (A107953 n) + (n : ℤ)).toNat

end

end A044959.P6336065168394777002

/-! ## A044959.P8002555679910436045

`A353181(and(n-A107953(n), A107953(n)))`
-/

namespace A044959.P8002555679910436045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353181 (Int.land ((n : ℤ) - A107953 n) (A107953 n)).toNat

end

end A044959.P8002555679910436045

/-! ## A044959.P4006088171024819876

`A353181(and(1, A211386(n))+n)`
-/

namespace A044959.P4006088171024819876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353181 (Int.land 1 (A211386 n) + (n : ℤ)).toNat

end

end A044959.P4006088171024819876

/-! ## A044959.P71300294106685883

`A353181(and(n-A211386(n), A211386(n)))`
-/

namespace A044959.P71300294106685883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353181 (Int.land ((n : ℤ) - A211386 n) (A211386 n)).toNat

end

end A044959.P71300294106685883

/-! ## A044959.P5157160685640492825

`A353181(and(1, A107954(n))+n)`
-/

namespace A044959.P5157160685640492825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353181 (Int.land 1 (A107954 n) + (n : ℤ)).toNat

end

end A044959.P5157160685640492825

/-! ## A044959.P12251987795121612808

`A353181(and(n-A107954(n), A107954(n)))`
-/

namespace A044959.P12251987795121612808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353181 (Int.land ((n : ℤ) - A107954 n) (A107954 n)).toNat

end

end A044959.P12251987795121612808

/-! ## A044959.P12386324684292242238

`A353181(and(1, A107955(n))+n)`
-/

namespace A044959.P12386324684292242238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353181 (Int.land 1 (A107955 n) + (n : ℤ)).toNat

end

end A044959.P12386324684292242238

/-!
# A044960: Numbers with no two equally numerous base 11 digits.

The programs for A044960, there is no canonical definition to state claims against.
-/

/-! ## A044960.P17540947643639676993

`record[A043714(n+1)-A326686(n)]`
-/

namespace A044960.P17540947643639676993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043714 (n + 1) - A326686 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044960.P17540947643639676993

/-! ## A044960.P9420544253757598200

`A044822(n+1)-A185255(A002473(n+1))`
-/

namespace A044960.P9420544253757598200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044822 (n + 1) - A185255 (A002473 (n + 1)).toNat

end

end A044960.P9420544253757598200

/-! ## A044960.P12706268053636842487

`A043714(n+1)-A010052(A242184(n+1))`
-/

namespace A044960.P12706268053636842487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043714 (n + 1) - A010052 (A242184 (n + 1)).toNat

end

end A044960.P12706268053636842487

/-! ## A044960.P7589991826462951883

`A296744(n+1)-A010052(A242184(n+1))`
-/

namespace A044960.P7589991826462951883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296744 (n + 1) - A010052 (A242184 (n + 1)).toNat

end

end A044960.P7589991826462951883

/-!
# A044961: Numbers with no two equally numerous base 12 digits.

The programs for A044961, there is no canonical definition to state claims against.
-/

/-! ## A044961.P4627836406965433772

`A043715(n+1)-A000035(A086052(n+1))`
-/

namespace A044961.P4627836406965433772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043715 (n + 1) - A000035 (A086052 (n + 1)).toNat

end

end A044961.P4627836406965433772

/-! ## A044961.P14414356208442440527

`A043715(n+1)-A130543(A089458(n+1))`
-/

namespace A044961.P14414356208442440527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043715 (n + 1) - A130543 (A089458 (n + 1)).toNat

end

end A044961.P14414356208442440527

/-! ## A044961.P7311131934875974304

`A296747(n+1)-A000035(A086052(n+1))`
-/

namespace A044961.P7311131934875974304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296747 (n + 1) - A000035 (A086052 (n + 1)).toNat

end

end A044961.P7311131934875974304

/-!
# A044962: Numbers with no two equally numerous base 13 digits.

The programs for A044962, there is no canonical definition to state claims against.
-/

/-! ## A044962.P3468302070250772773

`∪[A044824(n+1), A270339(A155659(n))]`
-/

namespace A044962.P3468302070250772773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044824 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270339 (A155659 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A044962.P3468302070250772773

/-! ## A044962.P15116207916954135688

`∪[A044824(n+1), A134458(A221740(n+1))]`
-/

namespace A044962.P15116207916954135688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044824 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134458 (A221740 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A044962.P15116207916954135688

/-!
# A044963: Numbers with no two equally numerous base 14 digits.

The programs for A044963, there is no canonical definition to state claims against.
-/

/-! ## A044963.P8241562838902361256

`∪[A044825(n+1), A293312(A222613(n+1))]`
-/

namespace A044963.P8241562838902361256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044825 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293312 (A222613 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A044963.P8241562838902361256

/-!
# A044964: Numbers with no two equally numerous base 15 digits.

The programs for A044964, there is no canonical definition to state claims against.
-/

/-! ## A044964.P13069154623405958550

`xor(A044826(n+1), A210709(A028310(n)))`
-/

namespace A044964.P13069154623405958550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A044826 (n + 1)) (A210709 (A028310 n).toNat)

end

end A044964.P13069154623405958550

/-! ## A044964.P2880971865345169410

`xor(A044826(n+1)%A044826(3*n+1), A210709(n))`
-/

namespace A044964.P2880971865345169410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (A044826 (n + 1)) (A044826 (3 * n + 1))) (A210709 n)

end

end A044964.P2880971865345169410

/-!
# A044965: Numbers with no two equally numerous base 16 digits.

The programs for A044965, there is no canonical definition to state claims against.
-/

/-! ## A044965.P4239859229734711515

`A043719(n+1)-A019433(A185255(n))`
-/

namespace A044965.P4239859229734711515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043719 (n + 1) - A019433 (A185255 n).toNat

end

end A044965.P4239859229734711515

/-! ## A044965.P8206457622567323580

`A296759(n+1)-A019433(A185255(n))`
-/

namespace A044965.P8206457622567323580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296759 (n + 1) - A019433 (A185255 n).toNat

end

end A044965.P8206457622567323580

/-! ## A044965.P3944484010103247496

`A296759(n+1)-∑[A297155(A034461(n+1)!)]`
-/

namespace A044965.P3944484010103247496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297155 (Nat.factorial (A034461 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296759 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044965.P3944484010103247496

/-! ## A044965.P5340774120378010972

`record[(n+1)*A043568(n+1)%2]-A019433(A185255(n))`
-/

namespace A044965.P5340774120378010972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A043568 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A019433 (A185255 n).toNat

end

end A044965.P5340774120378010972

/-! ## A044965.P15187514537468344112

`A296759(n+1)%A141214(n)-A056926(A185255(n))`
-/

namespace A044965.P15187514537468344112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296759 (n + 1)) (A141214 n) - A056926 (A185255 n).toNat

end

end A044965.P15187514537468344112

/-!
# A044966: Numbers whose base-3 representation contains no 0's and exactly one 1.

The programs for A044966, the canonical program `A044966.P1757624402048700845` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A044966 has offset 1).

The definition of A044966 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A044966.P18259891205642198803

`A188341(comp[∑[n-1]])`
-/

namespace A044966.P18259891205642198803
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188341 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A044966.P18259891205642198803

namespace A044966

/-- `A188341(comp[∑[n-1]])` -/
def P18259891205642198803.Spec : Prop :=
  ∀ n, P18259891205642198803.a n = A044966 (n + 1)

end A044966

/-! ## A044966.P1757624402048700845

`2*A309758(n+1)-1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A044966

/-- `2*A309758(n+1)-1` -/
def P1757624402048700845.Spec : Prop :=
  ∀ n, P1757624402048700845.a n = A044966 (n + 1)

theorem P1757624402048700845.correct : P1757624402048700845.Spec := by
  intro n
  simp only [A044966, Nat.add_sub_cancel]

end A044966

/-! ## A044966.P3379976758500129522

`record[lcm(2, A188341(n+1))]/2`
-/

namespace A044966.P3379976758500129522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A188341 (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2

end

end A044966.P3379976758500129522

namespace A044966

/-- `record[lcm(2, A188341(n+1))]/2` -/
def P3379976758500129522.Spec : Prop :=
  ∀ n, P3379976758500129522.a n = (A044966 (n + 1) : ℚ)

end A044966

/-! ## A044966.P13380998896548381871

`∑[A135293(A278818(n))]-1`
-/

namespace A044966.P13380998896548381871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135293 (A278818 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A044966.P13380998896548381871

namespace A044966

/-- `∑[A135293(A278818(n))]-1` -/
def P13380998896548381871.Spec : Prop :=
  ∀ n, P13380998896548381871.a n = A044966 (n + 1)

end A044966

/-! ## A044966.P6442041186852733731

`or(1, A188341(A007401(n+1)))`
-/

namespace A044966.P6442041186852733731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A188341 (A007401 (n + 1)).toNat)

end

end A044966.P6442041186852733731

namespace A044966

/-- `or(1, A188341(A007401(n+1)))` -/
def P6442041186852733731.Spec : Prop :=
  ∀ n, P6442041186852733731.a n = A044966 (n + 1)

end A044966

/-! ## A044966.P13456928689970737343

`∑[A135293(A038722(n+1))]-1`
-/

namespace A044966.P13456928689970737343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135293 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A044966.P13456928689970737343

namespace A044966

/-- `∑[A135293(A038722(n+1))]-1` -/
def P13456928689970737343.Spec : Prop :=
  ∀ n, P13456928689970737343.a n = A044966 (n + 1)

end A044966

/-! ## A044966.P16033953145230735862

`or(-1, record[A020639(n+1)])+2*A309758(n+1)`
-/

namespace A044966.P16033953145230735862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-1) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) + 2 * A309758 (n + 1)

end

end A044966.P16033953145230735862

namespace A044966

/-- `or(-1, record[A020639(n+1)])+2*A309758(n+1)` -/
def P16033953145230735862.Spec : Prop :=
  ∀ n, P16033953145230735862.a n = A044966 (n + 1)

end A044966

/-! ## A044966.P15345157161579722488

`or(Δ[A000040(n+1)]+1, -1)+2*A309758(n+1)`
-/

namespace A044966.P15345157161579722488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n + 1) (-1) + 2 * A309758 (n + 1)

end

end A044966.P15345157161579722488

namespace A044966

/-- `or(Δ[A000040(n+1)]+1, -1)+2*A309758(n+1)` -/
def P15345157161579722488.Spec : Prop :=
  ∀ n, P15345157161579722488.a n = A044966 (n + 1)

end A044966

/-! ## A044966.P10349923744227239606

`A024023(A002024(n+1))-A140303(n)`
-/

namespace A044966.P10349923744227239606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024023 (A002024 (n + 1)).toNat - A140303 n

end

end A044966.P10349923744227239606

namespace A044966

/-- `A024023(A002024(n+1))-A140303(n)` -/
def P10349923744227239606.Spec : Prop :=
  ∀ n, P10349923744227239606.a n = A044966 (n + 1)

end A044966

/-! ## A044966.P3619204426891040476

`A007318(C(3, n))*A188341(A007401(n+1))`
-/

namespace A044966.P3619204426891040476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 3 n) * A188341 (A007401 (n + 1)).toNat

end

end A044966.P3619204426891040476

namespace A044966

/-- `A007318(C(3, n))*A188341(A007401(n+1))` -/
def P3619204426891040476.Spec : Prop :=
  ∀ n, P3619204426891040476.a n = A044966 (n + 1)

end A044966

/-! ## A044966.P14581934452865934773

`A188341(A007401(n+1))%A000096(n+4)²`
-/

namespace A044966.P14581934452865934773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188341 (A007401 (n + 1)).toNat) (A000096 (n + 4) ^ 2)

end

end A044966.P14581934452865934773

namespace A044966

/-- `A188341(A007401(n+1))%A000096(n+4)²` -/
def P14581934452865934773.Spec : Prop :=
  ∀ n, P14581934452865934773.a n = A044966 (n + 1)

end A044966

/-! ## A044966.P5114224926818306438

`A008683(A022005(n+1))+2*A309758(n+1)`
-/

namespace A044966.P5114224926818306438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A022005 (n + 1)).toNat + 2 * A309758 (n + 1)

end

end A044966.P5114224926818306438

namespace A044966

/-- `A008683(A022005(n+1))+2*A309758(n+1)` -/
def P5114224926818306438.Spec : Prop :=
  ∀ n, P5114224926818306438.a n = A044966 (n + 1)

end A044966

/-! ## A044966.P6898025706141907548

`A008683(A204894(n+1))+2*A309758(n+1)`
-/

namespace A044966.P6898025706141907548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A204894 (n + 1)).toNat + 2 * A309758 (n + 1)

end

end A044966.P6898025706141907548

namespace A044966

/-- `A008683(A204894(n+1))+2*A309758(n+1)` -/
def P6898025706141907548.Spec : Prop :=
  ∀ n, P6898025706141907548.a n = A044966 (n + 1)

end A044966

/-! ## A044966.P7955507907388209975

`A188341(A007401(n+1))+1-A007318(C(2, n))`
-/

namespace A044966.P7955507907388209975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188341 (A007401 (n + 1)).toNat + 1 - A007318 (Nat.choose 2 n)

end

end A044966.P7955507907388209975

namespace A044966

/-- `A188341(A007401(n+1))+1-A007318(C(2, n))` -/
def P7955507907388209975.Spec : Prop :=
  ∀ n, P7955507907388209975.a n = A044966 (n + 1)

end A044966

/-! ## A044966.P11055809141268244009

`A188341(A007401(n+1))+C(n, A188341(n+1))`
-/

namespace A044966.P11055809141268244009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188341 (A007401 (n + 1)).toNat + (Nat.choose n (A188341 (n + 1)).toNat : ℤ)

end

end A044966.P11055809141268244009

namespace A044966

/-- `A188341(A007401(n+1))+C(n, A188341(n+1))` -/
def P11055809141268244009.Spec : Prop :=
  ∀ n, P11055809141268244009.a n = A044966 (n + 1)

end A044966

/-! ## A044966.P14936111152137818975

`A309758(n+1)+A309758(n+1)-A057427(n+1)`
-/

namespace A044966.P14936111152137818975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309758 (n + 1) + (A309758 (n + 1) - A057427 (n + 1))

end

end A044966.P14936111152137818975

namespace A044966

/-- `A309758(n+1)+A309758(n+1)-A057427(n+1)` -/
def P14936111152137818975.Spec : Prop :=
  ∀ n, P14936111152137818975.a n = A044966 (n + 1)

end A044966

/-! ## A044966.P13572888759006805532

`A188341(A007401(n+1))+1-log2(A020639(2*(n+1)))`
-/

namespace A044966.P13572888759006805532
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A188341 (A007401 (n + 1)).toNat + 1 : ℝ) - Real.logb 2 (A020639 (2 * (n + 1)) : ℝ)

end

end A044966.P13572888759006805532

namespace A044966

/-- `A188341(A007401(n+1))+1-log2(A020639(2*(n+1)))` -/
def P13572888759006805532.Spec : Prop :=
  ∀ n, P13572888759006805532.a n = (A044966 (n + 1) : ℝ)

end A044966

/-! ## A044966.P13044229911622446951

`A188341(A007401(n+1))+1-A001222(A001748(n+1)/3)`
-/

namespace A044966.P13044229911622446951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188341 (A007401 (n + 1)).toNat + 1 - A001222 (SequenceMachineLib.roundAway ((A001748 (n + 1) : ℚ) / 3)).toNat

end

end A044966.P13044229911622446951

namespace A044966

/-- `A188341(A007401(n+1))+1-A001222(A001748(n+1)/3)` -/
def P13044229911622446951.Spec : Prop :=
  ∀ n, P13044229911622446951.a n = A044966 (n + 1)

end A044966

/-! ## A044966.P10452550395434572043

`A188341(A007401(n+1))+1-A007318(A020639(3*(n+2)))`
-/

namespace A044966.P10452550395434572043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188341 (A007401 (n + 1)).toNat + 1 - A007318 (A020639 (3 * (n + 2))).toNat

end

end A044966.P10452550395434572043

namespace A044966

/-- `A188341(A007401(n+1))+1-A007318(A020639(3*(n+2)))` -/
def P10452550395434572043.Spec : Prop :=
  ∀ n, P10452550395434572043.a n = A044966 (n + 1)

end A044966

/-!
# A044967: Numbers whose base-3 representation contains no 0's and exactly two 1's.

The programs for A044967, the canonical program `A044967.P11768154619602539084` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A044967 has offset 1).

The definition of A044967 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 286 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A044967.P11768154619602539084

`A032924(eq[2, A023416(n+1)])`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A044967

/-- `A032924(eq[2, A023416(n+1)])` -/
def P11768154619602539084.Spec : Prop :=
  ∀ n, P11768154619602539084.a n = A044967 (n + 1)

theorem P11768154619602539084.correct : P11768154619602539084.Spec := by
  intro n
  simp only [A044967, Nat.add_sub_cancel]

end A044967

/-! ## A044967.P9137443777165213173

`A032924(eq[2, A080791(n+1)])`
-/

namespace A044967.P9137443777165213173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044967.P9137443777165213173

namespace A044967

/-- `A032924(eq[2, A080791(n+1)])` -/
def P9137443777165213173.Spec : Prop :=
  ∀ n, P9137443777165213173.a n = A044967 (n + 1)

end A044967

/-! ## A044967.P16561018515390525746

`A032924(eq[2, A023416(n)]-1)`
-/

namespace A044967.P16561018515390525746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 1)

end

end A044967.P16561018515390525746

namespace A044967

/-- `A032924(eq[2, A023416(n)]-1)` -/
def P16561018515390525746.Spec : Prop :=
  ∀ n, P16561018515390525746.a n = A044967 (n + 1)

end A044967

/-! ## A044967.P13326799285390484582

`A032924(eq[2, A080791(n)]-1)`
-/

namespace A044967.P13326799285390484582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 1)

end

end A044967.P13326799285390484582

namespace A044967

/-- `A032924(eq[2, A080791(n)]-1)` -/
def P13326799285390484582.Spec : Prop :=
  ∀ n, P13326799285390484582.a n = A044967 (n + 1)

end A044967

/-! ## A044967.P16385280211386882342

`A032924(eq[7, A135540(n+1)])`
-/

namespace A044967.P16385280211386882342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044967.P16385280211386882342

namespace A044967

/-- `A032924(eq[7, A135540(n+1)])` -/
def P16385280211386882342.Spec : Prop :=
  ∀ n, P16385280211386882342.a n = A044967 (n + 1)

end A044967

/-! ## A044967.P12793998716401793015

`∩[A023693(n+1), A032924(n+1)]`
-/

namespace A044967.P12793998716401793015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044967.P12793998716401793015

namespace A044967

/-- `∩[A023693(n+1), A032924(n+1)]` -/
def P12793998716401793015.Spec : Prop :=
  ∀ n, (P12793998716401793015.a n : ℤ) = A044967 (n + 1)

end A044967

/-! ## A044967.P14621585985833064738

`eq[5, A308364(n+1)]`
-/

namespace A044967.P14621585985833064738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308364 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044967.P14621585985833064738

namespace A044967

/-- `eq[5, A308364(n+1)]` -/
def P14621585985833064738.Spec : Prop :=
  ∀ n, (P14621585985833064738.a n : ℤ) = A044967 (n + 1)

end A044967

/-! ## A044967.P13110502559463983726

`A357616(A044991(n+1))`
-/

namespace A044967.P13110502559463983726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357616 (A044991 (n + 1)).toNat

end

end A044967.P13110502559463983726

namespace A044967

/-- `A357616(A044991(n+1))` -/
def P13110502559463983726.Spec : Prop :=
  ∀ n, P13110502559463983726.a n = A044967 (n + 1)

end A044967

/-! ## A044967.P351046311224305177

`eq[4, A006047(A171960(n))]`
-/

namespace A044967.P351046311224305177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 (A171960 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044967.P351046311224305177

namespace A044967

/-- `eq[4, A006047(A171960(n))]` -/
def P351046311224305177.Spec : Prop :=
  ∀ n, (P351046311224305177.a n : ℤ) = A044967 (n + 1)

end A044967

/-! ## A044967.P9456700413666889875

`A004442(eq[5, A308364(n)])`
-/

namespace A044967.P9456700413666889875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044967.P9456700413666889875

namespace A044967

/-- `A004442(eq[5, A308364(n)])` -/
def P9456700413666889875.Spec : Prop :=
  ∀ n, P9456700413666889875.a n = A044967 (n + 1)

end A044967

/-!
# A044968: Numbers whose base-3 representation contains no 0's and exactly three 1's.

The programs for A044968, the canonical program `A044968.P18330494829545156474` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A044968 has offset 1).

The definition of A044968 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 718 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A044968.P18330494829545156474

`A032924(eq[3, A023416(n+1)])`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A044968

/-- `A032924(eq[3, A023416(n+1)])` -/
def P18330494829545156474.Spec : Prop :=
  ∀ n, P18330494829545156474.a n = A044968 (n + 1)

theorem P18330494829545156474.correct : P18330494829545156474.Spec := by
  intro n
  simp only [A044968, Nat.add_sub_cancel]

end A044968

/-! ## A044968.P12095940170931776526

`A032924(eq[3, A080791(n+1)])`
-/

namespace A044968.P12095940170931776526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044968.P12095940170931776526

namespace A044968

/-- `A032924(eq[3, A080791(n+1)])` -/
def P12095940170931776526.Spec : Prop :=
  ∀ n, P12095940170931776526.a n = A044968 (n + 1)

end A044968

/-! ## A044968.P17046738274544054087

`A032924(eq[15, A135540(n+1)])`
-/

namespace A044968.P17046738274544054087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044968.P17046738274544054087

namespace A044968

/-- `A032924(eq[15, A135540(n+1)])` -/
def P17046738274544054087.Spec : Prop :=
  ∀ n, P17046738274544054087.a n = A044968 (n + 1)

end A044968

/-! ## A044968.P17092561988757988191

`∩[A023693(n+1)-1, A032924(n+1)]`
-/

namespace A044968.P17092561988757988191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023693 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044968.P17092561988757988191

namespace A044968

/-- `∩[A023693(n+1)-1, A032924(n+1)]` -/
def P17092561988757988191.Spec : Prop :=
  ∀ n, (P17092561988757988191.a n : ℤ) = A044968 (n + 1)

end A044968

/-! ## A044968.P14650742366801482559

`∩[A023694(n+1), A032924(n+1)]`
-/

namespace A044968.P14650742366801482559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044968.P14650742366801482559

namespace A044968

/-- `∩[A023694(n+1), A032924(n+1)]` -/
def P14650742366801482559.Spec : Prop :=
  ∀ n, (P14650742366801482559.a n : ℤ) = A044968 (n + 1)

end A044968

/-! ## A044968.P584589987649659961

`eq[14, A308364(n+1)]`
-/

namespace A044968.P584589987649659961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308364 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044968.P584589987649659961

namespace A044968

/-- `eq[14, A308364(n+1)]` -/
def P584589987649659961.Spec : Prop :=
  ∀ n, (P584589987649659961.a n : ℤ) = A044968 (n + 1)

end A044968

/-! ## A044968.P11439841404054516355

`eq[14, A308364(n)]-1`
-/

namespace A044968.P11439841404054516355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A044968.P11439841404054516355

namespace A044968

/-- `eq[14, A308364(n)]-1` -/
def P11439841404054516355.Spec : Prop :=
  ∀ n, P11439841404054516355.a n = A044968 (n + 1)

end A044968

/-! ## A044968.P605600194647729186

`A357616(A044992(n+1))`
-/

namespace A044968.P605600194647729186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357616 (A044992 (n + 1)).toNat

end

end A044968.P605600194647729186

namespace A044968

/-- `A357616(A044992(n+1))` -/
def P605600194647729186.Spec : Prop :=
  ∀ n, P605600194647729186.a n = A044968 (n + 1)

end A044968

/-! ## A044968.P9156121642165063890

`eq[(2*A290825(n))², A205565(n)]`
-/

namespace A044968.P9156121642165063890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A290825 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205565 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044968.P9156121642165063890

namespace A044968

/-- `eq[(2*A290825(n))², A205565(n)]` -/
def P9156121642165063890.Spec : Prop :=
  ∀ n, (P9156121642165063890.a n : ℤ) = A044968 (n + 1)

end A044968

/-!
# A044969: Numbers whose base-3 representation contains no 0's and exactly four 1's.

The programs for A044969, the canonical program `A044969.P2565728100705881724` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A044969 has offset 1).

The definition of A044969 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1314 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A044969.P2565728100705881724

`A032924(eq[4, A023416(n+1)])`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A044969

/-- `A032924(eq[4, A023416(n+1)])` -/
def P2565728100705881724.Spec : Prop :=
  ∀ n, P2565728100705881724.a n = A044969 (n + 1)

theorem P2565728100705881724.correct : P2565728100705881724.Spec := by
  intro n
  simp only [A044969, Nat.add_sub_cancel]

end A044969

/-! ## A044969.P18419616015846252152

`A032924(eq[4, A080791(1+n)])`
-/

namespace A044969.P18419616015846252152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044969.P18419616015846252152

namespace A044969

/-- `A032924(eq[4, A080791(1+n)])` -/
def P18419616015846252152.Spec : Prop :=
  ∀ n, P18419616015846252152.a n = A044969 (n + 1)

end A044969

/-! ## A044969.P4824561288987772469

`∩[A023695(n+1), A032924(n+1)]`
-/

namespace A044969.P4824561288987772469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044969.P4824561288987772469

namespace A044969

/-- `∩[A023695(n+1), A032924(n+1)]` -/
def P4824561288987772469.Spec : Prop :=
  ∀ n, (P4824561288987772469.a n : ℤ) = A044969 (n + 1)

end A044969

/-! ## A044969.P17975257358551959146

`∩[A023694(n+1)-1, A032924(n+1)]`
-/

namespace A044969.P17975257358551959146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023694 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044969.P17975257358551959146

namespace A044969

/-- `∩[A023694(n+1)-1, A032924(n+1)]` -/
def P17975257358551959146.Spec : Prop :=
  ∀ n, (P17975257358551959146.a n : ℤ) = A044969 (n + 1)

end A044969

/-! ## A044969.P9570223508919062119

`eq[41, A308364(n+1)]`
-/

namespace A044969.P9570223508919062119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  41

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308364 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044969.P9570223508919062119

namespace A044969

/-- `eq[41, A308364(n+1)]` -/
def P9570223508919062119.Spec : Prop :=
  ∀ n, (P9570223508919062119.a n : ℤ) = A044969 (n + 1)

end A044969

/-! ## A044969.P14792945371355983087

`eq[17-A120880(n), A290825(n)]`
-/

namespace A044969.P14792945371355983087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 - A120880 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290825 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044969.P14792945371355983087

namespace A044969

/-- `eq[17-A120880(n), A290825(n)]` -/
def P14792945371355983087.Spec : Prop :=
  ∀ n, (P14792945371355983087.a n : ℤ) = A044969 (n + 1)

end A044969

/-! ## A044969.P11852443663254101473

`eq[(A077267(n)+2)², A062756(n)]`
-/

namespace A044969.P11852443663254101473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A077267 n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044969.P11852443663254101473

namespace A044969

/-- `eq[(A077267(n)+2)², A062756(n)]` -/
def P11852443663254101473.Spec : Prop :=
  ∀ n, (P11852443663254101473.a n : ℤ) = A044969 (n + 1)

end A044969

/-! ## A044969.P13930909891999271104

`lt[A077267(n), A189640(A120880(n))]`
-/

namespace A044969.P13930909891999271104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189640 (A120880 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A044969.P13930909891999271104

namespace A044969

/-- `lt[A077267(n), A189640(A120880(n))]` -/
def P13930909891999271104.Spec : Prop :=
  ∀ n, (P13930909891999271104.a n : ℤ) = A044969 (n + 1)

end A044969

/-! ## A044969.P12059564487697134409

`A357616(A044993(n+1))`
-/

namespace A044969.P12059564487697134409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357616 (A044993 (n + 1)).toNat

end

end A044969.P12059564487697134409

namespace A044969

/-- `A357616(A044993(n+1))` -/
def P12059564487697134409.Spec : Prop :=
  ∀ n, P12059564487697134409.a n = A044969 (n + 1)

end A044969

/-! ## A044969.P11178164883656384268

`A032924(eq[4, A077267(A191106(n+1))])`
-/

namespace A044969.P11178164883656384268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 (A191106 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044969.P11178164883656384268

namespace A044969

/-- `A032924(eq[4, A077267(A191106(n+1))])` -/
def P11178164883656384268.Spec : Prop :=
  ∀ n, P11178164883656384268.a n = A044969 (n + 1)

end A044969

/-!
# A044970: Numbers whose base-3 representation contains exactly one 0 and no 1's.

The programs for A044970, there is no canonical definition to state claims against.
-/

/-! ## A044970.P13413359507287266567

`2*A044994(n+1)`
-/

namespace A044970.P13413359507287266567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A044994 (n + 1)

end

end A044970.P13413359507287266567

/-! ## A044970.P12644692193238917011

`4*A044994(-xor(n, -1))/2`
-/

namespace A044970.P12644692193238917011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((A044994 (-Int.xor (n : ℤ) (-1)).toNat : ℚ) / 2)

end

end A044970.P12644692193238917011

/-! ## A044970.P11243695776311771171

`A044994(1+n)+A044994(n+1)`
-/

namespace A044970.P11243695776311771171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044994 (1 + n) + A044994 (n + 1)

end

end A044970.P11243695776311771171

/-! ## A044970.P9155695372884340727

`A005823(A030130(n+1)+1)`
-/

namespace A044970.P9155695372884340727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 (A030130 (n + 1) + 1).toNat

end

end A044970.P9155695372884340727

/-! ## A044970.P10598891590538466409

`A005823(record[A059893(2*n+1)])`
-/

namespace A044970.P10598891590538466409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A044970.P10598891590538466409

/-! ## A044970.P188706045897926053

`2*A137951(record[A265716(n)])`
-/

namespace A044970.P188706045897926053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265716 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A137951 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A044970.P188706045897926053

/-! ## A044970.P2650670646180529790

`A005823(eq[1, A023416(n)]+1)`
-/

namespace A044970.P2650670646180529790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A044970.P2650670646180529790

/-!
# A044971: Numbers whose base-3 representation contains exactly one 0 and one 1.

The programs for A044971, the canonical program `A044971.P13740791806707555514` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A044971 has offset 1).

The definition of A044971 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 286 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A044971.P13740791806707555514

`∩[A023692(n+1), A043321(n+1)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A044971

/-- `∩[A023692(n+1), A043321(n+1)]` -/
def P13740791806707555514.Spec : Prop :=
  ∀ n, (P13740791806707555514.a n : ℤ) = A044971 (n + 1)

theorem P13740791806707555514.correct : P13740791806707555514.Spec := by
  intro n
  simp only [A044971, Nat.add_sub_cancel]

end A044971

/-! ## A044971.P17760052090845344561

`∩[A023692(n+1), A039000(n+1)]`
-/

namespace A044971.P17760052090845344561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023692 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039000 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044971.P17760052090845344561

namespace A044971

/-- `∩[A023692(n+1), A039000(n+1)]` -/
def P17760052090845344561.Spec : Prop :=
  ∀ n, (P17760052090845344561.a n : ℤ) = A044971 (n + 1)

end A044971

/-! ## A044971.P2570917182261824060

`∩[A023692(n+1), A039275(n+1)]`
-/

namespace A044971.P2570917182261824060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023692 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039275 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044971.P2570917182261824060

namespace A044971

/-- `∩[A023692(n+1), A039275(n+1)]` -/
def P2570917182261824060.Spec : Prop :=
  ∀ n, (P2570917182261824060.a n : ℤ) = A044971 (n + 1)

end A044971

/-! ## A044971.P10706100285960750128

`∩[A039000(n+1), A043321(n+1)]`
-/

namespace A044971.P10706100285960750128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039000 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044971.P10706100285960750128

namespace A044971

/-- `∩[A039000(n+1), A043321(n+1)]` -/
def P10706100285960750128.Spec : Prop :=
  ∀ n, (P10706100285960750128.a n : ℤ) = A044971 (n + 1)

end A044971

/-! ## A044971.P17382409501938911561

`∩[A039275(n+1), A043321(n+1)]`
-/

namespace A044971.P17382409501938911561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039275 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044971.P17382409501938911561

namespace A044971

/-- `∩[A039275(n+1), A043321(n+1)]` -/
def P17382409501938911561.Spec : Prop :=
  ∀ n, (P17382409501938911561.a n : ℤ) = A044971 (n + 1)

end A044971

/-! ## A044971.P16789463833908051118

`eq[6, A006047(A171960(n))]`
-/

namespace A044971.P16789463833908051118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 (A171960 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044971.P16789463833908051118

namespace A044971

/-- `eq[6, A006047(A171960(n))]` -/
def P16789463833908051118.Spec : Prop :=
  ∀ n, (P16789463833908051118.a n : ℤ) = A044971 (n + 1)

end A044971

/-! ## A044971.P316079324042745765

`eq[1, A062756(n)*A077267(n)]`
-/

namespace A044971.P316079324042745765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 n * A077267 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044971.P316079324042745765

namespace A044971

/-- `eq[1, A062756(n)*A077267(n)]` -/
def P316079324042745765.Spec : Prop :=
  ∀ n, (P316079324042745765.a n : ℤ) = A044971 (n + 1)

end A044971

/-! ## A044971.P16749805845850324203

`eq[2, A077267(n)²*A120880(n)]`
-/

namespace A044971.P16749805845850324203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n ^ 2 * A120880 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044971.P16749805845850324203

namespace A044971

/-- `eq[2, A077267(n)²*A120880(n)]` -/
def P16749805845850324203.Spec : Prop :=
  ∀ n, (P16749805845850324203.a n : ℤ) = A044971 (n + 1)

end A044971

/-! ## A044971.P8552548204126603106

`eq[2, A077267(n)²*A290091(n)]`
-/

namespace A044971.P8552548204126603106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n ^ 2 * A290091 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044971.P8552548204126603106

namespace A044971

/-- `eq[2, A077267(n)²*A290091(n)]` -/
def P8552548204126603106.Spec : Prop :=
  ∀ n, (P8552548204126603106.a n : ℤ) = A044971 (n + 1)

end A044971

/-! ## A044971.P2044821421366250189

`eq[A062357(A120880(n)), A077267(n)]`
-/

namespace A044971.P2044821421366250189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062357 (A120880 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044971.P2044821421366250189

namespace A044971

/-- `eq[A062357(A120880(n)), A077267(n)]` -/
def P2044821421366250189.Spec : Prop :=
  ∀ n, (P2044821421366250189.a n : ℤ) = A044971 (n + 1)

end A044971

/-! ## A044971.P4406823017948388603

`eq[A062357(A290091(n)), A077267(n)]`
-/

namespace A044971.P4406823017948388603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062357 (A290091 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044971.P4406823017948388603

namespace A044971

/-- `eq[A062357(A290091(n)), A077267(n)]` -/
def P4406823017948388603.Spec : Prop :=
  ∀ n, (P4406823017948388603.a n : ℤ) = A044971 (n + 1)

end A044971

/-! ## A044971.P16598163717157928267

`eq[1, A007814(A006047(n))*A077267(n)]`
-/

namespace A044971.P16598163717157928267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A006047 n).toNat * A077267 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044971.P16598163717157928267

namespace A044971

/-- `eq[1, A007814(A006047(n))*A077267(n)]` -/
def P16598163717157928267.Spec : Prop :=
  ∀ n, (P16598163717157928267.a n : ℤ) = A044971 (n + 1)

end A044971

/-! ## A044971.P7691057459125276996

`eq[1, A000120(A289813(n))*A077267(n)]`
-/

namespace A044971.P7691057459125276996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A289813 n).toNat * A077267 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044971.P7691057459125276996

namespace A044971

/-- `eq[1, A000120(A289813(n))*A077267(n)]` -/
def P7691057459125276996.Spec : Prop :=
  ∀ n, (P7691057459125276996.a n : ℤ) = A044971 (n + 1)

end A044971

/-! ## A044971.P1824997805981141021

`A357616(A044995(n+1))`
-/

namespace A044971.P1824997805981141021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357616 (A044995 (n + 1)).toNat

end

end A044971.P1824997805981141021

namespace A044971

/-- `A357616(A044995(n+1))` -/
def P1824997805981141021.Spec : Prop :=
  ∀ n, P1824997805981141021.a n = A044971 (n + 1)

end A044971

/-! ## A044971.P14513868162554156409

`eq[2, A289813(A319651(n))]`
-/

namespace A044971.P14513868162554156409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (A319651 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044971.P14513868162554156409

namespace A044971

/-- `eq[2, A289813(A319651(n))]` -/
def P14513868162554156409.Spec : Prop :=
  ∀ n, (P14513868162554156409.a n : ℤ) = A044971 (n + 1)

end A044971

/-!
# A044972: Numbers whose base-3 representation contains exactly one 0 and two 1's.

The programs for A044972, the canonical program `A044972.P2534562059640087062` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A044972 has offset 1).

The definition of A044972 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 702 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A044972.P2534562059640087062

`∩[A023693(n+1), A043321(n+1)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A044972

/-- `∩[A023693(n+1), A043321(n+1)]` -/
def P2534562059640087062.Spec : Prop :=
  ∀ n, (P2534562059640087062.a n : ℤ) = A044972 (n + 1)

theorem P2534562059640087062.correct : P2534562059640087062.Spec := by
  intro n
  simp only [A044972, Nat.add_sub_cancel]

end A044972

/-! ## A044972.P15821507574063665895

`eq[12, A006047(A171960(n))]`
-/

namespace A044972.P15821507574063665895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 (A171960 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044972.P15821507574063665895

namespace A044972

/-- `eq[12, A006047(A171960(n))]` -/
def P15821507574063665895.Spec : Prop :=
  ∀ n, (P15821507574063665895.a n : ℤ) = A044972 (n + 1)

end A044972

/-! ## A044972.P17807942369335272413

`eq[2, A062756(n)^A077267(n)]`
-/

namespace A044972.P17807942369335272413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062756 n : ℚ) ^ (A077267 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A044972.P17807942369335272413

namespace A044972

/-- `eq[2, A062756(n)^A077267(n)]` -/
def P17807942369335272413.Spec : Prop :=
  ∀ n, (P17807942369335272413.a n : ℤ) = A044972 (n + 1)

end A044972

/-! ## A044972.P1761499285039487588

`A357616(A044996(n+1))`
-/

namespace A044972.P1761499285039487588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357616 (A044996 (n + 1)).toNat

end

end A044972.P1761499285039487588

namespace A044972

/-- `A357616(A044996(n+1))` -/
def P1761499285039487588.Spec : Prop :=
  ∀ n, P1761499285039487588.a n = A044972 (n + 1)

end A044972

/-! ## A044972.P7768656998477171268

`eq[6, A289813(A319651(n))]`
-/

namespace A044972.P7768656998477171268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (A319651 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044972.P7768656998477171268

namespace A044972

/-- `eq[6, A289813(A319651(n))]` -/
def P7768656998477171268.Spec : Prop :=
  ∀ n, (P7768656998477171268.a n : ℤ) = A044972 (n + 1)

end A044972

/-! ## A044972.P5220706541677458309

`eq[A053735(A171960(n)), A120880(n)]`
-/

namespace A044972.P5220706541677458309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A171960 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120880 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044972.P5220706541677458309

namespace A044972

/-- `eq[A053735(A171960(n)), A120880(n)]` -/
def P5220706541677458309.Spec : Prop :=
  ∀ n, (P5220706541677458309.a n : ℤ) = A044972 (n + 1)

end A044972

/-! ## A044972.P10849351037559450356

`eq[2*A226294(n), A244042(A319651(n))]`
-/

namespace A044972.P10849351037559450356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A226294 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244042 (A319651 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044972.P10849351037559450356

namespace A044972

/-- `eq[2*A226294(n), A244042(A319651(n))]` -/
def P10849351037559450356.Spec : Prop :=
  ∀ n, (P10849351037559450356.a n : ℤ) = A044972 (n + 1)

end A044972

/-! ## A044972.P7770027149393659912

`floor(record[A187307(A044973(n+1))]/3)`
-/

namespace A044972.P7770027149393659912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187307 (A044973 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 3⌋

end

end A044972.P7770027149393659912

namespace A044972

/-- `floor(record[A187307(A044973(n+1))]/3)` -/
def P7770027149393659912.Spec : Prop :=
  ∀ n, P7770027149393659912.a n = A044972 (n + 1)

end A044972

/-! ## A044972.P16465947710354550943

`A002264(record[A187307(A044973(n+1))])`
-/

namespace A044972.P16465947710354550943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187307 (A044973 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A044972.P16465947710354550943

namespace A044972

/-- `A002264(record[A187307(A044973(n+1))])` -/
def P16465947710354550943.Spec : Prop :=
  ∀ n, P16465947710354550943.a n = A044972 (n + 1)

end A044972

/-!
# A044973: Numbers whose base-3 representation contains exactly one 0 and three 1's.

The programs for A044973, the canonical program `A044973.P4922914150493767431` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A044973 has offset 1).

The definition of A044973 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1134 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A044973.P4922914150493767431

`∩[A023694(n+1), A043321(n+1)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A044973

/-- `∩[A023694(n+1), A043321(n+1)]` -/
def P4922914150493767431.Spec : Prop :=
  ∀ n, (P4922914150493767431.a n : ℤ) = A044973 (n + 1)

theorem P4922914150493767431.correct : P4922914150493767431.Spec := by
  intro n
  simp only [A044973, Nat.add_sub_cancel]

end A044973

/-! ## A044973.P5974619882596493517

`eq[24, A006047(A171960(n))]`
-/

namespace A044973.P5974619882596493517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 (A171960 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044973.P5974619882596493517

namespace A044973

/-- `eq[24, A006047(A171960(n))]` -/
def P5974619882596493517.Spec : Prop :=
  ∀ n, (P5974619882596493517.a n : ℤ) = A044973 (n + 1)

end A044973

/-! ## A044973.P15299866785933487799

`eq[24, A006047(A284797(n))]`
-/

namespace A044973.P15299866785933487799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 (A284797 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044973.P15299866785933487799

namespace A044973

/-- `eq[24, A006047(A284797(n))]` -/
def P15299866785933487799.Spec : Prop :=
  ∀ n, (P15299866785933487799.a n : ℤ) = A044973 (n + 1)

end A044973

/-! ## A044973.P12459093083725401294

`eq[A077267(n)+7, A120880(n)]`
-/

namespace A044973.P12459093083725401294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n + 7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120880 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044973.P12459093083725401294

namespace A044973

/-- `eq[A077267(n)+7, A120880(n)]` -/
def P12459093083725401294.Spec : Prop :=
  ∀ n, (P12459093083725401294.a n : ℤ) = A044973 (n + 1)

end A044973

/-! ## A044973.P9515804335542349731

`eq[3, A062756(n)^A077267(n)]`
-/

namespace A044973.P9515804335542349731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062756 n : ℚ) ^ (A077267 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A044973.P9515804335542349731

namespace A044973

/-- `eq[3, A062756(n)^A077267(n)]` -/
def P9515804335542349731.Spec : Prop :=
  ∀ n, (P9515804335542349731.a n : ℤ) = A044973 (n + 1)

end A044973

/-! ## A044973.P4246096834097349267

`A357616(A044997(n+1))`
-/

namespace A044973.P4246096834097349267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357616 (A044997 (n + 1)).toNat

end

end A044973.P4246096834097349267

namespace A044973

/-- `A357616(A044997(n+1))` -/
def P4246096834097349267.Spec : Prop :=
  ∀ n, P4246096834097349267.a n = A044973 (n + 1)

end A044973

/-! ## A044973.P12338258880682259350

`eq[39, A244042(A319651(n))]`
-/

namespace A044973.P12338258880682259350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  39

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244042 (A319651 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044973.P12338258880682259350

namespace A044973

/-- `eq[39, A244042(A319651(n))]` -/
def P12338258880682259350.Spec : Prop :=
  ∀ n, (P12338258880682259350.a n : ℤ) = A044973 (n + 1)

end A044973

/-!
# A044974: Numbers whose base-3 representation contains exactly one 0 and four 1's.

The programs for A044974, the canonical program `A044974.P2158267626890744817` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A044974 has offset 1).

The definition of A044974 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1430 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A044974.P2158267626890744817

`∩[A023695(n+1), A043321(n+1)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A044974

/-- `∩[A023695(n+1), A043321(n+1)]` -/
def P2158267626890744817.Spec : Prop :=
  ∀ n, (P2158267626890744817.a n : ℤ) = A044974 (n + 1)

theorem P2158267626890744817.correct : P2158267626890744817.Spec := by
  intro n
  simp only [A044974, Nat.add_sub_cancel]

end A044974

/-! ## A044974.P6083197910064506276

`A357616(A044998(n+1))`
-/

namespace A044974.P6083197910064506276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357616 (A044998 (n + 1)).toNat

end

end A044974.P6083197910064506276

namespace A044974

/-- `A357616(A044998(n+1))` -/
def P6083197910064506276.Spec : Prop :=
  ∀ n, P6083197910064506276.a n = A044974 (n + 1)

end A044974

/-! ## A044974.P12996658543266758547

`A357616(∩[A023702(n+1), A031459(n+1)])`
-/

namespace A044974.P12996658543266758547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023702 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031459 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357616 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A044974.P12996658543266758547

namespace A044974

/-- `A357616(∩[A023702(n+1), A031459(n+1)])` -/
def P12996658543266758547.Spec : Prop :=
  ∀ n, P12996658543266758547.a n = A044974 (n + 1)

end A044974

/-! ## A044974.P3255286787191077699

`A357616(∩[A023702(n+1), A043321(n+1)])`
-/

namespace A044974.P3255286787191077699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023702 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043321 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357616 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A044974.P3255286787191077699

namespace A044974

/-- `A357616(∩[A023702(n+1), A043321(n+1)])` -/
def P3255286787191077699.Spec : Prop :=
  ∀ n, P3255286787191077699.a n = A044974 (n + 1)

end A044974

/-! ## A044974.P15694501109460367422

`A357616(∩[A031459(n+1), A043321(n+1)])`
-/

namespace A044974.P15694501109460367422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031459 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043321 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357616 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A044974.P15694501109460367422

namespace A044974

/-- `A357616(∩[A031459(n+1), A043321(n+1)])` -/
def P15694501109460367422.Spec : Prop :=
  ∀ n, P15694501109460367422.a n = A044974 (n + 1)

end A044974

/-!
# A044975: Numbers whose base-3 representation contains exactly two 0's and no 1's.

The programs for A044975, the canonical program `A044975.P9580616891766218747` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A044975 has offset 1).

The definition of A044975 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 286 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A044975.P17241255856856382541

`2*A044999(1+n)`
-/

namespace A044975.P17241255856856382541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A044999 (1 + n)

end

end A044975.P17241255856856382541

namespace A044975

/-- `2*A044999(1+n)` -/
def P17241255856856382541.Spec : Prop :=
  ∀ n, P17241255856856382541.a n = A044975 (n + 1)

end A044975

/-! ## A044975.P9437950432985618207

`6*A044999(Δ[n²]-n)/3`
-/

namespace A044975.P9437950432985618207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  6 * ((A044999 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℚ) / 3)

end

end A044975.P9437950432985618207

namespace A044975

/-- `6*A044999(Δ[n²]-n)/3` -/
def P9437950432985618207.Spec : Prop :=
  ∀ n, P9437950432985618207.a n = (A044975 (n + 1) : ℚ)

end A044975

/-! ## A044975.P4945144062182503772

`A044999(n+1)+A044999(Δ[n²]-n)`
-/

namespace A044975.P4945144062182503772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044999 (n + 1) + A044999 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat

end

end A044975.P4945144062182503772

namespace A044975

/-- `A044999(n+1)+A044999(Δ[n²]-n)` -/
def P4945144062182503772.Spec : Prop :=
  ∀ n, P4945144062182503772.a n = A044975 (n + 1)

end A044975

/-! ## A044975.P17262702292989185776

`A044999(n+1)+A044999(n+1)%A182464(n)`
-/

namespace A044975.P17262702292989185776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044999 (n + 1) + Int.tmod (A044999 (n + 1)) (A182464 n)

end

end A044975.P17262702292989185776

namespace A044975

/-- `A044999(n+1)+A044999(n+1)%A182464(n)` -/
def P17262702292989185776.Spec : Prop :=
  ∀ n, P17262702292989185776.a n = A044975 (n + 1)

end A044975

/-! ## A044975.P9580616891766218747

`A005823(eq[3, A008687(n)])`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A044975

/-- `A005823(eq[3, A008687(n)])` -/
def P9580616891766218747.Spec : Prop :=
  ∀ n, P9580616891766218747.a n = A044975 (n + 1)

theorem P9580616891766218747.correct : P9580616891766218747.Spec := by
  intro n
  simp only [A044975, Nat.add_sub_cancel]

end A044975

/-! ## A044975.P1972666445359772183

`A005823(eq[2, A023416(n)]+1)`
-/

namespace A044975.P1972666445359772183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A044975.P1972666445359772183

namespace A044975

/-- `A005823(eq[2, A023416(n)]+1)` -/
def P1972666445359772183.Spec : Prop :=
  ∀ n, P1972666445359772183.a n = A044975 (n + 1)

end A044975

/-! ## A044975.P16740756676721994021

`A005823(eq[2, A080791(n)]+1)`
-/

namespace A044975.P16740756676721994021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A044975.P16740756676721994021

namespace A044975

/-- `A005823(eq[2, A080791(n)]+1)` -/
def P16740756676721994021.Spec : Prop :=
  ∀ n, P16740756676721994021.a n = A044975 (n + 1)

end A044975

/-! ## A044975.P10650549646057087019

`2*∩[A005836(n+1), A031454(n+1)]`
-/

namespace A044975.P10650549646057087019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044975.P10650549646057087019

namespace A044975

/-- `2*∩[A005836(n+1), A031454(n+1)]` -/
def P10650549646057087019.Spec : Prop :=
  ∀ n, (P10650549646057087019.a n : ℤ) = A044975 (n + 1)

end A044975

/-! ## A044975.P7574554426029135729

`2*∩[A031454(n+1), A037408(n+1)]`
-/

namespace A044975.P7574554426029135729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031454 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044975.P7574554426029135729

namespace A044975

/-- `2*∩[A031454(n+1), A037408(n+1)]` -/
def P7574554426029135729.Spec : Prop :=
  ∀ n, (P7574554426029135729.a n : ℤ) = A044975 (n + 1)

end A044975

/-! ## A044975.P10483329987446565836

`A004488(A044999(n+1))`
-/

namespace A044975.P10483329987446565836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (A044999 (n + 1)).toNat

end

end A044975.P10483329987446565836

namespace A044975

/-- `A004488(A044999(n+1))` -/
def P10483329987446565836.Spec : Prop :=
  ∀ n, P10483329987446565836.a n = A044975 (n + 1)

end A044975

/-! ## A044975.P10785278488330122908

`∩[2*A043322(n+1), A005823(n+1)]`
-/

namespace A044975.P10785278488330122908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043322 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044975.P10785278488330122908

namespace A044975

/-- `∩[2*A043322(n+1), A005823(n+1)]` -/
def P10785278488330122908.Spec : Prop :=
  ∀ n, (P10785278488330122908.a n : ℤ) = A044975 (n + 1)

end A044975

/-! ## A044975.P1895177477128581570

`2*∩[A005836(n+1), A043322(n+1)]`
-/

namespace A044975.P1895177477128581570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044975.P1895177477128581570

namespace A044975

/-- `2*∩[A005836(n+1), A043322(n+1)]` -/
def P1895177477128581570.Spec : Prop :=
  ∀ n, (P1895177477128581570.a n : ℤ) = A044975 (n + 1)

end A044975

/-! ## A044975.P9270184430579198246

`2*∩[A031454(n+1), A043322(n+1)]`
-/

namespace A044975.P9270184430579198246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031454 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044975.P9270184430579198246

namespace A044975

/-- `2*∩[A031454(n+1), A043322(n+1)]` -/
def P9270184430579198246.Spec : Prop :=
  ∀ n, (P9270184430579198246.a n : ℤ) = A044975 (n + 1)

end A044975

/-! ## A044975.P10121890860651912766

`2*∩[A037408(n+1), A043322(n+1)]`
-/

namespace A044975.P10121890860651912766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037408 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044975.P10121890860651912766

namespace A044975

/-- `2*∩[A037408(n+1), A043322(n+1)]` -/
def P10121890860651912766.Spec : Prop :=
  ∀ n, (P10121890860651912766.a n : ℤ) = A044975 (n + 1)

end A044975

/-!
# A044976: Numbers whose base-3 representation contains exactly two 0's and one 1.

The programs for A044976, the canonical program `A044976.P14451359059032507611` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A044976 has offset 1).

The definition of A044976 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 483 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A044976.P14451359059032507611

`∩[A023692(n+1), A043322(n+1)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A044976

/-- `∩[A023692(n+1), A043322(n+1)]` -/
def P14451359059032507611.Spec : Prop :=
  ∀ n, (P14451359059032507611.a n : ℤ) = A044976 (n + 1)

theorem P14451359059032507611.correct : P14451359059032507611.Spec := by
  intro n
  simp only [A044976, Nat.add_sub_cancel]

end A044976

/-! ## A044976.P8874303920316825078

`eq[12, A006047(A256293(n))]`
-/

namespace A044976.P8874303920316825078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 (A256293 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044976.P8874303920316825078

namespace A044976

/-- `eq[12, A006047(A256293(n))]` -/
def P8874303920316825078.Spec : Prop :=
  ∀ n, (P8874303920316825078.a n : ℤ) = A044976 (n + 1)

end A044976

/-! ## A044976.P15961201157090824857

`eq[18, A006047(A284797(n))]`
-/

namespace A044976.P15961201157090824857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 (A284797 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044976.P15961201157090824857

namespace A044976

/-- `eq[18, A006047(A284797(n))]` -/
def P15961201157090824857.Spec : Prop :=
  ∀ n, (P15961201157090824857.a n : ℤ) = A044976 (n + 1)

end A044976

/-! ## A044976.P2181925929693484186

`eq[A077267(n)+2, A120880(n)²]`
-/

namespace A044976.P2181925929693484186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120880 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044976.P2181925929693484186

namespace A044976

/-- `eq[A077267(n)+2, A120880(n)²]` -/
def P2181925929693484186.Spec : Prop :=
  ∀ n, (P2181925929693484186.a n : ℤ) = A044976 (n + 1)

end A044976

/-! ## A044976.P17050462815595941734

`eq[A077267(n)+2, A290091(n)²]`
-/

namespace A044976.P17050462815595941734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290091 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044976.P17050462815595941734

namespace A044976

/-- `eq[A077267(n)+2, A290091(n)²]` -/
def P17050462815595941734.Spec : Prop :=
  ∀ n, (P17050462815595941734.a n : ℤ) = A044976 (n + 1)

end A044976

/-! ## A044976.P2505484720808416855

`eq[2, A062756(n)²*A077267(n)]`
-/

namespace A044976.P2505484720808416855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 n ^ 2 * A077267 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044976.P2505484720808416855

namespace A044976

/-- `eq[2, A062756(n)²*A077267(n)]` -/
def P2505484720808416855.Spec : Prop :=
  ∀ n, (P2505484720808416855.a n : ℤ) = A044976 (n + 1)

end A044976

/-! ## A044976.P539967726264832482

`A357616(A045000(n+1))`
-/

namespace A044976.P539967726264832482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357616 (A045000 (n + 1)).toNat

end

end A044976.P539967726264832482

namespace A044976

/-- `A357616(A045000(n+1))` -/
def P539967726264832482.Spec : Prop :=
  ∀ n, P539967726264832482.a n = A044976 (n + 1)

end A044976

/-! ## A044976.P12885838849788056782

`eq[9, A244042(A319651(n))]`
-/

namespace A044976.P12885838849788056782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244042 (A319651 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044976.P12885838849788056782

namespace A044976

/-- `eq[9, A244042(A319651(n))]` -/
def P12885838849788056782.Spec : Prop :=
  ∀ n, (P12885838849788056782.a n : ℤ) = A044976 (n + 1)

end A044976

/-! ## A044976.P8142415829415848382

`record[A032742(A044981(n+1))]`
-/

namespace A044976.P8142415829415848382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A044981 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044976.P8142415829415848382

namespace A044976

/-- `record[A032742(A044981(n+1))]` -/
def P8142415829415848382.Spec : Prop :=
  ∀ n, P8142415829415848382.a n = A044976 (n + 1)

end A044976

/-!
# A044977: Numbers whose base-3 representation contains exactly two 0's and two 1's.

The programs for A044977, the canonical program `A044977.P15031783185481520798` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A044977 has offset 1).

The definition of A044977 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1737 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A044977.P15031783185481520798

`∩[A023693(n+1), A039000(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A044977

/-- `∩[A023693(n+1), A039000(n+1)]` -/
def P15031783185481520798.Spec : Prop :=
  ∀ n, (P15031783185481520798.a n : ℤ) = A044977 (n + 1)

theorem P15031783185481520798.correct : P15031783185481520798.Spec := by
  intro n
  simp only [A044977, Nat.add_sub_cancel]

end A044977

/-! ## A044977.P5197925129507459333

`∩[A023693(n+1), A039275(n+1)]`
-/

namespace A044977.P5197925129507459333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039275 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044977.P5197925129507459333

namespace A044977

/-- `∩[A023693(n+1), A039275(n+1)]` -/
def P5197925129507459333.Spec : Prop :=
  ∀ n, (P5197925129507459333.a n : ℤ) = A044977 (n + 1)

end A044977

/-! ## A044977.P15682210237098476931

`∩[A023693(n+1), A043322(n+1)]`
-/

namespace A044977.P15682210237098476931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044977.P15682210237098476931

namespace A044977

/-- `∩[A023693(n+1), A043322(n+1)]` -/
def P15682210237098476931.Spec : Prop :=
  ∀ n, (P15682210237098476931.a n : ℤ) = A044977 (n + 1)

end A044977

/-! ## A044977.P11664551765171762822

`∩[A039000(n+1), A043322(n+1)]`
-/

namespace A044977.P11664551765171762822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039000 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044977.P11664551765171762822

namespace A044977

/-- `∩[A039000(n+1), A043322(n+1)]` -/
def P11664551765171762822.Spec : Prop :=
  ∀ n, (P11664551765171762822.a n : ℤ) = A044977 (n + 1)

end A044977

/-! ## A044977.P11420665757204978913

`∩[A039275(n+1), A043322(n+1)]`
-/

namespace A044977.P11420665757204978913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039275 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044977.P11420665757204978913

namespace A044977

/-- `∩[A039275(n+1), A043322(n+1)]` -/
def P11420665757204978913.Spec : Prop :=
  ∀ n, (P11420665757204978913.a n : ℤ) = A044977 (n + 1)

end A044977

/-! ## A044977.P1119876135166969561

`eq[20, A206424(A171960(n))]`
-/

namespace A044977.P1119876135166969561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206424 (A171960 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044977.P1119876135166969561

namespace A044977

/-- `eq[20, A206424(A171960(n))]` -/
def P1119876135166969561.Spec : Prop :=
  ∀ n, (P1119876135166969561.a n : ℤ) = A044977 (n + 1)

end A044977

/-! ## A044977.P7928864907472424976

`eq[20, A206424(A284797(n))]`
-/

namespace A044977.P7928864907472424976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206424 (A284797 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044977.P7928864907472424976

namespace A044977

/-- `eq[20, A206424(A284797(n))]` -/
def P7928864907472424976.Spec : Prop :=
  ∀ n, (P7928864907472424976.a n : ℤ) = A044977 (n + 1)

end A044977

/-! ## A044977.P4427595157644858992

`eq[A062756(n)+2, A077267(n)²]`
-/

namespace A044977.P4427595157644858992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044977.P4427595157644858992

namespace A044977

/-- `eq[A062756(n)+2, A077267(n)²]` -/
def P4427595157644858992.Spec : Prop :=
  ∀ n, (P4427595157644858992.a n : ℤ) = A044977 (n + 1)

end A044977

/-! ## A044977.P5562798881326949164

`A357616(A045001(n+1))`
-/

namespace A044977.P5562798881326949164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357616 (A045001 (n + 1)).toNat

end

end A044977.P5562798881326949164

namespace A044977

/-- `A357616(A045001(n+1))` -/
def P5562798881326949164.Spec : Prop :=
  ∀ n, P5562798881326949164.a n = A044977 (n + 1)

end A044977

/-! ## A044977.P3981125514108600636

`eq[44, A171960(A319651(n))]`
-/

namespace A044977.P3981125514108600636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  44

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171960 (A319651 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044977.P3981125514108600636

namespace A044977

/-- `eq[44, A171960(A319651(n))]` -/
def P3981125514108600636.Spec : Prop :=
  ∀ n, (P3981125514108600636.a n : ℤ) = A044977 (n + 1)

end A044977

/-! ## A044977.P8547434997920164837

`eq[A226294(n)², A244042(A319651(n))]`
-/

namespace A044977.P8547434997920164837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226294 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244042 (A319651 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044977.P8547434997920164837

namespace A044977

/-- `eq[A226294(n)², A244042(A319651(n))]` -/
def P8547434997920164837.Spec : Prop :=
  ∀ n, (P8547434997920164837.a n : ℤ) = A044977 (n + 1)

end A044977

/-! ## A044977.P13608247970395476537

`eq[A120880(n)+2, A053735(A171960(n))]`
-/

namespace A044977.P13608247970395476537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120880 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A171960 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044977.P13608247970395476537

namespace A044977

/-- `eq[A120880(n)+2, A053735(A171960(n))]` -/
def P13608247970395476537.Spec : Prop :=
  ∀ n, (P13608247970395476537.a n : ℤ) = A044977 (n + 1)

end A044977

/-! ## A044977.P147136866464827363

`∩[A039275(n+1), A204879(n+1)]`
-/

namespace A044977.P147136866464827363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039275 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044977.P147136866464827363

namespace A044977

/-- `∩[A039275(n+1), A204879(n+1)]` -/
def P147136866464827363.Spec : Prop :=
  ∀ n, (P147136866464827363.a n : ℤ) = A044977 (n + 1)

end A044977

/-!
# A044978: Numbers whose base-3 representation contains exactly two 0's and three 1's.

The programs for A044978, the canonical program `A044978.P17659103742301629516` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A044978 has offset 1).

The definition of A044978 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2262 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A044978.P17659103742301629516

`∩[A023694(n+1), A043322(n+1)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A044978

/-- `∩[A023694(n+1), A043322(n+1)]` -/
def P17659103742301629516.Spec : Prop :=
  ∀ n, (P17659103742301629516.a n : ℤ) = A044978 (n + 1)

theorem P17659103742301629516.correct : P17659103742301629516.Spec := by
  intro n
  simp only [A044978, Nat.add_sub_cancel]

end A044978

/-! ## A044978.P8256972716302732864

`eq[6, A120880(n)-A077267(n)]`
-/

namespace A044978.P8256972716302732864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120880 n - A077267 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044978.P8256972716302732864

namespace A044978

/-- `eq[6, A120880(n)-A077267(n)]` -/
def P8256972716302732864.Spec : Prop :=
  ∀ n, (P8256972716302732864.a n : ℤ) = A044978 (n + 1)

end A044978

/-! ## A044978.P3323699227714499819

`eq[9, A062756(n)^A077267(n)]`
-/

namespace A044978.P3323699227714499819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062756 n : ℚ) ^ (A077267 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A044978.P3323699227714499819

namespace A044978

/-- `eq[9, A062756(n)^A077267(n)]` -/
def P3323699227714499819.Spec : Prop :=
  ∀ n, (P3323699227714499819.a n : ℤ) = A044978 (n + 1)

end A044978

/-! ## A044978.P6843783246091870096

`A357616(A045002(n+1))`
-/

namespace A044978.P6843783246091870096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357616 (A045002 (n + 1)).toNat

end

end A044978.P6843783246091870096

namespace A044978

/-- `A357616(A045002(n+1))` -/
def P6843783246091870096.Spec : Prop :=
  ∀ n, P6843783246091870096.a n = A044978 (n + 1)

end A044978

/-! ## A044978.P13073332377421954335

`eq[28, A289813(A319651(n))]`
-/

namespace A044978.P13073332377421954335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (A319651 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044978.P13073332377421954335

namespace A044978

/-- `eq[28, A289813(A319651(n))]` -/
def P13073332377421954335.Spec : Prop :=
  ∀ n, (P13073332377421954335.a n : ℤ) = A044978 (n + 1)

end A044978

/-! ## A044978.P2437789397602070288

`eq[72, A120879(A256293(n))]`
-/

namespace A044978.P2437789397602070288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  72

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120879 (A256293 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044978.P2437789397602070288

namespace A044978

/-- `eq[72, A120879(A256293(n))]` -/
def P2437789397602070288.Spec : Prop :=
  ∀ n, (P2437789397602070288.a n : ℤ) = A044978 (n + 1)

end A044978

/-! ## A044978.P17541493695355217167

`record[A032742(A044979(n+1)-1)]`
-/

namespace A044978.P17541493695355217167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A044979 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044978.P17541493695355217167

namespace A044978

/-- `record[A032742(A044979(n+1)-1)]` -/
def P17541493695355217167.Spec : Prop :=
  ∀ n, P17541493695355217167.a n = A044978 (n + 1)

end A044978

/-!
# A044979: Numbers whose base-3 representation contains exactly two 0's and four 1's.

The programs for A044979, the canonical program `A044979.P7189074795377754944` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A044979 has offset 1).

The definition of A044979 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2581 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A044979.P7189074795377754944

`∩[A023695(n+1), A043322(n+1)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A044979

/-- `∩[A023695(n+1), A043322(n+1)]` -/
def P7189074795377754944.Spec : Prop :=
  ∀ n, (P7189074795377754944.a n : ℤ) = A044979 (n + 1)

theorem P7189074795377754944.correct : P7189074795377754944.Spec := by
  intro n
  simp only [A044979, Nat.add_sub_cancel]

end A044979

/-! ## A044979.P17803301282370776920

`A357616(A045003(n+1))`
-/

namespace A044979.P17803301282370776920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357616 (A045003 (n + 1)).toNat

end

end A044979.P17803301282370776920

namespace A044979

/-- `A357616(A045003(n+1))` -/
def P17803301282370776920.Spec : Prop :=
  ∀ n, P17803301282370776920.a n = A044979 (n + 1)

end A044979

/-! ## A044979.P14467310918862501948

`A357616(∩[A023702(n+1), A031458(n+1)])`
-/

namespace A044979.P14467310918862501948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023702 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031458 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357616 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A044979.P14467310918862501948

namespace A044979

/-- `A357616(∩[A023702(n+1), A031458(n+1)])` -/
def P14467310918862501948.Spec : Prop :=
  ∀ n, P14467310918862501948.a n = A044979 (n + 1)

end A044979

/-! ## A044979.P7908844060597575560

`A357616(∩[A023702(n+1), A043322(n+1)])`
-/

namespace A044979.P7908844060597575560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023702 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043322 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357616 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A044979.P7908844060597575560

namespace A044979

/-- `A357616(∩[A023702(n+1), A043322(n+1)])` -/
def P7908844060597575560.Spec : Prop :=
  ∀ n, P7908844060597575560.a n = A044979 (n + 1)

end A044979

/-! ## A044979.P7612053864023917884

`A357616(∩[A031458(n+1), A043322(n+1)])`
-/

namespace A044979.P7612053864023917884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043322 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357616 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A044979.P7612053864023917884

namespace A044979

/-- `A357616(∩[A031458(n+1), A043322(n+1)])` -/
def P7612053864023917884.Spec : Prop :=
  ∀ n, P7612053864023917884.a n = A044979 (n + 1)

end A044979

/-!
# A044980: Numbers whose base-3 representation contains exactly three 0's and no 1's.

The programs for A044980, the canonical program `A044980.P4515869477869152908` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A044980 has offset 1).

The definition of A044980 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 718 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A044980.P14243046090450025067

`2*A045004(n+1)`
-/

namespace A044980.P14243046090450025067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045004 (n + 1)

end

end A044980.P14243046090450025067

namespace A044980

/-- `2*A045004(n+1)` -/
def P14243046090450025067.Spec : Prop :=
  ∀ n, P14243046090450025067.a n = A044980 (n + 1)

end A044980

/-! ## A044980.P13748723012518440257

`A045004(A000027(n+1))+A045004(n+1)`
-/

namespace A044980.P13748723012518440257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045004 (A000027 (n + 1)).toNat + A045004 (n + 1)

end

end A044980.P13748723012518440257

namespace A044980

/-- `A045004(A000027(n+1))+A045004(n+1)` -/
def P13748723012518440257.Spec : Prop :=
  ∀ n, P13748723012518440257.a n = A044980 (n + 1)

end A044980

/-! ## A044980.P4262381427766080519

`A045004(A028310(n+1))+A045004(n+1)`
-/

namespace A044980.P4262381427766080519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045004 (A028310 (n + 1)).toNat + A045004 (n + 1)

end

end A044980.P4262381427766080519

namespace A044980

/-- `A045004(A028310(n+1))+A045004(n+1)` -/
def P4262381427766080519.Spec : Prop :=
  ∀ n, P4262381427766080519.a n = A044980 (n + 1)

end A044980

/-! ## A044980.P4515869477869152908

`A005823(eq[4, A008687(n)])`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A044980

/-- `A005823(eq[4, A008687(n)])` -/
def P4515869477869152908.Spec : Prop :=
  ∀ n, P4515869477869152908.a n = A044980 (n + 1)

theorem P4515869477869152908.correct : P4515869477869152908.Spec := by
  intro n
  simp only [A044980, Nat.add_sub_cancel]

end A044980

/-! ## A044980.P8929057070747279069

`A005823(eq[3, A023416(n)]+1)`
-/

namespace A044980.P8929057070747279069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A044980.P8929057070747279069

namespace A044980

/-- `A005823(eq[3, A023416(n)]+1)` -/
def P8929057070747279069.Spec : Prop :=
  ∀ n, P8929057070747279069.a n = A044980 (n + 1)

end A044980

/-! ## A044980.P2241081412922147056

`A005823(eq[A080791(n), A089080(n+1)])`
-/

namespace A044980.P2241081412922147056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089080 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A044980.P2241081412922147056

namespace A044980

/-- `A005823(eq[A080791(n), A089080(n+1)])` -/
def P2241081412922147056.Spec : Prop :=
  ∀ n, P2241081412922147056.a n = A044980 (n + 1)

end A044980

/-! ## A044980.P18166792414285597832

`2*A005836(eq[A080791(n), A089080(n+1)])`
-/

namespace A044980.P18166792414285597832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089080 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005836 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A044980.P18166792414285597832

namespace A044980

/-- `2*A005836(eq[A080791(n), A089080(n+1)])` -/
def P18166792414285597832.Spec : Prop :=
  ∀ n, P18166792414285597832.a n = A044980 (n + 1)

end A044980

/-! ## A044980.P9485133980111749143

`2*∩[A005836(n+1), A031455(n+1)]`
-/

namespace A044980.P9485133980111749143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044980.P9485133980111749143

namespace A044980

/-- `2*∩[A005836(n+1), A031455(n+1)]` -/
def P9485133980111749143.Spec : Prop :=
  ∀ n, (P9485133980111749143.a n : ℤ) = A044980 (n + 1)

end A044980

/-! ## A044980.P2073015185872172991

`A004488(A045004(n+1))`
-/

namespace A044980.P2073015185872172991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (A045004 (n + 1)).toNat

end

end A044980.P2073015185872172991

namespace A044980

/-- `A004488(A045004(n+1))` -/
def P2073015185872172991.Spec : Prop :=
  ∀ n, P2073015185872172991.a n = A044980 (n + 1)

end A044980

/-! ## A044980.P14263007619434349626

`∩[2*A043323(n+1), A005823(n+1)]`
-/

namespace A044980.P14263007619434349626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043323 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044980.P14263007619434349626

namespace A044980

/-- `∩[2*A043323(n+1), A005823(n+1)]` -/
def P14263007619434349626.Spec : Prop :=
  ∀ n, (P14263007619434349626.a n : ℤ) = A044980 (n + 1)

end A044980

/-! ## A044980.P18294914491060287635

`2*∩[A005836(n+1), A043323(n+1)]`
-/

namespace A044980.P18294914491060287635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044980.P18294914491060287635

namespace A044980

/-- `2*∩[A005836(n+1), A043323(n+1)]` -/
def P18294914491060287635.Spec : Prop :=
  ∀ n, (P18294914491060287635.a n : ℤ) = A044980 (n + 1)

end A044980

/-! ## A044980.P3070960544770957685

`2*∩[A031455(n+1), A043323(n+1)]`
-/

namespace A044980.P3070960544770957685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031455 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044980.P3070960544770957685

namespace A044980

/-- `2*∩[A031455(n+1), A043323(n+1)]` -/
def P3070960544770957685.Spec : Prop :=
  ∀ n, (P3070960544770957685.a n : ℤ) = A044980 (n + 1)

end A044980

/-! ## A044980.P1067613031378697047

`A004277(A045004(n+1))`
-/

namespace A044980.P1067613031378697047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A045004 (n + 1)).toNat

end

end A044980.P1067613031378697047

namespace A044980

/-- `A004277(A045004(n+1))` -/
def P1067613031378697047.Spec : Prop :=
  ∀ n, P1067613031378697047.a n = A044980 (n + 1)

end A044980

/-! ## A044980.P7439373271053296651

`filter[A043323(n+1), A088917(#)]`
-/

namespace A044980.P7439373271053296651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043323 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A088917 (f1 j).toNat = 1) n)

end

end A044980.P7439373271053296651

namespace A044980

/-- `filter[A043323(n+1), A088917(#)]` -/
def P7439373271053296651.Spec : Prop :=
  ∀ n, P7439373271053296651.a n = A044980 (n + 1)

end A044980

/-! ## A044980.P12101477863474431857

`2*A132141(A044968(n+1)+1)`
-/

namespace A044980.P12101477863474431857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A132141 (A044968 (n + 1) + 1).toNat

end

end A044980.P12101477863474431857

namespace A044980

/-- `2*A132141(A044968(n+1)+1)` -/
def P12101477863474431857.Spec : Prop :=
  ∀ n, P12101477863474431857.a n = A044980 (n + 1)

end A044980

/-! ## A044980.P9755972166645604606

`∩[A005823(n+1), A043323(n+1)]`
-/

namespace A044980.P9755972166645604606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044980.P9755972166645604606

namespace A044980

/-- `∩[A005823(n+1), A043323(n+1)]` -/
def P9755972166645604606.Spec : Prop :=
  ∀ n, (P9755972166645604606.a n : ℤ) = A044980 (n + 1)

end A044980

/-! ## A044980.P7741023441554343011

`∩[A043323(2*(n+1)), A023692(n+2)+1]`
-/

namespace A044980.P7741023441554343011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043323 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023692 (n + 2) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044980.P7741023441554343011

namespace A044980

/-- `∩[A043323(2*(n+1)), A023692(n+2)+1]` -/
def P7741023441554343011.Spec : Prop :=
  ∀ n, (P7741023441554343011.a n : ℤ) = A044980 (n + 1)

end A044980

/-!
# A044981: Numbers whose base-3 representation contains exactly three 0's and one 1.

The programs for A044981, the canonical program `A044981.P18195031240722580958` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A044981 has offset 1).

The definition of A044981 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 681 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A044981.P18195031240722580958

`∩[A023692(n+1), A043323(n+1)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A044981

/-- `∩[A023692(n+1), A043323(n+1)]` -/
def P18195031240722580958.Spec : Prop :=
  ∀ n, (P18195031240722580958.a n : ℤ) = A044981 (n + 1)

theorem P18195031240722580958.correct : P18195031240722580958.Spec := by
  intro n
  simp only [A044981, Nat.add_sub_cancel]

end A044981

/-! ## A044981.P14980821161105841841

`eq[3, A077267(n)^A062756(n)]`
-/

namespace A044981.P14980821161105841841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077267 n : ℚ) ^ (A062756 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A044981.P14980821161105841841

namespace A044981

/-- `eq[3, A077267(n)^A062756(n)]` -/
def P14980821161105841841.Spec : Prop :=
  ∀ n, (P14980821161105841841.a n : ℤ) = A044981 (n + 1)

end A044981

/-! ## A044981.P17491309638293758290

`A357616(A045005(n+1))`
-/

namespace A044981.P17491309638293758290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357616 (A045005 (n + 1)).toNat

end

end A044981.P17491309638293758290

namespace A044981

/-- `A357616(A045005(n+1))` -/
def P17491309638293758290.Spec : Prop :=
  ∀ n, P17491309638293758290.a n = A044981 (n + 1)

end A044981

/-! ## A044981.P6178122061499106747

`eq[8, A289813(A319651(n))]`
-/

namespace A044981.P6178122061499106747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (A319651 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044981.P6178122061499106747

namespace A044981

/-- `eq[8, A289813(A319651(n))]` -/
def P6178122061499106747.Spec : Prop :=
  ∀ n, (P6178122061499106747.a n : ℤ) = A044981 (n + 1)

end A044981

/-! ## A044981.P15753713079059787873

`eq[24, A120879(A171960(n))]`
-/

namespace A044981.P15753713079059787873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120879 (A171960 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044981.P15753713079059787873

namespace A044981

/-- `eq[24, A120879(A171960(n))]` -/
def P15753713079059787873.Spec : Prop :=
  ∀ n, (P15753713079059787873.a n : ℤ) = A044981 (n + 1)

end A044981

/-! ## A044981.P8509154294894269779

`record[A163491(A044982(n+1))-1]`
-/

namespace A044981.P8509154294894269779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163491 (A044982 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044981.P8509154294894269779

namespace A044981

/-- `record[A163491(A044982(n+1))-1]` -/
def P8509154294894269779.Spec : Prop :=
  ∀ n, P8509154294894269779.a n = A044981 (n + 1)

end A044981

/-! ## A044981.P6154804103275634041

`record[A000292(A044986(n+1))%A044986(n+1)]`
-/

namespace A044981.P6154804103275634041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000292 (A044986 (n + 1)).toNat) (A044986 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044981.P6154804103275634041

namespace A044981

/-- `record[A000292(A044986(n+1))%A044986(n+1)]` -/
def P6154804103275634041.Spec : Prop :=
  ∀ n, P6154804103275634041.a n = A044981 (n + 1)

end A044981

/-! ## A044981.P73979642928826973

`record[A260437(A004273(A044986(n+1)))]`
-/

namespace A044981.P73979642928826973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260437 (A004273 (A044986 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044981.P73979642928826973

namespace A044981

/-- `record[A260437(A004273(A044986(n+1)))]` -/
def P73979642928826973.Spec : Prop :=
  ∀ n, P73979642928826973.a n = A044981 (n + 1)

end A044981

/-!
# A044982: Numbers whose base-3 representation contains exactly three 0's and two 1's.

The programs for A044982, the canonical program `A044982.P1663044987886424646` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A044982 has offset 1).

The definition of A044982 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1720 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A044982.P1663044987886424646

`∩[A023693(n+1), A043323(n+1)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A044982

/-- `∩[A023693(n+1), A043323(n+1)]` -/
def P1663044987886424646.Spec : Prop :=
  ∀ n, (P1663044987886424646.a n : ℤ) = A044982 (n + 1)

theorem P1663044987886424646.correct : P1663044987886424646.Spec := by
  intro n
  simp only [A044982, Nat.add_sub_cancel]

end A044982

/-! ## A044982.P13939912497286456239

`eq[72, A006047(A256293(n))]`
-/

namespace A044982.P13939912497286456239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  72

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 (A256293 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044982.P13939912497286456239

namespace A044982

/-- `eq[72, A006047(A256293(n))]` -/
def P13939912497286456239.Spec : Prop :=
  ∀ n, (P13939912497286456239.a n : ℤ) = A044982 (n + 1)

end A044982

/-! ## A044982.P10777831352407847048

`eq[9, A077267(n)^A062756(n)]`
-/

namespace A044982.P10777831352407847048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077267 n : ℚ) ^ (A062756 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A044982.P10777831352407847048

namespace A044982

/-- `eq[9, A077267(n)^A062756(n)]` -/
def P10777831352407847048.Spec : Prop :=
  ∀ n, (P10777831352407847048.a n : ℤ) = A044982 (n + 1)

end A044982

/-! ## A044982.P12335702517302935522

`A357616(A045006(n+1))`
-/

namespace A044982.P12335702517302935522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357616 (A045006 (n + 1)).toNat

end

end A044982.P12335702517302935522

namespace A044982

/-- `A357616(A045006(n+1))` -/
def P12335702517302935522.Spec : Prop :=
  ∀ n, P12335702517302935522.a n = A044982 (n + 1)

end A044982

/-! ## A044982.P12174283437331097506

`eq[24, A289813(A319651(n))]`
-/

namespace A044982.P12174283437331097506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (A319651 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044982.P12174283437331097506

namespace A044982

/-- `eq[24, A289813(A319651(n))]` -/
def P12174283437331097506.Spec : Prop :=
  ∀ n, (P12174283437331097506.a n : ℤ) = A044982 (n + 1)

end A044982

/-! ## A044982.P18430044342722209556

`record[A135997(A044987(n+2))]`
-/

namespace A044982.P18430044342722209556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (A044987 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044982.P18430044342722209556

namespace A044982

/-- `record[A135997(A044987(n+2))]` -/
def P18430044342722209556.Spec : Prop :=
  ∀ n, P18430044342722209556.a n = A044982 (n + 1)

end A044982

/-! ## A044982.P14071050881769865810

`record[A135997(A044983(n+1)-1)]`
-/

namespace A044982.P14071050881769865810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (A044983 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044982.P14071050881769865810

namespace A044982

/-- `record[A135997(A044983(n+1)-1)]` -/
def P14071050881769865810.Spec : Prop :=
  ∀ n, P14071050881769865810.a n = A044982 (n + 1)

end A044982

/-! ## A044982.P4683684237213091489

`record[A135997(xor(1, A044983(n+1)))]`
-/

namespace A044982.P4683684237213091489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (Int.xor 1 (A044983 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044982.P4683684237213091489

namespace A044982

/-- `record[A135997(xor(1, A044983(n+1)))]` -/
def P4683684237213091489.Spec : Prop :=
  ∀ n, P4683684237213091489.a n = A044982 (n + 1)

end A044982

/-!
# A044983: Numbers whose base-3 representation contains exactly three 0's and three 1's.

The programs for A044983, the canonical program `A044983.P8907591940877525692` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A044983 has offset 1).

The definition of A044983 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2820 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A044983.P8907591940877525692

`∩[A023694(n+1), A039000(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A044983

/-- `∩[A023694(n+1), A039000(n+1)]` -/
def P8907591940877525692.Spec : Prop :=
  ∀ n, (P8907591940877525692.a n : ℤ) = A044983 (n + 1)

theorem P8907591940877525692.correct : P8907591940877525692.Spec := by
  intro n
  simp only [A044983, Nat.add_sub_cancel]

end A044983

/-! ## A044983.P15757124996563479426

`∩[A023694(n+1), A039275(n+1)]`
-/

namespace A044983.P15757124996563479426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039275 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044983.P15757124996563479426

namespace A044983

/-- `∩[A023694(n+1), A039275(n+1)]` -/
def P15757124996563479426.Spec : Prop :=
  ∀ n, (P15757124996563479426.a n : ℤ) = A044983 (n + 1)

end A044983

/-! ## A044983.P16273051925285915476

`∩[A023694(n+1), A043323(n+1)]`
-/

namespace A044983.P16273051925285915476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044983.P16273051925285915476

namespace A044983

/-- `∩[A023694(n+1), A043323(n+1)]` -/
def P16273051925285915476.Spec : Prop :=
  ∀ n, (P16273051925285915476.a n : ℤ) = A044983 (n + 1)

end A044983

/-! ## A044983.P3768906359757195553

`∩[A039000(n+1), A043323(n+1)]`
-/

namespace A044983.P3768906359757195553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039000 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044983.P3768906359757195553

namespace A044983

/-- `∩[A039000(n+1), A043323(n+1)]` -/
def P3768906359757195553.Spec : Prop :=
  ∀ n, (P3768906359757195553.a n : ℤ) = A044983 (n + 1)

end A044983

/-! ## A044983.P3243561303408822162

`∩[A039275(n+1), A043323(n+1)]`
-/

namespace A044983.P3243561303408822162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039275 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044983.P3243561303408822162

namespace A044983

/-- `∩[A039275(n+1), A043323(n+1)]` -/
def P3243561303408822162.Spec : Prop :=
  ∀ n, (P3243561303408822162.a n : ℤ) = A044983 (n + 1)

end A044983

/-! ## A044983.P10487549559062841756

`A357616(A045007(n+1))`
-/

namespace A044983.P10487549559062841756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357616 (A045007 (n + 1)).toNat

end

end A044983.P10487549559062841756

namespace A044983

/-- `A357616(A045007(n+1))` -/
def P10487549559062841756.Spec : Prop :=
  ∀ n, P10487549559062841756.a n = A044983 (n + 1)

end A044983

/-! ## A044983.P11731633908006317010

`record[A135997(A044988(n+3))]`
-/

namespace A044983.P11731633908006317010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (A044988 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044983.P11731633908006317010

namespace A044983

/-- `record[A135997(A044988(n+3))]` -/
def P11731633908006317010.Spec : Prop :=
  ∀ n, P11731633908006317010.a n = A044983 (n + 1)

end A044983

/-! ## A044983.P15646222679798640583

`record[A032742(A044984(n+1)-1)]`
-/

namespace A044983.P15646222679798640583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A044984 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044983.P15646222679798640583

namespace A044983

/-- `record[A032742(A044984(n+1)-1)]` -/
def P15646222679798640583.Spec : Prop :=
  ∀ n, P15646222679798640583.a n = A044983 (n + 1)

end A044983

/-! ## A044983.P10813204381422690959

`record[A135997(A044984(n+1)-1)]`
-/

namespace A044983.P10813204381422690959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (A044984 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044983.P10813204381422690959

namespace A044983

/-- `record[A135997(A044984(n+1)-1)]` -/
def P10813204381422690959.Spec : Prop :=
  ∀ n, P10813204381422690959.a n = A044983 (n + 1)

end A044983

/-! ## A044983.P18259278376025075893

`record[A032742(A014681(A044984(n+1)))]`
-/

namespace A044983.P18259278376025075893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A014681 (A044984 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044983.P18259278376025075893

namespace A044983

/-- `record[A032742(A014681(A044984(n+1)))]` -/
def P18259278376025075893.Spec : Prop :=
  ∀ n, P18259278376025075893.a n = A044983 (n + 1)

end A044983

/-!
# A044984: Numbers whose base-3 representation contains exactly three 0's and four 1's.

The programs for A044984, the canonical program `A044984.P4664107033638038390` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A044984 has offset 1).

The definition of A044984 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2594 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A044984.P4664107033638038390

`∩[A023695(n+1), A043323(n+1)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A044984

/-- `∩[A023695(n+1), A043323(n+1)]` -/
def P4664107033638038390.Spec : Prop :=
  ∀ n, (P4664107033638038390.a n : ℤ) = A044984 (n + 1)

theorem P4664107033638038390.correct : P4664107033638038390.Spec := by
  intro n
  simp only [A044984, Nat.add_sub_cancel]

end A044984

/-! ## A044984.P6569030818322697960

`A357616(A045008(n+1))`
-/

namespace A044984.P6569030818322697960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357616 (A045008 (n + 1)).toNat

end

end A044984.P6569030818322697960

namespace A044984

/-- `A357616(A045008(n+1))` -/
def P6569030818322697960.Spec : Prop :=
  ∀ n, P6569030818322697960.a n = A044984 (n + 1)

end A044984

/-! ## A044984.P13592352077338593711

`A119353(A045032(n+1))`
-/

namespace A044984.P13592352077338593711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119353 (A045032 (n + 1)).toNat

end

end A044984.P13592352077338593711

namespace A044984

/-- `A119353(A045032(n+1))` -/
def P13592352077338593711.Spec : Prop :=
  ∀ n, P13592352077338593711.a n = A044984 (n + 1)

end A044984

/-! ## A044984.P11353293336852652144

`∩[A023695(n+1), A045004(n+1)]`
-/

namespace A044984.P11353293336852652144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045004 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044984.P11353293336852652144

namespace A044984

/-- `∩[A023695(n+1), A045004(n+1)]` -/
def P11353293336852652144.Spec : Prop :=
  ∀ n, (P11353293336852652144.a n : ℤ) = A044984 (n + 1)

end A044984

/-! ## A044984.P2353275340377300796

`∩[A031455(n+1), A038466(n+1)]`
-/

namespace A044984.P2353275340377300796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031455 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044984.P2353275340377300796

namespace A044984

/-- `∩[A031455(n+1), A038466(n+1)]` -/
def P2353275340377300796.Spec : Prop :=
  ∀ n, (P2353275340377300796.a n : ℤ) = A044984 (n + 1)

end A044984

/-!
# A044985: Numbers whose base-3 representation contains exactly four 0's and no 1's.

The programs for A044985, there is no canonical definition to state claims against.
-/

/-! ## A044985.P8135230488775123681

`2*A045009(1+n)`
-/

namespace A044985.P8135230488775123681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045009 (1 + n)

end

end A044985.P8135230488775123681

/-! ## A044985.P17523639814939934211

`A045009(n+1)+A045009(Δ[n²]-n)`
-/

namespace A044985.P17523639814939934211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045009 (n + 1) + A045009 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat

end

end A044985.P17523639814939934211

/-! ## A044985.P15360049392644301887

`A005823(eq[5, A008687(n)])`
-/

namespace A044985.P15360049392644301887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044985.P15360049392644301887

/-! ## A044985.P16913768279942879118

`A005823(eq[A089080(n+1)+1, A080791(n)])`
-/

namespace A044985.P16913768279942879118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089080 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A044985.P16913768279942879118

/-! ## A044985.P17388840054166366353

`A045009(n+1)+A045009(n+1)+A002448(A000040(n+2))`
-/

namespace A044985.P17388840054166366353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045009 (n + 1) + (A045009 (n + 1) + A002448 (A000040 (n + 2)).toNat)

end

end A044985.P17388840054166366353

/-! ## A044985.P14976971510682519587

`2*∩[A005836(n+1), A031456(n+1)]`
-/

namespace A044985.P14976971510682519587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031456 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044985.P14976971510682519587

/-! ## A044985.P6309592110571034900

`2*∩[A031456(n+1), A037408(n+1)]`
-/

namespace A044985.P6309592110571034900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044985.P6309592110571034900

/-! ## A044985.P1299481253252584093

`A004488(A045009(n+1))`
-/

namespace A044985.P1299481253252584093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (A045009 (n + 1)).toNat

end

end A044985.P1299481253252584093

/-! ## A044985.P9428589585872755396

`∩[2*A043324(n+1), A005823(n+1)]`
-/

namespace A044985.P9428589585872755396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044985.P9428589585872755396

/-! ## A044985.P12402442027123325382

`2*∩[A005836(n+1), A043324(n+1)]`
-/

namespace A044985.P12402442027123325382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043324 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044985.P12402442027123325382

/-! ## A044985.P11509432916535032261

`2*∩[A031456(n+1), A043324(n+1)]`
-/

namespace A044985.P11509432916535032261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043324 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044985.P11509432916535032261

/-! ## A044985.P7443359822595460969

`2*∩[A037408(n+1), A043324(n+1)]`
-/

namespace A044985.P7443359822595460969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037408 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043324 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044985.P7443359822595460969

/-! ## A044985.P13152755850629778444

`filter[A043324(n+1), A088917(#)]`
-/

namespace A044985.P13152755850629778444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043324 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A088917 (f1 j).toNat = 1) n)

end

end A044985.P13152755850629778444

/-! ## A044985.P13320908192600732012

`∩[A005823(n+1), A043324(n+1)]`
-/

namespace A044985.P13320908192600732012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043324 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044985.P13320908192600732012

/-! ## A044985.P8224073247071391451

`∩[A043324(2*(n+1)), A023692(n+2)+1]`
-/

namespace A044985.P8224073247071391451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043324 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023692 (n + 2) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044985.P8224073247071391451

/-! ## A044985.P7145785236171401453

`∑{d}[A045009(n+1), A005843(A000010(#))]`
-/

namespace A044985.P7145785236171401453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045009 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A005843 (A000010 d).toNat

end

end A044985.P7145785236171401453

/-! ## A044985.P13682895673596027075

`A004277(A045009(n+1))`
-/

namespace A044985.P13682895673596027075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A045009 (n + 1)).toNat

end

end A044985.P13682895673596027075

/-! ## A044985.P1559186299541588408

`A004273(A045009(n+1)+1)-1`
-/

namespace A044985.P1559186299541588408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A045009 (n + 1) + 1).toNat - 1

end

end A044985.P1559186299541588408

/-! ## A044985.P10972901319610669166

`A005843(A045009(n+1)+1)-2`
-/

namespace A044985.P10972901319610669166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A045009 (n + 1) + 1).toNat - 2

end

end A044985.P10972901319610669166

/-!
# A044986: Numbers whose base-3 representation contains exactly four 0's and one 1.

The programs for A044986, the canonical program `A044986.P11188818628558561952` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A044986 has offset 1).

The definition of A044986 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1046 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A044986.P11188818628558561952

`∩[A023692(n+1), A043324(n+1)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A044986

/-- `∩[A023692(n+1), A043324(n+1)]` -/
def P11188818628558561952.Spec : Prop :=
  ∀ n, (P11188818628558561952.a n : ℤ) = A044986 (n + 1)

theorem P11188818628558561952.correct : P11188818628558561952.Spec := by
  intro n
  simp only [A044986, Nat.add_sub_cancel]

end A044986

/-! ## A044986.P1235921432886111171

`A357616(A045010(n+1))`
-/

namespace A044986.P1235921432886111171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357616 (A045010 (n + 1)).toNat

end

end A044986.P1235921432886111171

namespace A044986

/-- `A357616(A045010(n+1))` -/
def P1235921432886111171.Spec : Prop :=
  ∀ n, P1235921432886111171.a n = A044986 (n + 1)

end A044986

/-! ## A044986.P8342911071343035704

`A357616(filter[A031455(n+1), A064990(#)])`
-/

namespace A044986.P8342911071343035704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031455 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357616 (f1 (SequenceMachineLib.nth (fun j => A064990 (f1 j).toNat = 1) n)).toNat

end

end A044986.P8342911071343035704

namespace A044986

/-- `A357616(filter[A031455(n+1), A064990(#)])` -/
def P8342911071343035704.Spec : Prop :=
  ∀ n, P8342911071343035704.a n = A044986 (n + 1)

end A044986

/-! ## A044986.P5399468464282102744

`A357616(∩[A023699(n+1), A043324(n+1)])`
-/

namespace A044986.P5399468464282102744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023699 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043324 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357616 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A044986.P5399468464282102744

namespace A044986

/-- `A357616(∩[A023699(n+1), A043324(n+1)])` -/
def P5399468464282102744.Spec : Prop :=
  ∀ n, P5399468464282102744.a n = A044986 (n + 1)

end A044986

/-! ## A044986.P7341900413888307516

`A357616(∩[A031455(n+1), A043324(n+1)])`
-/

namespace A044986.P7341900413888307516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031455 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043324 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357616 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A044986.P7341900413888307516

namespace A044986

/-- `A357616(∩[A031455(n+1), A043324(n+1)])` -/
def P7341900413888307516.Spec : Prop :=
  ∀ n, P7341900413888307516.a n = A044986 (n + 1)

end A044986

/-! ## A044986.P15343404122417813033

`record[A135997(A044987(n+1)-1)]`
-/

namespace A044986.P15343404122417813033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (A044987 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044986.P15343404122417813033

namespace A044986

/-- `record[A135997(A044987(n+1)-1)]` -/
def P15343404122417813033.Spec : Prop :=
  ∀ n, P15343404122417813033.a n = A044986 (n + 1)

end A044986

/-!
# A044987: Numbers whose base-3 representation contains exactly four 0's and two 1's.

The programs for A044987, the canonical program `A044987.P8628495577670064236` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A044987 has offset 1).

The definition of A044987 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2472 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A044987.P8628495577670064236

`∩[A023693(n+1), A043324(n+1)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A044987

/-- `∩[A023693(n+1), A043324(n+1)]` -/
def P8628495577670064236.Spec : Prop :=
  ∀ n, (P8628495577670064236.a n : ℤ) = A044987 (n + 1)

theorem P8628495577670064236.correct : P8628495577670064236.Spec := by
  intro n
  simp only [A044987, Nat.add_sub_cancel]

end A044987

/-! ## A044987.P16320892228631031084

`A357616(A045011(1+n))`
-/

namespace A044987.P16320892228631031084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357616 (A045011 (1 + n)).toNat

end

end A044987.P16320892228631031084

namespace A044987

/-- `A357616(A045011(1+n))` -/
def P16320892228631031084.Spec : Prop :=
  ∀ n, P16320892228631031084.a n = A044987 (n + 1)

end A044987

/-! ## A044987.P10804337493802061466

`record[A135997(A044988(n+1)-1)]`
-/

namespace A044987.P10804337493802061466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (A044988 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044987.P10804337493802061466

namespace A044987

/-- `record[A135997(A044988(n+1)-1)]` -/
def P10804337493802061466.Spec : Prop :=
  ∀ n, P10804337493802061466.a n = A044987 (n + 1)

end A044987

/-! ## A044987.P13792540268953334323

`record[A135997(xor(1, A044988(n+1)))]`
-/

namespace A044987.P13792540268953334323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (Int.xor 1 (A044988 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044987.P13792540268953334323

namespace A044987

/-- `record[A135997(xor(1, A044988(n+1)))]` -/
def P13792540268953334323.Spec : Prop :=
  ∀ n, P13792540268953334323.a n = A044987 (n + 1)

end A044987

/-!
# A044988: Numbers whose base-3 representation contains exactly four 0's and three 1's.

The programs for A044988, the canonical program `A044988.P12725054443842438556` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A044988 has offset 1).

The definition of A044988 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2115 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A044988.P12725054443842438556

`∩[A023694(n+1), A043324(n+1)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A044988

/-- `∩[A023694(n+1), A043324(n+1)]` -/
def P12725054443842438556.Spec : Prop :=
  ∀ n, (P12725054443842438556.a n : ℤ) = A044988 (n + 1)

theorem P12725054443842438556.correct : P12725054443842438556.Spec := by
  intro n
  simp only [A044988, Nat.add_sub_cancel]

end A044988

/-! ## A044988.P18057279801138421992

`A357616(A045012(n+1))`
-/

namespace A044988.P18057279801138421992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357616 (A045012 (n + 1)).toNat

end

end A044988.P18057279801138421992

namespace A044988

/-- `A357616(A045012(n+1))` -/
def P18057279801138421992.Spec : Prop :=
  ∀ n, P18057279801138421992.a n = A044988 (n + 1)

end A044988

/-! ## A044988.P3983777304551472559

`record[A032742(A044989(1+n)-1)]`
-/

namespace A044988.P3983777304551472559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A044989 (1 + n) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044988.P3983777304551472559

namespace A044988

/-- `record[A032742(A044989(1+n)-1)]` -/
def P3983777304551472559.Spec : Prop :=
  ∀ n, P3983777304551472559.a n = A044988 (n + 1)

end A044988

/-! ## A044988.P4030874697217284511

`A119353(A045036(n+1))`
-/

namespace A044988.P4030874697217284511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119353 (A045036 (n + 1)).toNat

end

end A044988.P4030874697217284511

namespace A044988

/-- `A119353(A045036(n+1))` -/
def P4030874697217284511.Spec : Prop :=
  ∀ n, P4030874697217284511.a n = A044988 (n + 1)

end A044988

/-! ## A044988.P15416122281403875923

`eq[35, A033182(A319651(n))]`
-/

namespace A044988.P15416122281403875923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  35

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 (A319651 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044988.P15416122281403875923

namespace A044988

/-- `eq[35, A033182(A319651(n))]` -/
def P15416122281403875923.Spec : Prop :=
  ∀ n, (P15416122281403875923.a n : ℤ) = A044988 (n + 1)

end A044988

/-!
# A044989: Numbers whose base-3 representation contains exactly four 0's and four 1's.

The programs for A044989, there is no canonical definition to state claims against.
-/

/-! ## A044989.P11233179268231210097

`A343766(A045013(n+1))`
-/

namespace A044989.P11233179268231210097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343766 (A045013 (n + 1)).toNat

end

end A044989.P11233179268231210097

/-! ## A044989.P9073959996749768191

`A001281(lcm(2, A045013(n+1)))`
-/

namespace A044989.P9073959996749768191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (Int.lcm 2 (A045013 (n + 1)))

end

end A044989.P9073959996749768191

/-! ## A044989.P4020070582132672702

`∩[A031456(n+1), A038466(n+1)]`
-/

namespace A044989.P4020070582132672702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044989.P4020070582132672702

/-! ## A044989.P16651049392917064631

`∩[A038466(n+1), A043324(n+1)]`
-/

namespace A044989.P16651049392917064631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043324 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044989.P16651049392917064631

/-! ## A044989.P10210607067046195720

`∩[A038466(n+1), A045009(n+1)]`
-/

namespace A044989.P10210607067046195720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045009 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044989.P10210607067046195720

/-!
# A044990: Numbers whose base-3 representation contains no 0's and exactly one 2.

The programs for A044990, the canonical program `A044990.P1906721328781520243` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A044990 has offset 1).

The definition of A044990 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A044990.P1906721328781520243

`A055235(n)+A003462(A003056(n))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A044990

/-- `A055235(n)+A003462(A003056(n))` -/
def P1906721328781520243.Spec : Prop :=
  ∀ n, P1906721328781520243.a n = A044990 (n + 1)

theorem P1906721328781520243.correct : P1906721328781520243.Spec := by
  intro n
  simp only [A044990, Nat.add_sub_cancel]

end A044990

/-! ## A044990.P13070403598761882507

`A055378(∑[n+2]+7+n)+A003462(A003056(n))`
-/

namespace A044990.P13070403598761882507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055378 (∑ j ∈ Finset.range (n + 1), f1 j + 7 + n) + A003462 (A003056 n).toNat

end

end A044990.P13070403598761882507

namespace A044990

/-- `A055378(∑[n+2]+7+n)+A003462(A003056(n))` -/
def P13070403598761882507.Spec : Prop :=
  ∀ n, P13070403598761882507.a n = A044990 (n + 1)

end A044990

/-! ## A044990.P12148102320709976022

`floor(A006046(A018900(n+1))/2)`
-/

namespace A044990.P12148102320709976022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006046 (A018900 (n + 1)).toNat : ℚ) / 2⌋

end

end A044990.P12148102320709976022

namespace A044990

/-- `floor(A006046(A018900(n+1))/2)` -/
def P12148102320709976022.Spec : Prop :=
  ∀ n, P12148102320709976022.a n = A044990 (n + 1)

end A044990

/-! ## A044990.P12138634295087561032

`(A006046(A018900(n+1))-A007318(C(2, n)))/2`
-/

namespace A044990.P12138634295087561032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006046 (A018900 (n + 1)).toNat - A007318 (Nat.choose 2 n) : ℚ) / 2

end

end A044990.P12138634295087561032

namespace A044990

/-- `(A006046(A018900(n+1))-A007318(C(2, n)))/2` -/
def P12138634295087561032.Spec : Prop :=
  ∀ n, P12138634295087561032.a n = (A044990 (n + 1) : ℚ)

end A044990

/-! ## A044990.P8714179506072305374

`A032924(A099628(n+1))`
-/

namespace A044990.P8714179506072305374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (A099628 (n + 1)).toNat

end

end A044990.P8714179506072305374

namespace A044990

/-- `A032924(A099628(n+1))` -/
def P8714179506072305374.Spec : Prop :=
  ∀ n, P8714179506072305374.a n = A044990 (n + 1)

end A044990

/-! ## A044990.P548403111387285358

`A032924(eq[2, A048896(n)])`
-/

namespace A044990.P548403111387285358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044990.P548403111387285358

namespace A044990

/-- `A032924(eq[2, A048896(n)])` -/
def P548403111387285358.Spec : Prop :=
  ∀ n, P548403111387285358.a n = A044990 (n + 1)

end A044990

/-! ## A044990.P2205243107612438907

`A032924(eq[2, A071055(n)])`
-/

namespace A044990.P2205243107612438907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071055 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044990.P2205243107612438907

namespace A044990

/-- `A032924(eq[2, A071055(n)])` -/
def P2205243107612438907.Spec : Prop :=
  ∀ n, P2205243107612438907.a n = A044990 (n + 1)

end A044990

/-! ## A044990.P16953564477678846130

`A032924(A018900(n+1)-1)`
-/

namespace A044990.P16953564477678846130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (A018900 (n + 1) - 1).toNat

end

end A044990.P16953564477678846130

namespace A044990

/-- `A032924(A018900(n+1)-1)` -/
def P16953564477678846130.Spec : Prop :=
  ∀ n, P16953564477678846130.a n = A044990 (n + 1)

end A044990

/-! ## A044990.P5349188356950494360

`A147991(A018900(n+1)-1)`
-/

namespace A044990.P5349188356950494360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147991 (A018900 (n + 1) - 1).toNat

end

end A044990.P5349188356950494360

namespace A044990

/-- `A147991(A018900(n+1)-1)` -/
def P5349188356950494360.Spec : Prop :=
  ∀ n, P5349188356950494360.a n = A044990 (n + 1)

end A044990

/-! ## A044990.P15635295804538739776

`A032924(eq[2, A000120(n+1)])`
-/

namespace A044990.P15635295804538739776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044990.P15635295804538739776

namespace A044990

/-- `A032924(eq[2, A000120(n+1)])` -/
def P15635295804538739776.Spec : Prop :=
  ∀ n, P15635295804538739776.a n = A044990 (n + 1)

end A044990

/-!
# A044991: Numbers whose base-3 representation contains no 0's and exactly two 2's.

The programs for A044991, the canonical program `A044991.P16800616075751073136` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A044991 has offset 1).

The definition of A044991 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A044991.P16800616075751073136

`A032924(eq[4, A048896(n)])`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A044991

/-- `A032924(eq[4, A048896(n)])` -/
def P16800616075751073136.Spec : Prop :=
  ∀ n, P16800616075751073136.a n = A044991 (n + 1)

theorem P16800616075751073136.correct : P16800616075751073136.Spec := by
  intro n
  simp only [A044991, Nat.add_sub_cancel]

end A044991

/-! ## A044991.P7603614397001287548

`A032924(eq[6, A071055(n)])`
-/

namespace A044991.P7603614397001287548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071055 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044991.P7603614397001287548

namespace A044991

/-- `A032924(eq[6, A071055(n)])` -/
def P7603614397001287548.Spec : Prop :=
  ∀ n, P7603614397001287548.a n = A044991 (n + 1)

end A044991

/-! ## A044991.P11153297170254235464

`A032924(A014311(n+1)-1)`
-/

namespace A044991.P11153297170254235464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (A014311 (n + 1) - 1).toNat

end

end A044991.P11153297170254235464

namespace A044991

/-- `A032924(A014311(n+1)-1)` -/
def P11153297170254235464.Spec : Prop :=
  ∀ n, P11153297170254235464.a n = A044991 (n + 1)

end A044991

/-! ## A044991.P2368512541882993142

`A032924(eq[3, A000120(n+1)])`
-/

namespace A044991.P2368512541882993142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044991.P2368512541882993142

namespace A044991

/-- `A032924(eq[3, A000120(n+1)])` -/
def P2368512541882993142.Spec : Prop :=
  ∀ n, P2368512541882993142.a n = A044991 (n + 1)

end A044991

/-! ## A044991.P13694475707038581235

`A153775(eq[3, A000120(n)])-1`
-/

namespace A044991.P13694475707038581235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153775 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - 1

end

end A044991.P13694475707038581235

namespace A044991

/-- `A153775(eq[3, A000120(n)])-1` -/
def P13694475707038581235.Spec : Prop :=
  ∀ n, P13694475707038581235.a n = A044991 (n + 1)

end A044991

/-! ## A044991.P4103173552985291143

`A032924(eq[8, A001316(n+1)])`
-/

namespace A044991.P4103173552985291143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044991.P4103173552985291143

namespace A044991

/-- `A032924(eq[8, A001316(n+1)])` -/
def P4103173552985291143.Spec : Prop :=
  ∀ n, P4103173552985291143.a n = A044991 (n + 1)

end A044991

/-! ## A044991.P9632963116884441528

`A032924(eq[A000120(n), A085058(n)])`
-/

namespace A044991.P9632963116884441528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085058 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A044991.P9632963116884441528

namespace A044991

/-- `A032924(eq[A000120(n), A085058(n)])` -/
def P9632963116884441528.Spec : Prop :=
  ∀ n, P9632963116884441528.a n = A044991 (n + 1)

end A044991

/-! ## A044991.P13695168406471814751

`∩[A031458(n+1), A032924(n+1)]`
-/

namespace A044991.P13695168406471814751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044991.P13695168406471814751

namespace A044991

/-- `∩[A031458(n+1), A032924(n+1)]` -/
def P13695168406471814751.Spec : Prop :=
  ∀ n, (P13695168406471814751.a n : ℤ) = A044991 (n + 1)

end A044991

/-! ## A044991.P12859476123207582499

`∩[A031457(n+1)+1, A032924(n+1)]`
-/

namespace A044991.P12859476123207582499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031457 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044991.P12859476123207582499

namespace A044991

/-- `∩[A031457(n+1)+1, A032924(n+1)]` -/
def P12859476123207582499.Spec : Prop :=
  ∀ n, (P12859476123207582499.a n : ℤ) = A044991 (n + 1)

end A044991

/-! ## A044991.P8153134589358871203

`∩[A023700(n+1), A031458(n+1)]`
-/

namespace A044991.P8153134589358871203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044991.P8153134589358871203

namespace A044991

/-- `∩[A023700(n+1), A031458(n+1)]` -/
def P8153134589358871203.Spec : Prop :=
  ∀ n, (P8153134589358871203.a n : ℤ) = A044991 (n + 1)

end A044991

/-! ## A044991.P9321873910506699737

`∩[A023700(n+1), A032924(n+1)]`
-/

namespace A044991.P9321873910506699737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044991.P9321873910506699737

namespace A044991

/-- `∩[A023700(n+1), A032924(n+1)]` -/
def P9321873910506699737.Spec : Prop :=
  ∀ n, (P9321873910506699737.a n : ℤ) = A044991 (n + 1)

end A044991

/-!
# A044992: Numbers whose base-3 representation contains no 0's and exactly three 2's.

The programs for A044992, the canonical program `A044992.P3415523562355839909` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A044992 has offset 1).

The definition of A044992 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 880 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A044992.P3415523562355839909

`A032924(eq[8, A048896(n)])`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A044992

/-- `A032924(eq[8, A048896(n)])` -/
def P3415523562355839909.Spec : Prop :=
  ∀ n, P3415523562355839909.a n = A044992 (n + 1)

theorem P3415523562355839909.correct : P3415523562355839909.Spec := by
  intro n
  simp only [A044992, Nat.add_sub_cancel]

end A044992

/-! ## A044992.P3700528519131774787

`A032924(A014312(n+1)-1)`
-/

namespace A044992.P3700528519131774787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (A014312 (n + 1) - 1).toNat

end

end A044992.P3700528519131774787

namespace A044992

/-- `A032924(A014312(n+1)-1)` -/
def P3700528519131774787.Spec : Prop :=
  ∀ n, P3700528519131774787.a n = A044992 (n + 1)

end A044992

/-! ## A044992.P9593541497972177415

`A032924(eq[4, A000120(n+1)])`
-/

namespace A044992.P9593541497972177415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044992.P9593541497972177415

namespace A044992

/-- `A032924(eq[4, A000120(n+1)])` -/
def P9593541497972177415.Spec : Prop :=
  ∀ n, P9593541497972177415.a n = A044992 (n + 1)

end A044992

/-! ## A044992.P8936827241344412872

`A032924(eq[15, A038573(n+1)])`
-/

namespace A044992.P8936827241344412872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044992.P8936827241344412872

namespace A044992

/-- `A032924(eq[15, A038573(n+1)])` -/
def P8936827241344412872.Spec : Prop :=
  ∀ n, P8936827241344412872.a n = A044992 (n + 1)

end A044992

/-! ## A044992.P1985247257450434229

`A032924(eq[15, A038573(n)]-1)`
-/

namespace A044992.P1985247257450434229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 1)

end

end A044992.P1985247257450434229

namespace A044992

/-- `A032924(eq[15, A038573(n)]-1)` -/
def P1985247257450434229.Spec : Prop :=
  ∀ n, P1985247257450434229.a n = A044992 (n + 1)

end A044992

/-! ## A044992.P9169373486549283483

`A032924(eq[1, A000120(n)-A085058(n)])`
-/

namespace A044992.P9169373486549283483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - A085058 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044992.P9169373486549283483

namespace A044992

/-- `A032924(eq[1, A000120(n)-A085058(n)])` -/
def P9169373486549283483.Spec : Prop :=
  ∀ n, P9169373486549283483.a n = A044992 (n + 1)

end A044992

/-! ## A044992.P8597909301648193084

`∩[A031459(n+1), A032924(n+1)]`
-/

namespace A044992.P8597909301648193084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031459 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044992.P8597909301648193084

namespace A044992

/-- `∩[A031459(n+1), A032924(n+1)]` -/
def P8597909301648193084.Spec : Prop :=
  ∀ n, (P8597909301648193084.a n : ℤ) = A044992 (n + 1)

end A044992

/-! ## A044992.P8552700036672034285

`∩[A031458(n+1)+1, A032924(n+1)]`
-/

namespace A044992.P8552700036672034285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031458 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044992.P8552700036672034285

namespace A044992

/-- `∩[A031458(n+1)+1, A032924(n+1)]` -/
def P8552700036672034285.Spec : Prop :=
  ∀ n, (P8552700036672034285.a n : ℤ) = A044992 (n + 1)

end A044992

/-! ## A044992.P13341044285764536514

`∩[A023701(n+1), A031459(n+1)]`
-/

namespace A044992.P13341044285764536514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023701 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044992.P13341044285764536514

namespace A044992

/-- `∩[A023701(n+1), A031459(n+1)]` -/
def P13341044285764536514.Spec : Prop :=
  ∀ n, (P13341044285764536514.a n : ℤ) = A044992 (n + 1)

end A044992

/-! ## A044992.P6231252248039607088

`∩[A023701(n+1), A032924(n+1)]`
-/

namespace A044992.P6231252248039607088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023701 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044992.P6231252248039607088

namespace A044992

/-- `∩[A023701(n+1), A032924(n+1)]` -/
def P6231252248039607088.Spec : Prop :=
  ∀ n, (P6231252248039607088.a n : ℤ) = A044992 (n + 1)

end A044992

/-! ## A044992.P10949614054942180560

`eq[8, A309953(n)]`
-/

namespace A044992.P10949614054942180560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044992.P10949614054942180560

namespace A044992

/-- `eq[8, A309953(n)]` -/
def P10949614054942180560.Spec : Prop :=
  ∀ n, (P10949614054942180560.a n : ℤ) = A044992 (n + 1)

end A044992

/-! ## A044992.P10687718011290422424

`A357616(A044968(n+1))`
-/

namespace A044992.P10687718011290422424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357616 (A044968 (n + 1)).toNat

end

end A044992.P10687718011290422424

namespace A044992

/-- `A357616(A044968(n+1))` -/
def P10687718011290422424.Spec : Prop :=
  ∀ n, P10687718011290422424.a n = A044992 (n + 1)

end A044992

/-!
# A044993: Numbers whose base-3 representation contains no 0's and exactly four 2's.

The programs for A044993, the canonical program `A044993.P12653908327930465946` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A044993 has offset 1).

The definition of A044993 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1614 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A044993.P12653908327930465946

`A032924(eq[16, A048896(n)])`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A044993

/-- `A032924(eq[16, A048896(n)])` -/
def P12653908327930465946.Spec : Prop :=
  ∀ n, P12653908327930465946.a n = A044993 (n + 1)

theorem P12653908327930465946.correct : P12653908327930465946.Spec := by
  intro n
  simp only [A044993, Nat.add_sub_cancel]

end A044993

/-! ## A044993.P1146079059470012279

`A032924(eq[30, A071055(n)])`
-/

namespace A044993.P1146079059470012279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071055 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044993.P1146079059470012279

namespace A044993

/-- `A032924(eq[30, A071055(n)])` -/
def P1146079059470012279.Spec : Prop :=
  ∀ n, P1146079059470012279.a n = A044993 (n + 1)

end A044993

/-! ## A044993.P13319317370710700219

`A032924(A014313(1+n)-1)`
-/

namespace A044993.P13319317370710700219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (A014313 (1 + n) - 1).toNat

end

end A044993.P13319317370710700219

namespace A044993

/-- `A032924(A014313(1+n)-1)` -/
def P13319317370710700219.Spec : Prop :=
  ∀ n, P13319317370710700219.a n = A044993 (n + 1)

end A044993

/-! ## A044993.P12629659444385761212

`A032924(eq[5, A000120(n+1)])`
-/

namespace A044993.P12629659444385761212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044993.P12629659444385761212

namespace A044993

/-- `A032924(eq[5, A000120(n+1)])` -/
def P12629659444385761212.Spec : Prop :=
  ∀ n, P12629659444385761212.a n = A044993 (n + 1)

end A044993

/-! ## A044993.P5917992498036532078

`A153775(eq[5, A000120(n)])-1`
-/

namespace A044993.P5917992498036532078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153775 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - 1

end

end A044993.P5917992498036532078

namespace A044993

/-- `A153775(eq[5, A000120(n)])-1` -/
def P5917992498036532078.Spec : Prop :=
  ∀ n, P5917992498036532078.a n = A044993 (n + 1)

end A044993

/-! ## A044993.P12261458196198187535

`A032924(eq[2, A000120(n)-A085058(n)])`
-/

namespace A044993.P12261458196198187535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - A085058 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044993.P12261458196198187535

namespace A044993

/-- `A032924(eq[2, A000120(n)-A085058(n)])` -/
def P12261458196198187535.Spec : Prop :=
  ∀ n, P12261458196198187535.a n = A044993 (n + 1)

end A044993

/-! ## A044993.P7416193623934912971

`∩[A031460(n+1), A032924(n+1)]`
-/

namespace A044993.P7416193623934912971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031460 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044993.P7416193623934912971

namespace A044993

/-- `∩[A031460(n+1), A032924(n+1)]` -/
def P7416193623934912971.Spec : Prop :=
  ∀ n, (P7416193623934912971.a n : ℤ) = A044993 (n + 1)

end A044993

/-! ## A044993.P17046087771895106475

`∩[A031459(n+1)+1, A032924(n+1)]`
-/

namespace A044993.P17046087771895106475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031459 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044993.P17046087771895106475

namespace A044993

/-- `∩[A031459(n+1)+1, A032924(n+1)]` -/
def P17046087771895106475.Spec : Prop :=
  ∀ n, (P17046087771895106475.a n : ℤ) = A044993 (n + 1)

end A044993

/-! ## A044993.P4207359072373652819

`∩[A023702(n+1), A031460(n+1)]`
-/

namespace A044993.P4207359072373652819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023702 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031460 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044993.P4207359072373652819

namespace A044993

/-- `∩[A023702(n+1), A031460(n+1)]` -/
def P4207359072373652819.Spec : Prop :=
  ∀ n, (P4207359072373652819.a n : ℤ) = A044993 (n + 1)

end A044993

/-! ## A044993.P16405606777829302552

`∩[A023702(n+1), A032924(n+1)]`
-/

namespace A044993.P16405606777829302552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023702 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044993.P16405606777829302552

namespace A044993

/-- `∩[A023702(n+1), A032924(n+1)]` -/
def P16405606777829302552.Spec : Prop :=
  ∀ n, (P16405606777829302552.a n : ℤ) = A044993 (n + 1)

end A044993

/-! ## A044993.P11137092454464685556

`eq[16, A309953(n)]`
-/

namespace A044993.P11137092454464685556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044993.P11137092454464685556

namespace A044993

/-- `eq[16, A309953(n)]` -/
def P11137092454464685556.Spec : Prop :=
  ∀ n, (P11137092454464685556.a n : ℤ) = A044993 (n + 1)

end A044993

/-! ## A044993.P7630903034633648326

`A357616(A044969(n+1))`
-/

namespace A044993.P7630903034633648326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357616 (A044969 (n + 1)).toNat

end

end A044993.P7630903034633648326

namespace A044993

/-- `A357616(A044969(n+1))` -/
def P7630903034633648326.Spec : Prop :=
  ∀ n, P7630903034633648326.a n = A044993 (n + 1)

end A044993

/-!
# A044994: Numbers whose base-3 representation contains exactly one 0 and no 2's.

The programs for A044994, there is no canonical definition to state claims against.
-/

/-! ## A044994.P17964708477741057523

`A044970(n+1)/2`
-/

namespace A044994.P17964708477741057523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A044970 (n + 1) : ℚ) / 2

end

end A044994.P17964708477741057523

/-! ## A044994.P16158128051072019456

`floor(A044970(-xor(n, -1))/2)`
-/

namespace A044994.P16158128051072019456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A044970 (-Int.xor (n : ℤ) (-1)).toNat : ℚ) / 2⌋

end

end A044994.P16158128051072019456

/-! ## A044994.P13066033833014037233

`record[A044970(A134478(n))/2]`
-/

namespace A044994.P13066033833014037233
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A044970 (A134478 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044994.P13066033833014037233

/-! ## A044994.P11970880161417688671

`record[A044970(A141256(n))/2]`
-/

namespace A044994.P11970880161417688671
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A044970 (A141256 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044994.P11970880161417688671

/-! ## A044994.P14137023857823094020

`record[A044970(A292266(n))/2]`
-/

namespace A044994.P14137023857823094020
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A044970 (A292266 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044994.P14137023857823094020

/-! ## A044994.P10363231683832322993

`floor(A044970(A008619(2*n))/2)`
-/

namespace A044994.P10363231683832322993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A044970 (A008619 (2 * n)).toNat : ℚ) / 2⌋

end

end A044994.P10363231683832322993

/-! ## A044994.P13366307988771611700

`A005823(A030130(n+1)+1)/2`
-/

namespace A044994.P13366307988771611700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005823 (A030130 (n + 1) + 1).toNat : ℚ) / 2

end

end A044994.P13366307988771611700

/-! ## A044994.P16023951536406506582

`A137951(record[A265716(n)])`
-/

namespace A044994.P16023951536406506582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265716 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137951 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A044994.P16023951536406506582

/-! ## A044994.P2840907953915213954

`A137951(A030130(n+1))`
-/

namespace A044994.P2840907953915213954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137951 (A030130 (n + 1)).toNat

end

end A044994.P2840907953915213954

/-! ## A044994.P2209382225266907820

`A005836(A030130(n+1)+1)`
-/

namespace A044994.P2209382225266907820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (A030130 (n + 1) + 1).toNat

end

end A044994.P2209382225266907820

/-!
# A044995: Numbers whose base-3 representation contains exactly one 0 and one 2.

The programs for A044995, the canonical program `A044995.P10989468949285261213` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A044995 has offset 1).

The definition of A044995 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 359 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A044995.P10989468949285261213

`∩[A023699(n+1), A043321(n+1)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A044995

/-- `∩[A023699(n+1), A043321(n+1)]` -/
def P10989468949285261213.Spec : Prop :=
  ∀ n, (P10989468949285261213.a n : ℤ) = A044995 (n + 1)

theorem P10989468949285261213.correct : P10989468949285261213.Spec := by
  intro n
  simp only [A044995, Nat.add_sub_cancel]

end A044995

/-! ## A044995.P7849769470124566983

`∩[A023699(n+1), A031452(n+1)]`
-/

namespace A044995.P7849769470124566983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023699 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031452 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044995.P7849769470124566983

namespace A044995

/-- `∩[A023699(n+1), A031452(n+1)]` -/
def P7849769470124566983.Spec : Prop :=
  ∀ n, (P7849769470124566983.a n : ℤ) = A044995 (n + 1)

end A044995

/-! ## A044995.P14099572119295426352

`∩[A023699(n+1), A039276(n+1)]`
-/

namespace A044995.P14099572119295426352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023699 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039276 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044995.P14099572119295426352

namespace A044995

/-- `∩[A023699(n+1), A039276(n+1)]` -/
def P14099572119295426352.Spec : Prop :=
  ∀ n, (P14099572119295426352.a n : ℤ) = A044995 (n + 1)

end A044995

/-! ## A044995.P9222447231905617035

`∩[A031452(n+1), A043321(n+1)]`
-/

namespace A044995.P9222447231905617035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044995.P9222447231905617035

namespace A044995

/-- `∩[A031452(n+1), A043321(n+1)]` -/
def P9222447231905617035.Spec : Prop :=
  ∀ n, (P9222447231905617035.a n : ℤ) = A044995 (n + 1)

end A044995

/-! ## A044995.P1382754879002392849

`∩[A039276(n+1), A043321(n+1)]`
-/

namespace A044995.P1382754879002392849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039276 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044995.P1382754879002392849

namespace A044995

/-- `∩[A039276(n+1), A043321(n+1)]` -/
def P1382754879002392849.Spec : Prop :=
  ∀ n, (P1382754879002392849.a n : ℤ) = A044995 (n + 1)

end A044995

/-! ## A044995.P5601101455139092329

`eq[1, A077267(n)*A081603(n)]`
-/

namespace A044995.P5601101455139092329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n * A081603 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044995.P5601101455139092329

namespace A044995

/-- `eq[1, A077267(n)*A081603(n)]` -/
def P5601101455139092329.Spec : Prop :=
  ∀ n, (P5601101455139092329.a n : ℤ) = A044995 (n + 1)

end A044995

/-! ## A044995.P4745922781841310924

`eq[2, A117592(n)^A077267(n)]`
-/

namespace A044995.P4745922781841310924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117592 n : ℚ) ^ (A077267 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A044995.P4745922781841310924

namespace A044995

/-- `eq[2, A117592(n)^A077267(n)]` -/
def P4745922781841310924.Spec : Prop :=
  ∀ n, (P4745922781841310924.a n : ℤ) = A044995 (n + 1)

end A044995

/-! ## A044995.P8312979297311145037

`eq[A077267(n), A140167(A117592(n))]`
-/

namespace A044995.P8312979297311145037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140167 (A117592 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044995.P8312979297311145037

namespace A044995

/-- `eq[A077267(n), A140167(A117592(n))]` -/
def P8312979297311145037.Spec : Prop :=
  ∀ n, (P8312979297311145037.a n : ℤ) = A044995 (n + 1)

end A044995

/-! ## A044995.P15369858219970474955

`eq[A077267(n)*A081604(n), A053735(n)]`
-/

namespace A044995.P15369858219970474955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n * A081604 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044995.P15369858219970474955

namespace A044995

/-- `eq[A077267(n)*A081604(n), A053735(n)]` -/
def P15369858219970474955.Spec : Prop :=
  ∀ n, (P15369858219970474955.a n : ℤ) = A044995 (n + 1)

end A044995

/-! ## A044995.P13460232281126986582

`eq[2, A077267(n)*A120879(A120879(n))]`
-/

namespace A044995.P13460232281126986582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n * A120879 (A120879 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044995.P13460232281126986582

namespace A044995

/-- `eq[2, A077267(n)*A120879(A120879(n))]` -/
def P13460232281126986582.Spec : Prop :=
  ∀ n, (P13460232281126986582.a n : ℤ) = A044995 (n + 1)

end A044995

/-! ## A044995.P493034959064096586

`eq[1, A081603(A274601(n+1))*A081603(n)]`
-/

namespace A044995.P493034959064096586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (A274601 (n + 1)).toNat * A081603 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044995.P493034959064096586

namespace A044995

/-- `eq[1, A081603(A274601(n+1))*A081603(n)]` -/
def P493034959064096586.Spec : Prop :=
  ∀ n, (P493034959064096586.a n : ℤ) = A044995 (n + 1)

end A044995

/-! ## A044995.P12894378591653758803

`eq[7, dr(A164993(3*n+1))]`
-/

namespace A044995.P12894378591653758803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A164993 (3 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044995.P12894378591653758803

namespace A044995

/-- `eq[7, dr(A164993(3*n+1))]` -/
def P12894378591653758803.Spec : Prop :=
  ∀ n, (P12894378591653758803.a n : ℤ) = A044995 (n + 1)

end A044995

/-! ## A044995.P8178886854677816687

`A357616(A044971(n+1))`
-/

namespace A044995.P8178886854677816687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357616 (A044971 (n + 1)).toNat

end

end A044995.P8178886854677816687

namespace A044995

/-- `A357616(A044971(n+1))` -/
def P8178886854677816687.Spec : Prop :=
  ∀ n, P8178886854677816687.a n = A044995 (n + 1)

end A044995

/-! ## A044995.P14696971432806868459

`A357616(eq[1, A062756(n)*A077267(n)])`
-/

namespace A044995.P14696971432806868459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 n * A077267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357616 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044995.P14696971432806868459

namespace A044995

/-- `A357616(eq[1, A062756(n)*A077267(n)])` -/
def P14696971432806868459.Spec : Prop :=
  ∀ n, P14696971432806868459.a n = A044995 (n + 1)

end A044995

/-!
# A044996: Numbers whose base-3 representation contains exactly one 0 and two 2's.

The programs for A044996, the canonical program `A044996.P6775798620776590104` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A044996 has offset 1).

The definition of A044996 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A044996.P6775798620776590104

`∩[A031457(n+1), A043321(n+1)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A044996

/-- `∩[A031457(n+1), A043321(n+1)]` -/
def P6775798620776590104.Spec : Prop :=
  ∀ n, (P6775798620776590104.a n : ℤ) = A044996 (n + 1)

theorem P6775798620776590104.correct : P6775798620776590104.Spec := by
  intro n
  simp only [A044996, Nat.add_sub_cancel]

end A044996

/-! ## A044996.P13932354796176874571

`∩[A023700(n+1), A031457(n+1)]`
-/

namespace A044996.P13932354796176874571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044996.P13932354796176874571

namespace A044996

/-- `∩[A023700(n+1), A031457(n+1)]` -/
def P13932354796176874571.Spec : Prop :=
  ∀ n, (P13932354796176874571.a n : ℤ) = A044996 (n + 1)

end A044996

/-! ## A044996.P9024871175357053666

`∩[A023700(n+1), A043321(n+1)]`
-/

namespace A044996.P9024871175357053666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044996.P9024871175357053666

namespace A044996

/-- `∩[A023700(n+1), A043321(n+1)]` -/
def P9024871175357053666.Spec : Prop :=
  ∀ n, (P9024871175357053666.a n : ℤ) = A044996 (n + 1)

end A044996

/-! ## A044996.P10621816764586593903

`eq[2, A081603(n)^A077267(n)]`
-/

namespace A044996.P10621816764586593903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081603 n : ℚ) ^ (A077267 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A044996.P10621816764586593903

namespace A044996

/-- `eq[2, A081603(n)^A077267(n)]` -/
def P10621816764586593903.Spec : Prop :=
  ∀ n, (P10621816764586593903.a n : ℤ) = A044996 (n + 1)

end A044996

/-! ## A044996.P9873222027177561744

`eq[2, (A077267(n)+7)/A117592(n)]`
-/

namespace A044996.P9873222027177561744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077267 n + 7 : ℚ) / (A117592 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A044996.P9873222027177561744

namespace A044996

/-- `eq[2, (A077267(n)+7)/A117592(n)]` -/
def P9873222027177561744.Spec : Prop :=
  ∀ n, (P9873222027177561744.a n : ℤ) = A044996 (n + 1)

end A044996

/-! ## A044996.P3123067131819052959

`eq[A077267(A028310(n))+3, A081603(n)²]`
-/

namespace A044996.P3123067131819052959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 (A028310 n).toNat + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044996.P3123067131819052959

namespace A044996

/-- `eq[A077267(A028310(n))+3, A081603(n)²]` -/
def P3123067131819052959.Spec : Prop :=
  ∀ n, (P3123067131819052959.a n : ℤ) = A044996 (n + 1)

end A044996

/-! ## A044996.P16933561848720855364

`eq[A077267(n)+6, A269379(A117592(n)+1)]`
-/

namespace A044996.P16933561848720855364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n + 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269379 (A117592 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044996.P16933561848720855364

namespace A044996

/-- `eq[A077267(n)+6, A269379(A117592(n)+1)]` -/
def P16933561848720855364.Spec : Prop :=
  ∀ n, (P16933561848720855364.a n : ℤ) = A044996 (n + 1)

end A044996

/-! ## A044996.P4074412053510901509

`A357616(A044972(n+1))`
-/

namespace A044996.P4074412053510901509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357616 (A044972 (n + 1)).toNat

end

end A044996.P4074412053510901509

namespace A044996

/-- `A357616(A044972(n+1))` -/
def P4074412053510901509.Spec : Prop :=
  ∀ n, P4074412053510901509.a n = A044996 (n + 1)

end A044996

/-! ## A044996.P6457016998154095362

`eq[A117592(A171960(n))+2, A117592(n)]`
-/

namespace A044996.P6457016998154095362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117592 (A171960 n).toNat + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117592 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044996.P6457016998154095362

namespace A044996

/-- `eq[A117592(A171960(n))+2, A117592(n)]` -/
def P6457016998154095362.Spec : Prop :=
  ∀ n, (P6457016998154095362.a n : ℤ) = A044996 (n + 1)

end A044996

/-!
# A044997: Numbers whose base-3 representation contains exactly one 0 and three 2's.

The programs for A044997, the canonical program `A044997.P14877715571537468302` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A044997 has offset 1).

The definition of A044997 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1778 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A044997.P14877715571537468302

`∩[A031458(n+1), A043321(n+1)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A044997

/-- `∩[A031458(n+1), A043321(n+1)]` -/
def P14877715571537468302.Spec : Prop :=
  ∀ n, (P14877715571537468302.a n : ℤ) = A044997 (n + 1)

theorem P14877715571537468302.correct : P14877715571537468302.Spec := by
  intro n
  simp only [A044997, Nat.add_sub_cancel]

end A044997

/-! ## A044997.P2999067892985424730

`∩[A023701(n+1), A031458(n+1)]`
-/

namespace A044997.P2999067892985424730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023701 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044997.P2999067892985424730

namespace A044997

/-- `∩[A023701(n+1), A031458(n+1)]` -/
def P2999067892985424730.Spec : Prop :=
  ∀ n, (P2999067892985424730.a n : ℤ) = A044997 (n + 1)

end A044997

/-! ## A044997.P13733125139698821620

`∩[A023701(n+1), A043321(n+1)]`
-/

namespace A044997.P13733125139698821620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023701 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044997.P13733125139698821620

namespace A044997

/-- `∩[A023701(n+1), A043321(n+1)]` -/
def P13733125139698821620.Spec : Prop :=
  ∀ n, (P13733125139698821620.a n : ℤ) = A044997 (n + 1)

end A044997

/-! ## A044997.P7757332571547003958

`eq[A077267(n)+7, A117592(n)]`
-/

namespace A044997.P7757332571547003958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n + 7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117592 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044997.P7757332571547003958

namespace A044997

/-- `eq[A077267(n)+7, A117592(n)]` -/
def P7757332571547003958.Spec : Prop :=
  ∀ n, (P7757332571547003958.a n : ℤ) = A044997 (n + 1)

end A044997

/-! ## A044997.P1152040642275535940

`eq[3, A081603(n)^A077267(n)]`
-/

namespace A044997.P1152040642275535940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081603 n : ℚ) ^ (A077267 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A044997.P1152040642275535940

namespace A044997

/-- `eq[3, A081603(n)^A077267(n)]` -/
def P1152040642275535940.Spec : Prop :=
  ∀ n, (P1152040642275535940.a n : ℤ) = A044997 (n + 1)

end A044997

/-! ## A044997.P1840374454252017471

`A357616(A044973(n+1))`
-/

namespace A044997.P1840374454252017471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357616 (A044973 (n + 1)).toNat

end

end A044997.P1840374454252017471

namespace A044997

/-- `A357616(A044973(n+1))` -/
def P1840374454252017471.Spec : Prop :=
  ∀ n, P1840374454252017471.a n = A044997 (n + 1)

end A044997

/-! ## A044997.P6156065067600654402

`eq[A006287(n)%A117592(n), A081604(n)]`
-/

namespace A044997.P6156065067600654402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006287 n) (A117592 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044997.P6156065067600654402

namespace A044997

/-- `eq[A006287(n)%A117592(n), A081604(n)]` -/
def P6156065067600654402.Spec : Prop :=
  ∀ n, (P6156065067600654402.a n : ℤ) = A044997 (n + 1)

end A044997

/-!
# A044998: Numbers whose base-3 representation contains exactly one 0 and four 2's.

The programs for A044998, the canonical program `A044998.P17317914427546594640` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A044998 has offset 1).

The definition of A044998 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2537 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A044998.P17317914427546594640

`∩[A031459(n+1), A043321(n+1)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A044998

/-- `∩[A031459(n+1), A043321(n+1)]` -/
def P17317914427546594640.Spec : Prop :=
  ∀ n, (P17317914427546594640.a n : ℤ) = A044998 (n + 1)

theorem P17317914427546594640.correct : P17317914427546594640.Spec := by
  intro n
  simp only [A044998, Nat.add_sub_cancel]

end A044998

/-! ## A044998.P11239585338868151765

`∩[A023702(n+1), A031459(n+1)]`
-/

namespace A044998.P11239585338868151765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023702 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044998.P11239585338868151765

namespace A044998

/-- `∩[A023702(n+1), A031459(n+1)]` -/
def P11239585338868151765.Spec : Prop :=
  ∀ n, (P11239585338868151765.a n : ℤ) = A044998 (n + 1)

end A044998

/-! ## A044998.P13950985120966626694

`∩[A023702(n+1), A043321(n+1)]`
-/

namespace A044998.P13950985120966626694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023702 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044998.P13950985120966626694

namespace A044998

/-- `∩[A023702(n+1), A043321(n+1)]` -/
def P13950985120966626694.Spec : Prop :=
  ∀ n, (P13950985120966626694.a n : ℤ) = A044998 (n + 1)

end A044998

/-! ## A044998.P3798941079420861091

`A357616(A044974(n+1))`
-/

namespace A044998.P3798941079420861091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357616 (A044974 (n + 1)).toNat

end

end A044998.P3798941079420861091

namespace A044998

/-- `A357616(A044974(n+1))` -/
def P3798941079420861091.Spec : Prop :=
  ∀ n, P3798941079420861091.a n = A044998 (n + 1)

end A044998

/-! ## A044998.P8783135502058388490

`A357616(∩[A023695(n+1), A043321(n+1)])`
-/

namespace A044998.P8783135502058388490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043321 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357616 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A044998.P8783135502058388490

namespace A044998

/-- `A357616(∩[A023695(n+1), A043321(n+1)])` -/
def P8783135502058388490.Spec : Prop :=
  ∀ n, P8783135502058388490.a n = A044998 (n + 1)

end A044998

/-!
# A044999: Numbers whose base-3 representation contains exactly two 0's and no 2's.

The programs for A044999, the canonical program `A044999.P16986693355859831075` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A044999 has offset 1).

The definition of A044999 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 365 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A044999.P16986693355859831075

`A044975(n+1)/2`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A044999

/-- `A044975(n+1)/2` -/
def P16986693355859831075.Spec : Prop :=
  ∀ n, P16986693355859831075.a n = (A044999 (n + 1) : ℚ)

end A044999

/-! ## A044999.P10639845035992708863

`record[A044975(A133310(n))/2]`
-/

namespace A044999.P10639845035992708863
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A044975 (A133310 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044999.P10639845035992708863

namespace A044999

/-- `record[A044975(A133310(n))/2]` -/
def P10639845035992708863.Spec : Prop :=
  ∀ n, P10639845035992708863.a n = (A044999 (n + 1) : ℚ)

end A044999

/-! ## A044999.P14737244008887020103

`record[A044975(A141256(n))/2]`
-/

namespace A044999.P14737244008887020103
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A044975 (A141256 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044999.P14737244008887020103

namespace A044999

/-- `record[A044975(A141256(n))/2]` -/
def P14737244008887020103.Spec : Prop :=
  ∀ n, P14737244008887020103.a n = (A044999 (n + 1) : ℚ)

end A044999

/-! ## A044999.P14050000427501340522

`A005836(eq[3, A008687(n)])`
-/

namespace A044999.P14050000427501340522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044999.P14050000427501340522

namespace A044999

/-- `A005836(eq[3, A008687(n)])` -/
def P14050000427501340522.Spec : Prop :=
  ∀ n, P14050000427501340522.a n = A044999 (n + 1)

end A044999

/-! ## A044999.P14892491451560580200

`A005836(eq[2, A023416(n)]+1)`
-/

namespace A044999.P14892491451560580200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A044999.P14892491451560580200

namespace A044999

/-- `A005836(eq[2, A023416(n)]+1)` -/
def P14892491451560580200.Spec : Prop :=
  ∀ n, P14892491451560580200.a n = A044999 (n + 1)

end A044999

/-! ## A044999.P9764574144447970418

`A005836(eq[2, A080791(n)]+1)`
-/

namespace A044999.P9764574144447970418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A044999.P9764574144447970418

namespace A044999

/-- `A005836(eq[2, A080791(n)]+1)` -/
def P9764574144447970418.Spec : Prop :=
  ∀ n, P9764574144447970418.a n = A044999 (n + 1)

end A044999

/-! ## A044999.P3092032068160139390

`A005836(eq[4, A080100(A004273(n))])`
-/

namespace A044999.P3092032068160139390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080100 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044999.P3092032068160139390

namespace A044999

/-- `A005836(eq[4, A080100(A004273(n))])` -/
def P3092032068160139390.Spec : Prop :=
  ∀ n, P3092032068160139390.a n = A044999 (n + 1)

end A044999

/-! ## A044999.P8495460605218214725

`∩[A005836(n+1), A031454(n+1)]`
-/

namespace A044999.P8495460605218214725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044999.P8495460605218214725

namespace A044999

/-- `∩[A005836(n+1), A031454(n+1)]` -/
def P8495460605218214725.Spec : Prop :=
  ∀ n, (P8495460605218214725.a n : ℤ) = A044999 (n + 1)

end A044999

/-! ## A044999.P13825136613329439386

`∩[A031454(n+1), A037408(n+1)]`
-/

namespace A044999.P13825136613329439386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031454 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044999.P13825136613329439386

namespace A044999

/-- `∩[A031454(n+1), A037408(n+1)]` -/
def P13825136613329439386.Spec : Prop :=
  ∀ n, (P13825136613329439386.a n : ℤ) = A044999 (n + 1)

end A044999

/-! ## A044999.P163218507926482057

`A004488(A044975(n+1))`
-/

namespace A044999.P163218507926482057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (A044975 (n + 1)).toNat

end

end A044999.P163218507926482057

namespace A044999

/-- `A004488(A044975(n+1))` -/
def P163218507926482057.Spec : Prop :=
  ∀ n, P163218507926482057.a n = A044999 (n + 1)

end A044999

/-! ## A044999.P4069560789018026480

`∩[A005836(n+1), A043322(n+1)]`
-/

namespace A044999.P4069560789018026480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044999.P4069560789018026480

namespace A044999

/-- `∩[A005836(n+1), A043322(n+1)]` -/
def P4069560789018026480.Spec : Prop :=
  ∀ n, (P4069560789018026480.a n : ℤ) = A044999 (n + 1)

end A044999

/-! ## A044999.P4696868023737886582

`∩[A031454(n+1), A043322(n+1)]`
-/

namespace A044999.P4696868023737886582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031454 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044999.P4696868023737886582

namespace A044999

/-- `∩[A031454(n+1), A043322(n+1)]` -/
def P4696868023737886582.Spec : Prop :=
  ∀ n, (P4696868023737886582.a n : ℤ) = A044999 (n + 1)

end A044999

/-! ## A044999.P554033712329899956

`∩[A037408(n+1), A043322(n+1)]`
-/

namespace A044999.P554033712329899956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037408 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044999.P554033712329899956

namespace A044999

/-- `∩[A037408(n+1), A043322(n+1)]` -/
def P554033712329899956.Spec : Prop :=
  ∀ n, (P554033712329899956.a n : ℤ) = A044999 (n + 1)

end A044999

/-! ## A044999.P3087914585670283609

`∩[A043322(2*n+1), A031453(n+2)-1]`
-/

namespace A044999.P3087914585670283609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043322 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031453 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044999.P3087914585670283609

namespace A044999

/-- `∩[A043322(2*n+1), A031453(n+2)-1]` -/
def P3087914585670283609.Spec : Prop :=
  ∀ n, (P3087914585670283609.a n : ℤ) = A044999 (n + 1)

end A044999

