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
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
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
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
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
import Seq.Opaque.C025

/-!
# A331600: a(n) = A002487(A331595(n)).

The programs for A331600, there is no canonical definition to state claims against.
-/

/-! ## A331600.P2097267464279948957

`A002487(A331731(n+1))`
-/

namespace A331600.P2097267464279948957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A331731 (n + 1)).toNat

end

end A331600.P2097267464279948957

/-! ## A331600.P11343570505743661001

`A002487(A331595(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A331600.P11343570505743661001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A331595 (n + 1)).toNat

end

end A331600.P11343570505743661001

/-! ## A331600.P17024917787513344330

`A002487(gcd(A122111(n+1), A241909(n+1)))`
-/

namespace A331600.P17024917787513344330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (Int.gcd (A122111 (n + 1)) (A241909 (n + 1)))

end

end A331600.P17024917787513344330

/-! ## A331600.P6879327523927072819

`A323365(4*A331731(n+1))`
-/

namespace A331600.P6879327523927072819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323365 (4 * A331731 (n + 1)).toNat

end

end A331600.P6879327523927072819

/-! ## A331600.P4835076043818283686

`or(A000007(n), A287896(A331731(n+1)))`
-/

namespace A331600.P4835076043818283686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A287896 (A331731 (n + 1)).toNat)

end

end A331600.P4835076043818283686

/-! ## A331600.P9659265294390319711

`A002487(gcd(A322865(n+1), A331732(n+1)))`
-/

namespace A331600.P9659265294390319711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (Int.gcd (A322865 (n + 1)) (A331732 (n + 1)))

end

end A331600.P9659265294390319711

/-! ## A331600.P6122005408789335101

`A287896(A331731(n+1))*A331731(A071329(n+1))`
-/

namespace A331600.P6122005408789335101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287896 (A331731 (n + 1)).toNat * A331731 (A071329 (n + 1)).toNat

end

end A331600.P6122005408789335101

/-!
# A331601: a(n) = A002487(A241909(n)).

The programs for A331601, the canonical program `A331601.P6234947903555112306` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331601 has offset 1).

The definition of A331601 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A331601.P8375688425251248537

`A002487(A331732(n+1))`
-/

namespace A331601.P8375688425251248537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A331732 (n + 1)).toNat

end

end A331601.P8375688425251248537

namespace A331601

/-- `A002487(A331732(n+1))` -/
def P8375688425251248537.Spec : Prop :=
  ∀ n, P8375688425251248537.a n = A331601 (n + 1)

end A331601

/-! ## A331601.P14488715737456390649

`A002487(A241909(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A331601.P14488715737456390649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A241909 (n + 1)).toNat

end

end A331601.P14488715737456390649

namespace A331601

/-- `A002487(A241909(n+1))` -/
def P14488715737456390649.Spec : Prop :=
  ∀ n, P14488715737456390649.a n = A331601 (n + 1)

end A331601

/-! ## A331601.P6234947903555112306

`xor(A323902(n+1), A331748(A322993(n+1)))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A331601

/-- `xor(A323902(n+1), A331748(A322993(n+1)))` -/
def P6234947903555112306.Spec : Prop :=
  ∀ n, P6234947903555112306.a n = A331601 (n + 1)

theorem P6234947903555112306.correct : P6234947903555112306.Spec := by
  intro n
  simp only [A331601, Nat.add_sub_cancel]

end A331601

/-! ## A331601.P3871440415508715786

`A323903(A241916(n+1))`
-/

namespace A331601.P3871440415508715786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323903 (A241916 (n + 1)).toNat

end

end A331601.P3871440415508715786

namespace A331601

/-- `A323903(A241916(n+1))` -/
def P3871440415508715786.Spec : Prop :=
  ∀ n, P3871440415508715786.a n = A331601 (n + 1)

end A331601

/-! ## A331601.P7201579518209421157

`A323903(A137502(2*(n+1))/2)`
-/

namespace A331601.P7201579518209421157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323903 (SequenceMachineLib.roundAway ((A137502 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A331601.P7201579518209421157

namespace A331601

/-- `A323903(A137502(2*(n+1))/2)` -/
def P7201579518209421157.Spec : Prop :=
  ∀ n, P7201579518209421157.a n = A331601 (n + 1)

end A331601

/-! ## A331601.P8424685356108455716

`A323903(A293448(2*(n+1))/2)`
-/

namespace A331601.P8424685356108455716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323903 (SequenceMachineLib.roundAway ((A293448 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A331601.P8424685356108455716

namespace A331601

/-- `A323903(A293448(2*(n+1))/2)` -/
def P8424685356108455716.Spec : Prop :=
  ∀ n, P8424685356108455716.a n = A331601 (n + 1)

end A331601

/-! ## A331601.P9822683228418783520

`A323903(ceil(A137502(n+2+n)/2))`
-/

namespace A331601.P9822683228418783520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323903 ⌈(A137502 (n + 2 + n) : ℚ) / 2⌉.toNat

end

end A331601.P9822683228418783520

namespace A331601

/-- `A323903(ceil(A137502(n+2+n)/2))` -/
def P9822683228418783520.Spec : Prop :=
  ∀ n, P9822683228418783520.a n = A331601 (n + 1)

end A331601

/-! ## A331601.P8236898624038690936

`A323901(A322993(n+1))`
-/

namespace A331601.P8236898624038690936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323901 (A322993 (n + 1)).toNat

end

end A331601.P8236898624038690936

namespace A331601

/-- `A323901(A322993(n+1))` -/
def P8236898624038690936.Spec : Prop :=
  ∀ n, P8236898624038690936.a n = A331601 (n + 1)

end A331601

/-! ## A331601.P12541175332060426384

`A323901(A156552(n+1)%A118586(n+1))`
-/

namespace A331601.P12541175332060426384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323901 (Int.tmod (A156552 (n + 1)) (A118586 (n + 1))).toNat

end

end A331601.P12541175332060426384

namespace A331601

/-- `A323901(A156552(n+1)%A118586(n+1))` -/
def P12541175332060426384.Spec : Prop :=
  ∀ n, P12541175332060426384.a n = A331601 (n + 1)

end A331601

/-! ## A331601.P10774462216178434544

`A323901(gcd(A049084(n+1), A156552(n+1)))`
-/

namespace A331601.P10774462216178434544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323901 (Int.gcd (A049084 (n + 1)) (A156552 (n + 1)))

end

end A331601.P10774462216178434544

namespace A331601

/-- `A323901(gcd(A049084(n+1), A156552(n+1)))` -/
def P10774462216178434544.Spec : Prop :=
  ∀ n, P10774462216178434544.a n = A331601 (n + 1)

end A331601

/-!
# A331602: a(1) = 0; for n > 1, a(n) = A007947(A156552(n)).

The programs for A331602, the canonical program `A331602.P2130528119706008297` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331602 has offset 1).

The definition of A331602 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A331602.P2130528119706008297

`∏{p}[A322993(n+1), #]*A134451(n)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A331602

/-- `∏{p}[A322993(n+1), #]*A134451(n)` -/
def P2130528119706008297.Spec : Prop :=
  ∀ n, P2130528119706008297.a n = A331602 (n + 1)

theorem P2130528119706008297.correct : P2130528119706008297.Spec := by
  intro n
  simp only [A331602, Nat.add_sub_cancel]

end A331602

/-! ## A331602.P2685232720708191568

`∏{p}[A156552(n+1), #]-floor(acot(n))`
-/

namespace A331602.P2685232720708191568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A331602.P2685232720708191568

namespace A331602

/-- `∏{p}[A156552(n+1), #]-floor(acot(n))` -/
def P2685232720708191568.Spec : Prop :=
  ∀ n, P2685232720708191568.a n = A331602 (n + 1)

end A331602

/-! ## A331602.P2774510522881674959

`∏{p}[A156552(n+1), #]-A000007(n)`
-/

namespace A331602.P2774510522881674959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ) - A000007 n

end

end A331602.P2774510522881674959

namespace A331602

/-- `∏{p}[A156552(n+1), #]-A000007(n)` -/
def P2774510522881674959.Spec : Prop :=
  ∀ n, P2774510522881674959.a n = A331602 (n + 1)

end A331602

/-! ## A331602.P9991345206848418348

`∏{p}[A156552(n+1), #]%A000070(n)`
-/

namespace A331602.P9991345206848418348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ) (A000070 n)

end

end A331602.P9991345206848418348

namespace A331602

/-- `∏{p}[A156552(n+1), #]%A000070(n)` -/
def P9991345206848418348.Spec : Prop :=
  ∀ n, P9991345206848418348.a n = A331602 (n + 1)

end A331602

/-! ## A331602.P18189610272781934588

`char[A052938(n)]*∏{p}[A156552(n+1), #]`
-/

namespace A331602.P18189610272781934588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) * (∏ p ∈ Nat.primeFactors (f2 n).natAbs, p)

end

end A331602.P18189610272781934588

namespace A331602

/-- `char[A052938(n)]*∏{p}[A156552(n+1), #]` -/
def P18189610272781934588.Spec : Prop :=
  ∀ n, (P18189610272781934588.a n : ℤ) = A331602 (n + 1)

end A331602

/-! ## A331602.P15809516815016681042

`char[A133310(n)]*∏{p}[A156552(n+1), #]`
-/

namespace A331602.P15809516815016681042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) * (∏ p ∈ Nat.primeFactors (f2 n).natAbs, p)

end

end A331602.P15809516815016681042

namespace A331602

/-- `char[A133310(n)]*∏{p}[A156552(n+1), #]` -/
def P15809516815016681042.Spec : Prop :=
  ∀ n, (P15809516815016681042.a n : ℤ) = A331602 (n + 1)

end A331602

/-! ## A331602.P9910844822959772513

`A000040(n+1)%2*∏{p}[A156552(n+1), #]`
-/

namespace A331602.P9910844822959772513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ)

end

end A331602.P9910844822959772513

namespace A331602

/-- `A000040(n+1)%2*∏{p}[A156552(n+1), #]` -/
def P9910844822959772513.Spec : Prop :=
  ∀ n, P9910844822959772513.a n = A331602 (n + 1)

end A331602

/-!
# A331603: a(1) = 1; for n > 1, if a(n-1) is composite then a(n) is the concatenation of all the prime factors in order of a(n-1), otherwise a(n) is the smallest number not yet appearing in the sequence.

The programs for A331603, there is no canonical definition to state claims against.
-/

/-! ## A331603.P13937704497709014895

`∑[A238900(n^n+2)]`
-/

namespace A331603.P13937704497709014895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238900 (n ^ n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331603.P13937704497709014895

/-! ## A331603.P18251464866841301064

`∑[A360688(∏[∏{p}[n+1, #-1]])]`
-/

namespace A331603.P18251464866841301064
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360688 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331603.P18251464866841301064

/-!
# A331605: Positive integers k such that k = (a^2 + b^2 + c^2)/(a*b + b*c + c*a) for some integers a, b and c.

The programs for A331605, there is no canonical definition to state claims against.
-/

/-! ## A331605.P9199044586762197208

`A392201(n+1)-1`
-/

namespace A331605.P9199044586762197208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392201 (n + 1) - 1

end

end A331605.P9199044586762197208

/-! ## A331605.P5924295413409616545

`∩[A003136(n+1)+1, A003136(n+1)-2]`
-/

namespace A331605.P5924295413409616545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331605.P5924295413409616545

/-! ## A331605.P3266671842216549327

`A023443(A392201(n+1))`
-/

namespace A331605.P3266671842216549327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A392201 (n + 1)).toNat

end

end A331605.P3266671842216549327

/-! ## A331605.P4288294493784956780

`lt[and(2, n), A119395(n*(n+3))]+1`
-/

