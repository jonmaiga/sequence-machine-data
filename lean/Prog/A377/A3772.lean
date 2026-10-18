import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
import Seq.B004.C000
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
import Seq.Opaque.C010
import Seq.Opaque.C011
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
import Seq.Opaque.C025

/-!
# A377200: Expansion of 1/(1 - 4*x/(1-x))^(7/2).

The programs for A377200, the canonical program `A377200.P8817852034315105099` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377200 has offset 0).

The definition of A377200 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377200.P8817852034315105099

`(2*(3*n+4)*a(n-1)-5*(n-2)*a(n-2))/n` with `a(0)=1, a(1)=14`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A377200

/-- `(2*(3*n+4)*a(n-1)-5*(n-2)*a(n-2))/n` -/
def P8817852034315105099.Spec : Prop :=
  ∀ n, P8817852034315105099.a n = (A377200 n : ℚ)

end A377200

/-!
# A377201: Numbers k such that d(k)^k == d(k) (mod k), where d(k) = A000005(k) is the number of divisors of k.

The programs for A377201, there is no canonical definition to state claims against.
-/

/-! ## A377201.P1408054680733542970

`A277417(A368110(n+1))%A111871(2*n+5)`
-/

namespace A377201.P1408054680733542970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277417 (A368110 (n + 1)).toNat) (A111871 (2 * n + 5))

end

end A377201.P1408054680733542970

/-! ## A377201.P14888465316499967144

`A277417(A368110(n+1))%A171399(n+1)`
-/

namespace A377201.P14888465316499967144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277417 (A368110 (n + 1)).toNat) (A171399 (n + 1))

end

end A377201.P14888465316499967144

/-! ## A377201.P4178219233910547347

`A142721(A015921(n+2))`
-/

namespace A377201.P4178219233910547347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142721 (A015921 (n + 2)).toNat

end

end A377201.P4178219233910547347

/-! ## A377201.P11902689381979947322

`A098962(comp[4*A007350(n+1)]+1)`
-/

namespace A377201.P11902689381979947322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A007350 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098962 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A377201.P11902689381979947322

/-! ## A377201.P3885353883993096375

`lt[A185284(n+2), char[A073485(n+1)]]`
-/

namespace A377201.P3885353883993096375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073485 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A377201.P3885353883993096375

/-!
# A377206: a(n) = ceiling(log(1/n)/log(1 - 1/n)).

The programs for A377206, the canonical program `A377206.P12199127791830826073` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377206 has offset 2).

The definition of A377206 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(log(1/(n+2))/log(1-1/(n+2)))` (program `A377206.P12199127791830826073`, by `A377206.P12199127791830826073.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A377206.P12199127791830826073

`ceil(log(1/(n+2))/log(1-1/(n+2)))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A377206

/-- `ceil(log(1/(n+2))/log(1-1/(n+2)))` -/
def P12199127791830826073.Spec : Prop :=
  ∀ n, P12199127791830826073.a n = A377206 (n + 2)

theorem P12199127791830826073.correct : P12199127791830826073.Spec := by
  intro n
  simp only [A377206, Nat.add_sub_cancel]

end A377206

/-! ## A377206.P15871750703851137495

`floor(∑[log(A278105(n+1)+n+1)])+n`
-/

namespace A377206.P15871750703851137495
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A278105 (n + 1) + (n : ℤ) + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ + (n : ℤ)

end

end A377206.P15871750703851137495

namespace A377206

/-- `floor(∑[log(A278105(n+1)+n+1)])+n` -/
def P15871750703851137495.Spec : Prop :=
  ∀ n, P15871750703851137495.a n = A377206 (n + 2)

end A377206

/-! ## A377206.P13352540389292052828

`A065475(A031435(n+1))`
-/

namespace A377206.P13352540389292052828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A031435 (n + 1)).toNat

end

end A377206.P13352540389292052828

namespace A377206

/-- `A065475(A031435(n+1))` -/
def P13352540389292052828.Spec : Prop :=
  ∀ n, P13352540389292052828.a n = A377206 (n + 2)

end A377206

/-! ## A377206.P5622730821539533686

`A057427(n)+A031435(n+1)`
-/

namespace A377206.P5622730821539533686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A031435 (n + 1)

end

end A377206.P5622730821539533686

namespace A377206

/-- `A057427(n)+A031435(n+1)` -/
def P5622730821539533686.Spec : Prop :=
  ∀ n, P5622730821539533686.a n = A377206 (n + 2)

end A377206

/-! ## A377206.P10259938048496986516

`A178334(n)+A031435(n+1)`
-/

namespace A377206.P10259938048496986516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A031435 (n + 1)

end

end A377206.P10259938048496986516

namespace A377206

/-- `A178334(n)+A031435(n+1)` -/
def P10259938048496986516.Spec : Prop :=
  ∀ n, P10259938048496986516.a n = A377206 (n + 2)

end A377206

/-! ## A377206.P3266438580525873281

`A178489(n)+A031435(n+1)`
-/

namespace A377206.P3266438580525873281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 n + A031435 (n + 1)

end

end A377206.P3266438580525873281

namespace A377206

/-- `A178489(n)+A031435(n+1)` -/
def P3266438580525873281.Spec : Prop :=
  ∀ n, P3266438580525873281.a n = A377206 (n + 2)

end A377206

/-! ## A377206.P2995973887317363941

`A031435(n+1)-A057428(n)`
-/

namespace A377206.P2995973887317363941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031435 (n + 1) - A057428 n

end

end A377206.P2995973887317363941

namespace A377206

/-- `A031435(n+1)-A057428(n)` -/
def P2995973887317363941.Spec : Prop :=
  ∀ n, P2995973887317363941.a n = A377206 (n + 2)

end A377206

/-! ## A377206.P15670268264504040310

`A211666(n+1)+A031435(n+1)`
-/

namespace A377206.P15670268264504040310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211666 (n + 1) + A031435 (n + 1)

end

end A377206.P15670268264504040310

namespace A377206

/-- `A211666(n+1)+A031435(n+1)` -/
def P15670268264504040310.Spec : Prop :=
  ∀ n, P15670268264504040310.a n = A377206 (n + 2)

end A377206

/-! ## A377206.P5265142106735621046

`A323022(n+1)+A031435(n+1)`
-/

namespace A377206.P5265142106735621046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323022 (n + 1) + A031435 (n + 1)

end

end A377206.P5265142106735621046

namespace A377206

/-- `A323022(n+1)+A031435(n+1)` -/
def P5265142106735621046.Spec : Prop :=
  ∀ n, P5265142106735621046.a n = A377206 (n + 2)

end A377206

/-! ## A377206.P12288539984187177139

`A352894(2*n+1)+A031435(n+1)`
-/

namespace A377206.P12288539984187177139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352894 (2 * n + 1) + A031435 (n + 1)

end

end A377206.P12288539984187177139

namespace A377206

/-- `A352894(2*n+1)+A031435(n+1)` -/
def P12288539984187177139.Spec : Prop :=
  ∀ n, P12288539984187177139.a n = A377206 (n + 2)

end A377206

/-!
# A377208: a(n) is the number of iterations that n requires to reach a noninteger or a Fibonacci number under the map x -> x / z(x), where z(k) = A007895(k) is the number of terms in the Zeckendorf representation of k; a(n) = 0 if n is a Fibonacci number.

The programs for A377208, there is no canonical definition to state claims against.
-/

/-! ## A377208.P4741020624054016896

`A193509(A037943(n+1))`
-/

namespace A377208.P4741020624054016896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193509 (A037943 (n + 1)).toNat

end

end A377208.P4741020624054016896

/-! ## A377208.P6977226332433276336

`A093557(n+1)%A093415(A235991(3*n+1))`
-/

namespace A377208.P6977226332433276336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093557 (n + 1)) (A093415 (A235991 (3 * n + 1)).toNat)

end

end A377208.P6977226332433276336

/-! ## A377208.P926324630985619560

`val(A000010(A015953(n+1)), 4)`
-/

namespace A377208.P926324630985619560
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000010 (A015953 (n + 1)).toNat).toNat 4

end

end A377208.P926324630985619560

/-! ## A377208.P15769865413266768602

`A001221(n+1)-A010060(A306302(n))`
-/

namespace A377208.P15769865413266768602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A010060 (A306302 n).toNat

end

end A377208.P15769865413266768602

/-! ## A377208.P6888330073524101404

`A088044(A022166(n))%floor(sqrt(n+1))`
-/

namespace A377208.P6888330073524101404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088044 (A022166 n).toNat) (Nat.sqrt (n + 1) : ℤ)

end

end A377208.P6888330073524101404

/-!
# A377209: Zeckendorf-Niven numbers (A328208) k such that k/z(k) is also a Zeckendorf-Niven number, where z(k) = A007895(k) is the number of terms in the Zeckendorf representation of k.

The programs for A377209, there is no canonical definition to state claims against.
-/

/-! ## A377209.P11745115301666285655

`A377210(n+1)%A352233(n+1)`
-/

namespace A377209.P11745115301666285655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A377210 (n + 1)) (A352233 (n + 1))

end

end A377209.P11745115301666285655

/-! ## A377209.P986960003659615508

`∩[A346132(n+1), A377210(n+1)]`
-/

namespace A377209.P986960003659615508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377209.P986960003659615508

/-! ## A377209.P2476966648837946565

`A377210(n+1)+A000007(A102726(n))`
-/

namespace A377209.P2476966648837946565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377210 (n + 1) + A000007 (A102726 n).toNat

end

end A377209.P2476966648837946565

/-! ## A377209.P12289031789558512794

`A377210(n+1)+A008683(A158601(n))`
-/

namespace A377209.P12289031789558512794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377210 (n + 1) + A008683 (A158601 n).toNat

end

end A377209.P12289031789558512794

/-! ## A377209.P10853468102112639569

`A377210(n+1)+A240467(A000055(n))`
-/

namespace A377209.P10853468102112639569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377210 (n + 1) + A240467 (A000055 n).toNat

end

end A377209.P10853468102112639569

/-!
# A377210: Zeckendorf-Niven numbers (A328208) k such that m = k/z(k) and m/z(m) are also Zeckendorf-Niven numbers, where z(k) = A007895(k) is the number of terms in the Zeckendorf representation of k.

The programs for A377210, there is no canonical definition to state claims against.
-/

/-! ## A377210.P12656619985911389388

`A377209(n+1)+A185036(A165727(n))`
-/

namespace A377210.P12656619985911389388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377209 (n + 1) + A185036 (A165727 n).toNat

end

end A377210.P12656619985911389388

/-!
# A377211: a(n) is the least number k such that A377208(k) = n, or -1 if no such number exists.

The programs for A377211, there is no canonical definition to state claims against.
-/

/-! ## A377211.P2437804169764501993

`A000224((n+1)*A028417(n+1))`
-/

namespace A377211.P2437804169764501993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000224 ((n + 1 : ℤ) * A028417 (n + 1)).toNat

end

end A377211.P2437804169764501993

/-! ## A377211.P17827160471286012437

`A007947(n+1)*A344296(A026765(n))`
-/

namespace A377211.P17827160471286012437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A344296 (A026765 n).toNat

end

end A377211.P17827160471286012437

/-!
# A377215: Expansion of 1/(1 - 4*x^2/(1-x))^(5/2).

The programs for A377215, there is no canonical definition to state claims against.
-/

/-! ## A377215.P10613524706008360793

`A377216(comp[n²-1]*A380534(9^n+1))`
-/

namespace A377215.P10613524706008360793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377216 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) * A380534 (9 ^ n + 1)).toNat

end

end A377215.P10613524706008360793

/-! ## A377215.P16231621399163594173

`and(A006357(n), A243210(A006093(n+3)))`
-/

namespace A377215.P16231621399163594173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006357 n) (A243210 (A006093 (n + 3)).toNat)

end

end A377215.P16231621399163594173

/-!
# A377217: Expansion of the o.g.f. A(x) defined by [x^n] A(x)^(6*n) = (3*n)!/n!^3 for n >= 0.

The programs for A377217, there is no canonical definition to state claims against.
-/

/-! ## A377217.P6221142025635680575

`filter[A045632(n+1), A095130(#)]`
-/

namespace A377217.P6221142025635680575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045632 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A095130 (f1 j).toNat = 1) n)

