import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B001.C000
import Seq.B002.C000

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A011534.P15152361579944605440

`lt[A064532(n), A064692(n)]`
-/

namespace A011534.P15152361579944605440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064532 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A011534.P15152361579944605440

noncomputable section

/-- A011534: Numbers that contain a 4.

Offset 1, canonical program `A011534.P15152361579944605440`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A011534 (n : ℕ) : ℤ :=
  (A011534.P15152361579944605440.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A011534.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029311.P11942994698236464024

`A025913(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029311.P11942994698236464024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025913 n + a (n - 3)

end

end A029311.P11942994698236464024

noncomputable section

/-- A029311: Expansion of 1/((1-x^3)*(1-x^7)*(1-x^9)*(1-x^11)).

Offset 0, canonical program `A029311.P11942994698236464024`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029311 (n : ℕ) : ℤ :=
  A029311.P11942994698236464024.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029311.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029398.P4533888177158712386

`A025913(n)+A029209(n)-A029231(n)`
-/

namespace A029398.P4533888177158712386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025913 n + (A029209 n - A029231 n)

end

end A029398.P4533888177158712386

noncomputable section

/-- A029398: Expansion of 1/((1-x^5)*(1-x^7)*(1-x^9)*(1-x^11)).

Offset 0, canonical program `A029398.P4533888177158712386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029398 (n : ℕ) : ℤ :=
  A029398.P4533888177158712386.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029398.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029418.P10273884798273690927

`A029311(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029418.P10273884798273690927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A029311 n - a (n - 3)

end

end A029418.P10273884798273690927

noncomputable section

/-- A029418: Expansion of 1/((1-x^6)(1-x^7)(1-x^9)(1-x^11)).

Offset 0, canonical program `A029418.P10273884798273690927`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029418 (n : ℕ) : ℤ :=
  A029418.P10273884798273690927.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029418.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008541.P9566157956627903149

`comp[∪[A011534(n+1), A011535(n+1)]]`
-/

namespace A008541.P9566157956627903149
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011534 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011535 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A008541.P9566157956627903149

noncomputable section

/-- A008541: Numbers that do not contain the letter `f'.

Offset 1, canonical program `A008541.P9566157956627903149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008541 (n : ℕ) : ℤ :=
  (A008541.P9566157956627903149.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008541.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029295.P3254125560290705347

`A029311(n)+A029418(n)-A025913(n)`
-/

namespace A029295.P3254125560290705347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029311 n + (A029418 n - A025913 n)

end

end A029295.P3254125560290705347

noncomputable section

/-- A029295: Expansion of 1/((1-x^3)*(1-x^6)*(1-x^7)*(1-x^11)).

Offset 0, canonical program `A029295.P3254125560290705347`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029295 (n : ℕ) : ℤ :=
  A029295.P3254125560290705347.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029295.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029303.P996504278850235236

`A029311(n)+A029355(n)-A029363(n)`
-/

namespace A029303.P996504278850235236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029311 n + (A029355 n - A029363 n)

end

end A029303.P996504278850235236

noncomputable section

/-- A029303: Expansion of 1/((1-x^3)*(1-x^6)*(1-x^10)*(1-x^11)).

Offset 0, canonical program `A029303.P996504278850235236`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029303 (n : ℕ) : ℤ :=
  A029303.P996504278850235236.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029303.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029357.P1479724606091517717

`A029303(n)+A029349(n)-A029295(n)`
-/

namespace A029357.P1479724606091517717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029303 n + (A029349 n - A029295 n)

end

end A029357.P1479724606091517717

noncomputable section

/-- A029357: Expansion of 1/((1-x^4)*(1-x^6)*(1-x^10)*(1-x^11)).

Offset 0, canonical program `A029357.P1479724606091517717`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029357 (n : ℕ) : ℤ :=
  A029357.P1479724606091517717.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029357.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054047.P6609416197519698243

`∩[A008541(n+1), A084984(n+1)]`
-/

namespace A054047.P6609416197519698243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054047.P6609416197519698243

noncomputable section

/-- A054047: Numbers which can be read as (possibly different) numbers when rotated by 180 degrees (final zeros allowed).

Offset 0, canonical program `A054047.P6609416197519698243`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1250 terms. -/
def A054047 (n : ℕ) : ℤ :=
  (A054047.P6609416197519698243.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1250 terms. -/
def A054047.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029224.P11078861318480278839

`A029357(abs(2-n))+A029357(n)`
-/

namespace A029224.P11078861318480278839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029357 |2 - (n : ℤ)|.toNat + A029357 n

end

end A029224.P11078861318480278839

noncomputable section

/-- A029224: Expansion of 1/((1-x^2)*(1-x^6)*(1-x^10)*(1-x^11)).

Offset 0, canonical program `A029224.P11078861318480278839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029224 (n : ℕ) : ℤ :=
  A029224.P11078861318480278839.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029224.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029431.P15634929436894288519

`A025907(n)+A029224(n)-A029225(n)`
-/

namespace A029431.P15634929436894288519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025907 n + (A029224 n - A029225 n)

end

end A029431.P15634929436894288519

noncomputable section

/-- A029431: Expansion of 1/((1-x^6)(1-x^10)(1-x^11)(1-x^12)).

Offset 0, canonical program `A029431.P15634929436894288519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029431 (n : ℕ) : ℤ :=
  A029431.P15634929436894288519.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029431.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045574.P18400524519974954139

`A054047(record[n*A011558(n)])`
-/

namespace A045574.P18400524519974954139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011558 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054047 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A045574.P18400524519974954139

noncomputable section

/-- A045574: Numbers that are still numbers when turned upside down (uses only digits 0, 1, 6, 8, 9 with no final 0's).

Offset 1, canonical program `A045574.P18400524519974954139`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8001 terms. -/
def A045574 (n : ℕ) : ℤ :=
  A045574.P18400524519974954139.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8001 terms. -/
def A045574.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130777.P39247602111540675

`A046854(n)*A087960(A025581(n))`
-/

namespace A130777.P39247602111540675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046854 n * A087960 (A025581 n).toNat

end

end A130777.P39247602111540675

noncomputable section

/-- A130777: Coefficients of first difference of Chebyshev S polynomials.

Offset 0, canonical program `A130777.P39247602111540675`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130777 (n : ℕ) : ℤ :=
  A130777.P39247602111540675.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130777.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008836.P691704047226663751

`A033999(A001222(n+1))`
-/

namespace A008836.P691704047226663751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A001222 (n + 1)).toNat

end

end A008836.P691704047226663751

noncomputable section

/-- A008836: Liouville's function lambda(n) = (-1)^k, where k is number of primes dividing n (counted with multiplicity).

Offset 1, canonical program `A008836.P691704047226663751`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008836 (n : ℕ) : ℤ :=
  A008836.P691704047226663751.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008836.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A025875.P13248790131916874129

`A029079(n)+A029271(n)-A029057(n)`
-/

namespace A025875.P13248790131916874129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029079 n + (A029271 n - A029057 n)

end

end A025875.P13248790131916874129

noncomputable section

/-- A025875: Expansion of 1/((1-x^4)*(1-x^11)*(1-x^12)).

Offset 0, canonical program `A025875.P13248790131916874129`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025875 (n : ℕ) : ℤ :=
  A025875.P13248790131916874129.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025875.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029115.P10103153616038408918

`A029431(n)+A029169(xor(1, n))`
-/

namespace A029115.P10103153616038408918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029431 n + A029169 (Nat.xor 1 n)

end

end A029115.P10103153616038408918

noncomputable section

/-- A029115: Expansion of 1/((1-x)(1-x^6)(1-x^10)(1-x^11)).

Offset 0, canonical program `A029115.P10103153616038408918`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029115 (n : ℕ) : ℤ :=
  A029115.P10103153616038408918.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029115.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029346.P15441236893995981458

`A025875(n)+A029331(n)-A029358(n)`
-/

namespace A029346.P15441236893995981458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025875 n + (A029331 n - A029358 n)

end

end A029346.P15441236893995981458

noncomputable section

/-- A029346: Expansion of 1/((1-x^4)*(1-x^5)*(1-x^11)*(1-x^12)).

Offset 0, canonical program `A029346.P15441236893995981458`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029346 (n : ℕ) : ℤ :=
  A029346.P15441236893995981458.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029346.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029376.P16706943438829377810

`A029114(n)+A029346(n)-A029102(n)`
-/

namespace A029376.P16706943438829377810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029114 n + (A029346 n - A029102 n)

end

end A029376.P16706943438829377810

noncomputable section

/-- A029376: Expansion of 1/((1-x^4)*(1-x^9)*(1-x^11)*(1-x^12)).

Offset 0, canonical program `A029376.P16706943438829377810`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029376 (n : ℕ) : ℤ :=
  A029376.P16706943438829377810.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029376.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029411.P3027199765007840635

`A029376(n)+A029398(n)-A029365(n)`
-/

namespace A029411.P3027199765007840635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029376 n + (A029398 n - A029365 n)

end

end A029411.P3027199765007840635

noncomputable section

/-- A029411: Expansion of 1/((1-x^5)(1-x^9)(1-x^11)(1-x^12)).

Offset 0, canonical program `A029411.P3027199765007840635`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029411 (n : ℕ) : ℤ :=
  A029411.P3027199765007840635.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029411.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039961.P8581143921981610919

`A130777(A061579(abs(1-n)))`
-/

namespace A039961.P8581143921981610919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130777 (A061579 |1 - (n : ℤ)|.toNat).toNat

end

end A039961.P8581143921981610919

noncomputable section

/-- A039961: Triangle of coefficients in a Fibonacci-like sequence of polynomials.

Offset 1, canonical program `A039961.P8581143921981610919`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9871 terms. -/
def A039961 (n : ℕ) : ℤ :=
  A039961.P8581143921981610919.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9871 terms. -/
def A039961.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046660.P3614759855976580945

`A001222(n+1)-A001221(n+1)`
-/

namespace A046660.P3614759855976580945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A001221 (n + 1)

end

end A046660.P3614759855976580945

noncomputable section

/-- A046660: Excess of n = number of prime divisors (with multiplicity) - number of prime divisors (without multiplicity).

Offset 1, canonical program `A046660.P3614759855976580945`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A001222, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A046660 (n : ℕ) : ℤ :=
  A046660.P3614759855976580945.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A001222, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A046660.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A054079.P11177909957407528994

`∑{d}[n+1, A000031(#-1)*A008683((n+1)/#)]`
-/

namespace A054079.P11177909957407528994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000031 (d - 1) * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A054079.P11177909957407528994

noncomputable section

/-- A054079: Moebius transform of A000031 (starting at term 0).

Offset 0, canonical program `A054079.P11177909957407528994`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A054079 (n : ℕ) : ℤ :=
  A054079.P11177909957407528994.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A054079.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054156.P13461329148621851711

`∑{d}[n+1, A000029(#-1)*A008683((n+1)/#)]`
-/

namespace A054156.P13461329148621851711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000029 (d - 1) * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A054156.P13461329148621851711

noncomputable section

/-- A054156: Moebius transform of A000029 (starting at term 0).

Offset 0, canonical program `A054156.P13461329148621851711`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A054156 (n : ℕ) : ℤ :=
  A054156.P13461329148621851711.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A054156.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056269.P4748138964941863798

`∑{d}[n+1, A000919(#)*A008683((n+1)/#)]`
-/

namespace A056269.P4748138964941863798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000919 d * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056269.P4748138964941863798

noncomputable section

/-- A056269: Number of primitive (aperiodic) words of length n which contain exactly four different symbols.

Offset 1, canonical program `A056269.P4748138964941863798`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A056269 (n : ℕ) : ℤ :=
  A056269.P4748138964941863798.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A056269.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056289.P8446985334841541821

`A056269(n+1)/(n+1)`
-/

namespace A056289.P8446985334841541821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056269 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A056289.P8446985334841541821

noncomputable section

/-- A056289: Number of primitive (period n) n-bead necklaces with exactly four different colored beads.

Offset 1, canonical program `A056289.P8446985334841541821`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A056289 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056289.P8446985334841541821.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A056289.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056303.P18308971732008802848

`∑{d}[n+1, A008683(#)*A056295((n+1)/#)]`
-/

namespace A056303.P18308971732008802848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056295 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056303.P18308971732008802848

noncomputable section

/-- A056303: Number of primitive (period n) n-bead necklace structures using exactly two different colored beads.

Offset 1, canonical program `A056303.P18308971732008802848`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A056303 (n : ℕ) : ℤ :=
  A056303.P18308971732008802848.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A056303.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056463.P6786534809649954337

`∑{d}[n+1, A008683(#)*A056453((n+1)/#)]`
-/

namespace A056463.P6786534809649954337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056453 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056463.P6786534809649954337

noncomputable section

/-- A056463: Number of primitive (aperiodic) palindromes using exactly two different symbols.

Offset 1, canonical program `A056463.P6786534809649954337`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 664 terms. -/
def A056463 (n : ℕ) : ℤ :=
  A056463.P6786534809649954337.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 664 terms. -/
def A056463.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056464.P10441682946801096791

`∑{d}[n+1, A008683(#)*A056454((n+1)/#)]`
-/

namespace A056464.P10441682946801096791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056454 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056464.P10441682946801096791

noncomputable section

/-- A056464: Number of primitive (aperiodic) palindromes using exactly three different symbols.

Offset 1, canonical program `A056464.P10441682946801096791`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 418 terms. -/
def A056464 (n : ℕ) : ℤ :=
  A056464.P10441682946801096791.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 418 terms. -/
def A056464.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056465.P10456151034550717981

`∑{d}[n+1, A008683(#)*A056455((n+1)/#)]`
-/

namespace A056465.P10456151034550717981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056455 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056465.P10456151034550717981

noncomputable section

/-- A056465: Number of primitive (aperiodic) palindromes using exactly four different symbols.

Offset 1, canonical program `A056465.P10456151034550717981`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A056465 (n : ℕ) : ℤ :=
  A056465.P10456151034550717981.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A056465.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056481.P6036497099892352670

`A056463(A028310(n))/2`
-/

namespace A056481.P6036497099892352670
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056463 (A028310 n).toNat : ℚ) / 2

end

end A056481.P6036497099892352670

noncomputable section

/-- A056481: Number of primitive (aperiodic) palindromic structures using exactly two different symbols.

Offset 0, canonical program `A056481.P6036497099892352670`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 665 terms. -/
def A056481 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056481.P6036497099892352670.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 665 terms. -/
def A056481.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056482.P13043741181585035783

`A056464(n+1)/6`
-/

namespace A056482.P13043741181585035783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056464 (n + 1) : ℚ) / 6

end

end A056482.P13043741181585035783

noncomputable section

/-- A056482: Number of primitive (aperiodic) palindromic structures using exactly three different symbols.

Offset 1, canonical program `A056482.P13043741181585035783`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 418 terms. -/
def A056482 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056482.P13043741181585035783.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 418 terms. -/
def A056482.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056500.P11676787919876706012

`∑{d}[n+1, A008683(#)*A056490((n+1)/#)]`
-/

namespace A056500.P11676787919876706012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056490 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056500.P11676787919876706012

noncomputable section

/-- A056500: Number of primitive (period n) periodic palindromes using exactly four different symbols.

Offset 1, canonical program `A056500.P11676787919876706012`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A056500 (n : ℕ) : ℤ :=
  A056500.P11676787919876706012.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A056500.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061142.P8765440716561686614

`A000079(A001222(n+1))`
-/

namespace A061142.P8765440716561686614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A001222 (n + 1)).toNat