namespace A331605.P4288294493784956780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119395 (n * (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A331605.P4288294493784956780

/-! ## A331605.P85606155750510178

`lt[1, A033716(A289207(n)+n²)]`
-/

namespace A331605.P85606155750510178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 (A289207 n + (n ^ 2 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A331605.P85606155750510178

/-!
# A331606: Number of compositions of n with the multiplicity of the first part odd.

The programs for A331606, there is no canonical definition to state claims against.
-/

/-! ## A331606.P4081489349527948049

`A011782(n+1)-A331609(n+1)`
-/

namespace A331606.P4081489349527948049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) - A331609 (n + 1)

end

end A331606.P4081489349527948049

/-! ## A331606.P5074856137086603933

`2^n-A331609(n+1)`
-/

namespace A331606.P5074856137086603933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A331609 (n + 1)

end

end A331606.P5074856137086603933

/-! ## A331606.P2402258852244923787

`abs(A331609(n+1)-A000079(n))`
-/

namespace A331606.P2402258852244923787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A331609 (n + 1) - A000079 n|

end

end A331606.P2402258852244923787

/-! ## A331606.P6516638061853029139

`A000035(2*n)-(A331609(n+1)-A000079(n))`
-/

namespace A331606.P6516638061853029139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) - (A331609 (n + 1) - A000079 n)

end

end A331606.P6516638061853029139

/-! ## A331606.P17360647869494338728

`char[A038651(n+1)]-(A331609(n+1)-A000079(n))`
-/

namespace A331606.P17360647869494338728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038651 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - (A331609 (n + 1) - A000079 n)

end

end A331606.P17360647869494338728

/-! ## A331606.P18404988200813835657

`(A000079(n)-A331609(n+1))*A014963(4*n+6)`
-/

namespace A331606.P18404988200813835657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000079 n - A331609 (n + 1)) * A014963 (4 * n + 6)

end

end A331606.P18404988200813835657

/-! ## A331606.P2513751158359041853

`A000079(n)+A033999(A092899(n))*A331609(n+1)`
-/

namespace A331606.P2513751158359041853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + A033999 (A092899 n).toNat * A331609 (n + 1)

end

end A331606.P2513751158359041853

/-! ## A331606.P10465446655172628907

`A000079(n)+A325970(A001359(n+1))*A331609(n+1)`
-/

namespace A331606.P10465446655172628907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + A325970 (A001359 (n + 1)).toNat * A331609 (n + 1)

end

end A331606.P10465446655172628907

/-! ## A331606.P6692129528070436062

`(A000079(n)-A331609(n+1))*A007318(∑[n])`
-/

namespace A331606.P6692129528070436062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000079 n - A331609 (n + 1)) * A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A331606.P6692129528070436062

/-!
# A331607: E.g.f.: exp(1 / (1 - sin(x)) - 1).

The programs for A331607, there is no canonical definition to state claims against.
-/

/-! ## A331607.P17438032586666615392

`A028310(A058798(n+1)-A000142(n))`
-/

namespace A331607.P17438032586666615392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A058798 (n + 1) - A000142 n).toNat

end

end A331607.P17438032586666615392

/-! ## A331607.P9851193492064430047

`A306012(a(n-1))+n*a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A331607.P9851193492064430047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A306012 (a (n - 1)).toNat + (n : ℤ) * a (n - 1)

end

end A331607.P9851193492064430047

/-!
# A331608: E.g.f.: exp(1 / (1 - sinh(x)) - 1).

The programs for A331608, there is no canonical definition to state claims against.
-/

/-! ## A331608.P9272908022919684967

`∑{d}[n!, A256133(#)]`
-/

namespace A331608.P9272908022919684967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A256133 d

end

end A331608.P9272908022919684967

/-! ## A331608.P13388021369158805664

`A053403(a(n-1))-(n+2)` with `a(0)=1, a(1)=1`
-/

namespace A331608.P13388021369158805664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A053403 (a (n - 1)).toNat - (n + 2 : ℤ)

end

end A331608.P13388021369158805664

/-!
# A331609: Number of compositions of n with the multiplicity of the first part even.

The programs for A331609, there is no canonical definition to state claims against.
-/

/-! ## A331609.P1230059666010598851

`A011782(n+1)-A331606(n+1)`
-/

namespace A331609.P1230059666010598851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) - A331606 (n + 1)

end

end A331609.P1230059666010598851

/-! ## A331609.P7045386416855266654

`2^n-A331606(n+1)`
-/

namespace A331609.P7045386416855266654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A331606 (n + 1)

end

end A331609.P7045386416855266654

/-! ## A331609.P10647565903734693354

`abs(A331606(n+1)-A000079(n))`
-/

namespace A331609.P10647565903734693354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A331606 (n + 1) - A000079 n|

end

end A331609.P10647565903734693354

/-! ## A331609.P7748845690277733312

`and(-A331606(n+1), A000225(n))`
-/

namespace A331609.P7748845690277733312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A331606 (n + 1)) (A000225 n)

end

end A331609.P7748845690277733312

/-! ## A331609.P16014824052995735173

`A000051(n)-(A331606(n+1)+1)`
-/

namespace A331609.P16014824052995735173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A331606 (n + 1) + 1)

end

end A331609.P16014824052995735173

/-!
# A331610: Expansion of e.g.f.: exp(1 / (1 - tan(x)) - 1).

The programs for A331610, there is no canonical definition to state claims against.
-/

/-! ## A331610.P8246930994770588543

`A285296((n+3)*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A331610.P8246930994770588543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A285296 ((n + 3 : ℤ) * a (n - 1)).toNat

end

end A331610.P8246930994770588543

/-! ## A331610.P18039879765601119492

`A130497(2*2*n*a(n-1))` with `a(0)=1`
-/

namespace A331610.P18039879765601119492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A130497 (2 * (2 * ((n : ℤ) * a (n - 1)))).toNat

end

end A331610.P18039879765601119492

/-!
# A331613: Odd exceptional numbers: odd k such that A005179(k) < A037019(k).

The programs for A331613, there is no canonical definition to state claims against.
-/

/-! ## A331613.P4864129183646174550

`∩[3*A016945(n+1), A072066(n+1)]`
-/

namespace A331613.P4864129183646174550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A016945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072066 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331613.P4864129183646174550

/-! ## A331613.P13535109187392860459

`filter[A120027(n), A323510(#)]`
-/

namespace A331613.P13535109187392860459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120027 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323510 (f1 j).toNat = 1) n)

end

end A331613.P13535109187392860459

/-!
# A331614: a(n+1) is the number of times a(n) is the sum of one or more consecutive terms in this sequence so far with a(1) = 1.

The programs for A331614, there is no canonical definition to state claims against.
-/

/-! ## A331614.P3232968323283451245

`A079085(or(A000213(n), A200370(n+1)))`
-/

namespace A331614.P3232968323283451245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079085 (Int.lor (A000213 n) (A200370 (n + 1))).toNat

end

end A331614.P3232968323283451245

/-! ## A331614.P3988104071998064742

`A066241(record[A101296(A005555(n))])`
-/

namespace A331614.P3988104071998064742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (A005555 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066241 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A331614.P3988104071998064742

/-! ## A331614.P17223887793286627284

`A246359(A069891(3*n+4)*A259974(n+1))`
-/

namespace A331614.P17223887793286627284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246359 (A069891 (3 * n + 4) * A259974 (n + 1)).toNat

end

end A331614.P17223887793286627284

/-! ## A331614.P193727531153727686

`A066241(lt[A199237(3*n+4), A186434(2*n+1)])`
-/

namespace A331614.P193727531153727686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199237 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186434 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066241 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A331614.P193727531153727686

/-! ## A331614.P10842214931301227328

`A155043(lt[A034856(n+1), A000118(n)])`
-/

namespace A331614.P10842214931301227328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155043 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A331614.P10842214931301227328

/-!
# A331615: E.g.f.: exp(1 / (1 - arcsin(x)) - 1).

The programs for A331615, there is no canonical definition to state claims against.
-/

/-! ## A331615.P17912469073183755992

`A014132(A307440(n))-A155888(n)`
-/

namespace A331615.P17912469073183755992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (A307440 n).toNat - A155888 n

end

end A331615.P17912469073183755992

/-! ## A331615.P16240828169128036098

`A008619(Δ[A014623(n)])`
-/

namespace A331615.P16240828169128036098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014623 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (f1 (n + 1) - f1 n).toNat

end

end A331615.P16240828169128036098

/-!
# A331616: E.g.f.: exp(1 / (1 - arcsinh(x)) - 1).

The programs for A331616, there is no canonical definition to state claims against.
-/

/-! ## A331616.P3413690582272092893

`A008619(A209673(n)+A000212(n))`
-/

namespace A331616.P3413690582272092893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A209673 n + A000212 n).toNat

end

end A331616.P3413690582272092893

/-! ## A331616.P11774846574817949354

`A008619(A209673(n)+A069905(2*n))`
-/

namespace A331616.P11774846574817949354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A209673 n + A069905 (2 * n)).toNat

end

end A331616.P11774846574817949354

/-! ## A331616.P1487186563733392324

`A028310(or(A081157(n+3), A331607(n)))`
-/

namespace A331616.P1487186563733392324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.lor (A081157 (n + 3)) (A331607 n)).toNat

end

end A331616.P1487186563733392324

/-!
# A331617: E.g.f.: exp(1 / (1 - arctan(x)) - 1).

The programs for A331617, there is no canonical definition to state claims against.
-/

/-! ## A331617.P14223869187728457928

`A100682(A101053(n))`
-/

namespace A331617.P14223869187728457928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100682 (A101053 n).toNat

end

end A331617.P14223869187728457928

/-! ## A331617.P4639299726940235109

`A129657(A240172(n)+A002266(n))`
-/

namespace A331617.P4639299726940235109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129657 (A240172 n + A002266 n).toNat

end

end A331617.P4639299726940235109

/-! ## A331617.P18434003246387610743

`A081157(n)+A026741(A335788(n))`
-/

namespace A331617.P18434003246387610743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081157 n + A026741 (A335788 n).toNat

end

end A331617.P18434003246387610743

/-!
# A331618: Expansion of e.g.f. exp(1 / (1 - arctanh(x)) - 1).

The programs for A331618, there is no canonical definition to state claims against.
-/

/-! ## A331618.P9854287194677453078

`A050741(A192936(n))+1`
-/

namespace A331618.P9854287194677453078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050741 (A192936 n).toNat + 1

end

end A331618.P9854287194677453078

/-! ## A331618.P12609264611183893609

`A005599(A303927(n))`
-/

namespace A331618.P12609264611183893609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005599 (A303927 n).toNat

end

end A331618.P12609264611183893609

/-!
# A331620: Records of A058249: (Smallest prime >= 2^n) - (largest prime <= 2^n).

The programs for A331620, there is no canonical definition to state claims against.
-/

/-! ## A331620.P13792605320794159320

`record[A058249(n+2)]`
-/

namespace A331620.P13792605320794159320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058249 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331620.P13792605320794159320

/-! ## A331620.P7604213716685339799

`record[A013603(n+2)+A013597(n+2)]`
-/

namespace A331620.P7604213716685339799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013603 (n + 2) + A013597 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331620.P7604213716685339799

/-! ## A331620.P17123472166978485726

`record[A092131(n+2)+A013603(n+2)]`
-/

namespace A331620.P17123472166978485726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092131 (n + 2) + A013603 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331620.P17123472166978485726

/-! ## A331620.P17736043737280512970

`record[A092507(n)%A014234(A233583(n+1))]`
-/

namespace A331620.P17736043737280512970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092507 n) (A014234 (A233583 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331620.P17736043737280512970

/-! ## A331620.P5600921987397827793

`record[A104080(n)%A014234(A233583(n+1))]`
-/

namespace A331620.P5600921987397827793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104080 n) (A014234 (A233583 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331620.P5600921987397827793

/-!
# A331621: Number of distinct structures that can be made from n cubes without overhangs.

The programs for A331621, there is no canonical definition to state claims against.
-/

/-! ## A331621.P1415869320652270378

`n*a(A349329(A351616(n)))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4, a(4)=12, a(5)=35, a(6)=129, a(7)=495`
-/

namespace A331621.P1415869320652270378
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 4, 12, 35, 129, 495] fun n a =>
  n * a (A349329 (A351616 n).toNat).toNat

end

end A331621.P1415869320652270378

/-! ## A331621.P12784869998405306467

`or(A165655(n), A227590(A104880(n)))`
-/

namespace A331621.P12784869998405306467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A165655 n) (A227590 (A104880 n).toNat)

end

end A331621.P12784869998405306467

/-! ## A331621.P13696328273540966096

`or(A211540(n), A227590(A104880(n)))`
-/

namespace A331621.P13696328273540966096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A211540 n) (A227590 (A104880 n).toNat)