end

end A377217.P6221142025635680575

/-! ## A377217.P2106147498840084348

`A045632(∏{e}[A285863(2*n), #])`
-/

namespace A377217.P2106147498840084348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285863 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045632 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A377217.P2106147498840084348

/-!
# A377224: Number of ways to write n as x*(5*x+1) + y*(5*y+1)/2 + z*(5*z+1)/2, where x,y,z are integers with y*(5*y+1) <= z*(5*z+1).

The programs for A377224, there is no canonical definition to state claims against.
-/

/-! ## A377224.P8664177654005405987

`A165276(A125527(n+2))`
-/

namespace A377224.P8664177654005405987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165276 (A125527 (n + 2)).toNat

end

end A377224.P8664177654005405987

/-! ## A377224.P12160615677317147755

`A044933(A182737(n+1))`
-/

namespace A377224.P12160615677317147755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044933 (A182737 (n + 1)).toNat

end

end A377224.P12160615677317147755

/-! ## A377224.P17685508664490595676

`A304465(xor(3, A070933(n)))`
-/

namespace A377224.P17685508664490595676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304465 (Int.xor 3 (A070933 n)).toNat

end

end A377224.P17685508664490595676

/-! ## A377224.P16753454299582317508

`A001221(A318906(n)+A097609(n))`
-/

namespace A377224.P16753454299582317508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A318906 (n + 10) + A097609 n).toNat

end

end A377224.P16753454299582317508

/-! ## A377224.P18091976946655868149

`A108234(A059570(n+1))`
-/

namespace A377224.P18091976946655868149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108234 (A059570 (n + 1)).toNat

end

end A377224.P18091976946655868149

/-!
# A377226: Take the sequence of the signed denominators of Leibniz series for Pi/4 (cf. A157142) and permute the terms so that a negative term follows every two positive terms and the absolute difference between two consecutive terms of the same sign is 4.

The programs for A377226, the canonical program `A377226.P15819674215798588310` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377226 has offset 0).

The definition of A377226 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377226.P15819674215798588310

`2*a(n-3)-a(n-6)` with `a(0)=1, a(1)=5, a(2)=-3, a(3)=9, a(4)=13, a(5)=-7`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A377226

/-- `2*a(n-3)-a(n-6)` -/
def P15819674215798588310.Spec : Prop :=
  ∀ n, P15819674215798588310.a n = A377226 n

theorem P15819674215798588310.correct : P15819674215798588310.Spec := by
  intro n
  simp only [A377226]

end A377226

/-! ## A377226.P17410350516928838556

`A047438(n+1)/A061347(n+1)`
-/

namespace A377226.P17410350516928838556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047438 (n + 1) : ℚ) / (A061347 (n + 1) : ℚ)

end

end A377226.P17410350516928838556

namespace A377226

/-- `A047438(n+1)/A061347(n+1)` -/
def P17410350516928838556.Spec : Prop :=
  ∀ n, P17410350516928838556.a n = (A377226 n : ℚ)

end A377226

/-! ## A377226.P5766583197695851094

`Δ[n*A063198(n+1)]`
-/

namespace A377226.P5766583197695851094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A063198 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A377226.P5766583197695851094

namespace A377226

/-- `Δ[n*A063198(n+1)]` -/
def P5766583197695851094.Spec : Prop :=
  ∀ n, P5766583197695851094.a n = A377226 n

end A377226

/-! ## A377226.P5453498778379733915

`A157142(A367286(n))`
-/

namespace A377226.P5453498778379733915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157142 (A367286 n).toNat

