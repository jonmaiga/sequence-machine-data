import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C040
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
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
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
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
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
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
# A331200: Least number with each record number of factorizations into distinct factors > 1.

The programs for A331200, there is no canonical definition to state claims against.
-/

/-! ## A331200.P16967492832403882243

`∩[A168267(n+1), A330997(n+1)]`
-/

namespace A331200.P16967492832403882243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168267 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331200.P16967492832403882243

/-! ## A331200.P4343213328037791602

`A330974(A331232(n+1))`
-/

namespace A331200.P4343213328037791602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330974 (A331232 (n + 1)).toNat

end

end A331200.P4343213328037791602

/-! ## A331200.P7167786268309298723

`A330974(record[A045778(n+1)])`
-/

namespace A331200.P7167786268309298723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330974 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A331200.P7167786268309298723

/-! ## A331200.P17673774219228701318

`A330974(record[A050323(n+1)])`
-/

namespace A331200.P17673774219228701318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050323 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330974 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A331200.P17673774219228701318

/-! ## A331200.P7689291421486500677

`A330974(record[A344370(n+1)/(n+1)])`
-/

namespace A331200.P7689291421486500677
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344370 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330974 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A331200.P7689291421486500677

/-!
# A331201: Numbers k such that the number of factorizations of k into distinct factors > 1 is a prime number.

The programs for A331201, there is no canonical definition to state claims against.
-/

/-! ## A331201.P11033280875912973143

`eq[0, A127693(A032741(n))]`
-/

namespace A331201.P11033280875912973143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127693 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A331201.P11033280875912973143

/-! ## A331201.P6641606091831606087

`eq[3, A338493(A145154(n))]`
-/

namespace A331201.P6641606091831606087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338493 (A145154 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A331201.P6641606091831606087

/-! ## A331201.P10386408429624972651

`eq[3, A263259(A032741(n)²)]`
-/

namespace A331201.P10386408429624972651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263259 (A032741 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A331201.P10386408429624972651

/-! ## A331201.P10072975468507843185

`eq[1, A001065(A045778(n+1))]+1`
-/

namespace A331201.P10072975468507843185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A045778 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A331201.P10072975468507843185

/-! ## A331201.P15778213218599331526

`lt[1, A154349(A000005(n+1))]+1`
-/

namespace A331201.P15778213218599331526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154349 (A000005 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A331201.P15778213218599331526

/-! ## A331201.P10561089327248578575

`eq[1, A001222(A088434(n+1)+1)]+1`
-/

namespace A331201.P10561089327248578575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A088434 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A331201.P10561089327248578575

/-! ## A331201.P17536955196103519225

`eq[2, A000005(A088434(n+1)+1)]+1`
-/

namespace A331201.P17536955196103519225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A088434 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A331201.P17536955196103519225

/-! ## A331201.P9924697702894260516

`eq[2, A111867(A000005(n+1)+1)]+1`
-/

namespace A331201.P9924697702894260516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111867 (A000005 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A331201.P9924697702894260516

/-! ## A331201.P8912037315303946538

`eq[2, A001222(A254578(n+1)+1)]+1`
-/

namespace A331201.P8912037315303946538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A254578 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A331201.P8912037315303946538

/-!
# A331203: Numbers k such that k/(digsum(k)) is an integer cube.

The programs for A331203, there is no canonical definition to state claims against.
-/

/-! ## A331203.P12122713965812355657

`A097569(A344748(n+2))`
-/

namespace A331203.P12122713965812355657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097569 (A344748 (n + 2)).toNat

end

end A331203.P12122713965812355657

/-! ## A331203.P8598729497579418946

`A257275(A007602(n+1))%A255726(A180484(n+2))`
-/

namespace A331203.P8598729497579418946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257275 (A007602 (n + 1)).toNat) (A255726 (A180484 (n + 2)).toNat)

end

end A331203.P8598729497579418946

/-! ## A331203.P9689652600586114361

`A257275(A180484(n+1))%A255726(A180484(n+2))`
-/

namespace A331203.P9689652600586114361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257275 (A180484 (n + 1)).toNat) (A255726 (A180484 (n + 2)).toNat)

end

end A331203.P9689652600586114361

/-! ## A331203.P2433887093561853170

`A342128(∑[comp[10*n]])`
-/

namespace A331203.P2433887093561853170
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342128 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A331203.P2433887093561853170

/-! ## A331203.P416662848638401533

`record[∏{digits}[A324473(n+1), #]]`
-/

namespace A331203.P416662848638401533
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324473 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).prod

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331203.P416662848638401533

/-!
# A331204: Least m > n such that 2^m - 2^n + 1 is prime.

The programs for A331204, there is no canonical definition to state claims against.
-/

/-! ## A331204.P16751239769870738010

`ceil(log2(A331205(n)))`
-/

namespace A331204.P16751239769870738010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A331205 n : ℝ)⌉

end

end A331204.P16751239769870738010

/-! ## A331204.P16048944811467218358

`log2(A331205(n)+A000225(n))`
-/

namespace A331204.P16048944811467218358
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A331205 n + A000225 n : ℝ)

end

end A331204.P16048944811467218358

/-! ## A331204.P11600159836654877451

`floor(log2(A331205(n)+A000079(n)))`
-/

namespace A331204.P11600159836654877451
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A331205 n + A000079 n).toNat

end

end A331204.P11600159836654877451

/-! ## A331204.P2451085699850766719

`val(A331205(n)+A000225(n), A020639(2*(n+1)))`
-/

namespace A331204.P2451085699850766719
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A331205 n + A000225 n).toNat (A020639 (2 * (n + 1))).toNat

end

end A331204.P2451085699850766719

/-! ## A331204.P6179597704996804282

`val(A331205(n)+A000225(n), 2)%A000045(n+10)`
-/

namespace A331204.P6179597704996804282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.valuation (A331205 n + A000225 n).toNat 2 : ℤ) (A000045 (n + 10))

end

end A331204.P6179597704996804282

/-!
# A331205: a(n) = least prime of the form 2^m - 2^n + 1.

The programs for A331205, there is no canonical definition to state claims against.
-/

/-! ## A331205.P6201175327140624312

`A000051(A331204(n))-2^n`
-/

namespace A331205.P6201175327140624312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (A331204 n).toNat - (2 ^ n : ℤ)

end

end A331205.P6201175327140624312

/-! ## A331205.P18254097394859259166

`A000079(A331204(n))-A000225(n)`
-/

namespace A331205.P18254097394859259166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A331204 n).toNat - A000225 n

end

end A331205.P18254097394859259166

/-! ## A331205.P455939108982246044

`A000225(A331204(n))-A000918(n)`
-/

namespace A331205.P455939108982246044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A331204 n).toNat - A000918 n

end

end A331205.P455939108982246044

/-! ## A331205.P6138360472599769382

`A052548(A331204(n))-A000051(n)`
-/

namespace A331205.P6138360472599769382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052548 (A331204 n).toNat - A000051 n

end

end A331205.P6138360472599769382

/-! ## A331205.P6110962389890725667

`A000079(A331204(n))+1-A000079(n)`
-/

namespace A331205.P6110962389890725667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A331204 n).toNat + (1 - A000079 n)

end

end A331205.P6110962389890725667

/-!
# A331206: Numbers k such that A053985(k) divides k.

The programs for A331206, there is no canonical definition to state claims against.
-/

/-! ## A331206.P7215961009852004126

`lt[A336469(n+1), A333254(A057103(n+2))]+1`
-/

namespace A331206.P7215961009852004126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333254 (A057103 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A331206.P7215961009852004126

/-!
# A331209: Largest possible area of a primitive Heronian triangle with perimeter A096468(n).

The programs for A331209, there is no canonical definition to state claims against.
-/

/-! ## A331209.P9825829046982322552

`gcd(A330899(A330931(2*(n+2))), A330922(n+2))`
-/

namespace A331209.P9825829046982322552
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A330899 (A330931 (2 * (n + 2))).toNat) (A330922 (n + 2))

end

end A331209.P9825829046982322552

/-!
# A331211: Number of green nodes in n-th power graph W exponentiation of a cycle graph with 7 blue nodes and one green node.

The programs for A331211, the canonical program `A331211.P16800113602452075746` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331211 has offset 0).

The definition of A331211 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A331211.P7094312605874400638

`ogf((1+7x)/(1-8x+3x^2))`
-/

namespace A331211.P7094312605874400638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 7] [1, -8, 3] n

end

end A331211.P7094312605874400638

namespace A331211

/-- `ogf((1+7x)/(1-8x+3x^2))` -/
def P7094312605874400638.Spec : Prop :=
  ∀ n, P7094312605874400638.a n = A331211 n

end A331211

/-! ## A331211.P16800113602452075746

`8*a(n-1)-3*a(n-2)` with `a(0)=1, a(1)=15`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A331211

/-- `8*a(n-1)-3*a(n-2)` -/
def P16800113602452075746.Spec : Prop :=
  ∀ n, P16800113602452075746.a n = A331211 n

theorem P16800113602452075746.correct : P16800113602452075746.Spec := by
  intro n
  simp only [A331211]

end A331211

/-! ## A331211.P8497876562602093361

`A154636(n+1)-∑[A154636(n)]`
-/

namespace A331211.P8497876562602093361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154636 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154636 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331211.P8497876562602093361

namespace A331211

/-- `A154636(n+1)-∑[A154636(n)]` -/
def P8497876562602093361.Spec : Prop :=
  ∀ n, P8497876562602093361.a n = A331211 n

end A331211

/-! ## A331211.P15655257683899614348

`A000244(ceil(n/(n+1)))*A135849(n+1)`
-/

namespace A331211.P15655257683899614348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 ⌈(n : ℚ) / (n + 1 : ℚ)⌉.toNat * A135849 (n + 1)

end

end A331211.P15655257683899614348

namespace A331211

/-- `A000244(ceil(n/(n+1)))*A135849(n+1)` -/
def P15655257683899614348.Spec : Prop :=
  ∀ n, P15655257683899614348.a n = A331211 n

end A331211

/-! ## A331211.P15508591386591735296

`A048250(A034444(n+1))*A135849(n+1)`
-/

namespace A331211.P15508591386591735296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (A034444 (n + 1)).toNat * A135849 (n + 1)

end

end A331211.P15508591386591735296

namespace A331211

/-- `A048250(A034444(n+1))*A135849(n+1)` -/
def P15508591386591735296.Spec : Prop :=
  ∀ n, P15508591386591735296.a n = A331211 n

end A331211

/-! ## A331211.P1528872832988252982

`A135849(n+1)*A287765(A042946(n))`
-/

namespace A331211.P1528872832988252982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135849 (n + 1) * A287765 (A042946 n).toNat

end

end A331211.P1528872832988252982

namespace A331211

/-- `A135849(n+1)*A287765(A042946(n))` -/
def P1528872832988252982.Spec : Prop :=
  ∀ n, P1528872832988252982.a n = A331211 n

end A331211

/-!
# A331214: a(n) and at least one distinct anagram of a(n) that doesn't start with a leading 0 sum up to a palindrome.

The programs for A331214, there is no canonical definition to state claims against.
-/

/-! ## A331214.P936716513837361216

`eq[A010208(A077043(n)), A033665(n)]`
-/

namespace A331214.P936716513837361216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010208 (A077043 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033665 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A331214.P936716513837361216

/-! ## A331214.P11781308773819631491

`eq[A033665(n), A054977(A347470(n))]`
-/

namespace A331214.P11781308773819631491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033665 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A347470 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A331214.P11781308773819631491

/-! ## A331214.P9162519680059256930

`eq[1, A033665(A004086(A004185(n)))]`
-/

namespace A331214.P9162519680059256930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033665 (A004086 (A004185 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A331214.P9162519680059256930

/-! ## A331214.P14306796875017198435

`eq[1, A033665(A004086(n))]`
-/

namespace A331214.P14306796875017198435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033665 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A331214.P14306796875017198435

/-! ## A331214.P2050013751793175330

`eq[A033665(n), A040790(n²)]`
-/

namespace A331214.P2050013751793175330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033665 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040790 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A331214.P2050013751793175330

/-!
# A331215: Lexicographically earliest sequence of distinct positive integers such that four successive digits are always distinct.

The programs for A331215, there is no canonical definition to state claims against.
-/

/-! ## A331215.P1513038981812697659

`A276766(record[A151934(n)+n])`
-/

namespace A331215.P1513038981812697659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151934 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276766 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A331215.P1513038981812697659

/-! ## A331215.P958968911933391928

`A276766(A151934(n+1)+n+1)`
-/

namespace A331215.P958968911933391928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276766 (A151934 (n + 1) + (n + 1 : ℤ)).toNat

end

end A331215.P958968911933391928

/-! ## A331215.P7851074662213138216

`A276766(A000265(A138882(n+1))+n)`
-/

namespace A331215.P7851074662213138216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276766 (A000265 (A138882 (n + 1)).toNat + (n : ℤ)).toNat

end

end A331215.P7851074662213138216

/-! ## A331215.P14226060814233614183

`A276766(n+1)%A000217(A029611(n))`
-/

namespace A331215.P14226060814233614183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276766 (n + 1)) (A000217 (A029611 n).toNat)

end

end A331215.P14226060814233614183

/-! ## A331215.P4714750131718409029

`A276766(n+1)+A005088(A059867(n+1))`
-/

namespace A331215.P4714750131718409029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276766 (n + 1) + A005088 (A059867 (n + 1)).toNat

end

end A331215.P4714750131718409029

/-! ## A331215.P11906222855058157113

`A276766(n+1)+A000035(A172412(n+1))`
-/

namespace A331215.P11906222855058157113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276766 (n + 1) + A000035 (A172412 (n + 1)).toNat

end

end A331215.P11906222855058157113

/-!
# A331216: a(n) is the number of ways to write n = u + v where the binary representations of u and of v have the same number of 0's and the same number of 1's.

The programs for A331216, there is no canonical definition to state claims against.
-/

/-! ## A331216.P11224674804483070330

`A317742(A092486(n))%p?[A220517(n+1)]`
-/

namespace A331216.P11224674804483070330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220517 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317742 (A092486 n).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A331216.P11224674804483070330

/-! ## A331216.P6045331886221611362

`and(A019554(n+1), A284562(A007088(n)))`
-/

namespace A331216.P6045331886221611362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A019554 (n + 1)) (A284562 (A007088 n).toNat)

end

end A331216.P6045331886221611362

/-! ## A331216.P13621833337280996235

`and(A186646(n+1), A284562(A007088(n)))`
-/

namespace A331216.P13621833337280996235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A186646 (n + 1)) (A284562 (A007088 n).toNat)

end

end A331216.P13621833337280996235

/-! ## A331216.P2023781296458203201

`and(A276873(n+1), A284562(A007088(n)))`
-/

namespace A331216.P2023781296458203201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A276873 (n + 1)) (A284562 (A007088 n).toNat)

end

end A331216.P2023781296458203201

/-!
# A331217: a(n) is the least prime of the form 2^m - 2^n - 1.

The programs for A331217, there is no canonical definition to state claims against.
-/

/-! ## A331217.P7269633167845450077

`A000079(A181692(n))-A000051(n)`
-/

namespace A331217.P7269633167845450077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A181692 n).toNat - A000051 n

end

end A331217.P7269633167845450077

/-! ## A331217.P13605513983618910053

`A000225(A181692(n))-A000079(n)`
-/

namespace A331217.P13605513983618910053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A181692 n).toNat - A000079 n

end

end A331217.P13605513983618910053

/-! ## A331217.P17631518457299056879

`A000225(A181692(n))-∑[A011782(n)]`
-/

namespace A331217.P17631518457299056879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A181692 n).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331217.P17631518457299056879

/-! ## A331217.P14793568250982917042

`A000225(A181692(n))-Δ[A000225(n)]`
-/

namespace A331217.P14793568250982917042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A181692 n).toNat - (f1 (n + 1) - f1 n)

end

end A331217.P14793568250982917042

/-! ## A331217.P13991311397721182569

`A000225(A181692(n))-record[A059268(n)]`
-/

namespace A331217.P13991311397721182569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A181692 n).toNat - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331217.P13991311397721182569

/-!
# A331218: a(n) is the numbers of ways to write n = u + v where the decimal representations of u and of v have the same number of digits d for d = 0..9.

The programs for A331218, there is no canonical definition to state claims against.
-/

/-! ## A331218.P13873760497999277561

`A220645(∑[n])%(n+2-A106612(n))`
-/

namespace A331218.P13873760497999277561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A220645 (∑ j ∈ Finset.range (n + 1), f1 j)) ((n + 2 : ℤ) - A106612 n)

end

end A331218.P13873760497999277561

/-! ## A331218.P18204384644549776267

`((n+1)%(2-A137564(n)+n))^A196222(n)²`
-/

namespace A331218.P18204384644549776267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (n + 1 : ℤ) (2 - A137564 n + (n : ℤ)) : ℚ) ^ (A196222 n ^ 2 : ℤ)

end

end A331218.P18204384644549776267

/-! ## A331218.P8788718665821755188

`A216455(n+1)%(2-A137564(n)+n)`
-/

namespace A331218.P8788718665821755188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216455 (n + 1)) (2 - A137564 n + (n : ℤ))

end

end A331218.P8788718665821755188

/-! ## A331218.P10955410934460609065

`A000194((n+1)²)%(2-A137564(n)+n)`
-/

namespace A331218.P10955410934460609065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000194 ((n + 1) ^ 2)) (2 - A137564 n + (n : ℤ))

end

end A331218.P10955410934460609065

/-! ## A331218.P1556884371243805309

`(n+7)%A171723(2-A137564(n)+n)`
-/

namespace A331218.P1556884371243805309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 7 : ℤ) (A171723 (2 - A137564 n + (n : ℤ)).toNat)

end

end A331218.P1556884371243805309

/-! ## A331218.P11172691028486330957

`A293754(n+8)%A108037(A332550(n))`
-/

namespace A331218.P11172691028486330957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293754 (n + 8)) (A108037 (A332550 n).toNat)

end

end A331218.P11172691028486330957

/-! ## A331218.P10352272656187167375

`and(A050399(n+1), A323166(A254764(n+1)))`
-/

namespace A331218.P10352272656187167375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A050399 (n + 1)) (A323166 (A254764 (n + 1)).toNat)

end

end A331218.P10352272656187167375

/-!
# A331219: Positive numbers of the form u * v where the binary representations of u and of v have the same number of 0's and the same number of 1's.

The programs for A331219, there is no canonical definition to state claims against.
-/

/-! ## A331219.P9721011359648424144