end

end A331621.P13696328273540966096

/-!
# A331622: a(n) is the number of k such that k and n-k are both composite.

The programs for A331622, there is no canonical definition to state claims against.
-/

/-! ## A331622.P10176880802644332117

`A302643(lt[A172528(n), A029750(n+1)])`
-/

namespace A331622.P10176880802644332117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172528 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302643 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A331622.P10176880802644332117

/-! ## A331622.P17870229684439371651

`A302643(lt[A172528(n), A300630(n+1)])`
-/

namespace A331622.P17870229684439371651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172528 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300630 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302643 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A331622.P17870229684439371651

/-! ## A331622.P1648025064362637295

`A143619(n)-A010051(A332563(3*n+5))`
-/

namespace A331622.P1648025064362637295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143619 n - A010051 (A332563 (3 * n + 5)).toNat

end

end A331622.P1648025064362637295

/-! ## A331622.P3033668718134220441

`A256012(2*n+3)%A205558(A045690(n+1))`
-/

namespace A331622.P3033668718134220441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256012 (2 * n + 3)) (A205558 (A045690 (n + 1)).toNat)

end

end A331622.P3033668718134220441

/-!
# A331623: Number of sequences with n copies each of 1,2,...,n avoiding absolute differences between adjacent elements larger than one.

The programs for A331623, there is no canonical definition to state claims against.
-/

/-! ## A331623.P16129149608078285458

`A331562(∑[4*n])`
-/

namespace A331623.P16129149608078285458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331562 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A331623.P16129149608078285458

/-! ## A331623.P2676371889855415570

`A331562(A046092(n))+A185284(n)`
-/

namespace A331623.P2676371889855415570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331562 (A046092 n).toNat + A185284 n

end

end A331623.P2676371889855415570

/-! ## A331623.P3570966897085223403

`lcm(A043529(n), A331562(A046092(n)))`
-/

namespace A331623.P3570966897085223403
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A043529 n) (A331562 (A046092 n).toNat)

end

end A331623.P3570966897085223403

/-! ## A331623.P11476815359282418431

`or(A063524(n), A331562(A046092(n)))`
-/

namespace A331623.P11476815359282418431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A063524 n) (A331562 (A046092 n).toNat)

end

end A331623.P11476815359282418431

/-! ## A331623.P7955852177773404517

`A331562(A046092(n))+A008683(4*(n+1))`
-/

namespace A331623.P7955852177773404517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331562 (A046092 n).toNat + A008683 (4 * (n + 1))

end

end A331623.P7955852177773404517

/-!
# A331627: Integers that are (exactly) k-deficient-perfect numbers.

The programs for A331627, there is no canonical definition to state claims against.
-/

/-! ## A331627.P233021717762499968

`A004977(n+2)-A123477(A101785(n))`
-/

namespace A331627.P233021717762499968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004977 (n + 2) - A123477 (A101785 n).toNat

end

end A331627.P233021717762499968

/-! ## A331627.P5418690234835728990

`∑[A329288(n²+1)]`
-/

namespace A331627.P5418690234835728990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329288 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331627.P5418690234835728990

/-! ## A331627.P17713980096759674100

`record[A199883(n+1)%A002328(n+1)]`
-/

namespace A331627.P17713980096759674100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A199883 (n + 1)) (A002328 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331627.P17713980096759674100

/-! ## A331627.P17112422672223161742

`record[gcd(A111791(n+1), A209762(n+1))]`
-/

namespace A331627.P17112422672223161742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A111791 (n + 1)) (A209762 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331627.P17112422672223161742

/-! ## A331627.P15336291797721980473

`record[and(A004001(2*(n+1)), A134141(n+1))]`
-/

namespace A331627.P15336291797721980473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004001 (2 * (n + 1))) (A134141 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331627.P15336291797721980473

/-!
# A331631: Let S = smallest missing positive number, adjoin S, 3*S, 9*S, 27*S, 81*S, ... to the sequence until reaching a term that has S as a substring; reset S to the smallest missing positive number, repeat.

The programs for A331631, there is no canonical definition to state claims against.
-/

/-! ## A331631.P11997748570236707036

`A064614(A101943(n)%A309671(n+1))`
-/

namespace A331631.P11997748570236707036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064614 (Int.tmod (A101943 n) (A309671 (n + 1))).toNat

end

end A331631.P11997748570236707036

/-! ## A331631.P6231173171491833882

`A003961(A000079(n))%241`
-/

namespace A331631.P6231173171491833882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003961 (A000079 n).toNat) 241

end

end A331631.P6231173171491833882

/-! ## A331631.P11963605781628023605

`A064614(A101943(n)²)/A064614(A101943(n))`
-/

namespace A331631.P11963605781628023605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064614 (A101943 n ^ 2).toNat : ℚ) / (A064614 (A101943 n).toNat : ℚ)

end

end A331631.P11963605781628023605

/-! ## A331631.P2065994914284020173

`A360648(A101943(n))`
-/

namespace A331631.P2065994914284020173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360648 (A101943 n).toNat

end

end A331631.P2065994914284020173

/-! ## A331631.P9282591426227383969

`A000027(A000244(n))%241`
-/

namespace A331631.P9282591426227383969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (A000244 n).toNat) 241

end

end A331631.P9282591426227383969

/-!
# A331633: Distinct values of A055944 in order of their appearance as n grows.

The programs for A331633, there is no canonical definition to state claims against.
-/

/-! ## A331633.P1730506550099534841

`A055944(lt[0, char[A330340(n)]])`
-/

namespace A331633.P1730506550099534841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330340 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055944 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A331633.P1730506550099534841

/-! ## A331633.P15037453831501307694

`A055944(eq[1, char[A330340(n)]])`
-/

namespace A331633.P15037453831501307694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330340 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055944 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A331633.P15037453831501307694

/-! ## A331633.P10702939370470998409

`A055944(lt[3, A306498(n)])`
-/

namespace A331633.P10702939370470998409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306498 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055944 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A331633.P10702939370470998409

/-! ## A331633.P5969197784810691248

`A055944(lt[A163905(n), 13])`
-/

namespace A331633.P5969197784810691248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163905 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055944 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A331633.P5969197784810691248

/-! ## A331633.P1379916656425878827

`A055944(lt[A048816(n+1), A274879(3*n+2)])`
-/

namespace A331633.P1379916656425878827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048816 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274879 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055944 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A331633.P1379916656425878827

/-!
# A331634: a(n) is the greatest possible least part of any prime partition of n.

The programs for A331634, there is no canonical definition to state claims against.
-/

/-! ## A331634.P2727087627022477797

`A333238(record[n*(3-A333238(n+3))]+2)`
-/

namespace A331634.P2727087627022477797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (3 - A333238 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333238 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 2).toNat

end

end A331634.P2727087627022477797

/-! ## A331634.P18260429550216802504

`A333238(eq[n, n*log2(A333238(n+3))]+2)`
-/

namespace A331634.P18260429550216802504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * Real.logb 2 (A333238 (n + 3) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333238 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n + 2)

end

end A331634.P18260429550216802504

/-! ## A331634.P15467889347625009034

`A333238(record[(n*A333238(n+2))%(n+1)]+2)`
-/

namespace A331634.P15467889347625009034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A333238 (n + 2)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333238 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 2).toNat

end

end A331634.P15467889347625009034

/-! ## A331634.P844023804529574889

`A333238(record[(n+1-A333238(n+2))%(n+1)]+2)`
-/

namespace A331634.P844023804529574889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1 : ℤ) - A333238 (n + 2)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333238 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 2).toNat

end

end A331634.P844023804529574889

/-! ## A331634.P1520714780436594234

`A333238(lt[A333238(n+3)%(n+1), A333238(n+2)]+2)`
-/

namespace A331634.P1520714780436594234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333238 (n + 3)) (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333238 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333238 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2)

end

end A331634.P1520714780436594234

/-!
# A331635: Numbers m such that -m^2 == m (mod sigma(m)) where sigma = A000203.

The programs for A331635, the canonical program `A331635.P6175707136444989633` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331635 has offset 1).

The definition of A331635 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1259 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A331635.P6175707136444989633

