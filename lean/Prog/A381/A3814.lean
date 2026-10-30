import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A381401: a(n) is the number of (possibly non-distinct) prime elements in the multiset of bases and exponents in the prime factorization of n.

The programs for A381401, the canonical program `A381401.P17306812054606808102` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381401 has offset 1).

The definition of A381401 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A381401.P17306812054606808102

`∑{e}[n+1, A010051(#)+1]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A381401

/-- `∑{e}[n+1, A010051(#)+1]` -/
def P17306812054606808102.Spec : Prop :=
  ∀ n, P17306812054606808102.a n = A381401 (n + 1)

theorem P17306812054606808102.correct : P17306812054606808102.Spec := by
  intro n
  simp only [A381401, Nat.add_sub_cancel]

end A381401

/-! ## A381401.P10695960526924737902

`∑{e}[n+1, A053797(A000005(#))]`
-/

namespace A381401.P10695960526924737902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A053797 (A000005 (Nat.factorization (f1 n) p)).toNat

end

end A381401.P10695960526924737902

namespace A381401

/-- `∑{e}[n+1, A053797(A000005(#))]` -/
def P10695960526924737902.Spec : Prop :=
  ∀ n, P10695960526924737902.a n = A381401 (n + 1)

end A381401

/-! ## A381401.P11358878816163906833

`A101436(n+1)+A001221(n+1)`
-/

namespace A381401.P11358878816163906833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101436 (n + 1) + A001221 (n + 1)

end

end A381401.P11358878816163906833

namespace A381401

/-- `A101436(n+1)+A001221(n+1)` -/
def P11358878816163906833.Spec : Prop :=
  ∀ n, P11358878816163906833.a n = A381401 (n + 1)

end A381401

/-! ## A381401.P8123847512993069662

`A125029(n+1)+A056170(n+1)`
-/

namespace A381401.P8123847512993069662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125029 (n + 1) + A056170 (n + 1)

end

end A381401.P8123847512993069662

namespace A381401

/-- `A125029(n+1)+A056170(n+1)` -/
def P8123847512993069662.Spec : Prop :=
  ∀ n, P8123847512993069662.a n = A381401 (n + 1)

end A381401

/-! ## A381401.P13481836773790020409

`A125070(n+1)+2*A101436(n+1)`
-/

namespace A381401.P13481836773790020409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125070 (n + 1) + 2 * A101436 (n + 1)

end

end A381401.P13481836773790020409

namespace A381401

/-- `A125070(n+1)+2*A101436(n+1)` -/
def P13481836773790020409.Spec : Prop :=
  ∀ n, P13481836773790020409.a n = A381401 (n + 1)

end A381401

/-! ## A381401.P5107594639675646467

`2*A001221(n+1)-A125070(n+1)`
-/

namespace A381401.P5107594639675646467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001221 (n + 1) - A125070 (n + 1)

end

end A381401.P5107594639675646467

namespace A381401

/-- `2*A001221(n+1)-A125070(n+1)` -/
def P5107594639675646467.Spec : Prop :=
  ∀ n, P5107594639675646467.a n = A381401 (n + 1)

end A381401

/-! ## A381401.P12123815271768029445

`A375272(A318469((n+1)²)²)`
-/

namespace A381401.P12123815271768029445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375272 (A318469 ((n + 1) ^ 2) ^ 2).toNat

end

end A381401.P12123815271768029445

namespace A381401

/-- `A375272(A318469((n+1)²)²)` -/
def P12123815271768029445.Spec : Prop :=
  ∀ n, P12123815271768029445.a n = A381401 (n + 1)

end A381401

/-!
# A381402: Numbers k such that the set P of bases and exponents in the prime factorization of k (including exponents = 1) contains all numbers from min(P) to max(P).

The programs for A381402, there is no canonical definition to state claims against.
-/

/-! ## A381402.P5594170331065523689

`record[A049599(n+1)*A083399(3*n+4)]`
-/

namespace A381402.P5594170331065523689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049599 (n + 1) * A083399 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381402.P5594170331065523689

/-! ## A381402.P16251056692449324213

`record[A372713(A004709(n+1))]`
-/

namespace A381402.P16251056692449324213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372713 (A004709 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381402.P16251056692449324213

/-! ## A381402.P18249933010952040056

`record[A000005(3*(n+1))/A008834(n+1)]`
-/

namespace A381402.P18249933010952040056
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (3 * (n + 1)) : ℚ) / (A008834 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381402.P18249933010952040056

/-! ## A381402.P6695656694606956948

`record[A049599(3*(n+1))]`
-/

namespace A381402.P6695656694606956948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049599 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381402.P6695656694606956948

/-! ## A381402.P7001214424824842353

`record[A366901(3*(n+1))]`
-/

namespace A381402.P7001214424824842353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366901 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381402.P7001214424824842353

/-!
# A381403: a(n) is the mode of the multiset of bases and exponents (including exponents = 1) in the prime factorization of n (using smallest mode if multimodal).

The programs for A381403, there is no canonical definition to state claims against.
-/

/-! ## A381403.P11060793040435346442

`A286531(A369358(n)%A051903(n+2))`
-/

namespace A381403.P11060793040435346442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286531 (Int.tmod (A369358 n) (A051903 (n + 2))).toNat

end

end A381403.P11060793040435346442

/-! ## A381403.P10899091785460761015

`A094916(A347119(n+2))`
-/

namespace A381403.P10899091785460761015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094916 (A347119 (n + 2)).toNat

end

end A381403.P10899091785460761015

/-! ## A381403.P7447678491773967788

`A236103(A061395(n+4)^A048105(n+2))`
-/

namespace A381403.P7447678491773967788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236103 (SequenceMachineLib.roundAway ((A061395 (n + 4) : ℚ) ^ (A048105 (n + 2) : ℤ))).toNat

end

end A381403.P7447678491773967788

/-! ## A381403.P5157197179889666283

`A104232(A342376(n+2))`
-/

namespace A381403.P5157197179889666283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104232 (A342376 (n + 2)).toNat

end

end A381403.P5157197179889666283

/-! ## A381403.P3982795352904863683

`A107435(A342375(n+2))`
-/

namespace A381403.P3982795352904863683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107435 (A342375 (n + 2)).toNat

end

end A381403.P3982795352904863683

/-!
# A381404: a(n) is the mode of the multiset of bases and exponents (including exponents = 1) in the prime factorization of n (using largest mode if multimodal).

The programs for A381404, there is no canonical definition to state claims against.
-/

/-! ## A381404.P14541991584202784157

`or(A079944(A362866(2*(n+1))), A381576(n+2))`
-/

namespace A381404.P14541991584202784157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A079944 (A362866 (2 * (n + 1))).toNat) (A381576 (n + 2))

end

end A381404.P14541991584202784157

/-! ## A381404.P15576509701427952367

`A381576(n+2)%A092020(n+1)`
-/

namespace A381404.P15576509701427952367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A381576 (n + 2)) (A092020 (n + 1))

end

end A381404.P15576509701427952367

/-! ## A381404.P15333734885096817096

`gcd(A092020(∏{p}[n+1, #]), A381576(n+2))`
-/

namespace A381404.P15333734885096817096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A092020 (∏ p ∈ Nat.primeFactors (f1 n), p)) (A381576 (n + 2))

end

end A381404.P15333734885096817096

/-! ## A381404.P13069398583638395737

`lcm(A063065(A381555(n)), A381576(n+2))`
-/

namespace A381404.P13069398583638395737
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A063065 (A381555 n).toNat) (A381576 (n + 2))

end

end A381404.P13069398583638395737

/-! ## A381404.P10803250364795403342

`A381576(n+2)+A089807(A381616(n+1))`
-/

namespace A381404.P10803250364795403342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381576 (n + 2) + A089807 (A381616 (n + 1)).toNat

end

end A381404.P10803250364795403342

/-!
# A381407: E.g.f. A(x) satisfies A(x) = exp( x * cosh(x * A(x)^2) ).

The programs for A381407, there is no canonical definition to state claims against.
-/

/-! ## A381407.P15071290808365763998

`A257807(A259731((n-1)!+n*a(n-1)))` with `a(0)=1, a(1)=1`
-/

namespace A381407.P15071290808365763998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A257807 (A259731 ((Nat.factorial ((n : ℤ) - 1).toNat : ℤ) + (n : ℤ) * a (n - 1)).toNat).toNat

end

end A381407.P15071290808365763998

/-!
# A381408: E.g.f. A(x) satisfies A(x) = exp( 2 * x * cosh(x * A(x)) ).

The programs for A381408, there is no canonical definition to state claims against.
-/

/-! ## A381408.P12347914614307670464

`A194694(a(n-1))` with `a(0)=1`
-/

namespace A381408.P12347914614307670464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A194694 (a (n - 1)).toNat

end

end A381408.P12347914614307670464

/-!
# A381410: E.g.f. A(x) satisfies A(x) = exp( 2 * x * cos(x * A(x)) ).

The programs for A381410, there is no canonical definition to state claims against.
-/

/-! ## A381410.P18345395357907392996

`2-A096874(A028896(n))`
-/

namespace A381410.P18345395357907392996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A096874 (A028896 n).toNat

end

end A381410.P18345395357907392996

/-!
# A381411: E.g.f. A(x) satisfies A(x) = exp( sinh(x * A(x)^2) / A(x)^2 ).

The programs for A381411, there is no canonical definition to state claims against.
-/

/-! ## A381411.P14537627243469154661

`∑{#}[n, (2*n-2*#+1)^(#-1)*A136630(C(n+1, 2)+#)]`
-/

namespace A381411.P14537627243469154661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), ((2 * n : ℤ) - (2 * k : ℤ) + 1 : ℚ) ^ ((k : ℤ) - 1 : ℤ) * (A136630 (Nat.choose (n + 1) 2 + k) : ℚ)

end

end A381411.P14537627243469154661

/-! ## A381411.P11932914209595668290

`A196044(a(n-1))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A381411.P11932914209595668290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2] fun n a =>
  A196044 (a (n - 1)).toNat

end

end A381411.P11932914209595668290

/-!
# A381412: E.g.f. A(x) satisfies A(x) = exp( 2 * sinh(x * A(x)) / A(x) ).

The programs for A381412, there is no canonical definition to state claims against.
-/

/-! ## A381412.P188161343495497182

`2*∑{#}[n, (2*n-2*#+2)^(#-1)*A136630(C(n+1, 2)+#)]`
-/

namespace A381412.P188161343495497182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ k ∈ Finset.range (f1 n + 1), ((2 * n : ℤ) - (2 * k : ℤ) + 2 : ℚ) ^ ((k : ℤ) - 1 : ℤ) * (A136630 (Nat.choose (n + 1) 2 + k) : ℚ))

end

end A381412.P188161343495497182

/-! ## A381412.P17960639824404273857

`A072774(A383337(n)+n)`
-/

namespace A381412.P17960639824404273857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072774 (A383337 n + (n : ℤ)).toNat

end

