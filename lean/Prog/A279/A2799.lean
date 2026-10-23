import SequenceMachineLib
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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
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
import Seq.B001.C009
import Seq.B001.C010
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
import Seq.B006.C001
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
# A279900: Number of nX6 0..2 arrays with no element unequal to a strict majority of its king-move neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A279900, there is no canonical definition to state claims against.
-/

/-! ## A279900.P10103866705325349842

`A279902(A374007(n+1))`
-/

namespace A279900.P10103866705325349842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279902 (A374007 (n + 1)).toNat

end

end A279900.P10103866705325349842

/-! ## A279900.P15120438595504498974

`A279902(A166136(n+4))`
-/

namespace A279900.P15120438595504498974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279902 (A166136 (n + 4)).toNat

end

end A279900.P15120438595504498974

/-! ## A279900.P9721701134847422519

`A279902(A056115(n)+21)`
-/

namespace A279900.P9721701134847422519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279902 (A056115 n + 21).toNat

end

end A279900.P9721701134847422519

/-! ## A279900.P6052499267978237086

`A279902(A077169(n+6)+1)`
-/

namespace A279900.P6052499267978237086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279902 (A077169 (n + 6) + 1).toNat

end

end A279900.P6052499267978237086

/-! ## A279900.P749952604515906904

`A279902(A000124(n+5)+5)`
-/

namespace A279900.P749952604515906904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279902 (A000124 (n + 5) + 5).toNat

end

end A279900.P749952604515906904

/-!
# A279901: Number of nX7 0..2 arrays with no element unequal to a strict majority of its king-move neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A279901, there is no canonical definition to state claims against.
-/

/-! ## A279901.P2873933276850896714

`A279902(A374008(n+1))`
-/

namespace A279901.P2873933276850896714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279902 (A374008 (n + 1)).toNat

end

end A279901.P2873933276850896714

/-! ## A279901.P2786925327978408432

`A279902(A167487(n+5))`
-/

namespace A279901.P2786925327978408432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279902 (A167487 (n + 5)).toNat

end

end A279901.P2786925327978408432

/-! ## A279901.P10138053858027941784

`A279902(eq[11, A066657(n)])`
-/

namespace A279901.P10138053858027941784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279902 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279901.P10138053858027941784

/-! ## A279901.P8899800013035024305

`A279902(A161680(n+7)+7)`
-/

namespace A279901.P8899800013035024305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279902 (A161680 (n + 7) + 7).toNat

end

end A279901.P8899800013035024305

/-! ## A279901.P7677246864399808041

`A279902(A155212(n+2)+15)`
-/

namespace A279901.P7677246864399808041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279902 (A155212 (n + 2) + 15).toNat

end

end A279901.P7677246864399808041

/-!
# A279905: Number of 2 X 2 matrices with entries in {0,1,...,n} and odd trace with no elements repeated.

The programs for A279905, the canonical program `A279905.P8691128103183302670` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279905 has offset 0).

The definition of A279905 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A279905.P8691128103183302670

`(n-2)*(n-1)*(2*(n+1)²-(-1)^n-1)/4`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A279905

/-- `(n-2)*(n-1)*(2*(n+1)²-(-1)^n-1)/4` -/
def P8691128103183302670.Spec : Prop :=
  ∀ n, P8691128103183302670.a n = (A279905 n : ℚ)

end A279905

/-! ## A279905.P14810317052804353558

`A002378(A289207(n))*A080476(n+1)`
-/

namespace A279905.P14810317052804353558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A289207 n).toNat * A080476 (n + 1)

end

end A279905.P14810317052804353558

namespace A279905

/-- `A002378(A289207(n))*A080476(n+1)` -/
def P14810317052804353558.Spec : Prop :=
  ∀ n, P14810317052804353558.a n = A279905 n

end A279905

/-! ## A279905.P3629379696161368

`-((1-A141354(n))*(A005408(n)-A133263(n)))`
-/

namespace A279905.P3629379696161368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((1 - A141354 n) * (A005408 n - A133263 n))

end

end A279905.P3629379696161368

namespace A279905

/-- `-((1-A141354(n))*(A005408(n)-A133263(n)))` -/
def P3629379696161368.Spec : Prop :=
  ∀ n, P3629379696161368.a n = A279905 n

end A279905

/-! ## A279905.P6560938311080085538

`A002620(n+1)*A325689(2*n)`
-/

namespace A279905.P6560938311080085538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 1) * A325689 (2 * n)

end

end A279905.P6560938311080085538

namespace A279905

/-- `A002620(n+1)*A325689(2*n)` -/
def P6560938311080085538.Spec : Prop :=
  ∀ n, P6560938311080085538.a n = A279905 n

end A279905

/-! ## A279905.P12781083723335252119

`A007590(n+1)*A265410(n²+1+n)-A007590(n+1)`
-/

namespace A279905.P12781083723335252119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 (n + 1) * A265410 (n ^ 2 + 1 + n) - A007590 (n + 1)

end

end A279905.P12781083723335252119

namespace A279905

/-- `A007590(n+1)*A265410(n²+1+n)-A007590(n+1)` -/
def P12781083723335252119.Spec : Prop :=
  ∀ n, P12781083723335252119.a n = A279905 n

end A279905

/-!
# A279907: Triangle read by rows: T(n,k) is the smallest power of n that is divisible by k, or -1 if no such power exists.

The programs for A279907, there is no canonical definition to state claims against.
-/

/-! ## A279907.P136694441220474044

`A353421(2^A008949(n))`
-/

namespace A279907.P136694441220474044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353421 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A008949 n : ℤ))).toNat

end

end A279907.P136694441220474044

/-! ## A279907.P425989744622469142

`A062157(C(A100229(n), 2))`
-/

namespace A279907.P425989744622469142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (Nat.choose (A100229 n).toNat 2)

end

end A279907.P425989744622469142

/-! ## A279907.P9860476214282245750

`A062157(C(A122366(n), 2))`
-/

namespace A279907.P9860476214282245750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (Nat.choose (A122366 n).toNat 2)

end

end A279907.P9860476214282245750

/-! ## A279907.P14629835804333849208

`-A105812(A193722(n)²)`
-/

namespace A279907.P14629835804333849208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A105812 (A193722 n ^ 2).toNat

end

end A279907.P14629835804333849208

/-! ## A279907.P15195334155670725476

`-A105812(A152249(n+1))`
-/

namespace A279907.P15195334155670725476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A105812 (A152249 (n + 1)).toNat

end

end A279907.P15195334155670725476

/-!
# A279908: Least positive squarefree integer k such that Q(sqrt(k)) has a class number greater than that of any previous integer.

The programs for A279908, there is no canonical definition to state claims against.
-/

/-! ## A279908.P12019618019934443354

`record[A081363(n+1)]`
-/

namespace A279908.P12019618019934443354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279908.P12019618019934443354

/-! ## A279908.P4973535826903633759

`A081363(lt[A283009(n), A000225(n)²])`
-/

namespace A279908.P4973535826903633759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283009 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081363 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A279908.P4973535826903633759

/-! ## A279908.P3077621537151484343

`A081363(lt[A072706(n), A081369(n+1)])`
-/

namespace A279908.P3077621537151484343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072706 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081363 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A279908.P3077621537151484343

/-! ## A279908.P8396101015329890742

`A081363(lt[A283009(n), A000225(2*n)])`
-/

namespace A279908.P8396101015329890742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283009 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081363 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A279908.P8396101015329890742

/-! ## A279908.P17366147897413140243

`A081363(lt[A285407(n), A007461(n)])`
-/

namespace A279908.P17366147897413140243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285407 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007461 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081363 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A279908.P17366147897413140243

/-!
# A279910: a(n) = Sum_{k=1..n} prime(k+1)*floor(n/prime(k+1)).

The programs for A279910, the canonical program `A279910.P17272219053837189446` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279910 has offset 1).

The definition of A279910 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024924, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A279910.P17272219053837189446

