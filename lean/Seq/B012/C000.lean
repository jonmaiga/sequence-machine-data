import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C017
import Seq.B000.C026
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C008
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
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
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A315404.P2016412341062961456

`abs(10*n-A313281(n))`
-/

namespace A315404.P2016412341062961456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A313281 n|

end

end A315404.P2016412341062961456

noncomputable section

/-- A315404: Coordination sequence Gal.6.265.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315404.P2016412341062961456`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2344 terms. -/
def A315404 (n : ℕ) : ℤ :=
  A315404.P2016412341062961456.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2344 terms. -/
def A315404.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315633.P2404636861496896285

`abs(A008592(n)-A312681(n))`
-/

namespace A315633.P2404636861496896285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312681 n|

end

end A315633.P2404636861496896285

noncomputable section

/-- A315633: Coordination sequence Gal.6.261.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315633.P2404636861496896285`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2356 terms. -/
def A315633 (n : ℕ) : ℤ :=
  A315633.P2404636861496896285.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2356 terms. -/
def A315633.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315674.P14654524120462468787

`abs(A008592(n)-A312185(n))`
-/

namespace A315674.P14654524120462468787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312185 n|

end

end A315674.P14654524120462468787

noncomputable section

/-- A315674: Coordination sequence Gal.6.353.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315674.P14654524120462468787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2298 terms. -/
def A315674 (n : ℕ) : ℤ :=
  A315674.P14654524120462468787.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2298 terms. -/
def A315674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315770.P16809159360258042029

`A008458(A315470(n)-A314677(n))`
-/

namespace A315770.P16809159360258042029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A315470 n - A314677 n).toNat

end

end A315770.P16809159360258042029

noncomputable section

/-- A315770: Coordination sequence Gal.5.307.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315770.P16809159360258042029`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2200 terms. -/
def A315770 (n : ℕ) : ℤ :=
  A315770.P16809159360258042029.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2200 terms. -/
def A315770.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311254.P10235283366287493450

`A008574(n)+A315691(n)-A315686(n)`
-/

namespace A311254.P10235283366287493450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A315691 n - A315686 n)

end

end A311254.P10235283366287493450

noncomputable section

/-- A311254: Coordination sequence Gal.6.218.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311254.P10235283366287493450`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2010 terms. -/
def A311254 (n : ℕ) : ℤ :=
  A311254.P10235283366287493450.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2010 terms. -/
def A311254.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315177.P46381774396344281

`2*A315470(n)-A008458(n)`
-/

namespace A315177.P46381774396344281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315470 n - A008458 n

end

end A315177.P46381774396344281

noncomputable section

/-- A315177: Coordination sequence Gal.6.255.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315177.P46381774396344281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2288 terms. -/
def A315177 (n : ℕ) : ℤ :=
  A315177.P46381774396344281.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2288 terms. -/
def A315177.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315638.P16650458169343485674

`abs(A008592(n)-A312656(n))`
-/

namespace A315638.P16650458169343485674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312656 n|

end

end A315638.P16650458169343485674

noncomputable section

/-- A315638: Coordination sequence Gal.6.355.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315638.P16650458169343485674`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2298 terms. -/
def A315638 (n : ℕ) : ℤ :=
  A315638.P16650458169343485674.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2298 terms. -/
def A315638.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315642.P10074898855002556229

`abs(A008592(n)-A312606(n))`
-/

namespace A315642.P10074898855002556229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312606 n|

end

end A315642.P10074898855002556229

noncomputable section

/-- A315642: Coordination sequence Gal.6.332.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315642.P10074898855002556229`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2280 terms. -/
def A315642 (n : ℕ) : ℤ :=
  A315642.P10074898855002556229.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2280 terms. -/
def A315642.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A138660.P7096998422197970140

`∩[A138242(n+1), A138248(n+1)]`
-/

namespace A138660.P7096998422197970140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138248 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138660.P7096998422197970140

noncomputable section

/-- A138660: Primes p such that (12*p - 1, 12*p + 1) and (18*p - 1, 18*p + 1) are twin primes.

Offset 1, canonical program `A138660.P7096998422197970140`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 223 terms. -/
def A138660 (n : ℕ) : ℤ :=
  (A138660.P7096998422197970140.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 223 terms. -/
def A138660.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311898.P13132033356014424136

`A014682(A312451(n)+A311334(n))`
-/

namespace A311898.P13132033356014424136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A312451 n + A311334 n).toNat

end

end A311898.P13132033356014424136

noncomputable section

/-- A311898: Coordination sequence Gal.5.76.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311898.P13132033356014424136`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2588 terms. -/
def A311898 (n : ℕ) : ℤ :=
  A311898.P13132033356014424136.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2588 terms. -/
def A311898.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A105411.P452950759705789051

`A000040(A105410(n+1)-1)`
-/

namespace A105411.P452950759705789051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A105410 (n + 1) - 1).toNat

end

end A105411.P452950759705789051

noncomputable section

/-- A105411: Primes p = prime(k) such that both p+2 and prime(k+4)-2 are prime numbers.

Offset 1, canonical program `A105411.P452950759705789051`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A105410, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A105411 (n : ℕ) : ℤ :=
  A105411.P452950759705789051.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A105410, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A105411.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A315444.P9836677377056582144

`abs(A008592(n)-A313155(n))`
-/

namespace A315444.P9836677377056582144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313155 n|

end

end A315444.P9836677377056582144

noncomputable section

/-- A315444: Coordination sequence Gal.6.133.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315444.P9836677377056582144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2299 terms. -/
def A315444 (n : ℕ) : ℤ :=
  A315444.P9836677377056582144.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2299 terms. -/
def A315444.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167885.P2592452161159091730

`A167706(n+1)*A167707(n+1)`
-/

namespace A167885.P2592452161159091730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1) * A167707 (n + 1)

end

end A167885.P2592452161159091730

noncomputable section

/-- A167885: n-th single or isolated number*n-th non-single or nonisolated number.

Offset 1, canonical program `A167885.P2592452161159091730`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167706, A167707, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167885 (n : ℕ) : ℤ :=
  A167885.P2592452161159091730.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167706, A167707, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167885.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167886.P5242547505130811716

`A167706(n+1)-A167707(n+1)`
-/

namespace A167886.P5242547505130811716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1) - A167707 (n + 1)

end

end A167886.P5242547505130811716

noncomputable section

/-- A167886: n-th single or isolated number minus n-th non-single or nonisolated number.

Offset 1, canonical program `A167886.P5242547505130811716`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167706, A167707, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167886 (n : ℕ) : ℤ :=
  A167886.P5242547505130811716.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167706, A167707, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167886.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167887.P6811191950323054762

`A167706(n+1)+A167707(n+1)`
-/

namespace A167887.P6811191950323054762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1) + A167707 (n + 1)

end

end A167887.P6811191950323054762

noncomputable section

/-- A167887: n-th single or isolated number plus n-th non-single or nonisolated number.

Offset 1, canonical program `A167887.P6811191950323054762`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167706, A167707, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167887 (n : ℕ) : ℤ :=
  A167887.P6811191950323054762.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167706, A167707, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167887.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167888.P4384555184533195508

`A167706(n+1)^A167707(n+1)`
-/

namespace A167888.P4384555184533195508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167706 (n + 1) : ℚ) ^ (A167707 (n + 1) : ℤ)

end

end A167888.P4384555184533195508

noncomputable section

/-- A167888: n-th single or isolated number^n-th non-single or nonisolated number.

Offset 1, canonical program `A167888.P4384555184533195508`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167706, A167707, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167888 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A167888.P4384555184533195508.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167706, A167707, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167888.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A168249.P10517048205738276799

`A167706(n+1)-A005117(n+1)`
-/

namespace A168249.P10517048205738276799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1) - A005117 (n + 1)

end

end A168249.P10517048205738276799

noncomputable section

/-- A168249: n-th single or isolated number minus n-th squarefree number.

Offset 1, canonical program `A168249.P10517048205738276799`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, A167706, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A168249 (n : ℕ) : ℤ :=
  A168249.P10517048205738276799.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, A167706, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A168249.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A168343.P10702448307998344180

`A167706(n+1)-(n+1)`
-/

namespace A168343.P10702448307998344180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1) - (n + 1 : ℤ)

end

end A168343.P10702448307998344180

noncomputable section

/-- A168343: n-th single or isolated number minus n.

Offset 1, canonical program `A168343.P10702448307998344180`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167706, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A168343 (n : ℕ) : ℤ :=
  A168343.P10702448307998344180.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167706, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A168343.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A168543.P7013413832630956114

`A000720(A167706(n+1))`
-/

namespace A168543.P7013413832630956114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A167706 (n + 1)).toNat

end

end A168543.P7013413832630956114

noncomputable section

/-- A168543: pi(n-th single or isolated number).

Offset 1, canonical program `A168543.P7013413832630956114`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167706, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A168543 (n : ℕ) : ℤ :=
  A168543.P7013413832630956114.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167706, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A168543.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A171421.P931648610780433948

`A000010(A167706(n+1))`
-/

namespace A171421.P931648610780433948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A167706 (n + 1)).toNat

end

end A171421.P931648610780433948

noncomputable section

/-- A171421: Euler totient function of the n-th single or isolated number.

Offset 1, canonical program `A171421.P931648610780433948`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A167706, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A171421 (n : ℕ) : ℤ :=
  A171421.P931648610780433948.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A167706, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A171421.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A244066.P12419883921865423903

`∩[A162734(n+1), A163656(n+1)]`
-/

namespace A244066.P12419883921865423903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162734 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244066.P12419883921865423903

noncomputable section

/-- A244066: Arithmetic mean of two consecutive twin primes that is also the arithmetic mean of two consecutive non-twin primes.

Offset 1, canonical program `A244066.P12419883921865423903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 429 terms. -/
def A244066 (n : ℕ) : ℤ :=
  (A244066.P12419883921865423903.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 429 terms. -/
def A244066.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273088.P1933067447831493313

`3*round(A134797(n+1)/3)`
-/

namespace A273088.P1933067447831493313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.roundAway ((A134797 (n + 1) : ℚ) / 3)

end

end A273088.P1933067447831493313

noncomputable section

/-- A273088: a(n) is a multiple of 6 and a(n)-1 or a(n)+1 is an isolated (non-twin) prime number.

Offset 1, canonical program `A273088.P1933067447831493313`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A273088 (n : ℕ) : ℤ :=
  A273088.P1933067447831493313.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A273088.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085434.P6643677055624857651

`2*A134797(n+1)`
-/

namespace A085434.P6643677055624857651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A134797 (n + 1)

end

end A085434.P6643677055624857651

noncomputable section

/-- A085434: Twice odd isolated primes.

Offset 1, canonical program `A085434.P6643677055624857651`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A134797, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A085434 (n : ℕ) : ℤ :=
  A085434.P6643677055624857651.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A134797, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A085434.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A126095.P17739323671417689772

`p?[and(1, A167706(n+2))*A167706(n+1)]`
-/

namespace A126095.P17739323671417689772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A167706 (n + 2)) * A167706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A126095.P17739323671417689772