`lt[(n+1)%A339965(n+1), 1]+1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A331635

/-- `lt[(n+1)%A339965(n+1), 1]+1` -/
def P6175707136444989633.Spec : Prop :=
  ∀ n, (P6175707136444989633.a n : ℤ) = A331635 (n + 1)

theorem P6175707136444989633.correct : P6175707136444989633.Spec := by
  intro n
  simp only [A331635, Nat.add_sub_cancel]

end A331635

/-! ## A331635.P10373865152503820355

`eq[gcd(n²+n, A306682(n+1)), A339965(n+1)]+1`
-/

namespace A331635.P10373865152503820355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n ^ 2 + n : ℤ) (A306682 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339965 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A331635.P10373865152503820355

namespace A331635

/-- `eq[gcd(n²+n, A306682(n+1)), A339965(n+1)]+1` -/
def P10373865152503820355.Spec : Prop :=
  ∀ n, (P10373865152503820355.a n : ℤ) = A331635 (n + 1)

end A331635

/-! ## A331635.P2038045503753449135

`eq[A009194(n+1), A339965(n+1)]+1`
-/

namespace A331635.P2038045503753449135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339965 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A331635.P2038045503753449135

namespace A331635

/-- `eq[A009194(n+1), A339965(n+1)]+1` -/
def P2038045503753449135.Spec : Prop :=
  ∀ n, (P2038045503753449135.a n : ℤ) = A331635 (n + 1)

end A331635

/-! ## A331635.P16988741257556141354

`eq[A017665(n+1), A339964(n+1)]+1`
-/

namespace A331635.P16988741257556141354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017665 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339964 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A331635.P16988741257556141354

namespace A331635

/-- `eq[A017665(n+1), A339964(n+1)]+1` -/
def P16988741257556141354.Spec : Prop :=
  ∀ n, (P16988741257556141354.a n : ℤ) = A331635 (n + 1)

end A331635

/-! ## A331635.P4149263167428607935

`eq[A000203(n+1)/A017665(n+1), A339965(n+1)]+1`
-/

namespace A331635.P4149263167428607935
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A017665 (n + 1) : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339965 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n + 1

end

end A331635.P4149263167428607935

namespace A331635

/-- `eq[A000203(n+1)/A017665(n+1), A339965(n+1)]+1` -/
def P4149263167428607935.Spec : Prop :=
  ∀ n, (P4149263167428607935.a n : ℤ) = A331635 (n + 1)

end A331635

/-! ## A331635.P2266931634600457376

`eq[A324544(A250245(n+1)), A339965(n+1)]+1`
-/

namespace A331635.P2266931634600457376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324544 (A250245 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339965 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A331635.P2266931634600457376

namespace A331635

/-- `eq[A324544(A250245(n+1)), A339965(n+1)]+1` -/
def P2266931634600457376.Spec : Prop :=
  ∀ n, (P2266931634600457376.a n : ℤ) = A331635 (n + 1)

end A331635

/-!
# A331636: Number of nonnegative integer matrices with nonzero rows, total sum n and columns with equal sums.

The programs for A331636, there is no canonical definition to state claims against.
-/

/-! ## A331636.P12153775186895219810

`record[A006530(3*a(n-2)²+5)]` with `a(0)=1, a(1)=5`
-/

namespace A331636.P12153775186895219810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  A006530 (3 * f1 (n - 2) ^ 2 + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331636.P12153775186895219810

/-!
# A331637: Number of binary matrices with nonzero rows, a total of n ones and each column with the same number of ones.

The programs for A331637, there is no canonical definition to state claims against.
-/

/-! ## A331637.P9966413466834616264

`A087777(Δ[Δ[A339832(n)]])`
-/

namespace A331637.P9966413466834616264
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339832 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087777 (f1 (n + 1) - f1 n).toNat

end

end A331637.P9966413466834616264

/-!
# A331638: Number of binary matrices with nonzero rows, a total of n ones and each column with the same number of ones and columns in nonincreasing lexicographic order.

The programs for A331638, there is no canonical definition to state claims against.
-/

/-! ## A331638.P6934783802346604384

`A333483(A189832(n+1))`
-/

namespace A331638.P6934783802346604384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333483 (A189832 (n + 1)).toNat

end

end A331638.P6934783802346604384

/-!
# A331640: Number of binary matrices with n columns and any number of distinct nonzero rows with 2 ones in every column.

The programs for A331640, there is no canonical definition to state claims against.
-/

/-! ## A331640.P5713902897258238265

`A331567(∑[n+2]+3)`
-/

namespace A331640.P5713902897258238265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331567 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A331640.P5713902897258238265

/-! ## A331640.P10984601115301681763

`and(-1, A331567(A340266(n+1)))`
-/

namespace A331640.P10984601115301681763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A331567 (A340266 (n + 1)).toNat)

end

end A331640.P10984601115301681763

/-! ## A331640.P18056307595805044066

`A331567(A340266(n+1))^A178334(n)`
-/

namespace A331640.P18056307595805044066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331567 (A340266 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A331640.P18056307595805044066

/-! ## A331640.P13404140512603779301

`A178334(n+4)*A331567(A340266(n+1))`
-/

namespace A331640.P13404140512603779301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (n + 4) * A331567 (A340266 (n + 1)).toNat

end

end A331640.P13404140512603779301

/-! ## A331640.P16418024077003144181

`A331567(A340266(n+1))+A193243(3*n+4)`
-/

namespace A331640.P16418024077003144181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331567 (A340266 (n + 1)).toNat + A193243 (3 * n + 4)

end

end A331640.P16418024077003144181

/-!
# A331641: Number of binary matrices with n columns and any number of distinct nonzero rows with 3 ones in every column.

The programs for A331641, there is no canonical definition to state claims against.
-/

/-! ## A331641.P480330606572721973

`A331567(A167614(n+2))`
-/

namespace A331641.P480330606572721973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331567 (A167614 (n + 2)).toNat

end

end A331641.P480330606572721973

/-! ## A331641.P3239690610760297475

`A331567(A052905(n)+8)`
-/

namespace A331641.P3239690610760297475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331567 (A052905 n + 8).toNat

end

end A331641.P3239690610760297475

/-! ## A331641.P595014518059538618

`A331567(A055999(n)+9)`
-/

namespace A331641.P595014518059538618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331567 (A055999 n + 9).toNat

end

end A331641.P595014518059538618

/-! ## A331641.P11221987545590005651

`A331567(eq[2, A141169(n)])`
-/

namespace A331641.P11221987545590005651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331567 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A331641.P11221987545590005651

/-! ## A331641.P11621434092738669156

`A331567(eq[3, A002262(n)])`
-/

namespace A331641.P11621434092738669156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331567 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A331641.P11621434092738669156

/-!
# A331642: Number of binary matrices with 5 columns and any number of distinct nonzero rows with n ones in every column.

The programs for A331642, there is no canonical definition to state claims against.
-/

/-! ## A331642.P5023054601559342966

`A331567(A000217(n+6)-6)`
-/

namespace A331642.P5023054601559342966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331567 (A000217 (n + 6) - 6).toNat

end

end A331642.P5023054601559342966

/-! ## A331642.P3530307353976631492

`A331567(eq[6, A004736(n+1)])`
-/

namespace A331642.P3530307353976631492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331567 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A331642.P3530307353976631492

/-!
# A331643: Number of binary matrices with distinct nonzero rows, a total of n ones and each column with the same number of ones.

The programs for A331643, there is no canonical definition to state claims against.
-/

/-! ## A331643.P16674954393803406011

`or(1, A093848(A346626(n)))`
-/

namespace A331643.P16674954393803406011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A093848 (A346626 n).toNat)

end

end A331643.P16674954393803406011

/-!
# A331644: Number of nonnegative integer matrices with n columns and any number of distinct nonzero rows with column sums 2.

The programs for A331644, there is no canonical definition to state claims against.
-/

/-! ## A331644.P13380543020469867405

`A331568(∑[n+2]+3)`
-/

namespace A331644.P13380543020469867405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331568 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A331644.P13380543020469867405

/-! ## A331644.P9371730264466049404

`or(1, A331568(A340266(n+1)))`
-/

namespace A331644.P9371730264466049404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A331568 (A340266 (n + 1)).toNat)

end

end A331644.P9371730264466049404

/-! ## A331644.P7083284933673414071

`A331568(A340266(n+1))^A178334(n)`
-/

namespace A331644.P7083284933673414071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331568 (A340266 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A331644.P7083284933673414071

/-! ## A331644.P15952950269943744471

`A331568(A340266(n+1))%A331645(n+1)`
-/

namespace A331644.P15952950269943744471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331568 (A340266 (n + 1)).toNat) (A331645 (n + 1))

end

end A331644.P15952950269943744471

/-! ## A331644.P793228369404202380

`A331568(A340266(n+1))+A193243(3*n+4)`
-/

namespace A331644.P793228369404202380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331568 (A340266 (n + 1)).toNat + A193243 (3 * n + 4)

end

end A331644.P793228369404202380

/-!
# A331645: Number of nonnegative integer matrices with n columns and any number of distinct nonzero rows with column sums 3.

The programs for A331645, there is no canonical definition to state claims against.
-/

/-! ## A331645.P9534448983465642436

`A331568(A167614(n+2))`
-/

namespace A331645.P9534448983465642436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331568 (A167614 (n + 2)).toNat

end

end A331645.P9534448983465642436

/-! ## A331645.P3700301357045934597

`A331568(A141214(n)+6)`
-/

namespace A331645.P3700301357045934597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331568 (A141214 n + 6).toNat

end

end A331645.P3700301357045934597

/-! ## A331645.P261263763281744971

`A331568(A052905(n)+8)`
-/

namespace A331645.P261263763281744971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331568 (A052905 n + 8).toNat

end

end A331645.P261263763281744971

/-! ## A331645.P1374240503097092288

`A331568(eq[3, A002262(n)])`
-/

namespace A331645.P1374240503097092288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331568 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A331645.P1374240503097092288

/-! ## A331645.P8974428045282063588

`A331568(eq[8, A059268(n)])`
-/

namespace A331645.P8974428045282063588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331568 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A331645.P8974428045282063588

/-!
# A331646: Number of nonnegative integer matrices with 2 columns and any number of distinct nonzero rows with column sums n.

The programs for A331646, there is no canonical definition to state claims against.
-/

/-! ## A331646.P11796356539424640032

`A331711(n)+A331706(n)`
-/

namespace A331646.P11796356539424640032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331711 n + A331706 n

end

end A331646.P11796356539424640032

/-! ## A331646.P4708875644022090690

`A032020(n)+2*A331706(n)`
-/

namespace A331646.P4708875644022090690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032020 n + 2 * A331706 n

end

end A331646.P4708875644022090690

/-! ## A331646.P425515106475748041

`2*A331711(n)-A032020(n)`
-/

namespace A331646.P425515106475748041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A331711 n - A032020 n

end

end A331646.P425515106475748041

/-! ## A331646.P3602582538783709124

`A004273(A032058(n))+2*A331706(n)`
-/

namespace A331646.P3602582538783709124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A032058 n).toNat + 2 * A331706 n

end

end A331646.P3602582538783709124

/-! ## A331646.P9739909149224227315

`A331706(n)+A011782(n)+A331706(n)-A261982(n)`
-/

namespace A331646.P9739909149224227315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331706 n + (A011782 n + (A331706 n - A261982 n))

end

end A331646.P9739909149224227315

/-!
# A331647: Number of nonnegative integer matrices with 3 columns and any number of distinct nonzero rows with column sums n.

The programs for A331647, there is no canonical definition to state claims against.
-/

/-! ## A331647.P14494044655257144602

`A331568(∑[n+3]+n+3)`
-/

namespace A331647.P14494044655257144602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331568 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A331647.P14494044655257144602

/-! ## A331647.P13706901518657990846

`or(1, A331568(A046691(n+2)))`
-/

namespace A331647.P13706901518657990846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A331568 (A046691 (n + 2)).toNat)

end

end A331647.P13706901518657990846

/-! ## A331647.P5671281424812726843

`lcm(A033999(n), A331568(A046691(n+2)))`
-/

namespace A331647.P5671281424812726843
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A331568 (A046691 (n + 2)).toNat)

end

end A331647.P5671281424812726843

/-! ## A331647.P17616568652071661796

`record[gcd(A331161(n+4), A331568(n))]`
-/

namespace A331647.P17616568652071661796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A331161 (n + 4)) (A331568 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331647.P17616568652071661796

/-!
# A331648: Number of nonnegative integer matrices with distinct nonzero rows, total sum n and columns with equal sums.

The programs for A331648, there is no canonical definition to state claims against.
-/

/-! ## A331648.P16646057632745290078

`A030352(∏[∏[∏{e}[n+1, #+1]]])`
-/

namespace A331648.P16646057632745290078
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030352 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A331648.P16646057632745290078

/-!
# A331649: Number of binary matrices with n distinct columns and any number of distinct nonzero rows with 2 ones in every column and columns in decreasing lexicographic order.

The programs for A331649, there is no canonical definition to state claims against.
-/

/-! ## A331649.P12384870763787611937

`A331569(∑[n+2]+3)`
-/

namespace A331649.P12384870763787611937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331569 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A331649.P12384870763787611937

/-! ## A331649.P7616105258876021146

`lcm(A140207(n), A331569(A340266(n+1)))`
-/

namespace A331649.P7616105258876021146
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A140207 n) (A331569 (A340266 (n + 1)).toNat)

end

end A331649.P7616105258876021146

/-! ## A331649.P3844156664053494120

`or(A193243(n), A331569(A340266(n+1)))`
-/

namespace A331649.P3844156664053494120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A193243 n) (A331569 (A340266 (n + 1)).toNat)

end

end A331649.P3844156664053494120

/-! ## A331649.P17052406122593174669

`A331569(A340266(n+1))+A000007(n+2)`
-/

namespace A331649.P17052406122593174669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331569 (A340266 (n + 1)).toNat + A000007 (n + 2)

end

end A331649.P17052406122593174669

/-! ## A331649.P12592786418042178585

`A331569(A340266(n+1))%A262638(n+1)`
-/

namespace A331649.P12592786418042178585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331569 (A340266 (n + 1)).toNat) (A262638 (n + 1))

end

end A331649.P12592786418042178585

/-!
# A331650: Number of binary matrices with n distinct columns and any number of distinct nonzero rows with 4 ones in every column and columns in decreasing lexicographic order.

The programs for A331650, there is no canonical definition to state claims against.
-/

/-! ## A331650.P581125362375940556

`A331569(eq[4, A002262(n)])`
-/

namespace A331650.P581125362375940556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331569 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A331650.P581125362375940556

/-! ## A331650.P16258558356090198573

`A331569(A167614(n+3)+1)`
-/

namespace A331650.P16258558356090198573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331569 (A167614 (n + 3) + 1).toNat

end

end A331650.P16258558356090198573

/-! ## A331650.P18438331617704047973

`A331569(A340266(n+3)+2)`
-/

namespace A331650.P18438331617704047973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331569 (A340266 (n + 3) + 2).toNat

end

end A331650.P18438331617704047973

/-! ## A331650.P4150744676718206936

`A331569(eq[5, A002260(n+1)])`
-/

namespace A331650.P4150744676718206936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331569 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A331650.P4150744676718206936

/-! ## A331650.P1712014691661529535

`A331569(eq[6, A245093(n+1)])`
-/

namespace A331650.P1712014691661529535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331569 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A331650.P1712014691661529535

/-!
# A331651: Number of binary matrices with distinct nonzero rows, a total of n ones and distinct columns each with the same number of ones and columns in decreasing lexicographic order.

The programs for A331651, there is no canonical definition to state claims against.
-/

/-! ## A331651.P14714375274084657783

`A128520(A035522(n))`
-/

namespace A331651.P14714375274084657783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128520 (A035522 n).toNat

end

end A331651.P14714375274084657783

/-! ## A331651.P3363129439027263446

`A128520(A038754(n))`
-/

namespace A331651.P3363129439027263446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128520 (A038754 n).toNat

end

end A331651.P3363129439027263446

/-! ## A331651.P13746787578114505422

`A128520(A081741(n+1))`
-/

namespace A331651.P13746787578114505422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128520 (A081741 (n + 1)).toNat

end

end A331651.P13746787578114505422

/-! ## A331651.P12414529314908735292

`A128520(A182522(n+1))`
-/

namespace A331651.P12414529314908735292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128520 (A182522 (n + 1)).toNat

end

end A331651.P12414529314908735292

/-!
# A331652: Number of binary matrices with n columns and any number of distinct nonzero rows with 4 ones in every column and columns in nonincreasing lexicographic order.

The programs for A331652, there is no canonical definition to state claims against.
-/

/-! ## A331652.P4118445230473683995

`A331571(eq[4, A002262(n)])`
-/

namespace A331652.P4118445230473683995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331571 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A331652.P4118445230473683995

/-! ## A331652.P7220703956516703878

`A331571(eq[5, A002260(n+1)])`
-/

namespace A331652.P7220703956516703878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331571 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A331652.P7220703956516703878

/-! ## A331652.P18214434898564562890

`A331571(eq[11, A037126(n+1)])`
-/

namespace A331652.P18214434898564562890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331571 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A331652.P18214434898564562890

/-! ## A331652.P10598101015259836534

`A331571(A055999(n+3)-Δ[n²])`
-/

namespace A331652.P10598101015259836534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331571 (A055999 (n + 3) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A331652.P10598101015259836534

/-! ## A331652.P10732824904467285654

`A331571(A038722(Δ[A111396(n)]))`
-/

namespace A331652.P10732824904467285654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331571 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A331652.P10732824904467285654

/-!
# A331655: Number of binary matrices with n distinct columns and any number of distinct nonzero rows with 4 ones in every column and rows in decreasing lexicographic order.

The programs for A331655, there is no canonical definition to state claims against.
-/

/-! ## A331655.P16172920508995783192

`A331039(eq[4, A002262(n)])`
-/

namespace A331655.P16172920508995783192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331039 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A331655.P16172920508995783192

/-! ## A331655.P8151582484777518966

`A331039(A167614(n+3)+1)`
-/

namespace A331655.P8151582484777518966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331039 (A167614 (n + 3) + 1).toNat

end

end A331655.P8151582484777518966

/-! ## A331655.P1541784741135007904

`A331039(A340266(n+3)+2)`
-/

namespace A331655.P1541784741135007904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331039 (A340266 (n + 3) + 2).toNat

end

end A331655.P1541784741135007904

/-! ## A331655.P11324903532983719739

`A331039(eq[5, A002260(n+1)])`
-/

namespace A331655.P11324903532983719739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331039 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A331655.P11324903532983719739

/-! ## A331655.P4909526348164019150

`A331039(eq[5, A104763(n+1)])`
-/

namespace A331655.P4909526348164019150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331039 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A331655.P4909526348164019150

/-!
# A331656: a(n) = Sum_{k=0..n} binomial(n,k) * binomial(n+k,k) * n^k.

The programs for A331656, there is no canonical definition to state claims against.
-/

/-! ## A331656.P12303467557006367172

`A335333(∑[4*n])`
-/

namespace A331656.P12303467557006367172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335333 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A331656.P12303467557006367172

/-! ## A331656.P16599025113305666758

`or(1, A335333(A046092(n)))`
-/

namespace A331656.P16599025113305666758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A335333 (A046092 n).toNat)

end

end A331656.P16599025113305666758

/-! ## A331656.P15754133528328336728

`record[A003982(n)*A335333(n)]`
-/

namespace A331656.P15754133528328336728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A335333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331656.P15754133528328336728

/-! ## A331656.P14261778842025739635

`record[A335333(gcd(n, A114327(n)))]`
-/

namespace A331656.P14261778842025739635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335333 (Int.gcd (n : ℤ) (A114327 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331656.P14261778842025739635

/-! ## A331656.P2495049835340880571

`lcm(A020985(n), A335333(A046092(n)))`
-/

namespace A331656.P2495049835340880571
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A335333 (A046092 n).toNat)

end

end A331656.P2495049835340880571

/-!
# A331657: a(n) = Sum_{k=0..n} (-1)^(n - k) * binomial(n,k) * binomial(n+k,k) * n^k.

The programs for A331657, there is no canonical definition to state claims against.
-/

/-! ## A331657.P8562418002700648440

`A335333(2*n²)`
-/

namespace A331657.P8562418002700648440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335333 (2 * n ^ 2)

end

end A331657.P8562418002700648440

/-! ## A331657.P3275612665751481575

`or(1, A335333(A001105(n)))`
-/

namespace A331657.P3275612665751481575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A335333 (A001105 n).toNat)

end

end A331657.P3275612665751481575

/-! ## A331657.P17589345561864695126

`A335333(A001105(n))^A178334(n)`
-/

namespace A331657.P17589345561864695126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335333 (A001105 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A331657.P17589345561864695126

/-! ## A331657.P5973142635701086084

`lcm(A020985(n), A335333(A001105(n)))`
-/

namespace A331657.P5973142635701086084
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A335333 (A001105 n).toNat)

end

end A331657.P5973142635701086084

/-! ## A331657.P14808934364813003320

`A335333(A001105(n))/A178334(n+1)`
-/

namespace A331657.P14808934364813003320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335333 (A001105 n).toNat : ℚ) / (A178334 (n + 1) : ℚ)