`A024924(n+1)-A052928(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A279910

/-- `A024924(n+1)-A052928(n+1)` -/
def P17272219053837189446.Spec : Prop :=
  ∀ n, P17272219053837189446.a n = A279910 (n + 1)

theorem P17272219053837189446.correct : P17272219053837189446.Spec := by
  intro n
  simp only [A279910, Nat.add_sub_cancel]

end A279910

/-! ## A279910.P3489963236768622171

`∑[∑{p}[2*(n+1), #]-2]`
-/

namespace A279910.P3489963236768622171
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279910.P3489963236768622171

namespace A279910

/-- `∑[∑{p}[2*(n+1), #]-2]` -/
def P3489963236768622171.Spec : Prop :=
  ∀ n, P3489963236768622171.a n = A279910 (n + 1)

end A279910

/-! ## A279910.P18037592088134582437

`∑[∑{p}[n+1, xor(1, #-1)]]`
-/

namespace A279910.P18037592088134582437
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Int.xor 1 ((p : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279910.P18037592088134582437

namespace A279910

/-- `∑[∑{p}[n+1, xor(1, #-1)]]` -/
def P18037592088134582437.Spec : Prop :=
  ∀ n, P18037592088134582437.a n = A279910 (n + 1)

end A279910

/-! ## A279910.P4617181169054934134

`∑[∑{p}[n+1, #*#%2]]`
-/

namespace A279910.P4617181169054934134
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p * (p % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279910.P4617181169054934134

namespace A279910

/-- `∑[∑{p}[n+1, #*#%2]]` -/
def P4617181169054934134.Spec : Prop :=
  ∀ n, (P4617181169054934134.a n : ℤ) = A279910 (n + 1)

end A279910

/-! ## A279910.P4080234873883951508

`∑[∑{p}[n+1, lcm(2, #)-#]]`
-/

namespace A279910.P4080234873883951508
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), ((Nat.lcm 2 p : ℤ) - (p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279910.P4080234873883951508

namespace A279910

/-- `∑[∑{p}[n+1, lcm(2, #)-#]]` -/
def P4080234873883951508.Spec : Prop :=
  ∀ n, P4080234873883951508.a n = A279910 (n + 1)

end A279910

/-! ## A279910.P3446134490590483513

`∑[∑{p}[n+1, #*and(1, #)]]`
-/

namespace A279910.P3446134490590483513
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p * Nat.land 1 p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279910.P3446134490590483513

namespace A279910

/-- `∑[∑{p}[n+1, #*and(1, #)]]` -/
def P3446134490590483513.Spec : Prop :=
  ∀ n, (P3446134490590483513.a n : ℤ) = A279910 (n + 1)

end A279910

/-! ## A279910.P13924027175925416277

`∑[∑{p}[floor(n/2^val(n+1, 2))+1, #]]`
-/

namespace A279910.P13924027175925416277
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋ + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279910.P13924027175925416277

namespace A279910

/-- `∑[∑{p}[floor(n/2^val(n+1, 2))+1, #]]` -/
def P13924027175925416277.Spec : Prop :=
  ∀ n, (P13924027175925416277.a n : ℤ) = A279910 (n + 1)

end A279910

/-! ## A279910.P9710267542541916255

`∑[∑{p}[(n+1)/and(n+1, -(n+1)), #]]`
-/

namespace A279910.P9710267542541916255
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f2 n)).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279910.P9710267542541916255

namespace A279910

/-- `∑[∑{p}[(n+1)/and(n+1, -(n+1)), #]]` -/
def P9710267542541916255.Spec : Prop :=
  ∀ n, (P9710267542541916255.a n : ℤ) = A279910 (n + 1)

end A279910

/-! ## A279910.P8070615549724858863

`∑[A005069(n+1)]`
-/

namespace A279910.P8070615549724858863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005069 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279910.P8070615549724858863

namespace A279910

/-- `∑[A005069(n+1)]` -/
def P8070615549724858863.Spec : Prop :=
  ∀ n, P8070615549724858863.a n = A279910 (n + 1)

end A279910

/-! ## A279910.P13401687513865587572

`∑[A100030(n+1)-2]`
-/

namespace A279910.P13401687513865587572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100030 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279910.P13401687513865587572

namespace A279910

/-- `∑[A100030(n+1)-2]` -/
def P13401687513865587572.Spec : Prop :=
  ∀ n, P13401687513865587572.a n = A279910 (n + 1)

end A279910

/-! ## A279910.P17646909295116629556

`∑[∑{p}[A000265(n+1), #]]`
-/

namespace A279910.P17646909295116629556
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279910.P17646909295116629556

namespace A279910

/-- `∑[∑{p}[A000265(n+1), #]]` -/
def P17646909295116629556.Spec : Prop :=
  ∀ n, (P17646909295116629556.a n : ℤ) = A279910 (n + 1)

end A279910

/-! ## A279910.P18296314116995443452

`∑[A008472(2*(n+1))-2]`
-/

namespace A279910.P18296314116995443452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (2 * (n + 1)) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279910.P18296314116995443452

namespace A279910

/-- `∑[A008472(2*(n+1))-2]` -/
def P18296314116995443452.Spec : Prop :=
  ∀ n, P18296314116995443452.a n = A279910 (n + 1)

end A279910

/-! ## A279910.P2112434134066994787

`∑[A008472(A000265(n+1))]`
-/

namespace A279910.P2112434134066994787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279910.P2112434134066994787

namespace A279910

/-- `∑[A008472(A000265(n+1))]` -/
def P2112434134066994787.Spec : Prop :=
  ∀ n, P2112434134066994787.a n = A279910 (n + 1)

end A279910

/-! ## A279910.P12238409695163155756

`A213041(n)-A024925(n+1)`
-/

namespace A279910.P12238409695163155756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213041 n - A024925 (n + 1)

end

end A279910.P12238409695163155756

namespace A279910

/-- `A213041(n)-A024925(n+1)` -/
def P12238409695163155756.Spec : Prop :=
  ∀ n, P12238409695163155756.a n = A279910 (n + 1)

end A279910

/-! ## A279910.P15171961129327062497

`∑[A001414(A007947(2*(n+1)))-2]`
-/

namespace A279910.P15171961129327062497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A007947 (2 * (n + 1))).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279910.P15171961129327062497

namespace A279910

/-- `∑[A001414(A007947(2*(n+1)))-2]` -/
def P15171961129327062497.Spec : Prop :=
  ∀ n, P15171961129327062497.a n = A279910 (n + 1)

end A279910

/-! ## A279910.P14121078235768852902

`∑[A001414(A007947(2*(n+1))/2)]`
-/

namespace A279910.P14121078235768852902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (SequenceMachineLib.roundAway ((A007947 (2 * (n + 1)) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279910.P14121078235768852902

namespace A279910

/-- `∑[A001414(A007947(2*(n+1))/2)]` -/
def P14121078235768852902.Spec : Prop :=
  ∀ n, P14121078235768852902.a n = A279910 (n + 1)

end A279910

/-! ## A279910.P1659925668490317088

`∑[A008475(A007947(2*(n+1))/2)]`
-/

namespace A279910.P1659925668490317088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (SequenceMachineLib.roundAway ((A007947 (2 * (n + 1)) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279910.P1659925668490317088

namespace A279910

/-- `∑[A008475(A007947(2*(n+1))/2)]` -/
def P1659925668490317088.Spec : Prop :=
  ∀ n, P1659925668490317088.a n = A279910 (n + 1)

end A279910

/-! ## A279910.P5024652814351644462

`∑[A181894(A007947(2*(n+1))/2)]`
-/

namespace A279910.P5024652814351644462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181894 (SequenceMachineLib.roundAway ((A007947 (2 * (n + 1)) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279910.P5024652814351644462

namespace A279910

/-- `∑[A181894(A007947(2*(n+1))/2)]` -/
def P5024652814351644462.Spec : Prop :=
  ∀ n, P5024652814351644462.a n = A279910 (n + 1)

end A279910

/-! ## A279910.P428342655260782562

`A024924(n+1)-2*A123108(n+1)`
-/

namespace A279910.P428342655260782562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024924 (n + 1) - 2 * A123108 (n + 1)

end

end A279910.P428342655260782562

namespace A279910

/-- `A024924(n+1)-2*A123108(n+1)` -/
def P428342655260782562.Spec : Prop :=
  ∀ n, P428342655260782562.a n = A279910 (n + 1)

end A279910

/-! ## A279910.P15550194024776506413

`∑[A091921(2*(n+1))]`
-/

namespace A279910.P15550194024776506413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091921 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279910.P15550194024776506413

namespace A279910

/-- `∑[A091921(2*(n+1))]` -/
def P15550194024776506413.Spec : Prop :=
  ∀ n, P15550194024776506413.a n = A279910 (n + 1)

end A279910

/-!
# A279912: a(n) = Sum_{i=1..n} denominator(i^n/n).

The programs for A279912, the canonical program `A279912.P579018527015761516` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279912 has offset 0).

The definition of A279912 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A279912.P579018527015761516

`∑{d}[n, A342534(#)]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A279912

/-- `∑{d}[n, A342534(#)]` -/
def P579018527015761516.Spec : Prop :=
  ∀ n, P579018527015761516.a n = A279912 n

theorem P579018527015761516.correct : P579018527015761516.Spec := by
  intro n
  simp only [A279912]

end A279912

/-! ## A279912.P5358331548012638919

`∑{d}[n, n/#*A000010(#)²]`
-/

namespace A279912.P5358331548012638919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n : ℚ) / (d : ℚ) * (A000010 d ^ 2 : ℚ)

end

end A279912.P5358331548012638919

namespace A279912

/-- `∑{d}[n, n/#*A000010(#)²]` -/
def P5358331548012638919.Spec : Prop :=
  ∀ n, P5358331548012638919.a n = (A279912 n : ℚ)

end A279912

/-! ## A279912.P3726323290760545829

`A351870((n-1)*lcm(2, xor(n, -2))/2+1)`
-/

namespace A279912.P3726323290760545829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) * ((Int.lcm 2 (Int.xor (n : ℤ) (-2)) : ℚ) / 2) + 1)).toNat

end

end A279912.P3726323290760545829

namespace A279912

/-- `A351870((n-1)*lcm(2, xor(n, -2))/2+1)` -/
def P3726323290760545829.Spec : Prop :=
  ∀ n, P3726323290760545829.a n = A279912 n

end A279912

/-! ## A279912.P5025711504884124835

`A383156(A083423(n))`
-/

namespace A279912.P5025711504884124835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383156 (A083423 n).toNat

end

end A279912.P5025711504884124835

namespace A279912

/-- `A383156(A083423(n))` -/
def P5025711504884124835.Spec : Prop :=
  ∀ n, P5025711504884124835.a n = A279912 n

end A279912

/-! ## A279912.P10176766721841111836

`A359677(A084938(3*n+2))+∑[n]`
-/

namespace A279912.P10176766721841111836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359677 (A084938 (3 * n + 2)).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A279912.P10176766721841111836

namespace A279912

/-- `A359677(A084938(3*n+2))+∑[n]` -/
def P10176766721841111836.Spec : Prop :=
  ∀ n, P10176766721841111836.a n = A279912 n

end A279912

/-!
# A279913: Largest n-digit number ending in n.

The programs for A279913, the canonical program `A279913.P12273230905058985659` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279913 has offset 1).

The definition of A279913 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089186, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A279913.P12273230905058985659

`10^(n+1)-A089186(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A279913

/-- `10^(n+1)-A089186(n+1)` -/
def P12273230905058985659.Spec : Prop :=
  ∀ n, P12273230905058985659.a n = A279913 (n + 1)

theorem P12273230905058985659.correct : P12273230905058985659.Spec := by
  intro n
  simp only [A279913, Nat.add_sub_cancel]

end A279913

/-! ## A279913.P10448204860853440387

`A002283(n+1)-A061601(n+1)`
-/

namespace A279913.P10448204860853440387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 (n + 1) - A061601 (n + 1)

end

end A279913.P10448204860853440387

namespace A279913

/-- `A002283(n+1)-A061601(n+1)` -/
def P10448204860853440387.Spec : Prop :=
  ∀ n, P10448204860853440387.a n = A279913 (n + 1)

end A279913

/-! ## A279913.P7636722306251441960

`A103456(n+1)-A061601(n+1)`
-/

namespace A279913.P7636722306251441960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103456 (n + 1) - A061601 (n + 1)

end

end A279913.P7636722306251441960

namespace A279913

/-- `A103456(n+1)-A061601(n+1)` -/
def P7636722306251441960.Spec : Prop :=
  ∀ n, P7636722306251441960.a n = A279913 (n + 1)

end A279913

/-! ## A279913.P6907093528069735788

`A011557(n+1)-(A061601(n+1)+1)`
-/

namespace A279913.P6907093528069735788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (n + 1) - (A061601 (n + 1) + 1)

end

end A279913.P6907093528069735788

namespace A279913

/-- `A011557(n+1)-(A061601(n+1)+1)` -/
def P6907093528069735788.Spec : Prop :=
  ∀ n, P6907093528069735788.a n = A279913 (n + 1)

end A279913

/-! ## A279913.P2178107960242560687

`A109002(n+1)+A178500(n)-A061601(n+1)`
-/

namespace A279913.P2178107960242560687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109002 (n + 1) + (A178500 n - A061601 (n + 1))

end

end A279913.P2178107960242560687

namespace A279913

/-- `A109002(n+1)+A178500(n)-A061601(n+1)` -/
def P2178107960242560687.Spec : Prop :=
  ∀ n, P2178107960242560687.a n = A279913 (n + 1)

end A279913

/-! ## A279913.P211835698479670867

`Δ[A105279(n)]-(A061601(n+1)+1)`
-/

namespace A279913.P211835698479670867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105279 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A061601 (n + 1) + 1)

end

end A279913.P211835698479670867

namespace A279913

/-- `Δ[A105279(n)]-(A061601(n+1)+1)` -/
def P211835698479670867.Spec : Prop :=
  ∀ n, P211835698479670867.a n = A279913 (n + 1)

end A279913

/-!
# A279914: a(n) = sigma(n) + phi(n) - mu(n).

The programs for A279914, the canonical program `A279914.P15760312848134120461` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279914 has offset 1).

The definition of A279914 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A008683, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A279914.P15760312848134120461

`A000203(n+1)+A000010(n+1)-A008683(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A279914

/-- `A000203(n+1)+A000010(n+1)-A008683(n+1)` -/
def P15760312848134120461.Spec : Prop :=
  ∀ n, P15760312848134120461.a n = A279914 (n + 1)

theorem P15760312848134120461.correct : P15760312848134120461.Spec := by
  intro n
  simp only [A279914, Nat.add_sub_cancel]

end A279914

/-! ## A279914.P17813354956533604101

`A053139(n+1)+∑{d}[n+1, #]`
-/

namespace A279914.P17813354956533604101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053139 (n + 1) + ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A279914.P17813354956533604101

namespace A279914

/-- `A053139(n+1)+∑{d}[n+1, #]` -/
def P17813354956533604101.Spec : Prop :=
  ∀ n, P17813354956533604101.a n = A279914 (n + 1)

end A279914

/-! ## A279914.P9467755273902173311

`A053139(n+1)+Δ[A160664(n)]`
-/

namespace A279914.P9467755273902173311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053139 (n + 1) + (f1 (n + 1) - f1 n)

end

end A279914.P9467755273902173311

namespace A279914

/-- `A053139(n+1)+Δ[A160664(n)]` -/
def P9467755273902173311.Spec : Prop :=
  ∀ n, P9467755273902173311.a n = A279914 (n + 1)

end A279914

/-! ## A279914.P11980718537466159758

`A053139(n+1)+A000203(n+1)`
-/

namespace A279914.P11980718537466159758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053139 (n + 1) + A000203 (n + 1)

end

end A279914.P11980718537466159758

namespace A279914

/-- `A053139(n+1)+A000203(n+1)` -/
def P11980718537466159758.Spec : Prop :=
  ∀ n, P11980718537466159758.a n = A279914 (n + 1)

end A279914

/-! ## A279914.P8917656718477043452

`A065387(n+1)-A008683(n+1)`
-/

namespace A279914.P8917656718477043452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065387 (n + 1) - A008683 (n + 1)

end

end A279914.P8917656718477043452

namespace A279914

/-- `A065387(n+1)-A008683(n+1)` -/
def P8917656718477043452.Spec : Prop :=
  ∀ n, P8917656718477043452.a n = A279914 (n + 1)

end A279914

/-! ## A279914.P7665201438644556473

`A155085(n+1)-A228620(n+1)`
-/

namespace A279914.P7665201438644556473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (n + 1) - A228620 (n + 1)

end

end A279914.P7665201438644556473

namespace A279914

/-- `A155085(n+1)-A228620(n+1)` -/
def P7665201438644556473.Spec : Prop :=
  ∀ n, P7665201438644556473.a n = A279914 (n + 1)

end A279914

/-! ## A279914.P7058192404829926406

`A053139(n+1)+sqrt(A072861(n+1))`
-/

namespace A279914.P7058192404829926406
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053139 (n + 1) : ℝ) + Real.sqrt (A072861 (n + 1) : ℝ)

end

end A279914.P7058192404829926406

namespace A279914

/-- `A053139(n+1)+sqrt(A072861(n+1))` -/
def P7058192404829926406.Spec : Prop :=
  ∀ n, P7058192404829926406.a n = (A279914 (n + 1) : ℝ)

end A279914

/-! ## A279914.P5251196909344972298

`A065387(n+1)+1-A007423(n+1)`
-/

namespace A279914.P5251196909344972298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065387 (n + 1) + (1 - A007423 (n + 1))

end

end A279914.P5251196909344972298

namespace A279914

/-- `A065387(n+1)+1-A007423(n+1)` -/
def P5251196909344972298.Spec : Prop :=
  ∀ n, P5251196909344972298.a n = A279914 (n + 1)

end A279914

/-! ## A279914.P15551990475840250076

`n+1+A053139(n+1)+A001065(n+1)`
-/

namespace A279914.P15551990475840250076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A053139 (n + 1) + A001065 (n + 1))

end

end A279914.P15551990475840250076

namespace A279914

/-- `n+1+A053139(n+1)+A001065(n+1)` -/
def P15551990475840250076.Spec : Prop :=
  ∀ n, P15551990475840250076.a n = A279914 (n + 1)

end A279914

/-! ## A279914.P14228104789947785369

`Δ[n²-1+n]+A053139(n+1)+A033880(n+1)`
-/

namespace A279914.P14228104789947785369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A053139 (n + 1) + A033880 (n + 1))

end

end A279914.P14228104789947785369

namespace A279914

/-- `Δ[n²-1+n]+A053139(n+1)+A033880(n+1)` -/
def P14228104789947785369.Spec : Prop :=
  ∀ n, P14228104789947785369.a n = A279914 (n + 1)

end A279914

/-! ## A279914.P5375811488913115638

`A245092(A005408(n))+A053139(n+1)`
-/

namespace A279914.P5375811488913115638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A005408 n).toNat + A053139 (n + 1)

end

end A279914.P5375811488913115638

namespace A279914

/-- `A245092(A005408(n))+A053139(n+1)` -/
def P5375811488913115638.Spec : Prop :=
  ∀ n, P5375811488913115638.a n = A279914 (n + 1)

end A279914

/-! ## A279914.P6355270235983132313

`A065387(n+1)-Δ[A100198(n)]`
-/

namespace A279914.P6355270235983132313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100198 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065387 (n + 1) - (f1 (n + 1) - f1 n)

end

end A279914.P6355270235983132313

namespace A279914

/-- `A065387(n+1)-Δ[A100198(n)]` -/
def P6355270235983132313.Spec : Prop :=
  ∀ n, P6355270235983132313.a n = A279914 (n + 1)

end A279914

/-!
# A279915: Numbers m that can be written as x*y with phi(x)*sigma(y) = 2*x*y, where x and y are positive integers, phi(.) is Euler's totient function and sigma(y) is the sum of all positive divisors of y.

The programs for A279915, there is no canonical definition to state claims against.
-/

/-! ## A279915.P8446540573576160536

`record[A009194(A325994(2*n+1))]`
-/

namespace A279915.P8446540573576160536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009194 (A325994 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279915.P8446540573576160536

/-!
# A279918: Expansion of f(-x^2)^7 / (f(x) * f(-x^8)^2) in powers of x where f() is a Ramanujan theta function.

The programs for A279918, there is no canonical definition to state claims against.
-/

/-! ## A279918.P13242319555534560579

`A279955(2*n)`
-/

namespace A279918.P13242319555534560579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279955 (2 * n)

end

end A279918.P13242319555534560579

/-! ## A279918.P8825350349928521211

`A280339(2*n)`
-/

namespace A279918.P8825350349928521211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280339 (2 * n)

end

end A279918.P8825350349928521211

/-! ## A279918.P15125397303730138534

`xor(1, xor(1, A280339(n+n)))`
-/

namespace A279918.P15125397303730138534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A280339 (n + n)))

end

end A279918.P15125397303730138534

/-! ## A279918.P686976962804404871

`A279955(A005843(n))^C(2, C(2, n²))`
-/

namespace A279918.P686976962804404871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279955 (A005843 n).toNat ^ Nat.choose 2 (Nat.choose 2 (n ^ 2))

end

end A279918.P686976962804404871

/-! ## A279918.P18038626684928612795

`or(A000007(n), A279955(A005843(n)))`
-/

namespace A279918.P18038626684928612795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A279955 (A005843 n).toNat)

end

end A279918.P18038626684928612795

/-! ## A279918.P17571744530615432892

`A279955(A005843(n))^A000108(C(2, n+1))`
-/

namespace A279918.P17571744530615432892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279955 (A005843 n).toNat : ℚ) ^ (A000108 (Nat.choose 2 (n + 1)) : ℤ)

end

end A279918.P17571744530615432892

/-! ## A279918.P597929275082860250

`A280339(n+n)%A280339(A091998(n+1))`
-/

namespace A279918.P597929275082860250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280339 (n + n)) (A280339 (A091998 (n + 1)).toNat)

end

end A279918.P597929275082860250

/-!
# A279921: Number of nX2 0..2 arrays with no element equal to a strict majority of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A279921, there is no canonical definition to state claims against.
-/

/-! ## A279921.P13599534743142561322

`A279925(∑[dr(n)+2])`
-/

namespace A279921.P13599534743142561322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279925 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A279921.P13599534743142561322

/-! ## A279921.P12134216437072087637

`A279925(∑[n+1]+2)`
-/

namespace A279921.P12134216437072087637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279925 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A279921.P12134216437072087637

/-! ## A279921.P18161028384708258547

`or(char[2], A279925(A133263(n+1)))`
-/

namespace A279921.P18161028384708258547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A279925 (A133263 (n + 1)).toNat)

end

end A279921.P18161028384708258547

/-! ## A279921.P12150115855778906929

`A109038(n)*A279925(A000096(n)+3)`
-/

namespace A279921.P12150115855778906929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109038 n * A279925 (A000096 n + 3).toNat

end

end A279921.P12150115855778906929

/-! ## A279921.P2335930458530297078

`char[A055017(n)]*A279925(A133263(n+1))`
-/

namespace A279921.P2335930458530297078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A279925 (A133263 (n + 1)).toNat

end

end A279921.P2335930458530297078

/-!
# A279922: Number of nX3 0..2 arrays with no element equal to a strict majority of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A279922, there is no canonical definition to state claims against.
-/

/-! ## A279922.P9182849584879930043

`A279925(∑[n+2]+4)`
-/

namespace A279922.P9182849584879930043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279925 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A279922.P9182849584879930043

/-! ## A279922.P4674265969948548197

`ceil(acot(n))*A279925(A167614(n+1))`
-/

namespace A279922.P4674265969948548197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (n : ℝ)⌉ * A279925 (A167614 (n + 1)).toNat

end

end A279922.P4674265969948548197

/-! ## A279922.P11747736387126017862

`record[lcm(A176918(n+4), A279925(n+1))]`
-/

namespace A279922.P11747736387126017862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A176918 (n + 4)) (A279925 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279922.P11747736387126017862

/-! ## A279922.P11448503533654565790

`A279925(A167614(n+1))+A011731(n)`
-/

namespace A279922.P11448503533654565790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279925 (A167614 (n + 1)).toNat + A011731 n

end

end A279922.P11448503533654565790

/-! ## A279922.P6783761638790496354

`A279925(A167614(n+1))+A011738(n)`
-/

namespace A279922.P6783761638790496354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279925 (A167614 (n + 1)).toNat + A011738 n

end

end A279922.P6783761638790496354

/-!
# A279923: Number of nX4 0..2 arrays with no element equal to a strict majority of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A279923, there is no canonical definition to state claims against.
-/

/-! ## A279923.P16352454452579992452

`A279925(A141214(n)+7)`
-/

namespace A279923.P16352454452579992452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279925 (A141214 n + 7).toNat

end

end A279923.P16352454452579992452

/-! ## A279923.P12173763637794718087

`A279925(A052905(n)+9)`
-/

namespace A279923.P12173763637794718087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279925 (A052905 n + 9).toNat

end

end A279923.P12173763637794718087

/-! ## A279923.P15233237688251603175

`A279925(A055999(n)+10)`
-/

namespace A279923.P15233237688251603175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279925 (A055999 n + 10).toNat

end

end A279923.P15233237688251603175

/-! ## A279923.P8783234264193662953

`A279925(eq[5, A066657(n)])`
-/

namespace A279923.P8783234264193662953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279925 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279923.P8783234264193662953

/-! ## A279923.P13859715476689267319

`A279925(A167614(n+2)+1)`
-/

namespace A279923.P13859715476689267319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279925 (A167614 (n + 2) + 1).toNat

end

end A279923.P13859715476689267319

/-!
# A279924: Number of nX5 0..2 arrays with no element equal to a strict majority of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A279924, there is no canonical definition to state claims against.
-/

/-! ## A279924.P18271320539915971711

`A279925(A167499(n+3))`
-/

namespace A279924.P18271320539915971711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279925 (A167499 (n + 3)).toNat

end

end A279924.P18271320539915971711

/-! ## A279924.P7661229139945562651

`A279925(A155212(n)+13)`
-/

namespace A279924.P7661229139945562651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279925 (A155212 n + 13).toNat

end

end A279924.P7661229139945562651

/-! ## A279924.P1375432711729137013

`A279925(A056000(n)+15)`
-/

namespace A279924.P1375432711729137013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279925 (A056000 n + 15).toNat

end

end A279924.P1375432711729137013

/-! ## A279924.P16487165094559702551

`A279925(eq[7, A066657(n)])`
-/

namespace A279924.P16487165094559702551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279925 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279924.P16487165094559702551

/-!
# A279925: T(n,k)=Number of nXk 0..2 arrays with no element equal to a strict majority of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A279925, there is no canonical definition to state claims against.
-/

/-! ## A279925.P3006948455007291926

`and(A032810(A132477(n)), A279534(n+1))`
-/

namespace A279925.P3006948455007291926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A032810 (A132477 n).toNat) (A279534 (n + 1))

end

end A279925.P3006948455007291926

/-! ## A279925.P15433034040588765735