`A331266(n+1)*A331267(n+1)`
-/

namespace A331219.P9721011359648424144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331266 (n + 1) * A331267 (n + 1)

end

end A331219.P9721011359648424144

/-! ## A331219.P4268928105154787965

`eq[A089829(n+3), A384688(n)]`
-/

namespace A331219.P4268928105154787965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089829 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384688 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A331219.P4268928105154787965

/-! ## A331219.P16177115941339233701

`eq[A025643(n+1), A089829(n+3)]`
-/

namespace A331219.P16177115941339233701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089829 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A331219.P16177115941339233701

/-! ## A331219.P1749642981458051670

`∩[A066213(n+1), A095047(n+1)]`
-/

namespace A331219.P1749642981458051670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331219.P1749642981458051670

/-! ## A331219.P4834835273118223618

`∩[A066213(n+1), A236510(n+1)]`
-/

namespace A331219.P4834835273118223618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236510 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331219.P4834835273118223618

/-!
# A331220: Positive numbers of the form u * v where the ternary representations of u and of v have the same number of digits d for d = 0..2.

The programs for A331220, there is no canonical definition to state claims against.
-/

/-! ## A331220.P17441829954165331429

`A331268(n+1)*A331269(n+1)`
-/

namespace A331220.P17441829954165331429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331268 (n + 1) * A331269 (n + 1)

end

end A331220.P17441829954165331429

/-! ## A331220.P10409626357991590380

`eq[A068527(n), A355688(A088975(n))]`
-/

namespace A331220.P10409626357991590380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355688 (A088975 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A331220.P10409626357991590380

/-! ## A331220.P14500652494095004163

`lt[A325181(n), A257990(A026437(n+1))]`
-/

namespace A331220.P14500652494095004163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325181 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257990 (A026437 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A331220.P14500652494095004163

/-! ## A331220.P10667990922735827526

`record[A093995(n+1)-A015269(A330977(n+1))²]`
-/

namespace A331220.P10667990922735827526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093995 (n + 1) - A015269 (A330977 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331220.P10667990922735827526

/-! ## A331220.P555360632604928019

`eq[A039964(A052905(n)), A068527(n)]`
-/

namespace A331220.P555360632604928019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039964 (A052905 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A331220.P555360632604928019

/-!
# A331221: Positive numbers of the form u * v where the decimal representations of u and of v have the same number of digits d for d = 0..9.

The programs for A331221, there is no canonical definition to state claims against.
-/

/-! ## A331221.P10478840773497050119

`A331270(n+1)*A331271(n+1)`
-/

namespace A331221.P10478840773497050119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331270 (n + 1) * A331271 (n + 1)

end

end A331221.P10478840773497050119

/-! ## A331221.P16817268531114206412

`∩[A320924(n+1), A362505(n+1)]`
-/

namespace A331221.P16817268531114206412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362505 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331221.P16817268531114206412

/-! ## A331221.P12032512578805404892

`∩[A066213(n+1), A229848(n+1)]`
-/

namespace A331221.P12032512578805404892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331221.P12032512578805404892

/-! ## A331221.P12176617234089229203

`∩[A066213(n+1), A309134(n+1)]`
-/

namespace A331221.P12176617234089229203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331221.P12176617234089229203

/-! ## A331221.P16464498548014198603

`∩[A229848(n+1), A362505(n+1)]`
-/

namespace A331221.P16464498548014198603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362505 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331221.P16464498548014198603

/-!
# A331222: a(n) = numerator of squared radius R^2 of the circumcircle of the n-th non-obtuse triangle with integer sides i <= j <= k <= sqrt(i^2 + j^2) in a list of such triangles, the list being sorted by increasing size of R. Denominators are A331223.

The programs for A331222, there is no canonical definition to state claims against.
-/

/-! ## A331222.P15264103259716146520

`A331227(∑[A132276(A090885(n+1))])`
-/

namespace A331222.P15264103259716146520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132276 (A090885 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331227 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A331222.P15264103259716146520

/-! ## A331222.P13735479094182241331

`A331227(lt[A228135(2*(n+2)), A228134(n+1)])`
-/

namespace A331222.P13735479094182241331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228135 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331227 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A331222.P13735479094182241331

/-! ## A331222.P1855576714714777394

`A331227(lt[A081360(n), A007705(n)])`
-/

namespace A331222.P1855576714714777394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081360 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331227 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A331222.P1855576714714777394

/-! ## A331222.P11070313680258873178

`A331227(∑[A275062(2*(n+1))])`
-/

namespace A331222.P11070313680258873178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275062 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331227 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A331222.P11070313680258873178

/-! ## A331222.P2805861785756035271

`A331227(lt[A123527(n+1), A228859(3*n+2)])`
-/

namespace A331222.P2805861785756035271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123527 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228859 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331227 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A331222.P2805861785756035271

/-!
# A331223: a(n) = denominator of squared radius R^2 of the circumcircle of the n-th non-obtuse triangle with integer sides i <= j <= k <= sqrt(i^2 + j^2) in a list of such triangles, the list being sorted by increasing size of R. Numerators are A331222.

The programs for A331223, there is no canonical definition to state claims against.
-/

/-! ## A331223.P6442222161302327484

`A331228(∑[A275062(2*(n+1))])`
-/

namespace A331223.P6442222161302327484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275062 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331228 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A331223.P6442222161302327484

/-! ## A331223.P16168279211242356827

`A331228(A353084(n+1)^A055642(n))`
-/

namespace A331223.P16168279211242356827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331228 (SequenceMachineLib.roundAway ((A353084 (n + 1) : ℚ) ^ (A055642 n : ℤ))).toNat

end

end A331223.P16168279211242356827

/-!
# A331224: Numerator of squared radius of circumscribed circle of a triangle with integer sides i <= j <= k, such that the number of triangles with this radius sets a new record. Denominators are A331225.

The programs for A331224, there is no canonical definition to state claims against.
-/

/-! ## A331224.P15109792319069952427

`A093995(A323236(n+1)^A165789(n+1))`
-/

namespace A331224.P15109792319069952427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093995 (SequenceMachineLib.roundAway ((A323236 (n + 1) : ℚ) ^ (A165789 (n + 1) : ℤ))).toNat

end

end A331224.P15109792319069952427

/-!
# A331229: a(n) = number of triangles with integer sides i <= j <= k with radius of circumcircle <= n.

The programs for A331229, there is no canonical definition to state claims against.
-/

/-! ## A331229.P1678098721099764075

`A331240(2*(n+1))`
-/

namespace A331229.P1678098721099764075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331240 (2 * (n + 1))

end

end A331229.P1678098721099764075

/-! ## A331229.P8429799794953193286

`record[A331240(xor(1, n)+1)]`
-/

namespace A331229.P8429799794953193286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331240 (Nat.xor 1 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331229.P8429799794953193286

/-! ## A331229.P11713311039941016282

`record[A331240(abs(xor(n, -2)))]`
-/

namespace A331229.P11713311039941016282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331240 |Int.xor (n : ℤ) (-2)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331229.P11713311039941016282

/-! ## A331229.P15100354196443855204

`record[A331240(-xor(n, -2))]`
-/

namespace A331229.P15100354196443855204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331240 (-Int.xor (n : ℤ) (-2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331229.P15100354196443855204

/-! ## A331229.P9312544125740309455

`record[A331240(n+1)^(n%2)]`
-/

namespace A331229.P9312544125740309455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331240 (n + 1) ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331229.P9312544125740309455

/-!
# A331230: Numbers k such that the number of factorizations of k into distinct factors > 1 is odd.

The programs for A331230, there is no canonical definition to state claims against.
-/

/-! ## A331230.P17463876811970131430

`record[abs(A224892(n+1))]`
-/

namespace A331230.P17463876811970131430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A224892 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331230.P17463876811970131430

/-! ## A331230.P11058220235986904098

`eq[1, abs(A114592(n+1))]+1`
-/

namespace A331230.P11058220235986904098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A114592 (n + 1)|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A331230.P11058220235986904098

/-! ## A331230.P15776332175683676265

`eq[0, A088434(n+1)%2]+1`
-/

namespace A331230.P15776332175683676265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088434 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A331230.P15776332175683676265

/-! ## A331230.P11392091944909524047

`lt[0, A045778(n+1)%2]+1`
-/

namespace A331230.P11392091944909524047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045778 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A331230.P11392091944909524047

/-! ## A331230.P16652920453381341619

`lt[A254578(n+1)%4, 3]+1`
-/

namespace A331230.P16652920453381341619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254578 (n + 1)) 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A331230.P16652920453381341619

/-! ## A331230.P6755546970731847832

`record[A344370(n+1)%(2*(n+1))]`
-/

namespace A331230.P6755546970731847832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344370 (n + 1)) (2 * (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331230.P6755546970731847832

/-! ## A331230.P4660466035139426897

`record[lcm(A000034(n), A224892(n+1))]`
-/

namespace A331230.P4660466035139426897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A224892 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331230.P4660466035139426897

/-! ## A331230.P9715908517116371703

`record[lcm(A000027(n+1), A114592(n+1))]`
-/

namespace A331230.P9715908517116371703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000027 (n + 1)) (A114592 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331230.P9715908517116371703

/-! ## A331230.P5878449664910922971

`comp[∪[A247957(2*n+1), A319238(n+1)]]`
-/

namespace A331230.P5878449664910922971
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247957 (2 * n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319238 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A331230.P5878449664910922971

/-! ## A331230.P3904474913665803787

`lt[A110556(A045778(n+1)), A065043(n+1)]+1`
-/

namespace A331230.P3904474913665803787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110556 (A045778 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A331230.P3904474913665803787

/-!
# A331231: Numbers k such that the number of factorizations of k into distinct factors > 1 is even.

The programs for A331231, there is no canonical definition to state claims against.
-/

/-! ## A331231.P12855320757285040787

`eq[0, A045778(n+1)%2]+1`
-/

namespace A331231.P12855320757285040787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045778 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A331231.P12855320757285040787

/-! ## A331231.P7415401456990926695

`A319238(A292579(n)+1)`
-/

namespace A331231.P7415401456990926695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319238 (A292579 n + 1).toNat

end

end A331231.P7415401456990926695

/-! ## A331231.P11493875014981132794

`A319238(A130696(n+1)+1)`
-/

namespace A331231.P11493875014981132794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319238 (A130696 (n + 1) + 1).toNat

end

end A331231.P11493875014981132794

/-! ## A331231.P2431649748909574869

`A319238(n+1)%A343077(n+2)`
-/

namespace A331231.P2431649748909574869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319238 (n + 1)) (A343077 (n + 2))

end

end A331231.P2431649748909574869

/-! ## A331231.P10075940373668405332

`∪[A005898(n+4), A319238(n+1)]`
-/

namespace A331231.P10075940373668405332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005898 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A331231.P10075940373668405332

/-! ## A331231.P13538792816581655405

`∪[A002315(3*(n+1)), A319238(n+1)]`
-/

namespace A331231.P13538792816581655405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002315 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A331231.P13538792816581655405

/-! ## A331231.P845676517838982084

`∪[A045768(2*n+5), A319238(n+1)]`
-/

namespace A331231.P845676517838982084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045768 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A331231.P845676517838982084

/-!
# A331232: Record numbers of factorizations into distinct factors > 1.

The programs for A331232, there is no canonical definition to state claims against.
-/

/-! ## A331232.P17856668695837884980

`A045778(A331200(n+1))`
-/

namespace A331232.P17856668695837884980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (A331200 (n + 1)).toNat

end

end A331232.P17856668695837884980

/-! ## A331232.P18399025659746974613

`record[A050323(n+1)]`
-/

namespace A331232.P18399025659746974613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050323 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331232.P18399025659746974613

/-! ## A331232.P13461306700484719935

`record[A318286(A181820(n+1))]`
-/

namespace A331232.P13461306700484719935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318286 (A181820 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331232.P13461306700484719935

/-! ## A331232.P8570285420136863131

`record[A045778(n+1)]`
-/

namespace A331232.P8570285420136863131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331232.P8570285420136863131

/-! ## A331232.P18144959228133706140

`record[A344370(n+1)/(n+1)]`
-/

namespace A331232.P18144959228133706140
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344370 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331232.P18144959228133706140

/-!
# A331233: Number of unlabeled rooted trees with n vertices and more than two branches of the root.

The programs for A331233, there is no canonical definition to state claims against.
-/

/-! ## A331233.P14500670104786114335

`record[A106235(n+1)]-A328779(n)`
-/

namespace A331233.P14500670104786114335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106235 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A328779 n

end

end A331233.P14500670104786114335

/-! ## A331233.P13443015824308641037

`A174145(n)-A106234(A152950(n+1))`
-/

namespace A331233.P13443015824308641037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174145 n - A106234 (A152950 (n + 1)).toNat

end

end A331233.P13443015824308641037

/-! ## A331233.P3865675474362472407

`Δ[A000081(n)]-A106234(A152950(n+1))`
-/

namespace A331233.P3865675474362472407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A106234 (A152950 (n + 1)).toNat

end

end A331233.P3865675474362472407

/-! ## A331233.P13486596911408371799

`Δ[A095341(n+1)/(n+1)]-A106234(A152950(n+1))`
-/

namespace A331233.P13486596911408371799
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095341 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A106234 (A152950 (n + 1)).toNat : ℚ)

end

end A331233.P13486596911408371799

/-! ## A331233.P5574046116786313501

`A000081(n+1)-A000081(n)-A106234(A152950(n+1))`
-/

namespace A331233.P5574046116786313501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (n + 1) - A000081 n - A106234 (A152950 (n + 1)).toNat

end

end A331233.P5574046116786313501

/-!
# A331234: 

The programs for A331234, there is no canonical definition to state claims against.
-/

/-! ## A331234.P3026178752431414274

`A001110(A331399(n+1))`
-/

namespace A331234.P3026178752431414274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001110 (A331399 (n + 1)).toNat

end

end A331234.P3026178752431414274

/-!
# A331235: The number of simple polygons having all points of a 3 X n grid as vertices.

The programs for A331235, there is no canonical definition to state claims against.
-/

/-! ## A331235.P2375345766788339099

`A002264(∑[A365132(n)])`
-/

namespace A331235.P2375345766788339099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365132 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A331235.P2375345766788339099

/-!
# A331236: Total cutting number of all simple connected graphs of order n.

The programs for A331236, there is no canonical definition to state claims against.
-/

/-! ## A331236.P15558562081474674051

`A267771(A337561(∑[n]))`
-/

namespace A331236.P15558562081474674051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267771 (A337561 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A331236.P15558562081474674051

/-! ## A331236.P10092558310640638004

`Δ[A097992(A000255(n))]`
-/

namespace A331236.P10092558310640638004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (A000255 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A331236.P10092558310640638004

/-!
# A331237: Total cutting number of all trees of order n.

The programs for A331237, there is no canonical definition to state claims against.
-/

/-! ## A331237.P14520464972887636217

`or(A056014(n), A092953(A026961(n)))`
-/

namespace A331237.P14520464972887636217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A056014 n) (A092953 (A026961 n).toNat)

end

end A331237.P14520464972887636217

/-! ## A331237.P10517718680542307730

`A340500(∑[-∏[or(1, 2*(n-1))]])`
-/

namespace A331237.P10517718680542307730
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (2 * ((n : ℤ) - 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340500 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A331237.P10517718680542307730

/-! ## A331237.P9585021877747486613

`A340500(∑[-∏[xor(1, 2*(n-1))]])`
-/

namespace A331237.P9585021877747486613
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (2 * ((n : ℤ) - 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340500 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A331237.P9585021877747486613

/-!
# A331240: a(n) = number of triangles with integer sides i <= j <= k with diameter of circumcircle <= n.

The programs for A331240, there is no canonical definition to state claims against.
-/

/-! ## A331240.P18305939064078348250

`A360419(n+5)-A001221(A000045(2*(n+2)))`
-/

namespace A331240.P18305939064078348250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360419 (n + 5) - A001221 (A000045 (2 * (n + 2))).toNat

end

end A331240.P18305939064078348250

/-! ## A331240.P16784395179249888276

`∑[record[A025919(A341979(n))]]`
-/

namespace A331240.P16784395179249888276
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025919 (A341979 (n + 59)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331240.P16784395179249888276

/-! ## A331240.P16501231510635658434

`∑[lt[A119441(3*n+5), 4]]`
-/

namespace A331240.P16501231510635658434
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119441 (3 * n + 5)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331240.P16501231510635658434

/-!
# A331242: a(n) = number of triangles with integer sides i <= j <= k with radius of enclosing circle <= n.

The programs for A331242, there is no canonical definition to state claims against.
-/

/-! ## A331242.P4681474334543501707

`A331243(2*(n+1))`
-/

namespace A331242.P4681474334543501707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331243 (2 * (n + 1))

end

end A331242.P4681474334543501707

/-! ## A331242.P8236856162629214723

`record[A331243(n+1)^(n%2)]`
-/

namespace A331242.P8236856162629214723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331243 (n + 1) ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331242.P8236856162629214723

/-! ## A331242.P1031529697337945451

`record[A331243(A014681(n+1))]`
-/

namespace A331242.P1031529697337945451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331243 (A014681 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331242.P1031529697337945451

/-! ## A331242.P17583957709696936536

`record[A331243(A103889(n+1))]`
-/

namespace A331242.P17583957709696936536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331243 (A103889 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331242.P17583957709696936536

/-! ## A331242.P15676664823665652643

`A028310(A331243(Δ[n²]+1))`
-/

namespace A331242.P15676664823665652643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A331243 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat).toNat

end

end A331242.P15676664823665652643

/-!
# A331243: a(n) = number of triangles with integer sides i <= j <= k with diameter of enclosing circle <= n.

The programs for A331243, there is no canonical definition to state claims against.
-/

/-! ## A331243.P16748981320068055086

`∑[A220845(∑[A061147(n+1)])]`
-/

namespace A331243.P16748981320068055086
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061147 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220845 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331243.P16748981320068055086

/-! ## A331243.P15510861698216176708

`∑[A220845(∑[A066638(n+1)])]`
-/

namespace A331243.P15510861698216176708
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066638 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220845 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331243.P15510861698216176708

/-! ## A331243.P5994181858887180279

`∑[A220845(∑[A068634(n+1)])]`
-/

namespace A331243.P5994181858887180279
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068634 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220845 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331243.P5994181858887180279

/-! ## A331243.P15128802481283333584

`∑[A220845(∑[A077741(n+1)])]`
-/

namespace A331243.P15128802481283333584
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077741 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220845 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331243.P15128802481283333584

/-! ## A331243.P11377115360851685172

`∑[A220845(∑[A085908(n+1)])]`
-/

namespace A331243.P11377115360851685172
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085908 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220845 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331243.P11377115360851685172

/-!
# A331244: Triangles with integer sides i <= j <= k sorted by radius of enclosing circle, and, in case of ties, lexicographically by side lengths (smallest first). The sequence gives the shortest side i. The other sides are in A331245 and A331246.

The programs for A331244, there is no canonical definition to state claims against.
-/

/-! ## A331244.P3786062142101983330

`A065770(A001222(A084604(4*n))+2)`
-/

namespace A331244.P3786062142101983330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (A001222 (A084604 (4 * n)).toNat + 2).toNat

end

end A331244.P3786062142101983330

/-! ## A331244.P7390037971929111121

`A006530(A344161(3*n+5))%A344150(n+4)`
-/

namespace A331244.P7390037971929111121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (A344161 (3 * n + 5)).toNat) (A344150 (n + 4))

end

end A331244.P7390037971929111121

/-! ## A331244.P1718062691008909023

`A001221(xor(A236939(n), A293326(n)))`
-/

namespace A331244.P1718062691008909023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.xor (A236939 (n + 10)) (A293326 n)).toNat

end

end A331244.P1718062691008909023

/-! ## A331244.P6609314689766858642

`A124768(A316113(n+1)-A243055(n+1))`
-/

namespace A331244.P6609314689766858642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124768 (A316113 (n + 1) - A243055 (n + 1)).toNat

end

end A331244.P6609314689766858642

/-!
# A331245: Triangles with integer sides i <= j <= k sorted by radius of enclosing circle, and, in case of ties, lexicographically by side lengths (smallest first). The sequence gives the middle side j. The other sides are in A331244 and A331246.

The programs for A331245, there is no canonical definition to state claims against.
-/

/-! ## A331245.P6072613497533239762

`floor(A318924(A266183(n+1))+sqrt(n))`
-/

namespace A331245.P6072613497533239762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A318924 (A266183 (n + 1)).toNat : ℝ) + Real.sqrt (n : ℝ)⌋

end

end A331245.P6072613497533239762

/-!
# A331246: Triangles with integer sides i <= j <= k sorted by radius of enclosing circle, and, in case of ties, lexicographically by side lengths (smallest first). The sequence gives the longest side k. The other sides are in A331244 and A331245.

The programs for A331246, there is no canonical definition to state claims against.
-/

/-! ## A331246.P8977276874243741658

`A220104(A338316(n+2)+n-1)`
-/

namespace A331246.P8977276874243741658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220104 (A338316 (n + 2) + ((n : ℤ) - 1)).toNat

end

end A331246.P8977276874243741658

/-! ## A331246.P17439231713943874990

`A076620(A317239(n+1)+(n+2)²)`
-/

namespace A331246.P17439231713943874990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076620 (A317239 (n + 1) + ((n + 2) ^ 2 : ℤ)).toNat

end

end A331246.P17439231713943874990

/-! ## A331246.P10677870205979412534

`Δ[A118103(n+1)%A229092(n+1)]`
-/

namespace A331246.P10677870205979412534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118103 (n + 1)) (A229092 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A331246.P10677870205979412534

/-! ## A331246.P3846378111422067153

`A056556(A233473(n)+A000034(n))`
-/

namespace A331246.P3846378111422067153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A233473 n + A000034 n).toNat

end

end A331246.P3846378111422067153

/-! ## A331246.P14077350772474843851

`A056556(A304501(n)+A056556(n))`
-/

namespace A331246.P14077350772474843851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A304501 n + A056556 n).toNat

end

end A331246.P14077350772474843851

/-! ## A331246.P11565680036665564189

`A074279(A331935(n+1)+A002264(n))`
-/

namespace A331246.P11565680036665564189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074279 (A331935 (n + 1) + A002264 n).toNat

end

end A331246.P11565680036665564189

/-! ## A331246.P16004990305409171910

`A056556(A233473(n+1)-1)`
-/

namespace A331246.P16004990305409171910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A233473 (n + 1) - 1).toNat

end

end A331246.P16004990305409171910

/-!
# A331248: Common denominator of x-coordinate and y-coordinate of 3rd point of triangles with integer sides corresponding to A331247 and A331249.

The programs for A331248, there is no canonical definition to state claims against.
-/

/-! ## A331248.P10065836838386264752

`A066436(A005195(n))%5`
-/

namespace A331248.P10065836838386264752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066436 (A005195 n).toNat) 5

end

end A331248.P10065836838386264752

/-! ## A331248.P213868879625301701

`A008873(10*A078440(n+1))`
-/

namespace A331248.P213868879625301701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008873 (10 * A078440 (n + 1)).toNat

end

end A331248.P213868879625301701

/-! ## A331248.P5167077370735809764

`A033478(10*A078440(n+1))`
-/

namespace A331248.P5167077370735809764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033478 (10 * A078440 (n + 1)).toNat

end

end A331248.P5167077370735809764

/-! ## A331248.P11598241032764542348

`A033479(10*A078440(n+1))`
-/

namespace A331248.P11598241032764542348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033479 (10 * A078440 (n + 1)).toNat

end

end A331248.P11598241032764542348

/-! ## A331248.P4446248325798239495

`A269592(gcd(A174739(n+1), A326081(n)))`
-/

namespace A331248.P4446248325798239495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269592 (Int.gcd (A174739 (n + 1)) (A326081 n))

end

end A331248.P4446248325798239495

/-!
# A331250: a(n) = number of triangles with integer sides i <= j <= k with area <= n.

The programs for A331250, there is no canonical definition to state claims against.
-/

/-! ## A331250.P5690425154922786701

`A157282(A052905(n))+A003059(n+1)`
-/

namespace A331250.P5690425154922786701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157282 (A052905 n).toNat + A003059 (n + 1)

end

end A331250.P5690425154922786701

/-! ## A331250.P2071602164170238365

`A247645(n)+A247140(A034856(n+1))`
-/

namespace A331250.P2071602164170238365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247645 n + A247140 (A034856 (n + 1)).toNat

end

end A331250.P2071602164170238365

/-! ## A331250.P941715073854742652

`∑[∑{e}[(2*n+7)*A028329(n), #]]`
-/

namespace A331250.P941715073854742652
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 7 : ℤ) * A028329 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331250.P941715073854742652

/-! ## A331250.P14767223429488287868

`∑[A072643(Δ[A072653(n+1)])]`
-/

namespace A331250.P14767223429488287868
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072653 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072643 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331250.P14767223429488287868

/-! ## A331250.P82972229314857997

`A353840(Δ[A008778(n)])+n-2`
-/

namespace A331250.P82972229314857997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353840 (f1 (n + 1) - f1 n).toNat + ((n : ℤ) - 2)

end

end A331250.P82972229314857997

/-!
# A331251: Triangles with integer sides i <= j <= k sorted by area, and, in case of ties, lexicographically by side lengths (smallest first). The sequence gives shortest side i. The other sides are in A331252 and A331253.

The programs for A331251, there is no canonical definition to state claims against.
-/

/-! ## A331251.P9494969688871534990

`A237442(A062312(n+1)%A237437(n+1))`
-/

namespace A331251.P9494969688871534990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237442 (Int.tmod (A062312 (n + 1)) (A237437 (n + 1))).toNat

end

end A331251.P9494969688871534990

/-! ## A331251.P4410279818458693488

`gcd(A104210(n+1), A353835(A297224(3*n+2)))`
-/

namespace A331251.P4410279818458693488
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A104210 (n + 1)) (A353835 (A297224 (3 * n + 2)).toNat)

end

end A331251.P4410279818458693488

/-! ## A331251.P15595482172368528168

`A001221(∑[A059196(2*n+1)]+6)`
-/

namespace A331251.P15595482172368528168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059196 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∑ j ∈ Finset.range (n + 1), f1 j + 6).toNat

end

end A331251.P15595482172368528168

/-! ## A331251.P9456201136749366792

`A089242(A099131(n+1))`
-/

namespace A331251.P9456201136749366792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089242 (A099131 (n + 1)).toNat

end

end A331251.P9456201136749366792

/-! ## A331251.P2730863967983331836

`A030338(A019301(n))`
-/

namespace A331251.P2730863967983331836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030338 (A019301 n).toNat

end

end A331251.P2730863967983331836

/-!
# A331252: Triangles with integer sides i <= j <= k sorted by area, and, in case of ties, lexicographically by side lengths (smallest first). The sequence gives middle side j. The other sides are in A331251 and A331253.

The programs for A331252, there is no canonical definition to state claims against.
-/

/-! ## A331252.P6402546821216664103

`A331253(A187829(n+1))-A008616(A331247(n+1))`
-/

namespace A331252.P6402546821216664103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331253 (A187829 (n + 1)).toNat - A008616 (A331247 (n + 1)).toNat

end

end A331252.P6402546821216664103

/-! ## A331252.P685331747289208480

`A003059(A331249(n+1))/A066436(A005195(n))%5`
-/

namespace A331252.P685331747289208480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003059 (A331249 (n + 1)).toNat : ℚ) / (Int.tmod (A066436 (A005195 n).toNat) 5 : ℚ)

end

end A331252.P685331747289208480

/-! ## A331252.P15387244310850359460

`A003059(A331249(n+1))/A008873(10*A078440(n+1))`
-/

namespace A331252.P15387244310850359460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003059 (A331249 (n + 1)).toNat : ℚ) / (A008873 (10 * A078440 (n + 1)).toNat : ℚ)

end

end A331252.P15387244310850359460

/-! ## A331252.P6967516443618024461

`A003059(A331249(n+1))/A033478(10*A078440(n+1))`
-/

namespace A331252.P6967516443618024461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003059 (A331249 (n + 1)).toNat : ℚ) / (A033478 (10 * A078440 (n + 1)).toNat : ℚ)

end

end A331252.P6967516443618024461

/-! ## A331252.P1605812424114831844

`A003059(A331249(n+1))/A033479(10*A078440(n+1))`
-/

namespace A331252.P1605812424114831844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003059 (A331249 (n + 1)).toNat : ℚ) / (A033479 (10 * A078440 (n + 1)).toNat : ℚ)

end

end A331252.P1605812424114831844

/-!
# A331253: Triangles with integer sides i <= j <= k sorted by area, and, in case of ties, lexicographically by side lengths (smallest first). The sequence gives longest side k. The other sides are in A331251 and A331252.

The programs for A331253, there is no canonical definition to state claims against.
-/

/-! ## A331253.P7277844962696589118

`A003984(lt[4, A027623(n)])`
-/

namespace A331253.P7277844962696589118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027623 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003984 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A331253.P7277844962696589118

/-! ## A331253.P7123843677568152131

`A003984(lt[4, A037234(n)])`
-/

namespace A331253.P7123843677568152131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037234 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003984 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A331253.P7123843677568152131

/-! ## A331253.P11098505213534520659

`A087061(lt[4, A027623(n)])`
-/

namespace A331253.P11098505213534520659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027623 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087061 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A331253.P11098505213534520659

/-! ## A331253.P16390862525518627750

`A087061(lt[4, A037234(n)])`
-/

namespace A331253.P16390862525518627750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037234 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087061 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A331253.P16390862525518627750

/-! ## A331253.P4870898258367277394

`A344838(lt[4, A037234(n)])`
-/

namespace A331253.P4870898258367277394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037234 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344838 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A331253.P4870898258367277394

/-!
# A331254: Triangles with integer sides i <= j <= k sorted by radius of circumcircle, and, in case of ties, lexicographically by side lengths (smallest first). The sequence gives the shortest side i. The other sides are in A331255 and A331256.

The programs for A331254, there is no canonical definition to state claims against.
-/

/-! ## A331254.P13022129087099609171

`A257510(A339993(3*n+4)+A280618(n))`
-/

namespace A331254.P13022129087099609171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257510 (A339993 (3 * n + 4) + A280618 n).toNat

end

end A331254.P13022129087099609171

/-! ## A331254.P12843517697593295421

`A284583(lt[A357705(3*n+2), A307558(2*n+3)])`
-/

namespace A331254.P12843517697593295421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357705 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307558 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284583 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A331254.P12843517697593295421

/-! ## A331254.P17669697893966649224

`A275853(and(A056544(n+1), A243797(n+1)))`
-/

namespace A331254.P17669697893966649224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275853 (Int.land (A056544 (n + 1)) (A243797 (n + 1))).toNat

end

end A331254.P17669697893966649224

/-! ## A331254.P16408536132500205591

`A353333(A018006(n))+A000120(n)`
-/

namespace A331254.P16408536132500205591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353333 (A018006 n).toNat + A000120 n

end

end A331254.P16408536132500205591

/-! ## A331254.P10461945790381509455

`A043276(lt[A000700(n+4), A387188(n)])`
-/

namespace A331254.P10461945790381509455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387188 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043276 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A331254.P10461945790381509455

/-!
# A331255: Triangles with integer sides i <= j <= k sorted by radius of circumcircle, and, in case of ties, lexicographically by side lengths (smallest first). The sequence gives the middle side j. The other sides are in A331254 and A331256.

The programs for A331255, there is no canonical definition to state claims against.
-/

/-! ## A331255.P223711962374601166

`A138033(A314138(n)+1)`
-/

namespace A331255.P223711962374601166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138033 (A314138 n + 1).toNat

end

end A331255.P223711962374601166

/-! ## A331255.P11585061095354140338

`A357186(record[A175498(2*n+3)])-1`
-/

namespace A331255.P11585061095354140338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175498 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357186 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1

end

end A331255.P11585061095354140338

/-! ## A331255.P8590082908763644773

`A083399(A318046(n+1)*A349843(n))`
-/

namespace A331255.P8590082908763644773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083399 (A318046 (n + 1) * A349843 n).toNat

end

end A331255.P8590082908763644773

/-! ## A331255.P3056175723808991424

`A212625(A212628(n+1)+A003586(n+1))`
-/

namespace A331255.P3056175723808991424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212625 (A212628 (n + 1) + A003586 (n + 1)).toNat

end

end A331255.P3056175723808991424

/-!
# A331256: Triangles with integer sides i <= j <= k sorted by radius of circumcircle, and, in case of ties, lexicographically by side lengths (smallest first). The sequence gives the longest side k. The other sides are in A331254 and A331255.

The programs for A331256, there is no canonical definition to state claims against.
-/

/-! ## A331256.P13664207380182342117

`A000030(A316849(n+1)+25)`
-/

namespace A331256.P13664207380182342117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A316849 (n + 1) + 25).toNat

end

end A331256.P13664207380182342117

/-! ## A331256.P14349597553303732006

`A316843(lt[A169975(n), A316843(n+1)])`
-/

namespace A331256.P14349597553303732006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169975 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316843 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A331256.P14349597553303732006

/-! ## A331256.P2982912018341684612

`A316843(lt[A326033(n+1), A327715(n)])`
-/

namespace A331256.P2982912018341684612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326033 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327715 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316843 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A331256.P2982912018341684612

/-! ## A331256.P8397869906945449513

`A062153(∑[A242441(n+4)+A028356(n)])`
-/

namespace A331256.P8397869906945449513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242441 (n + 4) + A028356 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062153 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A331256.P8397869906945449513

/-! ## A331256.P17213972092106938391

`A062153(∑[A242441(n+4)+A070939(n)])`
-/

namespace A331256.P17213972092106938391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242441 (n + 4) + A070939 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062153 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A331256.P17213972092106938391

/-! ## A331256.P4640187100587871685

`A316843(A321993(n+1)%A316849(n+1))`
-/

namespace A331256.P4640187100587871685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316843 (Int.tmod (A321993 (n + 1)) (A316849 (n + 1))).toNat

end

end A331256.P4640187100587871685

/-!
# A331259: Numerator of harmonic mean of 3 consecutive primes. Denominators are A331260.

The programs for A331259, the canonical program `A331259.P10309097593094092739` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331259 has offset 1).

