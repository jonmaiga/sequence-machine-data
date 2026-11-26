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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
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
import Seq.B000.C044
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
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
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
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

/-! ## A044902.P8936149754908158049

`A044857(A046100(n+1))`
-/

namespace A044902.P8936149754908158049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044857 (A046100 (n + 1)).toNat

end

end A044902.P8936149754908158049

/-! ## A044902.P3287454178318891026

`∑[(4%A384070(comp[∑[n]]+2))²+1]`
-/

namespace A044902.P3287454178318891026
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 4 (A384070 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 2)) ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044902.P3287454178318891026

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

/-! ## A044905.P1769417376367744287

`A292371(∩[A000695(n), A044917(n+1)])`
-/

namespace A044905.P1769417376367744287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044917 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292371 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A044905.P1769417376367744287

/-! ## A044905.P14407610141574651624

`A059905(∩[A000695(n), A044917(n+1)])`
-/

namespace A044905.P14407610141574651624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044917 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A044905.P14407610141574651624

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

/-! ## A044906.P5958778690980661611

`∏{p}[12*a(n-1), #]*n+1` with `a(0)=0, a(1)=0, a(2)=0, a(3)=-1`
-/

namespace A044906.P5958778690980661611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, -1] fun n f1 =>
  12 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p) * n + 1

end

end A044906.P5958778690980661611

/-! ## A044906.P3084296047414840178

`A097454(floor(sqrt(n))²!)*n+1`
-/

namespace A044906.P3084296047414840178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097454 (Nat.factorial (Nat.sqrt n ^ 2)) * (n : ℤ) + 1

end

end A044906.P3084296047414840178

/-! ## A044906.P13571409106545334191

`n*A126459(A343319(n))+1`
-/

namespace A044906.P13571409106545334191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A126459 (A343319 n).toNat + 1

end

end A044906.P13571409106545334191

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

/-! ## A044907.P11726077454072434136

`∑[A192323(A259375(n+1))]*n+1`
-/

namespace A044907.P11726077454072434136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192323 (A259375 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (n : ℤ) + 1

end

end A044907.P11726077454072434136

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

/-! ## A044909.P16088289805918702439

`A321097(A290684(n+1))*n+1`
-/

namespace A044909.P16088289805918702439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321097 (A290684 (n + 1)).toNat * (n : ℤ) + 1

end

end A044909.P16088289805918702439

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

/-! ## A044910.P10675438207649337130

`n*A251715(A290544(n))+1`
-/

namespace A044910.P10675438207649337130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A251715 (A290544 n).toNat + 1

end

end A044910.P10675438207649337130

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

/-! ## A044911.P10735763758355973581

`A217657(A044836(n+1))`
-/

namespace A044911.P10735763758355973581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217657 (A044836 (n + 1)).toNat

end

end A044911.P10735763758355973581

/-! ## A044911.P10375177960564742167

`A053392(10*A051022(n+1))`
-/

namespace A044911.P10375177960564742167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053392 (10 * A051022 (n + 1)).toNat

end

end A044911.P10375177960564742167

/-! ## A044911.P17134920397975686995

`A056965(A056143(n+1))+A056143(A004086(n+1))`
-/

namespace A044911.P17134920397975686995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 (A056143 (n + 1)).toNat + A056143 (A004086 (n + 1)).toNat

end

end A044911.P17134920397975686995

/-! ## A044911.P10161869341148217312

`A395615(A187829(n+1))`
-/

namespace A044911.P10161869341148217312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395615 (A187829 (n + 1)).toNat

end

end A044911.P10161869341148217312

/-!
# A044912: Numbers whose base-11 run lengths alternate: odd, even, odd, ...

The programs for A044912, there is no canonical definition to state claims against.
-/

/-! ## A044912.P11703196027778476481

`A008414(floor(n/10)^n)*n+1`
-/

namespace A044912.P11703196027778476481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008414 (⌊(n : ℚ) / 10⌋ ^ n).toNat * (n : ℤ) + 1

end

end A044912.P11703196027778476481

/-! ## A044912.P11719383395727037726

`A356235(A038533(floor(n/10)))*n+1`
-/

namespace A044912.P11719383395727037726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356235 (A038533 ⌊(n : ℚ) / 10⌋.toNat).toNat * (n : ℤ) + 1

end

end A044912.P11719383395727037726

/-! ## A044912.P6250187402134600957

`A118457(A055817(3*floor(n/10)))*n+1`
-/

namespace A044912.P6250187402134600957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118457 (A055817 (3 * ⌊(n : ℚ) / 10⌋).toNat).toNat * (n : ℤ) + 1

end

end A044912.P6250187402134600957

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

/-! ## A044913.P108127923341885596

`record[A106614(A048309(n+1))]`
-/

namespace A044913.P108127923341885596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106614 (A048309 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044913.P108127923341885596

/-! ## A044913.P7679742393347324697

`n*A320356(A002137(round(n/3)))+1`
-/

namespace A044913.P7679742393347324697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A320356 (A002137 (SequenceMachineLib.roundAway ((n : ℚ) / 3)).toNat).toNat + 1

end

end A044913.P7679742393347324697

/-!
# A044914: Numbers whose base-13 run lengths alternate: odd, even, odd, ...

The programs for A044914, there is no canonical definition to state claims against.
-/

/-! ## A044914.P7190113284986915689

`A002966(A393352(floor((n+3)/5)))*n+1`
-/

namespace A044914.P7190113284986915689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002966 (A393352 ⌊(n + 3 : ℚ) / 5⌋.toNat).toNat * (n : ℤ) + 1

end

end A044914.P7190113284986915689

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

/-! ## A044914.P2866898575087579070

`A003557(A097145(floor(n/2))+1)*n+1`
-/

namespace A044914.P2866898575087579070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A097145 ⌊(n : ℚ) / 2⌋.toNat + 1).toNat * (n : ℤ) + 1

end

end A044914.P2866898575087579070

/-! ## A044914.P13068488035667303530

`xor(A011856(A185213(n)), A043317(n+1))`
-/

namespace A044914.P13068488035667303530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A011856 (A185213 n).toNat) (A043317 (n + 1))