`and(A140620(A157221(n)), A279534(n+1))`
-/

namespace A279925.P15433034040588765735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A140620 (A157221 n).toNat) (A279534 (n + 1))

end

end A279925.P15433034040588765735

/-! ## A279925.P10378779041473053907

`and(A006003(A154648(n+1)), A279534(n+1))`
-/

namespace A279925.P10378779041473053907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006003 (A154648 (n + 1)).toNat) (A279534 (n + 1))

end

end A279925.P10378779041473053907

/-! ## A279925.P1332305462511780255

`and(A004771(A193641(n+1)), A279534(n+1))`
-/

namespace A279925.P1332305462511780255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004771 (A193641 (n + 1)).toNat) (A279534 (n + 1))

end

end A279925.P1332305462511780255

/-!
# A279927: Expansion of e.g.f. arctan(x)*exp(x).

The programs for A279927, there is no canonical definition to state claims against.
-/

/-! ## A279927.P9709814725545814702

`∑[A337749(n)]-A337749(n)`
-/

namespace A279927.P9709814725545814702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337749 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A337749 n

end

end A279927.P9709814725545814702

/-! ## A279927.P16797666949033140116

`A015518(n)-A225363(A357644(n))`
-/

namespace A279927.P16797666949033140116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015518 n - A225363 (A357644 n).toNat

end

end A279927.P16797666949033140116

/-! ## A279927.P17124142158491132109

`A185782(A030919(n+1))-A003991(n+1)`
-/

namespace A279927.P17124142158491132109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (A030919 (n + 1)).toNat - A003991 (n + 1)

end

end A279927.P17124142158491132109

/-!
# A279928: Square array A(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of Product_{j>=1} 1/(1+x^j)^(j*k) in powers of x.

The programs for A279928, there is no canonical definition to state claims against.
-/

/-! ## A279928.P3340588597300365514

`A297325(n)-A125005(A326323(n))`
-/

namespace A279928.P3340588597300365514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 n - A125005 (A326323 n).toNat

end

end A279928.P3340588597300365514

/-! ## A279928.P1089346387426788689

`A297325(n)-∑{p}[A328284(n), val(n+1, #)]`
-/

namespace A279928.P1089346387426788689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328284 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 n - ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, SequenceMachineLib.valuation (n + 1) p : ℕ) : ℤ)

end

end A279928.P1089346387426788689

/-! ## A279928.P8627238241015007884

`A297325(n)-A089311(A094544(n))`
-/

namespace A279928.P8627238241015007884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 n - A089311 (A094544 n).toNat

end

end A279928.P8627238241015007884

/-! ## A279928.P509601021346016877

`A297325(n)-A025469(A163661(n))`
-/

namespace A279928.P509601021346016877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 n - A025469 (A163661 n).toNat

end

end A279928.P509601021346016877

/-! ## A279928.P11165883897759638049

`A297325(n)-A151795(A060475(n))`
-/

namespace A279928.P11165883897759638049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 n - A151795 (A060475 n).toNat

end

end A279928.P11165883897759638049

/-!
# A279929: Expansion of c(q)*c(q^2)/9 - c(q^3)*c(q^6)/3 in powers of q where c() is a cubic AGM theta function.

The programs for A279929, the canonical program `A279929.P8314140879303540729` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279929 has offset 1).

The definition of A279929 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A279929.P2107200868943532870

`(n+1)²%3*A000593(n+1)`
-/

namespace A279929.P2107200868943532870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2 % 3 : ℕ) : ℤ) * A000593 (n + 1)

end

end A279929.P2107200868943532870

namespace A279929

/-- `(n+1)²%3*A000593(n+1)` -/
def P2107200868943532870.Spec : Prop :=
  ∀ n, P2107200868943532870.a n = A279929 (n + 1)

end A279929

/-! ## A279929.P1471333208852088096

`∑{d}[n+1, #]/xor(n, n+1)*∑[A057078(n)]`
-/

namespace A279929.P1471333208852088096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (Nat.xor n (n + 1) : ℚ) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ)

end

end A279929.P1471333208852088096

namespace A279929

/-- `∑{d}[n+1, #]/xor(n, n+1)*∑[A057078(n)]` -/
def P1471333208852088096.Spec : Prop :=
  ∀ n, P1471333208852088096.a n = (A279929 (n + 1) : ℚ)

end A279929

/-! ## A279929.P8141437513662192418

`∑{d}[n+1, #]/xor(n, n+1)*A000035(2^val(n+1, 3))`
-/

namespace A279929.P8141437513662192418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (Nat.xor n (n + 1) : ℚ) * (A000035 (2 ^ SequenceMachineLib.valuation (n + 1) 3) : ℚ)

end

end A279929.P8141437513662192418

namespace A279929

/-- `∑{d}[n+1, #]/xor(n, n+1)*A000035(2^val(n+1, 3))` -/
def P8141437513662192418.Spec : Prop :=
  ∀ n, P8141437513662192418.a n = (A279929 (n + 1) : ℚ)

end A279929

/-! ## A279929.P10785660629291131305

`∑{d}[n+1, #]/xor(n, n+1)*A063524(2^val(n+1, 3))`
-/

namespace A279929.P10785660629291131305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (Nat.xor n (n + 1) : ℚ) * (A063524 (2 ^ SequenceMachineLib.valuation (n + 1) 3) : ℚ)

end

end A279929.P10785660629291131305

namespace A279929

/-- `∑{d}[n+1, #]/xor(n, n+1)*A063524(2^val(n+1, 3))` -/
def P10785660629291131305.Spec : Prop :=
  ∀ n, P10785660629291131305.a n = (A279929 (n + 1) : ℚ)

end A279929

/-! ## A279929.P7446486055249431354

`lcm(A000593(n+1), A010892(n))`
-/

namespace A279929.P7446486055249431354
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000593 (n + 1)) (A010892 n)

end

end A279929.P7446486055249431354

namespace A279929

/-- `lcm(A000593(n+1), A010892(n))` -/
def P7446486055249431354.Spec : Prop :=
  ∀ n, (P7446486055249431354.a n : ℤ) = A279929 (n + 1)

end A279929

/-! ## A279929.P6370041582942489710

`lcm(A049347(n), A115607(n+1))`
-/

namespace A279929.P6370041582942489710
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A049347 n) (A115607 (n + 1))

end

end A279929.P6370041582942489710

namespace A279929

/-- `lcm(A049347(n), A115607(n+1))` -/
def P6370041582942489710.Spec : Prop :=
  ∀ n, (P6370041582942489710.a n : ℤ) = A279929 (n + 1)

end A279929

/-! ## A279929.P6731317944453787795

`lcm(A117441(n), A121443(n+1))`
-/

namespace A279929.P6731317944453787795
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A117441 n) (A121443 (n + 1))

end

end A279929.P6731317944453787795

namespace A279929

/-- `lcm(A117441(n), A121443(n+1))` -/
def P6731317944453787795.Spec : Prop :=
  ∀ n, (P6731317944453787795.a n : ℤ) = A279929 (n + 1)

end A279929

/-! ## A279929.P8356684698553591954

`A000593(n+1)%A080322(n+2)`
-/

namespace A279929.P8356684698553591954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000593 (n + 1)) (A080322 (n + 2))

end

end A279929.P8356684698553591954

namespace A279929

/-- `A000593(n+1)%A080322(n+2)` -/
def P8356684698553591954.Spec : Prop :=
  ∀ n, P8356684698553591954.a n = A279929 (n + 1)

end A279929

/-! ## A279929.P6556484056713374594

`A121443(n+1)%A080322(n+2)`
-/

namespace A279929.P6556484056713374594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121443 (n + 1)) (A080322 (n + 2))

end

end A279929.P6556484056713374594

namespace A279929

/-- `A121443(n+1)%A080322(n+2)` -/
def P6556484056713374594.Spec : Prop :=
  ∀ n, P6556484056713374594.a n = A279929 (n + 1)

end A279929

/-! ## A279929.P8314140879303540729

`A131944(n+1)%A080322(n+2)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A279929

/-- `A131944(n+1)%A080322(n+2)` -/
def P8314140879303540729.Spec : Prop :=
  ∀ n, P8314140879303540729.a n = A279929 (n + 1)

theorem P8314140879303540729.correct : P8314140879303540729.Spec := by
  intro n
  simp only [A279929, Nat.add_sub_cancel]

end A279929

/-! ## A279929.P7548016909902035822

`A186099(n+1)%A080322(n+2)`
-/

namespace A279929.P7548016909902035822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186099 (n + 1)) (A080322 (n + 2))

end

end A279929.P7548016909902035822

namespace A279929

/-- `A186099(n+1)%A080322(n+2)` -/
def P7548016909902035822.Spec : Prop :=
  ∀ n, P7548016909902035822.a n = A279929 (n + 1)

end A279929

/-! ## A279929.P3533077785692610384

`A224976(n+1)%A080322(n+2)`
-/

namespace A279929.P3533077785692610384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224976 (n + 1)) (A080322 (n + 2))

end

end A279929.P3533077785692610384

namespace A279929

/-- `A224976(n+1)%A080322(n+2)` -/
def P3533077785692610384.Spec : Prop :=
  ∀ n, P3533077785692610384.a n = A279929 (n + 1)

end A279929

/-! ## A279929.P17074591691534765530

`A281785(n+1)%A080322(n+2)`
-/

namespace A279929.P17074591691534765530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281785 (n + 1)) (A080322 (n + 2))

end

end A279929.P17074591691534765530

namespace A279929

/-- `A281785(n+1)%A080322(n+2)` -/
def P17074591691534765530.Spec : Prop :=
  ∀ n, P17074591691534765530.a n = A279929 (n + 1)

end A279929

/-! ## A279929.P5225033895275485605

`A284362(n+1)%A080322(n+2)`
-/

namespace A279929.P5225033895275485605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284362 (n + 1)) (A080322 (n + 2))

end

end A279929.P5225033895275485605

namespace A279929

/-- `A284362(n+1)%A080322(n+2)` -/
def P5225033895275485605.Spec : Prop :=
  ∀ n, P5225033895275485605.a n = A279929 (n + 1)

end A279929

/-! ## A279929.P8912498123027436681

`A318876(n+1)%A080322(n+2)`
-/

namespace A279929.P8912498123027436681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318876 (n + 1)) (A080322 (n + 2))

end

end A279929.P8912498123027436681

namespace A279929

/-- `A318876(n+1)%A080322(n+2)` -/
def P8912498123027436681.Spec : Prop :=
  ∀ n, P8912498123027436681.a n = A279929 (n + 1)

end A279929

/-! ## A279929.P16701692911282471567

`lcm(A091338(n+1), A131944(n+1))`
-/

namespace A279929.P16701692911282471567
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A091338 (n + 1)) (A131944 (n + 1))

end

end A279929.P16701692911282471567

namespace A279929

/-- `lcm(A091338(n+1), A131944(n+1))` -/
def P16701692911282471567.Spec : Prop :=
  ∀ n, (P16701692911282471567.a n : ℤ) = A279929 (n + 1)

end A279929

/-! ## A279929.P15770145538808212048

`lcm(A186099(n+1), A359378(n+1))`
-/

namespace A279929.P15770145538808212048
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A186099 (n + 1)) (A359378 (n + 1))

end

end A279929.P15770145538808212048

namespace A279929

/-- `lcm(A186099(n+1), A359378(n+1))` -/
def P15770145538808212048.Spec : Prop :=
  ∀ n, (P15770145538808212048.a n : ℤ) = A279929 (n + 1)

end A279929

/-! ## A279929.P8236345056169215125

`A359378(n+1)²*A224976(n+1)`
-/

namespace A279929.P8236345056169215125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359378 (n + 1) ^ 2 * A224976 (n + 1)

end

end A279929.P8236345056169215125

namespace A279929

/-- `A359378(n+1)²*A224976(n+1)` -/
def P8236345056169215125.Spec : Prop :=
  ∀ n, P8236345056169215125.a n = A279929 (n + 1)

end A279929

/-! ## A279929.P10760260484248308862

`A359378(n+1)²*A281785(n+1)`
-/

namespace A279929.P10760260484248308862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359378 (n + 1) ^ 2 * A281785 (n + 1)

end

end A279929.P10760260484248308862

namespace A279929

/-- `A359378(n+1)²*A281785(n+1)` -/
def P10760260484248308862.Spec : Prop :=
  ∀ n, P10760260484248308862.a n = A279929 (n + 1)

end A279929

/-! ## A279929.P1914300293249688082

`(1-Δ[A002264(n)])*A000593(n+1)`
-/

namespace A279929.P1914300293249688082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (f1 (n + 1) - f1 n)) * A000593 (n + 1)

end

end A279929.P1914300293249688082

namespace A279929

/-- `(1-Δ[A002264(n)])*A000593(n+1)` -/
def P1914300293249688082.Spec : Prop :=
  ∀ n, P1914300293249688082.a n = A279929 (n + 1)

end A279929

/-!
# A279930: Numbers which are highly composite and highly Brazilian.

The programs for A279930, there is no canonical definition to state claims against.
-/

/-! ## A279930.P18200993787484248894

`record[gcd(A061799(n+1), A162298(n))]`
-/

namespace A279930.P18200993787484248894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061799 (n + 1)) (A162298 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279930.P18200993787484248894

/-! ## A279930.P1684019010034091656

`∩[A002182(n+1), A066044(n+1)]`
-/

namespace A279930.P1684019010034091656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066044 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A279930.P1684019010034091656

/-! ## A279930.P6474253967593679218

`∩[A004778(n+1), A066044(n+1)]`
-/

namespace A279930.P6474253967593679218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066044 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A279930.P6474253967593679218

/-! ## A279930.P5758989549077852306

`∩[A002182(n+1), A329383(n+1)]`
-/

namespace A279930.P5758989549077852306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A279930.P5758989549077852306

/-! ## A279930.P11962426908090425843

`∩[A004778(n+1), A329383(n+1)]`
-/

namespace A279930.P11962426908090425843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A279930.P11962426908090425843

/-! ## A279930.P12575621721490838794

`record[gcd(A001842(n+9), A061799(n+7))]`
-/

namespace A279930.P12575621721490838794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001842 (n + 9)) (A061799 (n + 7))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279930.P12575621721490838794

/-! ## A279930.P13970114971895005851

`record[A061799(A063539(A026242(n+1)))]`
-/

namespace A279930.P13970114971895005851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (A063539 (A026242 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279930.P13970114971895005851

/-! ## A279930.P3467438596331753959

`record[A061799(n+1)%A002110(A033273(n+1))]`
-/

namespace A279930.P3467438596331753959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061799 (n + 1)) (A002110 (A033273 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279930.P3467438596331753959

/-!
# A279932: Expansion of Product_{k>0} 1/(1 + x^k)^(k*5).

The programs for A279932, there is no canonical definition to state claims against.
-/

/-! ## A279932.P8578797746340681194

`A279928(A055999(n+3))`
-/

namespace A279932.P8578797746340681194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279928 (A055999 (n + 3)).toNat

end

end A279932.P8578797746340681194

/-! ## A279932.P7324067523275655425

`A279928(Δ[A023551(n+1)])`
-/

namespace A279932.P7324067523275655425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279928 (f1 (n + 1) - f1 n).toNat

end

end A279932.P7324067523275655425

/-! ## A279932.P1668028683362510996

`A279928(A055998(n+4)-3)`
-/

namespace A279932.P1668028683362510996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279928 (A055998 (n + 4) - 3).toNat

end

end A279932.P1668028683362510996

/-! ## A279932.P15151607085924774718

`A279928(A000217(n+6)-6)`
-/

namespace A279932.P15151607085924774718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279928 (A000217 (n + 6) - 6).toNat

end

end A279932.P15151607085924774718

/-! ## A279932.P6050184925267097116

`A279928(A000096(n+4)+n+1)`
-/

namespace A279932.P6050184925267097116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279928 (A000096 (n + 4) + (n + 1 : ℤ)).toNat

end

end A279932.P6050184925267097116

/-!
# A279933: Positive integers k such that {(k-1)*r} < 1/2, where r = golden ratio = (1 + sqrt(5))/2 and { } = fractional part.

The programs for A279933, the canonical program `A279933.P135696941930136663` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279933 has offset 1).

The definition of A279933 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A279933.P11033678757764673187

`lt[val(floor(2*n/ϕ)+1, 2), 1]+1`
-/

namespace A279933.P11033678757764673187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (⌊2 * ((n : ℝ) / Real.goldenRatio)⌋ + 1).toNat 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A279933.P11033678757764673187

namespace A279933

/-- `lt[val(floor(2*n/ϕ)+1, 2), 1]+1` -/
def P11033678757764673187.Spec : Prop :=
  ∀ n, (P11033678757764673187.a n : ℤ) = A279933 (n + 1)

end A279933

/-! ## A279933.P5204282622606749246

`record[gcd(n+1, (floor(n*ϕ²)-round(n*ϕ²))²)]`
-/

namespace A279933.P5204282622606749246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) ((⌊(n : ℝ) * Real.goldenRatio ^ 2⌋ - SequenceMachineLib.roundAway ((n : ℝ) * Real.goldenRatio ^ 2)) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279933.P5204282622606749246

namespace A279933

/-- `record[gcd(n+1, (floor(n*ϕ²)-round(n*ϕ²))²)]` -/
def P5204282622606749246.Spec : Prop :=
  ∀ n, (P5204282622606749246.a n : ℤ) = A279933 (n + 1)

end A279933

/-! ## A279933.P135696941930136663

`eq[0, A078588(n)]+1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A279933