The definition of A331259 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A331259.P10309097593094092739

`A331260(n+1)%4*A046301(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A331259

/-- `A331260(n+1)%4*A046301(n+1)` -/
def P10309097593094092739.Spec : Prop :=
  ∀ n, P10309097593094092739.a n = A331259 (n + 1)

theorem P10309097593094092739.correct : P10309097593094092739.Spec := by
  intro n
  simp only [A331259, Nat.add_sub_cancel]

end A331259

/-! ## A331259.P10840242959464795219

`3*A046301(A077168(n))`
-/

namespace A331259.P10840242959464795219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A046301 (A077168 n).toNat

end

end A331259.P10840242959464795219

namespace A331259

/-- `3*A046301(A077168(n))` -/
def P10840242959464795219.Spec : Prop :=
  ∀ n, P10840242959464795219.a n = A331259 (n + 1)

end A331259

/-! ## A331259.P5882898359557777881

`A046301(n+1)*A122553(A104080(n))`
-/

namespace A331259.P5882898359557777881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046301 (n + 1) * A122553 (A104080 n).toNat

end

end A331259.P5882898359557777881

namespace A331259

/-- `A046301(n+1)*A122553(A104080(n))` -/
def P5882898359557777881.Spec : Prop :=
  ∀ n, P5882898359557777881.a n = A331259 (n + 1)

end A331259

/-! ## A331259.P750450568961827013

`A046301(n+1)*A176171(A108990(n))`
-/

namespace A331259.P750450568961827013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046301 (n + 1) * A176171 (A108990 n).toNat

end

end A331259.P750450568961827013

namespace A331259

/-- `A046301(n+1)*A176171(A108990(n))` -/
def P750450568961827013.Spec : Prop :=
  ∀ n, P750450568961827013.a n = A331259 (n + 1)

end A331259

/-! ## A331259.P2017285473047347202

`A046301(n+1)*A072591(A033850(n+1))`
-/

namespace A331259.P2017285473047347202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046301 (n + 1) * A072591 (A033850 (n + 1)).toNat

end

end A331259.P2017285473047347202

namespace A331259

/-- `A046301(n+1)*A072591(A033850(n+1))` -/
def P2017285473047347202.Spec : Prop :=
  ∀ n, P2017285473047347202.a n = A331259 (n + 1)

end A331259

/-!
# A331260: Denominator of harmonic mean of 3 consecutive primes. Numerators are A331259.

The programs for A331260, the canonical program `A331260.P3025793374459626332` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331260 has offset 1).

The definition of A331260 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A331260.P3025793374459626332

`lcm(3, A127345(n+1))/3`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A331260

/-- `lcm(3, A127345(n+1))/3` -/
def P3025793374459626332.Spec : Prop :=
  ∀ n, P3025793374459626332.a n = (A331260 (n + 1) : ℚ)

end A331260

/-! ## A331260.P16305146037108939603

`A339966(A127345(n+1)-1)`
-/

namespace A331260.P16305146037108939603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339966 (A127345 (n + 1) - 1).toNat

end

end A331260.P16305146037108939603

namespace A331260

/-- `A339966(A127345(n+1)-1)` -/
def P16305146037108939603.Spec : Prop :=
  ∀ n, P16305146037108939603.a n = A331260 (n + 1)

end A331260

/-! ## A331260.P17904556707971686312

`A339966(xor(1, A127345(n+1)))`
-/

namespace A331260.P17904556707971686312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339966 (Int.xor 1 (A127345 (n + 1))).toNat

end

end A331260.P17904556707971686312

namespace A331260

/-- `A339966(xor(1, A127345(n+1)))` -/
def P17904556707971686312.Spec : Prop :=
  ∀ n, P17904556707971686312.a n = A331260 (n + 1)

end A331260

/-! ## A331260.P8604699996935897291

`A339966(A260196(n+2)+A127345(n+1))`
-/

namespace A331260.P8604699996935897291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339966 (A260196 (n + 2) + A127345 (n + 1)).toNat

end

end A331260.P8604699996935897291

namespace A331260

/-- `A339966(A260196(n+2)+A127345(n+1))` -/
def P8604699996935897291.Spec : Prop :=
  ∀ n, P8604699996935897291.a n = A331260 (n + 1)

end A331260

/-! ## A331260.P1630737996717950179

`A106610(A127345(n+1))`
-/

namespace A331260.P1630737996717950179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (A127345 (n + 1)).toNat

end

end A331260.P1630737996717950179

namespace A331260

/-- `A106610(A127345(n+1))` -/
def P1630737996717950179.Spec : Prop :=
  ∀ n, P1630737996717950179.a n = A331260 (n + 1)

end A331260

/-!
# A331261: List of pairs of consecutive integers such that one of them is a square and their sum is also a square.

The programs for A331261, the canonical program `A331261.P13496405217085940053` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331261 has offset 1).

The definition of A331261 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A331261.P17911257066565813935

`∪[A111766(n+1), A079291(n)]`
-/

namespace A331261.P17911257066565813935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111766 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079291 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A331261.P17911257066565813935

namespace A331261

/-- `∪[A111766(n+1), A079291(n)]` -/
def P17911257066565813935.Spec : Prop :=
  ∀ n, (P17911257066565813935.a n : ℤ) = A331261 (n + 1)

end A331261

/-! ## A331261.P14610398318493024764

`∪[A111766(n+1), A000129(n)²]`
-/

namespace A331261.P14610398318493024764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111766 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A331261.P14610398318493024764

namespace A331261

/-- `∪[A111766(n+1), A000129(n)²]` -/
def P14610398318493024764.Spec : Prop :=
  ∀ n, (P14610398318493024764.a n : ℤ) = A331261 (n + 1)

end A331261

/-! ## A331261.P13496405217085940053

`∪[A111766(n+1), Δ[A084158(n)]]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A331261