end

end A331657.P14808934364813003320

/-!
# A331658: E.g.f.: exp(x/(1 - 2*x)) / (1 - x).

The programs for A331658, there is no canonical definition to state claims against.
-/

/-! ## A331658.P8008386411814466051

`A025168(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A331658.P8008386411814466051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025168 n + (n : ℤ) * a (n - 1)

end

end A331658.P8008386411814466051

/-! ## A331658.P2967568761806467813

`A341033(A055998(n+1))+n*a(n-1)` with `a(0)=1`
-/

namespace A331658.P2967568761806467813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A341033 (A055998 (n + 1)).toNat + (n : ℤ) * a (n - 1)

end

end A331658.P2967568761806467813

/-!
# A331660: E.g.f. A(x) satisfies: d/dx A(x) = 1 + (1/(1 - x)) * A(x/(1 - x)).

The programs for A331660, there is no canonical definition to state claims against.
-/

/-! ## A331660.P10362137735056502511

`A235027(A120733(n)-A054861(n))`
-/

namespace A331660.P10362137735056502511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235027 (A120733 n - A054861 n).toNat

end

end A331660.P10362137735056502511

/-! ## A331660.P6728375278071915363

`A034448(or(A351053(n), A357204(n)))`
-/

namespace A331660.P6728375278071915363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (Int.lor (A351053 n) (A357204 n)).toNat

end

end A331660.P6728375278071915363

/-!
# A331661: E.g.f. A(x) satisfies: d/dx A(x) = 1 + (1/(1 + x)) * A(x/(1 + x)).

The programs for A331661, there is no canonical definition to state claims against.
-/

/-! ## A331661.P16446745902715699208

`A109506(A327071(n)+A213074(n+2))`
-/

namespace A331661.P16446745902715699208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109506 (A327071 n + A213074 (n + 2)).toNat

end

end A331661.P16446745902715699208

/-!
# A331663: Odd composite numbers k with at least one divisor that is not a binary palindrome (A006995) such that the divisors of the binary reversal of k (A030101) are the binary reversals of the divisors of k.

The programs for A331663, there is no canonical definition to state claims against.
-/

/-! ## A331663.P11864014790981124427

`filter[A331662(n+1), A178226(#)]`
-/

namespace A331663.P11864014790981124427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331662 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178226 (f1 j).toNat = 1) n)

end

end A331663.P11864014790981124427

/-! ## A331663.P14092523182307840660

`∩[A164861(n+1), A331662(n+1)]`
-/

namespace A331663.P14092523182307840660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331663.P14092523182307840660

/-! ## A331663.P18233467820695404863

`∩[A057891(n+1), A331662(n+1)]`
-/

namespace A331663.P18233467820695404863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331663.P18233467820695404863

/-! ## A331663.P7531193597393399372

`∩[A154809(n+1), A331662(n+1)]`
-/

namespace A331663.P7531193597393399372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331663.P7531193597393399372

/-!
# A331665: Numbers k with a record number of divisors d < sqrt(k) such that d + k/d is prime.

The programs for A331665, there is no canonical definition to state claims against.
-/

/-! ## A331665.P16129289358022456196

`record[∏{p}[A202727(n+1), #]]`
-/

namespace A331665.P16129289358022456196
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202727 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331665.P16129289358022456196

/-! ## A331665.P4695271328562061204

`A002110(n)%A288211(A016933(n))`
-/

namespace A331665.P4695271328562061204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002110 n) (A288211 (A016933 n).toNat)

end

end A331665.P4695271328562061204

/-! ## A331665.P9218755921704464809

`A000027(A002110(n))%A192793(n+1)`
-/

namespace A331665.P9218755921704464809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (A002110 n).toNat) (A192793 (n + 1))

end

end A331665.P9218755921704464809

/-!
# A331667: Numbers m with a divisor d such that tau(d)^d = m.

The programs for A331667, there is no canonical definition to state claims against.
-/

/-! ## A331667.P9785418901002989809

`A236284(A162954(n+1))`
-/

namespace A331667.P9785418901002989809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236284 (A162954 (n + 1)).toNat

end

end A331667.P9785418901002989809

/-! ## A331667.P46877135594452037

`A162953(A162953(n+1))^A162954(n+1)`
-/

namespace A331667.P46877135594452037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162953 (A162953 (n + 1)).toNat : ℚ) ^ (A162954 (n + 1) : ℤ)

end

end A331667.P46877135594452037

/-!
# A331668: Numbers m with a divisor d such that tau(d) * sigma(d) = m.

The programs for A331668, there is no canonical definition to state claims against.
-/

/-! ## A331668.P5327154586617435950

`A064840(eq[A008611(n), A325799(n+1)])`
-/

namespace A331668.P5327154586617435950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325799 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064840 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A331668.P5327154586617435950

/-!
# A331669: List of distinct numbers that occur in A318366 (the Dirichlet convolution square of bigomega).

The programs for A331669, there is no canonical definition to state claims against.
-/

/-! ## A331669.P18244100568747665843

`eq[1, char[A322375(n+1)]]`
-/

namespace A331669.P18244100568747665843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322375 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A331669.P18244100568747665843

/-! ## A331669.P2450222008742775938

`record[A318366(2*n+3)]%A147557(3*n+5)`
-/

namespace A331669.P2450222008742775938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318366 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A147557 (3 * n + 5))

end

end A331669.P2450222008742775938

/-!
# A331670: First step in Recamán's sequence (A005132) at which there are n consecutive addition steps in a row.

The programs for A331670, there is no canonical definition to state claims against.
-/

/-! ## A331670.P14966452739445932939

`A390717(n+1)-n`
-/

namespace A331670.P14966452739445932939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390717 (n + 1) - (n : ℤ)

end

end A331670.P14966452739445932939

/-! ## A331670.P7910670158480038003

`A390768(A000079(n))+A390717(n+1)`
-/

namespace A331670.P7910670158480038003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390768 (A000079 n).toNat + A390717 (n + 1)

end

end A331670.P7910670158480038003

/-!
# A331671: Number of Pythagorean triangles with sum of legs n.

The programs for A331671, the canonical program `A331671.P12219226916889580501` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331671 has offset 1).

The definition of A331671 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A331671.P12219226916889580501