/-- `eq[0, A078588(n)]+1` -/
def P135696941930136663.Spec : Prop :=
  ∀ n, (P135696941930136663.a n : ℤ) = A279933 (n + 1)

theorem P135696941930136663.correct : P135696941930136663.Spec := by
  intro n
  simp only [A279933, Nat.add_sub_cancel]

end A279933

/-! ## A279933.P13848381176283002735

`comp[A005652(n+1)]+1`
-/

namespace A279933.P13848381176283002735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A279933.P13848381176283002735

namespace A279933

/-- `comp[A005652(n+1)]+1` -/
def P13848381176283002735.Spec : Prop :=
  ∀ n, (P13848381176283002735.a n : ℤ) = A279933 (n + 1)

end A279933

/-! ## A279933.P15058892829927900375

`comp[lt[val(A001962(n+1), 2), 1]+1]+1`
-/

namespace A279933.P15058892829927900375
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001962 (n + 1)).toNat 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A279933.P15058892829927900375

namespace A279933

/-- `comp[lt[val(A001962(n+1), 2), 1]+1]+1` -/
def P15058892829927900375.Spec : Prop :=
  ∀ n, (P15058892829927900375.a n : ℤ) = A279933 (n + 1)

end A279933

/-! ## A279933.P12033386653999850785

`record[n+1-A000217(n*A078588(n))]`
-/