/-- `∪[A111766(n+1), Δ[A084158(n)]]` -/
def P13496405217085940053.Spec : Prop :=
  ∀ n, (P13496405217085940053.a n : ℤ) = A331261 (n + 1)

theorem P13496405217085940053.correct : P13496405217085940053.Spec := by
  intro n
  simp only [A331261, Nat.add_sub_cancel]

end A331261

/-! ## A331261.P594980103801455070

`∪[xor(1, A079291(n+1)), A079291(n)]`
-/

namespace A331261.P594980103801455070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A079291 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079291 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A331261.P594980103801455070

namespace A331261

/-- `∪[xor(1, A079291(n+1)), A079291(n)]` -/
def P594980103801455070.Spec : Prop :=
  ∀ n, (P594980103801455070.a n : ℤ) = A331261 (n + 1)

end A331261

/-! ## A331261.P1158309475293028584

`∪[A111766(n+1), Δ[A171842(n)]²]`
-/

namespace A331261.P1158309475293028584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111766 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171842 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) - f3 n) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A331261.P1158309475293028584

namespace A331261

/-- `∪[A111766(n+1), Δ[A171842(n)]²]` -/
def P1158309475293028584.Spec : Prop :=
  ∀ n, (P1158309475293028584.a n : ℤ) = A331261 (n + 1)

end A331261

/-!
# A331262: a(n) is the number of balanced-non-self-conjugate partitions of n.

The programs for A331262, there is no canonical definition to state claims against.
-/

/-! ## A331262.P5398839041165258464

`2*A067772(n+1)`
-/

namespace A331262.P5398839041165258464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A067772 (n + 1)

end

end A331262.P5398839041165258464

/-! ## A331262.P16443218064274156756

`A047993(n+1)-A000700(n+1)`
-/

namespace A331262.P16443218064274156756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047993 (n + 1) - A000700 (n + 1)

end

end A331262.P16443218064274156756

/-! ## A331262.P6805869590833158545

`A047993(n+1)-abs(A081362(n+1))`
-/

namespace A331262.P6805869590833158545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047993 (n + 1) - |A081362 (n + 1)|

end

end A331262.P6805869590833158545

/-! ## A331262.P12383367045964756003

`A067772(A000027(n+1))/(1-1/2)`
-/

namespace A331262.P12383367045964756003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067772 (A000027 (n + 1)).toNat : ℚ) / (1 - (1 : ℚ) / 2)

end

end A331262.P12383367045964756003

/-! ## A331262.P8360278709687893268

`A067772(n+1)+A067772(abs(xor(n, -1)))`
-/

namespace A331262.P8360278709687893268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067772 (n + 1) + A067772 |Int.xor (n : ℤ) (-1)|.toNat

end

end A331262.P8360278709687893268

/-! ## A331262.P11792228201185235639

`A067772(A000027(n+1))+A067772(n+1)`
-/

namespace A331262.P11792228201185235639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067772 (A000027 (n + 1)).toNat + A067772 (n + 1)

end

end A331262.P11792228201185235639

/-! ## A331262.P13102218382969465151

`2*(A000701(n+1)-A064173(n+1))`
-/

namespace A331262.P13102218382969465151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000701 (n + 1) - A064173 (n + 1))

end

end A331262.P13102218382969465151

/-! ## A331262.P3046532818969980529

`2*(A064174(n+1)-A046682(n+1))`
-/

namespace A331262.P3046532818969980529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A064174 (n + 1) - A046682 (n + 1))

end

end A331262.P3046532818969980529

/-! ## A331262.P1075370955704917888

`A067772(n+1)+A067772(n+1)%A000041(n)`
-/

namespace A331262.P1075370955704917888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067772 (n + 1) + Int.tmod (A067772 (n + 1)) (A000041 n)

end

end A331262.P1075370955704917888

/-! ## A331262.P10589302487130356090

`A047993(n+1)+A330644(n+1)-A000041(n+1)`
-/

namespace A331262.P10589302487130356090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047993 (n + 1) + (A330644 (n + 1) - A000041 (n + 1))

end

end A331262.P10589302487130356090

/-! ## A331262.P510484197628744766

`A105806(∑[n]+1)-A000700(n+1)`
-/

namespace A331262.P510484197628744766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105806 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A000700 (n + 1)

end

end A331262.P510484197628744766

/-!
# A331263: Largest possible side length, b, of a primitive Heronian triangle with perimeter A096468(n), such that a <= b <= c.

The programs for A331263, there is no canonical definition to state claims against.
-/

/-! ## A331263.P5252592470666727033

`A330923(record[A274821(n)+A110475(n+1)])`
-/

namespace A331263.P5252592470666727033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274821 n + A110475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330923 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A331263.P5252592470666727033

/-!
# A331266: a(n) is the least divisor u of A331219(n) such that the binary representations of u and of A331219(n)/u have the same number of 0's and the same number of 1's.

The programs for A331266, there is no canonical definition to state claims against.
-/

/-! ## A331266.P9738384373288615349

`A331219(n+1)/A331267(n+1)`
-/

namespace A331266.P9738384373288615349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331219 (n + 1) : ℚ) / (A331267 (n + 1) : ℚ)

end

end A331266.P9738384373288615349

/-! ## A331266.P2520678772631814995

`A033676(A331219(n+1))%p?[A102083(n)]`
-/

namespace A331266.P2520678772631814995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102083 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033676 (A331219 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A331266.P2520678772631814995

/-! ## A331266.P6186599518790980618

`A331219(n+1)/A033677(A331219(n+1))%A002808(A008118(n))`
-/

namespace A331266.P6186599518790980618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331219 (n + 1) : ℚ) / (Int.tmod (A033677 (A331219 (n + 1)).toNat) (A002808 (A008118 n).toNat) : ℚ)

end

end A331266.P6186599518790980618

/-! ## A331266.P10948803091506384115

`A033676(A331219(n+1))*A303709(A195942(n+1))`
-/

namespace A331266.P10948803091506384115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A331219 (n + 1)).toNat * A303709 (A195942 (n + 1)).toNat

end

end A331266.P10948803091506384115

/-! ## A331266.P1176201770951417421

`A033676(A331219(n+1)%A234911(n+1))`
-/

namespace A331266.P1176201770951417421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (Int.tmod (A331219 (n + 1)) (A234911 (n + 1))).toNat

end

end A331266.P1176201770951417421

/-! ## A331266.P10283239163656856626

`A001222(A340817(n+2))*A033676(A331219(n+1))`
-/

namespace A331266.P10283239163656856626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A340817 (n + 2)).toNat * A033676 (A331219 (n + 1)).toNat

end

end A331266.P10283239163656856626

/-! ## A331266.P11813820941659254128

`A001221(A054270(n+1))*A033676(A331219(n+1))`
-/

namespace A331266.P11813820941659254128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A054270 (n + 1)).toNat * A033676 (A331219 (n + 1)).toNat

end

end A331266.P11813820941659254128

/-!
# A331267: a(n) is the greatest divisor v of A331219(n) such that the binary representations of v and of A331219(n)/v have the same number of 0's and the same number of 1's.

The programs for A331267, there is no canonical definition to state claims against.
-/

/-! ## A331267.P6374546366564215956

`A331219(n+1)/A331266(n+1)`
-/

namespace A331267.P6374546366564215956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331219 (n + 1) : ℚ) / (A331266 (n + 1) : ℚ)

end

end A331267.P6374546366564215956

/-! ## A331267.P5129467028255248374

`A033677(A331219(n+1))%A002808(A008118(n))`
-/

namespace A331267.P5129467028255248374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033677 (A331219 (n + 1)).toNat) (A002808 (A008118 n).toNat)

end

end A331267.P5129467028255248374

/-! ## A331267.P14776690256688958658

`A063524(A292738(10*n+7))+A033677(A331219(n+1))`
-/

namespace A331267.P14776690256688958658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A292738 (10 * n + 7)).toNat + A033677 (A331219 (n + 1)).toNat

end

end A331267.P14776690256688958658

/-! ## A331267.P14436316718071201659

`A033677(A331219(n+1))^A340853(A192419(n+1))`
-/

namespace A331267.P14436316718071201659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033677 (A331219 (n + 1)).toNat : ℚ) ^ (A340853 (A192419 (n + 1)).toNat : ℤ)

end

end A331267.P14436316718071201659

/-! ## A331267.P4560692859073978418

`A033677(A331219(n+1))+A008683(A001248(n+1))`
-/

namespace A331267.P4560692859073978418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A331219 (n + 1)).toNat + A008683 (A001248 (n + 1)).toNat

end

end A331267.P4560692859073978418

/-!
# A331268: a(n) is the least divisor u of A331220(n) such that the ternary representations of u and of A331220(n)/u have the same number of digits d for d = 0..2.

The programs for A331268, there is no canonical definition to state claims against.
-/

/-! ## A331268.P12280899188239339255

`A331220(n+1)/A331269(n+1)`
-/

namespace A331268.P12280899188239339255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331220 (n + 1) : ℚ) / (A331269 (n + 1) : ℚ)

end

end A331268.P12280899188239339255

/-! ## A331268.P13092516893589562060

`A033676(A331220(n+1)%A342401(n+2))`
-/

namespace A331268.P13092516893589562060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (Int.tmod (A331220 (n + 1)) (A342401 (n + 2))).toNat

end

end A331268.P13092516893589562060

/-! ## A331268.P16364528598178600093

`A033676(A331220(n+1))+A019590((n+3)²)`
-/

namespace A331268.P16364528598178600093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A331220 (n + 1)).toNat + A019590 ((n + 3) ^ 2)

end

end A331268.P16364528598178600093

/-! ## A331268.P13171040507371110569

`A033676(A331220(n+1))+A010054((n+3)²-2)`
-/

namespace A331268.P13171040507371110569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A331220 (n + 1)).toNat + A010054 ((n + 3) ^ 2 - 2)

end

end A331268.P13171040507371110569

/-! ## A331268.P16408811028043565432

`A033676(A331220(n+1))%(A167614((n+3)²)+1)`
-/

namespace A331268.P16408811028043565432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033676 (A331220 (n + 1)).toNat) (A167614 ((n + 3) ^ 2) + 1)

end

end A331268.P16408811028043565432

/-! ## A331268.P8222317672448608923

`A033676(A331220(n+1))^A052169(A239374(n+2))`
-/

namespace A331268.P8222317672448608923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033676 (A331220 (n + 1)).toNat : ℚ) ^ (A052169 (A239374 (n + 2)).toNat : ℤ)

end

end A331268.P8222317672448608923

/-! ## A331268.P5754828850985511339

`A033676(A331220(n+1))+A000007(A062952(n+1))`
-/

namespace A331268.P5754828850985511339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A331220 (n + 1)).toNat + A000007 (A062952 (n + 1)).toNat

end

end A331268.P5754828850985511339

/-! ## A331268.P5546761594183463939

`A033676(A331220(n+1)+A151878(n))`
-/

namespace A331268.P5546761594183463939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A331220 (n + 1) + A151878 n).toNat

end

end A331268.P5546761594183463939

/-!
# A331269: a(n) is the greatest divisor v of A331220(n) such that the ternary representations of v and of A331220(n)/v have the same number of digits d for d = 0..2.

The programs for A331269, there is no canonical definition to state claims against.
-/

/-! ## A331269.P3656850326228718184

`A331220(n+1)/A331268(n+1)`
-/

namespace A331269.P3656850326228718184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331220 (n + 1) : ℚ) / (A331268 (n + 1) : ℚ)

end

end A331269.P3656850326228718184

/-! ## A331269.P14246681900359802273

`A033677(A331220(n+1)%A342401(n+2))`
-/

namespace A331269.P14246681900359802273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (Int.tmod (A331220 (n + 1)) (A342401 (n + 2))).toNat

end

end A331269.P14246681900359802273

/-! ## A331269.P8805734345617325504

`A033677(A331220(n+1))%A119368(A008574(n))`
-/

namespace A331269.P8805734345617325504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033677 (A331220 (n + 1)).toNat) (A119368 (A008574 n).toNat)

end

end A331269.P8805734345617325504

/-! ## A331269.P2435143671195686552

`A033677(A331220(n+1))+A000038(A001704(n+1))`
-/

namespace A331269.P2435143671195686552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A331220 (n + 1)).toNat + A000038 (A001704 (n + 1)).toNat

end

end A331269.P2435143671195686552

/-! ## A331269.P1688917083481410786

`A033677(A331220(n+1))*A057427(A071395(n+1))`
-/

namespace A331269.P1688917083481410786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A331220 (n + 1)).toNat * A057427 (A071395 (n + 1)).toNat

end

end A331269.P1688917083481410786

/-! ## A331269.P530902286033931749

`A033677(A331220(n+1))^A119335(A261423(n+1))`
-/

namespace A331269.P530902286033931749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033677 (A331220 (n + 1)).toNat : ℚ) ^ (A119335 (A261423 (n + 1)).toNat : ℤ)

end

end A331269.P530902286033931749

/-! ## A331269.P18431623854945158059

`A033677(A331220(n+1))+A000038(A026780(n))`
-/

namespace A331269.P18431623854945158059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A331220 (n + 1)).toNat + A000038 (A026780 n).toNat

end

end A331269.P18431623854945158059

/-! ## A331269.P7669584519332727510

`A033677(A331220(n+1))+A000038(A185726(n+1))`
-/

namespace A331269.P7669584519332727510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A331220 (n + 1)).toNat + A000038 (A185726 (n + 1)).toNat

end

end A331269.P7669584519332727510

/-! ## A331269.P918514398637518594

`A033677(A331220(n+1))+A000038(A185722(n+1))`
-/

namespace A331269.P918514398637518594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A331220 (n + 1)).toNat + A000038 (A185722 (n + 1)).toNat

end

end A331269.P918514398637518594

/-! ## A331269.P7968955392212976411

`A331220(n+1)/A033676(A331220(n+1)+A151878(n))`
-/

namespace A331269.P7968955392212976411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331220 (n + 1) : ℚ) / (A033676 (A331220 (n + 1) + A151878 n).toNat : ℚ)

end

end A331269.P7968955392212976411

/-!
# A331270: a(n) is the least divisor u of A331221(n) such that the decimal representations of u and of A331221(n)/u have the same number of digits d for d = 0..9.

The programs for A331270, there is no canonical definition to state claims against.
-/

/-! ## A331270.P362569778990614423

`A331221(n+1)/A331271(n+1)`
-/

namespace A331270.P362569778990614423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331221 (n + 1) : ℚ) / (A331271 (n + 1) : ℚ)

end

end A331270.P362569778990614423

/-!
# A331271: a(n) is the greatest divisor v of A331221(n) such that the decimal representations of v and of A331221(n)/v have the same number of digits d for d = 0..9.

The programs for A331271, there is no canonical definition to state claims against.
-/

/-! ## A331271.P17800613285603230734

`A331221(n+1)/A331270(n+1)`
-/

namespace A331271.P17800613285603230734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331221 (n + 1) : ℚ) / (A331270 (n + 1) : ℚ)

end

end A331271.P17800613285603230734

/-!
# A331272: Irregular triangle in which row n lists numbers m such that A330073(m,n) = 1.

The programs for A331272, there is no canonical definition to state claims against.
-/

/-! ## A331272.P15515339631041141400

`A164309(A246026(n+1))`
-/

namespace A331272.P15515339631041141400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164309 (A246026 (n + 1)).toNat

end

end A331272.P15515339631041141400

/-! ## A331272.P7926976001087159234

`A164309(comp[A045985(n+1)+1])`
-/