end A381412.P17960639824404273857

/-!
# A381413: E.g.f. A(x) satisfies A(x) = exp( sin(x * A(x)^2) / A(x)^2 ).

The programs for A381413, there is no canonical definition to state claims against.
-/

/-! ## A381413.P6524223076196099221

`1-A381801(A089471(n))`
-/

namespace A381413.P6524223076196099221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A381801 (A089471 n).toNat

end

end A381413.P6524223076196099221

/-! ## A381413.P4150006654835941333

`A284559(n)-A338315(A000079(n))`
-/

namespace A381413.P4150006654835941333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284559 n - A338315 (A000079 n).toNat

end

end A381413.P4150006654835941333

/-!
# A381414: E.g.f. A(x) satisfies A(x) = exp( 2 * sin(x * A(x)) / A(x) ).

The programs for A381414, there is no canonical definition to state claims against.
-/

/-! ## A381414.P8924354185213771222

`A000070(n)-A079688(A058892(n))`
-/

namespace A381414.P8924354185213771222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n - A079688 (A058892 n).toNat

end

end A381414.P8924354185213771222

/-! ## A381414.P11419759851490042457

`A069556(n+1)-A357196(A075201(n+1))`
-/

namespace A381414.P11419759851490042457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069556 (n + 1) - A357196 (A075201 (n + 1)).toNat

end

end A381414.P11419759851490042457

/-!
# A381415: E.g.f. A(x) satisfies A(x) = exp( sinh(x * A(x)^2) ).

The programs for A381415, there is no canonical definition to state claims against.
-/

/-! ## A381415.P2266419974236131288

`∑{#}[n, (2*n+1)^(#-1)*A136630(C(n+1, 2)+#)]`
-/

namespace A381415.P2266419974236131288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (2 * n + 1 : ℚ) ^ ((k : ℤ) - 1 : ℤ) * (A136630 (Nat.choose (n + 1) 2 + k) : ℚ)

end

end A381415.P2266419974236131288

/-!
# A381416: E.g.f. A(x) satisfies A(x) = exp( 2 * sinh(x * A(x)) ).

The programs for A381416, there is no canonical definition to state claims against.
-/

/-! ## A381416.P17275252702836048173

`2*∑{#}[n, (2*n+2)^(#-1)*A136630(C(n+1, 2)+#)]`
-/

namespace A381416.P17275252702836048173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ k ∈ Finset.range (f1 n + 1), (2 * n + 2 : ℚ) ^ ((k : ℤ) - 1 : ℤ) * (A136630 (Nat.choose (n + 1) 2 + k) : ℚ))

end

end A381416.P17275252702836048173

/-!
# A381418: E.g.f. A(x) satisfies A(x) = exp( 2 * sin(x * A(x)) ).

The programs for A381418, there is no canonical definition to state claims against.
-/

/-! ## A381418.P10934437650300540061

`A090631(A396890(n))`
-/

namespace A381418.P10934437650300540061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090631 (A396890 n).toNat

end

end A381418.P10934437650300540061

/-!
# A381421: a(n) = Sum_{k=0..n} (k+1) * binomial(2*k,2*n-2*k).

The programs for A381421, the canonical program `A381421.P10675556411813115008` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381421 has offset 0).

The definition of A381421 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, (#+1)*C(2*#, 2*n-2*#)]` (program `A381421.P10675556411813115008`, by `A381421.P10675556411813115008.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A381421.P10052066585739294192

`ogf((1-2x-x^2+6x^3+x^4)/(1-4x+2x^2+11x^4+2x^6-4x^7+x^8))`
-/

namespace A381421.P10052066585739294192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -1, 6, 1] [1, -4, 2, 0, 11, 0, 2, -4, 1] n

end

end A381421.P10052066585739294192

namespace A381421

/-- `ogf((1-2x-x^2+6x^3+x^4)/(1-4x+2x^2+11x^4+2x^6-4x^7+x^8))` -/
def P10052066585739294192.Spec : Prop :=
  ∀ n, P10052066585739294192.a n = A381421 n

end A381421

/-! ## A381421.P10675556411813115008

`∑{#}[n, (#+1)*C(2*#, 2*n-2*#)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A381421

/-- `∑{#}[n, (#+1)*C(2*#, 2*n-2*#)]` -/
def P10675556411813115008.Spec : Prop :=
  ∀ n, (P10675556411813115008.a n : ℤ) = A381421 n

theorem P10675556411813115008.correct : P10675556411813115008.Spec := by
  intro n
  simp only [A381421]

end A381421

/-!
# A381424: Truncated hex numbers: a(n) = 24*n^2 + 6*n + 1.

The programs for A381424, the canonical program `A381424.P8520062412915218701` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381424 has offset 0).

The definition of A381424 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `24*n²+6*n+1` (program `A381424.P8520062412915218701`, by `A381424.P8520062412915218701.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A381424.P4026948900750562202

`ogf((1+28x+19x^2)/(1-3x+3x^2-x^3))`
-/

namespace A381424.P4026948900750562202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 28, 19] [1, -3, 3, -1] n

end

end A381424.P4026948900750562202

namespace A381424

/-- `ogf((1+28x+19x^2)/(1-3x+3x^2-x^3))` -/
def P4026948900750562202.Spec : Prop :=
  ∀ n, P4026948900750562202.a n = A381424 n

end A381424

/-! ## A381424.P8520062412915218701

`24*n²+6*n+1`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A381424

/-- `24*n²+6*n+1` -/
def P8520062412915218701.Spec : Prop :=
  ∀ n, (P8520062412915218701.a n : ℤ) = A381424 n

theorem P8520062412915218701.correct : P8520062412915218701.Spec := by
  intro n
  simp only [A381424]

end A381424

/-! ## A381424.P11696336570746896259

`∑[a(n-1)+48]` with `a(0)=1, a(1)=30`
-/

namespace A381424.P11696336570746896259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 30] fun n f1 =>
  f1 (n - 1) + 48

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A381424.P11696336570746896259

namespace A381424

/-- `∑[a(n-1)+48]` -/
def P11696336570746896259.Spec : Prop :=
  ∀ n, (P11696336570746896259.a n : ℤ) = A381424 n

end A381424

/-! ## A381424.P15887677421631269836

`A160174(n+1)/Δ[n²]`
-/

namespace A381424.P15887677421631269836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160174 (n + 1) : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A381424.P15887677421631269836

namespace A381424

/-- `A160174(n+1)/Δ[n²]` -/
def P15887677421631269836.Spec : Prop :=
  ∀ n, P15887677421631269836.a n = (A381424 n : ℚ)

end A381424

/-! ## A381424.P8234766570436704379

`A085473(2*n)`
-/

namespace A381424.P8234766570436704379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085473 (2 * n)

end

end A381424.P8234766570436704379

namespace A381424

/-- `A085473(2*n)` -/
def P8234766570436704379.Spec : Prop :=
  ∀ n, P8234766570436704379.a n = A381424 n

theorem P8234766570436704379.correct : P8234766570436704379.Spec := by
  intro n
  simp only [A381424, Nat.add_sub_cancel, A381424.P8234766570436704379.a, A381424.P8520062412915218701.a, A085473, A085473.P10681717492594671342.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A381424

/-! ## A381424.P18320946574268284759

`ceil(sqrt(A027628(2*n)))`
-/

namespace A381424.P18320946574268284759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A027628 (2 * n) : ℝ)⌉

end

end A381424.P18320946574268284759

namespace A381424

/-- `ceil(sqrt(A027628(2*n)))` -/
def P18320946574268284759.Spec : Prop :=
  ∀ n, P18320946574268284759.a n = A381424 n

end A381424

/-! ## A381424.P17707388063377897060

`A169711(2*n+1)/(2*n+1)`
-/

namespace A381424.P17707388063377897060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169711 (2 * n + 1) : ℚ) / (2 * n + 1 : ℚ)

end

end A381424.P17707388063377897060

namespace A381424

/-- `A169711(2*n+1)/(2*n+1)` -/
def P17707388063377897060.Spec : Prop :=
  ∀ n, P17707388063377897060.a n = (A381424 n : ℚ)

theorem P17707388063377897060.correct : P17707388063377897060.Spec := by
  intro n
  simp only [A381424, Nat.add_sub_cancel, A381424.P17707388063377897060.a, A381424.P8520062412915218701.a, A169711, A169711.P3852952923090487921.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A381424

/-! ## A381424.P6272016376401171464

`A005448(4*n+1)`
-/

namespace A381424.P6272016376401171464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005448 (4 * n + 1)

end

end A381424.P6272016376401171464

namespace A381424

/-- `A005448(4*n+1)` -/
def P6272016376401171464.Spec : Prop :=
  ∀ n, P6272016376401171464.a n = A381424 n

end A381424

/-! ## A381424.P8536070040058460559

`A373584(3*n+n+1)`
-/

namespace A381424.P8536070040058460559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373584 (3 * n + (n + 1))

end

end A381424.P8536070040058460559

namespace A381424

/-- `A373584(3*n+n+1)` -/
def P8536070040058460559.Spec : Prop :=
  ∀ n, P8536070040058460559.a n = A381424 n

end A381424

/-! ## A381424.P14581931194465476505

`∩[A373584(n+1), A085473(n)]`
-/

namespace A381424.P14581931194465476505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085473 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381424.P14581931194465476505

namespace A381424

/-- `∩[A373584(n+1), A085473(n)]` -/
def P14581931194465476505.Spec : Prop :=
  ∀ n, (P14581931194465476505.a n : ℤ) = A381424 n

end A381424

/-! ## A381424.P12255520260943621900

`A008822(6*n)`
-/

namespace A381424.P12255520260943621900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008822 (6 * n)

end

end A381424.P12255520260943621900

namespace A381424

/-- `A008822(6*n)` -/
def P12255520260943621900.Spec : Prop :=
  ∀ n, P12255520260943621900.a n = A381424 n

end A381424

/-! ## A381424.P14052209877841694897

`∩[A373584(n+1), A008822(n)]`
-/

namespace A381424.P14052209877841694897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008822 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381424.P14052209877841694897

namespace A381424

/-- `∩[A373584(n+1), A008822(n)]` -/
def P14052209877841694897.Spec : Prop :=
  ∀ n, (P14052209877841694897.a n : ℤ) = A381424 n

end A381424

/-! ## A381424.P12758381622097551307

`A131355(A017089(n))`
-/

namespace A381424.P12758381622097551307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131355 (A017089 n).toNat

end

end A381424.P12758381622097551307

namespace A381424

/-- `A131355(A017089(n))` -/
def P12758381622097551307.Spec : Prop :=
  ∀ n, P12758381622097551307.a n = A381424 n

end A381424

/-! ## A381424.P2276437074180121777

`A226088(A004770(n+1))`
-/

namespace A381424.P2276437074180121777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226088 (A004770 (n + 1)).toNat

end

end A381424.P2276437074180121777

namespace A381424

/-- `A226088(A004770(n+1))` -/
def P2276437074180121777.Spec : Prop :=
  ∀ n, P2276437074180121777.a n = A381424 n

end A381424

/-! ## A381424.P7234151565892809565

`A007997(A017581(n))`
-/

namespace A381424.P7234151565892809565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007997 (A017581 n).toNat

end

end A381424.P7234151565892809565

namespace A381424

/-- `A007997(A017581(n))` -/
def P7234151565892809565.Spec : Prop :=
  ∀ n, P7234151565892809565.a n = A381424 n

end A381424

/-! ## A381424.P13013363210025841587

`A008748(A017533(n))`
-/

namespace A381424.P13013363210025841587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008748 (A017533 n).toNat

end

end A381424.P13013363210025841587

namespace A381424

/-- `A008748(A017533(n))` -/
def P13013363210025841587.Spec : Prop :=
  ∀ n, P13013363210025841587.a n = A381424 n

end A381424

/-! ## A381424.P8606094625644657287

`A058212(A017557(n))`
-/

namespace A381424.P8606094625644657287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058212 (A017557 n).toNat

end

end A381424.P8606094625644657287

namespace A381424

/-- `A058212(A017557(n))` -/
def P8606094625644657287.Spec : Prop :=
  ∀ n, P8606094625644657287.a n = A381424 n

end A381424

/-! ## A381424.P17199292005030218200

`A007997(A016945(2*n)+2)`
-/

namespace A381424.P17199292005030218200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007997 (A016945 (2 * n) + 2).toNat

end

end A381424.P17199292005030218200

namespace A381424

/-- `A007997(A016945(2*n)+2)` -/
def P17199292005030218200.Spec : Prop :=
  ∀ n, P17199292005030218200.a n = A381424 n

end A381424

/-! ## A381424.P10527720875768981076

`A008742(A008606(n))`
-/

namespace A381424.P10527720875768981076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008742 (A008606 n).toNat

end

end A381424.P10527720875768981076

namespace A381424

/-- `A008742(A008606(n))` -/
def P10527720875768981076.Spec : Prop :=
  ∀ n, P10527720875768981076.a n = A381424 n

end A381424

/-!
# A381426: A(n,k) is the sum over all ordered partitions of [n] of k^j for an ordered partition with j inversions; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A381426, there is no canonical definition to state claims against.
-/

/-! ## A381426.P2082307670418766286

`and(A156953(n), A308590(A156953(n)))`
-/

namespace A381426.P2082307670418766286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A156953 n) (A308590 (A156953 n).toNat)

end

end A381426.P2082307670418766286

/-! ## A381426.P6819004805306010254

`A326322(n)-A125005(A198285(n+1))`
-/

namespace A381426.P6819004805306010254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326322 n - A125005 (A198285 (n + 1)).toNat

end

end A381426.P6819004805306010254

/-! ## A381426.P4597475675674687636

`A122155(A336573(n)%A006203(n+1))`
-/

namespace A381426.P4597475675674687636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122155 (Int.tmod (A336573 n) (A006203 (n + 1))).toNat

end

end A381426.P4597475675674687636

/-! ## A381426.P4933774701660908411

`and(A109606(A241793(n+1)), A156953(n))`
-/

namespace A381426.P4933774701660908411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A109606 (A241793 (n + 1)).toNat) (A156953 n)

end

end A381426.P4933774701660908411

/-!
# A381427: Sum over all ordered partitions of [n] of n^j for an ordered partition with j inversions.

The programs for A381427, there is no canonical definition to state claims against.
-/

/-! ## A381427.P11592368287990352429

`A381426(C(n+n+1, 2)+n)`
-/

namespace A381427.P11592368287990352429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381426 (Nat.choose (n + n + 1) 2 + n)

end

end A381427.P11592368287990352429

/-! ## A381427.P2545275472957590002

`A381426(∑[4*n])`
-/

namespace A381427.P2545275472957590002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381426 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A381427.P2545275472957590002

/-! ## A381427.P1537988749279616837

`A381426(A046092(n))+A025469(n)`
-/

namespace A381427.P1537988749279616837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381426 (A046092 n).toNat + A025469 n

end

end A381427.P1537988749279616837

/-! ## A381427.P8006088408456474036

`A381426(A046092(n))+A000007(n+4)`
-/

namespace A381427.P8006088408456474036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381426 (A046092 n).toNat + A000007 (n + 4)

end

end A381427.P8006088408456474036

/-!
# A381428: E.g.f. A(x) satisfies A(x) = 1/( 1 - sinh(x) * A(x)^2 ).

The programs for A381428, there is no canonical definition to state claims against.
-/

/-! ## A381428.P1816401532526932171

`∑{#}[n, #!*C(3*#+1, #)/(3*#+1)*A136630(C(n+1, 2)+#)]`
-/

namespace A381428.P1816401532526932171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.factorial k * Nat.choose (3 * k + 1) k : ℚ) / (3 * k + 1 : ℚ) * (A136630 (Nat.choose (n + 1) 2 + k) : ℚ)

end

end A381428.P1816401532526932171

/-! ## A381428.P16741271432854922175

`A257687(n)+A000027(A390611(n))`
-/

namespace A381428.P16741271432854922175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257687 n + A000027 (A390611 n).toNat

end

end A381428.P16741271432854922175

/-!
# A381429: E.g.f. A(x) satisfies A(x) = 1/( 1 - sinh(x) * A(x)^3 ).

The programs for A381429, there is no canonical definition to state claims against.
-/

/-! ## A381429.P13824429752122991488

`∑{#}[n, #!*C(4*#+1, #)/(4*#+1)*A136630(C(n+1, 2)+#)]`
-/

namespace A381429.P13824429752122991488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.factorial k * Nat.choose (4 * k + 1) k : ℚ) / (4 * k + 1 : ℚ) * (A136630 (Nat.choose (n + 1) 2 + k) : ℚ)

