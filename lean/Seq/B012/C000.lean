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
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C045
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
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

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A315719.P16119919274741780679

`A315770(2*n)-A153733(A315770(n))`
-/

namespace A315719.P16119919274741780679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315770 (2 * n) - A153733 (A315770 n).toNat

end

end A315719.P16119919274741780679

noncomputable section

/-- A315719: Coordination sequence Gal.6.658.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315719.P16119919274741780679`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1100 terms. -/
def A315719 (n : ℕ) : ℤ :=
  A315719.P16119919274741780679.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1100 terms. -/
def A315719.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313591.P3620371697952405827

`A311635(n)+A004525(A315638(n)-A311635(n))`
-/

namespace A313591.P3620371697952405827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311635 n + A004525 (A315638 n - A311635 n).toNat

end

end A313591.P3620371697952405827

noncomputable section

/-- A313591: Coordination sequence Gal.6.346.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313591.P3620371697952405827`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2290 terms. -/
def A313591 (n : ℕ) : ℤ :=
  A313591.P3620371697952405827.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2290 terms. -/
def A313591.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313854.P3810550675620183463

`abs(10*n-A313591(n))`
-/

namespace A313854.P3810550675620183463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A313591 n|

end

end A313854.P3810550675620183463

noncomputable section

/-- A313854: Coordination sequence Gal.6.250.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313854.P3810550675620183463`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2290 terms. -/
def A313854 (n : ℕ) : ℤ :=
  A313854.P3810550675620183463.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2290 terms. -/
def A313854.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315464.P12581309012109130076

`A315177(n)+A004525(A315756(n)-A315177(n))`
-/

namespace A315464.P12581309012109130076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315177 n + A004525 (A315756 n - A315177 n).toNat

end

end A315464.P12581309012109130076

noncomputable section

/-- A315464: Coordination sequence Gal.6.346.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315464.P12581309012109130076`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2240 terms. -/
def A315464 (n : ℕ) : ℤ :=
  A315464.P12581309012109130076.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2240 terms. -/
def A315464.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313124.P8905845740579056507

`abs(A008592(n)-A315464(n))`
-/

namespace A313124.P8905845740579056507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315464 n|

end

end A313124.P8905845740579056507

noncomputable section

/-- A313124: Coordination sequence Gal.6.250.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313124.P8905845740579056507`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2351 terms. -/
def A313124 (n : ℕ) : ℤ :=
  A313124.P8905845740579056507.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2351 terms. -/
def A313124.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246268.P8349117576513526915

`A246264(A064216(2*(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A246268.P8349117576513526915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246264 (A064216 (2 * (n + 1))).toNat

end

end A246268.P8349117576513526915

noncomputable section

/-- A246268: Permutation of natural numbers: a(n) = A246264(A064216(2*n)).

Offset 1, canonical program `A246268.P8349117576513526915`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064216, A246264, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A246268 (n : ℕ) : ℤ :=
  A246268.P8349117576513526915.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064216, A246264, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A246268.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A270433.P15401219787460768616

`n+1-A270432(n+1)`
-/

namespace A270433.P15401219787460768616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A270432 (n + 1)

end

end A270433.P15401219787460768616

noncomputable section

/-- A270433: a(n) = number of terms A270431 <= n; least monotonic left inverse of A270431.

Offset 1, canonical program `A270433.P15401219787460768616`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A270432, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A270433 (n : ℕ) : ℤ :=
  A270433.P15401219787460768616.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A270432, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A270433.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A270434.P10423559976014811217

`A270432(n+1)-A270433(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A270434.P10423559976014811217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270432 (n + 1) - A270433 (n + 1)

end

end A270434.P10423559976014811217

noncomputable section

/-- A270434: a(n) = A270432(n) - A270433(n).

Offset 1, canonical program `A270434.P10423559976014811217`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A270432, A270433, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A270434 (n : ℕ) : ℤ :=
  A270434.P10423559976014811217.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A270432, A270433, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A270434.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A275721.P606580914333847557

`A275717(n+1)-1`
-/

namespace A275721.P606580914333847557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275717 (n + 1) - 1

end

end A275721.P606580914333847557

noncomputable section

/-- A275721: Numbers n for which A003961(n+1) > A003961(n).

Offset 1, canonical program `A275721.P606580914333847557`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275721 (n : ℕ) : ℤ :=
  A275721.P606580914333847557.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275721.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292591.P7064288365944805705

`A245611(n+1)-A292590(n+1)`
-/

namespace A292591.P7064288365944805705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245611 (n + 1) - A292590 (n + 1)

end

end A292591.P7064288365944805705

noncomputable section

/-- A292591: a(1) = 0, a(2) = 1; and for n > 2, a(n) = 2*a(A285712(n)) + [1 == (n mod 3)].

Offset 1, canonical program `A292591.P7064288365944805705`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1121 terms. -/
def A292591 (n : ℕ) : ℤ :=
  A292591.P7064288365944805705.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1121 terms. -/
def A292591.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292594.P8537391345759066760

`A000120(A292590(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A292594.P8537391345759066760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A292590 (n + 1)).toNat

end

end A292594.P8537391345759066760

noncomputable section

/-- A292594: a(n) = A000120(A292590(n)).

Offset 1, canonical program `A292594.P8537391345759066760`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A292590, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292594 (n : ℕ) : ℤ :=
  A292594.P8537391345759066760.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A292590, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292594.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A292595.P4451636547860676390

`A000120(A292591(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A292595.P4451636547860676390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A292591 (n + 1)).toNat

end

end A292595.P4451636547860676390

noncomputable section

/-- A292595: a(n) = A000120(A292591(n)).

Offset 1, canonical program `A292595.P4451636547860676390`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A292591, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292595 (n : ℕ) : ℤ :=
  A292595.P4451636547860676390.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A292591, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292595.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A323513.P12048018068045558104

`char[A300216(n+1)-1]`
-/

namespace A323513.P12048018068045558104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300216 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A323513.P12048018068045558104

noncomputable section

/-- A323513: a(n) = 1 if n and phi(n) share the same prime signature, 0 otherwise.

Offset 1, canonical program `A323513.P12048018068045558104`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323513 (n : ℕ) : ℤ :=
  (A323513.P12048018068045558104.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323513.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350372.P2646849622102892745

`∩[A033992(n+1), A338539(n+1)]`
-/

namespace A350372.P2646849622102892745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350372.P2646849622102892745

noncomputable section

/-- A350372: Numbers with exactly 5 semiprime divisors.

Offset 1, canonical program `A350372.P2646849622102892745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 877 terms. -/
def A350372 (n : ℕ) : ℤ :=
  (A350372.P2646849622102892745.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 877 terms. -/
def A350372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350375.P15315086322075171755

`∩[A200521(n+1), A338539(n+1)]`
-/

namespace A350375.P15315086322075171755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350375.P15315086322075171755

noncomputable section

/-- A350375: Numbers with exactly 8 semiprime divisors.

Offset 1, canonical program `A350375.P15315086322075171755`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3773 terms. -/
def A350375 (n : ℕ) : ℤ :=
  (A350375.P15315086322075171755.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3773 terms. -/
def A350375.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375144.P11032156288611190920

`filter[A338539(n+1), A212793(#)]`
-/

namespace A375144.P11032156288611190920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A375144.P11032156288611190920

noncomputable section

/-- A375144: Numbers whose prime factorization has exactly two exponents that equal 2 and has no higher exponents.

Offset 1, canonical program `A375144.P11032156288611190920`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2211 terms. -/
def A375144 (n : ℕ) : ℤ :=
  A375144.P11032156288611190920.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2211 terms. -/
def A375144.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003972.P2423200350467876597

`A000010(A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A003972.P2423200350467876597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A003961 (n + 1)).toNat

end

end A003972.P2423200350467876597

noncomputable section

/-- A003972: Moebius transform of A003961; a(n) = phi(A003961(n)), where A003961 shifts the prime factorization of n one step towards the larger primes.

Offset 1, canonical program `A003972.P2423200350467876597`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003972 (n : ℕ) : ℤ :=
  A003972.P2423200350467876597.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003972.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A003973.P4846480468008244812

`A000203(A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A003973.P4846480468008244812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A003961 (n + 1)).toNat

end

end A003973.P4846480468008244812

noncomputable section

/-- A003973: Inverse Möbius transform of A003961; a(n) = sigma(A003961(n)), where A003961 shifts the prime factorization of n one step towards the larger primes.

Offset 1, canonical program `A003973.P4846480468008244812`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003973 (n : ℕ) : ℤ :=
  A003973.P4846480468008244812.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003973.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A011949.P6544439330995346585

`A056336(n+1)-A056518(n+1)`
-/

namespace A011949.P6544439330995346585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056336 (n + 1) - A056518 (n + 1)

end

end A011949.P6544439330995346585

noncomputable section

/-- A011949: Number of Barlow packings with group P6(bar)m2 that repeat after 2n layers.

Offset 1, canonical program `A011949.P6544439330995346585`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A011949 (n : ℕ) : ℤ :=
  A011949.P6544439330995346585.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A011949.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045965.P3274931299755745232

`A003961(n%a(n-1)+1)` with `a(0)=2`
-/

namespace A045965.P3274931299755745232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A003961 (Int.tmod (n : ℤ) (a (n - 1)) + 1).toNat

end

end A045965.P3274931299755745232

noncomputable section

/-- A045965: a(1)=2; if n = Product p_i^e_i, n > 1, then a(n) = Product p_{i+1}^e_i.

Offset 1, canonical program `A045965.P3274931299755745232`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045965 (n : ℕ) : ℤ :=
  A045965.P3274931299755745232.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045965.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045967.P12783764641236707767

`A045965(∏{p}[n+1, #])*A045965(n+1)`
-/

namespace A045967.P12783764641236707767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045965 (∏ p ∈ Nat.primeFactors (f1 n), p) * A045965 (n + 1)

end

end A045967.P12783764641236707767

noncomputable section

/-- A045967: a(1)=4; if n = Product p_i^e_i, n > 1, then a(n) = Product p_{i+1}^{e_i+1}.

Offset 1, canonical program `A045967.P12783764641236707767`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045967 (n : ℕ) : ℤ :=
  A045967.P12783764641236707767.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045967.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045969.P4344229329838993575

`A045965(n+1)*A045966(n+1)`
-/

namespace A045969.P4344229329838993575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045965 (n + 1) * A045966 (n + 1)

end

end A045969.P4344229329838993575

noncomputable section

/-- A045969: a(1)=6; if n = Product p_i^e_i, n>1, then a(n) = Product p_{i+1}^e_i * Product p_{i+2}^e_i.

Offset 1, canonical program `A045969.P4344229329838993575`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045969 (n : ℕ) : ℤ :=
  A045969.P4344229329838993575.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045971.P2138342967968067509

`A045965(A007947(n+1))*A045967(n+1)`
-/

namespace A045971.P2138342967968067509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045965 (A007947 (n + 1)).toNat * A045967 (n + 1)

end

end A045971.P2138342967968067509

noncomputable section

/-- A045971: a(1)=8; if n = Product p_i^e_i, n > 1, then a(n) = Product p_{i+1}^{e_i+2}.

Offset 1, canonical program `A045971.P2138342967968067509`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045971 (n : ℕ) : ℤ :=
  A045971.P2138342967968067509.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045971.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056513.P10775552147206924827

`A056518(A233583(n+1))`
-/

namespace A056513.P10775552147206924827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056518 (A233583 (n + 1)).toNat

end

end A056513.P10775552147206924827

noncomputable section

/-- A056513: Number of primitive (period n) periodic palindromic structures using a maximum of two different symbols.

Offset 0, canonical program `A056513.P10775552147206924827`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 666 terms. -/
def A056513 (n : ℕ) : ℤ :=
  A056513.P10775552147206924827.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 666 terms. -/
def A056513.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064553.P13324500715989758241

`A003963(A003961(n+1))`
-/

namespace A064553.P13324500715989758241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A003961 (n + 1)).toNat

end

end A064553.P13324500715989758241

noncomputable section

/-- A064553: a(1) = 1, a(prime(i)) = i + 1 for i > 0 and a(u * v) = a(u) * a(v) for u, v > 0.

Offset 1, canonical program `A064553.P13324500715989758241`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A003963, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A064553 (n : ℕ) : ℤ :=
  A064553.P13324500715989758241.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A003963, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A064553.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A064558.P17666427282558717256

`A064553(A064553(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A064558.P17666427282558717256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064553 (A064553 (n + 1)).toNat

end

end A064558.P17666427282558717256

noncomputable section

/-- A064558: a(n) = A064553(A064553(n)).

Offset 1, canonical program `A064558.P17666427282558717256`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064553, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064558 (n : ℕ) : ℤ :=
  A064558.P17666427282558717256.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064553, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064558.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A097246.P2470047970217943753

`A003961(A000188(n+1))*A007913(n+1)`
-/

namespace A097246.P2470047970217943753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A000188 (n + 1)).toNat * A007913 (n + 1)

end

end A097246.P2470047970217943753

noncomputable section

/-- A097246: Replace factors of n that are squares of a prime with the prime succeeding this prime.

Offset 1, canonical program `A097246.P2470047970217943753`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A097246 (n : ℕ) : ℤ :=
  A097246.P2470047970217943753.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A097246.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A097247.P3635200679269526787

`A097246(A097246(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A097247.P3635200679269526787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097246 (A097246 (n + 1)).toNat

end

end A097247.P3635200679269526787

noncomputable section

/-- A097247: A097246(A097246(n)).

Offset 1, canonical program `A097247.P3635200679269526787`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A097246, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A097247 (n : ℕ) : ℤ :=
  A097247.P3635200679269526787.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A097246, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A097247.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A097272.P984936321937266580

`A006519(n+1)*A003961(A046523(A000265(n+1)))`
-/

namespace A097272.P984936321937266580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A003961 (A046523 (A000265 (n + 1)).toNat).toNat

end

end A097272.P984936321937266580

noncomputable section

/-- A097272: Least integer with same "mod 2 prime signature" as n.

Offset 1, canonical program `A097272.P984936321937266580`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A046523, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A097272 (n : ℕ) : ℤ :=
  A097272.P984936321937266580.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A046523, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A097272.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A129401.P15322032131307177429

`A003961(A002808(n+1))`
-/

namespace A129401.P15322032131307177429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A002808 (n + 1)).toNat

end

end A129401.P15322032131307177429

noncomputable section

/-- A129401: a(n) is the result of replacing with its successor prime each prime in the factorization of the n-th composite number.

Offset 1, canonical program `A129401.P15322032131307177429`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129401 (n : ℕ) : ℤ :=
  A129401.P15322032131307177429.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129401.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A135765.P15449999841783875573

`A003961(A254053(n+1))`
-/

namespace A135765.P15449999841783875573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A254053 (n + 1)).toNat

end

end A135765.P15449999841783875573

noncomputable section

/-- A135765: Distribute the odd numbers in columns based on the occurrence of "3" in each prime factorization; square array A(row, col) = 3^(row-1) * A007310(col), read by antidiagonals A(1,1), A(1,2), A(2,1), A(1,3), A(2,2), A(3,1), ...

Offset 1, canonical program `A135765.P15449999841783875573`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A254053, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A135765 (n : ℕ) : ℤ :=
  A135765.P15449999841783875573.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A254053, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A135765.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A157261.P4017168066649199223

`A141285(A185170(A006519(n+1)))`
-/

namespace A157261.P4017168066649199223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141285 (A185170 (A006519 (n + 1)).toNat).toNat

end

end A157261.P4017168066649199223

noncomputable section

/-- A157261: A run-length encoding of blocks of 2 in A090822.

Offset 1, canonical program `A157261.P4017168066649199223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A157261 (n : ℕ) : ℤ :=
  A157261.P4017168066649199223.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A157261.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158134.P3890413208393723118

`A157261(4*(n+1))`
-/

namespace A158134.P3890413208393723118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157261 (4 * (n + 1))

end

end A158134.P3890413208393723118

noncomputable section

/-- A158134: Fourth quadrisection of A157261.

Offset 1, canonical program `A158134.P3890413208393723118`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A157261, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A158134 (n : ℕ) : ℤ :=
  A158134.P3890413208393723118.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A157261, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A158134.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A179669.P2073455603419507119

`∩[A350372(n+1), A360902(n+1)]`
-/

namespace A179669.P2073455603419507119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179669.P2073455603419507119

noncomputable section

/-- A179669: Products of form p^4*q^2*r where p, q and r are three distinct primes.

Offset 1, canonical program `A179669.P2073455603419507119`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1169 terms. -/
def A179669 (n : ℕ) : ℤ :=
  (A179669.P2073455603419507119.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1169 terms. -/
def A179669.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179688.P398064880116552051

`∩[A175742(n+1), A350372(n+1)]`
-/

namespace A179688.P398064880116552051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179688.P398064880116552051

noncomputable section

/-- A179688: Numbers of the form p^3*q^3*r where p, q, and r are prime.

Offset 1, canonical program `A179688.P398064880116552051`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 360 terms. -/
def A179688 (n : ℕ) : ℤ :=
  (A179688.P398064880116552051.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 360 terms. -/
def A179688.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179690.P2467920889633160340

`∩[A350375(n+1), A375144(n+1)]`
-/

namespace A179690.P2467920889633160340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179690.P2467920889633160340

noncomputable section

/-- A179690: Numbers of the form p^2*q^2*r*s where p, q, r, and s are distinct primes.

Offset 1, canonical program `A179690.P2467920889633160340`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4475 terms. -/
def A179690 (n : ℕ) : ℤ :=
  (A179690.P2467920889633160340.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4475 terms. -/
def A179690.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182727.P2225108811263832768

`∑[A141285(n+1)]`
-/

namespace A182727.P2225108811263832768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182727.P2225108811263832768

noncomputable section

/-- A182727: Sum of largest parts of the modular table of partitions with n regions.

Offset 1, canonical program `A182727.P2225108811263832768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4000 terms. -/
def A182727 (n : ℕ) : ℤ :=
  A182727.P2225108811263832768.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4000 terms. -/
def A182727.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191002.P17774142683052749299

`(n+1)*A003961(n+1)`
-/

namespace A191002.P17774142683052749299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A003961 (n + 1)

end

end A191002.P17774142683052749299

noncomputable section

/-- A191002: Completely multiplicative function with a(prime(k)) = prime(k)*prime(k+1).

Offset 1, canonical program `A191002.P17774142683052749299`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A191002 (n : ℕ) : ℤ :=
  A191002.P17774142683052749299.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A191002.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A195086.P16313270829479448307

`∪[A048109(n+1), A375144(n+1)]`
-/

namespace A195086.P16313270829479448307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A195086.P16313270829479448307

noncomputable section

/-- A195086: Numbers k such that (number of prime factors of k counted with multiplicity) less (number of distinct prime factors of k) = 2.

Offset 1, canonical program `A195086.P16313270829479448307`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A195086 (n : ℕ) : ℤ :=
  (A195086.P16313270829479448307.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A195086.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206296.P17129788449905308235

`A003961(a(n-1))*a(n-2)` with `a(0)=1, a(1)=2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A206296.P17129788449905308235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A003961 (a (n - 1)).toNat * a (n - 2)

end

end A206296.P17129788449905308235

noncomputable section

/-- A206296: Prime factorization representation of Fibonacci polynomials: a(0) = 1, a(1) = 2, and for n > 1, a(n) = A003961(a(n-1)) * a(n-2).

Offset 0, canonical program `A206296.P17129788449905308235`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A206296 (n : ℕ) : ℤ :=
  A206296.P17129788449905308235.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A206296.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A244967.P9468410199705462311

`A141285(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A244967.P9468410199705462311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141285 (n + 1) - 1

end

end A244967.P9468410199705462311

noncomputable section

/-- A244967: A141285(n) - 1.

Offset 1, canonical program `A244967.P9468410199705462311`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141285, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244967 (n : ℕ) : ℤ :=
  A244967.P9468410199705462311.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141285, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244967.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A246269.P7585923862198389886

`A065338(A003961(n+1))`
-/

namespace A246269.P7585923862198389886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065338 (A003961 (n + 1)).toNat

end

end A246269.P7585923862198389886

noncomputable section

/-- A246269: a(1) = 1, a(p(k)) = p(k+1) mod 4 for k-th prime p(k) and a(u * v) = a(u) * a(v) for u, v > 0.

Offset 1, canonical program `A246269.P7585923862198389886`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A065338, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A246269 (n : ℕ) : ℤ :=
  A246269.P7585923862198389886.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A065338, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A246269.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A246270.P10934646517681247770

`A065339(A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A246270.P10934646517681247770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065339 (A003961 (n + 1)).toNat

end

end A246270.P10934646517681247770

noncomputable section

/-- A246270: Number of prime factors of the form 4k+3 (counted with multiplicity) in A003961(n): a(n) = A065339(A003961(n)).

Offset 1, canonical program `A246270.P10934646517681247770`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A065339, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A246270 (n : ℕ) : ℤ :=
  A246270.P10934646517681247770.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A065339, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A246270.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A249735.P12424842754456983110

`A003961(2*n+1)`
-/

namespace A249735.P12424842754456983110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (2 * n + 1)

end

end A249735.P12424842754456983110

noncomputable section

/-- A249735: Odd bisection of A003961: Replace in 2n-1 each prime factor p(k) with prime p(k+1).

Offset 1, canonical program `A249735.P12424842754456983110`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A249735 (n : ℕ) : ℤ :=
  A249735.P12424842754456983110.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A249735.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A252742.P12034946379470004791

`1-round((n+1)/A003961(n+1))`
-/

namespace A252742.P12034946379470004791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A003961 (n + 1) : ℚ))

end

end A252742.P12034946379470004791

noncomputable section

/-- A252742: Characteristic function of A246282: if A003961(n) > 2*n, then a(n) = 1, otherwise 0 (when A003961(n) < 2*n) [where A003961(n) shifts the prime factorization of n one step towards larger primes].

Offset 1, canonical program `A252742.P12034946379470004791`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A252742 (n : ℕ) : ℤ :=
  A252742.P12034946379470004791.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A252742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A252743.P13320950522193927286

`A252742(A005940(1+n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A252743.P13320950522193927286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252742 (A005940 (1 + n)).toNat

end

end A252743.P13320950522193927286

noncomputable section

/-- A252743: a(n) = A252742(A005940(1+n)).

Offset 0, canonical program `A252743.P13320950522193927286`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A252742, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A252743 (n : ℕ) : ℤ :=
  A252743.P13320950522193927286.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A252742, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A252743.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A252744.P2309875151662509228

`A252742(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A252744.P2309875151662509228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252742 (A163511 n).toNat

end

end A252744.P2309875151662509228

noncomputable section

/-- A252744: a(n) = A252742(A163511(n)).

Offset 0, canonical program `A252744.P2309875151662509228`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A252742, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A252744 (n : ℕ) : ℤ :=
  A252744.P2309875151662509228.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A252742, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A252744.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A252748.P2216043875100614995

`A003961(n+1)-2*(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A252748.P2216043875100614995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) - (2 * (n + 1) : ℤ)

end

end A252748.P2216043875100614995

noncomputable section

/-- A252748: a(n) = A003961(n) - 2*n.

Offset 1, canonical program `A252748.P2216043875100614995`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A252748 (n : ℕ) : ℤ :=
  A252748.P2216043875100614995.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A252748.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A252749.P15054942815197957636

`A252748(n)+a(n-1)` with `a(0)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A252749.P15054942815197957636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A252748 n + a (n - 1)

end

end A252749.P15054942815197957636

noncomputable section

/-- A252749: Partial sums of A252748: a(0) = 0, a(n) = A252748(n) + a(n-1).

Offset 0, canonical program `A252749.P15054942815197957636`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252748, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A252749 (n : ℕ) : ℤ :=
  A252749.P15054942815197957636.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252748, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A252749.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A252750.P6670767502219585743

`A003961(A005940(n+1))-2*A005940(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A252750.P6670767502219585743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A005940 (n + 1)).toNat - 2 * A005940 (n + 1)

end

end A252750.P6670767502219585743

noncomputable section

/-- A252750: a(n) = A003961(A005940(n+1)) - 2 * A005940(n+1).

Offset 0, canonical program `A252750.P6670767502219585743`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A005940, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A252750 (n : ℕ) : ℤ :=
  A252750.P6670767502219585743.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A005940, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A252750.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A252751.P3019683754980594127

`A252750(n)+a(n-1)` with `a(0)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A252751.P3019683754980594127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A252750 n + a (n - 1)

end

end A252751.P3019683754980594127

noncomputable section

/-- A252751: Partial sums of A252750: a(0) = 0; for >= 1: a(n) = A252750(n) + a(n-1).

Offset 0, canonical program `A252751.P3019683754980594127`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252750, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A252751 (n : ℕ) : ℤ :=
  A252751.P3019683754980594127.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252750, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A252751.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A265408.P18241322525872121723

`A003961(a(n-1))*a(A265409(n))` with `a(0)=1, a(1)=2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A265408.P18241322525872121723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A003961 (a (n - 1)).toNat * a (A265409 n).toNat

end

end A265408.P18241322525872121723

noncomputable section

/-- A265408: Prime factorization representation of Spironacci polynomials: a(0) = 1, a(1) = 2, and for n > 1, a(n) = A003961(a(n-1)) * a(A265409(n)).

Offset 0, canonical program `A265408.P18241322525872121723`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A265409, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A265408 (n : ℕ) : ℤ :=
  A265408.P18241322525872121723.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A265409, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A265408.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A266402.P4456686432549101179

`A064989(A030101(A003961(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A266402.P4456686432549101179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A030101 (A003961 (n + 1)).toNat).toNat

end

end A266402.P4456686432549101179

noncomputable section

/-- A266402: Self-inverse permutation of natural numbers: a(n) = A064989(A030101(A003961(n))).

Offset 1, canonical program `A266402.P4456686432549101179`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A030101, A064989, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A266402 (n : ℕ) : ℤ :=
  A266402.P4456686432549101179.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A030101, A064989, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A266402.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A275024.P5861283572822886658

`∑{e}[A064553(n+1), #]`
-/

namespace A275024.P5861283572822886658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064553 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A275024.P5861283572822886658

noncomputable section

/-- A275024: Total weight of the n-th twice-prime-factored multiset partition.

Offset 1, canonical program `A275024.P5861283572822886658`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275024 (n : ℕ) : ℤ :=
  (A275024.P5861283572822886658.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275024.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283980.P7159182790163433340

`A003961(n+1)*A006519(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A283980.P7159182790163433340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) * A006519 (n + 1)

end

end A283980.P7159182790163433340

noncomputable section

/-- A283980: a(n) = A003961(n)*A006519(n).

Offset 1, canonical program `A283980.P7159182790163433340`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A283980 (n : ℕ) : ℤ :=
  A283980.P7159182790163433340.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A283980.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286371.P6950233767271759210

`A286369(A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286371.P6950233767271759210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286369 (A003961 (n + 1)).toNat

end

end A286371.P6950233767271759210

noncomputable section

/-- A286371: a(n) = A286369(A003961(n)).

Offset 1, canonical program `A286371.P6950233767271759210`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A286369, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286371 (n : ℕ) : ℤ :=
  A286371.P6950233767271759210.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A286369, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286371.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286385.P7583078268767377745

`A003961(n+1)-A000203(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286385.P7583078268767377745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) - A000203 (n + 1)

end

end A286385.P7583078268767377745

noncomputable section

/-- A286385: a(n) = A003961(n) - A000203(n).

Offset 1, canonical program `A286385.P7583078268767377745`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286385 (n : ℕ) : ℤ :=
  A286385.P7583078268767377745.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286385.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A293442.P10456637239250951956

`2^A162642(n+1)*A003961(a(A000188(n+1)-1))` with `a(0)=1`
-/

namespace A293442.P10456637239250951956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (2 : ℚ) ^ (A162642 (n + 1) : ℤ) * (A003961 (SequenceMachineLib.roundAway (a (A000188 (n + 1) - 1).toNat)).toNat : ℚ)

end

end A293442.P10456637239250951956

noncomputable section

/-- A293442: Multiplicative with a(p^e) = A019565(e).

Offset 1, canonical program `A293442.P10456637239250951956`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A293442 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A293442.P10456637239250951956.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A293442.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A293444.P2340337305881596205

`A293442(A293442(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A293444.P2340337305881596205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293442 (A293442 (n + 1)).toNat

end

end A293444.P2340337305881596205

noncomputable section

/-- A293444: a(n) = A293442(A293442(n)), where A293442 is multiplicative with a(p^e) = A019565(e).

Offset 1, canonical program `A293444.P2340337305881596205`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A293442, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A293444 (n : ℕ) : ℤ :=
  A293444.P2340337305881596205.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A293442, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A293444.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A295892.P17225918726782502796

`A000035(1+A000120(n+1)+A000120(A003961(n+1)))`
-/

namespace A295892.P17225918726782502796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (1 + A000120 (n + 1) + A000120 (A003961 (n + 1)).toNat).toNat

end

end A295892.P17225918726782502796

noncomputable section

/-- A295892: a(n) = 1 if binary weights of n and A003961(n) are of the same parity, 0 otherwise.

Offset 1, canonical program `A295892.P17225918726782502796`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295892 (n : ℕ) : ℤ :=
  A295892.P17225918726782502796.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295892.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318510.P6431562738860432705

`A318509(A003961(n+1))`
-/

namespace A318510.P6431562738860432705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318509 (A003961 (n + 1)).toNat

end

end A318510.P6431562738860432705

noncomputable section

/-- A318510: Completely multiplicative with a(prime(k)) = A002487(prime(k+1)).

Offset 1, canonical program `A318510.P6431562738860432705`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A318509, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318510 (n : ℕ) : ℤ :=
  A318510.P6431562738860432705.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A318509, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318510.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A322361.P3851522847531199506

`gcd(n+1, A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A322361.P3851522847531199506
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A003961 (n + 1))

end

end A322361.P3851522847531199506

noncomputable section

/-- A322361: a(n) = gcd(n, A003961(n)), where A003961 is completely multiplicative with a(prime(k)) = prime(k+1).

Offset 1, canonical program `A322361.P3851522847531199506`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A322361 (n : ℕ) : ℤ :=
  (A322361.P3851522847531199506.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A322361.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A326042.P2058556130283876528

`A064989(A000203(A003961(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A326042.P2058556130283876528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A000203 (A003961 (n + 1)).toNat).toNat

end

end A326042.P2058556130283876528

noncomputable section

/-- A326042: a(n) = A064989(sigma(A003961(n))), where A003961 shifts the prime factorization of n one step towards larger primes, and A064989 shifts it back towards smaller primes.

Offset 1, canonical program `A326042.P2058556130283876528`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A064989, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A326042 (n : ℕ) : ℤ :=
  A326042.P2058556130283876528.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A064989, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A326042.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A326057.P18334027102489358810

`gcd(A003961(n+1)-2*(n+1), A003961(n+1)-A000203(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A326057.P18334027102489358810
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003961 (n + 1) - (2 * (n + 1) : ℤ)) (A003961 (n + 1) - A000203 (n + 1))

end

end A326057.P18334027102489358810

noncomputable section

/-- A326057: a(n) = gcd(A003961(n)-2n, A003961(n)-sigma(n)), where A003961(n) is fully multiplicative function with a(prime(k)) = prime(k+1).

Offset 1, canonical program `A326057.P18334027102489358810`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326057 (n : ℕ) : ℤ :=
  (A326057.P18334027102489358810.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326057.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A328915.P8931346115236859548

`A007947(A003961(n+1))`
-/

namespace A328915.P8931346115236859548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A003961 (n + 1)).toNat

end

end A328915.P8931346115236859548

noncomputable section

/-- A328915: If n = Product (p_j^k_j) then a(n) = Product (nextprime(p_j)), where nextprime = A151800.

Offset 1, canonical program `A328915.P8931346115236859548`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A328915 (n : ℕ) : ℤ :=
  A328915.P8931346115236859548.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A328915.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A331310.P15036600505263651020

`gcd(n+1, A293442(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A331310.P15036600505263651020
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A293442 (n + 1))

end

end A331310.P15036600505263651020

noncomputable section

/-- A331310: a(n) = gcd(n, A293442(n)).

Offset 1, canonical program `A331310.P15036600505263651020`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A293442, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A331310 (n : ℕ) : ℤ :=
  (A331310.P15036600505263651020.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A293442, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A331310.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336835.P9061713895655417858

`A294936(A003961(n+1))+A294936(n+1)`
-/

namespace A336835.P9061713895655417858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294936 (A003961 (n + 1)).toNat + A294936 (n + 1)

end

end A336835.P9061713895655417858

noncomputable section

/-- A336835: Number of iterations of x -> A003961(x) needed before the result is deficient (sigma(x) < 2x), when starting from x=n.

Offset 1, canonical program `A336835.P9061713895655417858`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2047 terms. -/
def A336835 (n : ℕ) : ℤ :=
  A336835.P9061713895655417858.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2047 terms. -/
def A336835.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336838.P8565209777362080832

`A057020(A003961(n+1))`
-/

namespace A336838.P8565209777362080832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057020 (A003961 (n + 1)).toNat

end

end A336838.P8565209777362080832

noncomputable section

/-- A336838: Numerator of the arithmetic mean of the divisors of A003961(n).

Offset 1, canonical program `A336838.P8565209777362080832`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336838 (n : ℕ) : ℤ :=
  A336838.P8565209777362080832.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336838.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336839.P11553326894089779945

`A057021(A003961(n+1))`
-/

namespace A336839.P11553326894089779945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057021 (A003961 (n + 1)).toNat

end

end A336839.P11553326894089779945

noncomputable section

/-- A336839: Denominator of the arithmetic mean of the divisors of A003961(n).

Offset 1, canonical program `A336839.P11553326894089779945`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336839 (n : ℕ) : ℤ :=
  A336839.P11553326894089779945.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336839.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336842.P8840037860068940282

`A007814(1+A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336842.P8840037860068940282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (1 + A003961 (n + 1)).toNat

end

end A336842.P8840037860068940282

noncomputable section

/-- A336842: Number of trailing 1-bits in the binary representation of A003961(n): a(n) = A007814(1+A003961(n)).

Offset 1, canonical program `A336842.P8840037860068940282`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336842 (n : ℕ) : ℤ :=
  A336842.P8840037860068940282.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336842.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336844.P6459901798776764731

`A336698(A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336844.P6459901798776764731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336698 (A003961 (n + 1)).toNat

end

end A336844.P6459901798776764731

noncomputable section

/-- A336844: a(n) = A336698(A003961(n)).

Offset 1, canonical program `A336844.P6459901798776764731`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336844 (n : ℕ) : ℤ :=
  A336844.P6459901798776764731.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336844.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336845.P11271818747595827461

`A000005(n+1)*A003961(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336845.P11271818747595827461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A003961 (n + 1)

end

end A336845.P11271818747595827461

noncomputable section

/-- A336845: a(n) = A000005(n) * A003961(n), where A003961 is the prime shift towards larger primes, and A000005 gives the number of divisors of n, and also of A003961(n).

Offset 1, canonical program `A336845.P11271818747595827461`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336845 (n : ℕ) : ℤ :=
  A336845.P11271818747595827461.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336845.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336846.P388242436168297548

`gcd(A000203(A003961(n+1)), A000005(n+1)*A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336846.P388242436168297548
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (A003961 (n + 1)).toNat) (A000005 (n + 1) * A003961 (n + 1))

end

end A336846.P388242436168297548

noncomputable section

/-- A336846: a(n) = gcd(sigma(A003961(n)), A000005(n)*A003961(n)).

Offset 1, canonical program `A336846.P388242436168297548`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336846 (n : ℕ) : ℤ :=
  (A336846.P388242436168297548.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336846.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336847.P10873545021579543233

`A003973(n+1)-A336846(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336847.P10873545021579543233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003973 (n + 1) - A336846 (n + 1)

end

end A336847.P10873545021579543233

noncomputable section

/-- A336847: a(n) = A003973(n) - A336846(n).

Offset 1, canonical program `A336847.P10873545021579543233`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003973, A336846, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336847 (n : ℕ) : ℤ :=
  A336847.P10873545021579543233.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003973, A336846, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336847.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336848.P11409207554523116840

`A003973(n+1)/A336846(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336848.P11409207554523116840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003973 (n + 1) : ℚ) / (A336846 (n + 1) : ℚ)

end

end A336848.P11409207554523116840

noncomputable section

/-- A336848: a(n) = A003973(n) / A336846(n).

Offset 1, canonical program `A336848.P11409207554523116840`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003973, A336846, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336848 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A336848.P11409207554523116840.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003973, A336846, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336848.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336849.P6112679595888065368

`A017666(A003961(n+1))`
-/

namespace A336849.P6112679595888065368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (A003961 (n + 1)).toNat

end

end A336849.P6112679595888065368

noncomputable section

/-- A336849: a(n) = A003961(n) / gcd(A003961(n), sigma(A003961(n))), where A003961 is the prime shift towards larger primes.

Offset 1, canonical program `A336849.P6112679595888065368`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A017666, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336849 (n : ℕ) : ℤ :=
  A336849.P6112679595888065368.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A017666, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336849.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336850.P501632479061502226

`gcd(A003961(n+1), A000203(A003961(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336850.P501632479061502226
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003961 (n + 1)) (A000203 (A003961 (n + 1)).toNat)

end

end A336850.P501632479061502226

noncomputable section

/-- A336850: a(n) = gcd(A003961(n), sigma(A003961(n))), where A003961 is the prime shift towards larger primes.

Offset 1, canonical program `A336850.P501632479061502226`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336850 (n : ℕ) : ℤ :=
  (A336850.P501632479061502226.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336850.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336851.P12982912948484651023

`A000203(A003961(n+1))-A003961(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336851.P12982912948484651023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A003961 (n + 1)).toNat - A003961 (n + 1)

end

end A336851.P12982912948484651023

noncomputable section

/-- A336851: a(n) = sigma(A003961(n)) - A003961(n), where A003961 is a prime shift towards larger primes, sigma is the sum of divisors.

Offset 1, canonical program `A336851.P12982912948484651023`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336851 (n : ℕ) : ℤ :=
  A336851.P12982912948484651023.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336851.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336852.P16576241349635200560

`A000203(A003961(n+1))-A000203(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336852.P16576241349635200560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A003961 (n + 1)).toNat - A000203 (n + 1)

end

end A336852.P16576241349635200560

noncomputable section

/-- A336852: a(n) = sigma(A003961(n)) - sigma(n).

Offset 1, canonical program `A336852.P16576241349635200560`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336852 (n : ℕ) : ℤ :=
  A336852.P16576241349635200560.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336852.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336853.P17153510744129978778

`A003961(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336853.P17153510744129978778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) - (n + 1 : ℤ)

end

end A336853.P17153510744129978778

noncomputable section

/-- A336853: a(n) = A003961(n) - n, where A003961 is the prime shift towards larger primes.

Offset 1, canonical program `A336853.P17153510744129978778`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336853 (n : ℕ) : ℤ :=
  A336853.P17153510744129978778.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336853.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336856.P10996703592660352307

`gcd(A000005(n+1), A003973(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336856.P10996703592660352307
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (n + 1)) (A003973 (n + 1))

end

end A336856.P10996703592660352307

noncomputable section

/-- A336856: Prime-shifted analog of gcd(d(n), sigma(n)): a(n) = gcd(A000005(n), A003973(n)).

Offset 1, canonical program `A336856.P10996703592660352307`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003973, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336856 (n : ℕ) : ℤ :=
  (A336856.P10996703592660352307.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003973, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336856.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336918.P13502289525175997860

`eq[1, A336839(n+1)]+1`
-/

namespace A336918.P13502289525175997860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336839 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A336918.P13502289525175997860

noncomputable section

/-- A336918: Numbers k such that A000005(k) divides A003973(k); numbers k for which A336839(k) = 1.

Offset 1, canonical program `A336918.P13502289525175997860`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336918 (n : ℕ) : ℤ :=
  (A336918.P13502289525175997860.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336918.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336919.P8980509711614269143

`lt[1, A336839(n+1)]+1`
-/

namespace A336919.P8980509711614269143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336839 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A336919.P8980509711614269143

noncomputable section

/-- A336919: Numbers k such that A000005(k) does not divide A003973(k); numbers k for which A336839(k) > 1.

Offset 1, canonical program `A336919.P8980509711614269143`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5685 terms. -/
def A336919 (n : ℕ) : ℤ :=
  (A336919.P8980509711614269143.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5685 terms. -/
def A336919.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336932.P5144224243810443017

`A336937(A003961(n+1))`
-/

namespace A336932.P5144224243810443017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336937 (A003961 (n + 1)).toNat

end

end A336932.P5144224243810443017

noncomputable section

/-- A336932: The 2-adic valuation of A003973(n), the sum of divisors of prime shifted n.

Offset 1, canonical program `A336932.P5144224243810443017`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336932 (n : ℕ) : ℤ :=
  A336932.P5144224243810443017.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336932.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337335.P16507265626637162204

`gcd(A048673(n+1), 1+A003973(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A337335.P16507265626637162204
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048673 (n + 1)) (1 + A003973 (n + 1))

end

end A337335.P16507265626637162204

noncomputable section

/-- A337335: a(n) = gcd(A048673(n), 1+A003973(n)).

Offset 1, canonical program `A337335.P16507265626637162204`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003973, A048673, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337335 (n : ℕ) : ℤ :=
  (A337335.P16507265626637162204.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003973, A048673, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337335.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337337.P7440096239031397272

`A337335((n+1)²)`
-/

namespace A337337.P7440096239031397272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337335 ((n + 1) ^ 2)

end

end A337337.P7440096239031397272

noncomputable section

/-- A337337: a(n) = gcd(1+sigma(s), (s+1)/2), where s is the square of n once prime-shifted (s = A003961(n)^2 = A003961(n^2)).

Offset 1, canonical program `A337337.P7440096239031397272`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A337335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337337 (n : ℕ) : ℤ :=
  A337337.P7440096239031397272.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A337335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337337.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337338.P8319227600971306024

`A337194(A003961(n+1)²)/A337337(n+1)`
-/

namespace A337338.P8319227600971306024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337194 (A003961 (n + 1) ^ 2).toNat : ℚ) / (A337337 (n + 1) : ℚ)

end

end A337338.P8319227600971306024

noncomputable section

/-- A337338: Numerator of (1+sigma(s)) / ((s+1)/2), where s is the square of n prime-shifted once (s = A003961(n)^2 = A003961(n^2)).

Offset 1, canonical program `A337338.P8319227600971306024`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A337337, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337338 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A337338.P8319227600971306024.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A337337, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337338.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337339.P4042521456947446519

`A337336(n+1)/A337337(n+1)`
-/

namespace A337339.P4042521456947446519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337336 (n + 1) : ℚ) / (A337337 (n + 1) : ℚ)

end

end A337339.P4042521456947446519

noncomputable section

/-- A337339: Denominator of (1+sigma(s)) / ((s+1)/2), where s is the square of n prime-shifted once (s = A003961(n)^2 = A003961(n^2)).

Offset 1, canonical program `A337339.P4042521456947446519`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A337336, A337337, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337339 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A337339.P4042521456947446519.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A337336, A337337, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337339.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337340.P276399523375729777

`(A337339(n+1)-A003961(n+1))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A337340.P276399523375729777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337339 (n + 1) - A003961 (n + 1) : ℚ) / 2

end

end A337340.P276399523375729777

noncomputable section

/-- A337340: a(n) = (A337339(n)-A003961(n)) / 2.

Offset 1, canonical program `A337340.P276399523375729777`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A337339, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337340 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A337340.P276399523375729777.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A337339, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337340.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337341.P5889933687803878944

`A337339(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A337341.P5889933687803878944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337339 (n + 1) - (n + 1 : ℤ)

end

end A337341.P5889933687803878944

noncomputable section

/-- A337341: a(n) = A337339(n) - n.

Offset 1, canonical program `A337341.P5889933687803878944`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A337339, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337341 (n : ℕ) : ℤ :=
  A337341.P5889933687803878944.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A337339, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337341.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337373.P17490337404233629993

`lt[2*n, A336853(n+1)]+1`
-/

namespace A337373.P17490337404233629993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336853 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A337373.P17490337404233629993

noncomputable section

/-- A337373: Numbers k for which A003961(k) > 3*k.

Offset 1, canonical program `A337373.P17490337404233629993`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5479 terms. -/
def A337373 (n : ℕ) : ℤ :=
  (A337373.P17490337404233629993.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5479 terms. -/
def A337373.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337379.P6372728613214319863

`lt[A252748(n+1), A294015(n+1)]+1`
-/

namespace A337379.P6372728613214319863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252748 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294015 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A337379.P6372728613214319863

noncomputable section

/-- A337379: Numbers k for which A003961(k) < 2*sigma(k).

Offset 1, canonical program `A337379.P6372728613214319863`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7688 terms. -/
def A337379 (n : ℕ) : ℤ :=
  (A337379.P6372728613214319863.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7688 terms. -/
def A337379.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337380.P16910156097547900408

`1-char[A337379(n+1)-1]`
-/

namespace A337380.P16910156097547900408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337379 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A337380.P16910156097547900408

noncomputable section

/-- A337380: a(n) = 1 if A003961(n) > 2*sigma(n), 0 otherwise.

Offset 1, canonical program `A337380.P16910156097547900408`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337380 (n : ℕ) : ℤ :=
  A337380.P16910156097547900408.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337380.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337386.P15090357526265175060

`lt[1, A336835(A028310(n))]`
-/

namespace A337386.P15090357526265175060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336835 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A337386.P15090357526265175060

noncomputable section

/-- A337386: Numbers k for which A003973(k) >= 2*A003961(k).

Offset 1, canonical program `A337386.P15090357526265175060`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 254 terms. -/
def A337386 (n : ℕ) : ℤ :=
  (A337386.P15090357526265175060.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 254 terms. -/
def A337386.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337468.P6808977206975830363

`A080224(A337386(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A337468.P6808977206975830363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080224 (A337386 (n + 1)).toNat

end

end A337468.P6808977206975830363

noncomputable section

/-- A337468: a(n) = A080224(A337386(n)).

Offset 1, canonical program `A337468.P6808977206975830363`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080224, A337386, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337468 (n : ℕ) : ℤ :=
  A337468.P6808977206975830363.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080224, A337386, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337468.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337471.P17211340762950166472

`A003961(A108951(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A337471.P17211340762950166472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A108951 (n + 1)).toNat

end

end A337471.P17211340762950166472

noncomputable section

/-- A337471: Primorial inflation of n prime shifted once: a(n) = A003961(A108951(n)).

Offset 1, canonical program `A337471.P17211340762950166472`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A108951, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337471 (n : ℕ) : ℤ :=
  A337471.P17211340762950166472.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A108951, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337471.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337474.P14754845814087979519

`A336835(A108951(n+1))`
-/

namespace A337474.P14754845814087979519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336835 (A108951 (n + 1)).toNat

end

end A337474.P14754845814087979519

noncomputable section

/-- A337474: Number of prime shifts (x -> A003961(x)) needed before the result is deficient, when starting from x = A108951(n), the primorial inflation of n.

Offset 1, canonical program `A337474.P14754845814087979519`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A108951, A336835, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337474 (n : ℕ) : ℤ :=
  A337474.P14754845814087979519.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A108951, A336835, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337474.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337544.P9000997842443162116

`2*A000010(A003961(n+1))-A003961(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A337544.P9000997842443162116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000010 (A003961 (n + 1)).toNat - A003961 (n + 1)

end

end A337544.P9000997842443162116

noncomputable section

/-- A337544: a(n) = 2*phi(A003961(n)) - A003961(n).

Offset 1, canonical program `A337544.P9000997842443162116`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337544 (n : ℕ) : ℤ :=
  A337544.P9000997842443162116.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337544.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337549.P3151164375738502961

`A003972(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A337549.P3151164375738502961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003972 (n + 1) - (n + 1 : ℤ)

end

end A337549.P3151164375738502961

noncomputable section

/-- A337549: a(n) = A003972(n) - n.

Offset 1, canonical program `A337549.P3151164375738502961`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003972, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337549 (n : ℕ) : ℤ :=
  A337549.P3151164375738502961.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003972, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337549.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A339903.P3797102702327657861

`A336466(A003961(n+1))`
-/

namespace A339903.P3797102702327657861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336466 (A003961 (n + 1)).toNat

end

end A339903.P3797102702327657861

noncomputable section

/-- A339903: Fully multiplicative with a(p) = A000265(q-1), where q = A151800(p), the next prime > p.

Offset 1, canonical program `A339903.P3797102702327657861`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A336466, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A339903 (n : ℕ) : ℤ :=
  A339903.P3797102702327657861.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A336466, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A339903.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A339904.P5171680979052193897

`A000265(A000010(A003961(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A339904.P5171680979052193897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A000010 (A003961 (n + 1)).toNat).toNat

end

end A339904.P5171680979052193897

noncomputable section

/-- A339904: The odd part of {Euler totient function phi applied to the prime shifted n}: a(n) = A000265(A000010(A003961(n))).

Offset 1, canonical program `A339904.P5171680979052193897`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A339904 (n : ℕ) : ℤ :=
  A339904.P5171680979052193897.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A339904.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A339905.P13500807193007316440

`A003958(A003961(n+1))`
-/

namespace A339905.P13500807193007316440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A003961 (n + 1)).toNat

end

end A339905.P13500807193007316440

noncomputable section

/-- A339905: Fully multiplicative with a(prime(k)) = prime(k+1) - 1.

Offset 1, canonical program `A339905.P13500807193007316440`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, A003961, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A339905 (n : ℕ) : ℤ :=
  A339905.P13500807193007316440.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, A003961, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A339905.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A340071.P3662903536855616101

`gcd(A003961(n+1)-1, A000010(A003961(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A340071.P3662903536855616101
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003961 (n + 1) - 1) (A000010 (A003961 (n + 1)).toNat)

end

end A340071.P3662903536855616101

noncomputable section

/-- A340071: a(n) = gcd(A003961(n)-1, phi(A003961(n))), where A003961 shifts the prime factorization of n one step towards larger primes.

Offset 1, canonical program `A340071.P3662903536855616101`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340071 (n : ℕ) : ℤ :=
  (A340071.P3662903536855616101.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340071.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A340072.P10983682379328277677

`A160595(A003961(n+1))`
-/

namespace A340072.P10983682379328277677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160595 (A003961 (n + 1)).toNat

end

end A340072.P10983682379328277677

noncomputable section

/-- A340072: a(n) = phi(x) / gcd(x-1, phi(x)), where x = A003961(n), i.e., n with its prime factorization shifted one step towards larger primes.

Offset 1, canonical program `A340072.P10983682379328277677`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A160595, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A340072 (n : ℕ) : ℤ :=
  A340072.P10983682379328277677.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A160595, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A340072.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A340073.P3788294706891105831

`A253885(n)/A340071(n+1)`
-/

namespace A340073.P3788294706891105831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253885 n : ℚ) / (A340071 (n + 1) : ℚ)

end

end A340073.P3788294706891105831

noncomputable section

/-- A340073: a(n) = (x-1) / gcd(x-1, phi(x)), where x = A003961(n), i.e., n with its prime factorization shifted one step towards larger primes.

Offset 1, canonical program `A340073.P3788294706891105831`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A253885, A340071, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A340073 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A340073.P3788294706891105831.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A253885, A340071, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A340073.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A340074.P15642945352371498565

`gcd(A003961(n+1)-1, A339904(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A340074.P15642945352371498565
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003961 (n + 1) - 1) (A339904 (n + 1))

end

end A340074.P15642945352371498565

noncomputable section

/-- A340074: a(n) = gcd(A003961(n)-1, A339904(n)).

Offset 1, canonical program `A340074.P15642945352371498565`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A339904, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A340074 (n : ℕ) : ℤ :=
  (A340074.P15642945352371498565.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A339904, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A340074.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A340075.P18306248190705191275

`A000265(A340072(n+1))`
-/

namespace A340075.P18306248190705191275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A340072 (n + 1)).toNat

end

end A340075.P18306248190705191275

noncomputable section

/-- A340075: The odd part of A340072(n).

Offset 1, canonical program `A340075.P18306248190705191275`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A340072, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340075 (n : ℕ) : ℤ :=
  A340075.P18306248190705191275.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A340072, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340075.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A340076.P9543000628144570733

`eq[1, A340075(n+1)]+1`
-/

namespace A340076.P9543000628144570733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340075 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A340076.P9543000628144570733

noncomputable section

/-- A340076: Positions of ones in A340075.

Offset 1, canonical program `A340076.P9543000628144570733`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1276 terms. -/
def A340076 (n : ℕ) : ℤ :=
  (A340076.P9543000628144570733.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1276 terms. -/
def A340076.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340147.P12367643598761050819

`A247074(A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A340147.P12367643598761050819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247074 (A003961 (n + 1)).toNat

end

end A340147.P12367643598761050819

noncomputable section

/-- A340147: a(n) = A247074(A003961(n)).

Offset 1, canonical program `A340147.P12367643598761050819`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A247074, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A340147 (n : ℕ) : ℤ :=
  A340147.P12367643598761050819.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A247074, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A340147.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A340148.P15077992982366263936

`A063994(A003961(n+1))`
-/

namespace A340148.P15077992982366263936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063994 (A003961 (n + 1)).toNat

end

end A340148.P15077992982366263936

noncomputable section

/-- A340148: a(n) = Product_{distinct primes p dividing n} gcd(q-1, A003961(n)-1), where q = A151800(p), the next prime larger than p.

Offset 1, canonical program `A340148.P15077992982366263936`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A063994, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A340148 (n : ℕ) : ℤ :=
  A340148.P15077992982366263936.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A063994, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A340148.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A340149.P6698096006664650943

`A000265(A247074(A003961(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A340149.P6698096006664650943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A247074 (A003961 (n + 1)).toNat).toNat

end

end A340149.P6698096006664650943

noncomputable section

/-- A340149: Odd part of A340147: a(n) = A000265(A247074(A003961(n))).

Offset 1, canonical program `A340149.P6698096006664650943`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A247074, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A340149 (n : ℕ) : ℤ :=
  A340149.P6698096006664650943.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A247074, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A340149.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A340150.P13758689573420697297

`record[A007913(n+1)/A340149(n+1)]`
-/

namespace A340150.P13758689573420697297
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007913 (n + 1) : ℚ) / (A340149 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340150.P13758689573420697297

noncomputable section

/-- A340150: Positions of ones in A340149.

Offset 1, canonical program `A340150.P13758689573420697297`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6718 terms. -/
def A340150 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A340150.P13758689573420697297.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6718 terms. -/
def A340150.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340194.P2585245132100315364

`A337544(A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A340194.P2585245132100315364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337544 (A003961 (n + 1)).toNat

end

end A340194.P2585245132100315364

noncomputable section

/-- A340194: a(n) = A337544(A003961(n)).

Offset 1, canonical program `A340194.P2585245132100315364`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A337544, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A340194 (n : ℕ) : ℤ :=
  A340194.P2585245132100315364.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A337544, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A340194.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A340683.P1232196713619969114

`A007949((A003961(A003961(n+1))+1)/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A340683.P1232196713619969114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (SequenceMachineLib.roundAway ((A003961 (A003961 (n + 1)).toNat + 1 : ℚ) / 2)).toNat

end

end A340683.P1232196713619969114

noncomputable section

/-- A340683: a(n) = A007949((A003961(A003961(n))+1)/2), where A003961 shifts the prime factorization of n one step towards larger primes, and A007949(x) gives the exponent of largest power of 3 dividing x.

Offset 1, canonical program `A340683.P1232196713619969114`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340683 (n : ℕ) : ℤ :=
  A340683.P1232196713619969114.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340683.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A341519.P3179261945552119542

`A001222(gcd(A003961(n+1), A000203(A003961(n+1))))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A341519.P3179261945552119542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A003961 (n + 1)) (A000203 (A003961 (n + 1)).toNat))

end

end A341519.P3179261945552119542

noncomputable section

/-- A341519: Number of prime factors (with multiplicity) shared by A003961(n) and A003973(n): a(n) = bigomega(gcd(A003961(n), sigma(A003961(n)))).

Offset 1, canonical program `A341519.P3179261945552119542`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A341519 (n : ℕ) : ℤ :=
  A341519.P3179261945552119542.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A341519.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A341525.P7694979222133116988

`A017665(A003961(n+1))`
-/

namespace A341525.P7694979222133116988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017665 (A003961 (n + 1)).toNat

end

end A341525.P7694979222133116988

noncomputable section

/-- A341525: Numerator of A003973(n) / A003961(n).

Offset 1, canonical program `A341525.P7694979222133116988`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A341525 (n : ℕ) : ℤ :=
  A341525.P7694979222133116988.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A341525.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A341528.P14956045597010222967

`(n+1)*A000203(A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A341528.P14956045597010222967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000203 (A003961 (n + 1)).toNat

end

end A341528.P14956045597010222967

noncomputable section

/-- A341528: a(n) = n * sigma(A003961(n)), where A003961 shifts the prime factorization of n one step towards larger primes, and sigma is the sum of the divisors of n.

Offset 1, canonical program `A341528.P14956045597010222967`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A341528 (n : ℕ) : ℤ :=
  A341528.P14956045597010222967.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A341528.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A341529.P16215354079337836042

`A000203(n+1)*A003961(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A341529.P16215354079337836042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A003961 (n + 1)

end

end A341529.P16215354079337836042

noncomputable section

/-- A341529: a(n) = sigma(n) * A003961(n), where A003961 shifts the prime factorization of n one step towards larger primes, and sigma is the sum of the divisors of n.

Offset 1, canonical program `A341529.P16215354079337836042`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A341529 (n : ℕ) : ℤ :=
  A341529.P16215354079337836042.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A341529.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A341530.P14171967541520883711

`gcd((n+1)*A000203(A003961(n+1)), A000203(n+1)*A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A341530.P14171967541520883711
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 1 : ℤ) * A000203 (A003961 (n + 1)).toNat) (A000203 (n + 1) * A003961 (n + 1))

end

end A341530.P14171967541520883711

noncomputable section

/-- A341530: a(n) = gcd(n*sigma(A003961(n)), sigma(n)*A003961(n)), where A003961 shifts the prime factorization of n one step towards larger primes, and sigma is the sum of divisors of n.

Offset 1, canonical program `A341530.P14171967541520883711`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A341530 (n : ℕ) : ℤ :=
  (A341530.P14171967541520883711.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A341530.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A341612.P3068073104531840485

`A252742(n+1)*A294935(n+1)`
-/

namespace A341612.P3068073104531840485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252742 (n + 1) * A294935 (n + 1)

end

end A341612.P3068073104531840485

noncomputable section

/-- A341612: Characteristic function of A341614: a(n) = 1 if sigma(n) <= 2n < A003961(n), 0 otherwise.

Offset 1, canonical program `A341612.P3068073104531840485`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252742, A294935, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A341612 (n : ℕ) : ℤ :=
  A341612.P3068073104531840485.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252742, A294935, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A341612.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A341613.P13588315821913618762

`A252742(n+1)*A294934(n+1)`
-/

namespace A341613.P13588315821913618762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252742 (n + 1) * A294934 (n + 1)

end

end A341613.P13588315821913618762

noncomputable section

/-- A341613: Characteristic function for A341615: a(n) = 1 if sigma(n) < 2n < A003961(n), otherwise 0.

Offset 1, canonical program `A341613.P13588315821913618762`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252742, A294934, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A341613 (n : ℕ) : ℤ :=
  A341613.P13588315821913618762.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252742, A294934, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A341613.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A341614.P8767637196583140370

`lt[0, A341612(n+1)]+1`
-/

namespace A341614.P8767637196583140370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341612 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A341614.P8767637196583140370

noncomputable section

/-- A341614: Numbers k such that sigma(k) <= 2k < A003961(k).

Offset 1, canonical program `A341614.P8767637196583140370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341614 (n : ℕ) : ℤ :=
  (A341614.P8767637196583140370.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341614.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341615.P5668791556833203135

`lt[0, A341613(n+1)]+1`
-/

namespace A341615.P5668791556833203135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341613 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A341615.P5668791556833203135

noncomputable section

/-- A341615: Numbers k for which sigma(k) < 2k < A003961(k).

Offset 1, canonical program `A341615.P5668791556833203135`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341615 (n : ℕ) : ℤ :=
  (A341615.P5668791556833203135.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341615.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342667.P311384965998967573

`A006530(A342664(A003961(n+1)))`
-/

namespace A342667.P311384965998967573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A342664 (A003961 (n + 1)).toNat).toNat

end

end A342667.P311384965998967573

noncomputable section

/-- A342667: Largest prime in the numerator of ratio A341528(n)/A341529(n) (when presented in its lowest terms).

Offset 1, canonical program `A342667.P311384965998967573`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A006530, A342664, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A342667 (n : ℕ) : ℤ :=
  A342667.P311384965998967573.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A006530, A342664, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A342667.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342671.P9094584972548148984

`gcd(A000203(n+1), A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A342671.P9094584972548148984
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A003961 (n + 1))

end

end A342671.P9094584972548148984

noncomputable section

/-- A342671: a(n) = gcd(sigma(n), A003961(n)), where A003961 is fully multiplicative with a(prime(k)) = prime(k+1), and sigma is the sum of divisors of n.

Offset 1, canonical program `A342671.P9094584972548148984`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342671 (n : ℕ) : ℤ :=
  (A342671.P9094584972548148984.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342671.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342672.P15066052163271616691

`lcm(A000203(n+1), A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A342672.P15066052163271616691
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000203 (n + 1)) (A003961 (n + 1))

end

end A342672.P15066052163271616691

noncomputable section

/-- A342672: a(n) = lcm(sigma(n), A003961(n)), where A003961 is fully multiplicative with a(prime(k)) = prime(k+1), and sigma is the sum of divisors of n.

Offset 1, canonical program `A342672.P15066052163271616691`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342672 (n : ℕ) : ℤ :=
  (A342672.P15066052163271616691.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342672.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342673.P1726266034278384680

`gcd(n+1, A000203(A003961(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A342673.P1726266034278384680
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A000203 (A003961 (n + 1)).toNat)

end

end A342673.P1726266034278384680

noncomputable section

/-- A342673: a(n) = gcd(n, sigma(A003961(n))), where A003961 is fully multiplicative with a(prime(k)) = prime(k+1), and sigma is the sum of divisors of n.

Offset 1, canonical program `A342673.P1726266034278384680`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342673 (n : ℕ) : ℤ :=
  (A342673.P1726266034278384680.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342673.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A344587.P4180067790187357523

`2*A003961(n+1)-A000203(A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A344587.P4180067790187357523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003961 (n + 1) - A000203 (A003961 (n + 1)).toNat

end

end A344587.P4180067790187357523

noncomputable section

/-- A344587: Deficiency of prime-shifted n: a(n) = 2*A003961(n) - sigma(A003961(n)).

Offset 1, canonical program `A344587.P4180067790187357523`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A344587 (n : ℕ) : ℤ :=
  A344587.P4180067790187357523.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A344587.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A346234.P13693537449081961436

`A008683(n+1)*A003961(n+1)`
-/

namespace A346234.P13693537449081961436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A003961 (n + 1)

end

end A346234.P13693537449081961436

noncomputable section

/-- A346234: Dirichlet inverse of A003961, where A003961(n) is fully multiplicative with a(prime(k)) = prime(k+1).

Offset 1, canonical program `A346234.P13693537449081961436`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A346234 (n : ℕ) : ℤ :=
  A346234.P13693537449081961436.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A346234.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A346249.P5829520662776676678

`∑{d}[n+1, A007427(#)*A286385((n+1)/#)]`
-/

namespace A346249.P5829520662776676678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A286385 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A346249.P5829520662776676678

noncomputable section

/-- A346249: Möbius transform of A337549.

Offset 1, canonical program `A346249.P5829520662776676678`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346249 (n : ℕ) : ℤ :=
  A346249.P5829520662776676678.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346249.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347100.P3607054361798720330

`A000010(A003961(n+1))-A000010(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A347100.P3607054361798720330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A003961 (n + 1)).toNat - A000010 (n + 1)

end

end A347100.P3607054361798720330

noncomputable section

/-- A347100: a(n) = phi(A003961(n)) - phi(n), where A003961 is the prime shift towards larger primes, and phi is Euler totient function.

Offset 1, canonical program `A347100.P3607054361798720330`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347100 (n : ℕ) : ℤ :=
  A347100.P3607054361798720330.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347100.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347102.P1098781808414285661

`A001414(A003961(n+1))-A001414(n+1)`
-/

namespace A347102.P1098781808414285661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A003961 (n + 1)).toNat - A001414 (n + 1)

end

end A347102.P1098781808414285661

noncomputable section

/-- A347102: Totally additive with a(prime(k)) = A001223(k), where A001223 gives the distance from the k-th prime to the next larger prime.

Offset 1, canonical program `A347102.P1098781808414285661`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347102 (n : ℕ) : ℤ :=
  A347102.P1098781808414285661.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347102.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347124.P4032395562247059847

`∑{d}[n+1, A008683((n+1)/#)*A341528(#)]`
-/

namespace A347124.P4032395562247059847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A341528 d

end

end A347124.P4032395562247059847

noncomputable section

/-- A347124: Möbius transform of A341528, n * sigma(A003961(n)).

Offset 1, canonical program `A347124.P4032395562247059847`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341528, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347124 (n : ℕ) : ℤ :=
  A347124.P4032395562247059847.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341528, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347124.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347125.P15966228704101149299

`∑{d}[n+1, A008683((n+1)/#)*A341529(#)]`
-/

namespace A347125.P15966228704101149299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A341529 d

end

end A347125.P15966228704101149299

noncomputable section

/-- A347125: Möbius transform of A341529, sigma(n) * A003961(n).

Offset 1, canonical program `A347125.P15966228704101149299`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341529, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347125 (n : ℕ) : ℤ :=
  A347125.P15966228704101149299.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341529, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347125.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347136.P16490261635518515868

`∑{d}[n+1, #*A003961((n+1)/#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A347136.P16490261635518515868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A003961 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347136.P16490261635518515868

noncomputable section

/-- A347136: a(n) = Sum_{d|n} d * A003961(n/d), where A003961 shifts the prime factorization of its argument one step towards larger primes.

Offset 1, canonical program `A347136.P16490261635518515868`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347136 (n : ℕ) : ℤ :=
  A347136.P16490261635518515868.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347136.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347137.P9582024218945356949

`∑{d}[n+1, A000010(#)*A003961((n+1)/#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A347137.P9582024218945356949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A003961 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347137.P9582024218945356949

noncomputable section

/-- A347137: a(n) = Sum_{d|n} phi(d) * A003961(n/d), where A003961 shifts the prime factorization of its argument one step towards larger primes, and phi is Euler totient function.

Offset 1, canonical program `A347137.P9582024218945356949`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347137 (n : ℕ) : ℤ :=
  A347137.P9582024218945356949.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347137.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347236.P7635325518416667712

`∑{d}[n+1, A061019(#)*A003961((n+1)/#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A347236.P7635325518416667712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061019 d * A003961 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347236.P7635325518416667712

noncomputable section

/-- A347236: a(n) = Sum_{d|n} A061019(d) * A003961(n/d), where A061019 negates the primes in the prime factorization, while A003961 shifts the factorization one step towards larger primes.

Offset 1, canonical program `A347236.P7635325518416667712`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347236 (n : ℕ) : ℤ :=
  A347236.P7635325518416667712.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347236.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347237.P462574376420904752

`∑{d}[n+1, A003972((n+1)/#)*A061019(#)]`
-/

namespace A347237.P462574376420904752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003972 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A061019 d

end

end A347237.P462574376420904752

noncomputable section

/-- A347237: Möbius transform of A347236.

Offset 1, canonical program `A347237.P462574376420904752`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003972, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347237 (n : ℕ) : ℤ :=
  A347237.P462574376420904752.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003972, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347237.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347238.P10622730690257648846

`∑{d}[A007947(n+1), #*A346234((n+1)/#)]`
-/

namespace A347238.P10622730690257648846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℤ) * A346234 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347238.P10622730690257648846

noncomputable section

/-- A347238: Dirichlet inverse of A347236.

Offset 1, canonical program `A347238.P10622730690257648846`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347238 (n : ℕ) : ℤ :=
  A347238.P10622730690257648846.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347238.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347239.P8303490879322250829

`A347236(n+1)+A347238(n+1)`
-/

namespace A347239.P8303490879322250829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347236 (n + 1) + A347238 (n + 1)

end

end A347239.P8303490879322250829

noncomputable section

/-- A347239: Sum of A347236 and its Dirichlet inverse.

Offset 1, canonical program `A347239.P8303490879322250829`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A347236, A347238, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A347239 (n : ℕ) : ℤ :=
  A347239.P8303490879322250829.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A347236, A347238, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A347239.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347964.P3060589955124461694

`gcd(A003415(n+1), A003961(n+1))`
-/

namespace A347964.P3060589955124461694
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003415 (n + 1)) (A003961 (n + 1))

end

end A347964.P3060589955124461694

noncomputable section

/-- A347964: Greatest common divisor of A003415 (arithmetic derivative) and A003961 (prime shift towards larger primes).

Offset 1, canonical program `A347964.P3060589955124461694`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347964 (n : ℕ) : ℤ :=
  (A347964.P3060589955124461694.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347964.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347965.P12359719817700726170

`∑{d}[n+1, A003415(#)*A003961((n+1)/#)]`
-/

namespace A347965.P12359719817700726170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003415 d * A003961 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347965.P12359719817700726170

noncomputable section

/-- A347965: Dirichlet convolution of A003415 (arithmetic derivative) with A003961 (prime shift towards larger primes).

Offset 1, canonical program `A347965.P12359719817700726170`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347965 (n : ℕ) : ℤ :=
  A347965.P12359719817700726170.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347965.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348509.P17820867973263177752

`A099377(A003961(n+1))`
-/

namespace A348509.P17820867973263177752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099377 (A003961 (n + 1)).toNat

end

end A348509.P17820867973263177752

noncomputable section

/-- A348509: a(n) is the numerator of the harmonic mean of the divisors of A003961(n).

Offset 1, canonical program `A348509.P17820867973263177752`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A099377, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348509 (n : ℕ) : ℤ :=
  A348509.P17820867973263177752.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A099377, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348509.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348736.P14809155913306220837

`n+1-A326042(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348736.P14809155913306220837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A326042 (n + 1)

end

end A348736.P14809155913306220837

noncomputable section

/-- A348736: a(n) = n - A326042(n), where A326042(n) = A064989(sigma(A003961(n))).

Offset 1, canonical program `A348736.P14809155913306220837`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326042, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348736 (n : ℕ) : ℤ :=
  A348736.P14809155913306220837.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326042, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348736.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348737.P4243854902440080733

`round(n/(A326042(n+1)+n))`
-/

namespace A348737.P4243854902440080733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / (A326042 (n + 1) + (n : ℤ) : ℚ))

end

end A348737.P4243854902440080733

noncomputable section

/-- A348737: a(n) = 1 if A326042(k) < k, otherwise 0.

Offset 1, canonical program `A348737.P4243854902440080733`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348737 (n : ℕ) : ℤ :=
  A348737.P4243854902440080733.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348738.P16981301963998914675

`lt[0, A348736(n+1)]+1`
-/

namespace A348738.P16981301963998914675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348736 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A348738.P16981301963998914675

noncomputable section

/-- A348738: Numbers k for which A326042(k) < k, where A326042(n) = A064989(sigma(A003961(n))).

Offset 1, canonical program `A348738.P16981301963998914675`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348738 (n : ℕ) : ℤ :=
  (A348738.P16981301963998914675.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348738.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348750.P7590902845171157499

`A064989(A064989(A000203(A003961(A003961(n+1)))))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348750.P7590902845171157499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A064989 (A000203 (A003961 (A003961 (n + 1)).toNat).toNat).toNat).toNat

end

end A348750.P7590902845171157499

noncomputable section

/-- A348750: a(n) = A064989(A064989(sigma(A003961(A003961(n))))), where A003961 shifts the prime factorization of n one step towards larger primes, and A064989 shifts it back towards smaller primes.

Offset 1, canonical program `A348750.P7590902845171157499`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A064989, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348750 (n : ℕ) : ℤ :=
  A348750.P7590902845171157499.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A064989, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348750.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348751.P9184779801574119865

`lt[A348750(n+1), n+1]+1`
-/

namespace A348751.P9184779801574119865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348750 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A348751.P9184779801574119865

noncomputable section

/-- A348751: Numbers k for which A348750(k) < k.

Offset 1, canonical program `A348751.P9184779801574119865`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9394 terms. -/
def A348751 (n : ℕ) : ℤ :=
  (A348751.P9184779801574119865.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9394 terms. -/
def A348751.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348752.P6744655593727144798

`lt[n+1, A348750(n+1)]+1`
-/

namespace A348752.P6744655593727144798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348750 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A348752.P6744655593727144798

noncomputable section

/-- A348752: Numbers k for which A348750(k) > k.

Offset 1, canonical program `A348752.P6744655593727144798`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 605 terms. -/
def A348752 (n : ℕ) : ℤ :=
  (A348752.P6744655593727144798.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 605 terms. -/
def A348752.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348937.P9014571055681436291

`A003961(n+1)-A003415(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348937.P9014571055681436291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) - A003415 (n + 1)

end

end A348937.P9014571055681436291

noncomputable section

/-- A348937: a(n) = A003961(n) - A003415(n), where A003961 shifts the prime factorization of n one step towards larger primes, and A003415 gives the arithmetic derivative of n.

Offset 1, canonical program `A348937.P9014571055681436291`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348937 (n : ℕ) : ℤ :=
  A348937.P9014571055681436291.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348937.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348940.P7101903597430363459

`gcd(n+1, A326042(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348940.P7101903597430363459
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A326042 (n + 1))

end

end A348940.P7101903597430363459

noncomputable section

/-- A348940: a(n) = gcd(n, A326042(n)), where A326042 is multiplicative function A064989(sigma(A003961(n))).

Offset 1, canonical program `A348940.P7101903597430363459`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326042, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348940 (n : ℕ) : ℤ :=
  (A348940.P7101903597430363459.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326042, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348940.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348941.P16476962796183016569

`(n+1)/A348940(n+1)`
-/

namespace A348941.P16476962796183016569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A348940 (n + 1) : ℚ)

end

end A348941.P16476962796183016569

noncomputable section

/-- A348941: a(n) = n / gcd(n, A326042(n)).

Offset 1, canonical program `A348941.P16476962796183016569`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348940, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348941 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348941.P16476962796183016569.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348940, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348941.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348942.P4298548663594448972

`A326042(n+1)/A348940(n+1)`
-/

namespace A348942.P4298548663594448972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326042 (n + 1) : ℚ) / (A348940 (n + 1) : ℚ)

end

end A348942.P4298548663594448972

noncomputable section

/-- A348942: a(n) = A326042(n) / gcd(n, A326042(n)).

Offset 1, canonical program `A348942.P4298548663594448972`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326042, A348940, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348942 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348942.P4298548663594448972.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326042, A348940, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348942.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348990.P9008814680679274139

`(n+1)/A322361(n+1)`
-/

namespace A348990.P9008814680679274139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A322361 (n + 1) : ℚ)

end

end A348990.P9008814680679274139

noncomputable section

/-- A348990: a(n) = n / gcd(n, A003961(n)), where A003961(n) is fully multiplicative function with a(prime(k)) = prime(k+1).

Offset 1, canonical program `A348990.P9008814680679274139`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A322361, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348990 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348990.P9008814680679274139.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A322361, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348990.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348992.P12661163686237205488

`A161942(n+1)/A342671(n+1)`
-/

namespace A348992.P12661163686237205488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161942 (n + 1) : ℚ) / (A342671 (n + 1) : ℚ)

end

end A348992.P12661163686237205488

noncomputable section

/-- A348992: a(n) = A000265(sigma(n)) / gcd(sigma(n), A003961(n)), where A003961(n) is fully multiplicative with a(prime(k)) = prime(k+1), and sigma is the sum of divisors function.

Offset 1, canonical program `A348992.P12661163686237205488`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A342671, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348992 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348992.P12661163686237205488.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A342671, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348992.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348993.P3859083894911945124

`A064989(A000203(n+1)/gcd(A000203(n+1), A003961(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348993.P3859083894911945124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (SequenceMachineLib.roundAway ((A000203 (n + 1) : ℚ) / (Int.gcd (A000203 (n + 1)) (A003961 (n + 1)) : ℚ))).toNat

end

end A348993.P3859083894911945124

noncomputable section

/-- A348993: a(n) = A064989(sigma(n) / gcd(sigma(n), A003961(n))), where A003961 shifts the prime factorization of n one step towards larger primes, while A064989 shifts it back towards smaller primes, and sigma is the sum of divisors function.

Offset 1, canonical program `A348993.P3859083894911945124`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A064989, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348993 (n : ℕ) : ℤ :=
  A348993.P3859083894911945124.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A064989, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348993.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348994.P10230310546806871422

`A319626(A003961(n+1))`
-/

namespace A348994.P10230310546806871422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319626 (A003961 (n + 1)).toNat

end

end A348994.P10230310546806871422

noncomputable section

/-- A348994: a(n) = A003961(n) / gcd(n, A003961(n)), where A003961(n) is fully multiplicative with a(prime(k)) = prime(k+1).

Offset 1, canonical program `A348994.P10230310546806871422`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A319626, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348994 (n : ℕ) : ℤ :=
  A348994.P10230310546806871422.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A319626, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348994.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349162.P4701200943170105662

`A000203(n+1)/A342671(n+1)`
-/

namespace A349162.P4701200943170105662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A342671 (n + 1) : ℚ)

end

end A349162.P4701200943170105662

noncomputable section

/-- A349162: a(n) = sigma(n) / gcd(sigma(n), A003961(n)), where A003961 shifts the prime factorization of n one step towards larger primes, and sigma is the sum of divisors function.

Offset 1, canonical program `A349162.P4701200943170105662`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A342671, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349162 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A349162.P4701200943170105662.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A342671, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349162.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349163.P5024977655063574088

`A064989(gcd(A000203(n+1), A003961(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A349163.P5024977655063574088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (Int.gcd (A000203 (n + 1)) (A003961 (n + 1)))

end

end A349163.P5024977655063574088

noncomputable section

/-- A349163: a(n) = A064989(gcd(sigma(n), A003961(n))), where A003961 shifts the prime factorization of n one step towards larger primes, while A064989 shifts it back towards smaller primes, and sigma is the sum of divisors function.

Offset 1, canonical program `A349163.P5024977655063574088`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A064989, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349163 (n : ℕ) : ℤ :=
  A349163.P5024977655063574088.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A064989, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349163.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349164.P10379583617981606493

`A064989(A003961(n+1)/gcd(A000203(n+1), A003961(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A349164.P10379583617981606493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (SequenceMachineLib.roundAway ((A003961 (n + 1) : ℚ) / (Int.gcd (A000203 (n + 1)) (A003961 (n + 1)) : ℚ))).toNat

end

end A349164.P10379583617981606493

noncomputable section

/-- A349164: a(n) = A064989(A003961(n) / gcd(sigma(n), A003961(n))), where A003961 shifts the prime factorization of n one step towards larger primes, while A064989 shifts it back towards smaller primes, and sigma is the sum of divisors function.

Offset 1, canonical program `A349164.P10379583617981606493`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A064989, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349164 (n : ℕ) : ℤ :=
  A349164.P10379583617981606493.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A064989, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349164.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349165.P4867618242033618851

`record[A349164(n+1)]`
-/

namespace A349165.P4867618242033618851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349164 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349165.P4867618242033618851

noncomputable section

/-- A349165: Numbers k such that sigma(k) and A003961(k) are relatively prime, where A003961(n) is fully multiplicative function with a(prime(k)) = prime(k+1).

Offset 1, canonical program `A349165.P4867618242033618851`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349165 (n : ℕ) : ℤ :=
  A349165.P4867618242033618851.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349165.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349166.P6858630224343966779

`lt[1, A349163(n+1)]+1`
-/

namespace A349166.P6858630224343966779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349163 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A349166.P6858630224343966779

noncomputable section

/-- A349166: Numbers k such that sigma(k) and A003961(k) share a prime factor, where A003961(n) is fully multiplicative function with a(prime(k)) = prime(k+1).

Offset 1, canonical program `A349166.P6858630224343966779`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349166 (n : ℕ) : ℤ :=
  (A349166.P6858630224343966779.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349166.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349167.P11335047326877026590

`floor(1/A349163(n+1))`
-/

namespace A349167.P11335047326877026590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A349163 (n + 1) : ℚ)⌋

end

end A349167.P11335047326877026590

noncomputable section

/-- A349167: a(n) = 1 if sigma(n) and A003961(n) are relatively prime, otherwise 0.

Offset 1, canonical program `A349167.P11335047326877026590`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349167 (n : ℕ) : ℤ :=
  A349167.P11335047326877026590.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349167.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349381.P14765012378016904530

`∑{d}[n+1, A003961((n+1)/#)*A349125(#)]`
-/

namespace A349381.P14765012378016904530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003961 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A349125 d

end

end A349381.P14765012378016904530

noncomputable section

/-- A349381: Dirichlet convolution of A003961 with A349125 (Dirichlet inverse of A064989), where A003961 and A064989 are fully multiplicative sequences that shift the prime factorization of n one step towards larger and smaller primes respectively.

Offset 1, canonical program `A349381.P14765012378016904530`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A349125, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349381 (n : ℕ) : ℤ :=
  A349381.P14765012378016904530.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A349125, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349381.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349382.P6298685267400545813

`∑{d}[n+1, A064989((n+1)/#)*A346234(#)]`
-/

namespace A349382.P6298685267400545813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A064989 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A346234 d

end

end A349382.P6298685267400545813

noncomputable section

/-- A349382: Dirichlet convolution of A064989 with A346234 (Dirichlet inverse of A003961), where A003961 and A064989 are fully multiplicative sequences that shift the prime factorization of n one step towards larger and smaller primes respectively.

Offset 1, canonical program `A349382.P6298685267400545813`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064989, A346234, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349382 (n : ℕ) : ℤ :=
  A349382.P6298685267400545813.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064989, A346234, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349382.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349383.P13419108071231034251

`A349381(n+1)+A349382(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A349383.P13419108071231034251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349381 (n + 1) + A349382 (n + 1)

end

end A349383.P13419108071231034251

noncomputable section

/-- A349383: a(n) = A349381(n) + A349382(n).

Offset 1, canonical program `A349383.P13419108071231034251`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349381, A349382, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349383 (n : ℕ) : ℤ :=
  A349383.P13419108071231034251.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349381, A349382, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349383.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349385.P17904619834223845789

`∑{d}[n+1, A048673((n+1)/#)*A346234(#)]`
-/

namespace A349385.P17904619834223845789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048673 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A346234 d

end

end A349385.P17904619834223845789

noncomputable section

/-- A349385: Dirichlet convolution of A048673 with the Dirichlet inverse of A003961, where A003961 is fully multiplicative with a(p) = nextprime(p), and A048673(n) = (1+A003961(n))/2.

Offset 1, canonical program `A349385.P17904619834223845789`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, A346234, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349385 (n : ℕ) : ℤ :=
  A349385.P17904619834223845789.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, A346234, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349385.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349387.P635470215585400653

`∑{d}[n+1, A003961((n+1)/#)*A055615(#)]`
-/

namespace A349387.P635470215585400653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003961 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A055615 d

end

end A349387.P635470215585400653

noncomputable section

/-- A349387: Dirichlet convolution of A003961 with A055615 (Dirichlet inverse of n), where A003961 is fully multiplicative with a(p) = nextprime(p).

Offset 1, canonical program `A349387.P635470215585400653`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349387 (n : ℕ) : ℤ :=
  A349387.P635470215585400653.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349387.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349388.P677895676119621301

`∑{d}[n+1, #*A346234((n+1)/#)]`
-/

namespace A349388.P677895676119621301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A346234 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349388.P677895676119621301

noncomputable section

/-- A349388: Dirichlet convolution of A000027 with A346234 (Dirichlet inverse of A003961), where A003961 is fully multiplicative with a(p) = nextprime(p).

Offset 1, canonical program `A349388.P677895676119621301`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A346234, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349388 (n : ℕ) : ℤ :=
  A349388.P677895676119621301.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A346234, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349388.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349389.P17688454280443951021

`A349387(n+1)+A349388(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A349389.P17688454280443951021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349387 (n + 1) + A349388 (n + 1)

end

end A349389.P17688454280443951021

noncomputable section

/-- A349389: a(n) = A349387(n) + A349388(n).

Offset 1, canonical program `A349389.P17688454280443951021`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349387, A349388, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349389 (n : ℕ) : ℤ :=
  A349389.P17688454280443951021.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349387, A349388, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349389.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349624.P9806452003791796394

`∑{d}[n+1, A055615(#)*A326042((n+1)/#)]`
-/

namespace A349624.P9806452003791796394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A326042 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349624.P9806452003791796394

noncomputable section

/-- A349624: Dirichlet convolution of A326042 with A055615 (Dirichlet inverse of n), where A326042(n) = A064989(sigma(A003961(n))).

Offset 1, canonical program `A349624.P9806452003791796394`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326042, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349624 (n : ℕ) : ℤ :=
  A349624.P9806452003791796394.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326042, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349624.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349626.P14679777532921365945

`∑{d}[n+1, A008683((n+1)/#)*A326042(#)]`
-/

namespace A349626.P14679777532921365945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A326042 d

end

end A349626.P14679777532921365945

noncomputable section

/-- A349626: Möbius transform of A326042, where A326042(n) = A064989(sigma(A003961(n))).

Offset 1, canonical program `A349626.P14679777532921365945`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326042, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349626 (n : ℕ) : ℤ :=
  A349626.P14679777532921365945.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326042, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349626.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349633.P10035930798907062347

`lcm(n+1, A349387(n+1))/(n+1)`
-/

namespace A349633.P10035930798907062347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A349387 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A349633.P10035930798907062347

noncomputable section

/-- A349633: Numerators of the Möbius transform of ratio A003961(n)/n.

Offset 1, canonical program `A349633.P10035930798907062347`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349633 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A349633.P10035930798907062347.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349633.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349634.P1580182829586287684

`(n+1)/gcd(n+1, A349387(n+1))`
-/

namespace A349634.P1580182829586287684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A349387 (n + 1)) : ℚ)

end

end A349634.P1580182829586287684

noncomputable section

/-- A349634: Denominators of the Möbius transform of ratio A003961(n)/n.

Offset 1, canonical program `A349634.P1580182829586287684`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349634 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A349634.P1580182829586287684.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349754.P17371990951714144222

`A000010(A003961(n+1))-2*A000010(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A349754.P17371990951714144222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A003961 (n + 1)).toNat - 2 * A000010 (n + 1)

end

end A349754.P17371990951714144222

noncomputable section

/-- A349754: a(n) = phi(A003961(n)) - 2*phi(n), where A003961 is fully multiplicative with a(p) = nextprime(p), and phi is Euler totient function.

Offset 1, canonical program `A349754.P17371990951714144222`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349754 (n : ℕ) : ℤ :=
  A349754.P17371990951714144222.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349754.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349756.P8922585120578040547

`eq[1, A348993(n+1)]+1`
-/

namespace A349756.P8922585120578040547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348993 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A349756.P8922585120578040547

noncomputable section

/-- A349756: Numbers k such that the odd part of sigma(k) is equal to gcd(sigma(k), A003961(k)), where A003961 is fully multiplicative with a(p) = nextprime(p), and sigma is the sum of divisors function.

Offset 1, canonical program `A349756.P8922585120578040547`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. -/
def A349756 (n : ℕ) : ℤ :=
  (A349756.P8922585120578040547.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. -/
def A349756.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349905.P349339303286256503

`A003415(A003961(n+1))`
-/

namespace A349905.P349339303286256503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A003961 (n + 1)).toNat

end

end A349905.P349339303286256503

noncomputable section

/-- A349905: Arithmetic derivative of A003961(n), where A003961 is fully multiplicative with a(p) = nextprime(p).

Offset 1, canonical program `A349905.P349339303286256503`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349905 (n : ℕ) : ℤ :=
  A349905.P349339303286256503.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349905.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A350071.P10781101784728709574

`gcd(A000203((n+1)²), A003961((n+1)²))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A350071.P10781101784728709574
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 ((n + 1) ^ 2)) (A003961 ((n + 1) ^ 2))

end

end A350071.P10781101784728709574

noncomputable section

/-- A350071: a(n) = gcd(sigma(n^2), A003961(n^2)), where A003961 shifts the prime factorization of n one step towards larger primes, and sigma is the sum of divisors function.

Offset 1, canonical program `A350071.P10781101784728709574`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350071 (n : ℕ) : ℤ :=
  (A350071.P10781101784728709574.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350071.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A350072.P17523638723638629591

`A349162((n+1)²)`
-/

namespace A350072.P17523638723638629591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349162 ((n + 1) ^ 2)

end

end A350072.P17523638723638629591

noncomputable section

/-- A350072: a(n) = sigma(n^2) / gcd(sigma(n^2), A003961(n^2)), where A003961 shifts the prime factorization of n one step towards larger primes, and sigma is the sum of divisors function.

Offset 1, canonical program `A350072.P17523638723638629591`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349162, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350072 (n : ℕ) : ℤ :=
  A350072.P17523638723638629591.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349162, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350072.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351449.P13924172491932163526

`A064989(A295294(A003961(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A351449.P13924172491932163526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A295294 (A003961 (n + 1)).toNat).toNat

end

end A351449.P13924172491932163526

noncomputable section

/-- A351449: a(n) = A064989(A295294(A003961(n))).

Offset 1, canonical program `A351449.P13924172491932163526`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A064989, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351449 (n : ℕ) : ℤ :=
  A351449.P13924172491932163526.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A064989, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351449.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351450.P4010795598885041516

`A064989(A048250(A003961(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A351450.P4010795598885041516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A048250 (A003961 (n + 1)).toNat).toNat

end

end A351450.P4010795598885041516

noncomputable section

/-- A351450: a(n) = A064989(A048250(A003961(n))).

Offset 1, canonical program `A351450.P4010795598885041516`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A064989, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351450 (n : ℕ) : ℤ :=
  A351450.P4010795598885041516.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A064989, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351450.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351451.P11572919348595548671

`A064989(A092261(A003961(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A351451.P11572919348595548671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A092261 (A003961 (n + 1)).toNat).toNat

end

end A351451.P11572919348595548671

noncomputable section

/-- A351451: a(n) = A064989(A092261(A003961(n))).

Offset 1, canonical program `A351451.P11572919348595548671`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A064989, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351451 (n : ℕ) : ℤ :=
  A351451.P11572919348595548671.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A064989, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351451.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351455.P6293380018795775580

`A064989(A001615(A003961(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A351455.P6293380018795775580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A001615 (A003961 (n + 1)).toNat).toNat

end

end A351455.P6293380018795775580

noncomputable section

/-- A351455: a(n) = A064989(A001615(A003961(n))).

Offset 1, canonical program `A351455.P6293380018795775580`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A064989, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351455 (n : ℕ) : ℤ :=
  A351455.P6293380018795775580.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A064989, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351455.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351456.P7640681049922300523

`A003958(A000203(A003961(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A351456.P7640681049922300523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A000203 (A003961 (n + 1)).toNat).toNat

end

end A351456.P7640681049922300523

noncomputable section

/-- A351456: a(n) = A003958(sigma(A003961(n))), where A003958 is multiplicative with a(p^e) = (p-1)^e, A003961 multiplicative with a(prime(k)^e) = prime(1+k)^e, and sigma is the sum of divisors function.

Offset 1, canonical program `A351456.P7640681049922300523`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, A003961, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351456 (n : ℕ) : ℤ :=
  A351456.P7640681049922300523.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, A003961, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351456.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351457.P4852068756587702856

`A351456(n+1)-A339905(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A351457.P4852068756587702856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351456 (n + 1) - A339905 (n + 1)

end

end A351457.P4852068756587702856

noncomputable section

/-- A351457: a(n) = A351456(n) - A339905(n).

Offset 1, canonical program `A351457.P4852068756587702856`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A339905, A351456, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351457 (n : ℕ) : ℤ :=
  A351457.P4852068756587702856.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A339905, A351456, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351457.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351544.P15377189541473253501

`gcd(A045967(n+1)²², A000203(n+1))`
-/

namespace A351544.P15377189541473253501
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((A045967 (n + 1) ^ 2) ^ 2) (A000203 (n + 1))

end

end A351544.P15377189541473253501

noncomputable section

/-- A351544: a(n) is the largest unitary divisor of sigma(n) such that its every prime factor also divides A003961(n), where A003961 is fully multiplicative with a(p) = nextprime(p), and sigma is the sum of divisors function.

Offset 1, canonical program `A351544.P15377189541473253501`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351544 (n : ℕ) : ℤ :=
  (A351544.P15377189541473253501.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351544.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351546.P8277132408193178014

`A000203(n+1)/A351544(n+1)`
-/

namespace A351546.P8277132408193178014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A351544 (n + 1) : ℚ)

end

end A351546.P8277132408193178014

noncomputable section

/-- A351546: a(n) is the largest unitary divisor of sigma(n) coprime with A003961(n), where A003961 is fully multiplicative with a(p) = nextprime(p), and sigma is the sum of divisors function.

Offset 1, canonical program `A351546.P8277132408193178014`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351544, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351546 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A351546.P8277132408193178014.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351544, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351546.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353571.P3686160422925873902

`A342001(A003961(n+1))`
-/

namespace A353571.P3686160422925873902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342001 (A003961 (n + 1)).toNat

end

end A353571.P3686160422925873902

noncomputable section

/-- A353571: Prime-shifted variant of A342001: a(n) = A349905(n) / A003557(A003961(n)).

Offset 1, canonical program `A353571.P3686160422925873902`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353571 (n : ℕ) : ℤ :=
  A353571.P3686160422925873902.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353571.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353638.P14021207844737996786

`A000035(n+1)*A348737(A064989(n+1))`
-/

namespace A353638.P14021207844737996786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) * A348737 (A064989 (n + 1)).toNat

end

end A353638.P14021207844737996786

noncomputable section

/-- A353638: a(n) = 1 if n is odd and A064989(sigma(n)) < A064989(n), otherwise 0. Here A064989 shifts the prime factorization one step towards lower primes, and sigma is the sum of divisors function.

Offset 1, canonical program `A353638.P14021207844737996786`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064989, A348737, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353638 (n : ℕ) : ℤ :=
  A353638.P14021207844737996786.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064989, A348737, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353638.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353639.P13459626096142204888

`char[eq[A266437(n), A353638(n+1)]]`
-/

namespace A353639.P13459626096142204888
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266437 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353638 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A353639.P13459626096142204888

noncomputable section

/-- A353639: a(n) = 1 if n is odd and A064989(sigma(n)) > A064989(n), otherwise 0. Here A064989 shifts the prime factorization one step towards lower primes, and sigma is the sum of divisors function.

Offset 1, canonical program `A353639.P13459626096142204888`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9925 terms. -/
def A353639 (n : ℕ) : ℤ :=
  (A353639.P13459626096142204888.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9925 terms. -/
def A353639.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353666.P3692679567967800425

`gcd(n+1, A351546(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A353666.P3692679567967800425
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A351546 (n + 1))

end

end A353666.P3692679567967800425

noncomputable section

/-- A353666: a(n) = gcd(n, A351546(n)).

Offset 1, canonical program `A353666.P3692679567967800425`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351546, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353666 (n : ℕ) : ℤ :=
  (A353666.P3692679567967800425.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351546, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353666.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353667.P4254365963197736758

`(n+1)/A353666(n+1)`
-/

namespace A353667.P4254365963197736758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A353666 (n + 1) : ℚ)

end

end A353667.P4254365963197736758

noncomputable section

/-- A353667: a(n) = n / gcd(n, A351546(n)).

Offset 1, canonical program `A353667.P4254365963197736758`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353666, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353667 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A353667.P4254365963197736758.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353666, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353667.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353668.P18386353074867683989

`A351546(n+1)/gcd(n+1, A351546(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A353668.P18386353074867683989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351546 (n + 1) : ℚ) / (Int.gcd (n + 1 : ℤ) (A351546 (n + 1)) : ℚ)

end

end A353668.P18386353074867683989

noncomputable section

/-- A353668: a(n) = A351546(n) / gcd(n, A351546(n)).

Offset 1, canonical program `A353668.P18386353074867683989`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351546, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353668 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A353668.P18386353074867683989.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351546, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353668.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353767.P7050124266410233937

`A000010(A000203(A003961(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A353767.P7050124266410233937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000203 (A003961 (n + 1)).toNat).toNat

end

end A353767.P7050124266410233937

noncomputable section

/-- A353767: a(n) = phi(sigma(A003961(n))), where A003961 is fully multiplicative with a(p) = nextprime(p).

Offset 1, canonical program `A353767.P7050124266410233937`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353767 (n : ℕ) : ℤ :=
  A353767.P7050124266410233937.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353767.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353789.P12522694346514914050

`(n+1)*A003972(n+1)`
-/

namespace A353789.P12522694346514914050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A003972 (n + 1)

end

end A353789.P12522694346514914050

noncomputable section

/-- A353789: Multiplicative with a(p^e) = (q - 1) * q^(e-1) * p^e, where q is the least prime greater than p.

Offset 1, canonical program `A353789.P12522694346514914050`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003972, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353789 (n : ℕ) : ℤ :=
  A353789.P12522694346514914050.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003972, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353789.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353790.P899187651485767110

`A353749(A000203(A003961(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A353790.P899187651485767110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353749 (A000203 (A003961 (n + 1)).toNat).toNat

end

end A353790.P899187651485767110

noncomputable section

/-- A353790: a(n) = A353749(sigma(A003961(n))), where A353749(k) = phi(k) * A064989(k), and A064989 shifts the prime factorization one step towards lower primes, while A003961 shifts the factorization one step towards higher primes.

Offset 1, canonical program `A353790.P899187651485767110`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A353749, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353790 (n : ℕ) : ℤ :=
  A353790.P899187651485767110.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A353749, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353790.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353793.P14606764899847862273

`(n+1)*A339905(n+1)`
-/

namespace A353793.P14606764899847862273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A339905 (n + 1)

end

end A353793.P14606764899847862273

noncomputable section

/-- A353793: Multiplicative with a(p^e) = ((q-1)*p)^e, where q is the least prime larger than p.

Offset 1, canonical program `A353793.P14606764899847862273`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A339905, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353793 (n : ℕ) : ℤ :=
  A353793.P14606764899847862273.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A339905, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353793.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353794.P6907123585398419223

`A353791(A000203(A003961(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A353794.P6907123585398419223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353791 (A000203 (A003961 (n + 1)).toNat).toNat

end

end A353794.P6907123585398419223

noncomputable section

/-- A353794: a(n) = A353791(sigma(A003961(n))), where A353791(n) = A003958(n) * A064989(n).

Offset 1, canonical program `A353794.P6907123585398419223`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A353791, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353794 (n : ℕ) : ℤ :=
  A353794.P6907123585398419223.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A353791, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353794.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A354195.P18136762875265386675

`A064989(A000203(A000203(A003961(n+1))))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A354195.P18136762875265386675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A000203 (A000203 (A003961 (n + 1)).toNat).toNat).toNat

end

end A354195.P18136762875265386675

noncomputable section

/-- A354195: a(n) = A064989(sigma(sigma(A003961(n)))), where A003961 shifts the prime factorization one step towards larger primes, and A064989 shifts it back towards smaller primes.

Offset 1, canonical program `A354195.P18136762875265386675`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A064989, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A354195 (n : ℕ) : ℤ :=
  A354195.P18136762875265386675.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A064989, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A354195.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A354196.P12893256437602308760

`A064989(A064989(A000203(A000203(A003961(A003961(n+1))))))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A354196.P12893256437602308760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A064989 (A000203 (A000203 (A003961 (A003961 (n + 1)).toNat).toNat).toNat).toNat).toNat

end

end A354196.P12893256437602308760

noncomputable section

/-- A354196: a(n) = A064989(A064989(sigma(sigma(A003961(A003961(n)))))), where A003961 shifts the prime factorization of n one step towards larger primes, and A064989 shifts it back towards smaller primes.

Offset 1, canonical program `A354196.P12893256437602308760`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A064989, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A354196 (n : ℕ) : ℤ :=
  A354196.P12893256437602308760.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A064989, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A354196.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A354197.P10444904739021847792

`A064989(A000203(A000203(A000203(A003961(n+1)))))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A354197.P10444904739021847792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A000203 (A000203 (A000203 (A003961 (n + 1)).toNat).toNat).toNat).toNat

end

end A354197.P10444904739021847792

noncomputable section

/-- A354197: a(n) = A064989(sigma(sigma(sigma(A003961(n))))), where A003961 shifts the prime factorization one step towards larger primes, and A064989 shifts it back towards smaller primes.

Offset 1, canonical program `A354197.P10444904739021847792`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A064989, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A354197 (n : ℕ) : ℤ :=
  A354197.P10444904739021847792.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A064989, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A354197.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A354198.P6367835848595341422

`A064989(A064989(A000203(A000203(A000203(A003961(A003961(n+1)))))))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A354198.P6367835848595341422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A064989 (A000203 (A000203 (A000203 (A003961 (A003961 (n + 1)).toNat).toNat).toNat).toNat).toNat).toNat

end

end A354198.P6367835848595341422

noncomputable section

/-- A354198: a(n) = A064989(A064989(sigma(sigma(sigma(A003961(A003961(n))))))), where A003961 shifts the prime factorization of n one step towards larger primes, and A064989 shifts it back towards smaller primes.

Offset 1, canonical program `A354198.P6367835848595341422`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A064989, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A354198 (n : ℕ) : ℤ :=
  A354198.P6367835848595341422.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A064989, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A354198.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A354346.P4007007454875220424

`2*(n+1)-A064989(A000203(A000203(A003961(n+1))))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A354346.P4007007454875220424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A064989 (A000203 (A000203 (A003961 (n + 1)).toNat).toNat).toNat

end

end A354346.P4007007454875220424

noncomputable section

/-- A354346: a(n) = 2*n - A064989(sigma(sigma(A003961(n)))), where A003961 shifts the prime factorization one step towards larger primes, and A064989 shifts it back towards smaller primes.

Offset 1, canonical program `A354346.P4007007454875220424`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A064989, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A354346 (n : ℕ) : ℤ :=
  A354346.P4007007454875220424.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A064989, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A354346.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A355932.P15465957735796783743

`gcd(A000203(n+1), A000203(A003961(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A355932.P15465957735796783743
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A000203 (A003961 (n + 1)).toNat)

end

end A355932.P15465957735796783743

noncomputable section

/-- A355932: a(n) = gcd(sigma(n), sigma(A003961(n))), where A003961 is fully multiplicative with a(p) = nextprime(p).

Offset 1, canonical program `A355932.P15465957735796783743`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A355932 (n : ℕ) : ℤ :=
  (A355932.P15465957735796783743.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A355932.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A355933.P2830370768041058507

`A003973(n+1)/A355932(n+1)`
-/

namespace A355933.P2830370768041058507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003973 (n + 1) : ℚ) / (A355932 (n + 1) : ℚ)

end

end A355933.P2830370768041058507

noncomputable section

/-- A355933: a(n) = A003973(n) / gcd(sigma(n), A003973(n)), where A003973(n) = sigma(A003961(n)) and A003961 is fully multiplicative with a(p) = nextprime(p).

Offset 1, canonical program `A355933.P2830370768041058507`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003973, A355932, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A355933 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A355933.P2830370768041058507.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003973, A355932, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A355933.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A355934.P12025855991431582106

`A000203(n+1)/A355932(n+1)`
-/

namespace A355934.P12025855991431582106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A355932 (n + 1) : ℚ)

end

end A355934.P12025855991431582106

noncomputable section

/-- A355934: a(n) = sigma(n) / gcd(sigma(n), sigma(A003961(n))), where A003961 is fully multiplicative with a(p) = nextprime(p), and sigma is the sum of divisors function.

Offset 1, canonical program `A355934.P12025855991431582106`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A355932, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A355934 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A355934.P12025855991431582106.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A355932, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A355934.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A355940.P3503418342827386624

`A063524(A355934(n+1))`
-/

namespace A355940.P3503418342827386624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A355934 (n + 1)).toNat

end

end A355940.P3503418342827386624

noncomputable section

/-- A355940: a(n) = 1 if A003973(n) is a multiple of A000203(n), otherwise 0.

Offset 1, canonical program `A355940.P3503418342827386624`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355940 (n : ℕ) : ℤ :=
  A355940.P3503418342827386624.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355940.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355941.P5058088448507230669

`eq[1, A355940(n+1)]+1`
-/

namespace A355941.P5058088448507230669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355940 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A355941.P5058088448507230669

noncomputable section

/-- A355941: Numbers k such that A003973(k) is a multiple of A000203(k).

Offset 1, canonical program `A355941.P5058088448507230669`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A355941 (n : ℕ) : ℤ :=
  (A355941.P5058088448507230669.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A355941.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355942.P8093612167510493976

`lt[(n+1)%A326042(n+1), 1]+1`
-/

namespace A355942.P8093612167510493976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A326042 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A355942.P8093612167510493976

noncomputable section

/-- A355942: Numbers k such that k is a multiple of A326042(k).

Offset 1, canonical program `A355942.P8093612167510493976`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 156 terms. -/
def A355942 (n : ℕ) : ℤ :=
  (A355942.P8093612167510493976.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 156 terms. -/
def A355942.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355946.P7479184387596826010

`floor(1/A348993(n+1))`
-/

namespace A355946.P7479184387596826010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A348993 (n + 1) : ℚ)⌋

end

end A355946.P7479184387596826010

noncomputable section

/-- A355946: a(n) = 1 if the odd part of sigma(k) divides A003961(k), otherwise 0, where A003961 is fully multiplicative with a(p) = nextprime(p), and sigma is the sum of divisors function.

Offset 1, canonical program `A355946.P7479184387596826010`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355946 (n : ℕ) : ℤ :=
  A355946.P7479184387596826010.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355946.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357852.P15360889113800815709

`A003961(A003961(n+1))`
-/

namespace A357852.P15360889113800815709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A003961 (n + 1)).toNat

end

end A357852.P15360889113800815709

noncomputable section

/-- A357852: Replace prime(k) with prime(k+2) in the prime factorization of n.

Offset 1, canonical program `A357852.P15360889113800815709`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A357852 (n : ℕ) : ℤ :=
  A357852.P15360889113800815709.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A357852.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A358750.P15552411444014869718

`A353494(A003961(n+1))`
-/

namespace A358750.P15552411444014869718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353494 (A003961 (n + 1)).toNat

end

end A358750.P15552411444014869718

noncomputable section

/-- A358750: a(n) = 1 if A349905(n) is a multiple of 4, otherwise 0. Here A349905(n) is the arithmetic derivative applied to the prime shifted n.

Offset 1, canonical program `A358750.P15552411444014869718`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A353494, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358750 (n : ℕ) : ℤ :=
  A358750.P15552411444014869718.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A353494, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358750.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A358751.P1149310267110724188

`A358771(A003961(n+1))`
-/

namespace A358751.P1149310267110724188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358771 (A003961 (n + 1)).toNat

end

end A358751.P1149310267110724188

noncomputable section

/-- A358751: a(n) = 1 if bigomega(n) == 1 (mod 4), otherwise 0.

Offset 1, canonical program `A358751.P1149310267110724188`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A358771, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358751 (n : ℕ) : ℤ :=
  A358751.P1149310267110724188.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A358771, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358751.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A358752.P5898709040952930086

`A065043(n+1)-A358750(n+1)`
-/

namespace A358752.P5898709040952930086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (n + 1) - A358750 (n + 1)

end

end A358752.P5898709040952930086

noncomputable section

/-- A358752: a(n) = 1 if A349905(n) == 2 (mod 4), otherwise 0. Here A349905(n) is the arithmetic derivative applied to the prime shifted n.

Offset 1, canonical program `A358752.P5898709040952930086`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A358750, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358752 (n : ℕ) : ℤ :=
  A358752.P5898709040952930086.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A358750, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358752.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A358753.P12282633013976382741

`A066829(n+1)-A358751(n+1)`
-/

namespace A358753.P12282633013976382741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066829 (n + 1) - A358751 (n + 1)

end

end A358753.P12282633013976382741

noncomputable section

/-- A358753: a(n) = 1 if bigomega(n) == 3 (mod 4), otherwise 0.

Offset 1, canonical program `A358753.P12282633013976382741`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A358751, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358753 (n : ℕ) : ℤ :=
  A358753.P12282633013976382741.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A358751, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358753.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A358760.P11879687346543983601

`lt[0, A358750(n+1)]+1`
-/

namespace A358760.P11879687346543983601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358750 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A358760.P11879687346543983601

noncomputable section

/-- A358760: Numbers k for which A349905(k) is a multiple of 4, where A349905(k) is the arithmetic derivative applied to the prime shifted k.

Offset 1, canonical program `A358760.P11879687346543983601`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358760 (n : ℕ) : ℤ :=
  (A358760.P11879687346543983601.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358760.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358761.P14181454647241698145

`eq[1, A358751(n+1)]+1`
-/

namespace A358761.P14181454647241698145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358751 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A358761.P14181454647241698145

noncomputable section

/-- A358761: Numbers k for which bigomega(k) == 1 (mod 4).

Offset 1, canonical program `A358761.P14181454647241698145`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358761 (n : ℕ) : ℤ :=
  (A358761.P14181454647241698145.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358761.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358762.P10521575438364069808

`lt[0, A358752(n+1)]+1`
-/

namespace A358762.P10521575438364069808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358752 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A358762.P10521575438364069808

noncomputable section

/-- A358762: Numbers k for which A349905(k) == 2 (mod 4), where A349905(k) is the arithmetic derivative applied to the prime shifted k.

Offset 1, canonical program `A358762.P10521575438364069808`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358762 (n : ℕ) : ℤ :=
  (A358762.P10521575438364069808.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358762.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358763.P9425270982903074007

`lt[0, A358753(n+1)]+1`
-/

namespace A358763.P9425270982903074007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358753 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A358763.P9425270982903074007

noncomputable section

/-- A358763: Numbers k for which bigomega(k) == 3 (mod 4).

Offset 1, canonical program `A358763.P9425270982903074007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358763 (n : ℕ) : ℤ :=
  (A358763.P9425270982903074007.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358763.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359600.P6656112842617839429

`A003961(A046523(n+1))`
-/

namespace A359600.P6656112842617839429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A046523 (n + 1)).toNat

end

end A359600.P6656112842617839429

noncomputable section

/-- A359600: The least odd number with the same prime signature as n.

Offset 1, canonical program `A359600.P6656112842617839429`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A046523, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A359600 (n : ℕ) : ℤ :=
  A359600.P6656112842617839429.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A046523, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A359600.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A360130.P786476217289508092

`A010054(A003961(n+1))`
-/

namespace A360130.P786476217289508092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A003961 (n + 1)).toNat

end

end A360130.P786476217289508092

noncomputable section

/-- A360130: a(n) = 1 if A003961(n) is a triangular number, otherwise 0, where A003961 is fully multiplicative with a(p) = nextprime(p).

Offset 1, canonical program `A360130.P786476217289508092`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360130 (n : ℕ) : ℤ :=
  A360130.P786476217289508092.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360130.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A361466.P10349165119579873074

`A361465(A003961(n+1))`
-/

namespace A361466.P10349165119579873074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361465 (A003961 (n + 1)).toNat

end

end A361466.P10349165119579873074

noncomputable section

/-- A361466: a(n) = 1 if A017665(A003961(n)) is a power of 2, otherwise 0. Here A017665 is the numerator of the sum of the reciprocals of the divisors of n, and A003961 is fully multiplicative with a(p) = nextprime(p).

Offset 1, canonical program `A361466.P10349165119579873074`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A361465, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A361466 (n : ℕ) : ℤ :=
  A361466.P10349165119579873074.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A361465, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A361466.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A361467.P1126770566628793567

`A003961(n+1)*A000203(A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A361467.P1126770566628793567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) * A000203 (A003961 (n + 1)).toNat

end

end A361467.P1126770566628793567

noncomputable section

/-- A361467: a(n) = A003961(n) * sigma(A003961(n)), where A003961 is fully multiplicative with a(p) = nextprime(p), and sigma is the sum of divisors function.

Offset 1, canonical program `A361467.P1126770566628793567`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A361467 (n : ℕ) : ℤ :=
  A361467.P1126770566628793567.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A361467.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A361468.P13798965541341440440

`A249670(A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A361468.P13798965541341440440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249670 (A003961 (n + 1)).toNat

end

end A361468.P13798965541341440440

noncomputable section

/-- A361468: a(n) = A249670(A003961(n)).

Offset 1, canonical program `A361468.P13798965541341440440`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A249670, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A361468 (n : ℕ) : ℤ :=
  A361468.P13798965541341440440.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A249670, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A361468.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A361469.P8533097627306347180

`A001222(A249670(A003961(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A361469.P8533097627306347180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A249670 (A003961 (n + 1)).toNat).toNat

end

end A361469.P8533097627306347180

noncomputable section

/-- A361469: a(n) = bigomega(A249670(A003961(n))).

Offset 1, canonical program `A361469.P8533097627306347180`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A249670, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A361469 (n : ℕ) : ℤ :=
  A361469.P8533097627306347180.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A249670, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A361469.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372565.P13754156096294323452

`gcd(n+1, A326057(n+1))`
-/

namespace A372565.P13754156096294323452
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A326057 (n + 1))

end

end A372565.P13754156096294323452

noncomputable section

/-- A372565: a(n) is the greatest common divisor of n, sigma(n) and A003961(n), where A003961(n) is fully multiplicative function with a(prime(i)) = prime(i+1).

Offset 1, canonical program `A372565.P13754156096294323452`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372565 (n : ℕ) : ℤ :=
  (A372565.P13754156096294323452.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372565.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372566.P10239918502240805923

`lt[1, A372565(n+1)]+1`
-/

namespace A372566.P10239918502240805923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372565 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A372566.P10239918502240805923

noncomputable section

/-- A372566: Numbers k such that k, sigma(k) and A003961(k) have a common divisor larger than 1, where A003961(n) is fully multiplicative function with a(prime(i)) = prime(i+1).

Offset 1, canonical program `A372566.P10239918502240805923`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8327 terms. -/
def A372566 (n : ℕ) : ℤ :=
  (A372566.P10239918502240805923.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8327 terms. -/
def A372566.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372567.P13528077420289210032

`filter[A372566(n+1), A324908(#)]`
-/

namespace A372567.P13528077420289210032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372566 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A372567.P13528077420289210032

noncomputable section

/-- A372567: Odd numbers k such that k, sigma(k) and A003961(k) have a common divisor larger than 1, where A003961(n) is fully multiplicative function with a(prime(i)) = prime(i+1).

Offset 1, canonical program `A372567.P13528077420289210032`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 972 terms. -/
def A372567 (n : ℕ) : ℤ :=
  A372567.P13528077420289210032.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 972 terms. -/
def A372567.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374130.P6626531398769690699

`A099777(A293442(n+1))%2`
-/

namespace A374130.P6626531398769690699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099777 (A293442 (n + 1)).toNat) 2

end

end A374130.P6626531398769690699

noncomputable section

/-- A374130: a(n) = 1 if bitwise-XOR of the exponents of primes in the prime factorization of n is equal to 1, otherwise 0.

Offset 1, canonical program `A374130.P6626531398769690699`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374130 (n : ℕ) : ℤ :=
  A374130.P6626531398769690699.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374130.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377984.P6847932780309628605

`2*A000203(n+1)-A003961(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A377984.P6847932780309628605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000203 (n + 1) - A003961 (n + 1)

end

end A377984.P6847932780309628605

noncomputable section

/-- A377984: a(n) = 2*sigma(n) - A003961(n), where sigma is the sum of divisors function and A003961 is fully multiplicative function with a(prime(i)) = prime(i+1).

Offset 1, canonical program `A377984.P6847932780309628605`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A377984 (n : ℕ) : ℤ :=
  A377984.P6847932780309628605.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A377984.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A377985.P6249672595049724567

`2*(n+1)-A000010(A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A377985.P6249672595049724567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A000010 (A003961 (n + 1)).toNat

end

end A377985.P6249672595049724567

noncomputable section

/-- A377985: a(n) = 2*n - phi(A003961(n)), where phi is Euler totient function and A003961 is fully multiplicative function with a(prime(i)) = prime(i+1).

Offset 1, canonical program `A377985.P6249672595049724567`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A377985 (n : ℕ) : ℤ :=
  A377985.P6249672595049724567.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A377985.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378220.P1471173532227017870

`A023900(A003961(n+1))`
-/

namespace A378220.P1471173532227017870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023900 (A003961 (n + 1)).toNat

end

end A378220.P1471173532227017870

noncomputable section

/-- A378220: Dirichlet inverse of phi(A003961(n)), where A003961 is fully multiplicative function with a(prime(i)) = prime(i+1).

Offset 1, canonical program `A378220.P1471173532227017870`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378220 (n : ℕ) : ℤ :=
  A378220.P1471173532227017870.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378220.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378221.P4388743736498616945

`A046692(A003961(n+1))`
-/

namespace A378221.P4388743736498616945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046692 (A003961 (n + 1)).toNat

end

end A378221.P4388743736498616945

noncomputable section

/-- A378221: Dirichlet inverse of sigma(A003961(n)), where A003961 is fully multiplicative function with a(prime(i)) = prime(i+1).

Offset 1, canonical program `A378221.P4388743736498616945`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378221 (n : ℕ) : ℤ :=
  A378221.P4388743736498616945.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378221.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378228.P13007534797453819210

`(n+1)*A378221(n+1)`
-/

namespace A378228.P13007534797453819210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A378221 (n + 1)

end

end A378228.P13007534797453819210

noncomputable section

/-- A378228: Dirichlet inverse of A341528, where A341528(n) = n * sigma(A003961(n)), and A003961 is fully multiplicative with a(prime(i)) = prime(i+1).

Offset 1, canonical program `A378228.P13007534797453819210`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378228 (n : ℕ) : ℤ :=
  A378228.P13007534797453819210.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378228.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378229.P3491273019573870571

`∑{d}[n+1, A349388(#)*A378228((n+1)/#)]`
-/

namespace A378229.P3491273019573870571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349388 d * A378228 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378229.P3491273019573870571

noncomputable section

/-- A378229: Dirichlet inverse of A341529, where A341529(n) = sigma(n) * A003961(n), and A003961 is fully multiplicative with a(prime(i)) = prime(i+1).

Offset 1, canonical program `A378229.P3491273019573870571`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378229 (n : ℕ) : ℤ :=
  A378229.P3491273019573870571.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378229.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378231.P16466067974621006118

`2*A003961((n+1)²)-A000203(A003961((n+1)²))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A378231.P16466067974621006118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003961 ((n + 1) ^ 2) - A000203 (A003961 ((n + 1) ^ 2)).toNat

end

end A378231.P16466067974621006118

noncomputable section

/-- A378231: Deficiency of prime-shifted squares: a(n) = 2*A003961(n^2) - sigma(A003961(n^2)), where A003961 is fully multiplicative function with a(prime(i)) = prime(i+1).

Offset 1, canonical program `A378231.P16466067974621006118`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378231 (n : ℕ) : ℤ :=
  A378231.P16466067974621006118.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378231.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378606.P1824987261939307766

`∑{d}[n+1, A008683(#)*A349387((n+1)/#)]`
-/

namespace A378606.P1824987261939307766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A349387 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378606.P1824987261939307766

noncomputable section

/-- A378606: Dirichlet convolution of A046692 and A003961, where A046692 is the Dirichlet inverse of sigma, and A003961 is fully multiplicative with a(prime(i)) = prime(i+1).

Offset 1, canonical program `A378606.P1824987261939307766`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349387, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378606 (n : ℕ) : ℤ :=
  A378606.P1824987261939307766.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349387, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378606.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378607.P10144459662400142962

`∑{d}[n+1, A349388(#)]`
-/

namespace A378607.P10144459662400142962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349388 d

end

end A378607.P10144459662400142962

noncomputable section

/-- A378607: Dirichlet convolution of sigma and the Dirichlet inverse of A003961 (A346234).

Offset 1, canonical program `A378607.P10144459662400142962`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349388, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378607 (n : ℕ) : ℤ :=
  A378607.P10144459662400142962.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349388, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378607.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378662.P11219609030214075406

`∑{d}[n+1, A341612(#)]`
-/

namespace A378662.P11219609030214075406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A341612 d

end

end A378662.P11219609030214075406

noncomputable section

/-- A378662: Number of divisors d of n such that sigma(d) <= 2*d < A003961(d), where A003961 is fully multiplicative with a(p) = nextprime(p).

Offset 1, canonical program `A378662.P11219609030214075406`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341612, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378662 (n : ℕ) : ℤ :=
  A378662.P11219609030214075406.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341612, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378662.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378663.P6986709549582363223

`A378662(n+1)-A080225(n+1)`
-/

namespace A378663.P6986709549582363223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378662 (n + 1) - A080225 (n + 1)

end

end A378663.P6986709549582363223

noncomputable section

/-- A378663: Number of divisors d of n such that sigma(d) < 2*d < A003961(d), where A003961 is fully multiplicative with a(p) = nextprime(p).

Offset 1, canonical program `A378663.P6986709549582363223`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080225, A378662, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A378663 (n : ℕ) : ℤ :=
  A378663.P6986709549582363223.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080225, A378662, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A378663.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378752.P11355063342536478967

`2*A000203(n+1)-A000203(A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A378752.P11355063342536478967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000203 (n + 1) - A000203 (A003961 (n + 1)).toNat

end

end A378752.P11355063342536478967

noncomputable section

/-- A378752: a(n) = 2*sigma(n) - sigma(A003961(n)), where A003961 is fully multiplicative with a(prime(i)) = prime(i+1).

Offset 1, canonical program `A378752.P11355063342536478967`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378752 (n : ℕ) : ℤ :=
  A378752.P11355063342536478967.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378752.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378981.P13160010712622335556

`(A003961(n+1)-A000203(n+1))%(A003961(n+1)-2*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A378981.P13160010712622335556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003961 (n + 1) - A000203 (n + 1)) (A003961 (n + 1) - (2 * (n + 1) : ℤ))

end

end A378981.P13160010712622335556

noncomputable section

/-- A378981: a(n) = (A003961(n)-sigma(n)) mod (A003961(n)-2*n), where A003961 is fully multiplicative with a(prime(i)) = prime(i+1).

Offset 1, canonical program `A378981.P13160010712622335556`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378981 (n : ℕ) : ℤ :=
  A378981.P13160010712622335556.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378981.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378982.P16224066309314701461

`(A003961(n+1)-(1+A000203(n+1)))%(A003961(n+1)-2*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A378982.P16224066309314701461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003961 (n + 1) - (1 + A000203 (n + 1))) (A003961 (n + 1) - (2 * (n + 1) : ℤ))

end

end A378982.P16224066309314701461

noncomputable section

/-- A378982: a(n) = (A003961(n)-(1+sigma(n))) mod (A003961(n)-2*n), where A003961 is fully multiplicative with a(prime(i)) = prime(i+1).

Offset 1, canonical program `A378982.P16224066309314701461`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378982 (n : ℕ) : ℤ :=
  A378982.P16224066309314701461.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378982.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378983.P7472048348520994614

`lt[A378982(n+1), 1]+1`
-/

namespace A378983.P7472048348520994614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378982 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A378983.P7472048348520994614

noncomputable section

/-- A378983: Numbers k such that (A003961(k)-2*k) divides (A003961(k)-(1+sigma(k))), where A003961 is fully multiplicative with a(prime(i)) = prime(i+1), and sigma is the sum of divisors function.

Offset 1, canonical program `A378983.P7472048348520994614`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 549 terms. -/
def A378983 (n : ℕ) : ℤ :=
  (A378983.P7472048348520994614.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 549 terms. -/
def A378983.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378985.P6789501297804054790

`A336835(2*(n+1))`
-/

namespace A378985.P6789501297804054790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336835 (2 * (n + 1))

end

end A378985.P6789501297804054790

noncomputable section

/-- A378985: Number of iterations of x -> A003961(x) needed before the result is deficient, when starting from x = 2*n.

Offset 1, canonical program `A378985.P6789501297804054790`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336835, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378985 (n : ℕ) : ℤ :=
  A378985.P6789501297804054790.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336835, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378985.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379238.P6108513974028893075

`∑{p}[A286385(n+1), C(#, A286385(n+1))]`
-/

namespace A379238.P6108513974028893075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286385 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.choose p (A286385 (n + 1)).toNat

end

end A379238.P6108513974028893075

noncomputable section

/-- A379238: a(n) = 1 if A003961(n)-sigma(n) is prime, otherwise 0, where A003961 is fully multiplicative with a(prime(i)) = prime(i+1), and sigma is the sum of divisors function.

Offset 1, canonical program `A379238.P6108513974028893075`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A379238 (n : ℕ) : ℤ :=
  (A379238.P6108513974028893075.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A379238.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379239.P5876762698172527924

`eq[1, A379238(n+1)]+1`
-/

namespace A379239.P5876762698172527924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379238 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A379239.P5876762698172527924

noncomputable section

/-- A379239: Numbers k for which A003961(k)-sigma(k) is prime, where A003961 is fully multiplicative with a(prime(i)) = prime(i+1), and sigma is the sum of divisors function.

Offset 1, canonical program `A379239.P5876762698172527924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379239 (n : ℕ) : ℤ :=
  (A379239.P5876762698172527924.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379239.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379475.P17972878585057408840

`A008454(n)%A372565(n+1)`
-/

namespace A379475.P17972878585057408840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008454 n) (A372565 (n + 1))

end

end A379475.P17972878585057408840

noncomputable section

/-- A379475: a(n) = 1 if A372565(n) > 1, otherwise 0, where A372565(n) is the greatest common divisor of n, sigma(n) and A003961(n).

Offset 1, canonical program `A379475.P17972878585057408840`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379475 (n : ℕ) : ℤ :=
  A379475.P17972878585057408840.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379475.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379476.P18000588626381920064

`A008949(A048298(n))%A326057(n+1)`
-/

namespace A379476.P18000588626381920064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008949 (A048298 n).toNat) (A326057 (n + 1))

end

end A379476.P18000588626381920064

noncomputable section

/-- A379476: a(n) = 1 if A326057(n) > 1, otherwise 0, where A326057(n) = gcd(A003961(n)-2n, A003961(n)-sigma(n)).

Offset 1, canonical program `A379476.P18000588626381920064`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379476 (n : ℕ) : ℤ :=
  A379476.P18000588626381920064.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379476.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379477.P18262352817358248504

`eq[1, A379476(n+1)]+1`
-/

namespace A379477.P18262352817358248504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379476 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A379477.P18262352817358248504

noncomputable section

/-- A379477: Numbers k such that A003961(k)-2k and A003961(k)-sigma(k) have a common divisor > 1, where A003961 is fully multiplicative with a(prime(i)) = prime(i+1), and sigma is the sum of divisors function.

Offset 1, canonical program `A379477.P18262352817358248504`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379477 (n : ℕ) : ℤ :=
  (A379477.P18262352817358248504.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379478.P7624876134946239236

`A379476(n+1)-A379475(n+1)`
-/

namespace A379478.P7624876134946239236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379476 (n + 1) - A379475 (n + 1)

end

end A379478.P7624876134946239236

noncomputable section

/-- A379478: a(n) = 1 if the greatest common divisor of n, sigma(n) and A003961(n) is 1 and gcd(A003961(n)-2n, A003961(n)-sigma(n)) > 1, otherwise 0.

Offset 1, canonical program `A379478.P7624876134946239236`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A379475, A379476, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A379478 (n : ℕ) : ℤ :=
  A379478.P7624876134946239236.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A379475, A379476, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A379478.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379479.P310701363561203726

`eq[1, A379478(n+1)]+1`
-/

namespace A379479.P310701363561203726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379478 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A379479.P310701363561203726

noncomputable section

/-- A379479: Numbers k such that the greatest common divisor of k, sigma(k) and A003961(k) is 1 and gcd(A003961(k)-2k, A003961(k)-sigma(k)) > 1.

Offset 1, canonical program `A379479.P310701363561203726`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4816 terms. -/
def A379479 (n : ℕ) : ℤ :=
  (A379479.P310701363561203726.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4816 terms. -/
def A379479.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379482.P7552146915512457481

`A000203(A003961((n+1)²))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A379482.P7552146915512457481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A003961 ((n + 1) ^ 2)).toNat

end

end A379482.P7552146915512457481

noncomputable section

/-- A379482: a(n) = sigma(A003961(n^2)), where A003961 is fully multiplicative with a(prime(i)) = prime(i+1), and sigma is the sum of divisors function.

Offset 1, canonical program `A379482.P7552146915512457481`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379482 (n : ℕ) : ℤ :=
  A379482.P7552146915512457481.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379482.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379483.P10370958527501415734

`A007814(1+A379482(n+1))`
-/

namespace A379483.P10370958527501415734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (1 + A379482 (n + 1)).toNat

end

end A379483.P10370958527501415734

noncomputable section

/-- A379483: a(n) is the number of trailing 1-bits in the binary representation of sigma(A003961(n^2)), where A003961 is fully multiplicative with a(prime(i)) = prime(i+1), and sigma is the sum of divisors function.

Offset 1, canonical program `A379483.P10370958527501415734`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A379482, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379483 (n : ℕ) : ℤ :=
  A379483.P10370958527501415734.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A379482, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379483.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A383686.P10838272820652633482

`A003961(A383685(n+1))`
-/

namespace A383686.P10838272820652633482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A383685 (n + 1)).toNat

end

end A383686.P10838272820652633482

noncomputable section

/-- A383686: The greater of two consecutive primes whose gap equals the difference between their digital roots.

Offset 1, canonical program `A383686.P10838272820652633482`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 383 terms. -/
def A383686 (n : ℕ) : ℤ :=
  A383686.P10838272820652633482.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 383 terms. -/
def A383686.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A388975.P12312812905887415776

`A033885(A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A388975.P12312812905887415776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033885 (A003961 (n + 1)).toNat

end

end A388975.P12312812905887415776

noncomputable section

/-- A388975: a(n) = A033885(A003961(n)), where A033885(n) = 3*n-sigma(n), and A003961 is fully multiplicative with a(p) = nextprime(p).

Offset 1, canonical program `A388975.P12312812905887415776`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A388975 (n : ℕ) : ℤ :=
  A388975.P12312812905887415776.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A388975.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A388976.P9323048198730537457

`A033885(n+1)*A003961(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A388976.P9323048198730537457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033885 (n + 1) * A003961 (n + 1)

end

end A388976.P9323048198730537457

noncomputable section

/-- A388976: a(n) = A033885(n) * A003961(n), where A033885(n) = 3*n-sigma(n), and A003961 is fully multiplicative with a(p) = nextprime(p).

Offset 1, canonical program `A388976.P9323048198730537457`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A388976 (n : ℕ) : ℤ :=
  A388976.P9323048198730537457.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A388976.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A388977.P2451326477071846566

`(n+1)*A033885(A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A388977.P2451326477071846566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A033885 (A003961 (n + 1)).toNat

end

end A388977.P2451326477071846566

noncomputable section

/-- A388977: a(n) = n * A033885(A003961(n)), where A033885(n) = 3*n-sigma(n), and A003961 is fully multiplicative with a(p) = nextprime(p).

Offset 1, canonical program `A388977.P2451326477071846566`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A388977 (n : ℕ) : ℤ :=
  A388977.P2451326477071846566.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A388977.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A388978.P10471211982599907514

`(n+1-A007913(n+1))*(A000203(A003961(n+1))-A007913(A003961(n+1))-A003961(n+1))`
-/

namespace A388978.P10471211982599907514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A007913 (n + 1)) * (A000203 (A003961 (n + 1)).toNat - A007913 (A003961 (n + 1)).toNat - A003961 (n + 1))

end

end A388978.P10471211982599907514

noncomputable section

/-- A388978: a(n) = A326128(n) * A389077(n).

Offset 1, canonical program `A388978.P10471211982599907514`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A388978 (n : ℕ) : ℤ :=
  A388978.P10471211982599907514.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A388978.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A389076.P11407624223470191631

`A000203(A003961(n+1))-A007913(A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389076.P11407624223470191631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A003961 (n + 1)).toNat - A007913 (A003961 (n + 1)).toNat

end

end A389076.P11407624223470191631

noncomputable section

/-- A389076: Sum of all other divisors of primeshifted n except its squarefree part: a(n) = sigma(A003961(n)) - A007913(A003961(n)).

Offset 1, canonical program `A389076.P11407624223470191631`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389076 (n : ℕ) : ℤ :=
  A389076.P11407624223470191631.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389076.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A389077.P4480091173600006627

`A001065(A003961(n+1))-A007913(A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389077.P4480091173600006627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A003961 (n + 1)).toNat - A007913 (A003961 (n + 1)).toNat

end

end A389077.P4480091173600006627

noncomputable section

/-- A389077: Sum of all other proper divisors of primeshifted n except its squarefree part: a(n) = A001065(A003961(n)) - A007913(A003961(n)).

Offset 1, canonical program `A389077.P4480091173600006627`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389077 (n : ℕ) : ℤ :=
  A389077.P4480091173600006627.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389077.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A389078.P3318520002911063327

`A003961(n+1)-A007913(A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389078.P3318520002911063327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) - A007913 (A003961 (n + 1)).toNat

end

end A389078.P3318520002911063327

noncomputable section

/-- A389078: Primeshifted n minus its squarefree part: a(n) = A003961(n) - A007913(A003961(n)).

Offset 1, canonical program `A389078.P3318520002911063327`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389078 (n : ℕ) : ℤ :=
  A389078.P3318520002911063327.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389078.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A011948.P16276404241743664324

`A000046(n+6)-A056513(n+6)`
-/

namespace A011948.P16276404241743664324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000046 (n + 6) - A056513 (n + 6)

end

end A011948.P16276404241743664324

noncomputable section

/-- A011948: Number of Barlow packings with group P63mc that repeat after 2n layers.

Offset 6, canonical program `A011948.P16276404241743664324`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000046, A056513, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A011948 (n : ℕ) : ℤ :=
  A011948.P16276404241743664324.a (n - 6)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000046, A056513, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A011948.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A046312.P13847795307108156412

`filter[A358761(n+1), A373975(#)]`
-/

namespace A046312.P13847795307108156412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358761 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373975 (f1 j).toNat = 1) n)

end

end A046312.P13847795307108156412

noncomputable section

/-- A046312: Numbers that are divisible by exactly 9 primes with multiplicity.

Offset 1, canonical program `A046312.P13847795307108156412`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 279 terms. -/
def A046312 (n : ℕ) : ℤ :=
  A046312.P13847795307108156412.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 279 terms. -/
def A046312.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046314.P14099619161695556308

`∑{e}[A001248(n+1), #*A046312(n+1)]`
-/

namespace A046314.P14099619161695556308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p : ℤ) * A046312 (n + 1)

end

end A046314.P14099619161695556308

noncomputable section

/-- A046314: Numbers that are divisible by exactly 10 primes with multiplicity.

Offset 1, canonical program `A046314.P14099619161695556308`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A046314 (n : ℕ) : ℤ :=
  A046314.P14099619161695556308.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A046314.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086638.P13942084754070889199

`∩[A063037(n+1), A003714(n)]`
-/

namespace A086638.P13942084754070889199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086638.P13942084754070889199

noncomputable section

/-- A086638: Numbers with no 11 or 000 in their binary expansion.

Offset 0, canonical program `A086638.P13942084754070889199`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 463 terms. -/
def A086638 (n : ℕ) : ℤ :=
  (A086638.P13942084754070889199.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 463 terms. -/
def A086638.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122943.P845399076993296391

`A171435(lcm(gcd(8, 1-n²), A046314(n+1)))`
-/

namespace A122943.P845399076993296391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (Int.lcm (Int.gcd 8 (1 - (n ^ 2 : ℤ)) : ℤ) (A046314 (n + 1)))

end

end A122943.P845399076993296391

noncomputable section

/-- A122943: Odd numbers n ordered by n/2^BigOmega(n), where BigOmega(n) is the number of prime divisors of n with repetition.

Offset 1, canonical program `A122943.P845399076993296391`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 187 terms. -/
def A122943 (n : ℕ) : ℤ :=
  A122943.P845399076993296391.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 187 terms. -/
def A122943.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136037.P14371956938869211453

`comp[A063037(n+1)]`
-/

namespace A136037.P14371956938869211453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A136037.P14371956938869211453

noncomputable section

/-- A136037: Numbers with at least three adjacent equal digits in binary representation.

Offset 1, canonical program `A136037.P14371956938869211453`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136037 (n : ℕ) : ℤ :=
  (A136037.P14371956938869211453.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145387.P17092783934499524427

`A348937(p?[A046704(n+1)-2])`
-/

namespace A145387.P17092783934499524427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348937 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A145387.P17092783934499524427

noncomputable section

/-- A145387: Natural numbers n such that n-1 and n+1 are prime, also (sum of digits) + 1 and (sum of digits) - 1 is prime.

Offset 1, canonical program `A145387.P17092783934499524427`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. -/
def A145387 (n : ℕ) : ℤ :=
  A145387.P17092783934499524427.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. -/
def A145387.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179005.P14351113100697518095

`lt[A001414(A162341(n)), A349164(n+1)]`
-/

namespace A179005.P14351113100697518095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A162341 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349164 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A179005.P14351113100697518095

noncomputable section

/-- A179005: Indices of nonprime repunits: nonnegative numbers n such that 11...111 = (10^n - 1)/9 is composite.

Offset 1, canonical program `A179005.P14351113100697518095`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A179005 (n : ℕ) : ℤ :=
  (A179005.P14351113100697518095.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A179005.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179668.P1060642308713975282

`∩[A030636(n+1), A046312(n+1)]`
-/

namespace A179668.P1060642308713975282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179668.P1060642308713975282

noncomputable section

/-- A179668: Products of the 8th power of a prime and a distinct prime (p^8*q).

Offset 1, canonical program `A179668.P1060642308713975282`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 620 terms. -/
def A179668 (n : ℕ) : ℤ :=
  (A179668.P1060642308713975282.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 620 terms. -/
def A179668.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179692.P12959351430232493172

`∩[A030638(n+1), A046314(n+1)]`
-/

namespace A179692.P12959351430232493172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046314 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179692.P12959351430232493172

noncomputable section

/-- A179692: Numbers of the form p^9*q where p and q are distinct primes.

Offset 1, canonical program `A179692.P12959351430232493172`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 216 terms. -/
def A179692 (n : ℕ) : ℤ :=
  (A179692.P12959351430232493172.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 216 terms. -/
def A179692.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189975.P9063960867636367333

`filter[A048109(n+1), A358751(#)]`
-/

namespace A189975.P9063960867636367333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048109 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358751 (f1 j).toNat = 1) n)

end

end A189975.P9063960867636367333

noncomputable section

/-- A189975: Numbers with prime factorization pqr^3 for distinct p, q, r.

Offset 1, canonical program `A189975.P9063960867636367333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3526 terms. -/
def A189975 (n : ℕ) : ℤ :=
  A189975.P9063960867636367333.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3526 terms. -/
def A189975.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190469.P12605959260952500718

`A189975(n+1)²`
-/

namespace A190469.P12605959260952500718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189975 (n + 1) ^ 2

end

end A190469.P12605959260952500718

noncomputable section

/-- A190469: Numbers with prime factorization p^2*q^2*r^6 where p, q, and r are distinct primes.

Offset 1, canonical program `A190469.P12605959260952500718`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A190469 (n : ℕ) : ℤ :=
  A190469.P12605959260952500718.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A190469.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209617.P1536799303095268028

`filter[A209624(n+1), A379238(#)]`
-/

namespace A209617.P1536799303095268028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209624 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379238 (f1 j).toNat = 1) n)

end

end A209617.P1536799303095268028

noncomputable section

/-- A209617: Primes separated from their adjacent primes on both sides by a prime number of successive composites.

Offset 1, canonical program `A209617.P1536799303095268028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 706 terms. -/
def A209617 (n : ℕ) : ℤ :=
  A209617.P1536799303095268028.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 706 terms. -/
def A209617.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209623.P6270556564097260261

`p?[A379239(n+1)]`
-/

namespace A209623.P6270556564097260261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A209623.P6270556564097260261

noncomputable section

/-- A209623: Primes separated from their adjacent next primes by a prime number of successive composites.

Offset 1, canonical program `A209623.P6270556564097260261`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6756 terms. -/
def A209623 (n : ℕ) : ℤ :=
  A209623.P6270556564097260261.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6756 terms. -/
def A209623.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228445.P14846367572173528445

`p?[A063037(n+1)]`
-/

namespace A228445.P14846367572173528445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228445.P14846367572173528445

noncomputable section

/-- A228445: Prime numbers with a binary representation in which each digit is repeated at most twice.

Offset 1, canonical program `A228445.P14846367572173528445`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 935 terms. -/
def A228445 (n : ℕ) : ℤ :=
  A228445.P14846367572173528445.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 935 terms. -/
def A228445.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A233973.P1785584589492776699

`A232221(n+1)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A233973.P1785584589492776699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232221 (n + 1) : ℚ) / 4

end

end A233973.P1785584589492776699

noncomputable section

/-- A233973: a(n) = A232221(n)/4.

Offset 1, canonical program `A233973.P1785584589492776699`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A232221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A233973 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A233973.P1785584589492776699.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A232221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A233973.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A246351.P15656602069744410068

`lt[A336853(n+1), n]+1`
-/

namespace A246351.P15656602069744410068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336853 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A246351.P15656602069744410068

noncomputable section

/-- A246351: Numbers k such that A048673(k) < k.

Offset 1, canonical program `A246351.P15656602069744410068`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7569 terms. -/
def A246351 (n : ℕ) : ℤ :=
  (A246351.P15656602069744410068.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7569 terms. -/
def A246351.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246352.P420064894490892469

`lt[n, A336853(n+1)+1]+1`
-/

namespace A246352.P420064894490892469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336853 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A246352.P420064894490892469

noncomputable section

/-- A246352: Numbers n such that A048673(n) >= n.

Offset 1, canonical program `A246352.P420064894490892469`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8815 terms. -/
def A246352 (n : ℕ) : ℤ :=
  (A246352.P420064894490892469.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8815 terms. -/
def A246352.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265407.P516872660325429595

`A248663(A265408(n))`
-/

namespace A265407.P516872660325429595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248663 (A265408 n).toNat

end

end A265407.P516872660325429595

noncomputable section

/-- A265407: Spironacci-style recurrence: a(0)=0, a(1)=1, a(n) = 2*a(n) XOR a(A265409(n)).

Offset 0, canonical program `A265407.P516872660325429595`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A248663, A265408, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A265407 (n : ℕ) : ℤ :=
  A265407.P516872660325429595.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A248663, A265408, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A265407.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A268387.P5740070207597668771

`A248663(A293442(n+1))`
-/

namespace A268387.P5740070207597668771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248663 (A293442 (n + 1)).toNat

end

end A268387.P5740070207597668771

noncomputable section

/-- A268387: Bitwise-XOR of the exponents of primes in the prime factorization of n.

Offset 1, canonical program `A268387.P5740070207597668771`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268387 (n : ℕ) : ℤ :=
  A268387.P5740070207597668771.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268387.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284620.P13390262342659901568

`and(A063037(n+1), A134451(n))`
-/

namespace A284620.P13390262342659901568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A063037 (n + 1)) (A134451 n)

end

end A284620.P13390262342659901568

noncomputable section

/-- A284620: {00->2}-transform of the infinite Fibonacci word A003849.

Offset 1, canonical program `A284620.P13390262342659901568`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284620 (n : ℕ) : ℤ :=
  A284620.P13390262342659901568.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284620.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295891.P5603642694867004673

`1-A295892(n+1)`
-/

namespace A295891.P5603642694867004673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A295892 (n + 1)

end

end A295891.P5603642694867004673

noncomputable section

/-- A295891: a(n) = 1 if binary weights of n and A003961(n) are of the different parity, 0 otherwise; a(n) = A010060(n) XOR A010060(A003961(n)).

Offset 1, canonical program `A295891.P5603642694867004673`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A295892, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295891 (n : ℕ) : ℤ :=
  A295891.P5603642694867004673.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A295892, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295891.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A300820.P3089578665199204575

`a(A322361(n+1)-1)+1` with `a(0)=0, a(1)=1`
-/

namespace A300820.P3089578665199204575
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (A322361 (n + 1) - 1).toNat + 1

end

end A300820.P3089578665199204575

noncomputable section

/-- A300820: Length of the longest sequence of consecutive primes in the prime factorization of n. a(1) = 0.

Offset 1, canonical program `A300820.P3089578665199204575`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300820 (n : ℕ) : ℤ :=
  (A300820.P3089578665199204575.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300820.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323350.P17279732546742867967

`∪[A014613(n+1), A046312(n+1)]`
-/

namespace A323350.P17279732546742867967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A323350.P17279732546742867967

noncomputable section

/-- A323350: Nonprime numbers > 1 whose number of prime factors counted with multiplicity is a perfect square.

Offset 1, canonical program `A323350.P17279732546742867967`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323350 (n : ℕ) : ℤ :=
  (A323350.P17279732546742867967.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323350.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325160.P4590925138915238216

`filter[A319630(n+1), A008966(#)]`
-/

namespace A325160.P4590925138915238216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319630 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A325160.P4590925138915238216

noncomputable section

/-- A325160: Products of distinct, non-consecutive primes. Squarefree numbers not divisible by any two consecutive primes.

Offset 1, canonical program `A325160.P4590925138915238216`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6822 terms. -/
def A325160 (n : ℕ) : ℤ :=
  A325160.P4590925138915238216.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6822 terms. -/
def A325160.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325161.P4005082633071071506

`filter[A325160(n+1), A005171(#)]`
-/

namespace A325161.P4005082633071071506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325160 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A325161.P4005082633071071506

noncomputable section

/-- A325161: Nonprime squarefree numbers not divisible by any two consecutive primes.

Offset 1, canonical program `A325161.P4005082633071071506`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7797 terms. -/
def A325161 (n : ℕ) : ℤ :=
  A325161.P4005082633071071506.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7797 terms. -/
def A325161.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329647.P10763472955733118982

`A268387(A108951(n+1))`
-/

namespace A329647.P10763472955733118982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268387 (A108951 (n + 1)).toNat

end

end A329647.P10763472955733118982

noncomputable section

/-- A329647: Bitwise-XOR of exponents of prime factors of A108951(n), where A108951 is fully multiplicative with a(prime(i)) = prime(i)# = Product_{i=1..i} A000040(i).

Offset 1, canonical program `A329647.P10763472955733118982`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A108951, A268387, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A329647 (n : ℕ) : ℤ :=
  A329647.P10763472955733118982.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A108951, A268387, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A329647.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336697.P17251233940152722115

`A337337(A064216(n+1))`
-/

namespace A336697.P17251233940152722115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337337 (A064216 (n + 1)).toNat

end

end A336697.P17251233940152722115

noncomputable section

/-- A336697: a(n) = gcd((s+1)/2, 1+sigma(s)), where s is the n-th odd square, (2n-1)^2.

Offset 1, canonical program `A336697.P17251233940152722115`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336697 (n : ℕ) : ℤ :=
  A336697.P17251233940152722115.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336697.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336841.P2971694009307455037

`A336845(n+1)-A003973(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336841.P2971694009307455037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336845 (n + 1) - A003973 (n + 1)

end

end A336841.P2971694009307455037

noncomputable section

/-- A336841: Prime-shifted analog of A094471: a(n) = A336845(n) - A003973(n).

Offset 1, canonical program `A336841.P2971694009307455037`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003973, A336845, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336841 (n : ℕ) : ℤ :=
  A336841.P2971694009307455037.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003973, A336845, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336841.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336854.P17456032559665882968

`A336841(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336854.P17456032559665882968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336841 (n + 1) : ℚ) / 2

end

end A336854.P17456032559665882968

noncomputable section

/-- A336854: a(n) = A336841(n)/2.

Offset 1, canonical program `A336854.P17456032559665882968`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336841, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336854 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A336854.P17456032559665882968.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336841, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336854.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336931.P13387050893284357146

`A336932(n+1)-A295664(n+1)`
-/

namespace A336931.P13387050893284357146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336932 (n + 1) - A295664 (n + 1)

end

end A336931.P13387050893284357146

noncomputable section

/-- A336931: Difference between the 2-adic valuation of A003973(n) [= the sum of divisors of the prime shifted n] and the 2-adic valuation of the number of divisors of n.

Offset 1, canonical program `A336931.P13387050893284357146`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336932, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336931 (n : ℕ) : ℤ :=
  A336931.P13387050893284357146.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336932, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336931.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337345.P1594935461271935527

`A378662(n+1)+A080224(n+1)`
-/

namespace A337345.P1594935461271935527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378662 (n + 1) + A080224 (n + 1)

end

end A337345.P1594935461271935527

noncomputable section

/-- A337345: Number of divisors d of n for which A003961(d) > 2*d, where A003961 is fully multiplicative with a(p) = nextprime(p).

Offset 1, canonical program `A337345.P1594935461271935527`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080224, A378662, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337345 (n : ℕ) : ℤ :=
  A337345.P1594935461271935527.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080224, A378662, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337345.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337346.P2412165337189814597

`A337345(n+1)-A252742(n+1)`
-/

namespace A337346.P2412165337189814597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337345 (n + 1) - A252742 (n + 1)

end

end A337346.P2412165337189814597

noncomputable section

/-- A337346: Number of proper divisors d of n for which A003961(d) > 2*d.

Offset 1, canonical program `A337346.P2412165337189814597`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252742, A337345, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337346 (n : ℕ) : ℤ :=
  A337346.P2412165337189814597.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252742, A337345, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337346.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337372.P8743427394411133788

`eq[1, A337345(n+1)]+1`
-/

namespace A337372.P8743427394411133788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337345 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A337372.P8743427394411133788

noncomputable section

/-- A337372: Primitively primeshift-abundant numbers: Numbers that are included in A246282 (k with A003961(k) > 2k), but none of whose proper divisors are.

Offset 1, canonical program `A337372.P8743427394411133788`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 580 terms. -/
def A337372 (n : ℕ) : ℤ :=
  (A337372.P8743427394411133788.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 580 terms. -/
def A337372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337378.P2999023606348113318

`eq[1, A337380(n+1)]+1`
-/

namespace A337378.P2999023606348113318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337380 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A337378.P2999023606348113318

noncomputable section

/-- A337378: Numbers k for which A003961(k) > 2*sigma(k).

Offset 1, canonical program `A337378.P2999023606348113318`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337378 (n : ℕ) : ℤ :=
  (A337378.P2999023606348113318.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337378.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341512.P10028097722280494924

`A341529(n+1)-A341528(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A341512.P10028097722280494924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341529 (n + 1) - A341528 (n + 1)

end

end A341512.P10028097722280494924

noncomputable section

/-- A341512: a(n) = A341529(n) - A341528(n) = (sigma(n)*A003961(n)) - (n*sigma(A003961(n))).

Offset 1, canonical program `A341512.P10028097722280494924`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341528, A341529, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A341512 (n : ℕ) : ℤ :=
  A341512.P10028097722280494924.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341528, A341529, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A341512.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A341526.P14686975132241755555

`A341528(n+1)/A341530(n+1)`
-/

namespace A341526.P14686975132241755555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341528 (n + 1) : ℚ) / (A341530 (n + 1) : ℚ)

end

end A341526.P14686975132241755555

noncomputable section

/-- A341526: Numerator of ratio n*sigma(A003961(n)) / sigma(n)*A003961(n), where sigma is the sum of divisors of n, and A003961 shifts the prime factorization of n one step towards larger primes.

Offset 1, canonical program `A341526.P14686975132241755555`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341528, A341530, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A341526 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A341526.P14686975132241755555.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341528, A341530, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A341526.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A341527.P11918389594908135215

`A341529(n+1)/A341530(n+1)`
-/

namespace A341527.P11918389594908135215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341529 (n + 1) : ℚ) / (A341530 (n + 1) : ℚ)

end

end A341527.P11918389594908135215

noncomputable section

/-- A341527: Denominator of ratio n*sigma(A003961(n)) / sigma(n)*A003961(n), where sigma is the sum of divisors of n, and A003961 shifts the prime factorization of n one step towards larger primes.

Offset 1, canonical program `A341527.P11918389594908135215`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341529, A341530, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A341527 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A341527.P11918389594908135215.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341529, A341530, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A341527.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A341609.P17617703652232455812

`A063524(A337345(n+1))`
-/

namespace A341609.P17617703652232455812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A337345 (n + 1)).toNat

end

end A341609.P17617703652232455812

noncomputable section

/-- A341609: Characteristic function of A337372: a(n) = 1 if A337345(n) = 1, otherwise 0.

Offset 1, canonical program `A341609.P17617703652232455812`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341609 (n : ℕ) : ℤ :=
  A341609.P17617703652232455812.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341609.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341610.P5143080572522452525

`lt[1, A337345(n+1)]+1`
-/

namespace A341610.P5143080572522452525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337345 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A341610.P5143080572522452525

noncomputable section

/-- A341610: Nonprimitive terms of A246282: numbers k that have more than one divisor d|k such that A003961(d) > 2*d.

Offset 1, canonical program `A341610.P5143080572522452525`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341610 (n : ℕ) : ℤ :=
  (A341610.P5143080572522452525.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341611.P6987460228206011471

`lt[A341609(n+1), A341612(n+1)]+1`
-/

namespace A341611.P6987460228206011471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341609 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341612 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A341611.P6987460228206011471

noncomputable section

/-- A341611: Nonabundant numbers that are not primitive terms of A246282.

Offset 1, canonical program `A341611.P6987460228206011471`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341611 (n : ℕ) : ℤ :=
  (A341611.P6987460228206011471.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341611.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342668.P4029046594404538909

`A006530(A341527(n+1))`
-/

namespace A342668.P4029046594404538909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A341527 (n + 1)).toNat

end

end A342668.P4029046594404538909

noncomputable section

/-- A342668: Largest prime in the denominator of ratio A341528(n)/A341529(n) (when presented in its lowest terms).

Offset 1, canonical program `A342668.P4029046594404538909`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A341527, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A342668 (n : ℕ) : ℤ :=
  A342668.P4029046594404538909.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A341527, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A342668.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A346239.P8636144481431043210

`∑{d}[n+1, A008683((n+1)/#)*A341512(#)]`
-/

namespace A346239.P8636144481431043210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A341512 d

end

end A346239.P8636144481431043210

noncomputable section

/-- A346239: Möbius transform of A341512, sigma(n)*A003961(n) - n*sigma(A003961(n)).

Offset 1, canonical program `A346239.P8636144481431043210`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341512, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A346239 (n : ℕ) : ℤ :=
  A346239.P8636144481431043210.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341512, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A346239.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A346240.P13978465434129994439

`A341512(n+1)-A346239(n+1)`
-/

namespace A346240.P13978465434129994439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341512 (n + 1) - A346239 (n + 1)

end

end A346240.P13978465434129994439

noncomputable section

/-- A346240: Difference between A341512 and its Möbius transform.

Offset 1, canonical program `A346240.P13978465434129994439`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341512, A346239, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A346240 (n : ℕ) : ℤ :=
  A346240.P13978465434129994439.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341512, A346239, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A346240.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347121.P10777423432329443113

`A347136(n+1)-2*(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A347121.P10777423432329443113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347136 (n + 1) - (2 * (n + 1) : ℤ)

end

end A347121.P10777423432329443113

noncomputable section

/-- A347121: a(n) = A347136(n) - 2*n.

Offset 1, canonical program `A347121.P10777423432329443113`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A347136, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347121 (n : ℕ) : ℤ :=
  A347121.P10777423432329443113.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A347136, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347121.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347122.P16124771186689615703

`A347137(n+1)-2*A000010(n+1)`
-/

namespace A347122.P16124771186689615703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347137 (n + 1) - 2 * A000010 (n + 1)

end

end A347122.P16124771186689615703

noncomputable section

/-- A347122: Möbius transform of A347121.

Offset 1, canonical program `A347122.P16124771186689615703`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A347137, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347122 (n : ℕ) : ℤ :=
  A347122.P16124771186689615703.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A347137, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347122.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348749.P12973560767162091666

`filter[2*n+1, A353639(#)]`
-/

namespace A348749.P12973560767162091666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353639 (f1 j) = 1) n)

end

end A348749.P12973560767162091666

noncomputable section

/-- A348749: Odd numbers k for which A064989(sigma(k)) > A064989(k), where A064989 shifts the prime factorization one step towards lower primes, and sigma is the sum of divisors function.

Offset 1, canonical program `A348749.P12973560767162091666`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 723 terms. -/
def A348749 (n : ℕ) : ℤ :=
  (A348749.P12973560767162091666.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 723 terms. -/
def A348749.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349161.P8652954744420952419

`A003961(A349164(n+1))`
-/

namespace A349161.P8652954744420952419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A349164 (n + 1)).toNat

end

end A349161.P8652954744420952419

noncomputable section

/-- A349161: a(n) = A003961(n) / gcd(sigma(n), A003961(n)), where A003961 shifts the prime factorization of n one step towards larger primes, and sigma is the sum of divisors function.

Offset 1, canonical program `A349161.P8652954744420952419`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A349164, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349161 (n : ℕ) : ℤ :=
  A349161.P8652954744420952419.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A349164, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349161.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A350593.P13666250291163921889

`A164977(n+2)+A109531(C(2, n))`
-/

namespace A350593.P13666250291163921889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164977 (n + 2) + A109531 (Nat.choose 2 n)

end

end A350593.P13666250291163921889

noncomputable section

/-- A350593: Numbers k such that tau(k) + tau(k+1) = 6, where tau is the number of divisors function A000005.

Offset 1, canonical program `A350593.P13666250291163921889`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A350593 (n : ℕ) : ℤ :=
  A350593.P13666250291163921889.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A350593.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374074.P8762908705410170233

`filter[A122943(n+1), A066247(#)]`
-/

namespace A374074.P8762908705410170233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122943 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A374074.P8762908705410170233

noncomputable section

/-- A374074: Odd composite numbers k sorted by k/2^(bigomega(k) - 1).

Offset 1, canonical program `A374074.P8762908705410170233`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 229 terms. -/
def A374074 (n : ℕ) : ℤ :=
  A374074.P8762908705410170233.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 229 terms. -/
def A374074.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378658.P13927000025378427146

`A337345(filter[A103288(n+1), A294930(#)])`
-/

namespace A378658.P13927000025378427146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337345 (f1 (SequenceMachineLib.nth (fun j => A294930 (f1 j).toNat = 1) n)).toNat

end

end A378658.P13927000025378427146

noncomputable section

/-- A378658: a(n) = A337345(A091191(n)), where A337345 is the number of divisors d of n for which A003961(d) > 2*d, and A091191 lists the primitive abundant numbers.

Offset 1, canonical program `A378658.P13927000025378427146`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A378658 (n : ℕ) : ℤ :=
  A378658.P13927000025378427146.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A378658.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379229.P5775022352315501244

`A252748(A319630(n+1))`
-/

namespace A379229.P5775022352315501244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252748 (A319630 (n + 1)).toNat

end

end A379229.P5775022352315501244

noncomputable section

/-- A379229: Difference A003961(k)-(2*k) computed for the natural numbers k for which k and A003961(k) are relatively prime, where A003961 is fully multiplicative with a(prime(i)) = prime(i+1).

Offset 1, canonical program `A379229.P5775022352315501244`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252748, A319630, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A379229 (n : ℕ) : ℤ :=
  A379229.P5775022352315501244.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252748, A319630, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A379229.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379230.P706396864197562586

`A252748(A104210(n+1))`
-/

namespace A379230.P706396864197562586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252748 (A104210 (n + 1)).toNat

end

end A379230.P706396864197562586

noncomputable section

/-- A379230: Difference A003961(k)-(2*k) computed for the natural numbers k for which gcd(k,A003961(k)) > 1, where A003961 is fully multiplicative with a(prime(i)) = prime(i+1).

Offset 1, canonical program `A379230.P706396864197562586`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A104210, A252748, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A379230 (n : ℕ) : ℤ :=
  A379230.P706396864197562586.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A104210, A252748, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A379230.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A387707.P1369852853517030567

`A337345(A023196(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A387707.P1369852853517030567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337345 (A023196 (n + 1)).toNat

end

end A387707.P1369852853517030567

noncomputable section

/-- A387707: a(n) = A337345(A023196(n)), where A337345 is the number of divisors d of n for which A003961(d) > 2*d, and A023196 lists the nondeficient numbers, numbers k such that sigma(k) >= 2*k.

Offset 1, canonical program `A387707.P1369852853517030567`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023196, A337345, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A387707 (n : ℕ) : ℤ :=
  A387707.P1369852853517030567.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023196, A337345, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A387707.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A388979.P3109301176351806020

`A326127(n+1)*A389078(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A388979.P3109301176351806020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326127 (n + 1) * A389078 (n + 1)

end

end A388979.P3109301176351806020

noncomputable section

/-- A388979: a(n) = A326127(n) * A389078(n).

Offset 1, canonical program `A388979.P3109301176351806020`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A389078, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A388979 (n : ℕ) : ℤ :=
  A388979.P3109301176351806020.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A389078, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A388979.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A037202.P243896293513794728

`A034697(A000040(n+1))`
-/

namespace A037202.P243896293513794728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034697 (A000040 (n + 1)).toNat

end

end A037202.P243896293513794728

noncomputable section

/-- A037202: Number of lines in Pratt certificate for n-th prime.

Offset 1, canonical program `A037202.P243896293513794728`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A037202 (n : ℕ) : ℤ :=
  A037202.P243896293513794728.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A037202.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060685.P742915557630195102

`A060681(2*(n+1)+1)`
-/

namespace A060685.P742915557630195102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (2 * (n + 1) + 1)

end

end A060685.P742915557630195102

noncomputable section

/-- A060685: Largest difference between consecutive divisors (ordered by size) of 2n+1.

Offset 1, canonical program `A060685.P742915557630195102`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060681, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060685 (n : ℕ) : ℤ :=
  A060685.P742915557630195102.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060681, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060685.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A064097.P7596357096388061613

`1+a(A060681(n+1)-1)` with `a(0)=0, a(1)=1`
-/

namespace A064097.P7596357096388061613
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 + a (A060681 (n + 1) - 1).toNat

end

end A064097.P7596357096388061613

noncomputable section

/-- A064097: A quasi-logarithm defined inductively by a(1) = 0 and a(p) = 1 + a(p-1) if p is prime and a(n*m) = a(n) + a(m) if m,n > 1.

Offset 1, canonical program `A064097.P7596357096388061613`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060681, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064097 (n : ℕ) : ℤ :=
  (A064097.P7596357096388061613.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060681, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064097.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A065372.P6024978409983988564

`A065371(A065371(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A065372.P6024978409983988564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065371 (A065371 (n + 1)).toNat

end

end A065372.P6024978409983988564

noncomputable section

/-- A065372: a(n) = A065371(A065371(n)).

Offset 1, canonical program `A065372.P6024978409983988564`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065371, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065372 (n : ℕ) : ℤ :=
  A065372.P6024978409983988564.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065371, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065372.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A065373.P8556550290844581984

`a(A065371(n+1)-1)+1` with `a(0)=0`
-/

namespace A065373.P8556550290844581984
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A065371 (n + 1) - 1).toNat + 1

end

end A065373.P8556550290844581984

noncomputable section

/-- A065373: Number of iterations of A065371 starting at n until 1 is reached.

Offset 1, canonical program `A065373.P8556550290844581984`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065373 (n : ℕ) : ℤ :=
  (A065373.P8556550290844581984.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065373.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066575.P6317138227902389722

`gcd(A066574(n+1), A067391(n+1))`
-/

namespace A066575.P6317138227902389722
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A066574 (n + 1)) (A067391 (n + 1))

end

end A066575.P6317138227902389722

noncomputable section

/-- A066575: LCM of numbers m such that 1 <= m <= n, m has a common factor with n, but m does not divide n.

Offset 1, canonical program `A066575.P6317138227902389722`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. -/
def A066575 (n : ℕ) : ℤ :=
  (A066575.P6317138227902389722.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. -/
def A066575.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068443.P12532033995933004656

`A000217(A164977(n+1))`
-/

namespace A068443.P12532033995933004656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A164977 (n + 1)).toNat

end

end A068443.P12532033995933004656

noncomputable section

/-- A068443: Triangular numbers which are the product of two primes.

Offset 1, canonical program `A068443.P12532033995933004656`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A164977, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A068443 (n : ℕ) : ℤ :=
  A068443.P12532033995933004656.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A164977, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A068443.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A073753.P10154699185900247706

`A073752(A073752(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A073753.P10154699185900247706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073752 (A073752 (n + 1)).toNat

end

end A073753.P10154699185900247706

noncomputable section

/-- A073753: a(n) = A073752(A073752(n)), where A073752(n) = gcd(n/lpf(n), n/gpf(n)), with lpf(n) as the least and gpf(n) as the greatest prime factor of n (see A020639, A006530).

Offset 1, canonical program `A073753.P10154699185900247706`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073752, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073753 (n : ℕ) : ℤ :=
  A073753.P10154699185900247706.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073752, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073753.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A073933.P3226346954737411092

`1+A064097(n+1)`
-/

namespace A073933.P3226346954737411092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A064097 (n + 1)

end

end A073933.P3226346954737411092

noncomputable section

/-- A073933: Number of terms in n-th row of triangle in A073932.

Offset 1, canonical program `A073933.P3226346954737411092`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073933 (n : ℕ) : ℤ :=
  A073933.P3226346954737411092.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073933.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A073934.P17540977209768861224

`n+1+a(A060681(n+1)-1)` with `a(0)=1`
-/

namespace A073934.P17540977209768861224
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n + 1 + a (A060681 (n + 1) - 1).toNat

end

end A073934.P17540977209768861224

noncomputable section

/-- A073934: Sum of terms in n-th row of triangle in A073932.

Offset 1, canonical program `A073934.P17540977209768861224`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060681, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073934 (n : ℕ) : ℤ :=
  (A073934.P17540977209768861224.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060681, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073934.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A074828.P17211470342795204381

`gcd(A063918(n+1), A103517(n))`
-/

namespace A074828.P17211470342795204381
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A063918 (n + 1)) (A103517 n)

end

end A074828.P17211470342795204381

noncomputable section

/-- A074828: a(1) = 1; for n>1, a(n) = smallest composite multiple of n if n is a prime else the smallest prime divisor of n if n is composite.

Offset 1, canonical program `A074828.P17211470342795204381`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074828 (n : ℕ) : ℤ :=
  (A074828.P17211470342795204381.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074828.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080064.P2727321595701716016

`eq[1, (n+1)%(A074828(n+1)+1)]+1`
-/

namespace A080064.P2727321595701716016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A074828 (n + 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A080064.P2727321595701716016

noncomputable section

/-- A080064: Numbers k such that k == 1 modulo (lpf(k)+1), where lpf(k) is the least prime dividing k (A020639).

Offset 1, canonical program `A080064.P2727321595701716016`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6164 terms. -/
def A080064 (n : ℕ) : ℤ :=
  (A080064.P2727321595701716016.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6164 terms. -/
def A080064.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081306.P14017073316664811827

`∪[A000079(n), A069899(n+1)]`
-/

namespace A081306.P14017073316664811827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A081306.P14017073316664811827

noncomputable section

/-- A081306: Numbers k with prime factors less than 2*lpf(k), where lpf(k) is the least prime factor of k (A020639).

Offset 1, canonical program `A081306.P14017073316664811827`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081306 (n : ℕ) : ℤ :=
  (A081306.P14017073316664811827.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081306.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085428.P4744533111564587144

`A079772(n+1)-A085273(n+1)`
-/

namespace A085428.P4744533111564587144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079772 (n + 1) - A085273 (n + 1)

end

end A085428.P4744533111564587144

noncomputable section

/-- A085428: Sum of the smallest and largest prime divisors of the n-th composite number.

Offset 0, canonical program `A085428.P4744533111564587144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085428 (n : ℕ) : ℤ :=
  A085428.P4744533111564587144.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085428.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088383.P2884301962775713231

`lt[A074828(n+2)^4, n+1]+2`
-/

namespace A088383.P2884301962775713231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074828 (n + 2) ^ 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A088383.P2884301962775713231

noncomputable section

/-- A088383: Numbers greater than the 4th power of their smallest prime factor.

Offset 1, canonical program `A088383.P2884301962775713231`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088383 (n : ℕ) : ℤ :=
  (A088383.P2884301962775713231.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088383.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088739.P9665039072605481157

`A002808(n+1)/A054576(A002808(n+1))`
-/

namespace A088739.P9665039072605481157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002808 (n + 1) : ℚ) / (A054576 (A002808 (n + 1)).toNat : ℚ)

end

end A088739.P9665039072605481157

noncomputable section

/-- A088739: Smallest semiprime divisor of n-th composite number.

Offset 1, canonical program `A088739.P9665039072605481157`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A088739 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A088739.P9665039072605481157.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A088739.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088821.P3945839753920840161

`∑[A006530(A074828(n+1))]-1`
-/

namespace A088821.P3945839753920840161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A074828 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A088821.P3945839753920840161

noncomputable section

/-- A088821: a(n) is the sum of smallest prime factors of numbers from 1 to n.

Offset 1, canonical program `A088821.P3945839753920840161`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088821 (n : ℕ) : ℤ :=
  A088821.P3945839753920840161.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088821.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088823.P6134454624131261826

`gcd(A088821(n+1), A088822(n+1))`
-/

namespace A088823.P6134454624131261826
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A088821 (n + 1)) (A088822 (n + 1))

end

end A088823.P6134454624131261826

noncomputable section

/-- A088823: a(n) is the GCD of the sum of largest prime factors of numbers from 1 to n and of the sum of smallest prime factors of numbers from 1 to n.

Offset 1, canonical program `A088823.P6134454624131261826`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088821, A088822, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A088823 (n : ℕ) : ℤ :=
  (A088823.P6134454624131261826.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088821, A088822, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A088823.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A091373.P9373009586987433351

`∑[char[eq[0, A091371(n+1)]]]`
-/

namespace A091373.P9373009586987433351
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091371 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091373.P9373009586987433351

noncomputable section

/-- A091373: Number of numbers <= n having exactly as many prime factors as the value of their smallest prime factor.

Offset 1, canonical program `A091373.P9373009586987433351`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A091373 (n : ℕ) : ℤ :=
  (A091373.P9373009586987433351.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A091373.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091374.P1515989879207053729

`∑[ceil(A091371(n+1)/(n+1))]`
-/

namespace A091374.P1515989879207053729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A091371 (n + 1) : ℚ) / (n + 1 : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091374.P1515989879207053729

noncomputable section

/-- A091374: Number of numbers <= n having fewer prime factors than the value of their smallest prime factor.

Offset 1, canonical program `A091374.P1515989879207053729`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091374 (n : ℕ) : ℤ :=
  A091374.P1515989879207053729.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091374.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091375.P9196329194725387790

`lt[A074828(n+1), A001222(n+1)]+1`
-/

namespace A091375.P9196329194725387790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A091375.P9196329194725387790

noncomputable section

/-- A091375: Numbers k with property that the number of prime factors of k (counted with repetition) exceeds the smallest prime factor of k.

Offset 1, canonical program `A091375.P9196329194725387790`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9923 terms. -/
def A091375 (n : ℕ) : ℤ :=
  (A091375.P9196329194725387790.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9923 terms. -/
def A091375.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091377.P7351627192632326884

`lt[A001222(n+1), A074828(n+1)]+1`
-/

namespace A091377.P7351627192632326884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074828 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A091377.P7351627192632326884

noncomputable section

/-- A091377: Numbers having fewer prime factors than the value of their smallest prime factor.

Offset 1, canonical program `A091377.P7351627192632326884`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7505 terms. -/
def A091377 (n : ℕ) : ℤ :=
  (A091377.P7351627192632326884.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7505 terms. -/
def A091377.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101549.P6028307656505015155

`lt[A000267(n), A085392(n+1)]+1`
-/

namespace A101549.P6028307656505015155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A101549.P6028307656505015155

noncomputable section

/-- A101549: Composite lopsided numbers: composite numbers n such that the largest prime factor > 2 sqrt(n).

Offset 1, canonical program `A101549.P6028307656505015155`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A101549 (n : ℕ) : ℤ :=
  (A101549.P6028307656505015155.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A101549.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105179.P773740351260198386

`eq[n, A060681(n+1)%10+n]+1`
-/

namespace A105179.P773740351260198386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060681 (n + 1)) 10 + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A105179.P773740351260198386

noncomputable section

/-- A105179: Numbers having in decimal representation the same final digit as their largest proper divisor has; a(1) = 1.

Offset 1, canonical program `A105179.P773740351260198386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1613 terms. -/
def A105179 (n : ℕ) : ℤ :=
  (A105179.P773740351260198386.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1613 terms. -/
def A105179.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109313.P16359925325841850273

`A084127(n+1)-A084126(n+1)`
-/

namespace A109313.P16359925325841850273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084127 (n + 1) - A084126 (n + 1)

end

end A109313.P16359925325841850273

noncomputable section

/-- A109313: Difference between prime factors of n-th semiprime.

Offset 1, canonical program `A109313.P16359925325841850273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109313 (n : ℕ) : ℤ :=
  A109313.P16359925325841850273.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109313.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119664.P6728510728371407301

`(1-4/2)^A164977(n+1)`
-/

namespace A119664.P6728510728371407301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (4 : ℚ) / 2) ^ (A164977 (n + 1) : ℤ)

end

end A119664.P6728510728371407301

noncomputable section

/-- A119664: Sign in term (2p +/ - 1) for triangular numbers of the form p * (2p +/ - 1), where the two factors are both primes.

Offset 1, canonical program `A119664.P6728510728371407301`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A119664 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A119664.P6728510728371407301.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A119664.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125604.P8501351242846774200

`A020639(A085392(n+2)*A245486(n+3))`
-/

namespace A125604.P8501351242846774200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A085392 (n + 2) * A245486 (n + 3)).toNat

end

end A125604.P8501351242846774200

noncomputable section

/-- A125604: Minimum of the largest prime factors of a number and its two neighbors.

Offset 3, canonical program `A125604.P8501351242846774200`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. -/
def A125604 (n : ℕ) : ℤ :=
  A125604.P8501351242846774200.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. -/
def A125604.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130790.P1360378470936033627

`floor(A037202(n+1)/2)`
-/

namespace A130790.P1360378470936033627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A037202 (n + 1) : ℚ) / 2⌋

end

end A130790.P1360378470936033627

noncomputable section

/-- A130790: Number of nodes in the Lucas-Pratt primality tree rooted at prime(n).

Offset 1, canonical program `A130790.P1360378470936033627`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A130790 (n : ℕ) : ℤ :=
  A130790.P1360378470936033627.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A130790.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135682.P1249324066219577572

`A083245(lcm(A135679(n+1), A135680(n+1)))`
-/

namespace A135682.P1249324066219577572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083245 (Int.lcm (A135679 (n + 1)) (A135680 (n + 1)))

end

end A135682.P1249324066219577572

noncomputable section

/-- A135682: a(n)=n if n=1 or if n=prime. Otherwise, n=4 if n is even and n=7 if n is odd.

Offset 1, canonical program `A135682.P1249324066219577572`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135682 (n : ℕ) : ℤ :=
  A135682.P1249324066219577572.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135682.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154370.P11310872173149565989

`A026238(A119613(n+1))`
-/

namespace A154370.P11310872173149565989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (A119613 (n + 1)).toNat

end

end A154370.P11310872173149565989

noncomputable section

/-- A154370: Numbers k such that gpf(composite(k)) - lpf(composite(k)) is prime.

Offset 1, canonical program `A154370.P11310872173149565989`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A154370 (n : ℕ) : ℤ :=
  A154370.P11310872173149565989.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A154370.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161818.P13437429951946931338

`A126646(n+1)/A126646(A089196(n+1))`
-/

namespace A161818.P13437429951946931338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126646 (n + 1) : ℚ) / (A126646 (A089196 (n + 1)).toNat : ℚ)

end

end A161818.P13437429951946931338

noncomputable section

/-- A161818: If b(n) = the largest proper divisor of n, then a(n) = (2^n - 1)/(2^b(n) - 1).

Offset 2, canonical program `A161818.P13437429951946931338`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A161818 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A161818.P13437429951946931338.a (n - 2))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A161818.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161986.P15396447902893180551

`A161849(n+1)+Δ[A053767(n)]`
-/

namespace A161986.P15396447902893180551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161849 (n + 1) + (f1 (n + 1) - f1 n)

end

end A161986.P15396447902893180551

noncomputable section

/-- A161986: a(n) = k+r where k is composite(n) and r is (largest prime divisor of k) mod (smallest prime divisor of k).

Offset 1, canonical program `A161986.P15396447902893180551`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161986 (n : ℕ) : ℤ :=
  A161986.P15396447902893180551.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161986.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167447.P13871075848203580678

`∑{d}[A003961(n+1), A356173(A322361(#))]`
-/

namespace A167447.P13871075848203580678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A356173 (A322361 d).toNat

end

end A167447.P13871075848203580678

noncomputable section

/-- A167447: Number of divisors of n which are not multiples of 3 consecutive primes.

Offset 1, canonical program `A167447.P13871075848203580678`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 767 terms. -/
def A167447 (n : ℕ) : ℤ :=
  A167447.P13871075848203580678.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 767 terms. -/
def A167447.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176275.P1751405644692594882

`eq[A106458(n)+2, A010872(A175126(n))]`
-/

namespace A176275.P1751405644692594882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106458 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A175126 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176275.P1751405644692594882

noncomputable section

/-- A176275: Numbers of the form 6k+1 with the least prime divisor of the form 6m-1.

Offset 1, canonical program `A176275.P1751405644692594882`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A176275 (n : ℕ) : ℤ :=
  (A176275.P1751405644692594882.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A176275.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176278.P1337041948141028762

`eq[A010872(A175126(n)), A106458(n)]`
-/

namespace A176278.P1337041948141028762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A175126 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106458 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176278.P1337041948141028762

noncomputable section

/-- A176278: Numbers of the form 6k-1 with the least prime divisor of the form 6m+1.

Offset 1, canonical program `A176278.P1337041948141028762`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 713 terms. -/
def A176278 (n : ℕ) : ℤ :=
  (A176278.P1337041948141028762.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 713 terms. -/
def A176278.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177966.P18182046669518552317

`eq[n+4, A177961(n+2)]+2`
-/

namespace A177966.P18182046669518552317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177961 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A177966.P18182046669518552317

noncomputable section

/-- A177966: Indices m for which A177961(m) = 2 + m.

Offset 1, canonical program `A177966.P18182046669518552317`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1419 terms. -/
def A177966 (n : ℕ) : ℤ :=
  (A177966.P18182046669518552317.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1419 terms. -/
def A177966.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177985.P5769812880385745033

`A177983(n+1)-A177961(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A177985.P5769812880385745033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177983 (n + 1) - A177961 (n + 1)

end

end A177985.P5769812880385745033

noncomputable section

/-- A177985: A177983(n) - A177961(n).

Offset 1, canonical program `A177985.P5769812880385745033`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A177961, A177983, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A177985 (n : ℕ) : ℤ :=
  A177985.P5769812880385745033.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A177961, A177983, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A177985.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A178102.P15075668303995911891

`A000079(A109313(n+1))%A001358(n+1)`
-/

namespace A178102.P15075668303995911891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 (A109313 (n + 1)).toNat) (A001358 (n + 1))

end

end A178102.P15075668303995911891

noncomputable section

/-- A178102: 2^(absolute difference between prime factors of n-th semiprime) mod (n-th semiprime).

Offset 1, canonical program `A178102.P15075668303995911891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. -/
def A178102 (n : ℕ) : ℤ :=
  A178102.P15075668303995911891.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. -/
def A178102.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178313.P6058159442222746905

`A109313(n+1)%(n+1)`
-/

namespace A178313.P6058159442222746905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109313 (n + 1)) (n + 1 : ℤ)

end

end A178313.P6058159442222746905

noncomputable section

/-- A178313: Absolute difference between prime factors of n-th semiprime mod n.

Offset 1, canonical program `A178313.P6058159442222746905`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178313 (n : ℕ) : ℤ :=
  A178313.P6058159442222746905.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178313.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184727.P2690570705975046683

`A126286(A257174(n))%A257174(n)`
-/

namespace A184727.P2690570705975046683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126286 (A257174 n).toNat) (A257174 n)

end

end A184727.P2690570705975046683

noncomputable section

/-- A184727: a(n) = A005843(n-1)/A090369(n-1) for n > 2 and a(n) = 0 for n <= 2.

Offset 1, canonical program `A184727.P2690570705975046683`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7503 terms. -/
def A184727 (n : ℕ) : ℤ :=
  A184727.P2690570705975046683.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7503 terms. -/
def A184727.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188828.P1136456214102880186

`(A153340(n+1)/A074828(A008458(n)))²`
-/

namespace A188828.P1136456214102880186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A153340 (n + 1) : ℚ) / (A074828 (A008458 n).toNat : ℚ)) ^ 2

end

end A188828.P1136456214102880186

noncomputable section

/-- A188828: Number of 6 X n binary arrays without the pattern 0 1 diagonally or antidiagonally.

Offset 1, canonical program `A188828.P1136456214102880186`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 181 terms. -/
def A188828 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A188828.P1136456214102880186.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 181 terms. -/
def A188828.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214736.P11423563618509958068

`A060685(n+2)-(n+3)`
-/

namespace A214736.P11423563618509958068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060685 (n + 2) - (n + 3 : ℤ)

end

end A214736.P11423563618509958068

noncomputable section

/-- A214736: Least m>0 such that n-m divides n+1+m.

Offset 2, canonical program `A214736.P11423563618509958068`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A214736 (n : ℕ) : ℤ :=
  A214736.P11423563618509958068.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A214736.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214748.P11207822719805016956

`2*A060681(n+2)-A000265(n+2)`
-/

namespace A214748.P11207822719805016956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A060681 (n + 2) - A000265 (n + 2)

end

end A214748.P11207822719805016956

noncomputable section

/-- A214748: Least m>0 such that n-m divides (2*n-1)!!+m.

Offset 2, canonical program `A214748.P11207822719805016956`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5305 terms. -/
def A214748 (n : ℕ) : ℤ :=
  A214748.P11207822719805016956.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5305 terms. -/
def A214748.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214892.P10773792898941841720

`A117818(a(n-1)+a(n-2))` with `a(0)=4, a(1)=1`
-/

namespace A214892.P10773792898941841720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 1] fun n a =>
  A117818 (a (n - 1) + a (n - 2)).toNat

end

end A214892.P10773792898941841720

noncomputable section

/-- A214892: Conway's subprime Fibonacci sequence starting with (4,1).

Offset 1, canonical program `A214892.P10773792898941841720`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214892 (n : ℕ) : ℤ :=
  A214892.P10773792898941841720.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214892.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214917.P17382985834125884691

`A028310(n)-A014681(A089196(2*(n+2)))`
-/

namespace A214917.P17382985834125884691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - A014681 (A089196 (2 * (n + 2))).toNat

end

end A214917.P17382985834125884691

noncomputable section

/-- A214917: a(n) is the least m > 0 such that Fibonacci(n-m) divides Fibonacci(n+1+m).

Offset 2, canonical program `A214917.P17382985834125884691`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A214917 (n : ℕ) : ℤ :=
  A214917.P17382985834125884691.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A214917.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A233570.P7807505840808698047

`A003961(A020639(n+1))*A032742(n+1)`
-/

namespace A233570.P7807505840808698047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A020639 (n + 1)).toNat * A032742 (n + 1)

end

end A233570.P7807505840808698047

noncomputable section

/-- A233570: Replace the smallest prime factor p in n (if any) with the prime following p.

Offset 1, canonical program `A233570.P7807505840808698047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A233570 (n : ℕ) : ℤ :=
  A233570.P7807505840808698047.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A233570.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A238642.P3749962856097352263

`(n+1)*A028310(A063918(n+2))`
-/

namespace A238642.P3749962856097352263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A028310 (A063918 (n + 2)).toNat

end

end A238642.P3749962856097352263

noncomputable section

/-- A238642: a(n) = n if n+1 is prime; otherwise, a(n) = n * (smallest prime factor of n+1).

Offset 1, canonical program `A238642.P3749962856097352263`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A238642 (n : ℕ) : ℤ :=
  A238642.P3749962856097352263.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A238642.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242560.P11416966213912616486

`A060681(n+1)+A000038(n)`
-/

namespace A242560.P11416966213912616486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (n + 1) + A000038 n

end

end A242560.P11416966213912616486

noncomputable section

/-- A242560: Least positive number k such that (n!-k)/(n-k) is an integer.

Offset 1, canonical program `A242560.P11416966213912616486`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242560 (n : ℕ) : ℤ :=
  A242560.P11416966213912616486.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242560.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243937.P8122187375907289824

`lt[A046667(n+2), A175126(n)]+3`
-/

namespace A243937.P8122187375907289824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 3

end

end A243937.P8122187375907289824

noncomputable section

/-- A243937: Even numbers n>=6 for which lpf(n-1) > lpf(n-3), where lpf = least prime factor.

Offset 1, canonical program `A243937.P8122187375907289824`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2601 terms. -/
def A243937 (n : ℕ) : ℤ :=
  (A243937.P8122187375907289824.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2601 terms. -/
def A243937.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A251727.P7570197047832034142

`lt[A074828(n+1)², A006530(n+1)]+1`
-/

namespace A251727.P7570197047832034142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074828 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A251727.P7570197047832034142

noncomputable section

/-- A251727: Numbers m > 1 such that gpf(m) > lpf(m)^2, where lpf and gpf (least and greatest prime factor of m) are given by A020639(m) and A006530(m).

Offset 1, canonical program `A251727.P7570197047832034142`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A251727 (n : ℕ) : ℤ :=
  (A251727.P7570197047832034142.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A251727.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A252371.P7024407539575237769

`A243055(A251727(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A252371.P7024407539575237769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243055 (A251727 (n + 1)).toNat

end

end A252371.P7024407539575237769

noncomputable section

/-- A252371: a(n) = A243055(A251727(n)).

Offset 1, canonical program `A252371.P7024407539575237769`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A243055, A251727, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A252371 (n : ℕ) : ℤ :=
  A252371.P7024407539575237769.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A243055, A251727, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A252371.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A252373.P3426254770351729499

`A252372(n+1)+a(n-1)` with `a(0)=0`
-/

namespace A252373.P3426254770351729499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A252372 (n + 1) + a (n - 1)

end

end A252373.P3426254770351729499

noncomputable section

/-- A252373: Partial sums of A252372, inverse function for A251726.

Offset 1, canonical program `A252373.P3426254770351729499`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252372, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A252373 (n : ℕ) : ℤ :=
  A252373.P3426254770351729499.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252372, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A252373.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A252752.P263782589436442659

`A246276(A028310(n))+A057427(n)`
-/

namespace A252752.P263782589436442659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246276 (A028310 n).toNat + A057427 n

end

end A252752.P263782589436442659

noncomputable section

/-- A252752: Inverse permutation to sequence A246278 when it is considered as a permutation of natural numbers (with assumption that a(1) = 1).

Offset 1, canonical program `A252752.P263782589436442659`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A252752 (n : ℕ) : ℤ :=
  A252752.P263782589436442659.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A252752.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253552.P2775586370480243469

`A252752(A005940(n+2))-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A253552.P2775586370480243469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252752 (A005940 (n + 2)).toNat - 1

end

end A253552.P2775586370480243469

noncomputable section

/-- A253552: Permutation of natural numbers: a(n) = A252752(A005940(n+1)) - 1.

Offset 1, canonical program `A253552.P2775586370480243469`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A252752, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A253552 (n : ℕ) : ℤ :=
  A253552.P2775586370480243469.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A252752, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A253552.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A253562.P855878760313902608

`A252752(A122111(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A253562.P855878760313902608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252752 (A122111 (n + 1)).toNat

end

end A253562.P855878760313902608

noncomputable section

/-- A253562: Inverse permutation to A253561: a(n) = A252752(A122111(n)).

Offset 1, canonical program `A253562.P855878760313902608`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122111, A252752, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A253562 (n : ℕ) : ℤ :=
  A253562.P855878760313902608.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122111, A252752, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A253562.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A256971.P14071502720138791526

`∑[A256970(n+1)]`
-/

namespace A256971.P14071502720138791526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256970 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256971.P14071502720138791526

noncomputable section

/-- A256971: Partial sums of A256970.

Offset 1, canonical program `A256971.P14071502720138791526`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256971 (n : ℕ) : ℤ :=
  A256971.P14071502720138791526.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256971.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260905.P13307699566017813333

`(A195758(n+1)-1)*(A195759(n+1)-1)`
-/

namespace A260905.P13307699566017813333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A195758 (n + 1) - 1) * (A195759 (n + 1) - 1)

end

end A260905.P13307699566017813333

noncomputable section

/-- A260905: Totients of the Blum integers.

Offset 1, canonical program `A260905.P13307699566017813333`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A195758, A195759, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A260905 (n : ℕ) : ℤ :=
  A260905.P13307699566017813333.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A195758, A195759, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A260905.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A262829.P5430725010381186726

`p?[(n+1)*A085392(A065361(n+1))]`
-/

namespace A262829.P5430725010381186726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A085392 (A065361 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A262829.P5430725010381186726

noncomputable section

/-- A262829: (3,2)-primes (defined in Comments).

Offset 1, canonical program `A262829.P5430725010381186726`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A262829 (n : ℕ) : ℤ :=
  A262829.P5430725010381186726.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A262829.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273777.P13108395424534032028

`A160180(n+1)+A056608(n+1)`
-/

namespace A273777.P13108395424534032028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160180 (n + 1) + A056608 (n + 1)

end

end A273777.P13108395424534032028

noncomputable section

/-- A273777: Consider all ways of writing the n-th composite number as the product of two divisors d1*d2 = d3*d4 = ... where each divisor is larger than 1; a(n) is the maximum of the sums {d1 + d2, d3 + d4, ...}.

Offset 1, canonical program `A273777.P13108395424534032028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A273777 (n : ℕ) : ℤ :=
  A273777.P13108395424534032028.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A273777.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276269.P7785240311652545654

`A159475(n+1)+A004442(n)%A085392(n+1)`
-/

namespace A276269.P7785240311652545654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159475 (n + 1) + Int.tmod (A004442 n) (A085392 (n + 1))

end

end A276269.P7785240311652545654

noncomputable section

/-- A276269: a(n) = n + the largest (if n is even), or the smallest (if n is odd) prime factor of n if n > 1; and a(1)=1.

Offset 1, canonical program `A276269.P7785240311652545654`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276269 (n : ℕ) : ℤ :=
  A276269.P7785240311652545654.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276269.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280688.P1979520790585171282

`A000045(A054576(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A280688.P1979520790585171282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A054576 (n + 1)).toNat

end

end A280688.P1979520790585171282

noncomputable section

/-- A280688: a(n) = A000045(A054576(n))= A280686(A105800(n)).

Offset 1, canonical program `A280688.P1979520790585171282`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054576, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A280688 (n : ℕ) : ℤ :=
  A280688.P1979520790585171282.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054576, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A280688.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A280689.P6370222866789836264

`A105800(n+1)/A280688(n+1)`
-/

namespace A280689.P6370222866789836264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105800 (n + 1) : ℚ) / (A280688 (n + 1) : ℚ)

end

end A280689.P6370222866789836264

noncomputable section

/-- A280689: a(n) = A000045(A032742(n)) / A000045(A054576(n)), where A000045(n) gives the n-th Fibonacci number, A032742(n) = the largest proper divisor of n, and A054576(n) = A032742(A032742(n)).

Offset 1, canonical program `A280689.P6370222866789836264`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A105800, A280688, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A280689 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A280689.P6370222866789836264.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A105800, A280688, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A280689.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A280690.P7553853943362117575

`A000045(n+1)/A105800(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A280690.P7553853943362117575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 1) : ℚ) / (A105800 (n + 1) : ℚ)

end

end A280690.P7553853943362117575

noncomputable section

/-- A280690: a(n) = A000045(n) / A105800(n); the n-th Fibonacci number divided by its largest Fibonacci proper divisor.

Offset 1, canonical program `A280690.P7553853943362117575`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A105800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A280690 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A280690.P7553853943362117575.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A105800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A280690.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A280691.P11066879056433536544

`A015518(A032742(n+1))/A015518(A054576(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A280691.P11066879056433536544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015518 (A032742 (n + 1)).toNat : ℚ) / (A015518 (A054576 (n + 1)).toNat : ℚ)

end

end A280691.P11066879056433536544

noncomputable section

/-- A280691: a(n) = A015518(A032742(n)) / A015518(A054576(n)).

Offset 1, canonical program `A280691.P11066879056433536544`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A032742, A054576, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A280691 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A280691.P11066879056433536544.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A032742, A054576, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A280691.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A280818.P11644024654743683891

`A117818(4*n+1)`
-/

namespace A280818.P11644024654743683891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117818 (4 * n + 1)

end

end A280818.P11644024654743683891

noncomputable section

/-- A280818: a(0)=1; for n > 0, if 4n+1 is prime, then a(n)=4n+1, otherwise a(n)=(4n+1)/LPF(4n+1).

Offset 0, canonical program `A280818.P11644024654743683891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A280818 (n : ℕ) : ℤ :=
  A280818.P11644024654743683891.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A280818.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281302.P7908418519207198342

`val(A073813(n+1)!, A085273(n+1))`
-/

namespace A281302.P7908418519207198342
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.factorial (A073813 (n + 1)).toNat) (A085273 (n + 1)).toNat

end

end A281302.P7908418519207198342

noncomputable section

/-- A281302: Largest nonnegative k such that binomial(2*c-1, c-1) == 1 (mod c^k), where c is the n-th composite number.

Offset 1, canonical program `A281302.P7908418519207198342`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4364 terms. -/
def A281302 (n : ℕ) : ℤ :=
  (A281302.P7908418519207198342.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4364 terms. -/
def A281302.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283671.P12303064168289075202

`sqrt(A283670(n+1))`
-/

namespace A283671.P12303064168289075202
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A283670 (n + 1) : ℝ)

end

end A283671.P12303064168289075202

noncomputable section

/-- A283671: Square root of the single square referenced in A190641.

Offset 1, canonical program `A283671.P12303064168289075202`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A283670, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A283671 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A283671.P12303064168289075202.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A283670, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A283671.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A284256.P14114492336096657413

`a(floor(n/A006530(n+1)))+1-A252372(n+1)` with `a(0)=0`
-/

namespace A284256.P14114492336096657413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(n : ℚ) / (A006530 (n + 1) : ℚ)⌋.toNat + 1 - A252372 (n + 1)

end

end A284256.P14114492336096657413

noncomputable section

/-- A284256: a(n) = number of prime factors of n that are > the square of smallest prime factor of n (counted with multiplicity), a(1) = 0.

Offset 1, canonical program `A284256.P14114492336096657413`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284256 (n : ℕ) : ℤ :=
  A284256.P14114492336096657413.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284257.P1463760783412794732

`A001222(n+1)-A284256(n+1)`
-/

namespace A284257.P1463760783412794732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A284256 (n + 1)

end

end A284257.P1463760783412794732

noncomputable section

/-- A284257: a(n) = number of prime factors of n that are < the square of smallest prime factor of n (counted with multiplicity), a(1) = 0.

Offset 1, canonical program `A284257.P1463760783412794732`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284256, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A284257 (n : ℕ) : ℤ :=
  A284257.P1463760783412794732.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284256, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A284257.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A284258.P13670865217046797129

`A284256(∏{p}[n+1, #])`
-/

namespace A284258.P13670865217046797129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284256 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A284258.P13670865217046797129

noncomputable section

/-- A284258: a(n) = number of distinct prime factors of n that are > the square of smallest prime factor of n, a(1) = 0.

Offset 1, canonical program `A284258.P13670865217046797129`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284258 (n : ℕ) : ℤ :=
  A284258.P13670865217046797129.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284258.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284259.P2862339921561059590

`A001221(n+1)-A284258(n+1)`
-/

namespace A284259.P2862339921561059590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A284258 (n + 1)

end

end A284259.P2862339921561059590

noncomputable section

/-- A284259: a(n) = number of distinct prime factors of n that are < the square of smallest prime factor of n, a(1) = 0.

Offset 1, canonical program `A284259.P2862339921561059590`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284258, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A284259 (n : ℕ) : ℤ :=
  A284259.P2862339921561059590.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284258, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A284259.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A284261.P8740968547699378345

`A284258(n+1)-A284258(A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A284261.P8740968547699378345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284258 (n + 1) - A284258 (A003961 (n + 1)).toNat

end

end A284261.P8740968547699378345

noncomputable section

/-- A284261: a(n) = A284258(n) - A284258(A003961(n)).

Offset 1, canonical program `A284261.P8740968547699378345`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A284258, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A284261 (n : ℕ) : ℤ :=
  A284261.P8740968547699378345.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A284258, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A284261.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A289144.P16624087411302747448

`A087349(n+1)-A166250(n+2)`
-/

namespace A289144.P16624087411302747448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087349 (n + 1) - A166250 (n + 2)

end

end A289144.P16624087411302747448

noncomputable section

/-- A289144: The difference between the second divisor of n and the penultimate divisor of n.

Offset 2, canonical program `A289144.P16624087411302747448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A289144 (n : ℕ) : ℤ :=
  A289144.P16624087411302747448.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A289144.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290104.P8109031732429300831

`A003963(n+1)/A290103(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A290104.P8109031732429300831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003963 (n + 1) : ℚ) / (A290103 (n + 1) : ℚ)

end

end A290104.P8109031732429300831

noncomputable section

/-- A290104: a(n) = A003963(n) / A290103(n).

Offset 1, canonical program `A290104.P8109031732429300831`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003963, A290103, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A290104 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A290104.P8109031732429300831.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003963, A290103, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A290104.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A290105.P1795038591831729009

`A156061(n+1)/A290103(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A290105.P1795038591831729009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156061 (n + 1) : ℚ) / (A290103 (n + 1) : ℚ)

end

end A290105.P1795038591831729009

noncomputable section

/-- A290105: a(n) = A156061(n) / A290103(n).

Offset 1, canonical program `A290105.P1795038591831729009`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A156061, A290103, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A290105 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A290105.P1795038591831729009.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A156061, A290103, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A290105.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A300239.P16009997418240685416

`A032742(n+1)-A300236(n+1)`
-/

namespace A300239.P16009997418240685416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1) - A300236 (n + 1)

end

end A300239.P16009997418240685416

noncomputable section

/-- A300239: Difference between A032742 (the largest proper divisor of n) and its Möbius transform (A300236).

Offset 1, canonical program `A300239.P16009997418240685416`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A032742, A300236, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A300239 (n : ℕ) : ℤ :=
  A300239.P16009997418240685416.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A032742, A300236, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A300239.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A300721.P13494295583091616714

`A000010(n+1)-A300236(n+1)`
-/

namespace A300721.P13494295583091616714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A300236 (n + 1)

end

end A300721.P13494295583091616714

noncomputable section

/-- A300721: Möbius transform of A060681, the largest difference between consecutive divisors of n (ordered by size).

Offset 1, canonical program `A300721.P13494295583091616714`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A300236, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A300721 (n : ℕ) : ℤ :=
  A300721.P13494295583091616714.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A300236, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A300721.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A300722.P8317627938057624643

`A060681(n+1)-A300721(n+1)`
-/

namespace A300722.P8317627938057624643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (n + 1) - A300721 (n + 1)

end

end A300722.P8317627938057624643

noncomputable section

/-- A300722: Difference between A060681 (largest difference between consecutive divisors of n as ordered by size) and its Möbius transform.

Offset 1, canonical program `A300722.P8317627938057624643`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060681, A300721, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A300722 (n : ℕ) : ℤ :=
  A300722.P8317627938057624643.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060681, A300721, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A300722.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A302569.P5284388077768704426

`eq[1, A290104(n+2)]+2`
-/

namespace A302569.P5284388077768704426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290104 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A302569.P5284388077768704426

noncomputable section

/-- A302569: Numbers that are either prime or whose prime indices are pairwise coprime. Heinz numbers of integer partitions with pairwise coprime parts.

Offset 1, canonical program `A302569.P5284388077768704426`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5370 terms. -/
def A302569 (n : ℕ) : ℤ :=
  (A302569.P5284388077768704426.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5370 terms. -/
def A302569.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307742.P17097547645030697459

`A064097(A014963(n+1))`
-/

namespace A307742.P17097547645030697459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (A014963 (n + 1)).toNat

end

end A307742.P17097547645030697459

noncomputable section

/-- A307742: Quasi-logarithm A064097(n) of von Mangoldt's exponential function A014963(n).

Offset 1, canonical program `A307742.P17097547645030697459`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014963, A064097, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A307742 (n : ℕ) : ℤ :=
  A307742.P17097547645030697459.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014963, A064097, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A307742.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A307743.P12638932795451399698

`∑[A307742(n+1)]`
-/

namespace A307743.P12638932795451399698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307743.P12638932795451399698

noncomputable section

/-- A307743: a(n) = Sum_{k=1..n} A307742(k).

Offset 1, canonical program `A307743.P12638932795451399698`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307743 (n : ℕ) : ℤ :=
  A307743.P12638932795451399698.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307743.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316100.P12528329880331534672

`A046667(A224907(n+1))`
-/

namespace A316100.P12528329880331534672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (A224907 (n + 1)).toNat

end

end A316100.P12528329880331534672

noncomputable section

/-- A316100: Numbers k such that k is deficient but k+1 is abundant, that is, a deficient number followed by an abundant number.

Offset 1, canonical program `A316100.P12528329880331534672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1239 terms. -/
def A316100 (n : ℕ) : ℤ :=
  A316100.P12528329880331534672.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1239 terms. -/
def A316100.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318518.P972977165787747887

`n+1-A318516(n+1)`
-/

namespace A318518.P972977165787747887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A318516 (n + 1)

end

end A318518.P972977165787747887

noncomputable section

/-- A318518: a(n) = A032742(n) AND n-A032742(n), where AND is bitwise-and (A004198) and A032742 = the largest proper divisor of n.

Offset 1, canonical program `A318518.P972977165787747887`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318516, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318518 (n : ℕ) : ℤ :=
  A318518.P972977165787747887.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318516, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318518.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A322982.P6944421931770551639

`(A089026(n+1)+n)/A089026(A074828(n+1))`
-/

namespace A322982.P6944421931770551639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089026 (n + 1) + (n : ℤ) : ℚ) / (A089026 (A074828 (n + 1)).toNat : ℚ)

end

end A322982.P6944421931770551639

noncomputable section

/-- A322982: If n is a noncomposite, then a(n) = 2*n - 1, otherwise a(n) = A032742(n), the largest proper divisor of n.

Offset 1, canonical program `A322982.P6944421931770551639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. -/
def A322982 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A322982.P6944421931770551639.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. -/
def A322982.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323071.P9582982999097821461

`gcd(n+1, 1+A060681(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A323071.P9582982999097821461
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (1 + A060681 (n + 1))

end

end A323071.P9582982999097821461

noncomputable section

/-- A323071: a(n) = gcd(n, 1+A060681(n)).

Offset 1, canonical program `A323071.P9582982999097821461`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060681, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A323071 (n : ℕ) : ℤ :=
  (A323071.P9582982999097821461.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060681, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A323071.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A323072.P7369879891192083025

`(n+1)/A323071(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A323072.P7369879891192083025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A323071 (n + 1) : ℚ)

end

end A323072.P7369879891192083025

noncomputable section

/-- A323072: a(n) = n/A323071(n) = n/gcd(n, 1+A060681(n)).

Offset 1, canonical program `A323072.P7369879891192083025`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A323071, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A323072 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A323072.P7369879891192083025.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A323071, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A323072.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A323077.P1062725111045104431

`A064097(A052126(n+1))`
-/

namespace A323077.P1062725111045104431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (A052126 (n + 1)).toNat

end

end A323077.P1062725111045104431

noncomputable section

/-- A323077: Number of iterations of map x -> (x - (largest divisor d < x)) needed to reach 1 or a prime, when starting at x = n.

Offset 1, canonical program `A323077.P1062725111045104431`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052126, A064097, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A323077 (n : ℕ) : ℤ :=
  A323077.P1062725111045104431.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052126, A064097, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A323077.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A328219.P16003186981995405472

`A290103(A003961(n+1))`
-/

namespace A328219.P16003186981995405472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (A003961 (n + 1)).toNat

end

end A328219.P16003186981995405472

noncomputable section

/-- A328219: LCM of the prime indices of n, all plus 1.

Offset 1, canonical program `A328219.P16003186981995405472`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A290103, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A328219 (n : ℕ) : ℤ :=
  A328219.P16003186981995405472.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A290103, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A328219.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A329697.P6355568551452954971

`A064097(n+1)-A064415(n+1)`
-/

namespace A329697.P6355568551452954971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (n + 1) - A064415 (n + 1)

end

end A329697.P6355568551452954971

noncomputable section

/-- A329697: a(n) is the number of iterations needed to reach a power of 2 starting at n and using the map k -> k-(k/p), where p is the largest prime factor of k.

Offset 1, canonical program `A329697.P6355568551452954971`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064097, A064415, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A329697 (n : ℕ) : ℤ :=
  A329697.P6355568551452954971.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064097, A064415, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A329697.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A333783.P9869141103438301298

`A000203(n+1)-A332993(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A333783.P9869141103438301298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A332993 (n + 1)

end

end A333783.P9869141103438301298

noncomputable section

/-- A333783: a(n) = sigma(n) - A332993(n).

Offset 1, canonical program `A333783.P9869141103438301298`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A332993, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A333783 (n : ℕ) : ℤ :=
  A333783.P9869141103438301298.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A332993, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A333783.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A333791.P17141986285495569553

`A332993(n+1)-A332994(n+1)`
-/

namespace A333791.P17141986285495569553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332993 (n + 1) - A332994 (n + 1)

end

end A333791.P17141986285495569553

noncomputable section

/-- A333791: Difference of sums of two subsets of divisors of n, those obtained by repeatedly dividing with the smallest remaining prime factor (A332993) and those obtained by repeatedly dividing with the largest remaining prime factor (A332994).

Offset 1, canonical program `A333791.P17141986285495569553`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A332993, A332994, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A333791 (n : ℕ) : ℤ :=
  A333791.P17141986285495569553.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A332993, A332994, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A333791.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A333793.P11711561047129840571

`A333794(n+1)-A073934(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A333793.P11711561047129840571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333794 (n + 1) - A073934 (n + 1)

end

end A333793.P11711561047129840571

noncomputable section

/-- A333793: a(n) = A333794(n) - A073934(n).

Offset 1, canonical program `A333793.P11711561047129840571`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073934, A333794, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A333793 (n : ℕ) : ℤ :=
  A333793.P11711561047129840571.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073934, A333794, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A333793.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A334090.P11624734259785140270

`Δ[A073933(A341629(2*n+1)+n)]`
-/

namespace A334090.P11624734259785140270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073933 (A341629 (2 * n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A334090.P11624734259785140270

noncomputable section

/-- A334090: a(1) = 0, and then after the first differences of A064097.

Offset 1, canonical program `A334090.P11624734259785140270`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334090 (n : ℕ) : ℤ :=
  A334090.P11624734259785140270.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334090.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334091.P902151648939679673

`A334090(n+1)-A334195(n+1)`
-/

namespace A334091.P902151648939679673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334090 (n + 1) - A334195 (n + 1)

end

end A334091.P902151648939679673

noncomputable section

/-- A334091: a(1) = 0, then after the first differences of A329697.

Offset 1, canonical program `A334091.P902151648939679673`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A334090, A334195, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A334091 (n : ℕ) : ℤ :=
  A334091.P902151648939679673.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A334090, A334195, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A334091.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A334102.P14426080341620597071

`eq[2, A329697(n+1)]+1`
-/

namespace A334102.P14426080341620597071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A334102.P14426080341620597071

noncomputable section

/-- A334102: Numbers n for which A329697(n) == 2.

Offset 1, canonical program `A334102.P14426080341620597071`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 176 terms. -/
def A334102 (n : ℕ) : ℤ :=
  (A334102.P14426080341620597071.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 176 terms. -/
def A334102.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334103.P8770700371739961028

`eq[3, A329697(n+1)]+1`
-/

namespace A334103.P8770700371739961028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A334103.P8770700371739961028

noncomputable section

/-- A334103: Numbers n for which A329697(n) == 3.

Offset 1, canonical program `A334103.P8770700371739961028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 584 terms. -/
def A334103 (n : ℕ) : ℤ :=
  (A334103.P8770700371739961028.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 584 terms. -/
def A334103.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334104.P1035099503995948317

`eq[4, A329697(n+1)]+1`
-/

namespace A334104.P1035099503995948317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A334104.P1035099503995948317

noncomputable section

/-- A334104: Numbers m for which A329697(m) = 4.

Offset 1, canonical program `A334104.P1035099503995948317`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1626 terms. -/
def A334104 (n : ℕ) : ℤ :=
  (A334104.P1035099503995948317.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1626 terms. -/
def A334104.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334105.P6599962454632674818

`eq[5, A329697(n+1)]+1`
-/

namespace A334105.P6599962454632674818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A334105.P6599962454632674818

noncomputable section

/-- A334105: Numbers m for which A329697(m) = 5.

Offset 1, canonical program `A334105.P6599962454632674818`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3896 terms. -/
def A334105 (n : ℕ) : ℤ :=
  (A334105.P6599962454632674818.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3896 terms. -/
def A334105.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334106.P945696782660963161

`eq[6, A329697(A004277(n))]`
-/

namespace A334106.P945696782660963161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334106.P945696782660963161

noncomputable section

/-- A334106: Numbers n for which A329697(n) == 6.

Offset 1, canonical program `A334106.P945696782660963161`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2518 terms. -/
def A334106 (n : ℕ) : ℤ :=
  (A334106.P945696782660963161.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2518 terms. -/
def A334106.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334107.P9255028885621604898

`A329697(A105560(n+1))+a(A064989(n+1)-1)` with `a(0)=0`
-/

namespace A334107.P9255028885621604898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A329697 (A105560 (n + 1)).toNat + a (A064989 (n + 1) - 1).toNat

end

end A334107.P9255028885621604898

noncomputable section

/-- A334107: a(n) = A329697(A122111(n)).

Offset 1, canonical program `A334107.P9255028885621604898`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064989, A329697, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A334107 (n : ℕ) : ℤ :=
  A334107.P9255028885621604898.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064989, A329697, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A334107.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A334202.P7627444287747604241

`A064097(n+1)-A323077(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A334202.P7627444287747604241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (n + 1) - A323077 (n + 1)

end

end A334202.P7627444287747604241

noncomputable section

/-- A334202: a(n) = A064097(n) - A323077(n).

Offset 1, canonical program `A334202.P7627444287747604241`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064097, A323077, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A334202 (n : ℕ) : ℤ :=
  A334202.P7627444287747604241.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064097, A323077, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A334202.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A334203.P16025289003160081664

`A064097(A032742(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A334203.P16025289003160081664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (A032742 (n + 1)).toNat

end

end A334203.P16025289003160081664

noncomputable section

/-- A334203: a(n) = A064097(A032742(n)).

Offset 1, canonical program `A334203.P16025289003160081664`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A032742, A064097, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A334203 (n : ℕ) : ℤ :=
  A334203.P16025289003160081664.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A032742, A064097, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A334203.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A334204.P5497004873273688433

`A329697(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A334204.P5497004873273688433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A163511 n).toNat

end

end A334204.P5497004873273688433

noncomputable section

/-- A334204: a(n) = A329697(A163511(n)).

Offset 0, canonical program `A334204.P5497004873273688433`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A329697, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A334204 (n : ℕ) : ℤ :=
  A334204.P5497004873273688433.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A329697, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A334204.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A334861.P8338568547344458298

`A329697(n+1)+A331410(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A334861.P8338568547344458298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (n + 1) + A331410 (n + 1)

end

end A334861.P8338568547344458298

noncomputable section

/-- A334861: a(n) = A329697(n) + A331410(n).

Offset 1, canonical program `A334861.P8338568547344458298`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329697, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A334861 (n : ℕ) : ℤ :=
  A334861.P8338568547344458298.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329697, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A334861.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A334863.P12100679385437782938

`A064097(A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A334863.P12100679385437782938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (A003961 (n + 1)).toNat

end

end A334863.P12100679385437782938

noncomputable section

/-- A334863: a(n) = A064097(A003961(n)).

Offset 1, canonical program `A334863.P12100679385437782938`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A064097, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A334863 (n : ℕ) : ℤ :=
  A334863.P12100679385437782938.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A064097, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A334863.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A334864.P1367221112009939634

`A064097(A003961(n+1))-A064097(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A334864.P1367221112009939634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (A003961 (n + 1)).toNat - A064097 (n + 1)

end

end A334864.P1367221112009939634

noncomputable section

/-- A334864: a(n) = A064097(A003961(n)) - A064097(n).

Offset 1, canonical program `A334864.P1367221112009939634`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A064097, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A334864 (n : ℕ) : ℤ :=
  A334864.P1367221112009939634.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A064097, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A334864.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A334873.P3733060278836501554

`A329697(n+1)*A334204(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A334873.P3733060278836501554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (n + 1) * A334204 (n + 1)

end

end A334873.P3733060278836501554

noncomputable section

/-- A334873: a(n) = A329697(n) * A334204(n).

Offset 1, canonical program `A334873.P3733060278836501554`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329697, A334204, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A334873 (n : ℕ) : ℤ :=
  A334873.P3733060278836501554.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329697, A334204, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A334873.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A335429.P967647323544039556

`A329697(n+1)+a(n-1)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A335429.P967647323544039556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  A329697 (n + 1) + a (n - 1)

end

end A335429.P967647323544039556

noncomputable section

/-- A335429: Partial sums of A329697.

Offset 1, canonical program `A335429.P967647323544039556`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329697, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A335429 (n : ℕ) : ℤ :=
  A335429.P967647323544039556.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329697, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A335429.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A335860.P17749243859278538825

`A053044(n+1)+A335429(n+1)`
-/

namespace A335860.P17749243859278538825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053044 (n + 1) + A335429 (n + 1)

end

end A335860.P17749243859278538825

noncomputable section

/-- A335860: Partial sums of A064097.

Offset 1, canonical program `A335860.P17749243859278538825`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053044, A335429, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A335860 (n : ℕ) : ℤ :=
  A335860.P17749243859278538825.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053044, A335429, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A335860.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A335877.P9922726367996187859

`A331410(n+1)-A329697(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A335877.P9922726367996187859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (n + 1) - A329697 (n + 1)

end

end A335877.P9922726367996187859

noncomputable section

/-- A335877: a(n) = A331410(n) - A329697(n).

Offset 1, canonical program `A335877.P9922726367996187859`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329697, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A335877 (n : ℕ) : ℤ :=
  A335877.P9922726367996187859.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329697, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A335877.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A335878.P17774881758164026936

`eq[1, A335877(n+1)+1]+1`
-/

namespace A335878.P17774881758164026936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335877 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A335878.P17774881758164026936

noncomputable section

/-- A335878: Numbers k such that A329697(k) = A331410(k).

Offset 1, canonical program `A335878.P17774881758164026936`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9973 terms. -/
def A335878 (n : ℕ) : ℤ :=
  (A335878.P17774881758164026936.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9973 terms. -/
def A335878.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336396.P16969858180878355374

`A329697(n+1)-A087436(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336396.P16969858180878355374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (n + 1) - A087436 (n + 1)

end

end A336396.P16969858180878355374

noncomputable section

/-- A336396: a(n) = A329697(n) - A087436(n).

Offset 1, canonical program `A336396.P16969858180878355374`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329697, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336396 (n : ℕ) : ℤ :=
  A336396.P16969858180878355374.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329697, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336396.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336469.P2491454499028526129

`A329697(A000010(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336469.P2491454499028526129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A000010 (n + 1)).toNat

end

end A336469.P2491454499028526129

noncomputable section

/-- A336469: a(n) = A329697(phi(n)), where A329697 is totally additive with a(2) = 0 and a(p) = 1 + a(p-1) for odd primes.

Offset 1, canonical program `A336469.P2491454499028526129`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329697, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336469 (n : ℕ) : ℤ :=
  A336469.P2491454499028526129.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329697, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336469.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336694.P7841874870777716447

`A329697(1+A000203(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336694.P7841874870777716447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (1 + A000203 (n + 1)).toNat

end

end A336694.P7841874870777716447

noncomputable section

/-- A336694: a(n) = A329697(1+sigma(n)), where A329697 is totally additive with a(2) = 0 and a(p) = 1 + a(p-1) for odd primes.

Offset 1, canonical program `A336694.P7841874870777716447`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329697, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336694 (n : ℕ) : ℤ :=
  A336694.P7841874870777716447.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329697, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336694.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336837.P12627212875986616411

`A336841(n+1)/A336856(n+1)`
-/

namespace A336837.P12627212875986616411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336841 (n + 1) : ℚ) / (A336856 (n + 1) : ℚ)

end

end A336837.P12627212875986616411

noncomputable section

/-- A336837: Numerator of ratio A336841(n)/A000005(n).

Offset 1, canonical program `A336837.P12627212875986616411`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336841, A336856, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336837 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A336837.P12627212875986616411.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336841, A336856, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336837.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336928.P14852767271506303772

`A329697(A000203(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336928.P14852767271506303772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A000203 (n + 1)).toNat

end

end A336928.P14852767271506303772

noncomputable section

/-- A336928: a(n) = A329697(sigma(n)), where A329697 is totally additive with a(2) = 0 and a(p) = 1 + a(p-1) for odd primes.

Offset 1, canonical program `A336928.P14852767271506303772`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329697, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336928 (n : ℕ) : ℤ :=
  A336928.P14852767271506303772.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329697, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336928.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336930.P726697693823606341

`record[gcd(n+1, A336931(n+1))]`
-/

namespace A336930.P726697693823606341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A336931 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336930.P726697693823606341

noncomputable section

/-- A336930: Numbers k such that the 2-adic valuation of A003973(k), the sum of divisors of the prime shifted k is equal to the 2-adic valuation of the number of divisors of k.

Offset 1, canonical program `A336930.P726697693823606341`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336930 (n : ℕ) : ℤ :=
  (A336930.P726697693823606341.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338901.P1772611056831776762

`A072613(A074845(n+2))`
-/

namespace A338901.P1772611056831776762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072613 (A074845 (n + 2)).toNat

end

end A338901.P1772611056831776762

noncomputable section

/-- A338901: Position of the first appearance of prime(n) as a factor in the list of squarefree semiprimes.

Offset 1, canonical program `A338901.P1772611056831776762`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 669 terms. -/
def A338901 (n : ℕ) : ℤ :=
  A338901.P1772611056831776762.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 669 terms. -/
def A338901.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338913.P16990008710777632167

`A000720(A084127(n+1))`
-/

namespace A338913.P16990008710777632167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A084127 (n + 1)).toNat

end

end A338913.P16990008710777632167

noncomputable section

/-- A338913: Greater prime index of the n-th semiprime.

Offset 1, canonical program `A338913.P16990008710777632167`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A084127, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A338913 (n : ℕ) : ℤ :=
  A338913.P16990008710777632167.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A084127, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A338913.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A339436.P12642177275166153050

`A322382(n+2)+A332993(n+2)+A001478(n+4)`
-/

namespace A339436.P12642177275166153050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322382 (n + 2) + (A332993 (n + 2) + A001478 (n + 4))

end

end A339436.P12642177275166153050

noncomputable section

/-- A339436: If n = p_1 * ... * p_m with primes p_i <= p_{i+1}, a(n) = Sum_{j=1..m-1} p_1*...*p_j + Sum_{j=2..m} p_j*...*p_m.

Offset 2, canonical program `A339436.P12642177275166153050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A339436 (n : ℕ) : ℤ :=
  A339436.P12642177275166153050.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A339436.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339913.P16219297945263643524

`(1+A060681(n+1))/A323071(n+1)`
-/

namespace A339913.P16219297945263643524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + A060681 (n + 1) : ℚ) / (A323071 (n + 1) : ℚ)

end

end A339913.P16219297945263643524

noncomputable section

/-- A339913: a(n) = x/gcd(n,x), where x = 1+A060681(n).

Offset 1, canonical program `A339913.P16219297945263643524`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060681, A323071, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A339913 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A339913.P16219297945263643524.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060681, A323071, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A339913.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342465.P10365381412380769729

`A329697(A337194(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A342465.P10365381412380769729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A337194 (n + 1)).toNat

end

end A342465.P10365381412380769729

noncomputable section

/-- A342465: a(n) = A329697(A337194(n)).

Offset 1, canonical program `A342465.P10365381412380769729`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329697, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342465 (n : ℕ) : ℤ :=
  A342465.P10365381412380769729.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329697, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342465.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342651.P14835572400052172115

`A329697(A156552(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A342651.P14835572400052172115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A156552 (n + 2)).toNat

end

end A342651.P14835572400052172115

noncomputable section

/-- A342651: a(n) = A329697(A156552(n)).

Offset 2, canonical program `A342651.P14835572400052172115`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A156552, A329697, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A342651 (n : ℕ) : ℤ :=
  A342651.P14835572400052172115.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A156552, A329697, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A342651.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A346703.P1476033231604799178

`(n+1)/a(A089196(n))` with `a(0)=1`
-/

namespace A346703.P1476033231604799178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℚ) / a (A089196 n).toNat

end

end A346703.P1476033231604799178

noncomputable section

/-- A346703: Product of primes at odd positions in the weakly increasing list (with multiplicity) of prime factors of n.

Offset 1, canonical program `A346703.P1476033231604799178`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346703 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A346703.P1476033231604799178.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346703.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A346704.P16444649909817552162

`A346703(A032742(n+1))`
-/

namespace A346704.P16444649909817552162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346703 (A032742 (n + 1)).toNat

end

end A346704.P16444649909817552162

noncomputable section

/-- A346704: Product of primes at even positions in the weakly increasing list (with multiplicity) of prime factors of n.

Offset 1, canonical program `A346704.P16444649909817552162`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346704 (n : ℕ) : ℤ :=
  A346704.P16444649909817552162.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346704.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347403.P6225290187036533418

`∑{d}[A063918(n+1), A026233(#)]`
-/

namespace A347403.P6225290187036533418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A026233 d

end

end A347403.P6225290187036533418

noncomputable section

/-- A347403: Step at which n is removed by the sieve of Eratosthenes or 0 if n is prime.

Offset 1, canonical program `A347403.P6225290187036533418`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347403 (n : ℕ) : ℤ :=
  A347403.P6225290187036533418.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347403.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348977.P9442463870436647820

`gcd(A000203(n+1), A332993(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348977.P9442463870436647820
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A332993 (n + 1))

end

end A348977.P9442463870436647820

noncomputable section

/-- A348977: a(n) = gcd(sigma(n), A332993(n)).

Offset 1, canonical program `A348977.P9442463870436647820`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A332993, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348977 (n : ℕ) : ℤ :=
  (A348977.P9442463870436647820.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A332993, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348977.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348978.P606956241417076387

`A332993(n+1)/A348977(n+1)`
-/

namespace A348978.P606956241417076387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332993 (n + 1) : ℚ) / (A348977 (n + 1) : ℚ)

end

end A348978.P606956241417076387

noncomputable section

/-- A348978: Numerator of ratio A332993(n) / sigma(n).

Offset 1, canonical program `A348978.P606956241417076387`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A332993, A348977, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348978 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348978.P606956241417076387.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A332993, A348977, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348978.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348979.P15532692036909443139

`A000203(n+1)/A348977(n+1)`
-/

namespace A348979.P15532692036909443139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A348977 (n + 1) : ℚ)

end

end A348979.P15532692036909443139

noncomputable section

/-- A348979: Denominator of ratio A332993(n) / sigma(n).

Offset 1, canonical program `A348979.P15532692036909443139`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348977, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348979 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348979.P15532692036909443139.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348977, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348979.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353492.P14876298458293559379

`C(A353490(n+1), 3)`
-/

namespace A353492.P14876298458293559379
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A353490 (n + 1)).toNat 3

end

end A353492.P14876298458293559379

noncomputable section

/-- A353492: a(1) = 0, and for n > 1, a(n) = 1 if the largest proper divisor of n is of the form 4k+3, otherwise 0.

Offset 1, canonical program `A353492.P14876298458293559379`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353492 (n : ℕ) : ℤ :=
  (A353492.P14876298458293559379.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353492.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356172.P9558553611360781644

`A000035(n+1)*A356173(n+1)`
-/

namespace A356172.P9558553611360781644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) * A356173 (n + 1)

end

end A356172.P9558553611360781644

noncomputable section

/-- A356172: a(n) = 1 if n is odd and not divisible by two consecutive prime numbers, otherwise 0.

Offset 1, canonical program `A356172.P9558553611360781644`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356173, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356172 (n : ℕ) : ℤ :=
  A356172.P9558553611360781644.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356173, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356172.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359581.P11413063305080841777

`(-1)^A329697(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A359581.P11413063305080841777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A329697 (n + 1) : ℤ)

end

end A359581.P11413063305080841777

noncomputable section

/-- A359581: a(n) = (-1)^A329697(n).

Offset 1, canonical program `A359581.P11413063305080841777`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329697, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359581 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A359581.P11413063305080841777.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329697, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359581.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359583.P16521673374742263581

`A329697(n+1)%2`
-/

namespace A359583.P16521673374742263581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329697 (n + 1)) 2

end

end A359583.P16521673374742263581

noncomputable section

/-- A359583: Parity of A329697.

Offset 1, canonical program `A359583.P16521673374742263581`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329697, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359583 (n : ℕ) : ℤ :=
  A359583.P16521673374742263581.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329697, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359583.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359584.P4554964889830595715

`eq[1, A359583(n+1)]+1`
-/

namespace A359584.P4554964889830595715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359583 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A359584.P4554964889830595715

noncomputable section

/-- A359584: Positions of odd terms in A329697.

Offset 1, canonical program `A359584.P4554964889830595715`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359584 (n : ℕ) : ℤ :=
  (A359584.P4554964889830595715.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359584.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359585.P8054096044166302466

`eq[0, A359583(n+1)]+1`
-/

namespace A359585.P8054096044166302466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359583 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A359585.P8054096044166302466

noncomputable section

/-- A359585: Positions of even terms in A329697.

Offset 1, canonical program `A359585.P8054096044166302466`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359585 (n : ℕ) : ℤ :=
  (A359585.P8054096044166302466.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359585.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359586.P7786742167987967420

`∑{d}[n+1, A359581(#)]`
-/

namespace A359586.P7786742167987967420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A359581 d

end

end A359586.P7786742167987967420

noncomputable section

/-- A359586: Inverse Möbius transform of A359581.

Offset 1, canonical program `A359586.P7786742167987967420`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359581, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359586 (n : ℕ) : ℤ :=
  A359586.P7786742167987967420.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359581, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359586.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A364042.P9636022355613988781

`2^A329697(n+1)-A000120(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A364042.P9636022355613988781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A329697 (n + 1) : ℤ) - (A000120 (n + 1) : ℚ)

end

end A364042.P9636022355613988781

noncomputable section

/-- A364042: a(n) = 2^A329697(n) - A000120(n).

Offset 1, canonical program `A364042.P9636022355613988781`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329697, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364042 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A364042.P9636022355613988781.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329697, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364042.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A364191.P10213461734458161337

`A000720(A067695(n+1))`
-/

namespace A364191.P10213461734458161337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A067695 (n + 1)).toNat

end

end A364191.P10213461734458161337

noncomputable section

/-- A364191: Low co-mode in the multiset of prime indices of n.

Offset 1, canonical program `A364191.P10213461734458161337`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364191 (n : ℕ) : ℤ :=
  A364191.P10213461734458161337.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364191.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365710.P6495942402936718703

`A119288(A126706(n+1))`
-/

namespace A365710.P6495942402936718703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119288 (A126706 (n + 1)).toNat

end

end A365710.P6495942402936718703

noncomputable section

/-- A365710: a(n) = second smallest distinct prime factor of A126706(n).

Offset 1, canonical program `A365710.P6495942402936718703`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A119288, A126706, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365710 (n : ℕ) : ℤ :=
  A365710.P6495942402936718703.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A119288, A126706, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365710.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366927.P13281350525122214232

`∑{p}[A127699(n+1), A001221(#)]`
-/

namespace A366927.P13281350525122214232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001221 p

end

end A366927.P13281350525122214232

noncomputable section

/-- A366927: Number of distinct primes p used in the mapping of k = k - k/p terminating at 1, where p is any of the prime factors of k.

Offset 1, canonical program `A366927.P13281350525122214232`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A366927 (n : ℕ) : ℤ :=
  A366927.P13281350525122214232.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A366927.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371061.P6701767755374458246

`A117818(a(n-1))+A117818(a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A371061.P6701767755374458246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A117818 (a (n - 1)).toNat + A117818 (a (n - 2)).toNat

end

end A371061.P6701767755374458246

noncomputable section

/-- A371061: a(1)=1, a(2)=2; for n > 2, a(n) is the sum of the largest proper divisor of each of the previous two terms, except that the term itself is used if it has no proper divisors > 1.

Offset 1, canonical program `A371061.P6701767755374458246`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A117818, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A371061 (n : ℕ) : ℤ :=
  A371061.P6701767755374458246.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A117818, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A371061.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373083.P10225410656392332920

`a(n-1)+A117818(n+1)` with `a(0)=1`
-/

namespace A373083.P10225410656392332920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A117818 (n + 1)

end

end A373083.P10225410656392332920

noncomputable section

/-- A373083: a(1) = 1; for n > 1, a(n) = a(n-1) + n if n is prime, else a(n) = a(n-1) + largest divisor of n < n.

Offset 1, canonical program `A373083.P10225410656392332920`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A117818, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373083 (n : ℕ) : ℤ :=
  A373083.P10225410656392332920.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A117818, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373083.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373365.P4265331062570760901

`gcd(A001414(n+1), A064097(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373365.P4265331062570760901
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001414 (n + 1)) (A064097 (n + 1))

end

end A373365.P4265331062570760901

noncomputable section

/-- A373365: a(n) = gcd(A001414(n), A064097(n)), where A001414 is the sum of prime factors with repetition, and A064097 is a quasi-logarithm defined inductively by a(1) = 0 and a(p) = 1 + a(p-1) if p is prime and a(n*m) = a(n) + a(m) if m,n > 1.

Offset 1, canonical program `A373365.P4265331062570760901`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373365 (n : ℕ) : ℤ :=
  (A373365.P4265331062570760901.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373365.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373366.P11726240671660243097

`gcd(A064097(n+1), A083345(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373366.P11726240671660243097
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A064097 (n + 1)) (A083345 (n + 1))

end

end A373366.P11726240671660243097

noncomputable section

/-- A373366: a(n) = gcd(A064097(n), A083345(n)).

Offset 1, canonical program `A373366.P11726240671660243097`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373366 (n : ℕ) : ℤ :=
  (A373366.P11726240671660243097.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373366.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373370.P12452585226732295162

`gcd(A001222(n+1), A064097(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373370.P12452585226732295162
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001222 (n + 1)) (A064097 (n + 1))

end

end A373370.P12452585226732295162

noncomputable section

/-- A373370: a(n) = gcd(bigomega(n), A064097(n)), where bigomega is number of prime factors with repetition, and A064097 is a quasi-logarithm defined inductively by a(1) = 0 and a(p) = 1 + a(p-1) if p is prime and a(n*m) = a(n) + a(m) if m,n > 1.

Offset 1, canonical program `A373370.P12452585226732295162`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373370 (n : ℕ) : ℤ :=
  (A373370.P12452585226732295162.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373370.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373382.P993258168282922167

`gcd(A329697(n+1), A331410(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373382.P993258168282922167
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A329697 (n + 1)) (A331410 (n + 1))

end

end A373382.P993258168282922167

noncomputable section

/-- A373382: a(n) = gcd(A329697(n), A331410(n)), where A329697, A331410 give the number of iterations needed to reach a power of 2, when using the map n -> n-(n/p), or respectively, n -> n+(n/p), where p is the largest prime factor of n.

Offset 1, canonical program `A373382.P993258168282922167`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329697, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373382 (n : ℕ) : ℤ :=
  (A373382.P993258168282922167.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329697, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373382.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A376833.P3930033897863993129

`A119288(A120944(n+1))`
-/

namespace A376833.P3930033897863993129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119288 (A120944 (n + 1)).toNat

end

end A376833.P3930033897863993129

noncomputable section

/-- A376833: Second smallest prime factor of numbers m that are both squarefree and composite.

Offset 1, canonical program `A376833.P3930033897863993129`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A119288, A120944, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A376833 (n : ℕ) : ℤ :=
  A376833.P3930033897863993129.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A119288, A120944, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A376833.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A376857.P11146247838532625083

`∩[2*n+1, A235028(n+1)]`
-/

namespace A376857.P11146247838532625083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376857.P11146247838532625083

noncomputable section

/-- A376857: Fixed points of A162742.

Offset 1, canonical program `A376857.P11146247838532625083`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1086 terms. -/
def A376857 (n : ℕ) : ℤ :=
  (A376857.P11146247838532625083.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1086 terms. -/
def A376857.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377723.P13729861496855616602

`comp[A091377(n+1)-1]+1`
-/

namespace A377723.P13729861496855616602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091377 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A377723.P13729861496855616602

noncomputable section

/-- A377723: Numbers whose number of prime factors (counted with repetition) is greater than or equal to its smallest prime factor.

Offset 1, canonical program `A377723.P13729861496855616602`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377723 (n : ℕ) : ℤ :=
  (A377723.P13729861496855616602.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377723.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387879.P3115674822516309473

`A001222(A290103(n+1))`
-/

namespace A387879.P3115674822516309473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A290103 (n + 1)).toNat

end

end A387879.P3115674822516309473

noncomputable section

/-- A387879: Number of prime factors with multiplicity (bigomega) of the least common multiple of the prime indices of n.

Offset 1, canonical program `A387879.P3115674822516309473`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A290103, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A387879 (n : ℕ) : ℤ :=
  A387879.P3115674822516309473.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A290103, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A387879.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A394049.P14023928957558719581

`A020639(A120944(n+1))²*A119288(A120944(n+1))`
-/

namespace A394049.P14023928957558719581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A120944 (n + 1)).toNat ^ 2 * A119288 (A120944 (n + 1)).toNat

end

end A394049.P14023928957558719581

noncomputable section

/-- A394049: Smallest number k that is neither squarefree nor squareful such that rad(k) | s(n), where s = A120944 is the sequence of squarefree composite numbers and rad = A007947.

Offset 1, canonical program `A394049.P14023928957558719581`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020639, A119288, A120944, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A394049 (n : ℕ) : ℤ :=
  A394049.P14023928957558719581.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020639, A119288, A120944, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A394049.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A399155.P3147471134997394495

`A175126(n+2)-A309892(n+2)`
-/

namespace A399155.P3147471134997394495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (n + 2) - A309892 (n + 2)

end

end A399155.P3147471134997394495

noncomputable section

/-- A399155: a(n) = f(n) - g(n), where f(n) is the number of steps to reach 0 by repeatedly subtracting the smallest prime factor of the current value, and g(n) is the number of steps to reach 0 by repeatedly subtracting the largest prime factor.

Offset 2, canonical program `A399155.P3147471134997394495`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399155 (n : ℕ) : ℤ :=
  A399155.P3147471134997394495.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399155.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400427.P4217021055050402070

`A119288(A028234(A000977(n+1)))`
-/

namespace A400427.P4217021055050402070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119288 (A028234 (A000977 (n + 1)).toNat).toNat

end

end A400427.P4217021055050402070

noncomputable section

/-- A400427: 3rd least distinct prime factor of numbers with 3 or more distinct prime factors.

Offset 1, canonical program `A400427.P4217021055050402070`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4622 terms. -/
def A400427 (n : ℕ) : ℤ :=
  A400427.P4217021055050402070.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4622 terms. -/
def A400427.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005090.P16469068268029111629

`A001221(n+1)-A005088(n+1)-A079978(n+1)`
-/

namespace A005090.P16469068268029111629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A005088 (n + 1) - A079978 (n + 1)

end

end A005090.P16469068268029111629

noncomputable section

/-- A005090: Number of primes == 2 mod 3 dividing n.

Offset 1, canonical program `A005090.P16469068268029111629`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A005090 (n : ℕ) : ℤ :=
  A005090.P16469068268029111629.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A005090.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A006022.P15911627669117851696

`A332993(n+1)-(n+1)`
-/

namespace A006022.P15911627669117851696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332993 (n + 1) - (n + 1 : ℤ)

end

end A006022.P15911627669117851696

noncomputable section

/-- A006022: Sprague-Grundy (or Nim) values for the game of Maundy cake on an n X 1 sheet.

Offset 1, canonical program `A006022.P15911627669117851696`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A332993, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A006022 (n : ℕ) : ℤ :=
  A006022.P15911627669117851696.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A332993, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A006022.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023571.P452033213423234319

`A119288(abs(2-A156037(n+1)))`
-/

namespace A023571.P452033213423234319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119288 |2 - A156037 (n + 1)|.toNat

end

end A023571.P452033213423234319

noncomputable section

/-- A023571: Least odd prime divisor of p(n)-3, or 1 if p(n)-3 is a power of 2.

Offset 1, canonical program `A023571.P452033213423234319`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A023571 (n : ℕ) : ℤ :=
  A023571.P452033213423234319.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A023571.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046669.P15983163477569148833

`A088821(n+1)+1`
-/

namespace A046669.P15983163477569148833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088821 (n + 1) + 1

end

end A046669.P15983163477569148833

noncomputable section

/-- A046669: Partial sums of A020639.

Offset 1, canonical program `A046669.P15983163477569148833`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088821, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A046669 (n : ℕ) : ℤ :=
  A046669.P15983163477569148833.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088821, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A046669.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A051948.P1768711857070250922

`eq[A011373(A020639(n+1)), A175126(n)]`
-/

namespace A051948.P1768711857070250922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011373 (A020639 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051948.P1768711857070250922

noncomputable section

/-- A051948: Numbers k such that k*sigma(k) == 2 (mod phi(k)).

Offset 1, canonical program `A051948.P1768711857070250922`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1232 terms. -/
def A051948 (n : ℕ) : ℤ :=
  (A051948.P1768711857070250922.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1232 terms. -/
def A051948.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057237.P15696957841130648253

`A159475(n+1)%(n+2)`
-/

namespace A057237.P15696957841130648253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A159475 (n + 1)) (n + 2 : ℤ)

end

end A057237.P15696957841130648253

noncomputable section

/-- A057237: Maximum k <= n such that 1, 2, ..., k are all relatively prime to n.

Offset 1, canonical program `A057237.P15696957841130648253`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057237 (n : ℕ) : ℤ :=
  A057237.P15696957841130648253.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057237.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061373.P17835350724076642860

`A064097(n+1)+A054725(n+1)`
-/

namespace A061373.P17835350724076642860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (n + 1) + A054725 (n + 1)

end

end A061373.P17835350724076642860

noncomputable section

/-- A061373: "Natural" logarithm, defined inductively by a(1)=1, a(p) = 1 + a(p-1) if p is prime and a(n*m) = a(n) + a(m) if n, m>1.

Offset 1, canonical program `A061373.P17835350724076642860`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061373 (n : ℕ) : ℤ :=
  A061373.P17835350724076642860.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061373.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067029.P17255758945913048832

`A001222(n+1)-A362983(n+1)`
-/

namespace A067029.P17255758945913048832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A362983 (n + 1)

end

end A067029.P17255758945913048832

noncomputable section

/-- A067029: Exponent of least prime factor in prime factorization of n, a(1)=0.

Offset 1, canonical program `A067029.P17255758945913048832`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067029 (n : ℕ) : ℤ :=
  A067029.P17255758945913048832.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067029.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069157.P2433626944177830795

`A000005(n+1)*A067029(n+1)/(1+A067029(n+1))`
-/

namespace A069157.P2433626944177830795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) * A067029 (n + 1) : ℚ) / (1 + A067029 (n + 1) : ℚ)

end

end A069157.P2433626944177830795

noncomputable section

/-- A069157: Number of positive divisors of n that are divisible by the smallest prime that divides n.

Offset 1, canonical program `A069157.P2433626944177830795`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067029, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A069157 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A069157.P2433626944177830795.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067029, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A069157.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A069739.P14695023735166251642

`A000108(A067029(n+1))*a(A028234(n+1)-1)` with `a(0)=1, a(1)=1`
-/

namespace A069739.P14695023735166251642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A000108 (A067029 (n + 1)).toNat * a (A028234 (n + 1) - 1).toNat

end

end A069739.P14695023735166251642

noncomputable section

/-- A069739: Size of the key space for isomorphism verification of circulant graphs of order n.

Offset 1, canonical program `A069739.P14695023735166251642`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028234, A067029, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A069739 (n : ℕ) : ℤ :=
  A069739.P14695023735166251642.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028234, A067029, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A069739.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A072411.P16309498336684899128

`lcm(A067029(n+1), a(A028234(n+1)-1))` with `a(0)=1, a(1)=1`
-/

namespace A072411.P16309498336684899128
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.lcm (A067029 (n + 1)) (a (A028234 (n + 1) - 1).toNat : ℤ)

end

end A072411.P16309498336684899128

noncomputable section

/-- A072411: LCM of exponents in prime factorization of n, a(1) = 1.

Offset 1, canonical program `A072411.P16309498336684899128`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028234, A067029, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A072411 (n : ℕ) : ℤ :=
  (A072411.P16309498336684899128.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028234, A067029, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A072411.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A072413.P8118027948727948386

`lt[A072411(n+1), A005361(n+1)]+1`
-/

namespace A072413.P8118027948727948386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072411 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A072413.P8118027948727948386

noncomputable section

/-- A072413: Numbers k such that the LCM of exponents in the prime factorization of k does not equal the product of the exponents.

Offset 1, canonical program `A072413.P8118027948727948386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 349 terms. -/
def A072413 (n : ℕ) : ℤ :=
  (A072413.P8118027948727948386.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 349 terms. -/
def A072413.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072746.P10404751707285318814

`∑[A010051(A004757(n+1)-A074828(n+1))]`
-/

namespace A072746.P10404751707285318814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A004757 (n + 1) - A074828 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072746.P10404751707285318814

noncomputable section

/-- A072746: Number of pairs of primes (p, q) such that, for some integer k, (p+q)/2 = 2^k, 2^(k-1) < p < q, and p <= n.

Offset 1, canonical program `A072746.P10404751707285318814`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072746 (n : ℕ) : ℤ :=
  A072746.P10404751707285318814.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072746.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074848.P1941290085593903967

`A268444(A067029(n+1))*a(A028234(n+1)-1)` with `a(0)=1`
-/

namespace A074848.P1941290085593903967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A268444 (A067029 (n + 1)).toNat * a (A028234 (n + 1) - 1).toNat

end

end A074848.P1941290085593903967

noncomputable section

/-- A074848: Number of 4-infinitary divisors of n.

Offset 1, canonical program `A074848.P1941290085593903967`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028234, A067029, A268444, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A074848 (n : ℕ) : ℤ :=
  A074848.P1941290085593903967.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028234, A067029, A268444, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A074848.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A075145.P13107702614752429613

`A061373(A000040(n+1))`
-/

namespace A075145.P13107702614752429613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061373 (A000040 (n + 1)).toNat

end

end A075145.P13107702614752429613

noncomputable section

/-- A075145: Prime basis of A061373.

Offset 1, canonical program `A075145.P13107702614752429613`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061373, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A075145 (n : ℕ) : ℤ :=
  A075145.P13107702614752429613.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061373, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A075145.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A075861.P7357354350976767421

`2-A184727(n+3)+n`
-/

namespace A075861.P7357354350976767421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A184727 (n + 3) + (n : ℤ)

end

end A075861.P7357354350976767421

noncomputable section

/-- A075861: Least k such that (n-k) divides (n+k).

Offset 2, canonical program `A075861.P7357354350976767421`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A075861 (n : ℕ) : ℤ :=
  A075861.P7357354350976767421.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A075861.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081304.P2095021547290071431

`n+1-A081305(n+1)`
-/

namespace A081304.P2095021547290071431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A081305 (n + 1)

end

end A081304.P2095021547290071431

noncomputable section

/-- A081304: Number of numbers m <= n with prime factors less than 2*lpf(m), where lpf(m) is the least prime factor of m (A020639).

Offset 1, canonical program `A081304.P2095021547290071431`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A081305, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A081304 (n : ℕ) : ℤ :=
  A081304.P2095021547290071431.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A081305, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A081304.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A085393.P1902217502819224353

`A085392(n+1)-A014673(n+1)`
-/

namespace A085393.P1902217502819224353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (n + 1) - A014673 (n + 1)

end

end A085393.P1902217502819224353

noncomputable section

/-- A085393: Difference between the largest and the smallest prime factor of the greatest proper divisor of n.

Offset 1, canonical program `A085393.P1902217502819224353`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014673, A085392, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A085393 (n : ℕ) : ℤ :=
  A085393.P1902217502819224353.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014673, A085392, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A085393.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A085979.P217824273526323431

`∑{digits}[A000040(n+1), A005088(#+2)]`
-/

namespace A085979.P217824273526323431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A005088 (x + 2)).sum

end

end A085979.P217824273526323431

noncomputable section

/-- A085979: Number of 5's in decimal expansion of prime(n).

Offset 1, canonical program `A085979.P217824273526323431`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085979 (n : ℕ) : ℤ :=
  A085979.P217824273526323431.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085979.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085980.P6633588710115276968

`∑{digits}[A000040(n+1), A005088(#+1)]`
-/

namespace A085980.P6633588710115276968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A005088 (x + 1)).sum

end

end A085980.P6633588710115276968

noncomputable section

/-- A085980: Number of 6's in decimal expansion of prime(n).

Offset 1, canonical program `A085980.P6633588710115276968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085980 (n : ℕ) : ℤ :=
  A085980.P6633588710115276968.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085980.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087179.P11729255020928465324

`A067029(n+1)^A005361(A028234(n+1))`
-/

namespace A087179.P11729255020928465324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067029 (n + 1) : ℚ) ^ (A005361 (A028234 (n + 1)).toNat : ℤ)

end

end A087179.P11729255020928465324

noncomputable section

/-- A087179: a(n) = (...(((x1^x2)^x3)^x4)^...) where x1,x2,... are the exponents in the prime factorization of n, a(1) = 0.

Offset 1, canonical program `A087179.P11729255020928465324`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087179 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A087179.P11729255020928465324.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087179.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087794.P13110906513049781115

`A338912(n+1)*A338913(n+1)`
-/

namespace A087794.P13110906513049781115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338912 (n + 1) * A338913 (n + 1)

end

end A087794.P13110906513049781115

noncomputable section

/-- A087794: Products of prime-indices of factors of semiprimes.

Offset 1, canonical program `A087794.P13110906513049781115`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A338912, A338913, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A087794 (n : ℕ) : ℤ :=
  A087794.P13110906513049781115.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A338912, A338913, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A087794.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A089992.P14796854152102679484

`A119288(A024619(n+1))`
-/

namespace A089992.P14796854152102679484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119288 (A024619 (n + 1)).toNat

end

end A089992.P14796854152102679484

noncomputable section

/-- A089992: Second prime divisor of numbers that are not powers of primes (A024619).

Offset 1, canonical program `A089992.P14796854152102679484`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024619, A119288, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A089992 (n : ℕ) : ℤ :=
  A089992.P14796854152102679484.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024619, A119288, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A089992.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A091372.P16625073675371120562

`∑[char[A091375(n+1)-1]]`
-/

namespace A091372.P16625073675371120562
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091375 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091372.P16625073675371120562

noncomputable section

/-- A091372: Number of numbers <= n having more prime factors than the value of their smallest prime factor.

Offset 1, canonical program `A091372.P16625073675371120562`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091372 (n : ℕ) : ℤ :=
  (A091372.P16625073675371120562.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096309.P13335517260921552077

`A082091(A072411(n+1))`
-/

namespace A096309.P13335517260921552077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082091 (A072411 (n + 1)).toNat

end

end A096309.P13335517260921552077

noncomputable section

/-- A096309: a(1)=1; for n > 1, a(n) is the number of levels in the "stacked" prime number factorization of n (prime number factorization of the exponents if necessary and so on ...).

Offset 1, canonical program `A096309.P13335517260921552077`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096309 (n : ℕ) : ℤ :=
  A096309.P13335517260921552077.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096309.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106490.P116001094096294288

`1+a(A067029(n+1)-1)+a(A028234(n+1)-1)` with `a(0)=0, a(1)=1`
-/

namespace A106490.P116001094096294288
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 + a (A067029 (n + 1) - 1).toNat + a (A028234 (n + 1) - 1).toNat

end

end A106490.P116001094096294288

noncomputable section

/-- A106490: Total number of bases and exponents in Quetian Superfactorization of n, excluding the unity-exponents at the tips of branches.

Offset 1, canonical program `A106490.P116001094096294288`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028234, A067029, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A106490 (n : ℕ) : ℤ :=
  (A106490.P116001094096294288.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028234, A067029, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A106490.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A106491.P7513400497018402560

`A106490(n+1)+A064372(n+1)`
-/

namespace A106491.P7513400497018402560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106490 (n + 1) + A064372 (n + 1)

end

end A106491.P7513400497018402560

noncomputable section

/-- A106491: Total number of bases and exponents in Quetian Superfactorization of n, including the unity-exponents at the tips of branches.

Offset 1, canonical program `A106491.P7513400497018402560`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064372, A106490, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A106491 (n : ℕ) : ℤ :=
  A106491.P7513400497018402560.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064372, A106490, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A106491.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A107286.P958124045915592804

`gcd(n, A004275(A175126(n)))`
-/

namespace A107286.P958124045915592804
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A004275 (A175126 n).toNat)

end

end A107286.P958124045915592804

noncomputable section

/-- A107286: a(0) = 0; for n>0, minimal prime factor of n, or 1 if n is 1 or a prime.

Offset 0, canonical program `A107286.P958124045915592804`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107286 (n : ℕ) : ℤ :=
  (A107286.P958124045915592804.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107286.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107393.P1629707877370025519

`A107279(A107286(n))-char[A000040(n+1)]`
-/

namespace A107393.P1629707877370025519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 (A107286 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A107393.P1629707877370025519

noncomputable section

/-- A107393: a(n) = -1 if n is a prime, else a(n) = 1 if n is the sum of three odd primes, else a(n) = 2 if n is the sum of two primes, else a(n) = 0.

Offset 0, canonical program `A107393.P1629707877370025519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107393 (n : ℕ) : ℤ :=
  A107393.P1629707877370025519.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107393.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108514.P13085774960005995422

`n+1-A108738(n+1)%A008619(n)`
-/

namespace A108514.P13085774960005995422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - Int.tmod (A108738 (n + 1)) (A008619 n)

end

end A108514.P13085774960005995422

noncomputable section

/-- A108514: If n is a power of 2, a(n)=n; otherwise a(n) = (p-1)*n/p where p = smallest odd prime divisor of n.

Offset 1, canonical program `A108514.P13085774960005995422`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108514 (n : ℕ) : ℤ :=
  A108514.P13085774960005995422.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108514.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112624.P7419544507916740206

`A000142(A067029(n+1))*a(A028234(n+1)-1)` with `a(0)=1, a(1)=1`
-/

namespace A112624.P7419544507916740206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A000142 (A067029 (n + 1)).toNat * a (A028234 (n + 1) - 1).toNat

end

end A112624.P7419544507916740206

noncomputable section

/-- A112624: If p^b(p,n) is the highest power of the prime p dividing n, then a(n) = Product_{p|n} b(p,n)!.

Offset 1, canonical program `A112624.P7419544507916740206`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028234, A067029, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A112624 (n : ℕ) : ℤ :=
  A112624.P7419544507916740206.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028234, A067029, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A112624.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A115069.P6246575855030010184

`3^A005088(n+1)`
-/

namespace A115069.P6246575855030010184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A005088 (n + 1) : ℤ)

end

end A115069.P6246575855030010184

noncomputable section

/-- A115069: a(n) = 3^b(n), where b(n) is #{primes p=1 mod 3 dividing n}.

Offset 1, canonical program `A115069.P6246575855030010184`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A115069 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A115069.P6246575855030010184.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A115069.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A115070.P14336137685640235068

`A000010(n+1)/A115069(n+1)`
-/

namespace A115070.P14336137685640235068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A115069 (n + 1) : ℚ)

end

end A115070.P14336137685640235068

noncomputable section

/-- A115070: a(n) = phi(n)/3^b(n), where b(n) is #{primes p=1 mod 3 dividing n}.

Offset 1, canonical program `A115070.P14336137685640235068`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A115069, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A115070 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A115070.P14336137685640235068.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A115069, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A115070.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A124794.P1483708906814642805

`A318762(n+1)/A112624(n+1)`
-/

namespace A124794.P1483708906814642805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318762 (n + 1) : ℚ) / (A112624 (n + 1) : ℚ)

end

end A124794.P1483708906814642805

noncomputable section

/-- A124794: Coefficients of incomplete Bell polynomials in the prime factorization order.

Offset 1, canonical program `A124794.P1483708906814642805`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124794 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A124794.P1483708906814642805.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124794.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124795.P5552241123278455388

`A124794(n+1)*A321898(A064989(n+1))`
-/

namespace A124795.P5552241123278455388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124794 (n + 1) * A321898 (A064989 (n + 1)).toNat

end

end A124795.P5552241123278455388

noncomputable section

/-- A124795: Number of permutations with given cycle structure, in the prime factorization order.

Offset 1, canonical program `A124795.P5552241123278455388`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 352 terms. -/
def A124795 (n : ℕ) : ℤ :=
  A124795.P5552241123278455388.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 352 terms. -/
def A124795.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128216.P10421157790534195060

`a(n-1)+a(A057237(n))` with `a(0)=1, a(1)=1`
-/

namespace A128216.P10421157790534195060
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + a (A057237 n).toNat

end

end A128216.P10421157790534195060

noncomputable section

/-- A128216: a(1)=a(2)=1. a(n+1) = a(n) + a(smallest prime dividing n).

Offset 1, canonical program `A128216.P10421157790534195060`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2237 terms. -/
def A128216 (n : ℕ) : ℤ :=
  (A128216.P10421157790534195060.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2237 terms. -/
def A128216.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130675.P361296147729104695

`A008480(n+1)*A112624(n+1)`
-/

namespace A130675.P361296147729104695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (n + 1) * A112624 (n + 1)

end

end A130675.P361296147729104695

noncomputable section

/-- A130675: Factorial of bigomega(n).

Offset 1, canonical program `A130675.P361296147729104695`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008480, A112624, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A130675 (n : ℕ) : ℤ :=
  A130675.P361296147729104695.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008480, A112624, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A130675.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A130897.P4414594187265955759

`eq[3, A096309(n+1)]+1`
-/

namespace A130897.P4414594187265955759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096309 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A130897.P4414594187265955759

noncomputable section

/-- A130897: Numbers that are not exponentially squarefree.

Offset 1, canonical program `A130897.P4414594187265955759`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2203 terms. -/
def A130897 (n : ℕ) : ℤ :=
  (A130897.P4414594187265955759.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2203 terms. -/
def A130897.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138220.P14727186179131919586

`lt[A154617(n+1), A256970(A008706(3*n))]`
-/

namespace A138220.P14727186179131919586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256970 (A008706 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A138220.P14727186179131919586

noncomputable section

/-- A138220: Numbers k such that 900*k^2 + 1 is prime.

Offset 1, canonical program `A138220.P14727186179131919586`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A138220 (n : ℕ) : ℤ :=
  (A138220.P14727186179131919586.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A138220.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143151.P15041468742573883089

`A107286(A134575(n+1))`
-/

namespace A143151.P15041468742573883089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (A134575 (n + 1)).toNat

end

end A143151.P15041468742573883089

noncomputable section

/-- A143151: Triangle read by rows, A051731 * (A020639 * 0^(n-k)), 1<=k<=n.

Offset 1, canonical program `A143151.P15041468742573883089`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143151 (n : ℕ) : ℤ :=
  A143151.P15041468742573883089.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143151.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143153.P7724088284005228171

`A054525(n+1)*A143151(n+1)`
-/

namespace A143153.P7724088284005228171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) * A143151 (n + 1)

end

end A143153.P7724088284005228171

noncomputable section

/-- A143153: Triangle read by rows, A054525 * (A020639 * 0^(n-k)), 1<=k<=n.

Offset 1, canonical program `A143153.P7724088284005228171`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A143153 (n : ℕ) : ℤ :=
  A143153.P7724088284005228171.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A143153.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144585.P8698217019135747771

`eq[1, A107393(A001414(n+1))]+1`
-/

namespace A144585.P8698217019135747771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (A001414 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A144585.P8698217019135747771

noncomputable section

/-- A144585: Composites whose sum of prime factors is an odd nonprime (counted with multiplicity).

Offset 1, canonical program `A144585.P8698217019135747771`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144585 (n : ℕ) : ℤ :=
  (A144585.P8698217019135747771.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144585.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144586.P989853270849841506

`A001414(A144585(n+1))`
-/

namespace A144586.P989853270849841506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A144585 (n + 1)).toNat

end

end A144586.P989853270849841506

noncomputable section

/-- A144586: a(n) = odd and nonprime sum (with multiplicity) of prime factors of composite(k) = A002808(k).

Offset 1, canonical program `A144586.P989853270849841506`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144586 (n : ℕ) : ℤ :=
  A144586.P989853270849841506.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144586.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152765.P15824586284702034211

`A000108(n)/A152766(A233583(n+1))`
-/

namespace A152765.P15824586284702034211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 n : ℚ) / (A152766 (A233583 (n + 1)).toNat : ℚ)

end

end A152765.P15824586284702034211

noncomputable section

/-- A152765: Smallest prime divisor of Catalan number A000108(n), with a(0) = a(1) = 1.

Offset 0, canonical program `A152765.P15824586284702034211`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A152765 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A152765.P15824586284702034211.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A152765.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166948.P13457169353326532215

`A067029(Δ[A053767(n)])`
-/

namespace A166948.P13457169353326532215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (f1 (n + 1) - f1 n).toNat

end

end A166948.P13457169353326532215

noncomputable section

/-- A166948: The count of smallest prime factors in n-th composite.

Offset 1, canonical program `A166948.P13457169353326532215`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A166948 (n : ℕ) : ℤ :=
  A166948.P13457169353326532215.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A166948.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176171.P2480019139692235808

`A014673(A046386(n+1))`
-/

namespace A176171.P2480019139692235808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A046386 (n + 1)).toNat

end

end A176171.P2480019139692235808

noncomputable section

/-- A176171: Second prime-factor of n-th product of 4 distinct primes.

Offset 1, canonical program `A176171.P2480019139692235808`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A176171 (n : ℕ) : ℤ :=
  A176171.P2480019139692235808.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A176171.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176255.P16340157710452998996

`filter[A168489(n+1), A353492(#)]`
-/

namespace A176255.P16340157710452998996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168489 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353492 (f1 j).toNat = 1) n)

end

end A176255.P16340157710452998996

noncomputable section

/-- A176255: Numbers of the form 4k-1 with least prime divisor of the form 4m+1.

Offset 1, canonical program `A176255.P16340157710452998996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3782 terms. -/
def A176255 (n : ℕ) : ℤ :=
  A176255.P16340157710452998996.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3782 terms. -/
def A176255.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176256.P15845351175939250805

`filter[A016813(n), A353492(#)]`
-/

namespace A176256.P15845351175939250805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353492 (f1 j).toNat = 1) n)

end

end A176256.P15845351175939250805

noncomputable section

/-- A176256: Numbers of the form 4k+1 with least prime divisor of the form 4m-1.

Offset 1, canonical program `A176256.P15845351175939250805`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A176256 (n : ℕ) : ℤ :=
  A176256.P15845351175939250805.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A176256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176504.P7149096578735921133

`A338912(n+1)+A338913(n+1)`
-/

namespace A176504.P7149096578735921133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338912 (n + 1) + A338913 (n + 1)

end

end A176504.P7149096578735921133

noncomputable section

/-- A176504: a(n) = m + k where prime(m)*prime(k) = semiprime(n).

Offset 1, canonical program `A176504.P7149096578735921133`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A338912, A338913, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A176504 (n : ℕ) : ℤ :=
  A176504.P7149096578735921133.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A338912, A338913, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A176504.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A176506.P10839499400759222980

`A338913(n+1)-A338912(n+1)`
-/

namespace A176506.P10839499400759222980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338913 (n + 1) - A338912 (n + 1)

end

end A176506.P10839499400759222980

noncomputable section

/-- A176506: Difference between the prime indices of the two factors of the n-th semiprime.

Offset 1, canonical program `A176506.P10839499400759222980`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A338912, A338913, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A176506 (n : ℕ) : ℤ :=
  A176506.P10839499400759222980.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A338912, A338913, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A176506.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A178610.P3507936517445186257

`A001358(n+1)-A176506(n+1)`
-/

namespace A178610.P3507936517445186257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1) - A176506 (n + 1)

end

end A178610.P3507936517445186257

noncomputable section

/-- A178610: n-th semiprime minus difference between the prime indices of the two factors of n-th semiprime.

Offset 1, canonical program `A178610.P3507936517445186257`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001358, A176506, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A178610 (n : ℕ) : ℤ :=
  A178610.P3507936517445186257.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001358, A176506, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A178610.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A178611.P10185603375269794879

`A001358(n+1)-A176504(n+1)`
-/

namespace A178611.P10185603375269794879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1) - A176504 (n + 1)

end

end A178611.P10185603375269794879

noncomputable section

/-- A178611: n-th semiprime minus sum of prime indices of the two factors of n-th semiprime.

Offset 1, canonical program `A178611.P10185603375269794879`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001358, A176504, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A178611 (n : ℕ) : ℤ :=
  A178611.P10185603375269794879.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001358, A176504, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A178611.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A185102.P13374091173655965378

`A096309(n+1)-A000007(n)`
-/

namespace A185102.P13374091173655965378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096309 (n + 1) - A000007 n

end

end A185102.P13374091173655965378

noncomputable section

/-- A185102: a(n) is the recursion depth of repeatedly factoring n and then the exponents in its prime product factorization, until 1 is reached.

Offset 1, canonical program `A185102.P13374091173655965378`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185102 (n : ℕ) : ℤ :=
  A185102.P13374091173655965378.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185102.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192330.P6299987223408556300

`(n*A006022(n+1))%(n+1)+1`
-/

namespace A192330.P6299987223408556300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A006022 (n + 1)) (n + 1 : ℤ) + 1

end

end A192330.P6299987223408556300

noncomputable section

/-- A192330: Minimum number of endpoints of a tree so that there exists a zero-entropy map defined on it having a period n orbit.

Offset 1, canonical program `A192330.P6299987223408556300`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A192330 (n : ℕ) : ℤ :=
  A192330.P6299987223408556300.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A192330.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214674.P10113243327007939250

`A371061(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A214674.P10113243327007939250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A371061 (n + 1) - a (n - 1)

end

end A214674.P10113243327007939250

noncomputable section

/-- A214674: Conway's subprime Fibonacci sequence.

Offset 1, canonical program `A214674.P10113243327007939250`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214674 (n : ℕ) : ℤ :=
  A214674.P10113243327007939250.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214918.P16590612627639944249

`A028310(A075861(n+3)-1)`
-/

namespace A214918.P16590612627639944249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A075861 (n + 3) - 1).toNat

end

end A214918.P16590612627639944249

noncomputable section

/-- A214918: a(n) is the least m > 0 such that Fibonacci(n-m) divides Fibonacci(n+2+m).

Offset 2, canonical program `A214918.P16590612627639944249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A214918 (n : ℕ) : ℤ :=
  A214918.P16590612627639944249.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A214918.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A220096.P12219812574306343881

`ceil(n/A107286(n+1))`
-/

namespace A220096.P12219812574306343881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / (A107286 (n + 1) : ℚ)⌉

end

end A220096.P12219812574306343881

noncomputable section

/-- A220096: a(1)=0, n-1 if n is prime, else largest proper divisor of n.

Offset 1, canonical program `A220096.P12219812574306343881`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A220096 (n : ℕ) : ℤ :=
  A220096.P12219812574306343881.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A220096.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228019.P10733559880381365569

`lt[A055671(n), A107393(A007953(n))]`
-/

namespace A228019.P10733559880381365569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A228019.P10733559880381365569

noncomputable section

/-- A228019: Composite numbers whose sum of digits is a composite number.

Offset 1, canonical program `A228019.P10733559880381365569`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6346 terms. -/
def A228019 (n : ℕ) : ℤ :=
  (A228019.P10733559880381365569.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6346 terms. -/
def A228019.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235030.P725307936395683230

`lt[0, A235145(n)]`
-/

namespace A235030.P725307936395683230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235145 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A235030.P725307936395683230

noncomputable section

/-- A235030: Numbers such that A235027(A235027(n)) <> n; Numbers which are divisible by any of the odd terms of A204219.

Offset 1, canonical program `A235030.P725307936395683230`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3862 terms. -/
def A235030 (n : ℕ) : ℤ :=
  (A235030.P725307936395683230.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3862 terms. -/
def A235030.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235473.P1849628016457974693

`p?[A001489(n)*A107393(A023717(n))]`
-/

namespace A235473.P1849628016457974693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n * A107393 (A023717 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235473.P1849628016457974693

noncomputable section

/-- A235473: Primes whose base-3 representation is also the base-4 representation of a prime.

Offset 1, canonical program `A235473.P1849628016457974693`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A235473 (n : ℕ) : ℤ :=
  A235473.P1849628016457974693.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A235473.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242034.P4270946294743915057

`A020639(A243937(n+1)-3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A242034.P4270946294743915057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A243937 (n + 1) - 3).toNat

end

end A242034.P4270946294743915057

noncomputable section

/-- A242034: a(n) = lpf(A243937(n)-3), where lpf = least prime factor (A020639).

Offset 1, canonical program `A242034.P4270946294743915057`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020639, A243937, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A242034 (n : ℕ) : ℤ :=
  A242034.P4270946294743915057.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020639, A243937, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A242034.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A246596.P4248891644944988047

`A069739(A005940(1+n))`
-/

namespace A246596.P4248891644944988047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069739 (A005940 (1 + n)).toNat

end

end A246596.P4248891644944988047

noncomputable section

/-- A246596: Run Length Transform of Catalan numbers A000108.

Offset 0, canonical program `A246596.P4248891644944988047`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A069739, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A246596 (n : ℕ) : ℤ :=
  A246596.P4248891644944988047.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A069739, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A246596.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A246660.P2458529780599884726

`A112624(A005940(1+n))`
-/

namespace A246660.P2458529780599884726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112624 (A005940 (1 + n)).toNat

end

end A246660.P2458529780599884726

noncomputable section

/-- A246660: Run Length Transform of factorials.

Offset 0, canonical program `A246660.P2458529780599884726`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A112624, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A246660 (n : ℕ) : ℤ :=
  A246660.P2458529780599884726.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A112624, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A246660.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A247180.P10468119857668656301

`eq[1, A067029(n+1)]+1`
-/

namespace A247180.P10468119857668656301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A247180.P10468119857668656301

noncomputable section

/-- A247180: Numbers with nonrepeating smallest prime factor.

Offset 1, canonical program `A247180.P10468119857668656301`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6697 terms. -/
def A247180 (n : ℕ) : ℤ :=
  (A247180.P10468119857668656301.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6697 terms. -/
def A247180.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248528.P1592575257902905831

`A103517(eq[17, A256970(n+1)])`
-/

namespace A248528.P1592575257902905831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256970 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A248528.P1592575257902905831

noncomputable section

/-- A248528: Numbers k such that the smallest prime divisor of k^2+1 is 17.

Offset 1, canonical program `A248528.P1592575257902905831`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 598 terms. -/
def A248528 (n : ℕ) : ℤ :=
  A248528.P1592575257902905831.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 598 terms. -/
def A248528.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248530.P3217736262796809143

`A103517(eq[37, A256970(n+1)])`
-/

namespace A248530.P3217736262796809143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  37

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256970 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A248530.P3217736262796809143

noncomputable section

/-- A248530: Numbers k such that the smallest prime divisor of k^2+1 is 37.

Offset 1, canonical program `A248530.P3217736262796809143`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 226 terms. -/
def A248530 (n : ℕ) : ℤ :=
  A248530.P3217736262796809143.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 226 terms. -/
def A248530.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248531.P4600909781457845477

`A103517(eq[41, A256970(n+1)])`
-/

namespace A248531.P4600909781457845477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  41

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256970 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A248531.P4600909781457845477

noncomputable section

/-- A248531: Numbers k such that the smallest prime divisor of k^2+1 is 41.

Offset 1, canonical program `A248531.P4600909781457845477`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 189 terms. -/
def A248531 (n : ℕ) : ℤ :=
  A248531.P4600909781457845477.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 189 terms. -/
def A248531.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270418.P10010397969533122303

`a(A028234(n+1)-1)*A020639(n+1)^(A010060(A067029(n+1))*A065620(A067029(n+1)))` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5, a(5)=6, a(6)=7, a(7)=1`
-/

namespace A270418.P10010397969533122303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 3, 4, 5, 6, 7, 1] fun n a =>
  a (A028234 (n + 1) - 1).toNat * (A020639 (n + 1) : ℚ) ^ (A010060 (A067029 (n + 1)).toNat * A065620 (A067029 (n + 1)).toNat : ℤ)

end

end A270418.P10010397969533122303

noncomputable section

/-- A270418: Numerator of the rational number obtained when exponents in prime factorization of n are reinterpreted as alternating binary sums (A065620).

Offset 1, canonical program `A270418.P10010397969533122303`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020639, A028234, A065620, A067029, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A270418 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A270418.P10010397969533122303.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020639, A028234, A065620, A067029, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A270418.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A270436.P12203766677717344038

`A020639(n+1)^A065621(A067029(n+1))*a(A028234(n+1)-1)` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A270436.P12203766677717344038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A020639 (n + 1) : ℚ) ^ (A065621 (A067029 (n + 1)).toNat : ℤ) * a (A028234 (n + 1) - 1).toNat

end

end A270436.P12203766677717344038

noncomputable section

/-- A270436: a(1) = 1, for n > 1, a(n) = A020639(n)^A065621(A067029(n)) * a(A028234(n)).

Offset 1, canonical program `A270436.P12203766677717344038`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020639, A028234, A067029, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A270436 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A270436.P12203766677717344038.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020639, A028234, A067029, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A270436.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A270437.P3248540874031846008

`A020639(n+1)^A048724(A067029(n+1))*a(A028234(n+1)-1)` with `a(0)=1`
-/

namespace A270437.P3248540874031846008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A020639 (n + 1) : ℚ) ^ (A048724 (A067029 (n + 1)).toNat : ℤ) * a (A028234 (n + 1) - 1).toNat

end

end A270437.P3248540874031846008

noncomputable section

/-- A270437: Multiplicative with a(p^e) = p^(e XOR 2e), where XOR is bitwise-xor.

Offset 1, canonical program `A270437.P3248540874031846008`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020639, A028234, A067029, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A270437 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A270437.P3248540874031846008.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020639, A028234, A067029, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A270437.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A272601.P14946449839540770670

`lt[char[A272600(n+1)], A107393(n)]`
-/

namespace A272601.P14946449839540770670
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272600 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A272601.P14946449839540770670

noncomputable section

/-- A272601: Composites n such that p-1 does not divide n-1 for at least one prime divisor of n-1.

Offset 1, canonical program `A272601.P14946449839540770670`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8558 terms. -/
def A272601 (n : ℕ) : ℤ :=
  (A272601.P14946449839540770670.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8558 terms. -/
def A272601.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273058.P8771580458606033264

`comp[A072413(n+1)-1]+1`
-/

namespace A273058.P8771580458606033264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072413 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A273058.P8771580458606033264

noncomputable section

/-- A273058: Numbers having pairwise coprime exponents in their canonical prime factorization.

Offset 1, canonical program `A273058.P8771580458606033264`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A273058 (n : ℕ) : ℤ :=
  (A273058.P8771580458606033264.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A273058.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273671.P14240235763284364340

`A270436(A007305(n+2))*A270437(A047679(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A273671.P14240235763284364340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270436 (A007305 (n + 2)).toNat * A270437 (A047679 n).toNat

end

end A273671.P14240235763284364340

noncomputable section

/-- A273671: Permutation of natural numbers: a(n) = A270436(A007305(n+1)) * A270437(A047679(n-1)).

Offset 1, canonical program `A273671.P14240235763284364340`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007305, A047679, A270436, A270437, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A273671 (n : ℕ) : ℤ :=
  A273671.P14240235763284364340.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007305, A047679, A270436, A270437, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A273671.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A274437.P16973748106690964927

`lt[A005090(n+1), A005088(n+1)]+1`
-/

namespace A274437.P16973748106690964927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005088 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A274437.P16973748106690964927

noncomputable section

/-- A274437: Numbers having more distinct prime factors of form 3*k+1 than of the form 3*k+2.

Offset 1, canonical program `A274437.P16973748106690964927`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2085 terms. -/
def A274437 (n : ℕ) : ℤ :=
  (A274437.P16973748106690964927.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2085 terms. -/
def A274437.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276075.P16285277205891807601

`a(A028234(n+1)-1)+A067029(n+1)*A000142(A055396(n+1))` with `a(0)=0, a(1)=1`
-/

namespace A276075.P16285277205891807601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (A028234 (n + 1) - 1).toNat + A067029 (n + 1) * A000142 (A055396 (n + 1)).toNat

end

end A276075.P16285277205891807601

noncomputable section

/-- A276075: a(1) = 0, a(n) = (e1*i1! + e2*i2! + ... + ez*iz!) for n = prime(i1)^e1 * prime(i2)^e2 * ... * prime(iz)^ez, where prime(k) is the k-th prime, A000040(k).

Offset 1, canonical program `A276075.P16285277205891807601`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028234, A055396, A067029, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A276075 (n : ℕ) : ℤ :=
  A276075.P16285277205891807601.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028234, A055396, A067029, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A276075.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A276085.P15454204715786806768

`a(A028234(n+1)-1)+A067029(n+1)*A002110(A055396(n+1)-1)` with `a(0)=0, a(1)=1`
-/

namespace A276085.P15454204715786806768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (A028234 (n + 1) - 1).toNat + A067029 (n + 1) * A002110 (A055396 (n + 1) - 1).toNat

end

end A276085.P15454204715786806768

noncomputable section

/-- A276085: Primorial base log-function: fully additive with a(p) = p#/p, where p# = A034386(p).

Offset 1, canonical program `A276085.P15454204715786806768`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028234, A055396, A067029, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A276085 (n : ℕ) : ℤ :=
  A276085.P15454204715786806768.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028234, A055396, A067029, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A276085.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A277011.P11509307039248087113

`A276075(A005940(1+n))`
-/

namespace A277011.P11509307039248087113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276075 (A005940 (1 + n)).toNat

end

end A277011.P11509307039248087113

noncomputable section

/-- A277011: Left inverse of A277012.

Offset 0, canonical program `A277011.P11509307039248087113`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A276075, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A277011 (n : ℕ) : ℤ :=
  A277011.P11509307039248087113.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A276075, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A277011.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A277021.P15047041159570184147

`A276085(A005940(1+n))`
-/

namespace A277021.P15047041159570184147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276085 (A005940 (1 + n)).toNat

end

end A277021.P15047041159570184147

noncomputable section

/-- A277021: Left inverse of A277022.

Offset 0, canonical program `A277021.P15047041159570184147`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A276085, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A277021 (n : ℕ) : ℤ :=
  A277021.P15047041159570184147.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A276085, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A277021.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A278261.P4182935939581493227

`A046523(A273671(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A278261.P4182935939581493227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A273671 (n + 1)).toNat

end

end A278261.P4182935939581493227

noncomputable section

/-- A278261: a(n) = A046523(A273671(n)).

Offset 1, canonical program `A278261.P4182935939581493227`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, A273671, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A278261 (n : ℕ) : ℤ :=
  A278261.P4182935939581493227.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, A273671, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A278261.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A281680.P9438710182561059984

`A107286(Δ[n²])`
-/

namespace A281680.P9438710182561059984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A281680.P9438710182561059984

noncomputable section

/-- A281680: a(0)=1; for n > 0, if 2n+1 is prime, then a(n)=1, otherwise a(n) = (2n+1)/(largest proper divisor of 2n+1).

Offset 0, canonical program `A281680.P9438710182561059984`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A281680 (n : ℕ) : ℤ :=
  A281680.P9438710182561059984.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A281680.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284558.P12348885866792014571

`A290104(A382255(n))`
-/

namespace A284558.P12348885866792014571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290104 (A382255 n).toNat

end

end A284558.P12348885866792014571

noncomputable section

/-- A284558: Product / LCM of run lengths in binary representation of n: a(n) = A167489(n) / A284559(n).

Offset 0, canonical program `A284558.P12348885866792014571`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8874 terms. -/
def A284558 (n : ℕ) : ℤ :=
  A284558.P12348885866792014571.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8874 terms. -/
def A284558.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284559.P12022845061782467637

`A167489(n)/A284558(n)`
-/

namespace A284559.P12022845061782467637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167489 n : ℚ) / (A284558 n : ℚ)

end

end A284559.P12022845061782467637

noncomputable section

/-- A284559: a(n) = LCM of run lengths in binary representation of n.

Offset 0, canonical program `A284559.P12022845061782467637`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167489, A284558, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A284559 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A284559.P12022845061782467637.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167489, A284558, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A284559.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A284560.P9504178575682127217

`n+1-A284559(n+1)`
-/

namespace A284560.P9504178575682127217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A284559 (n + 1)

end

end A284560.P9504178575682127217

noncomputable section

/-- A284560: a(n) = n minus (LCM of run lengths in binary representation of n) = n - A284559(n).

Offset 1, canonical program `A284560.P9504178575682127217`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284559, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A284560 (n : ℕ) : ℤ :=
  A284560.P9504178575682127217.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284559, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A284560.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A284569.P14305608572066780404

`A072411(A005940(1+n))`
-/

namespace A284569.P14305608572066780404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072411 (A005940 (1 + n)).toNat

end

end A284569.P14305608572066780404

noncomputable section

/-- A284569: a(n) = LCM of the lengths of runs of 1-bits in binary representation of n.

Offset 0, canonical program `A284569.P14305608572066780404`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A072411, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A284569 (n : ℕ) : ℤ :=
  A284569.P14305608572066780404.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A072411, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A284569.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A290109.P12815653144851863488

`A067029(n+1)^a(A028234(n+1)-1)` with `a(0)=1, a(1)=1`
-/

namespace A290109.P12815653144851863488
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 1] fun n a =>
  (A067029 (n + 1) : ℝ) ^ (a (A028234 (n + 1) - 1).toNat)

end

end A290109.P12815653144851863488

noncomputable section

/-- A290109: a(1) = 1; for n > 1, a(n) = x1^(x2^(x3^(x4^...))) where x1, x2, ... are the exponents of the primes present (listed from the smallest prime to the largest) in the prime factorization of n.

Offset 1, canonical program `A290109.P12815653144851863488`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028234, A067029, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A290109 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A290109.P12815653144851863488.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028234, A067029, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A290109.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A293449.P10359876062989901496

`A010051(A067029(n+1))*a(A028234(n+1)-1)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A293449.P10359876062989901496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 1] fun n a =>
  A010051 (A067029 (n + 1)).toNat * a (A028234 (n + 1) - 1).toNat

end

end A293449.P10359876062989901496

noncomputable section

/-- A293449: Characteristic function for A056166, numbers that have no nonprime exponents present in their prime factorization n = p_1^e_1 * ... * p_k^e_k.

Offset 1, canonical program `A293449.P10359876062989901496`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028234, A067029, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A293449 (n : ℕ) : ℤ :=
  A293449.P10359876062989901496.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028234, A067029, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A293449.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A297025.P7398456169126617577

`a(A220096(n))+1` with `a(0)=0`
-/

namespace A297025.P7398456169126617577
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A220096 n).toNat + 1

end

end A297025.P7398456169126617577

noncomputable section

/-- A297025: Number of iterations of A220096 required to reach 0 starting from n.

Offset 0, canonical program `A297025.P7398456169126617577`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A297025 (n : ℕ) : ℤ :=
  (A297025.P7398456169126617577.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A297025.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319710.P1303625166111109778

`A056924(or(1, A067029(n+1)))`
-/

namespace A319710.P1303625166111109778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056924 (Int.lor 1 (A067029 (n + 1))).toNat

end

end A319710.P1303625166111109778

noncomputable section

/-- A319710: a(n) = 1 if n is divisible by the square of its smallest prime factor, 0 otherwise.

Offset 1, canonical program `A319710.P1303625166111109778`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319710 (n : ℕ) : ℤ :=
  A319710.P1303625166111109778.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319710.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322034.P14320398179505959650

`lcm(n+1, A006022(n+1))/(n+1)`
-/

namespace A322034.P14320398179505959650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A006022 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A322034.P14320398179505959650

noncomputable section

/-- A322034: Let p1 <= p2 <= ... <= pk be the prime factors of n, with repetition; let s = 1/p1 + 1/(p1*p2) + 1/(p1*p2*p3) + ... + 1/(p1*p2*...*pk); a(n) = numerator of s. a(1)=0 by convention.

Offset 1, canonical program `A322034.P14320398179505959650`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322034 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A322034.P14320398179505959650.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322034.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322035.P15196591402432882297

`(n+1)/gcd(n+1, A006022(n+1))`
-/

namespace A322035.P15196591402432882297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A006022 (n + 1)) : ℚ)

end

end A322035.P15196591402432882297

noncomputable section

/-- A322035: Let p1 <= p2 <= ... <= pk be the prime factors of n, with repetition; let s = 1/p1 + 1/(p1*p2) + 1/(p1*p2*p3) + ... + 1/(p1*p2*...*pk); a(n) = denominator of s. a(1)=1 by convention.

Offset 1, canonical program `A322035.P15196591402432882297`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322035 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A322035.P15196591402432882297.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322035.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322036.P4333095604752035045

`A322035(n+1)-A322034(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A322036.P4333095604752035045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322035 (n + 1) - A322034 (n + 1)

end

end A322036.P4333095604752035045

noncomputable section

/-- A322036: a(n) = A322035(n) - A322034(n).

Offset 1, canonical program `A322036.P4333095604752035045`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A322034, A322035, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A322036 (n : ℕ) : ℤ :=
  A322036.P4333095604752035045.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A322034, A322035, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A322036.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A323130.P11607457055739153508

`A020639(n+1)^a(A067029(n+1)-1)` with `a(0)=1`
-/

namespace A323130.P11607457055739153508
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (A020639 (n + 1) : ℝ) ^ (a (A067029 (n + 1) - 1).toNat)

end

end A323130.P11607457055739153508

noncomputable section

/-- A323130: a(1) = 1, and for any n > 1, let p be the least prime factor of n, and e be its exponent, then a(n) = p^a(e).

Offset 1, canonical program `A323130.P11607457055739153508`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020639, A067029, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A323130 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A323130.P11607457055739153508.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020639, A067029, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A323130.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A323506.P376847477820473957

`A323505(n)/A246660(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A323506.P376847477820473957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323505 n : ℚ) / (A246660 n : ℚ)

end

end A323506.P376847477820473957

noncomputable section

/-- A323506: a(n) = A323505(n) / A246660(n).

Offset 0, canonical program `A323506.P376847477820473957`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A246660, A323505, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A323506 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A323506.P376847477820473957.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A246660, A323505, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A323506.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A328769.P13912849635349003002

`n*A276085(floor(1/(n+1)+n))`
-/

namespace A328769.P13912849635349003002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A276085 ⌊1 / (n + 1 : ℚ) + (n : ℚ)⌋.toNat

end

end A328769.P13912849635349003002

noncomputable section

/-- A328769: The second primorial based variant of arithmetic derivative: a(p) = A034386(p) for p prime, a(u*v) = a(u)*v + u*a(v), with a(0) = a(1) = 0.

Offset 0, canonical program `A328769.P13912849635349003002`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. -/
def A328769 (n : ℕ) : ℤ :=
  A328769.P13912849635349003002.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. -/
def A328769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328772.P15330017436318976668

`A276150(A328769(n))`
-/

namespace A328772.P15330017436318976668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276150 (A328769 n).toNat

end

end A328772.P15330017436318976668

noncomputable section

/-- A328772: Minimal number of primorials (A002110) that add to A328769(n), where A328769 is the second primorial based variant of arithmetic derivative.

Offset 0, canonical program `A328772.P15330017436318976668`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276150, A328769, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A328772 (n : ℕ) : ℤ :=
  A328772.P15330017436318976668.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276150, A328769, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A328772.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A329378.P18226799587835022428

`A072411(A329600(n+1))`
-/

namespace A329378.P18226799587835022428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072411 (A329600 (n + 1)).toNat

end

end A329378.P18226799587835022428

noncomputable section

/-- A329378: Least common multiple of exponents of prime factors of A108951(n), where A108951 is fully multiplicative with a(prime(i)) = prime(i)# = Product_{i=1..i} A000040(i).

Offset 1, canonical program `A329378.P18226799587835022428`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072411, A329600, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A329378 (n : ℕ) : ℤ :=
  A329378.P18226799587835022428.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072411, A329600, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A329378.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A333145.P1416542542552926660

`A000005(n+1)-A069157(n+1)`
-/

namespace A333145.P1416542542552926660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A069157 (n + 1)

end

end A333145.P1416542542552926660

noncomputable section

/-- A333145: Number of unimodal negated permutations of the multiset of prime indices of n.

Offset 1, canonical program `A333145.P1416542542552926660`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A333145 (n : ℕ) : ℤ :=
  A333145.P1416542542552926660.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A333145.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A333146.P15226525986822621584

`A008480(n+1)-A333145(n+1)`
-/

namespace A333146.P15226525986822621584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (n + 1) - A333145 (n + 1)

end

end A333146.P15226525986822621584

noncomputable section

/-- A333146: Number of non-unimodal negated permutations of the multiset of prime indices of n.

Offset 1, canonical program `A333146.P15226525986822621584`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333146 (n : ℕ) : ℤ :=
  A333146.P15226525986822621584.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333146.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333792.P14193995967881955048

`Δ[A333793(A028310(n))]`
-/

namespace A333792.P14193995967881955048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333793 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A333792.P14193995967881955048

noncomputable section

/-- A333792: a(1) = 0, then after the first differences of A333793.

Offset 1, canonical program `A333792.P14193995967881955048`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333792 (n : ℕ) : ℤ :=
  A333792.P14193995967881955048.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333792.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334094.P15198942786859524273

`p?[A334104(n+1)]`
-/

namespace A334094.P15198942786859524273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334104 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A334094.P15198942786859524273

noncomputable section

/-- A334094: Primes p for which A329697(p) == 4.

Offset 1, canonical program `A334094.P15198942786859524273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 176 terms. -/
def A334094 (n : ℕ) : ℤ :=
  A334094.P15198942786859524273.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 176 terms. -/
def A334094.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334095.P11091807540758565037

`p?[A334105(n+1)]`
-/

namespace A334095.P11091807540758565037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334105 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A334095.P11091807540758565037

noncomputable section

/-- A334095: Primes p for which A329697(p) == 5.

Offset 1, canonical program `A334095.P11091807540758565037`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 578 terms. -/
def A334095 (n : ℕ) : ℤ :=
  A334095.P11091807540758565037.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 578 terms. -/
def A334095.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334096.P958408907750577837

`p?[A334105(n+1)+1]`
-/

namespace A334096.P958408907750577837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334105 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A334096.P958408907750577837

noncomputable section

/-- A334096: Primes p for which A329697(p) == 6.

Offset 1, canonical program `A334096.P958408907750577837`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1435 terms. -/
def A334096 (n : ℕ) : ℤ :=
  A334096.P958408907750577837.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1435 terms. -/
def A334096.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342188.P9826995653217405819

`∩[A130897(n+1)-1, A130897(n+1)]`
-/

namespace A342188.P9826995653217405819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130897 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342188.P9826995653217405819

noncomputable section

/-- A342188: Numbers k such that both k and k+1 are not exponentially squarefree numbers.

Offset 1, canonical program `A342188.P9826995653217405819`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A342188 (n : ℕ) : ℤ :=
  (A342188.P9826995653217405819.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A342188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343597.P7423399871114832918

`lt[A348290(A014673(n+1)), A001222(n+1)]+1`
-/

namespace A343597.P7423399871114832918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348290 (A014673 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A343597.P7423399871114832918

noncomputable section

/-- A343597: Numbers divisible by a 7-smooth composite number.

Offset 1, canonical program `A343597.P7423399871114832918`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 488 terms. -/
def A343597 (n : ℕ) : ℤ :=
  (A343597.P7423399871114832918.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 488 terms. -/
def A343597.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351563.P2370605462905781726

`A067029(A028234(n+1))`
-/

namespace A351563.P2370605462905781726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A028234 (n + 1)).toNat

end

end A351563.P2370605462905781726

noncomputable section

/-- A351563: a(n) is the exponent of the second smallest prime factor of n, or 0 if n is a power of a prime.

Offset 1, canonical program `A351563.P2370605462905781726`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028234, A067029, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351563 (n : ℕ) : ℤ :=
  A351563.P2370605462905781726.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028234, A067029, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351563.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353483.P6769065041078207878

`A353482(n+1)*A353492(n+1)`
-/

namespace A353483.P6769065041078207878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353482 (n + 1) * A353492 (n + 1)

end

end A353483.P6769065041078207878

noncomputable section

/-- A353483: a(n) = 1 if n is a squarefree semiprime of the form (4t+3)*(4u+3), otherwise 0.

Offset 1, canonical program `A353483.P6769065041078207878`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353482, A353492, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353483 (n : ℕ) : ℤ :=
  A353483.P6769065041078207878.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353482, A353492, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353483.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A362739.P16135793602072361606

`A004526(A108514(n+3))`
-/

namespace A362739.P16135793602072361606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A108514 (n + 3)).toNat

end

end A362739.P16135793602072361606

noncomputable section

/-- A362739: The smallest integer with three (not necessarily distinct) divisors that add to n.

Offset 3, canonical program `A362739.P16135793602072361606`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A362739 (n : ℕ) : ℤ :=
  A362739.P16135793602072361606.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A362739.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365869.P17856574011700522370

`lt[2, A014963(A067029(n+1)+1)]+1`
-/

namespace A365869.P17856574011700522370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A067029 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A365869.P17856574011700522370

noncomputable section

/-- A365869: Numbers whose exponent of least prime factor in their prime factorization is even.

Offset 1, canonical program `A365869.P17856574011700522370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2297 terms. -/
def A365869 (n : ℕ) : ℤ :=
  (A365869.P17856574011700522370.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2297 terms. -/
def A365869.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365870.P6694161055261231779

`∩[A365869(n+1)-1, A365869(n+1)]`
-/

namespace A365870.P6694161055261231779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365869 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365870.P6694161055261231779

noncomputable section

/-- A365870: Numbers k such that k and k+1 both have an even exponent of least prime factor in their prime factorization.

Offset 1, canonical program `A365870.P6694161055261231779`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1816 terms. -/
def A365870 (n : ℕ) : ℤ :=
  (A365870.P6694161055261231779.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1816 terms. -/
def A365870.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365871.P3627370264345146378

`∩[A365870(n+1)-1, A365870(n+1)]`
-/

namespace A365871.P3627370264345146378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365870 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365871.P3627370264345146378

noncomputable section

/-- A365871: Starts of runs of 3 consecutive integers whose exponent of least prime factor in their prime factorization is even.

Offset 1, canonical program `A365871.P3627370264345146378`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 462 terms. -/
def A365871 (n : ℕ) : ℤ :=
  (A365871.P3627370264345146378.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 462 terms. -/
def A365871.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365883.P7688717515464903741

`eq[A020639(n+1), A067029(n+1)]+1`
-/

namespace A365883.P7688717515464903741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A365883.P7688717515464903741

noncomputable section

/-- A365883: Numbers k whose least prime divisor is equal to its exponent in the prime factorization of k.

Offset 1, canonical program `A365883.P7688717515464903741`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1374 terms. -/
def A365883 (n : ℕ) : ℤ :=
  (A365883.P7688717515464903741.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1374 terms. -/
def A365883.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365884.P9453313849357331530

`∩[A365883(n+1)-1, A365883(n+1)]`
-/

namespace A365884.P9453313849357331530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365883 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365884.P9453313849357331530

noncomputable section

/-- A365884: Numbers k such that k and k+1 are both terms of A365883.

Offset 1, canonical program `A365884.P9453313849357331530`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 453 terms. -/
def A365884 (n : ℕ) : ℤ :=
  (A365884.P9453313849357331530.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 453 terms. -/
def A365884.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366825.P6870675763972796668

`filter[A072357(n+1), A319710(#)]`
-/

namespace A366825.P6870675763972796668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072357 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319710 (f1 j).toNat = 1) n)

end

end A366825.P6870675763972796668

noncomputable section

/-- A366825: Numbers of the form p^2 * m, squarefree m > 1, prime p < lpf(m), where lpf(m) = A020639(m).

Offset 1, canonical program `A366825.P6870675763972796668`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7714 terms. -/
def A366825 (n : ℕ) : ℤ :=
  A366825.P6870675763972796668.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7714 terms. -/
def A366825.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366990.P7446816452467653986

`∑{d}[n+1, #*A293449(#)]`
-/

namespace A366990.P7446816452467653986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A293449 d

end

end A366990.P7446816452467653986

noncomputable section

/-- A366990: The sum of divisors of n that are terms of A056166.

Offset 1, canonical program `A366990.P7446816452467653986`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366990 (n : ℕ) : ℤ :=
  A366990.P7446816452467653986.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367514.P512347744533137397

`A270436(A270418(n+1))`
-/

namespace A367514.P512347744533137397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270436 (A270418 (n + 1)).toNat

end

end A367514.P512347744533137397

noncomputable section

/-- A367514: The exponentially odious part of n: the largest unitary divisor of n that is an exponentially odious number (A270428).

Offset 1, canonical program `A367514.P512347744533137397`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A367514 (n : ℕ) : ℤ :=
  A367514.P512347744533137397.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A367514.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368647.P6890929061440035933

`A005090(n+1)-A005088(n+1)`
-/

namespace A368647.P6890929061440035933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005090 (n + 1) - A005088 (n + 1)

end

end A368647.P6890929061440035933

noncomputable section

/-- A368647: The number of distinct primes of the form 3*k+2 dividing n minus the number of distinct primes of the form 3*k+1 dividing n.

Offset 1, canonical program `A368647.P6890929061440035933`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005088, A005090, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368647 (n : ℕ) : ℤ :=
  A368647.P6890929061440035933.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005088, A005090, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368647.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A370137.P18141423203842214714

`A277021(2*A014311(n+1))`
-/

namespace A370137.P18141423203842214714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277021 (2 * A014311 (n + 1)).toNat

end

end A370137.P18141423203842214714

noncomputable section

/-- A370137: Sums of three primorials > 1.

Offset 1, canonical program `A370137.P18141423203842214714`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 265 terms. -/
def A370137 (n : ℕ) : ℤ :=
  A370137.P18141423203842214714.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 265 terms. -/
def A370137.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370138.P16155713201803020346

`A003415(A370137(n+1))`
-/

namespace A370138.P16155713201803020346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A370137 (n + 1)).toNat

end

end A370138.P16155713201803020346

noncomputable section

/-- A370138: Arithmetic derivatives of the sums of three primorials > 1.

Offset 1, canonical program `A370138.P16155713201803020346`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A370137, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370138 (n : ℕ) : ℤ :=
  A370138.P16155713201803020346.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A370137, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370138.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372576.P10992458721375840572

`A276085(n+1)%360`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372576.P10992458721375840572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276085 (n + 1)) 360

end

end A372576.P10992458721375840572

noncomputable section

/-- A372576: a(n) = A276085(n) mod 360, where A276085 is fully additive with a(p) = p#/p.

Offset 1, canonical program `A372576.P10992458721375840572`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372576 (n : ℕ) : ℤ :=
  A372576.P10992458721375840572.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372576.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373137.P15909934193213727265

`A253513(A372576(n+1))`
-/

namespace A373137.P15909934193213727265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253513 (A372576 (n + 1)).toNat

end

end A373137.P15909934193213727265

noncomputable section

/-- A373137: a(n) = 1 if A276085(n) is a multiple of 8, otherwise 0, where A276085 is the primorial base log-function.

Offset 1, canonical program `A373137.P15909934193213727265`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373137 (n : ℕ) : ℤ :=
  A373137.P15909934193213727265.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373137.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373138.P8055344566125608397

`eq[1, A373137(n+1)]+1`
-/

namespace A373138.P8055344566125608397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373137 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A373138.P8055344566125608397

noncomputable section

/-- A373138: Numbers k such that A276085(k) is a multiple of 8, where A276085 is the primorial base log-function.

Offset 1, canonical program `A373138.P8055344566125608397`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8266 terms. -/
def A373138 (n : ℕ) : ℤ :=
  (A373138.P8055344566125608397.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8266 terms. -/
def A373138.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373139.P16425581517255700780

`A079998(A372576(n+1))`
-/

namespace A373139.P16425581517255700780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079998 (A372576 (n + 1)).toNat

end

end A373139.P16425581517255700780

noncomputable section

/-- A373139: a(n) = 1 if A276085(n) is a multiple of 5, otherwise 0, where A276085 is the primorial base log-function.

Offset 1, canonical program `A373139.P16425581517255700780`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373139 (n : ℕ) : ℤ :=
  A373139.P16425581517255700780.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373139.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373140.P8936309099140756942

`eq[1, A373139(n+1)]+1`
-/

namespace A373140.P8936309099140756942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373139 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A373140.P8936309099140756942

noncomputable section

/-- A373140: Numbers k such that A276085(k) is a multiple of 5, where A276085 is the primorial base log-function.

Offset 1, canonical program `A373140.P8936309099140756942`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373140 (n : ℕ) : ℤ :=
  (A373140.P8936309099140756942.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373140.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373145.P6066227124448221809

`gcd(A003415(n+1), A276085(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373145.P6066227124448221809
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003415 (n + 1)) (A276085 (n + 1))

end

end A373145.P6066227124448221809

noncomputable section

/-- A373145: a(n) = gcd(A003415(n), A276085(n)), where A003415 is the arithmetic derivative and A276085 is the primorial base log-function.

Offset 1, canonical program `A373145.P6066227124448221809`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373145 (n : ℕ) : ℤ :=
  (A373145.P6066227124448221809.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373145.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373146.P15020100916809049614

`A276085(n+1)-A003415(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373146.P15020100916809049614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276085 (n + 1) - A003415 (n + 1)

end

end A373146.P15020100916809049614

noncomputable section

/-- A373146: a(n) = A276085(n) - A003415(n), where A003415 is the arithmetic derivative and A276085 is the primorial base log-function.

Offset 1, canonical program `A373146.P15020100916809049614`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373146 (n : ℕ) : ℤ :=
  A373146.P15020100916809049614.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373146.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373147.P3382100505561380020

`A003415(n+2)%A276085(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373147.P3382100505561380020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003415 (n + 2)) (A276085 (n + 2))

end

end A373147.P3382100505561380020

noncomputable section

/-- A373147: a(n) = A003415(n) mod A276085(n), where A003415 is the arithmetic derivative and A276085 is the primorial base log-function.

Offset 2, canonical program `A373147.P3382100505561380020`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373147 (n : ℕ) : ℤ :=
  A373147.P3382100505561380020.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373147.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373148.P6189189648227648503

`A276085(n+2)%A003415(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373148.P6189189648227648503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276085 (n + 2)) (A003415 (n + 2))

end

end A373148.P6189189648227648503

noncomputable section

/-- A373148: a(n) = A276085(n) mod A003415(n), where A003415 is the arithmetic derivative and A276085 is the primorial base log-function.

Offset 2, canonical program `A373148.P6189189648227648503`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373148 (n : ℕ) : ℤ :=
  A373148.P6189189648227648503.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373148.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373158.P5262006199716644131

`A276085(A003961(n+1))`
-/

namespace A373158.P5262006199716644131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276085 (A003961 (n + 1)).toNat

end

end A373158.P5262006199716644131

noncomputable section

/-- A373158: Fully additive with a(p) = p# for prime p, where x# is the primorial A034386(x).

Offset 1, canonical program `A373158.P5262006199716644131`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A276085, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373158 (n : ℕ) : ℤ :=
  A373158.P5262006199716644131.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A276085, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373158.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373258.P7426803091222607913

`A369004(n+1)*A373137(n+1)`
-/

namespace A373258.P7426803091222607913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369004 (n + 1) * A373137 (n + 1)

end

end A373258.P7426803091222607913

noncomputable section

/-- A373258: a(n) = 1 if n' / gcd(n,n') is a multiple of 4 and A276085(n) is a multiple of 8, otherwise 0, where n' stands for the arithmetic derivative of n, A003415, and A276085 is the primorial base log-function.

Offset 1, canonical program `A373258.P7426803091222607913`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373137, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373258 (n : ℕ) : ℤ :=
  A373258.P7426803091222607913.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373137, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373258.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373259.P15978814945549394217

`filter[A373138(n+1), A373258(#)]`
-/

namespace A373259.P15978814945549394217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373138 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373258 (f1 j).toNat = 1) n)

end

end A373259.P15978814945549394217

noncomputable section

/-- A373259: Numbers k such that k' / gcd(k,k') is a multiple of 4 and A276085(k) is a multiple of 8, where k' stands for the arithmetic derivative of k, A003415, and A276085 is the primorial base log-function.

Offset 1, canonical program `A373259.P15978814945549394217`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8325 terms. -/
def A373259 (n : ℕ) : ℤ :=
  A373259.P15978814945549394217.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8325 terms. -/
def A373259.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373266.P11769714245437534244

`A369001(n+1)-A373137(n+1)`
-/

namespace A373266.P11769714245437534244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369001 (n + 1) - A373137 (n + 1)

end

end A373266.P11769714245437534244

noncomputable section

/-- A373266: a(n) = 1 if A276085(n) is of the form 8m+4, otherwise 0, where A276085 is the primorial base log-function.

Offset 1, canonical program `A373266.P11769714245437534244`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373137, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373266 (n : ℕ) : ℤ :=
  A373266.P11769714245437534244.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373137, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373266.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373267.P2578606794001800641

`eq[1, A373266(n+1)]+1`
-/

namespace A373267.P2578606794001800641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373266 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A373267.P2578606794001800641

noncomputable section

/-- A373267: Numbers k for which A276085(k) is of the form 8m+4, where A276085 is the primorial base log-function.

Offset 1, canonical program `A373267.P2578606794001800641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8323 terms. -/
def A373267 (n : ℕ) : ℤ :=
  (A373267.P2578606794001800641.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8323 terms. -/
def A373267.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373361.P8190983480698914622

`gcd(n+1, A276085(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373361.P8190983480698914622
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A276085 (n + 1))

end

end A373361.P8190983480698914622

noncomputable section

/-- A373361: a(n) = gcd(n, A276085(n)), where A276085 is the primorial base log-function.

Offset 1, canonical program `A373361.P8190983480698914622`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373361 (n : ℕ) : ℤ :=
  (A373361.P8190983480698914622.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373361.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373362.P8186546928861798187

`gcd(A001414(n+1), A276085(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373362.P8186546928861798187
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001414 (n + 1)) (A276085 (n + 1))

end

end A373362.P8186546928861798187

noncomputable section

/-- A373362: a(n) = gcd(A001414(n), A276085(n)), where A001414 is the sum of prime factors with repetition, and A276085 is the primorial base log-function.

Offset 1, canonical program `A373362.P8186546928861798187`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373362 (n : ℕ) : ℤ :=
  (A373362.P8186546928861798187.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373362.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373367.P11671728222294017214

`gcd(A373145(n+1), A373362(n+1))`
-/

namespace A373367.P11671728222294017214
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A373145 (n + 1)) (A373362 (n + 1))

end

end A373367.P11671728222294017214

noncomputable section

/-- A373367: a(n) is the greatest common divisor of A001414(n), A003415(n), and A276085(n).

Offset 1, canonical program `A373367.P11671728222294017214`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373145, A373362, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373367 (n : ℕ) : ℤ :=
  (A373367.P11671728222294017214.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373145, A373362, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373367.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373485.P729201116521387286

`gcd(A083345(n+1), A276085(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373485.P729201116521387286
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A083345 (n + 1)) (A276085 (n + 1))

end

end A373485.P729201116521387286

noncomputable section

/-- A373485: a(n) = gcd(A083345(n), A276085(n)), where A276085 is fully additive with a(p) = p#/p, and A083345 is the numerator of the fully additive function with a(p) = 1/p.

Offset 1, canonical program `A373485.P729201116521387286`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373485 (n : ℕ) : ℤ :=
  (A373485.P729201116521387286.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373485.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373835.P5094601012644144841

`gcd(A001222(n+1), A276085(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373835.P5094601012644144841
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001222 (n + 1)) (A276085 (n + 1))

end

end A373835.P5094601012644144841

noncomputable section

/-- A373835: a(n) = gcd(bigomega(n), A276085(n)), where bigomega (A001222), and A276085 are fully additive with a(p) = 1 and a(p) = p#/p respectively.

Offset 1, canonical program `A373835.P5094601012644144841`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373835 (n : ℕ) : ℤ :=
  (A373835.P5094601012644144841.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373835.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373836.P9775404234224644830

`A079978(A373835(n+1))`
-/

namespace A373836.P9775404234224644830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A373835 (n + 1)).toNat

end

end A373836.P9775404234224644830

noncomputable section

/-- A373836: a(n) = 1 if bigomega(n) and A276085(n) are both multiples of 3, otherwise 0, where bigomega (A001222) and A276085 are fully additive with a(p) = 1 and a(p) = p#/p respectively.

Offset 1, canonical program `A373836.P9775404234224644830`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373835, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373836 (n : ℕ) : ℤ :=
  A373836.P9775404234224644830.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373835, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373836.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373837.P11600665445971385302

`filter[A305800(n+1), A373836(#)]`
-/

namespace A373837.P11600665445971385302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373836 (f1 j).toNat = 1) n)

end

end A373837.P11600665445971385302

noncomputable section

/-- A373837: Numbers k such that bigomega(k) and A276085(k) are both multiples of 3, where bigomega (A001222) and A276085 are fully additive with a(p) = 1 and a(p) = p#/p respectively.

Offset 1, canonical program `A373837.P11600665445971385302`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A373837 (n : ℕ) : ℤ :=
  A373837.P11600665445971385302.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A373837.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373842.P10561834911187279729

`A003415(A276085(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373842.P10561834911187279729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A276085 (n + 1)).toNat

end

end A373842.P10561834911187279729

noncomputable section

/-- A373842: a(n) = A003415(A276085(n)), where A003415 is the arithmetic derivative and A276085 is the primorial base log-function.

Offset 1, canonical program `A373842.P10561834911187279729`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373842 (n : ℕ) : ℤ :=
  A373842.P10561834911187279729.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373842.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373843.P4252622682383088569

`gcd(n+1, A373842(n+1))`
-/

namespace A373843.P4252622682383088569
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A373842 (n + 1))

end

end A373843.P4252622682383088569

noncomputable section

/-- A373843: a(n) = gcd(n, A003415(A276085(n))), where A003415 is the arithmetic derivative and A276085 is the primorial base log-function.

Offset 1, canonical program `A373843.P4252622682383088569`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373842, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373843 (n : ℕ) : ℤ :=
  (A373843.P4252622682383088569.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373842, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373843.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373850.P7662047302507533988

`A276085(n+2)%A001222(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373850.P7662047302507533988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276085 (n + 2)) (A001222 (n + 2))

end

end A373850.P7662047302507533988

noncomputable section

/-- A373850: a(n) = A276085(n) mod bigomega(n), where bigomega (A001222) and A276085 are fully additive with a(p) = 1 and a(p) = p#/p respectively.

Offset 2, canonical program `A373850.P7662047302507533988`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373850 (n : ℕ) : ℤ :=
  A373850.P7662047302507533988.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373850.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373851.P12335156182564860843

`C(A373835(n+1), A001222(n+1))`
-/

namespace A373851.P12335156182564860843
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A373835 (n + 1)).toNat (A001222 (n + 1)).toNat

end

end A373851.P12335156182564860843

noncomputable section

/-- A373851: a(n) = 1 if A276085(n) is a multiple of bigomega(n), otherwise 0, where bigomega (A001222) and A276085 are fully additive with a(p) = 1 and a(p) = p#/p respectively.

Offset 1, canonical program `A373851.P12335156182564860843`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373851 (n : ℕ) : ℤ :=
  (A373851.P12335156182564860843.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373851.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373852.P8502709998770565245

`eq[1, A373851(n+1)]+1`
-/

namespace A373852.P8502709998770565245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373851 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A373852.P8502709998770565245

noncomputable section

/-- A373852: Numbers k such that A276085(k) is a multiple of bigomega(k), where bigomega (A001222) and A276085 are fully additive with a(p) = 1 and a(p) = p#/p respectively.

Offset 1, canonical program `A373852.P8502709998770565245`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373852 (n : ℕ) : ℤ :=
  (A373852.P8502709998770565245.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373852.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373984.P1990840556673078357

`A108951(n+1)-A373158(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373984.P1990840556673078357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (n + 1) - A373158 (n + 1)

end

end A373984.P1990840556673078357

noncomputable section

/-- A373984: a(n) = A108951(n) - A373158(n), where A108951 is fully multiplicative and A373158 is fully additive with a(p) = p# for prime p, where x# is the primorial A034386(x).

Offset 1, canonical program `A373984.P1990840556673078357`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A108951, A373158, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373984 (n : ℕ) : ℤ :=
  A373984.P1990840556673078357.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A108951, A373158, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373984.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373985.P17399683127926261314

`gcd(A108951(n+1), A373158(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373985.P17399683127926261314
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A108951 (n + 1)) (A373158 (n + 1))

end

end A373985.P17399683127926261314

noncomputable section

/-- A373985: a(n) = gcd(A108951(n), A373158(n)), where A108951 is fully multiplicative and A373158 is fully additive with a(p) = p# for prime p, where x# is the primorial A034386(x).

Offset 1, canonical program `A373985.P17399683127926261314`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A108951, A373158, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373985 (n : ℕ) : ℤ :=
  (A373985.P17399683127926261314.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A108951, A373158, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373985.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373986.P8203815680597289083

`A373158(n+1)/A373985(n+1)`
-/

namespace A373986.P8203815680597289083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A373158 (n + 1) : ℚ) / (A373985 (n + 1) : ℚ)

end

end A373986.P8203815680597289083

noncomputable section

/-- A373986: Numerator of A373158(n) / A108951(n), where A108951 is fully multiplicative and A373158 is fully additive with a(p) = p# for prime p, where x# is the primorial A034386(x).

Offset 1, canonical program `A373986.P8203815680597289083`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373158, A373985, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373986 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A373986.P8203815680597289083.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373158, A373985, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373986.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373987.P5061914862626044472

`A108951(n+1)/A373985(n+1)`
-/

namespace A373987.P5061914862626044472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108951 (n + 1) : ℚ) / (A373985 (n + 1) : ℚ)

end

end A373987.P5061914862626044472

noncomputable section

/-- A373987: Denominator of A373158(n) / A108951(n), where A108951 is fully multiplicative and A373158 is fully additive with a(p) = p# for prime p, where x# is the primorial A034386(x).

Offset 1, canonical program `A373987.P5061914862626044472`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A108951, A373985, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373987 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A373987.P5061914862626044472.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A108951, A373985, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373987.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374112.P8766406934857238661

`gcd(A113177(n+1), A276085(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A374112.P8766406934857238661
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A113177 (n + 1)) (A276085 (n + 1))

end

end A374112.P8766406934857238661

noncomputable section

/-- A374112: a(n) = gcd(A113177(n), A276085(n)), where A113177 and A276085 are fully additive with a(p) = Fibonacci(p) and a(p) = p#/p, respectively.

Offset 1, canonical program `A374112.P8766406934857238661`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113177, A276085, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374112 (n : ℕ) : ℤ :=
  (A374112.P8766406934857238661.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113177, A276085, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374112.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374132.P16381188138359471221

`val(A276085(n+2), 2)`
-/

namespace A374132.P16381188138359471221
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A276085 (n + 2)).toNat 2

end

end A374132.P16381188138359471221

noncomputable section

/-- A374132: The 2-adic valuation of A276085(n), where A276085 is the primorial base log-function.

Offset 2, canonical program `A374132.P16381188138359471221`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374132 (n : ℕ) : ℤ :=
  (A374132.P16381188138359471221.a (n - 2) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374132.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374133.P4729042848230009534

`val(A276085(n+2), 3)`
-/

namespace A374133.P4729042848230009534
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A276085 (n + 2)).toNat 3

end

end A374133.P4729042848230009534

noncomputable section

/-- A374133: The 3-adic valuation of A276085(n), where A276085 is the primorial base log-function.

Offset 2, canonical program `A374133.P4729042848230009534`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374133 (n : ℕ) : ℤ :=
  (A374133.P4729042848230009534.a (n - 2) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374133.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A376397.P13667566972375452886

`∑[A276075(n+1)]`
-/

namespace A376397.P13667566972375452886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276075 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A376397.P13667566972375452886

noncomputable section

/-- A376397: a(n) = A276075(n!), where A276075 is the factorial base log-function.

Offset 1, canonical program `A376397.P13667566972375452886`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 348 terms. -/
def A376397 (n : ℕ) : ℤ :=
  A376397.P13667566972375452886.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 348 terms. -/
def A376397.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376398.P10409886767735869175

`∑[A276085(n+1)]`
-/

namespace A376398.P10409886767735869175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276085 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A376398.P10409886767735869175

noncomputable section

/-- A376398: a(n) = A276085(n!), where A276085 is the primorial base log-function.

Offset 1, canonical program `A376398.P10409886767735869175`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. -/
def A376398 (n : ℕ) : ℤ :=
  A376398.P10409886767735869175.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. -/
def A376398.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376413.P5424911931536190496

`A276085(A048103(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A376413.P5424911931536190496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276085 (A048103 (n + 1)).toNat

end

end A376413.P5424911931536190496

noncomputable section

/-- A376413: a(n) = A276085(A048103(n)), where A276085 is the primorial base log-function, and A048103 is the range of the primorial base exp-function (A276086).

Offset 1, canonical program `A376413.P5424911931536190496`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048103, A276085, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A376413 (n : ℕ) : ℤ :=
  A376413.P5424911931536190496.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048103, A276085, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A376413.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A377870.P27424763897698138

`A359550(n+1)*A359550(A276085(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A377870.P27424763897698138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359550 (n + 1) * A359550 (A276085 (n + 1)).toNat

end

end A377870.P27424763897698138

noncomputable section

/-- A377870: a(n) = A359550(n) * A359550(A276085(n)), where A359550 is multiplicative with a(p^e) = 1 if p > e, otherwise 0, and A276085 is fully additive with a(p) = p#/p.

Offset 1, canonical program `A377870.P27424763897698138`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, A359550, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A377870 (n : ℕ) : ℤ :=
  A377870.P27424763897698138.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, A359550, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A377870.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A377871.P15629702765521832353

`eq[1, A377870(n+1)]+1`
-/

namespace A377871.P15629702765521832353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377870 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A377871.P15629702765521832353

noncomputable section

/-- A377871: Numbers k such that neither k nor A276085(k) has divisors of the form p^p, where A276085 is fully additive with a(p) = p#/p.

Offset 1, canonical program `A377871.P15629702765521832353`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377871 (n : ℕ) : ℤ :=
  (A377871.P15629702765521832353.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377871.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377983.P7664720245249960146

`A377870(n)+a(n-1)` with `a(0)=0`
-/

namespace A377983.P7664720245249960146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A377870 n + a (n - 1)

end

end A377983.P7664720245249960146

noncomputable section

/-- A377983: a(n) is the number of terms in the range of A276087 that are <= n, where A276087(n) = A276086(A276086(n)) [the twofold application of the primorial base exp-function].

Offset 0, canonical program `A377983.P7664720245249960146`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377983 (n : ℕ) : ℤ :=
  A377983.P7664720245249960146.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377983.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383287.P10993191168392929584

`A121262(A276075(n+1))`
-/

namespace A383287.P10993191168392929584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A276075 (n + 1)).toNat

end

end A383287.P10993191168392929584

noncomputable section

/-- A383287: a(n) = 1 if A276075(n) is a multiple of 4, otherwise 0, where A276075 is fully additive with a(p) = PrimePi(p)!.

Offset 1, canonical program `A383287.P10993191168392929584`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276075, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A383287 (n : ℕ) : ℤ :=
  A383287.P10993191168392929584.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276075, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A383287.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A383288.P8330207699050521713

`filter[A003159(n+1), A383287(#)]`
-/

namespace A383288.P8330207699050521713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A383287 (f1 j).toNat = 1) n)

end

end A383288.P8330207699050521713

noncomputable section

/-- A383288: Numbers k for which A276075(k) is a multiple of 4, where A276075 is fully additive with a(p) = PrimePi(p)!.

Offset 1, canonical program `A383288.P8330207699050521713`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6000 terms. -/
def A383288 (n : ℕ) : ℤ :=
  A383288.P8330207699050521713.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6000 terms. -/
def A383288.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384064.P3089049146557350597

`A013929(n+1)/A046027(n+1)`
-/

namespace A384064.P3089049146557350597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013929 (n + 1) : ℚ) / (A046027 (n + 1) : ℚ)

end

end A384064.P3089049146557350597

noncomputable section

/-- A384064: a(n) = s(n) divided by the smallest multiple prime factor of s(n), where s = A013929.

Offset 1, canonical program `A384064.P3089049146557350597`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, A046027, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A384064 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A384064.P3089049146557350597.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, A046027, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A384064.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A389144.P13442328069711189050

`filter[A332785(n+1), A319710(#)]`
-/

namespace A389144.P13442328069711189050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332785 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319710 (f1 j).toNat = 1) n)

end

end A389144.P13442328069711189050

noncomputable section

/-- A389144: Weak numbers k such that lpf(k)^2 | k, where lpf(n) denotes the least prime factor of n (A020639).

Offset 1, canonical program `A389144.P13442328069711189050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8372 terms. -/
def A389144 (n : ℕ) : ℤ :=
  A389144.P13442328069711189050.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8372 terms. -/
def A389144.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391862.P17889250073802102236

`record[(n+1)/A373361(n+1)]`
-/

namespace A391862.P17889250073802102236
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A373361 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A391862.P17889250073802102236

noncomputable section

/-- A391862: Numbers k that are coprime to A276085(k), where A276085 is the primorial base log-function.

Offset 1, canonical program `A391862.P17889250073802102236`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391862 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A391862.P17889250073802102236.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391862.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391863.P2197725237833686690

`filter[A391862(n+1), A359550(#)]`
-/

namespace A391863.P2197725237833686690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359550 (f1 j).toNat = 1) n)

end

end A391863.P2197725237833686690

noncomputable section

/-- A391863: Numbers k that are coprime to A276085(k) and that are not divisible by p^p for any prime p, where A276085 is the primorial base log-function.

Offset 1, canonical program `A391863.P2197725237833686690`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8817 terms. -/
def A391863 (n : ℕ) : ℤ :=
  A391863.P2197725237833686690.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8817 terms. -/
def A391863.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391927.P5320938749559707016

`lt[n, A373842(n+1)]+1`
-/

namespace A391927.P5320938749559707016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373842 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A391927.P5320938749559707016

noncomputable section

/-- A391927: Numbers k for which A373842(k) >= k, where A373842 is the arithmetic derivative of the primorial base log-function.

Offset 1, canonical program `A391927.P5320938749559707016`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A391927 (n : ℕ) : ℤ :=
  (A391927.P5320938749559707016.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A391927.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391938.P2233088175507154711

`filter[A391927(n+1), A359550(#)]`
-/

namespace A391938.P2233088175507154711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391927 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359550 (f1 j).toNat = 1) n)

end

end A391938.P2233088175507154711

noncomputable section

/-- A391938: Numbers k not divisible by p^p for any prime p, and for which A373842(k) >= k, where A373842 is the arithmetic derivative of the primorial base log-function.

Offset 1, canonical program `A391938.P2233088175507154711`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 697 terms. -/
def A391938 (n : ℕ) : ℤ :=
  A391938.P2233088175507154711.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 697 terms. -/
def A391938.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391946.P10395544534051673053

`A276085(A392598(n+1))`
-/

namespace A391946.P10395544534051673053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276085 (A392598 (n + 1)).toNat

end

end A391946.P10395544534051673053

noncomputable section

/-- A391946: a(n) = A276085(n) mod 2310, where A276085 is the primorial base log-function.

Offset 1, canonical program `A391946.P10395544534051673053`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, A392598, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A391946 (n : ℕ) : ℤ :=
  A391946.P10395544534051673053.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, A392598, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A391946.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A391989.P6110167778232670407

`A049419(A130897(n+1))-A278908(A130897(n+1))`
-/

namespace A391989.P6110167778232670407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (A130897 (n + 1)).toNat - A278908 (A130897 (n + 1)).toNat

end

end A391989.P6110167778232670407

noncomputable section

/-- A391989: The difference between the number of exponential divisors and the number of exponential unitary divisors for numbers that are not exponentially squarefree.

Offset 1, canonical program `A391989.P6110167778232670407`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049419, A130897, A278908, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A391989 (n : ℕ) : ℤ :=
  A391989.P6110167778232670407.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049419, A130897, A278908, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A391989.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A393947.P11959120361459312155

`filter[A072413(n+1), A389905(#)]`
-/

namespace A393947.P11959120361459312155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A393947.P11959120361459312155

noncomputable section

/-- A393947: Numbers that are neither squarefree nor squareful with prime power factor exponents that are not all pairwise coprime.

Offset 1, canonical program `A393947.P11959120361459312155`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2056 terms. -/
def A393947 (n : ℕ) : ℤ :=
  A393947.P11959120361459312155.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2056 terms. -/
def A393947.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395041.P15644609999811788398

`A276085(A003415(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A395041.P15644609999811788398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276085 (A003415 (n + 2)).toNat

end

end A395041.P15644609999811788398

noncomputable section

/-- A395041: a(n) = A276085(A003415(n)), where A003415 is the arithmetic derivative and A276085 is fully additive with a(p) = p#/p.

Offset 2, canonical program `A395041.P15644609999811788398`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395041 (n : ℕ) : ℤ :=
  A395041.P15644609999811788398.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395041.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A395052.P17255678126455795144

`A006530(A276085(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A395052.P17255678126455795144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A276085 (n + 2)).toNat

end

end A395052.P17255678126455795144

noncomputable section

/-- A395052: a(n) = A006530(A276085(n)), where A006530 gives the largest prime factor of n, and A276085 is fully additive with a(p) = p#/p.

Offset 2, canonical program `A395052.P17255678126455795144`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A276085, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A395052 (n : ℕ) : ℤ :=
  A395052.P17255678126455795144.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A276085, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A395052.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A395057.P10478793912773050899

`A241917(A276085(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A395057.P10478793912773050899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241917 (A276085 (n + 2)).toNat

end

end A395057.P10478793912773050899

noncomputable section

/-- A395057: a(n) = A241917(A276085(n)).

Offset 2, canonical program `A395057.P10478793912773050899`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A241917, A276085, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A395057 (n : ℕ) : ℤ :=
  A395057.P10478793912773050899.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A241917, A276085, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A395057.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A397458.P15426724961007206167

`filter[A048109(n+1), A319710(#)]`
-/

namespace A397458.P15426724961007206167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048109 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319710 (f1 j).toNat = 1) n)

end

end A397458.P15426724961007206167

noncomputable section

/-- A397458: Numbers k of the form lpf(k)^2 * rad(k), where rad = A007947 and lpf is the least prime factor of k.

Offset 1, canonical program `A397458.P15426724961007206167`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4255 terms. -/
def A397458 (n : ℕ) : ℤ :=
  A397458.P15426724961007206167.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4255 terms. -/
def A397458.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397710.P1647549694478266187

`∪[A001248(n+1), A366825(n+1)]`
-/

namespace A397710.P1647549694478266187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366825 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A397710.P1647549694478266187

noncomputable section

/-- A397710: Composite numbers k such that k = rad(k) * lpf(k), where rad = A007947 and lpf is the least prime factor of k.

Offset 1, canonical program `A397710.P1647549694478266187`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397710 (n : ℕ) : ℤ :=
  (A397710.P1647549694478266187.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397710.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400435.P16126613227254980307

`A277011(A014311(n+1))`
-/

namespace A400435.P16126613227254980307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277011 (A014311 (n + 1)).toNat

end

end A400435.P16126613227254980307

noncomputable section

/-- A400435: Integers that can be expressed as the sum of 3 factorials.

Offset 1, canonical program `A400435.P16126613227254980307`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 286 terms. -/
def A400435 (n : ℕ) : ℤ :=
  A400435.P16126613227254980307.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 286 terms. -/
def A400435.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A401066.P9367389379466931953

`A276085(n+1)%A006530(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A401066.P9367389379466931953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276085 (n + 1)) (A006530 (n + 1))

end

end A401066.P9367389379466931953

noncomputable section

/-- A401066: a(n) = A276085(n) mod A006530(n), where A276085 is fully additive with a(p) = p#/p, and A006530(n) is the largest prime dividing n.

Offset 1, canonical program `A401066.P9367389379466931953`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A276085, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A401066 (n : ℕ) : ℤ :=
  A401066.P9367389379466931953.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A276085, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A401066.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023586.P5533353493407646496

`A067029(A076274(n+2))`
-/

namespace A023586.P5533353493407646496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A076274 (n + 2)).toNat

end

end A023586.P5533353493407646496

noncomputable section

/-- A023586: Exponent of least prime factor in prime factorization of 2*prime(n)-1.

Offset 1, canonical program `A023586.P5533353493407646496`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 669 terms. -/
def A023586 (n : ℕ) : ℤ :=
  A023586.P5533353493407646496.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 669 terms. -/
def A023586.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023593.P8957253681422468188

`A067029(2*A000040(n+1)+1)`
-/

namespace A023593.P8957253681422468188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (2 * A000040 (n + 1) + 1).toNat

end

end A023593.P8957253681422468188

noncomputable section

/-- A023593: Exponent of least prime factor of 2*prime(n)+1.

Offset 1, canonical program `A023593.P8957253681422468188`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067029, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023593 (n : ℕ) : ℤ :=
  A023593.P8957253681422468188.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067029, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023593.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A028233.P1707119900298464866

`A020639(n+1)^A067029(n+1)`
-/

namespace A028233.P1707119900298464866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (n + 1) : ℚ) ^ (A067029 (n + 1) : ℤ)

end

end A028233.P1707119900298464866

noncomputable section

/-- A028233: If n = p_1^e_1 * ... * p_k^e_k, p_1 < ... < p_k primes, then a(n) = p_1^e_1, with a(1) = 1.

Offset 1, canonical program `A028233.P1707119900298464866`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020639, A067029, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A028233 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028233.P1707119900298464866.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020639, A067029, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A028233.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A038148.P4181662354496362081

`A006047(A067029(n+1))*a(A028234(n+1)-1)` with `a(0)=1`
-/

namespace A038148.P4181662354496362081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006047 (A067029 (n + 1)).toNat * a (A028234 (n + 1) - 1).toNat

end

end A038148.P4181662354496362081

noncomputable section

/-- A038148: Number of 3-infinitary divisors of n: if n = Product p(i)^r(i) and d = Product p(i)^s(i), each s(i) has a digit a <= b in its ternary expansion everywhere that the corresponding r(i) has a digit b, then d is a 3-infinitary-divisor of n.

Offset 1, canonical program `A038148.P4181662354496362081`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028234, A067029, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A038148 (n : ℕ) : ℤ :=
  A038148.P4181662354496362081.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028234, A067029, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A038148.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A046643.P1557473906368129035

`A001790(A067029(n+1))*a(A028234(n+1)-1)` with `a(0)=1, a(1)=1`
-/

namespace A046643.P1557473906368129035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A001790 (A067029 (n + 1)).toNat * a (A028234 (n + 1) - 1).toNat

end

end A046643.P1557473906368129035

noncomputable section

/-- A046643: From square root of Riemann zeta function: form Dirichlet series Sum b_n/n^s whose square is zeta function; sequence gives numerator of b_n.

Offset 1, canonical program `A046643.P1557473906368129035`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028234, A067029, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A046643 (n : ℕ) : ℤ :=
  A046643.P1557473906368129035.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028234, A067029, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A046643.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A046644.P10181048590737394013

`A000079(A005187(A067029(n+1)))*a(A028234(n+1)-1)` with `a(0)=1`
-/

namespace A046644.P10181048590737394013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000079 (A005187 (A067029 (n + 1)).toNat).toNat * a (A028234 (n + 1) - 1).toNat

end

end A046644.P10181048590737394013

noncomputable section

/-- A046644: From square root of Riemann zeta function: form Dirichlet series Sum b_n/n^s whose square is zeta function; sequence gives denominator of b_n.

Offset 1, canonical program `A046644.P10181048590737394013`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028234, A067029, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A046644 (n : ℕ) : ℤ :=
  A046644.P10181048590737394013.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028234, A067029, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A046644.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A046645.P11243749111570164507

`log2(A046644(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A046645.P11243749111570164507
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A046644 (n + 1) : ℝ)

end

end A046645.P11243749111570164507

noncomputable section

/-- A046645: a(n) = log_2(A046644(n)); also the 2-adic valuation of A046644(n).

Offset 1, canonical program `A046645.P11243749111570164507`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046644, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A046645 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A046645.P11243749111570164507.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046644, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A046645.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A052409.P6239454430129886752

`gcd(A067029(n+1), a(A028234(n+1)-1))` with `a(0)=0, a(1)=1`
-/

namespace A052409.P6239454430129886752
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.gcd (A067029 (n + 1)) (a (A028234 (n + 1) - 1).toNat : ℤ)

end

end A052409.P6239454430129886752

noncomputable section

/-- A052409: a(n) = largest integer power m for which a representation of the form n = k^m exists (for some k).

Offset 1, canonical program `A052409.P6239454430129886752`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028234, A067029, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A052409 (n : ℕ) : ℤ :=
  (A052409.P6239454430129886752.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028234, A067029, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A052409.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A052410.P3102814015669483073

`root(n+1, A052409(n+1)%A014601(a(n-1)))` with `a(0)=1`
-/

namespace A052410.P3102814015669483073
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℝ) ^ (1 / (Int.tmod (A052409 (n + 1)) (A014601 (SequenceMachineLib.roundAway (a (n - 1))).toNat) : ℝ))

end

end A052410.P3102814015669483073

noncomputable section

/-- A052410: Write n = m^k with m, k integers, k >= 1, then a(n) is the smallest possible choice for m.

Offset 1, canonical program `A052410.P3102814015669483073`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052410 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A052410.P3102814015669483073.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052410.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056166.P4154456828195991417

`record[(n+1)*A293449(n+1)]`
-/

namespace A056166.P4154456828195991417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A293449 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056166.P4154456828195991417

noncomputable section

/-- A056166: Numbers which are the product of distinct primes raised to prime powers.

Offset 1, canonical program `A056166.P4154456828195991417`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 347 terms. -/
def A056166 (n : ℕ) : ℤ :=
  A056166.P4154456828195991417.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 347 terms. -/
def A056166.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064634.P10831037946860949548

`eq[A022003(n), A107393(2*n+1)]-n`
-/

namespace A064634.P10831037946860949548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - (n : ℤ)

end

end A064634.P10831037946860949548

noncomputable section

/-- A064634: a(0) = 0 and a(n) = Min { i > a(n-1) | A064466(i + 1) - A064466(i) > 2 } for n > 0.

Offset 0, canonical program `A064634.P10831037946860949548`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2198 terms. -/
def A064634 (n : ℕ) : ℤ :=
  A064634.P10831037946860949548.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2198 terms. -/
def A064634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065676.P14398356438828348672

`A065620(val(A273671(n+1), 2))`
-/

namespace A065676.P14398356438828348672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065620 (SequenceMachineLib.valuation (A273671 (n + 1)).toNat 2)

end

end A065676.P14398356438828348672

noncomputable section

/-- A065676: The exponent of 2 in the fractions of the whole ]0, inf[ Stern-Brocot tree (A007305/A047679) [1/1, 1/2, 2/1, 1/3, 2/3, 3/2, 3/1, 1/4, 2/5, 3/5, 3/4, 4/3, 5/3, 5/2, 4/1, ...].

Offset 1, canonical program `A065676.P14398356438828348672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A065676 (n : ℕ) : ℤ :=
  A065676.P14398356438828348672.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A065676.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067440.P11258630054404040537

`∑[A052410(n+1)]`
-/

namespace A067440.P11258630054404040537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067440.P11258630054404040537

noncomputable section

/-- A067440: Sum(i(n)), where i(n) is the smallest integer with i(n)^m=n for some m.

Offset 1, canonical program `A067440.P11258630054404040537`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067440 (n : ℕ) : ℤ :=
  A067440.P11258630054404040537.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067440.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073843.P17664435674148381334

`A052410(n+1)^A014681(A052409(n+1))`
-/

namespace A073843.P17664435674148381334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052410 (n + 1) : ℚ) ^ (A014681 (A052409 (n + 1)).toNat : ℤ)

end

end A073843.P17664435674148381334

noncomputable section

/-- A073843: a(1) = 1; for n > 1 a(n) = smallest number of the form n^r (with r rational != 1) not included earlier.

Offset 1, canonical program `A073843.P17664435674148381334`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073843 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A073843.P17664435674148381334.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073843.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080364.P7536739539574044768

`filter[A247180(n+1), A005171(#)]`
-/

namespace A080364.P7536739539574044768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A080364.P7536739539574044768

noncomputable section

/-- A080364: Composite numbers whose least prime factor appears with multiplicity 1.

Offset 1, canonical program `A080364.P7536739539574044768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8252 terms. -/
def A080364 (n : ℕ) : ℤ :=
  A080364.P7536739539574044768.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8252 terms. -/
def A080364.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080365.P3506859288463638182

`∩[A080363(n+1), A080364(n+1)]`
-/

namespace A080365.P3506859288463638182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080364 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080365.P3506859288463638182

noncomputable section

/-- A080365: Composite numbers k whose smallest and largest prime factors are unitary prime factors.

Offset 1, canonical program `A080365.P3506859288463638182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6342 terms. -/
def A080365 (n : ℕ) : ℤ :=
  (A080365.P3506859288463638182.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6342 terms. -/
def A080365.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080366.P3117607371416217370

`filter[A070003(n+1), A319710(#)]`
-/

namespace A080366.P3117607371416217370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070003 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319710 (f1 j).toNat = 1) n)

end

end A080366.P3117607371416217370

noncomputable section

/-- A080366: Numbers k whose least and greatest prime divisors are non-unitary.

Offset 1, canonical program `A080366.P3117607371416217370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 801 terms. -/
def A080366 (n : ℕ) : ℤ :=
  A080366.P3117607371416217370.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 801 terms. -/
def A080366.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085233.P2026729561808920779

`lt[A028310(n), A028233(n+1)²]+1`
-/

namespace A085233.P2026729561808920779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A085233.P2026729561808920779

noncomputable section

/-- A085233: Numbers k such that k is divisible by a power of its smallest prime factor that exceeds its square root.

Offset 1, canonical program `A085233.P2026729561808920779`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1541 terms. -/
def A085233 (n : ℕ) : ℤ :=
  (A085233.P2026729561808920779.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1541 terms. -/
def A085233.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085234.P16042712778557682015

`lt[A028233(n+1)², n]+1`
-/

namespace A085234.P16042712778557682015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A085234.P16042712778557682015

noncomputable section

/-- A085234: (Greatest power of smallest prime factor of n) < square root(n).

Offset 1, canonical program `A085234.P16042712778557682015`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8458 terms. -/
def A085234 (n : ℕ) : ℤ :=
  (A085234.P16042712778557682015.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8458 terms. -/
def A085234.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086975.P13296721778976903198

`filter[A085987(n+1), A319710(#)]`
-/

namespace A086975.P13296721778976903198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319710 (f1 j).toNat = 1) n)

end

end A086975.P13296721778976903198

noncomputable section

/-- A086975: Numbers of the form p^2 * q * r with primes p < q < r.

Offset 1, canonical program `A086975.P13296721778976903198`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4566 terms. -/
def A086975 (n : ℕ) : ℤ :=
  A086975.P13296721778976903198.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4566 terms. -/
def A086975.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087692.P14815720998810141369

`A115070(A282779(n+1))`
-/

namespace A087692.P14815720998810141369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115070 (A282779 (n + 1)).toNat

end

end A087692.P14815720998810141369

noncomputable section

/-- A087692: Number of cubes in multiplicative group modulo n.

Offset 1, canonical program `A087692.P14815720998810141369`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087692 (n : ℕ) : ℤ :=
  A087692.P14815720998810141369.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087692.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088905.P6975458775948714409

`record[A052410(A004277(n))+1]`
-/

namespace A088905.P6975458775948714409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A004277 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088905.P6975458775948714409

noncomputable section

/-- A088905: Numbers m having exactly one representation m = x^i + x^j with 1<x<=m and 0<=i<=j.

Offset 1, canonical program `A088905.P6975458775948714409`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9915 terms. -/
def A088905 (n : ℕ) : ℤ :=
  A088905.P6975458775948714409.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9915 terms. -/
def A088905.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089361.P96077978573421332

`∑[A032741(A052409(n+1))]`
-/

namespace A089361.P96077978573421332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A052409 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089361.P96077978573421332

noncomputable section

/-- A089361: Numbers of pairs (i, j), i, j > 1, such that i^j <= n.

Offset 1, canonical program `A089361.P96077978573421332`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089361 (n : ℕ) : ℤ :=
  A089361.P96077978573421332.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089361.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089723.P9953764260173719197

`A032741(A052409(n+1))+1`
-/

namespace A089723.P9953764260173719197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A052409 (n + 1)).toNat + 1

end

end A089723.P9953764260173719197

noncomputable section

/-- A089723: a(1)=1; for n>1, a(n) gives number of ways to write n as n = x^y, 2 <= x, 1 <= y.

Offset 1, canonical program `A089723.P9953764260173719197`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089723 (n : ℕ) : ℤ :=
  A089723.P9953764260173719197.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089723.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089994.P16664375105840136208

`A028310(A176506(n+1))-1`
-/

namespace A089994.P16664375105840136208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A176506 (n + 1)).toNat - 1

end

end A089994.P16664375105840136208

noncomputable section

/-- A089994: Number of primes between factors of n-th semiprime.

Offset 1, canonical program `A089994.P16664375105840136208`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089994 (n : ℕ) : ℤ :=
  A089994.P16664375105840136208.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089994.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093771.P13699473905171494955

`eq[2, A089723(n+1)]+1`
-/

namespace A093771.P13699473905171494955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089723 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A093771.P13699473905171494955

noncomputable section

/-- A093771: Perfect powers for which the exponent is a prime number: solutions to {A052409(x) is prime}.

Offset 1, canonical program `A093771.P13699473905171494955`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. -/
def A093771 (n : ℕ) : ℤ :=
  (A093771.P13699473905171494955.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. -/
def A093771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111863.P10272075596677051945

`A028233(∏{p}[A016969(n), A170825(#)])`
-/

namespace A111863.P10272075596677051945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A170825 p).toNat

end

end A111863.P10272075596677051945

noncomputable section

/-- A111863: a(n) is the smallest prime factor of 6*n-1 that is congruent to 5 modulo 6.

Offset 1, canonical program `A111863.P10272075596677051945`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1667 terms. -/
def A111863 (n : ℕ) : ℤ :=
  A111863.P10272075596677051945.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1667 terms. -/
def A111863.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112531.P1162023673917804213

`A246660(A073138(2*n+1))/A246660(2*n+1)`
-/

namespace A112531.P1162023673917804213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246660 (A073138 (2 * n + 1)).toNat : ℚ) / (A246660 (2 * n + 1) : ℚ)

end

end A112531.P1162023673917804213

noncomputable section

/-- A112531: Triangle read by rows which lists compositions having at least one part equal to 1.

Offset 1, canonical program `A112531.P1162023673917804213`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. -/
def A112531 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A112531.P1162023673917804213.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. -/
def A112531.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112537.P5806524321860362590

`A052410(n+1)^A052409(n+2)`
-/

namespace A112537.P5806524321860362590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052410 (n + 1) : ℚ) ^ (A052409 (n + 2) : ℤ)

end

end A112537.P5806524321860362590

noncomputable section

/-- A112537: If b(n) is the smallest positive integer and c(n) is the largest positive integer such that n = b(n)^c(n), then a(n) = b(n)^c(n+1).

Offset 1, canonical program `A112537.P5806524321860362590`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052409, A052410, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A112537 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A112537.P5806524321860362590.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052409, A052410, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A112537.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A112538.P11631091965378758560

`A052409(n+2)^A052410(n+2)`
-/

namespace A112538.P11631091965378758560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052409 (n + 2) : ℚ) ^ (A052410 (n + 2) : ℤ)

end

end A112538.P11631091965378758560

noncomputable section

/-- A112538: If b(n) is the smallest positive integer and c(n) is the largest positive integer such that n = b(n)^c(n), then a(n) = c(n)^b(n).

Offset 2, canonical program `A112538.P11631091965378758560`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052409, A052410, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A112538 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A112538.P11631091965378758560.a (n - 2))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052409, A052410, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A112538.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A114127.P14473609432044082728

`filter[A126706(n+1), A293449(#)]`
-/

namespace A114127.P14473609432044082728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A293449 (f1 j).toNat = 1) n)

end

end A114127.P14473609432044082728

noncomputable section

/-- A114127: Numbers that factorize into a prime number of prime factors each raised to a prime exponent.

Offset 1, canonical program `A114127.P14473609432044082728`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 155 terms. -/
def A114127 (n : ℕ) : ℤ :=
  A114127.P14473609432044082728.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 155 terms. -/
def A114127.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126773.P10723208805660989938

`A055231(A028233(n+1))`
-/

namespace A126773.P10723208805660989938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (A028233 (n + 1)).toNat

end

end A126773.P10723208805660989938

noncomputable section

/-- A126773: a(n) = largest divisor of n which is coprime to the largest proper divisor of n. (a(1)=1.).

Offset 1, canonical program `A126773.P10723208805660989938`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126773 (n : ℕ) : ℤ :=
  A126773.P10723208805660989938.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126773.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126849.P3318481749340531518

`A366990(n+1)+A057428(n)`
-/

namespace A126849.P3318481749340531518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366990 (n + 1) + A057428 n

end

end A126849.P3318481749340531518

noncomputable section

/-- A126849: Sum over the divisors d of n constrained to cases where all exponents of the prime factorization of d are prime.

Offset 1, canonical program `A126849.P3318481749340531518`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126849 (n : ℕ) : ℤ :=
  A126849.P3318481749340531518.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126849.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132349.P7980671611498676239

`A052409(n+1)*A075802(n+1)`
-/

namespace A132349.P7980671611498676239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (n + 1) * A075802 (n + 1)

end

end A132349.P7980671611498676239

noncomputable section

/-- A132349: If n is a k-th power with k >= 2 then a(n) = k, otherwise a(n) = 0.

Offset 1, canonical program `A132349.P7980671611498676239`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132349 (n : ℕ) : ℤ :=
  A132349.P7980671611498676239.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132349.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158052.P13602650078186940392

`A052409(n+1)-2*A100995(n+1)`
-/

namespace A158052.P13602650078186940392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (n + 1) - 2 * A100995 (n + 1)

end

end A158052.P13602650078186940392

noncomputable section

/-- A158052: Largest integer power m (with 0 to stand for infinity) for which a representation of the form n = k^m exists (for some k >= 1) multiplied by -1 when k is prime.

Offset 1, canonical program `A158052.P13602650078186940392`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158052 (n : ℕ) : ℤ :=
  A158052.P13602650078186940392.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158052.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161955.P5474332085272729031

`A030101(A162742(n+1))`
-/

namespace A161955.P5474332085272729031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A162742 (n + 1)).toNat

end

end A161955.P5474332085272729031

noncomputable section

/-- A161955: TITO2(n): The operation A161594 in binary, digit-reversals carried out in base 2.

Offset 1, canonical program `A161955.P5474332085272729031`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030101, A162742, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A161955 (n : ℕ) : ℤ :=
  A161955.P5474332085272729031.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030101, A162742, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A161955.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A162534.P14827197912109240501

`eq[0, (n+1)%A284559(n+1)]+1`
-/

namespace A162534.P14827197912109240501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A284559 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A162534.P14827197912109240501

noncomputable section

/-- A162534: A positive integer k is included if every length of the runs of 0's and 1's in the binary representation of k divides k.

Offset 1, canonical program `A162534.P14827197912109240501`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2036 terms. -/
def A162534 (n : ℕ) : ℤ :=
  (A162534.P14827197912109240501.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2036 terms. -/
def A162534.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A169594.P8490939100282389348

`∑{d}[n+1, A089723(#)]`
-/

namespace A169594.P8490939100282389348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A089723 d

end

end A169594.P8490939100282389348

noncomputable section

/-- A169594: Number of divisors of n, counting divisor multiplicity in n.

Offset 1, canonical program `A169594.P8490939100282389348`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A169594 (n : ℕ) : ℤ :=
  A169594.P8490939100282389348.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A169594.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175087.P16129661035073431860

`A188068(3*∑{d}[A195507(A052409(n+1)+1), #]+1)`
-/

namespace A175087.P16129661035073431860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195507 (A052409 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188068 (3 * (∑ d ∈ Nat.divisors (f1 n).natAbs, d) + 1)

end

end A175087.P16129661035073431860

noncomputable section

/-- A175087: Number of numbers whose product of perfect divisors is equal to n.

Offset 1, canonical program `A175087.P16129661035073431860`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 511 terms. -/
def A175087 (n : ℕ) : ℤ :=
  A175087.P16129661035073431860.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 511 terms. -/
def A175087.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175431.P13219315261267939419

`eq[1, A089723(A000203(n+1))]+1`
-/

namespace A175431.P13219315261267939419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089723 (A000203 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A175431.P13219315261267939419

noncomputable section

/-- A175431: Numbers m such that sigma(m) is not a nontrivial power, i.e., sigma(m) = A000203(n) is not equal a^b where a and b are greater than 1.

Offset 1, canonical program `A175431.P13219315261267939419`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5651 terms. -/
def A175431 (n : ℕ) : ℤ :=
  (A175431.P13219315261267939419.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5651 terms. -/
def A175431.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175432.P11265473257221529298

`A052409(A000203(n+1)+C(2, (n+1)²))`
-/

namespace A175432.P11265473257221529298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A000203 (n + 1) + (Nat.choose 2 ((n + 1) ^ 2) : ℤ)).toNat

end

end A175432.P11265473257221529298

noncomputable section

/-- A175432: a(n) = the greatest number k such that sigma(n) = m^k for any m >= 1 (sigma = A000203).

Offset 1, canonical program `A175432.P11265473257221529298`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175432 (n : ℕ) : ℤ :=
  A175432.P11265473257221529298.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175432.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175433.P5929849587678979571

`A052410(∑{d}[n+1, #])`
-/

namespace A175433.P5929849587678979571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A175433.P5929849587678979571

noncomputable section

/-- A175433: a(n) = the smallest number m such that sigma(n) = m^k for any k >= 1 (sigma = A000203).

Offset 1, canonical program `A175433.P5929849587678979571`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175433 (n : ℕ) : ℤ :=
  A175433.P5929849587678979571.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175433.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178638.P8804259736585962114

`A000005(n+1)-A089723(n+1)`
-/

namespace A178638.P8804259736585962114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A089723 (n + 1)

end

end A178638.P8804259736585962114

noncomputable section

/-- A178638: a(n) is the number of divisors d of n such that d^k is not equal to n for any k >= 1.

Offset 1, canonical program `A178638.P8804259736585962114`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089723, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A178638 (n : ℕ) : ℤ :=
  A178638.P8804259736585962114.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089723, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A178638.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A180161.P2242092877248082385

`record[A052410(A000415(n+1))]`
-/

namespace A180161.P2242092877248082385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A000415 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180161.P2242092877248082385

noncomputable section

/-- A180161: Numbers that are the sum of two nonnegative squares but are not perfect powers.

Offset 1, canonical program `A180161.P2242092877248082385`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9983 terms. -/
def A180161 (n : ℕ) : ℤ :=
  A180161.P2242092877248082385.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9983 terms. -/
def A180161.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180642.P3581255017552360939

`eq[3, A329378(A000010(C(2, n²)+n))]`
-/

namespace A180642.P3581255017552360939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329378 (A000010 (Nat.choose 2 (n ^ 2) + n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A180642.P3581255017552360939

noncomputable section

/-- A180642: Numbers k such that phi(k)/4 is a prime, where phi is the Euler totient function.

Offset 1, canonical program `A180642.P3581255017552360939`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 743 terms. -/
def A180642 (n : ℕ) : ℤ :=
  (A180642.P3581255017552360939.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 743 terms. -/
def A180642.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181092.P17294268124269910376

`∑[∏{e}[A052409((n+1)²), #]]`
-/

namespace A181092.P17294268124269910376
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 ((n + 1) ^ 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181092.P17294268124269910376

noncomputable section

/-- A181092: a(n) is the sum of n addends nested as follows: floor(sqrt(floor(sqrt(...(n)...)))).

Offset 1, canonical program `A181092.P17294268124269910376`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. -/
def A181092 (n : ℕ) : ℤ :=
  (A181092.P17294268124269910376.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. -/
def A181092.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181117.P3556212015790333691

`lcm(A046644(A010766(n+1)), A114002(n))`
-/

namespace A181117.P3556212015790333691
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A046644 (A010766 (n + 1)).toNat) (A114002 n)

end

end A181117.P3556212015790333691

noncomputable section

/-- A181117: Triangle T(n,k) read by rows. T(n,k) = A046644(A126988).

Offset 1, canonical program `A181117.P3556212015790333691`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A181117 (n : ℕ) : ℤ :=
  (A181117.P3556212015790333691.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A181117.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186285.P14281072484363093120

`eq[2, A038148(n+1)]+1`
-/

namespace A186285.P14281072484363093120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038148 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A186285.P14281072484363093120

noncomputable section

/-- A186285: Numbers of the form p^(3^k) where p is prime and k >= 0.

Offset 1, canonical program `A186285.P14281072484363093120`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1238 terms. -/
def A186285 (n : ℕ) : ℤ :=
  (A186285.P14281072484363093120.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1238 terms. -/
def A186285.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248020.P15350737857630933227

`record[A052410(A095738(n+1))]`
-/

namespace A248020.P15350737857630933227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A095738 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248020.P15350737857630933227

noncomputable section

/-- A248020: Numbers which are coprime to the sum of their divisors, but are neither primes nor perfect powers.

Offset 1, canonical program `A248020.P15350737857630933227`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9891 terms. -/
def A248020 (n : ℕ) : ℤ :=
  A248020.P15350737857630933227.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9891 terms. -/
def A248020.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253641.P13059867925483563829

`A052409(ceil(sqrt((1-n)²+4)))`
-/

namespace A253641.P13059867925483563829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 ⌈Real.sqrt ((1 - (n : ℤ)) ^ 2 + 4 : ℝ)⌉.toNat

end

end A253641.P13059867925483563829

noncomputable section

/-- A253641: Largest integer b such that n=a^b for some integer a; a(0)=a(1)=1 by convention.

Offset 0, canonical program `A253641.P13059867925483563829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253641 (n : ℕ) : ℤ :=
  A253641.P13059867925483563829.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253641.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259183.P10733071323112537095

`eq[1, 1-val(A089723(n+1)+1, 2)]+1`
-/

namespace A259183.P10733071323112537095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (SequenceMachineLib.valuation (A089723 (n + 1) + 1).toNat 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A259183.P10733071323112537095

noncomputable section

/-- A259183: Complement of A259444.

Offset 1, canonical program `A259183.P10733071323112537095`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. -/
def A259183 (n : ℕ) : ℤ :=
  (A259183.P10733071323112537095.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. -/
def A259183.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259362.P4800518536678881889

`A089723(n+1)+A057428(n)`
-/

namespace A259362.P4800518536678881889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089723 (n + 1) + A057428 n

end

end A259362.P4800518536678881889

noncomputable section

/-- A259362: a(1) = 1, for n > 1: a(n) is the number of ways to write n as a nontrivial perfect power.

Offset 1, canonical program `A259362.P4800518536678881889`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259362 (n : ℕ) : ℤ :=
  A259362.P4800518536678881889.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259362.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259444.P7980636661045444568

`eq[A010052(A253641(n)), A157928(n)]`
-/

namespace A259444.P7980636661045444568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A253641 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259444.P7980636661045444568

noncomputable section

/-- A259444: a(1)=2. For n>1, a(n) = smallest number > a(n-1) which is different from all the numbers a(i)^a(j) for 1 <= i < n, 1 <= j < n.

Offset 1, canonical program `A259444.P7980636661045444568`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9881 terms. -/
def A259444 (n : ℕ) : ℤ :=
  (A259444.P7980636661045444568.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9881 terms. -/
def A259444.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267114.P4443725254918860643

`eq[A052409(n²+1), A297155(n+1)]+1`
-/

namespace A267114.P4443725254918860643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (n ^ 2 + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297155 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A267114.P4443725254918860643

noncomputable section

/-- A267114: Numbers n for which A001222(n) = A267115(n) + A267116(n).

Offset 1, canonical program `A267114.P4443725254918860643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A267114 (n : ℕ) : ℤ :=
  (A267114.P4443725254918860643.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A267114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280363.P4932248685350018500

`val(A064446(n+1), A111089(A028233(n+1)))`
-/

namespace A280363.P4932248685350018500
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A064446 (n + 1)).toNat (A111089 (A028233 (n + 1)).toNat).toNat

end

end A280363.P4932248685350018500

noncomputable section

/-- A280363: a(n) = floor(log_p(n)) where p = A020639(n), i.e., the least prime factor of n.

Offset 1, canonical program `A280363.P4932248685350018500`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280363 (n : ℕ) : ℤ :=
  (A280363.P4932248685350018500.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280363.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283050.P5018539412400332798

`eq[1, A319710(n+1)]+1`
-/

namespace A283050.P5018539412400332798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319710 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A283050.P5018539412400332798

noncomputable section

/-- A283050: Integers that are divisible by the square of their least prime factor.

Offset 1, canonical program `A283050.P5018539412400332798`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283050 (n : ℕ) : ℤ :=
  (A283050.P5018539412400332798.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283050.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283069.P4090989519738089227

`A283050(n+1)/A020639(A283050(n+1))²`
-/

namespace A283069.P4090989519738089227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283050 (n + 1) : ℚ) / (A020639 (A283050 (n + 1)).toNat ^ 2 : ℚ)

end

end A283069.P4090989519738089227

noncomputable section

/-- A283069: A283050(n) divided by the square of its least prime factor.

Offset 1, canonical program `A283069.P4090989519738089227`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020639, A283050, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A283069 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A283069.P4090989519738089227.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020639, A283050, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A283069.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A284562.P871243006331403344

`A227349(n)/A284569(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A284562.P871243006331403344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227349 n : ℚ) / (A284569 n : ℚ)

end

end A284562.P871243006331403344

noncomputable section

/-- A284562: Product / LCM of the lengths of 1-runs in binary representation of n: a(n) = A227349(n) / A284569(n).

Offset 0, canonical program `A284562.P871243006331403344`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A227349, A284569, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A284562 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A284562.P871243006331403344.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A227349, A284569, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A284562.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A288636.P4992930741861912130

`a(A052409(n+1)-1)+1` with `a(0)=0`
-/

namespace A288636.P4992930741861912130
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A052409 (n + 1) - 1).toNat + 1

end

end A288636.P4992930741861912130

noncomputable section

/-- A288636: Height of power-tower factorization of n. Row lengths of A278028.

Offset 1, canonical program `A288636.P4992930741861912130`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288636 (n : ℕ) : ℤ :=
  (A288636.P4992930741861912130.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288636.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289023.P10645979905758664282

`A132351(A052410(n+2)-1)`
-/

namespace A289023.P10645979905758664282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132351 (A052410 (n + 2) - 1).toNat

end

end A289023.P10645979905758664282

noncomputable section

/-- A289023: Position in the sequence of numbers that are not perfect powers (A007916) of the smallest positive integer x such that for some positive integer y we have n = x^y (A052410).

Offset 2, canonical program `A289023.P10645979905758664282`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289023 (n : ℕ) : ℤ :=
  A289023.P10645979905758664282.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289618.P14878026680756617388

`A289617(n+1)-A046645(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A289618.P14878026680756617388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289617 (n + 1) - A046645 (n + 1)

end

end A289618.P14878026680756617388

noncomputable section

/-- A289618: a(n) = A289617(n) - A046645(n) = A005187(A001222(n)) - A046645(n).

Offset 1, canonical program `A289618.P14878026680756617388`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A289618 (n : ℕ) : ℤ :=
  A289618.P14878026680756617388.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A289618.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A293205.P14817266560565219369

`A000463(eq[2, and(3, A052410(n+1))])`
-/

namespace A293205.P14817266560565219369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A052410 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293205.P14817266560565219369

noncomputable section

/-- A293205: Numbers n > 0 such that 2*n = (4*k-2)^m where k, m > 0.

Offset 1, canonical program `A293205.P14817266560565219369`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2543 terms. -/
def A293205 (n : ℕ) : ℤ :=
  A293205.P14817266560565219369.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2543 terms. -/
def A293205.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293483.P17008692828281999765

`gcd(A046073(n+1), A087692(n+1))`
-/

namespace A293483.P17008692828281999765
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A046073 (n + 1)) (A087692 (n + 1))

end

end A293483.P17008692828281999765

noncomputable section

/-- A293483: The number of 6th powers in the multiplicative group modulo n.

Offset 1, canonical program `A293483.P17008692828281999765`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293483 (n : ℕ) : ℤ :=
  (A293483.P17008692828281999765.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293483.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294336.P16842523112371343693

`A169594(gcd(A005361(n+1), A052409(n+1)))`
-/

namespace A294336.P16842523112371343693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169594 (Int.gcd (A005361 (n + 1)) (A052409 (n + 1)))

end

end A294336.P16842523112371343693

noncomputable section

/-- A294336: Number of ways to write n as a finite power-tower a^(b^(c^...)) of positive integers greater than one.

Offset 1, canonical program `A294336.P16842523112371343693`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294336 (n : ℕ) : ℤ :=
  A294336.P16842523112371343693.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294336.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294337.P9175725966357798562

`A294336(2^(n+1))`
-/

namespace A294337.P9175725966357798562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294336 (2 ^ (n + 1))

end

end A294337.P9175725966357798562

noncomputable section

/-- A294337: Number of ways to write 2^n as a finite power-tower a^(b^(c^...)) of positive integers greater than one.

Offset 1, canonical program `A294337.P9175725966357798562`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A294336, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A294337 (n : ℕ) : ℤ :=
  A294337.P9175725966357798562.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A294336, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A294337.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A294875.P6830521774454542538

`∏{d}[n+1, A008578(A253641(#))]`
-/

namespace A294875.P6830521774454542538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A008578 (A253641 d).toNat

end

end A294875.P6830521774454542538

noncomputable section

/-- A294875: a(n) = Product_{d|n, d = x^k, with x,k > 1} prime(A052409(d)-1).

Offset 1, canonical program `A294875.P6830521774454542538`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294875 (n : ℕ) : ℤ :=
  A294875.P6830521774454542538.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294875.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295931.P15567185849400187992

`∑{d}[A253641(n+1), A000005(#)]`
-/

namespace A295931.P15567185849400187992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000005 d

end

end A295931.P15567185849400187992

noncomputable section

/-- A295931: Number of ways to write n in the form n = (x^y)^z where x, y, and z are positive integers.

Offset 1, canonical program `A295931.P15567185849400187992`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295931 (n : ℕ) : ℤ :=
  A295931.P15567185849400187992.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295931.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A299150.P3795475608102794918

`A046644(n+1)/A006519(n+1)`
-/

namespace A299150.P3795475608102794918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046644 (n + 1) : ℚ) / (A006519 (n + 1) : ℚ)

end

end A299150.P3795475608102794918

noncomputable section

/-- A299150: Denominators of the positive solution to n = Sum_{d|n} a(d) * a(n/d).

Offset 1, canonical program `A299150.P3795475608102794918`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046644, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A299150 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A299150.P3795475608102794918.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046644, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A299150.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A303946.P306985777119807509

`A052410(eq[n+1, A052410(n+1)+A008683(n+1)]+1)`
-/

namespace A303946.P306985777119807509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (n + 1) + A008683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A303946.P306985777119807509

noncomputable section

/-- A303946: Numbers that are neither squarefree nor perfect powers.

Offset 1, canonical program `A303946.P306985777119807509`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303946 (n : ℕ) : ℤ :=
  A303946.P306985777119807509.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303946.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305439.P10396080351550377806

`A046645(n+1)-A007949(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A305439.P10396080351550377806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046645 (n + 1) - A007949 (n + 1)

end

end A305439.P10396080351550377806

noncomputable section

/-- A305439: a(n) = A046645(n) - A007949(n); the 2-adic valuation of A317932.

Offset 1, canonical program `A305439.P10396080351550377806`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A305439 (n : ℕ) : ℤ :=
  A305439.P10396080351550377806.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A305439.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A305634.P733097358982910151

`record[A052410(2*(n+1))]`
-/

namespace A305634.P733097358982910151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305634.P733097358982910151

noncomputable section

/-- A305634: Even numbers that are not perfect powers.

Offset 1, canonical program `A305634.P733097358982910151`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305634 (n : ℕ) : ℤ :=
  A305634.P733097358982910151.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305973.P13517062276911664221

`A004526(A294337(4*n+2))%A000217(A090288(n))`
-/

namespace A305973.P13517062276911664221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004526 (A294337 (4 * n + 2)).toNat) (A000217 (A090288 n).toNat)

end

end A305973.P13517062276911664221

noncomputable section

/-- A305973: Filter sequence for the prime signature of 2n-1.

Offset 1, canonical program `A305973.P13517062276911664221`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A305973 (n : ℕ) : ℤ :=
  A305973.P13517062276911664221.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A305973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309891.P3186262545884816110

`A169594(n+1)-1`
-/

namespace A309891.P3186262545884816110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169594 (n + 1) - 1

end

end A309891.P3186262545884816110

noncomputable section

/-- A309891: a(n) is the total number of trailing zeros in the representations of n over all bases b >= 2.

Offset 1, canonical program `A309891.P3186262545884816110`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A169594, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A309891 (n : ℕ) : ℤ :=
  A309891.P3186262545884816110.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A169594, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A309891.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A317932.P6928807366266153349

`2^A305439(n+1)`
-/

namespace A317932.P6928807366266153349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A305439 (n + 1) : ℤ)

end

end A317932.P6928807366266153349

noncomputable section

/-- A317932: Denominators of certain "Dirichlet Square Root" sequences: a(n) = A046644(n)/(2^A007949(n)).

Offset 1, canonical program `A317932.P6928807366266153349`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A305439, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A317932 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A317932.P6928807366266153349.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A305439, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A317932.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A317933.P9961828793587788294

`A046643(∏{p}[n+1, #^val(n+1, #²)])`
-/

namespace A317933.P9961828793587788294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046643 (∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2))

end

end A317933.P9961828793587788294

noncomputable section

/-- A317933: Numerators of rational valued sequence whose Dirichlet convolution with itself yields A034444 (number of unitary divisors of n).

Offset 1, canonical program `A317933.P9961828793587788294`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317933 (n : ℕ) : ℤ :=
  A317933.P9961828793587788294.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317933.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318313.P9581478745777910388

`A046643(lcm(A000188(n+1), A006519(n+1)))`
-/

namespace A318313.P9581478745777910388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046643 (Int.lcm (A000188 (n + 1)) (A006519 (n + 1)))

end

end A318313.P9581478745777910388

noncomputable section

/-- A318313: Numerators of the sequence whose Dirichlet convolution with itself yields A068068, number of odd unitary divisors of n.

Offset 1, canonical program `A318313.P9581478745777910388`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318313 (n : ℕ) : ℤ :=
  A318313.P9581478745777910388.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318313.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318319.P11531726744480288100

`A000265(A064989(n+1))*A046643(n+1)`
-/

namespace A318319.P11531726744480288100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A064989 (n + 1)).toNat * A046643 (n + 1)

end

end A318319.P11531726744480288100

noncomputable section

/-- A318319: Numerators of rational valued sequence whose Dirichlet convolution with itself yields A064989.

Offset 1, canonical program `A318319.P11531726744480288100`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318319 (n : ℕ) : ℤ :=
  A318319.P11531726744480288100.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318321.P3593742784170705023

`A003961(n+1)*A046643(n+1)`
-/

namespace A318321.P3593742784170705023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) * A046643 (n + 1)

end

end A318321.P3593742784170705023

noncomputable section

/-- A318321: Numerators of rational valued sequence whose Dirichlet convolution with itself yields A003961.

Offset 1, canonical program `A318321.P3593742784170705023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318321 (n : ℕ) : ℤ :=
  A318321.P3593742784170705023.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318321.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318440.P5886094417818087707

`A046645(n+1)-A007814(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A318440.P5886094417818087707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046645 (n + 1) - A007814 (n + 1)

end

end A318440.P5886094417818087707

noncomputable section

/-- A318440: a(n) = A046645(n) - A007814(n); the 2-adic valuation of A299150.

Offset 1, canonical program `A318440.P5886094417818087707`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318440 (n : ℕ) : ℤ :=
  A318440.P5886094417818087707.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318440.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318449.P8993966138195744646

`A046643(A000265(n+1))`
-/

namespace A318449.P8993966138195744646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046643 (A000265 (n + 1)).toNat

end

end A318449.P8993966138195744646

noncomputable section

/-- A318449: Numerators of the sequence whose Dirichlet convolution with itself yields A001511, the 2-adic valuation of 2n.

Offset 1, canonical program `A318449.P8993966138195744646`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046643, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318449 (n : ℕ) : ℤ :=
  A318449.P8993966138195744646.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046643, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318449.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318450.P10889155975316061749

`A046644(A000265(n+1))`
-/

namespace A318450.P10889155975316061749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046644 (A000265 (n + 1)).toNat

end

end A318450.P10889155975316061749

noncomputable section

/-- A318450: Denominators of the sequence whose Dirichlet convolution with itself yields A001511, the 2-adic valuation of 2n.

Offset 1, canonical program `A318450.P10889155975316061749`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046644, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318450 (n : ℕ) : ℤ :=
  A318450.P10889155975316061749.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046644, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318450.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318451.P4161075931148706271

`val(A318450(n+1), 2)`
-/

namespace A318451.P4161075931148706271
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A318450 (n + 1)).toNat 2

end

end A318451.P4161075931148706271

noncomputable section

/-- A318451: The 2-adic valuation of A318450.

Offset 1, canonical program `A318451.P4161075931148706271`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318450, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318451 (n : ℕ) : ℤ :=
  (A318451.P4161075931148706271.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318450, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318451.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318453.P2078827589244275606

`A046643(A006519(n+1))`
-/

namespace A318453.P2078827589244275606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046643 (A006519 (n + 1)).toNat

end

end A318453.P2078827589244275606

noncomputable section

/-- A318453: Numerators of the sequence whose Dirichlet convolution with itself yields A001227, number of odd divisors of n.

Offset 1, canonical program `A318453.P2078827589244275606`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046643, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318453 (n : ℕ) : ℤ :=
  A318453.P2078827589244275606.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046643, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318453.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318454.P17241560153575372680

`A046644(A006519(n+1))`
-/

namespace A318454.P17241560153575372680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046644 (A006519 (n + 1)).toNat

end

end A318454.P17241560153575372680

noncomputable section

/-- A318454: Denominators of the sequence whose Dirichlet convolution with itself yields A001227, number of odd divisors of n.

Offset 1, canonical program `A318454.P17241560153575372680`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046644, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318454 (n : ℕ) : ℤ :=
  A318454.P17241560153575372680.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046644, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318454.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318455.P12423452328214462674

`val(A318454(n+1), 2)`
-/

namespace A318455.P12423452328214462674
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A318454 (n + 1)).toNat 2

end

end A318455.P12423452328214462674

noncomputable section

/-- A318455: The 2-adic valuation of A318454(n).

Offset 1, canonical program `A318455.P12423452328214462674`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318454, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318455 (n : ℕ) : ℤ :=
  (A318455.P12423452328214462674.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318454, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318455.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318512.P17152244906020944566

`ceil(A299150(n+1)/A006519(n+1))`
-/

namespace A318512.P17152244906020944566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A299150 (n + 1) : ℚ) / (A006519 (n + 1) : ℚ)⌉

end

end A318512.P17152244906020944566

noncomputable section

/-- A318512: Denominators (in their lowest terms) of the sequence whose Dirichlet convolution with itself yields squares (A000290), or equally A064549.

Offset 1, canonical program `A318512.P17152244906020944566`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318512 (n : ℕ) : ℤ :=
  A318512.P17152244906020944566.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318512.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318513.P17793607305187104594

`A007814(A318512(n+1))`
-/

namespace A318513.P17793607305187104594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A318512 (n + 1)).toNat

end

end A318513.P17793607305187104594

noncomputable section

/-- A318513: The 2-adic valuation of A318512.

Offset 1, canonical program `A318513.P17793607305187104594`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318512, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318513 (n : ℕ) : ℤ :=
  A318513.P17793607305187104594.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318512, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318513.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318649.P4247351377528363883

`(n+1)*A318512(n+1)*A299149(n+1)/A299150(n+1)`
-/

namespace A318649.P4247351377528363883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A318512 (n + 1) * A299149 (n + 1) : ℚ) / (A299150 (n + 1) : ℚ)

end

end A318649.P4247351377528363883

noncomputable section

/-- A318649: Numerators of the sequence whose Dirichlet convolution with itself yields squares, A000290.

Offset 1, canonical program `A318649.P4247351377528363883`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A299149, A299150, A318512, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318649 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A318649.P4247351377528363883.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A299149, A299150, A318512, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318649.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318651.P14693122508814225811

`A046644(n+1)/A318512(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A318651.P14693122508814225811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046644 (n + 1) : ℚ) / (A318512 (n + 1) : ℚ)

end

end A318651.P14693122508814225811

noncomputable section

/-- A318651: a(n) = A046644(n)/A318512(n).

Offset 1, canonical program `A318651.P14693122508814225811`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046644, A318512, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318651 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A318651.P14693122508814225811.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046644, A318512, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318651.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318652.P1218394255038798337

`A046645(n+1)-A318513(n+1)`
-/

namespace A318652.P1218394255038798337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046645 (n + 1) - A318513 (n + 1)

end

end A318652.P1218394255038798337

noncomputable section

/-- A318652: The 2-adic valuation of A046644(n)/A318512(n) (A318651).

Offset 1, canonical program `A318652.P1218394255038798337`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046645, A318513, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318652 (n : ℕ) : ℤ :=
  A318652.P1218394255038798337.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046645, A318513, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318652.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318655.P1929699708280935336

`A007814(A318649(n+1))`
-/

namespace A318655.P1929699708280935336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A318649 (n + 1)).toNat

end

end A318655.P1929699708280935336

noncomputable section

/-- A318655: The 2-adic valuation of A318649, the numerators of "Dirichlet Square Root" of squares.

Offset 1, canonical program `A318655.P1929699708280935336`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318649, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318655 (n : ℕ) : ℤ :=
  A318655.P1929699708280935336.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318649, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318655.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318656.P13008805478963827236

`2*A007814(n+1)-A046645(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A318656.P13008805478963827236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007814 (n + 1) - A046645 (n + 1)

end

end A318656.P13008805478963827236

noncomputable section

/-- A318656: The 2-adic valuation of ratio A318649(n)/A318512(n); a(n) = 2*A007814(n) - A046645(n).

Offset 1, canonical program `A318656.P13008805478963827236`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318656 (n : ℕ) : ℤ :=
  A318656.P13008805478963827236.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318656.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318659.P16805546807903193953

`C(A318451(n+1), C(n, a(n-1)))` with `a(0)=0`
-/

namespace A318659.P16805546807903193953
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.choose (A318451 (n + 1)).toNat (Nat.choose n (a (n - 1)))

end

end A318659.P16805546807903193953

noncomputable section

/-- A318659: The 2-adic valuation of A318658.

Offset 1, canonical program `A318659.P16805546807903193953`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318659 (n : ℕ) : ℤ :=
  (A318659.P16805546807903193953.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318659.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319100.P5580130370207246504

`A000010(n+1)/A293483(n+1)`
-/

namespace A319100.P5580130370207246504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A293483 (n + 1) : ℚ)

end

end A319100.P5580130370207246504

noncomputable section

/-- A319100: Number of solutions to x^6 == 1 (mod n).

Offset 1, canonical program `A319100.P5580130370207246504`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A293483, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A319100 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A319100.P5580130370207246504.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A293483, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A319100.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A319838.P6735889884423733754

`eq[1, A277544(A319100(n+1))]+1`
-/

namespace A319838.P6735889884423733754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277544 (A319100 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A319838.P6735889884423733754

noncomputable section

/-- A319838: Numbers k such that A319100(k) is a power of 6.

Offset 1, canonical program `A319838.P6735889884423733754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1796 terms. -/
def A319838 (n : ℕ) : ℤ :=
  (A319838.P6735889884423733754.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1796 terms. -/
def A319838.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335150.P2848983247666895770

`6*∩[A057128(n+1), A319838(n+2)]`
-/

namespace A335150.P2848983247666895770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319838 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335150.P2848983247666895770

noncomputable section

/-- A335150: Perimeters of Heronian triangles whose smallest side length is coprime to their middle side and whose middle side length divides their perimeter.

Offset 1, canonical program `A335150.P2848983247666895770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6287 terms. -/
def A335150 (n : ℕ) : ℤ :=
  (A335150.P2848983247666895770.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6287 terms. -/
def A335150.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336650.P1876153032871638253

`A028233(A000265(n+1))`
-/

namespace A336650.P1876153032871638253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (A000265 (n + 1)).toNat

end

end A336650.P1876153032871638253

noncomputable section

/-- A336650: a(n) = p^e, where p is the smallest odd prime factor of n, and e is its exponent, with a(n) = 1 when n is a power of two.

Offset 1, canonical program `A336650.P1876153032871638253`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028233, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336650 (n : ℕ) : ℤ :=
  A336650.P1876153032871638253.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028233, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336650.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A338630.P18368234724363970962

`(n+3)%ceil((A046978(A046644(n+1))+n)/2)`
-/

namespace A338630.P18368234724363970962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 3 : ℤ) ⌈(A046978 (A046644 (n + 1)).toNat + (n : ℤ) : ℚ) / 2⌉

end

end A338630.P18368234724363970962

noncomputable section

/-- A338630: Least number of odd primes that add up to n, or 0 if no such representation is possible.

Offset 1, canonical program `A338630.P18368234724363970962`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A338630 (n : ℕ) : ℤ :=
  A338630.P18368234724363970962.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A338630.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340380.P3307386369142021647

`eq[2, A318451(n+1)]+1`
-/

namespace A340380.P3307386369142021647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318451 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A340380.P3307386369142021647

noncomputable section

/-- A340380: Numbers whose odd part is a squarefree semiprime (A006881); numbers of the form 2^k * p * q, with k >= 0, and distinct odd primes p and q.

Offset 1, canonical program `A340380.P3307386369142021647`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340380 (n : ℕ) : ℤ :=
  (A340380.P3307386369142021647.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340380.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A346403.P9961998828298484879

`A000203(A253641(n+1))`
-/

namespace A346403.P9961998828298484879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A253641 (n + 1)).toNat

end

end A346403.P9961998828298484879

noncomputable section

/-- A346403: a(1)=1; for n>1, a(n) gives the sum of the exponents in the different ways to write n as n = x^y, 2 <= x, 1 <= y.

Offset 1, canonical program `A346403.P9961998828298484879`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A253641, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A346403 (n : ℕ) : ℤ :=
  A346403.P9961998828298484879.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A253641, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A346403.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349667.P3842805946856830097

`p?[(4*n+1)*A318451(3*n+1)]`
-/

namespace A349667.P3842805946856830097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 1 : ℤ) * A318451 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A349667.P3842805946856830097

noncomputable section

/-- A349667: Primes of the form 4*k+1 which are a prime after the Collatz step *3+1 and a maximal reduction by 2.

Offset 1, canonical program `A349667.P3842805946856830097`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1249 terms. -/
def A349667 (n : ℕ) : ℤ :=
  A349667.P3842805946856830097.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1249 terms. -/
def A349667.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351923.P5900735276508586646

`A309891(n+1)+n+1`
-/

namespace A351923.P5900735276508586646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309891 (n + 1) + (n + 1 : ℤ)

end

end A351923.P5900735276508586646

noncomputable section

/-- A351923: Number of ordered pairs of positive integers (s,t), s,t <= n, such that (s^t) | n.

Offset 1, canonical program `A351923.P5900735276508586646`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A309891, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351923 (n : ℕ) : ℤ :=
  A351923.P5900735276508586646.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A309891, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351923.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A352080.P17911797979102270506

`A007814(A052409(n+2))+1`
-/

namespace A352080.P17911797979102270506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A052409 (n + 2)).toNat + 1

end

end A352080.P17911797979102270506

noncomputable section

/-- A352080: a(n) is the number of times that the square root operation must be applied to n in order to reach an irrational number.

Offset 2, canonical program `A352080.P17911797979102270506`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052409, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A352080 (n : ℕ) : ℤ :=
  A352080.P17911797979102270506.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052409, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A352080.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353476.P2124531172734975485

`A081136(A280363(n+1))%2`
-/

namespace A353476.P2124531172734975485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081136 (A280363 (n + 1)).toNat) 2

end

end A353476.P2124531172734975485

noncomputable section

/-- A353476: a(n) = 1 if n is a semiprime of the form p * q, where p and q are (not necessarily distinct) primes with p <= q < p^2, otherwise 0.

Offset 1, canonical program `A353476.P2124531172734975485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353476 (n : ℕ) : ℤ :=
  A353476.P2124531172734975485.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353476.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357905.P13685105207051734525

`val(A319100(n+1), 3)`
-/

namespace A357905.P13685105207051734525
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A319100 (n + 1)).toNat 3

end

end A357905.P13685105207051734525

noncomputable section

/-- A357905: a(n) = log_3(A060839(n)).

Offset 1, canonical program `A357905.P13685105207051734525`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A357905 (n : ℕ) : ℤ :=
  (A357905.P13685105207051734525.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A357905.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359464.P727659455795891011

`1-A092248(A367514(n+1))`
-/

namespace A359464.P727659455795891011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A092248 (A367514 (n + 1)).toNat

end

end A359464.P727659455795891011

noncomputable section

/-- A359464: a(n) = 1 if the total number of 1-bits in the exponents of prime factorization n is even, otherwise 0.

Offset 1, canonical program `A359464.P727659455795891011`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092248, A367514, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A359464 (n : ℕ) : ℤ :=
  A359464.P727659455795891011.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092248, A367514, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A359464.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365805.P12560475463864652643

`A052409(A163511(n))`
-/

namespace A365805.P12560475463864652643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A163511 n).toNat

end

end A365805.P12560475463864652643

noncomputable section

/-- A365805: a(n) = largest exponent m for which a representation of the form A163511(n) = k^m exists (for some k). a(0) = 0 by convention.

Offset 0, canonical program `A365805.P12560475463864652643`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052409, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365805 (n : ℕ) : ℤ :=
  A365805.P12560475463864652643.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052409, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365805.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365864.P18209421037915333050

`∩[A283050(n+1)-1, A283050(n+1)]`
-/

namespace A365864.P18209421037915333050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283050 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365864.P18209421037915333050

noncomputable section

/-- A365864: Numbers k such that k and k+1 are both divisible by the square of their least prime factor.

Offset 1, canonical program `A365864.P18209421037915333050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2429 terms. -/
def A365864 (n : ℕ) : ℤ :=
  (A365864.P18209421037915333050.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2429 terms. -/
def A365864.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365865.P7129990262128482870

`∩[A365864(n+1)-1, A365864(n+1)]`
-/

namespace A365865.P7129990262128482870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365864 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365865.P7129990262128482870

noncomputable section

/-- A365865: Starts of runs of 3 consecutive integers that are divisible by the square of their least prime factor.

Offset 1, canonical program `A365865.P7129990262128482870`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 544 terms. -/
def A365865 (n : ℕ) : ℤ :=
  (A365865.P7129990262128482870.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 544 terms. -/
def A365865.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366281.P7181137604346336267

`A365805(A057889(n))`
-/

namespace A366281.P7181137604346336267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365805 (A057889 n).toNat

end

end A366281.P7181137604346336267

noncomputable section

/-- A366281: a(n) = largest exponent m for which a representation of the form A366275(n) = k^m exists (for some k). a(0) = 0 by convention.

Offset 0, canonical program `A366281.P7181137604346336267`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057889, A365805, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366281 (n : ℕ) : ℤ :=
  A366281.P7181137604346336267.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057889, A365805, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366281.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366460.P2003594403644138664

`filter[A366825(n+1), A039982(#)]`
-/

namespace A366460.P2003594403644138664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366825 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A366460.P2003594403644138664

noncomputable section

/-- A366460: Odd terms in A366825.

Offset 1, canonical program `A366460.P2003594403644138664`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3432 terms. -/
def A366460 (n : ℕ) : ℤ :=
  A366460.P2003594403644138664.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3432 terms. -/
def A366460.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367168.P4194664077427569742

`A367514(n+1)/A368167(A367514(n+1))`
-/

namespace A367168.P4194664077427569742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367514 (n + 1) : ℚ) / (A368167 (A367514 (n + 1)).toNat : ℚ)

end

end A367168.P4194664077427569742

noncomputable section

/-- A367168: The largest unitary divisor of n that is a term of A138302.

Offset 1, canonical program `A367168.P4194664077427569742`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A367168 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A367168.P4194664077427569742.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A367168.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367169.P16284324643910890837

`A001222(A367168(n+1))`
-/

namespace A367169.P16284324643910890837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A367168 (n + 1)).toNat

end

end A367169.P16284324643910890837

noncomputable section

/-- A367169: a(n) is the sum of the exponents in the prime factorization of n that are powers of 2.

Offset 1, canonical program `A367169.P16284324643910890837`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A367168, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367169 (n : ℕ) : ℤ :=
  A367169.P16284324643910890837.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A367168, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367169.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A367170.P13045363582687585842

`A000005(A367168(n+1))`
-/

namespace A367170.P13045363582687585842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A367168 (n + 1)).toNat

end

end A367170.P13045363582687585842

noncomputable section

/-- A367170: The number of divisors of the largest unitary divisor of n that is a term of A138302.

Offset 1, canonical program `A367170.P13045363582687585842`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A367168, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367170 (n : ℕ) : ℤ :=
  A367170.P13045363582687585842.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A367168, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367170.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A367171.P11720372722595894882

`A000203(A367168(n+1))`
-/

namespace A367171.P11720372722595894882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A367168 (n + 1)).toNat

end

end A367171.P11720372722595894882

noncomputable section

/-- A367171: The sum of divisors of the largest unitary divisor of n that is a term of A138302.

Offset 1, canonical program `A367171.P11720372722595894882`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A367168, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367171 (n : ℕ) : ℤ :=
  A367171.P11720372722595894882.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A367168, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367171.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A367513.P12676645550060478141

`(n+1)/A367514(n+1)`
-/

namespace A367513.P12676645550060478141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A367514 (n + 1) : ℚ)

end

end A367513.P12676645550060478141

noncomputable section

/-- A367513: The exponentially evil part of n: the largest unitary divisor of n that is an exponentially evil number (A262675).

Offset 1, canonical program `A367513.P12676645550060478141`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A367514, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367513 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A367513.P12676645550060478141.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A367514, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367513.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368540.P8422773875795684543

`(n+1)/A367168(n+1)`
-/

namespace A368540.P8422773875795684543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A367168 (n + 1) : ℚ)

end

end A368540.P8422773875795684543

noncomputable section

/-- A368540: The smallest unitary divisor d of n such that n/d is a term of A138302.

Offset 1, canonical program `A368540.P8422773875795684543`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A367168, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368540 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A368540.P8422773875795684543.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A367168, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368540.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A370078.P13735597541800709398

`A007814(A005361(A367168(n+1)))`
-/

namespace A370078.P13735597541800709398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A005361 (A367168 (n + 1)).toNat).toNat

end

end A370078.P13735597541800709398

noncomputable section

/-- A370078: a(n) = log_2(A370077(n)).

Offset 1, canonical program `A370078.P13735597541800709398`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A367168, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370078 (n : ℕ) : ℤ :=
  A370078.P13735597541800709398.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A367168, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370078.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A370454.P29262213832927034

`A280363(A394049(n+1))`
-/

namespace A370454.P29262213832927034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280363 (A394049 (n + 1)).toNat

end

end A370454.P29262213832927034

noncomputable section

/-- A370454: a(n) = 1 + ceiling((log q)/(log p)), where p = A020639(s) and q = A119288(s) is the second smallest distinct prime factor of squarefree composite s = A120944(n).

Offset 1, canonical program `A370454.P29262213832927034`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. -/
def A370454 (n : ℕ) : ℤ :=
  A370454.P29262213832927034.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. -/
def A370454.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373735.P8421686096265363658

`A020639(n+2)^A280363(n+2)`
-/

namespace A373735.P8421686096265363658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (n + 2) : ℚ) ^ (A280363 (n + 2) : ℤ)

end

end A373735.P8421686096265363658

noncomputable section

/-- A373735: a(n) = p^floor(log_p n) for p = A020639(n).

Offset 2, canonical program `A373735.P8421686096265363658`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020639, A280363, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373735 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A373735.P8421686096265363658.a (n - 2))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020639, A280363, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373735.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374466.P2704209594539488434

`A066829(n+1)*(1-A359464(n+1))`
-/

namespace A374466.P2704209594539488434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066829 (n + 1) * (1 - A359464 (n + 1))

end

end A374466.P2704209594539488434

noncomputable section

/-- A374466: a(n) = 1 if n is the product of an odd number of primes and the total number of 1-bits in the exponents of its prime factorization is odd, otherwise 0.

Offset 1, canonical program `A374466.P2704209594539488434`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359464, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374466 (n : ℕ) : ℤ :=
  A374466.P2704209594539488434.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359464, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374466.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374467.P9810705810024272100

`eq[1, A374466(n+1)]+1`
-/

namespace A374467.P9810705810024272100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374466 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A374467.P9810705810024272100

noncomputable section

/-- A374467: Numbers that are products of an odd number of primes and the total number of 1-bits in the exponents of their prime factorization n is odd.

Offset 1, canonical program `A374467.P9810705810024272100`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374467 (n : ℕ) : ℤ :=
  (A374467.P9810705810024272100.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374467.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374471.P2134863705312420223

`A065043(n+1)*A359464(n+1)`
-/

namespace A374471.P2134863705312420223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (n + 1) * A359464 (n + 1)

end

end A374471.P2134863705312420223

noncomputable section

/-- A374471: a(n) = 1 if bigomega(n) and A064547(n) are both even, otherwise 0, where A064547 is the count of 1-bits in the exponents of the prime factorization of n, and bigomega is the number of prime factors of n (with multiplicity).

Offset 1, canonical program `A374471.P2134863705312420223`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359464, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374471 (n : ℕ) : ℤ :=
  A374471.P2134863705312420223.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359464, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374471.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374472.P9715634022253251052

`eq[1, A374471(n+1)]+1`
-/

namespace A374472.P9715634022253251052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374471 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A374472.P9715634022253251052

noncomputable section

/-- A374472: Numbers k such that bigomega(k) and A064547(k) are both even, where A064547 is the count of 1-bits in the exponents of the prime factorization of n, and bigomega is the number of prime factors of n (with multiplicity).

Offset 1, canonical program `A374472.P9715634022253251052`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374472 (n : ℕ) : ℤ :=
  (A374472.P9715634022253251052.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374472.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375702.P17550407363520646244

`A069584(lt[A000203(n+1), A112537(n+1)]+1)`
-/

namespace A375702.P17550407363520646244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112537 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069584 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A375702.P17550407363520646244

noncomputable section

/-- A375702: Length of the n-th maximal run of adjacent (increasing by one at a time) non-perfect-powers.

Offset 1, canonical program `A375702.P17550407363520646244`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A375702 (n : ℕ) : ℤ :=
  A375702.P17550407363520646244.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A375702.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383769.P11406854060680008032

`ceil(A318512(n+1)/2^val(n+1, 2))`
-/

namespace A383769.P11406854060680008032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A318512 (n + 1) : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌉

end

end A383769.P11406854060680008032

noncomputable section

/-- A383769: Denominators of the sequence whose Dirichlet convolution with itself yields cubes (A000578).

Offset 1, canonical program `A383769.P11406854060680008032`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383769 (n : ℕ) : ℤ :=
  A383769.P11406854060680008032.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385043.P799097616266538024

`A034448(A367168(n+1))`
-/

namespace A385043.P799097616266538024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A367168 (n + 1)).toNat

end

end A385043.P799097616266538024

noncomputable section

/-- A385043: The sum of the unitary divisors of n whose exponents in their prime factorizations are all powers of 2 (A138302).

Offset 1, canonical program `A385043.P799097616266538024`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385043 (n : ℕ) : ℤ :=
  A385043.P799097616266538024.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385043.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400801.P4532615387380128156

`filter[A080364(n+1), A087049(#)]`
-/

namespace A400801.P4532615387380128156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080364 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A400801.P4532615387380128156

noncomputable section

/-- A400801: Nonsquarefree numbers that are not divisible by the square of their least prime factor.

Offset 1, canonical program `A400801.P4532615387380128156`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1112 terms. -/
def A400801 (n : ℕ) : ℤ :=
  A400801.P4532615387380128156.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1112 terms. -/
def A400801.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000452.P15432004544007735088

`eq[2, A001316(A038148(n+1))]+1`
-/

namespace A000452.P15432004544007735088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A038148 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A000452.P15432004544007735088

noncomputable section

/-- A000452: The greedy sequence of integers which avoids 3-term geometric progressions.

Offset 1, canonical program `A000452.P15432004544007735088`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7206 terms. -/
def A000452 (n : ℕ) : ℤ :=
  (A000452.P15432004544007735088.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7206 terms. -/
def A000452.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038550.P5719490266772145792

`eq[1, A318451(n+1)]+1`
-/

namespace A038550.P5719490266772145792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318451 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A038550.P5719490266772145792

noncomputable section

/-- A038550: Products of an odd prime and a power of two (sorted).

Offset 1, canonical program `A038550.P5719490266772145792`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038550 (n : ℕ) : ℤ :=
  (A038550.P5719490266772145792.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038550.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060839.P16883216215693058205

`A000265(A319100(n+1))`
-/

namespace A060839.P16883216215693058205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A319100 (n + 1)).toNat

end

end A060839.P16883216215693058205

noncomputable section

/-- A060839: Number of solutions to x^3 == 1 (mod n).

Offset 1, canonical program `A060839.P16883216215693058205`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060839 (n : ℕ) : ℤ :=
  A060839.P16883216215693058205.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060839.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065496.P7200454893314223986

`lt[1, A175432(n+1)]+1`
-/

namespace A065496.P7200454893314223986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175432 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A065496.P7200454893314223986

noncomputable section

/-- A065496: Numbers n such that sigma(n) is a nontrivial power, i.e., sigma(n) = a^b where a and b are greater than 1.

Offset 1, canonical program `A065496.P7200454893314223986`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A065496 (n : ℕ) : ℤ :=
  (A065496.P7200454893314223986.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A065496.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065675.P430970865162776291

`A065676(lt[n, xor(n, floor(n/2))])`
-/

namespace A065675.P430970865162776291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065676 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A065675.P430970865162776291

noncomputable section

/-- A065675: The exponent of 2 in the fractions of the range ]0,1[ Stern-Brocot tree (A007305/A007306) [1/2, 1/3, 2/3, 1/4, 2/5, 3/5, 3/4, 1/5, 2/7, 3/8, 3/7, 4/7, 5/8, 5/7, 4/5, ...].

Offset 1, canonical program `A065675.P430970865162776291`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5904 terms. -/
def A065675 (n : ℕ) : ℤ :=
  A065675.P430970865162776291.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5904 terms. -/
def A065675.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072776.P4781511803637560244

`A253641(A072774(n+1))`
-/

namespace A072776.P4781511803637560244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253641 (A072774 (n + 1)).toNat

end

end A072776.P4781511803637560244

noncomputable section

/-- A072776: Exponents of powers of squarefree numbers.

Offset 1, canonical program `A072776.P4781511803637560244`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072774, A253641, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A072776 (n : ℕ) : ℤ :=
  A072776.P4781511803637560244.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072774, A253641, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A072776.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A078632.P6780388354337714643

`∑[A309891(n+1)]`
-/

namespace A078632.P6780388354337714643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078632.P6780388354337714643

noncomputable section

/-- A078632: Number of geometric subsequences of [1,...,n] with integral successive-term ratio and length > 1.

Offset 1, canonical program `A078632.P6780388354337714643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078632 (n : ℕ) : ℤ :=
  A078632.P6780388354337714643.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078632.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078651.P6303332055214193158

`∑[A169594(n+1)]`
-/

namespace A078651.P6303332055214193158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078651.P6303332055214193158

noncomputable section

/-- A078651: Number of increasing geometric-progression subsequences of [1,...,n] with integral successive-term ratio and length >= 1.

Offset 1, canonical program `A078651.P6303332055214193158`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078651 (n : ℕ) : ℤ :=
  A078651.P6303332055214193158.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078651.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100368.P13264735113197873513

`2*A038550(n+1)`
-/

namespace A100368.P13264735113197873513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038550 (n + 1)

end

end A100368.P13264735113197873513

noncomputable section

/-- A100368: Numbers of the form 2^k * p where k > 0 and p is an odd prime.

Offset 1, canonical program `A100368.P13264735113197873513`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038550, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100368 (n : ℕ) : ℤ :=
  A100368.P13264735113197873513.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038550, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100368.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A118009.P14455406126264924193

`A000040(A253641(n)+A117229(n))%2`
-/

namespace A118009.P14455406126264924193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A253641 n + A117229 n).toNat) 2

end

end A118009.P14455406126264924193

noncomputable section

/-- A118009: a(n) = 1 if at least one of decimal digits n or the concatenation of decimal digits of n is perfect power, otherwise a(n) = 0.

Offset 1, canonical program `A118009.P14455406126264924193`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A118009 (n : ℕ) : ℤ :=
  A118009.P14455406126264924193.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A118009.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124142.P456419393323048793

`filter[A065496(n+1), A294936(#)]`
-/

namespace A124142.P456419393323048793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065496 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294936 (f1 j).toNat = 1) n)

end

end A124142.P456419393323048793

noncomputable section

/-- A124142: Abundant numbers k such that sigma(k) is a perfect power.

Offset 1, canonical program `A124142.P456419393323048793`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 450 terms. -/
def A124142 (n : ℕ) : ℤ :=
  A124142.P456419393323048793.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 450 terms. -/
def A124142.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138109.P5525181734027855008

`filter[A005117(n+1), A353476(#)]`
-/

namespace A138109.P5525181734027855008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353476 (f1 j).toNat = 1) n)

end

end A138109.P5525181734027855008

noncomputable section

/-- A138109: Positive integers k whose smallest prime factor is greater than the cube root of k and strictly less than the square root of k.

Offset 1, canonical program `A138109.P5525181734027855008`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3969 terms. -/
def A138109 (n : ℕ) : ℤ :=
  A138109.P5525181734027855008.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3969 terms. -/
def A138109.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160498.P18345148161744705762

`∑{d}[n+1, A008683(#)*A060839((n+1)/#)]`
-/

namespace A160498.P18345148161744705762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A060839 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A160498.P18345148161744705762

noncomputable section

/-- A160498: Number of cubic primitive Dirichlet characters modulo n.

Offset 1, canonical program `A160498.P18345148161744705762`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160498 (n : ℕ) : ℤ :=
  A160498.P18345148161744705762.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160498.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174648.P6169375116423577086

`∑[A000452(n+1)]`
-/

namespace A174648.P6169375116423577086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000452 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174648.P6169375116423577086

noncomputable section

/-- A174648: Partial sums of A000452.

Offset 1, canonical program `A174648.P6169375116423577086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174648 (n : ℕ) : ℤ :=
  A174648.P6169375116423577086.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174648.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175067.P12227961381507024235

`∑{d}[A253641(n+1), A052410(n+1)^#]`
-/

namespace A175067.P12227961381507024235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A052410 (n + 1) ^ d

end

end A175067.P12227961381507024235

noncomputable section

/-- A175067: a(n) is the sum of perfect divisors of n, where a perfect divisor of n is a divisor d such that d^k = n for some k >= 1.

Offset 1, canonical program `A175067.P12227961381507024235`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052410, A253641, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A175067 (n : ℕ) : ℤ :=
  A175067.P12227961381507024235.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052410, A253641, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A175067.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A175068.P9930618200027696907

`(n+1)^(A346403(n+1)/A253641(n+1))`
-/

namespace A175068.P9930618200027696907
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ ((A346403 (n + 1) : ℚ) / (A253641 (n + 1) : ℚ) : ℝ)

end

end A175068.P9930618200027696907

noncomputable section

/-- A175068: a(n) = product of perfect divisors of n.

Offset 1, canonical program `A175068.P9930618200027696907`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A253641, A346403, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A175068 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A175068.P9930618200027696907.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A253641, A346403, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A175068.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A175069.P11883358524687980575

`A175068(n+1)/(n+1)`
-/

namespace A175069.P11883358524687980575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175068 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A175069.P11883358524687980575

noncomputable section

/-- A175069: a(n) = product of perfect divisors of n / n.

Offset 1, canonical program `A175069.P11883358524687980575`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175068, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A175069 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A175069.P11883358524687980575.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175068, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A175069.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A175070.P7756901965004855871

`A175067(n+1)-(n+1)`
-/

namespace A175070.P7756901965004855871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175067 (n + 1) - (n + 1 : ℤ)

end

end A175070.P7756901965004855871

noncomputable section

/-- A175070: a(n) is the sum of perfect divisors of n - n, where a perfect divisor of n is a divisor d such that d^k = n for some k >= 1.

Offset 1, canonical program `A175070.P7756901965004855871`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175067, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A175070 (n : ℕ) : ℤ :=
  A175070.P7756901965004855871.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175067, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A175070.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A175085.P5076619536702025421

`eq[0, A175087(n+1)]+1`
-/

namespace A175085.P5076619536702025421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175087 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A175085.P5076619536702025421

noncomputable section

/-- A175085: Numbers m such that product of perfect divisors of x = m has no solution.

Offset 1, canonical program `A175085.P5076619536702025421`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A175085 (n : ℕ) : ℤ :=
  (A175085.P5076619536702025421.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A175085.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175781.P3395625929835666286

`(n+1)^(1/A020639(A253641(n+1)))`
-/

namespace A175781.P3395625929835666286
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ (1 / (A020639 (A253641 (n + 1)).toNat : ℚ) : ℝ)

end

end A175781.P3395625929835666286

noncomputable section

/-- A175781: a(n) = n^(1/k) with the smallest k>1 such that n is a k-th power, taking k=1 if no such k>1 exists.

Offset 1, canonical program `A175781.P3395625929835666286`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175781 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A175781.P3395625929835666286.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175781.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175785.P6519600176006389600

`eq[16, A319100(A008574(n))]`
-/

namespace A175785.P6519600176006389600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319100 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175785.P6519600176006389600

noncomputable section

/-- A175785: Numbers n such that the number of distinct prime divisors of n does not divide phi(n).

Offset 1, canonical program `A175785.P6519600176006389600`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A175785 (n : ℕ) : ℤ :=
  (A175785.P6519600176006389600.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A175785.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178645.P12647911113547449989

`A000203(n+1)-A175067(n+1)`
-/

namespace A178645.P12647911113547449989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A175067 (n + 1)

end

end A178645.P12647911113547449989

noncomputable section

/-- A178645: a(n) = sum of divisors d of n such that d^k is not equal to n for any k >= 1.

Offset 1, canonical program `A178645.P12647911113547449989`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175067, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A178645 (n : ℕ) : ℤ :=
  A178645.P12647911113547449989.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175067, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A178645.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A178646.P15418868558420132707

`A007955(n+1)/A175068(n+1)`
-/

namespace A178646.P15418868558420132707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) / (A175068 (n + 1) : ℚ)

end

end A178646.P15418868558420132707

noncomputable section

/-- A178646: a(n) = product of divisors d of n such that d^k is not equal to n for any k >= 1.

Offset 1, canonical program `A178646.P15418868558420132707`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175068, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A178646 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A178646.P15418868558420132707.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175068, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A178646.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A206581.P6744461879614919973

`p?[A100368(n+1)-1]`
-/

namespace A206581.P6744461879614919973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100368 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A206581.P6744461879614919973

noncomputable section

/-- A206581: Odd primes p such that p+1 is a prime times a power of two.

Offset 1, canonical program `A206581.P6744461879614919973`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A206581 (n : ℕ) : ℤ :=
  A206581.P6744461879614919973.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A206581.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A224516.P4254981347655587293

`A002487(A060839(n+1))*A034444(n+1)`
-/

namespace A224516.P4254981347655587293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A060839 (n + 1)).toNat * A034444 (n + 1)

end

end A224516.P4254981347655587293

noncomputable section

/-- A224516: Number of solutions to x^4 - x == 0 (mod n).

Offset 1, canonical program `A224516.P4254981347655587293`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A224516 (n : ℕ) : ℤ :=
  A224516.P4254981347655587293.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A224516.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A251728.P15846215632140144694

`∪[A138109(n+1), A033476(n)]`
-/

namespace A251728.P15846215632140144694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033476 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A251728.P15846215632140144694

noncomputable section

/-- A251728: Semiprimes p*q for which p <= q < p^2.

Offset 1, canonical program `A251728.P15846215632140144694`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A251728 (n : ℕ) : ℤ :=
  (A251728.P15846215632140144694.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A251728.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289558.P3835344173252596639

`∪[A046388(n+1), A100368(n+1)]`
-/

namespace A289558.P3835344173252596639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100368 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A289558.P3835344173252596639

noncomputable section

/-- A289558: Numbers with two distinct prime factors not divisible by a square larger than 4.

Offset 1, canonical program `A289558.P3835344173252596639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289558 (n : ℕ) : ℤ :=
  (A289558.P3835344173252596639.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289558.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294074.P2969751212753778829

`p?[A026491(A038550(n+1))-1]`
-/

namespace A294074.P2969751212753778829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026491 (A038550 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A294074.P2969751212753778829

noncomputable section

/-- A294074: Primes of the form p*2^k + 1, where p is an odd prime and k is odd.

Offset 1, canonical program `A294074.P2969751212753778829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 275 terms. -/
def A294074 (n : ℕ) : ℤ :=
  A294074.P2969751212753778829.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 275 terms. -/
def A294074.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A299152.P7362327138160881266

`ceil(A317932(A003961(n+1))/A167343(n+1))`
-/

namespace A299152.P7362327138160881266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A317932 (A003961 (n + 1)).toNat : ℚ) / (A167343 (n + 1) : ℚ)⌉

end

end A299152.P7362327138160881266

noncomputable section

/-- A299152: Denominators of the positive solution to 2^(n-1) = Sum_{d|n} a(d) * a(n/d).

Offset 1, canonical program `A299152.P7362327138160881266`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 511 terms. -/
def A299152 (n : ℕ) : ℤ :=
  A299152.P7362327138160881266.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 511 terms. -/
def A299152.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304450.P1856426496657703399

`filter[A305634(n+1), A137794(#)]`
-/

namespace A304450.P1856426496657703399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305634 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A137794 (f1 j).toNat = 1) n)

end

end A304450.P1856426496657703399

noncomputable section

/-- A304450: Numbers that are not perfect powers and whose prime factors span an initial interval of prime numbers.

Offset 1, canonical program `A304450.P1856426496657703399`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A304450 (n : ℕ) : ℤ :=
  A304450.P1856426496657703399.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A304450.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307381.P12662117091474292687

`∑{d}[n+1, A008683(#)*A319100((n+1)/#)]`
-/

namespace A307381.P12662117091474292687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A319100 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A307381.P12662117091474292687

noncomputable section

/-- A307381: Number of sextic primitive Dirichlet characters modulo n.

Offset 1, canonical program `A307381.P12662117091474292687`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307381 (n : ℕ) : ℤ :=
  A307381.P12662117091474292687.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307381.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318654.P4089455956200200647

`lt[0, A318655(n+2)]+2`
-/

namespace A318654.P4089455956200200647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318655 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A318654.P4089455956200200647

noncomputable section

/-- A318654: Positions of even terms in A318649.

Offset 1, canonical program `A318654.P4089455956200200647`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1408 terms. -/
def A318654 (n : ℕ) : ℤ :=
  (A318654.P4089455956200200647.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1408 terms. -/
def A318654.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318658.P11069036608746997709

`2^A318659(n+1)`
-/

namespace A318658.P11069036608746997709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A318659 (n + 1) : ℤ)

end

end A318658.P11069036608746997709

noncomputable section

/-- A318658: Denominators of the sequence whose Dirichlet convolution with itself yields A087003, a(2n) = 0 and a(2n+1) = moebius(2n+1).

Offset 1, canonical program `A318658.P11069036608746997709`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318659, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318658 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A318658.P11069036608746997709.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318659, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318658.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A343023.P3905545394748964052

`floor(A160498(n+1)/2)`
-/

namespace A343023.P3905545394748964052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A160498 (n + 1) : ℚ) / 2⌋

end

end A343023.P3905545394748964052

noncomputable section

/-- A343023: Number of cyclic cubic fields with discriminant n^2.

Offset 1, canonical program `A343023.P3905545394748964052`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343023 (n : ℕ) : ℤ :=
  A343023.P3905545394748964052.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353475.P5899225712810305588

`A064911(n+1)-A353476(n+1)`
-/

namespace A353475.P5899225712810305588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (n + 1) - A353476 (n + 1)

end

end A353475.P5899225712810305588

noncomputable section

/-- A353475: a(n) = 1 if n is a semiprime of the form p * q, where p and q are primes with p^2 < q, otherwise 0.

Offset 1, canonical program `A353475.P5899225712810305588`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064911, A353476, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353475 (n : ℕ) : ℤ :=
  A353475.P5899225712810305588.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064911, A353476, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353475.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A364813.P15914586563839963174

`∏{d}[n+1, A175068(#)]`
-/

namespace A364813.P15914586563839963174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A175068 d

end

end A364813.P15914586563839963174

noncomputable section

/-- A364813: a(n) = Product_{k=2..n} k^ord(n, k) where ord(n, k) = 0 if k does not divide n, otherwise ord(n, k) = e where e is such that k^e divides n but k^(e + 1) does not.

Offset 1, canonical program `A364813.P15914586563839963174`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A364813 (n : ℕ) : ℤ :=
  A364813.P15914586563839963174.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A364813.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370077.P3375388874869746190

`2^A370078(n+1)`
-/

namespace A370077.P3375388874869746190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A370078 (n + 1) : ℤ)

end

end A370077.P3375388874869746190

noncomputable section

/-- A370077: The product of exponents of the prime factorization of the largest unitary divisor of n that is a term of A138302.

Offset 1, canonical program `A370077.P3375388874869746190`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A370078, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370077 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A370077.P3375388874869746190.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A370078, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370077.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A381885.P9369399217660328766

`A364813(n+1)/(n+1)`
-/

namespace A381885.P9369399217660328766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A364813 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A381885.P9369399217660328766

noncomputable section

/-- A381885: a(n) = Product_{k=2..n-1} k^ord(n, k) where ord(n, k) = 0 if k does not divide n, otherwise is the exponent of the highest power of k that divides n.

Offset 1, canonical program `A381885.P9369399217660328766`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A364813, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A381885 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A381885.P9369399217660328766.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A364813, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A381885.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A393201.P3275454451732274938

`∪[A378878(n+1), A400801(n+1)]`
-/

namespace A393201.P3275454451732274938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A393201.P3275454451732274938

noncomputable section

/-- A393201: Numbers k that are neither squarefree nor prime powers, such that k/rad(k) != lpf(k), where rad = A007947 and lpf = A020639.

Offset 1, canonical program `A393201.P3275454451732274938`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393201 (n : ℕ) : ℤ :=
  (A393201.P3275454451732274938.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393201.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138511.P5483489551862132602

`filter[A001358(n+3), A353475(#)]`
-/

namespace A138511.P5483489551862132602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353475 (f1 j).toNat = 1) n)

end

end A138511.P5483489551862132602

noncomputable section

/-- A138511: Semiprimes where the larger prime factor is greater than the square of the smaller prime factor, short: semiprimes p*q, p^2 < q.

Offset 1, canonical program `A138511.P5483489551862132602`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138511 (n : ℕ) : ℤ :=
  A138511.P5483489551862132602.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138511.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A168512.P2192914386239545548

`∑{d}[n+1, A175067(#)]`
-/

namespace A168512.P2192914386239545548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A175067 d

end

end A168512.P2192914386239545548

noncomputable section

/-- A168512: Sum of divisors of n weighted by divisor multiplicity in n.

Offset 1, canonical program `A168512.P2192914386239545548`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A168512 (n : ℕ) : ℤ :=
  A168512.P2192914386239545548.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A168512.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343022.P16274586819737777029

`(eq[1, A343023(n+1)]+1)²`
-/

namespace A343022.P16274586819737777029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343023 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A343022.P16274586819737777029

noncomputable section

/-- A343022: Discriminants with exactly 1 associated cyclic cubic field.

Offset 1, canonical program `A343022.P16274586819737777029`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 922 terms. -/
def A343022 (n : ℕ) : ℤ :=
  (A343022.P16274586819737777029.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 922 terms. -/
def A343022.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376384.P9934841520496107516

`∪[A000977(n+1), A393201(n+1)]`
-/

namespace A376384.P9934841520496107516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A376384.P9934841520496107516

noncomputable section

/-- A376384: Numbers k such that there exists at least two m <= k such that both rad(m) | k and m is neither squarefree nor a prime power, i.e., m is in A126706, where rad = A007947.

Offset 1, canonical program `A376384.P9934841520496107516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376384 (n : ℕ) : ℤ :=
  (A376384.P9934841520496107516.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376384.provenance : SequenceMachineLib.Provenance := .conjectured