namespace A331272.P7926976001087159234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045985 (n + 1) + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164309 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A331272.P7926976001087159234

/-! ## A331272.P13944411855739197132

`A164309(or(A001318(n), A063953(n)))`
-/

namespace A331272.P13944411855739197132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164309 (Int.lor (A001318 n) (A063953 n)).toNat

end

end A331272.P13944411855739197132

/-!
# A331273: Sum of the iterated exponential totient function (A072911).

The programs for A331273, the canonical program `A331273.P10558890110751531057` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331273 has offset 1).

The definition of A331273 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A331273.P10558890110751531057

`A072911(n+1)+a(A072911(n+1)-1)` with `a(0)=0`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A331273

/-- `A072911(n+1)+a(A072911(n+1)-1)` -/
def P10558890110751531057.Spec : Prop :=
  ∀ n, P10558890110751531057.a n = A331273 (n + 1)

theorem P10558890110751531057.correct : P10558890110751531057.Spec := by
  intro n
  simp only [A331273, Nat.add_sub_cancel]

end A331273

/-! ## A331273.P5720771181986144329

`A032741(A008578(n+1)*A072911(n+1))`
-/

namespace A331273.P5720771181986144329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A008578 (n + 1) * A072911 (n + 1)).toNat

end

end A331273.P5720771181986144329

namespace A331273

/-- `A032741(A008578(n+1)*A072911(n+1))` -/
def P5720771181986144329.Spec : Prop :=
  ∀ n, P5720771181986144329.a n = A331273 (n + 1)

end A331273

/-! ## A331273.P14439247274244007756

`A032741(lcm(A008578(n+1), A072911(n+1)))`
-/

namespace A331273.P14439247274244007756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (Int.lcm (A008578 (n + 1)) (A072911 (n + 1)))

end

end A331273.P14439247274244007756

namespace A331273

/-- `A032741(lcm(A008578(n+1), A072911(n+1)))` -/
def P14439247274244007756.Spec : Prop :=
  ∀ n, P14439247274244007756.a n = A331273 (n + 1)

end A331273

/-! ## A331273.P14389389004593747050

`or(1, A072911(n+1))%A015963(n+1)`
-/

namespace A331273.P14389389004593747050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lor 1 (A072911 (n + 1))) (A015963 (n + 1))

end

end A331273.P14389389004593747050

namespace A331273

/-- `or(1, A072911(n+1))%A015963(n+1)` -/
def P14389389004593747050.Spec : Prop :=
  ∀ n, P14389389004593747050.a n = A331273 (n + 1)

end A331273

/-! ## A331273.P7687004677206481832

`A032741(A008578(n+1)*A190867(n+1))`
-/

namespace A331273.P7687004677206481832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A008578 (n + 1) * A190867 (n + 1)).toNat

end

end A331273.P7687004677206481832

namespace A331273

/-- `A032741(A008578(n+1)*A190867(n+1))` -/
def P7687004677206481832.Spec : Prop :=
  ∀ n, P7687004677206481832.a n = A331273 (n + 1)

end A331273

/-! ## A331273.P9739359321434160933

`A032741(A008578(n+1)*A325988(n+1))`
-/

namespace A331273.P9739359321434160933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A008578 (n + 1) * A325988 (n + 1)).toNat

end

end A331273.P9739359321434160933

namespace A331273

/-- `A032741(A008578(n+1)*A325988(n+1))` -/
def P9739359321434160933.Spec : Prop :=
  ∀ n, P9739359321434160933.a n = A331273 (n + 1)

end A331273

/-! ## A331273.P6008606252163508217

`gcd(A048099(n+1), A386468(n+1))`
-/

namespace A331273.P6008606252163508217
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048099 (n + 1)) (A386468 (n + 1))

end

end A331273.P6008606252163508217

namespace A331273

/-- `gcd(A048099(n+1), A386468(n+1))` -/
def P6008606252163508217.Spec : Prop :=
  ∀ n, (P6008606252163508217.a n : ℤ) = A331273 (n + 1)

end A331273

/-! ## A331273.P144986617579623686

`gcd(A161332(n), A386468(n+1))`
-/

namespace A331273.P144986617579623686
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A161332 n) (A386468 (n + 1))

end

end A331273.P144986617579623686

namespace A331273

/-- `gcd(A161332(n), A386468(n+1))` -/
def P144986617579623686.Spec : Prop :=
  ∀ n, (P144986617579623686.a n : ℤ) = A331273 (n + 1)

end A331273

/-! ## A331273.P12702030283967399251

`and(A002223(n+1), A372601(n+1))`
-/

namespace A331273.P12702030283967399251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002223 (n + 1)) (A372601 (n + 1))

end

end A331273.P12702030283967399251

namespace A331273

/-- `and(A002223(n+1), A372601(n+1))` -/
def P12702030283967399251.Spec : Prop :=
  ∀ n, P12702030283967399251.a n = A331273 (n + 1)

end A331273

/-! ## A331273.P571923329382687707

`and(A092600(n+1), A363332(n+1))`
-/

namespace A331273.P571923329382687707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A092600 (n + 1)) (A363332 (n + 1))

end

end A331273.P571923329382687707

namespace A331273

/-- `and(A092600(n+1), A363332(n+1))` -/
def P571923329382687707.Spec : Prop :=
  ∀ n, P571923329382687707.a n = A331273 (n + 1)

end A331273

/-!
# A331274: a(n) is the greatest binary anagram of n not yet in the sequence.

The programs for A331274, there is no canonical definition to state claims against.
-/

/-! ## A331274.P2906143812338183744

`A298847(A054429(n+1))`
-/

namespace A331274.P2906143812338183744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298847 (A054429 (n + 1)).toNat

end

end A331274.P2906143812338183744

/-! ## A331274.P13002647334311571626

`A298847(xor(n+1, A092323(n+1)))`
-/

namespace A331274.P13002647334311571626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298847 (Int.xor (n + 1 : ℤ) (A092323 (n + 1))).toNat

end

end A331274.P13002647334311571626

/-! ## A331274.P3194520670568254222

`xor(A003817(A110654(n)), A298847(n+1))`
-/

namespace A331274.P3194520670568254222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003817 (A110654 n).toNat) (A298847 (n + 1))

end

end A331274.P3194520670568254222

/-! ## A331274.P4629832301669406116

`A298847(xor(A057427(n), A092569(n+1)))`
-/

namespace A331274.P4629832301669406116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298847 (Int.xor (A057427 n) (A092569 (n + 1))).toNat

end

end A331274.P4629832301669406116

/-! ## A331274.P17399095517319824759

`A298847(A004754(n+1)-A006257(n+1))`
-/

namespace A331274.P17399095517319824759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298847 (A004754 (n + 1) - A006257 (n + 1)).toNat

end

end A331274.P17399095517319824759

/-! ## A331274.P10135934361326396056

`A092569(2*A298847(n+1))/2`
-/

namespace A331274.P10135934361326396056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092569 (2 * A298847 (n + 1)).toNat : ℚ) / 2

end

end A331274.P10135934361326396056

/-! ## A331274.P9885040675069482806

`A298847(A004755(n+1)-n)-A298847(n+1)`
-/

namespace A331274.P9885040675069482806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298847 (A004755 (n + 1) - (n : ℤ)).toNat - A298847 (n + 1)

end

end A331274.P9885040675069482806

/-!
# A331275: a(n) is the greatest ternary anagram of n not yet in the sequence.

The programs for A331275, there is no canonical definition to state claims against.
-/

/-! ## A331275.P17063010137378451918

`A343601(n+1)+A018843(A110911(n+1))`
-/

namespace A331275.P17063010137378451918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343601 (n + 1) + A018843 (A110911 (n + 1)).toNat

end

end A331275.P17063010137378451918

/-! ## A331275.P5635969998569342570

`A343601(A187829(n+1))`
-/

namespace A331275.P5635969998569342570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343601 (A187829 (n + 1)).toNat

end

end A331275.P5635969998569342570

/-! ## A331275.P3785346164276527869

`A343601(C(A005496(n), n))`
-/

namespace A331275.P3785346164276527869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343601 (Nat.choose (A005496 n).toNat n)

end

end A331275.P3785346164276527869

/-! ## A331275.P9049926686444914763

`A343601(∑[A317880(4^val(n+1, 4))])`
-/

namespace A331275.P9049926686444914763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317880 (4 ^ SequenceMachineLib.valuation (n + 1) 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343601 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A331275.P9049926686444914763

/-! ## A331275.P6645460734748782656

`A343601(A300955(A300955(n+1)))`
-/

namespace A331275.P6645460734748782656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343601 (A300955 (A300955 (n + 1)).toNat).toNat

end

end A331275.P6645460734748782656

/-!
# A331276: The numbers formed by removing the required digits to form the number from a set of digits which is initially empty and that has digits added via the addition of numbers which cannot be created from the digits currently in the set. Start by trying to create the number 0.

The programs for A331276, there is no canonical definition to state claims against.
-/

/-! ## A331276.P446894480084571801

`A000196(A078371(n+4))-A144595(3*n+4)`
-/

namespace A331276.P446894480084571801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A078371 (n + 4)).toNat - A144595 (3 * n + 4)

end

end A331276.P446894480084571801

/-! ## A331276.P17718650380769476469

`lt[A293666(A308017(n+2)), A308019(n+1)]`
-/

namespace A331276.P17718650380769476469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293666 (A308017 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308019 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A331276.P17718650380769476469

/-! ## A331276.P11202197811276213335

`lt[A293666(A308017(n+2)), A308020(n+1)]`
-/

namespace A331276.P11202197811276213335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293666 (A308017 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308020 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A331276.P11202197811276213335

/-! ## A331276.P14651362221829736268

`A376342(n+5)+A010052(A052980(n))`
-/

namespace A331276.P14651362221829736268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376342 (n + 5) + A010052 (A052980 n).toNat

end

end A331276.P14651362221829736268

/-! ## A331276.P10144017072860512794

`A376342(n+5)+A121373(A029806(n+1))`
-/

namespace A331276.P10144017072860512794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376342 (n + 5) + A121373 (A029806 (n + 1)).toNat

end

end A331276.P10144017072860512794

/-!
# A331277: Array read by antidiagonals: A(n,k) is the number of binary matrices with k distinct columns and any number of nonzero rows with n ones in every column and columns in decreasing lexicographic order.

The programs for A331277, there is no canonical definition to state claims against.
-/

/-! ## A331277.P15373246960320449763

`ceil(A331278(n)/A118800(A112367(n)))`
-/

namespace A331277.P15373246960320449763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A331278 n : ℚ) / (A118800 (A112367 n).toNat : ℚ)⌉

end

end A331277.P15373246960320449763

/-! ## A331277.P5200442811380369505

`A330942(n)/A331315(n)*A331278(n)`
-/

namespace A331277.P5200442811380369505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330942 n : ℚ) / (A331315 n : ℚ) * (A331278 n : ℚ)

end

end A331277.P5200442811380369505

/-! ## A331277.P7521563237521033546

`A262809(n)/A316674(n)*A331278(n)`
-/

namespace A331277.P7521563237521033546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262809 n : ℚ) / (A316674 n : ℚ) * (A331278 n : ℚ)

end

end A331277.P7521563237521033546

/-! ## A331277.P13163646627992904141

`A331278(n)/gcd(A011782(n), A316674(n))`
-/

namespace A331277.P13163646627992904141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331278 n : ℚ) / (Int.gcd (A011782 n) (A316674 n) : ℚ)

end

end A331277.P13163646627992904141

/-! ## A331277.P4053708027108387003

`ceil(A331278(n)/A026741(A059268(n)))`
-/

namespace A331277.P4053708027108387003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A331278 n : ℚ) / (A026741 (A059268 n).toNat : ℚ)⌉

end

end A331277.P4053708027108387003

/-!
# A331278: Array read by antidiagonals: A(n,k) is the number of nonnegative integer matrices with k distinct columns and any number of nonzero rows with column sums n and columns in decreasing lexicographic order.

The programs for A331278, there is no canonical definition to state claims against.
-/

/-! ## A331278.P15976703790046062010

`A331277(n)/A330942(n)*A331315(n)`
-/

namespace A331278.P15976703790046062010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331277 n : ℚ) / (A330942 n : ℚ) * (A331315 n : ℚ)

end

end A331278.P15976703790046062010

/-! ## A331278.P332594665300753232

`A316674(n)/A262809(n)*A331277(n)`
-/

namespace A331278.P332594665300753232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316674 n : ℚ) / (A262809 n : ℚ) * (A331277 n : ℚ)

end

end A331278.P332594665300753232

/-! ## A331278.P5722703962946759305

`gcd(A011782(n), A316674(n))*A331277(n)`
-/

namespace A331278.P5722703962946759305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A011782 n) (A316674 n) : ℤ) * A331277 n

end

end A331278.P5722703962946759305

/-! ## A331278.P11897760360477090179

`A225355(A331161(n))`
-/

namespace A331278.P11897760360477090179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225355 (A331161 n).toNat

end

end A331278.P11897760360477090179

/-! ## A331278.P5988782698158737549

`A326031(C(A197529(n+1), A327481(n+2)))`
-/

namespace A331278.P5988782698158737549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326031 (Nat.choose (A197529 (n + 1)).toNat (A327481 (n + 2)).toNat)

end

end A331278.P5988782698158737549

/-!
# A331279: a(n) = A122111(A006047(n)).

The programs for A331279, the canonical program `A331279.P13178510188069104585` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331279 has offset 0).

The definition of A331279 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122111, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A331279.P13178510188069104585

`A122111(A006047(n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A331279

/-- `A122111(A006047(n))` -/
def P13178510188069104585.Spec : Prop :=
  ∀ n, P13178510188069104585.a n = A331279 n

theorem P13178510188069104585.correct : P13178510188069104585.Spec := by
  intro n
  simp only [A331279]

end A331279

/-! ## A331279.P6208369930516154777

`∑{d}[A006047(n), A329034(#)]`
-/

namespace A331279.P6208369930516154777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A329034 d

end

end A331279.P6208369930516154777

namespace A331279

/-- `∑{d}[A006047(n), A329034(#)]` -/
def P6208369930516154777.Spec : Prop :=
  ∀ n, P6208369930516154777.a n = A331279 n

end A331279

/-! ## A331279.P2664043074135748096

`A122111(A227428(n)+A206424(n))`
-/

namespace A331279.P2664043074135748096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A227428 n + A206424 n).toNat

end

end A331279.P2664043074135748096

namespace A331279

/-- `A122111(A227428(n)+A206424(n))` -/
def P2664043074135748096.Spec : Prop :=
  ∀ n, P2664043074135748096.a n = A331279 n

theorem P2664043074135748096.correct : P2664043074135748096.Spec := by
  intro n
  simp only [A331279, Nat.add_sub_cancel, A331279.P2664043074135748096.a, A331279.P13178510188069104585.a, A006047, A006047.P5402976406974779832.f1, A006047.P5402976406974779832.a, A122111, A122111.P18124015185857335041.a, A206424, A206424.P9717290498445311267.f1, A206424.P9717290498445311267.a, A227428, A227428.P16365958953958314226.a, A064989, A064989.P13349672914146769936.a, A105560, A105560.P10934841406439867276.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A008578, A008578.P3639467937083264764.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A006530, A006530.P13372528560459906635.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, A158611, A158611.P9275629407611603775.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A331279

/-! ## A331279.P17779277979448067533

`A122111(A051638(n)-A227428(n))`
-/

namespace A331279.P17779277979448067533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A051638 n - A227428 n).toNat

end

end A331279.P17779277979448067533

namespace A331279

/-- `A122111(A051638(n)-A227428(n))` -/
def P17779277979448067533.Spec : Prop :=
  ∀ n, P17779277979448067533.a n = A331279 n

end A331279

/-! ## A331279.P1720359287105242359

`A181819(A006047(n)*A117592(n))`
-/

namespace A331279.P1720359287105242359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (A006047 n * A117592 n).toNat

end

end A331279.P1720359287105242359

namespace A331279

/-- `A181819(A006047(n)*A117592(n))` -/
def P1720359287105242359.Spec : Prop :=
  ∀ n, P1720359287105242359.a n = A331279 n

end A331279

/-! ## A331279.P13173824610542974710

`A122111(∏{e}[A101278(n), #+1])`
-/

namespace A331279.P13173824610542974710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101278 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1))

end

end A331279.P13173824610542974710

namespace A331279

/-- `A122111(∏{e}[A101278(n), #+1])` -/
def P13173824610542974710.Spec : Prop :=
  ∀ n, P13173824610542974710.a n = A331279 n

end A331279

/-! ## A331279.P3221373203977470416

`A122111(A000005(A101278(n)))`
-/

namespace A331279.P3221373203977470416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A000005 (A101278 n).toNat).toNat

end

end A331279.P3221373203977470416

namespace A331279

/-- `A122111(A000005(A101278(n)))` -/
def P3221373203977470416.Spec : Prop :=
  ∀ n, P3221373203977470416.a n = A331279 n

end A331279

/-! ## A331279.P4161488976644315503

`A243070(A005408(A006047(n)²))`
-/

namespace A331279.P4161488976644315503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243070 (A005408 (A006047 n ^ 2).toNat).toNat

end

end A331279.P4161488976644315503

namespace A331279

/-- `A243070(A005408(A006047(n)²))` -/
def P4161488976644315503.Spec : Prop :=
  ∀ n, P4161488976644315503.a n = A331279 n

end A331279

/-! ## A331279.P15666770507492112837

`A238745(A101278(n))`
-/

namespace A331279.P15666770507492112837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238745 (A101278 n).toNat

end

end A331279.P15666770507492112837

namespace A331279

/-- `A238745(A101278(n))` -/
def P15666770507492112837.Spec : Prop :=
  ∀ n, P15666770507492112837.a n = A331279 n

end A331279

/-!
# A331281: If A061395(n) <= A001222(n), then a(n) = 1, otherwise a(n) = 0.

The programs for A331281, the canonical program `A331281.P996979535116224856` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331281 has offset 1).

The definition of A331281 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A331281.P7392667410637857496

`char[n*A331282(2*(n+1))]`
-/