end

end A381429.P13824429752122991488

/-!
# A381430: E.g.f. A(x) satisfies A(x) = 1 + sinh(x*A(x)^3).

The programs for A381430, there is no canonical definition to state claims against.
-/

/-! ## A381430.P13873991533666264953

`1/(3*n+1)*∑{#}[n, #!*C(3*n+1, #)*A136630(C(n+1, 2)+#)]`
-/

namespace A381430.P13873991533666264953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (3 * n + 1 : ℚ) * ((∑ k ∈ Finset.range (f1 n + 1), (Nat.factorial k * Nat.choose (3 * n + 1) k : ℤ) * A136630 (Nat.choose (n + 1) 2 + k) : ℤ) : ℚ)

end

end A381430.P13873991533666264953

/-!
# A381431: Heinz number of the section-sum partition of the prime indices of n.

The programs for A381431, there is no canonical definition to state claims against.
-/

/-! ## A381431.P1219319461844440092

`A122111(A048767(n+1))`
-/

namespace A381431.P1219319461844440092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A048767 (n + 1)).toNat

end

end A381431.P1219319461844440092

/-!
# A381432: Heinz numbers of section-sum partitions. Union of A381431.

The programs for A381432, there is no canonical definition to state claims against.
-/

/-! ## A381432.P1558921369393245145

`comp[A381433(n+1)-1]+1`
-/

namespace A381432.P1558921369393245145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381433 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A381432.P1558921369393245145

/-! ## A381432.P602789648933276800

`∪[n²+1, A364347(n+1)]`
-/

namespace A381432.P602789648933276800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364347 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A381432.P602789648933276800

/-! ## A381432.P5292980561617807580

`∪[A364347(n+1), A005728(n)]`
-/

namespace A381432.P5292980561617807580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A381432.P5292980561617807580

/-! ## A381432.P10360142204390385782

`∪[A364347(n+1), A189374(n)]`
-/

namespace A381432.P10360142204390385782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189374 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A381432.P10360142204390385782

/-! ## A381432.P6438302306860478641

`∪[A364347(n+1), A090491(n)+n]`
-/

namespace A381432.P6438302306860478641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090491 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A381432.P6438302306860478641

/-! ## A381432.P982336757969648010

`∪[A364347(n+1), A173303(A016813(n))]`
-/

namespace A381432.P982336757969648010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173303 (A016813 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A381432.P982336757969648010

/-!
# A381433: Heinz numbers of non section-sum partitions. Complement of A381431.

The programs for A381433, there is no canonical definition to state claims against.
-/

/-! ## A381433.P11839574360454758264

`∪[A383516(n+1), A383517(n+1)]`
-/

namespace A381433.P11839574360454758264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383516 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383517 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A381433.P11839574360454758264

/-! ## A381433.P9736802496079936329

`filter[A383513(n+1), A252742(#)]`
-/

namespace A381433.P9736802496079936329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252742 (f1 j).toNat = 1) n)

end

end A381433.P9736802496079936329

/-! ## A381433.P6172875116896301648

`filter[A383513(n+1), A337383(#)]`
-/

namespace A381433.P6172875116896301648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A337383 (f1 j).toNat = 1) n)

end

end A381433.P6172875116896301648

/-! ## A381433.P422584446052346094

`∩[A299417(n), A383513(n+1)]`
-/

namespace A381433.P422584446052346094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299417 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381433.P422584446052346094

/-! ## A381433.P15304085380747255961

`∩[A039725(n+1), A383513(n+1)]`
-/

namespace A381433.P15304085380747255961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039725 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381433.P15304085380747255961

/-! ## A381433.P14907045100918411778

`∩[A047229(n+1), A383513(n+1)]`
-/

namespace A381433.P14907045100918411778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381433.P14907045100918411778

/-! ## A381433.P13931388765355246486

`∩[A056757(n+1), A383513(n+1)]`
-/

namespace A381433.P13931388765355246486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381433.P13931388765355246486

/-! ## A381433.P7141434657010631520

`∩[A056868(n+1), A383513(n+1)]`
-/

namespace A381433.P7141434657010631520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381433.P7141434657010631520

/-! ## A381433.P7516771074301480016

`∩[A060652(n+1), A383513(n+1)]`
-/

namespace A381433.P7516771074301480016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381433.P7516771074301480016

/-! ## A381433.P1306255318708622352

`∩[A060679(n+1), A383513(n+1)]`
-/

namespace A381433.P1306255318708622352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381433.P1306255318708622352

/-!
# A381435: Numbers appearing more than once in A381431 (section-sum partition of prime indices).

The programs for A381435, there is no canonical definition to state claims against.
-/

/-! ## A381435.P9689709885530814367

`lt[A136084(A353851(n)), A269387(n)]`
-/