noncomputable section

/-- A126095: Lesser of pairs of single (non-twin) primes.

Offset 1, canonical program `A126095.P17739323671417689772`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A126095 (n : ℕ) : ℤ :=
  A126095.P17739323671417689772.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A126095.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A048673.P16342935298832955059

`floor((A045965(n+1)+1)/2)`
-/

namespace A048673.P16342935298832955059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A045965 (n + 1) + 1 : ℚ) / 2⌋

end

end A048673.P16342935298832955059

noncomputable section

/-- A048673: Permutation of natural numbers: a(n) = (A003961(n)+1) / 2 [where A003961(n) shifts the prime factorization of n one step towards larger primes].

Offset 1, canonical program `A048673.P16342935298832955059`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045965, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048673 (n : ℕ) : ℤ :=
  A048673.P16342935298832955059.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045965, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048673.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056518.P10495334089397764284

`∑{d}[n+1, A008683(#)*A056508((n+1)/#)]`
-/

namespace A056518.P10495334089397764284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056508 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056518.P10495334089397764284

noncomputable section

/-- A056518: Number of primitive (period n) periodic palindromic structures using exactly two different symbols.

Offset 1, canonical program `A056518.P10495334089397764284`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 665 terms. -/
def A056518 (n : ℕ) : ℤ :=
  A056518.P10495334089397764284.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 665 terms. -/
def A056518.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A180750.P8982842106611708069

`A180249(n+1)-A179781(n+1)`
-/

namespace A180750.P8982842106611708069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180249 (n + 1) - A179781 (n + 1)

end

end A180750.P8982842106611708069

noncomputable section

/-- A180750: a(n) = DP(n) is the total number of k-double-palindromes of n, where 2 <= k <= n.

Offset 1, canonical program `A180750.P8982842106611708069`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A179781, A180249, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A180750 (n : ℕ) : ℤ :=
  A180750.P8982842106611708069.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A179781, A180249, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A180750.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A181135.P15852532938470310667

`A180322(n+1)-A179781(n+1)`
-/

namespace A181135.P15852532938470310667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180322 (n + 1) - A179781 (n + 1)

end

end A181135.P15852532938470310667

noncomputable section

/-- A181135: a(n) = ADP(n) is the total number of aperiodic k-double-palindromes of n, where 2 <= k <= n.

Offset 1, canonical program `A181135.P15852532938470310667`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A179781, A180322, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A181135 (n : ℕ) : ℤ :=
  A181135.P15852532938470310667.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A179781, A180322, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A181135.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A243506.P4471214084631282160

`A048673(A122111(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A243506.P4471214084631282160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (A122111 (n + 1)).toNat

end

end A243506.P4471214084631282160

noncomputable section

/-- A243506: Permutation of natural numbers: a(n) = A048673(A122111(n)).

Offset 1, canonical program `A243506.P4471214084631282160`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, A122111, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A243506 (n : ℕ) : ℤ :=
  A243506.P4471214084631282160.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, A122111, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A243506.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A244154.P13695817551395832827

`A048673(A005940(n+1))`
-/

namespace A244154.P13695817551395832827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (A005940 (n + 1)).toNat

end

end A244154.P13695817551395832827

noncomputable section

/-- A244154: Permutation of natural numbers: a(0) = 1, a(1) = 2, a(2n) = A254049(a(n)), a(2n+1) = 3*a(n)-1; composition of A048673 and A005940.

Offset 0, canonical program `A244154.P13695817551395832827`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A048673, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A244154 (n : ℕ) : ℤ :=
  A244154.P13695817551395832827.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A048673, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A244154.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A245447.P2909225473096699640

`A048673(A048673(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A245447.P2909225473096699640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (A048673 (n + 1)).toNat

end

end A245447.P2909225473096699640

noncomputable section

/-- A245447: Permutation of natural numbers: a(n) = A048673(A048673(n)).

Offset 1, canonical program `A245447.P2909225473096699640`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A245447 (n : ℕ) : ℤ :=
  A245447.P2909225473096699640.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A245447.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A245612.P9111246450174136386

`A048673(A163511(n))`
-/

namespace A245612.P9111246450174136386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (A163511 n).toNat

end

end A245612.P9111246450174136386

noncomputable section

/-- A245612: Permutation of natural numbers: a(0) = 1, a(1) = 2, a(2n) = 3*a(n)-1, a(2n+1) = A254049(a(n)); composition of A048673 and A163511.

Offset 0, canonical program `A245612.P9111246450174136386`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A245612 (n : ℕ) : ℤ :=
  A245612.P9111246450174136386.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A245612.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A246260.P15139320144047363680

`A000035(A048673(n+1))`
-/

namespace A246260.P15139320144047363680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A048673 (n + 1)).toNat

end

end A246260.P15139320144047363680

noncomputable section

/-- A246260: a(n) = 1 if A003961(n) is of the form 4k+1, otherwise a(n) = 0, (when A003961(n) is of the form 4k+3). [A003961 is fully multiplicative with a(p) = nextprime(p)].

Offset 1, canonical program `A246260.P15139320144047363680`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246260 (n : ℕ) : ℤ :=
  A246260.P15139320144047363680.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246260.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A246261.P15970116847604462200

`eq[1, A246260(n+1)]+1`
-/

namespace A246261.P15970116847604462200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246260 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A246261.P15970116847604462200

noncomputable section

/-- A246261: Numbers n such that A003961(n) is of the form 4k+1.

Offset 1, canonical program `A246261.P15970116847604462200`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246261 (n : ℕ) : ℤ :=
  (A246261.P15970116847604462200.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246261.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246262.P10590490882229900441

`A246260(n)+a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A246262.P10590490882229900441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A246260 n + a (n - 1)

end

end A246262.P10590490882229900441

noncomputable section

/-- A246262: Inverse function to injection A246261, partial sums of A246260.

Offset 0, canonical program `A246262.P10590490882229900441`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A246260, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246262 (n : ℕ) : ℤ :=
  A246262.P10590490882229900441.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A246260, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246262.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A246263.P13781321414210192941

`eq[0, A246260(n+1)]+1`
-/

namespace A246263.P13781321414210192941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246260 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A246263.P13781321414210192941

noncomputable section

/-- A246263: Numbers n such that A003961(n) is of the form 4k+3.

Offset 1, canonical program `A246263.P13781321414210192941`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246263 (n : ℕ) : ℤ :=
  (A246263.P13781321414210192941.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246263.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246264.P3731558565214309607

`n-A246262(n)`
-/

namespace A246264.P3731558565214309607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A246262 n

end

end A246264.P3731558565214309607

noncomputable section

/-- A246264: Inverse function for injection A246263.

Offset 0, canonical program `A246264.P3731558565214309607`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A246262, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246264 (n : ℕ) : ℤ :=
  A246264.P3731558565214309607.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A246262, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246264.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A246265.P3263290630060116708

`(1+A048673(A246261(n+1)))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A246265.P3263290630060116708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + A048673 (A246261 (n + 1)).toNat : ℚ) / 2

end

end A246265.P3263290630060116708

noncomputable section

/-- A246265: Permutation of natural numbers: a(n) = (1+A048673(A246261(n)))/2.

Offset 1, canonical program `A246265.P3263290630060116708`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, A246261, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A246265 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A246265.P3263290630060116708.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, A246261, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A246265.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A246266.P5502087740169364243

`A246262(A064216(2*n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A246266.P5502087740169364243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246262 (A064216 (2 * n + 1)).toNat

end

end A246266.P5502087740169364243

noncomputable section

/-- A246266: Permutation of natural numbers: a(n) = A246262(A064216((2*n)-1)).

Offset 1, canonical program `A246266.P5502087740169364243`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064216, A246262, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A246266 (n : ℕ) : ℤ :=
  A246266.P5502087740169364243.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064216, A246262, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A246266.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A246267.P11984409630168091738

`A048673(A246263(n+1))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A246267.P11984409630168091738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048673 (A246263 (n + 1)).toNat : ℚ) / 2