namespace A279933.P12033386653999850785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000217 ((n : ℤ) * A078588 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279933.P12033386653999850785

namespace A279933

/-- `record[n+1-A000217(n*A078588(n))]` -/
def P12033386653999850785.Spec : Prop :=
  ∀ n, P12033386653999850785.a n = A279933 (n + 1)

end A279933

/-! ## A279933.P16740836523935397615

`record[n+1-A000040(n+1)*A078588(n)]`
-/

namespace A279933.P16740836523935397615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000040 (n + 1) * A078588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279933.P16740836523935397615

namespace A279933

/-- `record[n+1-A000040(n+1)*A078588(n)]` -/
def P16740836523935397615.Spec : Prop :=
  ∀ n, P16740836523935397615.a n = A279933 (n + 1)

end A279933

/-! ## A279933.P9811350981759331953

`record[n+1-A006530(n+1)*A078588(n)]`
-/

namespace A279933.P9811350981759331953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A006530 (n + 1) * A078588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279933.P9811350981759331953

namespace A279933

/-- `record[n+1-A006530(n+1)*A078588(n)]` -/
def P9811350981759331953.Spec : Prop :=
  ∀ n, P9811350981759331953.a n = A279933 (n + 1)

end A279933

/-! ## A279933.P18072805719260983540

`record[A002251(A007067(n+1))-A002251(n)]`
-/

namespace A279933.P18072805719260983540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (A007067 (n + 1)).toNat - A002251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279933.P18072805719260983540

namespace A279933

/-- `record[A002251(A007067(n+1))-A002251(n)]` -/
def P18072805719260983540.Spec : Prop :=
  ∀ n, P18072805719260983540.a n = A279933 (n + 1)

end A279933

/-! ## A279933.P7193491660220244112

`record[(n+2)/A089808(n+1)]`
-/

namespace A279933.P7193491660220244112
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A089808 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279933.P7193491660220244112

namespace A279933

/-- `record[(n+2)/A089808(n+1)]` -/
def P7193491660220244112.Spec : Prop :=
  ∀ n, P7193491660220244112.a n = (A279933 (n + 1) : ℚ)

end A279933

/-! ## A279933.P7389578079266710381

`eq[2, A020639(A284624(2*n+1))]+1`
-/

namespace A279933.P7389578079266710381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A284624 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A279933.P7389578079266710381

namespace A279933

/-- `eq[2, A020639(A284624(2*n+1))]+1` -/
def P7389578079266710381.Spec : Prop :=
  ∀ n, (P7389578079266710381.a n : ℤ) = A279933 (n + 1)

end A279933

/-! ## A279933.P2943722343076387776

`record[A032742(A026242(2*(n+1))+2)]`
-/

namespace A279933.P2943722343076387776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A026242 (2 * (n + 1)) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279933.P2943722343076387776

namespace A279933

/-- `record[A032742(A026242(2*(n+1))+2)]` -/
def P2943722343076387776.Spec : Prop :=
  ∀ n, P2943722343076387776.a n = A279933 (n + 1)

end A279933

/-! ## A279933.P7417414758133284756

`A023443(record[A002251(n+1)-A002251(2*n)])`
-/

namespace A279933.P7417414758133284756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (n + 1) - A002251 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A279933.P7417414758133284756

namespace A279933

/-- `A023443(record[A002251(n+1)-A002251(2*n)])` -/
def P7417414758133284756.Spec : Prop :=
  ∀ n, P7417414758133284756.a n = A279933 (n + 1)

end A279933

/-! ## A279933.P928459192262904325

`eq[2, A001468(A284621(n+1))]+1`
-/

namespace A279933.P928459192262904325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 (A284621 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A279933.P928459192262904325

namespace A279933

/-- `eq[2, A001468(A284621(n+1))]+1` -/
def P928459192262904325.Spec : Prop :=
  ∀ n, (P928459192262904325.a n : ℤ) = A279933 (n + 1)

end A279933

/-! ## A279933.P14725862511614354877

`lt[A189661(A288713(n+1)), 1]+1`
-/

namespace A279933.P14725862511614354877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189661 (A288713 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A279933.P14725862511614354877

namespace A279933

/-- `lt[A189661(A288713(n+1)), 1]+1` -/
def P14725862511614354877.Spec : Prop :=
  ∀ n, (P14725862511614354877.a n : ℤ) = A279933 (n + 1)

end A279933

/-! ## A279933.P15025502075003835957

`record[A001057(A019444(2*n+1))-n]`
-/

namespace A279933.P15025502075003835957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A019444 (2 * n + 1)).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279933.P15025502075003835957

namespace A279933

/-- `record[A001057(A019444(2*n+1))-n]` -/
def P15025502075003835957.Spec : Prop :=
  ∀ n, P15025502075003835957.a n = A279933 (n + 1)

end A279933

/-!
# A279934: Positive integers k such that {(k-1)*r} > 1/2, where r = golden ratio = (1 + sqrt(5))/2 and { } = fractional part.

The programs for A279934, the canonical program `A279934.P3342387130069850537` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279934 has offset 1).

The definition of A279934 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005652, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A279934.P3342387130069850537

`1+A005652(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A279934

/-- `1+A005652(n+1)` -/
def P3342387130069850537.Spec : Prop :=
  ∀ n, P3342387130069850537.a n = A279934 (n + 1)

theorem P3342387130069850537.correct : P3342387130069850537.Spec := by
  intro n
  simp only [A279934, Nat.add_sub_cancel]

end A279934

/-! ## A279934.P12406354013812160343

`lt[0, floor(2*ϕ*n)%2]+1`
-/

namespace A279934.P12406354013812160343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊2 * (Real.goldenRatio * (n : ℝ))⌋ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A279934.P12406354013812160343

namespace A279934

/-- `lt[0, floor(2*ϕ*n)%2]+1` -/
def P12406354013812160343.Spec : Prop :=
  ∀ n, (P12406354013812160343.a n : ℤ) = A279934 (n + 1)

end A279934

/-! ## A279934.P14968377169562427602

`eq[1, gcd(2, floor(2*ϕ*n))]+1`
-/

namespace A279934.P14968377169562427602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 ⌊2 * (Real.goldenRatio * (n : ℝ))⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A279934.P14968377169562427602

namespace A279934

/-- `eq[1, gcd(2, floor(2*ϕ*n))]+1` -/
def P14968377169562427602.Spec : Prop :=
  ∀ n, (P14968377169562427602.a n : ℤ) = A279934 (n + 1)

end A279934

/-! ## A279934.P12280371679908952973

`A191331(n+1)/2+1`
-/

namespace A279934.P12280371679908952973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191331 (n + 1) : ℚ) / 2 + 1

end

end A279934.P12280371679908952973

namespace A279934

/-- `A191331(n+1)/2+1` -/
def P12280371679908952973.Spec : Prop :=
  ∀ n, P12280371679908952973.a n = (A279934 (n + 1) : ℚ)

end A279934

/-! ## A279934.P17217979232930084434

`record[A191329(2*(n+1))+n]`
-/

namespace A279934.P17217979232930084434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191329 (2 * (n + 1)) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279934.P17217979232930084434

namespace A279934

/-- `record[A191329(2*(n+1))+n]` -/
def P17217979232930084434.Spec : Prop :=
  ∀ n, P17217979232930084434.a n = A279934 (n + 1)

end A279934

/-! ## A279934.P11754805140924532027

`∪[A190443(n+1), A026352(n)]+1`
-/

namespace A279934.P11754805140924532027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026352 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A279934.P11754805140924532027

namespace A279934

/-- `∪[A190443(n+1), A026352(n)]+1` -/
def P11754805140924532027.Spec : Prop :=
  ∀ n, (P11754805140924532027.a n : ℤ) = A279934 (n + 1)

end A279934

/-! ## A279934.P7555611534741588532

`∪[A003234(n+1), A190443(n+1)]+1`
-/

namespace A279934.P7555611534741588532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A279934.P7555611534741588532

namespace A279934

/-- `∪[A003234(n+1), A190443(n+1)]+1` -/
def P7555611534741588532.Spec : Prop :=
  ∀ n, (P7555611534741588532.a n : ℤ) = A279934 (n + 1)

end A279934

/-! ## A279934.P6729831980639783108

`∪[A140400(n+1), A190443(n+1)]+1`
-/

namespace A279934.P6729831980639783108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140400 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A279934.P6729831980639783108

namespace A279934

/-- `∪[A140400(n+1), A190443(n+1)]+1` -/
def P6729831980639783108.Spec : Prop :=
  ∀ n, (P6729831980639783108.a n : ℤ) = A279934 (n + 1)

end A279934

/-! ## A279934.P6348767779882912672

`∪[A187952(n+1), A190443(n+1)]+1`
-/

namespace A279934.P6348767779882912672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A279934.P6348767779882912672

namespace A279934

/-- `∪[A187952(n+1), A190443(n+1)]+1` -/
def P6348767779882912672.Spec : Prop :=
  ∀ n, (P6348767779882912672.a n : ℤ) = A279934 (n + 1)

end A279934

/-! ## A279934.P18430293954325835208

`∪[A188018(n+1), A190443(n+1)]+1`
-/

namespace A279934.P18430293954325835208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A279934.P18430293954325835208

namespace A279934

/-- `∪[A188018(n+1), A190443(n+1)]+1` -/
def P18430293954325835208.Spec : Prop :=
  ∀ n, (P18430293954325835208.a n : ℤ) = A279934 (n + 1)

end A279934

/-! ## A279934.P1403701352371847776

`∪[A188028(n+1), A190443(n+1)]+1`
-/

namespace A279934.P1403701352371847776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A279934.P1403701352371847776

namespace A279934

/-- `∪[A188028(n+1), A190443(n+1)]+1` -/
def P1403701352371847776.Spec : Prop :=
  ∀ n, (P1403701352371847776.a n : ℤ) = A279934 (n + 1)

end A279934

/-! ## A279934.P863746591585397776

`∪[A188473(n+1), A190443(n+1)]+1`
-/

namespace A279934.P863746591585397776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A279934.P863746591585397776

namespace A279934

/-- `∪[A188473(n+1), A190443(n+1)]+1` -/
def P863746591585397776.Spec : Prop :=
  ∀ n, (P863746591585397776.a n : ℤ) = A279934 (n + 1)

end A279934

/-! ## A279934.P14758972668548716900

`∪[A190251(n+1), A190443(n+1)]+1`
-/

namespace A279934.P14758972668548716900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A279934.P14758972668548716900

namespace A279934

/-- `∪[A190251(n+1), A190443(n+1)]+1` -/
def P14758972668548716900.Spec : Prop :=
  ∀ n, (P14758972668548716900.a n : ℤ) = A279934 (n + 1)

end A279934

/-! ## A279934.P4694689219782693072

`∪[A190430(n+1), A190443(n+1)]+1`
-/

namespace A279934.P4694689219782693072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A279934.P4694689219782693072

namespace A279934

/-- `∪[A190430(n+1), A190443(n+1)]+1` -/
def P4694689219782693072.Spec : Prop :=
  ∀ n, (P4694689219782693072.a n : ℤ) = A279934 (n + 1)

end A279934

/-! ## A279934.P5378013717130809844

`comp[A005653(n+1)-1]+2`
-/

namespace A279934.P5378013717130809844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005653 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A279934.P5378013717130809844

namespace A279934

/-- `comp[A005653(n+1)-1]+2` -/
def P5378013717130809844.Spec : Prop :=
  ∀ n, (P5378013717130809844.a n : ℤ) = A279934 (n + 1)

end A279934

/-! ## A279934.P6862465303657979565

`eq[1, A078588(n)]+1`
-/

namespace A279934.P6862465303657979565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078588 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A279934.P6862465303657979565

namespace A279934

/-- `eq[1, A078588(n)]+1` -/
def P6862465303657979565.Spec : Prop :=
  ∀ n, (P6862465303657979565.a n : ℤ) = A279934 (n + 1)

end A279934

/-! ## A279934.P13551742032998231287

`eq[1, A024569(n+1)]+2`
-/

namespace A279934.P13551742032998231287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024569 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A279934.P13551742032998231287

namespace A279934

/-- `eq[1, A024569(n+1)]+2` -/
def P13551742032998231287.Spec : Prop :=
  ∀ n, (P13551742032998231287.a n : ℤ) = A279934 (n + 1)

end A279934

/-! ## A279934.P12071571977543347258

`lt[A089809(n+1), 1]+2`
-/

namespace A279934.P12071571977543347258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089809 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A279934.P12071571977543347258

namespace A279934

/-- `lt[A089809(n+1), 1]+2` -/
def P12071571977543347258.Spec : Prop :=
  ∀ n, (P12071571977543347258.a n : ℤ) = A279934 (n + 1)

end A279934

/-! ## A279934.P1388066398545148873

`lt[val(A001962(n+1), 2), 1]+2`
-/

namespace A279934.P1388066398545148873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001962 (n + 1)).toNat 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A279934.P1388066398545148873

namespace A279934

/-- `lt[val(A001962(n+1), 2), 1]+2` -/
def P1388066398545148873.Spec : Prop :=
  ∀ n, (P1388066398545148873.a n : ℤ) = A279934 (n + 1)

end A279934

/-! ## A279934.P16276839788580727276

`A020725(A005652(n+1))`
-/

namespace A279934.P16276839788580727276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A005652 (n + 1)).toNat

end

end A279934.P16276839788580727276

namespace A279934

/-- `A020725(A005652(n+1))` -/
def P16276839788580727276.Spec : Prop :=
  ∀ n, P16276839788580727276.a n = A279934 (n + 1)

end A279934

/-!
# A279936: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 214", based on the 5-celled von Neumann neighborhood.

The programs for A279936, there is no canonical definition to state claims against.
-/

/-! ## A279936.P17070954942767659681

`A007088(A279938(n))`
-/

namespace A279936.P17070954942767659681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279938 n).toNat

end

end A279936.P17070954942767659681

/-! ## A279936.P17103520490294078167

`A185544(2*A279938(n))`
-/

namespace A279936.P17103520490294078167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A279938 n).toNat

end

end A279936.P17103520490294078167

/-! ## A279936.P13229730888861106624

`A185544(A279938(n)+A279938(n))`
-/

namespace A279936.P13229730888861106624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A279938 n + A279938 n).toNat

end

end A279936.P13229730888861106624

/-!
# A279937: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 214", based on the 5-celled von Neumann neighborhood.

The programs for A279937, there is no canonical definition to state claims against.
-/

/-! ## A279937.P12854054052306239757

`A007088(A279939(n))`
-/

namespace A279937.P12854054052306239757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279939 n).toNat

end

end A279937.P12854054052306239757

/-! ## A279937.P1316220912725075912

`A305989(A279938(n)/A014709(n))`
-/

namespace A279937.P1316220912725075912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway ((A279938 n : ℚ) / (A014709 n : ℚ))).toNat

end

end A279937.P1316220912725075912

/-! ## A279937.P10944168888789883486

`A305989(A279938(n)/A055642(n))`
-/

namespace A279937.P10944168888789883486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway ((A279938 n : ℚ) / (A055642 n : ℚ))).toNat

end

end A279937.P10944168888789883486

/-! ## A279937.P7696151089032548832

`A305989(A279938(n)/A279951(n))`
-/

namespace A279937.P7696151089032548832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway ((A279938 n : ℚ) / (A279951 n : ℚ))).toNat

end

end A279937.P7696151089032548832

/-! ## A279937.P8670292975053633324

`A185544(2*A279939(n))`
-/

namespace A279937.P8670292975053633324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A279939 n).toNat

end

end A279937.P8670292975053633324

/-!
# A279939: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 214", based on the 5-celled von Neumann neighborhood.

The programs for A279939, there is no canonical definition to state claims against.
-/

/-! ## A279939.P4824524632728674395

`A030101(lcm(2, A279938(n))/2)`
-/

namespace A279939.P4824524632728674395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway ((Int.lcm 2 (A279938 n) : ℚ) / 2)).toNat

end

end A279939.P4824524632728674395

/-! ## A279939.P11881030616851092875

`A030101(A279938(n)/A014709(n))`
-/

namespace A279939.P11881030616851092875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway ((A279938 n : ℚ) / (A014709 n : ℚ))).toNat

end

end A279939.P11881030616851092875

/-! ## A279939.P18265107362900968711

`A030101(A279938(n)/A055642(n))`
-/

namespace A279939.P18265107362900968711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway ((A279938 n : ℚ) / (A055642 n : ℚ))).toNat

end

end A279939.P18265107362900968711

/-! ## A279939.P16255827787790586308

`A030101(A279938(n)/A279951(n))`
-/

namespace A279939.P16255827787790586308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway ((A279938 n : ℚ) / (A279951 n : ℚ))).toNat

end

end A279939.P16255827787790586308

/-! ## A279939.P14253895774677422292

`A325401(A279938(n))`
-/

namespace A279939.P14253895774677422292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A279938 n).toNat

end

end A279939.P14253895774677422292

/-!
# A279940: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 217", based on the 5-celled von Neumann neighborhood.

The programs for A279940, there is no canonical definition to state claims against.
-/

/-! ## A279940.P11357030510377476525

`A007088(A279942(n))`
-/

namespace A279940.P11357030510377476525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279942 n).toNat

end

end A279940.P11357030510377476525

/-! ## A279940.P9069678232247793597

`A185544(2*A279942(n))`
-/

namespace A279940.P9069678232247793597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A279942 n).toNat

end

end A279940.P9069678232247793597

/-! ## A279940.P14156238001523323116

`A279799(n)+A036362(A156952(n))`
-/

namespace A279940.P14156238001523323116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279799 n + A036362 (A156952 n).toNat

end

end A279940.P14156238001523323116

/-!
# A279941: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 217", based on the 5-celled von Neumann neighborhood.

The programs for A279941, there is no canonical definition to state claims against.
-/

/-! ## A279941.P12034106064260489437

`A007088(A279943(n))`
-/

namespace A279941.P12034106064260489437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279943 n).toNat

end

end A279941.P12034106064260489437

/-! ## A279941.P15487078661301932018

`A185544(2*A279943(n))`
-/

namespace A279941.P15487078661301932018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A279943 n).toNat

end

end A279941.P15487078661301932018

/-!
# A279942: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 217", based on the 5-celled von Neumann neighborhood.

The programs for A279942, there is no canonical definition to state claims against.
-/

/-! ## A279942.P7072948342644881971

`A279806(n)+A241541(A279943(n)²)`
-/

namespace A279942.P7072948342644881971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279806 n + A241541 (A279943 n ^ 2).toNat

end

end A279942.P7072948342644881971

/-!
# A279945: Irregular triangular array: t(n,k) = number of partitions of n having lexicographic difference set of size k; see Comments.

The programs for A279945, there is no canonical definition to state claims against.
-/

/-! ## A279945.P8077202657770935731

`A137672(A046800(n+1)+A005179(n+1))`
-/

namespace A279945.P8077202657770935731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137672 (A046800 (n + 1) + A005179 (n + 1)).toNat

end

end A279945.P8077202657770935731

/-! ## A279945.P4855448492785257919

`gcd(A272860(3*n+1), A334794(2*n+1))`
-/

namespace A279945.P4855448492785257919
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A272860 (3 * n + 1)) (A334794 (2 * n + 1))

end

end A279945.P4855448492785257919

/-! ## A279945.P9271877943234762677

`A060117(A090079(n)*A242027(n))`
-/

namespace A279945.P9271877943234762677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060117 (A090079 n * A242027 n).toNat

end

end A279945.P9271877943234762677

/-! ## A279945.P17238465229582156373

`A003639(∑[A343516(A187829(n+1))])`
-/

namespace A279945.P17238465229582156373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343516 (A187829 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003639 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A279945.P17238465229582156373

/-!
# A279947: Expansion of f(x^2, x^2) * f(-x, -x^5) in powers of x where f(, ) is Ramanujan's general theta function.

The programs for A279947, there is no canonical definition to state claims against.
-/

/-! ## A279947.P8853192400138293273

`(-1)^n*A263571(n)`
-/

namespace A279947.P8853192400138293273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A263571 n

end

end A279947.P8853192400138293273

/-! ## A279947.P9058893631693420046

`A128581(3*n+1)`
-/

namespace A279947.P9058893631693420046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128581 (3 * n + 1)

end

end A279947.P9058893631693420046

/-! ## A279947.P6234962167276879330

`-A190611(3*n+1)`
-/

namespace A279947.P6234962167276879330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A190611 (3 * n + 1)

end

end A279947.P6234962167276879330

/-! ## A279947.P12275450832510336755

`-A261122(6*n+2)`
-/

namespace A279947.P12275450832510336755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A261122 (6 * n + 2)

end

end A279947.P12275450832510336755

/-! ## A279947.P5056767305240377604

`A263571(n)/A033999(n)`
-/

namespace A279947.P5056767305240377604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263571 n : ℚ) / (A033999 n : ℚ)

end

end A279947.P5056767305240377604

/-! ## A279947.P16159851617362444498

`A033999(n)*A258587(2*n)`
-/

namespace A279947.P16159851617362444498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A258587 (2 * n)

end

end A279947.P16159851617362444498

/-! ## A279947.P2884691492678027147

`A033999(n)*A263548(2*n)`
-/

namespace A279947.P2884691492678027147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A263548 (2 * n)

end

end A279947.P2884691492678027147

/-! ## A279947.P17144826134400850448

`A115660(A165355(n))`
-/

namespace A279947.P17144826134400850448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115660 (A165355 n).toNat

end

end A279947.P17144826134400850448

/-! ## A279947.P9785928101792793269

`(-1)^n*A115660(A016777(n))`
-/

namespace A279947.P9785928101792793269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A115660 (A016777 n).toNat

end

end A279947.P9785928101792793269

/-! ## A279947.P13226769400434481579

`A009001(2*n)*A192013(A016777(n))`
-/

namespace A279947.P13226769400434481579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) * A192013 (A016777 n).toNat

end

end A279947.P13226769400434481579

/-! ## A279947.P17027437690718111651

`or(A000007(n), A128581(A016789(n)-1))`
-/

namespace A279947.P17027437690718111651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A128581 (A016789 n - 1).toNat)

end

end A279947.P17027437690718111651

/-! ## A279947.P4752329940483896484

`A192013(A016777(n))/A009001(A005843(n))`
-/

namespace A279947.P4752329940483896484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192013 (A016777 n).toNat : ℚ) / (A009001 (A005843 n).toNat : ℚ)

end

end A279947.P4752329940483896484

/-! ## A279947.P6484003495077378824

`A000377(A067745(n+1))*A034947(A005408(n))`
-/

namespace A279947.P6484003495077378824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000377 (A067745 (n + 1)).toNat * A034947 (A005408 n).toNat

end

end A279947.P6484003495077378824

/-! ## A279947.P731845874601226259

`A115660(A166138(n))`
-/

namespace A279947.P731845874601226259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115660 (A166138 n).toNat

end

end A279947.P731845874601226259

/-! ## A279947.P15513656469288831816

`A115660(A165998(3*n))`
-/

namespace A279947.P15513656469288831816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115660 (A165998 (3 * n)).toNat

end

end A279947.P15513656469288831816

/-!
# A279948: Expansion of (Sum_{k>=1} x^(prime(k)^2))^3.

The programs for A279948, there is no canonical definition to state claims against.
-/

/-! ## A279948.P11158128225628316877

`A281155(n*A003849(n))%A243926(A243960(n+1))`
-/

namespace A279948.P11158128225628316877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281155 ((n : ℤ) * A003849 n).toNat) (A243926 (A243960 (n + 1)).toNat)

end

end A279948.P11158128225628316877

/-! ## A279948.P15474788221735905720

`A281155(((A106442(n)-A106444(n))²+n)*A003849(n))`
-/

namespace A279948.P15474788221735905720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281155 (((A106442 n - A106444 n) ^ 2 + (n : ℤ)) * A003849 n).toNat

end

end A279948.P15474788221735905720

/-! ## A279948.P11529349210769684978

`A281155(n*A003849(n))%A000005(A000041(n))`
-/

namespace A279948.P11529349210769684978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281155 ((n : ℤ) * A003849 n).toNat) (A000005 (A000041 n).toNat)

end

end A279948.P11529349210769684978

/-! ## A279948.P16121726196722257043

`A281155(n*A003849(n))%A061769(n)`
-/

namespace A279948.P16121726196722257043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281155 ((n : ℤ) * A003849 n).toNat) (A061769 n)

end

end A279948.P16121726196722257043

/-! ## A279948.P16405370083941693066

`A281155(n*A003849(n))+A135481(A090782(n+1))`
-/

namespace A279948.P16405370083941693066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281155 ((n : ℤ) * A003849 n).toNat + A135481 (A090782 (n + 1)).toNat

end

end A279948.P16405370083941693066

/-!
# A279949: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 222", based on the 5-celled von Neumann neighborhood.

The programs for A279949, there is no canonical definition to state claims against.
-/

/-! ## A279949.P13103135774088212100

`A007088(A279986(n))`
-/

namespace A279949.P13103135774088212100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279986 n).toNat

end

end A279949.P13103135774088212100

/-! ## A279949.P12289190031584662827

`A007088(A279474(n)+A282982(n)-A282952(n))`
-/

namespace A279949.P12289190031584662827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279474 n + (A282982 n - A282952 n)).toNat

end

end A279949.P12289190031584662827

/-! ## A279949.P16140427507139972128

`A007088(A279474(n)-(A282952(n)-A282982(n)))`
-/

namespace A279949.P16140427507139972128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279474 n - (A282952 n - A282982 n)).toNat

end

end A279949.P16140427507139972128

/-! ## A279949.P11210758308798727363

`A007088(A126646(n)-A282952(n)%A008313(n²))`
-/

namespace A279949.P11210758308798727363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A126646 n - Int.tmod (A282952 n) (A008313 (n ^ 2))).toNat

end

end A279949.P11210758308798727363

/-! ## A279949.P2041168212931591675

`A185544(2*A279986(n))`
-/

namespace A279949.P2041168212931591675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A279986 n).toNat

end

end A279949.P2041168212931591675

/-!
# A279950: List of ordered pairs (x, y) from A279812.

The programs for A279950, there is no canonical definition to state claims against.
-/

/-! ## A279950.P15563975977868682862

`2*A259180(n+1)`
-/

namespace A279950.P15563975977868682862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A259180 (n + 1)

end

end A279950.P15563975977868682862

/-! ## A279950.P12533642481650160506

`∑{e}[A006094(n+1), A259180(#+n)]`
-/

namespace A279950.P12533642481650160506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A259180 (Nat.factorization (f1 n).natAbs p + n)

end

end A279950.P12533642481650160506

/-! ## A279950.P4944718103988822331

`A259180(C(n+1, n))+A259180(n+1)`
-/

namespace A279950.P4944718103988822331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259180 (Nat.choose (n + 1) n) + A259180 (n + 1)

end

end A279950.P4944718103988822331

/-! ## A279950.P12066564769873029613

`A259180(n+1)+A259180(-xor(n, -1))`
-/

namespace A279950.P12066564769873029613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259180 (n + 1) + A259180 (-Int.xor (n : ℤ) (-1)).toNat

end

end A279950.P12066564769873029613

/-! ## A279950.P14720148642510806616

`A259180(n+1)+A259180(Δ[n²]-n)`
-/

namespace A279950.P14720148642510806616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259180 (n + 1) + A259180 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat

end

end A279950.P14720148642510806616

/-!
# A279951: Expansion of Product_{k>=1} 1/(1 - x^((k*(k+1)/2)^2)).

The programs for A279951, there is no canonical definition to state claims against.
-/

/-! ## A279951.P12008015404445668334

`A045718(A054898(n)%A300660(3*n+1))`
-/

namespace A279951.P12008015404445668334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045718 (Int.tmod (A054898 n) (A300660 (3 * n + 1))).toNat

end

end A279951.P12008015404445668334

/-! ## A279951.P5686471104904623311

`A045718(A054898(n)%A276053(n))`
-/

namespace A279951.P5686471104904623311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045718 (Int.tmod (A054898 n) (A276053 n)).toNat

end

end A279951.P5686471104904623311

/-! ## A279951.P11231182723371968883

`A001972(floor(n/9)%A175858(n+1))`
-/

namespace A279951.P11231182723371968883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001972 (Int.tmod ⌊(n : ℚ) / 9⌋ (A175858 (n + 1))).toNat

end

end A279951.P11231182723371968883

/-! ## A279951.P3612571182113666547

`A045718(A343609(n)%A226114(n+1))`
-/

namespace A279951.P3612571182113666547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045718 (Int.tmod (A343609 n) (A226114 (n + 1))).toNat

end

end A279951.P3612571182113666547

/-! ## A279951.P5981841761867154928

`A279758(A051754(n+2)-1)`
-/

namespace A279951.P5981841761867154928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279758 (A051754 (n + 2) - 1).toNat

end

end A279951.P5981841761867154928

/-! ## A279951.P11028426756019661118

`A097876(A265571(n+1))`
-/

namespace A279951.P11028426756019661118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097876 (A265571 (n + 1)).toNat

end

end A279951.P11028426756019661118

/-! ## A279951.P16968900863852905444

`A045718(A054898(n))-A048050(A101595(n+1))`
-/

namespace A279951.P16968900863852905444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045718 (A054898 n).toNat - A048050 (A101595 (n + 1)).toNat

end

end A279951.P16968900863852905444

/-! ## A279951.P5780776992171994470

`∑[A334029(A114099(n)²)]`
-/

namespace A279951.P5780776992171994470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334029 (A114099 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279951.P5780776992171994470

/-! ## A279951.P7347882310813399072

`A279758(lt[A316495(n+1), A000265(3*n+5)])`
-/

namespace A279951.P7347882310813399072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316495 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279758 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A279951.P7347882310813399072

/-!
# A279952: Number of primes with prime subscripts dividing n.

The programs for A279952, the canonical program `A279952.P8312467500998527084` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279952 has offset 1).

The definition of A279952 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A279952.P10417172244975914210

`∑{p}[n+1, A257994(#)]`
-/

namespace A279952.P10417172244975914210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A257994 p

end

end A279952.P10417172244975914210

namespace A279952

/-- `∑{p}[n+1, A257994(#)]` -/
def P10417172244975914210.Spec : Prop :=
  ∀ n, P10417172244975914210.a n = A279952 (n + 1)

end A279952

/-! ## A279952.P3405283318138437644

`A257994(∏{p}[n+1, #])`
-/

namespace A279952.P3405283318138437644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257994 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A279952.P3405283318138437644

namespace A279952

/-- `A257994(∏{p}[n+1, #])` -/
def P3405283318138437644.Spec : Prop :=
  ∀ n, P3405283318138437644.a n = A279952 (n + 1)

end A279952

/-! ## A279952.P8312467500998527084

`∑{d}[n+1, A111406(#-1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A279952

/-- `∑{d}[n+1, A111406(#-1)]` -/
def P8312467500998527084.Spec : Prop :=
  ∀ n, P8312467500998527084.a n = A279952 (n + 1)

theorem P8312467500998527084.correct : P8312467500998527084.Spec := by
  intro n
  simp only [A279952, Nat.add_sub_cancel]

end A279952

/-! ## A279952.P14996603397310797365

`A257994(A007947(n+1))`
-/

namespace A279952.P14996603397310797365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257994 (A007947 (n + 1)).toNat

end

end A279952.P14996603397310797365

namespace A279952

/-- `A257994(A007947(n+1))` -/
def P14996603397310797365.Spec : Prop :=
  ∀ n, P14996603397310797365.a n = A279952 (n + 1)

end A279952

/-! ## A279952.P9459037442866749656

`A001221(A295665(n+1))`
-/

namespace A279952.P9459037442866749656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A295665 (n + 1)).toNat

end

end A279952.P9459037442866749656

namespace A279952

/-- `A001221(A295665(n+1))` -/
def P9459037442866749656.Spec : Prop :=
  ∀ n, P9459037442866749656.a n = A279952 (n + 1)

end A279952

/-! ## A279952.P17293171795439216

`A257994(A099985(n+1))`
-/

namespace A279952.P17293171795439216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257994 (A099985 (n + 1)).toNat

end

end A279952.P17293171795439216

namespace A279952

/-- `A257994(A099985(n+1))` -/
def P17293171795439216.Spec : Prop :=
  ∀ n, P17293171795439216.a n = A279952 (n + 1)

end A279952

/-! ## A279952.P394626246753245630

`A001221(A360325(n+1))`
-/

namespace A279952.P394626246753245630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A360325 (n + 1)).toNat

end

end A279952.P394626246753245630

namespace A279952

/-- `A001221(A360325(n+1))` -/
def P394626246753245630.Spec : Prop :=
  ∀ n, P394626246753245630.a n = A279952 (n + 1)

end A279952

/-! ## A279952.P4656755317356764536

`A257994(A204455(n+1))`
-/

namespace A279952.P4656755317356764536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257994 (A204455 (n + 1)).toNat

end

end A279952.P4656755317356764536

namespace A279952

/-- `A257994(A204455(n+1))` -/
def P4656755317356764536.Spec : Prop :=
  ∀ n, P4656755317356764536.a n = A279952 (n + 1)

end A279952

/-! ## A279952.P15136647009956299054

`A257994(A302138(n+1))`
-/

namespace A279952.P15136647009956299054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257994 (A302138 (n + 1)).toNat

end

end A279952.P15136647009956299054

namespace A279952

/-- `A257994(A302138(n+1))` -/
def P15136647009956299054.Spec : Prop :=
  ∀ n, P15136647009956299054.a n = A279952 (n + 1)

end A279952

/-! ## A279952.P15316250489019926717

`A001222(A324291(A295665(n+1)²))`
-/

namespace A279952.P15316250489019926717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A324291 (A295665 (n + 1) ^ 2).toNat).toNat

end

end A279952.P15316250489019926717

namespace A279952

/-- `A001222(A324291(A295665(n+1)²))` -/
def P15316250489019926717.Spec : Prop :=
  ∀ n, P15316250489019926717.a n = A279952 (n + 1)

end A279952

/-! ## A279952.P17812830234925496440

`A056170(A295665(n+1)²)`
-/

namespace A279952.P17812830234925496440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A295665 (n + 1) ^ 2).toNat

end

end A279952.P17812830234925496440

namespace A279952

/-- `A056170(A295665(n+1)²)` -/
def P17812830234925496440.Spec : Prop :=
  ∀ n, P17812830234925496440.a n = A279952 (n + 1)

end A279952

/-! ## A279952.P5864525370843262596

`A056170(A295665(n+1)*A295665(n+1))`
-/

namespace A279952.P5864525370843262596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A295665 (n + 1) * A295665 (n + 1)).toNat