namespace A381435.P9689709885530814367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136084 (A353851 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269387 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A381435.P9689709885530814367

/-! ## A381435.P6305673819168693465

`lt[A107932(A000010(n+1)), A232989(n)]`
-/

namespace A381435.P6305673819168693465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107932 (A000010 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232989 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A381435.P6305673819168693465

/-! ## A381435.P9153644358464718674

`lt[A212256(n), A167865(A353851(n+1))]`
-/

namespace A381435.P9153644358464718674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212256 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167865 (A353851 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A381435.P9153644358464718674

/-! ## A381435.P8244799066886888578

`lt[A006955(n), A004526(A296241(2*(n+1)))]`
-/

namespace A381435.P8244799066886888578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006955 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A296241 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A381435.P8244799066886888578

/-! ## A381435.P10829357459105482967

`A175903(A262524(n+1))`
-/

namespace A381435.P10829357459105482967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175903 (A262524 (n + 1)).toNat

end

end A381435.P10829357459105482967

/-!
# A381436: Irregular triangle read by rows where row k is the section-sum partition of the prime indices of n.

The programs for A381436, there is no canonical definition to state claims against.
-/

/-! ## A381436.P15368348639428045810

`A056239(A128651(n+2))`
-/

namespace A381436.P15368348639428045810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A128651 (n + 2)).toNat

end

end A381436.P15368348639428045810

/-! ## A381436.P7440694420478681641

`A066328(A387835(n+2))`
-/

namespace A381436.P7440694420478681641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (A387835 (n + 2)).toNat

end

end A381436.P7440694420478681641

/-!
# A381437: Last part of the section-sum partition of the prime indices of n.

The programs for A381437, there is no canonical definition to state claims against.
-/

/-! ## A381437.P2313367452210803190

`A055396(A381431(n+1))`
-/

namespace A381437.P2313367452210803190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A381431 (n + 1)).toNat

end

end A381437.P2313367452210803190

/-! ## A381437.P2680356185000656657

`A056239(A261969(1+n))`
-/

namespace A381437.P2680356185000656657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A261969 (1 + n)).toNat

end

end A381437.P2680356185000656657

/-! ## A381437.P5865651304516478352

`A066328(A375931(n+1))`
-/

namespace A381437.P5865651304516478352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (A375931 (n + 1)).toNat

end

end A381437.P5865651304516478352

/-! ## A381437.P2554931201696535992

`∑{p}[A261969(n+1), A003963(#)]`
-/

namespace A381437.P2554931201696535992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261969 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A003963 p

end

end A381437.P2554931201696535992

/-! ## A381437.P15621287757650783422

`∑{p}[A375931(n+1), A000720(#)]`
-/

namespace A381437.P15621287757650783422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375931 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000720 p

end

end A381437.P15621287757650783422

/-! ## A381437.P9400066231058934768

`∑{p}[A375931(n+1), A061395(#)]`
-/

namespace A381437.P9400066231058934768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375931 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A061395 p

end

end A381437.P9400066231058934768

/-! ## A381437.P5503007325927900749

`A056239(∏{p}[A375931(n+1), #])`
-/

namespace A381437.P5503007325927900749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375931 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A381437.P5503007325927900749

/-! ## A381437.P5807769136538960082

`A056239(gcd(A007947(n+1), A375931(n+1)))`
-/

namespace A381437.P5807769136538960082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (Int.gcd (A007947 (n + 1)) (A375931 (n + 1)))

end

end A381437.P5807769136538960082

/-!
# A381438: Triangle read by rows where T(n>0,k>0) is the number of integer partitions of n whose section-sum partition ends with k.

The programs for A381438, there is no canonical definition to state claims against.
-/

/-! ## A381438.P4000326604924968243

`A034968(C(A088567(n), A386408(n)))`
-/

namespace A381438.P4000326604924968243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (Nat.choose (A088567 n).toNat (A386408 n).toNat)

end

end A381438.P4000326604924968243

/-!
# A381439: Numbers whose exponent of 2 in their canonical prime factorization is not larger than all the other exponents.

The programs for A381439, the canonical program `A381439.P7006639080916741709` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381439 has offset 1).

The definition of A381439 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7769 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A381439.P7006639080916741709

`lt[2, A261969(n+1)]+1`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A381439

/-- `lt[2, A261969(n+1)]+1` -/
def P7006639080916741709.Spec : Prop :=
  ∀ n, (P7006639080916741709.a n : ℤ) = A381439 (n + 1)

theorem P7006639080916741709.correct : P7006639080916741709.Spec := by
  intro n
  simp only [A381439, Nat.add_sub_cancel]

end A381439

/-! ## A381439.P2418430107668917791

`∪[A144396(1+n), A332766(n+1)]`
-/

namespace A381439.P2418430107668917791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332766 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A381439.P2418430107668917791

namespace A381439

/-- `∪[A144396(1+n), A332766(n+1)]` -/
def P2418430107668917791.Spec : Prop :=
  ∀ n, (P2418430107668917791.a n : ℤ) = A381439 (n + 1)

end A381439

/-! ## A381439.P2499051430996325260

`∪[A230766(n+1), A352874(n+1)]`
-/

namespace A381439.P2499051430996325260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230766 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A381439.P2499051430996325260

namespace A381439

/-- `∪[A230766(n+1), A352874(n+1)]` -/
def P2499051430996325260.Spec : Prop :=
  ∀ n, (P2499051430996325260.a n : ℤ) = A381439 (n + 1)

end A381439

/-! ## A381439.P5817427341005616617

`∪[A332766(n+1), A352874(n+1)]`
-/

namespace A381439.P5817427341005616617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332766 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A381439.P5817427341005616617

namespace A381439

/-- `∪[A332766(n+1), A352874(n+1)]` -/
def P5817427341005616617.Spec : Prop :=
  ∀ n, (P5817427341005616617.a n : ℤ) = A381439 (n + 1)

end A381439

/-! ## A381439.P7036200717619126500

`∩[A180925(n+1), A364058(n+1)]`
-/

namespace A381439.P7036200717619126500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381439.P7036200717619126500

namespace A381439

/-- `∩[A180925(n+1), A364058(n+1)]` -/
def P7036200717619126500.Spec : Prop :=
  ∀ n, (P7036200717619126500.a n : ℤ) = A381439 (n + 1)

end A381439

/-! ## A381439.P16210120167573876268

`∩[A265711(n+1), A364058(n+1)]`
-/

namespace A381439.P16210120167573876268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381439.P16210120167573876268

namespace A381439

/-- `∩[A265711(n+1), A364058(n+1)]` -/
def P16210120167573876268.Spec : Prop :=
  ∀ n, (P16210120167573876268.a n : ℤ) = A381439 (n + 1)

end A381439

/-! ## A381439.P10669775911823610577

`A335740(A352780(A181818(n+1))+n)`
-/

namespace A381439.P10669775911823610577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335740 (A352780 (A181818 (n + 1)).toNat + (n : ℤ)).toNat

end

end A381439.P10669775911823610577

namespace A381439

/-- `A335740(A352780(A181818(n+1))+n)` -/
def P10669775911823610577.Spec : Prop :=
  ∀ n, P10669775911823610577.a n = A381439 (n + 1)

end A381439

/-!
# A381440: Irregular triangle read by rows where row k is the Look-and-Say partition of the prime indices of n.

The programs for A381440, there is no canonical definition to state claims against.
-/

/-! ## A381440.P12736806764624429811

`gcd(A002117(n+1), A325169(A095156(n+1)))`
-/

namespace A381440.P12736806764624429811
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002117 (n + 1)) (A325169 (A095156 (n + 1)).toNat)

end

end A381440.P12736806764624429811

/-! ## A381440.P11660767270094053545

`A031242(A094739(n+2))`
-/

namespace A381440.P11660767270094053545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031242 (A094739 (n + 2)).toNat

end

end A381440.P11660767270094053545

/-!
# A381442: Expansion of e.g.f. (1/x) * Series_Reversion( x/(1 + sinh(x))^2 ).

The programs for A381442, there is no canonical definition to state claims against.
-/

/-! ## A381442.P9095985375534635990

`1/(n+1)*∑{#}[n, #!*C(2*n+2, #)*A136630(C(n+1, 2)+#)]`
-/

namespace A381442.P9095985375534635990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ) * ((∑ k ∈ Finset.range (f1 n + 1), (Nat.factorial k * Nat.choose (2 * n + 2) k : ℤ) * A136630 (Nat.choose (n + 1) 2 + k) : ℤ) : ℚ)

end

end A381442.P9095985375534635990

/-!
# A381443: Expansion of e.g.f. (1/x) * Series_Reversion( x/(1 + sinh(x))^3 ).

The programs for A381443, there is no canonical definition to state claims against.
-/

/-! ## A381443.P18256300532405859275

`1/(n+1)*∑{#}[n, #!*C(3*n+3, #)*A136630(C(n+1, 2)+#)]`
-/

namespace A381443.P18256300532405859275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ) * ((∑ k ∈ Finset.range (f1 n + 1), (Nat.factorial k * Nat.choose (3 * n + 3) k : ℤ) * A136630 (Nat.choose (n + 1) 2 + k) : ℤ) : ℚ)

end

end A381443.P18256300532405859275

/-!
# A381444: Expansion of e.g.f. ( (1/x) * Series_Reversion( x * exp(-2*x * cosh(x)) ) )^(1/2).

The programs for A381444, there is no canonical definition to state claims against.
-/

/-! ## A381444.P16571896996930136734

`A189784(n!²)`
-/

namespace A381444.P16571896996930136734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189784 (Nat.factorial n ^ 2)

end

end A381444.P16571896996930136734

/-!
# A381445: E.g.f. A(x) satisfies A(x) = 1/( 1 - x * cosh(x) * A(x)^2 ).

The programs for A381445, there is no canonical definition to state claims against.
-/

/-! ## A381445.P1897203354225836817

`A100782(A318414(n))`
-/

namespace A381445.P1897203354225836817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100782 (A318414 n).toNat

end

end A381445.P1897203354225836817

/-!
# A381446: E.g.f. A(x) satisfies A(x) = 1/( 1 - x * cosh(x) * A(x)^3 ).

The programs for A381446, there is no canonical definition to state claims against.
-/

/-! ## A381446.P4331940938341911641

`A028310(Δ[A001710(n)²])`
-/

namespace A381446.P4331940938341911641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001710 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (n + 1) - f1 n).toNat

end

end A381446.P4331940938341911641

/-!
# A381447: E.g.f. A(x) satisfies A(x) = 1 + x*A(x)^2 * cosh(x*A(x)^2).

The programs for A381447, there is no canonical definition to state claims against.
-/

/-! ## A381447.P4428554981099125109

`A049980(∏[2*a(n-1)])` with `a(0)=2, a(1)=1, a(2)=3, a(3)=6`
-/

namespace A381447.P4428554981099125109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 3, 6] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049980 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A381447.P4428554981099125109

/-!
# A381448: E.g.f. A(x) satisfies A(x) = 1 + x*A(x)^3 * cosh(x*A(x)^3).

The programs for A381448, there is no canonical definition to state claims against.
-/

/-! ## A381448.P8529425477659728725

`A195993(A143669(n))+1`
-/

namespace A381448.P8529425477659728725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195993 (A143669 n).toNat + 1

end

end A381448.P8529425477659728725

/-!
# A381449: Expansion of e.g.f. (1/x) * Series_Reversion( x/(1 + x * cosh(x))^2 ).

