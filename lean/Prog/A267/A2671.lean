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
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
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
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
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
# A267100: Self-inverse permutation of natural numbers: a(1) = 1, a(A080147(n)) = A080148(n), a(A080148(n)) = A080147(n).

The programs for A267100, there is no canonical definition to state claims against.
-/

/-! ## A267100.P13424936176769912963

`A000720(A267101(n+1))`
-/

namespace A267100.P13424936176769912963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A267101 (n + 1)).toNat

end

end A267100.P13424936176769912963

/-! ## A267100.P11535078694580130072

`A000720(p?[A267099(n+1)])`
-/

namespace A267100.P11535078694580130072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A267100.P11535078694580130072

/-! ## A267100.P7536185978002914414

`A000720(A267099(A000040(n+1)))`
-/

namespace A267100.P7536185978002914414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A267099 (A000040 (n + 1)).toNat).toNat

end

end A267100.P7536185978002914414

/-! ## A267100.P15074633969251399045

`A049084(p?[A267099(n+1)])`
-/

namespace A267100.P15074633969251399045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A267100.P15074633969251399045

/-! ## A267100.P11001255811258666867

`A036234(p?[A267099(n+1)]-1)`
-/

namespace A267100.P11001255811258666867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1).toNat

end

end A267100.P11001255811258666867

/-! ## A267100.P1444390935999980863

`A049084(A267101(2*n+1-n))`
-/

namespace A267100.P1444390935999980863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A267101 (2 * n + 1 - n)).toNat

end

end A267100.P1444390935999980863

/-!
# A267101: 2 followed by permutation of odd primes, where each n-th prime of the form 4k+1 (A002144) has been replaced with the n-th prime of the form 4k+3 (A002145) and vice versa.

The programs for A267101, there is no canonical definition to state claims against.
-/

/-! ## A267101.P1561137535279295446

`A000040(A267100(n+1))`
-/

namespace A267101.P1561137535279295446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A267100 (n + 1)).toNat

end

end A267101.P1561137535279295446

/-! ## A267101.P14610355470220917515

`A267099(A000040(n+1))`
-/

namespace A267101.P14610355470220917515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267099 (A000040 (n + 1)).toNat

end

end A267101.P14610355470220917515

/-! ## A267101.P12811104264073320865

`A332806(A332807(A267100(A332805(A332807(n+1)))))`
-/

namespace A267101.P12811104264073320865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332806 (A332807 (A267100 (A332805 (A332807 (n + 1)).toNat).toNat).toNat).toNat

end

end A267101.P12811104264073320865

/-! ## A267101.P17257499203175453121

`A108546(A332805(A267100(A332807(A332805(n+1)))))`
-/

namespace A267101.P17257499203175453121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108546 (A332805 (A267100 (A332807 (A332805 (n + 1)).toNat).toNat).toNat).toNat

end

end A267101.P17257499203175453121

/-! ## A267101.P3860413063178630791

`A354102(Δ[A007504(n)])+1`
-/

namespace A267101.P3860413063178630791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354102 (f1 (n + 1) - f1 n).toNat + 1

end

end A267101.P3860413063178630791

/-! ## A267101.P5241597875264906934

`A354103(A000040(n+1))-A049347(3*n)`
-/

namespace A267101.P5241597875264906934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354103 (A000040 (n + 1)).toNat - A049347 (3 * n)

end

end A267101.P5241597875264906934

/-! ## A267101.P6695401775120941354

`A354103(A000040(n+1))-A276204(3*n+2)`
-/

namespace A267101.P6695401775120941354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354103 (A000040 (n + 1)).toNat - A276204 (3 * n + 2)

end

end A267101.P6695401775120941354

/-! ## A267101.P232457172643975074

`p?[A267099(n+1)]`
-/

namespace A267101.P232457172643975074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267101.P232457172643975074

/-! ## A267101.P2797621202036347298

`p?[∑{d}[n, A354102(#)]]`
-/

namespace A267101.P2797621202036347298
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A354102 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267101.P2797621202036347298

/-! ## A267101.P8769476422876636204

`A267099(A008578(n+2))`
-/

namespace A267101.P8769476422876636204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267099 (A008578 (n + 2)).toNat

end

end A267101.P8769476422876636204

/-! ## A267101.P10799252697567341932

`A267099(A182986(n+2))`
-/

namespace A267101.P10799252697567341932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267099 (A182986 (n + 2)).toNat

end

end A267101.P10799252697567341932

/-! ## A267101.P5730136065699605329

`A267099(record[A006530(n+2)])`
-/

namespace A267101.P5730136065699605329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267099 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A267101.P5730136065699605329

/-! ## A267101.P4338859373337859424

`A267099(record[A014963(n+2)])`
-/

namespace A267101.P4338859373337859424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267099 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A267101.P4338859373337859424

/-! ## A267101.P4632867983922243880

`A267099(record[A020639(n+2)])`
-/

namespace A267101.P4632867983922243880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267099 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A267101.P4632867983922243880

/-! ## A267101.P17692242188468514945

`A267099(record[A259153(n+2)])`
-/

namespace A267101.P17692242188468514945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267099 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A267101.P17692242188468514945

/-! ## A267101.P2509308516766248133

`A267099(A073846(2*(n+1)))`
-/

namespace A267101.P2509308516766248133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267099 (A073846 (2 * (n + 1))).toNat

end

end A267101.P2509308516766248133

/-! ## A267101.P6000344093480551966

`A267099(A001747(n+2)/2)`
-/

namespace A267101.P6000344093480551966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267099 (SequenceMachineLib.roundAway ((A001747 (n + 2) : ℚ) / 2)).toNat

end

end A267101.P6000344093480551966

/-! ## A267101.P3918273484429908756

`A267099(A332808(A108546(n+1)))`
-/

namespace A267101.P3918273484429908756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267099 (A332808 (A108546 (n + 1)).toNat).toNat

end

end A267101.P3918273484429908756

/-! ## A267101.P1100530507068407656

`A267099(A108546(A332805(n+1)))`
-/

namespace A267101.P1100530507068407656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267099 (A108546 (A332805 (n + 1)).toNat).toNat

end

end A267101.P1100530507068407656

/-! ## A267101.P231727489341715207

`filter[A267099(n+1), A010051(#)]`
-/

namespace A267101.P231727489341715207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A267101.P231727489341715207

/-!
# A267102: Inverse permutation to A265901.

The programs for A267102, there is no canonical definition to state claims against.
-/

/-! ## A267102.P1998267847908996131

`A162598(n+1)+A267104(n+1)-A265332(n+1)`
-/

namespace A267102.P1998267847908996131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162598 (n + 1) + (A267104 (n + 1) - A265332 (n + 1))

end

end A267102.P1998267847908996131

/-! ## A267102.P4683688278461764592

`A038722(A267104(n+1))`
-/

namespace A267102.P4683688278461764592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A267104 (n + 1)).toNat

end

end A267102.P4683688278461764592

/-!
# A267103: Row 3 of A265903; numbers that occur exactly three times in A004001.

The programs for A267103, the canonical program `A267103.P16478775800267878693` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267103 has offset 1).

The definition of A267103 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087686, A266109, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A267103.P16478775800267878693

`A087686(1+A266109(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A267103

/-- `A087686(1+A266109(n+1))` -/
def P16478775800267878693.Spec : Prop :=
  ∀ n, P16478775800267878693.a n = A267103 (n + 1)

theorem P16478775800267878693.correct : P16478775800267878693.Spec := by
  intro n
  simp only [A267103, Nat.add_sub_cancel]

end A267103

/-! ## A267103.P4685765527238194079

`A087686(1+A087686(1+A188163(n+1)))`
-/

namespace A267103.P4685765527238194079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087686 (1 + A087686 (1 + A188163 (n + 1)).toNat).toNat

end

end A267103.P4685765527238194079

namespace A267103

/-- `A087686(1+A087686(1+A188163(n+1)))` -/
def P4685765527238194079.Spec : Prop :=
  ∀ n, P4685765527238194079.a n = A267103 (n + 1)

end A267103

/-! ## A267103.P17088277353025058902

`A266188(A087686(A088359(A188163(n+1))))`
-/

namespace A267103.P17088277353025058902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266188 (A087686 (A088359 (A188163 (n + 1)).toNat).toNat).toNat

end

end A267103.P17088277353025058902

namespace A267103

/-- `A266188(A087686(A088359(A188163(n+1))))` -/
def P17088277353025058902.Spec : Prop :=
  ∀ n, P17088277353025058902.a n = A267103 (n + 1)

end A267103

/-! ## A267103.P13371327656956249109

`eq[3, A051135(n+1)]+1`
-/

namespace A267103.P13371327656956249109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051135 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A267103.P13371327656956249109

namespace A267103

/-- `eq[3, A051135(n+1)]+1` -/
def P13371327656956249109.Spec : Prop :=
  ∀ n, (P13371327656956249109.a n : ℤ) = A267103 (n + 1)

end A267103

/-! ## A267103.P12296439521660787100

`eq[3, A265332(n+1)]+1`
-/

namespace A267103.P12296439521660787100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265332 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A267103.P12296439521660787100

namespace A267103

/-- `eq[3, A265332(n+1)]+1` -/
def P12296439521660787100.Spec : Prop :=
  ∀ n, (P12296439521660787100.a n : ℤ) = A267103 (n + 1)

end A267103

/-! ## A267103.P9716131827239378727

`lt[A001221(5*(A051135(n+1)+2)), 2]+1`
-/

namespace A267103.P9716131827239378727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (5 * (A051135 (n + 1) + 2)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A267103.P9716131827239378727

namespace A267103

/-- `lt[A001221(5*(A051135(n+1)+2)), 2]+1` -/
def P9716131827239378727.Spec : Prop :=
  ∀ n, (P9716131827239378727.a n : ℤ) = A267103 (n + 1)

end A267103

/-! ## A267103.P16967897241276090153

`A004001(A266109(A266109(n+1)))`
-/

namespace A267103.P16967897241276090153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (A266109 (A266109 (n + 1)).toNat).toNat

end

end A267103.P16967897241276090153

namespace A267103

/-- `A004001(A266109(A266109(n+1)))` -/
def P16967897241276090153.Spec : Prop :=
  ∀ n, P16967897241276090153.a n = A267103 (n + 1)

end A267103

/-!
# A267104: Inverse permutation to A265903.

The programs for A267104, there is no canonical definition to state claims against.
-/

/-! ## A267104.P5834706564287692371

`A265332(n+1)+A267102(n+1)-A162598(n+1)`
-/

namespace A267104.P5834706564287692371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265332 (n + 1) + (A267102 (n + 1) - A162598 (n + 1))

end

end A267104.P5834706564287692371

/-! ## A267104.P7093917921743019960

`A038722(A267102(n+1))`
-/

namespace A267104.P7093917921743019960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A267102 (n + 1)).toNat

end

end A267104.P7093917921743019960

/-! ## A267104.P12448418788609250665

`A061579(A267102(n+1)-1)+1`
-/

namespace A267104.P12448418788609250665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A267102 (n + 1) - 1).toNat + 1

end

end A267104.P12448418788609250665

/-!
# A267105: Permutation of natural numbers: a(1) = 1, a(A080147(n)) = 1+(2*a(n)), a(A080148(n)) = 2*a(n).

The programs for A267105, there is no canonical definition to state claims against.
-/

/-! ## A267105.P1794639927298630939

`A352725(A328869(n+1)%A330846(2*n+5))`
-/

namespace A267105.P1794639927298630939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352725 (Int.tmod (A328869 (n + 1)) (A330846 (2 * n + 5))).toNat

end

end A267105.P1794639927298630939

/-!
# A267108: a(n) = A000120(A267111(n)).

The programs for A267108, there is no canonical definition to state claims against.
-/

/-! ## A267108.P716708678723193473

`A000120(A267111(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A267108.P716708678723193473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A267111 (n + 1)).toNat

end

end A267108.P716708678723193473

/-! ## A267108.P16126523469440513218

`A070939(n+1)-A267109(n+1)`
-/

namespace A267108.P16126523469440513218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (n + 1) - A267109 (n + 1)

end

end A267108.P16126523469440513218

/-! ## A267108.P5024404651941095013

`∑{e}[A286538(n+1), #]`
-/

namespace A267108.P5024404651941095013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286538 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A267108.P5024404651941095013

/-! ## A267108.P6897121508568524379

`A113473(n+1)-A267109(n+1)`
-/

namespace A267108.P6897121508568524379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113473 (n + 1) - A267109 (n + 1)

end

end A267108.P6897121508568524379

/-! ## A267108.P12560812983036161951

`A000120(n+1)+A080791(n+1)-A267109(n+1)`
-/

namespace A267108.P12560812983036161951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) + (A080791 (n + 1) - A267109 (n + 1))

end

end A267108.P12560812983036161951

/-! ## A267108.P8162972929200752933

`A256478(A276345(n+1))`
-/

namespace A267108.P8162972929200752933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256478 (A276345 (n + 1)).toNat

end

end A267108.P8162972929200752933

/-! ## A267108.P17616667934287663082

`A257249(A276343(n+1))`
-/

namespace A267108.P17616667934287663082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257249 (A276343 (n + 1)).toNat

end

end A267108.P17616667934287663082

/-! ## A267108.P10385534601242338751

`A290251(A276441(n+1))`
-/

namespace A267108.P10385534601242338751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290251 (A276441 (n + 1)).toNat

end

end A267108.P10385534601242338751

/-! ## A267108.P415639152229466106

`A001222(A286538(n+1)/2)+1`
-/

namespace A267108.P415639152229466106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A286538 (n + 1) : ℚ) / 2)).toNat + 1

end

end A267108.P415639152229466106

/-! ## A267108.P12771138379735442327

`A001222(A286538(n+1))`
-/

namespace A267108.P12771138379735442327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A286538 (n + 1)).toNat

end

end A267108.P12771138379735442327

/-! ## A267108.P18098585823937665156

`A001222(A278222(A267111(1-char[1]+n)))`
-/

namespace A267108.P18098585823937665156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A278222 (A267111 (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)).toNat).toNat).toNat

end

end A267108.P18098585823937665156

/-! ## A267108.P17649455980527286592

`A080791(A233275(A276345(A088359(n+1))))`
-/

namespace A267108.P17649455980527286592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A233275 (A276345 (A088359 (n + 1)).toNat).toNat).toNat

end

end A267108.P17649455980527286592

/-! ## A267108.P2345041050653299718

`A253558(A269851(n+1))`
-/

namespace A267108.P2345041050653299718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253558 (A269851 (n + 1)).toNat

end

end A267108.P2345041050653299718

/-!
# A267109: a(n) = A080791(A267111(n)).

The programs for A267109, there is no canonical definition to state claims against.
-/

/-! ## A267109.P3640944555586077724

`A080791(A267111(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A267109.P3640944555586077724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A267111 (n + 1)).toNat

end

end A267109.P3640944555586077724

/-! ## A267109.P16435537293716403641

`A070939(n+1)-A267108(n+1)`
-/

namespace A267109.P16435537293716403641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (n + 1) - A267108 (n + 1)

end

end A267109.P16435537293716403641

/-! ## A267109.P7162772917791401684

`A113473(n+1)-A267108(n+1)`
-/

namespace A267109.P7162772917791401684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113473 (n + 1) - A267108 (n + 1)

end

end A267109.P7162772917791401684

/-! ## A267109.P5180597603139081089

`A070939(n+1)-A000120(A267111(n+1))`
-/

namespace A267109.P5180597603139081089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (n + 1) - A000120 (A267111 (n + 1)).toNat

end

end A267109.P5180597603139081089

/-! ## A267109.P12784401574692352705

`A000120(n+1)+A080791(n+1)-A267108(n+1)`
-/

namespace A267109.P12784401574692352705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) + (A080791 (n + 1) - A267108 (n + 1))

end

end A267109.P12784401574692352705

/-! ## A267109.P10401638449960932502

`A256479(A276345(n+1))`
-/

namespace A267109.P10401638449960932502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256479 (A276345 (n + 1)).toNat

end

end A267109.P10401638449960932502

/-! ## A267109.P16097295971269665913

`A257248(A276343(n+1))`
-/

namespace A267109.P16097295971269665913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257248 (A276343 (n + 1)).toNat

end

end A267109.P16097295971269665913

/-! ## A267109.P14239532167345955546

`A346633(A276445(n+1))`
-/

namespace A267109.P14239532167345955546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346633 (A276445 (n + 1)).toNat

end

end A267109.P14239532167345955546

/-! ## A267109.P17363002870451281159

`A023416(A153152(A059894(A209862(n+1))))`
-/

namespace A267109.P17363002870451281159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A153152 (A059894 (A209862 (n + 1)).toNat).toNat).toNat

end

end A267109.P17363002870451281159

/-! ## A267109.P2155951406461968455

`A253559(A269851(n+1))`
-/

namespace A267109.P2155951406461968455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253559 (A269851 (n + 1)).toNat

end

end A267109.P2155951406461968455

/-!
# A267110: If A051135(n) = 1, then a(n) = A004001(n) - 1, otherwise a(n) = n - A004001(n).

The programs for A267110, there is no canonical definition to state claims against.
-/

/-! ## A267110.P15679239703901679650

`A008676(A003056(A313754(n)²))`
-/

namespace A267110.P15679239703901679650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (A003056 (A313754 n ^ 2).toNat).toNat

end

end A267110.P15679239703901679650

/-! ## A267110.P13445794685453345394

`Δ[A327932(A059966(n+1))+A002620(n)]`
-/

namespace A267110.P13445794685453345394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327932 (A059966 (n + 1)).toNat + A002620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A267110.P13445794685453345394

/-! ## A267110.P17155375665619800247

`A004526(A276443(n+1)%A090941(3*n+1))`
-/

namespace A267110.P17155375665619800247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.tmod (A276443 (n + 1)) (A090941 (3 * n + 1))).toNat

end

end A267110.P17155375665619800247

/-! ## A267110.P5093564382014032893

`A004526(A276443(n+1))+A000038(A000032(n+1))`
-/

namespace A267110.P5093564382014032893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A276443 (n + 1)).toNat + A000038 (A000032 (n + 1)).toNat

end

end A267110.P5093564382014032893

/-! ## A267110.P2632408959541983408

`A252736(A355078(n+2))`
-/

namespace A267110.P2632408959541983408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (A355078 (n + 2)).toNat

end

end A267110.P2632408959541983408

/-!
# A267111: Permutation of natural numbers: a(1) = 1, a(A087686(n)) = 2*a(n-1), a(A088359(n)) = 1+2*a(n), where A088359 and A087686 = numbers that occur only once (resp. more than once) in A004001, the Hofstadter-Conway $10000 sequence.

The programs for A267111, there is no canonical definition to state claims against.
-/

/-! ## A267111.P7774216819386273613

`A006068(A276445(n+1))`
-/

namespace A267111.P7774216819386273613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A276445 (n + 1)).toNat

end

end A267111.P7774216819386273613

/-! ## A267111.P10021183395125843589

`A054429(A276441(n+1))`
-/

namespace A267111.P10021183395125843589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A276441 (n + 1)).toNat

end

end A267111.P10021183395125843589

/-! ## A267111.P14078548282669953901

`A233275(A276343(n+1))`
-/

namespace A267111.P14078548282669953901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233275 (A276343 (n + 1)).toNat

end

end A267111.P14078548282669953901

/-! ## A267111.P10194826724328267052

`A233277(A276345(n+1))`
-/

namespace A267111.P10194826724328267052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233277 (A276345 (n + 1)).toNat

end

end A267111.P10194826724328267052

/-! ## A267111.P9264334859724588363

`A233279(A276443(n+1))`
-/

namespace A267111.P9264334859724588363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233279 (A276443 (n + 1)).toNat

end

end A267111.P9264334859724588363

/-! ## A267111.P12953167645587759603

`xor(A092323(n+1), A276441(n+1))`
-/

namespace A267111.P12953167645587759603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A092323 (n + 1)) (A276441 (n + 1))

end

end A267111.P12953167645587759603

/-! ## A267111.P5373768480234221898

`A276441(A267112(A276441(A276441(A276442(n+1)))))`
-/

namespace A267111.P5373768480234221898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276441 (A267112 (A276441 (A276441 (A276442 (n + 1)).toNat).toNat).toNat).toNat

end

end A267111.P5373768480234221898

/-! ## A267111.P10492573224946764110

`A276441(A276346(A276343(A276345(A276346(n+1)))))`
-/

namespace A267111.P10492573224946764110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276441 (A276346 (A276343 (A276345 (A276346 (n + 1)).toNat).toNat).toNat).toNat

end

end A267111.P10492573224946764110

/-! ## A267111.P11135261804168927504

`A276441(A276444(A276445(A276443(A276444(n+1)))))`
-/

namespace A267111.P11135261804168927504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276441 (A276444 (A276445 (A276443 (A276444 (n + 1)).toNat).toNat).toNat).toNat

end

end A267111.P11135261804168927504

/-! ## A267111.P792584867540637748

`A276441(A267112(A276441(A267110(A088359(n+1)))))`
-/

namespace A267111.P792584867540637748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276441 (A267112 (A276441 (A267110 (A088359 (n + 1)).toNat).toNat).toNat).toNat

end

end A267111.P792584867540637748

/-! ## A267111.P4993387579164310929

`A252756(A269851(n+1))`
-/

namespace A267111.P4993387579164310929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252756 (A269851 (n + 1)).toNat

end

end A267111.P4993387579164310929

/-! ## A267111.P3037532521824239887

`A006068(A269856(A269851(A115384(2*n+1))))`
-/

namespace A267111.P3037532521824239887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A269856 (A269851 (A115384 (2 * n + 1)).toNat).toNat).toNat

end

end A267111.P3037532521824239887

/-! ## A267111.P10484194717608810403

`A006068(A269856(A269851(A269856(A269855(n+1)))))`
-/

namespace A267111.P10484194717608810403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A269856 (A269851 (A269856 (A269855 (n + 1)).toNat).toNat).toNat).toNat

end

end A267111.P10484194717608810403

/-!
# A267112: Permutation of natural numbers: a(1) = 1; a(2n) = A087686(1+a(n)), a(2n+1) = A088359(a(n)), where A088359 and A087686 = numbers that occur only once (resp. more than once) in A004001.

The programs for A267112, there is no canonical definition to state claims against.
-/

/-! ## A267112.P118232400804065811

`A276446(A003188(n+1))`
-/

namespace A267112.P118232400804065811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276446 (A003188 (n + 1)).toNat

end

end A267112.P118232400804065811

/-! ## A267112.P13826015620507281363

`A276442(A054429(n+1))`
-/

namespace A267112.P13826015620507281363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276442 (A054429 (n + 1)).toNat

end

end A267112.P13826015620507281363

/-! ## A267112.P6530810997291288814

`A276344(A233276(n+1))`
-/

namespace A267112.P6530810997291288814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276344 (A233276 (n + 1)).toNat

end

end A267112.P6530810997291288814

/-! ## A267112.P5990558046484929966

`A276346(A233278(n+1))`
-/

namespace A267112.P5990558046484929966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276346 (A233278 (n + 1)).toNat

end

end A267112.P5990558046484929966

/-! ## A267112.P12644597986222214719

`A276444(A233280(n+1))`
-/

namespace A267112.P12644597986222214719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276444 (A233280 (n + 1)).toNat

end

end A267112.P12644597986222214719

/-! ## A267112.P6768266325568641112

`A276446(∑[A055975(n+1)])`
-/

namespace A267112.P6768266325568641112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276446 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A267112.P6768266325568641112

/-! ## A267112.P2541036771657943529

`A276442(A267111(A276442(n+1)))`
-/

namespace A267112.P2541036771657943529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276442 (A267111 (A276442 (n + 1)).toNat).toNat

end

end A267112.P2541036771657943529

/-! ## A267112.P6131163227384904633

`A276446(A276443(A276442(A276444(A276443(n+1)))))`
-/

namespace A267112.P6131163227384904633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276446 (A276443 (A276442 (A276444 (A276443 (n + 1)).toNat).toNat).toNat).toNat

end

end A267112.P6131163227384904633

/-! ## A267112.P14872829877240520193

`A276446(A276443(A276442(A115384(2*n+1))))`
-/

namespace A267112.P14872829877240520193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276446 (A276443 (A276442 (A115384 (2 * n + 1)).toNat).toNat).toNat

end

end A267112.P14872829877240520193

/-! ## A267112.P8382990043088937088

`A276446(A246161(A246202(n+1)))`
-/

namespace A267112.P8382990043088937088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276446 (A246161 (A246202 (n + 1)).toNat).toNat

end

end A267112.P8382990043088937088

/-!
# A267113: Bitwise-OR of the exponents of all 4k+1 primes in the prime factorization of n.

The programs for A267113, the canonical program `A267113.P11830865160452597695` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267113 has offset 1).

The definition of A267113 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A170818, A267116, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A267113.P11830865160452597695

`A267116(A170818(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A267113

/-- `A267116(A170818(n+1))` -/
def P11830865160452597695.Spec : Prop :=
  ∀ n, P11830865160452597695.a n = A267113 (n + 1)

theorem P11830865160452597695.correct : P11830865160452597695.Spec := by
  intro n
  simp only [A267113, Nat.add_sub_cancel]

end A267113

/-! ## A267113.P3668573917651341247

`A267116(A072436((n+1)/round(xor(n, n+1)/2)))`
-/

namespace A267113.P3668573917651341247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267116 (A072436 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (SequenceMachineLib.roundAway ((Nat.xor n (n + 1) : ℚ) / 2) : ℚ))).toNat).toNat