end

end A377226.P5453498778379733915

namespace A377226

/-- `A157142(A367286(n))` -/
def P5453498778379733915.Spec : Prop :=
  ∀ n, P5453498778379733915.a n = A377226 n

end A377226

/-! ## A377226.P16707706926724115033

`A176447(A047438(n+1))`
-/

namespace A377226.P16707706926724115033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176447 (A047438 (n + 1)).toNat

end

end A377226.P16707706926724115033

namespace A377226

/-- `A176447(A047438(n+1))` -/
def P16707706926724115033.Spec : Prop :=
  ∀ n, P16707706926724115033.a n = A377226 n

end A377226

/-!
# A377228: Repdigits which are also Harshad numbers.

The programs for A377228, there is no canonical definition to state claims against.
-/

/-! ## A377228.P5360783390258028199

`∩[A082232(n+1), A064222(n)]`
-/

namespace A377228.P5360783390258028199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064222 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377228.P5360783390258028199

/-! ## A377228.P10283142292226974331

`∩[A096105(n+1), A082232(n+1)]`
-/

namespace A377228.P10283142292226974331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377228.P10283142292226974331

/-! ## A377228.P13410905397248137637

`∩[A082232(n+1), A048307(n)]`
-/

namespace A377228.P13410905397248137637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048307 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377228.P13410905397248137637

/-! ## A377228.P11693891214530168384

`A355222(A193409(n+2))`
-/

namespace A377228.P11693891214530168384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355222 (A193409 (n + 2)).toNat

end

end A377228.P11693891214530168384

/-! ## A377228.P16053396539778814544

`filter[A010785(n), A145568(#)]`
-/

namespace A377228.P16053396539778814544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145568 (f1 j).toNat = 1) n)

end

end A377228.P16053396539778814544

/-!
# A377229: Lexicographically earliest sequence of positive integers a(1), a(2), ... such that for any n >= 0, s(n) = Sum_{k=1..n} 1/(F(k)*a(k)) < 1, F = Fibonacci.

The programs for A377229, there is no canonical definition to state claims against.
-/

/-! ## A377229.P5344335937726507850

`A291784(A284605(n))+A010554(3*n+2)`
-/

namespace A377229.P5344335937726507850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291784 (A284605 n).toNat + A010554 (3 * n + 2)

end

end A377229.P5344335937726507850

/-!
# A377231: a(n) = digital root of 2^Fibonacci(n).

The programs for A377231, the canonical program `A377231.P3394966088313418529` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377231 has offset 0).

The definition of A377231 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A377231.P3394966088313418529

`dr(a(n-1)*a(n-2))` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A377231

/-- `dr(a(n-1)*a(n-2))` -/
def P3394966088313418529.Spec : Prop :=
  ∀ n, (P3394966088313418529.a n : ℤ) = A377231 n

theorem P3394966088313418529.correct : P3394966088313418529.Spec := by
  intro n
  simp only [A377231]

end A377231

/-!
# A377232: Odd numbers with binary representations corresponding to winning positions in Gordon Hamilton's Jumping Frogs game.

The programs for A377232, there is no canonical definition to state claims against.
-/

/-! ## A377232.P9060824919178444079

`lt[A036044(n), A070940(A057335(n))]`
-/