`∑{d}[n+1, A330174(#)]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A331671

/-- `∑{d}[n+1, A330174(#)]` -/
def P12219226916889580501.Spec : Prop :=
  ∀ n, P12219226916889580501.a n = A331671 (n + 1)

theorem P12219226916889580501.correct : P12219226916889580501.Spec := by
  intro n
  simp only [A331671, Nat.add_sub_cancel]

end A331671

/-! ## A331671.P8202397773649079288

`A082523(2*(n+1))/2`
-/

namespace A331671.P8202397773649079288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082523 (2 * (n + 1)) : ℚ) / 2

end

end A331671.P8202397773649079288

namespace A331671

/-- `A082523(2*(n+1))/2` -/
def P8202397773649079288.Spec : Prop :=
  ∀ n, P8202397773649079288.a n = (A331671 (n + 1) : ℚ)

end A331671

/-! ## A331671.P9957935206671382406

`A004526(A082523(2*(n+1)))`
-/

namespace A331671.P9957935206671382406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A082523 (2 * (n + 1))).toNat

end

end A331671.P9957935206671382406

namespace A331671

/-- `A004526(A082523(2*(n+1)))` -/
def P9957935206671382406.Spec : Prop :=
  ∀ n, P9957935206671382406.a n = A331671 (n + 1)

end A331671

/-! ## A331671.P12772435409880202571

`A001221(A082523(2*(n+1))!)`
-/

namespace A331671.P12772435409880202571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (A082523 (2 * (n + 1))).toNat)

end

end A331671.P12772435409880202571

namespace A331671

/-- `A001221(A082523(2*(n+1))!)` -/
def P12772435409880202571.Spec : Prop :=
  ∀ n, P12772435409880202571.a n = A331671 (n + 1)

end A331671

/-! ## A331671.P15833546902388570713

`A374061(A140215(n+1))`
-/

namespace A331671.P15833546902388570713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374061 (A140215 (n + 1)).toNat

end

end A331671.P15833546902388570713

namespace A331671

/-- `A374061(A140215(n+1))` -/
def P15833546902388570713.Spec : Prop :=
  ∀ n, P15833546902388570713.a n = A331671 (n + 1)

end A331671

/-! ## A331671.P5981583781212224783

`A374061(A140651(n+1))`
-/

namespace A331671.P5981583781212224783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374061 (A140651 (n + 1)).toNat

end

end A331671.P5981583781212224783

namespace A331671

/-- `A374061(A140651(n+1))` -/
def P5981583781212224783.Spec : Prop :=
  ∀ n, P5981583781212224783.a n = A331671 (n + 1)

end A331671

/-! ## A331671.P11936022997613862651

`A374061(A170826(n+1))`
-/

namespace A331671.P11936022997613862651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374061 (A170826 (n + 1)).toNat

end

end A331671.P11936022997613862651

namespace A331671

/-- `A374061(A170826(n+1))` -/
def P11936022997613862651.Spec : Prop :=
  ∀ n, P11936022997613862651.a n = A331671 (n + 1)

end A331671

/-! ## A331671.P13057631139051664165

`A374061((n+1)²)`
-/

namespace A331671.P13057631139051664165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374061 ((n + 1) ^ 2)

end

end A331671.P13057631139051664165

namespace A331671

/-- `A374061((n+1)²)` -/
def P13057631139051664165.Spec : Prop :=
  ∀ n, P13057631139051664165.a n = A331671 (n + 1)

end A331671

/-! ## A331671.P11657778093576684513

`floor(A259829((n+1)²)/2)`
-/

namespace A331671.P11657778093576684513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A259829 ((n + 1) ^ 2) : ℚ) / 2⌋

end

end A331671.P11657778093576684513

namespace A331671

/-- `floor(A259829((n+1)²)/2)` -/
def P11657778093576684513.Spec : Prop :=
  ∀ n, P11657778093576684513.a n = A331671 (n + 1)

end A331671

/-! ## A331671.P11750292553060719135

`dr(A374061(∑[2*n+1]))`
-/

namespace A331671.P11750292553060719135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A374061 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A331671.P11750292553060719135

namespace A331671

/-- `dr(A374061(∑[2*n+1]))` -/
def P11750292553060719135.Spec : Prop :=
  ∀ n, (P11750292553060719135.a n : ℤ) = A331671 (n + 1)

end A331671

/-! ## A331671.P2701230975128236522

`A180192(A259829(n*(n+2)+1))`
-/

namespace A331671.P2701230975128236522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180192 (A259829 (n * (n + 2) + 1)).toNat

end

end A331671.P2701230975128236522

namespace A331671

/-- `A180192(A259829(n*(n+2)+1))` -/
def P2701230975128236522.Spec : Prop :=
  ∀ n, P2701230975128236522.a n = A331671 (n + 1)

end A331671

/-!
# A331672: Sum of all base-n numbers with digit sum n and length at most n.

The programs for A331672, the canonical program `A331672.P5528915552568433842` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331672 has offset 2).

The definition of A331672 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A331672.P17526502844988434402

`A048775(n+1)*A023037(n+2)`
-/

namespace A331672.P17526502844988434402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048775 (n + 1) * A023037 (n + 2)

end

end A331672.P17526502844988434402

namespace A331672

/-- `A048775(n+1)*A023037(n+2)` -/
def P17526502844988434402.Spec : Prop :=
  ∀ n, P17526502844988434402.a n = A331672 (n + 2)

end A331672

/-! ## A331672.P5528915552568433842

`(C(2*(n+2)-1, n+2)-(n+2))*((n+2)^(n+2)-1)/(n+1)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A331672

/-- `(C(2*(n+2)-1, n+2)-(n+2))*((n+2)^(n+2)-1)/(n+1)` -/
def P5528915552568433842.Spec : Prop :=
  ∀ n, P5528915552568433842.a n = (A331672 (n + 2) : ℚ)

end A331672

/-! ## A331672.P8544711312475567937

`A144657(n+1)/2*A023037(n+2)`
-/

namespace A331672.P8544711312475567937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144657 (n + 1) : ℚ) / 2 * (A023037 (n + 2) : ℚ)

end

end A331672.P8544711312475567937

namespace A331672

/-- `A144657(n+1)/2*A023037(n+2)` -/
def P8544711312475567937.Spec : Prop :=
  ∀ n, P8544711312475567937.a n = (A331672 (n + 2) : ℚ)

end A331672

/-! ## A331672.P16850032660718523253

`∑[∑[A225015(n+2)]]*A023037(n+2)`
-/

namespace A331672.P16850032660718523253
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225015 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A023037 (n + 2)

end

end A331672.P16850032660718523253

namespace A331672

/-- `∑[∑[A225015(n+2)]]*A023037(n+2)` -/
def P16850032660718523253.Spec : Prop :=
  ∀ n, P16850032660718523253.a n = A331672 (n + 2)

end A331672

/-! ## A331672.P16024347230268181292

`∑[Δ[A010763(n)]-1]*A023037(n+2)`
-/

namespace A331672.P16024347230268181292
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010763 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A023037 (n + 2)

end

end A331672.P16024347230268181292

namespace A331672

/-- `∑[Δ[A010763(n)]-1]*A023037(n+2)` -/
def P16024347230268181292.Spec : Prop :=
  ∀ n, P16024347230268181292.a n = A331672 (n + 2)

end A331672

/-!
# A331677: a(n) is the difference between the number of primes smaller than prime(n) (i.e., n-1) and greater than prime(n) but less than 2*prime(n).

The programs for A331677, the canonical program `A331677.P6402599086706022467` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331677 has offset 1).

The definition of A331677 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020900, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A331677.P9702342137378153656

`A334051(n+1)-1`
-/

namespace A331677.P9702342137378153656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334051 (n + 1) - 1

end

end A331677.P9702342137378153656

namespace A331677

/-- `A334051(n+1)-1` -/
def P9702342137378153656.Spec : Prop :=
  ∀ n, P9702342137378153656.a n = A331677 (n + 1)

end A331677

/-! ## A331677.P8782749264935814350

`n-A070046(n+1)`
-/

namespace A331677.P8782749264935814350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A070046 (n + 1)

end

end A331677.P8782749264935814350

namespace A331677

/-- `n-A070046(n+1)` -/
def P8782749264935814350.Spec : Prop :=
  ∀ n, P8782749264935814350.a n = A331677 (n + 1)

end A331677

/-! ## A331677.P6402599086706022467

`2*(n+1)-1-A020900(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A331677

/-- `2*(n+1)-1-A020900(n+1)` -/
def P6402599086706022467.Spec : Prop :=
  ∀ n, P6402599086706022467.a n = A331677 (n + 1)

theorem P6402599086706022467.correct : P6402599086706022467.Spec := by
  intro n
  simp only [A331677, Nat.add_sub_cancel]

end A331677

/-! ## A331677.P9734910374318404658

`1-A063124(n+1)+n`
-/

namespace A331677.P9734910374318404658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A063124 (n + 1) + (n : ℤ)

end

end A331677.P9734910374318404658

namespace A331677

/-- `1-A063124(n+1)+n` -/
def P9734910374318404658.Spec : Prop :=
  ∀ n, P9734910374318404658.a n = A331677 (n + 1)

end A331677

/-! ## A331677.P12435786122215040105

`A023443(A334051(n+1))`
-/

namespace A331677.P12435786122215040105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A334051 (n + 1)).toNat

end

end A331677.P12435786122215040105

namespace A331677

/-- `A023443(A334051(n+1))` -/
def P12435786122215040105.Spec : Prop :=
  ∀ n, P12435786122215040105.a n = A331677 (n + 1)

end A331677

/-! ## A331677.P11929005240922055018

`A016789(n)-A298862(n+1)`
-/

namespace A331677.P11929005240922055018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n - A298862 (n + 1)

end

end A331677.P11929005240922055018

namespace A331677

/-- `A016789(n)-A298862(n+1)` -/
def P11929005240922055018.Spec : Prop :=
  ∀ n, P11929005240922055018.a n = A331677 (n + 1)

end A331677

/-! ## A331677.P3387086567187399795

`A246514(n+1)-A014689(n+1)`
-/

namespace A331677.P3387086567187399795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246514 (n + 1) - A014689 (n + 1)

end

end A331677.P3387086567187399795

namespace A331677

/-- `A246514(n+1)-A014689(n+1)` -/
def P3387086567187399795.Spec : Prop :=
  ∀ n, P3387086567187399795.a n = A331677 (n + 1)

end A331677

/-! ## A331677.P10855499044288520974

`A246514(n+1)-(A065890(n+1)+1)`
-/

namespace A331677.P10855499044288520974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246514 (n + 1) - (A065890 (n + 1) + 1)

end

end A331677.P10855499044288520974

namespace A331677

/-- `A246514(n+1)-(A065890(n+1)+1)` -/
def P10855499044288520974.Spec : Prop :=
  ∀ n, P10855499044288520974.a n = A331677 (n + 1)

end A331677

/-! ## A331677.P14207330483148066244

`A065897(n+1)-2*A014689(n+1)`
-/

namespace A331677.P14207330483148066244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065897 (n + 1) - 2 * A014689 (n + 1)

end

end A331677.P14207330483148066244

namespace A331677

/-- `A065897(n+1)-2*A014689(n+1)` -/
def P14207330483148066244.Spec : Prop :=
  ∀ n, P14207330483148066244.a n = A331677 (n + 1)

end A331677

/-! ## A331677.P7053931185543648366

`n-(A020900(n+1)+A001478(n+1))`
-/

namespace A331677.P7053931185543648366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A020900 (n + 1) + A001478 (n + 1))

end

end A331677.P7053931185543648366

namespace A331677

/-- `n-(A020900(n+1)+A001478(n+1))` -/
def P7053931185543648366.Spec : Prop :=
  ∀ n, P7053931185543648366.a n = A331677 (n + 1)

end A331677

/-! ## A331677.P11409764659958047899

`A246514(n+1)-A006093(n+1)+n`
-/

namespace A331677.P11409764659958047899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246514 (n + 1) - A006093 (n + 1) + (n : ℤ)

end

end A331677.P11409764659958047899

namespace A331677

/-- `A246514(n+1)-A006093(n+1)+n` -/
def P11409764659958047899.Spec : Prop :=
  ∀ n, P11409764659958047899.a n = A331677 (n + 1)

end A331677

/-! ## A331677.P1246760348627927586

`A001478(A020900(n+1)+A001478(n+1))+n`
-/

namespace A331677.P1246760348627927586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (A020900 (n + 1) + A001478 (n + 1)).toNat + (n : ℤ)