end

end A279952.P5864525370843262596

namespace A279952

/-- `A056170(A295665(n+1)*A295665(n+1))` -/
def P5864525370843262596.Spec : Prop :=
  ∀ n, P5864525370843262596.a n = A279952 (n + 1)

end A279952

/-! ## A279952.P196195745763283745

`A076526(A295665(A007947((n+1)²)))`
-/

namespace A279952.P196195745763283745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076526 (A295665 (A007947 ((n + 1) ^ 2)).toNat).toNat

end

end A279952.P196195745763283745

namespace A279952

/-- `A076526(A295665(A007947((n+1)²)))` -/
def P196195745763283745.Spec : Prop :=
  ∀ n, P196195745763283745.a n = A279952 (n + 1)

end A279952

/-! ## A279952.P1295861671862572797

`A257994(A015052(n+1)²)/2`
-/

namespace A279952.P1295861671862572797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257994 (A015052 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A279952.P1295861671862572797

namespace A279952

/-- `A257994(A015052(n+1)²)/2` -/
def P1295861671862572797.Spec : Prop :=
  ∀ n, P1295861671862572797.a n = (A279952 (n + 1) : ℚ)

end A279952

/-! ## A279952.P3870671395967162059

`A257994(A015053(n+1)²)/2`
-/

namespace A279952.P3870671395967162059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257994 (A015053 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A279952.P3870671395967162059

namespace A279952

/-- `A257994(A015053(n+1)²)/2` -/
def P3870671395967162059.Spec : Prop :=
  ∀ n, P3870671395967162059.a n = (A279952 (n + 1) : ℚ)

end A279952

/-! ## A279952.P9177158406919691933

`A257994(A053166(n+1)²)/2`
-/

namespace A279952.P9177158406919691933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257994 (A053166 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A279952.P9177158406919691933

namespace A279952

/-- `A257994(A053166(n+1)²)/2` -/
def P9177158406919691933.Spec : Prop :=
  ∀ n, P9177158406919691933.a n = (A279952 (n + 1) : ℚ)

end A279952

/-! ## A279952.P132773491278018649

`A257994(A260458((n+1)²))`
-/

namespace A279952.P132773491278018649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257994 (A260458 ((n + 1) ^ 2)).toNat

end

end A279952.P132773491278018649

namespace A279952

/-- `A257994(A260458((n+1)²))` -/
def P132773491278018649.Spec : Prop :=
  ∀ n, P132773491278018649.a n = A279952 (n + 1)

end A279952

/-!
# A279953: Numbers that cannot be partitioned into two or more distinct even-valued terms or distinct odd-valued terms of the sequence.

The programs for A279953, there is no canonical definition to state claims against.
-/

/-! ## A279953.P4312316585941350560

`record[A146985(A269403(n))]`
-/

namespace A279953.P4312316585941350560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146985 (A269403 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279953.P4312316585941350560

/-! ## A279953.P1962247834934718209

`record[A146985(∑[A080412(n)])]`
-/

namespace A279953.P1962247834934718209
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080412 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146985 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279953.P1962247834934718209

/-! ## A279953.P7467630913388953221

`record[A105224(A138947(n+1))]`
-/

namespace A279953.P7467630913388953221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (A138947 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279953.P7467630913388953221

/-! ## A279953.P33611927596022780

`record[A340078(A340114(n+1))]`
-/

namespace A279953.P33611927596022780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340078 (A340114 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279953.P33611927596022780

/-!
# A279954: Prime d-powerful numbers: prime numbers which can be represented as the sum of some nonnegative powers of their digits.

The programs for A279954, there is no canonical definition to state claims against.
-/

/-! ## A279954.P15420284693339674219

`p?[A061862(n+1)]`
-/

namespace A279954.P15420284693339674219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A279954.P15420284693339674219

/-! ## A279954.P10379101196024194142

`p?[record[A061862(A052938(n))]]`
-/

namespace A279954.P10379101196024194142
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061862 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A279954.P10379101196024194142

/-! ## A279954.P9476352698968989425

`p?[record[A061862(A133310(n))]]`
-/

namespace A279954.P9476352698968989425
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061862 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A279954.P9476352698968989425

/-! ## A279954.P11794260762180841972

`p?[record[A061862(A329048(n))]]`
-/

namespace A279954.P11794260762180841972
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061862 (A329048 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A279954.P11794260762180841972

/-! ## A279954.P17890868505189286822

`record[A020639(A061862(n+3))]`
-/

namespace A279954.P17890868505189286822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A061862 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279954.P17890868505189286822

/-! ## A279954.P15881333634639738042

`filter[A061862(n+2), A010051(#)]`
-/

namespace A279954.P15881333634639738042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061862 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A279954.P15881333634639738042

/-! ## A279954.P11286815836494856274

`filter[A061862(n+3), A080339(#)]`
-/

namespace A279954.P11286815836494856274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061862 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A279954.P11286815836494856274

/-! ## A279954.P11550506589616816694

`∩[A000040(n+1), A061862(n+1)]`
-/

namespace A279954.P11550506589616816694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A279954.P11550506589616816694

/-! ## A279954.P17484251166057368645

`∩[A049549(n+1), A061862(n+1)]`
-/

namespace A279954.P17484251166057368645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A279954.P17484251166057368645

/-! ## A279954.P17318400609652964037

`∩[A049555(n+1), A061862(n+1)]`
-/

namespace A279954.P17318400609652964037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049555 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A279954.P17318400609652964037

/-!
# A279955: Expansion of chi(-x^4)^4 * f(-x^4)^2 * f(-x)^2 in powers of x where chi(), f() are Ramanujan theta functions.

The programs for A279955, there is no canonical definition to state claims against.
-/

/-! ## A279955.P6670219969478759783

`(-1)^n*A280339(n)`
-/

namespace A279955.P6670219969478759783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A280339 n

end

end A279955.P6670219969478759783

/-! ## A279955.P16186985376589416296

`A280339(n)/A195017(A000040(n+1))`
-/

namespace A279955.P16186985376589416296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280339 n : ℚ) / (A195017 (A000040 (n + 1)).toNat : ℚ)

end

end A279955.P16186985376589416296

/-!
# A279956: Primes p such that every suffix of the base-4 representation of p is either a prime or 1.

The programs for A279956, there is no canonical definition to state claims against.
-/

/-! ## A279956.P14078141237280834473

`A000040(A206718(n+1)%A139247(2*n+1))`
-/

namespace A279956.P14078141237280834473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.tmod (A206718 (n + 1)) (A139247 (2 * n + 1))).toNat

end

end A279956.P14078141237280834473

/-! ## A279956.P316355142709145717

`A000040(record[abs(A286000(2*n+5)-5)])`
-/

namespace A279956.P316355142709145717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A286000 (2 * n + 5) - 5|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A279956.P316355142709145717

/-! ## A279956.P9912739701289142598

`A000040(lt[A055923(n), A247824(n+1)])`
-/

namespace A279956.P9912739701289142598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055923 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247824 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A279956.P9912739701289142598

/-! ## A279956.P7388783611385662167

`A000040(lt[A343379(n), A247824(n+1)])`
-/

namespace A279956.P7388783611385662167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343379 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247824 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A279956.P7388783611385662167

/-! ## A279956.P10999375946226119599

`filter[A100370(n+1), A385395(#)]`
-/

namespace A279956.P10999375946226119599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A385395 (f1 j).toNat = 1) n)

end

end A279956.P10999375946226119599

/-!
# A279959: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 221", based on the 5-celled von Neumann neighborhood.

The programs for A279959, there is no canonical definition to state claims against.
-/

/-! ## A279959.P4701054253839607913

`A007088(A279961(n))`
-/

namespace A279959.P4701054253839607913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279961 n).toNat

end

end A279959.P4701054253839607913

/-! ## A279959.P2071178645551142905

`A007088(floor(A267042(n)/2^n))`
-/

namespace A279959.P2071178645551142905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 ⌊(A267042 n : ℚ) / (2 ^ n : ℚ)⌋.toNat

end

end A279959.P2071178645551142905

/-! ## A279959.P16006398536245590272

`A185544(2*A279961(n))`
-/

namespace A279959.P16006398536245590272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A279961 n).toNat

end

end A279959.P16006398536245590272

/-! ## A279959.P17611884992690407570

`A178569(floor(A267042(n)/2^n))`
-/

namespace A279959.P17611884992690407570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178569 ⌊(A267042 n : ℚ) / (2 ^ n : ℚ)⌋.toNat

end

end A279959.P17611884992690407570

/-! ## A279959.P9901485783519047872

`A185544(2*floor(A267042(n)/2^n))`
-/

namespace A279959.P9901485783519047872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * ⌊(A267042 n : ℚ) / (2 ^ n : ℚ)⌋).toNat

end

end A279959.P9901485783519047872

/-!
# A279960: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 221", based on the 5-celled von Neumann neighborhood.

The programs for A279960, there is no canonical definition to state claims against.
-/

/-! ## A279960.P4594461648390055337

`A267041(n)%A178500(n+1)`
-/

namespace A279960.P4594461648390055337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267041 n) (A178500 (n + 1))

end

end A279960.P4594461648390055337

/-! ## A279960.P13710753013462867110

`A007088(A279962(n))`
-/

namespace A279960.P13710753013462867110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279962 n).toNat

end

end A279960.P13710753013462867110

/-! ## A279960.P11805417132013787348

`A007088(A267042(n)%A198633(n))`
-/

namespace A279960.P11805417132013787348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.tmod (A267042 n) (A198633 n)).toNat

end

end A279960.P11805417132013787348

/-! ## A279960.P13820286718312444558

`A007088(and(A126646(n), A267042(n)))`
-/

namespace A279960.P13820286718312444558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (A126646 n) (A267042 n)).toNat

end

end A279960.P13820286718312444558

/-! ## A279960.P14557199076095001531

`A007088(and(A267042(n), A281482(n)))`
-/

namespace A279960.P14557199076095001531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (A267042 n) (A281482 n)).toNat

end

end A279960.P14557199076095001531

/-!
# A279961: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 221", based on the 5-celled von Neumann neighborhood.

The programs for A279961, the canonical program `A279961.P11927771457648892657` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279961 has offset 0).

The definition of A279961 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A279961.P11927771457648892657

`5*a(n-2)-4*a(n-4)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=12, a(4)=7, a(5)=60, a(6)=7`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A279961

/-- `5*a(n-2)-4*a(n-4)` -/
def P11927771457648892657.Spec : Prop :=
  ∀ n, P11927771457648892657.a n = A279961 n

theorem P11927771457648892657.correct : P11927771457648892657.Spec := by
  intro n
  simp only [A279961]

end A279961

/-! ## A279961.P12800407860634188474

`floor(A267042(n)/2^n)`
-/

namespace A279961.P12800407860634188474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A267042 n : ℚ) / (2 ^ n : ℚ)⌋

end

end A279961.P12800407860634188474

namespace A279961

/-- `floor(A267042(n)/2^n)` -/
def P12800407860634188474.Spec : Prop :=
  ∀ n, P12800407860634188474.a n = A279961 n

end A279961

/-!
# A279962: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 221", based on the 5-celled von Neumann neighborhood.

The programs for A279962, the canonical program `A279962.P3611030188246247118` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279962 has offset 0).

The definition of A279962 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A279962.P3611030188246247118

`5*a(n-2)-4*a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=28, a(5)=15, a(6)=112`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A279962

/-- `5*a(n-2)-4*a(n-4)` -/
def P3611030188246247118.Spec : Prop :=
  ∀ n, P3611030188246247118.a n = A279962 n

theorem P3611030188246247118.correct : P3611030188246247118.Spec := by
  intro n
  simp only [A279962]

end A279962

/-! ## A279962.P11669609151353995934

`A267042(n)%A198633(n)`
-/

namespace A279962.P11669609151353995934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267042 n) (A198633 n)

end

end A279962.P11669609151353995934

namespace A279962

/-- `A267042(n)%A198633(n)` -/
def P11669609151353995934.Spec : Prop :=
  ∀ n, P11669609151353995934.a n = A279962 n

end A279962

/-! ## A279962.P10082210500478369678

`and(A126646(n), A267042(n))`
-/

namespace A279962.P10082210500478369678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 n) (A267042 n)

end

end A279962.P10082210500478369678

namespace A279962

/-- `and(A126646(n), A267042(n))` -/
def P10082210500478369678.Spec : Prop :=
  ∀ n, P10082210500478369678.a n = A279962 n

end A279962

/-! ## A279962.P2433383659508676562

`and(A267042(n), A283606(n))`
-/

namespace A279962.P2433383659508676562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267042 n) (A283606 n)

end

end A279962.P2433383659508676562

namespace A279962

/-- `and(A267042(n), A283606(n))` -/
def P2433383659508676562.Spec : Prop :=
  ∀ n, P2433383659508676562.a n = A279962 n

end A279962

/-! ## A279962.P9825377653057915447

`and(A267042(n), A285543(n))`
-/

namespace A279962.P9825377653057915447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267042 n) (A285543 n)

end

end A279962.P9825377653057915447

namespace A279962

/-- `and(A267042(n), A285543(n))` -/
def P9825377653057915447.Spec : Prop :=
  ∀ n, P9825377653057915447.a n = A279962 n

end A279962

/-! ## A279962.P8919144101463066773

`and(A267042(n), A290683(n))`
-/

namespace A279962.P8919144101463066773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267042 n) (A290683 n)

end

end A279962.P8919144101463066773

namespace A279962

/-- `and(A267042(n), A290683(n))` -/
def P8919144101463066773.Spec : Prop :=
  ∀ n, P8919144101463066773.a n = A279962 n

end A279962

/-! ## A279962.P2702224155142692257

`and(∑[A000079(n)], A267042(n))`
-/

namespace A279962.P2702224155142692257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A267042 n)

end

end A279962.P2702224155142692257

namespace A279962

/-- `and(∑[A000079(n)], A267042(n))` -/
def P2702224155142692257.Spec : Prop :=
  ∀ n, P2702224155142692257.a n = A279962 n

end A279962

/-! ## A279962.P8192067287926313462

`and(A267042(n), A281482(n))`
-/

namespace A279962.P8192067287926313462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267042 n) (A281482 n)

end

end A279962.P8192067287926313462

namespace A279962

/-- `and(A267042(n), A281482(n))` -/
def P8192067287926313462.Spec : Prop :=
  ∀ n, P8192067287926313462.a n = A279962 n

end A279962

/-!
# A279963: Numbers n such that there exists a base in which some multiple of n is an anagram of n.

The programs for A279963, there is no canonical definition to state claims against.
-/

/-! ## A279963.P16273113325831060505

`lt[A051777(A333574(3*n+7)), A293813(n)]`
-/