namespace A331281.P7392667410637857496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A331282 (2 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A331281.P7392667410637857496

namespace A331281

/-- `char[n*A331282(2*(n+1))]` -/
def P7392667410637857496.Spec : Prop :=
  ∀ n, (P7392667410637857496.a n : ℤ) = A331281 (n + 1)

end A331281

/-! ## A331281.P3611200342892926379

`A331282((n+1)*(4-2%(n+1)))`
-/

namespace A331281.P3611200342892926379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331282 ((n + 1 : ℤ) * (4 - ((2 % (n + 1) : ℕ) : ℤ))).toNat

end

end A331281.P3611200342892926379

namespace A331281

/-- `A331282((n+1)*(4-2%(n+1)))` -/
def P3611200342892926379.Spec : Prop :=
  ∀ n, P3611200342892926379.a n = A331281 (n + 1)

end A331281

/-! ## A331281.P4359278089748986538

`A331282(2*(A028310(n)+1))`
-/

namespace A331281.P4359278089748986538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331282 (2 * (A028310 n + 1)).toNat

end

end A331281.P4359278089748986538

namespace A331281

/-- `A331282(2*(A028310(n)+1))` -/
def P4359278089748986538.Spec : Prop :=
  ∀ n, P4359278089748986538.a n = A331281 (n + 1)

end A331281

/-! ## A331281.P14644014176418910349

`A331282(2*(n+1))+A000007(n)`
-/

namespace A331281.P14644014176418910349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331282 (2 * (n + 1)) + A000007 n

end

end A331281.P14644014176418910349

namespace A331281

/-- `A331282(2*(n+1))+A000007(n)` -/
def P14644014176418910349.Spec : Prop :=
  ∀ n, P14644014176418910349.a n = A331281 (n + 1)

end A331281

/-! ## A331281.P3696000393395166620

`C(A001222(n+1), A263297(n+1))`
-/

namespace A331281.P3696000393395166620
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001222 (n + 1)).toNat (A263297 (n + 1)).toNat

end

end A331281.P3696000393395166620

namespace A331281

/-- `C(A001222(n+1), A263297(n+1))` -/
def P3696000393395166620.Spec : Prop :=
  ∀ n, (P3696000393395166620.a n : ℤ) = A331281 (n + 1)

end A331281

/-! ## A331281.P18197434687137033026

`C(A325225(n+1), A061395(n+1))`
-/

namespace A331281.P18197434687137033026
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A325225 (n + 1)).toNat (A061395 (n + 1)).toNat

end

end A331281.P18197434687137033026

namespace A331281

/-- `C(A325225(n+1), A061395(n+1))` -/
def P18197434687137033026.Spec : Prop :=
  ∀ n, (P18197434687137033026.a n : ℤ) = A331281 (n + 1)

end A331281

/-! ## A331281.P16320647957362224708

`A263297(2*(n+1))-A263297(n+1)`
-/

namespace A331281.P16320647957362224708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263297 (2 * (n + 1)) - A263297 (n + 1)

end

end A331281.P16320647957362224708

namespace A331281

/-- `A263297(2*(n+1))-A263297(n+1)` -/
def P16320647957362224708.Spec : Prop :=
  ∀ n, P16320647957362224708.a n = A331281 (n + 1)

end A331281

/-! ## A331281.P7954507005797413655

`A331282(2*(n+1))+A010051(2*(n+1))`
-/

namespace A331281.P7954507005797413655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331282 (2 * (n + 1)) + A010051 (2 * (n + 1))

end

end A331281.P7954507005797413655

namespace A331281

/-- `A331282(2*(n+1))+A010051(2*(n+1))` -/
def P7954507005797413655.Spec : Prop :=
  ∀ n, P7954507005797413655.a n = A331281 (n + 1)

end A331281

/-! ## A331281.P17738514860227302458

`A331282(2*(n+1))+2-A040001(2*n)`
-/

namespace A331281.P17738514860227302458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331282 (2 * (n + 1)) + (2 - A040001 (2 * n))

end

end A331281.P17738514860227302458

namespace A331281

/-- `A331282(2*(n+1))+2-A040001(2*n)` -/
def P17738514860227302458.Spec : Prop :=
  ∀ n, P17738514860227302458.a n = A331281 (n + 1)

end A331281

/-! ## A331281.P1925304746001453665

`A331282(2*(n+1))+A331282(a(n-1)+1)` with `a(0)=1`
-/

namespace A331281.P1925304746001453665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A331282 (2 * (n + 1)) + A331282 (a (n - 1) + 1).toNat

end

end A331281.P1925304746001453665

namespace A331281

/-- `A331282(2*(n+1))+A331282(a(n-1)+1)` -/
def P1925304746001453665.Spec : Prop :=
  ∀ n, P1925304746001453665.a n = A331281 (n + 1)

end A331281

/-! ## A331281.P11269544906136697711

`A331282(A028310(n)+A028310(n)+2)`
-/

namespace A331281.P11269544906136697711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331282 (A028310 n + (A028310 n + 2)).toNat

end

end A331281.P11269544906136697711

namespace A331281

/-- `A331282(A028310(n)+A028310(n)+2)` -/
def P11269544906136697711.Spec : Prop :=
  ∀ n, P11269544906136697711.a n = A331281 (n + 1)

end A331281

/-! ## A331281.P996979535116224856

`A057427(C(A086436(n+1), A061395(n+1)))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A331281

/-- `A057427(C(A086436(n+1), A061395(n+1)))` -/
def P996979535116224856.Spec : Prop :=
  ∀ n, P996979535116224856.a n = A331281 (n + 1)

theorem P996979535116224856.correct : P996979535116224856.Spec := by
  intro n
  simp only [A331281, Nat.add_sub_cancel]

end A331281

/-! ## A331281.P16369905079305526917

`C(A325225(n+1), A000720(A006530(n+1)))`
-/

namespace A331281.P16369905079305526917
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A325225 (n + 1)).toNat (A000720 (A006530 (n + 1)).toNat).toNat

end

end A331281.P16369905079305526917

namespace A331281

/-- `C(A325225(n+1), A000720(A006530(n+1)))` -/
def P16369905079305526917.Spec : Prop :=
  ∀ n, (P16369905079305526917.a n : ℤ) = A331281 (n + 1)

end A331281

/-! ## A331281.P3689795635961203154

`C(A325225(n+1), A241919(A053585(n+1)))`
-/

namespace A331281.P3689795635961203154
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A325225 (n + 1)).toNat (A241919 (A053585 (n + 1)).toNat).toNat

end

end A331281.P3689795635961203154

namespace A331281

/-- `C(A325225(n+1), A241919(A053585(n+1)))` -/
def P3689795635961203154.Spec : Prop :=
  ∀ n, (P3689795635961203154.a n : ℤ) = A331281 (n + 1)

end A331281

/-! ## A331281.P7318828654060703131

`A057427(C(A086436(n+1), n+1-A243291(n+1)))`
-/

namespace A331281.P7318828654060703131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (Nat.choose (A086436 (n + 1)).toNat ((n + 1 : ℤ) - A243291 (n + 1)).toNat)

end

end A331281.P7318828654060703131

namespace A331281

/-- `A057427(C(A086436(n+1), n+1-A243291(n+1)))` -/
def P7318828654060703131.Spec : Prop :=
  ∀ n, P7318828654060703131.a n = A331281 (n + 1)

theorem P7318828654060703131.correct : P7318828654060703131.Spec := by
  intro n
  simp only [A331281, Nat.add_sub_cancel, A331281.P7318828654060703131.a, A331281.P996979535116224856.a, A057427, A057427.P17645173493419391152.a, A061395, A061395.P8431317036300486107.a, A086436, A086436.P11265761020980018024.f1, A086436.P11265761020980018024.a, A243291, A243291.P16902629913632114201.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A297108, A297108.P15990807296291497671.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A331281

/-! ## A331281.P10442164156188381039

`A000720(2*(n+1))+A331282(2*(n+1))-A000720(2*n+1)`
-/

namespace A331281.P10442164156188381039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * (n + 1)) + (A331282 (2 * (n + 1)) - A000720 (2 * n + 1))

end

end A331281.P10442164156188381039

namespace A331281

/-- `A000720(2*(n+1))+A331282(2*(n+1))-A000720(2*n+1)` -/
def P10442164156188381039.Spec : Prop :=
  ∀ n, P10442164156188381039.a n = A331281 (n + 1)

end A331281

/-! ## A331281.P5092432450761208398

`A062383(A062383(n))+A331282(2*(n+1))-A062383(2*n)`
-/

namespace A331281.P5092432450761208398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 (A062383 n).toNat + (A331282 (2 * (n + 1)) - A062383 (2 * n))

end

end A331281.P5092432450761208398

namespace A331281

/-- `A062383(A062383(n))+A331282(2*(n+1))-A062383(2*n)` -/
def P5092432450761208398.Spec : Prop :=
  ∀ n, P5092432450761208398.a n = A331281 (n + 1)

end A331281

/-! ## A331281.P1540956216355777403

`A331282(2*A233583(n+2))`
-/

namespace A331281.P1540956216355777403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331282 (2 * A233583 (n + 2)).toNat

end

end A331281.P1540956216355777403

namespace A331281

/-- `A331282(2*A233583(n+2))` -/
def P1540956216355777403.Spec : Prop :=
  ∀ n, P1540956216355777403.a n = A331281 (n + 1)

end A331281

/-! ## A331281.P2398979640702008448

`A331168(A068795(n+1))`
-/

namespace A331281.P2398979640702008448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331168 (A068795 (n + 1)).toNat

end

end A331281.P2398979640702008448

namespace A331281

/-- `A331168(A068795(n+1))` -/
def P2398979640702008448.Spec : Prop :=
  ∀ n, P2398979640702008448.a n = A331281 (n + 1)

end A331281

/-! ## A331281.P7501693211485319794

`A331282(2*(n+1))+A331282(A257244(n+2)²)`
-/

namespace A331281.P7501693211485319794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331282 (2 * (n + 1)) + A331282 (A257244 (n + 2) ^ 2).toNat

end

end A331281.P7501693211485319794

namespace A331281

/-- `A331282(2*(n+1))+A331282(A257244(n+2)²)` -/
def P7501693211485319794.Spec : Prop :=
  ∀ n, P7501693211485319794.a n = A331281 (n + 1)

end A331281

/-!
# A331282: If A061395(n) < A001222(n), then a(n) = 1, otherwise a(n) = 0.

The programs for A331282, the canonical program `A331282.P7456881985685693272` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331282 has offset 1).

The definition of A331282 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A331282.P7456881985685693272

`char[lt[A061395(n+1), ∑{e}[n+1, #]]]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A331282

/-- `char[lt[A061395(n+1), ∑{e}[n+1, #]]]` -/
def P7456881985685693272.Spec : Prop :=
  ∀ n, (P7456881985685693272.a n : ℤ) = A331282 (n + 1)

theorem P7456881985685693272.correct : P7456881985685693272.Spec := by
  intro n
  simp only [A331282, Nat.add_sub_cancel]

end A331282

/-! ## A331282.P4707730960326025786

`char[lt[A061395(n+1), A001222(n+1)]]`
-/

namespace A331282.P4707730960326025786
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A331282.P4707730960326025786

namespace A331282

/-- `char[lt[A061395(n+1), A001222(n+1)]]` -/
def P4707730960326025786.Spec : Prop :=
  ∀ n, (P4707730960326025786.a n : ℤ) = A331282 (n + 1)

end A331282

/-! ## A331282.P1602189462306269956

`char[lt[A325225(n+1), A001222(n+1)]]`
-/

namespace A331282.P1602189462306269956
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325225 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A331282.P1602189462306269956

namespace A331282

/-- `char[lt[A325225(n+1), A001222(n+1)]]` -/
def P1602189462306269956.Spec : Prop :=
  ∀ n, (P1602189462306269956.a n : ℤ) = A331282 (n + 1)

end A331282

/-! ## A331282.P3546400014359744997

`A324755(C(A325225(n+1), ∑{e}[n+1, #]))`
-/

namespace A331282.P3546400014359744997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324755 (Nat.choose (A325225 (n + 1)).toNat (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A331282.P3546400014359744997

namespace A331282

/-- `A324755(C(A325225(n+1), ∑{e}[n+1, #]))` -/
def P3546400014359744997.Spec : Prop :=
  ∀ n, P3546400014359744997.a n = A331282 (n + 1)

end A331282

/-! ## A331282.P1645056209566723758

`char[lt[A325225(n+1)+1, A073093(n+1)]]`
-/

namespace A331282.P1645056209566723758
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325225 (n + 1) + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A331282.P1645056209566723758

namespace A331282

/-- `char[lt[A325225(n+1)+1, A073093(n+1)]]` -/
def P1645056209566723758.Spec : Prop :=
  ∀ n, (P1645056209566723758.a n : ℤ) = A331282 (n + 1)

end A331282

/-! ## A331282.P2861518819493436528

`A263297(n+1)-A263297(A117818(n+1))`
-/

namespace A331282.P2861518819493436528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263297 (n + 1) - A263297 (A117818 (n + 1)).toNat

end

end A331282.P2861518819493436528

namespace A331282

/-- `A263297(n+1)-A263297(A117818(n+1))` -/
def P2861518819493436528.Spec : Prop :=
  ∀ n, P2861518819493436528.a n = A331282 (n + 1)

end A331282

/-! ## A331282.P15552426485560626433

`A324755(C(A325225(n+1), A001222(n+1)))`
-/

namespace A331282.P15552426485560626433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324755 (Nat.choose (A325225 (n + 1)).toNat (A001222 (n + 1)).toNat)

end

end A331282.P15552426485560626433

namespace A331282

/-- `A324755(C(A325225(n+1), A001222(n+1)))` -/
def P15552426485560626433.Spec : Prop :=
  ∀ n, P15552426485560626433.a n = A331282 (n + 1)

end A331282

/-! ## A331282.P14305042445687228369

`A324755(C(A325225(n+1)+1, A073093(n+1)))`
-/

namespace A331282.P14305042445687228369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324755 (Nat.choose (A325225 (n + 1) + 1).toNat (A073093 (n + 1)).toNat)

end

end A331282.P14305042445687228369

namespace A331282

/-- `A324755(C(A325225(n+1)+1, A073093(n+1)))` -/
def P14305042445687228369.Spec : Prop :=
  ∀ n, P14305042445687228369.a n = A331282 (n + 1)

end A331282

/-! ## A331282.P11171084346268881671

`A000040(A263297(n+1)-A061395(n+1)+1)%2`
-/

namespace A331282.P11171084346268881671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A263297 (n + 1) - A061395 (n + 1) + 1).toNat) 2

end

end A331282.P11171084346268881671

namespace A331282

/-- `A000040(A263297(n+1)-A061395(n+1)+1)%2` -/
def P11171084346268881671.Spec : Prop :=
  ∀ n, P11171084346268881671.a n = A331282 (n + 1)

end A331282

/-! ## A331282.P6948891119274933876

`A000040(A001222(n+1)-A325225(n+1)+1)%2`
-/

namespace A331282.P6948891119274933876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A001222 (n + 1) - A325225 (n + 1) + 1).toNat) 2

end

end A331282.P6948891119274933876

namespace A331282

/-- `A000040(A001222(n+1)-A325225(n+1)+1)%2` -/
def P6948891119274933876.Spec : Prop :=
  ∀ n, P6948891119274933876.a n = A331282 (n + 1)

end A331282

/-! ## A331282.P18369727389526205304

`A325225(A003961(n+1))-A325225(n+1)`
-/

namespace A331282.P18369727389526205304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325225 (A003961 (n + 1)).toNat - A325225 (n + 1)

end

end A331282.P18369727389526205304

namespace A331282

/-- `A325225(A003961(n+1))-A325225(n+1)` -/
def P18369727389526205304.Spec : Prop :=
  ∀ n, P18369727389526205304.a n = A331282 (n + 1)

end A331282

/-! ## A331282.P11571806163917657200

`and(A000040(n+1), A331281(A003961(n+1)))`
-/

namespace A331282.P11571806163917657200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000040 (n + 1)) (A331281 (A003961 (n + 1)).toNat)

end

end A331282.P11571806163917657200

namespace A331282

/-- `and(A000040(n+1), A331281(A003961(n+1)))` -/
def P11571806163917657200.Spec : Prop :=
  ∀ n, P11571806163917657200.a n = A331282 (n + 1)

end A331282

/-! ## A331282.P6082292877268981696

`and(A331281(A003961(n+1)), A332806(n+1))`
-/

namespace A331282.P6082292877268981696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A331281 (A003961 (n + 1)).toNat) (A332806 (n + 1))

end

end A331282.P6082292877268981696

namespace A331282

/-- `and(A331281(A003961(n+1)), A332806(n+1))` -/
def P6082292877268981696.Spec : Prop :=
  ∀ n, P6082292877268981696.a n = A331282 (n + 1)

end A331282

/-! ## A331282.P13454910556947537347

`A263297(n+1)+1-A263297(A045965(n+1))`
-/

namespace A331282.P13454910556947537347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263297 (n + 1) + (1 - A263297 (A045965 (n + 1)).toNat)

end

end A331282.P13454910556947537347

namespace A331282

/-- `A263297(n+1)+1-A263297(A045965(n+1))` -/
def P13454910556947537347.Spec : Prop :=
  ∀ n, P13454910556947537347.a n = A331282 (n + 1)

end A331282

/-! ## A331282.P11193680311027808776

`A331169(A242419(n+1))*A331169(n+1)`
-/

namespace A331282.P11193680311027808776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331169 (A242419 (n + 1)).toNat * A331169 (n + 1)

end

end A331282.P11193680311027808776

namespace A331282

/-- `A331169(A242419(n+1))*A331169(n+1)` -/
def P11193680311027808776.Spec : Prop :=
  ∀ n, P11193680311027808776.a n = A331282 (n + 1)

end A331282

/-! ## A331282.P14549399590732031950

`A331169(A242420(n+1))*A331169(n+1)`
-/

namespace A331282.P14549399590732031950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331169 (A242420 (n + 1)).toNat * A331169 (n + 1)

end

end A331282.P14549399590732031950

namespace A331282

/-- `A331169(A242420(n+1))*A331169(n+1)` -/
def P14549399590732031950.Spec : Prop :=
  ∀ n, P14549399590732031950.a n = A331282 (n + 1)

end A331282

/-! ## A331282.P7356855975798015822

`A331169(A006530(n+1)^A001222(n+1))`
-/

namespace A331282.P7356855975798015822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331169 (SequenceMachineLib.roundAway ((A006530 (n + 1) : ℚ) ^ (A001222 (n + 1) : ℤ))).toNat

end

end A331282.P7356855975798015822

namespace A331282

/-- `A331169(A006530(n+1)^A001222(n+1))` -/
def P7356855975798015822.Spec : Prop :=
  ∀ n, P7356855975798015822.a n = A331282 (n + 1)

end A331282

/-! ## A331282.P660358097086880050

`A331169(n+1)-A331169(∑[A249807(n)+n])`
-/