end

end A044914.P13068488035667303530

/-!
# A044915: Numbers whose base-14 run lengths alternate: odd, even, odd, ...

The programs for A044915, there is no canonical definition to state claims against.
-/

/-! ## A044915.P10362763473460688110

`∑[A054576(Δ[(n-1)*A130086(n+1)])]`
-/

namespace A044915.P10362763473460688110
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A130086 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044915.P10362763473460688110

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

/-! ## A044919.P16712797810448778472

`eq[1+n, A285916(n+1)]+1`
-/

namespace A044919.P16712797810448778472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285916 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A044919.P16712797810448778472

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

/-! ## A044919.P17705463366258437729

`record[gcd(A008486(n), A285916(n))]`
-/

namespace A044919.P17705463366258437729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008486 n) (A285916 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044919.P17705463366258437729

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

/-! ## A044921.P13050907540727094798

`comp[eq[-1, A044927(n+1)]]+1`
-/

namespace A044921.P13050907540727094798
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044927 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A044921.P13050907540727094798

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

/-! ## A044924.P10066310765536248899

`A044925(A005836(2+n))`
-/

namespace A044924.P10066310765536248899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044925 (A005836 (2 + n)).toNat

end

end A044924.P10066310765536248899

/-! ## A044924.P13298701262841712180

`A044925(A055661(1+n))`
-/

namespace A044924.P13298701262841712180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044925 (A055661 (1 + n)).toNat

end

end A044924.P13298701262841712180

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

/-! ## A044924.P8721372852274123312

`A044927(A033042(n+1))`
-/

namespace A044924.P8721372852274123312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044927 (A033042 (n + 1)).toNat

end

end A044924.P8721372852274123312

/-! ## A044924.P8553313522678949807

`A044928(A033043(n+1))`
-/

namespace A044924.P8553313522678949807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044928 (A033043 (n + 1)).toNat

end

end A044924.P8553313522678949807

/-! ## A044924.P12669548044430419485

`A044931(A033046(n+1))`
-/

namespace A044924.P12669548044430419485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044931 (A033046 (n + 1)).toNat

end

end A044924.P12669548044430419485

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

/-! ## A044925.P1302654033131988027

`A044926(A006288(n+1))`
-/

namespace A044925.P1302654033131988027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044926 (A006288 (n + 1)).toNat

end

end A044925.P1302654033131988027

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

/-! ## A044925.P7567635878346953353

`A044932(A007089(n+1))`
-/

namespace A044925.P7567635878346953353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044932 (A007089 (n + 1)).toNat

end

end A044925.P7567635878346953353

/-!
# A044926: a(n)=so-se, where so(se)=sum of odd(even) base 4 run lengths of n.

The programs for A044926, there is no canonical definition to state claims against.
-/

/-! ## A044926.P3276102645482927630

`A044927(A037459(1+n))`
-/

namespace A044926.P3276102645482927630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044927 (A037459 (1 + n)).toNat

end

end A044926.P3276102645482927630

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

/-! ## A044926.P5609426783015548195

`A044929(A037461(n+1))`
-/

namespace A044926.P5609426783015548195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044929 (A037461 (n + 1)).toNat

end

end A044926.P5609426783015548195

/-! ## A044926.P5037029370126485219

`A044930(A037462(n+1))`
-/

namespace A044926.P5037029370126485219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044930 (A037462 (n + 1)).toNat

end

end A044926.P5037029370126485219

/-! ## A044926.P9922711798738315883

`A044932(A007090(n+1))`
-/

namespace A044926.P9922711798738315883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044932 (A007090 (n + 1)).toNat

end

end A044926.P9922711798738315883

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

/-! ## A044927.P5220375548288349403

`A044932(A007091(n+1))`
-/

namespace A044927.P5220375548288349403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044932 (A007091 (n + 1)).toNat

end

end A044927.P5220375548288349403

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

/-! ## A044928.P14037100691181951745

`A044929(A020657(2+n))`
-/

namespace A044928.P14037100691181951745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044929 (A020657 (2 + n)).toNat

end

end A044928.P14037100691181951745

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

/-! ## A044929.P17622086838857134326

`A044932(A007093(1+n))`
-/

namespace A044929.P17622086838857134326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044932 (A007093 (1 + n)).toNat

end

end A044929.P17622086838857134326

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

/-! ## A044930.P5444987534354345329

`A044932(A007094(1+n))`
-/

namespace A044930.P5444987534354345329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044932 (A007094 (1 + n)).toNat

end

end A044930.P5444987534354345329

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

/-! ## A044934.P2321854190996922201

`A044935(A023717(1+n))`
-/

namespace A044934.P2321854190996922201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044935 (A023717 (1 + n)).toNat

end

end A044934.P2321854190996922201

namespace A044934

/-- `A044935(A023717(1+n))` -/
def P2321854190996922201.Spec : Prop :=
  ∀ n, P2321854190996922201.a n = A044934 (n + 1)

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

/-! ## A044935.P16112009440444659286

`A044936(A037459(1+n))`
-/

namespace A044935.P16112009440444659286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044936 (A037459 (1 + n)).toNat

end

end A044935.P16112009440444659286

/-! ## A044935.P15611216135560763291

`A044940(A037463(n+1))`
-/

namespace A044935.P15611216135560763291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044940 (A037463 (n + 1)).toNat

end

end A044935.P15611216135560763291

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

/-! ## A044935.P11063621858941148151

`A044939(A037462(n+1))`
-/

namespace A044935.P11063621858941148151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044939 (A037462 (n + 1)).toNat

end

end A044935.P11063621858941148151

/-! ## A044935.P13720658336549255209

`A236490(n+1)%A043278(n+1)`
-/

namespace A044935.P13720658336549255209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236490 (n + 1)) (A043278 (n + 1))