end

end A267113.P3668573917651341247

namespace A267113

/-- `A267116(A072436((n+1)/round(xor(n, n+1)/2)))` -/
def P3668573917651341247.Spec : Prop :=
  ∀ n, P3668573917651341247.a n = A267113 (n + 1)

end A267113

/-! ## A267113.P9048949934601427961

`A260728(A332819(n+1))`
-/

namespace A267113.P9048949934601427961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260728 (A332819 (n + 1)).toNat

end

end A267113.P9048949934601427961

namespace A267113

/-- `A260728(A332819(n+1))` -/
def P9048949934601427961.Spec : Prop :=
  ∀ n, P9048949934601427961.a n = A267113 (n + 1)

end A267113

/-! ## A267113.P11948674538429897031

`A260728(A267099(n+1))`
-/

namespace A267113.P11948674538429897031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260728 (A267099 (n + 1)).toNat

end

end A267113.P11948674538429897031

namespace A267113

/-- `A260728(A267099(n+1))` -/
def P11948674538429897031.Spec : Prop :=
  ∀ n, P11948674538429897031.a n = A267113 (n + 1)

end A267113

/-! ## A267113.P13968117570726423276

`A000005(A170818(n+1)²)%A000005(A170818(n+1))`
-/

namespace A267113.P13968117570726423276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (A170818 (n + 1) ^ 2).toNat) (A000005 (A170818 (n + 1)).toNat)

end

end A267113.P13968117570726423276

namespace A267113

/-- `A000005(A170818(n+1)²)%A000005(A170818(n+1))` -/
def P13968117570726423276.Spec : Prop :=
  ∀ n, P13968117570726423276.a n = A267113 (n + 1)

end A267113

/-! ## A267113.P15667327033907249262

`A046080(n+1)%A053670(A316074(n+1))`
-/

namespace A267113.P15667327033907249262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046080 (n + 1)) (A053670 (A316074 (n + 1)).toNat)

end

end A267113.P15667327033907249262

namespace A267113

/-- `A046080(n+1)%A053670(A316074(n+1))` -/
def P15667327033907249262.Spec : Prop :=
  ∀ n, P15667327033907249262.a n = A267113 (n + 1)

end A267113

/-! ## A267113.P5884196782731820073

`A181391(A002654((n+1)²))`
-/

namespace A267113.P5884196782731820073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (A002654 ((n + 1) ^ 2)).toNat

end

end A267113.P5884196782731820073

namespace A267113

/-- `A181391(A002654((n+1)²))` -/
def P5884196782731820073.Spec : Prop :=
  ∀ n, P5884196782731820073.a n = A267113 (n + 1)

end A267113

/-! ## A267113.P8596981127401087888

`A023506(A286361((n+1)²))`
-/

namespace A267113.P8596981127401087888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023506 (A286361 ((n + 1) ^ 2)).toNat

end

end A267113.P8596981127401087888

namespace A267113

/-- `A023506(A286361((n+1)²))` -/
def P8596981127401087888.Spec : Prop :=
  ∀ n, P8596981127401087888.a n = A267113 (n + 1)

end A267113

/-! ## A267113.P6538263571384108952

`A317682(A000925((n+1)²))`
-/

namespace A267113.P6538263571384108952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317682 (A000925 ((n + 1) ^ 2)).toNat

end

end A267113.P6538263571384108952

namespace A267113

/-- `A317682(A000925((n+1)²))` -/
def P6538263571384108952.Spec : Prop :=
  ∀ n, P6538263571384108952.a n = A267113 (n + 1)

end A267113

/-! ## A267113.P8408678196980857536

`val(A000010(A000925((n+1)²)-1), 2)`
-/

namespace A267113.P8408678196980857536
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000010 (A000925 ((n + 1) ^ 2) - 1).toNat).toNat 2

end

end A267113.P8408678196980857536

namespace A267113

/-- `val(A000010(A000925((n+1)²)-1), 2)` -/
def P8408678196980857536.Spec : Prop :=
  ∀ n, (P8408678196980857536.a n : ℤ) = A267113 (n + 1)

end A267113

/-! ## A267113.P4963228065534243622

`A001221(A000203(A000925((n+1)²)-1))`
-/

namespace A267113.P4963228065534243622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000203 (A000925 ((n + 1) ^ 2) - 1).toNat).toNat

end

end A267113.P4963228065534243622

namespace A267113

/-- `A001221(A000203(A000925((n+1)²)-1))` -/
def P4963228065534243622.Spec : Prop :=
  ∀ n, P4963228065534243622.a n = A267113 (n + 1)

end A267113

/-!
# A267114: Numbers n for which A001222(n) = A267115(n) + A267116(n).

The programs for A267114, the canonical program `A267114.P4443725254918860643` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267114 has offset 1).

The definition of A267114 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267114.P4443725254918860643

`eq[A052409(n²+1), A297155(n+1)]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A267114

/-- `eq[A052409(n²+1), A297155(n+1)]+1` -/
def P4443725254918860643.Spec : Prop :=
  ∀ n, (P4443725254918860643.a n : ℤ) = A267114 (n + 1)

theorem P4443725254918860643.correct : P4443725254918860643.Spec := by
  intro n
  simp only [A267114, Nat.add_sub_cancel]

end A267114

/-! ## A267114.P10982636422145292526

`record[A008683(A066048(n+1))*A304233(n+1)]`
-/

namespace A267114.P10982636422145292526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A066048 (n + 1)).toNat * A304233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267114.P10982636422145292526

namespace A267114

/-- `record[A008683(A066048(n+1))*A304233(n+1)]` -/
def P10982636422145292526.Spec : Prop :=
  ∀ n, P10982636422145292526.a n = A267114 (n + 1)

end A267114

/-! ## A267114.P9268164488657101034

`record[gcd(A003418(n), A304233(n+3))]`
-/

namespace A267114.P9268164488657101034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003418 n) (A304233 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267114.P9268164488657101034

namespace A267114

/-- `record[gcd(A003418(n), A304233(n+3))]` -/
def P9268164488657101034.Spec : Prop :=
  ∀ n, (P9268164488657101034.a n : ℤ) = A267114 (n + 1)

end A267114

/-!
# A267115: Bitwise-AND of the exponents of primes in the prime factorization of n, a(1) = 0.

The programs for A267115, the canonical program `A267115.P5978517946942243491` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267115 has offset 1).

The definition of A267115 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267115.P5978517946942243491

`A329615(A238745(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A267115

/-- `A329615(A238745(n+1))` -/
def P5978517946942243491.Spec : Prop :=
  ∀ n, P5978517946942243491.a n = A267115 (n + 1)

theorem P5978517946942243491.correct : P5978517946942243491.Spec := by
  intro n
  simp only [A267115, Nat.add_sub_cancel]

end A267115

/-! ## A267115.P2562814088103924289

`and(A051904(n+1), A051904(A304180(n+1)))`
-/

namespace A267115.P2562814088103924289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051904 (n + 1)) (A051904 (A304180 (n + 1)).toNat)

end

end A267115.P2562814088103924289

namespace A267115

/-- `and(A051904(n+1), A051904(A304180(n+1)))` -/
def P2562814088103924289.Spec : Prop :=
  ∀ n, P2562814088103924289.a n = A267115 (n + 1)

end A267115

/-! ## A267115.P17427483914724033232

`and(A051903(n+1), A051904(A105119(n+1)))`
-/

namespace A267115.P17427483914724033232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051903 (n + 1)) (A051904 (A105119 (n + 1)).toNat)

end

end A267115.P17427483914724033232

namespace A267115

/-- `and(A051903(n+1), A051904(A105119(n+1)))` -/
def P17427483914724033232.Spec : Prop :=
  ∀ n, P17427483914724033232.a n = A267115 (n + 1)

end A267115

/-! ## A267115.P8897451842318838179

`and(A051903(n+1), A051904(A137502(n+1)))`
-/

namespace A267115.P8897451842318838179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051903 (n + 1)) (A051904 (A137502 (n + 1)).toNat)

end

end A267115.P8897451842318838179

namespace A267115

/-- `and(A051903(n+1), A051904(A137502(n+1)))` -/
def P8897451842318838179.Spec : Prop :=
  ∀ n, P8897451842318838179.a n = A267115 (n + 1)

end A267115

/-! ## A267115.P16641287093989872390

`and(A051904(n+1), A051904(A066638(n+1)))`
-/

namespace A267115.P16641287093989872390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051904 (n + 1)) (A051904 (A066638 (n + 1)).toNat)

end

end A267115.P16641287093989872390

namespace A267115

/-- `and(A051904(n+1), A051904(A066638(n+1)))` -/
def P16641287093989872390.Spec : Prop :=
  ∀ n, P16641287093989872390.a n = A267115 (n + 1)

end A267115

/-! ## A267115.P17154313027314700497

`and(A037916(A085079(n+1)), A051904(n+1))`
-/

namespace A267115.P17154313027314700497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037916 (A085079 (n + 1)).toNat) (A051904 (n + 1))

end

end A267115.P17154313027314700497

namespace A267115

/-- `and(A037916(A085079(n+1)), A051904(n+1))` -/
def P17154313027314700497.Spec : Prop :=
  ∀ n, P17154313027314700497.a n = A267115 (n + 1)

end A267115

/-! ## A267115.P8207909805735796505

`and(A051903(n+1), A067029(A085079(n+1)))`
-/

namespace A267115.P8207909805735796505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051903 (n + 1)) (A067029 (A085079 (n + 1)).toNat)

end

end A267115.P8207909805735796505

namespace A267115

/-- `and(A051903(n+1), A067029(A085079(n+1)))` -/
def P8207909805735796505.Spec : Prop :=
  ∀ n, P8207909805735796505.a n = A267115 (n + 1)

end A267115

/-! ## A267115.P2716027268919511246

`and(A001221(A124859(n+1)), A051904(n+1))`
-/

namespace A267115.P2716027268919511246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001221 (A124859 (n + 1)).toNat) (A051904 (n + 1))

end

end A267115.P2716027268919511246

namespace A267115

/-- `and(A001221(A124859(n+1)), A051904(n+1))` -/
def P2716027268919511246.Spec : Prop :=
  ∀ n, P2716027268919511246.a n = A267115 (n + 1)

end A267115

/-! ## A267115.P13775950340948027372

`and(A051904(n+1), A135587(A069626(n+1)))`
-/

namespace A267115.P13775950340948027372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051904 (n + 1)) (A135587 (A069626 (n + 1)).toNat)

end

end A267115.P13775950340948027372

namespace A267115

/-- `and(A051904(n+1), A135587(A069626(n+1)))` -/
def P13775950340948027372.Spec : Prop :=
  ∀ n, P13775950340948027372.a n = A267115 (n + 1)

end A267115

/-! ## A267115.P10706470948962030120

`and(A000030(A320390(n+1)), A052409(n+1))`
-/

namespace A267115.P10706470948962030120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000030 (A320390 (n + 1)).toNat) (A052409 (n + 1))

end

end A267115.P10706470948962030120

namespace A267115

/-- `and(A000030(A320390(n+1)), A052409(n+1))` -/
def P10706470948962030120.Spec : Prop :=
  ∀ n, P10706470948962030120.a n = A267115 (n + 1)

end A267115

/-!
# A267116: Bitwise-OR of the exponents of primes in the prime factorization of n.

The programs for A267116, the canonical program `A267116.P5484407942504602728` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267116 has offset 1).

The definition of A267116 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267116.P13229400404775587869

`A001222(n+1)-A268374(n+1)`
-/

namespace A267116.P13229400404775587869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A268374 (n + 1)

end

end A267116.P13229400404775587869

namespace A267116

/-- `A001222(n+1)-A268374(n+1)` -/
def P13229400404775587869.Spec : Prop :=
  ∀ n, P13229400404775587869.a n = A267116 (n + 1)

theorem P13229400404775587869.correct : P13229400404775587869.Spec := by
  intro n
  simp only [A267116, Nat.add_sub_cancel, A267116.P13229400404775587869.a, A267116.P5484407942504602728.a, A001222, A001222.P11318177267732088261.a, A238745, A238745.P1043070907349583070.a, A268374, A268374.P9921754921464293632.a, A329616, A329616.P252579871882611197.a, A061395, A061395.P8431317036300486107.a, A064989, A064989.P13349672914146769936.a, A122111, A122111.P18124015185857335041.a, A181819, A181819.P15090535388863431201.a, A001511, A001511.P17146462531039486101.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A052126, A052126.P1944428405920482243.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A006519, A006519.P10435570611646570274.a, A006530, A006530.P13372528560459906635.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A158611, A158611.P9275629407611603775.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A267116

/-! ## A267116.P13857945457169125524

`A087207(A293442(n+1))`
-/

namespace A267116.P13857945457169125524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (A293442 (n + 1)).toNat

end

end A267116.P13857945457169125524

namespace A267116

/-- `A087207(A293442(n+1))` -/
def P13857945457169125524.Spec : Prop :=
  ∀ n, P13857945457169125524.a n = A267116 (n + 1)

end A267116

/-! ## A267116.P5484407942504602728

`A329616(A238745(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A267116

/-- `A329616(A238745(n+1))` -/
def P5484407942504602728.Spec : Prop :=
  ∀ n, P5484407942504602728.a n = A267116 (n + 1)

theorem P5484407942504602728.correct : P5484407942504602728.Spec := by
  intro n
  simp only [A267116, Nat.add_sub_cancel]

end A267116

/-! ## A267116.P17845370718952225338

`Δ[A022559(n)]-A268374(n+1)`
-/

namespace A267116.P17845370718952225338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A268374 (n + 1)

end

end A267116.P17845370718952225338

namespace A267116

/-- `Δ[A022559(n)]-A268374(n+1)` -/
def P17845370718952225338.Spec : Prop :=
  ∀ n, P17845370718952225338.a n = A267116 (n + 1)

end A267116

/-! ## A267116.P4620810689877384446

`A048675(A007947(A293442(n+1)²))`
-/

namespace A267116.P4620810689877384446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A007947 (A293442 (n + 1) ^ 2).toNat).toNat

end

end A267116.P4620810689877384446

namespace A267116

/-- `A048675(A007947(A293442(n+1)²))` -/
def P4620810689877384446.Spec : Prop :=
  ∀ n, P4620810689877384446.a n = A267116 (n + 1)

end A267116

/-! ## A267116.P17020290021127751452

`A327041(A297404(n+1))`
-/

namespace A267116.P17020290021127751452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327041 (A297404 (n + 1)).toNat

end

end A267116.P17020290021127751452

namespace A267116

/-- `A327041(A297404(n+1))` -/
def P17020290021127751452.Spec : Prop :=
  ∀ n, P17020290021127751452.a n = A267116 (n + 1)

end A267116

/-! ## A267116.P6974989853583594326

`or(A052409(n+1), A061395(A293514(n+1)))`
-/

namespace A267116.P6974989853583594326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A052409 (n + 1)) (A061395 (A293514 (n + 1)).toNat)

end

end A267116.P6974989853583594326

namespace A267116

/-- `or(A052409(n+1), A061395(A293514(n+1)))` -/
def P6974989853583594326.Spec : Prop :=
  ∀ n, P6974989853583594326.a n = A267116 (n + 1)

end A267116

/-! ## A267116.P4889129534802873465

`A051903((n+1)*A066636(A356191(n+1)))`
-/

namespace A267116.P4889129534802873465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 ((n + 1 : ℤ) * A066636 (A356191 (n + 1)).toNat).toNat

end

end A267116.P4889129534802873465

namespace A267116

/-- `A051903((n+1)*A066636(A356191(n+1)))` -/
def P4889129534802873465.Spec : Prop :=
  ∀ n, P4889129534802873465.a n = A267116 (n + 1)

end A267116

/-! ## A267116.P8941765449766401261

`A329616(A381431(n+1))`
-/

namespace A267116.P8941765449766401261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329616 (A381431 (n + 1)).toNat

end

end A267116.P8941765449766401261

namespace A267116

/-- `A329616(A381431(n+1))` -/
def P8941765449766401261.Spec : Prop :=
  ∀ n, P8941765449766401261.a n = A267116 (n + 1)

end A267116

/-! ## A267116.P10402916046589963319

`A329616(A181819(A108951(A181819(n+1))))`
-/

namespace A267116.P10402916046589963319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329616 (A181819 (A108951 (A181819 (n + 1)).toNat).toNat).toNat

end

end A267116.P10402916046589963319

namespace A267116

/-- `A329616(A181819(A108951(A181819(n+1))))` -/
def P10402916046589963319.Spec : Prop :=
  ∀ n, P10402916046589963319.a n = A267116 (n + 1)

end A267116

/-!
# A267117: Numbers m such that in their prime factorization m = p_1^e_1 * ... * p_k^e_k, there is no digit-position in the base-2 representation of the exponents e_1 .. e_k such that in that position all those exponents would have 1-bit.

The programs for A267117, the canonical program `A267117.P18276478049545818098` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267117 has offset 1).

The definition of A267117 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2824 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267117.P18276478049545818098

`lt[A267115(n+1), 1]+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A267117

/-- `lt[A267115(n+1), 1]+1` -/
def P18276478049545818098.Spec : Prop :=
  ∀ n, (P18276478049545818098.a n : ℤ) = A267117 (n + 1)

theorem P18276478049545818098.correct : P18276478049545818098.Spec := by
  intro n
  simp only [A267117, Nat.add_sub_cancel]

end A267117

/-! ## A267117.P4987699285668213403

`record[n+1-A166444(9*A267115(n+1))]`
-/

namespace A267117.P4987699285668213403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A166444 (9 * A267115 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267117.P4987699285668213403

namespace A267117

/-- `record[n+1-A166444(9*A267115(n+1))]` -/
def P4987699285668213403.Spec : Prop :=
  ∀ n, P4987699285668213403.a n = A267117 (n + 1)

end A267117

/-! ## A267117.P18399634488117000301

`record[(n+1)/A256483(6*A267115(n+1)+1)]`
-/

namespace A267117.P18399634488117000301
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A256483 (6 * A267115 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267117.P18399634488117000301

namespace A267117

/-- `record[(n+1)/A256483(6*A267115(n+1)+1)]` -/
def P18399634488117000301.Spec : Prop :=
  ∀ n, P18399634488117000301.a n = (A267117 (n + 1) : ℚ)

end A267117

/-! ## A267117.P2262795716555163322

`record[gcd(n+1, A267115(6*A267115(n+1)+1))]`
-/

namespace A267117.P2262795716555163322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A267115 (6 * A267115 (n + 1) + 1).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267117.P2262795716555163322

namespace A267117

/-- `record[gcd(n+1, A267115(6*A267115(n+1)+1))]` -/
def P2262795716555163322.Spec : Prop :=
  ∀ n, (P2262795716555163322.a n : ℤ) = A267117 (n + 1)

end A267117

/-! ## A267117.P17051836021536911246

`record[n+1-A000040(n+1)*A267115(n+1)]`
-/

namespace A267117.P17051836021536911246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000040 (n + 1) * A267115 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267117.P17051836021536911246

namespace A267117

/-- `record[n+1-A000040(n+1)*A267115(n+1)]` -/
def P17051836021536911246.Spec : Prop :=
  ∀ n, P17051836021536911246.a n = A267117 (n + 1)

end A267117

/-! ## A267117.P13561031026369336340

`record[(n+1)*A010816(A267115(n+1)²²)]`
-/

namespace A267117.P13561031026369336340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A010816 ((A267115 (n + 1) ^ 2) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267117.P13561031026369336340

namespace A267117

/-- `record[(n+1)*A010816(A267115(n+1)²²)]` -/
def P13561031026369336340.Spec : Prop :=
  ∀ n, P13561031026369336340.a n = A267117 (n + 1)

end A267117

/-!
# A267121: Number of ordered ways to write n as x^2 + y^2 + z^2 + w^2 with x*y*z*(x+9*y+11*z+10*w) a square, where x is a positive integer and y,z,w are nonnegative integers.

The programs for A267121, there is no canonical definition to state claims against.
-/

/-! ## A267121.P3972292045273618555

`∑{e}[A335934(A261876(n+1)), #]`
-/

namespace A267121.P3972292045273618555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335934 (A261876 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A267121.P3972292045273618555

/-! ## A267121.P18321654067660911227

`A351715(A261876(n+1))%A235815(3*(n+1))`
-/

namespace A267121.P18321654067660911227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351715 (A261876 (n + 1)).toNat) (A235815 (3 * (n + 1)))

end

end A267121.P18321654067660911227

/-! ## A267121.P6375338260044090629

`A258996(A261876(n+1))%A153724(n+2)`
-/

namespace A267121.P6375338260044090629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258996 (A261876 (n + 1)).toNat) (A153724 (n + 2))

end

end A267121.P6375338260044090629

/-!
# A267124: Primitive practical numbers: practical numbers that are squarefree or practical numbers that when divided by any of its prime factors whose factorization exponent is greater than 1 is no longer practical.

The programs for A267124, there is no canonical definition to state claims against.
-/

/-! ## A267124.P2718518056914223609

`record[A379325(n+1)]`
-/

namespace A267124.P2718518056914223609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379325 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267124.P2718518056914223609

/-! ## A267124.P9577360613963816726

`filter[A005153(n+1), A378454(#)]`
-/

namespace A267124.P9577360613963816726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378454 (f1 j).toNat = 1) n)

end

end A267124.P9577360613963816726

/-! ## A267124.P5784360659294502151

`record[A005153(n+1)/A377377(n+1)]`
-/

namespace A267124.P5784360659294502151
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005153 (n + 1) : ℚ) / (A377377 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267124.P5784360659294502151

/-! ## A267124.P212916957211085803

`filter[A093891(n+1), A378454(#)]`
-/

namespace A267124.P212916957211085803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378454 (f1 j).toNat = 1) n)

end

end A267124.P212916957211085803

/-! ## A267124.P11681737028198861232

`filter[A196149(n+1), A378454(#)]`
-/