namespace A377232.P9060824919178444079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070940 (A057335 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A377232.P9060824919178444079

/-! ## A377232.P11678540626269055566

`lt[A030195(A359359(n)), A316313(n+1)]`
-/

namespace A377232.P11678540626269055566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030195 (A359359 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316313 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A377232.P11678540626269055566

/-! ## A377232.P4305377394692448838

`lt[A001621(A359359(n)), A359402(n+1)]`
-/

namespace A377232.P4305377394692448838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001621 (A359359 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359402 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A377232.P4305377394692448838

/-! ## A377232.P9077347540216247795

`lt[A250120(A310028(n)), A169698(n+1)]`
-/

namespace A377232.P9077347540216247795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 (A310028 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169698 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A377232.P9077347540216247795

/-! ## A377232.P13383433442593891629

`lt[A111396(A359359(n)), A330946(n+1)]`
-/

namespace A377232.P13383433442593891629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111396 (A359359 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330946 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A377232.P13383433442593891629

/-!
# A377233: Expansion of 1/(1 - 9*x/(1-x))^(2/3).

The programs for A377233, the canonical program `A377233.P17918467032488946191` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377233 has offset 0).

The definition of A377233 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377233.P17918467032488946191

`((11*n-5)*a(n-1)-10*(n-2)*a(n-2))/n` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A377233

/-- `((11*n-5)*a(n-1)-10*(n-2)*a(n-2))/n` -/
def P17918467032488946191.Spec : Prop :=
  ∀ n, P17918467032488946191.a n = (A377233 n : ℚ)

end A377233

/-!
# A377234: Expansion of 1/(1 - 9*x/(1-x))^(4/3).

The programs for A377234, the canonical program `A377234.P11271964526189146709` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377234 has offset 0).

The definition of A377234 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377234.P11271964526189146709

`((11*n+1)*a(n-1)-10*(n-2)*a(n-2))/n` with `a(0)=1, a(1)=12`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A377234

/-- `((11*n+1)*a(n-1)-10*(n-2)*a(n-2))/n` -/
def P11271964526189146709.Spec : Prop :=
  ∀ n, P11271964526189146709.a n = (A377234 n : ℚ)

end A377234

/-!
# A377235: Expansion of 1/(1 - 9*x/(1-x))^(5/3).

The programs for A377235, the canonical program `A377235.P9594007992268554248` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377235 has offset 0).

The definition of A377235 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377235.P9594007992268554248

`((11*n+4)*a(n-1)-10*(n-2)*a(n-2))/n` with `a(0)=1, a(1)=15`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A377235

/-- `((11*n+4)*a(n-1)-10*(n-2)*a(n-2))/n` -/
def P9594007992268554248.Spec : Prop :=
  ∀ n, P9594007992268554248.a n = (A377235 n : ℚ)

end A377235

/-!
# A377236: The mod value of the consecutive pairs of terms in A377182.

The programs for A377236, there is no canonical definition to state claims against.
-/

/-! ## A377236.P3458076556085428314

`A377182(n+1)%A377182(n+2)`
-/

namespace A377236.P3458076556085428314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A377182 (n + 1)) (A377182 (n + 2))

end

end A377236.P3458076556085428314

/-!
# A377237: Expansion of 1/sqrt(1 - 4*x/sqrt(1 - 4*x)).

The programs for A377237, there is no canonical definition to state claims against.
-/

/-! ## A377237.P18374072640360539136

`A247357(3*a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A377237.P18374072640360539136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A247357 (3 * a (n - 1)).toNat

end

end A377237.P18374072640360539136

/-!
# A377238: Expansion of 1/(1 - 9*x/(1 - 9*x)^(1/3))^(1/3).

The programs for A377238, there is no canonical definition to state claims against.
-/

/-! ## A377238.P11502594093561703818

`A008576(A000041(n)*A098305(n))`
-/

namespace A377238.P11502594093561703818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 (A000041 n * A098305 n).toNat

end

end A377238.P11502594093561703818

/-!
# A377240: Expansion of (1 + 9*x/(1 - 9*x)^(1/3))^(1/3).

The programs for A377240, there is no canonical definition to state claims against.
-/

/-! ## A377240.P6765827441038514622

`A112669(A042145(n))`
-/

namespace A377240.P6765827441038514622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112669 (A042145 n).toNat

end

end A377240.P6765827441038514622

/-!
# A377241: Expansion of 1/sqrt(1 - 4*x*sqrt(1 + 4*x)).

The programs for A377241, there is no canonical definition to state claims against.
-/

/-! ## A377241.P11013621096911638106

`A086553(A045908(n))`
-/

namespace A377241.P11013621096911638106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086553 (A045908 n).toNat

end

end A377241.P11013621096911638106

/-!
# A377244: Expansion of (1 - 9*x*(1 - 9*x)^(1/3))^(1/3).

The programs for A377244, there is no canonical definition to state claims against.
-/

/-! ## A377244.P1611971197428091844

`A377268(n)*A377305(A189732(n+1))`
-/

namespace A377244.P1611971197428091844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377268 n * A377305 (A189732 (n + 1)).toNat

end

end A377244.P1611971197428091844

/-!
# A377246: a(n) = (n!^2*n^(n-1)/4) * Sum_{k=4..n} A000276(k) / (n^k * (n-k)!).

The programs for A377246, there is no canonical definition to state claims against.
-/

/-! ## A377246.P9081777450572738305

`A066186(n)*A363916(n^3+1-n)`
-/

namespace A377246.P9081777450572738305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 n * A363916 ((n ^ 3 : ℤ) + (1 - (n : ℤ))).toNat

end

end A377246.P9081777450572738305

/-!
# A377247: a(n) is the largest k such that the sum of the first k divisors of n is at most n.

The programs for A377247, there is no canonical definition to state claims against.
-/

/-! ## A377247.P2225327126273009795

`A090529(A263432(n+1))`
-/

namespace A377247.P2225327126273009795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090529 (A263432 (n + 1)).toNat

end

end A377247.P2225327126273009795

/-! ## A377247.P7433733776719981115

`A186188(A383098(n+1))`
-/

namespace A377247.P7433733776719981115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186188 (A383098 (n + 1)).toNat

end

end A377247.P7433733776719981115

/-! ## A377247.P8075213027755081129

`A110592(A000005(n+1)*A018818(n+1))`
-/

namespace A377247.P8075213027755081129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110592 (A000005 (n + 1) * A018818 (n + 1)).toNat

end

end A377247.P8075213027755081129

/-! ## A377247.P13564803893923366115

`A072649(A319149(n+1)%A354399(2*n+3))`
-/

namespace A377247.P13564803893923366115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072649 (Int.tmod (A319149 (n + 1)) (A354399 (2 * n + 3))).toNat

end

end A377247.P13564803893923366115

/-! ## A377247.P14773664708487259799

`A005206(A181819(n+1)%A073459(n+1))`
-/

namespace A377247.P14773664708487259799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (Int.tmod (A181819 (n + 1)) (A073459 (n + 1))).toNat

end

end A377247.P14773664708487259799

/-!
# A377249: G.f. A(x) satisfies 1 - x = Sum_{n=-oo..+oo} (x^(2*n) - A(x))^n.

The programs for A377249, there is no canonical definition to state claims against.
-/

/-! ## A377249.P17520807476229551551

`A366509(A369682(n+1))`
-/

namespace A377249.P17520807476229551551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366509 (A369682 (n + 1)).toNat

end

end A377249.P17520807476229551551

/-! ## A377249.P11899715737550524639

`A067086(A006138(n+1)-n)`
-/

namespace A377249.P11899715737550524639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067086 (A006138 (n + 1) - (n : ℤ)).toNat

end

end A377249.P11899715737550524639

/-! ## A377249.P4950804421371472868

`A003987(A343200(n)+A222415(n+1))`
-/

namespace A377249.P4950804421371472868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 (A343200 n + A222415 (n + 1)).toNat

end

end A377249.P4950804421371472868

/-! ## A377249.P5112603144847550355

`A261034(A023359(n+1))-A059651(n)`
-/

namespace A377249.P5112603144847550355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261034 (A023359 (n + 1)).toNat - A059651 n

end

end A377249.P5112603144847550355

/-!
# A377252: G.f. satisfies A(x) = A( x^3 + x^3*A(x) ) / x^2.

The programs for A377252, there is no canonical definition to state claims against.
-/

/-! ## A377252.P6251395333122476733

`A130148(A148077(n))`
-/

namespace A377252.P6251395333122476733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130148 (A148077 n).toNat

end

end A377252.P6251395333122476733

/-! ## A377252.P7443100928609611990

`A085736(A023432(n+1))`
-/

namespace A377252.P7443100928609611990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085736 (A023432 (n + 1)).toNat

end

end A377252.P7443100928609611990

/-! ## A377252.P17078030659514307921

`A106829(A119262(n+1))`
-/

namespace A377252.P17078030659514307921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106829 (A119262 (n + 1)).toNat

end

end A377252.P17078030659514307921

/-! ## A377252.P2913348535685320845

`A322901(A005251(n+1))`
-/

namespace A377252.P2913348535685320845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322901 (A005251 (n + 1)).toNat

end

end A377252.P2913348535685320845

/-! ## A377252.P10295295190702056712

`A368941(A230509(n+1))`
-/

namespace A377252.P10295295190702056712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368941 (A230509 (n + 1)).toNat

end

end A377252.P10295295190702056712

/-!
# A377253: a(n) = cosh( n*arccosh(3^n) ).

The programs for A377253, the canonical program `A377253.P12717221008749548303` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377253 has offset 0).

The definition of A377253 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377253.P12717221008749548303

`((3^n+sqrt(9^n-1))^n+(3^n-sqrt(9^n-1))^n)/2`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A377253

/-- `((3^n+sqrt(9^n-1))^n+(3^n-sqrt(9^n-1))^n)/2` -/
def P12717221008749548303.Spec : Prop :=
  ∀ n, P12717221008749548303.a n = (A377253 n : ℝ)

end A377253

/-!
# A377254: G.f. A(x) satisfies 1 = Sum_{n=-oo..+oo} ( x^(2*n-1) + (-A(x))^n )^n.

The programs for A377254, there is no canonical definition to state claims against.
-/

/-! ## A377254.P13029504336550484923

`A353333((4^n+5)/3)+A001005(n)`
-/

namespace A377254.P13029504336550484923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353333 (SequenceMachineLib.roundAway ((4 ^ n + 5 : ℚ) / 3)).toNat + A001005 n

end

end A377254.P13029504336550484923

/-! ## A377254.P12212195067956058039

`A112765(A108480(n))+A001005(n)`
-/

namespace A377254.P12212195067956058039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112765 (A108480 n).toNat + A001005 n

end

end A377254.P12212195067956058039

/-! ## A377254.P4926505317163423810

`A023531(A362597(n))+A001005(n)`
-/

namespace A377254.P4926505317163423810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 (A362597 n).toNat + A001005 n

end

end A377254.P4926505317163423810

/-! ## A377254.P4584914983995909776

`A366533(A357160(n))+A001005(n)`
-/

namespace A377254.P4584914983995909776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366533 (A357160 n).toNat + A001005 n

end

end A377254.P4584914983995909776

/-! ## A377254.P722335104211753826

`or(A001005(n), A014581(A014584(n)))`
-/

namespace A377254.P722335104211753826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001005 n) (A014581 (A014584 n).toNat)

end

end A377254.P722335104211753826

/-!
# A377255: G.f. A(x) satisfies A(x)^2 = A(x^2) + 2*A(x^3).

The programs for A377255, there is no canonical definition to state claims against.
-/

/-! ## A377255.P6840714885608061554

`A320785(n)*A373953(A180503(n))`
-/

namespace A377255.P6840714885608061554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320785 n * A373953 (A180503 n).toNat

end

end A377255.P6840714885608061554

/-!
# A377257: G.f. A(x) satisfies A(x)^5 = A(x^5) + 5*A(x^6).

The programs for A377257, there is no canonical definition to state claims against.
-/

/-! ## A377257.P5901044031626496317

`A179391(A000219(n))+A106223(n)`
-/

namespace A377257.P5901044031626496317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179391 (A000219 n).toNat + A106223 n

end

end A377257.P5901044031626496317

/-! ## A377257.P8310036288476469044

`A106223(n)+A103675(A106184(n))`
-/

namespace A377257.P8310036288476469044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106223 n + A103675 (A106184 n).toNat

end

end A377257.P8310036288476469044

/-! ## A377257.P1411611142070867215

`A106223(n)+A103675(A106186(n))`
-/

namespace A377257.P1411611142070867215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106223 n + A103675 (A106186 n).toNat

end

end A377257.P1411611142070867215

/-! ## A377257.P942933626174710672

`A196345(n)+A081603(A096206(n))`
-/

namespace A377257.P942933626174710672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196345 n + A081603 (A096206 n).toNat

end

end A377257.P942933626174710672

/-!
# A377258: G.f. A(x) satisfies A(x)^7 = A(x^7) + 7*A(x^8).

The programs for A377258, there is no canonical definition to state claims against.
-/

/-! ## A377258.P5174568123850593627

`A169671(A018030(n))+A106227(n)`
-/

namespace A377258.P5174568123850593627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169671 (A018030 n).toNat + A106227 n

end

end A377258.P5174568123850593627

/-! ## A377258.P1192985550617489298

`A316867(A000108(n))+A106227(n)`
-/

namespace A377258.P1192985550617489298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316867 (A000108 n).toNat + A106227 n

end

end A377258.P1192985550617489298

/-! ## A377258.P10504264725257640037

`A198313(A185163(n))+A106227(n)`
-/

namespace A377258.P10504264725257640037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198313 (A185163 n).toNat + A106227 n

end

end A377258.P10504264725257640037

/-! ## A377258.P14360063311385314976

`A352705(n)+A051344(A090630(n))`
-/

namespace A377258.P14360063311385314976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352705 n + A051344 (A090630 n).toNat

end

end A377258.P14360063311385314976

/-! ## A377258.P10924271262087567904

`A352705(n)+A185284(A000045(n))`
-/

namespace A377258.P10924271262087567904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352705 n + A185284 (A000045 n).toNat

end

end A377258.P10924271262087567904

/-!
# A377259: Least k such that for every integer i > k there are at least n composite numbers less than i and relatively prime to i.

The programs for A377259, there is no canonical definition to state claims against.
-/

/-! ## A377259.P3056714050593171435

`A253215(lt[A324038(n), A178799(n+1)])`
-/

namespace A377259.P3056714050593171435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178799 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253215 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A377259.P3056714050593171435

/-! ## A377259.P7728584507936914166

`30*A000120(A000984(n)+1)`
-/

namespace A377259.P7728584507936914166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  30 * A000120 (A000984 n + 1).toNat

end

end A377259.P7728584507936914166

/-! ## A377259.P9576762938232194389

`30*A327041(A092047(n+1))`
-/

namespace A377259.P9576762938232194389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  30 * A327041 (A092047 (n + 1)).toNat

end

end A377259.P9576762938232194389

/-!
# A377260: Expansion of 1/(1 - 9*x*(1 + x))^(4/3).

The programs for A377260, the canonical program `A377260.P9999732600150138462` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377260 has offset 0).

The definition of A377260 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377260.P9999732600150138462

`3*((3*n+1)*a(n-1)+(3*n+2)*a(n-2))/n` with `a(0)=1, a(1)=12`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A377260

/-- `3*((3*n+1)*a(n-1)+(3*n+2)*a(n-2))/n` -/
def P9999732600150138462.Spec : Prop :=
  ∀ n, P9999732600150138462.a n = (A377260 n : ℚ)

end A377260

/-!
# A377261: Expansion of 1/(1 - 9*x*(1 + x))^(5/3).

The programs for A377261, the canonical program `A377261.P14172900609927861861` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377261 has offset 0).

The definition of A377261 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377261.P14172900609927861861

`3*((3*n+2)*a(n-1)+(3*n+4)*a(n-2))/n` with `a(0)=1, a(1)=15`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A377261

/-- `3*((3*n+2)*a(n-1)+(3*n+4)*a(n-2))/n` -/
def P14172900609927861861.Spec : Prop :=
  ∀ n, P14172900609927861861.a n = (A377261 n : ℚ)

end A377261

/-!
# A377264: Consider the recurrence d(k) = (d(k-3)*d(k-2) + 1)/(d(k-5)*d(k-4)*d(k-3)^2*d(k-2)^2*d(k-1)), with d(0..4) = {1,1,1,2,1}. a(n) = numerator(d(2*n+1)).

The programs for A377264, there is no canonical definition to state claims against.
-/

/-! ## A377264.P2807592734896247087

`A006720(n+1)*A006720(n+3)`
-/

namespace A377264.P2807592734896247087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006720 (n + 1) * A006720 (n + 3)

end

end A377264.P2807592734896247087

/-! ## A377264.P7344697371547126217

`A028945(n+2)-A028944(n)`
-/

namespace A377264.P7344697371547126217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028945 (n + 2) - A028944 n

end

end A377264.P7344697371547126217

/-! ## A377264.P12442154550534686334

`A028941(2*n+1)-A028944(n)`
-/

namespace A377264.P12442154550534686334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028941 (2 * n + 1) - A028944 n

end

end A377264.P12442154550534686334

/-! ## A377264.P8207779273071154047

`A028945(n+2)-A028940(2*n+1)`
-/

namespace A377264.P8207779273071154047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028945 (n + 2) - A028940 (2 * n + 1)

end

end A377264.P8207779273071154047

/-! ## A377264.P3026889481765091349

`A028941(2*n+1)-A028940(2*n+1)`
-/

namespace A377264.P3026889481765091349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028941 (2 * n + 1) - A028940 (2 * n + 1)

end

end A377264.P3026889481765091349

/-!
# A377265: Numbers n such that 2*n contains one more 1 than does n in its decimal representation.

The programs for A377265, there is no canonical definition to state claims against.
-/

/-! ## A377265.P12142826276498173866

`lt[A376165(n+1), 3*n+2]+1`
-/

namespace A377265.P12142826276498173866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376165 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A377265.P12142826276498173866

/-! ## A377265.P9130293973557767700

`eq[A268643(n)+1, A268643(2*n)]`
-/

namespace A377265.P9130293973557767700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A377265.P9130293973557767700

/-! ## A377265.P6710761847047216932

`eq[A028310(2*n), A376165(A028310(n))]`
-/

namespace A377265.P6710761847047216932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376165 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A377265.P6710761847047216932

/-! ## A377265.P14752204883966226755

`eq[A268643(2*n), A268643(A017281(n))]`
-/

namespace A377265.P14752204883966226755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A017281 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A377265.P14752204883966226755

/-!
# A377266: Primes p with the property that there exist nonnegative integers m,n such that m!*n! is congruent to either +1 or -1 mod p^2, with m + n = p - 1.

The programs for A377266, there is no canonical definition to state claims against.
-/

/-! ## A377266.P230461102319280747

`∩[A131565(n+1), A299956(n+1)]`
-/

namespace A377266.P230461102319280747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131565 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377266.P230461102319280747

/-! ## A377266.P1596805732251144880

`A000040(∑[A377941(n+1)^A377941(n+1)])`
-/

namespace A377266.P1596805732251144880
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A377941 (n + 1) : ℚ) ^ (A377941 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A377266.P1596805732251144880

/-! ## A377266.P16776729810556964669

`A000040(∑[A377942(n+1)^A377942(n+1)])`
-/

namespace A377266.P16776729810556964669
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A377942 (n + 1) : ℚ) ^ (A377942 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A377266.P16776729810556964669

/-! ## A377266.P10668761150367400482

`A000040(∑[2^A281988(n+1)])`
-/

namespace A377266.P10668761150367400482
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A281988 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A377266.P10668761150367400482

/-! ## A377266.P4580773072938308590

`A000040(∑[A084938(n)^A084938(n)])`
-/

namespace A377266.P4580773072938308590
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084938 n : ℚ) ^ (A084938 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A377266.P4580773072938308590

/-!
# A377268: G.f. satisfies A(x) = (1 - 9*x*A(x))^(1/3).

The programs for A377268, there is no canonical definition to state claims against.
-/

/-! ## A377268.P16375837338043363316

`(-1)^n*A370146(A005843(n))`
-/

namespace A377268.P16375837338043363316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A370146 (A005843 n).toNat

end

end A377268.P16375837338043363316

/-! ## A377268.P8176150238402209155

`A008683(A002110(n))*A370146(2*n)`
-/

namespace A377268.P8176150238402209155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A002110 n).toNat * A370146 (2 * n)

end

end A377268.P8176150238402209155

/-! ## A377268.P12258343362721531006

`A070749(A256142(n))*A370146(2*n)`
-/

namespace A377268.P12258343362721531006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070749 (A256142 n).toNat * A370146 (2 * n)

end

end A377268.P12258343362721531006

/-!
# A377270: Smallest index k such that the k-th prime number in base-2 contains the n-th Fibonacci number in base-2 as a contiguous substring.

The programs for A377270, there is no canonical definition to state claims against.
-/

/-! ## A377270.P16049903296922995931

`A377483(A000045(n+1))`
-/

namespace A377270.P16049903296922995931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377483 (A000045 (n + 1)).toNat

end

end A377270.P16049903296922995931

/-! ## A377270.P17969754254342563845

`A377483(A324969(n+2))`
-/

namespace A377270.P17969754254342563845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377483 (A324969 (n + 2)).toNat

end

end A377270.P17969754254342563845

/-! ## A377270.P8563049188683099717

`A318749(A095239(n+1))`
-/

namespace A377270.P8563049188683099717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318749 (A095239 (n + 1)).toNat

end

end A377270.P8563049188683099717

/-! ## A377270.P6812753931420376676

`A238457(A106228(n)+A094606(n+1))`
-/

namespace A377270.P6812753931420376676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238457 (A106228 n + A094606 (n + 1)).toNat

end

end A377270.P6812753931420376676

/-! ## A377270.P11873957332426285537

`A380910(n)-A343747(A372055(n+1))`
-/

namespace A377270.P11873957332426285537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380910 n - A343747 (A372055 (n + 1)).toNat

end

end A377270.P11873957332426285537

/-!
# A377271: Numbers k such that k and k+1 are both terms in A377209.

The programs for A377271, there is no canonical definition to state claims against.
-/

/-! ## A377271.P370887615660114466

`∩[A377209(n+1)-1, A377209(n+1)]`
-/

namespace A377271.P370887615660114466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377209 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377209 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377271.P370887615660114466

/-!
# A377278: Denominators in a harmonic triangle; q-analog of A126615, here q = 2.

The programs for A377278, there is no canonical definition to state claims against.
-/

/-! ## A377278.P236943404926102638

`∏{p}[A245789(n+1)*A245789(n+2), #]`
-/

namespace A377278.P236943404926102638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245789 (n + 1) * A245789 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A377278.P236943404926102638

/-! ## A377278.P17190169956080630024

`A007947(A245789(n+1)*A245789(n+2))`
-/

namespace A377278.P17190169956080630024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A245789 (n + 1) * A245789 (n + 2)).toNat

end

end A377278.P17190169956080630024

/-!
# A377279: Number of fixed points of f(k) = floor(k^2 / n) mod n^2.

The programs for A377279, there is no canonical definition to state claims against.
-/

/-! ## A377279.P81717773619198541

`A288569(A327482(3*n+2)+A089865(n))`
-/

namespace A377279.P81717773619198541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288569 (A327482 (3 * n + 2) + A089865 n).toNat

end

end A377279.P81717773619198541

/-! ## A377279.P1227646792770656000

`A001221(A008586(2*(n+1))*A078972(3*n+1))`
-/

namespace A377279.P1227646792770656000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A008586 (2 * (n + 1)) * A078972 (3 * n + 1)).toNat