end

end A044935.P13720658336549255209

/-! ## A044935.P16960030244165655296

`A140864(n+1)%A043278(n+1)`
-/

namespace A044935.P16960030244165655296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140864 (n + 1)) (A043278 (n + 1))

end

end A044935.P16960030244165655296

/-! ## A044935.P13983204556008332907

`A188597(n+1)%A043278(n+1)`
-/

namespace A044935.P13983204556008332907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188597 (n + 1)) (A043278 (n + 1))

end

end A044935.P13983204556008332907

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

/-! ## A044936.P6077818922027304380

`A044938(A037466(n+1))`
-/

namespace A044936.P6077818922027304380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044938 (A037466 (n + 1)).toNat

end

end A044936.P6077818922027304380

/-! ## A044936.P12743007473433016224

`A044939(A037467(n+1))`
-/

namespace A044936.P12743007473433016224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044939 (A037467 (n + 1)).toNat

end

end A044936.P12743007473433016224

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

/-! ## A044936.P4302503855084483988

`A200977(n)%A043279(n+1)`
-/

namespace A044936.P4302503855084483988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200977 n) (A043279 (n + 1))

end

end A044936.P4302503855084483988

/-! ## A044936.P9835764723686035324

`A374285(n)%A043279(n+1)`
-/

namespace A044936.P9835764723686035324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A374285 n) (A043279 (n + 1))

end

end A044936.P9835764723686035324

/-! ## A044936.P2925878665824121774

`A399213(n)%A043279(n+1)`
-/

namespace A044936.P2925878665824121774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A399213 n) (A043279 (n + 1))

end

end A044936.P2925878665824121774

/-! ## A044936.P17529494292570825886

`A148532(n)%A043279(n+1)`
-/

namespace A044936.P17529494292570825886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A148532 n) (A043279 (n + 1))

end

end A044936.P17529494292570825886

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

/-! ## A044937.P15848292294115718006

`A044941(A007092(1+n))`
-/

namespace A044937.P15848292294115718006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044941 (A007092 (1 + n)).toNat

end

end A044937.P15848292294115718006

/-! ## A044937.P1316000179827968708

`A044938(A020657(n+2))`
-/

namespace A044937.P1316000179827968708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044938 (A020657 (n + 2)).toNat

end

end A044937.P1316000179827968708

/-! ## A044937.P4196019374902738106

`A044939(A037471(n+1))`
-/

namespace A044937.P4196019374902738106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044939 (A037471 (n + 1)).toNat

end

end A044937.P4196019374902738106

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

/-! ## A044938.P15771821394526662191

`A044941(A007093(1+n))`
-/

namespace A044938.P15771821394526662191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044941 (A007093 (1 + n)).toNat

end

end A044938.P15771821394526662191

/-! ## A044938.P3486577400950215415

`A044940(A037475(1+n))`
-/

namespace A044938.P3486577400950215415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044940 (A037475 (1 + n)).toNat

end

end A044938.P3486577400950215415

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

/-! ## A044938.P17960350691968202456

`A048481(n)%A043281(n+1)`
-/

namespace A044938.P17960350691968202456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048481 n) (A043281 (n + 1))

end

end A044938.P17960350691968202456

/-! ## A044938.P886545513722101124

`A048509(n)%A043281(n+1)`
-/

namespace A044938.P886545513722101124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048509 n) (A043281 (n + 1))

end

end A044938.P886545513722101124

/-! ## A044938.P1575320113034116996

`A036826(n)%A043281(n+1)`
-/

namespace A044938.P1575320113034116996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036826 n) (A043281 (n + 1))

end

end A044938.P1575320113034116996

/-! ## A044938.P10145460137990405932

`A052101(n)%A043281(n+1)`
-/

namespace A044938.P10145460137990405932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052101 n) (A043281 (n + 1))

end

end A044938.P10145460137990405932