namespace A267124.P11681737028198861232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196149 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378454 (f1 j).toNat = 1) n)

end

end A267124.P11681737028198861232

/-! ## A267124.P16790724586818626782

`filter[A363227(n+1), A378454(#)]`
-/

namespace A267124.P16790724586818626782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378454 (f1 j).toNat = 1) n)

end

end A267124.P16790724586818626782

/-! ## A267124.P14983960887386185717

`filter[A103288(n+1), A378454(#)]`
-/

namespace A267124.P14983960887386185717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378454 (f1 j).toNat = 1) n)

end

end A267124.P14983960887386185717

/-! ## A267124.P14252030802103376790

`filter[A175495(n+1), A378454(#)]`
-/

namespace A267124.P14252030802103376790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175495 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378454 (f1 j).toNat = 1) n)

end

end A267124.P14252030802103376790

/-! ## A267124.P14361839307398925916

`filter[A004277(n), A378454(#)]`
-/

namespace A267124.P14361839307398925916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378454 (f1 j).toNat = 1) n)

end

end A267124.P14361839307398925916

/-! ## A267124.P2400569380800051516

`filter[A004279(n), A378454(#)]`
-/

namespace A267124.P2400569380800051516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004279 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378454 (f1 j).toNat = 1) n)

end

end A267124.P2400569380800051516

/-! ## A267124.P7418483553738646978

`filter[A004271(n+1), A378454(#)]`
-/

namespace A267124.P7418483553738646978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378454 (f1 j).toNat = 1) n)

end

end A267124.P7418483553738646978

/-! ## A267124.P7930606857672953731

`filter[A004272(n+1), A378454(#)]`
-/

namespace A267124.P7930606857672953731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378454 (f1 j).toNat = 1) n)

end

end A267124.P7930606857672953731

/-! ## A267124.P14006240835502934903

`filter[A004275(n+1), A378454(#)]`
-/

namespace A267124.P14006240835502934903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378454 (f1 j).toNat = 1) n)

end

end A267124.P14006240835502934903

/-! ## A267124.P13921128787631766804

`filter[A004278(n+1), A378454(#)]`
-/

namespace A267124.P13921128787631766804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378454 (f1 j).toNat = 1) n)

end

end A267124.P13921128787631766804

/-! ## A267124.P4786229343789669725

`filter[A064745(n+1), A378454(#)]`
-/

namespace A267124.P4786229343789669725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378454 (f1 j).toNat = 1) n)

end

end A267124.P4786229343789669725

/-! ## A267124.P12372795969439661722

`filter[A332535(n+1), A378454(#)]`
-/

namespace A267124.P12372795969439661722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332535 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378454 (f1 j).toNat = 1) n)

end

end A267124.P12372795969439661722

/-! ## A267124.P12756382652856273409

`filter[A066507(n+1), A378454(#)]`
-/

namespace A267124.P12756382652856273409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066507 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378454 (f1 j).toNat = 1) n)

end

end A267124.P12756382652856273409

/-! ## A267124.P8414850774762387008

`record[record[A327832(n+1)]/A377377(n+1)]`
-/

namespace A267124.P8414850774762387008
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327832 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℚ) / (A377377 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267124.P8414850774762387008

/-! ## A267124.P12982946809836136823

`record[record[n%A225561(n+1)+1]/A377377(n+1)]`
-/

namespace A267124.P12982946809836136823
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A225561 (n + 1)) + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℚ) / (A377377 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267124.P12982946809836136823

/-! ## A267124.P12851298595016330853

`filter[A125225(n+1), A378454(#)]`
-/

namespace A267124.P12851298595016330853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378454 (f1 j).toNat = 1) n)

end

end A267124.P12851298595016330853

/-!
# A267126: Triangle read by rows giving successive states of cellular automaton generated by "Rule 99" initiated with a single ON (black) cell.

The programs for A267126, there is no canonical definition to state claims against.
-/

/-! ## A267126.P9261165076116253894

`A266672(A020703(n+1)-1)`
-/

namespace A267126.P9261165076116253894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266672 (A020703 (n + 1) - 1).toNat

end

end A267126.P9261165076116253894

/-! ## A267126.P16074433380392599190

`A266672(A020703(n+2)%A218506(n+2))`
-/

namespace A267126.P16074433380392599190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266672 (Int.tmod (A020703 (n + 2)) (A218506 (n + 2))).toNat

end

end A267126.P16074433380392599190

/-! ## A267126.P3337435869394128390

`A010060(and(A022706(n), A070865(3*(n+1))))`
-/

namespace A267126.P3337435869394128390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (Int.land (A022706 n) (A070865 (3 * (n + 1)))).toNat

end

end A267126.P3337435869394128390

/-! ## A267126.P8721060619439140819

`A004585(A287915(n+2))`
-/

namespace A267126.P8721060619439140819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004585 (A287915 (n + 2)).toNat

end

end A267126.P8721060619439140819

/-! ## A267126.P7095668542594803197

`A128174(or(A000070(n), A345238(n+1)))`
-/

namespace A267126.P7095668542594803197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (Int.lor (A000070 n) (A345238 (n + 1))).toNat

end

end A267126.P7095668542594803197

/-!
# A267127: Binary representation of the n-th iteration of the "Rule 99" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267127, there is no canonical definition to state claims against.
-/

/-! ## A267127.P15971874008963148590

`A007088(A267128(n))`
-/

namespace A267127.P15971874008963148590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A267128 n).toNat

end

end A267127.P15971874008963148590

/-! ## A267127.P4899621742317673849

`A185544(2*A267128(n))`
-/

namespace A267127.P4899621742317673849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A267128 n).toNat

end

end A267127.P4899621742317673849

/-!
# A267129: Triangle read by rows giving successive states of cellular automaton generated by "Rule 101" initiated with a single ON (black) cell.

The programs for A267129, there is no canonical definition to state claims against.
-/

/-! ## A267129.P13135869895678152614

`A266619(A020703(n+1)-1)`
-/

namespace A267129.P13135869895678152614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266619 (A020703 (n + 1) - 1).toNat

end

end A267129.P13135869895678152614

/-! ## A267129.P17957100429865366807

`A266619(n-2*A196199(n))`
-/

namespace A267129.P17957100429865366807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266619 ((n : ℤ) - 2 * A196199 n).toNat

end

end A267129.P17957100429865366807

/-! ## A267129.P6034445884340424525

`A266619(A260196(n)+A020703(n+1))`
-/

namespace A267129.P6034445884340424525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266619 (A260196 n + A020703 (n + 1)).toNat

end

end A267129.P6034445884340424525

/-! ## A267129.P1932089561809314295

`A266619(n-A196199(n)-A196199(n))`
-/

namespace A267129.P1932089561809314295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266619 ((n : ℤ) - A196199 n - A196199 n).toNat

end

end A267129.P1932089561809314295

/-! ## A267129.P11999193139911336952

`A266619(A020703(n+2)%A020703(2*(n+1)))`
-/

namespace A267129.P11999193139911336952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266619 (Int.tmod (A020703 (n + 2)) (A020703 (2 * (n + 1)))).toNat

end

end A267129.P11999193139911336952

/-! ## A267129.P18233411750560855638

`char[A020703(n+2)*A266619(n)]`
-/

namespace A267129.P18233411750560855638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020703 (n + 2) * A266619 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A267129.P18233411750560855638

/-! ## A267129.P2798605904005166356

`A266619(A020703(n+2)%A097275(n))`
-/

namespace A267129.P2798605904005166356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266619 (Int.tmod (A020703 (n + 2)) (A097275 n)).toNat

end

end A267129.P2798605904005166356

/-!
# A267130: Binary representation of the n-th iteration of the "Rule 101" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267130, there is no canonical definition to state claims against.
-/

/-! ## A267130.P3183490411866709601

`A007088(A267131(n))`
-/

namespace A267130.P3183490411866709601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A267131 n).toNat

end

end A267130.P3183490411866709601

/-! ## A267130.P11470952106900899355

`A185544(2*A267131(n))`
-/

namespace A267130.P11470952106900899355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A267131 n).toNat

end

end A267130.P11470952106900899355

/-!
# A267131: Decimal representation of the n-th iteration of the "Rule 101" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267131, there is no canonical definition to state claims against.
-/

/-! ## A267131.P6037524484638248442

`A248035(A080542(n+1)+A024283(n))`
-/

namespace A267131.P6037524484638248442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248035 (A080542 (n + 1) + A024283 n).toNat

end

end A267131.P6037524484638248442

/-!
# A267133: a(n) = (1/n)(2/n)(3/n)...((n-1)/n) where (k/n) is the Kronecker symbol, n >= 1.

The programs for A267133, the canonical program `A267133.P17409310186168175534` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267133 has offset 1).

The definition of A267133 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080339, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A267133.P17409310186168175534

`A057077(n+4)*A080339(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A267133

/-- `A057077(n+4)*A080339(n+1)` -/
def P17409310186168175534.Spec : Prop :=
  ∀ n, P17409310186168175534.a n = A267133 (n + 1)

theorem P17409310186168175534.correct : P17409310186168175534.Spec := by
  intro n
  simp only [A267133, Nat.add_sub_cancel]

end A267133

/-! ## A267133.P9958612139705332851

`A151763(n+1)+C(n, n²)`
-/

namespace A267133.P9958612139705332851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151763 (n + 1) + (Nat.choose n (n ^ 2) : ℤ)

end

end A267133.P9958612139705332851

namespace A267133

/-- `A151763(n+1)+C(n, n²)` -/
def P9958612139705332851.Spec : Prop :=
  ∀ n, P9958612139705332851.a n = A267133 (n + 1)

end A267133

/-! ## A267133.P12029679433015090992

`(A066247(n+1)-1)^C(n, 2)`
-/

namespace A267133.P12029679433015090992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A066247 (n + 1) - 1) ^ Nat.choose n 2

end

end A267133.P12029679433015090992

namespace A267133

/-- `(A066247(n+1)-1)^C(n, 2)` -/
def P12029679433015090992.Spec : Prop :=
  ∀ n, P12029679433015090992.a n = A267133 (n + 1)

end A267133

/-! ## A267133.P394484499063678864

`round((1-and(2, n))/A000005(n+1))`
-/

namespace A267133.P394484499063678864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((1 - (Nat.land 2 n : ℤ) : ℚ) / (A000005 (n + 1) : ℚ))

end

end A267133.P394484499063678864

namespace A267133

/-- `round((1-and(2, n))/A000005(n+1))` -/
def P394484499063678864.Spec : Prop :=
  ∀ n, P394484499063678864.a n = A267133 (n + 1)

end A267133

/-! ## A267133.P10960137564362033086

`round((1-and(2, n))/A015999(n+1))`
-/

namespace A267133.P10960137564362033086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((1 - (Nat.land 2 n : ℤ) : ℚ) / (A015999 (n + 1) : ℚ))

end

end A267133.P10960137564362033086

namespace A267133

/-- `round((1-and(2, n))/A015999(n+1))` -/
def P10960137564362033086.Spec : Prop :=
  ∀ n, P10960137564362033086.a n = A267133 (n + 1)

end A267133

/-! ## A267133.P5744696587865054890

`round((1-and(2, n))/A016007(n+1))`
-/

namespace A267133.P5744696587865054890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((1 - (Nat.land 2 n : ℤ) : ℚ) / (A016007 (n + 1) : ℚ))

end

end A267133.P5744696587865054890

namespace A267133

/-- `round((1-and(2, n))/A016007(n+1))` -/
def P5744696587865054890.Spec : Prop :=
  ∀ n, P5744696587865054890.a n = A267133 (n + 1)

end A267133

/-! ## A267133.P10939123583064543300

`round((1-and(2, n))/A046523(n+1))`
-/

namespace A267133.P10939123583064543300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((1 - (Nat.land 2 n : ℤ) : ℚ) / (A046523 (n + 1) : ℚ))

end

end A267133.P10939123583064543300

namespace A267133

/-- `round((1-and(2, n))/A046523(n+1))` -/
def P10939123583064543300.Spec : Prop :=
  ∀ n, P10939123583064543300.a n = A267133 (n + 1)

end A267133

/-! ## A267133.P2742002392528941729

`round((1-and(2, n))/A101296(n+1))`
-/

namespace A267133.P2742002392528941729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((1 - (Nat.land 2 n : ℤ) : ℚ) / (A101296 (n + 1) : ℚ))

end

end A267133.P2742002392528941729

namespace A267133

/-- `round((1-and(2, n))/A101296(n+1))` -/
def P2742002392528941729.Spec : Prop :=
  ∀ n, P2742002392528941729.a n = A267133 (n + 1)

end A267133

/-! ## A267133.P8040073861673735991

`round((1-and(2, n))/(A001222(n+1)+1))`
-/

namespace A267133.P8040073861673735991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((1 - (Nat.land 2 n : ℤ) : ℚ) / (A001222 (n + 1) + 1 : ℚ))

end

end A267133.P8040073861673735991

namespace A267133

/-- `round((1-and(2, n))/(A001222(n+1)+1))` -/
def P8040073861673735991.Spec : Prop :=
  ∀ n, P8040073861673735991.a n = A267133 (n + 1)

end A267133

/-! ## A267133.P15689079003476782720

`A009001(n)*A080339(n+1)`
-/

namespace A267133.P15689079003476782720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 n * A080339 (n + 1)

end

end A267133.P15689079003476782720

namespace A267133

/-- `A009001(n)*A080339(n+1)` -/
def P15689079003476782720.Spec : Prop :=
  ∀ n, P15689079003476782720.a n = A267133 (n + 1)

end A267133

/-! ## A267133.P14843022206048675354

`A080339(n+1)*A253414(n)`
-/

namespace A267133.P14843022206048675354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (n + 1) * A253414 n

end

end A267133.P14843022206048675354

namespace A267133

/-- `A080339(n+1)*A253414(n)` -/
def P14843022206048675354.Spec : Prop :=
  ∀ n, P14843022206048675354.a n = A267133 (n + 1)

end A267133

/-! ## A267133.P13085154685839265751

`round(A057077(n)/A280583(n+1))`
-/

namespace A267133.P13085154685839265751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A057077 n : ℚ) / (A280583 (n + 1) : ℚ))

end

end A267133.P13085154685839265751

namespace A267133

/-- `round(A057077(n)/A280583(n+1))` -/
def P13085154685839265751.Spec : Prop :=
  ∀ n, P13085154685839265751.a n = A267133 (n + 1)

end A267133

/-! ## A267133.P10605671673910095556

`A151763(n+1)+char[A151811(n)]`
-/

namespace A267133.P10605671673910095556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151811 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151763 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A267133.P10605671673910095556

namespace A267133

/-- `A151763(n+1)+char[A151811(n)]` -/
def P10605671673910095556.Spec : Prop :=
  ∀ n, P10605671673910095556.a n = A267133 (n + 1)

end A267133

/-! ## A267133.P15870456569199322962

`A151763(n+1)+char[A151812(n)]`
-/

namespace A267133.P15870456569199322962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151812 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151763 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A267133.P15870456569199322962

namespace A267133

/-- `A151763(n+1)+char[A151812(n)]` -/
def P15870456569199322962.Spec : Prop :=
  ∀ n, P15870456569199322962.a n = A267133 (n + 1)

end A267133

/-! ## A267133.P12623420364942361676

`A151763(n+1)+char[A151815(n)]`
-/

namespace A267133.P12623420364942361676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151815 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151763 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A267133.P12623420364942361676

namespace A267133

/-- `A151763(n+1)+char[A151815(n)]` -/
def P12623420364942361676.Spec : Prop :=
  ∀ n, P12623420364942361676.a n = A267133 (n + 1)

end A267133

/-! ## A267133.P15858938279638134797

`A151763(n+1)+A019590(n+1)`
-/

namespace A267133.P15858938279638134797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151763 (n + 1) + A019590 (n + 1)

end

end A267133.P15858938279638134797

namespace A267133

/-- `A151763(n+1)+A019590(n+1)` -/
def P15858938279638134797.Spec : Prop :=
  ∀ n, P15858938279638134797.a n = A267133 (n + 1)

end A267133

/-! ## A267133.P15017237308050686055

`A034947(n+1)*A080339(n+1)`
-/

namespace A267133.P15017237308050686055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1) * A080339 (n + 1)

end

end A267133.P15017237308050686055

namespace A267133

/-- `A034947(n+1)*A080339(n+1)` -/
def P15017237308050686055.Spec : Prop :=
  ∀ n, P15017237308050686055.a n = A267133 (n + 1)

end A267133

/-! ## A267133.P14059343306262955322

`or(A080339(n+1), A151763(n+1))`
-/

namespace A267133.P14059343306262955322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A080339 (n + 1)) (A151763 (n + 1))

end

end A267133.P14059343306262955322

namespace A267133

/-- `or(A080339(n+1), A151763(n+1))` -/
def P14059343306262955322.Spec : Prop :=
  ∀ n, P14059343306262955322.a n = A267133 (n + 1)

end A267133

/-! ## A267133.P4186294028394563076

`A000007(A070824(n+1))*A057077(n)`
-/

namespace A267133.P4186294028394563076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A070824 (n + 1)).toNat * A057077 n

end

end A267133.P4186294028394563076

namespace A267133

/-- `A000007(A070824(n+1))*A057077(n)` -/
def P4186294028394563076.Spec : Prop :=
  ∀ n, P4186294028394563076.a n = A267133 (n + 1)

end A267133

/-! ## A267133.P14304754932751959484

`A151763(n+1)+A080339(n+1)*A080339(n+2)`
-/

namespace A267133.P14304754932751959484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151763 (n + 1) + A080339 (n + 1) * A080339 (n + 2)

end

end A267133.P14304754932751959484

namespace A267133

/-- `A151763(n+1)+A080339(n+1)*A080339(n+2)` -/
def P14304754932751959484.Spec : Prop :=
  ∀ n, P14304754932751959484.a n = A267133 (n + 1)

end A267133

/-!
# A267134: a(n) = n minus the number of primes of form 6m + 1 that are less than n-th prime of form 6m - 1.

The programs for A267134, the canonical program `A267134.P15213870686594157141` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267134 has offset 1).

The definition of A267134 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267134.P14461009678981614681

`∑[2-Δ[A133677(n+2)]]`
-/

namespace A267134.P14461009678981614681
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133677 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267134.P14461009678981614681

namespace A267134

/-- `∑[2-Δ[A133677(n+2)]]` -/
def P14461009678981614681.Spec : Prop :=
  ∀ n, P14461009678981614681.a n = A267134 (n + 1)

end A267134

/-! ## A267134.P10429048577820567232

`2*(n+2)-A091177(n+2)`
-/

namespace A267134.P10429048577820567232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 2) : ℤ) - A091177 (n + 2)

end

end A267134.P10429048577820567232

namespace A267134

/-- `2*(n+2)-A091177(n+2)` -/
def P10429048577820567232.Spec : Prop :=
  ∀ n, P10429048577820567232.a n = A267134 (n + 1)

end A267134

/-! ## A267134.P1505331594472693760

`2*(n+2)-A133677(n+3)`
-/

namespace A267134.P1505331594472693760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 2) : ℤ) - A133677 (n + 3)

end

end A267134.P1505331594472693760

namespace A267134

/-- `2*(n+2)-A133677(n+3)` -/
def P1505331594472693760.Spec : Prop :=
  ∀ n, P1505331594472693760.a n = A267134 (n + 1)

end A267134

/-! ## A267134.P15213870686594157141

`Δ[n²]-eq[5, A039704(n+3)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A267134

/-- `Δ[n²]-eq[5, A039704(n+3)]` -/
def P15213870686594157141.Spec : Prop :=
  ∀ n, P15213870686594157141.a n = A267134 (n + 1)

theorem P15213870686594157141.correct : P15213870686594157141.Spec := by
  intro n
  simp only [A267134, Nat.add_sub_cancel]

end A267134

/-! ## A267134.P16230980214108358965

`(2*n+3)%eq[5, A039704(n+1)]`
-/

namespace A267134.P16230980214108358965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039704 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 3) % SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A267134.P16230980214108358965

namespace A267134

/-- `(2*n+3)%eq[5, A039704(n+1)]` -/
def P16230980214108358965.Spec : Prop :=
  ∀ n, (P16230980214108358965.a n : ℤ) = A267134 (n + 1)

end A267134

/-! ## A267134.P9031424983586944928

`a(n-1)+2-Δ[A091177(n+1)]` with `a(0)=1`
-/

namespace A267134.P9031424983586944928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091177 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 2 - (f1 (n + 1) - f1 n)

end

end A267134.P9031424983586944928

namespace A267134

/-- `a(n-1)+2-Δ[A091177(n+1)]` -/
def P9031424983586944928.Spec : Prop :=
  ∀ n, P9031424983586944928.a n = A267134 (n + 1)

end A267134

/-! ## A267134.P8940937633548101856

`2*(n+1)-eq[2, A000040(n+2)%3]`
-/

namespace A267134.P8940937633548101856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A267134.P8940937633548101856

namespace A267134

/-- `2*(n+1)-eq[2, A000040(n+2)%3]` -/
def P8940937633548101856.Spec : Prop :=
  ∀ n, P8940937633548101856.a n = A267134 (n + 1)

end A267134

/-! ## A267134.P17862156511315292902

`A112632(A138969(n+2))`
-/

namespace A267134.P17862156511315292902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112632 (A138969 (n + 2)).toNat

end

end A267134.P17862156511315292902

namespace A267134

/-- `A112632(A138969(n+2))` -/
def P17862156511315292902.Spec : Prop :=
  ∀ n, P17862156511315292902.a n = A267134 (n + 1)

end A267134

/-! ## A267134.P13188141599164406827

`A174695(A091177(n+2))`
-/

namespace A267134.P13188141599164406827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174695 (A091177 (n + 2)).toNat

end

end A267134.P13188141599164406827

namespace A267134

/-- `A174695(A091177(n+2))` -/
def P13188141599164406827.Spec : Prop :=
  ∀ n, P13188141599164406827.a n = A267134 (n + 1)

end A267134

/-! ## A267134.P1925501259314539258

`A174695(A133677(n+3))`
-/

namespace A267134.P1925501259314539258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174695 (A133677 (n + 3)).toNat

end

end A267134.P1925501259314539258

namespace A267134

/-- `A174695(A133677(n+3))` -/
def P1925501259314539258.Spec : Prop :=
  ∀ n, P1925501259314539258.a n = A267134 (n + 1)

end A267134

/-! ## A267134.P17799827471700033992

`A112632(A091177(n+2)-1)`
-/

namespace A267134.P17799827471700033992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112632 (A091177 (n + 2) - 1).toNat

end

end A267134.P17799827471700033992

namespace A267134

/-- `A112632(A091177(n+2)-1)` -/
def P17799827471700033992.Spec : Prop :=
  ∀ n, P17799827471700033992.a n = A267134 (n + 1)

end A267134

/-! ## A267134.P3438807515766204797

`A321856(A003627(n+2)-1)`
-/

namespace A267134.P3438807515766204797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321856 (A003627 (n + 2) - 1).toNat

end

end A267134.P3438807515766204797

namespace A267134

/-- `A321856(A003627(n+2)-1)` -/
def P3438807515766204797.Spec : Prop :=
  ∀ n, P3438807515766204797.a n = A267134 (n + 1)

end A267134

/-! ## A267134.P10719185892062186918

`A112632(eq[5, A039704(n+1)])`
-/

namespace A267134.P10719185892062186918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039704 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112632 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267134.P10719185892062186918

namespace A267134

/-- `A112632(eq[5, A039704(n+1)])` -/
def P10719185892062186918.Spec : Prop :=
  ∀ n, P10719185892062186918.a n = A267134 (n + 1)

end A267134