end

end A246267.P11984409630168091738

noncomputable section

/-- A246267: Permutation of natural numbers: a(n) = A048673(A246263(n))/2.

Offset 1, canonical program `A246267.P11984409630168091738`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, A246263, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A246267 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A246267.P11984409630168091738.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, A246263, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A246267.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A246342.P4380619750639108041

`A048673(a(n-1))` with `a(0)=12`
-/

namespace A246342.P4380619750639108041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [12] fun n a =>
  A048673 (a (n - 1)).toNat

end

end A246342.P4380619750639108041

noncomputable section

/-- A246342: a(0) = 12, after which, if a(n-1) = product_{k >= 1} (p_k)^(c_k), then a(n) = (1/2) * (1 + product_{k >= 1} (p_{k+1})^(c_k)), where p_k indicates the k-th prime, A000040(k).

Offset 0, canonical program `A246342.P4380619750639108041`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246342 (n : ℕ) : ℤ :=
  A246342.P4380619750639108041.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246342.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A246344.P8517610500674386477

`A048673(a(n-1))` with `a(0)=16`
-/

namespace A246344.P8517610500674386477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [16] fun n a =>
  A048673 (a (n - 1)).toNat

end

end A246344.P8517610500674386477

noncomputable section

/-- A246344: a(0) = 16, after which, if a(n-1) = product_{k >= 1} (p_k)^(c_k), then a(n) = (1/2) * (1 + product_{k >= 1} (p_{k+1})^(c_k)), where p_k indicates the k-th prime, A000040(k).

Offset 0, canonical program `A246344.P8517610500674386477`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246344 (n : ℕ) : ℤ :=
  A246344.P8517610500674386477.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246344.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A246360.P7980695317397057140

`A048673(A029744(n+1))`
-/

namespace A246360.P7980695317397057140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (A029744 (n + 1)).toNat

end

end A246360.P7980695317397057140

noncomputable section

/-- A246360: a(1) = 1, then A007051 ((3^n)+1)/2 interleaved with A057198 (5*3^(n-1)+1)/2.

Offset 1, canonical program `A246360.P7980695317397057140`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246360 (n : ℕ) : ℤ :=
  A246360.P7980695317397057140.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246360.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A253792.P10279464663514090408