namespace A331282.P660358097086880050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249807 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331169 (n + 1) - A331169 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A331282.P660358097086880050

namespace A331282

/-- `A331169(n+1)-A331169(∑[A249807(n)+n])` -/
def P660358097086880050.Spec : Prop :=
  ∀ n, P660358097086880050.a n = A331282 (n + 1)

end A331282

/-!
# A331283: a(n) = gcd(n, A329605(n)), where A329605(n) gives the number of divisors of primorial inflation of n, A108951(n).

The programs for A331283, the canonical program `A331283.P3097281555555714300` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331283 has offset 1).

The definition of A331283 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329605, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A331283.P3097281555555714300

`gcd(n+1, A329605(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A331283

/-- `gcd(n+1, A329605(n+1))` -/
def P3097281555555714300.Spec : Prop :=
  ∀ n, (P3097281555555714300.a n : ℤ) = A331283 (n + 1)

theorem P3097281555555714300.correct : P3097281555555714300.Spec := by
  intro n
  simp only [A331283, Nat.add_sub_cancel]

end A331283

/-! ## A331283.P13923202692307721437

`gcd(xor(n, -1), A329382(A129598(n+1)))`
-/

namespace A331283.P13923202692307721437
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.xor (n : ℤ) (-1)) (A329382 (A129598 (n + 1)).toNat)

end

end A331283.P13923202692307721437

namespace A331283

/-- `gcd(xor(n, -1), A329382(A129598(n+1)))` -/
def P13923202692307721437.Spec : Prop :=
  ∀ n, (P13923202692307721437.a n : ℤ) = A331283 (n + 1)

end A331283

/-! ## A331283.P14719103120646194790

`gcd(A131738(n), A329382(A129598(n+1)))`
-/

namespace A331283.P14719103120646194790
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A131738 n) (A329382 (A129598 (n + 1)).toNat)

end

end A331283.P14719103120646194790

namespace A331283

/-- `gcd(A131738(n), A329382(A129598(n+1)))` -/
def P14719103120646194790.Spec : Prop :=
  ∀ n, (P14719103120646194790.a n : ℤ) = A331283 (n + 1)

end A331283

/-! ## A331283.P7613639406774102589

`gcd(A000027(n+1), A329382(A253560(n+1)))`
-/

namespace A331283.P7613639406774102589
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A329382 (A253560 (n + 1)).toNat)

end

end A331283.P7613639406774102589

namespace A331283

/-- `gcd(A000027(n+1), A329382(A253560(n+1)))` -/
def P7613639406774102589.Spec : Prop :=
  ∀ n, (P7613639406774102589.a n : ℤ) = A331283 (n + 1)

end A331283

/-! ## A331283.P5948408737720549881

`gcd(A256017(n+1), A329382(A256017(n+1)))`
-/

namespace A331283.P5948408737720549881
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A256017 (n + 1)) (A329382 (A256017 (n + 1)).toNat)

end

end A331283.P5948408737720549881

namespace A331283

/-- `gcd(A256017(n+1), A329382(A256017(n+1)))` -/
def P5948408737720549881.Spec : Prop :=
  ∀ n, (P5948408737720549881.a n : ℤ) = A331283 (n + 1)

end A331283

/-! ## A331283.P2904670056211343701

`gcd(A253560(n+1), A329382(A130064(2*(n+1))))`
-/

namespace A331283.P2904670056211343701
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A253560 (n + 1)) (A329382 (A130064 (2 * (n + 1))).toNat)

end

end A331283.P2904670056211343701

namespace A331283

/-- `gcd(A253560(n+1), A329382(A130064(2*(n+1))))` -/
def P2904670056211343701.Spec : Prop :=
  ∀ n, (P2904670056211343701.a n : ℤ) = A331283 (n + 1)

end A331283

/-! ## A331283.P6079772268213375584

`gcd(A053024(n+1), A329382((n+1)*A006530(n+1)))`
-/

namespace A331283.P6079772268213375584
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053024 (n + 1)) (A329382 ((n + 1 : ℤ) * A006530 (n + 1)).toNat)

end

end A331283.P6079772268213375584

namespace A331283

/-- `gcd(A053024(n+1), A329382((n+1)*A006530(n+1)))` -/
def P6079772268213375584.Spec : Prop :=
  ∀ n, (P6079772268213375584.a n : ℤ) = A331283 (n + 1)

end A331283

/-! ## A331283.P3554266466152009070

`gcd(A053024(n+1), A329382(A053024(n+1)))`
-/

namespace A331283.P3554266466152009070
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053024 (n + 1)) (A329382 (A053024 (n + 1)).toNat)

end

end A331283.P3554266466152009070

namespace A331283

/-- `gcd(A053024(n+1), A329382(A053024(n+1)))` -/
def P3554266466152009070.Spec : Prop :=
  ∀ n, (P3554266466152009070.a n : ℤ) = A331283 (n + 1)

end A331283

/-! ## A331283.P7186168652645778716

`gcd(A020338(n+1), A329382(A020338(n+1)))`
-/

namespace A331283.P7186168652645778716
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A020338 (n + 1)) (A329382 (A020338 (n + 1)).toNat)

end

end A331283.P7186168652645778716

namespace A331283

/-- `gcd(A020338(n+1), A329382(A020338(n+1)))` -/
def P7186168652645778716.Spec : Prop :=
  ∀ n, (P7186168652645778716.a n : ℤ) = A331283 (n + 1)

end A331283

/-!
# A331284: Number of values of k, 1 <= k <= n, with A329605(k) = A329605(n), where A329605 is the number of divisors of primorial inflation of n (A108951).

The programs for A331284, there is no canonical definition to state claims against.
-/

/-! ## A331284.P15974755268444720014

`A091090(A001222(n+1)^A038194(n+4))`
-/

namespace A331284.P15974755268444720014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 (SequenceMachineLib.roundAway ((A001222 (n + 1) : ℚ) ^ (A038194 (n + 4) : ℤ))).toNat

end

end A331284.P15974755268444720014

/-! ## A331284.P2029906608282051775

`A105560(A339877(n+1)%A361848(n+3))`
-/

namespace A331284.P2029906608282051775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105560 (Int.tmod (A339877 (n + 1)) (A361848 (n + 3))).toNat

end

end A331284.P2029906608282051775

/-! ## A331284.P10022672482706395229

`A064741(A339933(2*(n+1))+A339877(n+1))`
-/

namespace A331284.P10022672482706395229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064741 (A339933 (2 * (n + 1)) + A339877 (n + 1)).toNat

end

end A331284.P10022672482706395229

/-! ## A331284.P8191218728444176061

`A331738(A339880(n+1))+A001222(A339877(n+1))`
-/

namespace A331284.P8191218728444176061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331738 (A339880 (n + 1)).toNat + A001222 (A339877 (n + 1)).toNat

end

end A331284.P8191218728444176061

/-! ## A331284.P9440830315219359869

`A339929(A339877(n+1))+A339890(A339917(2*(n+1)))`
-/

namespace A331284.P9440830315219359869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339929 (A339877 (n + 1)).toNat + A339890 (A339917 (2 * (n + 1))).toNat

end

end A331284.P9440830315219359869

/-!
# A331285: a(n) is the index of the first occurrence of n in A331284.

The programs for A331285, there is no canonical definition to state claims against.
-/

/-! ## A331285.P13503719646825970800

`Δ[A139789(2^(n+1))²]`
-/

namespace A331285.P13503719646825970800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139789 (2 ^ (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A331285.P13503719646825970800

/-!
# A331286: Odd part of number of divisors of primorial inflation of n: a(n) = A000265(A329605(n)).

The programs for A331286, the canonical program `A331286.P5499883453324307227` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331286 has offset 1).

The definition of A331286 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329605, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A331286.P5499883453324307227

`A000265(A329605(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A331286

/-- `A000265(A329605(n+1))` -/
def P5499883453324307227.Spec : Prop :=
  ∀ n, P5499883453324307227.a n = A331286 (n + 1)

theorem P5499883453324307227.correct : P5499883453324307227.Spec := by
  intro n
  simp only [A331286, Nat.add_sub_cancel]

end A331286

/-! ## A331286.P12326029941611757420

`A329605(n+1)/gcd(A248692(n+1), A329605(n+1))`
-/

namespace A331286.P12326029941611757420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329605 (n + 1) : ℚ) / (Int.gcd (A248692 (n + 1)) (A329605 (n + 1)) : ℚ)

end

end A331286.P12326029941611757420

namespace A331286

/-- `A329605(n+1)/gcd(A248692(n+1), A329605(n+1))` -/
def P12326029941611757420.Spec : Prop :=
  ∀ n, P12326029941611757420.a n = (A331286 (n + 1) : ℚ)

end A331286

/-! ## A331286.P6724007009953649717

`gcd(A224085(A230980(n)), A329605(n+1))`
-/

namespace A331286.P6724007009953649717
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A224085 (A230980 n).toNat) (A329605 (n + 1))

end

end A331286.P6724007009953649717

namespace A331286

/-- `gcd(A224085(A230980(n)), A329605(n+1))` -/
def P6724007009953649717.Spec : Prop :=
  ∀ n, (P6724007009953649717.a n : ℤ) = A331286 (n + 1)

end A331286

/-! ## A331286.P16497610974030736257

`A072963((A001222(n+1)+1)*a(A064989(n+1)-1))` with `a(0)=1, a(1)=1`
-/

namespace A331286.P16497610974030736257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A072963 ((A001222 (n + 1) + 1) * a (A064989 (n + 1) - 1).toNat).toNat

end

end A331286.P16497610974030736257

namespace A331286

/-- `A072963((A001222(n+1)+1)*a(A064989(n+1)-1))` -/
def P16497610974030736257.Spec : Prop :=
  ∀ n, P16497610974030736257.a n = A331286 (n + 1)

end A331286

/-! ## A331286.P7705341406646109329

`A322865(A122111(A329605(A122111(A322865(n+1)))))`
-/

namespace A331286.P7705341406646109329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322865 (A122111 (A329605 (A122111 (A322865 (n + 1)).toNat).toNat).toNat).toNat

end

end A331286.P7705341406646109329

namespace A331286

/-- `A322865(A122111(A329605(A122111(A322865(n+1)))))` -/
def P7705341406646109329.Spec : Prop :=
  ∀ n, P7705341406646109329.a n = A331286 (n + 1)

end A331286

/-! ## A331286.P8478655967950070934

`gcd(A329605(n+1), A331519(n))`
-/

namespace A331286.P8478655967950070934
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A329605 (n + 1)) (A331519 n)

end

end A331286.P8478655967950070934

namespace A331286

/-- `gcd(A329605(n+1), A331519(n))` -/
def P8478655967950070934.Spec : Prop :=
  ∀ n, (P8478655967950070934.a n : ℤ) = A331286 (n + 1)

end A331286

/-! ## A331286.P16203311683212144922

`gcd(A224085(n), A329605(n+1))`
-/

namespace A331286.P16203311683212144922
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A224085 n) (A329605 (n + 1))

end

end A331286.P16203311683212144922

namespace A331286

/-- `gcd(A224085(n), A329605(n+1))` -/
def P16203311683212144922.Spec : Prop :=
  ∀ n, (P16203311683212144922.a n : ℤ) = A331286 (n + 1)

end A331286

/-! ## A331286.P5953922978196506059

`gcd(A046983(n), A329605(n+1))`
-/

namespace A331286.P5953922978196506059
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A046983 n) (A329605 (n + 1))

end

end A331286.P5953922978196506059

namespace A331286

/-- `gcd(A046983(n), A329605(n+1))` -/
def P5953922978196506059.Spec : Prop :=
  ∀ n, (P5953922978196506059.a n : ℤ) = A331286 (n + 1)

end A331286

/-! ## A331286.P9295643663362242959

`∑{d}[A329605(n+1), #%2*A000010(#)]`
-/

namespace A331286.P9295643663362242959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((d % 2 : ℕ) : ℤ) * A000010 d

end

end A331286.P9295643663362242959

namespace A331286

/-- `∑{d}[A329605(n+1), #%2*A000010(#)]` -/
def P9295643663362242959.Spec : Prop :=
  ∀ n, P9295643663362242959.a n = A331286 (n + 1)

end A331286

/-!
# A331287: a(n) = gcd(n, A225546(n)).

The programs for A331287, there is no canonical definition to state claims against.
-/

/-! ## A331287.P1776412183485415324

`A331310(n+1)*A331311(n+1)`
-/

namespace A331287.P1776412183485415324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331310 (n + 1) * A331311 (n + 1)

end

end A331287.P1776412183485415324

/-! ## A331287.P4379127834796011103

`gcd(n+1, A225546(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A331287.P4379127834796011103
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A225546 (n + 1))

end

end A331287.P4379127834796011103

/-! ## A331287.P12248286039311412388

`A050873(A293442(n+1)+∑[n])*A331311(n+1)`
-/

namespace A331287.P12248286039311412388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (A293442 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat * A331311 (n + 1)

end

end A331287.P12248286039311412388

/-! ## A331287.P13885216437623953370

`gcd(A005915(n), A308328(n+1))`
-/

namespace A331287.P13885216437623953370
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005915 n) (A308328 (n + 1))

end

end A331287.P13885216437623953370

/-! ## A331287.P6708260613295908941

`A074389(A357042(n+1))`
-/

namespace A331287.P6708260613295908941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074389 (A357042 (n + 1)).toNat

end

end A331287.P6708260613295908941

/-!
# A331288: a(n) = min(n, A225546(n)).

The programs for A331288, there is no canonical definition to state claims against.
-/

/-! ## A331288.P11838313410988659801

`A153212(A292438(A259111(n+1))+A153212(n+1))`
-/

namespace A331288.P11838313410988659801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153212 (A292438 (A259111 (n + 1)).toNat + A153212 (n + 1)).toNat

end

end A331288.P11838313410988659801

/-! ## A331288.P7082126368713963867

`A191907(A306834(n+1))+A028310(n)`
-/

namespace A331288.P7082126368713963867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191907 (A306834 (n + 1)).toNat + A028310 n

end

end A331288.P7082126368713963867

/-!
# A331289: a(n) = A329348(n) - A001222(n).

The programs for A331289, the canonical program `A331289.P2190627046310691994` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331289 has offset 1).

The definition of A331289 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329348, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A331289.P2190627046310691994

`A329348(n+1)-A001222(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A331289

/-- `A329348(n+1)-A001222(n+1)` -/
def P2190627046310691994.Spec : Prop :=
  ∀ n, P2190627046310691994.a n = A331289 (n + 1)

theorem P2190627046310691994.correct : P2190627046310691994.Spec := by
  intro n
  simp only [A331289, Nat.add_sub_cancel]

end A331289

/-! ## A331289.P18065769398172046734

`A331188(n+1)%A117366(n+1)-A001222(n+1)`
-/

namespace A331289.P18065769398172046734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331188 (n + 1)) (A117366 (n + 1)) - A001222 (n + 1)

end

end A331289.P18065769398172046734

namespace A331289

/-- `A331188(n+1)%A117366(n+1)-A001222(n+1)` -/
def P18065769398172046734.Spec : Prop :=
  ∀ n, P18065769398172046734.a n = A331289 (n + 1)

end A331289

/-! ## A331289.P17391621528511976481

`A329348(n+1)-A056239(A061142(n+1))`
-/

namespace A331289.P17391621528511976481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329348 (n + 1) - A056239 (A061142 (n + 1)).toNat

end

end A331289.P17391621528511976481

namespace A331289

/-- `A329348(n+1)-A056239(A061142(n+1))` -/
def P17391621528511976481.Spec : Prop :=
  ∀ n, P17391621528511976481.a n = A331289 (n + 1)

end A331289

/-! ## A331289.P8712037217210643498

`A329348(n+1)-A061395(A329607(n+1))`
-/

namespace A331289.P8712037217210643498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329348 (n + 1) - A061395 (A329607 (n + 1)).toNat

end

end A331289.P8712037217210643498

namespace A331289

/-- `A329348(n+1)-A061395(A329607(n+1))` -/
def P8712037217210643498.Spec : Prop :=
  ∀ n, P8712037217210643498.a n = A331289 (n + 1)

end A331289

/-! ## A331289.P13431125216420067625

`A329348(n+1)+A329619(n+1)-A329344(n+1)`
-/

namespace A331289.P13431125216420067625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329348 (n + 1) + (A329619 (n + 1) - A329344 (n + 1))

end

end A331289.P13431125216420067625

namespace A331289

/-- `A329348(n+1)+A329619(n+1)-A329344(n+1)` -/
def P13431125216420067625.Spec : Prop :=
  ∀ n, P13431125216420067625.a n = A331289 (n + 1)

end A331289

/-! ## A331289.P2413690497557199616

`A329348(n+1)-A252736(A103517(n))`
-/

namespace A331289.P2413690497557199616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329348 (n + 1) - A252736 (A103517 n).toNat

end

end A331289.P2413690497557199616

namespace A331289

/-- `A329348(n+1)-A252736(A103517(n))` -/
def P2413690497557199616.Spec : Prop :=
  ∀ n, P2413690497557199616.a n = A331289 (n + 1)

end A331289

/-! ## A331289.P5844818861520968256

`A329348(n+1)-A032741(A165824(n+1))`
-/

namespace A331289.P5844818861520968256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329348 (n + 1) - A032741 (A165824 (n + 1)).toNat

end

end A331289.P5844818861520968256

namespace A331289

/-- `A329348(n+1)-A032741(A165824(n+1))` -/
def P5844818861520968256.Spec : Prop :=
  ∀ n, P5844818861520968256.a n = A331289 (n + 1)

end A331289

/-! ## A331289.P2686593770000000004

`A329348(n+1)-val(A108951(n+1), 2)`
-/

namespace A331289.P2686593770000000004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329348 (n + 1) - (SequenceMachineLib.valuation (A108951 (n + 1)).toNat 2 : ℤ)

end

end A331289.P2686593770000000004

namespace A331289

/-- `A329348(n+1)-val(A108951(n+1), 2)` -/
def P2686593770000000004.Spec : Prop :=
  ∀ n, P2686593770000000004.a n = A331289 (n + 1)

end A331289

/-!
# A331290: a(n) = gcd(A001222(n), A329348(n)).

The programs for A331290, the canonical program `A331290.P11642824275662138773` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331290 has offset 1).

The definition of A331290 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329348, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A331290.P11642824275662138773