/-! ## A267134.P879298196623281538

`1-A340763(A007528(n+1))+n`
-/

namespace A267134.P879298196623281538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A340763 (A007528 (n + 1)).toNat + (n : ℤ)

end

end A267134.P879298196623281538

namespace A267134

/-- `1-A340763(A007528(n+1))+n` -/
def P879298196623281538.Spec : Prop :=
  ∀ n, P879298196623281538.a n = A267134 (n + 1)

end A267134

/-! ## A267134.P16216567321000413127

`n+1-A340763(A045309(n+3))`
-/

namespace A267134.P16216567321000413127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A340763 (A045309 (n + 3)).toNat

end

end A267134.P16216567321000413127

namespace A267134

/-- `n+1-A340763(A045309(n+3))` -/
def P16216567321000413127.Spec : Prop :=
  ∀ n, P16216567321000413127.a n = A267134 (n + 1)

end A267134

/-! ## A267134.P2859053790858017357

`A112632(eq[1, A039701(n+2)-1]+1)`
-/

namespace A267134.P2859053790858017357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039701 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112632 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A267134.P2859053790858017357

namespace A267134

/-- `A112632(eq[1, A039701(n+2)-1]+1)` -/
def P2859053790858017357.Spec : Prop :=
  ∀ n, P2859053790858017357.a n = A267134 (n + 1)

end A267134

/-! ## A267134.P6861819027599193399

`A065475(2*(n+1))-A138969(n+2)`
-/

namespace A267134.P6861819027599193399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (2 * (n + 1)) - A138969 (n + 2)

end

end A267134.P6861819027599193399

namespace A267134

/-- `A065475(2*(n+1))-A138969(n+2)` -/
def P6861819027599193399.Spec : Prop :=
  ∀ n, P6861819027599193399.a n = A267134 (n + 1)

end A267134

/-! ## A267134.P4492570783334829973

`A174695(A230980(p?[A166304(n)]))`
-/

namespace A267134.P4492570783334829973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166304 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174695 (A230980 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A267134.P4492570783334829973

namespace A267134

/-- `A174695(A230980(p?[A166304(n)]))` -/
def P4492570783334829973.Spec : Prop :=
  ∀ n, P4492570783334829973.a n = A267134 (n + 1)

end A267134

/-! ## A267134.P9214837474625023464

`A112632(eq[A112632(n+1), A174695(n+2)]+1)`
-/

namespace A267134.P9214837474625023464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174695 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112632 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A267134.P9214837474625023464

namespace A267134

/-- `A112632(eq[A112632(n+1), A174695(n+2)]+1)` -/
def P9214837474625023464.Spec : Prop :=
  ∀ n, P9214837474625023464.a n = A267134 (n + 1)

end A267134

/-!
# A267135: a(n) = n minus the number of primes of form 4m + 1 that are less than n-th prime of form 4m + 3.

The programs for A267135, the canonical program `A267135.P1163518685697158345` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267135 has offset 1).

The definition of A267135 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267135.P1163518685697158345

`2*(n+1)-A138971(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A267135

/-- `2*(n+1)-A138971(n+1)` -/
def P1163518685697158345.Spec : Prop :=
  ∀ n, P1163518685697158345.a n = A267135 (n + 1)

theorem P1163518685697158345.correct : P1163518685697158345.Spec := by
  intro n
  simp only [A267135, Nat.add_sub_cancel]

end A267135

/-! ## A267135.P13113214462464343320

`2*n+3-A080148(n+1)`
-/

namespace A267135.P13113214462464343320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (3 - A080148 (n + 1))

end

end A267135.P13113214462464343320

namespace A267135

/-- `2*n+3-A080148(n+1)` -/
def P13113214462464343320.Spec : Prop :=
  ∀ n, P13113214462464343320.a n = A267135 (n + 1)

theorem P13113214462464343320.correct : P13113214462464343320.Spec := by
  intro n
  simp only [A267135, Nat.add_sub_cancel, A267135.P13113214462464343320.a, A267135.P1163518685697158345.a, A080148, A080148.P13293786807354433186.a, A138971, A138971.P14613520405082129352.a, A002145, A002145.P4185971227795926526.f1, A002145.P4185971227795926526.a, A049084, A049084.P10934933317972537770.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A010051, A010051.P15078252821583414300.a, A100995, A100995.P9596901243079307024.f1, A100995.P9596901243079307024.a, A193056, A193056.P6449544040074946363.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A267135

/-! ## A267135.P15590606715349666804

`A038698(A080148(n+1))`
-/

namespace A267135.P15590606715349666804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038698 (A080148 (n + 1)).toNat

end

end A267135.P15590606715349666804

namespace A267135

/-- `A038698(A080148(n+1))` -/
def P15590606715349666804.Spec : Prop :=
  ∀ n, P15590606715349666804.a n = A267135 (n + 1)

end A267135

/-! ## A267135.P8569604659442004750

`A144396(n+1)-A080148(n+1)`
-/

namespace A267135.P8569604659442004750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1) - A080148 (n + 1)

end

end A267135.P8569604659442004750

namespace A267135

/-- `A144396(n+1)-A080148(n+1)` -/
def P8569604659442004750.Spec : Prop :=
  ∀ n, P8569604659442004750.a n = A267135 (n + 1)

theorem P8569604659442004750.correct : P8569604659442004750.Spec := by
  intro n
  simp only [A267135, Nat.add_sub_cancel, A267135.P8569604659442004750.a, A267135.P1163518685697158345.a, A080148, A080148.P13293786807354433186.a, A138971, A138971.P14613520405082129352.a, A144396, A144396.P18396969748453668116.a, A002145, A002145.P4185971227795926526.f1, A002145.P4185971227795926526.a, A049084, A049084.P10934933317972537770.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A010051, A010051.P15078252821583414300.a, A100995, A100995.P9596901243079307024.f1, A100995.P9596901243079307024.a, A193056, A193056.P6449544040074946363.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A267135

/-! ## A267135.P12898280273496206251

`A144396(n+1)-A332807(2*(n+1))`
-/

namespace A267135.P12898280273496206251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1) - A332807 (2 * (n + 1))

end

end A267135.P12898280273496206251

namespace A267135

/-- `A144396(n+1)-A332807(2*(n+1))` -/
def P12898280273496206251.Spec : Prop :=
  ∀ n, P12898280273496206251.a n = A267135 (n + 1)

end A267135

/-! ## A267135.P4630828794067588968

`A020725(n+1)-A138971(n+1)+n`
-/

namespace A267135.P4630828794067588968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (n + 1) - A138971 (n + 1) + (n : ℤ)

end

end A267135.P4630828794067588968

namespace A267135

/-- `A020725(n+1)-A138971(n+1)+n` -/
def P4630828794067588968.Spec : Prop :=
  ∀ n, P4630828794067588968.a n = A267135 (n + 1)

theorem P4630828794067588968.correct : P4630828794067588968.Spec := by
  intro n
  simp only [A267135, Nat.add_sub_cancel, A267135.P4630828794067588968.a, A267135.P1163518685697158345.a, A020725, A020725.P9662279067013051637.a, A138971, A138971.P14613520405082129352.a, A080148, A080148.P13293786807354433186.a, A002145, A002145.P4185971227795926526.f1, A002145.P4185971227795926526.a, A049084, A049084.P10934933317972537770.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A010051, A010051.P15078252821583414300.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A267135

/-! ## A267135.P7754605094217552602

`A004277(n+1)+1-A332807(2*(n+1))`
-/

namespace A267135.P7754605094217552602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (n + 1) + (1 - A332807 (2 * (n + 1)))

end

end A267135.P7754605094217552602

namespace A267135

/-- `A004277(n+1)+1-A332807(2*(n+1))` -/
def P7754605094217552602.Spec : Prop :=
  ∀ n, P7754605094217552602.a n = A267135 (n + 1)

end A267135

/-! ## A267135.P2534623718792169692

`A005843(n+1)+1-A332807(2*(n+1))`
-/

namespace A267135.P2534623718792169692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) + (1 - A332807 (2 * (n + 1)))

end

end A267135.P2534623718792169692

namespace A267135

/-- `A005843(n+1)+1-A332807(2*(n+1))` -/
def P2534623718792169692.Spec : Prop :=
  ∀ n, P2534623718792169692.a n = A267135 (n + 1)

end A267135

/-! ## A267135.P6468527408009227748

`2*(n+1)-lt[2, A039702(n+1)]`
-/

namespace A267135.P6468527408009227748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ)

end

end A267135.P6468527408009227748

namespace A267135

/-- `2*(n+1)-lt[2, A039702(n+1)]` -/
def P6468527408009227748.Spec : Prop :=
  ∀ n, P6468527408009227748.a n = A267135 (n + 1)

end A267135

/-! ## A267135.P16205429554661689871

`2*n+1-eq[2, and(2, A000040(n+2))]`
-/

namespace A267135.P16205429554661689871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A000040 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A267135.P16205429554661689871

namespace A267135

/-- `2*n+1-eq[2, and(2, A000040(n+2))]` -/
def P16205429554661689871.Spec : Prop :=
  ∀ n, P16205429554661689871.a n = A267135 (n + 1)

end A267135

/-! ## A267135.P17202462899222262848

`A038698(A267100(A080147(n+1)))`
-/

namespace A267135.P17202462899222262848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038698 (A267100 (A080147 (n + 1)).toNat).toNat

end

end A267135.P17202462899222262848

namespace A267135

/-- `A038698(A267100(A080147(n+1)))` -/
def P17202462899222262848.Spec : Prop :=
  ∀ n, P17202462899222262848.a n = A267135 (n + 1)

end A267135

/-! ## A267135.P15971085156296598409

`A005408(n+1)-A000720(p?[4*n-1])`
-/

namespace A267135.P15971085156296598409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (n + 1) - A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A267135.P15971085156296598409

namespace A267135

/-- `A005408(n+1)-A000720(p?[4*n-1])` -/
def P15971085156296598409.Spec : Prop :=
  ∀ n, P15971085156296598409.a n = A267135 (n + 1)

end A267135

/-! ## A267135.P7963451814571399760

`A066520(A002145(n+1))`
-/

namespace A267135.P7963451814571399760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066520 (A002145 (n + 1)).toNat

end

end A267135.P7963451814571399760

namespace A267135

/-- `A066520(A002145(n+1))` -/
def P7963451814571399760.Spec : Prop :=
  ∀ n, P7963451814571399760.a n = A267135 (n + 1)

end A267135

/-! ## A267135.P11204960880494768904

`A066520(A090658(n+1))`
-/

namespace A267135.P11204960880494768904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066520 (A090658 (n + 1)).toNat

end

end A267135.P11204960880494768904

namespace A267135

/-- `A066520(A090658(n+1))` -/
def P11204960880494768904.Spec : Prop :=
  ∀ n, P11204960880494768904.a n = A267135 (n + 1)

end A267135

/-! ## A267135.P18205411805045157706

`A066520(A045326(n+2))`
-/

namespace A267135.P18205411805045157706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066520 (A045326 (n + 2)).toNat

end

end A267135.P18205411805045157706

namespace A267135

/-- `A066520(A045326(n+2))` -/
def P18205411805045157706.Spec : Prop :=
  ∀ n, P18205411805045157706.a n = A267135 (n + 1)

end A267135

/-!
# A267136: Triangle read by rows giving successive states of cellular automaton generated by "Rule 103" initiated with a single ON (black) cell.

The programs for A267136, there is no canonical definition to state claims against.
-/

/-! ## A267136.P334933395704388428

`A266786(A020703(n+1)-1)`
-/

namespace A267136.P334933395704388428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266786 (A020703 (n + 1) - 1).toNat

end

end A267136.P334933395704388428

/-! ## A267136.P7703581122166437342

`A266786(A057428(2*(n+1))+A020703(n+1))`
-/

namespace A267136.P7703581122166437342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266786 (A057428 (2 * (n + 1)) + A020703 (n + 1)).toNat

end

end A267136.P7703581122166437342

/-! ## A267136.P4629300004191411558

`A030308(A000005(n+1)*A053282(2*n+1))`
-/

namespace A267136.P4629300004191411558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 (A000005 (n + 1) * A053282 (2 * n + 1)).toNat

end

end A267136.P4629300004191411558

/-! ## A267136.P6528403510359843141

`A328102(A328093(n+1)-A328084(n+2))`
-/

namespace A267136.P6528403510359843141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328102 (A328093 (n + 1) - A328084 (n + 2)).toNat

end

end A267136.P6528403510359843141

/-! ## A267136.P11310529899048336330

`and(A144406(n+1), A272680(A186726(n)))`
-/

namespace A267136.P11310529899048336330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A144406 (n + 1)) (A272680 (A186726 n).toNat)

end

end A267136.P11310529899048336330

/-!
# A267137: Numbers of the form x^2 + x + x*y + y + y^2 where x and y are integers.

The programs for A267137, the canonical program `A267137.P18034840649141291006` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267137 has offset 1).

The definition of A267137 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4135 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267137.P18034840649141291006

`lt[0, A005882(n)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A267137

/-- `lt[0, A005882(n)]` -/
def P18034840649141291006.Spec : Prop :=
  ∀ n, (P18034840649141291006.a n : ℤ) = A267137 (n + 1)

theorem P18034840649141291006.correct : P18034840649141291006.Spec := by
  intro n
  simp only [A267137, Nat.add_sub_cancel]

end A267137

/-! ## A267137.P11751065632676740637

`lt[0, A033687(n)]`
-/

namespace A267137.P11751065632676740637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033687 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A267137.P11751065632676740637

namespace A267137

/-- `lt[0, A033687(n)]` -/
def P11751065632676740637.Spec : Prop :=
  ∀ n, (P11751065632676740637.a n : ℤ) = A267137 (n + 1)

end A267137

/-! ## A267137.P10259656576211470147

`lt[0, A000731(n)²]`
-/

namespace A267137.P10259656576211470147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000731 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A267137.P10259656576211470147

namespace A267137

/-- `lt[0, A000731(n)²]` -/
def P10259656576211470147.Spec : Prop :=
  ∀ n, (P10259656576211470147.a n : ℤ) = A267137 (n + 1)

end A267137

/-! ## A267137.P10652157415566833773

`lt[0, A129576(n)]`
-/

namespace A267137.P10652157415566833773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129576 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A267137.P10652157415566833773

namespace A267137

/-- `lt[0, A129576(n)]` -/
def P10652157415566833773.Spec : Prop :=
  ∀ n, (P10652157415566833773.a n : ℤ) = A267137 (n + 1)

end A267137

/-! ## A267137.P4677310188407103224

`lt[0, A227696(n)²]`
-/

namespace A267137.P4677310188407103224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227696 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A267137.P4677310188407103224

namespace A267137

/-- `lt[0, A227696(n)²]` -/
def P4677310188407103224.Spec : Prop :=
  ∀ n, (P4677310188407103224.a n : ℤ) = A267137 (n + 1)

end A267137

/-! ## A267137.P11664947987771365528

`A002264(A202822(n+1))`
-/

namespace A267137.P11664947987771365528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A202822 (n + 1)).toNat

end

end A267137.P11664947987771365528

namespace A267137

/-- `A002264(A202822(n+1))` -/
def P11664947987771365528.Spec : Prop :=
  ∀ n, P11664947987771365528.a n = A267137 (n + 1)

end A267137

/-!
# A267138: Binary representation of the n-th iteration of the "Rule 103" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267138, there is no canonical definition to state claims against.
-/

/-! ## A267138.P9102017280179487932

`A007088(A267139(n))`
-/

namespace A267138.P9102017280179487932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A267139 n).toNat

end

end A267138.P9102017280179487932

/-!
# A267141: Number of weeks in n! seconds, for n >= 10.

The programs for A267141, the canonical program `A267141.P9990484793633317975` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267141 has offset 10).

The definition of A267141 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A267141.P9990484793633317975

`6*A051431(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A267141

/-- `6*A051431(n)` -/
def P9990484793633317975.Spec : Prop :=
  ∀ n, P9990484793633317975.a n = A267141 (n + 10)

theorem P9990484793633317975.correct : P9990484793633317975.Spec := by
  intro n
  simp only [A267141, Nat.add_sub_cancel]

end A267141

/-! ## A267141.P18073754021479131214

`∏[a(n-1)+1]` with `a(0)=6, a(1)=11`
-/

namespace A267141.P18073754021479131214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 11] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A267141.P18073754021479131214

namespace A267141

/-- `∏[a(n-1)+1]` -/
def P18073754021479131214.Spec : Prop :=
  ∀ n, (P18073754021479131214.a n : ℤ) = A267141 (n + 10)

end A267141

/-! ## A267141.P1881765922416531703

`(n+10)*a(n-1)` with `a(0)=6`
-/

namespace A267141.P1881765922416531703
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  (n + 10) * a (n - 1)

end

end A267141.P1881765922416531703

namespace A267141

/-- `(n+10)*a(n-1)` -/
def P1881765922416531703.Spec : Prop :=
  ∀ n, (P1881765922416531703.a n : ℤ) = A267141 (n + 10)

end A267141

/-! ## A267141.P7126509335627658103

`6*n!*C(n+10, 10)`
-/

namespace A267141.P7126509335627658103
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (Nat.factorial n * Nat.choose (n + 10) 10)

end

end A267141.P7126509335627658103

namespace A267141

/-- `6*n!*C(n+10, 10)` -/
def P7126509335627658103.Spec : Prop :=
  ∀ n, (P7126509335627658103.a n : ℤ) = A267141 (n + 10)

theorem P7126509335627658103.correct : P7126509335627658103.Spec := by
  intro n
  simp only [A267141, Nat.add_sub_cancel, A267141.P7126509335627658103.a, A267141.P9990484793633317975.a, A051431, A051431.P6636783096064050505.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A267141

/-! ## A267141.P17898109043658971134

`6*∏[3*3%(n+3)+n+1]`
-/

namespace A267141.P17898109043658971134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (3 % (n + 3)) + (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A267141.P17898109043658971134

namespace A267141

/-- `6*∏[3*3%(n+3)+n+1]` -/
def P17898109043658971134.Spec : Prop :=
  ∀ n, (P17898109043658971134.a n : ℤ) = A267141 (n + 10)

end A267141

/-! ## A267141.P2547954266464091092

`∏[A008619(2*a(n-1))]` with `a(0)=6, a(1)=11`
-/

namespace A267141.P2547954266464091092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6, 11] fun n f1 =>
  A008619 (2 * f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A267141.P2547954266464091092

namespace A267141

/-- `∏[A008619(2*a(n-1))]` -/
def P2547954266464091092.Spec : Prop :=
  ∀ n, P2547954266464091092.a n = A267141 (n + 10)

end A267141

/-!
# A267142: The characteristic function of the multiples of 9.

The programs for A267142, there is no canonical definition to state claims against.
-/

/-! ## A267142.P882062923892932889

`abs(A168182(n)-1)`
-/

namespace A267142.P882062923892932889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168182 n - 1|

end

end A267142.P882062923892932889

/-!
# A267143: Primes q such that Sum_(q-1; i=1..m) e(i)/p(i) is an integer k, where the prime factorization of n is Product_(n; i=1..m) p(i)^e(i).

The programs for A267143, there is no canonical definition to state claims against.
-/

/-! ## A267143.P8816887060990234866

`p?[A072873(n+2)+1]`
-/

namespace A267143.P8816887060990234866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072873 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267143.P8816887060990234866

/-! ## A267143.P7708821677423086182

`p?[record[or(1, A327939(n+1))]]`
-/

namespace A267143.P7708821677423086182
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A327939 (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267143.P7708821677423086182

/-! ## A267143.P6873258336134618968

`record[A006530(A327939(4*(n+1))+1)]`
-/

namespace A267143.P6873258336134618968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A327939 (4 * (n + 1)) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267143.P6873258336134618968

/-!
# A267144: Octagonal numbers with prime indices.

The programs for A267144, the canonical program `A267144.P16510657683815295351` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267144 has offset 1).

The definition of A267144 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A267144.P16510657683815295351

`A000567(A000040(n+1))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A267144

/-- `A000567(A000040(n+1))` -/
def P16510657683815295351.Spec : Prop :=
  ∀ n, P16510657683815295351.a n = A267144 (n + 1)

theorem P16510657683815295351.correct : P16510657683815295351.Spec := by
  intro n
  simp only [A267144, Nat.add_sub_cancel]

end A267144

/-! ## A267144.P12816455303012627973

`A117961(n+1)+A036689(n+1)`
-/

namespace A267144.P12816455303012627973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117961 (n + 1) + A036689 (n + 1)

end

end A267144.P12816455303012627973

namespace A267144

/-- `A117961(n+1)+A036689(n+1)` -/
def P12816455303012627973.Spec : Prop :=
  ∀ n, P12816455303012627973.a n = A267144 (n + 1)

end A267144

/-! ## A267144.P6740900457675023484

`A179262(n+1)+A005722(n+1)`
-/

namespace A267144.P6740900457675023484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179262 (n + 1) + A005722 (n + 1)

end

end A267144.P6740900457675023484

namespace A267144

/-- `A179262(n+1)+A005722(n+1)` -/
def P6740900457675023484.Spec : Prop :=
  ∀ n, P6740900457675023484.a n = A267144 (n + 1)

end A267144

/-! ## A267144.P11177421847570586833

`A179545(n+1)+A116995(n+1)`
-/

namespace A267144.P11177421847570586833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179545 (n + 1) + A116995 (n + 1)

end

end A267144.P11177421847570586833

namespace A267144

/-- `A179545(n+1)+A116995(n+1)` -/
def P11177421847570586833.Spec : Prop :=
  ∀ n, P11177421847570586833.a n = A267144 (n + 1)

theorem P11177421847570586833.correct : P11177421847570586833.Spec := by
  intro n
  simp only [A267144, Nat.add_sub_cancel, A267144.P11177421847570586833.a, A267144.P16510657683815295351.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000567, A000567.P17850767079432249295.a, A116995, A116995.P12832703324765891542.a, A179545, A179545.P8571900986108654706.a, A000326, A000326.P15785277619453972366.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A267144

/-! ## A267144.P2658658993194859058

`A060429(n+1)-A110833(n+1)`
-/

namespace A267144.P2658658993194859058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060429 (n + 1) - A110833 (n + 1)

end

end A267144.P2658658993194859058

namespace A267144

/-- `A060429(n+1)-A110833(n+1)` -/
def P2658658993194859058.Spec : Prop :=
  ∀ n, P2658658993194859058.a n = A267144 (n + 1)

end A267144

/-! ## A267144.P3936552593471121378

`A079705(n+1)-A100484(n+1)`
-/

namespace A267144.P3936552593471121378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079705 (n + 1) - A100484 (n + 1)

end

end A267144.P3936552593471121378

namespace A267144

/-- `A079705(n+1)-A100484(n+1)` -/
def P3936552593471121378.Spec : Prop :=
  ∀ n, P3936552593471121378.a n = A267144 (n + 1)

end A267144

/-! ## A267144.P2601207335037212792

`A267217(n+1)-A036689(n+1)`
-/

namespace A267144.P2601207335037212792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267217 (n + 1) - A036689 (n + 1)

end

end A267144.P2601207335037212792

namespace A267144

/-- `A267217(n+1)-A036689(n+1)` -/
def P2601207335037212792.Spec : Prop :=
  ∀ n, P2601207335037212792.a n = A267144 (n + 1)

end A267144

/-! ## A267144.P2510627469832130690

`A179262(n+1)+A006093(n+1)²`
-/

namespace A267144.P2510627469832130690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179262 (n + 1) + A006093 (n + 1) ^ 2

end

end A267144.P2510627469832130690

namespace A267144

/-- `A179262(n+1)+A006093(n+1)²` -/
def P2510627469832130690.Spec : Prop :=
  ∀ n, P2510627469832130690.a n = A267144 (n + 1)

end A267144

/-! ## A267144.P18399125648108246236

`(A001748(n+1)-2)*Δ[A007504(n)]`
-/

namespace A267144.P18399125648108246236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001748 (n + 1) - 2) * (f1 (n + 1) - f1 n)