end

end A377279.P1227646792770656000

/-! ## A377279.P4693734750729326809

`A083890(2*n+5)+A036584(A182763(n+1))`
-/

namespace A377279.P4693734750729326809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083890 (2 * n + 5) + A036584 (A182763 (n + 1)).toNat

end

end A377279.P4693734750729326809

/-! ## A377279.P1657342108496117683

`A252463(A325249(2*(n+1)))%A360245(3*n+4)`
-/

namespace A377279.P1657342108496117683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252463 (A325249 (2 * (n + 1))).toNat) (A360245 (3 * n + 4))

end

end A377279.P1657342108496117683

/-! ## A377279.P16823970572194045976

`A266226(A166629(n+1))`
-/

namespace A377279.P16823970572194045976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266226 (A166629 (n + 1)).toNat

end

end A377279.P16823970572194045976

/-!
# A377280: Given n cards, each time you reversing the order of the top 1, 2, 3, ..., n-1, n cards, then repeat reversing 1, 2, 3, ... cards. Do reversing at least once. the minimum number of steps required to return all the cards to their original position.

The programs for A377280, there is no canonical definition to state claims against.
-/

/-! ## A377280.P16309590749485234728

`(n+1)*A003558(n+1)`
-/

namespace A377280.P16309590749485234728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A003558 (n + 1)