namespace A279963.P16273113325831060505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051777 (A333574 (3 * n + 7)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293813 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A279963.P16273113325831060505

/-! ## A279963.P17199067008244681787

`lt[A380173(A067538(n+1)), A360670(n)]`
-/

namespace A279963.P17199067008244681787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380173 (A067538 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360670 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A279963.P17199067008244681787

/-! ## A279963.P15780672965094202254

`lt[A284263(A284295(n+1)), A284289(2*n)]`
-/

namespace A279963.P15780672965094202254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284263 (A284295 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A279963.P15780672965094202254

/-! ## A279963.P8239102103930930

`lt[A277692(n+1), A051548(A277692(n+1)!)]`
-/

namespace A279963.P8239102103930930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277692 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051548 (Nat.factorial (A277692 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A279963.P8239102103930930

/-! ## A279963.P819955596548481084

`lt[A374942(n+1), A289066(A326152(n))]`
-/

namespace A279963.P819955596548481084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289066 (A326152 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A279963.P819955596548481084

/-!
# A279966: Square array read by antidiagonals upwards in which each term is the number of prior elements in the same row, column, diagonal, or antidiagonal that divide n; the array is seeded with an initial value a(1)=1.

The programs for A279966, there is no canonical definition to state claims against.
-/

/-! ## A279966.P14276257945130357852

`A001222(A101755(2*(n+2))-2*(n+1))`
-/

namespace A279966.P14276257945130357852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A101755 (2 * (n + 2)) - (2 * (n + 1) : ℤ)).toNat

end

end A279966.P14276257945130357852

/-! ## A279966.P16507486418473674382

`A096396(n+2)-A093555(A076014(n+1))`
-/

namespace A279966.P16507486418473674382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096396 (n + 2) - A093555 (A076014 (n + 1)).toNat

end

end A279966.P16507486418473674382

/-! ## A279966.P14254755575996939239

`A001055(A175360(n)*A285572(3*n+1))`
-/

namespace A279966.P14254755575996939239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A175360 n * A285572 (3 * n + 1)).toNat

end

end A279966.P14254755575996939239

/-!
# A279968: Square array read by antidiagonals upwards in which each term is the number of prior elements in the same row, column, diagonal, or antidiagonal whose parity is not the same as the parity of n.

The programs for A279968, there is no canonical definition to state claims against.
-/

/-! ## A279968.P13121805708470243392

`A322173(A187729(n+1))%(2-xor(1-n, (2-n)%2))`
-/

namespace A279968.P13121805708470243392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322173 (A187729 (n + 1)).toNat) (2 - Int.xor (1 - (n : ℤ)) (Int.tmod (2 - (n : ℤ)) 2))

end

end A279968.P13121805708470243392

/-! ## A279968.P1354549123271845475

`A306433(xor(A027642(n), A089333(n)))`
-/

namespace A279968.P1354549123271845475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306433 (Int.xor (A027642 n) (A089333 n)).toNat

end

end A279968.P1354549123271845475

/-! ## A279968.P13674129532002316463

`A329027(and(A233344(n+5), A329008(n+1)))`
-/

namespace A279968.P13674129532002316463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329027 (Int.land (A233344 (n + 5)) (A329008 (n + 1))).toNat

end

end A279968.P13674129532002316463

/-!
# A279969: 

The programs for A279969, there is no canonical definition to state claims against.
-/

/-! ## A279969.P15329747909435962611

`2^(A000040(a(n-1))-1)` with `a(0)=1`
-/

namespace A279969.P15329747909435962611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (2 : ℚ) ^ (A000040 (SequenceMachineLib.roundAway (a (n - 1))).toNat - 1 : ℤ)

end

end A279969.P15329747909435962611

/-!
# A279970: Number of n X n 0..1 arrays with no element equal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A279970, there is no canonical definition to state claims against.
-/

/-! ## A279970.P6386545772459955514

`A279977(∑[4*n]+1)`
-/

namespace A279970.P6386545772459955514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279977 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A279970.P6386545772459955514

/-! ## A279970.P11376967185013922943

`record[A003982(n)*A279977(n+1)]`
-/

namespace A279970.P11376967185013922943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A279977 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279970.P11376967185013922943

/-! ## A279970.P2639995946685099376

`A279977(A001844(n))+A225099(n)`
-/

namespace A279970.P2639995946685099376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279977 (A001844 n).toNat + A225099 n

end

end A279970.P2639995946685099376

/-! ## A279970.P1964096284801576396

`A014568(n)*A279977(A001844(n))`
-/

namespace A279970.P1964096284801576396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014568 n * A279977 (A001844 n).toNat

end

end A279970.P1964096284801576396

/-! ## A279970.P5027432279109692970

`A055642(n)*A279977(A001844(n))`
-/

namespace A279970.P5027432279109692970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n * A279977 (A001844 n).toNat

end

end A279970.P5027432279109692970

/-!
# A279971: Number of n X 2 0..1 arrays with no element equal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A279971, there is no canonical definition to state claims against.
-/

/-! ## A279971.P6870823635937475161

`A105423(2*n)`
-/

namespace A279971.P6870823635937475161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105423 (2 * n)

end

end A279971.P6870823635937475161

/-! ## A279971.P14717713185629741226

`record[A105423(A029578(n))]`
-/

namespace A279971.P14717713185629741226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105423 (A029578 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279971.P14717713185629741226

/-! ## A279971.P10118940919306062956

`record[A105423(n)/A000034(n)]`
-/

namespace A279971.P10118940919306062956
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105423 n : ℚ) / (A000034 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279971.P10118940919306062956

/-! ## A279971.P12184493434659664963

`record[A105423(n)/A033999(n)]`
-/

namespace A279971.P12184493434659664963
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105423 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279971.P12184493434659664963

/-! ## A279971.P14979934879669407420

`record[A105423(A315213(n)-A008574(n))]`
-/

namespace A279971.P14979934879669407420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105423 (A315213 n - A008574 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279971.P14979934879669407420

/-! ## A279971.P326075202349111141

`A105422(A096376(n+1))`
-/

namespace A279971.P326075202349111141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105422 (A096376 (n + 1)).toNat

end

end A279971.P326075202349111141

/-! ## A279971.P13429129279193942433

`A105422(A084849(n+1)+1)`
-/

namespace A279971.P13429129279193942433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105422 (A084849 (n + 1) + 1).toNat

end

end A279971.P13429129279193942433

/-! ## A279971.P16727429405767405932

`A105422(A001844(n+1)-n)`
-/

namespace A279971.P16727429405767405932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105422 (A001844 (n + 1) - (n : ℤ)).toNat

end

end A279971.P16727429405767405932

/-! ## A279971.P1749495216903059876

`A105422(A099776(n+1)-n)`
-/

namespace A279971.P1749495216903059876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105422 (A099776 (n + 1) - (n : ℤ)).toNat

end

end A279971.P1749495216903059876

/-! ## A279971.P11613156094947268700

`A105422(A000096(2*n+1)+3)`
-/

namespace A279971.P11613156094947268700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105422 (A000096 (2 * n + 1) + 3).toNat

end

end A279971.P11613156094947268700

/-!
# A279972: Number of n X 3 0..1 arrays with no element equal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A279972, there is no canonical definition to state claims against.
-/

/-! ## A279972.P7861703301680278316

`A279977(∑[n+3]+1)`
-/

namespace A279972.P7861703301680278316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279977 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A279972.P7861703301680278316

/-! ## A279972.P7293846602615178707

`A279977(C(n+4, 2)-2)+A236241(n+1)`
-/

namespace A279972.P7293846602615178707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279977 (Nat.choose (n + 4) 2 - 2) + A236241 (n + 1)

end

end A279972.P7293846602615178707

/-! ## A279972.P11009808585011353890

`A279977(A034856(n+2))+char[19*A000040(n+1)]`
-/

namespace A279972.P11009808585011353890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  19 * A000040 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279977 (A034856 (n + 2)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A279972.P11009808585011353890

/-! ## A279972.P13741719549329422461

`A007318((n²+n)/2)*A279977(A034856(n+2))`
-/

namespace A279972.P13741719549329422461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat * A279977 (A034856 (n + 2)).toNat

end

end A279972.P13741719549329422461

/-! ## A279972.P185203464720027220

`A014963(6*A006530(n+1))*A279977(A034856(n+2))`
-/

namespace A279972.P185203464720027220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * A006530 (n + 1)).toNat * A279977 (A034856 (n + 2)).toNat

end

end A279972.P185203464720027220

/-!
# A279973: Number of nX4 0..1 arrays with no element equal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A279973, there is no canonical definition to state claims against.
-/

/-! ## A279973.P5515634963872443263

`A279977(A141214(n+1))`
-/

namespace A279973.P5515634963872443263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279977 (A141214 (n + 1)).toNat

end

end A279973.P5515634963872443263

/-! ## A279973.P11769512000135399401

`A279977(A055998(n+2))`
-/

namespace A279973.P11769512000135399401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279977 (A055998 (n + 2)).toNat

end

end A279973.P11769512000135399401

/-! ## A279973.P11483670134844521965

`A279977(A155212(n)+5)`
-/

namespace A279973.P11483670134844521965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279977 (A155212 n + 5).toNat

end

end A279973.P11483670134844521965

/-! ## A279973.P12911372902158941281

`A279977(eq[4, A052509(n)])`
-/

namespace A279973.P12911372902158941281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279977 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279973.P12911372902158941281

/-! ## A279973.P7251687148298657508

`A279977(A052905(n+1)+2)`
-/

namespace A279973.P7251687148298657508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279977 (A052905 (n + 1) + 2).toNat

end

end A279973.P7251687148298657508

/-!
# A279974: Number of nX5 0..1 arrays with no element equal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A279974, there is no canonical definition to state claims against.
-/

/-! ## A279974.P9792876262229080462

`A279977(Δ[A264443(n)])`
-/

namespace A279974.P9792876262229080462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279977 (f1 (n + 1) - f1 n).toNat

end

end A279974.P9792876262229080462

/-! ## A279974.P7308035388551199212

`A279977(eq[2, A092921(n)])`
-/

namespace A279974.P7308035388551199212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279977 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279974.P7308035388551199212

/-! ## A279974.P606672506349053878

`A279977(eq[4, A193592(n)])`
-/

namespace A279974.P606672506349053878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279977 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279974.P606672506349053878

/-! ## A279974.P14360988946684232788

`A279977(Δ[A023545(n+1)])`
-/

namespace A279974.P14360988946684232788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279977 (f1 (n + 1) - f1 n).toNat

end

end A279974.P14360988946684232788

/-! ## A279974.P7447741209833744227

`A279977(A055998(n+3)-1)`
-/

namespace A279974.P7447741209833744227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279977 (A055998 (n + 3) - 1).toNat

end

end A279974.P7447741209833744227

/-!
# A279975: Number of nX6 0..1 arrays with no element equal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A279975, there is no canonical definition to state claims against.
-/

/-! ## A279975.P5782608535015028880

`A279977(eq[3, A219347(n)])`
-/

namespace A279975.P5782608535015028880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279977 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279975.P5782608535015028880

/-! ## A279975.P219338038666952694

`A279977(eq[5, A193592(n)])`
-/

namespace A279975.P219338038666952694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279977 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279975.P219338038666952694

/-! ## A279975.P3309008675386641493

`A279977(eq[8, A258709(n)])`
-/

namespace A279975.P3309008675386641493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279977 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279975.P3309008675386641493

/-! ## A279975.P5504785388967942778

`A279977(A055998(n+4)-2)`
-/

namespace A279975.P5504785388967942778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279977 (A055998 (n + 4) - 2).toNat

end

end A279975.P5504785388967942778

/-! ## A279975.P2128410118590703021

`A279977(eq[8, A185782(n+1)])`
-/

namespace A279975.P2128410118590703021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279977 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279975.P2128410118590703021

/-!
# A279976: Number of n X 7 0..1 arrays with no element equal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A279976, there is no canonical definition to state claims against.
-/

/-! ## A279976.P6696598940946822000

`A279977(eq[4, A219347(n)])`
-/

namespace A279976.P6696598940946822000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279977 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279976.P6696598940946822000

/-! ## A279976.P16816533391338763947

`A279977(eq[6, A193592(n)])`
-/

namespace A279976.P16816533391338763947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279977 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279976.P16816533391338763947

/-! ## A279976.P341964737821093564

`A279977(A025747(n+6)-6)`
-/

namespace A279976.P341964737821093564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279977 (A025747 (n + 6) - 6).toNat

end

end A279976.P341964737821093564

/-! ## A279976.P10150287688708483429

`A279977(eq[7, A200370(n+1)])`
-/

namespace A279976.P10150287688708483429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279977 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279976.P10150287688708483429

/-! ## A279976.P14924266195030956841

`A279977(eq[10, A185782(n+1)])`
-/

namespace A279976.P14924266195030956841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279977 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279976.P14924266195030956841

/-!
# A279978: Number of 2 X n 0..1 arrays with no element equal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A279978, there is no canonical definition to state claims against.
-/

/-! ## A279978.P16040360183437006047

`A279977(∑[n+1]+2)`
-/

namespace A279978.P16040360183437006047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279977 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A279978.P16040360183437006047

/-! ## A279978.P15887125454124739013

`A279977(C(n+2, 2)+2)%A000351(n)`
-/

namespace A279978.P15887125454124739013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A279977 (Nat.choose (n + 2) 2 + 2)) (A000351 n)

end

end A279978.P15887125454124739013

/-! ## A279978.P14948746578226189258

`A007318(and(3, 1-n))*A279977(C(n+2, 2)+2)`
-/

namespace A279978.P14948746578226189258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 3 (1 - (n : ℤ))).toNat * A279977 (Nat.choose (n + 2) 2 + 2)

end

end A279978.P14948746578226189258

/-! ## A279978.P14787556828010391921

`or(A008683(4*(n+1)), A279977(C(n+2, 2)+2))`
-/

namespace A279978.P14787556828010391921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008683 (4 * (n + 1))) (A279977 (Nat.choose (n + 2) 2 + 2))

end

end A279978.P14787556828010391921

/-! ## A279978.P15868112981598692687

`A001221(A025476(n+1))*A279977(C(n+2, 2)+2)`
-/

namespace A279978.P15868112981598692687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A025476 (n + 1)).toNat * A279977 (Nat.choose (n + 2) 2 + 2)

end

end A279978.P15868112981598692687

/-!
# A279979: Number of 3 X n 0..1 arrays with no element equal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A279979, there is no canonical definition to state claims against.
-/

/-! ## A279979.P2824794986169740189

`A279977(∑[n+2]+4)`
-/

namespace A279979.P2824794986169740189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279977 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A279979.P2824794986169740189

/-! ## A279979.P15110008609339331112

`A279977(A167614(n+1))%A006960(n)`
-/

namespace A279979.P15110008609339331112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A279977 (A167614 (n + 1)).toNat) (A006960 n)

end

end A279979.P15110008609339331112

/-! ## A279979.P4805411957719314784

`lcm(A011588(n), A279977(A167614(n+1)))`
-/

namespace A279979.P4805411957719314784
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A011588 n) (A279977 (A167614 (n + 1)).toNat)

end

end A279979.P4805411957719314784

/-! ## A279979.P6944891252088642157

`and(A057428(n), A279977(A167614(n+1)))`
-/

namespace A279979.P6944891252088642157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A279977 (A167614 (n + 1)).toNat)

end

end A279979.P6944891252088642157

/-! ## A279979.P11643747352519174071

`A279977(A167499(n)+n)%A006960(n)`
-/

namespace A279979.P11643747352519174071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A279977 (A167499 n + (n : ℤ)).toNat) (A006960 n)

end

end A279979.P11643747352519174071

/-!
# A279980: Number of 4Xn 0..1 arrays with no element equal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A279980, there is no canonical definition to state claims against.
-/

/-! ## A279980.P9499059410680709191

`A279977(A141214(n)+7)`
-/

namespace A279980.P9499059410680709191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279977 (A141214 n + 7).toNat

end

end A279980.P9499059410680709191

/-! ## A279980.P17593292845031394051

`A279977(A052905(n)+9)`
-/

namespace A279980.P17593292845031394051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279977 (A052905 n + 9).toNat

end

end A279980.P17593292845031394051

/-! ## A279980.P16069447382308608818

`A279977(A055999(n)+10)`
-/

namespace A279980.P16069447382308608818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279977 (A055999 n + 10).toNat

end

end A279980.P16069447382308608818

/-! ## A279980.P15650303154397482360

`A279977(A167614(n+2)+1)`
-/

namespace A279980.P15650303154397482360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279977 (A167614 (n + 2) + 1).toNat

end

end A279980.P15650303154397482360

/-! ## A279980.P12468892415310681706

`A279977(A055998(n+1)+7)`
-/

namespace A279980.P12468892415310681706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279977 (A055998 (n + 1) + 7).toNat

end

end A279980.P12468892415310681706

/-!
# A279981: Number of 5Xn 0..1 arrays with no element equal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A279981, there is no canonical definition to state claims against.
-/

/-! ## A279981.P15477184863924429569

`A279977(A167499(n+3))`
-/

namespace A279981.P15477184863924429569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279977 (A167499 (n + 3)).toNat

end

end A279981.P15477184863924429569

/-! ## A279981.P9927184671912575333

`A279977(A056000(n)+15)`
-/

namespace A279981.P9927184671912575333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279977 (A056000 n + 15).toNat

end

end A279981.P9927184671912575333

/-! ## A279981.P16663548202773098261

`A279977(eq[7, A066657(n)])`
-/

namespace A279981.P16663548202773098261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279977 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279981.P16663548202773098261

/-! ## A279981.P17278602966134126943

`A279977(A167614(n+3)+2)`
-/

namespace A279981.P17278602966134126943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279977 (A167614 (n + 3) + 2).toNat

end

end A279981.P17278602966134126943

/-! ## A279981.P15296955333870677601

`A279977(A055998(n+2)+8)`
-/

namespace A279981.P15296955333870677601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279977 (A055998 (n + 2) + 8).toNat

end

end A279981.P15296955333870677601

/-!
# A279982: Number of 6Xn 0..1 arrays with no element equal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A279982, there is no canonical definition to state claims against.
-/

/-! ## A279982.P13952947703272213991

`A279977(A056115(n)+21)`
-/

namespace A279982.P13952947703272213991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279977 (A056115 n + 21).toNat

end

end A279982.P13952947703272213991

/-! ## A279982.P5849453875907101738

`A279977(A167614(n+4)+3)`
-/

namespace A279982.P5849453875907101738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279977 (A167614 (n + 4) + 3).toNat

end

end A279982.P5849453875907101738

/-! ## A279982.P5533606847893122015

`A279977(A000217(n+5)+6)`
-/

namespace A279982.P5533606847893122015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279977 (A000217 (n + 5) + 6).toNat

end

end A279982.P5533606847893122015

/-! ## A279982.P5717090124799092805

`A279977(A055998(n+3)+9)`
-/

namespace A279982.P5717090124799092805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279977 (A055998 (n + 3) + 9).toNat

end

end A279982.P5717090124799092805

/-! ## A279982.P12024447832487183994

`A279977(eq[6, A130270(n+1)])`
-/

namespace A279982.P12024447832487183994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279977 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279982.P12024447832487183994