The programs for A381449, there is no canonical definition to state claims against.
-/

/-! ## A381449.P11562015186026030665

`∑[A133256(A381601(n))]`
-/

namespace A381449.P11562015186026030665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133256 (A381601 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A381449.P11562015186026030665

/-!
# A381450: Expansion of e.g.f. (1/x) * Series_Reversion( x/(1 + x * cosh(x))^3 ).

The programs for A381450, there is no canonical definition to state claims against.
-/

/-! ## A381450.P13331178734300095912

`A085169(∏[∑[A359375(n+1)]])`
-/

namespace A381450.P13331178734300095912
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359375 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085169 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A381450.P13331178734300095912

/-!
# A381451: Triangle read by rows: T(n,k) is the clique covering number of the Johnson graph J(n, k), n >= 2, 0 < k < n.

The programs for A381451, there is no canonical definition to state claims against.
-/

/-! ## A381451.P3511280483923800710

`A064097(A022166(n)+1)`
-/

namespace A381451.P3511280483923800710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (A022166 n + 1).toNat

end

end A381451.P3511280483923800710

/-! ## A381451.P1834918566643119879

`row(A291442(2*(col(n)+1)*T(n-1,k)+T(n-1,k-1)))` with `a(0)=1`
-/

namespace A381451.P1834918566643119879
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triRow (A291442 (2 * (SequenceMachineLib.triCol n + 1) * SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n)).toNat

end

end A381451.P1834918566643119879

/-! ## A381451.P12793436009299361132

`A091951(A099597(n))`
-/

namespace A381451.P12793436009299361132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091951 (A099597 n).toNat

end

end A381451.P12793436009299361132

/-! ## A381451.P11914612369154079764

`A095399(A143188(n))`
-/

namespace A381451.P11914612369154079764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095399 (A143188 n).toNat

end

end A381451.P11914612369154079764

/-! ## A381451.P33984578242000115

`A271490(A007318(n))`
-/

namespace A381451.P33984578242000115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271490 (A007318 n).toNat

end

end A381451.P33984578242000115

/-!
# A381452: Number of multisets that can be obtained by partitioning the prime indices of n into a set of multisets and taking their sums.

The programs for A381452, there is no canonical definition to state claims against.
-/

/-! ## A381452.P5007282911572768041

`A050332(A033286(n+1))`
-/

namespace A381452.P5007282911572768041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050332 (A033286 (n + 1)).toNat

end

end A381452.P5007282911572768041

/-! ## A381452.P14903748216684275475

`A050332(A117495(n+2))`
-/

namespace A381452.P14903748216684275475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050332 (A117495 (n + 2)).toNat

end

end A381452.P14903748216684275475

/-! ## A381452.P5869310320538656017

`A050332((n+1)*A000040(n+1))`
-/

namespace A381452.P5869310320538656017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050332 ((n + 1 : ℤ) * A000040 (n + 1)).toNat

end

end A381452.P5869310320538656017

/-! ## A381452.P876171552339009536

`A056924(n+1)+A010051(A014285(n+3))`
-/

namespace A381452.P876171552339009536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056924 (n + 1) + A010051 (A014285 (n + 3)).toNat

end

end A381452.P876171552339009536

/-! ## A381452.P17461176947977476143

`A065033(A113901(n+1)%A270929(n+1))`
-/

namespace A381452.P17461176947977476143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (Int.tmod (A113901 (n + 1)) (A270929 (n + 1))).toNat

end

end A381452.P17461176947977476143

/-!
# A381453: Number of multisets that can be obtained by choosing a constant integer partition of each prime index of n and taking the multiset union.

The programs for A381453, there is no canonical definition to state claims against.
-/

/-! ## A381453.P10005723354741906552

`A000793(A355733(n+1)%A270613(n+1))`
-/

namespace A381453.P10005723354741906552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000793 (Int.tmod (A355733 (n + 1)) (A270613 (n + 1))).toNat

end

end A381453.P10005723354741906552

/-! ## A381453.P9002503377665891023

`A355733(n+1)+A025426(A319990(2*n+5))`
-/

namespace A381453.P9002503377665891023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355733 (n + 1) + A025426 (A319990 (2 * n + 5)).toNat

end

end A381453.P9002503377665891023

/-! ## A381453.P4275946825391071301

`A265398(A355733(n+1))%A185253(n+1)`
-/

namespace A381453.P4275946825391071301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265398 (A355733 (n + 1)).toNat) (A185253 (n + 1))

end

end A381453.P4275946825391071301

/-! ## A381453.P11733783424619406109

`A000793(A355733(n+1))%A389730(n+5)`
-/

namespace A381453.P11733783424619406109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000793 (A355733 (n + 1)).toNat) (A389730 (n + 5))

end

end A381453.P11733783424619406109

/-! ## A381453.P10245105626031501111

`A240557(A355733(n+1))%A326502(n+5)`
-/

namespace A381453.P10245105626031501111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240557 (A355733 (n + 1)).toNat) (A326502 (n + 5))

end

end A381453.P10245105626031501111

/-!
# A381454: Number of multisets that can be obtained by choosing a strict integer partition of each prime index of n and taking the multiset union.

The programs for A381454, there is no canonical definition to state claims against.
-/

/-! ## A381454.P13191781786668733698

`A357982(n+1)-A185017(A301345(2*n+5))`
-/

namespace A381454.P13191781786668733698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357982 (n + 1) - A185017 (A301345 (2 * n + 5)).toNat

end

end A381454.P13191781786668733698

/-! ## A381454.P9543490803717659267

`A357982(n+1)-A010815(A000217(3*n+4))`
-/

namespace A381454.P9543490803717659267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357982 (n + 1) - A010815 (A000217 (3 * n + 4)).toNat

end

end A381454.P9543490803717659267

/-! ## A381454.P14181881930856517769

`A357982(n+1)-A288106(A398244(n))`
-/

namespace A381454.P14181881930856517769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357982 (n + 1) - A288106 (A398244 n).toNat

end

end A381454.P14181881930856517769

/-! ## A381454.P6110674523703644386

`A357982(n+1)-A276077(A328621(3*(n+1)))`
-/

namespace A381454.P6110674523703644386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357982 (n + 1) - A276077 (A328621 (3 * (n + 1))).toNat

end

end A381454.P6110674523703644386

/-! ## A381454.P12364177895687464775

`A357982(n+1)-A086071(A275062(3*(n+1)))`
-/

namespace A381454.P12364177895687464775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357982 (n + 1) - A086071 (A275062 (3 * (n + 1))).toNat

end

end A381454.P12364177895687464775

/-!
# A381458: Primes p such that p/prevprime(p) < 1 + (1/PrimePi(p)).

The programs for A381458, there is no canonical definition to state claims against.
-/

/-! ## A381458.P9361623156715094453

`A068828(lt[A024781(n+1), A167546(2*(n+1))])`
-/

namespace A381458.P9361623156715094453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167546 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068828 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A381458.P9361623156715094453

/-! ## A381458.P17692344141261613525

`A068828(lt[A163427(n+1), A167546(2*(n+1))])`
-/

namespace A381458.P17692344141261613525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167546 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068828 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A381458.P17692344141261613525

/-! ## A381458.P2954085841289940523

`A006512(A032555(n+1)+3)`
-/

namespace A381458.P2954085841289940523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (A032555 (n + 1) + 3).toNat

end

end A381458.P2954085841289940523

/-! ## A381458.P11554315050082365788

`A006512(A032559(n+1)+3)`
-/

namespace A381458.P11554315050082365788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (A032559 (n + 1) + 3).toNat

end

end A381458.P11554315050082365788

/-! ## A381458.P5892401802365882984

`A006512(A078213(n+1)+3)`
-/

namespace A381458.P5892401802365882984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (A078213 (n + 1) + 3).toNat

end

end A381458.P5892401802365882984

/-!
# A381459: a(n) = (2*n)! * [x^(2*n)] cosh(x)^n.

The programs for A381459, the canonical program `A381459.P918474943869823750` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381459 has offset 0).

The definition of A381459 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A381459.P918474943869823750

`1/2^n*∑{#}[n, (n-2*#)^(2*n)*C(n, #)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A381459

/-- `1/2^n*∑{#}[n, (n-2*#)^(2*n)*C(n, #)]` -/
def P918474943869823750.Spec : Prop :=
  ∀ n, P918474943869823750.a n = (A381459 n : ℚ)

end A381459

/-! ## A381459.P228608415382259924

`A286899(A014107(n)+n+1)`
-/

namespace A381459.P228608415382259924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286899 (A014107 n + (n + 1 : ℤ)).toNat

end

end A381459.P228608415382259924

namespace A381459

/-- `A286899(A014107(n)+n+1)` -/
def P228608415382259924.Spec : Prop :=
  ∀ n, P228608415382259924.a n = A381459 n

end A381459

/-!
# A381461: Number of permutations of [n] with no fixed points where adjacent elements differ by at least 3.

The programs for A381461, there is no canonical definition to state claims against.
-/

/-! ## A381461.P15020226686241457748

`A352128(A097135(n)-A349432(n+1))`
-/

namespace A381461.P15020226686241457748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352128 (A097135 n - A349432 (n + 1)).toNat

end

end A381461.P15020226686241457748

/-! ## A381461.P16710314119491131271

`A166307(A377205(n+1))%A377205(n+1)`
-/

namespace A381461.P16710314119491131271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166307 (A377205 (n + 1)).toNat) (A377205 (n + 1))

end

end A381461.P16710314119491131271

/-! ## A381461.P12361841352608571384

`A352128(A388721(3*n+4)-A334744(n+4))`
-/

namespace A381461.P12361841352608571384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352128 (A388721 (3 * n + 4) - A334744 (n + 4)).toNat

end

end A381461.P12361841352608571384

/-! ## A381461.P1317103789806908941

`A341040(A025227(n+2))%A304479(3*(n+1))`
-/

namespace A381461.P1317103789806908941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341040 (A025227 (n + 2)).toNat) (A304479 (3 * (n + 1)))

end

end A381461.P1317103789806908941

/-!
# A381463: Limiting sequence of the possible number of inversions in stable configurations of 4^n-1 chips in a chip firing-game directed 4-ary tree resulting from a permutation-based strategy of firing chips.

The programs for A381463, there is no canonical definition to state claims against.
-/

/-! ## A381463.P145894224476971108

`A028899(A239903(n))`
-/

namespace A381463.P145894224476971108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028899 (A239903 n).toNat

end

end A381463.P145894224476971108

/-!
# A381465: Semiprimes k such that 6*k + 1 is also a semiprime.

The programs for A381465, the canonical program `A381465.P7545123986284215144` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381465 has offset 1).

The definition of A381465 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2491 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A381465.P8666943806446253411

`filter[A112775(n+1), A064911(#)]`
-/

namespace A381465.P8666943806446253411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112775 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A381465.P8666943806446253411

namespace A381465