end

end A377280.P16309590749485234728

/-! ## A377280.P13375438176522832230

`A003558(A080513(2*n))*A080513(2*n)`
-/

namespace A377280.P13375438176522832230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 (A080513 (2 * n)).toNat * A080513 (2 * n)

end

end A377280.P13375438176522832230

/-! ## A377280.P7481542724776889756

`A003558(A110514(2*n))*A110514(2*n)`
-/

namespace A377280.P7481542724776889756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 (A110514 (2 * n)).toNat * A110514 (2 * n)

end

end A377280.P7481542724776889756

/-! ## A377280.P15276087403245991648

`A003558(A131732(2*n))*A131732(2*n)`
-/

namespace A377280.P15276087403245991648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 (A131732 (2 * n)).toNat * A131732 (2 * n)

end

end A377280.P15276087403245991648

/-! ## A377280.P9782357598826832385

`(n+1)*A309786(2*n+3)`
-/

namespace A377280.P9782357598826832385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A309786 (2 * n + 3)

end

end A377280.P9782357598826832385

/-!
# A377281: Difference between the n-th prime and the next prime-power (exclusive).

The programs for A377281, there is no canonical definition to state claims against.
-/

/-! ## A377281.P5871451256468182160

`A188348(Δ[A007504(n)])`
-/

namespace A377281.P5871451256468182160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188348 (f1 (n + 1) - f1 n).toNat

end

end A377281.P5871451256468182160

/-! ## A377281.P10116920064329978837

`A377780(Δ[A007504(n)])`
-/

namespace A377281.P10116920064329978837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377780 (f1 (n + 1) - f1 n).toNat

end

end A377281.P10116920064329978837

/-! ## A377281.P8126559935692070177

`A057820(A024620(n+1))`
-/

namespace A377281.P8126559935692070177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057820 (A024620 (n + 1)).toNat

end

end A377281.P8126559935692070177

/-! ## A377281.P14014230932969718788

`A188348(A000040(n+1))`
-/

namespace A377281.P14014230932969718788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188348 (A000040 (n + 1)).toNat

end

end A377281.P14014230932969718788

/-! ## A377281.P13430551639926258241

`A049711(A345531(n+1))`
-/

namespace A377281.P13430551639926258241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049711 (A345531 (n + 1)).toNat

end

end A377281.P13430551639926258241

/-! ## A377281.P17860810641121845380

`A188348(A008578(n+2))`
-/

namespace A377281.P17860810641121845380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188348 (A008578 (n + 2)).toNat

end

end A377281.P17860810641121845380

/-! ## A377281.P8202498405062276098

`A188348(A175787(n+2))`
-/

namespace A377281.P8202498405062276098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188348 (A175787 (n + 2)).toNat

end

end A377281.P8202498405062276098

/-! ## A377281.P3253401789438545400

`A188348(A182986(n+2))`
-/

namespace A377281.P3253401789438545400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188348 (A182986 (n + 2)).toNat

end

end A377281.P3253401789438545400

/-!
# A377282: Difference between n and the next prime-power (exclusive).