/-! ## A044938.P7407174897688853029

`A026551(n)%A043281(n+1)`
-/

namespace A044938.P7407174897688853029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026551 n) (A043281 (n + 1))

end

end A044938.P7407174897688853029

/-! ## A044938.P13844001580275353256

`A026569(n)%A043281(n+1)`
-/

namespace A044938.P13844001580275353256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026569 n) (A043281 (n + 1))

end

end A044938.P13844001580275353256

/-! ## A044938.P1164148278300470017

`A002426(n)%A043281(n+1)`
-/

namespace A044938.P1164148278300470017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002426 n) (A043281 (n + 1))

end

end A044938.P1164148278300470017

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

/-! ## A044939.P16698686247011911546

`A044941(A007094(1+n))`
-/

namespace A044939.P16698686247011911546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044941 (A007094 (1 + n)).toNat

end

end A044939.P16698686247011911546

/-! ## A044939.P6254069624579987304

`A044940(A037477(1+n))`
-/

namespace A044939.P6254069624579987304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044940 (A037477 (1 + n)).toNat

end

end A044939.P6254069624579987304

/-! ## A044939.P16159965818050577356

`A026551(n)%A043282(n+1)`
-/

namespace A044939.P16159965818050577356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026551 n) (A043282 (n + 1))

end

end A044939.P16159965818050577356

/-! ## A044939.P8980351547278899128

`A027151(n)%A043282(n+1)`
-/

namespace A044939.P8980351547278899128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027151 n) (A043282 (n + 1))

end

end A044939.P8980351547278899128

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

/-! ## A044940.P10094819442507993123

`A324647(n+1)%A043283(n+1)`
-/

namespace A044940.P10094819442507993123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324647 (n + 1)) (A043283 (n + 1))

end

end A044940.P10094819442507993123

/-! ## A044940.P3954640665739520130

`A026003(n)%A043283(n+1)`
-/

namespace A044940.P3954640665739520130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026003 n) (A043283 (n + 1))

end

end A044940.P3954640665739520130

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

/-! ## A044941.P2931687273492682583

`A027180(n)%A043284(n+1)`
-/

namespace A044941.P2931687273492682583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027180 n) (A043284 (n + 1))

end

end A044941.P2931687273492682583

/-! ## A044941.P11353397992991995289

`A045883(n)%A043284(n+1)`
-/

namespace A044941.P11353397992991995289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045883 n) (A043284 (n + 1))

end

end A044941.P11353397992991995289

/-! ## A044941.P9315999306586309765

`A083413(n)%A043284(n+1)`
-/

namespace A044941.P9315999306586309765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083413 n) (A043284 (n + 1))

end

end A044941.P9315999306586309765

/-! ## A044941.P14936578213972658333

`A130586(n)%A043284(n+1)`
-/

namespace A044941.P14936578213972658333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130586 n) (A043284 (n + 1))

end

end A044941.P14936578213972658333

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

/-!
# A044942: Number of runs of odd length in the base-2 representation of n.

The programs for A044942, the canonical program `A044942.P10877582406640185609` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A044942 has offset 1).

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

The canonical program, it is in `Seq.B010.C000`.
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

/-! ## A044942.P6097476384596473099

`A044945(A033042(n+1))`
-/

namespace A044942.P6097476384596473099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044945 (A033042 (n + 1)).toNat

end

end A044942.P6097476384596473099

namespace A044942

/-- `A044945(A033042(n+1))` -/
def P6097476384596473099.Spec : Prop :=
  ∀ n, P6097476384596473099.a n = A044942 (n + 1)

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

/-! ## A044943.P4034102848580636313

`A044944(A023717(1+n))`
-/

namespace A044943.P4034102848580636313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044944 (A023717 (1 + n)).toNat

end

end A044943.P4034102848580636313

namespace A044943

/-- `A044944(A023717(1+n))` -/
def P4034102848580636313.Spec : Prop :=
  ∀ n, P4034102848580636313.a n = A044943 (n + 1)

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

/-! ## A044943.P6338141193334471877

`A044950(A007089(n+1))`
-/

namespace A044943.P6338141193334471877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044950 (A007089 (n + 1)).toNat

end

end A044943.P6338141193334471877

namespace A044943

/-- `A044950(A007089(n+1))` -/
def P6338141193334471877.Spec : Prop :=
  ∀ n, P6338141193334471877.a n = A044943 (n + 1)

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

/-! ## A044944.P6062578628480790414

`A044945(A037459(1+n))`
-/

namespace A044944.P6062578628480790414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044945 (A037459 (1 + n)).toNat

end

end A044944.P6062578628480790414

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

/-! ## A044944.P17162049681316214545

`A044947(A037461(n+1))`
-/

namespace A044944.P17162049681316214545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044947 (A037461 (n + 1)).toNat

end

end A044944.P17162049681316214545

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

/-! ## A044944.P13259562593474004917

`A044950(A007090(n+1))`
-/

namespace A044944.P13259562593474004917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044950 (A007090 (n + 1)).toNat

end

end A044944.P13259562593474004917

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

/-! ## A044945.P6236583543195923106

`A044946(A037465(1+n))`
-/

namespace A044945.P6236583543195923106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044946 (A037465 (1 + n)).toNat

end