end

end A331677.P1246760348627927586

namespace A331677

/-- `A001478(A020900(n+1)+A001478(n+1))+n` -/
def P1246760348627927586.Spec : Prop :=
  ∀ n, P1246760348627927586.a n = A331677 (n + 1)

end A331677

/-! ## A331677.P3228165451246718164

`n-A056171(A100484(n+1))`
-/

namespace A331677.P3228165451246718164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A056171 (A100484 (n + 1)).toNat

end

end A331677.P3228165451246718164

namespace A331677

/-- `n-A056171(A100484(n+1))` -/
def P3228165451246718164.Spec : Prop :=
  ∀ n, P3228165451246718164.a n = A331677 (n + 1)

end A331677

/-! ## A331677.P11077452139716026023

`n-A056171(A001747(n+2))`
-/

namespace A331677.P11077452139716026023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A056171 (A001747 (n + 2)).toNat

end

end A331677.P11077452139716026023

namespace A331677

/-- `n-A056171(A001747(n+2))` -/
def P11077452139716026023.Spec : Prop :=
  ∀ n, P11077452139716026023.a n = A331677 (n + 1)

end A331677

/-! ## A331677.P17861005992824803142

`n-A056171(A077017(n+2))`
-/

namespace A331677.P17861005992824803142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A056171 (A077017 (n + 2)).toNat

end

end A331677.P17861005992824803142

namespace A331677

/-- `n-A056171(A077017(n+2))` -/
def P17861005992824803142.Spec : Prop :=
  ∀ n, P17861005992824803142.a n = A331677 (n + 1)

end A331677

/-! ## A331677.P12404288317994430789

`n-A056171(2*A000040(n+1))`
-/

namespace A331677.P12404288317994430789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A056171 (2 * A000040 (n + 1)).toNat

end

end A331677.P12404288317994430789

namespace A331677

/-- `n-A056171(2*A000040(n+1))` -/
def P12404288317994430789.Spec : Prop :=
  ∀ n, P12404288317994430789.a n = A331677 (n + 1)

end A331677

/-! ## A331677.P17151772830323823850

`Δ[n²]-A000720(A059788(n+1))`
-/

namespace A331677.P17151772830323823850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A000720 (A059788 (n + 1)).toNat

end

end A331677.P17151772830323823850

namespace A331677

/-- `Δ[n²]-A000720(A059788(n+1))` -/
def P17151772830323823850.Spec : Prop :=
  ∀ n, P17151772830323823850.a n = A331677 (n + 1)

end A331677

/-! ## A331677.P8384850902929501722

`Δ[n²]-A099801(A006093(n+1))`
-/

namespace A331677.P8384850902929501722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A099801 (A006093 (n + 1)).toNat

end

end A331677.P8384850902929501722

namespace A331677

/-- `Δ[n²]-A099801(A006093(n+1))` -/
def P8384850902929501722.Spec : Prop :=
  ∀ n, P8384850902929501722.a n = A331677 (n + 1)

end A331677

/-! ## A331677.P17243637525011471928

`2*n+1-A000720(A076274(n+2))`
-/

namespace A331677.P17243637525011471928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A000720 (A076274 (n + 2)).toNat

end

end A331677.P17243637525011471928

namespace A331677

/-- `2*n+1-A000720(A076274(n+2))` -/
def P17243637525011471928.Spec : Prop :=
  ∀ n, P17243637525011471928.a n = A331677 (n + 1)

end A331677

/-!
# A331678: Number of lone-child-avoiding locally disjoint rooted trees whose leaves are integer partitions whose multiset union is an integer partition of n.

The programs for A331678, there is no canonical definition to state claims against.
-/

/-! ## A331678.P7798339222470577405

`A330029(A132974(n)+1)`
-/

namespace A331678.P7798339222470577405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330029 (A132974 n + 1).toNat

end

end A331678.P7798339222470577405

/-! ## A331678.P17073849328325372643

`∑[record[A001055(A193711(n+1))]]`
-/

namespace A331678.P17073849328325372643
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A193711 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331678.P17073849328325372643

/-!
# A331679: Number of lone-child-avoiding locally disjoint rooted trees whose leaves are positive integers summing to n, with no two distinct leaves directly under the same vertex.

The programs for A331679, there is no canonical definition to state claims against.
-/

/-! ## A331679.P1499389663377900011

`A322833(ceil(2^(n-1)))+lcm(8, n)/8`
-/

namespace A331679.P1499389663377900011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322833 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat : ℚ) + (Nat.lcm 8 n : ℚ) / 8

end

end A331679.P1499389663377900011

/-! ## A331679.P15709308797829352802

`A329396(A108742(n))`
-/

namespace A331679.P15709308797829352802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329396 (A108742 n).toNat

end

end A331679.P15709308797829352802

/-! ## A331679.P12881073567137246683

`A356137(A052817(n+1))`
-/

namespace A331679.P12881073567137246683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356137 (A052817 (n + 1)).toNat

end

end A331679.P12881073567137246683

/-!
# A331680: Number of lone-child-avoiding locally disjoint unlabeled rooted trees with n vertices.

The programs for A331680, there is no canonical definition to state claims against.
-/

/-! ## A331680.P11732112088819197542

`A137734(A001006(n))-A127682(n+1)`
-/

namespace A331680.P11732112088819197542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (A001006 n).toNat - A127682 (n + 1)

end

end A331680.P11732112088819197542

/-! ## A331680.P10749298458082458076

`Δ[A000621(3^C(a(n-1), 68)+n)]` with `a(0)=0, a(1)=1`
-/

namespace A331680.P10749298458082458076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  A000621 (3 ^ Nat.choose (f1 (n - 1)).toNat 68 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A331680.P10749298458082458076

/-! ## A331680.P1434114031231037371

`A319769(n)-∑[A174618(n+1)]`
-/

namespace A331680.P1434114031231037371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174618 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319769 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331680.P1434114031231037371

/-!
# A331681: One, two, and all numbers of the form 2^k * prime(j) where k > 0 and j already belongs to the sequence.

The programs for A331681, there is no canonical definition to state claims against.
-/

/-! ## A331681.P8706085059707552366

`∩[A331936(n+1), A331994(n+1)]`
-/

namespace A331681.P8706085059707552366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331681.P8706085059707552366

/-! ## A331681.P16841548600102780977

`∩[A331873(n+1), A331994(n+1)]`
-/

namespace A331681.P16841548600102780977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331681.P16841548600102780977

/-! ## A331681.P9285458094642379367

`∩[A316470(n+1), A209638(n)]`
-/

namespace A331681.P9285458094642379367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316470 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209638 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331681.P9285458094642379367

/-! ## A331681.P15618563926532093650

`∩[A331873(n+1), A209638(n)]`
-/

namespace A331681.P15618563926532093650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209638 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331681.P15618563926532093650

/-! ## A331681.P11450121785921832395

`∩[A331935(n+1), A209638(n)]`
-/

namespace A331681.P11450121785921832395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209638 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331681.P11450121785921832395

/-!
# A331682: One and all numbers whose prime indices are pairwise coprime and already belong to the sequence, where a singleton is always considered to be coprime.

The programs for A331682, there is no canonical definition to state claims against.
-/

/-! ## A331682.P12904162059360325809

`∩[A306202(n+1), A316495(n+1)]`
-/

namespace A331682.P12904162059360325809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316495 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331682.P12904162059360325809

/-! ## A331682.P5059806523899913721

`record[A327389(A306202(n+1))]`
-/

namespace A331682.P5059806523899913721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327389 (A306202 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331682.P5059806523899913721

/-! ## A331682.P12487930705293249330

`record[A327389(A112689(A179772(n+1)))]`
-/

namespace A331682.P12487930705293249330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327389 (A112689 (A179772 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331682.P12487930705293249330

/-! ## A331682.P10185792608026614786

`lt[A127731(2*(n+1)), A128858(n+2)]+1`
-/

namespace A331682.P10185792608026614786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127731 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128858 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A331682.P10185792608026614786

/-! ## A331682.P1363750060652355645

`lt[A128859(A128914(n+4)), A128858(n+1)]`
-/

namespace A331682.P1363750060652355645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128859 (A128914 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128858 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A331682.P1363750060652355645

/-!
# A331683: One and all numbers of the form 2^k * prime(j) for k > 0 and j already in the sequence.

The programs for A331683, there is no canonical definition to state claims against.
-/

/-! ## A331683.P7688422585895741762

`∩[A324854(n+1), A331681(n+1)]`
-/

namespace A331683.P7688422585895741762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331681 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331683.P7688422585895741762

/-! ## A331683.P17716723526906429799

`filter[A331965(n+1), A340363(#)]`
-/

namespace A331683.P17716723526906429799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331965 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340363 (f1 j).toNat = 1) n)

end

end A331683.P17716723526906429799

/-! ## A331683.P14979724466320189759

`filter[A331965(n+1), A340371(#)]`
-/

namespace A331683.P14979724466320189759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331965 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A331683.P14979724466320189759

/-! ## A331683.P11610093102804333232

`filter[A331965(n+1), A340372(#)]`
-/

namespace A331683.P11610093102804333232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331965 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340372 (f1 j).toNat = 1) n)

end

end A331683.P11610093102804333232

/-!
# A331684: Number of locally disjoint enriched identity p-trees of weight n.

The programs for A331684, there is no canonical definition to state claims against.
-/

/-! ## A331684.P3956692575617836694

`A112325(A118311(n+1))`
-/

namespace A331684.P3956692575617836694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112325 (A118311 (n + 1)).toNat

end

end A331684.P3956692575617836694

/-! ## A331684.P1597825771626374199

`A023193(A293644(Δ[n²]))`
-/

namespace A331684.P1597825771626374199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A293644 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A331684.P1597825771626374199

/-! ## A331684.P2556782793272047345

`A023193(Δ[A293644(2*n)])`
-/

namespace A331684.P2556782793272047345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293644 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (f1 (n + 1) - f1 n).toNat

end

end A331684.P2556782793272047345

/-! ## A331684.P7074448194046000342

`A261104(A118870(n)*A152718(n))`
-/

namespace A331684.P7074448194046000342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (A118870 n * A152718 n).toNat

end

end A331684.P7074448194046000342

/-!
# A331685: Number of tree-factorizations of Heinz numbers of integer partitions of n.

The programs for A331685, there is no canonical definition to state claims against.
-/

/-! ## A331685.P6667096082114567430

`A122620(n*(round(∑[n/ϕ])+1)+1)`
-/

namespace A331685.P6667096082114567430
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) / Real.goldenRatio

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122620 ((n : ℤ) * (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j) + 1) + 1).toNat

end

end A331685.P6667096082114567430

/-!
# A331686: Number of lone-child-avoiding locally disjoint rooted identity trees whose leaves are integer partitions whose multiset union is an integer partition of n.

The programs for A331686, there is no canonical definition to state claims against.
-/

/-! ## A331686.P4746895491222700793

`A265359(A177534(n)+n)`
-/

namespace A331686.P4746895491222700793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265359 (A177534 n + (n : ℤ)).toNat

end

end A331686.P4746895491222700793

/-! ## A331686.P4960974264016081998

`A024417(∑[∑[A148687(n)]])`
-/

namespace A331686.P4960974264016081998
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148687 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A331686.P4960974264016081998

/-! ## A331686.P2383456320588861321

`A243283(3*A005193(n+1))`
-/

namespace A331686.P2383456320588861321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243283 (3 * A005193 (n + 1)).toNat

end

end A331686.P2383456320588861321

/-! ## A331686.P5268781171077263682

`∑[A245898(n+1)-A240122(n+1)]`
-/

namespace A331686.P5268781171077263682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245898 (n + 1) - A240122 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331686.P5268781171077263682

/-!
# A331687: Number of locally disjoint enriched p-trees of weight n.

The programs for A331687, there is no canonical definition to state claims against.
-/

/-! ## A331687.P17229852046001427969

`A110266(A167040(n)+A017930(n))`
-/

namespace A331687.P17229852046001427969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110266 (A167040 n + A017930 n).toNat

end

end A331687.P17229852046001427969