The programs for A377282, there is no canonical definition to state claims against.
-/

/-! ## A377282.P10092762934930579903

`A378370(n+2)+1`
-/

namespace A377282.P10092762934930579903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378370 (n + 2) + 1

end

end A377282.P10092762934930579903

/-! ## A377282.P8438499966211881780

`A000015(n+2)-(n+1)`
-/

namespace A377282.P8438499966211881780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (n + 2) - (n + 1 : ℤ)

end

end A377282.P8438499966211881780

/-! ## A377282.P17437129988090895501

`∑[A377780(n+1)]+1-n`
-/

namespace A377282.P17437129988090895501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377780 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - (n : ℤ))

end

end A377282.P17437129988090895501

/-! ## A377282.P16688219748453346495

`Δ[A109442(n+1)]-(n+1)`
-/

namespace A377282.P16688219748453346495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109442 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n + 1 : ℤ)

end

end A377282.P16688219748453346495

/-! ## A377282.P926345685954555899

`A188666(2*(n+1))-(n+1)`
-/

namespace A377282.P926345685954555899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188666 (2 * (n + 1)) - (n + 1 : ℤ)

end

end A377282.P926345685954555899

/-! ## A377282.P17063221563731658565

`A002113(A000015(n+2)-n)`
-/

namespace A377282.P17063221563731658565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (A000015 (n + 2) - (n : ℤ)).toNat

end

end A377282.P17063221563731658565

/-! ## A377282.P6224482267071565767

`A023443(A000015(n+2)-n)`
-/

namespace A377282.P6224482267071565767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A000015 (n + 2) - (n : ℤ)).toNat

end

end A377282.P6224482267071565767

/-! ## A377282.P8099072763960376879

`A057890(A000015(n+2)-n)`
-/

namespace A377282.P8099072763960376879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057890 (A000015 (n + 2) - (n : ℤ)).toNat

end

end A377282.P8099072763960376879

/-! ## A377282.P17595053760660708053

`A269303(A000015(n+2)-n)`
-/

namespace A377282.P17595053760660708053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269303 (A000015 (n + 2) - (n : ℤ)).toNat

end

end A377282.P17595053760660708053

/-! ## A377282.P11670899254494824795

`A271980(A000015(n+2)-n)`
-/

namespace A377282.P11670899254494824795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271980 (A000015 (n + 2) - (n : ℤ)).toNat

end

end A377282.P11670899254494824795

/-!
# A377283: Nonnegative integers k such that either k = 0 or there is a perfect power x in the range prime(k) < x < prime(k+1).

The programs for A377283, there is no canonical definition to state claims against.
-/

/-! ## A377283.P10094333703589770858

`A378251(n)+a(n-1)` with `a(0)=0`
-/

namespace A377283.P10094333703589770858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A378251 n + a (n - 1)

end

end A377283.P10094333703589770858

/-! ## A377283.P4409598611406877421

`record[A378356(A152271(n))]-1`
-/