end

end A267144.P18399125648108246236

namespace A267144

/-- `(A001748(n+1)-2)*Δ[A007504(n)]` -/
def P18399125648108246236.Spec : Prop :=
  ∀ n, P18399125648108246236.a n = A267144 (n + 1)

end A267144

/-! ## A267144.P17020429495929883044

`A001248(n+1)+2*A036689(n+1)`
-/

namespace A267144.P17020429495929883044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) + 2 * A036689 (n + 1)

end

end A267144.P17020429495929883044

namespace A267144

/-- `A001248(n+1)+2*A036689(n+1)` -/
def P17020429495929883044.Spec : Prop :=
  ∀ n, P17020429495929883044.a n = A267144 (n + 1)

end A267144

/-! ## A267144.P3248714180936524897

`A117961(n+1)+2*A008837(n+1)`
-/

namespace A267144.P3248714180936524897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117961 (n + 1) + 2 * A008837 (n + 1)

end

end A267144.P3248714180936524897

namespace A267144

/-- `A117961(n+1)+2*A008837(n+1)` -/
def P3248714180936524897.Spec : Prop :=
  ∀ n, P3248714180936524897.a n = A267144 (n + 1)

end A267144

/-! ## A267144.P1924029132823380956

`A000040(n+1)+2*A179545(n+1)`
-/

namespace A267144.P1924029132823380956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2 * A179545 (n + 1)

end

end A267144.P1924029132823380956

namespace A267144

/-- `A000040(n+1)+2*A179545(n+1)` -/
def P1924029132823380956.Spec : Prop :=
  ∀ n, P1924029132823380956.a n = A267144 (n + 1)

end A267144

/-! ## A267144.P13753744049543725552

`(A001748(n+1)-2)*A000040(n+1)`
-/

namespace A267144.P13753744049543725552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001748 (n + 1) - 2) * A000040 (n + 1)

end

end A267144.P13753744049543725552

namespace A267144

/-- `(A001748(n+1)-2)*A000040(n+1)` -/
def P13753744049543725552.Spec : Prop :=
  ∀ n, P13753744049543725552.a n = A267144 (n + 1)

end A267144

/-! ## A267144.P12343945236873600773

`A079705(n+1)-2*A000040(n+1)`
-/

namespace A267144.P12343945236873600773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079705 (n + 1) - 2 * A000040 (n + 1)

end

end A267144.P12343945236873600773

namespace A267144

/-- `A079705(n+1)-2*A000040(n+1)` -/
def P12343945236873600773.Spec : Prop :=
  ∀ n, P12343945236873600773.a n = A267144 (n + 1)

end A267144

/-! ## A267144.P7689116606400673799

`2*A116995(n+1)-A000040(n+1)`
-/

namespace A267144.P7689116606400673799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A116995 (n + 1) - A000040 (n + 1)

end

end A267144.P7689116606400673799

namespace A267144

/-- `2*A116995(n+1)-A000040(n+1)` -/
def P7689116606400673799.Spec : Prop :=
  ∀ n, P7689116606400673799.a n = A267144 (n + 1)

end A267144

/-! ## A267144.P15346264388725113136

`2*A117961(n+1)-A001248(n+1)`
-/

namespace A267144.P15346264388725113136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A117961 (n + 1) - A001248 (n + 1)

end

end A267144.P15346264388725113136

namespace A267144

/-- `2*A117961(n+1)-A001248(n+1)` -/
def P15346264388725113136.Spec : Prop :=
  ∀ n, P15346264388725113136.a n = A267144 (n + 1)

end A267144

/-! ## A267144.P1489862389266581579

`A000040(n+1)²+2*A036689(n+1)`
-/

namespace A267144.P1489862389266581579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 + 2 * A036689 (n + 1)

end

end A267144.P1489862389266581579

namespace A267144

/-- `A000040(n+1)²+2*A036689(n+1)` -/
def P1489862389266581579.Spec : Prop :=
  ∀ n, P1489862389266581579.a n = A267144 (n + 1)

end A267144

/-! ## A267144.P16713215694405510420

`(A001748(n+1)-2)*p?[A015919(n+1)]`
-/

namespace A267144.P16713215694405510420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001748 (n + 1) - 2) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267144.P16713215694405510420

namespace A267144

/-- `(A001748(n+1)-2)*p?[A015919(n+1)]` -/
def P16713215694405510420.Spec : Prop :=
  ∀ n, P16713215694405510420.a n = A267144 (n + 1)

end A267144

/-! ## A267144.P11503687870008921623

`A001248(n+1)+A117961(n+1)-A000040(n+1)`
-/

namespace A267144.P11503687870008921623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) + (A117961 (n + 1) - A000040 (n + 1))

end

end A267144.P11503687870008921623

namespace A267144

/-- `A001248(n+1)+A117961(n+1)-A000040(n+1)` -/
def P11503687870008921623.Spec : Prop :=
  ∀ n, P11503687870008921623.a n = A267144 (n + 1)

end A267144

/-! ## A267144.P14080702249466046441

`A060429(n+1)-(A060800(n+1)+A000040(n+1))`
-/

namespace A267144.P14080702249466046441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060429 (n + 1) - (A060800 (n + 1) + A000040 (n + 1))

end

end A267144.P14080702249466046441

namespace A267144

/-- `A060429(n+1)-(A060800(n+1)+A000040(n+1))` -/
def P14080702249466046441.Spec : Prop :=
  ∀ n, P14080702249466046441.a n = A267144 (n + 1)

end A267144

/-!
# A267145: Triangle read by rows giving successive states of cellular automaton generated by "Rule 105" initiated with a single ON (black) cell.

The programs for A267145, there is no canonical definition to state claims against.
-/

/-! ## A267145.P8428845315151898512

`(A027907(n)+A000196(n))%2`
-/

namespace A267145.P8428845315151898512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027907 n + A000196 n) 2

end

end A267145.P8428845315151898512

/-! ## A267145.P14390667335449124644

`(A027907(n)+A006218(n))%2`
-/

namespace A267145.P14390667335449124644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027907 n + A006218 n) 2

end

end A267145.P14390667335449124644

/-! ## A267145.P5500128450078133029

`(A071036(n)+A000196(n))%2`
-/

namespace A267145.P5500128450078133029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071036 n + A000196 n) 2

end

end A267145.P5500128450078133029

/-! ## A267145.P8797581301563414465

`(A048760(n)+A027907(n))%2`
-/

namespace A267145.P8797581301563414465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048760 n + A027907 n) 2

end

end A267145.P8797581301563414465

/-! ## A267145.P1860988290079765262

`and(1, A084610(n)+A000196(n))`
-/

namespace A267145.P1860988290079765262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A084610 n + A000196 n)

end

end A267145.P1860988290079765262

/-! ## A267145.P1415857070267859901

`and(1, A084610(n)+A006218(n))`
-/

namespace A267145.P1415857070267859901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A084610 n + A006218 n)

end

end A267145.P1415857070267859901

/-! ## A267145.P9353730062782508197

`A000035(A071036(n)+A000196(n))`
-/

namespace A267145.P9353730062782508197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A071036 n + A000196 n).toNat

end

end A267145.P9353730062782508197

/-! ## A267145.P1004098020883796178

`A000035((A000196(n)-A071036(n))²)`
-/

namespace A267145.P1004098020883796178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 ((A000196 n - A071036 n) ^ 2).toNat

end

end A267145.P1004098020883796178

/-! ## A267145.P7979541342508755727

`A000035(A027907(n)+A006218(n))`
-/

namespace A267145.P7979541342508755727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A027907 n + A006218 n).toNat

end

end A267145.P7979541342508755727

/-! ## A267145.P2216976141175914061

`A000035(A048760(n)+A027907(n))`
-/

namespace A267145.P2216976141175914061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A048760 n + A027907 n).toNat

end

end A267145.P2216976141175914061

/-! ## A267145.P11109350560262387956

`A000035(xor(A006218(n), A027907(n)))`
-/

namespace A267145.P11109350560262387956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (Int.xor (A006218 n) (A027907 n)).toNat

end

end A267145.P11109350560262387956

/-! ## A267145.P14731063690863704286

`A000035(xor(A027907(n), A048760(n)))`
-/

namespace A267145.P14731063690863704286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (Int.xor (A027907 n) (A048760 n)).toNat

end

end A267145.P14731063690863704286

/-!
# A267146: Binary representation of the n-th iteration of the "Rule 105" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267146, there is no canonical definition to state claims against.
-/

/-! ## A267146.P4993688616539083436

`A007088(A267147(n))`
-/

namespace A267146.P4993688616539083436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A267147 n).toNat

end

end A267146.P4993688616539083436

/-! ## A267146.P1457042683218290781

`A185544(2*A267147(n))`
-/

namespace A267146.P1457042683218290781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A267147 n).toNat

end

end A267146.P1457042683218290781

/-!
# A267147: Decimal representation of the n-th iteration of the "Rule 105" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267147, there is no canonical definition to state claims against.
-/

/-! ## A267147.P12621432357231250779

`and((n^6-1)/(n+1), A002450(3^n))`
-/

namespace A267147.P12621432357231250779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway (((n ^ 6 : ℤ) - 1 : ℚ) / (n + 1 : ℚ))) (A002450 (3 ^ n))

end

end A267147.P12621432357231250779

/-!
# A267148: Number of ON (black) cells in the n-th iteration of the "Rule 105" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267148, there is no canonical definition to state claims against.
-/

/-! ## A267148.P14899375410086170792

`Δ[n²]-A267150(n)`
-/

namespace A267148.P14899375410086170792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A267150 n

end

end A267148.P14899375410086170792

/-! ## A267148.P12099950002115411424

`n+1-A267150(n%(n+1))+n`
-/

namespace A267148.P12099950002115411424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A267150 (n % (n + 1)) + (n : ℤ)

end

end A267148.P12099950002115411424

/-! ## A267148.P5998982098351811988

`A005843(n)+1-A267150(n)`
-/

namespace A267148.P5998982098351811988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (1 - A267150 n)

end

end A267148.P5998982098351811988

/-! ## A267148.P16259100574675088451

`A016777(n)-(A267150(n)+n)`
-/

namespace A267148.P16259100574675088451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n - (A267150 n + (n : ℤ))

end

end A267148.P16259100574675088451

/-! ## A267148.P8345221626091178589

`A024000(A267150(n))+A005843(n)`
-/

namespace A267148.P8345221626091178589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A267150 n).toNat + A005843 n

end

end A267148.P8345221626091178589

/-! ## A267148.P17301360029382562564

`A024000(A267150(n))-A024000(2*n+1)`
-/

namespace A267148.P17301360029382562564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A267150 n).toNat - A024000 (2 * n + 1)

end

end A267148.P17301360029382562564

/-! ## A267148.P13541274562123672114

`n-(A267150(n)-A003991(A000217(n)+1))`
-/

namespace A267148.P13541274562123672114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A267150 n - A003991 (A000217 n + 1).toNat)

end

end A267148.P13541274562123672114

/-!
# A267149: Total number of ON (black) cells after n iterations of the "Rule 105" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267149, there is no canonical definition to state claims against.
-/

/-! ## A267149.P1284803248648810682

`∑[A267148(n)]`
-/

namespace A267149.P1284803248648810682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267148 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267149.P1284803248648810682

/-! ## A267149.P11298573906997077915

`(n+1)²-A267151(n)`
-/

namespace A267149.P11298573906997077915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A267151 n

end

end A267149.P11298573906997077915

/-! ## A267149.P6204266971242028180

`∑[Δ[n²]-A267150(n)]`
-/

namespace A267149.P6204266971242028180
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - A267150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267149.P6204266971242028180

/-! ## A267149.P7544800238702815759

`∑[A005843(n)+1-A267150(n)]`
-/

namespace A267149.P7544800238702815759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (1 - A267150 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267149.P7544800238702815759

/-! ## A267149.P12255625341445650609

`A000217(n+1)+A000217(n)-A267151(n)`
-/

namespace A267149.P12255625341445650609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A000217 n - A267151 n)

end

end A267149.P12255625341445650609

/-! ## A267149.P13123777437849489090

`∑[∑{digits}[A267146(n), #]]`
-/

namespace A267149.P13123777437849489090
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267146 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267149.P13123777437849489090

/-!
# A267150: Number of OFF (white) cells in the n-th iteration of the "Rule 105" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267150, there is no canonical definition to state claims against.
-/

/-! ## A267150.P3745991804879270347

`Δ[n²]-A267148(n)`
-/

namespace A267150.P3745991804879270347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A267148 n

end

end A267150.P3745991804879270347

/-! ## A267150.P7534829609247703178

`n+1-A267148(n%(n+1))+n`
-/

namespace A267150.P7534829609247703178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A267148 (n % (n + 1)) + (n : ℤ)

end

end A267150.P7534829609247703178

/-! ## A267150.P1730888102660110968

`abs(A267148(n)-A005408(n))`
-/

namespace A267150.P1730888102660110968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A267148 n - A005408 n|

end

end A267150.P1730888102660110968

/-! ## A267150.P10825854072245760536

`A005843(n)+1-A267148(n)`
-/

namespace A267150.P10825854072245760536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (1 - A267148 n)

end

end A267150.P10825854072245760536

/-! ## A267150.P17627470018260947302

`A267158(n)+A267160(n)-A267148(n)`
-/

namespace A267150.P17627470018260947302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267158 n + (A267160 n - A267148 n)

end

end A267150.P17627470018260947302

/-!
# A267151: Total number of OFF (white) cells after n iterations of the "Rule 105" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267151, there is no canonical definition to state claims against.
-/

/-! ## A267151.P1264558550421141704

`∑[A267150(n)]`
-/

namespace A267151.P1264558550421141704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267151.P1264558550421141704

/-! ## A267151.P2078439531688448279

`(n+1)²-A267149(n)`
-/

namespace A267151.P2078439531688448279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A267149 n

end

end A267151.P2078439531688448279

/-! ## A267151.P14581303049890977109

`∑[Δ[n²]-A267148(n)]`
-/

namespace A267151.P14581303049890977109
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - A267148 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267151.P14581303049890977109

/-! ## A267151.P1923737203216930570

`∑[n+1-A267148(n%(n+1))+n]`
-/

namespace A267151.P1923737203216930570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A267148 (n % (n + 1)) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267151.P1923737203216930570

/-! ## A267151.P2175567678406820797

`A267159(n)+A267161(n)-A267149(n)`
-/

namespace A267151.P2175567678406820797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267159 n + (A267161 n - A267149 n)

end

end A267151.P2175567678406820797

/-!
# A267152: Triangle read by rows giving successive states of cellular automaton generated by "Rule 107" initiated with a single ON (black) cell.

The programs for A267152, there is no canonical definition to state claims against.
-/

/-! ## A267152.P8029899763960603757

`A267292(A020703(n+1)-1)`
-/

namespace A267152.P8029899763960603757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267292 (A020703 (n + 1) - 1).toNat

end

end A267152.P8029899763960603757

/-! ## A267152.P14537489532412518758

`A267292(A020703(n+2))`
-/

namespace A267152.P14537489532412518758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267292 (A020703 (n + 2)).toNat

end

end A267152.P14537489532412518758

/-! ## A267152.P431848954555882940

`A292438(A004526(A131164(n))*A137512(n+1))`
-/

namespace A267152.P431848954555882940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 (A004526 (A131164 n).toNat * A137512 (n + 1)).toNat

end

end A267152.P431848954555882940

/-! ## A267152.P1730277358502190732

`A154957(A320787(n+2)+A311377(n))`
-/

namespace A267152.P1730277358502190732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154957 (A320787 (n + 2) + A311377 n).toNat

end

end A267152.P1730277358502190732

/-! ## A267152.P7050160639169491079

`A008966(A029904(n)+A024619(3*n+2))`
-/

namespace A267152.P7050160639169491079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A029904 n + A024619 (3 * n + 2)).toNat

end

end A267152.P7050160639169491079

/-!
# A267153: Binary representation of the n-th iteration of the "Rule 107" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267153, there is no canonical definition to state claims against.
-/

/-! ## A267153.P2457781877916621527

`A007088(A267154(n))`
-/

namespace A267153.P2457781877916621527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A267154 n).toNat

end

end A267153.P2457781877916621527

/-! ## A267153.P7001288005437465931

`A185544(2*A267154(n))`
-/

namespace A267153.P7001288005437465931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A267154 n).toNat

end

end A267153.P7001288005437465931

/-!
# A267154: Decimal representation of the n-th iteration of the "Rule 107" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267154, there is no canonical definition to state claims against.
-/

/-! ## A267154.P5445456658903670489

`A179856(a(n-2)+(2*and(1, n)+1)!)` with `a(0)=1, a(1)=4`
-/

namespace A267154.P5445456658903670489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  A179856 (a (n - 2) + (Nat.factorial (2 * Nat.land 1 n + 1) : ℤ)).toNat

end

end A267154.P5445456658903670489

/-!
# A267155: Middle column of the "Rule 107" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267155, the canonical program `A267155.P15890589609803065448` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267155 has offset 0).

The definition of A267155 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267155.P15890589609803065448

`a(a(n-1))` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=1, a(5)=1, a(6)=1, a(7)=1, a(8)=1, a(9)=1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A267155

/-- `a(a(n-1))` -/
def P15890589609803065448.Spec : Prop :=
  ∀ n, (P15890589609803065448.a n : ℤ) = A267155 n

theorem P15890589609803065448.correct : P15890589609803065448.Spec := by
  intro n
  simp only [A267155]

end A267155

/-!
# A267156: Binary representation of the middle column of the "Rule 107" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267156, the canonical program `A267156.P1314108514053458750` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267156 has offset 0).

The definition of A267156 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267156.P1314108514053458750

`A267155(n)+10*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A267156

/-- `A267155(n)+10*a(n-1)` -/
def P1314108514053458750.Spec : Prop :=
  ∀ n, P1314108514053458750.a n = A267156 n

theorem P1314108514053458750.correct : P1314108514053458750.Spec := by
  intro n
  simp only [A267156]

end A267156

/-! ## A267156.P13411268609801043987

`A007088(A267157(n))`
-/

namespace A267156.P13411268609801043987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A267157 n).toNat

end

end A267156.P13411268609801043987

namespace A267156

/-- `A007088(A267157(n))` -/
def P13411268609801043987.Spec : Prop :=
  ∀ n, P13411268609801043987.a n = A267156 n

end A267156

/-! ## A267156.P2393374292106689734

`A185544(2*A267157(n))`
-/

namespace A267156.P2393374292106689734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A267157 n).toNat

end

end A267156.P2393374292106689734

namespace A267156

/-- `A185544(2*A267157(n))` -/
def P2393374292106689734.Spec : Prop :=
  ∀ n, P2393374292106689734.a n = A267156 n

end A267156

/-! ## A267156.P692002004754129219

`A185544(∑[A267157(n)+A267155(n)])`
-/

namespace A267156.P692002004754129219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267157 n + A267155 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A267156.P692002004754129219

namespace A267156

/-- `A185544(∑[A267157(n)+A267155(n)])` -/
def P692002004754129219.Spec : Prop :=
  ∀ n, P692002004754129219.a n = A267156 n

end A267156

/-! ## A267156.P2072687440710021996

`A185544(A267157(n+1)-A267155(n+1))`
-/

namespace A267156.P2072687440710021996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A267157 (n + 1) - A267155 (n + 1)).toNat

end

end A267156.P2072687440710021996

namespace A267156

/-- `A185544(A267157(n+1)-A267155(n+1))` -/
def P2072687440710021996.Spec : Prop :=
  ∀ n, P2072687440710021996.a n = A267156 n

end A267156

/-!
# A267157: Decimal representation of the middle column of the "Rule 107" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267157, the canonical program `A267157.P5346846531904863656` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267157 has offset 0).

The definition of A267157 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267157.P5346846531904863656

`a(n-1)+A267155(n)+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A267157

/-- `a(n-1)+A267155(n)+a(n-1)` -/
def P5346846531904863656.Spec : Prop :=
  ∀ n, P5346846531904863656.a n = A267157 n

theorem P5346846531904863656.correct : P5346846531904863656.Spec := by
  intro n
  simp only [A267157]

end A267157

/-! ## A267157.P11060107242818147790

`or(2*a(n-1), A267155(A028310(n)))` with `a(0)=1`
-/

namespace A267157.P11060107242818147790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (2 * a (n - 1)) (A267155 (A028310 n).toNat)

end

end A267157.P11060107242818147790

namespace A267157

/-- `or(2*a(n-1), A267155(A028310(n)))` -/
def P11060107242818147790.Spec : Prop :=
  ∀ n, P11060107242818147790.a n = A267157 n

end A267157

/-! ## A267157.P10501385772934473618

`∑[A267155(n)/A000079(n)]*A000079(n)`
-/

namespace A267157.P10501385772934473618
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267155 n : ℚ) / (A000079 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A000079 n : ℚ)

end

end A267157.P10501385772934473618

namespace A267157

/-- `∑[A267155(n)/A000079(n)]*A000079(n)` -/
def P10501385772934473618.Spec : Prop :=
  ∀ n, P10501385772934473618.a n = (A267157 n : ℚ)

end A267157

/-! ## A267157.P7793479565938628641

`A003188(floor(sqrt(A065838(n+1))))`
-/

namespace A267157.P7793479565938628641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (Int.sqrt (A065838 (n + 1))).toNat

end

end A267157.P7793479565938628641

namespace A267157

/-- `A003188(floor(sqrt(A065838(n+1))))` -/
def P7793479565938628641.Spec : Prop :=
  ∀ n, P7793479565938628641.a n = A267157 n

end A267157

/-! ## A267157.P11947308149189963170

`or(A004524(A001045(n)), A266446(n))`
-/

namespace A267157.P11947308149189963170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004524 (A001045 n).toNat) (A266446 n)

end

end A267157.P11947308149189963170

namespace A267157

/-- `or(A004524(A001045(n)), A266446(n))` -/
def P11947308149189963170.Spec : Prop :=
  ∀ n, P11947308149189963170.a n = A267157 n

end A267157

/-!
# A267158: Number of ON (black) cells in the n-th iteration of the "Rule 107" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267158, there is no canonical definition to state claims against.
-/

/-! ## A267158.P16357995698345102612

`Δ[n²]-A267160(n)`
-/

namespace A267158.P16357995698345102612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A267160 n

end

end A267158.P16357995698345102612

/-! ## A267158.P15904610859918718912

`abs(Δ[A267159(abs(1-n))])`
-/

namespace A267158.P15904610859918718912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267159 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A267158.P15904610859918718912

/-! ## A267158.P17201187699522933285

`n+1-A267160(n%(n+1))+n`
-/

namespace A267158.P17201187699522933285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A267160 (n % (n + 1)) + (n : ℤ)

end

end A267158.P17201187699522933285

/-! ## A267158.P8857942491683714587

`A005843(n)+1-A267160(n)`
-/

namespace A267158.P8857942491683714587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (1 - A267160 n)

end

end A267158.P8857942491683714587

/-! ## A267158.P14433693524885902620

`1-A267160(n)+n-A001489(n)`
-/

namespace A267158.P14433693524885902620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A267160 n + (n : ℤ) - A001489 n

end

end A267158.P14433693524885902620

/-! ## A267158.P8920478407719780791

`A000290(n+1)-(A267160(n)+A000290(n))`
-/

namespace A267158.P8920478407719780791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (n + 1) - (A267160 n + A000290 n)

end