/-! ## A331687.P4342594425197597228

`A110266(A077478(n+1)+A017930(n))`
-/

namespace A331687.P4342594425197597228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110266 (A077478 (n + 1) + A017930 n).toNat

end

end A331687.P4342594425197597228

/-! ## A331687.P14904003324464880253

`A026819(A362819(n+1)+A333105(n))`
-/

namespace A331687.P14904003324464880253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A362819 (n + 1) + A333105 n).toNat

end

end A331687.P14904003324464880253

/-!
# A331688: E.g.f.: exp(-x/(1 - x)) / (1 - 2*x).

The programs for A331688, there is no canonical definition to state claims against.
-/

/-! ## A331688.P12290499371023653465

`A317096(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A331688.P12290499371023653465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A317096 n + (n : ℤ) * a (n - 1)

end

end A331688.P12290499371023653465

/-! ## A331688.P9233255820831850297

`A293116(n)+2*n*a(n-1)` with `a(0)=1`
-/

namespace A331688.P9233255820831850297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A293116 n + 2 * ((n : ℤ) * a (n - 1))

end

end A331688.P9233255820831850297

/-! ## A331688.P3836080270252901530

`A293119(∑[n]+n)+2*n*a(n-1)` with `a(0)=1`
-/

namespace A331688.P3836080270252901530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A293119 (∑ j ∈ Finset.range (n + 1), f1 j + n) + 2 * ((n : ℤ) * a (n - 1))

end

end A331688.P3836080270252901530

/-! ## A331688.P10374335173643355577

`2*n*a(n-1)+A033999(n)*A111884(n)` with `a(0)=1`
-/

namespace A331688.P10374335173643355577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * ((n : ℤ) * a (n - 1)) + A033999 n * A111884 n

end

end A331688.P10374335173643355577

/-! ## A331688.P624770156231380362

`2*n*a(n-1)+A000262(n)-2*A088313(n)` with `a(0)=1`
-/

namespace A331688.P624770156231380362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * ((n : ℤ) * a (n - 1)) + (A000262 n - 2 * A088313 n)

end

end A331688.P624770156231380362

/-!
# A331689: E.g.f.: exp(x/(1 - x)) / (1 - 2*x).

The programs for A331689, there is no canonical definition to state claims against.
-/

/-! ## A331689.P13703941899566218119

`A059115(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A331689.P13703941899566218119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A059115 n + (n : ℤ) * a (n - 1)

end

end A331689.P13703941899566218119

/-! ## A331689.P11183038567459391738

`A000262(n)+2*n*a(n-1)` with `a(0)=1`
-/

namespace A331689.P11183038567459391738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000262 n + 2 * ((n : ℤ) * a (n - 1))

end

end A331689.P11183038567459391738

/-! ## A331689.P9362172284604155508

`a(n-1)/n^-1+abs(A293125(n))+n*a(n-1)` with `a(0)=1`
-/

namespace A331689.P9362172284604155508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / (n : ℚ) ^ (-1 : ℤ) + ((|A293125 n| : ℚ) + (n : ℚ) * a (n - 1))

end

end A331689.P9362172284604155508

/-! ## A331689.P17562909993298594928

`a(n-1)/n^-1+A129652(∑[n])+n*a(n-1)` with `a(0)=1`
-/

namespace A331689.P17562909993298594928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / (n : ℚ) ^ (-1 : ℤ) + ((A129652 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) + (n : ℚ) * a (n - 1))

end

end A331689.P17562909993298594928

/-! ## A331689.P13084707775570657531

`2*A059115(n)-A000262(n)`
-/

namespace A331689.P13084707775570657531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059115 n - A000262 n

end

end A331689.P13084707775570657531

/-!
# A331690: a(n) = Sum_{k=0..n} Stirling2(n,k) * k! * n^(n - k).

The programs for A331690, there is no canonical definition to state claims against.
-/

/-! ## A331690.P10488738924789481033

`A326323(A056220(n+1))`
-/

namespace A331690.P10488738924789481033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326323 (A056220 (n + 1)).toNat

end

end A331690.P10488738924789481033

/-! ## A331690.P3372222191976831965

`A326323(A000217(2*n+1)+n)`
-/

namespace A331690.P3372222191976831965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326323 (A000217 (2 * n + 1) + (n : ℤ)).toNat

end

end A331690.P3372222191976831965

/-! ## A331690.P5754129241259646885

`A332700(2*(n+1)²)`
-/

namespace A331690.P5754129241259646885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332700 (2 * (n + 1) ^ 2)

end

end A331690.P5754129241259646885

/-!
# A331691: Resultant of the Shapiro polynomials P_n(x) and Q_n(x).

The programs for A331691, there is no canonical definition to state claims against.
-/

/-! ## A331691.P603175422626175057

`∏[-(2*a(n-1)²)]` with `a(0)=1, a(1)=2`
-/

namespace A331691.P603175422626175057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  -(2 * f1 (n - 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A331691.P603175422626175057

/-! ## A331691.P154427596320575829

`a(n-1)²/2*(-2)^(n+1)` with `a(0)=1`
-/

namespace A331691.P154427596320575829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) ^ 2 / 2 * ((-2) ^ (n + 1) : ℚ)

end

end A331691.P154427596320575829

/-! ## A331691.P3487127984205344448

`(-2)^(2^n-1)*a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A331691.P3487127984205344448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (-2 : ℚ) ^ ((2 ^ n : ℤ) - 1 : ℤ) * a (n - 1)

end

end A331691.P3487127984205344448

/-! ## A331691.P10766864230164383083

`∏[A009545(∑[2^n])]`
-/

namespace A331691.P10766864230164383083
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A331691.P10766864230164383083

/-!
# A331693: Number of Tom graphs with n vertices.

The programs for A331693, there is no canonical definition to state claims against.
-/

/-! ## A331693.P13309152812460443691

`xor(A005195(n), A108611(A338708(n+1)))`
-/

namespace A331693.P13309152812460443691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A005195 n) (A108611 (A338708 (n + 1)).toNat)

end

end A331693.P13309152812460443691

/-! ## A331693.P9935248273649046649

`A294218(A002620(n)+1)-char[10]`
-/

namespace A331693.P9935248273649046649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294218 (A002620 n + 1).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A331693.P9935248273649046649

/-! ## A331693.P5172963352126597440

`A057078(A106337(n))+A005195(n)`
-/

namespace A331693.P5172963352126597440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 (A106337 n).toNat + A005195 n

end

end A331693.P5172963352126597440

/-! ## A331693.P8030963957265900893

`A036647(n)+A003214(A351870(n))`
-/

namespace A331693.P8030963957265900893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036647 n + A003214 (A351870 n).toNat

end

end A331693.P8030963957265900893

/-! ## A331693.P5074586865685703007

`A178780(A276086(n))+A005195(n)`
-/

namespace A331693.P5074586865685703007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178780 (A276086 n).toNat + A005195 n

end

end A331693.P5074586865685703007

/-!
# A331694: For any n > 0, let d_1, ..., d_k be the divisors of n, in ascending order; set e_0 = 0 and for i = 1..k, if e_{i-1} >= d_i then set e_i = e_{i-1} - d_i else set e_i = e_{i-1} + d_i; a(n) = e_k.

The programs for A331694, there is no canonical definition to state claims against.
-/

/-! ## A331694.P10843420347789839092

`A000203(n+1)-A187794(A004928(n+1))`
-/

namespace A331694.P10843420347789839092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A187794 (A004928 (n + 1)).toNat

end

end A331694.P10843420347789839092

/-! ## A331694.P11835766911232838226

`(A187795(n+1)+A187793(n+1))%A270929(2*n+3)`
-/

namespace A331694.P11835766911232838226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187795 (n + 1) + A187793 (n + 1)) (A270929 (2 * n + 3))

end

end A331694.P11835766911232838226

/-! ## A331694.P5396564315868445586

`A187795(n+1)+A284326(n+1)%A109860(A109860(n))`
-/

namespace A331694.P5396564315868445586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187795 (n + 1) + Int.tmod (A284326 (n + 1)) (A109860 (A109860 n).toNat)

end

end A331694.P5396564315868445586

/-! ## A331694.P5552322086272468878

`A088580(n+1)-A325470(A295334(n))`
-/

namespace A331694.P5552322086272468878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - A325470 (A295334 n).toNat

end

end A331694.P5552322086272468878

/-! ## A331694.P14178980953766891384

`A187795(A263383(n+1)+n)+A187793(n+1)`
-/

namespace A331694.P14178980953766891384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187795 (A263383 (n + 1) + (n : ℤ)).toNat + A187793 (n + 1)

end

end A331694.P14178980953766891384

/-!
# A331698: a(n) = (1/2) * ((greatest prime < (n+1)^2) - (least prime > n^2)) for n >= 2.

The programs for A331698, the canonical program `A331698.P4122289337441276779` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331698 has offset 2).

The definition of A331698 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A331698.P4122289337441276779

`A056930(n+2)-A007491(n+2)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A331698

/-- `A056930(n+2)-A007491(n+2)` -/
def P4122289337441276779.Spec : Prop :=
  ∀ n, P4122289337441276779.a n = A331698 (n + 2)

theorem P4122289337441276779.correct : P4122289337441276779.Spec := by
  intro n
  simp only [A331698, Nat.add_sub_cancel]

end A331698

/-! ## A331698.P1908380325097799669

`A053001(n+3)-A056930(n+2)`
-/

namespace A331698.P1908380325097799669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053001 (n + 3) - A056930 (n + 2)

end

end A331698.P1908380325097799669

namespace A331698

/-- `A053001(n+3)-A056930(n+2)` -/
def P1908380325097799669.Spec : Prop :=
  ∀ n, P1908380325097799669.a n = A331698 (n + 2)

end A331698

/-! ## A331698.P11234532325914135595

`(A053001(n+3)-A007491(n+2))/2`
-/

namespace A331698.P11234532325914135595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053001 (n + 3) - A007491 (n + 2) : ℚ) / 2

end

end A331698.P11234532325914135595

namespace A331698

/-- `(A053001(n+3)-A007491(n+2))/2` -/
def P11234532325914135595.Spec : Prop :=
  ∀ n, P11234532325914135595.a n = (A331698 (n + 2) : ℚ)

end A331698

/-! ## A331698.P578135708548617647

`(A056930(n+2)+A053001(n+2))%A056928(n+2)`
-/

namespace A331698.P578135708548617647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056930 (n + 2) + A053001 (n + 2)) (A056928 (n + 2))

end

end A331698.P578135708548617647

namespace A331698

/-- `(A056930(n+2)+A053001(n+2))%A056928(n+2)` -/
def P578135708548617647.Spec : Prop :=
  ∀ n, P578135708548617647.a n = A331698 (n + 2)

end A331698

/-! ## A331698.P13645555506084531107

`A056930(n+2)-A151800((n+2)²)`
-/

namespace A331698.P13645555506084531107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056930 (n + 2) - A151800 ((n + 2) ^ 2)

end

end A331698.P13645555506084531107

namespace A331698

/-- `A056930(n+2)-A151800((n+2)²)` -/
def P13645555506084531107.Spec : Prop :=
  ∀ n, P13645555506084531107.a n = A331698 (n + 2)

end A331698

/-!
# A331699: Sum of ceiling(n/per(w)) over all binary words of length n.

The programs for A331699, there is no canonical definition to state claims against.
-/

/-! ## A331699.P18022757121339485573

`2*A123578(floor(4^n/(2-sqrt(2))))`
-/

namespace A331699.P18022757121339485573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A123578 ⌊(4 ^ n : ℝ) / (2 - Real.sqrt (2 : ℝ))⌋.toNat

end

end A331699.P18022757121339485573

/-! ## A331699.P3878436483362039012

`A111650(A037604(n+1))`
-/

namespace A331699.P3878436483362039012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111650 (A037604 (n + 1)).toNat

end

end A331699.P3878436483362039012

/-! ## A331699.P13158511340866093648

`A111650(A055145(n+1))`
-/

namespace A331699.P13158511340866093648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111650 (A055145 (n + 1)).toNat

end

end A331699.P13158511340866093648

