import SequenceMachineLib.Basic
import Seq.B000.C001
import Seq.B000.C007
import Seq.B000.C010
import Seq.B000.C018
import Seq.B000.C030
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C009
import Seq.B001.C013
import Seq.B001.C014

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A399204.P11534051387213006384

`a(n-1)*A080079(n)` with `a(0)=1`
-/

namespace A399204.P11534051387213006384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A080079 n

end

end A399204.P11534051387213006384

noncomputable section

/-- A399204: Number of permutations that give the minimum number of comparisons for sorting n elements by binary insertion.

Offset 0, canonical program `A399204.P11534051387213006384`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399204 (n : ℕ) : ℤ :=
  A399204.P11534051387213006384.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399204.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400202.P11404524350164515713

`∑{d}[n+1, A060715(#)]`
-/

namespace A400202.P11404524350164515713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060715 d

end

end A400202.P11404524350164515713

noncomputable section

/-- A400202: Number of integers k, 1 <= k < n, such that (n+k)/gcd(n,k) is prime.

Offset 1, canonical program `A400202.P11404524350164515713`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400202 (n : ℕ) : ℤ :=
  A400202.P11404524350164515713.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400202.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A401407.P9579087663748494119

`A008836(n+1)*A101455(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A401407.P9579087663748494119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) * A101455 (n + 1)

end

end A401407.P9579087663748494119

noncomputable section

/-- A401407: a(n) = lambda(n)*chi_{-4}(n) = A008836(n)*A101455(n).

Offset 1, canonical program `A401407.P9579087663748494119`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401407 (n : ℕ) : ℤ :=
  A401407.P9579087663748494119.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401407.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399088.P9966872433898824773

`A051903(A005117(n+1)+1)`
-/

namespace A399088.P9966872433898824773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A005117 (n + 1) + 1).toNat

end

end A399088.P9966872433898824773

noncomputable section

/-- A399088: The maximum exponent in the prime factorization of the number following the n-th squarefree number.

Offset 1, canonical program `A399088.P9966872433898824773`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A399088 (n : ℕ) : ℤ :=
  A399088.P9966872433898824773.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A399088.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A399089.P17383829431704807904

`A051903(A005117(n+2)-1)`
-/

namespace A399089.P17383829431704807904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A005117 (n + 2) - 1).toNat

end

end A399089.P17383829431704807904

noncomputable section

/-- A399089: The maximum exponent in the prime factorization of the number preceding the n-th squarefree number.

Offset 2, canonical program `A399089.P17383829431704807904`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A399089 (n : ℕ) : ℤ :=
  A399089.P17383829431704807904.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A399089.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A399158.P12205524656708406864

`comp[A340944(n)+n]`
-/

namespace A399158.P12205524656708406864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340944 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A399158.P12205524656708406864

noncomputable section

/-- A399158: Squares visited by a Dabbaba moving on a spirally numbered board always to the lowest available unvisited square.

Offset 1, canonical program `A399158.P12205524656708406864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2601 terms. -/
def A399158 (n : ℕ) : ℤ :=
  (A399158.P12205524656708406864.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2601 terms. -/
def A399158.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399262.P9814319546926637261

`A183301(n+1)+A057944(n)`
-/

namespace A399262.P9814319546926637261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183301 (n + 1) + A057944 n

end

end A399262.P9814319546926637261

noncomputable section

/-- A399262: Triangle read by rows: row n gives the n consecutive integers centered at n^2, excluding n^2 if n is even.

Offset 1, canonical program `A399262.P9814319546926637261`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399262 (n : ℕ) : ℤ :=
  A399262.P9814319546926637261.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399262.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399490.P10332122597394421596

`A219054(n+1)-A212760(n)`
-/

namespace A399490.P10332122597394421596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219054 (n + 1) - A212760 n

end

end A399490.P10332122597394421596

noncomputable section

/-- A399490: Sum of squares of the elements of R(n), where R(n) is the set of n consecutive integers centered at n, with the center n omitted when n is even.

Offset 1, canonical program `A399490.P10332122597394421596`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399490 (n : ℕ) : ℤ :=
  A399490.P10332122597394421596.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399490.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399925.P11086064457582147766

`lt[2, 11*A033999(A007429(n+1))]+1`
-/

namespace A399925.P11086064457582147766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A033999 (A007429 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A399925.P11086064457582147766

noncomputable section

/-- A399925: Numbers k such that A007429(k) is even.

Offset 1, canonical program `A399925.P11086064457582147766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 484 terms. -/
def A399925 (n : ℕ) : ℤ :=
  (A399925.P11086064457582147766.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 484 terms. -/
def A399925.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400324.P3198541763604547307

`A004737(A005369(n+1)+n+2)`
-/

namespace A400324.P3198541763604547307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (A005369 (n + 1) + (n + 2 : ℤ)).toNat

end

end A400324.P3198541763604547307

noncomputable section

/-- A400324: Irregular triangle read by rows, where row n gives the lengths of consecutive same species move blocks in the solution of the Frogs and Toads interchange puzzle with n frogs and n toads.

Offset 1, canonical program `A400324.P3198541763604547307`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A400324 (n : ℕ) : ℤ :=
  A400324.P3198541763604547307.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A400324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400698.P14154291513535149740

`A124897(n)+a(n-1)` with `a(0)=1`
-/

namespace A400698.P14154291513535149740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A124897 n + a (n - 1)

end

end A400698.P14154291513535149740

noncomputable section

/-- A400698: a(n) = Sum_{k=0..n} mu(k^2 + 1).

Offset 0, canonical program `A400698.P14154291513535149740`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400698 (n : ℕ) : ℤ :=
  A400698.P14154291513535149740.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400698.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400770.P6014380429317486619

`∑[A400769(n)]`
-/

namespace A400770.P6014380429317486619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400769 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400770.P6014380429317486619

noncomputable section

/-- A400770: a(n) = Sum_{k=0..n} mu(k^2 + k + 1).

Offset 0, canonical program `A400770.P6014380429317486619`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400770 (n : ℕ) : ℤ :=
  A400770.P6014380429317486619.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400770.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400791.P12289460489753655867

`∑{d}[n+1, #*A140106(#)]`
-/

namespace A400791.P12289460489753655867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A140106 d

end

end A400791.P12289460489753655867

noncomputable section

/-- A400791: a(n) = Sum_{d|n, d >= 4} d * floor((d - 2)/2).

Offset 1, canonical program `A400791.P12289460489753655867`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400791 (n : ℕ) : ℤ :=
  A400791.P12289460489753655867.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400791.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400366.P2437949027083987104

`∑[char[A080075(1+n)]]`
-/

namespace A400366.P2437949027083987104
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080075 (1 + n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400366.P2437949027083987104

noncomputable section

/-- A400366: Number of Proth numbers <= n.

Offset 0, canonical program `A400366.P2437949027083987104`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400366 (n : ℕ) : ℤ :=
  (A400366.P2437949027083987104.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400366.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400893.P8227133802892121621

`2*A400890(n+1)+1`
-/

namespace A400893.P8227133802892121621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A400890 (n + 1) + 1

end

end A400893.P8227133802892121621

noncomputable section

/-- A400893: Bipartition of the positive odd numbers depending on the parity of the 2-adic valuation A007814(3*k + 2). Here the part with odd valuation based on A400890.

Offset 1, canonical program `A400893.P8227133802892121621`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A400890, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A400893 (n : ℕ) : ℤ :=
  A400893.P8227133802892121621.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A400890, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A400893.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A400478.P8710240923367081991

`(a(n-1)-a(n-2))*A007953(a(n-1)+a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A400478.P8710240923367081991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (a (n - 1) - a (n - 2)) * A007953 (a (n - 1) + a (n - 2)).toNat

end

end A400478.P8710240923367081991

noncomputable section

/-- A400478: a(1)=1, a(2)=2; thereafter a(n) = (a(n-1)-a(n-2))*sum of digits(a(n-1)+a(n-2)).

Offset 1, canonical program `A400478.P8710240923367081991`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A400478 (n : ℕ) : ℤ :=
  A400478.P8710240923367081991.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A400478.provenance : SequenceMachineLib.Provenance := .conditional