end

end A061142.P8765440716561686614

noncomputable section

/-- A061142: Replace each prime factor of n with 2: a(n) = 2^bigomega(n), where bigomega = A001222, number of prime factors counted with multiplicity.

Offset 1, canonical program `A061142.P8765440716561686614`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061142 (n : ℕ) : ℤ :=
  A061142.P8765440716561686614.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061142.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A065966.P16852367913655566949

`eq[2, A001222(A000010(n+1))]+1`
-/

namespace A065966.P16852367913655566949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A065966.P16852367913655566949

noncomputable section

/-- A065966: Numbers k such that phi(k) / 2 is prime.

Offset 1, canonical program `A065966.P16852367913655566949`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 623 terms. -/
def A065966 (n : ℕ) : ℤ :=
  (A065966.P16852367913655566949.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 623 terms. -/
def A065966.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066427.P8185841536175877705

`lt[A064179(n+1), A008683(n+1)]+1`
-/

namespace A066427.P8185841536175877705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A066427.P8185841536175877705

noncomputable section

/-- A066427: Numbers with mu = 0 and infinitary MoebiusMu = -1; (sum of binary digits of prime exponents is odd).

Offset 1, canonical program `A066427.P8185841536175877705`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9809 terms. -/
def A066427 (n : ℕ) : ℤ :=
  (A066427.P8185841536175877705.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9809 terms. -/
def A066427.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071778.P17795933685845442771

`∑[∑{d}[n+1, A008683(#)*A003215((n+1)/#-1)]]`
-/

namespace A071778.P17795933685845442771
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A008683 d * A003215 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071778.P17795933685845442771

noncomputable section

/-- A071778: Number of ordered triples (a, b, c) with gcd(a, b, c) = 1 and 1 <= {a, b, c} <= n.

Offset 1, canonical program `A071778.P17795933685845442771`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071778 (n : ℕ) : ℤ :=
  A071778.P17795933685845442771.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071778.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081400.P8046056568042130816

`A000005(n+1)-A001222(n+1)-A005361(n+1)`
-/

namespace A081400.P8046056568042130816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A001222 (n + 1) - A005361 (n + 1)

end

end A081400.P8046056568042130816

noncomputable section

/-- A081400: a(n) = d(n) - bigomega(n) - A005361(n).

Offset 1, canonical program `A081400.P8046056568042130816`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A001222, A005361, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A081400 (n : ℕ) : ℤ :=
  A081400.P8046056568042130816.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A001222, A005361, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A081400.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A089026.P9133057752167928232

`A014963(n+1)^-A008683(n+1)`
-/

namespace A089026.P9133057752167928232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014963 (n + 1) : ℚ) ^ (-A008683 (n + 1) : ℤ)

end

end A089026.P9133057752167928232

noncomputable section

/-- A089026: a(n) = n if n is a prime, otherwise a(n) = 1.

Offset 1, canonical program `A089026.P9133057752167928232`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008683, A014963, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A089026 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A089026.P9133057752167928232.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008683, A014963, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A089026.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A092673.P12157065487718693493

`A056832(n+1)*A092152(n+1)`
-/

namespace A092673.P12157065487718693493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056832 (n + 1) * A092152 (n + 1)

end

end A092673.P12157065487718693493

noncomputable section

/-- A092673: a(n) = moebius(n) - moebius(n/2) where moebius(n) is zero if n is not an integer.

Offset 1, canonical program `A092673.P12157065487718693493`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092673 (n : ℕ) : ℤ :=
  A092673.P12157065487718693493.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092673.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100448.P17514214927403473574

`(A071778(n+1)-1)/6`
-/

namespace A100448.P17514214927403473574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071778 (n + 1) - 1 : ℚ) / 6

end

end A100448.P17514214927403473574

noncomputable section

/-- A100448: Number of triples (i,j,k) with 1 <= i <= j < k <= n and gcd{i,j,k} = 1.

Offset 1, canonical program `A100448.P17514214927403473574`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071778, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100448 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A100448.P17514214927403473574.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071778, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100448.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A102309.P13404708069646192111

`Δ[A100448(A065033(A004275(n)))]`
-/