/-- `filter[A112775(n+1), A064911(#)]` -/
def P8666943806446253411.Spec : Prop :=
  ∀ n, P8666943806446253411.a n = A381465 (n + 1)

end A381465

/-! ## A381465.P7545123986284215144

`∩[A001358(n+1), A112775(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A381465

/-- `∩[A001358(n+1), A112775(n+1)]` -/
def P7545123986284215144.Spec : Prop :=
  ∀ n, (P7545123986284215144.a n : ℤ) = A381465 (n + 1)

theorem P7545123986284215144.correct : P7545123986284215144.Spec := by
  intro n
  simp only [A381465, Nat.add_sub_cancel]

end A381465

/-! ## A381465.P15804906568740804802

`∩[A112775(n+1), A176540(n+1)]`
-/

namespace A381465.P15804906568740804802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381465.P15804906568740804802

namespace A381465

/-- `∩[A112775(n+1), A176540(n+1)]` -/
def P15804906568740804802.Spec : Prop :=
  ∀ n, (P15804906568740804802.a n : ℤ) = A381465 (n + 1)

end A381465

/-! ## A381465.P4776119703605451982

`∩[A112775(n+1), A175515(n+1)]`
-/

namespace A381465.P4776119703605451982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175515 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381465.P4776119703605451982

namespace A381465

/-- `∩[A112775(n+1), A175515(n+1)]` -/
def P4776119703605451982.Spec : Prop :=
  ∀ n, (P4776119703605451982.a n : ℤ) = A381465 (n + 1)

end A381465

/-!
# A381468: Number of simple connected graphs on n unlabeled nodes with no node a member of more than one cycle.

The programs for A381468, there is no canonical definition to state claims against.
-/

/-! ## A381468.P5549592775190295074

`row(A383831(n)-floor(n*(15*(n+3)^3+15*(n+3)²-10*(n+3)-8)/((n+3)*120*(n+4))))`
-/

namespace A381468.P5549592775190295074
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (A383831 n - ⌊((n : ℤ) * ((15 * (n + 3) ^ 3 + 15 * (n + 3) ^ 2 : ℤ) - (10 * (n + 3) : ℤ) - 8) : ℚ) / ((n + 3) * 120 * (n + 4) : ℚ)⌋).toNat

end

end A381468.P5549592775190295074

/-! ## A381468.P5593143025291598433

`A003056(A383831(n)-A270144(2*(n+1)))`
-/

namespace A381468.P5593143025291598433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A383831 n - A270144 (2 * (n + 1))).toNat

end

end A381468.P5593143025291598433

/-!
# A381469: Number of unlabeled 2,3 cacti (triangular cacti with bridges) rooted at a triangle with n triangles and every node contained in exactly one triangle.

The programs for A381469, there is no canonical definition to state claims against.
-/

/-! ## A381469.P7073689898159590346

`A156024(A238824(n+1)+1)`
-/

namespace A381469.P7073689898159590346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156024 (A238824 (n + 1) + 1).toNat

end

end A381469.P7073689898159590346

/-! ## A381469.P3067517364040728047

`A066339(A357158(n)+A184415(n+1))`
-/

namespace A381469.P3067517364040728047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066339 (A357158 n + A184415 (n + 1)).toNat

end

end A381469.P3067517364040728047

/-! ## A381469.P7041979838408624024

`A066339(A357158(n)+A357149(2*(n+1)))`
-/

namespace A381469.P7041979838408624024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066339 (A357158 n + A357149 (2 * (n + 1))).toNat

end

end A381469.P7041979838408624024

/-!
# A381470: Number of simple connected graphs on n unlabeled nodes with exactly 2 non-overlapping cycles.

The programs for A381470, there is no canonical definition to state claims against.
-/

/-! ## A381470.P681619787978119017

`A230747(A113859(n+1))`
-/

namespace A381470.P681619787978119017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230747 (A113859 (n + 1)).toNat

end

end A381470.P681619787978119017

/-!
# A381472: Number of unlabeled set systems on n vertices which are closed under union of disjoint sets.

The programs for A381472, there is no canonical definition to state claims against.
-/

/-! ## A381472.P16823460718090978245

`A087826(3*a(n-1)²)` with `a(0)=1`
-/

namespace A381472.P16823460718090978245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A087826 (3 * a (n - 1) ^ 2).toNat

end

end A381472.P16823460718090978245

/-!
# A381475: Array read by antidiagonals: T(m,n) is the connected domination number of the grid graph P_m X P_n.

The programs for A381475, there is no canonical definition to state claims against.
-/

/-! ## A381475.P3044338524662118772

`A124767(or(A003242(n), A124767(n)))`
-/

namespace A381475.P3044338524662118772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 (Int.lor (A003242 n) (A124767 n)).toNat

end

end A381475.P3044338524662118772

/-! ## A381475.P707240946808459469

`A043535(A121430(n+1))`
-/

namespace A381475.P707240946808459469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043535 (A121430 (n + 1)).toNat

end

end A381475.P707240946808459469

/-! ## A381475.P9389108892184992050

`A032548(A183854(n+1))`
-/

namespace A381475.P9389108892184992050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032548 (A183854 (n + 1)).toNat

end

end A381475.P9389108892184992050

/-! ## A381475.P589497596095155011

`A043556(A188813(n+1))`
-/

namespace A381475.P589497596095155011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043556 (A188813 (n + 1)).toNat

end

end A381475.P589497596095155011

/-! ## A381475.P10672220719768176569

`A257071(A198253(n+1))`
-/

namespace A381475.P10672220719768176569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257071 (A198253 (n + 1)).toNat

end

end A381475.P10672220719768176569

/-!
# A381476: Triangle read by rows: T(n,k) is the number of subsets of {1..n} with k elements such that every pair of distinct elements has a different difference, 0 <= k <= A143824(n).

The programs for A381476, there is no canonical definition to state claims against.
-/

/-! ## A381476.P1573927787626268293

`A334187(lt[A141904(2*(n+2)), A080665(3*n+4)])`
-/

namespace A381476.P1573927787626268293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141904 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080665 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334187 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A381476.P1573927787626268293

/-!
# A381477: E.g.f. A(x) satisfies A(x) = 1/( 1 - x * A(x)^2 * cosh(x * A(x)^2) ).

The programs for A381477, there is no canonical definition to state claims against.
-/

/-! ## A381477.P13161007545801535202

`A349136(A354862(n+1))/(n+1)`
-/

namespace A381477.P13161007545801535202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349136 (A354862 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A381477.P13161007545801535202

/-!
# A381478: E.g.f. A(x) satisfies A(x) = 1/( 1 - x * A(x) * cosh(x * A(x)) )^2.

The programs for A381478, there is no canonical definition to state claims against.
-/

/-! ## A381478.P9361568605704111577

`record[A091168(2*a(n-3))]*A061602(n)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=7, a(4)=2, a(5)=31, a(6)=10`
-/

namespace A381478.P9361568605704111577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 7, 2, 31, 10] fun n f1 =>
  A091168 (2 * f1 (n - 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A061602 n

end

end A381478.P9361568605704111577

/-!
# A381479: E.g.f. A(x) satisfies A(x) = 1/( 1 - x * A(x)^2 * cos(x * A(x)^2) ).

The programs for A381479, there is no canonical definition to state claims against.
-/

/-! ## A381479.P8134351372430894954

`A047994(A260506(n+1))-n`
-/

namespace A381479.P8134351372430894954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A260506 (n + 1)).toNat - (n : ℤ)

end

end A381479.P8134351372430894954

/-!
# A381480: E.g.f. A(x) satisfies A(x) = 1/( 1 - x * A(x) * cos(x * A(x)) )^2.

The programs for A381480, there is no canonical definition to state claims against.
-/

/-! ## A381480.P8647407351470369229

`A108971(A395093(n))`
-/

namespace A381480.P8647407351470369229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108971 (A395093 n).toNat

end

end A381480.P8647407351470369229

/-!
# A381481: Dirichlet g.f.: zeta(s) * Product_{p prime} (1 - 1/p^(2*s) - 1/p^(3*s)).

The programs for A381481, the canonical program `A381481.P4353640378098992548` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381481 has offset 1).

The definition of A381481 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A381481.P8050293368658767604

`∏{e}[n+1, floor(cos(log2(#)))]`
-/

namespace A381481.P8050293368658767604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ⌊Real.cos (Real.logb 2 (Nat.factorization (f1 n) p : ℝ))⌋

end

end A381481.P8050293368658767604

namespace A381481

/-- `∏{e}[n+1, floor(cos(log2(#)))]` -/
def P8050293368658767604.Spec : Prop :=
  ∀ n, P8050293368658767604.a n = A381481 (n + 1)

end A381481

/-! ## A381481.P4353640378098992548

`∏{e}[n+1, C(2, #)-1]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A381481

/-- `∏{e}[n+1, C(2, #)-1]` -/
def P4353640378098992548.Spec : Prop :=
  ∀ n, P4353640378098992548.a n = A381481 (n + 1)

theorem P4353640378098992548.correct : P4353640378098992548.Spec := by
  intro n
  simp only [A381481, Nat.add_sub_cancel]

end A381481

/-! ## A381481.P14832247079893037688

`∏{e}[n+1, ceil(3/#)-2]`
-/

namespace A381481.P14832247079893037688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (⌈3 / (Nat.factorization (f1 n) p : ℚ)⌉ - 2)

end

end A381481.P14832247079893037688

namespace A381481

/-- `∏{e}[n+1, ceil(3/#)-2]` -/
def P14832247079893037688.Spec : Prop :=
  ∀ n, P14832247079893037688.a n = A381481 (n + 1)

end A381481

/-! ## A381481.P12217207104713227718

`A355683(A000190(n+1))`
-/

namespace A381481.P12217207104713227718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355683 (A000190 (n + 1)).toNat

end

end A381481.P12217207104713227718

namespace A381481

/-- `A355683(A000190(n+1))` -/
def P12217207104713227718.Spec : Prop :=
  ∀ n, P12217207104713227718.a n = A381481 (n + 1)

end A381481

/-! ## A381481.P2539897956794509855

`A299406(A058035(n+1))`
-/

namespace A381481.P2539897956794509855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299406 (A058035 (n + 1)).toNat

end

end A381481.P2539897956794509855

namespace A381481

/-- `A299406(A058035(n+1))` -/
def P2539897956794509855.Spec : Prop :=
  ∀ n, P2539897956794509855.a n = A381481 (n + 1)

end A381481

/-! ## A381481.P4775752685234758163

`A355683((n+1)/A007947(n+1))`
-/

namespace A381481.P4775752685234758163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007947 (n + 1) : ℚ))).toNat

end

end A381481.P4775752685234758163

namespace A381481

/-- `A355683((n+1)/A007947(n+1))` -/
def P4775752685234758163.Spec : Prop :=
  ∀ n, P4775752685234758163.a n = A381481 (n + 1)

end A381481

/-! ## A381481.P682770847996800392

`A359378(A181819(gcd(n+1, ∑{p}[n+1, ((n+1)/#)²])))`
-/

namespace A381481.P682770847996800392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359378 (A181819 (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n), ((n + 1 : ℚ) / (p : ℚ)) ^ 2)))).toNat