`gcd(A001222(n+1), A329348(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A331290

/-- `gcd(A001222(n+1), A329348(n+1))` -/
def P11642824275662138773.Spec : Prop :=
  ∀ n, (P11642824275662138773.a n : ℤ) = A331290 (n + 1)

theorem P11642824275662138773.correct : P11642824275662138773.Spec := by
  intro n
  simp only [A331290, Nat.add_sub_cancel]

end A331290

/-! ## A331290.P2756692771912518319

`gcd(Δ[A022559(n)], A331289(n+1))`
-/

namespace A331290.P2756692771912518319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A331289 (n + 1))

end

end A331290.P2756692771912518319

namespace A331290

/-- `gcd(Δ[A022559(n)], A331289(n+1))` -/
def P2756692771912518319.Spec : Prop :=
  ∀ n, (P2756692771912518319.a n : ℤ) = A331290 (n + 1)

end A331290

/-! ## A331290.P10848300012857473561

`gcd(abs(A331289(n+1)), A086436(n+1))`
-/

namespace A331290.P10848300012857473561
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd |A331289 (n + 1)| (A086436 (n + 1))

end

end A331290.P10848300012857473561

namespace A331290

/-- `gcd(abs(A331289(n+1)), A086436(n+1))` -/
def P10848300012857473561.Spec : Prop :=
  ∀ n, (P10848300012857473561.a n : ℤ) = A331290 (n + 1)

end A331290

/-! ## A331290.P4458356254995626227

`gcd(-A331289(n+1), A001222(A000027(n+1)))`
-/

namespace A331290.P4458356254995626227
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (-A331289 (n + 1)) (A001222 (A000027 (n + 1)).toNat)

end

end A331290.P4458356254995626227

namespace A331290

/-- `gcd(-A331289(n+1), A001222(A000027(n+1)))` -/
def P4458356254995626227.Spec : Prop :=
  ∀ n, (P4458356254995626227.a n : ℤ) = A331290 (n + 1)

end A331290

/-! ## A331290.P1676583730511590896

`gcd(A252736(A103517(n)), A329348(n+1))`
-/

namespace A331290.P1676583730511590896
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A252736 (A103517 n).toNat) (A329348 (n + 1))

end

end A331290.P1676583730511590896

namespace A331290

/-- `gcd(A252736(A103517(n)), A329348(n+1))` -/
def P1676583730511590896.Spec : Prop :=
  ∀ n, (P1676583730511590896.a n : ℤ) = A331290 (n + 1)

end A331290

/-!
# A331291: a(n) = A001222(n) * A329348(n).

The programs for A331291, the canonical program `A331291.P17524730680370887553` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331291 has offset 1).

The definition of A331291 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A331291.P17524730680370887553

`A086436(n+1)*A329348(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A331291

/-- `A086436(n+1)*A329348(n+1)` -/
def P17524730680370887553.Spec : Prop :=
  ∀ n, P17524730680370887553.a n = A331291 (n + 1)

theorem P17524730680370887553.correct : P17524730680370887553.Spec := by
  intro n
  simp only [A331291, Nat.add_sub_cancel]

end A331291

/-! ## A331291.P4006921804851690295

`(A252736(n+1)+1)*A329348(n+1)`
-/

namespace A331291.P4006921804851690295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A252736 (n + 1) + 1) * A329348 (n + 1)

end

end A331291.P4006921804851690295

namespace A331291

/-- `(A252736(n+1)+1)*A329348(n+1)` -/
def P4006921804851690295.Spec : Prop :=
  ∀ n, P4006921804851690295.a n = A331291 (n + 1)

theorem P4006921804851690295.correct : P4006921804851690295.Spec := by
  intro n
  simp only [A331291, Nat.add_sub_cancel, A331291.P4006921804851690295.a, A331291.P17524730680370887553.a, A086436, A086436.P11265761020980018024.f1, A086436.P11265761020980018024.a, A252736, A252736.P2865412191134230649.f1, A252736.P2865412191134230649.a, A329348, A329348.P7234823264148255162.a, A117366, A117366.P12979558578758758009.a, A331188, A331188.P3991603324780884029.a, A006530, A006530.P13372528560459906635.a, A052126, A052126.P1944428405920482243.a, A108951, A108951.P1294613322156543690.a, A151800, A151800.P4570031678714564115.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A064989, A064989.P13349672914146769936.a, A070229, A070229.P5792893597916963980.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A331291

/-! ## A331291.P7848573238624444332

`A005496(A252736(n+1))*A329348(n+1)`
-/

namespace A331291.P7848573238624444332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (A252736 (n + 1)).toNat * A329348 (n + 1)

end

end A331291.P7848573238624444332

namespace A331291

/-- `A005496(A252736(n+1))*A329348(n+1)` -/
def P7848573238624444332.Spec : Prop :=
  ∀ n, P7848573238624444332.a n = A331291 (n + 1)

end A331291

/-! ## A331291.P2785128317408205345

`A324912(A061142(n+1))*A329348(n+1)`
-/

namespace A331291.P2785128317408205345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324912 (A061142 (n + 1)).toNat * A329348 (n + 1)

end

end A331291.P2785128317408205345

namespace A331291

/-- `A324912(A061142(n+1))*A329348(n+1)` -/
def P2785128317408205345.Spec : Prop :=
  ∀ n, P2785128317408205345.a n = A331291 (n + 1)

end A331291

/-! ## A331291.P6001075927682191252

`(A001222(A052126(n+1))+1)*A329348(n+1)`
-/

namespace A331291.P6001075927682191252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001222 (A052126 (n + 1)).toNat + 1) * A329348 (n + 1)

end

end A331291.P6001075927682191252

namespace A331291

/-- `(A001222(A052126(n+1))+1)*A329348(n+1)` -/
def P6001075927682191252.Spec : Prop :=
  ∀ n, P6001075927682191252.a n = A331291 (n + 1)

end A331291

/-! ## A331291.P14853927513594420979

`A061395(2*A329607(n+1))*A329348(n+1)`
-/

namespace A331291.P14853927513594420979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A329607 (n + 1)).toNat * A329348 (n + 1)

end

end A331291.P14853927513594420979

namespace A331291

/-- `A061395(2*A329607(n+1))*A329348(n+1)` -/
def P14853927513594420979.Spec : Prop :=
  ∀ n, P14853927513594420979.a n = A331291 (n + 1)

end A331291

/-! ## A331291.P2844031242213348406

`A001222(A137509(n+1))*A329348(n+1)`
-/

namespace A331291.P2844031242213348406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A137509 (n + 1)).toNat * A329348 (n + 1)

end

end A331291.P2844031242213348406

namespace A331291

/-- `A001222(A137509(n+1))*A329348(n+1)` -/
def P2844031242213348406.Spec : Prop :=
  ∀ n, P2844031242213348406.a n = A331291 (n + 1)

end A331291

/-! ## A331291.P1539507982904269089

`A324912(A061142(n+1)^A329348(n+1))`
-/

namespace A331291.P1539507982904269089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324912 (SequenceMachineLib.roundAway ((A061142 (n + 1) : ℚ) ^ (A329348 (n + 1) : ℤ))).toNat

end

end A331291.P1539507982904269089

namespace A331291

/-- `A324912(A061142(n+1)^A329348(n+1))` -/
def P1539507982904269089.Spec : Prop :=
  ∀ n, P1539507982904269089.a n = A331291 (n + 1)

end A331291

/-!
# A331292: The next more significant digit after A329348(n) in the primorial base expansion of A108951(n).

The programs for A331292, the canonical program `A331292.P11437577802262716147` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331292 has offset 1).

The definition of A331292 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9972 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A331292.P11437577802262716147

`A331293(n+1)%A117366(A117366(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A331292

/-- `A331293(n+1)%A117366(A117366(n+1))` -/
def P11437577802262716147.Spec : Prop :=
  ∀ n, P11437577802262716147.a n = A331292 (n + 1)

theorem P11437577802262716147.correct : P11437577802262716147.Spec := by
  intro n
  simp only [A331292, Nat.add_sub_cancel]

end A331292

/-! ## A331292.P11927167062515827838

`val(A324886(n+1), A003961(A117366(n+1)))`
-/

namespace A331292.P11927167062515827838
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A324886 (n + 1)).toNat (A003961 (A117366 (n + 1)).toNat).toNat

end

end A331292.P11927167062515827838

namespace A331292

/-- `val(A324886(n+1), A003961(A117366(n+1)))` -/
def P11927167062515827838.Spec : Prop :=
  ∀ n, (P11927167062515827838.a n : ℤ) = A331292 (n + 1)

end A331292

/-! ## A331292.P18051920392841251087

`val(A329044(n+1), A324886(A006530(n+1)))`
-/

namespace A331292.P18051920392841251087
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A329044 (n + 1)).toNat (A324886 (A006530 (n + 1)).toNat).toNat

end

end A331292.P18051920392841251087

namespace A331292

/-- `val(A329044(n+1), A324886(A006530(n+1)))` -/
def P18051920392841251087.Spec : Prop :=
  ∀ n, (P18051920392841251087.a n : ℤ) = A331292 (n + 1)

end A331292

/-! ## A331292.P15096381876962317326

`val(A324887(n+1), A003961(A117366(n+1)))`
-/

namespace A331292.P15096381876962317326
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A324887 (n + 1)).toNat (A003961 (A117366 (n + 1)).toNat).toNat

end

end A331292.P15096381876962317326

namespace A331292

/-- `val(A324887(n+1), A003961(A117366(n+1)))` -/
def P15096381876962317326.Spec : Prop :=
  ∀ n, (P15096381876962317326.a n : ℤ) = A331292 (n + 1)

end A331292

/-! ## A331292.P15741324377730838804

`val(A324886(n+1), A117366(A119416(n+1)))`
-/

namespace A331292.P15741324377730838804
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A324886 (n + 1)).toNat (A117366 (A119416 (n + 1)).toNat).toNat

end

end A331292.P15741324377730838804

namespace A331292

/-- `val(A324886(n+1), A117366(A119416(n+1)))` -/
def P15741324377730838804.Spec : Prop :=
  ∀ n, (P15741324377730838804.a n : ℤ) = A331292 (n + 1)

end A331292

/-! ## A331292.P429708302605250456

`val(A324887(n+1), A117366(A119416(n+1)))`
-/

namespace A331292.P429708302605250456
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A324887 (n + 1)).toNat (A117366 (A119416 (n + 1)).toNat).toNat

end

end A331292.P429708302605250456

namespace A331292

/-- `val(A324887(n+1), A117366(A119416(n+1)))` -/
def P429708302605250456.Spec : Prop :=
  ∀ n, (P429708302605250456.a n : ℤ) = A331292 (n + 1)

end A331292

/-!
# A331293: Let h = A061395(n) and u = A108951(n) - (A002110(h)*A329348(n)). Then a(n) = u/A002110(1+h).

The programs for A331293, the canonical program `A331293.P9575972246496623132` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331293 has offset 1).

The definition of A331293 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A331293.P9575972246496623132

`floor(A331188(n+1)/A117366(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A331293

/-- `floor(A331188(n+1)/A117366(n+1))` -/
def P9575972246496623132.Spec : Prop :=
  ∀ n, P9575972246496623132.a n = A331293 (n + 1)

theorem P9575972246496623132.correct : P9575972246496623132.Spec := by
  intro n
  simp only [A331293, Nat.add_sub_cancel]

end A331293

/-! ## A331293.P9936114836164864585

`(A331188(n+1)-A329348(n+1))/A117366(n+1)`
-/

namespace A331293.P9936114836164864585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331188 (n + 1) - A329348 (n + 1) : ℚ) / (A117366 (n + 1) : ℚ)

end

end A331293.P9936114836164864585

namespace A331293

/-- `(A331188(n+1)-A329348(n+1))/A117366(n+1)` -/
def P9936114836164864585.Spec : Prop :=
  ∀ n, P9936114836164864585.a n = (A331293 (n + 1) : ℚ)

end A331293

/-!
# A331295: Number of values of k, 1 <= k <= n, with f(k) = f(n), where f(n) = [A001222(n), A061395(n)].

The programs for A331295, there is no canonical definition to state claims against.
-/

/-! ## A331295.P3147521644192296762

`A058933(A052126(n+1))%A343968(A009766(n))`
-/

namespace A331295.P3147521644192296762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058933 (A052126 (n + 1)).toNat) (A343968 (A009766 n).toNat)

end

end A331295.P3147521644192296762

/-! ## A331295.P1148202013866995787

`A058933(A052126(n+1))+A008966(A110013(n+1))`
-/

namespace A331295.P1148202013866995787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A052126 (n + 1)).toNat + A008966 (A110013 (n + 1)).toNat

end

end A331295.P1148202013866995787

/-! ## A331295.P15053706640049226668

`A000035(A132209(n+2))*A058933(A052126(n+1))`
-/

namespace A331295.P15053706640049226668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A132209 (n + 2)).toNat * A058933 (A052126 (n + 1)).toNat

end

end A331295.P15053706640049226668

/-! ## A331295.P5782444507645124472

`A324803(A181657(n))+A058933(A052126(n+1))`
-/

namespace A331295.P5782444507645124472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324803 (A181657 n).toNat + A058933 (A052126 (n + 1)).toNat

end

end A331295.P5782444507645124472

/-! ## A331295.P15088818350178166923

`A058933(A052126(n+1))^A289508(A000009(n))`
-/

namespace A331295.P15088818350178166923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058933 (A052126 (n + 1)).toNat : ℚ) ^ (A289508 (A000009 n).toNat : ℤ)

end

end A331295.P15088818350178166923

/-! ## A331295.P16840903704043114762

`A014306(A233893(n+1))*A058933(A052126(n+1))`
-/

namespace A331295.P16840903704043114762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014306 (A233893 (n + 1)).toNat * A058933 (A052126 (n + 1)).toNat

end

end A331295.P16840903704043114762

/-! ## A331295.P1830673482570563814

`A058933(A052126(n+1))/A140213(A181657(n)+3)`
-/

namespace A331295.P1830673482570563814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058933 (A052126 (n + 1)).toNat : ℚ) / (A140213 (A181657 n + 3).toNat : ℚ)

end

end A331295.P1830673482570563814

/-! ## A331295.P15301076097493589384

`A375216(A156552(n+1))`
-/

namespace A331295.P15301076097493589384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375216 (A156552 (n + 1)).toNat

end

end A331295.P15301076097493589384

/-! ## A331295.P12919481725596259004

`A375216(A332816(n+1))`
-/

namespace A331295.P12919481725596259004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375216 (A332816 (n + 1)).toNat

end

end A331295.P12919481725596259004

/-! ## A331295.P13321418578916930183

`A058933(A052126(n+1))+C(n, A130049(n+3))`
-/

namespace A331295.P13321418578916930183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A052126 (n + 1)).toNat + (Nat.choose n (A130049 (n + 3)).toNat : ℤ)

end

end A331295.P13321418578916930183

/-!
# A331296: Number of values of k, 1 <= k <= n, with A263297(k) = A263297(n), where A263297(n) = max(A001222(n), A061395(n)).

The programs for A331296, there is no canonical definition to state claims against.
-/

/-! ## A331296.P6594908592662638127

`A325225(A349369(n+1)+A000079(n+1))`
-/

namespace A331296.P6594908592662638127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325225 (A349369 (n + 1) + A000079 (n + 1)).toNat

end

end A331296.P6594908592662638127

/-! ## A331296.P17158837743020528482

`A010060(A244121(2*n+1))+A002088(A033676(n+1))`
-/

namespace A331296.P17158837743020528482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A244121 (2 * n + 1)).toNat + A002088 (A033676 (n + 1)).toNat

end

end A331296.P17158837743020528482

/-! ## A331296.P6806388193206769808

`A187279(A036538(n+1))`
-/

namespace A331296.P6806388193206769808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187279 (A036538 (n + 1)).toNat

end

end A331296.P6806388193206769808

/-! ## A331296.P4923663410611642824

`A334572(A022365(n+1))`
-/

namespace A331296.P4923663410611642824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334572 (A022365 (n + 1)).toNat

end

end A331296.P4923663410611642824

/-! ## A331296.P8693298940226565012

`A094818(A279364(n+1))`
-/

namespace A331296.P8693298940226565012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094818 (A279364 (n + 1)).toNat

end

end A331296.P8693298940226565012

/-!
# A331297: Lexicographically earliest infinite sequence such that a(i) = a(j) => A263297(i) = A263297(j) and A325225(i) = A325225(j) for all i, j.

The programs for A331297, there is no canonical definition to state claims against.
-/

/-! ## A331297.P17407657299792667484

`A073642(2*(n+1))+A011746(A000598(n))`
-/

namespace A331297.P17407657299792667484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 (2 * (n + 1)) + A011746 (A000598 n).toNat

end

end A331297.P17407657299792667484

/-! ## A331297.P10052279659322497951

`A005812(A002235(3*n+5)-A028234(3*n+5))`
-/

namespace A331297.P10052279659322497951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005812 (A002235 (3 * n + 5) - A028234 (3 * n + 5)).toNat

end

end A331297.P10052279659322497951

/-! ## A331297.P12102808749758503710

`A194237(A061070(2*(n+3))+(A285329(n+1)+1)%A129079(2*n+5))`
-/

namespace A331297.P12102808749758503710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194237 (A061070 (2 * (n + 3)) + Int.tmod (A285329 (n + 1) + 1) (A129079 (2 * n + 5))).toNat

end

end A331297.P12102808749758503710

/-!
# A331299: a(n) = min(n, A241909(n)).

The programs for A331299, there is no canonical definition to state claims against.
-/

/-! ## A331299.P1776067434264038482

`∏{p}[n+1, #*val(n+1, #)]-A288997(∑[72*n]+5)`
-/

namespace A331299.P1776067434264038482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  72 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p : ℕ) : ℤ) - A288997 (∑ j ∈ Finset.range (n + 1), f2 j + 5)

end

end A331299.P1776067434264038482

/-! ## A331299.P7388831126678919573

`∏{p}[n+1, #*val(n+1, #)]-A188014(A005898(n))`
-/

namespace A331299.P7388831126678919573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p : ℕ) : ℤ) - A188014 (A005898 n).toNat

end

end A331299.P7388831126678919573

/-! ## A331299.P5876836410863556136

`A000026(n+1)-A188014(A005898(n))`
-/

namespace A331299.P5876836410863556136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (n + 1) - A188014 (A005898 n).toNat

end

end A331299.P5876836410863556136

/-! ## A331299.P9334957845790093226

`A000026(n+1)-A112526(A065482(n+1))`
-/

namespace A331299.P9334957845790093226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (n + 1) - A112526 (A065482 (n + 1)).toNat

end

end A331299.P9334957845790093226