namespace A102309.P13404708069646192111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100448 (A065033 (A004275 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102309.P13404708069646192111

noncomputable section

/-- A102309: a(n) = Sum_{d divides n} moebius(d) * binomial(n/d,2).

Offset 0, canonical program `A102309.P13404708069646192111`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A102309 (n : ℕ) : ℤ :=
  A102309.P13404708069646192111.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A102309.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108299.P8064445673908937225

`A039961(n+2)`
-/

namespace A108299.P8064445673908937225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039961 (n + 2)

end

end A108299.P8064445673908937225

noncomputable section

/-- A108299: Triangle read by rows, 0 <= k <= n: T(n,k) = binomial(n-[(k+1)/2],[k/2])*(-1)^[(k+1)/2].

Offset 0, canonical program `A108299.P8064445673908937225`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A108299 (n : ℕ) : ℤ :=
  A108299.P8064445673908937225.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A108299.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113901.P4362226141671724758

`A001221(n+1)*A001222(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A113901.P4362226141671724758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) * A001222 (n + 1)

end

end A113901.P4362226141671724758

noncomputable section

/-- A113901: Product of omega(n) and bigomega(n) = A001221(n)*A001222(n), where omega(x): number of distinct prime divisors of x. bigomega(x): number of prime divisors of x, counted with multiplicity.

Offset 1, canonical program `A113901.P4362226141671724758`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A001222, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A113901 (n : ℕ) : ℤ :=
  A113901.P4362226141671724758.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A001222, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A113901.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A115167.P14839111821241790743

`2*(eq[A001222(n+1), A001222(n+2)]+1)+1`
-/

namespace A115167.P14839111821241790743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1) + 1

end

end A115167.P14839111821241790743

noncomputable section

/-- A115167: Odd numbers k such that k-1 and k+1 have the same number of prime divisors with multiplicity.

Offset 1, canonical program `A115167.P14839111821241790743`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7027 terms. -/
def A115167 (n : ℕ) : ℤ :=
  (A115167.P14839111821241790743.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7027 terms. -/
def A115167.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130159.P6657811149609093730

`∑{d}[n+1, A000069(#)*A008683((n+1)/#)]`
-/

namespace A130159.P6657811149609093730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000069 d * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A130159.P6657811149609093730

noncomputable section

/-- A130159: A054525 * A000069.

Offset 1, canonical program `A130159.P6657811149609093730`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130159 (n : ℕ) : ℤ :=
  A130159.P6657811149609093730.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130159.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141056.P945056089172605289

`∏{d}[n, A089026(#+1)]`
-/

namespace A141056.P945056089172605289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A089026 (d + 1)

end

end A141056.P945056089172605289

noncomputable section

/-- A141056: 1 followed by A027760, a variant of Bernoulli number denominators.

Offset 0, canonical program `A141056.P945056089172605289`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141056 (n : ℕ) : ℤ :=
  A141056.P945056089172605289.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141056.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158522.P8664483793613272313

`(-1)^A001222(n+1)*A034444(n+1)`
-/

namespace A158522.P8664483793613272313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A001222 (n + 1) : ℤ) * (A034444 (n + 1) : ℚ)

end

end A158522.P8664483793613272313

noncomputable section

/-- A158522: Dirichlet inverse of number of unitary divisors of n (A034444).

Offset 1, canonical program `A158522.P8664483793613272313`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A034444, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A158522 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A158522.P8664483793613272313.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A034444, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A158522.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A158523.P14887875491729113623

`(-1)^A001222(n+1)*A001615(n+1)`
-/

namespace A158523.P14887875491729113623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A001222 (n + 1) : ℤ) * (A001615 (n + 1) : ℚ)

end

end A158523.P14887875491729113623

noncomputable section

/-- A158523: Moebius transform of negated primes in factorization of n.

Offset 1, canonical program `A158523.P14887875491729113623`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A001615, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A158523 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A158523.P14887875491729113623.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A001615, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A158523.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A178472.P13420847945561689765

`∑{d}[n+1, A008683(#)*A247146((n+1)/#)]`
-/

namespace A178472.P13420847945561689765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A247146 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A178472.P13420847945561689765

noncomputable section

/-- A178472: Number of compositions (ordered partitions) of n where the gcd of the part sizes is not 1.

Offset 1, canonical program `A178472.P13420847945561689765`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 667 terms. -/
def A178472 (n : ℕ) : ℤ :=
  A178472.P13420847945561689765.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 667 terms. -/
def A178472.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193509.P11790490675340874648

`∑{d}[A001222(n+1), #%2]`
-/

namespace A193509.P11790490675340874648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d % 2

end

end A193509.P11790490675340874648

noncomputable section

/-- A193509: Number of odd divisors of Omega(n).

Offset 1, canonical program `A193509.P11790490675340874648`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193509 (n : ℕ) : ℤ :=
  (A193509.P11790490675340874648.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193509.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193929.P6175348211459151431

`A001222(A002523(n))`
-/

namespace A193929.P6175348211459151431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002523 n).toNat

end

end A193929.P6175348211459151431

noncomputable section

/-- A193929: Number of prime factors of n^4 + 1, counted with multiplicity.

Offset 0, canonical program `A193929.P6175348211459151431`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A193929 (n : ℕ) : ℤ :=
  A193929.P6175348211459151431.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A193929.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A225481.P12092037040883699574

`lcm(∏{p}[n+1, -#], A141056(n))`
-/

namespace A225481.P12092037040883699574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∏ p ∈ Nat.primeFactors (f1 n), (-(p : ℤ))) (A141056 n)

end

end A225481.P12092037040883699574

noncomputable section

/-- A225481: a(n) = product{ p primes <= n+1 such that p divides n+1 or p-1 divides n }.

Offset 0, canonical program `A225481.P12092037040883699574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A225481 (n : ℕ) : ℤ :=
  (A225481.P12092037040883699574.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A225481.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226040.P7975070697186839917

`A225481(n)/A141056(n)`
-/

namespace A226040.P7975070697186839917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225481 n : ℚ) / (A141056 n : ℚ)

end

end A226040.P7975070697186839917

noncomputable section

/-- A226040: a(n) = product{ p prime such that p divides n + 1 and p - 1 does not divide n }.

Offset 0, canonical program `A226040.P7975070697186839917`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141056, A225481, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A226040 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A226040.P7975070697186839917.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141056, A225481, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A226040.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A243501.P10707292738867961998

`2*A048673(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A243501.P10707292738867961998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048673 (n + 1)

end

end A243501.P10707292738867961998

noncomputable section

/-- A243501: Permutation of even numbers: a(n) = 2*A048673(n).

Offset 1, canonical program `A243501.P10707292738867961998`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A243501 (n : ℕ) : ℤ :=
  A243501.P10707292738867961998.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A243501.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A251662.P2951919329571068556

`∑{d}[n+1, A008683(#)*A001764((n+1)/#-1)]`
-/

namespace A251662.P2951919329571068556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A001764 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A251662.P2951919329571068556

noncomputable section

/-- A251662: Dirichlet convolution of Moebius function mu(n) (A008683) with Ternary numbers A001764.

Offset 1, canonical program `A251662.P2951919329571068556`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A251662 (n : ℕ) : ℤ :=
  A251662.P2951919329571068556.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A251662.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253885.P16715555451856890624

`A243501(n+1)-2`
-/

namespace A253885.P16715555451856890624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243501 (n + 1) - 2

end

end A253885.P16715555451856890624

noncomputable section

/-- A253885: Permutation of even numbers: a(n) = A003961(n+1) - 1.

Offset 0, canonical program `A253885.P16715555451856890624`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A243501, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A253885 (n : ℕ) : ℤ :=
  A253885.P16715555451856890624.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A243501, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A253885.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A277087.P5148910457035852056

`ceil(A141056(2*n)/3)`
-/

namespace A277087.P5148910457035852056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A141056 (2 * n) : ℚ) / 3⌉

end

end A277087.P5148910457035852056

noncomputable section

/-- A277087: a(0) = 1, a(n) = (denominator of the Bernoulli number B_{2n})/3, for n>=1.

Offset 0, canonical program `A277087.P5148910457035852056`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. -/
def A277087 (n : ℕ) : ℤ :=
  A277087.P5148910457035852056.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. -/
def A277087.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297113.P441289280190658386

`A046660(n+1)+A061395(n+1)`
-/

namespace A297113.P441289280190658386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (n + 1) + A061395 (n + 1)

end

end A297113.P441289280190658386

noncomputable section

/-- A297113: a(1) = 0, a(2) = 1, after which, a(n) = a(n/2) if n is of the form 4k+2, and otherwise a(n) = 1+a(A252463(n)).

Offset 1, canonical program `A297113.P441289280190658386`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046660, A061395, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A297113 (n : ℕ) : ℤ :=
  A297113.P441289280190658386.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046660, A061395, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A297113.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A297115.P7151949488019486399

`∑{d}[n+1, A008683(#)*A000120((n+1)/#)]`
-/

namespace A297115.P7151949488019486399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A000120 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A297115.P7151949488019486399

noncomputable section

/-- A297115: Möbius transform of A000120, binary weight of n.

Offset 1, canonical program `A297115.P7151949488019486399`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A297115 (n : ℕ) : ℤ :=
  A297115.P7151949488019486399.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A297115.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297155.P1611206963555320167

`A252464(n+1)-A297113(n+1)`
-/

namespace A297155.P1611206963555320167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (n + 1) - A297113 (n + 1)

end

end A297155.P1611206963555320167

noncomputable section

/-- A297155: a(1) = a(2) = 0, after which, a(n) = 1+a(n/2) if n is of the form 4k+2, otherwise a(n) = a(A252463(n)).

Offset 1, canonical program `A297155.P1611206963555320167`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252464, A297113, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A297155 (n : ℕ) : ℤ :=
  A297155.P1611206963555320167.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252464, A297113, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A297155.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A307409.P14464226460867145203

`(A001222(n+1)-1)*A001221(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A307409.P14464226460867145203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001222 (n + 1) - 1) * A001221 (n + 1)

end

end A307409.P14464226460867145203

noncomputable section

/-- A307409: a(n) = (A001222(n) - 1)*A001221(n).

Offset 1, canonical program `A307409.P14464226460867145203`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A001222, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A307409 (n : ℕ) : ℤ :=
  A307409.P14464226460867145203.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A001222, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A307409.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A323363.P90347779852001049

`A008836(n+1)*A048250(n+1)`
-/

namespace A323363.P90347779852001049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) * A048250 (n + 1)

end

end A323363.P90347779852001049

noncomputable section

/-- A323363: Dirichlet inverse of Dedekind's psi, A001615.

Offset 1, canonical program `A323363.P90347779852001049`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008836, A048250, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A323363 (n : ℕ) : ℤ :=
  A323363.P90347779852001049.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008836, A048250, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A323363.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324290.P16051344129388341371

`A004530(A226040(n))`
-/

namespace A324290.P16051344129388341371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004530 (A226040 n).toNat

end

end A324290.P16051344129388341371

noncomputable section

/-- A324290: a(n) = 1 if for every prime divisor p of n, p-1 divides n-1, 0 otherwise; characteristic function of A087441.

Offset 1, canonical program `A324290.P16051344129388341371`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324290 (n : ℕ) : ℤ :=
  A324290.P16051344129388341371.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324290.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326419.P9387149327570643325

`A102309(A028310(n)+1)`
-/

namespace A326419.P9387149327570643325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102309 (A028310 n + 1).toNat

end

end A326419.P9387149327570643325

noncomputable section

/-- A326419: a(n) is the number of distinct Horadam sequences of period n.

Offset 1, canonical program `A326419.P9387149327570643325`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326419 (n : ℕ) : ℤ :=
  A326419.P9387149327570643325.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326419.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328958.P3249382024381690087

`A000005(n+1)-A113901(n+1)`
-/

namespace A328958.P3249382024381690087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A113901 (n + 1)

end

end A328958.P3249382024381690087

noncomputable section

/-- A328958: a(n) = d(n) - (omega(n) * bigomega(n)), where d (number of divisors) = A000005, omega = A001221, bigomega = A001222.

Offset 1, canonical program `A328958.P3249382024381690087`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A113901, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A328958 (n : ℕ) : ℤ :=
  A328958.P3249382024381690087.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A113901, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A328958.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342007.P5181248813472136976

`∏{d}[n+1, gcd(A001222(#), A014963(#))]`
-/

namespace A342007.P5181248813472136976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), Int.gcd (A001222 d) (A014963 d)

end

end A342007.P5181248813472136976

noncomputable section

/-- A342007: Multiplicative with a(p^e) = p^floor(e/p).

Offset 1, canonical program `A342007.P5181248813472136976`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342007 (n : ℕ) : ℤ :=
  (A342007.P5181248813472136976.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342007.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378489.P17623488810974009379

`filter[A066427(n+1), A065043(#)]`
-/

namespace A378489.P17623488810974009379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A378489.P17623488810974009379

noncomputable section

/-- A378489: Intersection of A000028 and A028260.

Offset 1, canonical program `A378489.P17623488810974009379`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8378 terms. -/
def A378489 (n : ℕ) : ℤ :=
  A378489.P17623488810974009379.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8378 terms. -/
def A378489.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000013.P13330308426199228881

`∑{d}[n, A056303(#)]+1`
-/

namespace A000013.P13330308426199228881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056303 d + 1

end

end A000013.P13330308426199228881

noncomputable section

/-- A000013: Definition (1): Number of n-bead binary necklaces with beads of 2 colors where the colors may be swapped but turning over is not allowed.

Offset 0, canonical program `A000013.P13330308426199228881`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A000013 (n : ℕ) : ℤ :=
  A000013.P13330308426199228881.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A000013.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000048.P16452762028424782785

`A056303(A233583(n+1))`
-/

namespace A000048.P16452762028424782785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056303 (A233583 (n + 1)).toNat

end

end A000048.P16452762028424782785

noncomputable section

/-- A000048: Number of n-bead necklaces with beads of 2 colors and primitive period n, when turning over is not allowed but the two colors can be interchanged.

Offset 0, canonical program `A000048.P16452762028424782785`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A000048 (n : ℕ) : ℤ :=
  A000048.P16452762028424782785.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A000048.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000590.P2016636262549572993

`A090749(n+6)-(A090749(n+5)+A003519(n+5))`
-/

namespace A000590.P2016636262549572993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090749 (n + 6) - (A090749 (n + 5) + A003519 (n + 5))

end

end A000590.P2016636262549572993

noncomputable section

/-- A000590: a(n) = 13*binomial(2n,n-6)/(n+7).

Offset 6, canonical program `A000590.P2016636262549572993`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A000590 (n : ℕ) : ℤ :=
  A000590.P2016636262549572993.a (n - 6)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A000590.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003961.P5996473960037614004

`A253885(n)+1`
-/

namespace A003961.P5996473960037614004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253885 n + 1

end

end A003961.P5996473960037614004

noncomputable section

/-- A003961: Completely multiplicative with a(prime(k)) = prime(k+1).

Offset 1, canonical program `A003961.P5996473960037614004`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003961 (n : ℕ) : ℤ :=
  A003961.P5996473960037614004.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003961.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007148.P10288860915115632936

`(A011782(n+1)+A000013(n+1))/2`
-/

namespace A007148.P10288860915115632936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 (n + 1) + A000013 (n + 1) : ℚ) / 2

end

end A007148.P10288860915115632936

noncomputable section

/-- A007148: Number of self-complementary 2-colored bracelets (turnover necklaces) with 2n beads.

Offset 1, canonical program `A007148.P10288860915115632936`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A007148 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A007148.P10288860915115632936.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A007148.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008833.P17580355989798021069

`A008836(n+1)*A358272(n+1)`
-/

namespace A008833.P17580355989798021069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) * A358272 (n + 1)

end

end A008833.P17580355989798021069

noncomputable section

/-- A008833: Largest square dividing n.

Offset 1, canonical program `A008833.P17580355989798021069`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008836, A358272, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A008833 (n : ℕ) : ℤ :=
  A008833.P17580355989798021069.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008836, A358272, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A008833.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A015616.P14708381890948366132

`(A071778(n+1)-3*A018805(n+1)+2)/6`
-/

namespace A015616.P14708381890948366132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071778 (n + 1) - 3 * A018805 (n + 1) + 2 : ℚ) / 6

end

end A015616.P14708381890948366132

noncomputable section

/-- A015616: Number of triples (i,j,k) with 1 <= i < j < k <= n and gcd(i,j,k) = 1.

Offset 1, canonical program `A015616.P14708381890948366132`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018805, A071778, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A015616 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A015616.P14708381890948366132.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018805, A071778, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A015616.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A025827.P6655509117065246378

`A025875(abs(2-n))+A025875(n)`
-/

namespace A025827.P6655509117065246378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025875 |2 - (n : ℤ)|.toNat + A025875 n

end

end A025827.P6655509117065246378

noncomputable section

/-- A025827: Expansion of 1/((1-x^2)*(1-x^11)*(1-x^12)).

Offset 0, canonical program `A025827.P6655509117065246378`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025827 (n : ℕ) : ℤ :=
  A025827.P6655509117065246378.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025827.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025925.P1140353279712905302

`A029114(n)+A029411(n)-A029102(n)`
-/

namespace A025925.P1140353279712905302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029114 n + (A029411 n - A029102 n)

end

end A025925.P1140353279712905302

noncomputable section

/-- A025925: Expansion of 1/((1-x^9)*(1-x^11)*(1-x^12)).

Offset 0, canonical program `A025925.P1140353279712905302`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025925 (n : ℕ) : ℤ :=
  A025925.P1140353279712905302.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025925.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027642.P11573445315954727429

`A141056(n*A266591(n))`
-/

namespace A027642.P11573445315954727429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141056 ((n : ℤ) * A266591 n).toNat

end

end A027642.P11573445315954727429

noncomputable section

/-- A027642: Denominator of Bernoulli number B_n.

Offset 0, canonical program `A027642.P11573445315954727429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027642 (n : ℕ) : ℤ :=
  A027642.P11573445315954727429.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027642.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027762.P15108527688971011005

`3*A277087(n+1)`
-/

namespace A027762.P15108527688971011005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A277087 (n + 1)

end

end A027762.P15108527688971011005

noncomputable section

/-- A027762: Denominator of Sum_{p prime, p-1 divides 2*n} 1/p.

Offset 1, canonical program `A027762.P15108527688971011005`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027762 (n : ℕ) : ℤ :=
  A027762.P15108527688971011005.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027762.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029134.P1779727754259986526

`∑[A025925(n)]`
-/

namespace A029134.P1779727754259986526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029134.P1779727754259986526

noncomputable section

/-- A029134: Expansion of 1/((1-x)(1-x^9)(1-x^11)(1-x^12)).

Offset 0, canonical program `A029134.P1779727754259986526`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029134 (n : ℕ) : ℤ :=
  A029134.P1779727754259986526.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029134.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029213.P5201621740032638678

`A025827(n)+A029198(n)-A029225(n)`
-/

namespace A029213.P5201621740032638678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025827 n + (A029198 n - A029225 n)

end

end A029213.P5201621740032638678

noncomputable section

/-- A029213: Expansion of 1/((1-x^2)*(1-x^5)*(1-x^11)*(1-x^12)).

Offset 0, canonical program `A029213.P5201621740032638678`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029213 (n : ℕ) : ℤ :=
  A029213.P5201621740032638678.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029213.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029243.P10472737080434967019

`A029134(n)-a(n-1)` with `a(0)=1`
-/

namespace A029243.P10472737080434967019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029134 n - a (n - 1)

end

end A029243.P10472737080434967019

noncomputable section

/-- A029243: Expansion of 1/((1-x^2)*(1-x^9)*(1-x^11)*(1-x^12)).

Offset 0, canonical program `A029243.P10472737080434967019`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029243 (n : ℕ) : ℤ :=
  A029243.P10472737080434967019.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029243.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029244.P8059623005878958167

`A029213(n)+∑[A029224(n)-A029213(n)]`
-/

namespace A029244.P8059623005878958167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029224 n - A029213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029213 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029244.P8059623005878958167

noncomputable section

/-- A029244: Expansion of 1/((1-x^2)*(1-x^10)*(1-x^11)*(1-x^12)).

Offset 0, canonical program `A029244.P8059623005878958167`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029244 (n : ℕ) : ℤ :=
  A029244.P8059623005878958167.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029244.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029339.P7038335507115413747

`A029285(n)+A029346(n)-A029291(n)`
-/

namespace A029339.P7038335507115413747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029285 n + (A029346 n - A029291 n)

end

end A029339.P7038335507115413747

noncomputable section

/-- A029339: Expansion of 1/((1-x^4)*(1-x^5)*(1-x^8)*(1-x^11)).

Offset 0, canonical program `A029339.P7038335507115413747`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029339 (n : ℕ) : ℤ :=
  A029339.P7038335507115413747.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029339.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029377.P9082731251158770194

`A029244(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029377.P9082731251158770194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029244 n - a (n - 2)

end

end A029377.P9082731251158770194

noncomputable section

/-- A029377: Expansion of 1/((1-x^4)*(1-x^10)*(1-x^11)*(1-x^12)).

Offset 0, canonical program `A029377.P9082731251158770194`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029377 (n : ℕ) : ℤ :=
  A029377.P9082731251158770194.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029377.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029412.P8218405848832406386

`A029377(n)+A029391(n)-A029358(n)`
-/

namespace A029412.P8218405848832406386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029377 n + (A029391 n - A029358 n)

end

end A029412.P8218405848832406386

noncomputable section

/-- A029412: Expansion of 1/((1-x^5)*(1-x^10)*(1-x^11)*(1-x^12)).

Offset 0, canonical program `A029412.P8218405848832406386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029412 (n : ℕ) : ℤ :=
  A029412.P8218405848832406386.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029412.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037896.P17461005331305696964

`A002523(eq[1, A193929(n)])`
-/

namespace A037896.P17461005331305696964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193929 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002523 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A037896.P17461005331305696964

noncomputable section

/-- A037896: Primes of the form k^4 + 1.

Offset 1, canonical program `A037896.P17461005331305696964`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 790 terms. -/
def A037896 (n : ℕ) : ℤ :=
  A037896.P17461005331305696964.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 790 terms. -/
def A037896.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045663.P16332658941745437849

`A000048(n)*A004277(n)`
-/

namespace A045663.P16332658941745437849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000048 n * A004277 n

end

end A045663.P16332658941745437849

noncomputable section

/-- A045663: Number of 2n-bead balanced binary strings of fundamental period 2n, rotationally equivalent to complement.

Offset 0, canonical program `A045663.P16332658941745437849`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A045663 (n : ℕ) : ℤ :=
  A045663.P16332658941745437849.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A045663.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045920.P4151423795650373720

`floor(A115167(n+1)/2)`
-/

namespace A045920.P4151423795650373720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A115167 (n + 1) : ℚ) / 2⌋

end

end A045920.P4151423795650373720

noncomputable section

/-- A045920: Numbers m such that the factorizations of m..m+1 have the same number of primes (including multiplicities).

Offset 1, canonical program `A045920.P4151423795650373720`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045920 (n : ℕ) : ℤ :=
  A045920.P4151423795650373720.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045920.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048103.P2857780871573492135

`eq[1, A342007(n+1)]+1`
-/

namespace A048103.P2857780871573492135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342007 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A048103.P2857780871573492135

noncomputable section

/-- A048103: Numbers not divisible by p^p for any prime p.

Offset 1, canonical program `A048103.P2857780871573492135`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048103 (n : ℕ) : ℤ :=
  (A048103.P2857780871573492135.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048103.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051841.P14927050222339071837

`A001037(n+1)-A000048(n+1)`
-/

namespace A051841.P14927050222339071837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001037 (n + 1) - A000048 (n + 1)

end

end A051841.P14927050222339071837

noncomputable section

/-- A051841: Number of binary Lyndon words with an even number of 1's.

Offset 1, canonical program `A051841.P14927050222339071837`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A051841 (n : ℕ) : ℤ :=
  A051841.P14927050222339071837.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A051841.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054168.P5904931330468095639

`∑{d}[n+1, A000013(#-1)]`
-/

namespace A054168.P5904931330468095639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000013 (d - 1)

end

end A054168.P5904931330468095639

noncomputable section

/-- A054168: Inverse Moebius transform of A000013 (starting at term 0).

Offset 0, canonical program `A054168.P5904931330468095639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A054168 (n : ℕ) : ℤ :=
  A054168.P5904931330468095639.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A054168.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054170.P15719622128540370698

`∑{d}[n+1, A000013(#-1)*A008683((n+1)/#)]`
-/

namespace A054170.P15719622128540370698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000013 (d - 1) * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A054170.P15719622128540370698

noncomputable section

/-- A054170: Moebius transform of A000013 (starting at term 0).

Offset 0, canonical program `A054170.P15719622128540370698`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A054170 (n : ℕ) : ℤ :=
  A054170.P15719622128540370698.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A054170.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054172.P6329967147542046183

`∑{d}[n+1, A000048(#-1)]`
-/

namespace A054172.P6329967147542046183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000048 (d - 1)

end

end A054172.P6329967147542046183

noncomputable section

/-- A054172: Inverse Moebius transform of A000048 (starting at term 0).

Offset 0, canonical program `A054172.P6329967147542046183`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A054172 (n : ℕ) : ℤ :=
  A054172.P6329967147542046183.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A054172.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054174.P10145721077152883775

`∑{d}[n+1, A000048(#-1)*A008683((n+1)/#)]`
-/

namespace A054174.P10145721077152883775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000048 (d - 1) * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A054174.P10145721077152883775

noncomputable section

/-- A054174: Moebius transform of A000048 (starting at term 0).

Offset 0, canonical program `A054174.P10145721077152883775`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A054174 (n : ℕ) : ℤ :=
  A054174.P10145721077152883775.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A054174.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054977.P9650357608159032738

`A027642(2*n+1)`
-/

namespace A054977.P9650357608159032738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (2 * n + 1)

end

end A054977.P9650357608159032738

noncomputable section

/-- A054977: a(0)=2, a(n)=1 for n >= 1.

Offset 0, canonical program `A054977.P9650357608159032738`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A054977 (n : ℕ) : ℤ :=
  A054977.P9650357608159032738.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A054977.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056476.P12632563156965169968

`A056481(n)+C(n, n²)`
-/

namespace A056476.P12632563156965169968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056481 n + (Nat.choose n (n ^ 2) : ℤ)

end

end A056476.P12632563156965169968

noncomputable section

/-- A056476: Number of primitive (aperiodic) palindromic structures of length n using a maximum of two different symbols.

Offset 0, canonical program `A056476.P12632563156965169968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 667 terms. -/
def A056476 (n : ℕ) : ℤ :=
  A056476.P12632563156965169968.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 667 terms. -/
def A056476.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059053.P13144788230309501113

`(A000013(n)-A016116(n))/2`
-/

namespace A059053.P13144788230309501113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000013 n - A016116 n : ℚ) / 2

end

end A059053.P13144788230309501113

noncomputable section

/-- A059053: Number of chiral pairs of necklaces with n beads and two colors (color complements being equivalent); i.e., turning the necklace over neither leaves it unchanged nor simply swaps the colors.

Offset 0, canonical program `A059053.P13144788230309501113`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000013, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A059053 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A059053.P13144788230309501113.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000013, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A059053.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A065941.P15522671980025678303

`abs(A108299(n))`
-/

namespace A065941.P15522671980025678303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108299 n|

end

end A065941.P15522671980025678303

noncomputable section

/-- A065941: T(n,k) = binomial(n-floor((k+1)/2), floor(k/2)). Triangle read by rows, for 0 <= k <= n.

Offset 0, canonical program `A065941.P15522671980025678303`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A108299, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065941 (n : ℕ) : ℤ :=
  A065941.P15522671980025678303.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A108299, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065941.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A096165.P5646365465445830634

`eq[A001221(n+1), A328958(A307409(n+1)+1)]+1`
-/

namespace A096165.P5646365465445830634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328958 (A307409 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A096165.P5646365465445830634

noncomputable section

/-- A096165: Prime powers with exponents that are themselves prime powers.

Offset 1, canonical program `A096165.P5646365465445830634`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5210 terms. -/
def A096165 (n : ℕ) : ℤ :=
  (A096165.P5646365465445830634.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5210 terms. -/
def A096165.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100446.P6779917353490188609

`2*A000116(n)-A000013(n)`
-/

namespace A100446.P6779917353490188609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000116 n - A000013 n

end

end A100446.P6779917353490188609

noncomputable section

/-- A100446: Bisection of A000031.

Offset 0, canonical program `A100446.P6779917353490188609`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A100446 (n : ℕ) : ℤ :=
  A100446.P6779917353490188609.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A100446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115118.P6546194884082821130

`A000013(n)-A000048(n)`
-/

namespace A115118.P6546194884082821130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000013 n - A000048 n

end

end A115118.P6546194884082821130

noncomputable section

/-- A115118: Number of imprimitive (periodic) n-bead binary necklaces with beads of 2 colors where the colors may be swapped but turning over is not allowed.

Offset 0, canonical program `A115118.P6546194884082821130`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000013, A000048, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A115118 (n : ℕ) : ℤ :=
  A115118.P6546194884082821130.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000013, A000048, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A115118.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A123707.P12126468004863991091

`(A231821(n+1)-3+2^n-A178472(n+1))/2`
-/

namespace A123707.P12126468004863991091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231821 (n + 1) - 3 + ((2 ^ n : ℤ) - A178472 (n + 1)) : ℚ) / 2

end

end A123707.P12126468004863991091

noncomputable section

/-- A123707: a(n) = Sum_{k=1..n} A123706(n,k)*2^(k-1).

Offset 1, canonical program `A123707.P12126468004863991091`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A123707 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A123707.P12126468004863991091.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A123707.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164869.P11362495776085289296

`n*A027642(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A164869.P11362495776085289296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A027642 n

end

end A164869.P11362495776085289296

noncomputable section

/-- A164869: n*A027642(n).

Offset 0, canonical program `A164869.P11362495776085289296`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A164869 (n : ℕ) : ℤ :=
  A164869.P11362495776085289296.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A164869.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A164877.P9055220264307131730

`A164869(2*n)`
-/

namespace A164877.P9055220264307131730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164869 (2 * n)

end

end A164877.P9055220264307131730

noncomputable section

/-- A164877: First bisection of A164869.

Offset 0, canonical program `A164877.P9055220264307131730`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A164869, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A164877 (n : ℕ) : ℤ :=
  A164877.P9055220264307131730.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A164869, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A164877.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A216957.P2135053130525426770

`a((n+1)%2)*A007148(n)` with `a(0)=2`
-/

namespace A216957.P2135053130525426770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a ((n + 1) % 2) * A007148 n

end

end A216957.P2135053130525426770

noncomputable section

/-- A216957: a(1)=2; for n > 1, a(n) = 2^(n-2) + (1/(2n-2)) * Sum_{ d divides n-1 } phi(2d)*2^((n-1)/d).

Offset 1, canonical program `A216957.P2135053130525426770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A216957 (n : ℕ) : ℤ :=
  A216957.P2135053130525426770.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A216957.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228838.P3420866466249862964

`A164877(n)/2`
-/

namespace A228838.P3420866466249862964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164877 n : ℚ) / 2

end

end A228838.P3420866466249862964

noncomputable section

/-- A228838: a(n) = n * A002445(n).

Offset 0, canonical program `A228838.P3420866466249862964`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A164877, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A228838 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A228838.P3420866466249862964.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A164877, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A228838.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A256216.P6754251657436055450

`A059076(n+1)-A059053(n+1)`
-/

namespace A256216.P6754251657436055450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059076 (n + 1) - A059053 (n + 1)

end

end A256216.P6754251657436055450

noncomputable section

/-- A256216: a(n) = A053656(n) - A000011(n).

Offset 1, canonical program `A256216.P6754251657436055450`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A256216 (n : ℕ) : ℤ :=
  A256216.P6754251657436055450.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A256216.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278291.P6818731943962716287

`A045920(n+1)+1`
-/

namespace A278291.P6818731943962716287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045920 (n + 1) + 1

end

end A278291.P6818731943962716287

noncomputable section

/-- A278291: Numbers n such that n-1 has the same number of prime factors as n (with multiplicity).

Offset 1, canonical program `A278291.P6818731943962716287`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045920, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A278291 (n : ℕ) : ℤ :=
  A278291.P6818731943962716287.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045920, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A278291.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A326053.P16383788461503311404

`A000203(n+1)-A008833(n+1)`
-/

namespace A326053.P16383788461503311404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A008833 (n + 1)

end

end A326053.P16383788461503311404

noncomputable section

/-- A326053: Sum of all other divisors of n except the largest square divisor: a(n) = sigma(n) - A008833(n).

Offset 1, canonical program `A326053.P16383788461503311404`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008833, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326053 (n : ℕ) : ℤ :=
  A326053.P16383788461503311404.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008833, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326053.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A326054.P11521875358712095530

`A326053(n+1)-(n+1)`
-/

namespace A326054.P11521875358712095530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326053 (n + 1) - (n + 1 : ℤ)

end

end A326054.P11521875358712095530

noncomputable section

/-- A326054: a(n) = A326053(n) - n, where A326053 gives the sum of all other divisors of n except the largest square divisor.

Offset 1, canonical program `A326054.P11521875358712095530`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326054 (n : ℕ) : ℤ :=
  A326054.P11521875358712095530.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326054.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326055.P11347868664017450431

`A326054(n+1)+A033879(n+1)`
-/

namespace A326055.P11347868664017450431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326054 (n + 1) + A033879 (n + 1)

end

end A326055.P11347868664017450431

noncomputable section

/-- A326055: a(n) = n - {the largest square that divides n}.

Offset 1, canonical program `A326055.P11347868664017450431`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033879, A326054, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A326055 (n : ℕ) : ℤ :=
  A326055.P11347868664017450431.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033879, A326054, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A326055.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336642.P17825345798901579858

`A008833(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336642.P17825345798901579858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (n + 1) - 1

end

end A336642.P17825345798901579858

noncomputable section

/-- A336642: One less than the largest square dividing n: a(n) = A008833(n)-1.

Offset 1, canonical program `A336642.P17825345798901579858`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008833, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336642 (n : ℕ) : ℤ :=
  A336642.P17825345798901579858.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008833, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336642.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359550.P13374813552768723012

`char[A048103(n+1)]`
-/

namespace A359550.P13374813552768723012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048103 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A359550.P13374813552768723012

noncomputable section

/-- A359550: Characteristic function of A048103; From n >= 1, a(n) is multiplicative with a(p^e) = 1 if p > e, otherwise 0. a(0) = 0 by convention.

Offset 0, canonical program `A359550.P13374813552768723012`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359550 (n : ℕ) : ℤ :=
  (A359550.P13374813552768723012.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359550.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374439.P2263089578454840483

`(A060510(n)+1)*A065941(n)`
-/

namespace A374439.P2263089578454840483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A060510 n + 1) * A065941 n

end

end A374439.P2263089578454840483

noncomputable section

/-- A374439: Triangle read by rows: the coefficients of the Lucas-Fibonacci polynomials. T(n, k) = T(n - 1, k) + T(n - 2, k - 2) with initial values T(n, k) = k + 1 for k < 2.

Offset 0, canonical program `A374439.P2263089578454840483`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374439 (n : ℕ) : ℤ :=
  A374439.P2263089578454840483.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381613.P15275634750993540822

`∑{d}[(n+1)/∏{p}[n+1, #], A359550(#)]`
-/

namespace A381613.P15275634750993540822
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A359550 d

end

end A381613.P15275634750993540822

noncomputable section

/-- A381613: If n = Product (p_j^k_j) then a(n) = Product (min(p_j, k_j)), with a(1) = 1.

Offset 1, canonical program `A381613.P15275634750993540822`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A381613 (n : ℕ) : ℤ :=
  A381613.P15275634750993540822.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A381613.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381614.P871581451956628641

`A000026(n+1)/A381613(n+1)`
-/

namespace A381614.P871581451956628641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000026 (n + 1) : ℚ) / (A381613 (n + 1) : ℚ)

end

end A381614.P871581451956628641

noncomputable section

/-- A381614: If n = Product (p_j^k_j) then a(n) = Product (max(p_j, k_j)), with a(1) = 1.

Offset 1, canonical program `A381614.P871581451956628641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A381614 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A381614.P871581451956628641.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A381614.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000011.P276434732339544012

`(A000013(n)+2^floor(n/2))/2`
-/

namespace A000011.P276434732339544012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000013 n : ℚ) + (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)) / 2

end

end A000011.P276434732339544012

noncomputable section

/-- A000011: Number of n-bead necklaces (turning over is allowed) where complements are equivalent.

Offset 0, canonical program `A000011.P276434732339544012`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000013, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A000011 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A000011.P276434732339544012.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000013, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A000011.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A000068.P16222419504185008145

`floor(sqrt(sqrt(A037896(n+1))))`
-/

namespace A000068.P16222419504185008145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (A037896 (n + 1) : ℝ))⌋

end

end A000068.P16222419504185008145

noncomputable section

/-- A000068: Numbers k such that k^4 + 1 is prime.

Offset 1, canonical program `A000068.P16222419504185008145`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000068 (n : ℕ) : ℤ :=
  A000068.P16222419504185008145.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000068.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000117.P16867571138849897443

`A000011(2*n)`
-/

namespace A000117.P16867571138849897443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000011 (2 * n)

end

end A000117.P16867571138849897443

noncomputable section

/-- A000117: Number of even sequences with period 2n (bisection of A000011).

Offset 0, canonical program `A000117.P16867571138849897443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A000117 (n : ℕ) : ℤ :=
  A000117.P16867571138849897443.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A000117.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000188.P7486858720566838181

`sqrt(A008833(n+1))`
-/

namespace A000188.P7486858720566838181
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008833 (n + 1) : ℝ)

end

end A000188.P7486858720566838181

noncomputable section

/-- A000188: (1) Number of solutions to x^2 == 0 (mod n). (2) Also square root of largest square dividing n. (3) Also max_{ d divides n } gcd(d, n/d).

Offset 1, canonical program `A000188.P7486858720566838181`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008833, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A000188 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A000188.P7486858720566838181.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008833, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A000188.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A002445.P10846769026289059065

`A027642(2*n)`
-/

namespace A002445.P10846769026289059065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (2 * n)

end

end A002445.P10846769026289059065

noncomputable section

/-- A002445: Denominators of Bernoulli numbers B_{2n}.

Offset 0, canonical program `A002445.P10846769026289059065`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A002445 (n : ℕ) : ℤ :=
  A002445.P10846769026289059065.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A002445.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A007147.P11332354044885179751

`A256216(n+1)+A016116(n)`
-/

namespace A007147.P11332354044885179751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256216 (n + 1) + A016116 n

end

end A007147.P11332354044885179751

noncomputable section

/-- A007147: Number of self-dual 2-colored necklaces with 2n beads.

Offset 1, canonical program `A007147.P11332354044885179751`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A007147 (n : ℕ) : ℤ :=
  A007147.P11332354044885179751.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A007147.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025926.P18037225688025791001

`A029115(n)+A029412(n)-A029104(n)`
-/

namespace A025926.P18037225688025791001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029115 n + (A029412 n - A029104 n)

end

end A025926.P18037225688025791001

noncomputable section

/-- A025926: Expansion of 1/((1-x^10)*(1-x^11)*(1-x^12)).

Offset 0, canonical program `A025926.P18037225688025791001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025926 (n : ℕ) : ℤ :=
  A025926.P18037225688025791001.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025926.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028901.P2292119027617019794

`A054899(n)+floor(A081596(n)/A054977(A096582(n+1)))`
-/

namespace A028901.P2292119027617019794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 n + ⌊(A081596 n : ℚ) / (A054977 (A096582 (n + 1)).toNat : ℚ)⌋

end

end A028901.P2292119027617019794

noncomputable section

/-- A028901: Map n = Sum c_i*10^i to a(n) = Sum c_i*6^i.

Offset 0, canonical program `A028901.P2292119027617019794`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A028901 (n : ℕ) : ℤ :=
  A028901.P2292119027617019794.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A028901.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029103.P10183585008874479580

`A029104(n)+A029412(n)-A025895(n)`
-/

namespace A029103.P10183585008874479580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029104 n + (A029412 n - A025895 n)

end

end A029103.P10183585008874479580

noncomputable section

/-- A029103: Expansion of 1/((1-x)(1-x^5)(1-x^10)(1-x^11)).

Offset 0, canonical program `A029103.P10183585008874479580`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029103 (n : ℕ) : ℤ :=
  A029103.P10183585008874479580.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029103.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029206.P9758873073499990725

`A029339(abs(2-n))+A029339(n)`
-/

namespace A029206.P9758873073499990725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029339 |2 - (n : ℤ)|.toNat + A029339 n

end

end A029206.P9758873073499990725

noncomputable section

/-- A029206: Expansion of 1/((1-x^2)*(1-x^5)*(1-x^8)*(1-x^11)).

Offset 0, canonical program `A029206.P9758873073499990725`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029206 (n : ℕ) : ℤ :=
  A029206.P9758873073499990725.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029206.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045686.P11325912773679884789

`A056476(2*n)%A000048(n)`
-/

namespace A045686.P11325912773679884789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056476 (2 * n)) (A000048 n)

end

end A045686.P11325912773679884789

noncomputable section

/-- A045686: Number of 2n-bead balanced binary necklaces of fundamental period 2n which are equivalent to their complement, but not equivalent to their reverse and their reversed complement.

Offset 0, canonical program `A045686.P11325912773679884789`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A045686 (n : ℕ) : ℤ :=
  A045686.P11325912773679884789.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A045686.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054181.P17075192393642453761

`∑{d}[n+1, A000011(#-1)]`
-/

namespace A054181.P17075192393642453761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000011 (d - 1)

end

end A054181.P17075192393642453761

noncomputable section

/-- A054181: Inverse Moebius transform of A000011 (starting at term 0).

Offset 0, canonical program `A054181.P17075192393642453761`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 343 terms. -/
def A054181 (n : ℕ) : ℤ :=
  A054181.P17075192393642453761.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 343 terms. -/
def A054181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054183.P17782024646663310574

`∑{d}[n+1, A000011(#-1)*A008683((n+1)/#)]`
-/

namespace A054183.P17782024646663310574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000011 (d - 1) * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A054183.P17782024646663310574

noncomputable section

/-- A054183: Moebius transform of A000011 (starting at term 0).

Offset 0, canonical program `A054183.P17782024646663310574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 343 terms. -/
def A054183 (n : ℕ) : ℤ :=
  A054183.P17782024646663310574.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 343 terms. -/
def A054183.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055647.P1414518620111921284

`eq[A028901(n), A081597(A081597(n))]`
-/

namespace A055647.P1414518620111921284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028901 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081597 (A081597 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A055647.P1414518620111921284

noncomputable section

/-- A055647: Integers in base 14 with each base 14 digit represented by 2 decimal digits.

Offset 0, canonical program `A055647.P1414518620111921284`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A055647 (n : ℕ) : ℤ :=
  (A055647.P1414518620111921284.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A055647.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056357.P954925566983066654

`∑[abs(Δ[A000011(n)])]`
-/

namespace A056357.P954925566983066654
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000011 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056357.P954925566983066654

noncomputable section

/-- A056357: Number of bracelet structures using exactly two different colored beads.

Offset 1, canonical program `A056357.P954925566983066654`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A056357 (n : ℕ) : ℤ :=
  A056357.P954925566983066654.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A056357.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056366.P11464598418181165535

`∑{d}[n+1, A008683(#)*A056357((n+1)/#)]`
-/

namespace A056366.P11464598418181165535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056357 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056366.P11464598418181165535

noncomputable section

/-- A056366: Number of primitive (period n) bracelet structures using exactly two different colored beads.

Offset 1, canonical program `A056366.P11464598418181165535`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A056366 (n : ℕ) : ℤ :=
  A056366.P11464598418181165535.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A056366.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057918.P8779601029509101892

`A000188(n+1)-1`
-/

namespace A057918.P8779601029509101892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1) - 1

end

end A057918.P8779601029509101892

noncomputable section

/-- A057918: Number of pairs of numbers (r,s) each less than n such that (r,s,n) is in geometric progression.

Offset 1, canonical program `A057918.P8779601029509101892`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A057918 (n : ℕ) : ℤ :=
  A057918.P8779601029509101892.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A057918.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A103631.P9894107747466964003

`A065941(n+1)+A065941(n)-A374439(n+1)`
-/

namespace A103631.P9894107747466964003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065941 (n + 1) + (A065941 n - A374439 (n + 1))

end

end A103631.P9894107747466964003

noncomputable section

/-- A103631: Triangle read by rows: T(n,k) = abs(qStirling2(n,k,q)) for q = -1, with 0 <= k <= n.

Offset 0, canonical program `A103631.P9894107747466964003`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A103631 (n : ℕ) : ℤ :=
  A103631.P9894107747466964003.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A103631.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133607.P11961955002363008475

`A057077(A002262(n))*A103631(n)`
-/

namespace A133607.P11961955002363008475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A002262 n).toNat * A103631 n

end

end A133607.P11961955002363008475

noncomputable section

/-- A133607: Triangle read by rows: T(n, k) = qStirling2(n, k, q) for q = -1, with 0 <= k <= n.

Offset 0, canonical program `A133607.P11961955002363008475`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133607 (n : ℕ) : ℤ :=
  A133607.P11961955002363008475.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133607.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162514.P8715730541407026886

`abs(A133607(n)+A108299(n))`
-/

namespace A162514.P8715730541407026886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A133607 n + A108299 n|

end

end A162514.P8715730541407026886

noncomputable section

/-- A162514: Triangle of coefficients of polynomials defined by the Binet form P(n,x) = U^n + L^n, where U = (x + d)/2, L = (x - d)/2, d = (4 + x^2)^(1/2). Decreasing powers of x.

Offset 0, canonical program `A162514.P8715730541407026886`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162514 (n : ℕ) : ℤ :=
  A162514.P8715730541407026886.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162514.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254732.P8036064587861871874

`A019554(n+1)*(A000188(n+1)+1)`
-/

namespace A254732.P8036064587861871874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (n + 1) * (A000188 (n + 1) + 1)

end

end A254732.P8036064587861871874

noncomputable section

/-- A254732: a(n) is the least k > n such that n divides k^2.

Offset 1, canonical program `A254732.P8036064587861871874`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, A019554, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A254732 (n : ℕ) : ℤ :=
  A254732.P8036064587861871874.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, A019554, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A254732.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A308706.P3139874676178354333

`A000013(n)-A115118(n)-A056366(A004280(n+1)-(n-1))`
-/

namespace A308706.P3139874676178354333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000013 n - A115118 n - A056366 (A004280 (n + 1) - ((n : ℤ) - 1)).toNat

end

end A308706.P3139874676178354333

noncomputable section

/-- A308706: Number of chiral pairs of set partitions of a primitive cycle of n elements having exactly two different elements.

Offset 0, canonical program `A308706.P3139874676178354333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A308706 (n : ℕ) : ℤ :=
  A308706.P3139874676178354333.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A308706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355261.P9102816155030024956

`A000188(n+1)*A007947(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A355261.P9102816155030024956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1) * A007947 (n + 1)

end

end A355261.P9102816155030024956

noncomputable section

/-- A355261: a(n) = largest-nth-power(n, 2) * radical(n) = A000188(n) * A007947(n), where largest-nth-power(n, e) is the largest positive integer b such that b^e divides n.

Offset 1, canonical program `A355261.P9102816155030024956`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, A007947, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A355261 (n : ℕ) : ℤ :=
  A355261.P9102816155030024956.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, A007947, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A355261.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A000046.P15269567726961333018

`A000048(n)-A308706(n)`
-/

namespace A000046.P15269567726961333018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000048 n - A308706 n

end

end A000046.P15269567726961333018

noncomputable section

/-- A000046: Number of primitive n-bead necklaces (turning over is allowed) where complements are equivalent.

Offset 0, canonical program `A000046.P15269567726961333018`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000048, A308706, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A000046 (n : ℕ) : ℤ :=
  A000046.P15269567726961333018.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000048, A308706, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A000046.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A000059.P7901828597261490074

`A000068(n+2)/2`
-/

namespace A000059.P7901828597261490074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000068 (n + 2) : ℚ) / 2

end

end A000059.P7901828597261490074

noncomputable section

/-- A000059: Numbers k such that (2k)^4 + 1 is prime.

Offset 1, canonical program `A000059.P7901828597261490074`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000068, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A000059 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A000059.P7901828597261490074.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000068, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A000059.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A025793.P17482771302027184557

`A029103(n)+A029115(n)-A029088(n)`
-/

namespace A025793.P17482771302027184557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029103 n + (A029115 n - A029088 n)

end

end A025793.P17482771302027184557

noncomputable section

/-- A025793: Expansion of 1/((1-x)*(1-x^10)*(1-x^11)).

Offset 0, canonical program `A025793.P17482771302027184557`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025793 (n : ℕ) : ℤ :=
  A025793.P17482771302027184557.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025793.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025826.P17755586261082147753

`A025793(n)-a(n-1)` with `a(0)=1`
-/

namespace A025826.P17755586261082147753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025793 n - a (n - 1)

end

end A025826.P17755586261082147753

noncomputable section

/-- A025826: Expansion of 1/((1-x^2)*(1-x^10)*(1-x^11)).

Offset 0, canonical program `A025826.P17755586261082147753`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025826 (n : ℕ) : ℤ :=
  A025826.P17755586261082147753.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025826.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025906.P10640818763905870063

`A025926(abs(6-n))+A025926(n)`
-/

namespace A025906.P10640818763905870063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025926 |6 - (n : ℤ)|.toNat + A025926 n

end

end A025906.P10640818763905870063

noncomputable section

/-- A025906: Expansion of 1/((1-x^6)*(1-x^10)*(1-x^11)).

Offset 0, canonical program `A025906.P10640818763905870063`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025906 (n : ℕ) : ℤ :=
  A025906.P10640818763905870063.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025906.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029098.P13397963797314828136

`A029206(abs(1-n))+A029206(n)`
-/

namespace A029098.P13397963797314828136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029206 |1 - (n : ℤ)|.toNat + A029206 n

end

end A029098.P13397963797314828136

noncomputable section

/-- A029098: Expansion of 1/((1-x)*(1-x^5)*(1-x^8)*(1-x^11)).

Offset 0, canonical program `A029098.P13397963797314828136`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029098 (n : ℕ) : ℤ :=
  A029098.P13397963797314828136.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029098.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029404.P15874426153803631495

`A025892(n)+A029098(n)-A029101(n)`
-/

namespace A029404.P15874426153803631495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025892 n + (A029098 n - A029101 n)

end

end A029404.P15874426153803631495

noncomputable section

/-- A029404: Expansion of 1/((1-x^5)*(1-x^8)*(1-x^9)*(1-x^11)).

Offset 0, canonical program `A029404.P15874426153803631495`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029404 (n : ℕ) : ℤ :=
  A029404.P15874426153803631495.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029404.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029428.P15062183357670920441

`A025906(n)+A029114(n)-A029115(n)`
-/

namespace A029428.P15062183357670920441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025906 n + (A029114 n - A029115 n)

end

end A029428.P15062183357670920441

noncomputable section

/-- A029428: Expansion of 1/((1-x^6)(1-x^9)(1-x^10)(1-x^11)).

Offset 0, canonical program `A029428.P15062183357670920441`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029428 (n : ℕ) : ℤ :=
  A029428.P15062183357670920441.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029428.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045683.P14787099194818843150

`A000048(n)-A045686(n)`
-/

namespace A045683.P14787099194818843150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000048 n - A045686 n

end

end A045683.P14787099194818843150

noncomputable section

/-- A045683: Number of 2n-bead balanced binary necklaces of fundamental period 2n which are equivalent to their reverse, complement and reversed complement.

Offset 0, canonical program `A045683.P14787099194818843150`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A045683 (n : ℕ) : ℤ :=
  A045683.P14787099194818843150.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A045683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092207.P2317231063323524439

`∩[A001358(n+1)-2, A001358(n+1)]`
-/

namespace A092207.P2317231063323524439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092207.P2317231063323524439

noncomputable section

/-- A092207: Semiprimes k such that k+2 is also a semiprime.

Offset 1, canonical program `A092207.P2317231063323524439`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5362 terms. -/
def A092207 (n : ℕ) : ℤ :=
  (A092207.P2317231063323524439.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5362 terms. -/
def A092207.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124936.P6840335345316101384

`A092207(n+1)+1`
-/

namespace A124936.P6840335345316101384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092207 (n + 1) + 1

end

end A124936.P6840335345316101384

noncomputable section

/-- A124936: Numbers k such that k - 1 and k + 1 are semiprimes.

Offset 1, canonical program `A124936.P6840335345316101384`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092207, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A124936 (n : ℕ) : ℤ :=
  A124936.P6840335345316101384.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092207, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A124936.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A025823.P1335691272625039910

`A025792(n)-A025826(abs(A023443(n)))`
-/

namespace A025823.P1335691272625039910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025792 n - A025826 |A023443 n|.toNat

end

end A025823.P1335691272625039910

noncomputable section

/-- A025823: Expansion of 1/((1-x^2)*(1-x^9)*(1-x^10)).

Offset 0, canonical program `A025823.P1335691272625039910`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025823 (n : ℕ) : ℤ :=
  A025823.P1335691272625039910.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025823.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025919.P13838455602614178062

`A029404(n)+A029424(n)-A029383(n)`
-/

namespace A025919.P13838455602614178062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029404 n + (A029424 n - A029383 n)

end

end A025919.P13838455602614178062

noncomputable section

/-- A025919: Expansion of 1/((1-x^8)*(1-x^9)*(1-x^11)).

Offset 0, canonical program `A025919.P13838455602614178062`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025919 (n : ℕ) : ℤ :=
  A025919.P13838455602614178062.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025919.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025924.P6419062361051786323

`A025823(n)-A005044(A194960(n+1))`
-/

namespace A025924.P6419062361051786323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025823 n - A005044 (A194960 (n + 1)).toNat

end

end A025924.P6419062361051786323

noncomputable section

/-- A025924: Expansion of 1/((1-x^9)*(1-x^10)*(1-x^12)).

Offset 0, canonical program `A025924.P6419062361051786323`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025924 (n : ℕ) : ℤ :=
  A025924.P6419062361051786323.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025924.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029113.P16175053738849920081

`A029114(n)+A029428(n)-A025905(n)`
-/

namespace A029113.P16175053738849920081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029114 n + (A029428 n - A025905 n)

end

end A029113.P16175053738849920081

noncomputable section

/-- A029113: Expansion of 1/((1-x)*(1-x^6)*(1-x^9)*(1-x^10)).

Offset 0, canonical program `A029113.P16175053738849920081`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029113 (n : ℕ) : ℤ :=
  A029113.P16175053738849920081.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029113.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029133.P2070420607738981676

`∑[A025924(n)]`
-/

namespace A029133.P2070420607738981676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029133.P2070420607738981676

noncomputable section

/-- A029133: Expansion of 1/((1-x)(1-x^9)(1-x^10)(1-x^12)).

Offset 0, canonical program `A029133.P2070420607738981676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029133 (n : ℕ) : ℤ :=
  A029133.P2070420607738981676.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029133.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029221.P3659478906980729494

`A029113(n)-a(n-1)` with `a(0)=1`
-/

namespace A029221.P3659478906980729494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029113 n - a (n - 1)

end

end A029221.P3659478906980729494

noncomputable section

/-- A029221: Expansion of 1/((1-x^2)*(1-x^6)*(1-x^9)*(1-x^10)).

Offset 0, canonical program `A029221.P3659478906980729494`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029221 (n : ℕ) : ℤ :=
  A029221.P3659478906980729494.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029221.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029241.P4809283722259501140

`A029133(n)+A029243(n)-A029134(n)`
-/

namespace A029241.P4809283722259501140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029133 n + (A029243 n - A029134 n)

end

end A029241.P4809283722259501140

noncomputable section

/-- A029241: Expansion of 1/((1-x^2)*(1-x^9)*(1-x^10)*(1-x^11)).

Offset 0, canonical program `A029241.P4809283722259501140`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029241 (n : ℕ) : ℤ :=
  A029241.P4809283722259501140.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029241.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045665.P7749227434187305744

`A004277(n)*A045683(n)`
-/

namespace A045665.P7749227434187305744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n * A045683 n

end

end A045665.P7749227434187305744

noncomputable section

/-- A045665: Number of 2n-bead balanced binary strings of fundamental period 2n, rotationally equivalent to reverse, complement and reversed complement.

Offset 0, canonical program `A045665.P7749227434187305744`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 645 terms. -/
def A045665 (n : ℕ) : ℤ :=
  A045665.P7749227434187305744.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 645 terms. -/
def A045665.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045669.P14509284177368627786

`A045664(n)-A045665(n)`
-/

namespace A045669.P14509284177368627786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045664 n - A045665 n

end

end A045669.P14509284177368627786

noncomputable section

/-- A045669: Number of 2n-bead balanced binary strings of fundamental period 2n, rotationally equivalent to reversed complement, inequivalent to reverse and complement.

Offset 0, canonical program `A045669.P14509284177368627786`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045664, A045665, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A045669 (n : ℕ) : ℤ :=
  A045669.P14509284177368627786.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045664, A045665, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A045669.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A045674.P8510068775620534225

`∑{d}[A028310(n), A045683(#)]`
-/

namespace A045674.P8510068775620534225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A045683 d

end

end A045674.P8510068775620534225

noncomputable section

/-- A045674: Number of 2n-bead balanced binary necklaces which are equivalent to their reverse, complement and reversed complement.

Offset 0, canonical program `A045674.P8510068775620534225`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 667 terms. -/
def A045674 (n : ℕ) : ℤ :=
  A045674.P8510068775620534225.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 667 terms. -/
def A045674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045676.P8900542742695811205

`A128014(n)-A045674(n)`
-/

namespace A045676.P8900542742695811205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128014 n - A045674 n

end

end A045676.P8900542742695811205

noncomputable section

/-- A045676: Number of 2n-bead balanced binary necklaces which are equivalent to their reverse, but not equivalent to their complement and reversed complement.

Offset 0, canonical program `A045676.P8900542742695811205`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045674, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A045676 (n : ℕ) : ℤ :=
  A045676.P8900542742695811205.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045674, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A045676.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A045677.P7167331430785454104

`A000013(n)-A045674(n)`
-/

namespace A045677.P7167331430785454104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000013 n - A045674 n

end

end A045677.P7167331430785454104

noncomputable section

/-- A045677: Number of 2n-bead balanced binary necklaces which are equivalent to their complement, but not equivalent to their reverse and their reversed complement.

Offset 0, canonical program `A045677.P7167331430785454104`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000013, A045674, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A045677 (n : ℕ) : ℤ :=
  A045677.P7167331430785454104.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000013, A045674, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A045677.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A045678.P6661484353096964123

`A011782(n)-A045674(n)`
-/

namespace A045678.P6661484353096964123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A045674 n

end

end A045678.P6661484353096964123

noncomputable section

/-- A045678: Number of 2n-bead balanced binary necklaces which are equivalent to their reversed complement, but not equivalent to their reverse and complement.

Offset 0, canonical program `A045678.P6661484353096964123`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045674, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A045678 (n : ℕ) : ℤ :=
  A045678.P6661484353096964123.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045674, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A045678.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A045687.P11816481710795598244

`A045669(n)/A004277(n)`
-/

namespace A045687.P11816481710795598244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045669 n : ℚ) / (A004277 n : ℚ)

end

end A045687.P11816481710795598244

noncomputable section

/-- A045687: Number of 2n-bead balanced binary necklaces of fundamental period 2n which are equivalent to their reversed complement, but are not equivalent to their reverse and complement.

Offset 0, canonical program `A045687.P11816481710795598244`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A045687 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A045687.P11816481710795598244.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A045687.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029130.P9139947445189529959

`A029241(abs(A024000(n)))+A029237(n)`
-/

namespace A029130.P9139947445189529959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029241 |A024000 n|.toNat + A029237 n

end

end A029130.P9139947445189529959

noncomputable section

/-- A029130: Expansion of 1/((1-x)(1-x^8)(1-x^10)(1-x^11)).

Offset 0, canonical program `A029130.P9139947445189529959`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029130 (n : ℕ) : ℤ :=
  A029130.P9139947445189529959.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029130.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029239.P14692552077046529193

`A029130(n)-a(n-1)` with `a(0)=1`
-/

namespace A029239.P14692552077046529193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029130 n - a (n - 1)

end

end A029239.P14692552077046529193

noncomputable section

/-- A029239: Expansion of 1/((1-x^2)*(1-x^8)*(1-x^10)*(1-x^11)).

Offset 0, canonical program `A029239.P14692552077046529193`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029239 (n : ℕ) : ℤ :=
  A029239.P14692552077046529193.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029239.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029236.P5523176851886397480

`A029128(n)+A029239(n)-A029130(n)`
-/

namespace A029236.P5523176851886397480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029128 n + (A029239 n - A029130 n)

end

end A029236.P5523176851886397480

noncomputable section

/-- A029236: Expansion of 1/((1-x^2)*(1-x^8)*(1-x^9)*(1-x^10)).

Offset 0, canonical program `A029236.P5523176851886397480`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029236 (n : ℕ) : ℤ :=
  A029236.P5523176851886397480.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029236.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025918.P16543580143826744957

`A029236(n)+A029423(n)-A029221(n)`
-/

namespace A025918.P16543580143826744957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029236 n + (A029423 n - A029221 n)

end

end A025918.P16543580143826744957

noncomputable section

/-- A025918: Expansion of 1/((1-x^8)*(1-x^9)*(1-x^10)).

Offset 0, canonical program `A025918.P16543580143826744957`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025918 (n : ℕ) : ℤ :=
  A025918.P16543580143826744957.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025918.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029442.P15677434544600436367

`A025919(n)+∑[A025918(n)-A025919(n)]`
-/

namespace A029442.P15677434544600436367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025918 n - A025919 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025919 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029442.P15677434544600436367

noncomputable section

/-- A029442: Expansion of 1/((1-x^8)(1-x^9)(1-x^10)(1-x^11)).

Offset 0, canonical program `A029442.P15677434544600436367`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029442 (n : ℕ) : ℤ :=
  A029442.P15677434544600436367.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029442.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025923.P9423752685854138239

`Δ[A029130(n)-A029442(n)]`
-/

namespace A025923.P9423752685854138239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029130 n - A029442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025923.P9423752685854138239

noncomputable section

/-- A025923: Expansion of 1/((1-x^9)*(1-x^10)*(1-x^11)).

Offset 0, canonical program `A025923.P9423752685854138239`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A025923 (n : ℕ) : ℤ :=
  A025923.P9423752685854138239.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A025923.provenance : SequenceMachineLib.Provenance := .conjectured