end

end A381481.P682770847996800392

namespace A381481

/-- `A359378(A181819(gcd(n+1, ∑{p}[n+1, ((n+1)/#)²])))` -/
def P682770847996800392.Spec : Prop :=
  ∀ n, P682770847996800392.a n = A381481 (n + 1)

end A381481

/-! ## A381481.P2834591475795362988

`A008683(A000688(n+1)*A119379(n+1))`
-/

namespace A381481.P2834591475795362988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A000688 (n + 1) * A119379 (n + 1)).toNat

end

end A381481.P2834591475795362988

namespace A381481

/-- `A008683(A000688(n+1)*A119379(n+1))` -/
def P2834591475795362988.Spec : Prop :=
  ∀ n, P2834591475795362988.a n = A381481 (n + 1)

end A381481

/-! ## A381481.P2350780431139140990

`A131038(A000688(n+1)%A184885(n+1))`
-/

namespace A381481.P2350780431139140990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131038 (Int.tmod (A000688 (n + 1)) (A184885 (n + 1))).toNat

end

end A381481.P2350780431139140990

namespace A381481

/-- `A131038(A000688(n+1)%A184885(n+1))` -/
def P2350780431139140990.Spec : Prop :=
  ∀ n, P2350780431139140990.a n = A381481 (n + 1)

end A381481

/-! ## A381481.P2982340592494937897

`A016330(A069739(n+1))`
-/

namespace A381481.P2982340592494937897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016330 (A069739 (n + 1)).toNat

end

end A381481.P2982340592494937897

namespace A381481

/-- `A016330(A069739(n+1))` -/
def P2982340592494937897.Spec : Prop :=
  ∀ n, P2982340592494937897.a n = A381481 (n + 1)

end A381481

/-!
# A381482: a(n) = Sum_{k=0..floor(n/2)} binomial(n,k)^2 * binomial(n-k,k) * 2^k.

The programs for A381482, the canonical program `A381482.P14163763359633763199` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381482 has offset 0).

The definition of A381482 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/2), C(n, #)²*C(n-#, #)*2^#]` (program `A381482.P14163763359633763199`, by `A381482.P14163763359633763199.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A381482.P14163763359633763199

`∑{#}[floor(n/2), C(n, #)²*C(n-#, #)*2^#]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A381482

/-- `∑{#}[floor(n/2), C(n, #)²*C(n-#, #)*2^#]` -/
def P14163763359633763199.Spec : Prop :=
  ∀ n, (P14163763359633763199.a n : ℤ) = A381482 n

theorem P14163763359633763199.correct : P14163763359633763199.Spec := by
  intro n
  simp only [A381482]

end A381482

/-!
# A381483: Area of the unique primitive Pythagorean triple whose inradius is A000108(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

The programs for A381483, the canonical program `A381483.P13239247248519645367` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381483 has offset 0).

The definition of A381483 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A381483.P13239247248519645367

`A000108(n)*(A000108(n)+1)*(2*A000108(n)+1)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A381483

/-- `A000108(n)*(A000108(n)+1)*(2*A000108(n)+1)` -/
def P13239247248519645367.Spec : Prop :=
  ∀ n, P13239247248519645367.a n = A381483 n

theorem P13239247248519645367.correct : P13239247248519645367.Spec := by
  intro n
  simp only [A381483]

end A381483

/-! ## A381483.P636001935873970845

`A000108(n)*A382114(n)`
-/

namespace A381483.P636001935873970845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A382114 n

end

end A381483.P636001935873970845

namespace A381483

/-- `A000108(n)*A382114(n)` -/
def P636001935873970845.Spec : Prop :=
  ∀ n, P636001935873970845.a n = A381483 n

theorem P636001935873970845.correct : P636001935873970845.Spec := by
  intro n
  simp only [A381483, Nat.add_sub_cancel, A381483.P636001935873970845.a, A381483.P13239247248519645367.a, A000108, A000108.P17551949696095299361.a, A382114, A382114.P18285456847627497086.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A381483

/-! ## A381483.P2813121439239889488

`(A000108(n)+1)*C(A383251(n), 2)`
-/

namespace A381483.P2813121439239889488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000108 n + 1) * (Nat.choose (A383251 n).toNat 2 : ℤ)

end

end A381483.P2813121439239889488

namespace A381483

/-- `(A000108(n)+1)*C(A383251(n), 2)` -/
def P2813121439239889488.Spec : Prop :=
  ∀ n, P2813121439239889488.a n = A381483 n

end A381483

/-! ## A381483.P6121553141651131077

`(A383957(n)-A000108(n))*A000108(n)`
-/

namespace A381483.P6121553141651131077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A383957 n - A000108 n) * A000108 n

end

end A381483.P6121553141651131077

namespace A381483

/-- `(A383957(n)-A000108(n))*A000108(n)` -/
def P6121553141651131077.Spec : Prop :=
  ∀ n, P6121553141651131077.a n = A381483 n

theorem P6121553141651131077.correct : P6121553141651131077.Spec := by
  intro n
  simp only [A381483, Nat.add_sub_cancel, A381483.P6121553141651131077.a, A381483.P13239247248519645367.a, A000108, A000108.P17551949696095299361.a, A383957, A383957.P8900195989436403223.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A381483

/-! ## A381483.P16970648936032548405

`(A383957(n)-A382114(n))*A382114(n)`
-/

namespace A381483.P16970648936032548405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A383957 n - A382114 n) * A382114 n

end

end A381483.P16970648936032548405

namespace A381483

/-- `(A383957(n)-A382114(n))*A382114(n)` -/
def P16970648936032548405.Spec : Prop :=
  ∀ n, P16970648936032548405.a n = A381483 n

theorem P16970648936032548405.correct : P16970648936032548405.Spec := by
  intro n
  simp only [A381483, Nat.add_sub_cancel, A381483.P16970648936032548405.a, A381483.P13239247248519645367.a, A000108, A000108.P17551949696095299361.a, A382114, A382114.P18285456847627497086.a, A383957, A383957.P8900195989436403223.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A381483

/-!
# A381484: Expansion of e.g.f. exp(-x/3) / (1-3*x)^(1/9).

The programs for A381484, the canonical program `A381484.P9650558184911066654` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381484 has offset 0).

The definition of A381484 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A381484.P9650558184911066654

`(n-1)*(3*a(n-1)+a(n-2))` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A381484

/-- `(n-1)*(3*a(n-1)+a(n-2))` -/
def P9650558184911066654.Spec : Prop :=
  ∀ n, P9650558184911066654.a n = A381484 n

theorem P9650558184911066654.correct : P9650558184911066654.Spec := by
  intro n
  simp only [A381484]

end A381484

/-! ## A381484.P586451876078883280

`A064459(A000169(n+1))+A000607(n)`
-/

namespace A381484.P586451876078883280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064459 (A000169 (n + 1)).toNat + A000607 n

end

end A381484.P586451876078883280

namespace A381484

/-- `A064459(A000169(n+1))+A000607(n)` -/
def P586451876078883280.Spec : Prop :=
  ∀ n, P586451876078883280.a n = A381484 n

end A381484

/-!
# A381487: Numbers which are a power of their digital root.

The programs for A381487, there is no canonical definition to state claims against.
-/

/-! ## A381487.P3837187936010690429

`record[A175399(n)%A250120(n+2)]`
-/

namespace A381487.P3837187936010690429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175399 n) (A250120 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381487.P3837187936010690429

/-! ## A381487.P7281762785457994747

`A343609(9*A135480(n))/ceil(A066017(n+1)/12)`
-/

namespace A381487.P7281762785457994747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343609 (9 * A135480 n).toNat : ℚ) / (⌈(A066017 (n + 1) : ℚ) / 12⌉ : ℚ)

end

end A381487.P7281762785457994747

/-!
# A381488: Pentagonal numbers that are deficient.

The programs for A381488, the canonical program `A381488.P698145488236481017` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381488 has offset 1).

The definition of A381488 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A381488.P698145488236481017

`filter[A000326(n+1), A294934(#)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A381488

/-- `filter[A000326(n+1), A294934(#)]` -/
def P698145488236481017.Spec : Prop :=
  ∀ n, P698145488236481017.a n = A381488 (n + 1)

theorem P698145488236481017.correct : P698145488236481017.Spec := by
  intro n
  simp only [A381488, Nat.add_sub_cancel]

end A381488

/-! ## A381488.P7861078837820322971

`filter[A000326(n+1), A294935(#)]`
-/

namespace A381488.P7861078837820322971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294935 (f1 j).toNat = 1) n)

end

end A381488.P7861078837820322971

namespace A381488

/-- `filter[A000326(n+1), A294935(#)]` -/
def P7861078837820322971.Spec : Prop :=
  ∀ n, P7861078837820322971.a n = A381488 (n + 1)

end A381488

/-! ## A381488.P15495156428208682507

`filter[A027626(3*n), A294934(#)]`
-/

namespace A381488.P15495156428208682507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027626 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A381488.P15495156428208682507

namespace A381488

/-- `filter[A027626(3*n), A294934(#)]` -/
def P15495156428208682507.Spec : Prop :=
  ∀ n, P15495156428208682507.a n = A381488 (n + 1)

end A381488

/-! ## A381488.P1955467398712146189

`filter[A027626(3*n), A294935(#)]`
-/

namespace A381488.P1955467398712146189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027626 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294935 (f1 j).toNat = 1) n)

end

end A381488.P1955467398712146189

namespace A381488

/-- `filter[A027626(3*n), A294935(#)]` -/
def P1955467398712146189.Spec : Prop :=
  ∀ n, P1955467398712146189.a n = A381488 (n + 1)

end A381488

/-! ## A381488.P13420430612888744178

`filter[A236343(3*n), A294934(#)]`
-/

namespace A381488.P13420430612888744178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236343 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A381488.P13420430612888744178

namespace A381488

/-- `filter[A236343(3*n), A294934(#)]` -/
def P13420430612888744178.Spec : Prop :=
  ∀ n, P13420430612888744178.a n = A381488 (n + 1)

end A381488

/-! ## A381488.P5199764333385717323

`filter[A236343(3*n), A294935(#)]`
-/

namespace A381488.P5199764333385717323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236343 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294935 (f1 j).toNat = 1) n)

end

end A381488.P5199764333385717323

namespace A381488

/-- `filter[A236343(3*n), A294935(#)]` -/
def P5199764333385717323.Spec : Prop :=
  ∀ n, P5199764333385717323.a n = A381488 (n + 1)

end A381488

/-! ## A381488.P1334297484795201999

`filter[A001318(2*n+1), A294934(#)]`
-/

namespace A381488.P1334297484795201999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A381488.P1334297484795201999

namespace A381488