end A267158.P8920478407719780791

/-! ## A267158.P13482686814478035148

`A005408(n)+A001489(A267160(n))`
-/

namespace A267158.P13482686814478035148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n + A001489 (A267160 n).toNat

end

end A267158.P13482686814478035148

/-! ## A267158.P13117355880423448772

`abs(A267160(n)+A001489(2*n+1))`
-/

namespace A267158.P13117355880423448772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A267160 n + A001489 (2 * n + 1)|

end

end A267158.P13117355880423448772

/-! ## A267158.P6303135373922860487

`A000196(A002378(n))+n+1-A267160(n)`
-/

namespace A267158.P6303135373922860487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A002378 n).toNat + ((n + 1 : ℤ) - A267160 n)

end

end A267158.P6303135373922860487

/-!
# A267159: Total number of ON (black) cells after n iterations of the "Rule 107" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267159, there is no canonical definition to state claims against.
-/

/-! ## A267159.P17107291074635048603

`∑[A267158(n)]`
-/

namespace A267159.P17107291074635048603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267158 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267159.P17107291074635048603

/-! ## A267159.P18050225139789672893

`(n+1)²-A267161(n)`
-/

namespace A267159.P18050225139789672893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A267161 n

end

end A267159.P18050225139789672893

/-! ## A267159.P8153620913646580367

`∑[Δ[n²]-A267160(n)]`
-/

namespace A267159.P8153620913646580367
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - A267160 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267159.P8153620913646580367

/-! ## A267159.P3096832078643649842

`A267149(n)+A267151(n)-A267161(n)`
-/

namespace A267159.P3096832078643649842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267149 n + (A267151 n - A267161 n)

end

end A267159.P3096832078643649842

/-! ## A267159.P4537224778772741752

`A000217(n+1)+A000217(n)-A267161(n)`
-/

namespace A267159.P4537224778772741752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A000217 n - A267161 n)

end

end A267159.P4537224778772741752

/-! ## A267159.P551157825435677960

`∑[∑{digits}[A267153(n), #]]`
-/

namespace A267159.P551157825435677960
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267153 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267159.P551157825435677960

/-!
# A267160: Number of OFF (white) cells in the n-th iteration of the "Rule 107" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267160, there is no canonical definition to state claims against.
-/

/-! ## A267160.P2212008999362787417

`Δ[n²]-A267158(n)`
-/

namespace A267160.P2212008999362787417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A267158 n

end

end A267160.P2212008999362787417

/-! ## A267160.P18059664128172097130

`n+1-A267158(n%(n+1))+n`
-/

namespace A267160.P18059664128172097130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A267158 (n % (n + 1)) + (n : ℤ)

end

end A267160.P18059664128172097130

/-! ## A267160.P6138582838330868475

`Δ[A002061(n)]-A267158(n)+1`
-/

namespace A267160.P6138582838330868475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A267158 n + 1

end

end A267160.P6138582838330868475

/-! ## A267160.P13839701924936540540

`A000027(n+1)+n-A267158(n)`
-/

namespace A267160.P13839701924936540540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) + ((n : ℤ) - A267158 n)

end

end A267160.P13839701924936540540

/-! ## A267160.P16862871348476546250

`A005408(n)-A000027(A267158(n))`
-/

namespace A267160.P16862871348476546250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - A000027 (A267158 n).toNat

end

end A267160.P16862871348476546250

/-! ## A267160.P15266226380245175232

`A109613(A004277(n))-A000027(A267158(n))`
-/

namespace A267160.P15266226380245175232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A004277 n).toNat - A000027 (A267158 n).toNat

end

end A267160.P15266226380245175232

/-!
# A267161: Total number of OFF (white) cells after n iterations of the "Rule 107" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267161, there is no canonical definition to state claims against.
-/

/-! ## A267161.P11018673059871839571

`∑[A267160(n)]`
-/

namespace A267161.P11018673059871839571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267160 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267161.P11018673059871839571

/-! ## A267161.P11101442335966162342

`(n+1)²-A267159(n)`
-/

namespace A267161.P11101442335966162342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A267159 n

end

end A267161.P11101442335966162342

/-! ## A267161.P11607949497057065983

`∑[Δ[n²]-A267158(n)]`
-/

namespace A267161.P11607949497057065983
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - A267158 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267161.P11607949497057065983

/-! ## A267161.P6396276648501932623

`A267160(n%(n+1))+a(n-1)` with `a(0)=0`
-/

namespace A267161.P6396276648501932623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A267160 (n % (n + 1)) + a (n - 1)

end

end A267161.P6396276648501932623

/-! ## A267161.P16487736263899614787

`A000027(n+1)²-∑[A267158(n)]`
-/

namespace A267161.P16487736263899614787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267158 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) ^ 2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267161.P16487736263899614787

/-! ## A267161.P10812829367477696617

`A267149(n)+A267151(n)-A267159(n)`
-/

namespace A267161.P10812829367477696617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267149 n + (A267151 n - A267159 n)

end

end A267161.P10812829367477696617

/-!
# A267162: Number of nX2 arrays containing 2 copies of 0..n-1 with no element 1 greater than its west, southwest or northwest neighbor modulo n and the upper left element equal to 0.

The programs for A267162, there is no canonical definition to state claims against.
-/

/-! ## A267162.P7851588663781345059

`A267163(∑[n+2])`
-/

namespace A267162.P7851588663781345059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267163 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A267162.P7851588663781345059

/-! ## A267162.P17200060971610702393

`xor(A025442(n), A267163(A167614(n+1)-4))`
-/

namespace A267162.P17200060971610702393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A025442 n) (A267163 (A167614 (n + 1) - 4).toNat)

end

end A267162.P17200060971610702393

/-!
# A267163: T(n,k)=Number of nXk arrays containing k copies of 0..n-1 with no element 1 greater than its west, southwest or northwest neighbor modulo n and the upper left element equal to 0.

The programs for A267163, there is no canonical definition to state claims against.
-/

/-! ## A267163.P16666749514793951723

`and(A142269(A266822(n)), A266867(n+1))`
-/

namespace A267163.P16666749514793951723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A142269 (A266822 n).toNat) (A266867 (n + 1))

end

end A267163.P16666749514793951723

/-! ## A267163.P13972484785493825378

`and(A065764(A072100(n+1)), A266867(n+1))`
-/

namespace A267163.P13972484785493825378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A065764 (A072100 (n + 1)).toNat) (A266867 (n + 1))

end

end A267163.P13972484785493825378

/-! ## A267163.P8689600787090373035

`and(A266867(n+1), A272559(A204631(n+3)))`
-/

namespace A267163.P8689600787090373035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266867 (n + 1)) (A272559 (A204631 (n + 3)).toNat)

end

end A267163.P8689600787090373035

/-! ## A267163.P14128693682132006734

`A266867(n+1)%A335448(A238582(n+3))`
-/

namespace A267163.P14128693682132006734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266867 (n + 1)) (A335448 (A238582 (n + 3)).toNat)

end

end A267163.P14128693682132006734

/-! ## A267163.P9940685099157808583

`and(A142269(A078559(n+1)), A266867(n+1))`
-/

namespace A267163.P9940685099157808583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A142269 (A078559 (n + 1)).toNat) (A266867 (n + 1))

end

end A267163.P9940685099157808583

/-!
# A267164: Number of 3 X n arrays containing n copies of 0..3-1 with no element 1 greater than its west, southwest or northwest neighbor modulo 3 and the upper left element equal to 0.

The programs for A267164, there is no canonical definition to state claims against.
-/

/-! ## A267164.P1895672553676048435

`A267328(∑[n+2]+4)`
-/

namespace A267164.P1895672553676048435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267328 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A267164.P1895672553676048435

/-! ## A267164.P1301008802851185157

`lcm(log2(1/2), A267328(A167614(n+1)))`
-/

namespace A267164.P1301008802851185157
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway (Real.logb 2 ((1 : ℚ) / 2 : ℝ))) (A267328 (A167614 (n + 1)).toNat)

end

end A267164.P1301008802851185157

/-! ## A267164.P16130557602795990401

`A267328(A167614(n+1))+A011742(n)`
-/

namespace A267164.P16130557602795990401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267328 (A167614 (n + 1)).toNat + A011742 n

end

end A267164.P16130557602795990401

/-! ## A267164.P17497223744241807002

`or(A102683(n), A267328(A167614(n+1)))`
-/

namespace A267164.P17497223744241807002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A102683 n) (A267328 (A167614 (n + 1)).toNat)

end

end A267164.P17497223744241807002

/-! ## A267164.P11753116642554933348

`A267328(A055998(n)+6)%A207759(n+1)`
-/

namespace A267164.P11753116642554933348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267328 (A055998 n + 6).toNat) (A207759 (n + 1))

end

end A267164.P11753116642554933348

/-!
# A267165: Number of 4 X n arrays containing n copies of 0..4-1 with no element 1 greater than its west, southwest or northwest neighbor modulo 4 and the upper left element equal to 0.

The programs for A267165, there is no canonical definition to state claims against.
-/

/-! ## A267165.P11042198235600712005

`A267163(A141214(n)+7)`
-/

namespace A267165.P11042198235600712005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267163 (A141214 n + 7).toNat

end

end A267165.P11042198235600712005

/-! ## A267165.P3785141987798892064

`A267163(A052905(n)+9)`
-/

namespace A267165.P3785141987798892064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267163 (A052905 n + 9).toNat

end

end A267165.P3785141987798892064

/-! ## A267165.P17021932969247759377

`A267163(A055999(n)+10)`
-/

namespace A267165.P17021932969247759377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267163 (A055999 n + 10).toNat

end

end A267165.P17021932969247759377

/-!
# A267166: Number of 5Xn arrays containing n copies of 0..5-1 with no element 1 greater than its west, southwest or northwest neighbor modulo 5 and the upper left element equal to 0.

The programs for A267166, there is no canonical definition to state claims against.
-/

/-! ## A267166.P3090809327051291597

`A267163(∑[round(1/acot(n))+4]+10)`
-/

namespace A267166.P3090809327051291597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267163 (∑ j ∈ Finset.range (n + 1), f1 j + 10).toNat

end

end A267166.P3090809327051291597

/-! ## A267166.P5030158786409375266

`A267163(A155212(n)+13)`
-/

namespace A267166.P5030158786409375266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267163 (A155212 n + 13).toNat

end

end A267166.P5030158786409375266

/-!
# A267167: Growth series for affine Coxeter group B_4.

The programs for A267167, there is no canonical definition to state claims against.
-/

/-! ## A267167.P5961580487015900340

`∑[A076677(3*n+1)*A338945(A335672(3*n+4)+1)]`
-/

namespace A267167.P5961580487015900340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076677 (3 * n + 1) * A338945 (A335672 (3 * n + 4) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267167.P5961580487015900340

/-! ## A267167.P3104283657744441884

`∑[∑[A046693(A007518(n+1))]]`
-/

namespace A267167.P3104283657744441884
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046693 (A007518 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267167.P3104283657744441884

/-! ## A267167.P9504402746614966476

`∑[∑[A060432(A032555(n+1))]]`
-/

namespace A267167.P9504402746614966476
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060432 (A032555 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267167.P9504402746614966476

/-! ## A267167.P18387808091114966389

`A299276(n)+A025442(A114551(n))`
-/

namespace A267167.P18387808091114966389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299276 n + A025442 (A114551 n).toNat

end

end A267167.P18387808091114966389

/-! ## A267167.P2524988399168878199

`or(A054908(A000041(n)), A299276(n))`
-/

namespace A267167.P2524988399168878199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A054908 (A000041 n).toNat) (A299276 n)

end

end A267167.P2524988399168878199

/-!
# A267168: Growth series for affine Coxeter group B_5.

The programs for A267168, there is no canonical definition to state claims against.
-/

/-! ## A267168.P12286473519334031660

`∑[∑[∑[A352178(2*(n+1))-n]]]`
-/

namespace A267168.P12286473519334031660
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352178 (2 * (n + 1)) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267168.P12286473519334031660

/-! ## A267168.P11617653444711249726

`∑[A267167(A067029(3^n))]`
-/

namespace A267168.P11617653444711249726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267167 (A067029 (3 ^ n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267168.P11617653444711249726

/-! ## A267168.P14872063172499383524

`∑[A267167(n)%A109907(n)]`
-/

namespace A267168.P14872063172499383524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267167 n) (A109907 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267168.P14872063172499383524

/-! ## A267168.P10733793339582705541

`∑[A267167(n*A276144(n+1))]`
-/

namespace A267168.P10733793339582705541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267167 ((n : ℤ) * A276144 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267168.P10733793339582705541

/-! ## A267168.P11139933811698959796

`∑[A267167(n)^A276144(n+1)]`
-/

namespace A267168.P11139933811698959796
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267167 n : ℚ) ^ (A276144 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267168.P11139933811698959796

/-!
# A267169: Growth series for affine Coxeter group B_6.

The programs for A267169, there is no canonical definition to state claims against.
-/

/-! ## A267169.P10016561924372060000

`∑[record[A267168(A174847(n))]]`
-/

namespace A267169.P10016561924372060000
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267168 (A174847 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267169.P10016561924372060000

/-! ## A267169.P335154985406063157

`∑[A267168(A052409(3^n))]`
-/

namespace A267169.P335154985406063157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267168 (A052409 (3 ^ n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267169.P335154985406063157

/-! ## A267169.P7477811973774269114

`∑[A267168(n)%A031155(n+1)]`
-/

namespace A267169.P7477811973774269114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267168 n) (A031155 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267169.P7477811973774269114

/-! ## A267169.P5294342579831630528

`∑[A267168(n)]%A164841(2*n+3)`
-/

namespace A267169.P5294342579831630528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A164841 (2 * n + 3))

end

end A267169.P5294342579831630528

/-!
# A267170: Growth series for affine Coxeter group B_7.

The programs for A267170, there is no canonical definition to state claims against.
-/

/-! ## A267170.P16927593029732818772

`∑[A267169(n)]%A120103(2*n+3)`
-/

namespace A267170.P16927593029732818772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A120103 (2 * n + 3))

end

end A267170.P16927593029732818772

/-! ## A267170.P3803097093822798968

`∑[A267169(n)]%A267144(A267157(n))`
-/

namespace A267170.P3803097093822798968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A267144 (A267157 n).toNat)

end

end A267170.P3803097093822798968

/-! ## A267170.P1573552140211091180

`∑[A004151(A267169(n))]`
-/

namespace A267170.P1573552140211091180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A267169 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267170.P1573552140211091180

/-! ## A267170.P181556545971330171

`∑[record[A267169(A267181(n))]]`
-/

namespace A267170.P181556545971330171
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267169 (A267181 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267170.P181556545971330171

/-! ## A267170.P6749113980281805528

`∑[record[A267169(A235168(n))]]`
-/

namespace A267170.P6749113980281805528
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267169 (A235168 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267170.P6749113980281805528

/-!
# A267171: Growth series for affine Coxeter group B_8.

The programs for A267171, there is no canonical definition to state claims against.
-/

/-! ## A267171.P7365174889430507317

`∑[A267170(A304465(2^n))]`
-/

namespace A267171.P7365174889430507317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267170 (A304465 (2 ^ n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267171.P7365174889430507317

/-! ## A267171.P10928564085279106832

`∑[A267170(n)]%A267199(n+2)`
-/

namespace A267171.P10928564085279106832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267170 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A267199 (n + 2))

end

end A267171.P10928564085279106832

/-! ## A267171.P2689099482414223505

`∑[record[A267170(∑{e}[n+1, #])]]`
-/

namespace A267171.P2689099482414223505
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267170 (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267171.P2689099482414223505

/-! ## A267171.P18073489769114200507

`∑[∑[A004151(A267169(n))]]`
-/

namespace A267171.P18073489769114200507
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A267169 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267171.P18073489769114200507

/-!
# A267172: Growth series for affine Coxeter group B_9.

The programs for A267172, there is no canonical definition to state claims against.
-/

/-! ## A267172.P6566263752017126754

`∑[A267171(n*∑[A091536(n)])]`
-/

namespace A267172.P6566263752017126754
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091536 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267171 ((n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267172.P6566263752017126754

/-! ## A267172.P9606982176861208791

`∑[A267171(n)^∑[A015161(n)]]`
-/

namespace A267172.P9606982176861208791
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015161 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267171 n : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f2 j : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267172.P9606982176861208791

/-! ## A267172.P12270991326290936829

`∑[A267171(n)^∑[A091536(n)]]`
-/

namespace A267172.P12270991326290936829
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091536 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267171 n : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f2 j : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267172.P12270991326290936829

/-! ## A267172.P7903615768676059466

`∑[A267171(n)]%A033916(n+1)`
-/

namespace A267172.P7903615768676059466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267171 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A033916 (n + 1))

end

end A267172.P7903615768676059466

/-! ## A267172.P4222344177885287869

`∑[A267171(n)%A267180(2*(n+2))]`
-/

namespace A267172.P4222344177885287869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267171 n) (A267180 (2 * (n + 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267172.P4222344177885287869

/-!
# A267173: Growth series for affine Coxeter group B_10.

The programs for A267173, there is no canonical definition to state claims against.
-/

/-! ## A267173.P5747568627445747254

`∑[record[A267172(A094937(n))]]`
-/

namespace A267173.P5747568627445747254
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267172 (A094937 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267173.P5747568627445747254

/-! ## A267173.P12282941974585192564

`∑[A267172(n)%A185389(n+4)]`
-/

namespace A267173.P12282941974585192564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267172 n) (A185389 (n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267173.P12282941974585192564

/-! ## A267173.P10218614856007473292

`A210709(A018252(n+1))+∑[A267172(n)]`
-/

namespace A267173.P10218614856007473292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267172 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210709 (A018252 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267173.P10218614856007473292

/-! ## A267173.P757177708845636264

`∑[∑[A000027(A267171(n))]]`
-/

namespace A267173.P757177708845636264
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A267171 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267173.P757177708845636264

/-!
# A267174: Growth series for affine Coxeter group B_11.

The programs for A267174, there is no canonical definition to state claims against.
-/

/-! ## A267174.P10814447471194550003

`∑[A267173(n*A007895(A000045(n)))]`
-/

namespace A267174.P10814447471194550003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267173 ((n : ℤ) * A007895 (A000045 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267174.P10814447471194550003

/-! ## A267174.P330579272017619442

`∑[A267173(n)^A007895(A000045(n))]`
-/

namespace A267174.P330579272017619442
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267173 n : ℚ) ^ (A007895 (A000045 n).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267174.P330579272017619442

/-! ## A267174.P15465718238515322680

`∑[A267173(n)]%A138030(n+1)`
-/

namespace A267174.P15465718238515322680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267173 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A138030 (n + 1))

end

end A267174.P15465718238515322680

/-! ## A267174.P5520417221358420304

`∑[A000027(A267173(n))]`
-/

namespace A267174.P5520417221358420304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A267173 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267174.P5520417221358420304

/-!
# A267175: Growth series for affine Coxeter group B_12.

The programs for A267175, there is no canonical definition to state claims against.
-/

/-! ## A267175.P6318355485126303951

`∑[A267174(n)%A268314(n+1)]`
-/

namespace A267175.P6318355485126303951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267174 n) (A268314 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267175.P6318355485126303951

/-! ## A267175.P13392587846168665812

`∑[A267174(n)]%A225238(n+1)`
-/

namespace A267175.P13392587846168665812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267174 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A225238 (n + 1))

end

end A267175.P13392587846168665812

/-! ## A267175.P18363601576561967823

`∑[∑[A000027(A267173(n))]]`
-/

namespace A267175.P18363601576561967823
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A267173 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267175.P18363601576561967823

/-! ## A267175.P15313480788847786749

`A266767(A062399(n))`
-/

namespace A267175.P15313480788847786749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266767 (A062399 n).toNat

end

end A267175.P15313480788847786749

/-! ## A267175.P2939457297500634014

`A266767(A351870(n))`
-/

namespace A267175.P2939457297500634014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266767 (A351870 n).toNat

end

end A267175.P2939457297500634014

/-!
# A267176: The growth series for the affine Weyl group E_8.

The programs for A267176, there is no canonical definition to state claims against.
-/

/-! ## A267176.P10653271133123255101

`A050486(n)+val(A153662(2*(n+2))+2, 6)`
-/

namespace A267176.P10653271133123255101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050486 n + (SequenceMachineLib.valuation (A153662 (2 * (n + 2)) + 2).toNat 6 : ℤ)

end

end A267176.P10653271133123255101

/-! ## A267176.P2050707882902118401

`A055641(A000088(n))+A050486(n)`
-/

namespace A267176.P2050707882902118401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A000088 n).toNat + A050486 n

end

end A267176.P2050707882902118401

/-! ## A267176.P11526828877148036918

`A050486(n)+A014017(A042712(n))`
-/

namespace A267176.P11526828877148036918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050486 n + A014017 (A042712 n).toNat

end

end A267176.P11526828877148036918

/-! ## A267176.P4301192347820454298

`A082784(A000142(n))+A050486(n)`
-/

namespace A267176.P4301192347820454298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082784 (A000142 n).toNat + A050486 n

end

end A267176.P4301192347820454298

/-!
# A267177: Irregular triangle read by rows: successive bottom and right-hand borders of the infinite square array in A072030 (which gives number of subtraction steps needed to compute GCD).

The programs for A267177, there is no canonical definition to state claims against.
-/

/-! ## A267177.P9031619882440042760

`A285721(A064788(n+1))+1`
-/

namespace A267177.P9031619882440042760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285721 (A064788 (n + 1)).toNat + 1

end

end A267177.P9031619882440042760

/-! ## A267177.P8353620061577148789

`A285721(A194280(n+1))+1`
-/

namespace A267177.P8353620061577148789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285721 (A194280 (n + 1)).toNat + 1

end

end A267177.P8353620061577148789

/-! ## A267177.P6590633629407064330

`A072030(A064788(n+1))`
-/

namespace A267177.P6590633629407064330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072030 (A064788 (n + 1)).toNat

end

end A267177.P6590633629407064330

/-! ## A267177.P8809001780255261030

`A072030(A064790(n+1))`
-/

namespace A267177.P8809001780255261030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072030 (A064790 (n + 1)).toNat

end

end A267177.P8809001780255261030

/-! ## A267177.P12878745786115050051

`A072030(A194280(n+1))`
-/

namespace A267177.P12878745786115050051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072030 (A194280 (n + 1)).toNat

end

end A267177.P12878745786115050051

/-!
# A267178: Array read by antidiagonals: T(n,k) = parity of number of steps in simple Euclidean algorithm for gcd(n,k) where n >= 1, k >= 1.

The programs for A267178, there is no canonical definition to state claims against.
-/

/-! ## A267178.P712515930035298989

`A072030(n+1)%2`
-/

namespace A267178.P712515930035298989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072030 (n + 1)) 2

end

end A267178.P712515930035298989

/-! ## A267178.P4016881604658498286

`log2(gcd(2, A285721(n+1)))`
-/

namespace A267178.P4016881604658498286
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A285721 (n + 1)) : ℝ)

end

end A267178.P4016881604658498286

/-! ## A267178.P15821195260098577092

`A000035(A072030(n+1))`
-/

namespace A267178.P15821195260098577092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A072030 (n + 1)).toNat

end

end A267178.P15821195260098577092

/-! ## A267178.P11836803712691461936

`and(1, A017082(n)*A072030(n+1))`
-/

namespace A267178.P11836803712691461936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A017082 n * A072030 (n + 1))

end

end A267178.P11836803712691461936

/-! ## A267178.P15260843334513481087

`and(1, A017154(n)*A072030(n+1))`
-/

namespace A267178.P15260843334513481087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A017154 n * A072030 (n + 1))

end

end A267178.P15260843334513481087

/-! ## A267178.P15455067780905095743

`A007814(∏{p}[A072030(n+1)+1, #])`
-/

namespace A267178.P15455067780905095743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072030 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A267178.P15455067780905095743

/-! ## A267178.P307696431042674735

`and(1, A072030(n+1)²*A008349(n))`
-/

namespace A267178.P307696431042674735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A072030 (n + 1) ^ 2 * A008349 n)

end

end A267178.P307696431042674735

/-! ## A267178.P4756907618427659618

`and(1, (A016756(n)*A072030(n+1))²)`
-/

namespace A267178.P4756907618427659618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((A016756 n * A072030 (n + 1)) ^ 2)

end

end A267178.P4756907618427659618

/-! ## A267178.P13681029262867417725

`A267179(A060734(n+1))`
-/

namespace A267178.P13681029262867417725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267179 (A060734 (n + 1)).toNat

end

end A267178.P13681029262867417725

/-! ## A267178.P17843608865585901385

`A267179(A060736(n+1))`
-/

namespace A267178.P17843608865585901385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267179 (A060736 (n + 1)).toNat

end

end A267178.P17843608865585901385

/-! ## A267178.P11160286966162529114

`A267179(A081344(n+1))`
-/

namespace A267178.P11160286966162529114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267179 (A081344 (n + 1)).toNat

end

end A267178.P11160286966162529114

/-! ## A267178.P6405592835177670447

`A267179(A213928(n+1))`
-/

namespace A267178.P6405592835177670447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267179 (A213928 (n + 1)).toNat

end

end A267178.P6405592835177670447

/-! ## A267178.P7026997871247456561

`A267179(A219159(n+1))`
-/

namespace A267178.P7026997871247456561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267179 (A219159 (n + 1)).toNat

end

end A267178.P7026997871247456561

/-! ## A267178.P1371250085582070508

`A267179(A072030(n+1)²)`
-/

namespace A267178.P1371250085582070508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267179 (A072030 (n + 1) ^ 2).toNat

end

end A267178.P1371250085582070508

/-! ## A267178.P17051300395671400743

`A267179(A072030(n+1)*A072030(n+1))`
-/

namespace A267178.P17051300395671400743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267179 (A072030 (n + 1) * A072030 (n + 1)).toNat

end

end A267178.P17051300395671400743

/-! ## A267178.P14623205088374436820

`and(A001511(2*n+1), A072030(n+1))`
-/

namespace A267178.P14623205088374436820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001511 (2 * n + 1)) (A072030 (n + 1))

end

end A267178.P14623205088374436820

/-! ## A267178.P13119500303090836499

`A007814(A072030(n+1)²+1)`
-/

namespace A267178.P13119500303090836499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A072030 (n + 1) ^ 2 + 1).toNat

end

end A267178.P13119500303090836499

/-! ## A267178.P12257872763293209490

`A050606(A072030(n+1)²)/2`
-/

namespace A267178.P12257872763293209490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050606 (A072030 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A267178.P12257872763293209490

/-! ## A267178.P15511319298908882921

`A003056(A050606(A072030(n+1)²))`
-/

namespace A267178.P15511319298908882921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A050606 (A072030 (n + 1) ^ 2).toNat).toNat

end

end A267178.P15511319298908882921

/-! ## A267178.P15042086871903686513

`and(A072030(n+1), A174692(n))`
-/

namespace A267178.P15042086871903686513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072030 (n + 1)) (A174692 n)

end

end A267178.P15042086871903686513

/-!
# A267179: Irregular triangle read by rows: successive bottom and right-hand borders of the infinite square array in A072030 (number of subtraction steps needed to compute GCD) read mod 2.

The programs for A267179, there is no canonical definition to state claims against.
-/

/-! ## A267179.P8001270122515701126

`A267177(n+1)%2`
-/

namespace A267179.P8001270122515701126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267177 (n + 1)) 2

end

end A267179.P8001270122515701126

/-! ## A267179.P4699146008631070555

`A000035(A267177(n+1))`
-/

namespace A267179.P4699146008631070555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A267177 (n + 1)).toNat

end

end A267179.P4699146008631070555

/-! ## A267179.P2357256855271384320

`and(1, A267177(n+1)²*A008349(n))`
-/

namespace A267179.P2357256855271384320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A267177 (n + 1) ^ 2 * A008349 n)

end

end A267179.P2357256855271384320

/-! ## A267179.P18082649832531251460

`and(1, (A008514(n)*A267177(n+1))²)`
-/

namespace A267179.P18082649832531251460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((A008514 n * A267177 (n + 1)) ^ 2)

end

end A267179.P18082649832531251460

/-! ## A267179.P5816279328366318514

`and(1, (A016756(n)*A267177(n+1))²)`
-/

namespace A267179.P5816279328366318514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((A016756 n * A267177 (n + 1)) ^ 2)

end

end A267179.P5816279328366318514

/-! ## A267179.P569667416329436205

`and(1, A267177(n+1)²*A016926(n))`
-/

namespace A267179.P569667416329436205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A267177 (n + 1) ^ 2 * A016926 n)