end A044945.P6236583543195923106

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

/-! ## A044945.P13655200172934127049

`A044950(A007091(n+1))`
-/

namespace A044945.P13655200172934127049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044950 (A007091 (n + 1)).toNat

end

end A044945.P13655200172934127049

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

/-! ## A044946.P3148487171333052793

`A044949(A037472(1+n))`
-/

namespace A044946.P3148487171333052793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044949 (A037472 (1 + n)).toNat

end

end A044946.P3148487171333052793

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

/-!
# A044947: Runs of odd length in the base 7 representation of n.

The programs for A044947, there is no canonical definition to state claims against.
-/

/-! ## A044947.P11308167452200181386

`A044949(A037475(1+n))`
-/

namespace A044947.P11308167452200181386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044949 (A037475 (1 + n)).toNat

end

end A044947.P11308167452200181386

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

/-! ## A044948.P15718266625220852877

`A044949(A037477(1+n))`
-/

namespace A044948.P15718266625220852877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044949 (A037477 (1 + n)).toNat

end

end A044948.P15718266625220852877

/-! ## A044948.P11327028975096823991

`A044950(A007094(n+1))`
-/

namespace A044948.P11327028975096823991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044950 (A007094 (n + 1)).toNat

end

end A044948.P11327028975096823991

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

/-! ## A044949.P7303254064626501934

`and(A043536(n+1), A123121(n+1))`
-/

namespace A044949.P7303254064626501934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043536 (n + 1)) (A123121 (n + 1))

end

end A044949.P7303254064626501934

/-! ## A044949.P3958403711547972131

`and(A123121(n+1), A297777(n+1))`
-/

namespace A044949.P3958403711547972131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A123121 (n + 1)) (A297777 (n + 1))

end

end A044949.P3958403711547972131

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

/-! ## A044950.P13615275189144997056

`A044941(A321536(1+n))`
-/

namespace A044950.P13615275189144997056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044941 (A321536 (1 + n)).toNat

end

end A044950.P13615275189144997056

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

/-! ## A044950.P462460636471676183

`A055642(A045918(n+1))-A055642(n+1)`
-/

namespace A044950.P462460636471676183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A045918 (n + 1)).toNat - A055642 (n + 1)

end

end A044950.P462460636471676183

/-! ## A044950.P11991675391945750601

`A196564(A139337(n+1)²)`
-/

namespace A044950.P11991675391945750601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A139337 (n + 1) ^ 2).toNat

end

end A044950.P11991675391945750601

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

/-! ## A044951.P2448927895311191754

`comp[A031443(1+n)-1]+1`
-/