/-- `filter[A001318(2*n+1), A294934(#)]` -/
def P1334297484795201999.Spec : Prop :=
  ∀ n, P1334297484795201999.a n = A381488 (n + 1)

end A381488

/-! ## A381488.P9675229191923345855

`filter[A001318(2*n+1), A294935(#)]`
-/

namespace A381488.P9675229191923345855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294935 (f1 j).toNat = 1) n)

end

end A381488.P9675229191923345855

namespace A381488

/-- `filter[A001318(2*n+1), A294935(#)]` -/
def P9675229191923345855.Spec : Prop :=
  ∀ n, P9675229191923345855.a n = A381488 (n + 1)

end A381488

/-! ## A381488.P8360512570346888181

`filter[A282513(2*n+1), A294934(#)]`
-/

namespace A381488.P8360512570346888181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282513 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A381488.P8360512570346888181

namespace A381488

/-- `filter[A282513(2*n+1), A294934(#)]` -/
def P8360512570346888181.Spec : Prop :=
  ∀ n, P8360512570346888181.a n = A381488 (n + 1)

end A381488

/-! ## A381488.P5338170980583850025

`filter[A282513(2*n+1), A294935(#)]`
-/

namespace A381488.P5338170980583850025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282513 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294935 (f1 j).toNat = 1) n)

end

end A381488.P5338170980583850025

namespace A381488

/-- `filter[A282513(2*n+1), A294935(#)]` -/
def P5338170980583850025.Spec : Prop :=
  ∀ n, P5338170980583850025.a n = A381488 (n + 1)

end A381488

/-! ## A381488.P3493916188274877231

`filter[A188623(3*n+1), A294934(#)]`
-/

namespace A381488.P3493916188274877231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188623 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A381488.P3493916188274877231

namespace A381488

/-- `filter[A188623(3*n+1), A294934(#)]` -/
def P3493916188274877231.Spec : Prop :=
  ∀ n, P3493916188274877231.a n = A381488 (n + 1)

end A381488

/-! ## A381488.P13081998874989162669

`filter[A188623(3*n+1), A294935(#)]`
-/

namespace A381488.P13081998874989162669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188623 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294935 (f1 j).toNat = 1) n)

end

end A381488.P13081998874989162669

namespace A381488

/-- `filter[A188623(3*n+1), A294935(#)]` -/
def P13081998874989162669.Spec : Prop :=
  ∀ n, P13081998874989162669.a n = A381488 (n + 1)

end A381488

/-! ## A381488.P16529375598599826192

`filter[A211004(3*n+1), A294934(#)]`
-/

namespace A381488.P16529375598599826192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211004 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A381488.P16529375598599826192

namespace A381488

/-- `filter[A211004(3*n+1), A294934(#)]` -/
def P16529375598599826192.Spec : Prop :=
  ∀ n, P16529375598599826192.a n = A381488 (n + 1)

end A381488

/-! ## A381488.P9821737337843936959

`filter[A211004(3*n+1), A294935(#)]`
-/

namespace A381488.P9821737337843936959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211004 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294935 (f1 j).toNat = 1) n)

end

end A381488.P9821737337843936959

namespace A381488

/-- `filter[A211004(3*n+1), A294935(#)]` -/
def P9821737337843936959.Spec : Prop :=
  ∀ n, P9821737337843936959.a n = A381488 (n + 1)

end A381488

/-! ## A381488.P15080294911427331420

`filter[A287195(3*n+1), A294934(#)]`
-/

namespace A381488.P15080294911427331420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287195 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A381488.P15080294911427331420

namespace A381488

/-- `filter[A287195(3*n+1), A294934(#)]` -/
def P15080294911427331420.Spec : Prop :=
  ∀ n, P15080294911427331420.a n = A381488 (n + 1)

end A381488

/-! ## A381488.P14968464844342600952

`filter[A287195(3*n+1), A294935(#)]`
-/

namespace A381488.P14968464844342600952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287195 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294935 (f1 j).toNat = 1) n)

end

end A381488.P14968464844342600952

namespace A381488

/-- `filter[A287195(3*n+1), A294935(#)]` -/
def P14968464844342600952.Spec : Prop :=
  ∀ n, P14968464844342600952.a n = A381488 (n + 1)

end A381488

/-!
# A381489: Index of first half of decomposition of integers into pairs x(i)+y(j) based on A380008 and A380009, respectively.

The programs for A381489, there is no canonical definition to state claims against.
-/

/-! ## A381489.P3702532545599739179

`A253315(A193231(n))`
-/

namespace A381489.P3702532545599739179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253315 (A193231 n).toNat

end

end A381489.P3702532545599739179

/-! ## A381489.P9399394512681721325

`A073642(and(n, A341539(n+2)))`
-/

namespace A381489.P9399394512681721325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 (Int.land (n : ℤ) (A341539 (n + 2))).toNat

end

end A381489.P9399394512681721325

/-! ## A381489.P17667922689610340965

`A393253(n)-A381490(n)`
-/

namespace A381489.P17667922689610340965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393253 n - A381490 n

end

end A381489.P17667922689610340965

/-! ## A381489.P17873473875399993999

`xor(A309952(n), A381490(n))`
-/

namespace A381489.P17873473875399993999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A309952 n) (A381490 n)

end

end A381489.P17873473875399993999

/-! ## A381489.P6262501923979982737

`A381490(A057300(n))`
-/

namespace A381489.P6262501923979982737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381490 (A057300 n).toNat

end

end A381489.P6262501923979982737

/-!
# A381490: Index of second half of decomposition of integers into pairs x(i)+y(j) based on A380008 and A380009, respectively.

The programs for A381490, there is no canonical definition to state claims against.
-/

/-! ## A381490.P4548403835348286817

`A393253(n)-A381489(n)`
-/

namespace A381490.P4548403835348286817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393253 n - A381489 n

end

end A381490.P4548403835348286817

/-! ## A381490.P8906633371613039537

`xor(A309952(n), A381489(n))`
-/

namespace A381490.P8906633371613039537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A309952 n) (A381489 n)

end

end A381490.P8906633371613039537

/-! ## A381490.P2007167695854149143

`A381489(A057300(n))`
-/

namespace A381490.P2007167695854149143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381489 (A057300 n).toNat

end

end A381490.P2007167695854149143

/-! ## A381490.P16768561828927976634

`A007949(A336882(n))`
-/

namespace A381490.P16768561828927976634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A336882 n).toNat

end

end A381490.P16768561828927976634

/-! ## A381490.P7024629823797026426

`A334109(A052330(4*n))`
-/

namespace A381490.P7024629823797026426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334109 (A052330 (4 * n)).toNat

end

end A381490.P7024629823797026426

/-!
# A381491: a(n) = A010888(A381487(n)).

The programs for A381491, there is no canonical definition to state claims against.
-/

/-! ## A381491.P14122898139102494644

`dr(A381487(n+1))`
-/

namespace A381491.P14122898139102494644
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A381487 (n + 1))

end

end A381491.P14122898139102494644

/-! ## A381491.P11699423762533152369

`A381487(n+1)%A040072(n)`
-/

namespace A381491.P11699423762533152369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A381487 (n + 1)) (A040072 n)

end

end A381491.P11699423762533152369

/-!
# A381494: Smallest number with reciprocal of period length n in base 7.

The programs for A381494, there is no canonical definition to state claims against.
-/

/-! ## A381494.P4789892673551878870

`A373151(A171214(n+1))+A065361(n)`
-/

namespace A381494.P4789892673551878870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373151 (A171214 (n + 1)).toNat + A065361 n

end

end A381494.P4789892673551878870

/-!
# A381496: Number of powerful numbers that are not prime powers that do not exceed 10^n.

The programs for A381496, there is no canonical definition to state claims against.
-/

/-! ## A381496.P7086648841261776923

`A118896(n)-A076048(n)`
-/

namespace A381496.P7086648841261776923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118896 n - A076048 n

end

end A381496.P7086648841261776923

/-! ## A381496.P1133521059277186168

`A000523(A234289(n))*A002426(n)`
-/

namespace A381496.P1133521059277186168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A234289 n).toNat * A002426 n

end

end A381496.P1133521059277186168

/-!
# A381499: a(n) = sum of numbers k < n such that 1 < gcd(k,n) < k and rad(k) does not divide n, where rad = A007947.

The programs for A381499, the canonical program `A381499.P13132613445248222318` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381499 has offset 1).

The definition of A381499 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023896, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A381499.P15269231193403782437

`A066760(n+1)-A395300(n+1)`
-/

namespace A381499.P15269231193403782437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066760 (n + 1) - A395300 (n + 1)

end

end A381499.P15269231193403782437

namespace A381499

/-- `A066760(n+1)-A395300(n+1)` -/
def P15269231193403782437.Spec : Prop :=
  ∀ n, P15269231193403782437.a n = A381499 (n + 1)

theorem P15269231193403782437.correct : P15269231193403782437.Spec := by
  intro n
  simp only [A381499, Nat.add_sub_cancel, A381499.P15269231193403782437.a, A381499.P13132613445248222318.a, A000217, A000217.P10269402890581615239.a, A023896, A023896.P10594219463258781009.f1, A023896.P10594219463258781009.f2, A023896.P10594219463258781009.a, A066760, A066760.P15906391362368166906.a, A244974, A244974.P1357491586200495620.f1, A244974.P1357491586200495620.a, A395300, A395300.P12127772645771921970.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A067392, A067392.P7533820900183805373.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A381499

/-! ## A381499.P13132613445248222318

`A000217(n+1)-A023896(n+1)-A244974(n+1)+1`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A381499

/-- `A000217(n+1)-A023896(n+1)-A244974(n+1)+1` -/
def P13132613445248222318.Spec : Prop :=
  ∀ n, P13132613445248222318.a n = A381499 (n + 1)

theorem P13132613445248222318.correct : P13132613445248222318.Spec := by
  intro n
  simp only [A381499, Nat.add_sub_cancel]

end A381499

/-! ## A381499.P6329416380868202361

`A000217(n+1)-A023896(n+1)-A000203(n+1)-A395300(n+1)+1`
-/

namespace A381499.P6329416380868202361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) - A023896 (n + 1) - A000203 (n + 1) - A395300 (n + 1) + 1

end

end A381499.P6329416380868202361

namespace A381499

/-- `A000217(n+1)-A023896(n+1)-A000203(n+1)-A395300(n+1)+1` -/
def P6329416380868202361.Spec : Prop :=
  ∀ n, P6329416380868202361.a n = A381499 (n + 1)

theorem P6329416380868202361.correct : P6329416380868202361.Spec := by
  intro n
  simp only [A381499, Nat.add_sub_cancel, A381499.P6329416380868202361.a, A381499.P13132613445248222318.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A000217, A000217.P10269402890581615239.a, A023896, A023896.P10594219463258781009.f1, A023896.P10594219463258781009.f2, A023896.P10594219463258781009.a, A244974, A244974.P1357491586200495620.f1, A244974.P1357491586200495620.a, A395300, A395300.P12127772645771921970.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A381499