`A156552(A244154(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A253792.P10279464663514090408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A244154 n).toNat

end

end A253792.P10279464663514090408

noncomputable section

/-- A253792: Permutation of natural numbers: a(n) = A156552(A244154(n)).

Offset 0, canonical program `A253792.P10279464663514090408`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A156552, A244154, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A253792 (n : ℕ) : ℤ :=
  A253792.P10279464663514090408.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A156552, A244154, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A253792.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A253884.P16458333213855723995

`A122111(A243506(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A253884.P16458333213855723995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A243506 (n + 1)).toNat

end

end A253884.P16458333213855723995

noncomputable section

/-- A253884: Permutation of natural numbers: a(n) = A122111(A243506(n)).

Offset 1, canonical program `A253884.P16458333213855723995`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122111, A243506, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A253884 (n : ℕ) : ℤ :=
  A253884.P16458333213855723995.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122111, A243506, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A253884.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A253892.P16962043896708669236

`A243071(A245612(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A253892.P16962043896708669236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243071 (A245612 n).toNat

end

end A253892.P16962043896708669236

noncomputable section

/-- A253892: Permutation of natural numbers: a(n) = A243071(A245612(n)).

Offset 0, canonical program `A253892.P16962043896708669236`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A243071, A245612, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A253892 (n : ℕ) : ℤ :=
  A253892.P16962043896708669236.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A243071, A245612, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A253892.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A254049.P1269229269105982742

`A048673(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A254049.P1269229269105982742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (2 * n + 1)

end

end A254049.P1269229269105982742

noncomputable section

/-- A254049: Odd bisection of A048673: a(n) = A048673(2*n-1).

Offset 1, canonical program `A254049.P1269229269105982742`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A254049 (n : ℕ) : ℤ :=
  A254049.P1269229269105982742.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A254049.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A254051.P698183174355435254

`A048673(A254053(n+1))`
-/

namespace A254051.P698183174355435254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (A254053 (n + 1)).toNat

end

end A254051.P698183174355435254

noncomputable section

/-- A254051: Square array A by downward antidiagonals: A(n,k) = (3 + 3^n*(2*floor(3*k/2) - 1))/6, n,k >= 1; read as A(1,1), A(1,2), A(2,1), A(1,3), A(2,2), A(3,1), ...

Offset 1, canonical program `A254051.P698183174355435254`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, A254053, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A254051 (n : ℕ) : ℤ :=
  A254051.P698183174355435254.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, A254053, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A254051.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A254101.P16318865568851900675

`A000265(A254051(n+1))`
-/

namespace A254101.P16318865568851900675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A254051 (n + 1)).toNat

end

end A254101.P16318865568851900675

noncomputable section

/-- A254101: Square array A(row,col) = A000265(A254051(row,col)).

Offset 1, canonical program `A254101.P16318865568851900675`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A254051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A254101 (n : ℕ) : ℤ :=
  A254101.P16318865568851900675.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A254051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A254101.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A269860.P2406062323914390099

`eq[A000089(A073575(n+1)), A246260(n+1)]+1`
-/

namespace A269860.P2406062323914390099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000089 (A073575 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246260 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A269860.P2406062323914390099

noncomputable section

/-- A269860: Numbers n such that n and A048673(n) are of the same parity.

Offset 1, canonical program `A269860.P2406062323914390099`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5062 terms. -/
def A269860 (n : ℕ) : ℤ :=
  (A269860.P2406062323914390099.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5062 terms. -/
def A269860.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269861.P15058288038325778243

`eq[A000035(n), A246260(n+1)]+1`
-/

namespace A269861.P15058288038325778243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246260 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A269861.P15058288038325778243

noncomputable section

/-- A269861: Numbers n such that n and A048673(n) are of opposite parity.

Offset 1, canonical program `A269861.P15058288038325778243`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4981 terms. -/
def A269861 (n : ℕ) : ℤ :=
  (A269861.P15058288038325778243.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4981 terms. -/
def A269861.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270430.P7402745598073727974

`eq[A011655(n+2), A246260(n+1)]+1`
-/

namespace A270430.P7402745598073727974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246260 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A270430.P7402745598073727974

noncomputable section

/-- A270430: Numbers n such that A048673(n) and A064216(n) are of the same parity.

Offset 1, canonical program `A270430.P7402745598073727974`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5071 terms. -/
def A270430 (n : ℕ) : ℤ :=
  (A270430.P7402745598073727974.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5071 terms. -/
def A270430.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270431.P6980226587388956771

`eq[char[A270430(n+1)], A000007(n)]`
-/

namespace A270431.P6980226587388956771
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270430 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A270431.P6980226587388956771

noncomputable section

/-- A270431: Numbers n such that A048673(n) and A064216(n) are of opposite parity.

Offset 1, canonical program `A270431.P6980226587388956771`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4928 terms. -/
def A270431 (n : ℕ) : ℤ :=
  (A270431.P6980226587388956771.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4928 terms. -/
def A270431.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270432.P16128433384081149087

`∑[char[A270430(n+1)-1]]`
-/

namespace A270432.P16128433384081149087
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270430 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270432.P16128433384081149087

noncomputable section

/-- A270432: a(n) = number of terms A270430 <= n; least monotonic left inverse of A270430.

Offset 1, canonical program `A270432.P16128433384081149087`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A270432 (n : ℕ) : ℤ :=
  (A270432.P16128433384081149087.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A270432.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A278224.P4475416140857214934

`A046523(A048673(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A278224.P4475416140857214934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A048673 (n + 1)).toNat

end

end A278224.P4475416140857214934

noncomputable section

/-- A278224: a(n) = A046523(A048673(n)).

Offset 1, canonical program `A278224.P4475416140857214934`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, A048673, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A278224 (n : ℕ) : ℤ :=
  A278224.P4475416140857214934.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, A048673, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A278224.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A285712.P10989090546038180415

`A048673(A252463(A064216(n+1)))%A254049(n+1)`
-/

namespace A285712.P10989090546038180415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048673 (A252463 (A064216 (n + 1)).toNat).toNat) (A254049 (n + 1))

end

end A285712.P10989090546038180415

noncomputable section

/-- A285712: a(1) = 0, and for n > 1, if n = 3k-1, then a(n) = k, otherwise a(n) = (A064216(n)+1)/2.

Offset 1, canonical program `A285712.P10989090546038180415`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5004 terms. -/
def A285712 (n : ℕ) : ℤ :=
  A285712.P10989090546038180415.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5004 terms. -/
def A285712.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285713.P6418465002878272495

`A046523(A245612(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A285713.P6418465002878272495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A245612 n).toNat

end

end A285713.P6418465002878272495

noncomputable section

/-- A285713: a(n) = A046523(A245612(n)).

Offset 0, canonical program `A285713.P6418465002878272495`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, A245612, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A285713 (n : ℕ) : ℤ :=
  A285713.P6418465002878272495.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, A245612, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A285713.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A285714.P3662534397469993104

`1+a(A285712(n+1)-1)` with `a(0)=0, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A285714.P3662534397469993104
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 + a (A285712 (n + 1) - 1).toNat

end

end A285714.P3662534397469993104

noncomputable section

/-- A285714: a(1) = 0; for n > 1, a(n) = 1 + a(A285712(n)).

Offset 1, canonical program `A285714.P3662534397469993104`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A285712, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A285714 (n : ℕ) : ℤ :=
  (A285714.P3662534397469993104.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A285712, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A285714.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286373.P10522384416090527033

`A286366(A048673(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286373.P10522384416090527033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286366 (A048673 (n + 1)).toNat

end

end A286373.P10522384416090527033

noncomputable section

/-- A286373: a(n) = A286366(A048673(n)).

Offset 1, canonical program `A286373.P10522384416090527033`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, A286366, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286373 (n : ℕ) : ℤ :=
  A286373.P10522384416090527033.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, A286366, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286373.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286578.P11823003083739616083

`A285712(A286577(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286578.P11823003083739616083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285712 (A286577 (n + 1)).toNat

end

end A286578.P11823003083739616083

noncomputable section

/-- A286578: a(n) = A285712(A286577(n)).

Offset 1, canonical program `A286578.P11823003083739616083`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A285712, A286577, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286578 (n : ℕ) : ℤ :=
  A286578.P11823003083739616083.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A285712, A286577, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286578.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286582.P13483176475197983670

`A001222(A048673(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286582.P13483176475197983670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A048673 (n + 1)).toNat

end

end A286582.P13483176475197983670

noncomputable section

/-- A286582: a(n) = A001222(A048673(n)).

Offset 1, canonical program `A286582.P13483176475197983670`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A048673, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286582 (n : ℕ) : ℤ :=
  A286582.P13483176475197983670.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A048673, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286582.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286583.P1093253371800113672

`A007814(A048673(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286583.P1093253371800113672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A048673 (n + 1)).toNat

end

end A286583.P1093253371800113672

noncomputable section

/-- A286583: a(n) = A007814(A048673(n)).

Offset 1, canonical program `A286583.P1093253371800113672`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286583 (n : ℕ) : ℤ :=
  A286583.P1093253371800113672.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286583.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286584.P2368017140526794240

`A048673(n+1)%4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286584.P2368017140526794240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048673 (n + 1)) 4

end

end A286584.P2368017140526794240

noncomputable section

/-- A286584: a(n) = A048673(n) mod 4.

Offset 1, canonical program `A286584.P2368017140526794240`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286584 (n : ℕ) : ℤ :=
  A286584.P2368017140526794240.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286584.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286585.P13020909029626819781

`A053735(A048673(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286585.P13020909029626819781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A048673 (n + 1)).toNat

end

end A286585.P13020909029626819781

noncomputable section

/-- A286585: a(n) = A053735(A048673(n)).

Offset 1, canonical program `A286585.P13020909029626819781`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286585 (n : ℕ) : ℤ :=
  A286585.P13020909029626819781.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286585.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286586.P14883220154274821023

`A006047(A048673(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286586.P14883220154274821023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 (A048673 (n + 1)).toNat

end

end A286586.P14883220154274821023

noncomputable section

/-- A286586: a(n) = A006047(A048673(n)).

Offset 1, canonical program `A286586.P14883220154274821023`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006047, A048673, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286586 (n : ℕ) : ℤ :=
  A286586.P14883220154274821023.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006047, A048673, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286586.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286587.P14335713023111587869

`A006047(A244154(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286587.P14335713023111587869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 (A244154 n).toNat

end

end A286587.P14335713023111587869

noncomputable section

/-- A286587: a(n) = A006047(A244154(n)).

Offset 0, canonical program `A286587.P14335713023111587869`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006047, A244154, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286587 (n : ℕ) : ℤ :=
  A286587.P14335713023111587869.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006047, A244154, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286587.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286613.P8940720398290594098

`A046523(A244154(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286613.P8940720398290594098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A244154 n).toNat

end

end A286613.P8940720398290594098

noncomputable section

/-- A286613: a(n) = A046523(A244154(n)).

Offset 0, canonical program `A286613.P8940720398290594098`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, A244154, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286613 (n : ℕ) : ℤ :=
  A286613.P8940720398290594098.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, A244154, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286613.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A291759.P1154487178848887037

`A289814(A048673(n+1))`
-/

namespace A291759.P1154487178848887037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 (A048673 (n + 1)).toNat

end

end A291759.P1154487178848887037

noncomputable section

/-- A291759: Binary encoding of 2-digits in ternary representation of A048673(n).

Offset 1, canonical program `A291759.P1154487178848887037`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, A289814, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A291759 (n : ℕ) : ℤ :=
  A291759.P1154487178848887037.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, A289814, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A291759.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A291763.P8562917103276515339

`A289814(A245612(n))`
-/

namespace A291763.P8562917103276515339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 (A245612 n).toNat

end

end A291763.P8562917103276515339

noncomputable section

/-- A291763: Binary encoding of 2-digits in ternary representation of A245612(n).

Offset 0, canonical program `A291763.P8562917103276515339`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A245612, A289814, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A291763 (n : ℕ) : ℤ :=
  A291763.P8562917103276515339.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A245612, A289814, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A291763.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A292250.P14580592722357513826

`A291770(A048673(n+1))`
-/

namespace A292250.P14580592722357513826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291770 (A048673 (n + 1)).toNat

end

end A292250.P14580592722357513826

noncomputable section

/-- A292250: Binary encoding of 0-digits in ternary representation of A048673(n).

Offset 1, canonical program `A292250.P14580592722357513826`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, A291770, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A292250 (n : ℕ) : ℤ :=
  A292250.P14580592722357513826.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, A291770, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A292250.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A292251.P3001000153096971167

`A007814(1+A292250(n+1))`
-/

namespace A292251.P3001000153096971167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (1 + A292250 (n + 1)).toNat

end

end A292251.P3001000153096971167

noncomputable section

/-- A292251: The 3-adic valuation of A048673(n).

Offset 1, canonical program `A292251.P3001000153096971167`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A292250, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292251 (n : ℕ) : ℤ :=
  A292251.P3001000153096971167.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A292250, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292251.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A292252.P1921198620842257846

`A007814(1+A291759(n+1))`
-/

namespace A292252.P1921198620842257846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (1 + A291759 (n + 1)).toNat

end

end A292252.P1921198620842257846

noncomputable section

/-- A292252: Number of trailing 2-digits in ternary representation of A048673(n).

Offset 1, canonical program `A292252.P1921198620842257846`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A291759, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292252 (n : ℕ) : ℤ :=
  A292252.P1921198620842257846.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A291759, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292252.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A292260.P2004989350870370866

`A291770(A245612(n))`
-/

namespace A292260.P2004989350870370866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291770 (A245612 n).toNat

end

end A292260.P2004989350870370866

noncomputable section

/-- A292260: Binary encoding of 0-digits in ternary representation of A245612(n).

Offset 0, canonical program `A292260.P2004989350870370866`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A245612, A291770, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A292260 (n : ℕ) : ℤ :=
  A292260.P2004989350870370866.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A245612, A291770, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A292260.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A292261.P9658740137864361157

`A007814(1+A292260(n))`
-/

namespace A292261.P9658740137864361157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (1 + A292260 n).toNat

end

end A292261.P9658740137864361157

noncomputable section

/-- A292261: The 3-adic valuation of A245612(n).

Offset 0, canonical program `A292261.P9658740137864361157`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A292260, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292261 (n : ℕ) : ℤ :=
  A292261.P9658740137864361157.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A292260, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292261.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A292262.P8551215429045952693

`A007814(1+A291763(n))`
-/

namespace A292262.P8551215429045952693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (1 + A291763 n).toNat

end

end A292262.P8551215429045952693

noncomputable section

/-- A292262: Number of trailing 2-digits in ternary representation of A245612(n).

Offset 0, canonical program `A292262.P8551215429045952693`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A291763, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292262 (n : ℕ) : ℤ :=
  A292262.P8551215429045952693.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A291763, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292262.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A292590.P8653431818680257867

`A079978(n+1)+2*a(A285712(n+1)-1)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A292590.P8653431818680257867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  A079978 (n + 1) + 2 * a (A285712 (n + 1) - 1).toNat

end

end A292590.P8653431818680257867

noncomputable section

/-- A292590: a(1) = 0; and for n > 1, a(n) = 2*a(A285712(n)) + [0 == (n mod 3)].

Offset 1, canonical program `A292590.P8653431818680257867`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A285712, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292590 (n : ℕ) : ℤ :=
  A292590.P8653431818680257867.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A285712, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292590.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A302847.P8021168690625830306

`A064216(∑{e}[A006530(n+1), A048673(n-#+1)]+1)`
-/

namespace A302847.P8021168690625830306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064216 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A048673 ((n : ℤ) - (Nat.factorization (f1 n).natAbs p : ℤ) + 1).toNat + 1).toNat

end

end A302847.P8021168690625830306

noncomputable section

/-- A302847: Permutation of natural numbers: a(1) = 1; for n > 1, a(n) = A064989(2+A003961(n-1)).

Offset 1, canonical program `A302847.P8021168690625830306`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 768 terms. -/
def A302847 (n : ℕ) : ℤ :=
  A302847.P8021168690625830306.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 768 terms. -/
def A302847.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304759.P343480758352222515

`A289813(A048673(n+1))`
-/

namespace A304759.P343480758352222515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (A048673 (n + 1)).toNat

end

end A304759.P343480758352222515

noncomputable section

/-- A304759: Binary encoding of 1-digits in ternary representation of A048673(n).

Offset 1, canonical program `A304759.P343480758352222515`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, A289813, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A304759 (n : ℕ) : ℤ :=
  A304759.P343480758352222515.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, A289813, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A304759.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A305295.P5022715488973413442

`A289813(A245612(n))`
-/

namespace A305295.P5022715488973413442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (A245612 n).toNat

end

end A305295.P5022715488973413442

noncomputable section

/-- A305295: Binary encoding of 1-digits in ternary representation of A245612(n).

Offset 0, canonical program `A305295.P5022715488973413442`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A245612, A289813, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A305295 (n : ℕ) : ℤ :=
  A305295.P5022715488973413442.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A245612, A289813, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A305295.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A328231.P16100151263577803873

`gcd(n+1, A048673(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A328231.P16100151263577803873
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A048673 (n + 1))

end

end A328231.P16100151263577803873

noncomputable section

/-- A328231: a(n) = gcd(n, A048673(n)).

Offset 1, canonical program `A328231.P16100151263577803873`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A328231 (n : ℕ) : ℤ :=
  (A328231.P16100151263577803873.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A328231.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A336840.P4199511304269638983

`A364063(A048673(n+1))`
-/

namespace A336840.P4199511304269638983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364063 (A048673 (n + 1)).toNat

end

end A336840.P4199511304269638983

noncomputable section

/-- A336840: Inverse Möbius transform of A048673.

Offset 1, canonical program `A336840.P4199511304269638983`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336840 (n : ℕ) : ℤ :=
  A336840.P4199511304269638983.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336840.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A337336.P26056897004872509

`A048673((n+1)²)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A337336.P26056897004872509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 ((n + 1) ^ 2)

end

end A337336.P26056897004872509

noncomputable section

/-- A337336: a(n) = A048673(n^2).

Offset 1, canonical program `A337336.P26056897004872509`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337336 (n : ℕ) : ℤ :=
  A337336.P26056897004872509.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337336.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A340376.P5209034061733646793

`eq[1, A278222(A304759(n+1))]+1`
-/

namespace A340376.P5209034061733646793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A304759 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A340376.P5209034061733646793

noncomputable section

/-- A340376: Numbers k such that there are no 1-digits in the ternary expansion of A048673(k).

Offset 1, canonical program `A340376.P5209034061733646793`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 343 terms. -/
def A340376 (n : ℕ) : ℤ :=
  (A340376.P5209034061733646793.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 343 terms. -/
def A340376.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340378.P1297187167670847368

`A000120(A304759(n+1))`
-/

namespace A340378.P1297187167670847368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A304759 (n + 1)).toNat

end

end A340378.P1297187167670847368

noncomputable section

/-- A340378: Number of 1-digits in the ternary representation of A048673(n).

Offset 1, canonical program `A340378.P1297187167670847368`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A304759, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340378 (n : ℕ) : ℤ :=
  A340378.P1297187167670847368.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A304759, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340378.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A340379.P13991734637336372993

`A000120(A291759(n+1))`
-/

namespace A340379.P13991734637336372993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A291759 (n + 1)).toNat

end

end A340379.P13991734637336372993

noncomputable section

/-- A340379: Number of 2-digits in the ternary representation of A048673(n).

Offset 1, canonical program `A340379.P13991734637336372993`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A291759, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340379 (n : ℕ) : ℤ :=
  A340379.P13991734637336372993.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A291759, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340379.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A341345.P7991195102109131919

`A048673(n+1)%3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A341345.P7991195102109131919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048673 (n + 1)) 3

end

end A341345.P7991195102109131919

noncomputable section

/-- A341345: a(n) = A048673(n) mod 3.

Offset 1, canonical program `A341345.P7991195102109131919`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A341345 (n : ℕ) : ℤ :=
  A341345.P7991195102109131919.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A341345.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A341346.P16101358028309292209

`A048673(2*(n+1)-1)%3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A341346.P16101358028309292209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048673 (2 * (n + 1) - 1)) 3

end

end A341346.P16101358028309292209

noncomputable section

/-- A341346: a(n) = A048673(2n-1) mod 3.

Offset 1, canonical program `A341346.P16101358028309292209`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A341346 (n : ℕ) : ℤ :=
  A341346.P16101358028309292209.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A341346.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A341347.P17586485408911963690

`A341346(A048673(n+1))`
-/

namespace A341347.P17586485408911963690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341346 (A048673 (n + 1)).toNat

end

end A341347.P17586485408911963690

noncomputable section

/-- A341347: a(n) = (1+A003961(A003961(n)))/2 mod 3, where A003961 shifts the prime factorization of n one step towards larger primes.

Offset 1, canonical program `A341347.P17586485408911963690`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, A341346, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A341347 (n : ℕ) : ℤ :=
  A341347.P17586485408911963690.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, A341346, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A341347.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A341349.P16384403756756534731

`eq[1, A341346(n+1)]+1`
-/

namespace A341349.P16384403756756534731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341346 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A341349.P16384403756756534731

noncomputable section

/-- A341349: Numbers k for which A254049(k) is not a multiple of 3.

Offset 1, canonical program `A341349.P16384403756756534731`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341349 (n : ℕ) : ℤ :=
  (A341349.P16384403756756534731.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341349.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341350.P13400712899668666593

`eq[0, A341346(n+1)]+1`
-/

namespace A341350.P13400712899668666593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341346 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A341350.P13400712899668666593

noncomputable section

/-- A341350: Numbers k for which A254049(k) [= A048673(2k-1)] is a multiple of 3.

Offset 1, canonical program `A341350.P13400712899668666593`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341350 (n : ℕ) : ℤ :=
  (A341350.P13400712899668666593.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341350.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A347125.P6631894712779475887

`∑{d}[n+1, A008683(#)*A341529((n+1)/#)]`
-/

namespace A347125.P6631894712779475887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A341529 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347125.P6631894712779475887

noncomputable section

/-- A347125: Möbius transform of A341529, sigma(n) * A003961(n).

Offset 1, canonical program `A347125.P6631894712779475887`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347125 (n : ℕ) : ℤ :=
  A347125.P6631894712779475887.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347125.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A349382.P6508741965165625424

`∑{d}[n+1, A064989(#)*A346234((n+1)/#)]`
-/

namespace A349382.P6508741965165625424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A064989 d * A346234 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349382.P6508741965165625424

noncomputable section

/-- A349382: Dirichlet convolution of A064989 with A346234 (Dirichlet inverse of A003961), where A003961 and A064989 are fully multiplicative sequences that shift the prime factorization of n one step towards larger and smaller primes respectively.

Offset 1, canonical program `A349382.P6508741965165625424`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349382 (n : ℕ) : ℤ :=
  A349382.P6508741965165625424.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349382.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A349388.P677895676119621301`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349388 (n : ℕ) : ℤ :=
  A349388.P677895676119621301.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349388.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349573.P7179832196050588632

`A048673(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A349573.P7179832196050588632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (n + 1) - (n + 1 : ℤ)

end

end A349573.P7179832196050588632

noncomputable section

/-- A349573: a(n) = A048673(n) - n, where A048673(n) = (A003961(n)+1) / 2, and A003961(n) shifts the prime factorization of n one step towards larger primes.

Offset 1, canonical program `A349573.P7179832196050588632`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349573 (n : ℕ) : ℤ :=
  A349573.P7179832196050588632.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349573.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A349624.P9806452003791796394`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349624 (n : ℕ) : ℤ :=
  A349624.P9806452003791796394.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349624.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349626.P15541726286806720928

`∑{d}[n+1, A008683(#)*A326042((n+1)/#)]`
-/

namespace A349626.P15541726286806720928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A326042 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349626.P15541726286806720928

noncomputable section

/-- A349626: Möbius transform of A326042, where A326042(n) = A064989(sigma(A003961(n))).

Offset 1, canonical program `A349626.P15541726286806720928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349626 (n : ℕ) : ℤ :=
  A349626.P15541726286806720928.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349626.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A349910.P15708250188466983779

`A336840(n+1)-A048673(n+1)`
-/

namespace A349910.P15708250188466983779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336840 (n + 1) - A048673 (n + 1)

end

end A349910.P15708250188466983779

noncomputable section

/-- A349910: a(n) = Sum_{d|n, d<n} A048673(d).

Offset 1, canonical program `A349910.P15708250188466983779`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, A336840, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349910 (n : ℕ) : ℤ :=
  A349910.P15708250188466983779.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, A336840, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349910.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A358752.P5898709040952930086`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065043, A358750, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358752 (n : ℕ) : ℤ :=
  A358752.P5898709040952930086.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065043, A358750, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
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

Offset 1, canonical program `A358753.P12282633013976382741`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066829, A358751, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358753 (n : ℕ) : ℤ :=
  A358753.P12282633013976382741.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066829, A358751, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
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

/-! ## A378521.P13111043884927909752

`A072451(A048673(n+1))`
-/

namespace A378521.P13111043884927909752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072451 (A048673 (n + 1)).toNat

end

end A378521.P13111043884927909752

noncomputable section

/-- A378521: Möbius transform of A048673.

Offset 1, canonical program `A378521.P13111043884927909752`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, A072451, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A378521 (n : ℕ) : ℤ :=
  A378521.P13111043884927909752.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, A072451, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A378521.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A378607.P10144459662400142962`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378607 (n : ℕ) : ℤ :=
  A378607.P10144459662400142962.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378607.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A378662.P11219609030214075406`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378662 (n : ℕ) : ℤ :=
  A378662.P11219609030214075406.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378662.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A378747.P2612506612617413863

`A048673(n+1)-A001065(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A378747.P2612506612617413863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (n + 1) - A001065 (n + 1)

end

end A378747.P2612506612617413863

noncomputable section

/-- A378747: a(n) = A048673(n) - A001065(n).

Offset 1, canonical program `A378747.P2612506612617413863`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378747 (n : ℕ) : ℤ :=
  A378747.P2612506612617413863.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378747.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378748.P8742583333347776614

`A378521(n+1)-A051953(n+1)`
-/

namespace A378748.P8742583333347776614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378521 (n + 1) - A051953 (n + 1)

end

end A378748.P8742583333347776614

noncomputable section

/-- A378748: Möbius transform of A378747.

Offset 1, canonical program `A378748.P8742583333347776614`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, A378521, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A378748 (n : ℕ) : ℤ :=
  A378748.P8742583333347776614.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, A378521, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A378748.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378751.P13164053895739909960

`A000203(n+1)-A048673(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A378751.P13164053895739909960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A048673 (n + 1)

end

end A378751.P13164053895739909960

noncomputable section

/-- A378751: a(n) = A000203(n) - A048673(n).

Offset 1, canonical program `A378751.P13164053895739909960`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378751 (n : ℕ) : ℤ :=
  A378751.P13164053895739909960.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378751.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A379484.P7184658253164234511

`A379473(A379481(n+1))`
-/

namespace A379484.P7184658253164234511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379473 (A379481 (n + 1)).toNat

end

end A379484.P7184658253164234511

noncomputable section

/-- A379484: a(n) is the highest power of 3 dividing sigma(A003961(n^2)), where A003961 is fully multiplicative with a(prime(i)) = prime(i+1), and sigma is the sum of divisors function.

Offset 1, canonical program `A379484.P7184658253164234511`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A379481, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379484 (n : ℕ) : ℤ :=
  A379484.P7184658253164234511.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A379481, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379484.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A003962.P5960370020489354738

`∏{d}[n+1, A048673(A014963(#))]`
-/

namespace A003962.P5960370020489354738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A048673 (A014963 d).toNat

end

end A003962.P5960370020489354738

noncomputable section

/-- A003962: Completely multiplicative with a(prime(k)) = floor( (prime(k+1)+1)/2 ) for k-th prime prime(k).

Offset 1, canonical program `A003962.P5960370020489354738`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003962 (n : ℕ) : ℤ :=
  A003962.P5960370020489354738.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003962.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003974.P18403113671087007945

`∑{d}[n+1, A003962(#)*A008683((n+1)/#)]`
-/

namespace A003974.P18403113671087007945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003962 d * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A003974.P18403113671087007945

noncomputable section

/-- A003974: Möbius transform of A003962.

Offset 1, canonical program `A003974.P18403113671087007945`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003974 (n : ℕ) : ℤ :=
  A003974.P18403113671087007945.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003974.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003975.P5207555401224753949

`∑{d}[n+1, A003962(#)]`
-/

namespace A003975.P5207555401224753949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003962 d

end

end A003975.P5207555401224753949

noncomputable section

/-- A003975: Inverse Möbius transform of A003962.

Offset 1, canonical program `A003975.P5207555401224753949`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003975 (n : ℕ) : ℤ :=
  A003975.P5207555401224753949.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003975.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011947.P14935983523207937062

`A179781(Δ[n²])`
-/

namespace A011947.P14935983523207937062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179781 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A011947.P14935983523207937062

noncomputable section

/-- A011947: Number of Barlow packings with group P63/mmc(O) that repeat after 4n+2 layers.

Offset 0, canonical program `A011947.P14935983523207937062`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A011947 (n : ℕ) : ℤ :=
  A011947.P14935983523207937062.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A011947.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A033300.P5482203830554641710

`A033299(A000040(n+1))`
-/

namespace A033300.P5482203830554641710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033299 (A000040 (n + 1)).toNat

end

end A033300.P5482203830554641710

noncomputable section

/-- A033300: Smallest safe prime ((p-1)/2 is also prime) > n-th prime.

Offset 0, canonical program `A033300.P5482203830554641710`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A033300 (n : ℕ) : ℤ :=
  A033300.P5482203830554641710.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A033300.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045966.P14531198864673538185

`A357852(n+1)+A000038(n)`
-/

namespace A045966.P14531198864673538185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357852 (n + 1) + A000038 n

end

end A045966.P14531198864673538185

noncomputable section

/-- A045966: a(1)=3; if n = Product p_i^e_i, n > 1, then a(n) = Product p_{i+2}^e_i.

Offset 1, canonical program `A045966.P14531198864673538185`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045966 (n : ℕ) : ℤ :=
  A045966.P14531198864673538185.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045966.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A045972.P3601848265481509117

`A045966(A007947(n+1))*A045966(n+1)`
-/

namespace A045972.P3601848265481509117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045966 (A007947 (n + 1)).toNat * A045966 (n + 1)

end

end A045972.P3601848265481509117

noncomputable section

/-- A045972: a(1)=9; if n = Product p_i^e_i, n > 1, then a(n) = Product p_{i+2}^{e_i+1}.

Offset 1, canonical program `A045972.P3601848265481509117`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045972 (n : ℕ) : ℤ :=
  A045972.P3601848265481509117.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045972.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A126272.P6684349572185641805

`A045972(n+1)²/A045966(n+1)`
-/

namespace A126272.P6684349572185641805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045972 (n + 1) ^ 2 : ℚ) / (A045966 (n + 1) : ℚ)

end

end A126272.P6684349572185641805

noncomputable section

/-- A126272: a(1)=27; if n = Product p_i^e_i, n>1, then a(n) = Product p_{i+2}^{e_i+2}.

Offset 1, canonical program `A126272.P6684349572185641805`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126272 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A126272.P6684349572185641805.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126272.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A164977.P13398499223667780761

`∪[A005383(n+1), A077065(n+1)]`
-/

namespace A164977.P13398499223667780761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A164977.P13398499223667780761

noncomputable section

/-- A164977: Numbers m such that the set {1..m} has only one nontrivial decomposition into subsets with equal element sum.

Offset 1, canonical program `A164977.P13398499223667780761`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A164977 (n : ℕ) : ℤ :=
  (A164977.P13398499223667780761.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A164977.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A191450.P11542416564399414876

`A254051(A038722(n+1))`
-/

namespace A191450.P11542416564399414876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254051 (A038722 (n + 1)).toNat

end

end A191450.P11542416564399414876

noncomputable section

/-- A191450: Dispersion of (3*n-1), read by antidiagonals.

Offset 1, canonical program `A191450.P11542416564399414876`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A254051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A191450 (n : ℕ) : ℤ :=
  A191450.P11542416564399414876.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A254051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A191450.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A191451.P4030698452655550704

`abs(A191450(n+1)-A068911(A198954(n)))`
-/

namespace A191451.P4030698452655550704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A191450 (n + 1) - A068911 (A198954 n).toNat|

end

end A191451.P4030698452655550704

noncomputable section

/-- A191451: Dispersion of (3*n-2), for n>=2, by antidiagonals.

Offset 1, canonical program `A191451.P4030698452655550704`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. -/
def A191451 (n : ℕ) : ℤ :=
  A191451.P4030698452655550704.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. -/
def A191451.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A232221.P6150882525445185730

`∑[A077068(n+1)-A077065(n+1)]`
-/

namespace A232221.P6150882525445185730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077068 (n + 1) - A077065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232221.P6150882525445185730

noncomputable section

/-- A232221: a(n) = Sum_{i=1..n} (A077068(i) - A077065(i)).

Offset 1, canonical program `A232221.P6150882525445185730`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A232221 (n : ℕ) : ℤ :=
  A232221.P6150882525445185730.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A232221.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A232342.P12753495415627519153

`A077068(n+1)-A077065(n+1)`
-/

namespace A232342.P12753495415627519153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077068 (n + 1) - A077065 (n + 1)

end

end A232342.P12753495415627519153

noncomputable section

/-- A232342: A077068(n) minus A077065(n).

Offset 1, canonical program `A232342.P12753495415627519153`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A232342 (n : ℕ) : ℤ :=
  A232342.P12753495415627519153.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A232342.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A246281.P3833940699432057348

`lt[A349573(n+1), 1]+1`
-/

namespace A246281.P3833940699432057348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349573 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A246281.P3833940699432057348

noncomputable section

/-- A246281: Numbers k for which A003961(k) < 2*k; Numbers n such that if n = product_{k >= 1} (p_k)^(c_k), then product_{k >= 1} (p_{k+1})^(c_k) < 2*n, where p_k indicates the k-th prime, A000040(k).

Offset 1, canonical program `A246281.P3833940699432057348`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9281 terms. -/
def A246281 (n : ℕ) : ℤ :=
  (A246281.P3833940699432057348.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9281 terms. -/
def A246281.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246282.P13261184401000594775

`lt[0, A349573(n+1)]+1`
-/

namespace A246282.P13261184401000594775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349573 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A246282.P13261184401000594775

noncomputable section

/-- A246282: Numbers k for which A003961(k) > 2*k; numbers n such that if n = Product_{k >= 1} (p_k)^(c_k), then Product_{k >= 1} (p_{k+1})^(c_k) > 2*n, where p_k indicates the k-th prime, A000040(k).

Offset 1, canonical program `A246282.P13261184401000594775`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246282 (n : ℕ) : ℤ :=
  (A246282.P13261184401000594775.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254055.P3508509321847597637

`ceil(A254101(n+1)/2)`
-/

namespace A254055.P3508509321847597637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A254101 (n + 1) : ℚ) / 2⌉

end

end A254055.P3508509321847597637

noncomputable section

/-- A254055: Square array: A(row,col) = A003602(A254051(row,col)), read by antidiagonals A(1,1), A(1,2), A(2,1), A(1,3), A(2,2), A(3,1), ...

Offset 1, canonical program `A254055.P3508509321847597637`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A254055 (n : ℕ) : ℤ :=
  A254055.P3508509321847597637.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A254055.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A317510.P13699733993965501497

`floor(A194593(n+4)/3)`
-/

namespace A317510.P13699733993965501497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A194593 (n + 4) : ℚ) / 3⌋

end

end A317510.P13699733993965501497

noncomputable section

/-- A317510: Numbers (4p+1)/3 where p is a Sophie Germain prime p > 3.

Offset 1, canonical program `A317510.P13699733993965501497`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A317510 (n : ℕ) : ℤ :=
  A317510.P13699733993965501497.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A317510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319630.P6743274893116773440

`eq[0, A296210(n+1)]+1`
-/

namespace A319630.P6743274893116773440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296210 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A319630.P6743274893116773440

noncomputable section

/-- A319630: Positive numbers that are not divisible by two consecutive prime numbers.

Offset 1, canonical program `A319630.P6743274893116773440`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319630 (n : ℕ) : ℤ :=
  (A319630.P6743274893116773440.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319630.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A337374.P5490490073902702338

`lt[n, A349573(abs(1-n)+1)]`
-/

namespace A337374.P5490490073902702338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349573 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A337374.P5490490073902702338

noncomputable section

/-- A337374: Numbers k for which A003961(k) > 4*k.

Offset 1, canonical program `A337374.P5490490073902702338`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4538 terms. -/
def A337374 (n : ℕ) : ℤ :=
  (A337374.P5490490073902702338.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4538 terms. -/
def A337374.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340377.P8993606752064362235

`record[(n+1)^(1-A340379(n+1))]`
-/

namespace A340377.P8993606752064362235
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (1 - A340379 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340377.P8993606752064362235

noncomputable section

/-- A340377: Numbers k such that there are no 2-digits in the ternary expansion of A048673(k).

Offset 1, canonical program `A340377.P8993606752064362235`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1146 terms. -/
def A340377 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A340377.P8993606752064362235.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1146 terms. -/
def A340377.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A346239.P15670279633828823301

`∑{d}[n+1, A008683(#)*A341512((n+1)/#)]`
-/

namespace A346239.P15670279633828823301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A341512 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A346239.P15670279633828823301

noncomputable section

/-- A346239: Möbius transform of A341512, sigma(n)*A003961(n) - n*sigma(A003961(n)).

Offset 1, canonical program `A346239.P15670279633828823301`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346239 (n : ℕ) : ℤ :=
  A346239.P15670279633828823301.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346239.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A347124.P9735022635029064804

`A347125(n+1)-A346239(n+1)`
-/

namespace A347124.P9735022635029064804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347125 (n + 1) - A346239 (n + 1)

end

end A347124.P9735022635029064804

noncomputable section

/-- A347124: Möbius transform of A341528, n * sigma(A003961(n)).

Offset 1, canonical program `A347124.P9735022635029064804`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A346239, A347125, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A347124 (n : ℕ) : ℤ :=
  A347124.P9735022635029064804.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A346239, A347125, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A347124.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347136.P18101128390577008043

`∑{d}[n+1, A336845(#)*A349388((n+1)/#)]`
-/

namespace A347136.P18101128390577008043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A336845 d * A349388 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347136.P18101128390577008043

noncomputable section

/-- A347136: a(n) = Sum_{d|n} d * A003961(n/d), where A003961 shifts the prime factorization of its argument one step towards larger primes.

Offset 1, canonical program `A347136.P18101128390577008043`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347136 (n : ℕ) : ℤ :=
  A347136.P18101128390577008043.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347136.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347137.P13826285688787841149

`∑{d}[n+1, A008683(#)*A347136((n+1)/#)]`
-/

namespace A347137.P13826285688787841149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A347136 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347137.P13826285688787841149

noncomputable section

/-- A347137: a(n) = Sum_{d|n} phi(d) * A003961(n/d), where A003961 shifts the prime factorization of its argument one step towards larger primes, and phi is Euler totient function.

Offset 1, canonical program `A347137.P13826285688787841149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347137 (n : ℕ) : ℤ :=
  A347137.P13826285688787841149.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347137.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347236.P7854495597392681081

`∑{d}[n+1, A298473(#)*A347136((n+1)/#)]`
-/

namespace A347236.P7854495597392681081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A298473 d * A347136 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347236.P7854495597392681081

noncomputable section

/-- A347236: a(n) = Sum_{d|n} A061019(d) * A003961(n/d), where A061019 negates the primes in the prime factorization, while A003961 shifts the factorization one step towards larger primes.

Offset 1, canonical program `A347236.P7854495597392681081`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347236 (n : ℕ) : ℤ :=
  A347236.P7854495597392681081.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347236.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347237.P399102674569037639

`∑{d}[n+1, A008683(#)*A347236((n+1)/#)]`
-/

namespace A347237.P399102674569037639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A347236 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347237.P399102674569037639

noncomputable section

/-- A347237: Möbius transform of A347236.

Offset 1, canonical program `A347237.P399102674569037639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347237 (n : ℕ) : ℤ :=
  A347237.P399102674569037639.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347237.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A347965.P11028472510360414317

`∑{d}[n+1, A347136(#)*A349394((n+1)/#)]`
-/

namespace A347965.P11028472510360414317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A347136 d * A349394 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347965.P11028472510360414317

noncomputable section

/-- A347965: Dirichlet convolution of A003415 (arithmetic derivative) with A003961 (prime shift towards larger primes).

Offset 1, canonical program `A347965.P11028472510360414317`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347965 (n : ℕ) : ℤ :=
  A347965.P11028472510360414317.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347965.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348749.P164932222149815558

`filter[A053850(n+1), A353639(#)]`
-/

namespace A348749.P164932222149815558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353639 (f1 j).toNat = 1) n)

end

end A348749.P164932222149815558

noncomputable section

/-- A348749: Odd numbers k for which A064989(sigma(k)) > A064989(k), where A064989 shifts the prime factorization one step towards lower primes, and sigma is the sum of divisors function.

Offset 1, canonical program `A348749.P164932222149815558`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 723 terms. -/
def A348749 (n : ℕ) : ℤ :=
  A348749.P164932222149815558.a (n - 1)

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

/-! ## A349385.P8088612047606087231

`A378220(n+1)/(A000005(n+1)-A070824(n+1))`
-/

namespace A349385.P8088612047606087231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A378220 (n + 1) : ℚ) / (A000005 (n + 1) - A070824 (n + 1) : ℚ)

end

end A349385.P8088612047606087231

noncomputable section

/-- A349385: Dirichlet convolution of A048673 with the Dirichlet inverse of A003961, where A003961 is fully multiplicative with a(p) = nextprime(p), and A048673(n) = (1+A003961(n))/2.

Offset 1, canonical program `A349385.P8088612047606087231`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349385 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A349385.P8088612047606087231.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349385.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349387.P3512592924213105837

`∑{d}[n+1, A101035(#)*A347137((n+1)/#)]`
-/

namespace A349387.P3512592924213105837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A101035 d * A347137 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349387.P3512592924213105837

noncomputable section

/-- A349387: Dirichlet convolution of A003961 with A055615 (Dirichlet inverse of n), where A003961 is fully multiplicative with a(p) = nextprime(p).

Offset 1, canonical program `A349387.P3512592924213105837`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349387 (n : ℕ) : ℤ :=
  A349387.P3512592924213105837.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349387.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A349571.P582764414335137096

`∑{d}[n+1, A349385(#)*A349387((n+1)/#)]`
-/

namespace A349571.P582764414335137096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349385 d * A349387 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349571.P582764414335137096

noncomputable section

/-- A349571: Dirichlet convolution of A048673 with A055615 (Dirichlet inverse of n).

Offset 1, canonical program `A349571.P582764414335137096`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349571 (n : ℕ) : ℤ :=
  A349571.P582764414335137096.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349571.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A356173.P8720124054726278930

`1-A296210(n+1)`
-/

namespace A356173.P8720124054726278930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A296210 (n + 1)

end

end A356173.P8720124054726278930

noncomputable section

/-- A356173: a(n) = 1 if n is not divisible by two consecutive prime numbers, otherwise 0.

Offset 1, canonical program `A356173.P8720124054726278930`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A296210, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356173 (n : ℕ) : ℤ :=
  A356173.P8720124054726278930.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A296210, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356173.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A378606.P1824987261939307766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378606 (n : ℕ) : ℤ :=
  A378606.P1824987261939307766.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378606.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A074845.P14330215240908241597

`∪[A073582(n+1), A194593(n+1)]`
-/

namespace A074845.P14330215240908241597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073582 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A074845.P14330215240908241597

noncomputable section

/-- A074845: Numbers k such that S(k) = largest difference between consecutive divisors of k (ordered by size), where S(k) is the Kempner function (A002034).

Offset 1, canonical program `A074845.P14330215240908241597`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074845 (n : ℕ) : ℤ :=
  (A074845.P14330215240908241597.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074845.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A166469.P6403527322044406154

`∑{d}[n+1, A356173(#)]`
-/

namespace A166469.P6403527322044406154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A356173 d

end

end A166469.P6403527322044406154

noncomputable section

/-- A166469: Number of divisors of n which are not multiples of consecutive primes.

Offset 1, canonical program `A166469.P6403527322044406154`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166469 (n : ℕ) : ℤ :=
  A166469.P6403527322044406154.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166469.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A347122.P16124771186689615703`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A347137, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A347122 (n : ℕ) : ℤ :=
  A347122.P16124771186689615703.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A347137, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A347122.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A077135.P8276527008192767829

`∪[2*A077065(n+1), A001358(n+1)]`
-/

namespace A077135.P8276527008192767829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A077135.P8276527008192767829

noncomputable section

/-- A077135: Composite numbers n whose proper (other than 1 and n) odd divisors are prime and even divisors are 1 less than a prime.

Offset 1, canonical program `A077135.P8276527008192767829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A077135 (n : ℕ) : ℤ :=
  (A077135.P8276527008192767829.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A077135.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283598.P301866308681776955

`A283597(eq[1, A283597(n+2)-A283597(n+1)]+1)`
-/

namespace A283598.P301866308681776955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283597 (n + 2) - A283597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283597 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A283598.P301866308681776955

noncomputable section

/-- A283598: Numbers k such that all three of 6*k+1, 6*(k+1)+1, and 6*(k+2)+1 are semiprimes.

Offset 1, canonical program `A283598.P301866308681776955`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A283598 (n : ℕ) : ℤ :=
  A283598.P301866308681776955.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A283598.provenance : SequenceMachineLib.Provenance := .conjectured