end

end A267179.P569667416329436205

/-! ## A267179.P2028742786207721092

`and(1, A000982(A267177(n+1)+2)+2)`
-/

namespace A267179.P2028742786207721092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000982 (A267177 (n + 1) + 2).toNat + 2)

end

end A267179.P2028742786207721092

/-! ## A267179.P6506697907213987497

`and(1, A267177(n+1)²*A001361(n+1))`
-/

namespace A267179.P6506697907213987497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A267177 (n + 1) ^ 2 * A001361 (n + 1))

end

end A267179.P6506697907213987497

/-! ## A267179.P15479587295555378055

`and(1, (A014771(n+1)*A267177(n+1))²)`
-/

namespace A267179.P15479587295555378055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((A014771 (n + 1) * A267177 (n + 1)) ^ 2)

end

end A267179.P15479587295555378055

/-! ## A267179.P8504545921921819890

`and(1, (A014773(n+1)*A267177(n+1))²)`
-/

namespace A267179.P8504545921921819890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((A014773 (n + 1) * A267177 (n + 1)) ^ 2)

end

end A267179.P8504545921921819890

/-! ## A267179.P7097493567285184406

`A091536(or(1, A267177(n+1))-A267177(n+1))`
-/

namespace A267179.P7097493567285184406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091536 (Int.lor 1 (A267177 (n + 1)) - A267177 (n + 1)).toNat

end

end A267179.P7097493567285184406

/-! ## A267179.P2785487045663320530

`A267178(A064788(n+1))`
-/

namespace A267179.P2785487045663320530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267178 (A064788 (n + 1)).toNat

end

end A267179.P2785487045663320530

/-! ## A267179.P9181929949098525970

`A267178(A064790(n+1))`
-/

namespace A267179.P9181929949098525970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267178 (A064790 (n + 1)).toNat

end

end A267179.P9181929949098525970

/-! ## A267179.P6163832340941929783

`A267178(A194280(n+1))`
-/

namespace A267179.P6163832340941929783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267178 (A194280 (n + 1)).toNat

end

end A267179.P6163832340941929783

/-! ## A267179.P14648763095393515398

`and(A267177(n+1), A267178(A267158(2*n)))`
-/

namespace A267179.P14648763095393515398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267177 (n + 1)) (A267178 (A267158 (2 * n)).toNat)

end

end A267179.P14648763095393515398

/-! ## A267179.P13876538605782673452

`and(1, A014725(n+1)²*A267177(n+1))`
-/

namespace A267179.P13876538605782673452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A014725 (n + 1) ^ 2 * A267177 (n + 1))

end

end A267179.P13876538605782673452

/-! ## A267179.P9342995606468376284

`and(A014726(n)²², A267177(n+1))`
-/

namespace A267179.P9342995606468376284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((A014726 n ^ 2) ^ 2) (A267177 (n + 1))

end

end A267179.P9342995606468376284

/-! ## A267179.P3137348281781297839

`and(A004119(n), A267177(n+1))`
-/

namespace A267179.P3137348281781297839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004119 n) (A267177 (n + 1))

end

end A267179.P3137348281781297839

/-! ## A267179.P2401084259085431929

`and(A195744(n), A267177(n+1))`
-/

namespace A267179.P2401084259085431929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A195744 n) (A267177 (n + 1))

end

end A267179.P2401084259085431929

/-! ## A267179.P1715404567865359766

`and(A122041(n+1), A267177(n+1))`
-/

namespace A267179.P1715404567865359766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122041 (n + 1)) (A267177 (n + 1))

end

end A267179.P1715404567865359766

/-!
# A267181: Array read by antidiagonals: T(i,j) (i>=0, j>=0) = number of steps to reach either top row or main diagonal using the steps (i,j)->(j,i) or (i,j)->(i,j-i).

The programs for A267181, there is no canonical definition to state claims against.
-/

/-! ## A267181.P5850360694675538541

`A292622(n)%A004736(A223918(n+1))`
-/

namespace A267181.P5850360694675538541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292622 n) (A004736 (A223918 (n + 1)).toNat)

end

end A267181.P5850360694675538541

/-! ## A267181.P15162932227737609174

`A255961(n)%A002260(A295797(n+1))`
-/

namespace A267181.P15162932227737609174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255961 n) (A002260 (A295797 (n + 1)).toNat)

end

end A267181.P15162932227737609174

/-! ## A267181.P13995965768929367982

`A292804(n)%A002260(A295797(n+1))`
-/

namespace A267181.P13995965768929367982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292804 n) (A002260 (A295797 (n + 1)).toNat)

end

end A267181.P13995965768929367982

/-! ## A267181.P5445263896427632657

`A286933(n)%A271130(A219695(n+1))`
-/

namespace A267181.P5445263896427632657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286933 n) (A271130 (A219695 (n + 1)).toNat)

end

end A267181.P5445263896427632657

/-! ## A267181.P12692108995807770643

`A214075(n)%A000203(A287740(n))`
-/

namespace A267181.P12692108995807770643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214075 n) (A000203 (A287740 n).toNat)

end

end A267181.P12692108995807770643

/-!
# A267182: Row 2 of the square array in A267181.

The programs for A267182, the canonical program `A267182.P5612039295454826532` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267182 has offset 0).

The definition of A267182 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267182.P5612039295454826532

`n-a(n-1)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A267182

/-- `n-a(n-1)` -/
def P5612039295454826532.Spec : Prop :=
  ∀ n, P5612039295454826532.a n = A267182 n

theorem P5612039295454826532.correct : P5612039295454826532.Spec := by
  intro n
  simp only [A267182]

end A267182

/-! ## A267182.P15054722516518999032

`abs(2-Δ[lcm(2, n)/2])`
-/

namespace A267182.P15054722516518999032
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |2 - (f1 (n + 1) - f1 n)|

end

end A267182.P15054722516518999032

namespace A267182

/-- `abs(2-Δ[lcm(2, n)/2])` -/
def P15054722516518999032.Spec : Prop :=
  ∀ n, P15054722516518999032.a n = (A267182 n : ℚ)

end A267182

/-! ## A267182.P9283366065829739159

`abs(2-Δ[n/gcd(2, n)])`
-/

namespace A267182.P9283366065829739159
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.gcd 2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |2 - (f1 (n + 1) - f1 n)|

end

end A267182.P9283366065829739159

namespace A267182

/-- `abs(2-Δ[n/gcd(2, n)])` -/
def P9283366065829739159.Spec : Prop :=
  ∀ n, P9283366065829739159.a n = (A267182 n : ℚ)

end A267182

/-! ## A267182.P17422458531951241921

`abs(Δ[ceil(xor(1, n²)/4)])`
-/

namespace A267182.P17422458531951241921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 (n ^ 2) : ℚ) / 4⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A267182.P17422458531951241921

namespace A267182

/-- `abs(Δ[ceil(xor(1, n²)/4)])` -/
def P17422458531951241921.Spec : Prop :=
  ∀ n, P17422458531951241921.a n = A267182 n

end A267182

/-! ## A267182.P16295016419676538220

`abs(ceil(n/2)-(-1)^n)`
-/

namespace A267182.P16295016419676538220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈(n : ℚ) / 2⌉ - (-1) ^ n|

end

end A267182.P16295016419676538220

namespace A267182

/-- `abs(ceil(n/2)-(-1)^n)` -/
def P16295016419676538220.Spec : Prop :=
  ∀ n, P16295016419676538220.a n = A267182 n

end A267182

/-! ## A267182.P8866373222694192302

`abs(xor(1, -n))-floor(n/2)`
-/

namespace A267182.P8866373222694192302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 (-(n : ℤ))| - ⌊(n : ℚ) / 2⌋

end

end A267182.P8866373222694192302

namespace A267182

/-- `abs(xor(1, -n))-floor(n/2)` -/
def P8866373222694192302.Spec : Prop :=
  ∀ n, P8866373222694192302.a n = A267182 n

end A267182

/-! ## A267182.P14328270623377408551

`∑[∑[ogf((1+x-3x^2+2x^3)/(1+x))]]`
-/

namespace A267182.P14328270623377408551
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -3, 2] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267182.P14328270623377408551

namespace A267182

/-- `∑[∑[ogf((1+x-3x^2+2x^3)/(1+x))]]` -/
def P14328270623377408551.Spec : Prop :=
  ∀ n, P14328270623377408551.a n = A267182 n

end A267182

/-! ## A267182.P13183050319100123280

`ogf((1+x-3x^2+2x^3)/(1-x-x^2+x^3))`
-/

namespace A267182.P13183050319100123280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -3, 2] [1, -1, -1, 1] n

end

end A267182.P13183050319100123280

namespace A267182

/-- `ogf((1+x-3x^2+2x^3)/(1-x-x^2+x^3))` -/
def P13183050319100123280.Spec : Prop :=
  ∀ n, P13183050319100123280.a n = A267182 n

end A267182

/-! ## A267182.P17577171352324735790

`ceil(abs(2*n*and(1, n)+2-n)/2)`
-/

namespace A267182.P17577171352324735790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(|(2 * n * Nat.land 1 n + 2 : ℤ) - (n : ℤ)| : ℚ) / 2⌉

end

end A267182.P17577171352324735790

namespace A267182

/-- `ceil(abs(2*n*and(1, n)+2-n)/2)` -/
def P17577171352324735790.Spec : Prop :=
  ∀ n, P17577171352324735790.a n = A267182 n

end A267182

/-! ## A267182.P9766604446541449923

`ceil(A165326(n)+n/2)`
-/

namespace A267182.P9766604446541449923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A165326 n : ℚ) + (n : ℚ) / 2⌉

end

end A267182.P9766604446541449923

namespace A267182

/-- `ceil(A165326(n)+n/2)` -/
def P9766604446541449923.Spec : Prop :=
  ∀ n, P9766604446541449923.a n = A267182 n

end A267182

/-! ## A267182.P14958773268193057297

`A168209(n+1)%(n+2)`
-/

namespace A267182.P14958773268193057297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168209 (n + 1)) (n + 2 : ℤ)

end

end A267182.P14958773268193057297

namespace A267182

/-- `A168209(n+1)%(n+2)` -/
def P14958773268193057297.Spec : Prop :=
  ∀ n, P14958773268193057297.a n = A267182 n

end A267182

/-! ## A267182.P13982823883190892115

`A168282(n+1)%(2*(n+1))`
-/

namespace A267182.P13982823883190892115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168282 (n + 1)) (2 * (n + 1) : ℤ)

end

end A267182.P13982823883190892115

namespace A267182

/-- `A168282(n+1)%(2*(n+1))` -/
def P13982823883190892115.Spec : Prop :=
  ∀ n, P13982823883190892115.a n = A267182 n

end A267182

/-! ## A267182.P14451609706862864529

`∑[and(7, A280193(n))]%(4*n+2)`
-/

namespace A267182.P14451609706862864529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (A280193 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (4 * n + 2 : ℤ)

end

end A267182.P14451609706862864529

namespace A267182

/-- `∑[and(7, A280193(n))]%(4*n+2)` -/
def P14451609706862864529.Spec : Prop :=
  ∀ n, P14451609706862864529.a n = A267182 n

end A267182

/-! ## A267182.P15658425161963490453

`∑[(n-2)%2]+log2(A010685(n))+1`
-/

namespace A267182.P15658425161963490453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - 2) 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) + (Real.logb 2 (A010685 n : ℝ) + 1)

end

end A267182.P15658425161963490453

namespace A267182

/-- `∑[(n-2)%2]+log2(A010685(n))+1` -/
def P15658425161963490453.Spec : Prop :=
  ∀ n, P15658425161963490453.a n = (A267182 n : ℝ)

end A267182

/-! ## A267182.P8504326667283428999

`A065033(n)+A062157(n)`
-/

namespace A267182.P8504326667283428999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n + A062157 n

end

end A267182.P8504326667283428999

namespace A267182

/-- `A065033(n)+A062157(n)` -/
def P8504326667283428999.Spec : Prop :=
  ∀ n, P8504326667283428999.a n = A267182 n

end A267182

/-! ## A267182.P16115908507949979653

`A097065(n)+A049071(n)`
-/

namespace A267182.P16115908507949979653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097065 n + A049071 n

end

end A267182.P16115908507949979653

namespace A267182

/-- `A097065(n)+A049071(n)` -/
def P16115908507949979653.Spec : Prop :=
  ∀ n, P16115908507949979653.a n = A267182 n

end A267182

/-! ## A267182.P5411467588808848340

`A165326(n)+A110654(n)`
-/

namespace A267182.P5411467588808848340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 n + A110654 n

end

end A267182.P5411467588808848340

namespace A267182

/-- `A165326(n)+A110654(n)` -/
def P5411467588808848340.Spec : Prop :=
  ∀ n, P5411467588808848340.a n = A267182 n

end A267182

/-! ## A267182.P3563461746217200789

`A052938(n)-A134451(n)`
-/

namespace A267182.P3563461746217200789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n - A134451 n

end

end A267182.P3563461746217200789

namespace A267182

/-- `A052938(n)-A134451(n)` -/
def P3563461746217200789.Spec : Prop :=
  ∀ n, P3563461746217200789.a n = A267182 n

end A267182

/-! ## A267182.P7030713803464134706

`A053438(n)-A168237(n)`
-/

namespace A267182.P7030713803464134706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053438 n - A168237 n

end

end A267182.P7030713803464134706

namespace A267182

/-- `A053438(n)-A168237(n)` -/
def P7030713803464134706.Spec : Prop :=
  ∀ n, P7030713803464134706.a n = A267182 n

end A267182

/-! ## A267182.P6324943758044785847

`A296911(n)-A139593(n)`
-/

namespace A267182.P6324943758044785847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296911 n - A139593 n

end

end A267182.P6324943758044785847

namespace A267182

/-- `A296911(n)-A139593(n)` -/
def P6324943758044785847.Spec : Prop :=
  ∀ n, P6324943758044785847.a n = A267182 n

end A267182

/-!
# A267183: Row 3 of the square array in A267181.

The programs for A267183, the canonical program `A267183.P10447939231631785282` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267183 has offset 0).

The definition of A267183 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267183.P10447939231631785282

`a(n-3)+1` with `a(0)=1, a(1)=3, a(2)=4, a(3)=0`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A267183

/-- `a(n-3)+1` -/
def P10447939231631785282.Spec : Prop :=
  ∀ n, (P10447939231631785282.a n : ℤ) = A267183 n

theorem P10447939231631785282.correct : P10447939231631785282.Spec := by
  intro n
  simp only [A267183]

end A267183

/-! ## A267183.P15407245657540412289

`∑[floor(a(n-3))]` with `a(0)=1, a(1)=2, a(2)=1, a(3)=-4, a(4)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A267183.P15407245657540412289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1, -4, 4] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267183.P15407245657540412289

namespace A267183

/-- `∑[floor(a(n-3))]` -/
def P15407245657540412289.Spec : Prop :=
  ∀ n, P15407245657540412289.a n = A267183 n

end A267183

/-! ## A267183.P4777402215181499660

`4-(a(n-1)-(n-a(n-2)))` with `a(0)=1, a(1)=3, a(2)=4`
-/

namespace A267183.P4777402215181499660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 4] fun n a =>
  4 - (a (n - 1) - ((n : ℤ) - a (n - 2)))

end

end A267183.P4777402215181499660

namespace A267183

/-- `4-(a(n-1)-(n-a(n-2)))` -/
def P4777402215181499660.Spec : Prop :=
  ∀ n, P4777402215181499660.a n = A267183 n

end A267183

/-! ## A267183.P2266763076936228517

`A049071(A004396(n))+A008611(n)`
-/

namespace A267183.P2266763076936228517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049071 (A004396 n).toNat + A008611 n

end

end A267183.P2266763076936228517

namespace A267183

/-- `A049071(A004396(n))+A008611(n)` -/
def P2266763076936228517.Spec : Prop :=
  ∀ n, P2266763076936228517.a n = A267183 n

end A267183

/-! ## A267183.P2248809605032989896

`A086970(A004396(n))-A064429(n)`
-/

namespace A267183.P2248809605032989896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086970 (A004396 n).toNat - A064429 n

end

end A267183.P2248809605032989896

namespace A267183

/-- `A086970(A004396(n))-A064429(n)` -/
def P2248809605032989896.Spec : Prop :=
  ∀ n, P2248809605032989896.a n = A267183 n

end A267183

/-! ## A267183.P16464562216201932818

`abs(A152832(A133310(n+1)))`
-/

namespace A267183.P16464562216201932818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A152832 (A133310 (n + 1)).toNat|

end

end A267183.P16464562216201932818

namespace A267183

/-- `abs(A152832(A133310(n+1)))` -/
def P16464562216201932818.Spec : Prop :=
  ∀ n, P16464562216201932818.a n = A267183 n

end A267183

/-! ## A267183.P5383103770140990327

`A267184(n+1)+A267186(n)-A267187(n+1)`
-/

namespace A267183.P5383103770140990327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267184 (n + 1) + (A267186 n - A267187 (n + 1))

end

end A267183.P5383103770140990327

namespace A267183

/-- `A267184(n+1)+A267186(n)-A267187(n+1)` -/
def P5383103770140990327.Spec : Prop :=
  ∀ n, P5383103770140990327.a n = A267183 n

end A267183

/-! ## A267183.P4897459360446232581

`abs(3-A135997(n+6))`
-/

namespace A267183.P4897459360446232581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - A135997 (n + 6)|

end

end A267183.P4897459360446232581

namespace A267183

/-- `abs(3-A135997(n+6))` -/
def P4897459360446232581.Spec : Prop :=
  ∀ n, P4897459360446232581.a n = A267183 n

end A267183

/-! ## A267183.P7509953551686353506

`A194960(n+1)+A117188(A103517(n))`
-/

namespace A267183.P7509953551686353506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194960 (n + 1) + A117188 (A103517 n).toNat

end

end A267183.P7509953551686353506

namespace A267183

/-- `A194960(n+1)+A117188(A103517(n))` -/
def P7509953551686353506.Spec : Prop :=
  ∀ n, P7509953551686353506.a n = A267183 n

end A267183

/-! ## A267183.P2369503324792989053

`A016789(n)-A334998(A008576(n))`
-/

namespace A267183.P2369503324792989053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n - A334998 (A008576 n).toNat

end

end A267183.P2369503324792989053

namespace A267183

/-- `A016789(n)-A334998(A008576(n))` -/
def P2369503324792989053.Spec : Prop :=
  ∀ n, P2369503324792989053.a n = A267183 n

end A267183

/-!
# A267184: Row 4 of the square array in A267181.

The programs for A267184, the canonical program `A267184.P2487056433763622166` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267184 has offset 0).

The definition of A267184 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267184.P2487056433763622166

`a(n-4)+1` with `a(0)=1, a(1)=4, a(2)=2, a(3)=5, a(4)=0`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A267184