namespace A044951.P2448927895311191754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031443 (1 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A044951.P2448927895311191754

namespace A044951

/-- `comp[A031443(1+n)-1]+1` -/
def P2448927895311191754.Spec : Prop :=
  ∀ n, (P2448927895311191754.a n : ℤ) = A044951 (n + 1)

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

/-! ## A044951.P12939287739126151420

`lt[0, lcm(n, A037861(n))]`
-/

namespace A044951.P12939287739126151420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A037861 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A044951.P12939287739126151420

namespace A044951

/-- `lt[0, lcm(n, A037861(n))]` -/
def P12939287739126151420.Spec : Prop :=
  ∀ n, (P12939287739126151420.a n : ℤ) = A044951 (n + 1)

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

/-! ## A044952.P743505442969460485

`∑[gcd(A183208(2*(n+2)), A254051(n+1))]`
-/

namespace A044952.P743505442969460485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A183208 (2 * (n + 2))) (A254051 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044952.P743505442969460485

/-! ## A044952.P7436023027809779721

`A134745(n+1)-A000038(A054193(n+1))`
-/

namespace A044952.P7436023027809779721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134745 (n + 1) - A000038 (A054193 (n + 1)).toNat

end

end A044952.P7436023027809779721

/-!
# A044953: Numbers with no two equally numerous base 4 digits.

The programs for A044953, there is no canonical definition to state claims against.
-/

/-! ## A044953.P819460291352844093

`record[A289813(A044958(1+n))]`
-/

namespace A044953.P819460291352844093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (A044958 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044953.P819460291352844093

/-! ## A044953.P17823611750409406400

`A292371(∩[A000695(n), A044965(n+1)])`
-/

namespace A044953.P17823611750409406400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044965 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292371 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A044953.P17823611750409406400

/-! ## A044953.P16202821136384866178

`record[A292372(A044965(n+2))]`
-/

namespace A044953.P16202821136384866178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 (A044965 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044953.P16202821136384866178

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

/-! ## A044957.P11150082469048972285

`∪[A044819(n+1), A116939(A167725(n+2))]`
-/

namespace A044957.P11150082469048972285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116939 (A167725 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A044957.P11150082469048972285

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

/-! ## A044959.P10588877328362860833

`A353181(n+1)`
-/

namespace A044959.P10588877328362860833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353181 (n + 1)

end

end A044959.P10588877328362860833

/-! ## A044959.P4240712736051019339

`lt[log(2)^n, A079691(A332550(n))]`
-/

namespace A044959.P4240712736051019339
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (2 : ℝ) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079691 (A332550 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A044959.P4240712736051019339

/-! ## A044959.P5658033104088531576

`A059995(A115853(n+1))`
-/

namespace A044959.P5658033104088531576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A115853 (n + 1)).toNat

end

end A044959.P5658033104088531576

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

/-! ## A044960.P381457291502244310

`record[A296744(n+1)-A326686(n)]`
-/

namespace A044960.P381457291502244310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296744 (n + 1) - A326686 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044960.P381457291502244310

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

/-! ## A044963.P10204172366143881668

`∪[A044825(n+1), A229445(A398313(2*(n+1)))]`
-/

namespace A044963.P10204172366143881668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044825 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229445 (A398313 (2 * (n + 1))).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A044963.P10204172366143881668

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

/-! ## A044965.P48011731068505927

`∪[A044827(n+1), A325254(A107839(n))]`
-/

namespace A044965.P48011731068505927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325254 (A107839 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A044965.P48011731068505927

/-! ## A044965.P2476142511699254649

`∪[A044827(n+1), A325254(A053067(n+1))]`
-/

namespace A044965.P2476142511699254649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325254 (A053067 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A044965.P2476142511699254649

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

/-!
# A044966: Numbers whose base-3 representation contains no 0's and exactly one 1.

The programs for A044966, the canonical program `A044966.P10349923744227239606` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A044966 has offset 1).

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

/-! ## A044966.P12042307000193084460

`2*A309758(1+n)-1`
-/

namespace A044966.P12042307000193084460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A309758 (1 + n) - 1

end

end A044966.P12042307000193084460

namespace A044966

/-- `2*A309758(1+n)-1` -/
def P12042307000193084460.Spec : Prop :=
  ∀ n, P12042307000193084460.a n = A044966 (n + 1)

end A044966

/-! ## A044966.P7956028010406259919

`-1+2*A309758(n+1)`
-/

namespace A044966.P7956028010406259919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1 + 2 * A309758 (n + 1)

end

end A044966.P7956028010406259919

namespace A044966

/-- `-1+2*A309758(n+1)` -/
def P7956028010406259919.Spec : Prop :=
  ∀ n, P7956028010406259919.a n = A044966 (n + 1)

end A044966

/-! ## A044966.P17510483056281194286

`record[lcm(2, A188341(1+n))]/2`
-/

namespace A044966.P17510483056281194286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A188341 (1 + n))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2

end

end A044966.P17510483056281194286

namespace A044966

/-- `record[lcm(2, A188341(1+n))]/2` -/
def P17510483056281194286.Spec : Prop :=
  ∀ n, P17510483056281194286.a n = (A044966 (n + 1) : ℚ)

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

/-! ## A044966.P10349923744227239606

`A024023(A002024(n+1))-A140303(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A044966

/-- `A024023(A002024(n+1))-A140303(n)` -/
def P10349923744227239606.Spec : Prop :=
  ∀ n, P10349923744227239606.a n = A044966 (n + 1)

theorem P10349923744227239606.correct : P10349923744227239606.Spec := by
  intro n
  simp only [A044966, Nat.add_sub_cancel]

end A044966

/-! ## A044966.P9440074644927106539

`∩[A023692(n+1), A032924(n+1)]`
-/

namespace A044966.P9440074644927106539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023692 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044966.P9440074644927106539

namespace A044966

/-- `∩[A023692(n+1), A032924(n+1)]` -/
def P9440074644927106539.Spec : Prop :=
  ∀ n, (P9440074644927106539.a n : ℤ) = A044966 (n + 1)

end A044966

/-! ## A044966.P9763226803300202472

`∩[A023692(n+1), A188341(n+1)]`
-/

namespace A044966.P9763226803300202472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023692 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188341 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044966.P9763226803300202472

namespace A044966

/-- `∩[A023692(n+1), A188341(n+1)]` -/
def P9763226803300202472.Spec : Prop :=
  ∀ n, (P9763226803300202472.a n : ℤ) = A044966 (n + 1)

end A044966

/-! ## A044966.P2117788199440601782

`∩[2*n+1, A188341(n+1)]`
-/

namespace A044966.P2117788199440601782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188341 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044966.P2117788199440601782

namespace A044966

/-- `∩[2*n+1, A188341(n+1)]` -/
def P2117788199440601782.Spec : Prop :=
  ∀ n, (P2117788199440601782.a n : ℤ) = A044966 (n + 1)

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

/-! ## A044967.P13141772321949198005

`eq[6, A113046(2*n)]`
-/

namespace A044967.P13141772321949198005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113046 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044967.P13141772321949198005

namespace A044967

/-- `eq[6, A113046(2*n)]` -/
def P13141772321949198005.Spec : Prop :=
  ∀ n, (P13141772321949198005.a n : ℤ) = A044967 (n + 1)

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

The programs for A044969, the canonical program `A044969.P12082965553257250525` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A044969 has offset 1).

The definition of A044969 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1314 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A044969.P12082965553257250525

`A032924(eq[4, A023416(1+n)])`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A044969

/-- `A032924(eq[4, A023416(1+n)])` -/
def P12082965553257250525.Spec : Prop :=
  ∀ n, P12082965553257250525.a n = A044969 (n + 1)

theorem P12082965553257250525.correct : P12082965553257250525.Spec := by
  intro n
  simp only [A044969, Nat.add_sub_cancel]

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

The programs for A044974, the canonical program `A044974.P2158267626890744817` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A044974 has offset 1).

The definition of A044974 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1430 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A044974.P2158267626890744817

`∩[A023695(n+1), A043321(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
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

/-! ## A044975.P803987583832676919

`4*A044999(Δ[n²]-n)/2`
-/

namespace A044975.P803987583832676919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((A044999 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℚ) / 2)

end

end A044975.P803987583832676919

namespace A044975

/-- `4*A044999(Δ[n²]-n)/2` -/
def P803987583832676919.Spec : Prop :=
  ∀ n, P803987583832676919.a n = (A044975 (n + 1) : ℚ)

end A044975

/-! ## A044975.P2804517601049063174

`A044999(n+1)+A044999(n+1)`
-/

namespace A044975.P2804517601049063174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044999 (n + 1) + A044999 (n + 1)

end

end A044975.P2804517601049063174

namespace A044975

/-- `A044999(n+1)+A044999(n+1)` -/
def P2804517601049063174.Spec : Prop :=
  ∀ n, P2804517601049063174.a n = A044975 (n + 1)

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

The programs for A044979, the canonical program `A044979.P7189074795377754944` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A044979 has offset 1).

The definition of A044979 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2581 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A044979.P7189074795377754944

`∩[A023695(n+1), A043322(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A044979

/-- `∩[A023695(n+1), A043322(n+1)]` -/
def P7189074795377754944.Spec : Prop :=
  ∀ n, (P7189074795377754944.a n : ℤ) = A044979 (n + 1)

theorem P7189074795377754944.correct : P7189074795377754944.Spec := by
  intro n
  simp only [A044979, Nat.add_sub_cancel]

end A044979

/-! ## A044979.P8832111662176826811

`A357616(A045003(1+n))`
-/

namespace A044979.P8832111662176826811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357616 (A045003 (1 + n)).toNat

end

end A044979.P8832111662176826811

namespace A044979

/-- `A357616(A045003(1+n))` -/
def P8832111662176826811.Spec : Prop :=
  ∀ n, P8832111662176826811.a n = A044979 (n + 1)

end A044979

/-! ## A044979.P17476852982665896826

`A374361(A045075(n+1))`
-/

namespace A044979.P17476852982665896826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374361 (A045075 (n + 1)).toNat

end

end A044979.P17476852982665896826

namespace A044979

/-- `A374361(A045075(n+1))` -/
def P17476852982665896826.Spec : Prop :=
  ∀ n, P17476852982665896826.a n = A044979 (n + 1)

end A044979

/-! ## A044979.P13737863716874152938

`∩[A023695(n+1), A044999(n+1)]`
-/

namespace A044979.P13737863716874152938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044999 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044979.P13737863716874152938

namespace A044979

/-- `∩[A023695(n+1), A044999(n+1)]` -/
def P13737863716874152938.Spec : Prop :=
  ∀ n, (P13737863716874152938.a n : ℤ) = A044979 (n + 1)

end A044979

/-! ## A044979.P43263702735176090

`∩[A031454(n+1), A038466(n+1)]`
-/

namespace A044979.P43263702735176090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031454 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044979.P43263702735176090

namespace A044979

/-- `∩[A031454(n+1), A038466(n+1)]` -/
def P43263702735176090.Spec : Prop :=
  ∀ n, (P43263702735176090.a n : ℤ) = A044979 (n + 1)

end A044979

/-!
# A044980: Numbers whose base-3 representation contains exactly three 0's and no 1's.

The programs for A044980, the canonical program `A044980.P4515869477869152908` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A044980 has offset 1).

The definition of A044980 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 718 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A044980.P13823138451863791029

`2*A045004(1+n)`
-/

namespace A044980.P13823138451863791029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045004 (1 + n)

end

end A044980.P13823138451863791029

namespace A044980

/-- `2*A045004(1+n)` -/
def P13823138451863791029.Spec : Prop :=
  ∀ n, P13823138451863791029.a n = A044980 (n + 1)

end A044980

/-! ## A044980.P9345459894841407687

`A045004(n+1)+A045004(n+1)`
-/

namespace A044980.P9345459894841407687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045004 (n + 1) + A045004 (n + 1)

end

end A044980.P9345459894841407687

namespace A044980

/-- `A045004(n+1)+A045004(n+1)` -/
def P9345459894841407687.Spec : Prop :=
  ∀ n, P9345459894841407687.a n = A044980 (n + 1)

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

The programs for A044984, the canonical program `A044984.P4664107033638038390` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A044984 has offset 1).

The definition of A044984 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2594 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A044984.P4664107033638038390

`∩[A023695(n+1), A043323(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
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

/-! ## A044985.P5815992796858416205

`A045009(n+1)+A045009(n+1)`
-/

namespace A044985.P5815992796858416205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045009 (n + 1) + A045009 (n + 1)

end

end A044985.P5815992796858416205

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

/-! ## A044985.P11125543639462142558

`2*A005836(eq[3, A086784(n)])`
-/

namespace A044985.P11125543639462142558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086784 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044985.P11125543639462142558

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

/-! ## A044987.P13788929157989835548

`record[A135997(A044988(1+n)-1)]`
-/

namespace A044987.P13788929157989835548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (A044988 (1 + n) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044987.P13788929157989835548

namespace A044987

/-- `record[A135997(A044988(1+n)-1)]` -/
def P13788929157989835548.Spec : Prop :=
  ∀ n, P13788929157989835548.a n = A044987 (n + 1)

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

/-! ## A044988.P10542712389117100474

`A357616(A045012(1+n))`
-/

namespace A044988.P10542712389117100474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357616 (A045012 (1 + n)).toNat

end

end A044988.P10542712389117100474

namespace A044988

/-- `A357616(A045012(1+n))` -/
def P10542712389117100474.Spec : Prop :=
  ∀ n, P10542712389117100474.a n = A044988 (n + 1)

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

/-! ## A044990.P2020608791384605778

`floor(A006046(A018900(1+n))/2)`
-/

namespace A044990.P2020608791384605778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006046 (A018900 (1 + n)).toNat : ℚ) / 2⌋

end

end A044990.P2020608791384605778

namespace A044990

/-- `floor(A006046(A018900(1+n))/2)` -/
def P2020608791384605778.Spec : Prop :=
  ∀ n, P2020608791384605778.a n = A044990 (n + 1)

end A044990

/-! ## A044990.P7810900982131260073

`(A006046(A018900(n+1))-1)/2`
-/

namespace A044990.P7810900982131260073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006046 (A018900 (n + 1)).toNat - 1 : ℚ) / 2

end

end A044990.P7810900982131260073

namespace A044990

/-- `(A006046(A018900(n+1))-1)/2` -/
def P7810900982131260073.Spec : Prop :=
  ∀ n, P7810900982131260073.a n = (A044990 (n + 1) : ℚ)

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

/-! ## A044990.P12404819566509200115

`∩[A023699(n+1), A032924(n+1)]`
-/

namespace A044990.P12404819566509200115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023699 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044990.P12404819566509200115

namespace A044990

/-- `∩[A023699(n+1), A032924(n+1)]` -/
def P12404819566509200115.Spec : Prop :=
  ∀ n, (P12404819566509200115.a n : ℤ) = A044990 (n + 1)

end A044990

/-! ## A044990.P7538252835300629399

`∩[A023699(n+1), A031457(n+1)]`
-/

namespace A044990.P7538252835300629399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023699 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044990.P7538252835300629399

namespace A044990

/-- `∩[A023699(n+1), A031457(n+1)]` -/
def P7538252835300629399.Spec : Prop :=
  ∀ n, (P7538252835300629399.a n : ℤ) = A044990 (n + 1)

end A044990

/-! ## A044990.P8515695634875977929

`∩[A031457(n+1), A032924(n+1)]`
-/

namespace A044990.P8515695634875977929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044990.P8515695634875977929

namespace A044990

/-- `∩[A031457(n+1), A032924(n+1)]` -/
def P8515695634875977929.Spec : Prop :=
  ∀ n, (P8515695634875977929.a n : ℤ) = A044990 (n + 1)

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

/-! ## A044991.P4210208836457659099

`eq[4, A309953(n)]`
-/

namespace A044991.P4210208836457659099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044991.P4210208836457659099

namespace A044991

/-- `eq[4, A309953(n)]` -/
def P4210208836457659099.Spec : Prop :=
  ∀ n, (P4210208836457659099.a n : ℤ) = A044991 (n + 1)

end A044991

/-! ## A044991.P16281754374016563540

`A357616(A044967(n+1))`
-/

namespace A044991.P16281754374016563540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357616 (A044967 (n + 1)).toNat

end

end A044991.P16281754374016563540

namespace A044991

/-- `A357616(A044967(n+1))` -/
def P16281754374016563540.Spec : Prop :=
  ∀ n, P16281754374016563540.a n = A044991 (n + 1)

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

/-! ## A044994.P5551467905755004280

`A044970(1+n)/2`
-/

namespace A044994.P5551467905755004280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A044970 (1 + n) : ℚ) / 2

end

end A044994.P5551467905755004280

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

/-! ## A044997.P12223353812939193473

`∩[A023701(1+n), A031458(n+1)]`
-/

namespace A044997.P12223353812939193473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023701 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044997.P12223353812939193473

namespace A044997

/-- `∩[A023701(1+n), A031458(n+1)]` -/
def P12223353812939193473.Spec : Prop :=
  ∀ n, (P12223353812939193473.a n : ℤ) = A044997 (n + 1)

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

/-! ## A044998.P10474867972581825080

`∩[A023702(1+n), A031459(n+1)]`
-/

namespace A044998.P10474867972581825080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023702 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044998.P10474867972581825080

namespace A044998

/-- `∩[A023702(1+n), A031459(n+1)]` -/
def P10474867972581825080.Spec : Prop :=
  ∀ n, (P10474867972581825080.a n : ℤ) = A044998 (n + 1)

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

/-!
# A044999: Numbers whose base-3 representation contains exactly two 0's and no 2's.

The programs for A044999, the canonical program `A044999.P10657281427789033699` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A044999 has offset 1).

The definition of A044999 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 365 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A044999.P10657281427789033699

`A044975(1+n)/2`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A044999

/-- `A044975(1+n)/2` -/
def P10657281427789033699.Spec : Prop :=
  ∀ n, P10657281427789033699.a n = (A044999 (n + 1) : ℚ)

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