/-!
# A279983: Number of 7Xn 0..1 arrays with no element equal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A279983, there is no canonical definition to state claims against.
-/

/-! ## A279983.P10742748030521268715

`A279977(eq[11, A066657(n)])`
-/

namespace A279983.P10742748030521268715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279977 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279983.P10742748030521268715

/-! ## A279983.P11213768571010692370

`A279977(A000124(n+6)+6)`
-/

namespace A279983.P11213768571010692370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279977 (A000124 (n + 6) + 6).toNat

end

end A279983.P11213768571010692370

/-! ## A279983.P2749369613987262336

`A279977(A055998(n+4)+10)`
-/

namespace A279983.P2749369613987262336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279977 (A055998 (n + 4) + 10).toNat

end

end A279983.P2749369613987262336

/-! ## A279983.P16728670711092478447

`A279977(eq[8, A131818(n+1)])`
-/

namespace A279983.P16728670711092478447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279977 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279983.P16728670711092478447

/-! ## A279983.P16733963983125334592

`A279977(A025747(n+6)-n)`
-/

namespace A279983.P16733963983125334592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279977 (A025747 (n + 6) - (n : ℤ)).toNat

end

end A279983.P16733963983125334592

/-!
# A279984: Positions of the prime numbers in the sequence of numbers that are not perfect powers (A007916).

The programs for A279984, the canonical program `A279984.P16893894406181977355` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279984 has offset 1).

The definition of A279984 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A279984.P4115549772214231966

`A278029(p?[A259153(n)])`
-/

namespace A279984.P4115549772214231966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278029 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A279984.P4115549772214231966

namespace A279984

/-- `A278029(p?[A259153(n)])` -/
def P4115549772214231966.Spec : Prop :=
  ∀ n, P4115549772214231966.a n = A279984 (n + 1)

end A279984

/-! ## A279984.P7035806975338943629

`A132351(A006093(n+1))`
-/

namespace A279984.P7035806975338943629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132351 (A006093 (n + 1)).toNat

end

end A279984.P7035806975338943629

namespace A279984

/-- `A132351(A006093(n+1))` -/
def P7035806975338943629.Spec : Prop :=
  ∀ n, P7035806975338943629.a n = A279984 (n + 1)

end A279984

/-! ## A279984.P16893894406181977355

`A278029(A000040(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A279984

/-- `A278029(A000040(n+1))` -/
def P16893894406181977355.Spec : Prop :=
  ∀ n, P16893894406181977355.a n = A279984 (n + 1)

theorem P16893894406181977355.correct : P16893894406181977355.Spec := by
  intro n
  simp only [A279984, Nat.add_sub_cancel]

end A279984

/-! ## A279984.P6617586461412343038

`A278029(A008578(n+2))`
-/

namespace A279984.P6617586461412343038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278029 (A008578 (n + 2)).toNat

end

end A279984.P6617586461412343038

namespace A279984

/-- `A278029(A008578(n+2))` -/
def P6617586461412343038.Spec : Prop :=
  ∀ n, P6617586461412343038.a n = A279984 (n + 1)

end A279984

/-! ## A279984.P15254559419204849725

`A278029(A182986(n+2))`
-/

namespace A279984.P15254559419204849725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278029 (A182986 (n + 2)).toNat

end

end A279984.P15254559419204849725

namespace A279984

/-- `A278029(A182986(n+2))` -/
def P15254559419204849725.Spec : Prop :=
  ∀ n, P15254559419204849725.a n = A279984 (n + 1)

end A279984

/-! ## A279984.P5320692863833565400

`record[A020639(n+1)-A076411(n+1)]`
-/

namespace A279984.P5320692863833565400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) - A076411 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279984.P5320692863833565400

namespace A279984

/-- `record[A020639(n+1)-A076411(n+1)]` -/
def P5320692863833565400.Spec : Prop :=
  ∀ n, P5320692863833565400.a n = A279984 (n + 1)

end A279984

/-! ## A279984.P12644963551945911003

`record[A039649(n+1)-A069623(n+1)]`
-/

namespace A279984.P12644963551945911003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) - A069623 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279984.P12644963551945911003

namespace A279984

/-- `record[A039649(n+1)-A069623(n+1)]` -/
def P12644963551945911003.Spec : Prop :=
  ∀ n, P12644963551945911003.a n = A279984 (n + 1)

end A279984

/-! ## A279984.P824915015431504130

`A278029(p?[A278029(n+1)])`
-/

namespace A279984.P824915015431504130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278029 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278029 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A279984.P824915015431504130

namespace A279984

/-- `A278029(p?[A278029(n+1)])` -/
def P824915015431504130.Spec : Prop :=
  ∀ n, P824915015431504130.a n = A279984 (n + 1)

end A279984

/-! ## A279984.P9943426267154080654

`A278029(A091276(n+1)+A091185(n+1))`
-/

namespace A279984.P9943426267154080654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278029 (A091276 (n + 1) + A091185 (n + 1)).toNat

end

end A279984.P9943426267154080654

namespace A279984

/-- `A278029(A091276(n+1)+A091185(n+1))` -/
def P9943426267154080654.Spec : Prop :=
  ∀ n, P9943426267154080654.a n = A279984 (n + 1)

end A279984

/-! ## A279984.P129031510029671237

`eq[2, A001222(A153158(n+1))]+1`
-/

namespace A279984.P129031510029671237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A153158 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A279984.P129031510029671237

namespace A279984

/-- `eq[2, A001222(A153158(n+1))]+1` -/
def P129031510029671237.Spec : Prop :=
  ∀ n, (P129031510029671237.a n : ℤ) = A279984 (n + 1)

end A279984

/-!
# A279985: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 222", based on the 5-celled von Neumann neighborhood.

The programs for A279985, there is no canonical definition to state claims against.
-/

/-! ## A279985.P4712789698149144518

`A007088(A279987(n))`
-/

namespace A279985.P4712789698149144518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279987 n).toNat

end

end A279985.P4712789698149144518

/-! ## A279985.P7348566119671660203

`A007088(A126646(n)%lcm(4, A282953(n)))`
-/

namespace A279985.P7348566119671660203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.tmod (A126646 n) (Int.lcm 4 (A282953 n) : ℤ)).toNat

end

end A279985.P7348566119671660203

/-! ## A279985.P9276757907247024899

`A185544(2*A279987(n))`
-/

namespace A279985.P9276757907247024899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A279987 n).toNat

end

end A279985.P9276757907247024899

/-! ## A279985.P9639907342046985704

`A185544(lcm(2, A279987(n)))`
-/

namespace A279985.P9639907342046985704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A279987 n))

end

end A279985.P9639907342046985704

/-! ## A279985.P15857727445325319639

`A305989(A279986(n)/(char[comp[2^n-1]]+1))`
-/

namespace A279985.P15857727445325319639
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway ((A279986 n : ℚ) / (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℚ))).toNat

end

end A279985.P15857727445325319639

/-!
# A279986: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 222", based on the 5-celled von Neumann neighborhood.

The programs for A279986, there is no canonical definition to state claims against.
-/

/-! ## A279986.P8327031792100572451

`A279474(n)+A282982(n)-A282952(n)`
-/

namespace A279986.P8327031792100572451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279474 n + (A282982 n - A282952 n)

end

end A279986.P8327031792100572451

/-! ## A279986.P2875681406242299795

`A126646(n)-A282952(n)%A282952(n+2)`
-/

namespace A279986.P2875681406242299795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - Int.tmod (A282952 n) (A282952 (n + 2))

end

end A279986.P2875681406242299795

/-! ## A279986.P5388482487525044555

`A126646(n)-A282952(n)%A008313(n²)`
-/

namespace A279986.P5388482487525044555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - Int.tmod (A282952 n) (A008313 (n ^ 2))

end

end A279986.P5388482487525044555

/-! ## A279986.P16786681848915954564

`A126646(n)-A282952(n)%A300590(n)`
-/

namespace A279986.P16786681848915954564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - Int.tmod (A282952 n) (A300590 n)

end

end A279986.P16786681848915954564

/-! ## A279986.P2842857499434248168

`or(A011782(n), A036044(A282953(n)))`
-/

namespace A279986.P2842857499434248168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011782 n) (A036044 (A282953 n).toNat)

end

end A279986.P2842857499434248168

/-!
# A279987: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 222", based on the 5-celled von Neumann neighborhood.

The programs for A279987, there is no canonical definition to state claims against.
-/

/-! ## A279987.P1247898111186918974

`A126646(n)%lcm(4, A282953(n))`
-/

namespace A279987.P1247898111186918974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126646 n) (Int.lcm 4 (A282953 n) : ℤ)

end

end A279987.P1247898111186918974

/-! ## A279987.P10920716048119570795

`or(A126646(n)-A282953(n), A036453(n+1))`
-/

namespace A279987.P10920716048119570795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A126646 n - A282953 n) (A036453 (n + 1))

end

end A279987.P10920716048119570795

/-! ## A279987.P2647629800614897925

`or(A126646(n)-A282953(n), A176040(n+1))`
-/

namespace A279987.P2647629800614897925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A126646 n - A282953 n) (A176040 (n + 1))

end

end A279987.P2647629800614897925

/-! ## A279987.P2350718411513949204

`or(2-A000007(n), A126646(n)-A282953(n))`
-/

namespace A279987.P2350718411513949204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 - A000007 n) (A126646 n - A282953 n)

end

end A279987.P2350718411513949204

/-!
# A279988: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 225", based on the 5-celled von Neumann neighborhood.

The programs for A279988, there is no canonical definition to state claims against.
-/

/-! ## A279988.P18239621839222428917

`A007088(A279990(n))`
-/

namespace A279988.P18239621839222428917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279990 n).toNat

end

end A279988.P18239621839222428917

/-! ## A279988.P13669664563842940654

`A185544(2*A279990(n))`
-/

namespace A279988.P13669664563842940654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A279990 n).toNat

end

end A279988.P13669664563842940654

/-! ## A279988.P16922473847019143372

`A282486(n²/∏{digits}[n, gcd(#, #!²)])`
-/

namespace A279988.P16922473847019143372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282486 (SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.gcd x (Nat.factorial x ^ 2)).prod : ℕ) : ℚ))).toNat

end

end A279988.P16922473847019143372

/-! ## A279988.P2054783091548150247

`A282486(A002998(n))`
-/

namespace A279988.P2054783091548150247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282486 (A002998 n).toNat

end

end A279988.P2054783091548150247

/-! ## A279988.P9537507443914457069

`A282486(A046469(n))`
-/

namespace A279988.P9537507443914457069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282486 (A046469 n).toNat

end

end A279988.P9537507443914457069

/-!
# A279989: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 225", based on the 5-celled von Neumann neighborhood.

The programs for A279989, there is no canonical definition to state claims against.
-/

/-! ## A279989.P2864428680588832897

`A007088(A279991(n))`
-/

namespace A279989.P2864428680588832897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279991 n).toNat

end

end A279989.P2864428680588832897

/-! ## A279989.P3840445910994379473

`A185544(2*A279991(n))`
-/

namespace A279989.P3840445910994379473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A279991 n).toNat

end

end A279989.P3840445910994379473

/-! ## A279989.P9092825852715461377

`A282487(A002998(n))`
-/

namespace A279989.P9092825852715461377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282487 (A002998 n).toNat

end

end A279989.P9092825852715461377

/-! ## A279989.P15977650999842673634

`A282487(A046469(n))`
-/

namespace A279989.P15977650999842673634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282487 (A046469 n).toNat

end

end A279989.P15977650999842673634

/-! ## A279989.P14277218168278790183

`A282487(A051022(n))`
-/

namespace A279989.P14277218168278790183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282487 (A051022 n).toNat

end

end A279989.P14277218168278790183

/-!
# A279990: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 225", based on the 5-celled von Neumann neighborhood.

The programs for A279990, there is no canonical definition to state claims against.
-/

/-! ## A279990.P14833846794821231914

`A282488(A046469(n))`
-/

namespace A279990.P14833846794821231914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282488 (A046469 n).toNat

end

end A279990.P14833846794821231914

/-! ## A279990.P10001031850502819371

`A282488(A087036(n))`
-/

namespace A279990.P10001031850502819371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282488 (A087036 n).toNat

end

end A279990.P10001031850502819371

/-! ## A279990.P14052635155378812169

`A282488(A087051(n))`
-/

namespace A279990.P14052635155378812169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282488 (A087051 n).toNat

end

end A279990.P14052635155378812169

/-! ## A279990.P8524423230838857149

`A282488(A004893(n+1))`
-/

namespace A279990.P8524423230838857149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282488 (A004893 (n + 1)).toNat

end

end A279990.P8524423230838857149

/-! ## A279990.P3638881624594237302

`A282488(A004904(n+1))`
-/

namespace A279990.P3638881624594237302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282488 (A004904 (n + 1)).toNat

end

end A279990.P3638881624594237302

/-!
# A279991: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 225", based on the 5-celled von Neumann neighborhood.

The programs for A279991, there is no canonical definition to state claims against.
-/

/-! ## A279991.P17205632157445233591

`A282489(A046469(n))`
-/

namespace A279991.P17205632157445233591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282489 (A046469 n).toNat

end

end A279991.P17205632157445233591

/-! ## A279991.P15641936341476374994

`A282489(A087036(n))`
-/

namespace A279991.P15641936341476374994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282489 (A087036 n).toNat

end

end A279991.P15641936341476374994

/-! ## A279991.P4516504801012407804

`A282489(A087051(n))`
-/

namespace A279991.P4516504801012407804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282489 (A087051 n).toNat

end

end A279991.P4516504801012407804

/-! ## A279991.P7944013980181540863

`A282489(A004893(n+1))`
-/

namespace A279991.P7944013980181540863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282489 (A004893 (n + 1)).toNat

end

end A279991.P7944013980181540863

/-! ## A279991.P1122013006565008721

`A282489(A004904(n+1))`
-/

namespace A279991.P1122013006565008721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282489 (A004904 (n + 1)).toNat

end

end A279991.P1122013006565008721

/-!
# A279992: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 229", based on the 5-celled von Neumann neighborhood.

The programs for A279992, there is no canonical definition to state claims against.
-/

/-! ## A279992.P14034593544172222313

`A007088(A279994(n))`
-/

namespace A279992.P14034593544172222313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279994 n).toNat

end

end A279992.P14034593544172222313

/-! ## A279992.P16530104729364531307

`A185544(2*A279994(n))`
-/

namespace A279992.P16530104729364531307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A279994 n).toNat

end

end A279992.P16530104729364531307

/-!
# A279993: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 229", based on the 5-celled von Neumann neighborhood.

The programs for A279993, there is no canonical definition to state claims against.
-/

/-! ## A279993.P16106799587821661885

`A007088(A279995(n))`
-/

namespace A279993.P16106799587821661885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279995 n).toNat

end

end A279993.P16106799587821661885

/-! ## A279993.P15127101171970627050

`A185544(2*A279995(n))`
-/

namespace A279993.P15127101171970627050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A279995 n).toNat

end

end A279993.P15127101171970627050

/-!
# A279994: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 229", based on the 5-celled von Neumann neighborhood.

The programs for A279994, there is no canonical definition to state claims against.
-/

/-! ## A279994.P1791985048410305447

`A282514(n)-A269245(A338673(n))`
-/

namespace A279994.P1791985048410305447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282514 n - A269245 (A338673 n).toNat

end

end A279994.P1791985048410305447

/-! ## A279994.P5773803309684892339

`or(A007376(A055762(n)), A279504(n))`
-/

namespace A279994.P5773803309684892339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007376 (A055762 n).toNat) (A279504 n)

end

end A279994.P5773803309684892339

/-!
# A279995: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 229", based on the 5-celled von Neumann neighborhood.

The programs for A279995, there is no canonical definition to state claims against.
-/

/-! ## A279995.P10061674981711622222

`A279505(n)+A241464(A264656(n+1))`
-/

namespace A279995.P10061674981711622222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279505 n + A241464 (A264656 (n + 1)).toNat

end

end A279995.P10061674981711622222

/-! ## A279995.P17416873839909073218

`A279505(n)+A241464(A357416(n+2))`
-/

namespace A279995.P17416873839909073218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279505 n + A241464 (A357416 (n + 2)).toNat

end

end A279995.P17416873839909073218

/-! ## A279995.P4222813185059531102

`A279505(n)+A241464(A299393(n+4))`
-/

namespace A279995.P4222813185059531102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279505 n + A241464 (A299393 (n + 4)).toNat

end

end A279995.P4222813185059531102

/-!
# A279996: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 233", based on the 5-celled von Neumann neighborhood.

The programs for A279996, there is no canonical definition to state claims against.
-/

/-! ## A279996.P10266842553236248949

`A007088(A279998(n))`
-/

namespace A279996.P10266842553236248949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279998 n).toNat

end

end A279996.P10266842553236248949

/-! ## A279996.P12107867359157594649

`A185544(2*A279998(n))`
-/

namespace A279996.P12107867359157594649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A279998 n).toNat

end

end A279996.P12107867359157594649

/-!
# A279997: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 233", based on the 5-celled von Neumann neighborhood.

The programs for A279997, there is no canonical definition to state claims against.
-/

/-! ## A279997.P1564048765665180341

`A007088(A279999(n))`
-/

namespace A279997.P1564048765665180341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279999 n).toNat

end

end A279997.P1564048765665180341

/-! ## A279997.P9635285684107548707

`A185544(2*A279999(n))`
-/

namespace A279997.P9635285684107548707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A279999 n).toNat

end

end A279997.P9635285684107548707