/-- `a(n-4)+1` -/
def P2487056433763622166.Spec : Prop :=
  ∀ n, (P2487056433763622166.a n : ℤ) = A267184 n

theorem P2487056433763622166.correct : P2487056433763622166.Spec := by
  intro n
  simp only [A267184]

end A267184

/-! ## A267184.P17811351786874300199

`A090964(n)-3*A002265(n)`
-/

namespace A267184.P17811351786874300199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090964 n - 3 * A002265 n

end

end A267184.P17811351786874300199

namespace A267184

/-- `A090964(n)-3*A002265(n)` -/
def P17811351786874300199.Spec : Prop :=
  ∀ n, P17811351786874300199.a n = A267184 n

end A267184

/-! ## A267184.P3870803614680112512

`A090964(n)-A008585(A002265(n))`
-/

namespace A267184.P3870803614680112512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090964 n - A008585 (A002265 n).toNat

end

end A267184.P3870803614680112512

namespace A267184

/-- `A090964(n)-A008585(A002265(n))` -/
def P3870803614680112512.Spec : Prop :=
  ∀ n, P3870803614680112512.a n = A267184 n

end A267184

/-! ## A267184.P14569917113255760326

`A090964(n)-A008585(A004526(A004526(n)))`
-/

namespace A267184.P14569917113255760326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090964 n - A008585 (A004526 (A004526 n).toNat).toNat

end

end A267184.P14569917113255760326

namespace A267184

/-- `A090964(n)-A008585(A004526(A004526(n)))` -/
def P14569917113255760326.Spec : Prop :=
  ∀ n, P14569917113255760326.a n = A267184 n

end A267184

/-!
# A267185: Column 2 of the square array in A267181.

The programs for A267185, the canonical program `A267185.P4731541730815965369` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267185 has offset 0).

The definition of A267185 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267185.P4731541730815965369

`a(n-2)+1` with `a(0)=0, a(1)=1, a(2)=0, a(3)=4, a(4)=2`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A267185

/-- `a(n-2)+1` -/
def P4731541730815965369.Spec : Prop :=
  ∀ n, (P4731541730815965369.a n : ℤ) = A267185 n

theorem P4731541730815965369.correct : P4731541730815965369.Spec := by
  intro n
  simp only [A267185]

end A267185

/-! ## A267185.P5596965593756243061

`2-(a(n-1)-n)` with `a(0)=0, a(1)=1, a(2)=0, a(3)=4`
-/

namespace A267185.P5596965593756243061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0, 4] fun n a =>
  2 - (a (n - 1) - (n : ℤ))

end

end A267185.P5596965593756243061

namespace A267185

/-- `2-(a(n-1)-n)` -/
def P5596965593756243061.Spec : Prop :=
  ∀ n, P5596965593756243061.a n = A267185 n

end A267185

/-! ## A267185.P1557694231623845871

`ogf((-x+x^2-3x^3+x^4+x^5)/(-1+x+x^2-x^3))`
-/

namespace A267185.P1557694231623845871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -1, 3, -1, -1] [1, -1, -1, 1] n

end

end A267185.P1557694231623845871

namespace A267185

/-- `ogf((-x+x^2-3x^3+x^4+x^5)/(-1+x+x^2-x^3))` -/
def P1557694231623845871.Spec : Prop :=
  ∀ n, P1557694231623845871.a n = A267185 n

end A267185

/-! ## A267185.P313789143699598722

`A084964(n+1)%(3-n²)`
-/

namespace A267185.P313789143699598722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084964 (n + 1)) (3 - (n ^ 2 : ℤ))

end

end A267185.P313789143699598722

namespace A267185

/-- `A084964(n+1)%(3-n²)` -/
def P313789143699598722.Spec : Prop :=
  ∀ n, P313789143699598722.a n = A267185 n

end A267185

/-! ## A267185.P17341342461408278604

`A186752(n+1)%A097362(n+1)`
-/

namespace A267185.P17341342461408278604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186752 (n + 1)) (A097362 (n + 1))

end

end A267185.P17341342461408278604

namespace A267185

/-- `A186752(n+1)%A097362(n+1)` -/
def P17341342461408278604.Spec : Prop :=
  ∀ n, P17341342461408278604.a n = A267185 n

end A267185

/-! ## A267185.P9213224269949531061

`C(A084964(n+1), A001399(C(3, n)))`
-/

namespace A267185.P9213224269949531061
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A084964 (n + 1)).toNat (A001399 (Nat.choose 3 n)).toNat

end

end A267185.P9213224269949531061

namespace A267185

/-- `C(A084964(n+1), A001399(C(3, n)))` -/
def P9213224269949531061.Spec : Prop :=
  ∀ n, (P9213224269949531061.a n : ℤ) = A267185 n

end A267185

/-! ## A267185.P13811307766713675143

`A267873(n)-A032766(A004442(n))`
-/

namespace A267185.P13811307766713675143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267873 n - A032766 (A004442 n).toNat

end

end A267185.P13811307766713675143

namespace A267185

/-- `A267873(n)-A032766(A004442(n))` -/
def P13811307766713675143.Spec : Prop :=
  ∀ n, P13811307766713675143.a n = A267185 n

end A267185

/-! ## A267185.P5162545355166064514

`record[A267881(n)]%A266981(n)`
-/

namespace A267185.P5162545355166064514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267881 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A266981 n)

end

end A267185.P5162545355166064514

namespace A267185

/-- `record[A267881(n)]%A266981(n)` -/
def P5162545355166064514.Spec : Prop :=
  ∀ n, P5162545355166064514.a n = A267185 n

end A267185

/-! ## A267185.P13506114134459121850

`Δ[A209350(n)]%A000203(n+1)`
-/

namespace A267185.P13506114134459121850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209350 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000203 (n + 1))

end

end A267185.P13506114134459121850

namespace A267185

/-- `Δ[A209350(n)]%A000203(n+1)` -/
def P13506114134459121850.Spec : Prop :=
  ∀ n, P13506114134459121850.a n = A267185 n

end A267185

/-! ## A267185.P10186800987096083379

`A267186(n+1)+A267182(n)-A267183(n+1)`
-/

namespace A267185.P10186800987096083379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267186 (n + 1) + (A267182 n - A267183 (n + 1))

end

end A267185.P10186800987096083379

namespace A267185

/-- `A267186(n+1)+A267182(n)-A267183(n+1)` -/
def P10186800987096083379.Spec : Prop :=
  ∀ n, P10186800987096083379.a n = A267185 n

end A267185

/-! ## A267185.P2575519661992632560

`Δ[A209350(n)]%A000070(n)`
-/

namespace A267185.P2575519661992632560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209350 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000070 n)

end

end A267185.P2575519661992632560

namespace A267185

/-- `Δ[A209350(n)]%A000070(n)` -/
def P2575519661992632560.Spec : Prop :=
  ∀ n, P2575519661992632560.a n = A267185 n

end A267185

/-! ## A267185.P2920452061572950870

`A267187(2*n)`
-/

namespace A267185.P2920452061572950870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267187 (2 * n)

end

end A267185.P2920452061572950870

namespace A267185

/-- `A267187(2*n)` -/
def P2920452061572950870.Spec : Prop :=
  ∀ n, P2920452061572950870.a n = A267185 n

end A267185

/-! ## A267185.P1554425872175211470

`A273834(n)%A047204(n+1)`
-/

namespace A267185.P1554425872175211470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273834 n) (A047204 (n + 1))

end

end A267185.P1554425872175211470

namespace A267185

/-- `A273834(n)%A047204(n+1)` -/
def P1554425872175211470.Spec : Prop :=
  ∀ n, P1554425872175211470.a n = A267185 n

end A267185

/-! ## A267185.P6289069196805026708

`A014681(n)-A025581(A030978(n))`
-/

namespace A267185.P6289069196805026708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n - A025581 (A030978 n).toNat

end

end A267185.P6289069196805026708

namespace A267185

/-- `A014681(n)-A025581(A030978(n))` -/
def P6289069196805026708.Spec : Prop :=
  ∀ n, P6289069196805026708.a n = A267185 n

end A267185

/-! ## A267185.P13795212019266013552

`A084964(A209278(A052905(n)))`
-/

namespace A267185.P13795212019266013552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084964 (A209278 (A052905 n).toNat).toNat

end

end A267185.P13795212019266013552

namespace A267185

/-- `A084964(A209278(A052905(n)))` -/
def P13795212019266013552.Spec : Prop :=
  ∀ n, P13795212019266013552.a n = A267185 n

end A267185

/-!
# A267186: Column 3 of the square array in A267181.

The programs for A267186, the canonical program `A267186.P1385868593414665313` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267186 has offset 0).

The definition of A267186 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267186.P1385868593414665313

`a(n-3)+1` with `a(0)=0, a(1)=2, a(2)=3, a(3)=0, a(4)=5, a(5)=6, a(6)=2`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A267186

/-- `a(n-3)+1` -/
def P1385868593414665313.Spec : Prop :=
  ∀ n, (P1385868593414665313.a n : ℤ) = A267186 n

theorem P1385868593414665313.correct : P1385868593414665313.Spec := by
  intro n
  simp only [A267186]

end A267186

/-! ## A267186.P6337039914128657610

`A267187(n+1)+A267183(n)-A267184(n+1)`
-/

namespace A267186.P6337039914128657610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267187 (n + 1) + (A267183 n - A267184 (n + 1))

end

end A267186.P6337039914128657610

namespace A267186

/-- `A267187(n+1)+A267183(n)-A267184(n+1)` -/
def P6337039914128657610.Spec : Prop :=
  ∀ n, P6337039914128657610.a n = A267186 n

end A267186

/-! ## A267186.P5438110314494473968

`A267187(A004523(2*n+1))+A102283(n)`
-/

namespace A267186.P5438110314494473968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267187 (A004523 (2 * n + 1)).toNat + A102283 n

end

end A267186.P5438110314494473968

namespace A267186

/-- `A267187(A004523(2*n+1))+A102283(n)` -/
def P5438110314494473968.Spec : Prop :=
  ∀ n, P5438110314494473968.a n = A267186 n

end A267186

/-!
# A267187: Column 4 of the square array in A267181.

The programs for A267187, the canonical program `A267187.P4570305749466498394` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267187 has offset 0).

The definition of A267187 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267187.P4570305749466498394

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=3, a(2)=1, a(3)=4, a(4)=0, a(5)=6, a(6)=4, a(7)=7, a(8)=2, a(9)=7`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A267187

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P4570305749466498394.Spec : Prop :=
  ∀ n, P4570305749466498394.a n = A267187 n

theorem P4570305749466498394.correct : P4570305749466498394.Spec := by
  intro n
  simp only [A267187]

end A267187

/-!
# A267188: Square array read by antidiagonals: T(i,j) = A267181(i,j) mod 2, with i >= 0, j >= 0.

The programs for A267188, there is no canonical definition to state claims against.
-/

/-! ## A267188.P9913514852097743832

`A267181(n)%2`
-/

namespace A267188.P9913514852097743832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267181 n) 2

end

end A267188.P9913514852097743832

/-! ## A267188.P3573012290350839500

`and(1, A267181(abs(1-n)+1))`
-/

namespace A267188.P3573012290350839500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A267181 (|1 - (n : ℤ)| + 1).toNat)

end

end A267188.P3573012290350839500

/-! ## A267188.P85947827266166168

`A000035(A267181(n))`
-/

namespace A267188.P85947827266166168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A267181 n).toNat

end

end A267188.P85947827266166168

/-! ## A267188.P1572994636698575099

`A010873(A267181(n)²)`
-/

namespace A267188.P1572994636698575099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A267181 n ^ 2).toNat

end

end A267188.P1572994636698575099

/-! ## A267188.P13151630951020994402

`A091337(A267181(n)²)`
-/

namespace A267188.P13151630951020994402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091337 (A267181 n ^ 2).toNat

end

end A267188.P13151630951020994402

/-! ## A267188.P11826555393371102429

`A098108(A267181(n)²)`
-/

namespace A267188.P11826555393371102429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098108 (A267181 n ^ 2).toNat

end

end A267188.P11826555393371102429

/-! ## A267188.P3500359846766192096

`A267155(A267181(n)+10)`
-/

namespace A267188.P3500359846766192096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267155 (A267181 n + 10).toNat

end

end A267188.P3500359846766192096

/-! ## A267188.P2832511619576886009

`A267179(A267181(n)+24)`
-/

namespace A267188.P2832511619576886009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267179 (A267181 n + 24).toNat

end

end A267188.P2832511619576886009

/-! ## A267188.P10478805680028856158

`A267178(or(10, A267181(n)))`
-/

namespace A267188.P10478805680028856158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267178 (Int.lor 10 (A267181 n)).toNat

end

end A267188.P10478805680028856158

/-! ## A267188.P7770013549224067794

`and(A267181(n), A273796(n))`
-/

namespace A267188.P7770013549224067794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267181 n) (A273796 n)

end

end A267188.P7770013549224067794

/-!
# A267189: (Cubes of positive numbers) that are not the sum of three nonzero squares.

The programs for A267189, there is no canonical definition to state claims against.
-/

/-! ## A267189.P12977517325389023945

`eq[A000164(n), A209229(n)]^3`
-/

namespace A267189.P12977517325389023945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 3

end

end A267189.P12977517325389023945

/-! ## A267189.P8766111650143015627

`A000578(eq[A000164(n), A209229(n)])`
-/

namespace A267189.P8766111650143015627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A267189.P8766111650143015627

/-! ## A267189.P17259640641799387735

`A000578(∩[A004214(n+1), A004436(n+1)])`
-/

namespace A267189.P17259640641799387735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004436 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A267189.P17259640641799387735

/-! ## A267189.P6018643362362958885

`∩[A004214(n+1), n^3]`
-/

namespace A267189.P6018643362362958885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004214 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A267189.P6018643362362958885

/-! ## A267189.P8306148532828711050

`∩[A134739(n+1), A004214(n+1)]`
-/

namespace A267189.P8306148532828711050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267189.P8306148532828711050

/-!
# A267190: Number of ON cells after n generations of the cellular automaton on the square grid that is described in the Comments.

The programs for A267190, there is no canonical definition to state claims against.
-/

/-! ## A267190.P17844182535556850657

`∑[A267191(A028310(n))]-1`
-/

namespace A267190.P17844182535556850657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267191 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A267190.P17844182535556850657

/-! ## A267190.P10013844530535674310

`∑[A057427(n)*A267191(A028310(n))]`
-/

namespace A267190.P10013844530535674310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A267191 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267190.P10013844530535674310

/-! ## A267190.P18270949417723827717

`∑[A267191(A028310(n))%A006857(n)]`
-/

namespace A267190.P18270949417723827717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267191 (A028310 n).toNat) (A006857 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267190.P18270949417723827717

/-! ## A267190.P7450277234137235408

`∑[A267191(A233583(n+1))%A285665(n)]`
-/

namespace A267190.P7450277234137235408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267191 (A233583 (n + 1)).toNat) (A285665 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267190.P7450277234137235408

/-! ## A267190.P4141193816019544860

`∑[A267191(n+1)]-A267191(n+1)`
-/

namespace A267190.P4141193816019544860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267191 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A267191 (n + 1)

end

end A267190.P4141193816019544860

/-!
# A267191: Number of new cells turned ON at generation n in cellular automaton described in A267190.

The programs for A267191, there is no canonical definition to state claims against.
-/

/-! ## A267191.P1176677995629306413

`Δ[A267190(n)]`
-/

namespace A267191.P1176677995629306413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267190 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A267191.P1176677995629306413

/-! ## A267191.P5884969002257562430

`A267190(n+1)-A267190(n)`
-/

namespace A267191.P5884969002257562430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267190 (n + 1) - A267190 n

end

end A267191.P5884969002257562430

/-! ## A267191.P15902619260834449199

`record[A267190(abs(1-n))]-A267190(n)`
-/

namespace A267191.P15902619260834449199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267190 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A267190 n

end

end A267191.P15902619260834449199

/-! ## A267191.P5975011601366574703

`A267190(n+1)+or(-A267190(n), A001221(n+1))`
-/

namespace A267191.P5975011601366574703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267190 (n + 1) + Int.lor (-A267190 n) (A001221 (n + 1))

end

end A267191.P5975011601366574703

/-! ## A267191.P466821288226385051

`A267190(n+1)+A024000(A267190(n)+1)`
-/

namespace A267191.P466821288226385051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267190 (n + 1) + A024000 (A267190 n + 1).toNat

end

end A267191.P466821288226385051

/-! ## A267191.P14565422366219769685

`A016813(A293392(n))-A267190(n)`
-/

namespace A267191.P14565422366219769685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A293392 n).toNat - A267190 n

end

end A267191.P14565422366219769685

/-!
# A267192: Column 3 of triangle in A059317 (the Pascal "Rhombus").

The programs for A267192, there is no canonical definition to state claims against.
-/

/-! ## A267192.P7013213168939683941

`A059317(∑[2*n]+3)%A147193(n+1)`
-/

namespace A267192.P7013213168939683941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059317 (∑ j ∈ Finset.range (n + 1), f1 j + 3)) (A147193 (n + 1))

end

end A267192.P7013213168939683941

/-! ## A267192.P5828146850578721359

`A274715(A271270(n)+A004525(n))`
-/

namespace A267192.P5828146850578721359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274715 (A271270 n + A004525 n).toNat

end

end A267192.P5828146850578721359

/-!
# A267193: Complement obverse of n.

The programs for A267193, there is no canonical definition to state claims against.
-/

/-! ## A267193.P1912786087586855145

`A061601(n)+A056965(n)`
-/

namespace A267193.P1912786087586855145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 n + A056965 n

end

end A267193.P1912786087586855145

/-! ## A267193.P11675466192041740752

`A061601(n)+n-A004086(n)`
-/

namespace A267193.P11675466192041740752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 n + ((n : ℤ) - A004086 n)

end

end A267193.P11675466192041740752

/-! ## A267193.P8070745727432066153

`A111708(n)/(n+1)-A004086(n)`
-/

namespace A267193.P8070745727432066153
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111708 n : ℚ) / (n + 1 : ℚ) - (A004086 n : ℚ)

end

end A267193.P8070745727432066153

/-! ## A267193.P4426759426694729206

`A056965(n)+A055120(A048379(n))`
-/

namespace A267193.P4426759426694729206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 n + A055120 (A048379 n).toNat

end

end A267193.P4426759426694729206

/-! ## A267193.P471274208094563842

`A005843(n)+A061601(n)-A056964(n)`
-/

namespace A267193.P471274208094563842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A061601 n - A056964 n)

end

end A267193.P471274208094563842

/-! ## A267193.P1708596392925714720

`A061601(n)-A001489(n)-A004086(n)`
-/

namespace A267193.P1708596392925714720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 n - A001489 n - A004086 n

end

end A267193.P1708596392925714720

/-!
# A267194: Indices of zeros (winning positions) in A046695 (Sprague-Grundy values for the game Couples-are-Forever).

The programs for A267194, there is no canonical definition to state claims against.
-/

/-! ## A267194.P2935119586946545401

`A046696(n)-1`
-/

namespace A267194.P2935119586946545401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046696 n - 1

end

end A267194.P2935119586946545401

/-! ## A267194.P16477155175391720779

`eq[0, A046695(n)]`
-/

namespace A267194.P16477155175391720779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046695 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A267194.P16477155175391720779

/-! ## A267194.P18339131919364707334

`A023443(A046696(n))`
-/

namespace A267194.P18339131919364707334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A046696 n).toNat

end

end A267194.P18339131919364707334

/-! ## A267194.P12806278042101354781

`A023444(A046696(n)+1)`
-/

namespace A267194.P12806278042101354781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A046696 n + 1).toNat

end

end A267194.P12806278042101354781

/-! ## A267194.P12785277444929213816

`A289207(A046696(n)+1)`
-/

namespace A267194.P12785277444929213816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A046696 n + 1).toNat

end

end A267194.P12785277444929213816

/-!
# A267196: Labeled graded semiorders.

The programs for A267196, there is no canonical definition to state claims against.
-/

/-! ## A267196.P4015835522079037621

`or(1, A000556(n)-A320352(n))`
-/

namespace A267196.P4015835522079037621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000556 n - A320352 n)

end

end A267196.P4015835522079037621

/-! ## A267196.P7383281219521648504

`A000556(n)+A057427(n)-A320352(n)`
-/

namespace A267196.P7383281219521648504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000556 n + (A057427 n - A320352 n)

end

end A267196.P7383281219521648504

/-! ## A267196.P12692702068847357054

`A000556(n)+A178489(n)-A320352(n)`
-/

namespace A267196.P12692702068847357054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000556 n + (A178489 n - A320352 n)

end

end A267196.P12692702068847357054

/-! ## A267196.P7774349153329828714

`A000556(n)+abs(A011590(n))-A320352(n)`
-/

namespace A267196.P7774349153329828714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000556 n + (|A011590 n| - A320352 n)

end

end A267196.P7774349153329828714

/-! ## A267196.P15818809661236863533

`and(1, A014551(n))+A000556(n)-A320352(n)`
-/

namespace A267196.P15818809661236863533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A014551 n) + (A000556 n - A320352 n)

end

end A267196.P15818809661236863533

/-!
# A267197: T(n,k)=Number of nXk arrays containing k copies of 0..n-1 with every element equal to or 1 greater than any north, southwest or northwest neighbors modulo n and the upper left element equal to 0.

The programs for A267197, there is no canonical definition to state claims against.
-/

/-! ## A267197.P17655614263764167663

`A267401(n+1)-A055641(A219110(3*n+5))`
-/

namespace A267197.P17655614263764167663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267401 (n + 1) - A055641 (A219110 (3 * n + 5)).toNat

end

end A267197.P17655614263764167663

/-! ## A267197.P4406086098466376943

`C(A267401(n+1), A325622(A274391(n)))`
-/

namespace A267197.P4406086098466376943
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A267401 (n + 1)).toNat (A325622 (A274391 n).toNat).toNat

end

end A267197.P4406086098466376943

/-! ## A267197.P16779406322838301891

`C(A267401(n+1), A267401(A266832(n+1)+1))`
-/

namespace A267197.P16779406322838301891
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A267401 (n + 1)).toNat (A267401 (A266832 (n + 1) + 1).toNat).toNat

end

end A267197.P16779406322838301891

/-! ## A267197.P2027160006059330252

`A267401(n+1)+A178798(A131689(n))`
-/

namespace A267197.P2027160006059330252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267401 (n + 1) + A178798 (A131689 n).toNat

end

end A267197.P2027160006059330252

/-! ## A267197.P473938158596872354

`A267401(n+1)%A000292(A112752(3*n+5))`
-/

namespace A267197.P473938158596872354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267401 (n + 1)) (A000292 (A112752 (3 * n + 5)).toNat)

end

end A267197.P473938158596872354

/-!
# A267198: Number of nX(n+2) arrays of permutations of n+2 copies of 0..n-1 with every element equal to or 1 greater than any north, southwest or northwest neighbors modulo n and the upper left element equal to 0.

The programs for A267198, there is no canonical definition to state claims against.
-/

/-! ## A267198.P12502104401597934505

`A267197(∑[4*(n+1)])`
-/

namespace A267198.P12502104401597934505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267197 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A267198.P12502104401597934505

/-!
# A267199: Number of nX(n+3) arrays of permutations of n+3 copies of 0..n-1 with every element equal to or 1 greater than any north, southwest or northwest neighbors modulo n and the upper left element equal to 0.

The programs for A267199, there is no canonical definition to state claims against.
-/

/-! ## A267199.P16013178837337625061

`A267197(∑[4*n+6]+1)`
-/

namespace A267199.P16013178837337625061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267197 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A267199.P16013178837337625061