namespace A377283.P4409598611406877421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378356 (A152271 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1

end

end A377283.P4409598611406877421

/-! ## A377283.P9361499183314867664

`record[A378356(A026272(n+1))]-1`
-/

namespace A377283.P9361499183314867664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378356 (A026272 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1

end

end A377283.P9361499183314867664

/-! ## A377283.P7354845619042656247

`record[A378356(A027751(n+1))-1]`
-/

namespace A377283.P7354845619042656247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378356 (A027751 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A377283.P7354845619042656247

/-! ## A377283.P7324078498730154272

`record[A378356(A104706(n+1))-1]`
-/

namespace A377283.P7324078498730154272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378356 (A104706 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A377283.P7324078498730154272

/-! ## A377283.P5348931885634521426

`record[A378356(A305801(n+1))-1]`
-/

namespace A377283.P5348931885634521426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378356 (A305801 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A377283.P5348931885634521426

/-! ## A377283.P16718504961048015370

`record[A378356(A318311(n+1))-1]`
-/

namespace A377283.P16718504961048015370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378356 (A318311 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A377283.P16718504961048015370

/-! ## A377283.P16903873216302226412

`record[A378356(A290988(n+2))-1]`
-/

namespace A377283.P16903873216302226412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378356 (A290988 (n + 2)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A377283.P16903873216302226412

/-! ## A377283.P14952958441397533659

`record[A000720(A081676(n^(n%2)))]`
-/

namespace A377283.P14952958441397533659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A081676 (n ^ (n % 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A377283.P14952958441397533659

/-! ## A377283.P2023813738289855725

`∑[A378251(n+1)]-A378251(n+1)`
-/

namespace A377283.P2023813738289855725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A378251 (n + 1)

end

end A377283.P2023813738289855725

/-!
# A377286: Numbers k such that there are no prime-powers between prime(k)+1 and prime(k+1)-1.

The programs for A377286, there is no canonical definition to state claims against.
-/

/-! ## A377286.P10466634593951210461

`eq[0, A080101(n+1)]+1`
-/

namespace A377286.P10466634593951210461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080101 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A377286.P10466634593951210461

/-! ## A377286.P9719802254307063122

`eq[1, A366833(n+1)]+1`
-/

namespace A377286.P9719802254307063122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366833 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A377286.P9719802254307063122

/-! ## A377286.P8377760028455432591

`comp[A377057(n+1)-1]+1`
-/

namespace A377286.P8377760028455432591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377057 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A377286.P8377760028455432591

/-! ## A377286.P18188010849166727698

`record[(n+2)/A366833(n+2)]`
-/

namespace A377286.P18188010849166727698
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A366833 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A377286.P18188010849166727698

/-! ## A377286.P2759213766838577857

`record[A064839(A065514(n+1))]`
-/

namespace A377286.P2759213766838577857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064839 (A065514 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A377286.P2759213766838577857

/-! ## A377286.P13688857581891425277

`record[A329622(A345531(n+1))]`
-/

namespace A377286.P13688857581891425277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329622 (A345531 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A377286.P13688857581891425277

/-! ## A377286.P16697069891130879681

`record[A049084(A065514(n+2))]`
-/

namespace A377286.P16697069891130879681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A065514 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A377286.P16697069891130879681

/-! ## A377286.P6907982036804618415

`record[A061395(A065514(n+3))]`
-/

namespace A377286.P6907982036804618415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A065514 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A377286.P6907982036804618415

/-! ## A377286.P10603422317746677678

`comp[A000720(A025475(n+1))]`
-/

namespace A377286.P10603422317746677678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A025475 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A377286.P10603422317746677678

/-! ## A377286.P16689173765211373299

`comp[A000720(A081218(n+1))]`
-/

namespace A377286.P16689173765211373299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A081218 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A377286.P16689173765211373299

/-!
# A377287: Numbers k such that there is exactly one prime-power between prime(k)+1 and prime(k+1)-1.

The programs for A377287, there is no canonical definition to state claims against.
-/

/-! ## A377287.P8295554353151010409

`eq[1, A080101(n+1)]+1`
-/

namespace A377287.P8295554353151010409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080101 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A377287.P8295554353151010409

/-! ## A377287.P14312116165956508154

`eq[2, A366833(n+1)]+1`
-/

namespace A377287.P14312116165956508154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366833 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A377287.P14312116165956508154

/-! ## A377287.P17286653552809275194

`eq[2, A366833(A028310(n))]`
-/

namespace A377287.P17286653552809275194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366833 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A377287.P17286653552809275194

/-! ## A377287.P8643218205111104626

`A020725(eq[2, A366833(n+1)])`
-/

namespace A377287.P8643218205111104626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366833 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A377287.P8643218205111104626

/-! ## A377287.P9425157412732108292

`eq[A080101(A028310(n)), A158388(n)]`
-/

namespace A377287.P9425157412732108292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080101 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A377287.P9425157412732108292

/-!
# A377288: Numbers k such that there are exactly two prime-powers between prime(k)+1 and prime(k+1)-1.

The programs for A377288, there is no canonical definition to state claims against.
-/

/-! ## A377288.P4341577569417646167

`A377466(comp[3*n])`
-/

namespace A377288.P4341577569417646167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377466 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A377288.P4341577569417646167

/-!
# A377289: Difference between prime(n) and the previous prime-power (exclusive).

The programs for A377289, the canonical program `A377289.P15347818859736990215` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377289 has offset 1).

The definition of A377289 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A377289.P15347818859736990215

`A000040(n+1)-A065514(n+1)`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A377289

/-- `A000040(n+1)-A065514(n+1)` -/
def P15347818859736990215.Spec : Prop :=
  ∀ n, P15347818859736990215.a n = A377289 (n + 1)

theorem P15347818859736990215.correct : P15347818859736990215.Spec := by
  intro n
  simp only [A377289, Nat.add_sub_cancel]

end A377289

/-! ## A377289.P14202540320633714850

`A057820(A027883(n+1))`
-/

namespace A377289.P14202540320633714850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057820 (A027883 (n + 1)).toNat

end

end A377289.P14202540320633714850

namespace A377289

/-- `A057820(A027883(n+1))` -/
def P14202540320633714850.Spec : Prop :=
  ∀ n, P14202540320633714850.a n = A377289 (n + 1)

end A377289

/-! ## A377289.P7682010868483816244

`A057820(A024620(n+1)-1)`
-/

namespace A377289.P7682010868483816244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057820 (A024620 (n + 1) - 1).toNat

end

end A377289.P7682010868483816244

namespace A377289

/-- `A057820(A024620(n+1)-1)` -/
def P7682010868483816244.Spec : Prop :=
  ∀ n, P7682010868483816244.a n = A377289 (n + 1)

end A377289

/-! ## A377289.P10644965326784669051

`A000040(n+1)-A000961(A027883(n+1))`
-/

namespace A377289.P10644965326784669051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A000961 (A027883 (n + 1)).toNat

end

end A377289.P10644965326784669051

namespace A377289

/-- `A000040(n+1)-A000961(A027883(n+1))` -/
def P10644965326784669051.Spec : Prop :=
  ∀ n, P10644965326784669051.a n = A377289 (n + 1)

end A377289

/-! ## A377289.P12139027477851563209

`A000961(A024620(n+1))-A000961(A027883(n+1))`
-/

namespace A377289.P12139027477851563209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (A024620 (n + 1)).toNat - A000961 (A027883 (n + 1)).toNat

end

end A377289.P12139027477851563209

namespace A377289

/-- `A000961(A024620(n+1))-A000961(A027883(n+1))` -/
def P12139027477851563209.Spec : Prop :=
  ∀ n, P12139027477851563209.a n = A377289 (n + 1)

end A377289

/-! ## A377289.P14558766647389038047

`A134735(2*n+1)-A065514(n+1)`
-/

namespace A377289.P14558766647389038047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134735 (2 * n + 1) - A065514 (n + 1)

end

end A377289.P14558766647389038047

namespace A377289

/-- `A134735(2*n+1)-A065514(n+1)` -/
def P14558766647389038047.Spec : Prop :=
  ∀ n, P14558766647389038047.a n = A377289 (n + 1)

end A377289

/-! ## A377289.P3953951613320964870

`A276781(A006093(n+1))`
-/

namespace A377289.P3953951613320964870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276781 (A006093 (n + 1)).toNat

end

end A377289.P3953951613320964870

namespace A377289

/-- `A276781(A006093(n+1))` -/
def P3953951613320964870.Spec : Prop :=
  ∀ n, P3953951613320964870.a n = A377289 (n + 1)

end A377289

/-! ## A377289.P13755584462585566978

`A276781(A039915(n+1))`
-/

namespace A377289.P13755584462585566978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276781 (A039915 (n + 1)).toNat

end

end A377289.P13755584462585566978

namespace A377289

/-- `A276781(A039915(n+1))` -/
def P13755584462585566978.Spec : Prop :=
  ∀ n, P13755584462585566978.a n = A377289 (n + 1)

end A377289

/-! ## A377289.P17598963344559526348

`A276781(A156037(n+1))`
-/

namespace A377289.P17598963344559526348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276781 (A156037 (n + 1)).toNat

end

end A377289.P17598963344559526348

namespace A377289

/-- `A276781(A156037(n+1))` -/
def P17598963344559526348.Spec : Prop :=
  ∀ n, P17598963344559526348.a n = A377289 (n + 1)

end A377289

/-! ## A377289.P2616201032080432396

`A276781(A068499(n+2))`
-/

namespace A377289.P2616201032080432396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276781 (A068499 (n + 2)).toNat

end

end A377289.P2616201032080432396

namespace A377289

/-- `A276781(A068499(n+2))` -/
def P2616201032080432396.Spec : Prop :=
  ∀ n, P2616201032080432396.a n = A377289 (n + 1)

end A377289

/-! ## A377289.P3882795640190769249

`A276781(A000040(n+1)-1)`
-/

namespace A377289.P3882795640190769249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276781 (A000040 (n + 1) - 1).toNat

end

end A377289.P3882795640190769249

namespace A377289

/-- `A276781(A000040(n+1)-1)` -/
def P3882795640190769249.Spec : Prop :=
  ∀ n, P3882795640190769249.a n = A377289 (n + 1)

end A377289

/-! ## A377289.P11661185042618670166

`A276781(A008578(n+2)-1)`
-/

namespace A377289.P11661185042618670166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276781 (A008578 (n + 2) - 1).toNat

end

end A377289.P11661185042618670166

namespace A377289

/-- `A276781(A008578(n+2)-1)` -/
def P11661185042618670166.Spec : Prop :=
  ∀ n, P11661185042618670166.a n = A377289 (n + 1)

end A377289

/-! ## A377289.P17030061213018279750

`A013632(A065514(n+1))`
-/

namespace A377289.P17030061213018279750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (A065514 (n + 1)).toNat

end

end A377289.P17030061213018279750

namespace A377289

/-- `A013632(A065514(n+1))` -/
def P17030061213018279750.Spec : Prop :=
  ∀ n, P17030061213018279750.a n = A377289 (n + 1)

end A377289

/-! ## A377289.P8960097542234867293

`A377782(A065890(n+1)+n+1)`
-/

namespace A377289.P8960097542234867293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377782 (A065890 (n + 1) + (n + 1 : ℤ)).toNat

end

end A377289.P8960097542234867293

namespace A377289

/-- `A377782(A065890(n+1)+n+1)` -/
def P8960097542234867293.Spec : Prop :=
  ∀ n, P8960097542234867293.a n = A377289 (n + 1)

end A377289

/-! ## A377289.P17468674575527323211

`A182986(n+2)-A136623(A182986(n+2))`
-/

namespace A377289.P17468674575527323211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 2) - A136623 (A182986 (n + 2)).toNat

end

end A377289.P17468674575527323211

namespace A377289

/-- `A182986(n+2)-A136623(A182986(n+2))` -/
def P17468674575527323211.Spec : Prop :=
  ∀ n, P17468674575527323211.a n = A377289 (n + 1)

end A377289

/-!
# A377293: Number of days where month plus day equals n, in a non-leap year in the Gregorian calendar.

The programs for A377293, there is no canonical definition to state claims against.
-/

/-! ## A377293.P15077304583752793544

`∑[A014078(A350898(3*n+2))]`
-/

namespace A377293.P15077304583752793544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014078 (A350898 (3 * n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A377293.P15077304583752793544

/-!
# A377294: a(n) is the least n-digit prime which is the sum of the squares of three consecutive numbers, or -1 if no such prime exists.

The programs for A377294, there is no canonical definition to state claims against.
-/

/-! ## A377294.P12679969744149509450

`A027864(lt[A019320(n), A060968(n+1)])`
-/

namespace A377294.P12679969744149509450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019320 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060968 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027864 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A377294.P12679969744149509450

