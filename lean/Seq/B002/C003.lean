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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C048
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
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import SequenceMachineLib.Triangle

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A119696.P44814447468164684

`n*A119695(n)`
-/

namespace A119696.P44814447468164684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A119695 n

end

end A119696.P44814447468164684

noncomputable section

/-- A119696: a(n) = Fibonacci(n)*n^3*(binomial(2*n, n))^2/(n+1).

Offset 0, canonical program `A119696.P44814447468164684`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n)*n^3*C(2*n, n)²/(n+1)` (program `A119696.P1975591767878323079`, by `A119696.P1975591767878323079.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A119696 (n : ℕ) : ℤ :=
  A119696.P44814447468164684.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n)*n^3*C(2*n, n)²/(n+1)` (program `A119696.P1975591767878323079`, by `A119696.P1975591767878323079.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A119696.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A136104.P7743254892234438870

`∑{#}[n, C(n, #)*A002110(#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A136104.P7743254892234438870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A002110 k

end

end A136104.P7743254892234438870

noncomputable section

/-- A136104: A007318 * A002110; a(n) = Sum_{k=0..n} binomial(n,k)*A002110(k).

Offset 0, canonical program `A136104.P7743254892234438870`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n, #)*A002110(#)]` (program `A136104.P7743254892234438870`, by `A136104.P7743254892234438870.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A136104 (n : ℕ) : ℤ :=
  A136104.P7743254892234438870.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n, #)*A002110(#)]` (program `A136104.P7743254892234438870`, by `A136104.P7743254892234438870.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A136104.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A140992.P7781271617900783477

`a(n-2)+a(n-1)+A000071(n+1)` with `a(0)=0, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140992.P7781271617900783477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + a (n - 1) + A000071 (n + 1)

end

end A140992.P7781271617900783477

noncomputable section

/-- A140992: a(0) = 0, a(1) = 1; for n > 1, a(n) = a(n-2) + a(n-1) + A000071(n+1).

Offset 0, canonical program `A140992.P7781271617900783477`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)+a(n-1)+A000071(n+1)` (program `A140992.P7781271617900783477`, by `A140992.P7781271617900783477.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A140992 (n : ℕ) : ℤ :=
  A140992.P7781271617900783477.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)+a(n-1)+A000071(n+1)` (program `A140992.P7781271617900783477`, by `A140992.P7781271617900783477.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A140992.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A141042.P12825020349384849254

`(n+1)*A001223(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141042.P12825020349384849254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001223 (n + 1)

end

end A141042.P12825020349384849254

noncomputable section

/-- A141042: Product of n and the n-th gap between primes: a(n) = n*A001223(n).

Offset 1, canonical program `A141042.P12825020349384849254`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*A001223(n+1)` (program `A141042.P12825020349384849254`, by `A141042.P12825020349384849254.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A141042 (n : ℕ) : ℤ :=
  A141042.P12825020349384849254.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*A001223(n+1)` (program `A141042.P12825020349384849254`, by `A141042.P12825020349384849254.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A141042.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A144483.P3915174990611328427

`A144481(4*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A144483.P3915174990611328427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144481 (4 * n + 1)

end

end A144483.P3915174990611328427

noncomputable section

/-- A144483: A144481(4n-3).

Offset 1, canonical program `A144483.P3915174990611328427`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A144481(4*n+1)` (program `A144483.P3915174990611328427`, by `A144483.P3915174990611328427.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A144483 (n : ℕ) : ℤ :=
  A144483.P3915174990611328427.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A144481(4*n+1)` (program `A144483.P3915174990611328427`, by `A144483.P3915174990611328427.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A144483.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A147966.P17845740115898667296

`n+A001223(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A147966.P17845740115898667296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A001223 (n + 1)

end

end A147966.P17845740115898667296

noncomputable section

/-- A147966: a(n) = n+(A001223(n)-1) = n+A046933(n).

Offset 1, canonical program `A147966.P17845740115898667296`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+A001223(n+1)` (program `A147966.P17845740115898667296`, by `A147966.P17845740115898667296.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A147966 (n : ℕ) : ℤ :=
  A147966.P17845740115898667296.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+A001223(n+1)` (program `A147966.P17845740115898667296`, by `A147966.P17845740115898667296.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A147966.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A120738.P9838444930846786751

`4*n-A000120(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A120738.P9838444930846786751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - A000120 n

end

end A120738.P9838444930846786751

noncomputable section

/-- A120738: a(n) = 4*n - A000120(n).

Offset 0, canonical program `A120738.P9838444930846786751`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n-A000120(n)` (program `A120738.P9838444930846786751`, by `A120738.P9838444930846786751.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A120738 (n : ℕ) : ℤ :=
  A120738.P9838444930846786751.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n-A000120(n)` (program `A120738.P9838444930846786751`, by `A120738.P9838444930846786751.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A120738.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A134467.P13825419003851249081

`n*(n+1)-A000120(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A134467.P13825419003851249081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (n + 1) : ℤ) - A000120 n

end

end A134467.P13825419003851249081

noncomputable section

/-- A134467: a(n) = n(n+1) - A000120(n), where A000120(n) = number of 1's in binary expansion of n.

Offset 0, canonical program `A134467.P13825419003851249081`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)-A000120(n)` (program `A134467.P13825419003851249081`, by `A134467.P13825419003851249081.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A134467 (n : ℕ) : ℤ :=
  A134467.P13825419003851249081.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)-A000120(n)` (program `A134467.P13825419003851249081`, by `A134467.P13825419003851249081.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A134467.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A137458.P10395638896452164860

`A000040(A007913(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A137458.P10395638896452164860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A007913 (n + 1)).toNat

end

end A137458.P10395638896452164860

noncomputable section

/-- A137458: Prime(core(n)).

Offset 1, canonical program `A137458.P10395638896452164860`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(A007913(n+1))` (program `A137458.P10395638896452164860`, by `A137458.P10395638896452164860.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A137458 (n : ℕ) : ℤ :=
  A137458.P10395638896452164860.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(A007913(n+1))` (program `A137458.P10395638896452164860`, by `A137458.P10395638896452164860.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A137458.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A145109.P11563009872990415514

`2*(n+1)*A007913(2*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A145109.P11563009872990415514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * A007913 (2 * (n + 1))

end

end A145109.P11563009872990415514

noncomputable section

/-- A145109: a(n) = 2*n * core(2*n).

Offset 1, canonical program `A145109.P11563009872990415514`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(n+1)*A007913(2*(n+1))` (program `A145109.P11563009872990415514`, by `A145109.P11563009872990415514.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A145109 (n : ℕ) : ℤ :=
  A145109.P11563009872990415514.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(n+1)*A007913(2*(n+1))` (program `A145109.P11563009872990415514`, by `A145109.P11563009872990415514.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A145109.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A127576.P6805997865159069615

`∪[A142041(n+1), A127578(n+1)]`
-/

namespace A127576.P6805997865159069615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142041 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A127576.P6805997865159069615

noncomputable section

/-- A127576: Primes of the form 16n+15.

Offset 1, canonical program `A127576.P6805997865159069615`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A127576.anchor (n : ℕ) (hn : 1 ≤ n) : A127576 n = (Nat.nth (fun p => p.Prime ∧ p % 16 ∈ ({15} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A127.A127576`. -/
def A127576 (n : ℕ) : ℤ :=
  (A127576.P6805997865159069615.a (n - 1) : ℤ)

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A127576.anchor (n : ℕ) (hn : 1 ≤ n) : A127576 n = (Nat.nth (fun p => p.Prime ∧ p % 16 ∈ ({15} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A127.A127576`. -/
def A127576.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A127589.P13683201596712911778

`∪[A142036(n+1), A142043(n+1)]`
-/

namespace A127589.P13683201596712911778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A127589.P13683201596712911778

noncomputable section

/-- A127589: Primes of the form 16k + 5.

Offset 1, canonical program `A127589.P13683201596712911778`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A127589.anchor (n : ℕ) (hn : 1 ≤ n) : A127589 n = (Nat.nth (fun p => p.Prime ∧ p % 16 ∈ ({5} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A127.A127589`. -/
def A127589 (n : ℕ) : ℤ :=
  (A127589.P13683201596712911778.a (n - 1) : ℤ)

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A127589.anchor (n : ℕ) (hn : 1 ≤ n) : A127589 n = (Nat.nth (fun p => p.Prime ∧ p % 16 ∈ ({5} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A127.A127589`. -/
def A127589.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A115902.P2573848008066962846

`2^n*A002457(n)`
-/

namespace A115902.P2573848008066962846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A002457 n

end

end A115902.P2573848008066962846

noncomputable section

/-- A115902: Expansion of (1-8*x)^(-3/2).

Offset 0, canonical program `A115902.P2573848008066962846`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A115902 (n : ℕ) : ℤ :=
  A115902.P2573848008066962846.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A115902.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A115903.P5062678535628825191

`3^n*A002457(n)`
-/

namespace A115903.P5062678535628825191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A002457 n

end

end A115903.P5062678535628825191

noncomputable section

/-- A115903: Expansion of (1-12*x)^(-3/2).

Offset 0, canonical program `A115903.P5062678535628825191`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A115903 (n : ℕ) : ℤ :=
  A115903.P5062678535628825191.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A115903.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A115964.P16204198474867126447

`A002110(n+1)^3`
-/

namespace A115964.P16204198474867126447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (n + 1) ^ 3

end

end A115964.P16204198474867126447

noncomputable section

/-- A115964: Denominator of Sum_{i=1..n} 1/prime(i)^3.

Offset 1, canonical program `A115964.P16204198474867126447`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A115964 (n : ℕ) : ℤ :=
  A115964.P16204198474867126447.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A115964.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A116941.P12886605417078057976

`A074147(n+1)-1`
-/

namespace A116941.P12886605417078057976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074147 (n + 1) - 1

end

end A116941.P12886605417078057976

noncomputable section

/-- A116941: Permutation of the natural numbers in conjunction with A116939 and A003056.

Offset 0, canonical program `A116941.P12886605417078057976`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A116941 (n : ℕ) : ℤ :=
  A116941.P12886605417078057976.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A116941.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A117394.P2393426672751703093

`A002110(A000045(n))`
-/

namespace A117394.P2393426672751703093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A000045 n).toNat

end

end A117394.P2393426672751703093

noncomputable section

/-- A117394: Product of the first F(n) primes, where F(n) is the n-th Fibonacci number.

Offset 0, canonical program `A117394.P2393426672751703093`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117394 (n : ℕ) : ℤ :=
  A117394.P2393426672751703093.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117394.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A117531.P17624755301349931179

`∑{#}[n, A010051(A117530(C(n+1, 2)+#+1))]`
-/

namespace A117531.P17624755301349931179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A010051 (A117530 (Nat.choose (n + 1) 2 + (k + 1))).toNat

end

end A117531.P17624755301349931179

noncomputable section

/-- A117531: Number of primes in the n-th row of the triangle in A117530.

Offset 1, canonical program `A117531.P17624755301349931179`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117531 (n : ℕ) : ℤ :=
  A117531.P17624755301349931179.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117531.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A117692.P1169064651969981510

`A034386(row(n)+1)²/(A034386(col(n)+1)*A034386(row(n)+1-(col(n)+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A117692.P1169064651969981510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034386 (SequenceMachineLib.triRow n + 1) ^ 2 : ℚ) / (A034386 (SequenceMachineLib.triCol n + 1) * A034386 (SequenceMachineLib.triRow n + 1 - (SequenceMachineLib.triCol n + 1)) : ℚ)

end

end A117692.P1169064651969981510

noncomputable section

/-- A117692: Triangle T(n,k) = A034386(n)^2/(A034386(k)*A034386(n-k)), 1 <= k <= n, read by rows.

Offset 1, canonical program `A117692.P1169064651969981510`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117692 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A117692.P1169064651969981510.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117692.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A117722.P14536613535452170244

`A000045(A003622(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A117722.P14536613535452170244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A003622 (n + 1)).toNat

end

end A117722.P14536613535452170244

noncomputable section

/-- A117722: a(n) = A000045(A003622(n)).

Offset 0, canonical program `A117722.P14536613535452170244`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117722 (n : ℕ) : ℤ :=
  A117722.P14536613535452170244.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117722.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A117735.P13796720657671421151

`A000142(n)-A034386(n)`
-/

namespace A117735.P13796720657671421151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A034386 n

end

end A117735.P13796720657671421151

noncomputable section

/-- A117735: a(n) = n! - primorial(n).

Offset 0, canonical program `A117735.P13796720657671421151`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117735 (n : ℕ) : ℤ :=
  A117735.P13796720657671421151.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117735.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A117998.P3500614632528046177

`A048726(a(n-1))` with `a(0)=1`
-/

namespace A117998.P3500614632528046177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A048726 (a (n - 1)).toNat

end

end A117998.P3500614632528046177

noncomputable section

/-- A117998: Decimal number generated by the binary bits of the n-th generation of the Rule 102 elementary cellular automaton.

Offset 0, canonical program `A117998.P3500614632528046177`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117998 (n : ℕ) : ℤ :=
  A117998.P3500614632528046177.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117998.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A118255.P6599881384483095827

`A000225(n+1)-A072762(n+1)`
-/

namespace A118255.P6599881384483095827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) - A072762 (n + 1)

end

end A118255.P6599881384483095827

noncomputable section

/-- A118255: a(1)=1, then a(n)=2*a(n-1) if n is prime, a(n)=2*a(n-1)+1 if n not prime.

Offset 1, canonical program `A118255.P6599881384483095827`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A118255 (n : ℕ) : ℤ :=
  A118255.P6599881384483095827.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A118255.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A118683.P4158127544114815964

`A039701(row(n)+1)+A039701(col(n)+1)-A039701(row(n)+1)*A039701(col(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A118683.P4158127544114815964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039701 (SequenceMachineLib.triRow n + 1) + A039701 (SequenceMachineLib.triCol n + 1) - A039701 (SequenceMachineLib.triRow n + 1) * A039701 (SequenceMachineLib.triCol n + 1)

end

end A118683.P4158127544114815964

noncomputable section

/-- A118683: Triangle, T(n,k) = A039701(n) + A039701(k) - A039701(n)*A039701(k), read by rows.

Offset 1, canonical program `A118683.P4158127544114815964`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A118683 (n : ℕ) : ℤ :=
  A118683.P4158127544114815964.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A118683.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A119248.P9120946014621865842

`A075829(n+2)`
-/

namespace A119248.P9120946014621865842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075829 (n + 2)

end

end A119248.P9120946014621865842

noncomputable section

/-- A119248: a(n) is the difference between denominator and numerator of the n-th alternating harmonic number Sum_{k=1..n} (-1)^(k+1)/k = A058313(n)/A058312(n).

Offset 1, canonical program `A119248.P9120946014621865842`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119248 (n : ℕ) : ℤ :=
  A119248.P9120946014621865842.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119248.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A119693.P16182671038255865393

`A119692(n)/2`
-/

namespace A119693.P16182671038255865393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119692 n : ℚ) / 2

end

end A119693.P16182671038255865393

noncomputable section

/-- A119693: a(n) = binomial(2*n,n) * Fibonacci(n)/2.

Offset 0, canonical program `A119693.P16182671038255865393`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119693 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A119693.P16182671038255865393.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119693.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A119697.P9446901935336878940

`n*A119694(n)`
-/

namespace A119697.P9446901935336878940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A119694 n

end

end A119697.P9446901935336878940

noncomputable section

/-- A119697: a(n) = Fibonacci(n)*n*binomial(2*n,n)/(n+1).

Offset 0, canonical program `A119697.P9446901935336878940`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119697 (n : ℕ) : ℤ :=
  A119697.P9446901935336878940.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119697.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A119741.P4227817635269695965

`A003057(n+2)!/A004736(n+1)!`
-/

namespace A119741.P4227817635269695965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A003057 (n + 2)).toNat : ℚ) / (Nat.factorial (A004736 (n + 1)).toNat : ℚ)

end

end A119741.P4227817635269695965

noncomputable section

/-- A119741: A008279, with the first and last of each row removed.

Offset 2, canonical program `A119741.P4227817635269695965`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119741 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A119741.P4227817635269695965.a (n - 2))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119741.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A119773.P12904629875990007010

`A033844(3*n)`
-/

namespace A119773.P12904629875990007010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033844 (3 * n)

end

end A119773.P12904629875990007010

noncomputable section

/-- A119773: (8^n)-th prime.

Offset 0, canonical program `A119773.P12904629875990007010`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119773 (n : ℕ) : ℤ :=
  A119773.P12904629875990007010.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119773.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A119774.P16268950224341492503

`A038833(2*n)`
-/

namespace A119774.P16268950224341492503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038833 (2 * n)

end

end A119774.P16268950224341492503

noncomputable section

/-- A119774: (9^n)-th prime.

Offset 0, canonical program `A119774.P16268950224341492503`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119774 (n : ℕ) : ℤ :=
  A119774.P16268950224341492503.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119774.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A119777.P2961772218593756435

`A119772(2*n)`
-/

namespace A119777.P2961772218593756435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119772 (2 * n)

end

end A119777.P2961772218593756435

noncomputable section

/-- A119777: (16^n)-th prime.

Offset 0, canonical program `A119777.P2961772218593756435`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119777 (n : ℕ) : ℤ :=
  A119777.P2961772218593756435.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119777.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A119778.P14151113457328839830

`A033844(5*n)`
-/

namespace A119778.P14151113457328839830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033844 (5 * n)

end

end A119778.P14151113457328839830

noncomputable section

/-- A119778: (32^n)-th prime.

Offset 0, canonical program `A119778.P14151113457328839830`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119778 (n : ℕ) : ℤ :=
  A119778.P14151113457328839830.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119778.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A119780.P4130176689997525209

`A006988(2*n)`
-/

namespace A119780.P4130176689997525209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006988 (2 * n)

end

end A119780.P4130176689997525209

noncomputable section

/-- A119780: a(n) = (100^n)-th prime.

Offset 0, canonical program `A119780.P4130176689997525209`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119780 (n : ℕ) : ℤ :=
  A119780.P4130176689997525209.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119780.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A120007.P17212889191585270917

`A061397(A007947(n+1))`
-/

namespace A120007.P17212889191585270917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (A007947 (n + 1)).toNat

end

end A120007.P17212889191585270917

noncomputable section

/-- A120007: Mobius transform of sum of prime factors of n with multiplicity (A001414).

Offset 1, canonical program `A120007.P17212889191585270917`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A120007 (n : ℕ) : ℤ :=
  A120007.P17212889191585270917.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A120007.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A120027.P1714917155360020650

`3^(A004736(n+1)-1)*5^(A002260(n+1)-1)`
-/

namespace A120027.P1714917155360020650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A004736 (n + 1) - 1 : ℤ) * (5 : ℚ) ^ (A002260 (n + 1) - 1 : ℤ)

end

end A120027.P1714917155360020650

noncomputable section

/-- A120027: Triangle, generated from (3^(n-k) * 5^k) table.

Offset 0, canonical program `A120027.P1714917155360020650`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A120027 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A120027.P1714917155360020650.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A120027.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A120079.P4461166114329905866

`(2-1/(n+1)²)*A051418(n+1)`
-/

namespace A120079.P4461166114329905866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 - 1 / ((n + 1) ^ 2 : ℚ)) * (A051418 (n + 1) : ℚ)

end

end A120079.P4461166114329905866

noncomputable section

/-- A120079: Unsigned row sums of triangle A120078.

Offset 1, canonical program `A120079.P4461166114329905866`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A120079 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A120079.P4461166114329905866.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A120079.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A120285.P11971560500796594752

`A001008(A000040(n+1)-1)`
-/

namespace A120285.P11971560500796594752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001008 (A000040 (n + 1) - 1).toNat

end

end A120285.P11971560500796594752

noncomputable section

/-- A120285: Numerator of harmonic number H(p-1) = Sum_{k=1..p-1} 1/k for prime p.

Offset 1, canonical program `A120285.P11971560500796594752`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A120285 (n : ℕ) : ℤ :=
  A120285.P11971560500796594752.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A120285.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A120474.P16095270401045431404

`A093879(n+2)-A093879(n+1)`
-/

namespace A120474.P16095270401045431404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093879 (n + 2) - A093879 (n + 1)

end

end A120474.P16095270401045431404

noncomputable section

/-- A120474: Second differences of A004001.

Offset 1, canonical program `A120474.P16095270401045431404`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A120474 (n : ℕ) : ℤ :=
  A120474.P16095270401045431404.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A120474.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A120941.P1519152944059217125

`A000720(A006094(n+1))+1-(n+1)`
-/

namespace A120941.P1519152944059217125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A006094 (n + 1)).toNat + 1 - (n + 1 : ℤ)

end

end A120941.P1519152944059217125

noncomputable section

/-- A120941: a(n)=k-n where prime(k) is the smallest prime greater than prime(n)*prime(n+1).

Offset 1, canonical program `A120941.P1519152944059217125`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A120941 (n : ℕ) : ℤ :=
  A120941.P1519152944059217125.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A120941.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A121240.P5910405895771289228

`A072762(A000040(n+1))`
-/

namespace A121240.P5910405895771289228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072762 (A000040 (n + 1)).toNat

end

end A121240.P5910405895771289228

noncomputable section

/-- A121240: Numerator of sum_{k=1..n} 1/2^prime(k).

Offset 1, canonical program `A121240.P5910405895771289228`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A121240 (n : ℕ) : ℤ :=
  A121240.P5910405895771289228.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A121240.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A121573.P1415581596517453918

`A000040(2*(n+1)+1)-2*A008347(2*(n+1))-2`
-/

namespace A121573.P1415581596517453918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (2 * (n + 1) + 1) - 2 * A008347 (2 * (n + 1)) - 2

end

end A121573.P1415581596517453918

noncomputable section

/-- A121573: Prime-gap race; difference of the cumulative sums of gaps above and below prime(2n).

Offset 1, canonical program `A121573.P1415581596517453918`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A121573 (n : ℕ) : ℤ :=
  A121573.P1415581596517453918.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A121573.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A121613.P12497213193092273123

`(-1)^n*A008438(n)`
-/

namespace A121613.P12497213193092273123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A008438 n

end

end A121613.P12497213193092273123

noncomputable section

/-- A121613: Expansion of psi(-x)^4 in powers of x where psi() is a Ramanujan theta function.

Offset 0, canonical program `A121613.P12497213193092273123`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A121613 (n : ℕ) : ℤ :=
  A121613.P12497213193092273123.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A121613.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A121840.P11802573148131771096

`A031922(1000*(n+1))`
-/

namespace A121840.P11802573148131771096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031922 (1000 * (n + 1))

end

end A121840.P11802573148131771096

noncomputable section

/-- A121840: (n*10^6)th prime.

Offset 1, canonical program `A121840.P11802573148131771096`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A121840 (n : ℕ) : ℤ :=
  A121840.P11802573148131771096.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A121840.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A121858.P4793984350226281940

`3^A006093(n+1)`
-/

namespace A121858.P4793984350226281940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A006093 (n + 1) : ℤ)

end

end A121858.P4793984350226281940

noncomputable section

/-- A121858: Smallest odd number having prime(n) divisors, where prime(n) is the n-th prime=A000040(n).

Offset 1, canonical program `A121858.P4793984350226281940`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A121858 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A121858.P4793984350226281940.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A121858.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A122209.P962173722163386459

`A024450((n+1)²)`
-/

namespace A122209.P962173722163386459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024450 ((n + 1) ^ 2)

end

end A122209.P962173722163386459

noncomputable section

/-- A122209: Sum of squares of the first n^2 primes = A024450[n^2].

Offset 1, canonical program `A122209.P962173722163386459`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A122209 (n : ℕ) : ℤ :=
  A122209.P962173722163386459.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A122209.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A122220.P15811966447984658883

`(A030516(n+1)-A001248(n+1))/20`
-/

namespace A122220.P15811966447984658883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030516 (n + 1) - A001248 (n + 1) : ℚ) / 20

end

end A122220.P15811966447984658883

noncomputable section

/-- A122220: a(n) = (prime(n)^6 - prime(n)^2)/20.

Offset 1, canonical program `A122220.P15811966447984658883`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A122220 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A122220.P15811966447984658883.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A122220.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A123057.P3491790178531440000

`2*A123056(n)`
-/

namespace A123057.P3491790178531440000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A123056 n

end

end A123057.P3491790178531440000

noncomputable section

/-- A123057: Values x of solutions (x, y) to the Diophantine equation (x-y)^4 - 8*x*y = 0 with x >= y.

Offset 0, canonical program `A123057.P3491790178531440000`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123057 (n : ℕ) : ℤ :=
  A123057.P3491790178531440000.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123057.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A123116.P10623391634681793158

`2*A123115(n)`
-/

namespace A123116.P10623391634681793158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A123115 n

end

end A123116.P10623391634681793158

noncomputable section

/-- A123116: Values y of solutions (x, y) to the Diophantine equation (x-y)^4 - 8*x*y = 0 with x >= y.

Offset 0, canonical program `A123116.P10623391634681793158`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123116 (n : ℕ) : ℤ :=
  A123116.P10623391634681793158.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123116.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A123128.P14620295915267660605

`n+1+A001223(n+1)`
-/

namespace A123128.P14620295915267660605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A001223 (n + 1)

end

end A123128.P14620295915267660605

noncomputable section

/-- A123128: Add n to the n-th difference between consecutive primes.

Offset 1, canonical program `A123128.P14620295915267660605`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123128 (n : ℕ) : ℤ :=
  A123128.P14620295915267660605.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123128.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A123254.P11852088643476700636

`(-1)^col(n)*A105523(row(n))*C(row(n), col(n))`
-/

namespace A123254.P11852088643476700636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ SequenceMachineLib.triCol n * A105523 (SequenceMachineLib.triRow n) * (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℤ)

end

end A123254.P11852088643476700636

noncomputable section

/-- A123254: Triangle T(n,k), 0<=k<=n, read by rows given by [ -1,1,-1,1,-1,1,-1,1,-1,1,...] DELTA [1,-1,1,-1,1,-1,1,-1,1,-1,...] where DELTA is the operator defined in A084938.

Offset 0, canonical program `A123254.P11852088643476700636`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123254 (n : ℕ) : ℤ :=
  A123254.P11852088643476700636.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123254.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A123667.P10077469845532265586

`(n+1)*A061142(n+1)`
-/

namespace A123667.P10077469845532265586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A061142 (n + 1)

end

end A123667.P10077469845532265586

noncomputable section

/-- A123667: a(n) = n * 2^bigomega(n).

Offset 1, canonical program `A123667.P10077469845532265586`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123667 (n : ℕ) : ℤ :=
  A123667.P10077469845532265586.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123667.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A123899.P16570814073594301494

`(n+1)!/(A093101(n)*A093101(n+1))`
-/

namespace A123899.P16570814073594301494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / (A093101 n * A093101 (n + 1) : ℚ)

end

end A123899.P16570814073594301494

noncomputable section

/-- A123899: a(n) = (n+1)!/(d(n)*d(n+1)) where d(n) = cancellation factor in reducing Sum_{k=0...n} 1/k! to lowest terms.

Offset 0, canonical program `A123899.P16570814073594301494`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123899 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A123899.P16570814073594301494.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123899.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A123900.P8261275927121685626

`(n+3)!/(A093101(n)*A093101(n+1)*A093101(n+2))`
-/

namespace A123900.P8261275927121685626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 3) : ℚ) / (A093101 n * A093101 (n + 1) * A093101 (n + 2) : ℚ)

end

end A123900.P8261275927121685626

noncomputable section

/-- A123900: a(n) = (n+3)!/(d(n)*d(n+1)*d(n+2)) where d(n) = cancellation factor in reducing Sum_{k=0...n} 1/k! to lowest terms.

Offset 0, canonical program `A123900.P8261275927121685626`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123900 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A123900.P8261275927121685626.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123900.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A123907.P8393408210616074745

`A034953(n+1)-A011756(n+1)`
-/

namespace A123907.P8393408210616074745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034953 (n + 1) - A011756 (n + 1)

end

end A123907.P8393408210616074745

noncomputable section

/-- A123907: a(n) = T(p(n)) - p(T(n)) = Commutator[triangular numbers, primes] at n.

Offset 1, canonical program `A123907.P8393408210616074745`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123907 (n : ℕ) : ℤ :=
  A123907.P8393408210616074745.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123907.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A123922.P8101883956895217603

`A047749(n)*A047749(n+1)`
-/

namespace A123922.P8101883956895217603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047749 n * A047749 (n + 1)

end

end A123922.P8101883956895217603

noncomputable section

/-- A123922: Number of 2143-avoiding Dumont paths of the 2nd kind of length 2n.

Offset 0, canonical program `A123922.P8101883956895217603`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123922 (n : ℕ) : ℤ :=
  A123922.P8101883956895217603.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123922.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A124103.P10131583749077331723

`A090683(C(2*n+1, 2)+n)`
-/

namespace A124103.P10131583749077331723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090683 (Nat.choose (2 * n + 1) 2 + n)

end

end A124103.P10131583749077331723

noncomputable section

/-- A124103: a(n) = C(2*n,n) * Stirling2(2*n,n).

Offset 0, canonical program `A124103.P10131583749077331723`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A124103 (n : ℕ) : ℤ :=
  A124103.P10131583749077331723.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A124103.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A124508.P2921836237820937167

`A061142(n+1)*A074816(n+1)`
-/

namespace A124508.P2921836237820937167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) * A074816 (n + 1)

end

end A124508.P2921836237820937167

noncomputable section

/-- A124508: a(n) = 2^BigO(n) * 3^omega(n), where BigO = A001222 and omega = A001221, the numbers of prime factors of n with and without repetitions.

Offset 1, canonical program `A124508.P2921836237820937167`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A124508 (n : ℕ) : ℤ :=
  A124508.P2921836237820937167.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A124508.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A124781.P10088639858972442460

`gcd(A093101(n), A093101(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A124781.P10088639858972442460
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A093101 n) (A093101 (n + 2))

end

end A124781.P10088639858972442460

noncomputable section

/-- A124781: a(n) = gcd(A093101(n), A093101(n+2)) where A093101(n) = gcd(n!, A(n)) and A(n) = A000522(n) = Sum_{k=0..n} n!/k!.

Offset 0, canonical program `A124781.P10088639858972442460`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A124781 (n : ℕ) : ℤ :=
  (A124781.P10088639858972442460.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A124781.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A124782.P208028333149663752

`(n+3)/A124780(n)`
-/

namespace A124782.P208028333149663752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / (A124780 n : ℚ)

end

end A124782.P208028333149663752

noncomputable section

/-- A124782: a(n) = (n+3)/gcd(A(n), A(n+2)) where A(n) = A000522(n) = Sum_{k=0..n} n!/k!.

Offset 0, canonical program `A124782.P208028333149663752`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A124782 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A124782.P208028333149663752.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A124782.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A125137.P4810731587468724038

`A051674(n+1)+1`
-/

namespace A125137.P4810731587468724038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051674 (n + 1) + 1

end

end A125137.P4810731587468724038

noncomputable section

/-- A125137: a(n) = p^p + 1, where p = prime(n).

Offset 1, canonical program `A125137.P4810731587468724038`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A125137 (n : ℕ) : ℤ :=
  A125137.P4810731587468724038.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A125137.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A125652.P12154372188380910291

`sqrt(A125650(A125651(n+1)))`
-/

namespace A125652.P12154372188380910291
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A125650 (A125651 (n + 1)).toNat : ℝ)

end

end A125652.P12154372188380910291

noncomputable section

/-- A125652: Numbers m such that m^2=A125650(k) for some k (belonging A125651).

Offset 1, canonical program `A125652.P12154372188380910291`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A125652 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A125652.P12154372188380910291.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A125652.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A125824.P17644202284966607848

`3^A089792(n)`
-/

namespace A125824.P17644202284966607848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A089792 n : ℤ)

end

end A125824.P17644202284966607848

noncomputable section

/-- A125824: Denominator of n!/3^n.

Offset 0, canonical program `A125824.P17644202284966607848`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A125824 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A125824.P17644202284966607848.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A125824.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A126966.P12794021674090702556

`A028329(n)-A082590(n)`
-/

namespace A126966.P12794021674090702556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028329 n - A082590 n

end

end A126966.P12794021674090702556

noncomputable section

/-- A126966: Expansion of sqrt(1 - 4*x)/(1 - 2*x).

Offset 0, canonical program `A126966.P12794021674090702556`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A126966 (n : ℕ) : ℤ :=
  A126966.P12794021674090702556.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A126966.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A126983.P7461270347805362717

`(-1)^n*A064310(n)`
-/

namespace A126983.P7461270347805362717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A064310 n

end

end A126983.P7461270347805362717

noncomputable section

/-- A126983: Expansion of 1/(1+x*c(x)), c(x) the g.f. of Catalan numbers A000108.

Offset 0, canonical program `A126983.P7461270347805362717`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A126983 (n : ℕ) : ℤ :=
  A126983.P7461270347805362717.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A126983.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A126988.P10495976212542895606

`A010766(C(row(n)+1, 2)+col(n)+1)*A051731(C(row(n)+1, 2)+col(n)+1)`
-/

namespace A126988.P10495976212542895606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n + 1) * A051731 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n + 1)

end

end A126988.P10495976212542895606

noncomputable section

/-- A126988: Triangle read by rows: T(n,k) = n/k if k is a divisor of n; T(n,k) = 0 if k is not a divisor of n (1 <= k <= n).

Offset 1, canonical program `A126988.P10495976212542895606`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A126988 (n : ℕ) : ℤ :=
  A126988.P10495976212542895606.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A126988.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A127446.P16813041719196769736

`(row(n)+1)*A051731(C(row(n)+1, 2)+col(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A127446.P16813041719196769736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n + 1 : ℤ) * A051731 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n + 1)

end

end A127446.P16813041719196769736

noncomputable section

/-- A127446: Triangle T(n,k) = n*A051731(n,k) read by rows.

Offset 1, canonical program `A127446.P16813041719196769736`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127446 (n : ℕ) : ℤ :=
  A127446.P16813041719196769736.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127446.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A127570.P6714932124384465757

`A051731(C(row(n)+1, 2)+col(n)+1)*A000203(col(n)+1)`
-/

namespace A127570.P6714932124384465757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + (SequenceMachineLib.triCol n + 1)) * A000203 (SequenceMachineLib.triCol n + 1)

end

end A127570.P6714932124384465757

noncomputable section

/-- A127570: Triangle T(n,k) = sigma(k) if k|n, otherwise T(n,k)=0; 1 <= k <= n.

Offset 1, canonical program `A127570.P6714932124384465757`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127570 (n : ℕ) : ℤ :=
  A127570.P6714932124384465757.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127570.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A127683.P15290853899578019474

`1/2*(A113788(n+1)-∑{d}[n+1, A008683((n+1)/#)*A127682(#)])`
-/

namespace A127683.P15290853899578019474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * ((A113788 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A127682 d : ℤ) : ℚ)

end

end A127683.P15290853899578019474

noncomputable section

/-- A127683: Number of non-isomorphic (i.e., defined up to a rotation and a reflection) maximal independent sets of the n-cycle graph having 2n isomorphic representatives.

Offset 1, canonical program `A127683.P15290853899578019474`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127683 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A127683.P15290853899578019474.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127683.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A127687.P4625079725909003427

`∑{d}[n+1, A113788(#)]`
-/

namespace A127687.P4625079725909003427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A113788 d

end

end A127687.P4625079725909003427

noncomputable section

/-- A127687: Number of unlabeled maximal independent sets in the n-cycle graph.

Offset 1, canonical program `A127687.P4625079725909003427`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127687 (n : ℕ) : ℤ :=
  A127687.P4625079725909003427.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127687.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A127719.P13941545238741058609

`A000196(A024450(n+1))`
-/

namespace A127719.P13941545238741058609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A024450 (n + 1)).toNat

end

end A127719.P13941545238741058609

noncomputable section

/-- A127719: Floor of square root of sum of squares of n consecutive primes.

Offset 1, canonical program `A127719.P13941545238741058609`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127719 (n : ℕ) : ℤ :=
  A127719.P13941545238741058609.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127719.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A127720.P7407208501453972689

`A000196(A024450(n+2)-4)`
-/

namespace A127720.P7407208501453972689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A024450 (n + 2) - 4).toNat

end

end A127720.P7407208501453972689

noncomputable section

/-- A127720: Floor of square root of sum of squares of n odd consecutive primes.

Offset 1, canonical program `A127720.P7407208501453972689`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127720 (n : ℕ) : ℤ :=
  A127720.P7407208501453972689.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127720.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A127741.P12199676706950505178

`(n+1)*A005493(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A127741.P12199676706950505178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A005493 n

end

end A127741.P12199676706950505178

noncomputable section

/-- A127741: a(n) = (n+1) * A005493(n).

Offset 0, canonical program `A127741.P12199676706950505178`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127741 (n : ℕ) : ℤ :=
  A127741.P12199676706950505178.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127741.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A127920.P1899935215268348754

`A127918(n+1)/3`
-/

namespace A127920.P1899935215268348754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127918 (n + 1) : ℚ) / 3

end

end A127920.P1899935215268348754

noncomputable section

/-- A127920: 1/6 of product of three numbers: n-th prime, previous and following number.

Offset 1, canonical program `A127920.P1899935215268348754`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127920 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A127920.P1899935215268348754.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127920.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A128179.P5850376553039655428

`(1-(-1)^A004736(n+1))*A002260(n+1)/2`
-/

namespace A128179.P5850376553039655428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (-1 : ℚ) ^ (A004736 (n + 1) : ℤ)) * (A002260 (n + 1) : ℚ) / 2

end

end A128179.P5850376553039655428

noncomputable section

/-- A128179: A097807 * A002260.

Offset 1, canonical program `A128179.P5850376553039655428`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128179 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A128179.P5850376553039655428.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128179.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A128251.P3815899443712150694

`((n+2)^4-1)/A008835((n+2)^4-1)`
-/

namespace A128251.P3815899443712150694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 2) ^ 4 : ℤ) - 1 : ℚ) / (A008835 ((n + 2) ^ 4 - 1) : ℚ)

end

end A128251.P3815899443712150694

noncomputable section

/-- A128251: n^4 - 1 divided by its largest fourth power divisor.

Offset 2, canonical program `A128251.P3815899443712150694`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128251 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A128251.P3815899443712150694.a (n - 2))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128251.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A128589.P9189910774048381523

`A000045(col(n)+1)*A051731(C(row(n)+1, 2)+col(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A128589.P9189910774048381523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.triCol n + 1) * A051731 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + (SequenceMachineLib.triCol n + 1))

end

end A128589.P9189910774048381523

noncomputable section

/-- A128589: Triangle read by rows: T(n,k) = Fibonacci(k) * A051731(n,k).

Offset 1, canonical program `A128589.P9189910774048381523`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128589 (n : ℕ) : ℤ :=
  A128589.P9189910774048381523.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128589.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A128614.P4000369767337592701

`(n+2)!*A005043(n+1)`
-/

namespace A128614.P4000369767337592701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 2) : ℤ) * A005043 (n + 1)

end

end A128614.P4000369767337592701

noncomputable section

/-- A128614: Number of labeled plane trees with n edges in which no vertex has outdegree one.

Offset 1, canonical program `A128614.P4000369767337592701`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128614 (n : ℕ) : ℤ :=
  A128614.P4000369767337592701.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128614.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A128650.P16731929856799845103

`4*A001791(n)`
-/

namespace A128650.P16731929856799845103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A001791 n

end

end A128650.P16731929856799845103

noncomputable section

/-- A128650: Number of polygons on n vertices with exactly three faces.

Offset 2, canonical program `A128650.P16731929856799845103`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128650 (n : ℕ) : ℤ :=
  A128650.P16731929856799845103.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128650.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A129184.P10440994507416109383

`A010054(n+2)`
-/

namespace A129184.P10440994507416109383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 2)

end

end A129184.P10440994507416109383

noncomputable section

/-- A129184: Shift operator, right.

Offset 1, canonical program `A129184.P10440994507416109383`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A129184 (n : ℕ) : ℤ :=
  A129184.P10440994507416109383.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A129184.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A129202.P3619037989143956245

`A026741(n+1)*A051176(n+1)`
-/

namespace A129202.P3619037989143956245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (n + 1) * A051176 (n + 1)

end

end A129202.P3619037989143956245

noncomputable section

/-- A129202: Denominator of 3*(3+(-1)^n) / (n+1)^2.

Offset 0, canonical program `A129202.P3619037989143956245`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A129202 (n : ℕ) : ℤ :=
  A129202.P3619037989143956245.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A129202.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A129588.P12646106946499544468

`16*A008438(n)`
-/

namespace A129588.P12646106946499544468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A008438 n

end

end A129588.P12646106946499544468

noncomputable section

/-- A129588: Expansion of q^-1 * theta_2(q)^4 in powers of q^2.

Offset 0, canonical program `A129588.P12646106946499544468`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A129588 (n : ℕ) : ℤ :=
  A129588.P12646106946499544468.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A129588.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A129705.P9060228378975808743

`A000071(row(n)+2)-col(n)*(col(n)+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A129705.P9060228378975808743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000071 (SequenceMachineLib.triRow n + 2) : ℚ) - (SequenceMachineLib.triCol n * (SequenceMachineLib.triCol n + 1) : ℚ) / 2

end

end A129705.P9060228378975808743

noncomputable section

/-- A129705: Triangle T(n,m) = A000071(n+2)-m*(m+1)/2 read by rows.

Offset 0, canonical program `A129705.P9060228378975808743`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A129705 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A129705.P9060228378975808743.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A129705.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A130030.P2353956921831053253

`∑{d}[n+1, A023900((n+1)/#)*A000040(#)]`
-/

namespace A130030.P2353956921831053253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A000040 d

end

end A130030.P2353956921831053253

noncomputable section

/-- A130030: a(n) = Sum_{d|n} (-1)^omega(n/d) * phi(rad(n/d)) * prime(d).

Offset 1, canonical program `A130030.P2353956921831053253`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A130030 (n : ℕ) : ℤ :=
  A130030.P2353956921831053253.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A130030.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A130054.P15772407516218212136

`∑{d}[n+1, A023900((n+1)/#)]`
-/

namespace A130054.P15772407516218212136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A130054.P15772407516218212136

noncomputable section

/-- A130054: Inverse Moebius transform of A023900.

Offset 1, canonical program `A130054.P15772407516218212136`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A130054 (n : ℕ) : ℤ :=
  A130054.P15772407516218212136.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A130054.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A130103.P14855528586207028289

`A130102(n+1)/2`
-/

namespace A130103.P14855528586207028289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130102 (n + 1) : ℚ) / 2

end

end A130103.P14855528586207028289

noncomputable section

/-- A130103: Expansion of e.g.f. e^(2x)-(1+x)*e^x+x.

Offset 0, canonical program `A130103.P14855528586207028289`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A130103 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A130103.P14855528586207028289.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A130103.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A130878.P6854840787225791751

`∑{d}[n+1, A100107(#)]`
-/

namespace A130878.P6854840787225791751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A100107 d

end

end A130878.P6854840787225791751

noncomputable section

/-- A130878: Inverse Moebius transform of A100107.

Offset 1, canonical program `A130878.P6854840787225791751`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A130878 (n : ℕ) : ℤ :=
  A130878.P6854840787225791751.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A130878.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A131108.P2768939818177223813

`2*A007318(C(row(n)+1, 2)+col(n))-A097806(C(row(n)+1, 2)+col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A131108.P2768939818177223813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n) - A097806 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n)

end

end A131108.P2768939818177223813

noncomputable section

/-- A131108: T(n,k) = 2*A007318(n,k) - A097806(n,k).

Offset 0, canonical program `A131108.P2768939818177223813`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131108 (n : ℕ) : ℤ :=
  A131108.P2768939818177223813.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131108.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A131590.P3790434165472296789

`A024450(2^n)`
-/

namespace A131590.P3790434165472296789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024450 (2 ^ n)

end

end A131590.P3790434165472296789

noncomputable section

/-- A131590: Sum of the squares of the first 2^n primes.

Offset 0, canonical program `A131590.P3790434165472296789`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131590 (n : ℕ) : ℤ :=
  A131590.P3790434165472296789.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131590.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A131591.P7378338396436422358

`A024450(3^n)`
-/

namespace A131591.P7378338396436422358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024450 (3 ^ n)

end

end A131591.P7378338396436422358

noncomputable section

/-- A131591: Sum of the squares of the first 3^n primes.

Offset 0, canonical program `A131591.P7378338396436422358`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131591 (n : ℕ) : ℤ :=
  A131591.P7378338396436422358.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131591.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A131592.P8863503537066484247

`A024450(A000312(n))`
-/

namespace A131592.P8863503537066484247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024450 (A000312 n).toNat

end

end A131592.P8863503537066484247

noncomputable section

/-- A131592: Sum of the squares of the first n^n primes.

Offset 0, canonical program `A131592.P8863503537066484247`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131592 (n : ℕ) : ℤ :=
  A131592.P8863503537066484247.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131592.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A131668.P2464046413389403191

`A051885(2*n+1)`
-/

namespace A131668.P2464046413389403191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (2 * n + 1)

end

end A131668.P2464046413389403191

noncomputable section

/-- A131668: Smallest number whose sum of digits is 2n+1.

Offset 0, canonical program `A131668.P2464046413389403191`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131668 (n : ℕ) : ℤ :=
  A131668.P2464046413389403191.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131668.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A131762.P2142285092514220910

`32-A000120(n)`
-/

namespace A131762.P2142285092514220910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  32 - A000120 n

end

end A131762.P2142285092514220910

noncomputable section

/-- A131762: Number of 1s in the 1's complement of the 32-bit binary representation of n.

Offset 0, canonical program `A131762.P2142285092514220910`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131762 (n : ℕ) : ℤ :=
  A131762.P2142285092514220910.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131762.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A133062.P15933548885244344016

`5*A050997(n+1)-3*A030078(n+1)+2*A001248(n+1)`
-/

namespace A133062.P15933548885244344016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A050997 (n + 1) - 3 * A030078 (n + 1) + 2 * A001248 (n + 1)

end

end A133062.P15933548885244344016

noncomputable section

/-- A133062: a(n) = 5*p^5 - 3*p^3 + 2*p^2 with p = prime(n).

Offset 1, canonical program `A133062.P15933548885244344016`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133062 (n : ℕ) : ℤ :=
  A133062.P15933548885244344016.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133062.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A133138.P2871869515894505064

`A007318(C(row(n)+1, 2)+col(n))+A097806(C(row(n)+1, 2)+col(n))`
-/

namespace A133138.P2871869515894505064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n) + A097806 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n)

end

end A133138.P2871869515894505064

noncomputable section

/-- A133138: Triangle T(n,k) of the coefficients of the polynomials Q(n,x)=(1+x)[(1+x)^(n-1)+x^(n-1)], Q(0,x)=2.

Offset 0, canonical program `A133138.P2871869515894505064`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133138 (n : ℕ) : ℤ :=
  A133138.P2871869515894505064.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133138.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A133296.P4224983109469996391

`A051885(2*n)`
-/

namespace A133296.P4224983109469996391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (2 * n)

end

end A133296.P4224983109469996391

noncomputable section

/-- A133296: Smallest number whose sum of digits is 2n.

Offset 0, canonical program `A133296.P4224983109469996391`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133296 (n : ℕ) : ℤ :=
  A133296.P4224983109469996391.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133296.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A133466.P7898642945469282061

`4*A005117(n+1)`
-/

namespace A133466.P7898642945469282061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A005117 (n + 1)

end

end A133466.P7898642945469282061

noncomputable section

/-- A133466: Positive integers k for which there is exactly one integer i in {1,2,3,...,k-1} such that i*k is a square.

Offset 1, canonical program `A133466.P7898642945469282061`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133466 (n : ℕ) : ℤ :=
  A133466.P7898642945469282061.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133466.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A133529.P6726527200779118077

`A069484(n+1)+A001248(n+3)`
-/

namespace A133529.P6726527200779118077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069484 (n + 1) + A001248 (n + 3)

end

end A133529.P6726527200779118077

noncomputable section

/-- A133529: Sum of squares of three consecutive primes.

Offset 1, canonical program `A133529.P6726527200779118077`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133529 (n : ℕ) : ℤ :=
  A133529.P6726527200779118077.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133529.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A133534.P8927698302002784896

`A030078(n+1)+A030078(n+2)`
-/

namespace A133534.P8927698302002784896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1) + A030078 (n + 2)

end

end A133534.P8927698302002784896

noncomputable section

/-- A133534: Sum of third powers of two consecutive primes.

Offset 1, canonical program `A133534.P8927698302002784896`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133534 (n : ℕ) : ℤ :=
  A133534.P8927698302002784896.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133534.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A133535.P17160611315986516138

`A030514(n+1)+A030514(n+2)`
-/

namespace A133535.P17160611315986516138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030514 (n + 1) + A030514 (n + 2)

end

end A133535.P17160611315986516138

noncomputable section

/-- A133535: Sum of fourth powers of two consecutive primes.

Offset 1, canonical program `A133535.P17160611315986516138`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133535 (n : ℕ) : ℤ :=
  A133535.P17160611315986516138.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133535.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A133536.P9524943263663054428

`A050997(n+1)+A050997(n+2)`
-/

namespace A133536.P9524943263663054428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050997 (n + 1) + A050997 (n + 2)

end

end A133536.P9524943263663054428

noncomputable section

/-- A133536: Sum of fifth powers of two consecutive primes.

Offset 1, canonical program `A133536.P9524943263663054428`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133536 (n : ℕ) : ℤ :=
  A133536.P9524943263663054428.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133536.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A133537.P14407544762296117018

`A030516(n+1)+A030516(n+2)`
-/

namespace A133537.P14407544762296117018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030516 (n + 1) + A030516 (n + 2)

end

end A133537.P14407544762296117018

noncomputable section

/-- A133537: Sum of sixth powers of two consecutive primes.

Offset 1, canonical program `A133537.P14407544762296117018`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133537 (n : ℕ) : ℤ :=
  A133537.P14407544762296117018.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133537.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A133538.P15090665572470538733

`A092759(n+1)+A092759(n+2)`
-/

namespace A133538.P15090665572470538733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092759 (n + 1) + A092759 (n + 2)

end

end A133538.P15090665572470538733

noncomputable section

/-- A133538: Sum of seventh powers of two consecutive primes.

Offset 1, canonical program `A133538.P15090665572470538733`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133538 (n : ℕ) : ℤ :=
  A133538.P15090665572470538733.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133538.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A133547.P11212506623590984264

`A024450(n+2)-4`
-/

namespace A133547.P11212506623590984264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024450 (n + 2) - 4

end

end A133547.P11212506623590984264

noncomputable section

/-- A133547: a(n) = sum of squares of first n odd primes.

Offset 1, canonical program `A133547.P11212506623590984264`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133547 (n : ℕ) : ℤ :=
  A133547.P11212506623590984264.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133547.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A133699.P12480715831549394010

`A051731(C(row(n)+1, 2)+col(n)+1)*A001227(col(n)+1)`
-/

namespace A133699.P12480715831549394010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + (SequenceMachineLib.triCol n + 1)) * A001227 (SequenceMachineLib.triCol n + 1)

end

end A133699.P12480715831549394010

noncomputable section

/-- A133699: Triangle read by rows: T(n, k) = A001227(k) if k divides n, T(n, k) = 0 otherwise.

Offset 1, canonical program `A133699.P12480715831549394010`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133699 (n : ℕ) : ℤ :=
  A133699.P12480715831549394010.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133699.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A133910.P7626543162645923989

`A064446(n+1)/(n+1)`
-/

namespace A133910.P7626543162645923989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064446 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A133910.P7626543162645923989

noncomputable section

/-- A133910: Period numbers of A133900 divided by n^2.

Offset 1, canonical program `A133910.P7626543162645923989`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133910 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A133910.P7626543162645923989.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133910.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A134508.P12291140053637182191

`A000071(n+3)+A029907(n+1)-(n+1)`
-/

namespace A134508.P12291140053637182191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 3) + A029907 (n + 1) - (n + 1 : ℤ)

end

end A134508.P12291140053637182191

noncomputable section

/-- A134508: Row sums of triangle A134507.

Offset 1, canonical program `A134508.P12291140053637182191`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134508 (n : ℕ) : ℤ :=
  A134508.P12291140053637182191.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134508.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A134575.P5821943543664800718

`(col(n)+1)²*A051731(C(row(n)+1, 2)+col(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A134575.P5821943543664800718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triCol n + 1) ^ 2 : ℤ) * A051731 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + (SequenceMachineLib.triCol n + 1))

end

end A134575.P5821943543664800718

noncomputable section

/-- A134575: Triangle read by rows: T(n,k) = k^2*A051731(n,k).

Offset 1, canonical program `A134575.P5821943543664800718`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134575 (n : ℕ) : ℤ :=
  A134575.P5821943543664800718.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134575.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A134576.P15449930043029515641

`(row(n)+1)²*A051731(C(row(n)+1, 2)+col(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A134576.P15449930043029515641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n + 1) ^ 2 : ℤ) * A051731 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n + 1)

end

end A134576.P15449930043029515641

noncomputable section

/-- A134576: Triangle read by rows: T(n,k) = n^2*A051731(n,k).

Offset 1, canonical program `A134576.P15449930043029515641`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134576 (n : ℕ) : ℤ :=
  A134576.P15449930043029515641.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134576.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A134591.P13784663667261059065

`A014689(n+1)+A000040(n+1)`
-/

namespace A134591.P13784663667261059065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (n + 1) + A000040 (n + 1)

end

end A134591.P13784663667261059065

noncomputable section

/-- A134591: a(n) is n reflected in n-th prime: distance between a(n) and prime(n) equals distance between prime(n) and n.

Offset 1, canonical program `A134591.P13784663667261059065`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134591 (n : ℕ) : ℤ :=
  A134591.P13784663667261059065.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134591.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A135171.P10397032383344473501

`A057901(n+1)-A034785(n+1)`
-/

namespace A135171.P10397032383344473501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057901 (n + 1) - A034785 (n + 1)

end

end A135171.P10397032383344473501

noncomputable section

/-- A135171: 3^p - 2^p, where p = prime(n).

Offset 1, canonical program `A135171.P10397032383344473501`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135171 (n : ℕ) : ℤ :=
  A135171.P10397032383344473501.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135171.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A135173.P4341705398435944029

`A057902(n+1)-A057901(n+1)-A034785(n+1)`
-/

namespace A135173.P4341705398435944029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057902 (n + 1) - A057901 (n + 1) - A034785 (n + 1)

end

end A135173.P4341705398435944029

noncomputable section

/-- A135173: a(n) = 5^p - 3^p - 2^p, where p = prime(n).

Offset 1, canonical program `A135173.P4341705398435944029`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135173 (n : ℕ) : ℤ :=
  A135173.P4341705398435944029.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135173.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A135177.P13258641397500885273

`A030078(n+1)-A001248(n+1)`
-/

namespace A135177.P13258641397500885273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1) - A001248 (n + 1)

end

end A135177.P13258641397500885273

noncomputable section

/-- A135177: a(n) = p^2*(p-1), where p = prime(n).

Offset 1, canonical program `A135177.P13258641397500885273`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135177 (n : ℕ) : ℤ :=
  A135177.P13258641397500885273.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135177.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A135179.P4376560334268819902

`A050997(n+1)-A030078(n+1)-A001248(n+1)`
-/

namespace A135179.P4376560334268819902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050997 (n + 1) - A030078 (n + 1) - A001248 (n + 1)

end

end A135179.P4376560334268819902

noncomputable section

/-- A135179: p^5 - p^3 - p^2. Exponents are the prime numbers in decreasing order and p is the n-th prime.

Offset 1, canonical program `A135179.P4376560334268819902`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135179 (n : ℕ) : ℤ :=
  A135179.P4376560334268819902.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135179.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A135182.P14277112270970235389

`A001248(n+1)+A030078(n+1)+A050997(n+1)`
-/

namespace A135182.P14277112270970235389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) + A030078 (n + 1) + A050997 (n + 1)

end

end A135182.P14277112270970235389

noncomputable section

/-- A135182: p^5 + p^3 + p^2. Exponents are prime numbers and p = prime(n).

Offset 1, canonical program `A135182.P14277112270970235389`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135182 (n : ℕ) : ℤ :=
  A135182.P14277112270970235389.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135182.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A135249.P6172404458566147260

`1+A070826(n+1)`
-/

namespace A135249.P6172404458566147260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A070826 (n + 1)

end

end A135249.P6172404458566147260

noncomputable section

/-- A135249: a(n) = number of bits in the binary expansion of A046967(n).

Offset 1, canonical program `A135249.P6172404458566147260`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135249 (n : ℕ) : ℤ :=
  A135249.P6172404458566147260.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135249.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A135389.P8667978144181006220

`A001791(n+1)*A000984(n+1)`
-/

namespace A135389.P8667978144181006220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 (n + 1) * A000984 (n + 1)

end

end A135389.P8667978144181006220

noncomputable section

/-- A135389: Number of walks of length 2*n+2 from origin to (1,1) in a square lattice.

Offset 0, canonical program `A135389.P8667978144181006220`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135389 (n : ℕ) : ℤ :=
  A135389.P8667978144181006220.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135389.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A135482.P9781212755023838495

`A076793(n)/4`
-/

namespace A135482.P9781212755023838495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076793 n : ℚ) / 4

end

end A135482.P9781212755023838495

noncomputable section

/-- A135482: a(n) = (1/4)*Sum_{j=1..n} 2^prime(j).

Offset 0, canonical program `A135482.P9781212755023838495`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135482 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A135482.P9781212755023838495.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135482.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A135540.P6682804189538680421

`2^(A000523(n+1)-A000120(n+1)+2)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A135540.P6682804189538680421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000523 (n + 1) - A000120 (n + 1) + 2 : ℤ) - 1

end

end A135540.P6682804189538680421

noncomputable section

/-- A135540: a(n) = 2^(A000523(n) - A000120(n) + 2) - 1.

Offset 1, canonical program `A135540.P6682804189538680421`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135540 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A135540.P6682804189538680421.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135540.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A135568.P15746098377430896157

`floor(A002110(n)/A000142(n))`
-/

namespace A135568.P15746098377430896157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002110 n : ℚ) / (A000142 n : ℚ)⌋

end

end A135568.P15746098377430896157

noncomputable section

/-- A135568: a(n) = floor( Product_{i=1..n} prime(i)/i ).

Offset 0, canonical program `A135568.P15746098377430896157`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135568 (n : ℕ) : ℤ :=
  A135568.P15746098377430896157.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135568.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A135569.P11530090348024496574

`A000120(n)*2^n`
-/

namespace A135569.P11530090348024496574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n * (2 ^ n : ℤ)

end

end A135569.P11530090348024496574

noncomputable section

/-- A135569: a(n) = S2(n)*2^n; where S2(n) is digit sum of n, n in binary notation.

Offset 0, canonical program `A135569.P11530090348024496574`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135569 (n : ℕ) : ℤ :=
  A135569.P11530090348024496574.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135569.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A135941.P6187496771370470552

`floor((n+1)/A000120(n+1))`
-/

namespace A135941.P6187496771370470552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / (A000120 (n + 1) : ℚ)⌋

end

end A135941.P6187496771370470552

noncomputable section

/-- A135941: a(n) = floor(n/S2(n)), where S2(n) is the binary weight of n.

Offset 1, canonical program `A135941.P6187496771370470552`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135941 (n : ℕ) : ℤ :=
  A135941.P6187496771370470552.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135941.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A136035.P14793147470030511558

`A001348(n+1)%A008864(n+1)`
-/

namespace A136035.P14793147470030511558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001348 (n + 1)) (A008864 (n + 1))

end

end A136035.P14793147470030511558

noncomputable section

/-- A136035: Remainder when dividing 2^q - 1 by q + 1 where q is the n-th prime.

Offset 1, canonical program `A136035.P14793147470030511558`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A136035 (n : ℕ) : ℤ :=
  A136035.P14793147470030511558.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A136035.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A136046.P10114134816191696036

`∑{#}[2*n, (-1)^#*C(2*n, #)*A005558(#)*A001405(2*n-#)]`
-/

namespace A136046.P10114134816191696036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1) ^ k * (Nat.choose (2 * n) k : ℤ) * A005558 k * A001405 (2 * n - k)

end

end A136046.P10114134816191696036

noncomputable section

/-- A136046: Bisection of A138543.

Offset 0, canonical program `A136046.P10114134816191696036`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A136046 (n : ℕ) : ℤ :=
  A136046.P10114134816191696036.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A136046.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A136107.P13068712617901272684

`A001227(n+1)-A010054(n+1)`
-/

namespace A136107.P13068712617901272684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) - A010054 (n + 1)

end

end A136107.P13068712617901272684

noncomputable section

/-- A136107: Number of representations of n as the difference of two positive triangular numbers.

Offset 1, canonical program `A136107.P13068712617901272684`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A136107 (n : ℕ) : ℤ :=
  A136107.P13068712617901272684.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A136107.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A136363.P13840495246310185184

`A072692(n+1)-10^(n+1)*(10^(n+1)+3)/2+1`
-/

namespace A136363.P13840495246310185184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072692 (n + 1) : ℚ) - (10 ^ (n + 1) * (10 ^ (n + 1) + 3) : ℚ) / 2 + 1

end

end A136363.P13840495246310185184

noncomputable section

/-- A136363: a(n) = Sum_{ composite k, 1 <= k <= 10^n} (Sum of divisors d of k with 1 < d < k).

Offset 1, canonical program `A136363.P13840495246310185184`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A136363 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A136363.P13840495246310185184.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A136363.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A136486.P13738774024279800787

`4*A136484(n)`
-/

namespace A136486.P13738774024279800787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A136484 n

end

end A136486.P13738774024279800787

noncomputable section

/-- A136486: Number of unit square lattice cells enclosed by origin centered circle of diameter 2n+1.

Offset 0, canonical program `A136486.P13738774024279800787`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A136486 (n : ℕ) : ℤ :=
  A136486.P13738774024279800787.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A136486.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A136496.P805941965056846939

`A136495(n+1)+A005374(n)+n+1`
-/

namespace A136496.P805941965056846939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136495 (n + 1) + A005374 n + (n + 1 : ℤ)

end

end A136496.P805941965056846939

noncomputable section

/-- A136496: Solution of the complementary equation b(n)=a(a(n))+n; this is sequence b; sequence a is A136495.

Offset 1, canonical program `A136496.P805941965056846939`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A136496 (n : ℕ) : ℤ :=
  A136496.P805941965056846939.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A136496.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A136515.P2899484087255744926

`2*A136484(n)`
-/

namespace A136515.P2899484087255744926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A136484 n

end

end A136515.P2899484087255744926

noncomputable section

/-- A136515: Number of unit square lattice cells inside half-plane (two adjacent quadrants) of origin centered circle of diameter 2n+1.

Offset 0, canonical program `A136515.P2899484087255744926`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A136515 (n : ℕ) : ℤ :=
  A136515.P2899484087255744926.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A136515.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A136520.P12424544848854635342

`∑{#}[n, A001263(C(n+1, 2)+#+1)*A027656(#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A136520.P12424544848854635342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A001263 (Nat.choose (n + 1) 2 + (k + 1)) * A027656 k

end

end A136520.P12424544848854635342

noncomputable section

/-- A136520: a(n) = Sum_{k=1..n} A001263(n,k) * A027656(k).

Offset 1, canonical program `A136520.P12424544848854635342`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A136520 (n : ℕ) : ℤ :=
  A136520.P12424544848854635342.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A136520.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A136792.P6391913435328609822

`2*A005493(n)-(n+1)`
-/

namespace A136792.P6391913435328609822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005493 n - (n + 1 : ℤ)

end

end A136792.P6391913435328609822

noncomputable section

/-- A136792: Row sums of triangle A136791.

Offset 0, canonical program `A136792.P6391913435328609822`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A136792 (n : ℕ) : ℤ :=
  A136792.P6391913435328609822.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A136792.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A137324.P13493334267181104569

`A048865(n+3)+A105221(n+3)`
-/

namespace A137324.P13493334267181104569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (n + 3) + A105221 (n + 3)

end

end A137324.P13493334267181104569

noncomputable section

/-- A137324: a(n) = Sum_{prime p < n} gcd(n,p).

Offset 3, canonical program `A137324.P13493334267181104569`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A137324 (n : ℕ) : ℤ :=
  A137324.P13493334267181104569.a (n - 3)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A137324.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A137389.P15135994414756883404

`A034785(n+1)+A034785(n+2)`
-/

namespace A137389.P15135994414756883404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034785 (n + 1) + A034785 (n + 2)

end

end A137389.P15135994414756883404

noncomputable section

/-- A137389: a(n) = 2^prime(n) + 2^prime(n+1).

Offset 1, canonical program `A137389.P15135994414756883404`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A137389 (n : ℕ) : ℤ :=
  A137389.P15135994414756883404.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A137389.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A137665.P154596859272878113

`A137664(n+1)/A000040(n+1)²`
-/

namespace A137665.P154596859272878113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137664 (n + 1) : ℚ) / (A000040 (n + 1) ^ 2 : ℚ)

end

end A137665.P154596859272878113

noncomputable section

/-- A137665: Quotients ((p+1)^p - 1)/p^2 for p = prime(n).

Offset 1, canonical program `A137665.P154596859272878113`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A137665 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A137665.P154596859272878113.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A137665.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A137718.P18354280375618536243

`A137717(n)/2^floor(n/2)`
-/

namespace A137718.P18354280375618536243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137717 n : ℚ) / (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A137718.P18354280375618536243

noncomputable section

/-- A137718: A scaled Hankel transform.

Offset 0, canonical program `A137718.P18354280375618536243`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A137718 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A137718.P18354280375618536243.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A137718.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A137727.P5637515941323942506

`A010879(A006094(n+1))`
-/

namespace A137727.P5637515941323942506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A006094 (n + 1)).toNat

end

end A137727.P5637515941323942506

noncomputable section

/-- A137727: Final digit of prime(n)*prime(n+1).

Offset 1, canonical program `A137727.P5637515941323942506`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A137727 (n : ℕ) : ℤ :=
  A137727.P5637515941323942506.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A137727.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A137780.P2103839345452959621

`1+2^A001223(n+1)`
-/

namespace A137780.P2103839345452959621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 + (2 : ℚ) ^ (A001223 (n + 1) : ℤ)

end

end A137780.P2103839345452959621

noncomputable section

/-- A137780: a(n) = 1 + 2^( prime(n + 1) - prime(n) ).

Offset 1, canonical program `A137780.P2103839345452959621`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A137780 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A137780.P2103839345452959621.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A137780.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A137807.P2315973697329758852

`A010879(A001248(n+1))`
-/

namespace A137807.P2315973697329758852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A001248 (n + 1)).toNat

end

end A137807.P2315973697329758852

noncomputable section

/-- A137807: Final digit of prime(n)^2.

Offset 1, canonical program `A137807.P2315973697329758852`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A137807 (n : ℕ) : ℤ :=
  A137807.P2315973697329758852.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A137807.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138331.P9701934209222227417

`(-1)^(n+1)*16*A040977(n)`
-/

namespace A138331.P9701934209222227417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 1) * 16 * A040977 n

end

end A138331.P9701934209222227417

noncomputable section

/-- A138331: a(n) = C(n+5, 5)*(n+3)*(-1)^(n+1)*16/3.

Offset 0, canonical program `A138331.P9701934209222227417`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+5, 5)*(n+3)*(-1)^(n+1)*16/3` (program `A138331.P1805238586572736106`, by `A138331.P1805238586572736106.correct`). Lean does not check the parsing of the name. -/
def A138331 (n : ℕ) : ℤ :=
  A138331.P9701934209222227417.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+5, 5)*(n+3)*(-1)^(n+1)*16/3` (program `A138331.P1805238586572736106`, by `A138331.P1805238586572736106.correct`). Lean does not check the parsing of the name. -/
def A138331.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A138403.P9837002245501069480

`A030514(n+1)-A030078(n+1)`
-/

namespace A138403.P9837002245501069480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030514 (n + 1) - A030078 (n + 1)

end

end A138403.P9837002245501069480

noncomputable section

/-- A138403: a(n) = p^3*(p-1), where p = prime(n).

Offset 1, canonical program `A138403.P9837002245501069480`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138403 (n : ℕ) : ℤ :=
  A138403.P9837002245501069480.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138403.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138407.P5183959354295253319

`A050997(n+1)-A030514(n+1)`
-/

namespace A138407.P5183959354295253319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050997 (n + 1) - A030514 (n + 1)

end

end A138407.P5183959354295253319

noncomputable section

/-- A138407: a(n) = p^4*(p-1), where p = prime(n).

Offset 1, canonical program `A138407.P5183959354295253319`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138407 (n : ℕ) : ℤ :=
  A138407.P5183959354295253319.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138407.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138417.P6610939322627036311

`A138401(n+1)/2`
-/

namespace A138417.P6610939322627036311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138401 (n + 1) : ℚ) / 2

end

end A138417.P6610939322627036311

noncomputable section

/-- A138417: a(n) = (prime(n)^4 - prime(n))/2.

Offset 1, canonical program `A138417.P6610939322627036311`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138417 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138417.P6610939322627036311.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138417.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138424.P9846473390818304069

`A138404(n+1)/2`
-/

namespace A138424.P9846473390818304069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138404 (n + 1) : ℚ) / 2

end

end A138424.P9846473390818304069

noncomputable section

/-- A138424: a(n) = (prime(n)^5 - prime(n))/2.

Offset 1, canonical program `A138424.P9846473390818304069`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138424 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138424.P9846473390818304069.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138424.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138425.P15250996574324139531

`A138404(n+1)/3`
-/

namespace A138425.P15250996574324139531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138404 (n + 1) : ℚ) / 3

end

end A138425.P15250996574324139531

noncomputable section

/-- A138425: a(n) = (prime(n)^5 - prime(n))/3.

Offset 1, canonical program `A138425.P15250996574324139531`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138425 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138425.P15250996574324139531.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138425.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138426.P573586868514180922

`A138404(n+1)/5`
-/

namespace A138426.P573586868514180922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138404 (n + 1) : ℚ) / 5

end

end A138426.P573586868514180922

noncomputable section

/-- A138426: a(n) = ((prime(n))^5-prime(n))/5.

Offset 1, canonical program `A138426.P573586868514180922`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138426 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138426.P573586868514180922.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138426.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138427.P16097215975981541627

`A138404(n+1)/6`
-/

namespace A138427.P16097215975981541627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138404 (n + 1) : ℚ) / 6

end

end A138427.P16097215975981541627

noncomputable section

/-- A138427: a(n) = (prime(n)^5 - prime(n))/6.

Offset 1, canonical program `A138427.P16097215975981541627`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138427 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138427.P16097215975981541627.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138427.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138428.P16215702972878224398

`A138404(n+1)/10`
-/

namespace A138428.P16215702972878224398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138404 (n + 1) : ℚ) / 10

end

end A138428.P16215702972878224398

noncomputable section

/-- A138428: a(n) = (prime(n)^5 - prime(n))/10.

Offset 1, canonical program `A138428.P16215702972878224398`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138428 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138428.P16215702972878224398.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138428.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138429.P2386023419108001403

`A138404(n+1)/15`
-/

namespace A138429.P2386023419108001403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138404 (n + 1) : ℚ) / 15

end

end A138429.P2386023419108001403

noncomputable section

/-- A138429: a(n) = (prime(n)^5 - prime(n))/15.

Offset 1, canonical program `A138429.P2386023419108001403`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138429 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138429.P2386023419108001403.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138429.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138431.P2547013115861901951

`A138405(n+1)/2`
-/

namespace A138431.P2547013115861901951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138405 (n + 1) : ℚ) / 2

end

end A138431.P2547013115861901951

noncomputable section

/-- A138431: a(n) = ((n-th prime)^5-(n-th prime)^2)/2.

Offset 1, canonical program `A138431.P2547013115861901951`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138431 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138431.P2547013115861901951.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138431.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138432.P6840818557510149970

`A138406(n+1)/2`
-/

namespace A138432.P6840818557510149970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138406 (n + 1) : ℚ) / 2

end

end A138432.P6840818557510149970

noncomputable section

/-- A138432: a(n) = ((n-th prime)^5-(n-th prime)^3)/2.

Offset 1, canonical program `A138432.P6840818557510149970`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138432 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138432.P6840818557510149970.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138432.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138433.P5772360468710814788

`A138406(n+1)/3`
-/

namespace A138433.P5772360468710814788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138406 (n + 1) : ℚ) / 3

end

end A138433.P5772360468710814788

noncomputable section

/-- A138433: a(n) = ((n-th prime)^5-(n-th prime)^3)/3.

Offset 1, canonical program `A138433.P5772360468710814788`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138433 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138433.P5772360468710814788.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138433.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138434.P7976038697840491430

`A138406(n+1)/4`
-/

namespace A138434.P7976038697840491430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138406 (n + 1) : ℚ) / 4

end

end A138434.P7976038697840491430

noncomputable section

/-- A138434: a(n) = ((n-th prime)^5-(n-th prime)^3)/4.

Offset 1, canonical program `A138434.P7976038697840491430`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138434 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138434.P7976038697840491430.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138434.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138435.P16662900395581282620

`A138406(n+1)/6`
-/

namespace A138435.P16662900395581282620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138406 (n + 1) : ℚ) / 6

end

end A138435.P16662900395581282620

noncomputable section

/-- A138435: a(n) = ((n-th prime)^5-(n-th prime)^3)/6.

Offset 1, canonical program `A138435.P16662900395581282620`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138435 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138435.P16662900395581282620.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138435.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138436.P8959698969068807926

`A138406(n+1)/8`
-/

namespace A138436.P8959698969068807926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138406 (n + 1) : ℚ) / 8

end

end A138436.P8959698969068807926

noncomputable section

/-- A138436: a(n) = ((n-th prime)^5-(n-th prime)^3)/8.

Offset 1, canonical program `A138436.P8959698969068807926`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138436 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138436.P8959698969068807926.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138436.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138437.P12080558741332099424

`A138406(n+1)/12`
-/

namespace A138437.P12080558741332099424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138406 (n + 1) : ℚ) / 12

end

end A138437.P12080558741332099424

noncomputable section

/-- A138437: a(n) = ((n-th prime)^5-(n-th prime)^3)/12.

Offset 1, canonical program `A138437.P12080558741332099424`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138437 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138437.P12080558741332099424.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138437.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138440.P18082488222228574981

`A138408(n+1)/2`
-/

namespace A138440.P18082488222228574981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138408 (n + 1) : ℚ) / 2

end

end A138440.P18082488222228574981

noncomputable section

/-- A138440: a(n) = ((n-th prime)^6-(n-th prime))/2.

Offset 1, canonical program `A138440.P18082488222228574981`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138440 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138440.P18082488222228574981.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138440.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138441.P11845817333899223938

`A138409(n+1)/2`
-/

namespace A138441.P11845817333899223938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138409 (n + 1) : ℚ) / 2

end

end A138441.P11845817333899223938

noncomputable section

/-- A138441: a(n) = ((n-th prime)^6-(n-th prime^2))/2.

Offset 1, canonical program `A138441.P11845817333899223938`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138441 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138441.P11845817333899223938.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138441.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138442.P6492284779242872051

`A138409(n+1)/3`
-/

namespace A138442.P6492284779242872051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138409 (n + 1) : ℚ) / 3

end

end A138442.P6492284779242872051

noncomputable section

/-- A138442: a(n) = ((n-th prime)^6-(n-th prime^2))/3.

Offset 1, canonical program `A138442.P6492284779242872051`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138442 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138442.P6492284779242872051.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138442.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138443.P2759808841860568747

`A138409(n+1)/4`
-/

namespace A138443.P2759808841860568747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138409 (n + 1) : ℚ) / 4

end

end A138443.P2759808841860568747

noncomputable section

/-- A138443: a(n) = ((n-th prime)^6-(n-th prime^2))/4.

Offset 1, canonical program `A138443.P2759808841860568747`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138443 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138443.P2759808841860568747.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138443.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138444.P17809889728788974870

`A138409(n+1)/5`
-/

namespace A138444.P17809889728788974870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138409 (n + 1) : ℚ) / 5

end

end A138444.P17809889728788974870

noncomputable section

/-- A138444: a(n) = ((n-th prime)^6-(n-th prime^2))/5.

Offset 1, canonical program `A138444.P17809889728788974870`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138444 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138444.P17809889728788974870.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138444.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138445.P4192572878039783319

`A138409(n+1)/6`
-/

namespace A138445.P4192572878039783319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138409 (n + 1) : ℚ) / 6

end

end A138445.P4192572878039783319

noncomputable section

/-- A138445: a(n) = ((n-th prime)^6-(n-th prime^2))/6.

Offset 1, canonical program `A138445.P4192572878039783319`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138445 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138445.P4192572878039783319.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138445.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138462.P1509641166466070185

`A006318(2*n)`
-/

namespace A138462.P1509641166466070185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006318 (2 * n)

end

end A138462.P1509641166466070185

noncomputable section

/-- A138462: A bisection of A006318.

Offset 0, canonical program `A138462.P1509641166466070185`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138462 (n : ℕ) : ℤ :=
  A138462.P1509641166466070185.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138462.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138463.P11537261983961229773

`A006318(2*n+1)`
-/

namespace A138463.P11537261983961229773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006318 (2 * n + 1)

end

end A138463.P11537261983961229773

noncomputable section

/-- A138463: A bisection of A006318.

Offset 0, canonical program `A138463.P11537261983961229773`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138463 (n : ℕ) : ℤ :=
  A138463.P11537261983961229773.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138463.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138552.P4734613694061573768

`(A000891(n)+A000108(n))/2`
-/

namespace A138552.P4734613694061573768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000891 n + A000108 n : ℚ) / 2

end

end A138552.P4734613694061573768

noncomputable section

/-- A138552: Returning walks of length 2n on the upper half of the square lattice, distinct under reflections about the y-axis.

Offset 0, canonical program `A138552.P4734613694061573768`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138552 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138552.P4734613694061573768.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138552.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138609.P859534551479299323

`A116966(A074147(n+1)-1)`
-/

namespace A138609.P859534551479299323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116966 (A074147 (n + 1) - 1).toNat

end

end A138609.P859534551479299323

noncomputable section

/-- A138609: List the first term from A042963, then 2 terms from A014601 (starting from 3), 3 terms from A042963, 4 terms from A014601, etc.

Offset 1, canonical program `A138609.P859534551479299323`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138609 (n : ℕ) : ℤ :=
  A138609.P859534551479299323.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138609.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138693.P2674779579294356525

`110+A001248(n+1)`
-/

namespace A138693.P2674779579294356525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  110 + A001248 (n + 1)

end

end A138693.P2674779579294356525

noncomputable section

/-- A138693: Numbers of the form 110 + p^2. (where p is a prime).

Offset 1, canonical program `A138693.P2674779579294356525`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138693 (n : ℕ) : ℤ :=
  A138693.P2674779579294356525.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138693.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A139190.P14554345620365022831

`(A139189(n+1)-1)/2`
-/

namespace A139190.P14554345620365022831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139189 (n + 1) - 1 : ℚ) / 2

end

end A139190.P14554345620365022831

noncomputable section

/-- A139190: a(n) = (prime(n)!-2)/2.

Offset 1, canonical program `A139190.P14554345620365022831`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139190 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A139190.P14554345620365022831.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139190.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A139191.P8556745552501629682

`(A139189(n+2)-2)/3`
-/

namespace A139191.P8556745552501629682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139189 (n + 2) - 2 : ℚ) / 3

end

end A139191.P8556745552501629682

noncomputable section

/-- A139191: Natural numbers of the form (prime(n)!-3)/3.

Offset 1, canonical program `A139191.P8556745552501629682`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139191 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A139191.P8556745552501629682.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139191.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A139192.P8602614665101011949

`(A139189(n+3)-3)/4`
-/

namespace A139192.P8602614665101011949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139189 (n + 3) - 3 : ℚ) / 4

end

end A139192.P8602614665101011949

noncomputable section

/-- A139192: a(n) = (prime(n)! - 4)/4.

Offset 3, canonical program `A139192.P8602614665101011949`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139192 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A139192.P8602614665101011949.a (n - 3))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139192.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A139196.P8143982788016440248

`(A039716(n+3)-8)/8`
-/

namespace A139196.P8143982788016440248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039716 (n + 3) - 8 : ℚ) / 8

end

end A139196.P8143982788016440248

noncomputable section

/-- A139196: a(n) = (prime(n)!-8)/8.

Offset 3, canonical program `A139196.P8143982788016440248`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139196 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A139196.P8143982788016440248.a (n - 3))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139196.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A139198.P1615369607652417229

`A039716(n+3)/10-1`
-/

namespace A139198.P1615369607652417229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039716 (n + 3) : ℚ) / 10 - 1

end

end A139198.P1615369607652417229

noncomputable section

/-- A139198: a(n) = prime(n)!/10 - 1.

Offset 3, canonical program `A139198.P1615369607652417229`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139198 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A139198.P1615369607652417229.a (n - 3))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139198.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A139238.P2423314639559160566

`A001348(n+2)-A001348(n+1)`
-/

namespace A139238.P2423314639559160566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001348 (n + 2) - A001348 (n + 1)

end

end A139238.P2423314639559160566

noncomputable section

/-- A139238: First differences of Mersenne numbers A001348.

Offset 1, canonical program `A139238.P2423314639559160566`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139238 (n : ℕ) : ℤ :=
  A139238.P2423314639559160566.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139238.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A139242.P14895267864890977807

`A139241(n+1)/2`
-/

namespace A139242.P14895267864890977807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139241 (n + 1) : ℚ) / 2

end

end A139242.P14895267864890977807

noncomputable section

/-- A139242: Second differences of Mersenne numbers A001348, divided by 2.

Offset 1, canonical program `A139242.P14895267864890977807`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139242 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A139242.P14895267864890977807.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139242.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A139288.P6523589594996836718

`A139286(n+1)/2`
-/

namespace A139288.P6523589594996836718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139286 (n + 1) : ℚ) / 2

end

end A139288.P6523589594996836718

noncomputable section

/-- A139288: 2^(2p - 1)/2, where p is prime.

Offset 1, canonical program `A139288.P6523589594996836718`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139288 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A139288.P6523589594996836718.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139288.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A139289.P16340206791071745644

`A139286(n+1)/2-1`
-/

namespace A139289.P16340206791071745644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139286 (n + 1) : ℚ) / 2 - 1

end

end A139289.P16340206791071745644

noncomputable section

/-- A139289: (2^(2p - 1)/2)-1, where p is prime.

Offset 1, canonical program `A139289.P16340206791071745644`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139289 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A139289.P16340206791071745644.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139289.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A139290.P17657296340908338458

`A139286(n+1)/4`
-/

namespace A139290.P17657296340908338458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139286 (n + 1) : ℚ) / 4

end

end A139290.P17657296340908338458

noncomputable section

/-- A139290: 2^(2p - 1)/4, where p is prime.

Offset 1, canonical program `A139290.P17657296340908338458`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139290 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A139290.P17657296340908338458.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139290.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A139291.P4704060389980798102

`A000225(A131426(n+1))`
-/

namespace A139291.P4704060389980798102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A131426 (n + 1)).toNat

end

end A139291.P4704060389980798102

noncomputable section

/-- A139291: a(n) = 2^(2*prime(n) - 3) - 1.

Offset 1, canonical program `A139291.P4704060389980798102`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139291 (n : ℕ) : ℤ :=
  A139291.P4704060389980798102.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139291.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A139292.P6878076174781687127

`A139286(n+1)/8`
-/

namespace A139292.P6878076174781687127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139286 (n + 1) : ℚ) / 8

end

end A139292.P6878076174781687127

noncomputable section

/-- A139292: 2^(2p - 1)/8, where p is prime.

Offset 1, canonical program `A139292.P6878076174781687127`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139292 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A139292.P6878076174781687127.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139292.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A139293.P13592913446811254453

`A139286(n+1)/8-1`
-/

namespace A139293.P13592913446811254453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139286 (n + 1) : ℚ) / 8 - 1

end

end A139293.P13592913446811254453

noncomputable section

/-- A139293: (2^(2p - 1)/8)-1, where p is prime.

Offset 1, canonical program `A139293.P13592913446811254453`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139293 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A139293.P13592913446811254453.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139293.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140199.P1511912442749279269

`A071917(n+1)+1`
-/

namespace A140199.P1511912442749279269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071917 (n + 1) + 1

end

end A140199.P1511912442749279269

noncomputable section

/-- A140199: a(n) = the number of pairs of (not necessarily distinct) positive integers j and k where j <= n and k <= n such that k+j is prime.

Offset 1, canonical program `A140199.P1511912442749279269`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140199 (n : ℕ) : ℤ :=
  A140199.P1511912442749279269.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140199.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140299.P17580252582756976410

`4^A001223(n+1)`
-/

namespace A140299.P17580252582756976410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A001223 (n + 1) : ℤ)

end

end A140299.P17580252582756976410

noncomputable section

/-- A140299: a(n) = A100626(n+1)/A100626(n).

Offset 0, canonical program `A140299.P17580252582756976410`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140299 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A140299.P17580252582756976410.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140299.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140511.P1395500853735429754

`(A001248(n+2)+A000040(n+3))/2`
-/

namespace A140511.P1395500853735429754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001248 (n + 2) + A000040 (n + 3) : ℚ) / 2

end

end A140511.P1395500853735429754

noncomputable section

/-- A140511: a(n) = (prime(n)^2 + prime(n+1))/2.

Offset 2, canonical program `A140511.P1395500853735429754`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140511 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A140511.P1395500853735429754.a (n - 2))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140511.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140513.P13579608035938851890

`2*A137688(n)`
-/

namespace A140513.P13579608035938851890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A137688 n

end

end A140513.P13579608035938851890

noncomputable section

/-- A140513: Repeat 2^n n times.

Offset 0, canonical program `A140513.P13579608035938851890`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140513 (n : ℕ) : ℤ :=
  A140513.P13579608035938851890.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140513.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140700.P15054236554757068483

`(n+1)*A069158(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140700.P15054236554757068483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A069158 (n + 1)

end

end A140700.P15054236554757068483

noncomputable section

/-- A140700: a(n) = n*A069158(n).

Offset 1, canonical program `A140700.P15054236554757068483`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140700 (n : ℕ) : ℤ :=
  A140700.P15054236554757068483.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140700.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140706.P14405807002235164558

`∑{d}[n+1, A008683(#)*A014683((n+1)/#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140706.P14405807002235164558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A014683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A140706.P14405807002235164558

noncomputable section

/-- A140706: A054525 * A014683; a(n) = Sum_{d|n} mu(d)*A014683(n/d).

Offset 1, canonical program `A140706.P14405807002235164558`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140706 (n : ℕ) : ℤ :=
  A140706.P14405807002235164558.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140706.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140756.P3277884654481900354

`(-1)^(A004736(n+1)+1)*A002260(n+1)`
-/

namespace A140756.P3277884654481900354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A004736 (n + 1) + 1 : ℤ) * (A002260 (n + 1) : ℚ)

end

end A140756.P3277884654481900354

noncomputable section

/-- A140756: Count up to k sequence with alternating signs (k always positive).

Offset 1, canonical program `A140756.P3277884654481900354`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140756 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A140756.P3277884654481900354.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140756.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A141147.P9108088317730435123

`A110707(n+1)/3`
-/

namespace A141147.P9108088317730435123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110707 (n + 1) : ℚ) / 3

end

end A141147.P9108088317730435123

noncomputable section

/-- A141147: Number of linear arrangements of n blue, n red and n green items such that the first item is blue and there are no adjacent items of the same color (first and last elements considered as adjacent).

Offset 1, canonical program `A141147.P9108088317730435123`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141147 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A141147.P9108088317730435123.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141147.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A141535.P16437882667195549549

`A127917(n+2)/8-A027480(n+1)`
-/

namespace A141535.P16437882667195549549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127917 (n + 2) : ℚ) / 8 - (A027480 (n + 1) : ℚ)

end

end A141535.P16437882667195549549

noncomputable section

/-- A141535: An eighth of the product of three integers surrounding the (n+1)-st prime, minus half of the product of the 3 numbers surrounding n+1.

Offset 1, canonical program `A141535.P16437882667195549549`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141535 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A141535.P16437882667195549549.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141535.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A142883.P8119179199355655471

`A142590(n)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A142883.P8119179199355655471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142590 n : ℚ) / 3

end

end A142883.P8119179199355655471

noncomputable section

/-- A142883: a(n) = A142590(n)/3.

Offset 0, canonical program `A142883.P8119179199355655471`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A142883 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A142883.P8119179199355655471.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A142883.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143545.P10821814786316977648

`n+1+A061397(n+1)`
-/

namespace A143545.P10821814786316977648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A061397 (n + 1)

end

end A143545.P10821814786316977648

noncomputable section

/-- A143545: a(n) = n unless n is a prime, in which case a(n) = 2n.

Offset 1, canonical program `A143545.P10821814786316977648`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143545 (n : ℕ) : ℤ :=
  A143545.P10821814786316977648.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143545.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143731.P1534349135649353055

`A057427(A079275(n+1))`
-/

namespace A143731.P1534349135649353055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A079275 (n + 1)).toNat

end

end A143731.P1534349135649353055

noncomputable section

/-- A143731: Characteristic function of numbers with at least two distinct prime factors (A024619).

Offset 1, canonical program `A143731.P1534349135649353055`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143731 (n : ℕ) : ℤ :=
  A143731.P1534349135649353055.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143731.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143928.P14190391261956861434

`A079704(n+2)`
-/

namespace A143928.P14190391261956861434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079704 (n + 2)

end

end A143928.P14190391261956861434

noncomputable section

/-- A143928: 2*p^2, for p an odd prime.

Offset 1, canonical program `A143928.P14190391261956861434`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143928 (n : ℕ) : ℤ :=
  A143928.P14190391261956861434.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143928.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143961.P13407885430140575140

`∑{#}[n, C(n, #)*A010054(#)]`
-/

namespace A143961.P13407885430140575140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A010054 k

end

end A143961.P13407885430140575140

noncomputable section

/-- A143961: Binomial transform of A010054 (characteristic function of triangular numbers).

Offset 0, canonical program `A143961.P13407885430140575140`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143961 (n : ℕ) : ℤ :=
  A143961.P13407885430140575140.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143961.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A144328.P13677371458497017703

`A002260(n+1)+A010054(n)-1`
-/

namespace A144328.P13677371458497017703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + A010054 n - 1

end

end A144328.P13677371458497017703

noncomputable section

/-- A144328: A002260 preceded by a column of 1's: a (1, 1, 2, 3, 4, 5, ...) crescendo triangle by rows.

Offset 1, canonical program `A144328.P13677371458497017703`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144328 (n : ℕ) : ℤ :=
  A144328.P13677371458497017703.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144328.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A144464.P14632589415150791803

`2^A004197(n)`
-/

namespace A144464.P14632589415150791803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A004197 n : ℤ)

end

end A144464.P14632589415150791803

noncomputable section

/-- A144464: Triangle T(n,m) read by rows: T(n,m) = 2^min(m,n-m).

Offset 0, canonical program `A144464.P14632589415150791803`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144464 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A144464.P14632589415150791803.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144464.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A144551.P9471989750803673522

`A141468(n+1)*A141468(n+2)/2`
-/

namespace A144551.P9471989750803673522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141468 (n + 1) * A141468 (n + 2) : ℚ) / 2

end

end A144551.P9471989750803673522

noncomputable section

/-- A144551: a(n) = nonprime(n)*nonprime(n+1)/2, where nonprime(n) = A141468(n).

Offset 1, canonical program `A144551.P9471989750803673522`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144551 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A144551.P9471989750803673522.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144551.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A144570.P11118034758568014224

`A141468(A000040(n+1))`
-/

namespace A144570.P11118034758568014224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (A000040 (n + 1)).toNat

end

end A144570.P11118034758568014224

noncomputable section

/-- A144570: Nonprime(prime(n)).

Offset 1, canonical program `A144570.P11118034758568014224`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144570 (n : ℕ) : ℤ :=
  A144570.P11118034758568014224.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144570.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A145445.P2754052225407888285

`A104103(n+1)²`
-/

namespace A145445.P2754052225407888285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104103 (n + 1) ^ 2

end

end A145445.P2754052225407888285

noncomputable section

/-- A145445: a(n) = the smallest square > n-th prime.

Offset 1, canonical program `A145445.P2754052225407888285`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A145445 (n : ℕ) : ℤ :=
  A145445.P2754052225407888285.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A145445.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A145855.P2860317961952724366

`∑{d}[n+1, (-1)^(n+1+#)*#*A131868(#)]`
-/

namespace A145855.P2860317961952724366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (-1) ^ (n + 1 + d) * (d : ℤ) * A131868 d

end

end A145855.P2860317961952724366

noncomputable section

/-- A145855: Number of n-element subsets of {1,2,...,2n-1} whose elements sum to a multiple of n.

Offset 1, canonical program `A145855.P2860317961952724366`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A145855 (n : ℕ) : ℤ :=
  A145855.P2860317961952724366.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A145855.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A145917.P16742270102917720148

`(A002260(n+1)-1)²-4*(A004736(n+1)-1)`
-/

namespace A145917.P16742270102917720148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) - 1) ^ 2 - 4 * (A004736 (n + 1) - 1)

end

end A145917.P16742270102917720148

noncomputable section

/-- A145917: Triangle read by rows: to get n-th row, start with -4n and successively add 5, 7, 9, 11, 13, ... until reaching a square.

Offset 0, canonical program `A145917.P16742270102917720148`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A145917 (n : ℕ) : ℤ :=
  A145917.P16742270102917720148.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A145917.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A146313.P15935100656203728412

`A146312(n+1)+1`
-/

namespace A146313.P15935100656203728412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146312 (n + 1) + 1

end

end A146313.P15935100656203728412

noncomputable section

/-- A146313: a(n) = cosh( (2n - 1)*arcsinh(sqrt(2)) )^2 = 1 - cos( (2n - 1)*arcsin(sqrt(3)) )^2.

Offset 1, canonical program `A146313.P15935100656203728412`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A146313 (n : ℕ) : ℤ :=
  A146313.P15935100656203728412.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A146313.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A147586.P18346588282080735820

`A142710(n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A147586.P18346588282080735820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142710 n : ℚ) / 2

end

end A147586.P18346588282080735820

noncomputable section

/-- A147586: a(n) = A142710(n)/2.

Offset 0, canonical program `A147586.P18346588282080735820`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A147586 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A147586.P18346588282080735820.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A147586.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A147609.P1573611172523087498

`A000290(n)-A065893(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A147609.P1573611172523087498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n - A065893 (n + 1)

end

end A147609.P1573611172523087498

noncomputable section

/-- A147609: a(n) = A000290(n-1) - A065893(n).

Offset 1, canonical program `A147609.P1573611172523087498`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A147609 (n : ℕ) : ℤ :=
  A147609.P1573611172523087498.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A147609.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A147965.P3324423489024112170

`n+1-A046933(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A147965.P3324423489024112170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A046933 (n + 1)

end

end A147965.P3324423489024112170

noncomputable section

/-- A147965: a(n) = n + 1 - A001223(n) = n - A046933(n). In words, a(n) is the difference between n+1 and the n-th gap between primes.

Offset 1, canonical program `A147965.P3324423489024112170`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A147965 (n : ℕ) : ℤ :=
  A147965.P3324423489024112170.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A147965.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A147967.P11868943010124678636

`(n+1)*A046933(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A147967.P11868943010124678636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A046933 (n + 1)

end

end A147967.P11868943010124678636

noncomputable section

/-- A147967: a(n) = n*(A001223(n)-1) = n*A046933(n).

Offset 1, canonical program `A147967.P11868943010124678636`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A147967 (n : ℕ) : ℤ :=
  A147967.P11868943010124678636.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A147967.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A151780.P15646106736797667594

`5^(A000120(n+1)-1)`
-/

namespace A151780.P15646106736797667594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A000120 (n + 1) - 1 : ℤ)

end

end A151780.P15646106736797667594

noncomputable section

/-- A151780: a(n) = 5^(wt(n) - 1) where wt(n) = A000120(n).

Offset 1, canonical program `A151780.P15646106736797667594`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A151780 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A151780.P15646106736797667594.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A151780.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A151784.P1510712198885634793

`6^(A000120(n+1)-1)`
-/

namespace A151784.P1510712198885634793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (A000120 (n + 1) - 1 : ℤ)

end

end A151784.P1510712198885634793

noncomputable section

/-- A151784: a(n) = 6^(wt(n) - 1) where wt(n) = A000120(n).

Offset 1, canonical program `A151784.P1510712198885634793`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A151784 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A151784.P1510712198885634793.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A151784.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A152029.P2042950158805901060

`2^n*A001761(n)`
-/

namespace A152029.P2042950158805901060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A001761 n

end

end A152029.P2042950158805901060

noncomputable section

/-- A152029: a(n) = 2^n*(2*n)!/((n+1)!).

Offset 0, canonical program `A152029.P2042950158805901060`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152029 (n : ℕ) : ℤ :=
  A152029.P2042950158805901060.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152029.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A152099.P15152217081351497144

`A034785(n+1)²-1`
-/

namespace A152099.P15152217081351497144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034785 (n + 1) ^ 2 - 1

end

end A152099.P15152217081351497144

noncomputable section

/-- A152099: a(n) = (2^prime(n) - 1)*(2^prime(n) + 1) = 2^(2*prime(n)) - 1.

Offset 1, canonical program `A152099.P15152217081351497144`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152099 (n : ℕ) : ℤ :=
  A152099.P15152217081351497144.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152099.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A152529.P6728657231019893610

`A152528(n+2)/2`
-/

namespace A152529.P6728657231019893610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152528 (n + 2) : ℚ) / 2

end

end A152529.P6728657231019893610

noncomputable section

/-- A152529: a(n) = (p(n)*p(n+2) - 3*p(n+1))/2, where p(n) is the n-th odd prime.

Offset 1, canonical program `A152529.P6728657231019893610`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152529 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A152529.P6728657231019893610.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152529.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A152531.P4513964103738693439

`A152530(n+2)/2`
-/

namespace A152531.P4513964103738693439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152530 (n + 2) : ℚ) / 2

end

end A152531.P4513964103738693439

noncomputable section

/-- A152531: a(n) = (p(n)*p(n+2) - p(n+1))/2, where p(n) is the n-th odd prime.

Offset 1, canonical program `A152531.P4513964103738693439`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152531 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A152531.P4513964103738693439.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152531.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A152714.P9266182527036570793

`3^A004197(n)`
-/

namespace A152714.P9266182527036570793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A004197 n : ℤ)

end

end A152714.P9266182527036570793

noncomputable section

/-- A152714: Triangle read by rows: T(n,k) = 3^min(k, n-k).

Offset 0, canonical program `A152714.P9266182527036570793`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152714 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A152714.P9266182527036570793.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152714.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A152716.P634610165933584230

`4^A004197(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A152716.P634610165933584230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A004197 n : ℤ)

end

end A152716.P634610165933584230

noncomputable section

/-- A152716: Triangle T(n,k) read by rows: T(n,k) = 4^min(k, n-k) = 4^A004197(n,k).

Offset 0, canonical program `A152716.P634610165933584230`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152716 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A152716.P634610165933584230.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152716.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A152717.P11772506304295409247

`5^A004197(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A152717.P11772506304295409247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A004197 n : ℤ)

end

end A152717.P11772506304295409247

noncomputable section

/-- A152717: Triangle T(n,k) read by rows: T(n,k) = 5^min(k, n-k) = 5^A004197(n,k).

Offset 0, canonical program `A152717.P11772506304295409247`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152717 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A152717.P11772506304295409247.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152717.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A152762.P705449962660149675

`A001065(A000108(n))`
-/

namespace A152762.P705449962660149675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A000108 n).toNat

end

end A152762.P705449962660149675

noncomputable section

/-- A152762: Sum of proper divisors of Catalan number A000108(n).

Offset 0, canonical program `A152762.P705449962660149675`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152762 (n : ℕ) : ℤ :=
  A152762.P705449962660149675.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152762.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A152982.P6897704514964440160

`A001065(A001006(n))`
-/

namespace A152982.P6897704514964440160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A001006 n).toNat

end

end A152982.P6897704514964440160

noncomputable section

/-- A152982: Sum of proper divisors of Motzkin number A001006(n).

Offset 0, canonical program `A152982.P6897704514964440160`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152982 (n : ℕ) : ℤ :=
  A152982.P6897704514964440160.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152982.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A153173.P9514743945125301852

`1+10*A085695(n)`
-/

namespace A153173.P9514743945125301852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 10 * A085695 n

end

end A153173.P9514743945125301852

noncomputable section

/-- A153173: a(n) = L(5*n)/L(n) where L(n) = n-th Lucas number A000032(n).

Offset 0, canonical program `A153173.P9514743945125301852`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A153173 (n : ℕ) : ℤ :=
  A153173.P9514743945125301852.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A153173.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A153175.P17504426682200025904

`A005248(n+1)+A087215(n+1)-(-1)^(n+1)*A056854(n+1)-(-1)^(n+1)`
-/

namespace A153175.P17504426682200025904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 (n + 1) + A087215 (n + 1) - (-1) ^ (n + 1) * A056854 (n + 1) - (-1) ^ (n + 1)

end

end A153175.P17504426682200025904

noncomputable section

/-- A153175: a(n) = L(7*n)/L(n) where L(n) = Lucas number A000204(n).

Offset 1, canonical program `A153175.P17504426682200025904`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A153175 (n : ℕ) : ℤ :=
  A153175.P17504426682200025904.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A153175.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A153177.P1118912484270809134

`1-(-1)^(n+1)*A087215(n+1)-(-1)^(n+1)*A005248(n+1)+A056854(n+1)+A087265(n+1)`
-/

namespace A153177.P1118912484270809134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (-1) ^ (n + 1) * A087215 (n + 1) - (-1) ^ (n + 1) * A005248 (n + 1) + A056854 (n + 1) + A087265 (n + 1)

end

end A153177.P1118912484270809134

noncomputable section

/-- A153177: a(n) = L(9*n)/L(n) where L(n) = Lucas number A000204(n).

Offset 1, canonical program `A153177.P1118912484270809134`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A153177 (n : ℕ) : ℤ :=
  A153177.P1118912484270809134.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A153177.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A116640.P12883575542746410889

`2*a(floor(n/2))-A033999(n)*A048883(n)` with `a(0)=1`
-/

namespace A116640.P12883575542746410889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a ⌊(n : ℚ) / 2⌋.toNat - A033999 n * A048883 n

end

end A116640.P12883575542746410889

noncomputable section

/-- A116640: a(n) = A116623(A059893(n)).

Offset 0, canonical program `A116640.P12883575542746410889`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A116640 (n : ℕ) : ℤ :=
  A116640.P12883575542746410889.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A116640.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A117767.P658102371895706340

`2*A000006(n+1)+1`
-/

namespace A117767.P658102371895706340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000006 (n + 1) + 1

end

end A117767.P658102371895706340

noncomputable section

/-- A117767: a(n) is the difference between the smallest square greater than prime(n) and the largest square less than prime(n), where prime(n) = A000040(n) is the n-th prime number.

Offset 1, canonical program `A117767.P658102371895706340`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117767 (n : ℕ) : ℤ :=
  A117767.P658102371895706340.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117767.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A120777.P10380441015060415790

`2^A283208(n)`
-/

namespace A120777.P10380441015060415790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A283208 n : ℤ)

end

end A120777.P10380441015060415790

noncomputable section

/-- A120777: a(n) = 2^(2*n - valuation(CatalanNumber(n), 2)).

Offset 0, canonical program `A120777.P10380441015060415790`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A120777 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A120777.P10380441015060415790.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A120777.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A122704.P5935536017074335233

`∑{#}[n, A131689(C(n+1, 2)+#)*2^(n-#)]`
-/

namespace A122704.P5935536017074335233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (A131689 (Nat.choose (n + 1) 2 + k) : ℚ) * (2 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ)

end

end A122704.P5935536017074335233

noncomputable section

/-- A122704: a(n) = Sum_{k=0..n} 3^(n-k)*A123125(n, k).

Offset 0, canonical program `A122704.P5935536017074335233`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A122704 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A122704.P5935536017074335233.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A122704.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A123334.P6158624254755743759

`A007696(n+1)+A000302(n+1)*A000142(n)`
-/

namespace A123334.P6158624254755743759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007696 (n + 1) + A000302 (n + 1) * A000142 n

end

end A123334.P6158624254755743759

noncomputable section

/-- A123334: a(n) = 4^n*(Gamma(n+1/4)/Gamma(1/4) + (n-1)!).

Offset 1, canonical program `A123334.P6158624254755743759`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123334 (n : ℕ) : ℤ :=
  A123334.P6158624254755743759.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123334.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A124920.P12157990903557992251

`a(n-1)+A006128(n)` with `a(0)=1`
-/

namespace A124920.P12157990903557992251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A006128 n

end

end A124920.P12157990903557992251

noncomputable section

/-- A124920: Location of record values in A080577; also partial sums of A006128 plus 1.

Offset 1, canonical program `A124920.P12157990903557992251`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A124920 (n : ℕ) : ℤ :=
  A124920.P12157990903557992251.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A124920.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A126273.P15937808875599412172

`A151799(1+a(n-1)+a(n-2)+a(n-3))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A126273.P15937808875599412172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A151799 (1 + a (n - 1) + a (n - 2) + a (n - 3)).toNat

end

end A126273.P15937808875599412172

noncomputable section

/-- A126273: a(0) = a(1) = a(2) = 1, a(n) = largest prime <= a(n-1) + a(n-2) + a(n-3).

Offset 0, canonical program `A126273.P15937808875599412172`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A126273 (n : ℕ) : ℤ :=
  A126273.P15937808875599412172.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A126273.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A126992.P17760686848856926701

`A151799(ceil(sqrt(A000040(n+1)*A000040(n+7))))`
-/

namespace A126992.P17760686848856926701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151799 ⌈Real.sqrt (A000040 (n + 1) * A000040 (n + 7) : ℝ)⌉.toNat

end

end A126992.P17760686848856926701

noncomputable section

/-- A126992: a(n) is the largest prime smaller than sqrt(prime(n)*prime(n+6)).

Offset 1, canonical program `A126992.P17760686848856926701`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A126992 (n : ℕ) : ℤ :=
  A126992.P17760686848856926701.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A126992.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A127427.P10470407826532983788

`(3*n+A053735(n)-A053735(6*n))/2`
-/

namespace A127427.P10470407826532983788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * n : ℤ) + A053735 n - A053735 (6 * n) : ℚ) / 2

end

end A127427.P10470407826532983788

noncomputable section

/-- A127427: a(n) = v_3( (6n)! ) - v_3( (3n)! ), where v_3(N) is the 3-adic valuation A007949(N).

Offset 0, canonical program `A127427.P10470407826532983788`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127427 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A127427.P10470407826532983788.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127427.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A127943.P11415706920937421864

`2^A127944(n)`
-/

namespace A127943.P11415706920937421864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A127944 n : ℤ)

end

end A127943.P11415706920937421864

noncomputable section

/-- A127943: a(n) = 2^binomial(n+1,2)/A046161(n).

Offset 0, canonical program `A127943.P11415706920937421864`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127943 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A127943.P11415706920937421864.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127943.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A128064.P17736054850047196674

`A002260(n+1)*A167374(n)`
-/

namespace A128064.P17736054850047196674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A167374 n

end

end A128064.P17736054850047196674

noncomputable section

/-- A128064: Triangle T with T(n,n)=n, T(n,n-1)=-(n-1) and otherwise T(n,k)=0; 0<k<=n.

Offset 1, canonical program `A128064.P17736054850047196674`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128064 (n : ℕ) : ℤ :=
  A128064.P17736054850047196674.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128064.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A129636.P13019751396834659063

`A053735(A102363(n))`
-/

namespace A129636.P13019751396834659063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A102363 n).toNat

end

end A129636.P13019751396834659063

noncomputable section

/-- A129636: Triangle T(n,k): base-3 digit sum of the Pascal type triangle A102363(n,k).

Offset 0, canonical program `A129636.P13019751396834659063`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A129636 (n : ℕ) : ℤ :=
  A129636.P13019751396834659063.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A129636.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A130174.P12281293716126292394

`a(n-1)+1+A055642(a(n-1))` with `a(0)=0`
-/

namespace A130174.P12281293716126292394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 1 + A055642 (a (n - 1)).toNat

end

end A130174.P12281293716126292394

noncomputable section

/-- A130174: a(n) = n-1 + (total number of digits in a(1), ..., a(n-1)).

Offset 1, canonical program `A130174.P12281293716126292394`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A130174 (n : ℕ) : ℤ :=
  A130174.P12281293716126292394.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A130174.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A134451.P12605129592745265341

`a(A053735(n))` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A134451.P12605129592745265341
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  a (A053735 n).toNat

end

end A134451.P12605129592745265341

noncomputable section

/-- A134451: Ternary digital root of n.

Offset 0, canonical program `A134451.P12605129592745265341`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134451 (n : ℕ) : ℤ :=
  (A134451.P12605129592745265341.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134451.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A135261.P1033303913802881261

`3*A131090(n)-A131090(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A135261.P1033303913802881261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A131090 n - A131090 (n + 1)

end

end A135261.P1033303913802881261

noncomputable section

/-- A135261: a(n) = 3*A131090(n) - A131090(n+1).

Offset 0, canonical program `A135261.P1033303913802881261`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135261 (n : ℕ) : ℤ :=
  A135261.P1033303913802881261.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135261.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A135295.P7575543575562511418

`n^A055642(n)`
-/

namespace A135295.P7575543575562511418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A055642 n : ℤ)

end

end A135295.P7575543575562511418

noncomputable section

/-- A135295: a(n) = n^(number of decimal digits of n).

Offset 0, canonical program `A135295.P7575543575562511418`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135295 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A135295.P7575543575562511418.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135295.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A136215.P6578793559879394522

`A007559(row(n)-col(n))*C(row(n), col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A136215.P6578793559879394522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007559 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n) * (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℤ)

end

end A136215.P6578793559879394522

noncomputable section

/-- A136215: Triangle T, read by rows, where T(n,k) = A007559(n-k)*C(n,k) where A007559 equals the triple factorials in column 0.

Offset 0, canonical program `A136215.P6578793559879394522`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A136215 (n : ℕ) : ℤ :=
  A136215.P6578793559879394522.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A136215.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A136482.P3006740218099363822

`2*A007318(C(row(n)+1, 2)+col(n))-A034851(C(row(n)+1, 2)+col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A136482.P3006740218099363822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n) - A034851 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n)

end

end A136482.P3006740218099363822

noncomputable section

/-- A136482: Triangle read by rows: T(n,k) = 2*A007318(n,k) - A034851(n,k) (i.e., twice Pascal's triangle - the Losanitch triangle).

Offset 0, canonical program `A136482.P3006740218099363822`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A136482 (n : ℕ) : ℤ :=
  A136482.P3006740218099363822.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A136482.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A136489.P13590970889981355823

`3*A007318(C(row(n)+1, 2)+col(n))-2*A034851(C(row(n)+1, 2)+col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A136489.P13590970889981355823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A007318 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n) - 2 * A034851 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n)

end

end A136489.P13590970889981355823

noncomputable section

/-- A136489: Triangle T(n, k) = 3*A007318(n, k) - 2*A034851(n, k).

Offset 0, canonical program `A136489.P13590970889981355823`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A136489 (n : ℕ) : ℤ :=
  A136489.P13590970889981355823.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A136489.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A136692.P13675699758737619112

`(n!/A243757(n))%5`
-/

namespace A136692.P13675699758737619112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) / (A243757 n : ℚ))) 5

end

end A136692.P13675699758737619112

noncomputable section

/-- A136692: Final nonzero digit of n! in base 5.

Offset 0, canonical program `A136692.P13675699758737619112`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A136692 (n : ℕ) : ℤ :=
  A136692.P13675699758737619112.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A136692.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138137.P8930994071489982945

`A006128(n+1)-A006128(n)`
-/

namespace A138137.P8930994071489982945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 (n + 1) - A006128 n

end

end A138137.P8930994071489982945

noncomputable section

/-- A138137: First differences of A006128.

Offset 1, canonical program `A138137.P8930994071489982945`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138137 (n : ℕ) : ℤ :=
  A138137.P8930994071489982945.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138137.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138908.P3143620244841362508

`A055642(n)^A055642(n)`
-/

namespace A138908.P3143620244841362508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055642 n : ℚ) ^ (A055642 n : ℤ)

end

end A138908.P3143620244841362508

noncomputable section

/-- A138908: a(n) = d^d, where d is the number of digits in n.

Offset 0, canonical program `A138908.P3143620244841362508`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138908 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138908.P3143620244841362508.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138908.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A139352.P2034447244462371406

`A053737(n)-A000120(n)`
-/

namespace A139352.P2034447244462371406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 n - A000120 n

end

end A139352.P2034447244462371406

noncomputable section

/-- A139352: Let the binary expansion of n be n = Sum_{k} 2^{r_k}, let e(n) be the number of r_k's that are even, o(n) the number that are odd; sequence gives o(n).

Offset 0, canonical program `A139352.P2034447244462371406`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139352 (n : ℕ) : ℤ :=
  A139352.P2034447244462371406.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139352.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A139817.P1238485157427704906

`A000079(n)-A055642(A000079(n))`
-/

namespace A139817.P1238485157427704906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A055642 (A000079 n).toNat

end

end A139817.P1238485157427704906

noncomputable section

/-- A139817: 2^n - number of digits of 2^n.

Offset 0, canonical program `A139817.P1238485157427704906`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139817 (n : ℕ) : ℤ :=
  A139817.P1238485157427704906.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139817.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A145222.P1301972767117422336

`(n+1)*A000387(n)`
-/

namespace A145222.P1301972767117422336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000387 n

end

end A145222.P1301972767117422336

noncomputable section

/-- A145222: a(n) is the number of odd permutations (of an n-set) with exactly 1 fixed point.

Offset 1, canonical program `A145222.P1301972767117422336`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A145222 (n : ℕ) : ℤ :=
  A145222.P1301972767117422336.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A145222.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A145223.P6606573860951849830

`(n+2)*(n+1)/2*A000387(n)`
-/

namespace A145223.P6606573860951849830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2) * (n + 1) : ℚ) / 2 * (A000387 n : ℚ)

end

end A145223.P6606573860951849830

noncomputable section

/-- A145223: a(n) is the number of odd permutations (of an n-set) with exactly 2 fixed points.

Offset 2, canonical program `A145223.P6606573860951849830`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A145223 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A145223.P6606573860951849830.a (n - 2))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A145223.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A145225.P14519174249686011272

`C(row(n), col(n))*A000387(row(n)-col(n))`
-/

namespace A145225.P14519174249686011272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℤ) * A000387 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n)

end

end A145225.P14519174249686011272

noncomputable section

/-- A145225: Triangle read by rows: T(n,k) is the number of odd permutations (of an n-set) with exactly k fixed points.

Offset 0, canonical program `A145225.P14519174249686011272`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A145225 (n : ℕ) : ℤ :=
  A145225.P14519174249686011272.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A145225.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A147845.P9272741338971517792

`2*A033045(n)+1`
-/

namespace A147845.P9272741338971517792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033045 n + 1

end

end A147845.P9272741338971517792

noncomputable section

/-- A147845: Odd positive integers a(n) such that for every odd integer m>=7 there exists a unique representation of the form m=a(p)+2a(q)+4a(r).

Offset 1, canonical program `A147845.P9272741338971517792`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A147845 (n : ℕ) : ℤ :=
  A147845.P9272741338971517792.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A147845.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A151712.P17763347096143698757

`A048883(n)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A151712.P17763347096143698757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 n + 1

end

end A151712.P17763347096143698757

noncomputable section

/-- A151712: a(n) = A048883(n) + 1.

Offset 0, canonical program `A151712.P17763347096143698757`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A151712 (n : ℕ) : ℤ :=
  A151712.P17763347096143698757.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A151712.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A116036.P4564103225143322178

`eq[1, A001222(A073136(n+1)+n+1)]+1`
-/

namespace A116036.P4564103225143322178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A073136 (n + 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A116036.P4564103225143322178

noncomputable section

/-- A116036: Numbers k such that k + prime(k) + prime(prime(k)) is a prime, where prime(k) denotes the k-th prime.

Offset 1, canonical program `A116036.P4564103225143322178`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A116036 (n : ℕ) : ℤ :=
  (A116036.P4564103225143322178.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A116036.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116127.P12388645020949059147

`Δ[floor(A055670(1+n)/3)]`
-/

namespace A116127.P12388645020949059147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A055670 (1 + n) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A116127.P12388645020949059147

noncomputable section

/-- A116127: Number of numbers that are congruent to {2, 4} mod 6 between prime(n) and prime(n+1) inclusive.

Offset 1, canonical program `A116127.P12388645020949059147`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116127 (n : ℕ) : ℤ :=
  A116127.P12388645020949059147.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116127.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116391.P13583395637639638585

`A098615(n)-a(n-1)` with `a(0)=1`
-/

namespace A116391.P13583395637639638585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A098615 n - a (n - 1)

end

end A116391.P13583395637639638585

noncomputable section

/-- A116391: Expansion of 1/((1+x)*(sqrt(1-4*x^2)-x)).

Offset 0, canonical program `A116391.P13583395637639638585`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 288 terms. -/
def A116391 (n : ℕ) : ℤ :=
  A116391.P13583395637639638585.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 288 terms. -/
def A116391.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116406.P2533668275764511831

`(A128014(n)+A011782(n))/2`
-/

namespace A116406.P2533668275764511831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128014 n + A011782 n : ℚ) / 2

end

end A116406.P2533668275764511831

noncomputable section

/-- A116406: Expansion of ((1 + x - 2x^2) + (1+x)*sqrt(1-4x^2))/(2(1-4x^2)).

Offset 0, canonical program `A116406.P2533668275764511831`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A116406 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A116406.P2533668275764511831.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A116406.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116410.P11469624891977256019

`A124302(n)+A097861(n)`
-/

namespace A116410.P11469624891977256019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124302 n + A097861 n

end

end A116410.P11469624891977256019

noncomputable section

/-- A116410: Expansion of (1-x-2x^2+sqrt(1-2x-3x^2))/(2*(1-2x-3x^2)).

Offset 0, canonical program `A116410.P11469624891977256019`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A116410 (n : ℕ) : ℤ :=
  A116410.P11469624891977256019.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A116410.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116477.P1140837523705484353

`∑{d}[1+n, A332684(#)]`
-/

namespace A116477.P1140837523705484353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A332684 d

end

end A116477.P1140837523705484353

noncomputable section

/-- A116477: a(n) = Sum_{1<=k<=n, gcd(k,n)=1} floor(n/k).

Offset 1, canonical program `A116477.P1140837523705484353`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116477 (n : ℕ) : ℤ :=
  A116477.P1140837523705484353.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116570.P13366081958881133163

`A006094(A008619(n+1))%A037166(A008619(n)+1)`
-/

namespace A116570.P13366081958881133163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006094 (A008619 (n + 1)).toNat) (A037166 (A008619 n + 1).toNat)

end

end A116570.P13366081958881133163

noncomputable section

/-- A116570: a(2*n) = prime(n+1) * prime(n+2), a(2*n-1) = prime(n+1).

Offset 0, canonical program `A116570.P13366081958881133163`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116570 (n : ℕ) : ℤ :=
  A116570.P13366081958881133163.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116570.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116592.P5877210315008298987

`A285763(2*n+1)+A093879(n+1)`
-/

namespace A116592.P5877210315008298987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285763 (2 * n + 1) + A093879 (n + 1)

end

end A116592.P5877210315008298987

noncomputable section

/-- A116592: a(0)=1; a(n) = b(n+2) + b(n), where b(n) = A004001(n) is the Hofstadter-Conway sequence defined by b(1) = b(2) = 1, b(n) = b(b(n-1)) + b(n-b(n-1)) for n>2.

Offset 0, canonical program `A116592.P5877210315008298987`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A116592 (n : ℕ) : ℤ :=
  A116592.P5877210315008298987.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A116592.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116602.P13006145556663672467

`eq[5, A039710(2*(n+1))]+1`
-/

namespace A116602.P13006145556663672467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039710 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A116602.P13006145556663672467

noncomputable section

/-- A116602: Values n such that prime(2*n) mod 12 == 5.

Offset 1, canonical program `A116602.P13006145556663672467`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1304 terms. -/
def A116602 (n : ℕ) : ℤ :=
  (A116602.P13006145556663672467.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1304 terms. -/
def A116602.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116610.P5202349679165974166

`lt[3, A068227(2*(n+1))]+1`
-/

namespace A116610.P5202349679165974166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068227 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A116610.P5202349679165974166

noncomputable section

/-- A116610: Values of n such that prime(2*n) mod 12 = 11.

Offset 1, canonical program `A116610.P5202349679165974166`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1223 terms. -/
def A116610 (n : ℕ) : ℤ :=
  (A116610.P5202349679165974166.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1223 terms. -/
def A116610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116612.P12167759706740848563

`eq[1, A039710(1+2*n)]`
-/

namespace A116612.P12167759706740848563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039710 (1 + 2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A116612.P12167759706740848563

noncomputable section

/-- A116612: Values of n such that p(2n+1) mod 12 = 1, where p(j) denotes the j-th prime.

Offset 1, canonical program `A116612.P12167759706740848563`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1214 terms. -/
def A116612 (n : ℕ) : ℤ :=
  (A116612.P12167759706740848563.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1214 terms. -/
def A116612.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116613.P9128618355075332114

`eq[5, A039710(2*n+1)]`
-/

namespace A116613.P9128618355075332114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039710 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A116613.P9128618355075332114

noncomputable section

/-- A116613: Values of n such that prime(2n+1) mod 12 = 5.

Offset 1, canonical program `A116613.P9128618355075332114`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1203 terms. -/
def A116613 (n : ℕ) : ℤ :=
  (A116613.P9128618355075332114.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1203 terms. -/
def A116613.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116614.P7124806835608261155

`eq[1, A031215(n+1)%12]+1`
-/

namespace A116614.P7124806835608261155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031215 (n + 1)) 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A116614.P7124806835608261155

noncomputable section

/-- A116614: Values of n such that prime(2n) mod 12 = 1.

Offset 1, canonical program `A116614.P7124806835608261155`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2497 terms. -/
def A116614 (n : ℕ) : ℤ :=
  (A116614.P7124806835608261155.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2497 terms. -/
def A116614.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116616.P1011088262083713768

`eq[7, A039710(2*n+1)]`
-/

namespace A116616.P1011088262083713768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039710 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A116616.P1011088262083713768

noncomputable section

/-- A116616: Values of n such that prime(2n+1) mod 12 = 7.

Offset 1, canonical program `A116616.P1011088262083713768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1302 terms. -/
def A116616 (n : ℕ) : ℤ :=
  (A116616.P1011088262083713768.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1302 terms. -/
def A116616.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116660.P3668344593120253381

`∩[A067028(n+1), A075658(n+1)]`
-/

namespace A116660.P3668344593120253381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075658 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116660.P3668344593120253381

noncomputable section

/-- A116660: Integers in both sequences A075658 and A067028.

Offset 1, canonical program `A116660.P3668344593120253381`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2607 terms. -/
def A116660 (n : ℕ) : ℤ :=
  (A116660.P3668344593120253381.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2607 terms. -/
def A116660.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116661.P7486489033770162213

`∩[A063989(n+1), A114522(n+1)]`
-/

namespace A116661.P7486489033770162213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114522 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116661.P7486489033770162213

noncomputable section

/-- A116661: Integers in both sequences A114522 and A063989.

Offset 1, canonical program `A116661.P7486489033770162213`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1203 terms. -/
def A116661 (n : ℕ) : ℤ :=
  (A116661.P7486489033770162213.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1203 terms. -/
def A116661.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117109.P83652352233922109

`∑{d}[n+1, A007427(#)*A073570((n+1)/#)]`
-/

namespace A117109.P83652352233922109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A073570 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A117109.P83652352233922109

noncomputable section

/-- A117109: Moebius transform of binomial(n+3, 4).

Offset 1, canonical program `A117109.P83652352233922109`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117109 (n : ℕ) : ℤ :=
  A117109.P83652352233922109.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117109.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117120.P9394178660501111264

`A063946(A004756(n+1)-(2*n+3))`
-/

namespace A117120.P9394178660501111264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063946 (A004756 (n + 1) - (2 * n + 3 : ℤ)).toNat

end

end A117120.P9394178660501111264

noncomputable section

/-- A117120: a(1)=1. a(n) is smallest positive integer not occurring earlier in the sequence where a(n) is congruent to -1 (mod a(n-1)).

Offset 1, canonical program `A117120.P9394178660501111264`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117120 (n : ℕ) : ℤ :=
  A117120.P9394178660501111264.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117120.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117178.P12171852833970860923

`C(A002024(n+1), A026741(A108872(n+1)))`
-/

namespace A117178.P12171852833970860923
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002024 (n + 1)).toNat (A026741 (A108872 (n + 1)).toNat).toNat

end

end A117178.P12171852833970860923

noncomputable section

/-- A117178: Riordan array (c(x^2)/sqrt(1-4*x^2), x*c(x^2)), c(x) the g.f. of A000108.

Offset 0, canonical program `A117178.P12171852833970860923`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117178 (n : ℕ) : ℤ :=
  (A117178.P12171852833970860923.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117178.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117300.P2175943187349720183

`p?[A004218(A008864(n+1))+A000040(n+1)]`
-/

namespace A117300.P2175943187349720183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (A008864 (n + 1)).toNat + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117300.P2175943187349720183

noncomputable section

/-- A117300: Consider all pairs (p,q) of consecutive primes such that p and q both have k digits and q-p = k; sequence lists the values of q.

Offset 1, canonical program `A117300.P2175943187349720183`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A117300 (n : ℕ) : ℤ :=
  A117300.P2175943187349720183.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A117300.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117362.P15678424001013400889

`A097807(n)*A113214(n)`
-/

namespace A117362.P15678424001013400889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A113214 n

end

end A117362.P15678424001013400889

noncomputable section

/-- A117362: Riordan array (1-2x,x(1-x)).

Offset 0, canonical program `A117362.P15678424001013400889`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117362 (n : ℕ) : ℤ :=
  A117362.P15678424001013400889.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117362.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117487.P16694226352568776125

`∑{#}[n, A001401(#)*A001401(n-#)]`
-/

namespace A117487.P16694226352568776125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A001401 k * A001401 (n - k)

end

end A117487.P16694226352568776125

noncomputable section

/-- A117487: G.f.: 1/((1-x)*(1-x^2)*(1-x^3)*(1-x^4)*(1-x^5))^2.

Offset 1, canonical program `A117487.P16694226352568776125`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A117487 (n : ℕ) : ℤ :=
  A117487.P16694226352568776125.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A117487.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117496.P6846209427400603046

`∩[A005823(n+1), A023709(n+1)]`
-/

namespace A117496.P6846209427400603046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023709 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117496.P6846209427400603046

noncomputable section

/-- A117496: Numbers with no 1's in base 3 & 4 expansions.

Offset 1, canonical program `A117496.P6846209427400603046`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A117496 (n : ℕ) : ℤ :=
  (A117496.P6846209427400603046.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A117496.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117502.P6504737561182054431

`A104763(2+row(1+n)+n)`
-/

namespace A117502.P6504737561182054431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (2 + (SequenceMachineLib.triRow (1 + n) + n))

end

end A117502.P6504737561182054431

noncomputable section

/-- A117502: Triangle, row sums = A001595.

Offset 1, canonical program `A117502.P6504737561182054431`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A117502 (n : ℕ) : ℤ :=
  A117502.P6504737561182054431.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A117502.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117869.P18256498155837451709

`∑[A001671(n)]-n`
-/

namespace A117869.P18256498155837451709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001671 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A117869.P18256498155837451709

noncomputable section

/-- A117869: Partial sums of A000149.

Offset 0, canonical program `A117869.P18256498155837451709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 230 terms. -/
def A117869 (n : ℕ) : ℤ :=
  A117869.P18256498155837451709.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 230 terms. -/
def A117869.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117882.P6858586493466054488

`∑[A001673(n)]-n`
-/

namespace A117882.P6858586493466054488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001673 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A117882.P6858586493466054488

noncomputable section

/-- A117882: Partial sums of floor(Pi^n).

Offset 0, canonical program `A117882.P6858586493466054488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. -/
def A117882 (n : ℕ) : ℤ :=
  A117882.P6858586493466054488.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. -/
def A117882.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117904.P18293457615269671848

`2-A117898(n)`
-/

namespace A117904.P18293457615269671848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A117898 n

end

end A117904.P18293457615269671848

noncomputable section

/-- A117904: Number triangle [k<=n]*0^abs(L(C(n,2)/3) - L(C(k,2)/3)) where L(j/p) is the Legendre symbol of j and p.

Offset 0, canonical program `A117904.P18293457615269671848`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117904 (n : ℕ) : ℤ :=
  A117904.P18293457615269671848.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117904.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117946.P16806305034114280741

`A102283(n)*A120880(A064429(n))`
-/

namespace A117946.P16806305034114280741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 n * A120880 (A064429 n).toNat

end

end A117946.P16806305034114280741

noncomputable section

/-- A117946: a(3n)=0, a(3n+1)/a(1)=a(3n+2)/a(2)=A059151(n).

Offset 0, canonical program `A117946.P16806305034114280741`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1307 terms. -/
def A117946 (n : ℕ) : ℤ :=
  A117946.P16806305034114280741.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1307 terms. -/
def A117946.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117962.P15973064432384573715

`∑[A117961(1+n)]`
-/

namespace A117962.P15973064432384573715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117961 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117962.P15973064432384573715

noncomputable section

/-- A117962: Partial sums of hexagonal numbers with prime indices.

Offset 1, canonical program `A117962.P15973064432384573715`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117962 (n : ℕ) : ℤ :=
  A117962.P15973064432384573715.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117962.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118006.P10735077424851259672

`and(1, A080846(or(1, n))+n)`
-/

namespace A118006.P10735077424851259672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A080846 (Nat.lor 1 n) + (n : ℤ))

end

end A118006.P10735077424851259672

noncomputable section

/-- A118006: Define a sequence of binary words by w(1) = 01 and w(n+1) = w(n)w(n)Reverse[w(n)]. Sequence gives the limiting word w(infinity).

Offset 1, canonical program `A118006.P10735077424851259672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A118006 (n : ℕ) : ℤ :=
  A118006.P10735077424851259672.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A118006.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118111.P14132032256210772678

`A071037(a(n-1)*n)` with `a(0)=1`
-/

namespace A118111.P14132032256210772678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A071037 (a (n - 1) * (n : ℤ)).toNat

end

end A118111.P14132032256210772678

noncomputable section

/-- A118111: Binary representation of n-th iteration of the Rule 190 elementary cellular automaton starting with a single black cell.

Offset 0, canonical program `A118111.P14132032256210772678`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118111 (n : ℕ) : ℤ :=
  A118111.P14132032256210772678.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118259.P2160422490285204921

`∑[2*A169646(1+n)]-1`
-/

namespace A118259.P2160422490285204921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A169646 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A118259.P2160422490285204921

noncomputable section

/-- A118259: Numbers of strongly carefree couples (a,b) with a,b <= n.

Offset 1, canonical program `A118259.P2160422490285204921`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1047 terms. -/
def A118259 (n : ℕ) : ℤ :=
  A118259.P2160422490285204921.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1047 terms. -/
def A118259.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118425.P11488403813007551376

`∑[A006478(n)]`
-/

namespace A118425.P11488403813007551376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006478 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118425.P11488403813007551376

noncomputable section

/-- A118425: Number of binary sequences of length n containing exactly one subsequence 001.

Offset 0, canonical program `A118425.P11488403813007551376`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 467 terms. -/
def A118425 (n : ℕ) : ℤ :=
  A118425.P11488403813007551376.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 467 terms. -/
def A118425.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118444.P13603770497566065766

`A118443(n)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A118444.P13603770497566065766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118443 n : ℚ) / (n + 1 : ℚ)

end

end A118444.P13603770497566065766

noncomputable section

/-- A118444: a(n) = A118443(n)/(n+1), where A118443 is the row sums of triangle A118441.

Offset 0, canonical program `A118444.P13603770497566065766`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A118443, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A118444 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A118444.P13603770497566065766.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A118443, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A118444.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A118624.P709661768869797743

`p?[A226502(n+1)-1]`
-/

namespace A118624.P709661768869797743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226502 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A118624.P709661768869797743

noncomputable section

/-- A118624: Primes of the form prime(n+1)*prime(n+3) - prime(n)*prime(n+2) - 1, ordered by n.

Offset 1, canonical program `A118624.P709661768869797743`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 494 terms. -/
def A118624 (n : ℕ) : ℤ :=
  A118624.P709661768869797743.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 494 terms. -/
def A118624.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118733.P7042517334723961056

`comp[A118732(n+1)]`
-/

namespace A118733.P7042517334723961056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A118733.P7042517334723961056

noncomputable section

/-- A118733: Numbers k such that 3^k has even digit sum.

Offset 1, canonical program `A118733.P7042517334723961056`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9911 terms. -/
def A118733 (n : ℕ) : ℤ :=
  (A118733.P7042517334723961056.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9911 terms. -/
def A118733.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118749.P10887777118089686898

`A151799(3*n+4)`
-/

namespace A118749.P10887777118089686898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151799 (3 * n + 4)

end

end A118749.P10887777118089686898

noncomputable section

/-- A118749: Largest prime <= 3*n.

Offset 1, canonical program `A118749.P10887777118089686898`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118749 (n : ℕ) : ℤ :=
  A118749.P10887777118089686898.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118749.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118801.P6489775398404717729

`A033999(A002262(n))*A112857(n)`
-/

namespace A118801.P6489775398404717729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A002262 n).toNat * A112857 n

end

end A118801.P6489775398404717729

noncomputable section

/-- A118801: Triangle T that satisfies the matrix products: C*[T^-1]*C = T and T*[C^-1]*T = C, where C is Pascal's triangle.

Offset 0, canonical program `A118801.P6489775398404717729`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118801 (n : ℕ) : ℤ :=
  A118801.P6489775398404717729.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118801.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118916.P3325023275900532879

`gcd(2, ∑{d}[A055673(n+1), #])`
-/

namespace A118916.P3325023275900532879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055673 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A118916.P3325023275900532879

noncomputable section

/-- A118916: Number of inequivalent primes in ring of integers Z[sqrt(2)] of successive norms (indexed by A055029).

Offset 1, canonical program `A118916.P3325023275900532879`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A118916 (n : ℕ) : ℤ :=
  (A118916.P3325023275900532879.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A118916.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118917.P4697252244037127214

`char[A038873(n+2)]+char[A055673(n+1)]`
-/

namespace A118917.P4697252244037127214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055673 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

end

end A118917.P4697252244037127214

noncomputable section

/-- A118917: Number of inequivalent primes in ring of integers Z[sqrt(2)] with absolute value of norm = n.

Offset 0, canonical program `A118917.P4697252244037127214`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118917 (n : ℕ) : ℤ :=
  (A118917.P4697252244037127214.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118917.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118973.P16395577257869652124

`A000957(n+1)+A000958(n+1)-A000108(n)`
-/

namespace A118973.P16395577257869652124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000957 (n + 1) + (A000958 (n + 1) - A000108 n)

end

end A118973.P16395577257869652124

noncomputable section

/-- A118973: Number of hill-free Dyck paths of semilength n+2 and having length of first descent equal to 2 (a hill in a Dyck path is a peak at level 1).

Offset 0, canonical program `A118973.P16395577257869652124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A118973 (n : ℕ) : ℤ :=
  A118973.P16395577257869652124.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A118973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118976.P8420611041753619682

`A001263(n+1)+A001263(n+2)-A010054(n+1)`
-/

namespace A118976.P8420611041753619682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) + (A001263 (n + 2) - A010054 (n + 1))

end

end A118976.P8420611041753619682

noncomputable section

/-- A118976: Triangle read by rows: T(n,k) = binomial(n-1,k-1)*binomial(n,k-1)/k + binomial(n-1,k)*binomial(n,k)/(k+1) (1 <= k <= n). In other words, to each entry of the Narayana triangle (A001263) add the entry on its right.

Offset 1, canonical program `A118976.P8420611041753619682`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A118976 (n : ℕ) : ℤ :=
  A118976.P8420611041753619682.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A118976.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119356.P3512215726050706340

`eq[1, A375970(1+n)]+1`
-/

namespace A119356.P3512215726050706340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375970 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A119356.P3512215726050706340

noncomputable section

/-- A119356: Numbers k such that A000330(k) is squarefree.

Offset 1, canonical program `A119356.P3512215726050706340`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5029 terms. -/
def A119356 (n : ℕ) : ℤ :=
  (A119356.P3512215726050706340.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5029 terms. -/
def A119356.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119358.P3975795803650896372

`A119326(C(2*n+1, 2)+n)`
-/

namespace A119358.P3975795803650896372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119326 (Nat.choose (2 * n + 1) 2 + n)

end

end A119358.P3975795803650896372

noncomputable section

/-- A119358: Number of n-element subsets of [2n] having an even sum.

Offset 0, canonical program `A119358.P3975795803650896372`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A119326, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A119358 (n : ℕ) : ℤ :=
  A119358.P3975795803650896372.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A119326, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A119358.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A119440.P10732176381343367218

`A098011(A082375(n)+2)`
-/

namespace A119440.P10732176381343367218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098011 (A082375 n + 2).toNat

end

end A119440.P10732176381343367218

noncomputable section

/-- A119440: Triangle read by rows: T(n,k) is the number of binary sequences of length n that start with exactly k 01's (0 <= k <= floor(n/2)).

Offset 0, canonical program `A119440.P10732176381343367218`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2550 terms. -/
def A119440 (n : ℕ) : ℤ :=
  A119440.P10732176381343367218.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2550 terms. -/
def A119440.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119457.P468492089180334650

`A292030(n)+A117501(n+1)`
-/

namespace A119457.P468492089180334650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292030 n + A117501 (n + 1)

end

end A119457.P468492089180334650

noncomputable section

/-- A119457: Triangle read by rows: T(n, 1) = n, T(n, 2) = 2*(n-1) for n>1 and T(n, k) = T(n-1, k-1) + T(n-2, k-2) for 2 < k <= n.

Offset 1, canonical program `A119457.P468492089180334650`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A119457 (n : ℕ) : ℤ :=
  A119457.P468492089180334650.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A119457.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119658.P11667563093156553318

`A000040(A000040(n+1))*A000040(A065091(n+1))`
-/

namespace A119658.P11667563093156553318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000040 (n + 1)).toNat * A000040 (A065091 (n + 1)).toNat

end

end A119658.P11667563093156553318

noncomputable section

/-- A119658: Area of consecutive Prime-Indexed Prime rectangles.

Offset 1, canonical program `A119658.P11667563093156553318`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A119658 (n : ℕ) : ℤ :=
  A119658.P11667563093156553318.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A119658.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119917.P9607246823853098812

`∑[A038199(1+n)]`
-/

namespace A119917.P9607246823853098812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038199 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119917.P9607246823853098812

noncomputable section

/-- A119917: Number of rationals in [0, 1) consisting just of repeating bits of period at most n.

Offset 1, canonical program `A119917.P9607246823853098812`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A119917 (n : ℕ) : ℤ :=
  A119917.P9607246823853098812.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A119917.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119970.P10536248668399528158

`∑{#}[n, C(n, #)*A119969(#)]`
-/

namespace A119970.P10536248668399528158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A119969 k

end

end A119970.P10536248668399528158

noncomputable section

/-- A119970: Binomial transform of A119969.

Offset 0, canonical program `A119970.P10536248668399528158`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 272 terms. -/
def A119970 (n : ℕ) : ℤ :=
  A119970.P10536248668399528158.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 272 terms. -/
def A119970.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120046.P9775275873602045631

`A014614(10^n)`
-/

namespace A120046.P9775275873602045631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (10 ^ n)

end

end A120046.P9775275873602045631

noncomputable section

/-- A120046: The 10^n-th 5-almost prime.

Offset 0, canonical program `A120046.P9775275873602045631`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014614, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A120046 (n : ℕ) : ℤ :=
  A120046.P9775275873602045631.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014614, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A120046.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A120226.P13386215019223714269

`∩[A172367(n+1), A230076(n+1)]`
-/

namespace A120226.P13386215019223714269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120226.P13386215019223714269

noncomputable section

/-- A120226: Numbers k such that 4+k and 4*k+1 are prime.

Offset 1, canonical program `A120226.P13386215019223714269`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3021 terms. -/
def A120226 (n : ℕ) : ℤ :=
  (A120226.P13386215019223714269.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3021 terms. -/
def A120226.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120228.P4195300899045194626

`eq[A001222(n+8), A101264(4*n)]`
-/

namespace A120228.P4195300899045194626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 8)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (4 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A120228.P4195300899045194626

noncomputable section

/-- A120228: Numbers k such that 8+k and 8*k+1 are prime.

Offset 1, canonical program `A120228.P4195300899045194626`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 446 terms. -/
def A120228 (n : ℕ) : ℤ :=
  (A120228.P4195300899045194626.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 446 terms. -/
def A120228.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120229.P17111275470575324489

`∏{p}[n+1, #^val(n+1, #²)]²*A007913(3*(n+1))`
-/

namespace A120229.P17111275470575324489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2 : ℕ) : ℤ) * A007913 (3 * (n + 1))

end

end A120229.P17111275470575324489

noncomputable section

/-- A120229: Split-floor-multiplier sequence (SFMS) using multipliers 1/3 and 3. The SFMS using multipliers r and s is here introduced: for every positive integer n and positive real number r, let [rn] abbreviate floor(rn). Then SFMS(r, s), where max {r, s} > 1, is the sequence a defined by a(n)=[rn] if [rn] > 0 and is not already in a and a(n) = [sn] otherwise.

Offset 1, canonical program `A120229.P17111275470575324489`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120229 (n : ℕ) : ℤ :=
  A120229.P17111275470575324489.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120229.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120243.P8412210091431713488

`eq[1, A019426(A001951(2*n))]`
-/

namespace A120243.P8412210091431713488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (A001951 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A120243.P8412210091431713488

noncomputable section

/-- A120243: Numbers k such that {k*sqrt(2)} < 1/2, where { } = fractional part.

Offset 1, canonical program `A120243.P8412210091431713488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A120243 (n : ℕ) : ℤ :=
  (A120243.P8412210091431713488.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A120243.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120278.P15344238521992007135

`∑[A054114(n)]+1`
-/

namespace A120278.P15344238521992007135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054114 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A120278.P15344238521992007135

noncomputable section

/-- A120278: a(n) = Sum_{m=1..n} Sum_{k=1..m} C(2*k,k), where C(2*k,k) = (2*k)!/(k!)^2 = A000984(k).

Offset 1, canonical program `A120278.P15344238521992007135`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A120278 (n : ℕ) : ℤ :=
  A120278.P15344238521992007135.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A120278.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120303.P7782662620149666777

`A151799(record[2-xor(1, -n)]+2)`
-/

namespace A120303.P7782662620149666777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.xor 1 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151799 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 2).toNat

end

end A120303.P7782662620149666777

noncomputable section

/-- A120303: Largest prime factor of Catalan number A000108(n).

Offset 2, canonical program `A120303.P7782662620149666777`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 799 terms. -/
def A120303 (n : ℕ) : ℤ :=
  A120303.P7782662620149666777.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 799 terms. -/
def A120303.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120326.P4919459287997436659

`∑[A039701(1+n)]`
-/

namespace A120326.P4919459287997436659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039701 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120326.P4919459287997436659

noncomputable section

/-- A120326: Cumulative sum of the remainders when dividing primes by 3.

Offset 1, canonical program `A120326.P4919459287997436659`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120326 (n : ℕ) : ℤ :=
  A120326.P4919459287997436659.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120326.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120439.P4767351886391421295

`A105825(p?[A000040(n+1)+2])-2`
-/

namespace A120439.P4767351886391421295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105825 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 2

end

end A120439.P4767351886391421295

noncomputable section

/-- A120439: Average of twin-prime pairs modulo 5.

Offset 1, canonical program `A120439.P4767351886391421295`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A120439 (n : ℕ) : ℤ :=
  A120439.P4767351886391421295.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A120439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120588.P13914353350146187734

`abs(A115140(n))`
-/

namespace A120588.P13914353350146187734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A115140 n|

end

end A120588.P13914353350146187734

noncomputable section

/-- A120588: G.f. is 1 + x*c(x), where c(x) is the g.f. of the Catalan numbers (A000108).

Offset 0, canonical program `A120588.P13914353350146187734`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A120588 (n : ℕ) : ℤ :=
  A120588.P13914353350146187734.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A120588.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120769.P14757464538390453997

`a(A035327(n))*A080079(n)` with `a(0)=1`
-/

namespace A120769.P14757464538390453997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A035327 n).toNat * A080079 n

end

end A120769.P14757464538390453997

noncomputable section

/-- A120769: Starting from a(0)=1, recursively a(2^k+r) = (2^k-r)*a(2^k-1-r), 0<=r < 2^(k+1).

Offset 0, canonical program `A120769.P14757464538390453997`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120769 (n : ℕ) : ℤ :=
  A120769.P14757464538390453997.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120778.P3390227642440229667

`A046161(n+1)-A001790(n+1)`
-/

namespace A120778.P3390227642440229667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046161 (n + 1) - A001790 (n + 1)

end

end A120778.P3390227642440229667

noncomputable section

/-- A120778: Numerators of partial sums of Catalan numbers scaled by powers of 1/4.

Offset 0, canonical program `A120778.P3390227642440229667`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A120778 (n : ℕ) : ℤ :=
  A120778.P3390227642440229667.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A120778.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120944.P15601852327349088346

`eq[A005171(n+1), A051903(n+1)]+1`
-/

namespace A120944.P15601852327349088346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A120944.P15601852327349088346

noncomputable section

/-- A120944: Composite squarefree numbers.

Offset 1, canonical program `A120944.P15601852327349088346`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120944 (n : ℕ) : ℤ :=
  (A120944.P15601852327349088346.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120944.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120985.P2869092826059721839

`∑{#}[n, C(n, #)*A367112(#)]`
-/

namespace A120985.P2869092826059721839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A367112 k

end

end A120985.P2869092826059721839

noncomputable section

/-- A120985: Number of ternary trees with n edges and having no vertices of degree 2. A ternary tree is a rooted tree in which each vertex has at most three children and each child of a vertex is designated as its left or middle or right child.

Offset 0, canonical program `A120985.P2869092826059721839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. -/
def A120985 (n : ℕ) : ℤ :=
  A120985.P2869092826059721839.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. -/
def A120985.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121002.P11480597165247636129

`A046714(n)/gcd(A000351(n), A046714(n))`
-/

namespace A121002.P11480597165247636129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046714 n : ℚ) / (Int.gcd (A000351 n) (A046714 n) : ℚ)

end

end A121002.P11480597165247636129

noncomputable section

/-- A121002: Numerators of partial sums of Catalan numbers scaled by powers of 1/5.

Offset 0, canonical program `A121002.P11480597165247636129`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A121002 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A121002.P11480597165247636129.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A121002.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121003.P1301101587900139317

`A000351(n)/gcd(A000351(n), A046714(n))`
-/

namespace A121003.P1301101587900139317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000351 n : ℚ) / (Int.gcd (A000351 n) (A046714 n) : ℚ)

end

end A121003.P1301101587900139317

noncomputable section

/-- A121003: Denominators of partial sums of Catalan numbers scaled by powers of 1/5.

Offset 0, canonical program `A121003.P1301101587900139317`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A121003 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A121003.P1301101587900139317.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A121003.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121242.P521193072759192962

`∑[A085976(1+n)]`
-/

namespace A121242.P521193072759192962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085976 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121242.P521193072759192962

noncomputable section

/-- A121242: Number of 2's in first n primes.

Offset 1, canonical program `A121242.P521193072759192962`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121242 (n : ℕ) : ℤ :=
  A121242.P521193072759192962.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121242.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121343.P4155292252380405521

`(A001611(n)-1)%A000217(A028310(n))`
-/

namespace A121343.P4155292252380405521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001611 n - 1) (A000217 (A028310 n).toNat)

end

end A121343.P4155292252380405521

noncomputable section

/-- A121343: a(n) = Fibonacci(n) mod n(n+1)/2.

Offset 0, canonical program `A121343.P4155292252380405521`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A121343 (n : ℕ) : ℤ :=
  A121343.P4155292252380405521.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A121343.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121447.P1797565767739298032

`Δ[A006630(n)]-record[A000139(n)]`
-/

namespace A121447.P1797565767739298032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006630 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000139 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A121447.P1797565767739298032

noncomputable section

/-- A121447: Level of the first leaf (in preorder traversal) of a ternary tree, summed over all ternary trees with n edges. A ternary tree is a rooted tree in which each vertex has at most three children and each child of a vertex is designated as its left or middle or right child.

Offset 1, canonical program `A121447.P1797565767739298032`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A121447 (n : ℕ) : ℤ :=
  A121447.P1797565767739298032.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A121447.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121455.P9993949302773689099

`and(5, (n+1)²)*A115607(n+1)`
-/

namespace A121455.P9993949302773689099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 5 ((n + 1) ^ 2) : ℤ) * A115607 (n + 1)

end

end A121455.P9993949302773689099

noncomputable section

/-- A121455: Expansion of q*(phi(-q)psi(q^4))^2 in powers of q where phi(), psi() are Ramanujan theta functions.

Offset 1, canonical program `A121455.P9993949302773689099`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121455 (n : ℕ) : ℤ :=
  A121455.P9993949302773689099.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121455.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121456.P5897424446692227850

`(-1)^(n+2)*A111932(n+1)`
-/

namespace A121456.P5897424446692227850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 2) * A111932 (n + 1)

end

end A121456.P5897424446692227850

noncomputable section

/-- A121456: Expansion of q*(psi(-q)*psi(-q^3))^2 in powers of q where psi() is a Ramanujan theta function.

Offset 1, canonical program `A121456.P5897424446692227850`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A111932, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A121456 (n : ℕ) : ℤ :=
  A121456.P5897424446692227850.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A111932, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A121456.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A121460.P8061094597956874412

`2*A125171(n)-A125172(n+1)`
-/

namespace A121460.P8061094597956874412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A125171 n - A125172 (n + 1)

end

end A121460.P8061094597956874412

noncomputable section

/-- A121460: Triangle read by rows: T(n,k) is the number of nondecreasing Dyck paths of semilength n, having k returns to the x-axis (1<=k<=n).

Offset 1, canonical program `A121460.P8061094597956874412`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121460 (n : ℕ) : ℤ :=
  A121460.P8061094597956874412.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121460.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121479.P12523290855419051886

`A253145(lt[3, A069903(n+1)])`
-/

namespace A121479.P12523290855419051886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A121479.P12523290855419051886

noncomputable section

/-- A121479: Triangular numbers with more than three distinct prime factors.

Offset 1, canonical program `A121479.P12523290855419051886`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A121479 (n : ℕ) : ℤ :=
  A121479.P12523290855419051886.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A121479.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121536.P6253262290429947505

`A077107(n)^(1/3)`
-/

namespace A121536.P6253262290429947505
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A077107 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A121536.P6253262290429947505

noncomputable section

/-- A121536: Smallest m such that m^3 >= n^2.

Offset 1, canonical program `A121536.P6253262290429947505`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A077107, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A121536 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A121536.P6253262290429947505.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A077107, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A121536.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A121543.P10944832784654695596

`eq[2, 3-a(A049084(n))]` with `a(0)=1`
-/

namespace A121543.P10944832784654695596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  3 - f2 (A049084 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A121543.P10944832784654695596

noncomputable section

/-- A121543: "If k appears then the k-th prime doesn't", with a(1)=1.

Offset 1, canonical program `A121543.P10944832784654695596`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8936 terms. -/
def A121543 (n : ℕ) : ℤ :=
  (A121543.P10944832784654695596.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8936 terms. -/
def A121543.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121547.P13517221816394167788

`A000292(A003056(n))*A097805(n)`
-/

namespace A121547.P13517221816394167788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A003056 n).toNat * A097805 n

end

end A121547.P13517221816394167788

noncomputable section

/-- A121547: Fourth slice along the 1-2-plane in the cube a(m,n,o) = a(m-1,n,o) + a(m,n-1,o) + a(m,n,o-1) for which the first slice is Pascal's triangle (slice read by antidiagonals).

Offset 0, canonical program `A121547.P13517221816394167788`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121547 (n : ℕ) : ℤ :=
  A121547.P13517221816394167788.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121547.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121561.P7602332374374034175

`min(A072491(n), A072491(n+1))`
-/

namespace A121561.P7602332374374034175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  min (A072491 n) (A072491 (n + 1))

end

end A121561.P7602332374374034175

noncomputable section

/-- A121561: The number of iterations of "subtract the largest prime less than or equal to the current value" to go from n to the limiting value 0 or 1.

Offset 1, canonical program `A121561.P7602332374374034175`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121561 (n : ℕ) : ℤ :=
  A121561.P7602332374374034175.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121561.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121566.P11132643645040493819

`A034386(n)/round(atan(n+11))`
-/

namespace A121566.P11132643645040493819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034386 n : ℚ) / (SequenceMachineLib.roundAway (Real.arctan (n + 11 : ℝ)) : ℚ)

end

end A121566.P11132643645040493819

noncomputable section

/-- A121566: a(n) is the denominator of Sum_{i=1..n} i!/(i^2).

Offset 0, canonical program `A121566.P11132643645040493819`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. -/
def A121566 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A121566.P11132643645040493819.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. -/
def A121566.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121724.P556279945781271073

`∑{#}[n, 4^(n-#)*A120730(C(n+1, 2)+#)]`
-/

namespace A121724.P556279945781271073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (4 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (A120730 (Nat.choose (n + 1) 2 + k) : ℚ)

end

end A121724.P556279945781271073

noncomputable section

/-- A121724: Generalized central binomial coefficients for k=2.

Offset 0, canonical program `A121724.P556279945781271073`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120730, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A121724 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A121724.P556279945781271073.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120730, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A121724.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A121725.P3498750608143310193

`∑{#}[n, A120730(C(n+1, 2)+#)*9^(n-#)]`
-/

namespace A121725.P3498750608143310193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (A120730 (Nat.choose (n + 1) 2 + k) : ℚ) * (9 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ)

end

end A121725.P3498750608143310193

noncomputable section

/-- A121725: Generalized central coefficients for k=3.

Offset 0, canonical program `A121725.P3498750608143310193`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120730, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A121725 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A121725.P3498750608143310193.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120730, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A121725.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A121997.P11622556115852216074

`col(lt[n, A271668(n)])+1`
-/

namespace A121997.P11622556115852216074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271668 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) + 1

end

end A121997.P11622556115852216074

noncomputable section

/-- A121997: Count up to n, n times.

Offset 1, canonical program `A121997.P11622556115852216074`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A121997 (n : ℕ) : ℤ :=
  (A121997.P11622556115852216074.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A121997.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122102.P496506380246287387

`∑[A030514(1+n)]`
-/

namespace A122102.P496506380246287387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030514 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122102.P496506380246287387

noncomputable section

/-- A122102: a(n) = Sum_{k=1..n} prime(k)^4.

Offset 1, canonical program `A122102.P496506380246287387`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122102 (n : ℕ) : ℤ :=
  A122102.P496506380246287387.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122102.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122103.P16476719798324043149

`∑[A050997(1+n)]`
-/

namespace A122103.P16476719798324043149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050997 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122103.P16476719798324043149

noncomputable section

/-- A122103: Sum of the fifth powers of the first n primes.

Offset 1, canonical program `A122103.P16476719798324043149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122103 (n : ℕ) : ℤ :=
  A122103.P16476719798324043149.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122103.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122132.P6196238168151807624

`lt[0, A078461(1+n)]+1`
-/

namespace A122132.P6196238168151807624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078461 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A122132.P6196238168151807624

noncomputable section

/-- A122132: Squarefree numbers multiplied by binary powers.

Offset 1, canonical program `A122132.P6196238168151807624`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122132 (n : ℕ) : ℤ :=
  (A122132.P6196238168151807624.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122132.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122155.P17533266698539878574

`or(A035327(abs(1-n)), A053644(n))`
-/

namespace A122155.P17533266698539878574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A035327 |1 - (n : ℤ)|.toNat) (A053644 n)

end

end A122155.P17533266698539878574

noncomputable section

/-- A122155: Simple involution of natural numbers: List each block of (2^k)-1 numbers (from (2^k)+1 to 2^(k+1) - 1) in reverse order and fix the powers of 2.

Offset 0, canonical program `A122155.P17533266698539878574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122155 (n : ℕ) : ℤ :=
  A122155.P17533266698539878574.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122155.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122264.P4329901969960442374

`A001749(n+2)-(3*n+10)`
-/

namespace A122264.P4329901969960442374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001749 (n + 2) - (3 * n + 10 : ℤ)

end

end A122264.P4329901969960442374

noncomputable section

/-- A122264: a(n) = n + 1 + 2*Sum_{j=0..n-2} (j*prime(n-j+2) - (2*j-1)*prime(n-j+1) + (j-1)*prime(n-j)).

Offset 1, canonical program `A122264.P4329901969960442374`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122264 (n : ℕ) : ℤ :=
  A122264.P4329901969960442374.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122264.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122432.P16515211422386222308

`-A089594(A004736(n+1))`
-/

namespace A122432.P16515211422386222308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A089594 (A004736 (n + 1)).toNat

end

end A122432.P16515211422386222308

noncomputable section

/-- A122432: Riordan array (1/(1+x)^3,x).

Offset 0, canonical program `A122432.P16515211422386222308`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122432 (n : ℕ) : ℤ :=
  A122432.P16515211422386222308.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122432.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122609.P7320944427291612846

`floor(∏[A014614(n+1)/A000040(n+1)])`
-/

namespace A122609.P7320944427291612846
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014614 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∏ j ∈ Finset.range (n + 1), f1 j⌋

end

end A122609.P7320944427291612846

noncomputable section

/-- A122609: Product of the first n 5-almost primes (A014614), divided by product of the first n primes, rounded down.

Offset 1, canonical program `A122609.P7320944427291612846`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 248 terms. -/
def A122609 (n : ℕ) : ℤ :=
  A122609.P7320944427291612846.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 248 terms. -/
def A122609.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122766.P7340364842892422262

`A008619(A108872(n+1))*A122765(n+1)`
-/

namespace A122766.P7340364842892422262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A108872 (n + 1)).toNat * A122765 (n + 1)

end

end A122766.P7340364842892422262

noncomputable section

/-- A122766: Triangle read by rows: let p(n, x) = x*p(n-1, x) - p(n-2, x), then T(n, x) = d^2/dx^2 (p(n, x)).

Offset 1, canonical program `A122766.P7340364842892422262`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A122766 (n : ℕ) : ℤ :=
  A122766.P7340364842892422262.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A122766.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122800.P16993477240022882628

`A045928(n+1)-n`
-/

namespace A122800.P16993477240022882628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045928 (n + 1) - (n : ℤ)

end

end A122800.P16993477240022882628

noncomputable section

/-- A122800: A P_4-stuttered arithmetic progression with a(n+1)=a(n) if n is square, a(n+1)=a(n)+2 otherwise.

Offset 1, canonical program `A122800.P16993477240022882628`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045928, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A122800 (n : ℕ) : ℤ :=
  A122800.P16993477240022882628.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045928, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A122800.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A122898.P5471190250916242493

`2*A098409(n)-A104455(n)`
-/

namespace A122898.P5471190250916242493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A098409 n - A104455 n

end

end A122898.P5471190250916242493

noncomputable section

/-- A122898: Expansion of (sqrt(21*x^2 - 10*x + 1) + 7*x - 1) / (2*x*(1 - 7*x)).

Offset 0, canonical program `A122898.P5471190250916242493`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A122898 (n : ℕ) : ℤ :=
  A122898.P5471190250916242493.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A122898.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122930.P328468433382286565

`A106345(A089633(n))*A193588(n)`
-/

namespace A122930.P328468433382286565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106345 (A089633 n).toNat * A193588 n

end

end A122930.P328468433382286565

noncomputable section

/-- A122930: Triangular array read by rows, based on the Zeckendorf expansion of n and containing the golden rectangle sequence A001629.

Offset 1, canonical program `A122930.P328468433382286565`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A122930 (n : ℕ) : ℤ :=
  A122930.P328468433382286565.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A122930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123097.P13007430214341374216

`A097805(n+1)+A003506(n+1)`
-/

namespace A123097.P13007430214341374216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (n + 1) + A003506 (n + 1)

end

end A123097.P13007430214341374216

noncomputable section

/-- A123097: Triangle read by rows: T(n,k) = binomial(n-2, k-1) + n*binomial(n-1, k-1), 1 <= k <= n, starting with T(1, 1) = 1.

Offset 1, canonical program `A123097.P13007430214341374216`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123097 (n : ℕ) : ℤ :=
  A123097.P13007430214341374216.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123097.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123123.P9221843181498262709

`A052147(n+1)+C(n, n²)`
-/

namespace A123123.P9221843181498262709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1) + (Nat.choose n (n ^ 2) : ℤ)

end

end A123123.P9221843181498262709

noncomputable section

/-- A123123: Numbers m such that m mod k = 2 for only one integer k in 2..m.

Offset 1, canonical program `A123123.P9221843181498262709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123123 (n : ℕ) : ℤ :=
  A123123.P9221843181498262709.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123123.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123157.P59214810160797745

`∑{digits}[A001248(1+n), #]`
-/

namespace A123157.P59214810160797745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A123157.P59214810160797745

noncomputable section

/-- A123157: Sum of digits of the squares of prime numbers.

Offset 1, canonical program `A123157.P59214810160797745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123157 (n : ℕ) : ℤ :=
  (A123157.P59214810160797745.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123157.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123202.P17354685668513878885

`A002720(A002262(n))*A021009(n)`
-/

namespace A123202.P17354685668513878885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002720 (A002262 n).toNat * A021009 n

end

end A123202.P17354685668513878885

noncomputable section

/-- A123202: Triangle of coefficients of n!*(1 - x)^n*L_n(x/(1 - x)), where L_n(x) is the Laguerre polynomial.

Offset 0, canonical program `A123202.P17354685668513878885`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1796 terms. -/
def A123202 (n : ℕ) : ℤ :=
  A123202.P17354685668513878885.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1796 terms. -/
def A123202.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123225.P10747356342280397472

`A094587(n)*A100100(A007401(n+1))`
-/

namespace A123225.P10747356342280397472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n * A100100 (A007401 (n + 1)).toNat

end

end A123225.P10747356342280397472

noncomputable section

/-- A123225: Triangle read by rows: T(n,d) = (n!/d!)*(n+1)*binomial(2n-d+1,n+1)/(n-d+1) (0 <= d <= n).

Offset 0, canonical program `A123225.P10747356342280397472`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1431 terms. -/
def A123225 (n : ℕ) : ℤ :=
  A123225.P10747356342280397472.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1431 terms. -/
def A123225.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123324.P9474558022241646434

`∑[A123323(1+n)]`
-/

namespace A123324.P9474558022241646434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123323 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123324.P9474558022241646434

noncomputable section

/-- A123324: Number of integer-sided triangles with all sides <= n and sides relatively prime.

Offset 1, canonical program `A123324.P9474558022241646434`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123324 (n : ℕ) : ℤ :=
  A123324.P9474558022241646434.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123331.P9518979506076851162

`abs(A122860(n+1))`
-/

namespace A123331.P9518979506076851162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A122860 (n + 1)|

end

end A123331.P9518979506076851162

noncomputable section

/-- A123331: Expansion of (c(q)^2/(3c(q^2))-1)/2 in powers of q where c(q) is a cubic AGM function.

Offset 1, canonical program `A123331.P9518979506076851162`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123331 (n : ℕ) : ℤ :=
  A123331.P9518979506076851162.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123331.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123346.P4310133584901504711

`A011972(n-col(n)-col(n))`
-/

namespace A123346.P4310133584901504711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011972 ((n : ℤ) - (SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triCol n : ℤ)).toNat

end

end A123346.P4310133584901504711

noncomputable section

/-- A123346: Mirror image of the Bell triangle A011971, which is also called the Pierce triangle or Aitken's array.

Offset 0, canonical program `A123346.P4310133584901504711`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4005 terms. -/
def A123346 (n : ℕ) : ℤ :=
  A123346.P4310133584901504711.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4005 terms. -/
def A123346.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123349.P12803887433296171009

`A097805(n)²+T(n-1,k)` with `a(0)=1`
-/

namespace A123349.P12803887433296171009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A097805 n ^ 2 + SequenceMachineLib.triUp a n

end

end A123349.P12803887433296171009

noncomputable section

/-- A123349: Square array of Kekulé numbers for the mirror-symmetrical chevrons Ch(m,n), read by antidiagonals (m,n >= 0).

Offset 0, canonical program `A123349.P12803887433296171009`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A123349 (n : ℕ) : ℤ :=
  A123349.P12803887433296171009.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A123349.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123391.P14278798101572482025

`∑{e}[1+n, A061397(#)]`
-/

namespace A123391.P14278798101572482025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A061397 (Nat.factorization (f1 n) p)

end

end A123391.P14278798101572482025

noncomputable section

/-- A123391: a(n) = sum of exponents that are primes in the prime factorization of n.

Offset 1, canonical program `A123391.P14278798101572482025`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123391 (n : ℕ) : ℤ :=
  A123391.P14278798101572482025.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123391.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123530.P615654561327355968

`A112848(2*n+1)`
-/

namespace A123530.P615654561327355968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112848 (2 * n + 1)

end

end A123530.P615654561327355968

noncomputable section

/-- A123530: Expansion of q^(-1/2)*eta(q)^2*eta(q^6)^3/(eta(q^2)*eta(q^3)^2) in powers of q.

Offset 0, canonical program `A123530.P615654561327355968`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112848, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A123530 (n : ℕ) : ℤ :=
  A123530.P615654561327355968.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112848, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A123530.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A123554.P6569602096052592708

`A034870(eq[1, A010054(A000196(n))])`
-/

namespace A123554.P6569602096052592708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A000196 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034870 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A123554.P6569602096052592708

noncomputable section

/-- A123554: Triangle read by rows: T(n,k) = number of labeled loopless digraphs with n nodes and k arcs (n >= 1, 0 <= k <= n*(n-1)).

Offset 1, canonical program `A123554.P6569602096052592708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 924 terms. -/
def A123554 (n : ℕ) : ℤ :=
  A123554.P6569602096052592708.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 924 terms. -/
def A123554.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123564.P1394772909650347147

`A096270(Δ[n²])+Δ[A001965(n)]`
-/

namespace A123564.P1394772909650347147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001965 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (f2 (n + 1) - f2 n)

end

end A123564.P1394772909650347147

noncomputable section

/-- A123564: The infinite Fibonacci word reencoded by writing successive non-overlapping pairs of bits as decimal numbers.

Offset 1, canonical program `A123564.P1394772909650347147`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A123564 (n : ℕ) : ℤ :=
  A123564.P1394772909650347147.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A123564.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123737.P586469183867328966

`n+1-2*A083036(n+1)`
-/

namespace A123737.P586469183867328966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - 2 * A083036 (n + 1)

end

end A123737.P586469183867328966

noncomputable section

/-- A123737: Partial sums of (-1)^floor(n*sqrt(2)).

Offset 1, canonical program `A123737.P586469183867328966`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123737 (n : ℕ) : ℤ :=
  A123737.P586469183867328966.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123746.P16894433032032204393

`A091520(n)/A001316(n)`
-/

namespace A123746.P16894433032032204393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091520 n : ℚ) / (A001316 n : ℚ)

end

end A123746.P16894433032032204393

noncomputable section

/-- A123746: Numerators of partial sums of a series for 1/sqrt(2).

Offset 0, canonical program `A123746.P16894433032032204393`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A123746 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A123746.P16894433032032204393.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A123746.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123747.P11724577684491997392

`A144635(n)/gcd(A000351(n), A144635(n))`
-/

namespace A123747.P11724577684491997392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144635 n : ℚ) / (Int.gcd (A000351 n) (A144635 n) : ℚ)

end

end A123747.P11724577684491997392

noncomputable section

/-- A123747: Numerators of partial sums of a series for sqrt(5).

Offset 0, canonical program `A123747.P11724577684491997392`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A123747 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A123747.P11724577684491997392.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A123747.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123748.P791566555730532304

`A000351(n)/gcd(A000351(n), A144635(n))`
-/

namespace A123748.P791566555730532304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000351 n : ℚ) / (Int.gcd (A000351 n) (A144635 n) : ℚ)

end

end A123748.P791566555730532304

noncomputable section

/-- A123748: Denominators of partial sums of a series for sqrt(5).

Offset 0, canonical program `A123748.P791566555730532304`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A123748 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A123748.P791566555730532304.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A123748.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123863.P1353437602911175689

`A010892(n)*A112848(n+1)`
-/

namespace A123863.P1353437602911175689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A112848 (n + 1)

end

end A123863.P1353437602911175689

noncomputable section

/-- A123863: Expansion of (c(q^3) - c(q^6) - 2*c(q^12)) / 3 in powers of q where c(q) is a cubic AGM theta function.

Offset 1, canonical program `A123863.P1353437602911175689`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123863 (n : ℕ) : ℤ :=
  A123863.P1353437602911175689.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123863.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123864.P2053376001183682238

`A035175(floor(sqrt(n²+1)))`
-/

namespace A123864.P2053376001183682238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035175 (Nat.sqrt (n ^ 2 + 1))

end

end A123864.P2053376001183682238

noncomputable section

/-- A123864: Expansion of (eta(q^3) * eta(q^5))^2 / (eta(q) * eta(q^15)) in powers of q.

Offset 0, canonical program `A123864.P2053376001183682238`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123864 (n : ℕ) : ℤ :=
  A123864.P2053376001183682238.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123864.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123955.P10277456171846234482

`∑{#}[n, (-1)^(n-#)*C(n, #)*A123954(#+1)]`
-/

namespace A123955.P10277456171846234482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A123954 (k + 1) : ℚ)

end

end A123955.P10277456171846234482

noncomputable section

/-- A123955: Expansion of g.f.: x^5/( (1-3*x) * (1-2*x) * (1-4*x) * (1-6*x+6*x^2) ).

Offset 1, canonical program `A123955.P10277456171846234482`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 124 terms. -/
def A123955 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A123955.P10277456171846234482.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 124 terms. -/
def A123955.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123976.P17596081695645912205

`eq[1, A000007(A002752(n+1))]+1`
-/

namespace A123976.P17596081695645912205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A002752 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A123976.P17596081695645912205

noncomputable section

/-- A123976: Numbers k such that Fibonacci(k-1) is divisible by k.

Offset 1, canonical program `A123976.P17596081695645912205`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 617 terms. -/
def A123976 (n : ℕ) : ℤ :=
  (A123976.P17596081695645912205.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 617 terms. -/
def A123976.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124192.P10155367062783563682

`floor(p?[A186301(n+1)]/8)`
-/

namespace A124192.P10155367062783563682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 8⌋

end

end A124192.P10155367062783563682

noncomputable section

/-- A124192: Numbers k for which 8*k + 3 and 8*k + 5 are twin primes.

Offset 1, canonical program `A124192.P10155367062783563682`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1147 terms. -/
def A124192 (n : ℕ) : ℤ :=
  A124192.P10155367062783563682.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1147 terms. -/
def A124192.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124233.P15520155672179105043

`∑{d}[A028310(n), A289741(#)]`
-/

namespace A124233.P15520155672179105043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A289741 d

end

end A124233.P15520155672179105043

noncomputable section

/-- A124233: Expansion of psi(q) * phi(-q^10) * chi(-q^5) / chi(-q^2) in powers of q where phi(), psi(), chi() are Ramanujan theta functions.

Offset 0, canonical program `A124233.P15520155672179105043`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124233 (n : ℕ) : ℤ :=
  A124233.P15520155672179105043.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124233.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124258.P17147279065324572627

`A004737(n+1)²`
-/

namespace A124258.P17147279065324572627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (n + 1) ^ 2

end

end A124258.P17147279065324572627

noncomputable section

/-- A124258: Triangle whose rows are sequences of increasing and decreasing squares: 1; 1,4,1; 1,4,9,4,1; ...

Offset 1, canonical program `A124258.P17147279065324572627`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004737, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A124258 (n : ℕ) : ℤ :=
  A124258.P17147279065324572627.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004737, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A124258.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A124308.P7561852673300223316

`A000040(A014614(n+1))`
-/

namespace A124308.P7561852673300223316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A014614 (n + 1)).toNat

end

end A124308.P7561852673300223316

noncomputable section

/-- A124308: Primes indexed by 5-almost primes.

Offset 1, canonical program `A124308.P7561852673300223316`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014614, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A124308 (n : ℕ) : ℤ :=
  A124308.P7561852673300223316.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014614, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A124308.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A124309.P1787642187873317345

`A014614(A000040(n+1))`
-/

namespace A124309.P1787642187873317345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (A000040 (n + 1)).toNat

end

end A124309.P1787642187873317345

noncomputable section

/-- A124309: 5-almost primes indexed by primes.

Offset 1, canonical program `A124309.P1787642187873317345`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014614, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A124309 (n : ℕ) : ℤ :=
  A124309.P1787642187873317345.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014614, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A124309.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A124323.P2277335081626511248

`A007318(n)*A000296(A025581(n))`
-/

namespace A124323.P2277335081626511248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A000296 (A025581 n).toNat

end

end A124323.P2277335081626511248

noncomputable section

/-- A124323: Triangle read by rows: T(n,k) is the number of partitions of an n-set having k singleton blocks (0<=k<=n).

Offset 0, canonical program `A124323.P2277335081626511248`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. -/
def A124323 (n : ℕ) : ℤ :=
  A124323.P2277335081626511248.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. -/
def A124323.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124584.P4878718695736530326

`A045344(lt[7, A046933(n+1)])`
-/

namespace A124584.P4878718695736530326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A124584.P4878718695736530326

noncomputable section

/-- A124584: Primes p such that q-p >= 10, where q is the next prime after p.

Offset 1, canonical program `A124584.P4878718695736530326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A124584 (n : ℕ) : ℤ :=
  A124584.P4878718695736530326.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A124584.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124587.P17225293575173405852

`A065091(lt[14, A001223(n+1)])`
-/

namespace A124587.P17225293575173405852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A124587.P17225293575173405852

noncomputable section

/-- A124587: Primes p such that q-p >= 16, where q is the next prime after p.

Offset 1, canonical program `A124587.P17225293575173405852`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2180 terms. -/
def A124587 (n : ℕ) : ℤ :=
  A124587.P17225293575173405852.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2180 terms. -/
def A124587.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124590.P9726089580163058676

`A000040(lt[A046933(n+1), 6]+1)`
-/

namespace A124590.P9726089580163058676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A124590.P9726089580163058676

noncomputable section

/-- A124590: Primes p such that q-p <= 6, where q is the next prime after p.

Offset 1, canonical program `A124590.P9726089580163058676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4546 terms. -/
def A124590 (n : ℕ) : ℤ :=
  A124590.P9726089580163058676.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4546 terms. -/
def A124590.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124591.P11071001117183147658

`A000040(lt[A001223(1+n), 10]+1)`
-/

namespace A124591.P11071001117183147658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (1 + n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A124591.P11071001117183147658

noncomputable section

/-- A124591: Primes p such that q-p <= 8, where q is the next prime after p.

Offset 1, canonical program `A124591.P11071001117183147658`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A124591 (n : ℕ) : ℤ :=
  A124591.P11071001117183147658.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A124591.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124659.P412689728244301623

`abs(3-(p?[A040976(n+1)]+1)²)`
-/

namespace A124659.P412689728244301623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1) ^ 2|

end

end A124659.P412689728244301623

noncomputable section

/-- A124659: Twin prime products minus 2.

Offset 1, canonical program `A124659.P412689728244301623`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A124659 (n : ℕ) : ℤ :=
  A124659.P412689728244301623.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A124659.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124678.P6581241014402941286

`A111333(1+n)+2`
-/

namespace A124678.P6581241014402941286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (1 + n) + 2

end

end A124678.P6581241014402941286

noncomputable section

/-- A124678: Number of conjugacy classes in PSL_2(p), p = prime(n).

Offset 1, canonical program `A124678.P6581241014402941286`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124678 (n : ℕ) : ℤ :=
  A124678.P6581241014402941286.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124678.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124748.P5609394966842096316

`A000523(n+1)-A124737(n)`
-/

namespace A124748.P5609394966842096316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 1) - A124737 n

end

end A124748.P5609394966842096316

noncomputable section

/-- A124748: Table where row n has k C(n,k) times, in reverse order.

Offset 0, canonical program `A124748.P5609394966842096316`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A124748 (n : ℕ) : ℤ :=
  A124748.P5609394966842096316.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A124748.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124757.P17144267365258157827

`a(floor(n/2))+A000120(n)-1` with `a(0)=0`
-/

namespace A124757.P17144267365258157827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + (A000120 n - 1)

end

end A124757.P17144267365258157827

noncomputable section

/-- A124757: Zero-based weighted sum of compositions in standard order.

Offset 0, canonical program `A124757.P17144267365258157827`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124757 (n : ℕ) : ℤ :=
  A124757.P17144267365258157827.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124757.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124800.P15743391072591733580

`A007318(n)*A007442(A002260(n+1))`
-/

namespace A124800.P15743391072591733580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A007442 (A002260 (n + 1)).toNat

end

end A124800.P15743391072591733580

noncomputable section

/-- A124800: Let M be a diagonal matrix with A007442 on the diagonal and P = Pascal's triangle as an infinite lower triangular matrix. Now read the triangle P*M by rows.

Offset 1, canonical program `A124800.P15743391072591733580`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124800 (n : ℕ) : ℤ :=
  A124800.P15743391072591733580.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124800.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124808.P6042525757287818510

`a(n-1)+A124897(n)²` with `a(0)=1`
-/

namespace A124808.P6042525757287818510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A124897 n ^ 2

end

end A124808.P6042525757287818510

noncomputable section

/-- A124808: Number of numbers k <= n such that k^2 + 1 is squarefree.

Offset 0, canonical program `A124808.P6042525757287818510`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124808 (n : ℕ) : ℤ :=
  A124808.P6042525757287818510.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124808.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124841.P1775165306399297179

`∑{#}[n, (-1)^(n-#)*C(n, #)*A005614(#)]`
-/

namespace A124841.P1775165306399297179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A005614 k : ℚ)

end

end A124841.P1775165306399297179

noncomputable section

/-- A124841: Inverse binomial transform of A005614, the rabbit sequence: (1, 0, 1, 1, 0, ...).

Offset 0, canonical program `A124841.P1775165306399297179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 272 terms. -/
def A124841 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A124841.P1775165306399297179.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 272 terms. -/
def A124841.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124853.P6201558340224196537

`record[A075743(A024896(n+1))*A087505(n+1)]`
-/

namespace A124853.P6201558340224196537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (A024896 (n + 1)).toNat * A087505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124853.P6201558340224196537

noncomputable section

/-- A124853: Numbers k such that 5k + 3 and 3k + 5 are primes.

Offset 1, canonical program `A124853.P6201558340224196537`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1050 terms. -/
def A124853 (n : ℕ) : ℤ :=
  A124853.P6201558340224196537.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1050 terms. -/
def A124853.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124926.P10503732977509829776

`A005043(A002262(n))*A007318(n)`
-/

namespace A124926.P10503732977509829776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005043 (A002262 n).toNat * A007318 n

end

end A124926.P10503732977509829776

noncomputable section

/-- A124926: Triangle read by rows: T(n,k) = binomial(n,k)*r(k), where r(k) are the Riordan numbers (r(k) = A005043(k); 0 <= k <= n).

Offset 0, canonical program `A124926.P10503732977509829776`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A124926 (n : ℕ) : ℤ :=
  A124926.P10503732977509829776.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A124926.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124942.P16309435582127969892

`∩[A014614(n+1)-5, A014614(n+1)]`
-/

namespace A124942.P16309435582127969892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1) - 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124942.P16309435582127969892

noncomputable section

/-- A124942: Numbers k such that k and k+5 are 5-almost primes.

Offset 1, canonical program `A124942.P16309435582127969892`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 633 terms. -/
def A124942 (n : ℕ) : ℤ :=
  (A124942.P16309435582127969892.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 633 terms. -/
def A124942.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125059.P17901942141546187300

`∑{digits}[A006882(n), A055642(#)]`
-/

namespace A125059.P17901942141546187300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A055642 x).sum

end

end A125059.P17901942141546187300

noncomputable section

/-- A125059: Number of digits in n!!.

Offset 0, canonical program `A125059.P17901942141546187300`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A125059 (n : ℕ) : ℤ :=
  A125059.P17901942141546187300.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A125059.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125072.P9656965543711352653

`∑{e}[1+n, A010054(#)]`
-/

namespace A125072.P9656965543711352653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A010054 (Nat.factorization (f1 n) p)

end

end A125072.P9656965543711352653

noncomputable section

/-- A125072: a(n) = number of exponents in the prime-factorization of n which are triangular numbers.

Offset 1, canonical program `A125072.P9656965543711352653`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125072 (n : ℕ) : ℤ :=
  A125072.P9656965543711352653.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125072.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125073.P701990710138125406

`∑{e}[n+1, #*A010054(#)]`
-/

namespace A125073.P701990710138125406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p : ℤ) * A010054 (Nat.factorization (f1 n) p)

end

end A125073.P701990710138125406

noncomputable section

/-- A125073: a(n) = sum of the exponents in the prime factorization of n which are triangular numbers.

Offset 1, canonical program `A125073.P701990710138125406`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125073 (n : ℕ) : ℤ :=
  A125073.P701990710138125406.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125073.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125235.P13924204334101341039

`2*A125233(n)-A125165(n)`
-/

namespace A125235.P13924204334101341039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A125233 n - A125165 n

end

end A125235.P13924204334101341039

noncomputable section

/-- A125235: Triangle with the partial column sums of the octagonal numbers.

Offset 1, canonical program `A125235.P13924204334101341039`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125235 (n : ℕ) : ℤ :=
  A125235.P13924204334101341039.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125235.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125573.P8670731320749188719

`A034139(n+1)`
-/

namespace A125573.P8670731320749188719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034139 (n + 1)

end

end A125573.P8670731320749188719

noncomputable section

/-- A125573: a(n) = number of n-digit terms with different sets of decimal digits in A108571.

Offset 1, canonical program `A125573.P8670731320749188719`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034139, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A125573 (n : ℕ) : ℤ :=
  A125573.P8670731320749188719.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034139, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A125573.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A125575.P7635791061298922058

`A000030(A001248(n+1))`
-/

namespace A125575.P7635791061298922058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A001248 (n + 1)).toNat

end

end A125575.P7635791061298922058

noncomputable section

/-- A125575: Initial digit of squares of primes.

Offset 1, canonical program `A125575.P7635791061298922058`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000030, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A125575 (n : ℕ) : ℤ :=
  A125575.P7635791061298922058.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000030, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A125575.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A125585.P572809714441068377

`A077264(n)+1`
-/

namespace A125585.P572809714441068377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077264 n + 1

end

end A125585.P572809714441068377

noncomputable section

/-- A125585: Array of constant-spaced integers read by antidiagonals.

Offset 1, canonical program `A125585.P572809714441068377`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125585 (n : ℕ) : ℤ :=
  A125585.P572809714441068377.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125585.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125695.P10847942083837744580

`A154825(n)*A280560(n)`
-/

namespace A125695.P10847942083837744580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154825 n * A280560 n

end

end A125695.P10847942083837744580

noncomputable section

/-- A125695: Expansion of (sqrt(1+2x+9x^2)+x-1)/(2x).

Offset 0, canonical program `A125695.P10847942083837744580`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A125695 (n : ℕ) : ℤ :=
  A125695.P10847942083837744580.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A125695.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126063.P4124651871844324285

`A013609(n)/A008459(n)*A176230(n)`
-/

namespace A126063.P4124651871844324285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013609 n : ℚ) / (A008459 n : ℚ) * (A176230 n : ℚ)

end

end A126063.P4124651871844324285

noncomputable section

/-- A126063: Triangle read by rows: see A128196 for definition.

Offset 0, canonical program `A126063.P4124651871844324285`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1773 terms. -/
def A126063 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A126063.P4124651871844324285.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1773 terms. -/
def A126063.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126080.P18429586900705969926

`A003557(1+n)*A055631(n+1)`
-/

namespace A126080.P18429586900705969926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (1 + n) * A055631 (n + 1)

end

end A126080.P18429586900705969926

noncomputable section

/-- A126080: a(n) = number of positive integers < n that are coprime to exactly one prime divisor of n.

Offset 1, canonical program `A126080.P18429586900705969926`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126080 (n : ℕ) : ℤ :=
  A126080.P18429586900705969926.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126080.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126087.P7049831299823712105

`∑{#}[n, 2^(n-#)*A120730(C(n+1, 2)+#)]`
-/

namespace A126087.P7049831299823712105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (2 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (A120730 (Nat.choose (n + 1) 2 + k) : ℚ)

end

end A126087.P7049831299823712105

noncomputable section

/-- A126087: Expansion of c(2*x^2)/(1-x*c(2*x^2)), where c(x) = (1-sqrt(1-4*x))/(2*x) is the g.f. of the Catalan numbers (A000108).

Offset 0, canonical program `A126087.P7049831299823712105`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120730, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A126087 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A126087.P7049831299823712105.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120730, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A126087.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A126185.P11307840141715013085

`(n-2)*A045445(A028310(n))/2`
-/

namespace A126185.P11307840141715013085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 2) * A045445 (A028310 n).toNat : ℚ) / 2

end

end A126185.P11307840141715013085

noncomputable section

/-- A126185: Number of nonroot nodes of outdegree 2 in all hex trees with n edges.

Offset 0, canonical program `A126185.P11307840141715013085`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A126185 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A126185.P11307840141715013085.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A126185.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126187.P870475647578612853

`A045445(3+n)-A002212(n+2)`
-/

namespace A126187.P870475647578612853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045445 (3 + n) - A002212 (n + 2)

end

end A126187.P870475647578612853

noncomputable section

/-- A126187: Sum of the levels of the first leaf (in the preorder traversal) over all hex trees with n edges.

Offset 1, canonical program `A126187.P870475647578612853`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A126187 (n : ℕ) : ℤ :=
  A126187.P870475647578612853.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A126187.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126208.P1909337783113813203

`∑{digits}[A000400(n), A011686(#)]`
-/

namespace A126208.P1909337783113813203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A011686 x).sum

end

end A126208.P1909337783113813203

noncomputable section

/-- A126208: Number of 6's in decimal expansion of 6^n.

Offset 0, canonical program `A126208.P1909337783113813203`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A126208 (n : ℕ) : ℤ :=
  A126208.P1909337783113813203.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A126208.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126217.P2537515140714382913

`A120730(n)²`
-/

namespace A126217.P2537515140714382913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120730 n ^ 2

end

end A126217.P2537515140714382913

noncomputable section

/-- A126217: Triangle read by rows: T(n,k) is the number of 321-avoiding permutations of {1,2,...,n} having longest increasing subsequence of length k (0<=k<=n).

Offset 0, canonical program `A126217.P2537515140714382913`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126217 (n : ℕ) : ℤ :=
  A126217.P2537515140714382913.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126217.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126329.P10461060411431134265

`p?[6*A008864(n+1)-1]`
-/

namespace A126329.P10461060411431134265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A008864 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A126329.P10461060411431134265

noncomputable section

/-- A126329: Primes of the form 6p+5 where p is a prime.

Offset 1, canonical program `A126329.P10461060411431134265`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2919 terms. -/
def A126329 (n : ℕ) : ℤ :=
  A126329.P10461060411431134265.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2919 terms. -/
def A126329.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126706.P5006578047068456127

`eq[A008683(n+1), A069513(n+1)]+1`
-/

namespace A126706.P5006578047068456127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069513 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A126706.P5006578047068456127

noncomputable section

/-- A126706: Positive integers which are neither squarefree integers nor prime powers.

Offset 1, canonical program `A126706.P5006578047068456127`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126706 (n : ℕ) : ℤ :=
  (A126706.P5006578047068456127.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127094.P8507406497036937056

`A004736(n+1)*A113998(n+1)`
-/

namespace A127094.P8507406497036937056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A113998 (n + 1)

end

end A127094.P8507406497036937056

noncomputable section

/-- A127094: Triangle, reversal of A127093.

Offset 1, canonical program `A127094.P8507406497036937056`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127094 (n : ℕ) : ℤ :=
  A127094.P8507406497036937056.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127094.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127149.P11956640148928272579

`record[(A001748(n+1)/3)%(n+1)]`
-/

namespace A127149.P11956640148928272579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A001748 (n + 1) : ℚ) / 3)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127149.P11956640148928272579

noncomputable section

/-- A127149: Records in A004648.

Offset 1, canonical program `A127149.P11956640148928272579`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1872 terms. -/
def A127149 (n : ℕ) : ℤ :=
  A127149.P11956640148928272579.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1872 terms. -/
def A127149.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127173.P9704276970555517423

`A007427(A010766(n+1))*A051731(n+1)`
-/

namespace A127173.P9704276970555517423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007427 (A010766 (n + 1)).toNat * A051731 (n + 1)

end

end A127173.P9704276970555517423

noncomputable section

/-- A127173: T(n,k) = A007427(n/k) if k divides n, T(n,k) = 0 otherwise.

Offset 1, canonical program `A127173.P9704276970555517423`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A127173 (n : ℕ) : ℤ :=
  A127173.P9704276970555517423.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A127173.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127268.P17708027369711731550

`A008475(1+n)%A028310(Δ[A024924(n)])`
-/

namespace A127268.P17708027369711731550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008475 (1 + n)) (A028310 (f1 (n + 1) - f1 n).toNat)

end

end A127268.P17708027369711731550

noncomputable section

/-- A127268: If the prime factorization of n is n = Product_{p|n} p^b(p,n) (p = distinct prime divisors of n, each b(p,n) is a positive integer), then a(n) is (Sum_{p|n} p^b(p,n)) taken mod (Sum_{p|n} p).

Offset 1, canonical program `A127268.P17708027369711731550`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127268 (n : ℕ) : ℤ :=
  A127268.P17708027369711731550.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127268.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127341.P14709455034491234769

`p?[A036439(n+14)-A036439(n+1)]`
-/

namespace A127341.P14709455034491234769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036439 (n + 14) - A036439 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A127341.P14709455034491234769

noncomputable section

/-- A127341: Primes that can be written as the sum of 13 consecutive primes.

Offset 1, canonical program `A127341.P14709455034491234769`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1274 terms. -/
def A127341 (n : ℕ) : ℤ :=
  A127341.P14709455034491234769.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1274 terms. -/
def A127341.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127349.P7412496947134571041

`A046301(n+2)+A000040(n+1)*A127345(n+2)`
-/

namespace A127349.P7412496947134571041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046301 (n + 2) + A000040 (n + 1) * A127345 (n + 2)

end

end A127349.P7412496947134571041

noncomputable section

/-- A127349: a(n) = Sum_{i=n..n+1} Sum_{j=i+1..n+2} Sum_{k=j+1..n+3} prime(i)*prime(j)*prime(k).

Offset 1, canonical program `A127349.P7412496947134571041`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A127349 (n : ℕ) : ℤ :=
  A127349.P7412496947134571041.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A127349.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127367.P16713287783412300096

`abs(A259361(n)+Δ[A237420(n)])`
-/

namespace A127367.P16713287783412300096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A259361 n + (f1 (n + 1) - f1 n)|

end

end A127367.P16713287783412300096

noncomputable section

/-- A127367: Inverse permutation to A127366.

Offset 0, canonical program `A127367.P16713287783412300096`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A127367 (n : ℕ) : ℤ :=
  A127367.P16713287783412300096.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A127367.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127413.P10739398690802031303

`∑{d}[n+1, A008683(#)*A357210((n+1)/#)]`
-/

namespace A127413.P10739398690802031303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A357210 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A127413.P10739398690802031303

noncomputable section

/-- A127413: a(n) = Sum_{1<=k<=n, gcd(k,n)=1} prime(k).

Offset 1, canonical program `A127413.P10739398690802031303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127413 (n : ℕ) : ℤ :=
  A127413.P10739398690802031303.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127413.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127514.P8561216037142629593

`A007318(n)*A054527(n+1)`
-/

namespace A127514.P8561216037142629593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A054527 (n + 1)

end

end A127514.P8561216037142629593

noncomputable section

/-- A127514: Binomial transform of an infinite lower triangular matrix with mu(n) in the diagonal.

Offset 1, canonical program `A127514.P8561216037142629593`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127514 (n : ℕ) : ℤ :=
  A127514.P8561216037142629593.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127514.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127531.P14165418015592472488

`Δ[A000984(n)-A000778(n)]`
-/

namespace A127531.P14165418015592472488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n - A000778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127531.P14165418015592472488

noncomputable section

/-- A127531: Number of jumps in all binary trees with n edges.

Offset 1, canonical program `A127531.P14165418015592472488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A127531 (n : ℕ) : ℤ :=
  A127531.P14165418015592472488.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A127531.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127533.P9803744706263550024

`Δ[A000984(n)]-A002057(n)`
-/

namespace A127533.P9803744706263550024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A002057 n

end

end A127533.P9803744706263550024

noncomputable section

/-- A127533: Sum of jump-lengths of all binary trees with n edges.

Offset 0, canonical program `A127533.P9803744706263550024`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A127533 (n : ℕ) : ℤ :=
  A127533.P9803744706263550024.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A127533.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127540.P10408115391990332246

`Δ[A032357(n)+n%2]`
-/

namespace A127540.P10408115391990332246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032357 n + ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127540.P10408115391990332246

noncomputable section

/-- A127540: Number of odd-length branches starting at the root in all ordered trees with n edges.

Offset 0, canonical program `A127540.P10408115391990332246`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A127540 (n : ℕ) : ℤ :=
  A127540.P10408115391990332246.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A127540.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127575.P17578973089902924162

`eq[2*(n+1), A258835(2*n+1)]`
-/

namespace A127575.P17578973089902924162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258835 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A127575.P17578973089902924162

noncomputable section

/-- A127575: Numbers n such that 16n+15 is prime.

Offset 1, canonical program `A127575.P17578973089902924162`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1837 terms. -/
def A127575 (n : ℕ) : ℤ :=
  (A127575.P17578973089902924162.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1837 terms. -/
def A127575.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127577.P11075540278953794001

`floor(A127578(2+n)/32)`
-/

namespace A127577.P11075540278953794001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A127578 (2 + n) : ℚ) / 32⌋

end

end A127577.P11075540278953794001

noncomputable section

/-- A127577: Numbers n for which 32n+31 is prime.

Offset 1, canonical program `A127577.P11075540278953794001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A127577 (n : ℕ) : ℤ :=
  A127577.P11075540278953794001.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A127577.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127639.P15711616653257414351

`∑{d}[A127093(n+1), A007444(#)]`
-/

namespace A127639.P15711616653257414351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A127639.P15711616653257414351

noncomputable section

/-- A127639: A051731 * A127640, where A127640 = infinite lower triangular matrix with the sequence of primes in the main diagonal and the rest zeros.

Offset 1, canonical program `A127639.P15711616653257414351`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127639 (n : ℕ) : ℤ :=
  A127639.P15711616653257414351.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127639.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127677.P11101352811023800668

`A110162(n)+A000007(n)`
-/

namespace A127677.P11101352811023800668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110162 n + A000007 n

end

end A127677.P11101352811023800668

noncomputable section

/-- A127677: Scaled coefficient table for Chebyshev polynomials 2*T(2*n, sqrt(x)/2) (increasing even scaled powers, without zero entries).

Offset 0, canonical program `A127677.P11101352811023800668`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127677 (n : ℕ) : ℤ :=
  A127677.P11101352811023800668.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127677.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127718.P13757105329098858942

`(1+col(n))*A055248(n)`
-/

namespace A127718.P13757105329098858942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + SequenceMachineLib.triCol n : ℤ) * A055248 n

end

end A127718.P13757105329098858942

noncomputable section

/-- A127718: A007318 * A002260 as infinite lower triangular matrices; A002260 = [1; 1,2; 1,2,3; ...].

Offset 1, canonical program `A127718.P13757105329098858942`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127718 (n : ℕ) : ℤ :=
  A127718.P13757105329098858942.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127718.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127740.P7796145615112120002

`A095149(n)+a(n-1)+T(n-1,k-1)` with `a(0)=1`
-/

namespace A127740.P7796145615112120002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A095149 n + (a (n - 1) + SequenceMachineLib.triUpLeft a n)

end

end A127740.P7796145615112120002

noncomputable section

/-- A127740: Natural number transform of Aitken's triangle.

Offset 0, canonical program `A127740.P7796145615112120002`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3901 terms. -/
def A127740 (n : ℕ) : ℤ :=
  A127740.P7796145615112120002.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3901 terms. -/
def A127740.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127804.P1283349887769768592

`A045654(n+1)/2`
-/

namespace A127804.P1283349887769768592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045654 (n + 1) : ℚ) / 2

end

end A127804.P1283349887769768592

noncomputable section

/-- A127804: a(2n) = 2^(2n), a(2n+1) = 2^(2n+1) + a(n).

Offset 0, canonical program `A127804.P1283349887769768592`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045654, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127804 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A127804.P1283349887769768592.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045654, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127804.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A127846.P14279537381663799616

`floor(A086871(n)/2)`
-/

namespace A127846.P14279537381663799616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A086871 n : ℚ) / 2⌋

end

end A127846.P14279537381663799616

noncomputable section

/-- A127846: Series reversion of x/(1+5x+4x^2).

Offset 0, canonical program `A127846.P14279537381663799616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A127846 (n : ℕ) : ℤ :=
  A127846.P14279537381663799616.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A127846.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127954.P6742921114133743302

`(1+col(n))*A097805(n)`
-/

namespace A127954.P6742921114133743302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + SequenceMachineLib.triCol n : ℤ) * A097805 n

end

end A127954.P6742921114133743302

noncomputable section

/-- A127954: Triangle, A097805 * A127648.

Offset 1, canonical program `A127954.P6742921114133743302`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127954 (n : ℕ) : ℤ :=
  A127954.P6742921114133743302.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127954.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128057.P8641986801379024060

`A057077(n)*A128014(n)`
-/

namespace A128057.P8641986801379024060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A128014 n

end

end A128057.P8641986801379024060

noncomputable section

/-- A128057: Expansion of (1+x)/sqrt(1+4x^2).

Offset 0, canonical program `A128057.P8641986801379024060`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A128057 (n : ℕ) : ℤ :=
  A128057.P8641986801379024060.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A128057.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128065.P6617849873532730236

`A007318(n)*A127948(n)`
-/

namespace A128065.P6617849873532730236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A127948 n

end

end A128065.P6617849873532730236

noncomputable section

/-- A128065: Binomial transform of A128064.

Offset 1, canonical program `A128065.P6617849873532730236`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128065 (n : ℕ) : ℤ :=
  A128065.P6617849873532730236.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128065.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128078.P385746566403988126

`A127733(n+1)-A048151(n+1)`
-/

namespace A128078.P385746566403988126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127733 (n + 1) - A048151 (n + 1)

end

end A128078.P385746566403988126

noncomputable section

/-- A128078: A002260 * A128064.

Offset 1, canonical program `A128078.P385746566403988126`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128078 (n : ℕ) : ℤ :=
  A128078.P385746566403988126.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128078.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128132.P7267817112159039402

`A051340(n)*A167374(n)`
-/

namespace A128132.P7267817112159039402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051340 n * A167374 n

end

end A128132.P7267817112159039402

noncomputable section

/-- A128132: A natural number transform, companion to A127701.

Offset 1, canonical program `A128132.P7267817112159039402`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128132 (n : ℕ) : ℤ :=
  A128132.P7267817112159039402.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128132.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128142.P9126956890442312540

`A104634(n+1)+C(A004736(n+1), 3)`
-/

namespace A128142.P9126956890442312540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104634 (n + 1) + (Nat.choose (A004736 (n + 1)).toNat 3 : ℤ)

end

end A128142.P9126956890442312540

noncomputable section

/-- A128142: A128132 * A122432 (unsigned).

Offset 1, canonical program `A128142.P9126956890442312540`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128142 (n : ℕ) : ℤ :=
  A128142.P9126956890442312540.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128142.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128175.P7586382992691236717

`A097805(n)+A137688(n)-∑[A097805(n)]`
-/

namespace A128175.P7586382992691236717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n + (A137688 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A128175.P7586382992691236717

noncomputable section

/-- A128175: Binomial transform of A128174.

Offset 1, canonical program `A128175.P7586382992691236717`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128175 (n : ℕ) : ℤ :=
  A128175.P7586382992691236717.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128175.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128180.P1437195698868379280

`A097807(n)*A209279(n+1)`
-/

namespace A128180.P1437195698868379280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A209279 (n + 1)

end

end A128180.P1437195698868379280

noncomputable section

/-- A128180: Triangle read by rows: A002260 * A097807 as infinite lower triangular matrices.

Offset 1, canonical program `A128180.P1437195698868379280`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128180 (n : ℕ) : ℤ :=
  A128180.P1437195698868379280.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128180.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128218.P17892042151444153462

`A186422(A198954(n))`
-/

namespace A128218.P17892042151444153462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186422 (A198954 n).toNat

end

end A128218.P17892042151444153462

noncomputable section

/-- A128218: First differences of A128217.

Offset 1, canonical program `A128218.P17892042151444153462`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128218 (n : ℕ) : ℤ :=
  A128218.P17892042151444153462.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128259.P12325578355127469057

`A127093(n+2)-Δ[A051731(n+1)]`
-/

namespace A128259.P12325578355127469057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 2) - (f1 (n + 1) - f1 n)

end

end A128259.P12325578355127469057

noncomputable section

/-- A128259: Inverse Moebius transform of A128229.

Offset 1, canonical program `A128259.P12325578355127469057`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A128259 (n : ℕ) : ℤ :=
  A128259.P12325578355127469057.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A128259.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128308.P17842185637218646687

`(A156644(n)+A125170(n))/2`
-/

namespace A128308.P17842185637218646687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156644 n + A125170 n : ℚ) / 2

end

end A128308.P17842185637218646687

noncomputable section

/-- A128308: Binomial transform of A128307.

Offset 1, canonical program `A128308.P17842185637218646687`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128308 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A128308.P17842185637218646687.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128308.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128407.P15216900642853578067

`∑{d}[A127648(n), A007427(#)]`
-/

namespace A128407.P15216900642853578067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127648 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007427 d

end

end A128407.P15216900642853578067

noncomputable section

/-- A128407: Triangle read by rows: T(n,n) = mobius(n) on the diagonal, zero elsewhere.

Offset 1, canonical program `A128407.P15216900642853578067`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128407 (n : ℕ) : ℤ :=
  A128407.P15216900642853578067.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128407.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128408.P3158238349057078599

`A051731(n+1)*A127507(n+1)`
-/

namespace A128408.P3158238349057078599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A127507 (n + 1)

end

end A128408.P3158238349057078599

noncomputable section

/-- A128408: Triangle read by rows: A128407 * A051731 as infinite lower triangular matrices.

Offset 1, canonical program `A128408.P3158238349057078599`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128408 (n : ℕ) : ℤ :=
  A128408.P3158238349057078599.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128408.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128437.P14087954865165796878

`floor(A001008(n+1)/(n+1))`
-/

namespace A128437.P14087954865165796878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001008 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A128437.P14087954865165796878

noncomputable section

/-- A128437: a(n) = floor((numerator of H(n))/n), where H(n) = Sum_{k=1..n} 1/k is the n-th harmonic number.

Offset 1, canonical program `A128437.P14087954865165796878`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A128437 (n : ℕ) : ℤ :=
  A128437.P14087954865165796878.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A128437.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128541.P11291704375790424598

`A058071(n)*A097806(n)`
-/

namespace A128541.P11291704375790424598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058071 n * A097806 n

end

end A128541.P11291704375790424598

noncomputable section

/-- A128541: Triangle, A097806 * A127647, read by rows.

Offset 0, canonical program `A128541.P11291704375790424598`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128541 (n : ℕ) : ℤ :=
  A128541.P11291704375790424598.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128541.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128544.P3680955686172368637

`A094436(n)+A094436(n+1)%A094437(n+1)`
-/

namespace A128544.P3680955686172368637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094436 n + Int.tmod (A094436 (n + 1)) (A094437 (n + 1))

end

end A128544.P3680955686172368637

noncomputable section

/-- A128544: A007318 * A128540.

Offset 0, canonical program `A128544.P3680955686172368637`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A128544 (n : ℕ) : ℤ :=
  A128544.P3680955686172368637.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A128544.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128585.P13154041954292014342

`A097808(n)*A104763(n+1)`
-/

namespace A128585.P13154041954292014342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097808 n * A104763 (n + 1)

end

end A128585.P13154041954292014342

noncomputable section

/-- A128585: Triangle read by rows: A007318^(-1) * A128541.

Offset 1, canonical program `A128585.P13154041954292014342`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128585 (n : ℕ) : ℤ :=
  A128585.P13154041954292014342.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128585.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128590.P16993943773611964593

`(A003057(n+2)-A209279(n+1))*A209279(n+1)`
-/

namespace A128590.P16993943773611964593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003057 (n + 2) - A209279 (n + 1)) * A209279 (n + 1)

end

end A128590.P16993943773611964593

noncomputable section

/-- A128590: Triangle read by rows, matrix product A128179 * A000012.

Offset 1, canonical program `A128590.P16993943773611964593`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128590 (n : ℕ) : ℤ :=
  A128590.P16993943773611964593.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128590.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128618.P12217587106022418935

`A104763(1+n)-T(n-1,k)` with `a(0)=1`
-/

namespace A128618.P12217587106022418935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A104763 (1 + n) - SequenceMachineLib.triUp a n

end

end A128618.P12217587106022418935

noncomputable section

/-- A128618: Triangle read by rows: A128174 * A127647 as infinite lower triangular matrices.

Offset 1, canonical program `A128618.P12217587106022418935`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128618 (n : ℕ) : ℤ :=
  A128618.P12217587106022418935.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128618.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128621.P10653779951619394494

`∑[A010054(n)]*A128174(n+1)`
-/

namespace A128621.P10653779951619394494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A128174 (n + 1)

end

end A128621.P10653779951619394494

noncomputable section

/-- A128621: A127648 * A128174 as an infinite lower triangular matrix.

Offset 1, canonical program `A128621.P10653779951619394494`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128621 (n : ℕ) : ℤ :=
  A128621.P10653779951619394494.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128621.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128715.P7289910566905276765

`A103516(n)+A014473(n)`
-/

namespace A128715.P7289910566905276765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103516 n + A014473 n

end

end A128715.P7289910566905276765

noncomputable section

/-- A128715: A131830 + A103451 - A000012 as infinite lower triangular matrices.

Offset 0, canonical program `A128715.P7289910566905276765`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128715 (n : ℕ) : ℤ :=
  A128715.P7289910566905276765.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128715.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128723.P2028417152259010325

`A040000(n)*A117641(n)`
-/

namespace A128723.P2028417152259010325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n * A117641 n

end

end A128723.P2028417152259010325

noncomputable section

/-- A128723: Number of skew Dyck paths of semilength n having no peaks at level 1.

Offset 0, canonical program `A128723.P2028417152259010325`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. -/
def A128723 (n : ℕ) : ℤ :=
  A128723.P2028417152259010325.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. -/
def A128723.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128743.P4794288623127083266

`A026376(A028310(n))-A026378(A028310(n))`
-/

namespace A128743.P4794288623127083266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026376 (A028310 n).toNat - A026378 (A028310 n).toNat

end

end A128743.P4794288623127083266

noncomputable section

/-- A128743: Number of UU's (i.e., doublerises) in all skew Dyck paths of semilength n.

Offset 0, canonical program `A128743.P4794288623127083266`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A128743 (n : ℕ) : ℤ :=
  A128743.P4794288623127083266.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A128743.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129110.P10021364429641887784

`1+A105523(2+n)`
-/

namespace A129110.P10021364429641887784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A105523 (2 + n)

end

end A129110.P10021364429641887784

noncomputable section

/-- A129110: A transformation of the Catalan sequence.

Offset 0, canonical program `A129110.P10021364429641887784`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 344 terms. -/
def A129110 (n : ℕ) : ℤ :=
  A129110.P10021364429641887784.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 344 terms. -/
def A129110.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129143.P15988714660412797946

`A137688(n)+A002262(n)`
-/

namespace A129143.P15988714660412797946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 n + A002262 n

end

end A129143.P15988714660412797946

noncomputable section

/-- A129143: Start with the empty sequence and append in step k the consecutive numbers 2^(k-1) to 2^(k-1)+k-1.

Offset 1, canonical program `A129143.P15988714660412797946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A129143 (n : ℕ) : ℤ :=
  A129143.P15988714660412797946.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A129143.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129180.P7619671228952585693

`Δ[A001108(n)-A123164(n)]`
-/

namespace A129180.P7619671228952585693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001108 n - A123164 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129180.P7619671228952585693

noncomputable section

/-- A129180: Total area below all Schroeder paths of semilength n.

Offset 0, canonical program `A129180.P7619671228952585693`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A129180 (n : ℕ) : ℤ :=
  A129180.P7619671228952585693.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A129180.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129231.P4429393398897307074

`Δ[A001951(n-1)+a(n-2)]` with `a(0)=2, a(1)=2, a(2)=3`
-/

namespace A129231.P4429393398897307074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 3] fun n f1 =>
  A001951 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129231.P4429393398897307074

noncomputable section

/-- A129231: a(n) = floor(n*r) - a(n-1), where r = sqrt(2) and a(0) = 0.

Offset 0, canonical program `A129231.P4429393398897307074`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129231 (n : ℕ) : ℤ :=
  A129231.P4429393398897307074.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129231.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129232.P14690578308145464037

`A001951(n)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A129232.P14690578308145464037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A001951 n + a (n - 2)

end

end A129232.P14690578308145464037

noncomputable section

/-- A129232: a(n) = floor(n*r) + floor((n-2)*r) + floor((n-4)*r) + ... + floor(k*r), where r = 2^(1/2) and k = 0 if n is even, k = 1 if n is odd.

Offset 0, canonical program `A129232.P14690578308145464037`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129232 (n : ℕ) : ℤ :=
  A129232.P14690578308145464037.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129234.P10543029796257728655

`(A054531(n+1)+A002262(n))*A051731(n+1)`
-/

namespace A129234.P10543029796257728655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A054531 (n + 1) + A002262 n) * A051731 (n + 1)

end

end A129234.P10543029796257728655

noncomputable section

/-- A129234: Triangle read by rows: T(n,k) = n/k + k - 1 if n mod k = 0; otherwise T(n,k)=0 (1 <= k <= n).

Offset 1, canonical program `A129234.P10543029796257728655`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129234 (n : ℕ) : ℤ :=
  A129234.P10543029796257728655.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129234.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129265.P10369056253354729841

`val(or(row(n)+1, A139547(n)), 2)+1`
-/

namespace A129265.P10369056253354729841
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Int.lor (SequenceMachineLib.triRow n + 1 : ℤ) (A139547 n)).toNat 2 + 1

end

end A129265.P10369056253354729841

noncomputable section

/-- A129265: Triangle read by rows: T(n,k) is the number of power of two divisors of n that are less than or equal to n/k.

Offset 1, canonical program `A129265.P10369056253354729841`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A129265 (n : ℕ) : ℤ :=
  (A129265.P10369056253354729841.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A129265.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129389.P10422043623490851629

`eq[1, A355449(n+2)]`
-/

namespace A129389.P10422043623490851629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355449 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A129389.P10422043623490851629

noncomputable section

/-- A129389: Numbers k such that the mean of 5 consecutive squares starting with k^2 is prime.

Offset 1, canonical program `A129389.P10422043623490851629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A129389 (n : ℕ) : ℤ :=
  (A129389.P10422043623490851629.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A129389.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129572.P323978587708688268

`A097806(gcd(n, Δ[A129372(n+1)]))`
-/

namespace A129572.P323978587708688268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129372 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 (Int.gcd (n : ℤ) (f1 (n + 1) - f1 n))

end

end A129572.P323978587708688268

noncomputable section

/-- A129572: A129372 * A097806.

Offset 1, canonical program `A129572.P323978587708688268`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A129572 (n : ℕ) : ℤ :=
  A129572.P323978587708688268.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A129572.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129573.P3231894619646471260

`C(2, 2+A030111(n+1)%A046854(n))`
-/

namespace A129573.P3231894619646471260
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (2 + Int.tmod (A030111 (n + 1)) (A046854 n)).toNat

end

end A129573.P3231894619646471260

noncomputable section

/-- A129573: Triangle read by rows: A097806 * A129372 as infinite lower triangular matrices.

Offset 1, canonical program `A129573.P3231894619646471260`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129573 (n : ℕ) : ℤ :=
  (A129573.P3231894619646471260.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129573.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129574.P17473948637287950129

`A091954(2*(n+1))+A091954(A092535(n+1))`
-/

namespace A129574.P17473948637287950129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091954 (2 * (n + 1)) + A091954 (A092535 (n + 1)).toNat

end

end A129574.P17473948637287950129

noncomputable section

/-- A129574: Number of odd divisors of n plus the number of odd divisors of n - 1.

Offset 1, canonical program `A129574.P17473948637287950129`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A129574 (n : ℕ) : ℤ :=
  A129574.P17473948637287950129.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A129574.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129685.P4243944531495755914

`A106246(n)*A117568(n)`
-/

namespace A129685.P4243944531495755914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106246 n * A117568 n

end

end A129685.P4243944531495755914

noncomputable section

/-- A129685: Exponential Riordan array [1-x^2/2, x].

Offset 0, canonical program `A129685.P4243944531495755914`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129685 (n : ℕ) : ℤ :=
  A129685.P4243944531495755914.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129685.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129768.P8163323129717972744

`A111333(1+n)-n`
-/

namespace A129768.P8163323129717972744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (1 + n) - (n : ℤ)

end

end A129768.P8163323129717972744

noncomputable section

/-- A129768: Number of odd nonprime numbers less than the n-th prime.

Offset 1, canonical program `A129768.P8163323129717972744`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129768 (n : ℕ) : ℤ :=
  A129768.P8163323129717972744.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129809.P9511802999592122220

`A065091(eq[2, A129750(1+n)])`
-/

namespace A129809.P9511802999592122220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129750 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A129809.P9511802999592122220

noncomputable section

/-- A129809: Lesser of consecutive prime pairs whose last digits differ by 2.

Offset 1, canonical program `A129809.P9511802999592122220`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2713 terms. -/
def A129809 (n : ℕ) : ℤ :=
  A129809.P9511802999592122220.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2713 terms. -/
def A129809.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129812.P15062499110324960971

`A065091(eq[7, (A000040(n+1)*A000040(n+2))%10])`
-/

namespace A129812.P15062499110324960971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1) * A000040 (n + 2)) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A129812.P15062499110324960971

noncomputable section

/-- A129812: Lesser of consecutive prime pairs whose last digits differ by 6.

Offset 2, canonical program `A129812.P15062499110324960971`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A129812 (n : ℕ) : ℤ :=
  A129812.P15062499110324960971.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A129812.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129856.P3920010008458318143

`p?[A001223(n+1)-1]`
-/

namespace A129856.P3920010008458318143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129856.P3920010008458318143

noncomputable section

/-- A129856: Primes that are one less than the difference between consecutive primes.

Offset 1, canonical program `A129856.P3920010008458318143`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129856 (n : ℕ) : ℤ :=
  A129856.P3920010008458318143.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129856.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129987.P1378896886703514554

`A131577(n)+A101891(n)`
-/

namespace A129987.P1378896886703514554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + A101891 n

end

end A129987.P1378896886703514554

noncomputable section

/-- A129987: Third differences of A129983.

Offset 0, canonical program `A129987.P1378896886703514554`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 282 terms. -/
def A129987 (n : ℕ) : ℤ :=
  A129987.P1378896886703514554.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 282 terms. -/
def A129987.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130071.P16349395927044139685

`A007444(A002260(n+1))*A051731(n+1)`
-/

namespace A130071.P16349395927044139685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007444 (A002260 (n + 1)).toNat * A051731 (n + 1)

end

end A130071.P16349395927044139685

noncomputable section

/-- A130071: Triangle, A007444(k) in each column interspersed with k zeros.

Offset 1, canonical program `A130071.P16349395927044139685`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130071 (n : ℕ) : ℤ :=
  A130071.P16349395927044139685.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130071.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130116.P11405849371930154849

`A007436(A002260(n+1))*A051731(n+1)`
-/

namespace A130116.P11405849371930154849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007436 (A002260 (n + 1)).toNat * A051731 (n + 1)

end

end A130116.P11405849371930154849

noncomputable section

/-- A130116: Inverse Moebius transform of a diagonalized matrix of A007436.

Offset 1, canonical program `A130116.P11405849371930154849`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130116 (n : ℕ) : ℤ :=
  A130116.P11405849371930154849.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130194.P2127097529341530346

`A009531(A004736(n+1))`
-/

namespace A130194.P2127097529341530346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A004736 (n + 1)).toNat

end

end A130194.P2127097529341530346

noncomputable section

/-- A130194: Let M = lower triangular matrix with 1's on and below the main diagonal, with columns multiplied by +1, +1, -1, -1, repeated; form M^2; read across rows of resulting triangle.

Offset 1, canonical program `A130194.P2127097529341530346`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130194 (n : ℕ) : ℤ :=
  A130194.P2127097529341530346.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130194.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130197.P1298093891695330778

`2*A055248(n)-A135278(n)`
-/

namespace A130197.P1298093891695330778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055248 n - A135278 n

end

end A130197.P1298093891695330778

noncomputable section

/-- A130197: Binomial transform of A130196.

Offset 1, canonical program `A130197.P1298093891695330778`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130197 (n : ℕ) : ℤ :=
  A130197.P1298093891695330778.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130197.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130240.P11723708068982059309

`∑[∑[char[A007598(n)]]]-1`
-/

namespace A130240.P11723708068982059309
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A130240.P11723708068982059309

noncomputable section

/-- A130240: Partial sums of A130239.

Offset 0, canonical program `A130240.P11723708068982059309`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130240 (n : ℕ) : ℤ :=
  A130240.P11723708068982059309.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130240.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130243.P18068863741385529498

`(n+2)*A130241(n+1)-A000032(A130241(n+1)+2)+3`
-/

namespace A130243.P18068863741385529498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A130241 (n + 1) - A000032 (A130241 (n + 1) + 2).toNat + 3

end

end A130243.P18068863741385529498

noncomputable section

/-- A130243: Partial sums of the 'lower' Lucas Inverse A130241.

Offset 1, canonical program `A130243.P18068863741385529498`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130241, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130243 (n : ℕ) : ℤ :=
  A130243.P18068863741385529498.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130241, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130243.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A130244.P17329518017061737042

`∑[A130242(n)]`
-/

namespace A130244.P17329518017061737042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130242 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130244.P17329518017061737042

noncomputable section

/-- A130244: Partial sums of the 'upper' Lucas Inverse A130242.

Offset 0, canonical program `A130244.P17329518017061737042`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130244 (n : ℕ) : ℤ :=
  A130244.P17329518017061737042.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130244.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130247.P11327406129056812907

`A060576(n)*A130241(n+1)`
-/

namespace A130247.P11327406129056812907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n * A130241 (n + 1)

end

end A130247.P11327406129056812907

noncomputable section

/-- A130247: Inverse Lucas (A000032) numbers: index k of a Lucas number such that Lucas(k)=n; max(k|Lucas(k) < n), if there is no such index.

Offset 1, canonical program `A130247.P11327406129056812907`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130247 (n : ℕ) : ℤ :=
  A130247.P11327406129056812907.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130247.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130252.P11183113605279075851

`∑[A130253(n)]-A130253(n)`
-/

namespace A130252.P11183113605279075851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130253 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A130253 n

end

end A130252.P11183113605279075851

noncomputable section

/-- A130252: Partial sums of A130250.

Offset 0, canonical program `A130252.P11183113605279075851`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130252 (n : ℕ) : ℤ :=
  A130252.P11183113605279075851.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130252.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130262.P6396722394106134302

`n*A130260(n)-A001519(A130260(n))+1`
-/

namespace A130262.P6396722394106134302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A130260 n - A001519 (A130260 n).toNat + 1

end

end A130262.P6396722394106134302

noncomputable section

/-- A130262: Partial sums of the 'upper' even Fibonacci Inverse A130260.

Offset 0, canonical program `A130262.P6396722394106134302`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130260, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130262 (n : ℕ) : ℤ :=
  A130262.P6396722394106134302.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130260, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130262.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A130265.P7668724315621306673

`A055248(n)+A103406(n)-A007318(n)`
-/

namespace A130265.P7668724315621306673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 n + (A103406 n - A007318 n)

end

end A130265.P7668724315621306673

noncomputable section

/-- A130265: Triangle read by rows: matrix product A007318 * A051340.

Offset 0, canonical program `A130265.P7668724315621306673`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130265 (n : ℕ) : ℤ :=
  A130265.P7668724315621306673.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130265.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130270.P2168121446390498421

`A080036(n)%A000124(∑[A010054(n)])`
-/

namespace A130270.P2168121446390498421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080036 n) (A000124 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A130270.P2168121446390498421

noncomputable section

/-- A130270: Triangle read by rows, T(n) followed by 1, 2, 3, ..., n-1.

Offset 1, canonical program `A130270.P2168121446390498421`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130270 (n : ℕ) : ℤ :=
  A130270.P2168121446390498421.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130270.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130301.P9351493198226008090

`A074909(n+1)+A003056(n*A010054(n))`
-/

namespace A130301.P9351493198226008090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (n + 1) + A003056 ((n : ℤ) * A010054 n).toNat

end

end A130301.P9351493198226008090

noncomputable section

/-- A130301: Triangle read by rows: A130296 * A007318, as infinite lower triangular matrices.

Offset 1, canonical program `A130301.P9351493198226008090`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130301 (n : ℕ) : ℤ :=
  A130301.P9351493198226008090.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130301.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130684.P2660709393727327876

`A082652(1+n)+T(n-1,k-1)` with `a(0)=1`
-/

namespace A130684.P2660709393727327876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A082652 (1 + n) + SequenceMachineLib.triUpLeft a n

end

end A130684.P2660709393727327876

noncomputable section

/-- A130684: Triangle read by rows: T(n,k) = number of squares (not necessarily orthogonal) all of whose vertices lie in an (n + 1) X (k + 1) square lattice.

Offset 1, canonical program `A130684.P2660709393727327876`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130684 (n : ℕ) : ℤ :=
  A130684.P2660709393727327876.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130684.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130711.P12589971787690894451

`∑{d}[1+n, A099036(#-1)]`
-/

namespace A130711.P12589971787690894451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A099036 (d - 1)

end

end A130711.P12589971787690894451

noncomputable section

/-- A130711: Number of compositions of n such that the smallest part divides every part.

Offset 1, canonical program `A130711.P12589971787690894451`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A130711 (n : ℕ) : ℤ :=
  A130711.P12589971787690894451.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A130711.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130912.P7265221036495791241

`floor(A196202(n+2)/A065091(n+1))`
-/

namespace A130912.P7265221036495791241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A196202 (n + 2) : ℚ) / (A065091 (n + 1) : ℚ)⌋

end

end A130912.P7265221036495791241

noncomputable section

/-- A130912: Fermat quotients, mod p: ((2^(p-1) - 1)/p) mod p = A007663(n) mod p.

Offset 2, canonical program `A130912.P7265221036495791241`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A130912 (n : ℕ) : ℤ :=
  A130912.P7265221036495791241.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A130912.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131046.P8023724050705882094

`Δ[A185003(A028310(n))%A185003(n+1)]`
-/

namespace A131046.P8023724050705882094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185003 (A028310 n).toNat) (A185003 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131046.P8023724050705882094

noncomputable section

/-- A131046: A007318 * A000203.

Offset 1, canonical program `A131046.P8023724050705882094`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 323 terms. -/
def A131046 (n : ℕ) : ℤ :=
  A131046.P8023724050705882094.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 323 terms. -/
def A131046.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131101.P10777830498562902323

`eq[1, A001222(A075254(n+1)+1)]+1`
-/

namespace A131101.P10777830498562902323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A075254 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A131101.P10777830498562902323

noncomputable section

/-- A131101: Numbers that when added it to their prime factors +1 the result is a prime number, member of A131102.

Offset 1, canonical program `A131101.P10777830498562902323`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A131101 (n : ℕ) : ℤ :=
  (A131101.P10777830498562902323.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A131101.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131112.P1892582295749430120

`2*A131111(n)-A129994(n)`
-/

namespace A131112.P1892582295749430120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131111 n - A129994 n

end

end A131112.P1892582295749430120

noncomputable section

/-- A131112: T(n,k) = 4*binomial(n,k) - 3*I(n,k), where I is the identity matrix; triangle T read by rows (n >= 0 and 0 <= k <= n).

Offset 0, canonical program `A131112.P1892582295749430120`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131112 (n : ℕ) : ℤ :=
  A131112.P1892582295749430120.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131112.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131113.P8900513154664497593

`2*A131111(n)-A007318(n)`
-/

namespace A131113.P8900513154664497593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131111 n - A007318 n

end

end A131113.P8900513154664497593

noncomputable section

/-- A131113: T(n,k) = 5*binomial(n,k) - 4*I(n,k), where I is the identity matrix; triangle T read by rows (n >= 0 and 0 <= k <= n).

Offset 0, canonical program `A131113.P8900513154664497593`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131113 (n : ℕ) : ℤ :=
  A131113.P8900513154664497593.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131113.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131114.P17775388321855800452

`lcm(A129994(n), A131111(n))`
-/

namespace A131114.P17775388321855800452
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A129994 n) (A131111 n)

end

end A131114.P17775388321855800452

noncomputable section

/-- A131114: T(n,k) = 6*binomial(n,k) - 5*I(n,k), where I is the identity matrix; triangle T read by rows (n >= 0 and 0 <= k <= n).

Offset 0, canonical program `A131114.P17775388321855800452`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131114 (n : ℕ) : ℤ :=
  (A131114.P17775388321855800452.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131127.P11296846227451289478

`A028326(n)-A167374(n)`
-/

namespace A131127.P11296846227451289478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A167374 n

end

end A131127.P11296846227451289478

noncomputable section

/-- A131127: Table read by rows: 2*A007318(n,m) - A167374(n,m).

Offset 0, canonical program `A131127.P11296846227451289478`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131127 (n : ℕ) : ℤ :=
  A131127.P11296846227451289478.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131127.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131231.P11716200327351419876

`A032766(A131230(n+1))`
-/

namespace A131231.P11716200327351419876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A131230 (n + 1)).toNat

end

end A131231.P11716200327351419876

noncomputable section

/-- A131231: 3*A130296 - 2*A128174.

Offset 1, canonical program `A131231.P11716200327351419876`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131231 (n : ℕ) : ℤ :=
  A131231.P11716200327351419876.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131231.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131241.P5173463838883617248

`floor(3/2*A131240(n))`
-/

namespace A131241.P5173463838883617248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) / 2 * (A131240 n : ℚ)⌋

end

end A131241.P5173463838883617248

noncomputable section

/-- A131241: 3*A046854 - 2*I.

Offset 0, canonical program `A131241.P5173463838883617248`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A131241 (n : ℕ) : ℤ :=
  A131241.P5173463838883617248.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A131241.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131327.P2273805108946700537

`round(4*A131325(n)/3)`
-/

namespace A131327.P2273805108946700537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((4 * A131325 n : ℚ) / 3)

end

end A131327.P2273805108946700537

noncomputable section

/-- A131327: Triangle |4*|A049310(n,k)| - 3| read by rows, 0<=k<=n.

Offset 0, canonical program `A131327.P2273805108946700537`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131327 (n : ℕ) : ℤ :=
  A131327.P2273805108946700537.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131327.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131374.P1343424990653634680

`A131373(n)+1-A168561(n)`
-/

namespace A131374.P1343424990653634680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131373 n + (1 - A168561 n)

end

end A131374.P1343424990653634680

noncomputable section

/-- A131374: A046854 + A065941 - A049310.

Offset 0, canonical program `A131374.P1343424990653634680`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131374 (n : ℕ) : ℤ :=
  A131374.P1343424990653634680.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131374.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131400.P9116326732354589856

`A131373(n)+A023532(n)`
-/

namespace A131400.P9116326732354589856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131373 n + A023532 n

end

end A131400.P9116326732354589856

noncomputable section

/-- A131400: A046854 + A065941 - I (Identity matrix).

Offset 0, canonical program `A131400.P9116326732354589856`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131400 (n : ℕ) : ℤ :=
  A131400.P9116326732354589856.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131400.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131402.P8210763280089425655

`A028326(n)-A131373(n)`
-/

namespace A131402.P8210763280089425655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A131373 n

end

end A131402.P8210763280089425655

noncomputable section

/-- A131402: Triangle read by rows: 2*A007318 - (A046854 + A065941 - A000012) as infinite lower triangular matrices.

Offset 0, canonical program `A131402.P8210763280089425655`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131402 (n : ℕ) : ℤ :=
  A131402.P8210763280089425655.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131402.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131416.P5420476087701445700

`A104587(n)-A025581(n)²`
-/

namespace A131416.P5420476087701445700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104587 n - A025581 n ^ 2

end

end A131416.P5420476087701445700

noncomputable section

/-- A131416: (A000012 * A002260) + (A002260 * A000012) - A000012.

Offset 1, canonical program `A131416.P5420476087701445700`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131416 (n : ℕ) : ℤ :=
  A131416.P5420476087701445700.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131416.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131425.P7307706375564196497

`∑[A090942(n+1)+A086801(n+1)]`
-/

namespace A131425.P7307706375564196497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090942 (n + 1) + A086801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131425.P7307706375564196497

noncomputable section

/-- A131425: Row sums of triangle A131424.

Offset 1, canonical program `A131425.P7307706375564196497`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131425 (n : ℕ) : ℤ :=
  A131425.P7307706375564196497.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131425.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131430.P12639990675613689132

`A045992(n)+A014138(n)`
-/

namespace A131430.P12639990675613689132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045992 n + A014138 n

end

end A131430.P12639990675613689132

noncomputable section

/-- A131430: Row sums of triangle A131429.

Offset 0, canonical program `A131430.P12639990675613689132`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A131430 (n : ℕ) : ℤ :=
  A131430.P12639990675613689132.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A131430.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131635.P15231796072732893040

`A132818(A245300(n)+1)`
-/

namespace A131635.P15231796072732893040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132818 (A245300 n + 1).toNat

end

end A131635.P15231796072732893040

noncomputable section

/-- A131635: Triangle T(n,m)=m*n*binomial(m+n,m)^2/(2*(m+n)) read by rows.

Offset 1, canonical program `A131635.P15231796072732893040`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2626 terms. -/
def A131635 (n : ℕ) : ℤ :=
  A131635.P15231796072732893040.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2626 terms. -/
def A131635.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131694.P609237085651523433

`eq[1, ∏{e}[A008347(n), #+1]-1]`
-/

namespace A131694.P609237085651523433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008347 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f3 n).natAbs, (Nat.factorization (f3 n).natAbs p + 1) : ℕ) : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131694.P609237085651523433

noncomputable section

/-- A131694: Numbers k such that abs(S(k)) = A008347(k) is prime, where S(k) = S(k-1) + A000040(k)*(-1)^k; S(0) = 0.

Offset 1, canonical program `A131694.P609237085651523433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A131694 (n : ℕ) : ℤ :=
  (A131694.P609237085651523433.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A131694.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131740.P10215158765622913185

`∑[A100479(n+1)-A000040(n+1)]`
-/

namespace A131740.P10215158765622913185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100479 (n + 1) - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131740.P10215158765622913185

noncomputable section

/-- A131740: a(n) = sum of n successive primes after the n-th prime.

Offset 1, canonical program `A131740.P10215158765622913185`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131740 (n : ℕ) : ℤ :=
  A131740.P10215158765622913185.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131740.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131763.P10779057186831281527

`∑{#}[n, A086810(C(n+1, 2)+#)*3^#]`
-/

namespace A131763.P10779057186831281527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A086810 (Nat.choose (n + 1) 2 + k) * (3 ^ k : ℤ)

end

end A131763.P10779057186831281527

noncomputable section

/-- A131763: Series reversion of x*(1-4*x)/(1-x) is x*A(x) where A(x) is the generating function.

Offset 0, canonical program `A131763.P10779057186831281527`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A086810, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A131763 (n : ℕ) : ℤ :=
  A131763.P10779057186831281527.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A086810, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A131763.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A131775.P9592198967620974680

`2*A131774(1+n)-A065941(n)`
-/

namespace A131775.P9592198967620974680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131774 (1 + n) - A065941 n

end

end A131775.P9592198967620974680

noncomputable section

/-- A131775: 3*A065941 - 2*A049310.

Offset 1, canonical program `A131775.P9592198967620974680`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131775 (n : ℕ) : ℤ :=
  A131775.P9592198967620974680.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131775.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131776.P11657725690283460329

`2*A131774(n+1)-A168561(n)`
-/

namespace A131776.P11657725690283460329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131774 (n + 1) - A168561 n

end

end A131776.P11657725690283460329

noncomputable section

/-- A131776: 4*A065941 - 3*A049310.

Offset 1, canonical program `A131776.P11657725690283460329`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131776 (n : ℕ) : ℤ :=
  A131776.P11657725690283460329.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131776.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131781.P11903417677959677227

`A131270(n)+1-A097807(n)`
-/

namespace A131781.P11903417677959677227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131270 n + (1 - A097807 n)

end

end A131781.P11903417677959677227

noncomputable section

/-- A131781: 2*A046854 - A000012 (signed by columns + - + -, ...).

Offset 1, canonical program `A131781.P11903417677959677227`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131781 (n : ℕ) : ℤ :=
  A131781.P11903417677959677227.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131781.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131846.P16025712149157146945

`∑{#}[n, A086810(C(n+1, 2)+#)*5^#]`
-/

namespace A131846.P16025712149157146945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A086810 (Nat.choose (n + 1) 2 + k) * (5 ^ k : ℤ)

end

end A131846.P16025712149157146945

noncomputable section

/-- A131846: Expansion of series reversion of x*(1-6*x)/(1-x).

Offset 1, canonical program `A131846.P16025712149157146945`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A086810, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A131846 (n : ℕ) : ℤ :=
  A131846.P16025712149157146945.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A086810, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A131846.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A131860.P6113387829326523069

`∩[A131857(n+1), A131859(n+1)]`
-/

namespace A131860.P6113387829326523069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131857 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131860.P6113387829326523069

noncomputable section

/-- A131860: Numbers m such that z(m)=(1,1) with z as defined in A131851.

Offset 1, canonical program `A131860.P6113387829326523069`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2252 terms. -/
def A131860 (n : ℕ) : ℤ :=
  (A131860.P6113387829326523069.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2252 terms. -/
def A131860.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131869.P768003108745569619

`∑{#}[n, A086810(C(n+1, 2)+#)*7^#]`
-/

namespace A131869.P768003108745569619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A086810 (Nat.choose (n + 1) 2 + k) * (7 ^ k : ℤ)

end

end A131869.P768003108745569619

noncomputable section

/-- A131869: Expansion of series reversion of x*(1-8*x)/(1-x).

Offset 1, canonical program `A131869.P768003108745569619`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A086810, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A131869 (n : ℕ) : ℤ :=
  A131869.P768003108745569619.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A086810, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A131869.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A131897.P15038392300665076693

`or(Δ[A056942(n)], A131817(n))`
-/

namespace A131897.P15038392300665076693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056942 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A131817 n)

end

end A131897.P15038392300665076693

noncomputable section

/-- A131897: A130321 + A131821 - A000012.

Offset 0, canonical program `A131897.P15038392300665076693`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131897 (n : ℕ) : ℤ :=
  A131897.P15038392300665076693.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131897.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131914.P7427387489545977429

`∑[xor(1, A198954(n)-1)]`
-/

namespace A131914.P7427387489545977429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A198954 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131914.P7427387489545977429

noncomputable section

/-- A131914: 3*A002024 - 2*A051340.

Offset 1, canonical program `A131914.P7427387489545977429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131914 (n : ℕ) : ℤ :=
  A131914.P7427387489545977429.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131914.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131926.P3063109325215437962

`∑{#}[n, A086810(C(n+1, 2)+#)*6^#]`
-/

namespace A131926.P3063109325215437962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A086810 (Nat.choose (n + 1) 2 + k) * (6 ^ k : ℤ)

end

end A131926.P3063109325215437962

noncomputable section

/-- A131926: Expansion of series reversion of x(1-7x)/(1-x).

Offset 1, canonical program `A131926.P3063109325215437962`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A086810, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A131926 (n : ℕ) : ℤ :=
  A131926.P3063109325215437962.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A086810, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A131926.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A131947.P4717626785366615297

`(-1)^n*A113262(n+1)`
-/

namespace A131947.P4717626785366615297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A113262 (n + 1)

end

end A131947.P4717626785366615297

noncomputable section

/-- A131947: Expansion of (1 - (phi(-q) * phi(-q^3))^2)/4 in powers of q where phi() is a Ramanujan theta function.

Offset 1, canonical program `A131947.P4717626785366615297`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113262, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A131947 (n : ℕ) : ℤ :=
  A131947.P4717626785366615297.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113262, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A131947.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A131980.P10575563144801513651

`(floor(1/Δ[sqrt(n)])-1)!*A034867(n)`
-/

namespace A131980.P10575563144801513651
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (⌊1 / (f1 (n + 1) - f1 n)⌋ - 1).toNat : ℤ) * A034867 n

end

end A131980.P10575563144801513651

noncomputable section

/-- A131980: A coefficient tree from the list partition transform relating A000129, A000142, A000165, A110327, and A110330.

Offset 0, canonical program `A131980.P10575563144801513651`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 972 terms. -/
def A131980 (n : ℕ) : ℤ :=
  A131980.P10575563144801513651.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 972 terms. -/
def A131980.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132048.P7025370900978820074

`A132046(n)+A014473(n)`
-/

namespace A132048.P7025370900978820074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132046 n + A014473 n

end

end A132048.P7025370900978820074

noncomputable section

/-- A132048: 3*A007318 - A103451 - A000012.

Offset 0, canonical program `A132048.P7025370900978820074`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132048 (n : ℕ) : ℤ :=
  A132048.P7025370900978820074.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132048.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132071.P17294822785836624864

`A063712(1+n)+A014473(n)`
-/

namespace A132071.P17294822785836624864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063712 (1 + n) + A014473 n

end

end A132071.P17294822785836624864

noncomputable section

/-- A132071: A007318 + A002024 - A103451 as infinite lower triangular matrices.

Offset 0, canonical program `A132071.P17294822785836624864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132071 (n : ℕ) : ℤ :=
  A132071.P17294822785836624864.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132071.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132137.P15193229265496179695

`Δ[A095815(a(n-1))]` with `a(0)=0, a(1)=1`
-/

namespace A132137.P15193229265496179695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  A095815 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132137.P15193229265496179695

noncomputable section

/-- A132137: a(1)=1, a(n)=maximal digit of sum a(1)+...+a(n-1).

Offset 1, canonical program `A132137.P15193229265496179695`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1436 terms. -/
def A132137 (n : ℕ) : ℤ :=
  A132137.P15193229265496179695.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1436 terms. -/
def A132137.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132138.P2974872876081117437

`A063524(A007448(n)-n)`
-/

namespace A132138.P2974872876081117437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A007448 n - (n : ℤ)).toNat

end

end A132138.P2974872876081117437

noncomputable section

/-- A132138: Characteristic function of the set of numbers defined in A002977.

Offset 1, canonical program `A132138.P2974872876081117437`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132138 (n : ℕ) : ℤ :=
  A132138.P2974872876081117437.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132138.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132296.P3338311285745369321

`∑[(n+1)*Δ[A064524(n)]]`
-/

namespace A132296.P3338311285745369321
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064524 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132296.P3338311285745369321

noncomputable section

/-- A132296: Sum of the noncube numbers less than or equal to n.

Offset 1, canonical program `A132296.P3338311285745369321`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A132296 (n : ℕ) : ℤ :=
  A132296.P3338311285745369321.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A132296.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132372.P5079108891255370633

`A033878(A061579(n))`
-/

namespace A132372.P5079108891255370633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033878 (A061579 n).toNat

end

end A132372.P5079108891255370633

noncomputable section

/-- A132372: T(n, k) counts Schroeder n-paths whose ascent starting at the initial vertex has length k. Triangle T(n,k), read by rows.

Offset 0, canonical program `A132372.P5079108891255370633`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9316 terms. -/
def A132372 (n : ℕ) : ℤ :=
  A132372.P5079108891255370633.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9316 terms. -/
def A132372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132373.P15317194488522851311

`∑{#}[n, A120730(C(n+1, 2)+#)*6^(n-#)]`
-/

namespace A132373.P15317194488522851311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (A120730 (Nat.choose (n + 1) 2 + k) : ℚ) * (6 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ)

end

end A132373.P15317194488522851311

noncomputable section

/-- A132373: Expansion of c(6*x^2)/(1-x*c(6*x^2)), where c(x) is the g.f. of A000108.

Offset 0, canonical program `A132373.P15317194488522851311`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120730, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A132373 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A132373.P15317194488522851311.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120730, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A132373.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A132374.P11600478547107313119

`∑{#}[n, A120730(C(n+1, 2)+#)*7^(n-#)]`
-/

namespace A132374.P11600478547107313119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (A120730 (Nat.choose (n + 1) 2 + k) : ℚ) * (7 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ)

end

end A132374.P11600478547107313119

noncomputable section

/-- A132374: Expansion of c(7*x^2)/(1 - x*c(7*x^2)), where c(x) is the g.f. of A000108.

Offset 0, canonical program `A132374.P11600478547107313119`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120730, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A132374 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A132374.P11600478547107313119.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120730, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A132374.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A132375.P1893560418439118702

`∑{#}[n, A120730(C(n+1, 2)+#)*8^(n-#)]`
-/

namespace A132375.P1893560418439118702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (A120730 (Nat.choose (n + 1) 2 + k) : ℚ) * (8 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ)

end

end A132375.P1893560418439118702

noncomputable section

/-- A132375: Expansion of c(8*x^2)/(1 - x*c(8*x^2)), where c(x) is the g.f. of A000108.

Offset 0, canonical program `A132375.P1893560418439118702`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120730, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A132375 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A132375.P1893560418439118702.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120730, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A132375.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A132650.P7902314145472011192

`A110138(A131089(n+1))`
-/

namespace A132650.P7902314145472011192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110138 (A131089 (n + 1)).toNat

end

end A132650.P7902314145472011192

noncomputable section

/-- A132650: a(n) = d(n)^d(n), where d(n) = A000005(n).

Offset 1, canonical program `A132650.P7902314145472011192`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A132650 (n : ℕ) : ℤ :=
  A132650.P7902314145472011192.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A132650.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132710.P17213713774162890779

`row(n)*A132681(n)`
-/

namespace A132710.P17213713774162890779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n : ℤ) * A132681 n

end

end A132710.P17213713774162890779

noncomputable section

/-- A132710: Infinitesimal generator for a diagonally-shifted Lah matrix, unsigned A105278, related to n! Laguerre(n,-x,1).

Offset 0, canonical program `A132710.P17213713774162890779`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132710 (n : ℕ) : ℤ :=
  A132710.P17213713774162890779.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132710.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132729.P8976331430689327163

`2*A132044(C(row(n)+1, 2)+col(n))-1`
-/

namespace A132729.P8976331430689327163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A132044 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n) - 1

end

end A132729.P8976331430689327163

noncomputable section

/-- A132729: Triangle T(n, k) = 2*binomial(n, k) - 3 with T(n, 0) = T(n, n) = 1, read by rows.

Offset 0, canonical program `A132729.P8976331430689327163`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132044, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A132729 (n : ℕ) : ℤ :=
  A132729.P8976331430689327163.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132044, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A132729.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A132731.P10669514215700981364

`abs(2-A132046(n))`
-/

namespace A132731.P10669514215700981364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A132046 n|

end

end A132731.P10669514215700981364

noncomputable section

/-- A132731: Triangle T(n,k) = 2 * binomial(n,k) - 2 with T(n,0) = T(n,n) = 1, read by rows.

Offset 0, canonical program `A132731.P10669514215700981364`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132731 (n : ℕ) : ℤ :=
  A132731.P10669514215700981364.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132731.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132737.P194377451062630906

`2*A132735(C(row(n)+1, 2)+col(n))-1`
-/

namespace A132737.P194377451062630906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A132735 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n) - 1

end

end A132737.P194377451062630906

noncomputable section

/-- A132737: Triangle T(n,k) = 2*binomial(n,k) + 1, read by rows.

Offset 0, canonical program `A132737.P194377451062630906`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132735, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A132737 (n : ℕ) : ℤ :=
  A132737.P194377451062630906.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132735, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A132737.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A132749.P9165985344718256506

`A132044(n)+A023532(n)`
-/

namespace A132749.P9165985344718256506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132044 n + A023532 n

end

end A132749.P9165985344718256506

noncomputable section

/-- A132749: Triangle T(n,k) = binomial(n, k) with T(n, 0) = 2, read by rows.

Offset 0, canonical program `A132749.P9165985344718256506`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132749 (n : ℕ) : ℤ :=
  A132749.P9165985344718256506.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132749.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132774.P14409811669311265366

`∑[A097806(n)]*A097806(n)`
-/

namespace A132774.P14409811669311265366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A097806 n

end

end A132774.P14409811669311265366

noncomputable section

/-- A132774: A natural number operator.

Offset 1, canonical program `A132774.P14409811669311265366`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132774 (n : ℕ) : ℤ :=
  A132774.P14409811669311265366.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132774.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132778.P15237329709094283098

`A111650(n+1)-A051340(n)`
-/

namespace A132778.P15237329709094283098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111650 (n + 1) - A051340 n

end

end A132778.P15237329709094283098

noncomputable section

/-- A132778: Triangle read by rows, n-1 terms of (2n - 1) followed by n.

Offset 1, canonical program `A132778.P15237329709094283098`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132778 (n : ℕ) : ℤ :=
  A132778.P15237329709094283098.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132778.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132790.P12556336917507910766

`∑[A000245(n)]-(n-2^n)`
-/

namespace A132790.P12556336917507910766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n : ℤ) - (2 ^ n : ℤ))

end

end A132790.P12556336917507910766

noncomputable section

/-- A132790: Row sums of triangle A132789.

Offset 1, canonical program `A132790.P12556336917507910766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A132790 (n : ℕ) : ℤ :=
  A132790.P12556336917507910766.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A132790.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132823.P2002679263485787100

`abs(1-A014473(n))`
-/

namespace A132823.P2002679263485787100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A014473 n|

end

end A132823.P2002679263485787100

noncomputable section

/-- A132823: Triangle read by rows: T(n,k) = binomial(n,k) - 2 for 0 < k < n, with T(n,0) = T(n,n) = 1.

Offset 0, canonical program `A132823.P2002679263485787100`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132823 (n : ℕ) : ℤ :=
  A132823.P2002679263485787100.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132823.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132999.P9364533411470026189

`record[(n+1)%(A033879(n+1)²+n+1)]`
-/

namespace A132999.P9364533411470026189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A033879 (n + 1) ^ 2 + (n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132999.P9364533411470026189

noncomputable section

/-- A132999: Imperfect numbers: Not equal to sum of proper divisors.

Offset 1, canonical program `A132999.P9364533411470026189`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132999 (n : ℕ) : ℤ :=
  A132999.P9364533411470026189.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132999.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133084.P4031868736069884571

`A007318(n)+A007318(n+1)*A060510(n+1)`
-/

namespace A133084.P4031868736069884571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + A007318 (n + 1) * A060510 (n + 1)

end

end A133084.P4031868736069884571

noncomputable section

/-- A133084: A007318 * A133080.

Offset 1, canonical program `A133084.P4031868736069884571`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A133084 (n : ℕ) : ℤ :=
  A133084.P4031868736069884571.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A133084.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133091.P6564816861379254758

`gcd(2*A002260(n+1), A128228(n+1))`
-/

namespace A133091.P6564816861379254758
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A002260 (n + 1)) (A128228 (n + 1))

end

end A133091.P6564816861379254758

noncomputable section

/-- A133091: A133080 * A002260.

Offset 1, canonical program `A133091.P6564816861379254758`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133091 (n : ℕ) : ℤ :=
  (A133091.P6564816861379254758.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133091.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133162.P9178551120409773827

`A049320(1+n)+1`
-/

namespace A133162.P9178551120409773827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049320 (1 + n) + 1

end

end A133162.P9178551120409773827

noncomputable section

/-- A133162: Trajectory of 1 under the morphism 1 -> {1,1,2,1}, 2 -> {2}.

Offset 1, canonical program `A133162.P9178551120409773827`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133162 (n : ℕ) : ℤ :=
  A133162.P9178551120409773827.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133162.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133200.P7253229306496765429

`A001263(n+1)+A001263(n+1)-A010054(n)`
-/

namespace A133200.P7253229306496765429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) + (A001263 (n + 1) - A010054 n)

end

end A133200.P7253229306496765429

noncomputable section

/-- A133200: A001263 * A136521 as infinite lower triangular matrices, where A001263 = the Narayana triangle and A136521 = an infinite lower triangular matrix with (1, 2, 2, 2, ...) in the main diagonal and the rest zeros.

Offset 1, canonical program `A133200.P7253229306496765429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133200 (n : ℕ) : ℤ :=
  A133200.P7253229306496765429.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133200.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133341.P495050647053459279

`A135278(n)*A232089(n)`
-/

namespace A133341.P495050647053459279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n * A232089 n

end

end A133341.P495050647053459279

noncomputable section

/-- A133341: A007318 * A134312.

Offset 0, canonical program `A133341.P495050647053459279`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133341 (n : ℕ) : ℤ :=
  A133341.P495050647053459279.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133341.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133630.P17820163881889766041

`filter[A133621(1+n), A005171(#)]`
-/

namespace A133630.P17820163881889766041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133621 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A133630.P17820163881889766041

noncomputable section

/-- A133630: Nonprime numbers k such that binomial(k+p,k) mod k = 1, where p=10.

Offset 1, canonical program `A133630.P17820163881889766041`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6243 terms. -/
def A133630 (n : ℕ) : ℤ :=
  A133630.P17820163881889766041.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6243 terms. -/
def A133630.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133635.P12044644420769387225

`filter[A133634(n+1), A011558(#)]`
-/

namespace A133635.P12044644420769387225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133634 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A133635.P12044644420769387225

noncomputable section

/-- A133635: Nonprime numbers k such that binomial(k+p,k) mod k = 1, where p=5.

Offset 1, canonical program `A133635.P12044644420769387225`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 700 terms. -/
def A133635 (n : ℕ) : ℤ :=
  A133635.P12044644420769387225.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 700 terms. -/
def A133635.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133685.P12239145801004581258

`A001414(A130291(n+1))-A001414(A130290(n+1))`
-/

namespace A133685.P12239145801004581258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A130291 (n + 1)).toNat - A001414 (A130290 (n + 1)).toNat

end

end A133685.P12239145801004581258

noncomputable section

/-- A133685: Let p = prime(n); then a(n) = (sum of prime factors of p+1) - (sum of prime factors of p-1). a(1) = 2 by convention.

Offset 1, canonical program `A133685.P12239145801004581258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A133685 (n : ℕ) : ℤ :=
  A133685.P12239145801004581258.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A133685.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133695.P14090460044357670883

`2*A080847(n+1)-5`
-/

namespace A133695.P14090460044357670883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A080847 (n + 1) - 5

end

end A133695.P14090460044357670883

noncomputable section

/-- A133695: a(n) = 2*A008683 - 1.

Offset 1, canonical program `A133695.P14090460044357670883`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133695 (n : ℕ) : ℤ :=
  A133695.P14090460044357670883.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133695.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133701.P15188902324601704960

`A001227(A049840(n+1))*A051731(n+1)`
-/

namespace A133701.P15188902324601704960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A049840 (n + 1)).toNat * A051731 (n + 1)

end

end A133701.P15188902324601704960

noncomputable section

/-- A133701: Triangle read by rows: T(n, k) = A001227(n) if k divides n, T(n, k) = 0 otherwise.

Offset 1, canonical program `A133701.P15188902324601704960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133701 (n : ℕ) : ℤ :=
  A133701.P15188902324601704960.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133701.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133823.P6955847078214213763

`A004737(n+1)^3`
-/

namespace A133823.P6955847078214213763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (n + 1) ^ 3

end

end A133823.P6955847078214213763

noncomputable section

/-- A133823: Triangle whose rows are sequences of increasing and decreasing cubes:1; 1,8,1; 1,8,27,8,1; ... .

Offset 0, canonical program `A133823.P6955847078214213763`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004737, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133823 (n : ℕ) : ℤ :=
  A133823.P6955847078214213763.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004737, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133823.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A133825.P698855924864636132

`A004737(n+1)*(A004737(n+1)+1)/2`
-/

namespace A133825.P698855924864636132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004737 (n + 1) * (A004737 (n + 1) + 1) : ℚ) / 2

end

end A133825.P698855924864636132

noncomputable section

/-- A133825: Triangle whose rows are sequences of increasing and decreasing triangular numbers: 1; 1,3,1; 1,3,6,3,1; ... .

Offset 0, canonical program `A133825.P698855924864636132`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004737, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133825 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A133825.P698855924864636132.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004737, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133825.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A133826.P15425256942070485572

`C(2+A004737(1+n), 3)`
-/

namespace A133826.P15425256942070485572
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 + A004737 (1 + n)).toNat 3

end

end A133826.P15425256942070485572

noncomputable section

/-- A133826: Triangle whose rows are sequences of increasing and decreasing tetrahedral numbers: 1; 1,4,1; 1,4,10,4,1; ... .

Offset 0, canonical program `A133826.P15425256942070485572`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A133826 (n : ℕ) : ℤ :=
  (A133826.P15425256942070485572.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A133826.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133900.P2344273897717143461

`(1+n)*A064446(1+n)`
-/

namespace A133900.P2344273897717143461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * A064446 (1 + n)

end

end A133900.P2344273897717143461

noncomputable section

/-- A133900: a(n) = period of the sequence {b(m), m>=0}, defined by b(m):=binomial(m+n,n) mod n.

Offset 1, canonical program `A133900.P2344273897717143461`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133900 (n : ℕ) : ℤ :=
  A133900.P2344273897717143461.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133900.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133988.P925296802653209893

`(-1)^n*A089812(n)`
-/

namespace A133988.P925296802653209893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A089812 n

end

end A133988.P925296802653209893

noncomputable section

/-- A133988: Expansion of phi(x) / chi(x^3) in powers of x where phi(), chi() are Ramanujan theta functions.

Offset 0, canonical program `A133988.P925296802653209893`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089812, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133988 (n : ℕ) : ℤ :=
  A133988.P925296802653209893.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089812, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133988.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A134060.P16451542043951084186

`A124927(C(row(n)+1, 2)+col(n))+A134058(C(row(n)+1, 2)+col(n))-A007318(C(row(n)+1, 2)+col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A134060.P16451542043951084186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124927 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n) + A134058 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n) - A007318 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n)

end

end A134060.P16451542043951084186

noncomputable section

/-- A134060: Triangle T(n,k) = A124927(n,k) + A134058(n,k) - A007318(n,k), read by rows.

Offset 0, canonical program `A134060.P16451542043951084186`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A134058, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134060 (n : ℕ) : ℤ :=
  A134060.P16451542043951084186.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A134058, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134060.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A134061.P15204233177949451148

`A124928(C(row(n)+1, 2)+col(n))+A134059(C(row(n)+1, 2)+col(n))-A007318(C(row(n)+1, 2)+col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A134061.P15204233177949451148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124928 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n) + A134059 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n) - A007318 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n)

end

end A134061.P15204233177949451148

noncomputable section

/-- A134061: Triangle read by rows: T(n,k) = A124928(n,k) + A134059(n,k) - A007318(n,k).

Offset 0, canonical program `A134061.P15204233177949451148`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A124928, A134059, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A134061 (n : ℕ) : ℤ :=
  A134061.P15204233177949451148.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A124928, A134059, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A134061.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A134077.P3704379988218628143

`A131944(2*n+1)`
-/

namespace A134077.P3704379988218628143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131944 (2 * n + 1)

end

end A134077.P3704379988218628143

noncomputable section

/-- A134077: Expansion of psi(x) * phi(-x)^3 / chi(-x^3)^3 in powers of x where phi(), psi(), chi() are Ramanujan theta functions.

Offset 0, canonical program `A134077.P3704379988218628143`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A131944, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134077 (n : ℕ) : ℤ :=
  A134077.P3704379988218628143.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A131944, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134077.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A134101.P17113264373539567206

`A040976(lt[4, A001223(n+1)]+2)`
-/

namespace A134101.P17113264373539567206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2)

end

end A134101.P17113264373539567206

noncomputable section

/-- A134101: Odd nonprimes such that the prior odd number is not a prime but the next odd number is a prime.

Offset 1, canonical program `A134101.P17113264373539567206`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A134101 (n : ℕ) : ℤ :=
  A134101.P17113264373539567206.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A134101.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134199.P15346679385903110320

`A002260(n+1)+2*A132440(n)`
-/

namespace A134199.P15346679385903110320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + 2 * A132440 n

end

end A134199.P15346679385903110320

noncomputable section

/-- A134199: A002260 + A134082 - I as infinite lower triangular matrices; I = Identity matrix.

Offset 0, canonical program `A134199.P15346679385903110320`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134199 (n : ℕ) : ℤ :=
  A134199.P15346679385903110320.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134199.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134239.P17118463381127374769

`A127952(n+1)+A003506(n+1)`
-/

namespace A134239.P17118463381127374769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127952 (n + 1) + A003506 (n + 1)

end

end A134239.P17118463381127374769

noncomputable section

/-- A134239: A127899(unsigned) * A007318.

Offset 0, canonical program `A134239.P17118463381127374769`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8001 terms. -/
def A134239 (n : ℕ) : ℤ :=
  A134239.P17118463381127374769.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8001 terms. -/
def A134239.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134376.P14062561110673616678

`comp[A100118(1+n)-1]+1`
-/

namespace A134376.P14062561110673616678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100118 (1 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A134376.P14062561110673616678

noncomputable section

/-- A134376: Numbers whose sum of prime factors (counted with multiplicity) is not prime.

Offset 1, canonical program `A134376.P14062561110673616678`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134376 (n : ℕ) : ℤ :=
  (A134376.P14062561110673616678.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134376.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134403.P11268712443066889151

`A010054(n)+A051162(n)-1`
-/

namespace A134403.P11268712443066889151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n + (A051162 n - 1)

end

end A134403.P11268712443066889151

noncomputable section

/-- A134403: Triangle read by rows: row n consists of (n, n, (n+1), (n+2), (n+3), ...).

Offset 0, canonical program `A134403.P11268712443066889151`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134403 (n : ℕ) : ℤ :=
  A134403.P11268712443066889151.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134403.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134407.P13636450761667218505

`lt[1, A193330(n)]`
-/

namespace A134407.P13636450761667218505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193330 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A134407.P13636450761667218505

noncomputable section

/-- A134407: Numbers n such that n^2 + 1 is composite.

Offset 1, canonical program `A134407.P13636450761667218505`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9159 terms. -/
def A134407 (n : ℕ) : ℤ :=
  (A134407.P13636450761667218505.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9159 terms. -/
def A134407.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134408.P2913322129490497874

`A006336(∑[A005614(n)])`
-/

namespace A134408.P2913322129490497874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006336 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A134408.P2913322129490497874

noncomputable section

/-- A134408: First differences of A006336.

Offset 1, canonical program `A134408.P2913322129490497874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134408 (n : ℕ) : ℤ :=
  A134408.P2913322129490497874.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134408.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134409.P7633649844803624079

`Δ[A006336(A005206(n+1))]`
-/

namespace A134409.P7633649844803624079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006336 (A005206 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134409.P7633649844803624079

noncomputable section

/-- A134409: Second differences of A006336.

Offset 1, canonical program `A134409.P7633649844803624079`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134409 (n : ℕ) : ℤ :=
  A134409.P7633649844803624079.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134409.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134425.P9961486418266130695

`6*a(n-1)-A001003(n)` with `a(0)=1`
-/

namespace A134425.P9961486418266130695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  6 * a (n - 1) - A001003 n

end

end A134425.P9961486418266130695

noncomputable section

/-- A134425: Number of paths of length n in the first quadrant, starting at the origin and consisting of 2 kinds of upsteps U=(1,1) (U1 and U2), 3 kinds of flatsteps F=(1,0) (F1, F2 and F3) and 1 kind of downsteps D=(1,-1).

Offset 0, canonical program `A134425.P9961486418266130695`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A134425 (n : ℕ) : ℤ :=
  A134425.P9961486418266130695.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A134425.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134533.P10425508017488399224

`eq[0, A005171(A066003(n))]`
-/

namespace A134533.P10425508017488399224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A066003 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A134533.P10425508017488399224

noncomputable section

/-- A134533: Numbers n such that the sum of the digits of 7^n is prime.

Offset 1, canonical program `A134533.P10425508017488399224`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1593 terms. -/
def A134533 (n : ℕ) : ℤ :=
  (A134533.P10425508017488399224.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1593 terms. -/
def A134533.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134548.P4114164626790559552

`Δ[A095815(a(n-1))+2]` with `a(0)=0, a(1)=1`
-/

namespace A134548.P4114164626790559552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  A095815 (f1 (n - 1)).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134548.P4114164626790559552

noncomputable section

/-- A134548: a(1)=1, a(n) = 2 + maximal digit of Sum_{j=1..n-1} a(j).

Offset 1, canonical program `A134548.P4114164626790559552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1051 terms. -/
def A134548 (n : ℕ) : ℤ :=
  A134548.P4114164626790559552.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1051 terms. -/
def A134548.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134565.P4827639632011850135

`(-1)^n*A047749(1+n)`
-/

namespace A134565.P4827639632011850135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A047749 (1 + n)

end

end A134565.P4827639632011850135

noncomputable section

/-- A134565: Expansion of reversion of (x - 2*x^2) / (1 - x)^3.

Offset 1, canonical program `A134565.P4827639632011850135`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 248 terms. -/
def A134565 (n : ℕ) : ℤ :=
  A134565.P4827639632011850135.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 248 terms. -/
def A134565.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134681.P6039444859800952539

`∑{d}[1+n, A055642(#)]`
-/

namespace A134681.P6039444859800952539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055642 d

end

end A134681.P6039444859800952539

noncomputable section

/-- A134681: Number of digits of all the divisors of n.

Offset 1, canonical program `A134681.P6039444859800952539`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134681 (n : ℕ) : ℤ :=
  A134681.P6039444859800952539.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134681.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134757.P15787088376940040508

`Δ[A132894(n)]`
-/

namespace A134757.P15787088376940040508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132894 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134757.P15787088376940040508

noncomputable section

/-- A134757: A007318 * A100071.

Offset 1, canonical program `A134757.P15787088376940040508`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A134757 (n : ℕ) : ℤ :=
  A134757.P15787088376940040508.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A134757.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134764.P7980750495168599662

`∑{d}[n+1, A007427(#)*A066768((n+1)/#)]`
-/

namespace A134764.P7980750495168599662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A066768 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A134764.P7980750495168599662

noncomputable section

/-- A134764: A054525 * A000984.

Offset 1, canonical program `A134764.P7980750495168599662`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A134764 (n : ℕ) : ℤ :=
  A134764.P7980750495168599662.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A134764.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134833.P2407391357251017423

`∑{#}[n, A134832(C(n+1, 2)+#)*(-1)^#]`
-/

namespace A134833.P2407391357251017423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A134832 (Nat.choose (n + 1) 2 + k) * (-1) ^ k

end

end A134833.P2407391357251017423

noncomputable section

/-- A134833: Alternating row sums of triangle A134832.

Offset 0, canonical program `A134833.P2407391357251017423`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A134832, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134833 (n : ℕ) : ℤ :=
  A134833.P2407391357251017423.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A134832, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134833.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A134860.P16137066467942945469

`abs(4-A188438(n+1))`
-/

namespace A134860.P16137066467942945469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 - A188438 (n + 1)|

end

end A134860.P16137066467942945469

noncomputable section

/-- A134860: Wythoff AAB numbers; also, Fib101 numbers: those n for which the Zeckendorf expansion A014417(n) ends with 1,0,1.

Offset 1, canonical program `A134860.P16137066467942945469`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134860 (n : ℕ) : ℤ :=
  A134860.P16137066467942945469.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134860.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134861.P12598962134347157448

`A035339(n)%A372302(n+1)`
-/

namespace A134861.P12598962134347157448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035339 n) (A372302 (n + 1))

end

end A134861.P12598962134347157448

noncomputable section

/-- A134861: Wythoff BAA numbers.

Offset 1, canonical program `A134861.P12598962134347157448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134861 (n : ℕ) : ℤ :=
  A134861.P12598962134347157448.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134861.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134870.P924456470311345683

`A051731(n+1)+1-A103451(n)`
-/

namespace A134870.P924456470311345683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) + (1 - A103451 n)

end

end A134870.P924456470311345683

noncomputable section

/-- A134870: A051731 + A000012 - A103451.

Offset 1, canonical program `A134870.P924456470311345683`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134870 (n : ℕ) : ℤ :=
  A134870.P924456470311345683.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134870.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134896.P9421466722066182485

`A134897(n+1)+A004736(record[C(n, 2)-n]+1)`
-/

namespace A134896.P9421466722066182485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134897 (n + 1) + A004736 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A134896.P9421466722066182485

noncomputable section

/-- A134896: Ceiling(n*exp(cot n)).

Offset 1, canonical program `A134896.P9421466722066182485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A134896 (n : ℕ) : ℤ :=
  A134896.P9421466722066182485.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A134896.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135087.P16529206238730249843

`2*A134058(C(row(n)+1, 2)+col(n))-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A135087.P16529206238730249843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A134058 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n) - 1

end

end A135087.P16529206238730249843

noncomputable section

/-- A135087: Triangle T(n, k) = 2*A134058(n, k) - 1, read by rows.

Offset 0, canonical program `A135087.P16529206238730249843`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A134058, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135087 (n : ℕ) : ℤ :=
  A135087.P16529206238730249843.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A134058, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135087.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A135089.P9007722127279209499

`floor(5*A134059(n)/3)`
-/

namespace A135089.P9007722127279209499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * ((A134059 n : ℚ) / 3)⌋

end

end A135089.P9007722127279209499

noncomputable section

/-- A135089: Triangle T(n,k) = 5*binomial(n,k) with T(0,0) = 1, read by rows.

Offset 0, canonical program `A135089.P9007722127279209499`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135089 (n : ℕ) : ℤ :=
  A135089.P9007722127279209499.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135089.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135111.P10146640050812540402

`eq[A053735(n), A280167(A000120(n))]`
-/

namespace A135111.P10146640050812540402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280167 (A000120 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135111.P10146640050812540402

noncomputable section

/-- A135111: Numbers such that the digital sum base 2 and the digital sum base 3 are in a ratio of 2:3.

Offset 1, canonical program `A135111.P10146640050812540402`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 530 terms. -/
def A135111 (n : ℕ) : ℤ :=
  (A135111.P10146640050812540402.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 530 terms. -/
def A135111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135178.P2117100385622879640

`A001248(n+1)+A030078(n+1)`
-/

namespace A135178.P2117100385622879640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) + A030078 (n + 1)

end

end A135178.P2117100385622879640

noncomputable section

/-- A135178: a(n) = p^3 + p^2 where p = prime(n).

Offset 1, canonical program `A135178.P2117100385622879640`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135178 (n : ℕ) : ℤ :=
  A135178.P2117100385622879640.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135178.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135180.P8244310904201166205

`A138406(n+1)+A001248(1+n)`
-/

namespace A135180.P8244310904201166205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138406 (n + 1) + A001248 (1 + n)

end

end A135180.P8244310904201166205

noncomputable section

/-- A135180: a(n) = p^5 - p^3 + p^2, where p = prime(n).

Offset 1, canonical program `A135180.P8244310904201166205`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135180 (n : ℕ) : ℤ :=
  A135180.P8244310904201166205.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135180.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135223.P14742202444666781604

`A008805(A198954(n))+A002262(n)`
-/

namespace A135223.P14742202444666781604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 (A198954 n).toNat + A002262 n

end

end A135223.P14742202444666781604

noncomputable section

/-- A135223: Triangle A000012 * A127648 * A103451, read by rows.

Offset 1, canonical program `A135223.P14742202444666781604`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135223 (n : ℕ) : ℤ :=
  A135223.P14742202444666781604.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135223.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135224.P16771129364297537144

`A073424(n)+A055248(n)`
-/

namespace A135224.P16771129364297537144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n + A055248 n

end

end A135224.P16771129364297537144

noncomputable section

/-- A135224: Triangle A103451 * A007318 * A000012, read by rows. T(n, k) for 0 <= k <= n.

Offset 0, canonical program `A135224.P16771129364297537144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135224 (n : ℕ) : ℤ :=
  A135224.P16771129364297537144.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135224.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135225.P1573324357091350278

`A097805(A073423(n)+n)`
-/

namespace A135225.P1573324357091350278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A073423 n + (n : ℤ)).toNat

end

end A135225.P1573324357091350278

noncomputable section

/-- A135225: Pascal's triangle A007318 augmented with a leftmost border column of 1's.

Offset 0, canonical program `A135225.P1573324357091350278`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135225 (n : ℕ) : ℤ :=
  A135225.P1573324357091350278.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135225.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135232.P16583534585505576983

`∑[A089581(1+n)]`
-/

namespace A135232.P16583534585505576983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089581 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135232.P16583534585505576983

noncomputable section

/-- A135232: Sum of the products of the first n prime pairs.

Offset 1, canonical program `A135232.P16583534585505576983`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135232 (n : ℕ) : ℤ :=
  A135232.P16583534585505576983.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135413.P3622690871526348622

`(1+n)*A036766(n)`
-/

namespace A135413.P3622690871526348622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * A036766 n

end

end A135413.P3622690871526348622

noncomputable section

/-- A135413: Number of at most 4-way branching ordered (i.e., plane) trees.

Offset 1, canonical program `A135413.P3622690871526348622`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A135413 (n : ℕ) : ℤ :=
  A135413.P3622690871526348622.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A135413.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135552.P804695202083773681

`A033999(A002262(n))*A131250(A014132(n+1))`
-/

namespace A135552.P804695202083773681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A002262 n).toNat * A131250 (A014132 (n + 1)).toNat

end

end A135552.P804695202083773681

noncomputable section

/-- A135552: Riordan array (1/((1-2x)(1-x)^2), -x/(1-x)^2).

Offset 1, canonical program `A135552.P804695202083773681`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. -/
def A135552 (n : ℕ) : ℤ :=
  A135552.P804695202083773681.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. -/
def A135552.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135585.P10586276068203702289

`∑[A135133(n)]`
-/

namespace A135585.P10586276068203702289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135133 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135585.P10586276068203702289

noncomputable section

/-- A135585: a(n) = Sum_{i=1..n} (floor(S2(i)/3) mod 2), where S2(i) = A000120(i).

Offset 0, canonical program `A135585.P10586276068203702289`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135585 (n : ℕ) : ℤ :=
  A135585.P10586276068203702289.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135585.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135618.P17133991811513535197

`A134718(n+1)/2`
-/

namespace A135618.P17133991811513535197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134718 (n + 1) : ℚ) / 2

end

end A135618.P17133991811513535197

noncomputable section

/-- A135618: Even Motzkin numbers divided by 2.

Offset 1, canonical program `A135618.P17133991811513535197`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A134718, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135618 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A135618.P17133991811513535197.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A134718, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135618.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A135840.P14133601689704318792

`ceil((A010054(n)+A004736(n+1))/2)`
-/

namespace A135840.P14133601689704318792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A010054 n + A004736 (n + 1) : ℚ) / 2⌉

end

end A135840.P14133601689704318792

noncomputable section

/-- A135840: A135839 * A000012 as infinite lower triangular matrices.

Offset 1, canonical program `A135840.P14133601689704318792`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A135840 (n : ℕ) : ℤ :=
  A135840.P14133601689704318792.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A135840.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135852.P3513124287864982456

`A103406(n)*A211164(A198954(n))`
-/

namespace A135852.P3513124287864982456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103406 n * A211164 (A198954 n).toNat

end

end A135852.P3513124287864982456

noncomputable section

/-- A135852: A007318 * A103516 as a lower triangular matrix.

Offset 0, canonical program `A135852.P3513124287864982456`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135852 (n : ℕ) : ℤ :=
  A135852.P3513124287864982456.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135852.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135855.P16850139679087986239

`2*A110813(n)-A131085(n)`
-/

namespace A135855.P16850139679087986239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A110813 n - A131085 n

end

end A135855.P16850139679087986239

noncomputable section

/-- A135855: A007318 * a tridiagonal matrix with (1, 4, 1, 0, 0, 0, ...) in every column.

Offset 0, canonical program `A135855.P16850139679087986239`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135855 (n : ℕ) : ℤ :=
  A135855.P16850139679087986239.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135855.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135930.P11046025906780650624

`p?[A000040(n+1)*A010051(A000006(n+1))]`
-/

namespace A135930.P11046025906780650624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A010051 (A000006 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A135930.P11046025906780650624

noncomputable section

/-- A135930: Primes whose integer square root is also prime.

Offset 1, canonical program `A135930.P11046025906780650624`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1849 terms. -/
def A135930 (n : ℕ) : ℤ :=
  A135930.P11046025906780650624.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1849 terms. -/
def A135930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135931.P1083306340031313068

`p?[A010051(A000006(n+1))+A000040(n+1)]`
-/

namespace A135931.P1083306340031313068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A000006 (n + 1)).toNat + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A135931.P1083306340031313068

noncomputable section

/-- A135931: Primes whose integer square root is not a prime.

Offset 1, canonical program `A135931.P1083306340031313068`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8151 terms. -/
def A135931 (n : ℕ) : ℤ :=
  A135931.P1083306340031313068.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8151 terms. -/
def A135931.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136049.P5370215728173111887

`Δ[A071538((1+n)²+n)]`
-/

namespace A136049.P5370215728173111887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 ((1 + n) ^ 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A136049.P5370215728173111887

noncomputable section

/-- A136049: a(n)=number of primes p such that (p,p+2) is a pair of twin primes with n^2 + n < p < n^2+3*n+2.

Offset 1, canonical program `A136049.P5370215728173111887`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 314 terms. -/
def A136049 (n : ℕ) : ℤ :=
  A136049.P5370215728173111887.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 314 terms. -/
def A136049.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136063.P6007751385196214412

`p?[9*A006093(n+1)+1]`
-/

namespace A136063.P6007751385196214412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A006093 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136063.P6007751385196214412

noncomputable section

/-- A136063: Mother primes of order 4.

Offset 1, canonical program `A136063.P6007751385196214412`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2036 terms. -/
def A136063 (n : ℕ) : ℤ :=
  A136063.P6007751385196214412.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2036 terms. -/
def A136063.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136064.P4369276691916224669

`p?[11*A006093(n+1)+1]`
-/

namespace A136064.P4369276691916224669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A006093 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136064.P4369276691916224669

noncomputable section

/-- A136064: Mother primes of order 5.

Offset 1, canonical program `A136064.P4369276691916224669`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1373 terms. -/
def A136064 (n : ℕ) : ℤ :=
  A136064.P4369276691916224669.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1373 terms. -/
def A136064.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136068.P14960565714948340303

`p?[19*A006093(n+1)+1]`
-/

namespace A136068.P14960565714948340303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  19 * A006093 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136068.P14960565714948340303

noncomputable section

/-- A136068: Mother primes of order 9.

Offset 1, canonical program `A136068.P14960565714948340303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1182 terms. -/
def A136068 (n : ℕ) : ℤ :=
  A136068.P14960565714948340303.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1182 terms. -/
def A136068.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136069.P239198590526988614

`p?[21*A006093(n+1)+1]`
-/

namespace A136069.P239198590526988614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  21 * A006093 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136069.P239198590526988614

noncomputable section

/-- A136069: Mother primes of order 10.

Offset 1, canonical program `A136069.P239198590526988614`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1635 terms. -/
def A136069 (n : ℕ) : ℤ :=
  A136069.P239198590526988614.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1635 terms. -/
def A136069.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136070.P4483853176803871753

`p?[23*A006093(n+1)+1]`
-/

namespace A136070.P4483853176803871753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  23 * A006093 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136070.P4483853176803871753

noncomputable section

/-- A136070: Mother primes of order 11.

Offset 1, canonical program `A136070.P4483853176803871753`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 553 terms. -/
def A136070 (n : ℕ) : ℤ :=
  A136070.P4483853176803871753.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 553 terms. -/
def A136070.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136072.P9164867386790231185

`p?[7*A008864(n+1)-1]`
-/

namespace A136072.P9164867386790231185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A008864 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136072.P9164867386790231185

noncomputable section

/-- A136072: Primes of the form 7*p + 6 with p prime.

Offset 1, canonical program `A136072.P9164867386790231185`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2600 terms. -/
def A136072 (n : ℕ) : ℤ :=
  A136072.P9164867386790231185.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2600 terms. -/
def A136072.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136076.P10771529814166551126

`p?[15*A008864(n+1)-1]`
-/

namespace A136076.P10771529814166551126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 * A008864 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136076.P10771529814166551126

noncomputable section

/-- A136076: Primes of the form 15*p + 14 with p prime.

Offset 1, canonical program `A136076.P10771529814166551126`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2204 terms. -/
def A136076 (n : ℕ) : ℤ :=
  A136076.P10771529814166551126.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2204 terms. -/
def A136076.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136079.P13389629835075669409

`p?[21*A008864(n+1)-1]`
-/

namespace A136079.P13389629835075669409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  21 * A008864 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136079.P13389629835075669409

noncomputable section

/-- A136079: Primes of the form 21*p + 20 with p prime.

Offset 1, canonical program `A136079.P13389629835075669409`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1645 terms. -/
def A136079 (n : ℕ) : ℤ :=
  A136079.P13389629835075669409.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1645 terms. -/
def A136079.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136083.P11834625552035817786

`floor(A136075(1+n)/13)`
-/

namespace A136083.P11834625552035817786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A136075 (1 + n) : ℚ) / 13⌋

end

end A136083.P11834625552035817786

noncomputable section

/-- A136083: Son primes of order 6.

Offset 1, canonical program `A136083.P11834625552035817786`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136083 (n : ℕ) : ℤ :=
  A136083.P11834625552035817786.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136083.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136088.P12821542467100649494

`floor(A136080(1+n)/23)`
-/

namespace A136088.P12821542467100649494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A136080 (1 + n) : ℚ) / 23⌋

end

end A136088.P12821542467100649494

noncomputable section

/-- A136088: Son primes of order 11.

Offset 1, canonical program `A136088.P12821542467100649494`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136088 (n : ℕ) : ℤ :=
  A136088.P12821542467100649494.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136088.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136288.P6117601976786394949

`p?[A008347(n)]`
-/

namespace A136288.P6117601976786394949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136288.P6117601976786394949

noncomputable section

/-- A136288: Primes which are the absolute value of the alternating sum and difference of the first n primes.

Offset 1, canonical program `A136288.P6117601976786394949`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2802 terms. -/
def A136288 (n : ℕ) : ℤ :=
  A136288.P6117601976786394949.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2802 terms. -/
def A136288.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136462.P13145340659209256192

`C(A296612(A061579(n)), A002262(n))`
-/

namespace A136462.P13145340659209256192
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A296612 (A061579 n).toNat).toNat (A002262 n).toNat

end

end A136462.P13145340659209256192

noncomputable section

/-- A136462: Square table, read by antidiagonals, where T(n,k) = C((n+1)*2^(k-1), k) for n>=0, k>=0.

Offset 0, canonical program `A136462.P13145340659209256192`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. -/
def A136462 (n : ℕ) : ℤ :=
  (A136462.P13145340659209256192.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. -/
def A136462.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136579.P5647402470606448

`A116447(A133728(n+1))`
-/

namespace A136579.P5647402470606448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116447 (A133728 (n + 1)).toNat

end

end A136579.P5647402470606448

noncomputable section

/-- A136579: Triangle read by rows: A128174 * A136572.

Offset 0, canonical program `A136579.P5647402470606448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2555 terms. -/
def A136579 (n : ℕ) : ℤ :=
  A136579.P5647402470606448.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2555 terms. -/
def A136579.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136788.P17718164004206831066

`A107131(n)+T(n-1,k)` with `a(0)=1`
-/

namespace A136788.P17718164004206831066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A107131 n + SequenceMachineLib.triUp a n

end

end A136788.P17718164004206831066

noncomputable section

/-- A136788: Triangle read by rows: A000012 * A107131.

Offset 0, canonical program `A136788.P17718164004206831066`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136788 (n : ℕ) : ℤ :=
  A136788.P17718164004206831066.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136788.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137230.P10062007597291883892

`filter[A074946(1+n), A005171(#)]`
-/

namespace A137230.P10062007597291883892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074946 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A137230.P10062007597291883892

noncomputable section

/-- A137230: Composite numbers that are divisible by the number of their prime factors (counted with multiplicity).

Offset 1, canonical program `A137230.P10062007597291883892`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7283 terms. -/
def A137230 (n : ℕ) : ℤ :=
  A137230.P10062007597291883892.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7283 terms. -/
def A137230.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137382.P7698479652326352668

`A071973(A000040(n+2))-A071973(A000040(n+1))`
-/

namespace A137382.P7698479652326352668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071973 (A000040 (n + 2)).toNat - A071973 (A000040 (n + 1)).toNat

end

end A137382.P7698479652326352668

noncomputable section

/-- A137382: Number of primes between Pi^(prime(n)) and Pi^(prime(n+1)).

Offset 1, canonical program `A137382.P7698479652326352668`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071973, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A137382 (n : ℕ) : ℤ :=
  A137382.P7698479652326352668.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071973, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A137382.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A137486.P15783461921404906948

`A079395(n+1)²`
-/

namespace A137486.P15783461921404906948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079395 (n + 1) ^ 2

end

end A137486.P15783461921404906948

noncomputable section

/-- A137486: Numbers with 23 divisors.

Offset 1, canonical program `A137486.P15783461921404906948`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3744 terms. -/
def A137486 (n : ℕ) : ℤ :=
  A137486.P15783461921404906948.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3744 terms. -/
def A137486.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137735.P991700169822903993

`A000194(n+1-A384688(n))`
-/

namespace A137735.P991700169822903993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 ((n + 1 : ℤ) - A384688 n).toNat

end

end A137735.P991700169822903993

noncomputable section

/-- A137735: a(0)=1. a(n) = floor(n/b(n)), where b(n) is the largest value among (a(0),a(1),...,a(n-1)).

Offset 0, canonical program `A137735.P991700169822903993`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137735 (n : ℕ) : ℤ :=
  A137735.P991700169822903993.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137735.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137773.P5744758728077306555

`A247049(A131431(n))`
-/

namespace A137773.P5744758728077306555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247049 (A131431 n).toNat

end

end A137773.P5744758728077306555

noncomputable section

/-- A137773: Triangular sequence: The Fibonacci sequence on the diagonal, 1's at all other places.

Offset 1, canonical program `A137773.P5744758728077306555`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137773 (n : ℕ) : ℤ :=
  A137773.P5744758728077306555.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137773.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137842.P1605521868964614452

`A084078((n-1)%(n+1))`
-/

namespace A137842.P1605521868964614452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084078 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A137842.P1605521868964614452

noncomputable section

/-- A137842: Number of paths from (0,0) if n is even, or from (2,1) if n is odd, to (3n,0) that stay in first quadrant (but may touch horizontal axis) and where each step is (2,1), (1,2) or (1,-1).

Offset 0, canonical program `A137842.P1605521868964614452`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. -/
def A137842 (n : ℕ) : ℤ :=
  A137842.P1605521868964614452.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. -/
def A137842.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137893.P5279872751976216164

`1-A080846(n+1)`
-/

namespace A137893.P5279872751976216164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A080846 (n + 1)

end

end A137893.P5279872751976216164

noncomputable section

/-- A137893: Fixed point of the morphism 0->100, 1->101, starting from a(1) = 1.

Offset 1, canonical program `A137893.P5279872751976216164`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137893 (n : ℕ) : ℤ :=
  A137893.P5279872751976216164.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137893.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137992.P6858819124335204496

`∑[A039969(n)]%3`
-/

namespace A137992.P6858819124335204496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 3

end

end A137992.P6858819124335204496

noncomputable section

/-- A137992: A014137 (= partial sums of Catalan numbers A000108) mod 3.

Offset 0, canonical program `A137992.P6858819124335204496`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137992 (n : ℕ) : ℤ :=
  A137992.P6858819124335204496.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137993.P8968071889324067760

`∑[(-1)^n*A039964(n)]`
-/

namespace A137993.P8968071889324067760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A039964 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137993.P8968071889324067760

noncomputable section

/-- A137993: A014138 (= partial sums of Catalan numbers starting with 1,2,5) mod 3.

Offset 0, canonical program `A137993.P8968071889324067760`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137993 (n : ℕ) : ℤ :=
  A137993.P8968071889324067760.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137993.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138035.P1225257615212975941

`∑{#}[n, C(n, #)*A135416(#+1)]`
-/

namespace A138035.P1225257615212975941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A135416 (k + 1)

end

end A138035.P1225257615212975941

noncomputable section

/-- A138035: Binomial transform of A135416.

Offset 0, canonical program `A138035.P1225257615212975941`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 272 terms. -/
def A138035 (n : ℕ) : ℤ :=
  A138035.P1225257615212975941.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 272 terms. -/
def A138035.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138139.P8390411299693681906

`A005145(A106255(n+1))`
-/

namespace A138139.P8390411299693681906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005145 (A106255 (n + 1)).toNat

end

end A138139.P8390411299693681906

noncomputable section

/-- A138139: Triangle read by rows: row n contains n terms and each column lists the prime numbers A000040.

Offset 1, canonical program `A138139.P8390411299693681906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138139 (n : ℕ) : ℤ :=
  A138139.P8390411299693681906.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138139.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138383.P12057680443366448035

`abs(Δ[A034953(abs(1-n)+1)])`
-/

namespace A138383.P12057680443366448035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034953 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A138383.P12057680443366448035

noncomputable section

/-- A138383: If prime(i) = i-th prime, a(n) = prime(n)+1 + prime(n)+2 + ... + prime(n+1). a(0) = 3 by convention.

Offset 0, canonical program `A138383.P12057680443366448035`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138383 (n : ℕ) : ℤ :=
  A138383.P12057680443366448035.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138383.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138412.P9166921573337738631

`A030516(n+1)-A050997(n+1)`
-/

namespace A138412.P9166921573337738631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030516 (n + 1) - A050997 (n + 1)

end

end A138412.P9166921573337738631

noncomputable section

/-- A138412: a(n) = p^5*(p-1) where p = prime(n).

Offset 1, canonical program `A138412.P9166921573337738631`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138412 (n : ℕ) : ℤ :=
  A138412.P9166921573337738631.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138412.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138416.P16017585133365700482

`A127918(n+1)-A008837(n+1)`
-/

namespace A138416.P16017585133365700482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127918 (n + 1) - A008837 (n + 1)

end

end A138416.P16017585133365700482

noncomputable section

/-- A138416: a(n) = (p^3 - p^2)/2, where p = prime(n).

Offset 1, canonical program `A138416.P16017585133365700482`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138416 (n : ℕ) : ℤ :=
  A138416.P16017585133365700482.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138416.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138468.P12150943898235802367

`A060384(n)-A136610(n)`
-/

namespace A138468.P12150943898235802367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 n - A136610 n

end

end A138468.P12150943898235802367

noncomputable section

/-- A138468: Number of even digits in Fibonacci numbers.

Offset 0, canonical program `A138468.P12150943898235802367`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060384, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138468 (n : ℕ) : ℤ :=
  A138468.P12150943898235802367.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060384, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138468.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138624.P18332291675084887682

`floor(A138623(1+n)/17)`
-/

namespace A138624.P18332291675084887682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A138623 (1 + n) : ℚ) / 17⌋

end

end A138624.P18332291675084887682

noncomputable section

/-- A138624: Nonnegative integers k such that 17*k+5 is prime.

Offset 1, canonical program `A138624.P18332291675084887682`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138624 (n : ℕ) : ℤ :=
  A138624.P18332291675084887682.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138624.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138626.P11894873266718302437

`ceil(A138625(1+n)/17)`
-/

namespace A138626.P11894873266718302437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A138625 (1 + n) : ℚ) / 17⌉

end

end A138626.P11894873266718302437

noncomputable section

/-- A138626: Nonnegative integers n such that 17*n-5 is prime.

Offset 1, canonical program `A138626.P11894873266718302437`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138626 (n : ℕ) : ℤ :=
  A138626.P11894873266718302437.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138626.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138628.P16588064335616168637

`ceil(A138627(1+n)/17)`
-/

namespace A138628.P16588064335616168637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A138627 (1 + n) : ℚ) / 17⌉

end

end A138628.P16588064335616168637

noncomputable section

/-- A138628: Positive integers k such that 17*k-7 is prime.

Offset 1, canonical program `A138628.P16588064335616168637`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138628 (n : ℕ) : ℤ :=
  A138628.P16588064335616168637.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138628.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138630.P3926396253462298263

`floor(A138629(1+n)/17)`
-/

namespace A138630.P3926396253462298263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A138629 (1 + n) : ℚ) / 17⌋

end

end A138630.P3926396253462298263

noncomputable section

/-- A138630: Nonnegative integers k such that 17*k+7 is prime.

Offset 1, canonical program `A138630.P3926396253462298263`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138630 (n : ℕ) : ℤ :=
  A138630.P3926396253462298263.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138630.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138632.P17314360812561252367

`floor(A138631(1+n)/17)`
-/

namespace A138632.P17314360812561252367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A138631 (1 + n) : ℚ) / 17⌋

end

end A138632.P17314360812561252367

noncomputable section

/-- A138632: Nonnegative integers k such that 17*k+9 is prime.

Offset 1, canonical program `A138632.P17314360812561252367`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138632 (n : ℕ) : ℤ :=
  A138632.P17314360812561252367.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138632.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138634.P7859391578108386486

`ceil(A138633(n+1)/17)`
-/

namespace A138634.P7859391578108386486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A138633 (n + 1) : ℚ) / 17⌉

end

end A138634.P7859391578108386486

noncomputable section

/-- A138634: Nonnegative integers k such that 17*k-9 is prime.

Offset 1, canonical program `A138634.P7859391578108386486`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138634 (n : ℕ) : ℤ :=
  A138634.P7859391578108386486.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138639.P4190226665619492302

`ceil(A138638(n+1)/19)`
-/

namespace A138639.P4190226665619492302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A138638 (n + 1) : ℚ) / 19⌉

end

end A138639.P4190226665619492302

noncomputable section

/-- A138639: Nonnegative integers n such that 19*n-1 is prime.

Offset 1, canonical program `A138639.P4190226665619492302`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138639 (n : ℕ) : ℤ :=
  A138639.P4190226665619492302.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138639.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138643.P7182174637944108036

`ceil(A138642(1+n)/19)`
-/

namespace A138643.P7182174637944108036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A138642 (1 + n) : ℚ) / 19⌉

end

end A138643.P7182174637944108036

noncomputable section

/-- A138643: Nonnegative integers k such that 19*k-3 is prime.

Offset 1, canonical program `A138643.P7182174637944108036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138643 (n : ℕ) : ℤ :=
  A138643.P7182174637944108036.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138643.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138679.P7692524166590692008

`A138674(2+n)²%A000040(n+1)`
-/

namespace A138679.P7692524166590692008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138674 (2 + n) ^ 2) (A000040 (n + 1))

end

end A138679.P7692524166590692008

noncomputable section

/-- A138679: Prime(n)^10 mod prime(n-1).

Offset 2, canonical program `A138679.P7692524166590692008`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138679 (n : ℕ) : ℤ :=
  A138679.P7692524166590692008.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138679.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138680.P17821806884942595706

`(A038702(n+2)*A138678(n+2))%A000040(n+1)`
-/

namespace A138680.P17821806884942595706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038702 (n + 2) * A138678 (n + 2)) (A000040 (n + 1))

end

end A138680.P17821806884942595706

noncomputable section

/-- A138680: Prime(n)^11 mod prime(n-1).

Offset 2, canonical program `A138680.P17821806884942595706`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138680 (n : ℕ) : ℤ :=
  A138680.P17821806884942595706.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138680.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138681.P10355278238073095109

`A138675(n+2)²%A000040(n+1)`
-/

namespace A138681.P10355278238073095109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138675 (n + 2) ^ 2) (A000040 (n + 1))

end

end A138681.P10355278238073095109

noncomputable section

/-- A138681: Prime(n)^12 mod prime(n-1).

Offset 2, canonical program `A138681.P10355278238073095109`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138681 (n : ℕ) : ℤ :=
  A138681.P10355278238073095109.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138681.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138691.P4883245784858706281

`A001248(1+n)+68`
-/

namespace A138691.P4883245784858706281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (1 + n) + 68

end

end A138691.P4883245784858706281

noncomputable section

/-- A138691: Numbers of the form 68+p^2 (where p is a prime).

Offset 1, canonical program `A138691.P4883245784858706281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A138691 (n : ℕ) : ℤ :=
  A138691.P4883245784858706281.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A138691.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138710.P15638596166215743581

`and(A054977(n), A095791(n))`
-/

namespace A138710.P15638596166215743581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054977 n) (A095791 n)

end

end A138710.P15638596166215743581

noncomputable section

/-- A138710: n-th run has length n-th positive Fibonacci numbers, with digits 0 and 1 only, starting with 0.

Offset 1, canonical program `A138710.P15638596166215743581`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138710 (n : ℕ) : ℤ :=
  A138710.P15638596166215743581.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138710.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138902.P6278283737230094535

`A055642(n)!`
-/

namespace A138902.P6278283737230094535
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A055642 n).toNat

end

end A138902.P6278283737230094535

noncomputable section

/-- A138902: a(n) = d!, where d is the number of digits in n.

Offset 0, canonical program `A138902.P6278283737230094535`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138902 (n : ℕ) : ℤ :=
  (A138902.P6278283737230094535.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138952.P8845093039142531308

`(-1)^n*A138950(n+1)`
-/

namespace A138952.P8845093039142531308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A138950 (n + 1)

end

end A138952.P8845093039142531308

noncomputable section

/-- A138952: Expansion of (eta(q^2)^7 * eta(q^3)^2 * eta(q^12) / (eta(q)^2 * eta(q^4)^3 * eta(q^6)^3) - 1) / 2 in powers of q.

Offset 1, canonical program `A138952.P8845093039142531308`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138950, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138952 (n : ℕ) : ℤ :=
  A138952.P8845093039142531308.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138950, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138952.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A139038.P10853332724780471891

`A134816(A004197(n)+2)`
-/

namespace A139038.P10853332724780471891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (A004197 n + 2).toNat

end

end A139038.P10853332724780471891

noncomputable section

/-- A139038: Triangle read by rows: T(n,m) = A000931(m+6) if m <= floor(n/2), A000931(n+6-m) otherwise, for 0 <= m <= n.

Offset 0, canonical program `A139038.P10853332724780471891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139038 (n : ℕ) : ℤ :=
  A139038.P10853332724780471891.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139312.P310610346778643042

`floor(A065091(n+1)²/A090076(n+1))`
-/

namespace A139312.P310610346778643042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A065091 (n + 1) ^ 2 : ℚ) / (A090076 (n + 1) : ℚ)⌋

end

end A139312.P310610346778643042

noncomputable section

/-- A139312: Characteristic function of the good primes (version 1).

Offset 2, canonical program `A139312.P310610346778643042`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139312 (n : ℕ) : ℤ :=
  A139312.P310610346778643042.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139312.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139316.P5331795480152910723

`eq[A001222(n+2), A161606(n+2)]+2`
-/

namespace A139316.P5331795480152910723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161606 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A139316.P5331795480152910723

noncomputable section

/-- A139316: An integer k, k>=2, is in the sequence if A001222(k) (the sum of the exponents in the prime factorization of k) divides A008472(k) (the sum of the distinct primes dividing k).

Offset 1, canonical program `A139316.P5331795480152910723`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4840 terms. -/
def A139316 (n : ℕ) : ℤ :=
  (A139316.P5331795480152910723.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4840 terms. -/
def A139316.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139376.P7721167758438941344

`∑{#}[n, A000045(#+1)*A132364(n-#)]`
-/

namespace A139376.P7721167758438941344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A000045 (k + 1) * A132364 (n - k)

end

end A139376.P7721167758438941344

noncomputable section

/-- A139376: Expansion of 1/((1-x^2*c(x))(1-x-x^2)) where c(x) is the g.f. of A000108.

Offset 0, canonical program `A139376.P7721167758438941344`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132364, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139376 (n : ℕ) : ℤ :=
  A139376.P7721167758438941344.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132364, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139376.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A139406.P4242831370835616806

`∩[A005123(n+1), A105133(n+1)]`
-/

namespace A139406.P4242831370835616806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139406.P4242831370835616806

noncomputable section

/-- A139406: Numbers k such that 8*k+1 and 8*k+5 are primes.

Offset 1, canonical program `A139406.P4242831370835616806`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1084 terms. -/
def A139406 (n : ℕ) : ℤ :=
  (A139406.P4242831370835616806.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1084 terms. -/
def A139406.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139413.P8227947109060917718

`dr(∑[A010054(n)]*A002260(n+1))`
-/

namespace A139413.P8227947109060917718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((∑ j ∈ Finset.range (n + 1), f1 j) * A002260 (n + 1))

end

end A139413.P8227947109060917718

noncomputable section

/-- A139413: Triangle read by rows: row n gives the numbers A010888(n*k) for k = 1..n.

Offset 1, canonical program `A139413.P8227947109060917718`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139413 (n : ℕ) : ℤ :=
  (A139413.P8227947109060917718.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139413.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139528.P15347248445636500749

`eq[2*n+1, A295012(2*n+1)]`
-/

namespace A139528.P15347248445636500749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295012 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139528.P15347248445636500749

noncomputable section

/-- A139528: Numbers k such that 24*k + 11 is prime.

Offset 1, canonical program `A139528.P15347248445636500749`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139528 (n : ℕ) : ℤ :=
  (A139528.P15347248445636500749.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139528.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139548.P13919224620626575933

`A000079(floor(sqrt(n)))*A034870(n)`
-/

namespace A139548.P13919224620626575933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (Nat.sqrt n) * A034870 n

end

end A139548.P13919224620626575933

noncomputable section

/-- A139548: Triangle T(n,k) with the coefficient of [x^k] of the polynomial (2*(x+1)^2)^n in row n, column k, 0<=k<=2n.

Offset 0, canonical program `A139548.P13919224620626575933`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139548 (n : ℕ) : ℤ :=
  A139548.P13919224620626575933.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139548.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139633.P14427635210752987056

`gcd(A103406(n), A124847(n+1))`
-/

namespace A139633.P14427635210752987056
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A103406 n) (A124847 (n + 1))

end

end A139633.P14427635210752987056

noncomputable section

/-- A139633: Triangle read by rows: binomial transform of a diagonalized matrix of A026741.

Offset 1, canonical program `A139633.P14427635210752987056`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139633 (n : ℕ) : ℤ :=
  (A139633.P14427635210752987056.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139633.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139848.P6895027528915671648

`∩[A139492(n+1), A139832(n+1)]`
-/

namespace A139848.P6895027528915671648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139832 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139848.P6895027528915671648

noncomputable section

/-- A139848: Primes of the form 7x^2 + 15y^2.

Offset 1, canonical program `A139848.P6895027528915671648`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2529 terms. -/
def A139848 (n : ℕ) : ℤ :=
  (A139848.P6895027528915671648.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2529 terms. -/
def A139848.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139852.P10236531295007452952

`∩[A045382(n+1), A107133(n+1)]`
-/

namespace A139852.P10236531295007452952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139852.P10236531295007452952

noncomputable section

/-- A139852: Primes of the form 7x^2 + 16y^2.

Offset 1, canonical program `A139852.P10236531295007452952`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. -/
def A139852 (n : ℕ) : ℤ :=
  (A139852.P10236531295007452952.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. -/
def A139852.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139857.P15412644130510987931

`p?[or(4, A107137(n+1))]`
-/

namespace A139857.P15412644130510987931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (A107137 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139857.P15412644130510987931

noncomputable section

/-- A139857: Primes of the form 8x^2 + 15y^2.

Offset 1, canonical program `A139857.P15412644130510987931`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4913 terms. -/
def A139857 (n : ℕ) : ℤ :=
  A139857.P15412644130510987931.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4913 terms. -/
def A139857.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139858.P3447086168202137661

`∩[A107137(n+1), A107181(n+1)]`
-/

namespace A139858.P3447086168202137661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139858.P3447086168202137661

noncomputable section

/-- A139858: Primes of the form 8x^2+8xy+17y^2.

Offset 1, canonical program `A139858.P3447086168202137661`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4998 terms. -/
def A139858 (n : ℕ) : ℤ :=
  (A139858.P3447086168202137661.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4998 terms. -/
def A139858.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139874.P13463748736922216680

`∩[A106915(n+1), A107007(n+1)]`
-/

namespace A139874.P13463748736922216680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107007 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139874.P13463748736922216680

noncomputable section

/-- A139874: Primes of the form 3x^2 + 56y^2.

Offset 1, canonical program `A139874.P13463748736922216680`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2494 terms. -/
def A139874 (n : ℕ) : ℤ :=
  (A139874.P13463748736922216680.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2494 terms. -/
def A139874.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139877.P18183384045405049100

`∩[A107003(n+1), A139851(n+1)]`
-/

namespace A139877.P18183384045405049100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139877.P18183384045405049100

noncomputable section

/-- A139877: Primes of the form 8x^2+21y^2.

Offset 1, canonical program `A139877.P18183384045405049100`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4994 terms. -/
def A139877 (n : ℕ) : ℤ :=
  (A139877.P18183384045405049100.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4994 terms. -/
def A139877.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139880.P8297169787361859027

`∩[A068228(n+1), A106915(n+1)]`
-/

namespace A139880.P8297169787361859027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139880.P8297169787361859027

noncomputable section

/-- A139880: Primes of the form 13x^2+2xy+13y^2.

Offset 1, canonical program `A139880.P8297169787361859027`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2511 terms. -/
def A139880 (n : ℕ) : ℤ :=
  (A139880.P8297169787361859027.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2511 terms. -/
def A139880.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139902.P17311505389906131483

`∩[A107168(n+1), A139829(n+1)]`
-/

namespace A139902.P17311505389906131483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139902.P17311505389906131483

noncomputable section

/-- A139902: Primes of the form 16x^2+16xy+19y^2.

Offset 1, canonical program `A139902.P17311505389906131483`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5009 terms. -/
def A139902 (n : ℕ) : ℤ :=
  (A139902.P17311505389906131483.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5009 terms. -/
def A139902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139916.P4993580715478633109

`∩[A107178(n+1), A139830(n+1)]`
-/

namespace A139916.P4993580715478633109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139916.P4993580715478633109

noncomputable section

/-- A139916: Primes of the form 7x^2+40y^2.

Offset 1, canonical program `A139916.P4993580715478633109`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4993 terms. -/
def A139916 (n : ℕ) : ℤ :=
  (A139916.P4993580715478633109.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4993 terms. -/
def A139916.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139919.P10038053055417950797

`filter[A107178(n+1), #%4]`
-/

namespace A139919.P10038053055417950797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107178 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => Int.tmod (f1 j) 4 = 1) n)

end

end A139919.P10038053055417950797

noncomputable section

/-- A139919: Primes of the form 17x^2+6xy+17y^2.

Offset 1, canonical program `A139919.P10038053055417950797`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5007 terms. -/
def A139919 (n : ℕ) : ℤ :=
  A139919.P10038053055417950797.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5007 terms. -/
def A139919.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140077.P5536516406055941759

`∩[A006049(n+1), A033992(n+1)]`
-/

namespace A140077.P5536516406055941759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140077.P5536516406055941759

noncomputable section

/-- A140077: Numbers n such that n and n+1 have 3 distinct prime factors.

Offset 1, canonical program `A140077.P5536516406055941759`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3489 terms. -/
def A140077 (n : ℕ) : ℤ :=
  (A140077.P5536516406055941759.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3489 terms. -/
def A140077.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140118.P17052352305761454687

`A140119(n+2)-A007442(n+2)`
-/

namespace A140118.P17052352305761454687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140119 (n + 2) - A007442 (n + 2)

end

end A140118.P17052352305761454687

noncomputable section

/-- A140118: Extrapolation for (n + 1)-st odd prime made by fitting least-degree polynomial to first n odd primes.

Offset 1, canonical program `A140118.P17052352305761454687`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A140118 (n : ℕ) : ℤ :=
  A140118.P17052352305761454687.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A140118.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140130.P9803938825414643127

`A082908(A035327(n+1))`
-/

namespace A140130.P9803938825414643127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082908 (A035327 (n + 1)).toNat

end

end A140130.P9803938825414643127

noncomputable section

/-- A140130: a(n) = denominator(c(n)) where c(n) = 1 if n=1, otherwise if n < 3*2^floor(log_2(n)-1) then c(n) = (c(floor(n/2))+c(floor((n+1)/2)))/2 otherwise c(n) = c(n-2^floor(log_2(n)))+1.

Offset 1, canonical program `A140130.P9803938825414643127`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A140130 (n : ℕ) : ℤ :=
  A140130.P9803938825414643127.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A140130.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140151.P653801514374288644

`A136047(n+1)+A140147(n+1)-A000217(n+1)`
-/

namespace A140151.P653801514374288644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136047 (n + 1) + (A140147 (n + 1) - A000217 (n + 1))

end

end A140151.P653801514374288644

noncomputable section

/-- A140151: a(1)=1, a(n)=a(n-1)+n^2 if n odd, a(n)=a(n-1)+ n^5 if n is even.

Offset 1, canonical program `A140151.P653801514374288644`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140151 (n : ℕ) : ℤ :=
  A140151.P653801514374288644.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140151.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140193.P1932437245816314854

`A140191(and(n, -2))`
-/

namespace A140193.P1932437245816314854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140191 (Int.land (n : ℤ) (-2)).toNat

end

end A140193.P1932437245816314854

noncomputable section

/-- A140193: Same as A140191 except here e=6.

Offset 0, canonical program `A140193.P1932437245816314854`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3001 terms. -/
def A140193 (n : ℕ) : ℤ :=
  A140193.P1932437245816314854.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3001 terms. -/
def A140193.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140215.P7416230048954684977

`A140213(n+1)*A140214(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140215.P7416230048954684977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140213 (n + 1) * A140214 (n + 1)

end

end A140215.P7416230048954684977

noncomputable section

/-- A140215: A140213(n)*A140214(n).

Offset 1, canonical program `A140215.P7416230048954684977`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A140213, A140214, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A140215 (n : ℕ) : ℤ :=
  A140215.P7416230048954684977.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A140213, A140214, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A140215.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A140256.P17984128459237720245

`A051731(n+1)*A138618(n+1)`
-/

namespace A140256.P17984128459237720245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A138618 (n + 1)

end

end A140256.P17984128459237720245

noncomputable section

/-- A140256: Triangle read by columns: Column k is A014963 aerated with groups of (k-1) zeros.

Offset 1, canonical program `A140256.P17984128459237720245`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A140256 (n : ℕ) : ℤ :=
  A140256.P17984128459237720245.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A140256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140368.P2450783989444161693

`filter[A127547(2*n+1), A005171(#)]`
-/

namespace A140368.P2450783989444161693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127547 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A140368.P2450783989444161693

noncomputable section

/-- A140368: Composites of the form 26k + 17.

Offset 1, canonical program `A140368.P2450783989444161693`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1974 terms. -/
def A140368 (n : ℕ) : ℤ :=
  A140368.P2450783989444161693.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1974 terms. -/
def A140368.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140442.P14828285863840832277

`A045392(n+2)`
-/

namespace A140442.P14828285863840832277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045392 (n + 2)

end

end A140442.P14828285863840832277

noncomputable section

/-- A140442: Primes congruent to 9 mod 14.

Offset 1, canonical program `A140442.P14828285863840832277`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045392, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140442 (n : ℕ) : ℤ :=
  A140442.P14828285863840832277.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045392, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140442.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A140633.P5719042277873821348

`p?[xor(6, A139832(n+1))+6]`
-/

namespace A140633.P5719042277873821348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 6 (A139832 (n + 1)) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140633.P5719042277873821348

noncomputable section

/-- A140633: Primes of the form 7x^2+4xy+52y^2.

Offset 1, canonical program `A140633.P5719042277873821348`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4906 terms. -/
def A140633 (n : ℕ) : ℤ :=
  A140633.P5719042277873821348.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4906 terms. -/
def A140633.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140697.P6410494480729606754

`∑{d}[n+1, A007427(#)*A065764((n+1)/#)]`
-/

namespace A140697.P6410494480729606754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A065764 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A140697.P6410494480729606754

noncomputable section

/-- A140697: Mobius transform of A000082.

Offset 1, canonical program `A140697.P6410494480729606754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140697 (n : ℕ) : ℤ :=
  A140697.P6410494480729606754.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140697.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140843.P9580371541351845501

`∩[A140569(n+1), A141897(n+1)]`
-/

namespace A140843.P9580371541351845501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140843.P9580371541351845501

noncomputable section

/-- A140843: Primes of the form 210k + 19.

Offset 1, canonical program `A140843.P9580371541351845501`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2525 terms. -/
def A140843 (n : ℕ) : ℤ :=
  (A140843.P9580371541351845501.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2525 terms. -/
def A140843.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140844.P12090693961516773908

`∩[A140572(n+1), A142091(n+1)]`
-/

namespace A140844.P12090693961516773908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140572 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140844.P12090693961516773908

noncomputable section

/-- A140844: Primes of the form 210k + 23.

Offset 1, canonical program `A140844.P12090693961516773908`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5004 terms. -/
def A140844 (n : ℕ) : ℤ :=
  (A140844.P12090693961516773908.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5004 terms. -/
def A140844.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140846.P12576340371996529633

`∩[A140587(n+1), A142096(n+1)]`
-/

namespace A140846.P12576340371996529633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140587 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140846.P12576340371996529633

noncomputable section

/-- A140846: Primes of the form 210k + 31.

Offset 1, canonical program `A140846.P12576340371996529633`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5004 terms. -/
def A140846 (n : ℕ) : ℤ :=
  (A140846.P12576340371996529633.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5004 terms. -/
def A140846.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140847.P3135573964198693593

`∩[A140593(n+1), A142077(n+1)]`
-/

namespace A140847.P3135573964198693593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140847.P3135573964198693593

noncomputable section

/-- A140847: Primes of the form 210k + 37.

Offset 1, canonical program `A140847.P3135573964198693593`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4994 terms. -/
def A140847 (n : ℕ) : ℤ :=
  (A140847.P3135573964198693593.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4994 terms. -/
def A140847.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140849.P15281982838425384881

`∩[A140640(n+1), A142081(n+1)]`
-/

namespace A140849.P15281982838425384881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142081 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140849.P15281982838425384881

noncomputable section

/-- A140849: Primes of the form 210k + 43.

Offset 1, canonical program `A140849.P15281982838425384881`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4990 terms. -/
def A140849 (n : ℕ) : ℤ :=
  (A140849.P15281982838425384881.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4990 terms. -/
def A140849.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140850.P1912603944725706303

`∩[A140641(n+1), A142084(n+1)]`
-/

namespace A140850.P1912603944725706303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140850.P1912603944725706303

noncomputable section

/-- A140850: Primes of the form 210k + 47.

Offset 1, canonical program `A140850.P1912603944725706303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5011 terms. -/
def A140850 (n : ℕ) : ℤ :=
  (A140850.P1912603944725706303.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5011 terms. -/
def A140850.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140851.P6553668124277126355

`∩[A140655(n+1), A142088(n+1)]`
-/

namespace A140851.P6553668124277126355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140851.P6553668124277126355

noncomputable section

/-- A140851: Primes of the form 210k + 53.

Offset 1, canonical program `A140851.P6553668124277126355`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4975 terms. -/
def A140851 (n : ℕ) : ℤ :=
  (A140851.P6553668124277126355.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4975 terms. -/
def A140851.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140852.P12170253662013968918

`∩[A140687(n+1), A142092(n+1)]`
-/

namespace A140852.P12170253662013968918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140852.P12170253662013968918

noncomputable section

/-- A140852: Primes of the form 210k + 59.

Offset 1, canonical program `A140852.P12170253662013968918`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5042 terms. -/
def A140852 (n : ℕ) : ℤ :=
  (A140852.P12170253662013968918.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5042 terms. -/
def A140852.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140854.P16545780512389553731

`∩[A140726(n+1), A142093(n+1)]`
-/

namespace A140854.P16545780512389553731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142093 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140854.P16545780512389553731

noncomputable section

/-- A140854: Primes of the form 210k + 61.

Offset 1, canonical program `A140854.P16545780512389553731`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. -/
def A140854 (n : ℕ) : ℤ :=
  (A140854.P16545780512389553731.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. -/
def A140854.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140855.P12155307500454723385

`∩[A140731(n+1), A142097(n+1)]`
-/

namespace A140855.P12155307500454723385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140855.P12155307500454723385

noncomputable section

/-- A140855: Primes of the form 210k + 67.

Offset 1, canonical program `A140855.P12155307500454723385`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4991 terms. -/
def A140855 (n : ℕ) : ℤ :=
  (A140855.P12155307500454723385.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4991 terms. -/
def A140855.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140856.P9183042723212956771

`∩[A089720(n+1), A140732(n+1)]`
-/

namespace A140856.P9183042723212956771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140856.P9183042723212956771

noncomputable section

/-- A140856: Primes of the form 210n+71.

Offset 1, canonical program `A140856.P9183042723212956771`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2506 terms. -/
def A140856 (n : ℕ) : ℤ :=
  (A140856.P9183042723212956771.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2506 terms. -/
def A140856.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140857.P17096779143594867496

`∩[A140742(n+1), A142078(n+1)]`
-/

namespace A140857.P17096779143594867496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142078 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140857.P17096779143594867496

noncomputable section

/-- A140857: Primes of the form 210k + 73.

Offset 1, canonical program `A140857.P17096779143594867496`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4988 terms. -/
def A140857 (n : ℕ) : ℤ :=
  (A140857.P17096779143594867496.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4988 terms. -/
def A140857.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140889.P3525305605276052891

`runs[A001222(A008364(n+1))]`
-/

namespace A140889.P3525305605276052891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008364 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A140889.P3525305605276052891

noncomputable section

/-- A140889: Lengths of runs of consecutive primes and composites in A008364.

Offset 1, canonical program `A140889.P3525305605276052891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A140889 (n : ℕ) : ℤ :=
  (A140889.P3525305605276052891.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A140889.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141053.P15553414134495763727

`A008963(5*n+3)`
-/

namespace A141053.P15553414134495763727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008963 (5 * n + 3)

end

end A141053.P15553414134495763727

noncomputable section

/-- A141053: Most-significant decimal digit of Fibonacci(5n+3).

Offset 0, canonical program `A141053.P15553414134495763727`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A141053 (n : ℕ) : ℤ :=
  A141053.P15553414134495763727.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A141053.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141105.P16209607723613337592

`A109613(A019446(n+1))+A005408(n)`
-/

namespace A141105.P16209607723613337592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A019446 (n + 1)).toNat + A005408 n

end

end A141105.P16209607723613337592

noncomputable section

/-- A141105: Upper Even Swappage of Upper Wythoff Sequence.

Offset 1, canonical program `A141105.P16209607723613337592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141105 (n : ℕ) : ℤ :=
  A141105.P16209607723613337592.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141105.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141197.P8937340575319658368

`∑{d}[1+n, A069513(#+1)]`
-/

namespace A141197.P8937340575319658368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069513 (d + 1)

end

end A141197.P8937340575319658368

noncomputable section

/-- A141197: a(n) = the number of divisors of n that are each one less than a power of a prime.

Offset 1, canonical program `A141197.P8937340575319658368`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141197 (n : ℕ) : ℤ :=
  A141197.P8937340575319658368.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141197.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141253.P947719159771963679

`(1+n)*∑[A099376(abs(1-n))]`
-/

namespace A141253.P947719159771963679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A141253.P947719159771963679

noncomputable section

/-- A141253: Number of permutations that lie in the cyclic closure of Av(132)--i.e., at least one cyclic rotation of the permutation avoids the pattern 132.

Offset 1, canonical program `A141253.P947719159771963679`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A141253 (n : ℕ) : ℤ :=
  A141253.P947719159771963679.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A141253.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141364.P16742336055309194620

`abs(2-A141351(n))`
-/

namespace A141364.P16742336055309194620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A141351 n|

end

end A141364.P16742336055309194620

noncomputable section

/-- A141364: a(n) = C(n)-1+0^n where C(n) = A000108(n).

Offset 0, canonical program `A141364.P16742336055309194620`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A141364 (n : ℕ) : ℤ :=
  A141364.P16742336055309194620.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A141364.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141396.P1544682609068793782

`A000244(A002262(n))*A001651(A004736(n+1))`
-/

namespace A141396.P1544682609068793782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A002262 n).toNat * A001651 (A004736 (n + 1)).toNat

end

end A141396.P1544682609068793782

noncomputable section

/-- A141396: Triangle read by rows, antidiagonals of a multiplication table: 3^n * (numbers not multiples of 3).

Offset 0, canonical program `A141396.P1544682609068793782`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A141396 (n : ℕ) : ℤ :=
  A141396.P1544682609068793782.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A141396.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141412.P1807454739439104391

`A173333(n+1)/A008275(n+1)*A140749(n)`
-/

namespace A141412.P1807454739439104391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173333 (n + 1) : ℚ) / (A008275 (n + 1) : ℚ) * (A140749 n : ℚ)

end

end A141412.P1807454739439104391

noncomputable section

/-- A141412: Triangle c(n,k) of the denominators of coefficients [x^k] P(n,x) of the polynomials P(n,x) of A129891.

Offset 0, canonical program `A141412.P1807454739439104391`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. -/
def A141412 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A141412.P1807454739439104391.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. -/
def A141412.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141454.P9310719507524386154

`A277097(1+n)%3`
-/

namespace A141454.P9310719507524386154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277097 (1 + n)) 3

end

end A141454.P9310719507524386154

noncomputable section

/-- A141454: A Legendre symbol type assignment of the modulo ten primes to the polynomial: Expand[(x-1)*(x+1)*(x-2)*(x+2)*(x-0)]=4 x - 5 x^3 + x^5; c(n) = If[Mod[n, 10] == 1, 1, If[Mod[n, 10] == 9, -1, If[Mod[n, 10] == 3, 2, If[Mod[n, 10] == 7, -2, 0]]]] such that n is a prime[n].

Offset 1, canonical program `A141454.P9310719507524386154`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A141454 (n : ℕ) : ℤ :=
  A141454.P9310719507524386154.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A141454.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141543.P279450556099849721

`A130266(A061579(n))-∑[A010054(n)]`
-/

namespace A141543.P279450556099849721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130266 (A061579 n).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141543.P279450556099849721

noncomputable section

/-- A141543: Triangle T(n,k) read by rows: T(n,2k)=k, T(n,2k+1) = k-n, for 0<=k<=n.

Offset 0, canonical program `A141543.P279450556099849721`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A141543 (n : ℕ) : ℤ :=
  A141543.P279450556099849721.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A141543.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141570.P17933169272359299398

`∩[A140771(n+1), A141898(n+1)]`
-/

namespace A141570.P17933169272359299398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141570.P17933169272359299398

noncomputable section

/-- A141570: Primes of the form 2*3*5*7*n+83.

Offset 1, canonical program `A141570.P17933169272359299398`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2521 terms. -/
def A141570 (n : ℕ) : ℤ :=
  (A141570.P17933169272359299398.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2521 terms. -/
def A141570.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141595.P12694330283996102557

`∑{#}[n, C(n, #)*A120070(#+2)]`
-/

namespace A141595.P12694330283996102557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A120070 (k + 2)

end

end A141595.P12694330283996102557

noncomputable section

/-- A141595: Binomial transform of A120070.

Offset 0, canonical program `A141595.P12694330283996102557`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120070, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A141595 (n : ℕ) : ℤ :=
  A141595.P12694330283996102557.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120070, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A141595.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A141615.P5972979939233444843

`∑{#}[n, (-1)^(n+#)*C(n, #)*A120070(#+2)]`
-/

namespace A141615.P5972979939233444843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1) ^ (n + k) * (Nat.choose n k : ℤ) * A120070 (k + 2)

end

end A141615.P5972979939233444843

noncomputable section

/-- A141615: Inverse binomial transform of A120070.

Offset 0, canonical program `A141615.P5972979939233444843`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120070, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A141615 (n : ℕ) : ℤ :=
  A141615.P5972979939233444843.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120070, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A141615.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A141616.P13865560224781549027

`A120070(∑[char[n²]+2])`
-/

namespace A141616.P13865560224781549027
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120070 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A141616.P13865560224781549027

noncomputable section

/-- A141616: Even terms in A120070.

Offset 1, canonical program `A141616.P13865560224781549027`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141616 (n : ℕ) : ℤ :=
  A141616.P13865560224781549027.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141616.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141620.P3121196695608097675

`Δ[A120070(2+n)]`
-/

namespace A141620.P3121196695608097675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120070 (2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141620.P3121196695608097675

noncomputable section

/-- A141620: First differences of A120070.

Offset 0, canonical program `A141620.P3121196695608097675`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141620 (n : ℕ) : ℤ :=
  A141620.P3121196695608097675.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141620.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141689.P17765687442390039653

`round((A014473(n)+A008292(n+1))/2)`
-/

namespace A141689.P17765687442390039653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A014473 n + A008292 (n + 1) : ℚ) / 2)

end

end A141689.P17765687442390039653

noncomputable section

/-- A141689: Average of Eulerian numbers (A008292) and Pascal's triangle (A007318): t(n,m) = (A008292(n,m) + A007318(n,m))/2.

Offset 1, canonical program `A141689.P17765687442390039653`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2515 terms. -/
def A141689 (n : ℕ) : ℤ :=
  A141689.P17765687442390039653.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2515 terms. -/
def A141689.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141696.P6177568062758844150

`2*A141690(n)-A008292(n+1)`
-/

namespace A141696.P6177568062758844150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A141690 n - A008292 (n + 1)

end

end A141696.P6177568062758844150

noncomputable section

/-- A141696: Triangle read by rows, T(n, k) = ( ( 6 * Sum_{j=0..k+1} (-1)^j * binomial(n+1, j) * (k-j+1)^n ) - 4 * binomial(n-1, k) ) / 2.

Offset 1, canonical program `A141696.P6177568062758844150`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2514 terms. -/
def A141696 (n : ℕ) : ℤ :=
  A141696.P6177568062758844150.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2514 terms. -/
def A141696.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141700.P16390701101666717665

`∑{p}[A138618(1+n), #]`
-/

namespace A141700.P16390701101666717665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138618 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A141700.P16390701101666717665

noncomputable section

/-- A141700: Triangle read by rows: A120007 interleaved with (k-1) zeros.

Offset 1, canonical program `A141700.P16390701101666717665`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A141700 (n : ℕ) : ℤ :=
  (A141700.P16390701101666717665.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A141700.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141866.P14888924645696795511

`∩[A140772(n+1), A141890(n+1)]`
-/

namespace A141866.P14888924645696795511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141866.P14888924645696795511

noncomputable section

/-- A141866: Primes of the form 2*3*5*7*k+89, k >= 0.

Offset 1, canonical program `A141866.P14888924645696795511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2503 terms. -/
def A141866 (n : ℕ) : ℤ :=
  (A141866.P14888924645696795511.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2503 terms. -/
def A141866.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141867.P11823466263771838989

`p?[A001057(n)+A001057(A001223(2*n+1))]`
-/

namespace A141867.P11823466263771838989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n + A001057 (A001223 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141867.P11823466263771838989

noncomputable section

/-- A141867: Primes of the form (k/2+p(k-1)-p(k))/2, where p(k)=k-th prime.

Offset 1, canonical program `A141867.P11823466263771838989`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 682 terms. -/
def A141867 (n : ℕ) : ℤ :=
  A141867.P11823466263771838989.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 682 terms. -/
def A141867.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141905.P1694949766339538005

`C(row(n), col(n))*A052509(C(row(n)+1, 2)+col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141905.P1694949766339538005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℤ) * A052509 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n)

end

end A141905.P1694949766339538005

noncomputable section

/-- A141905: Triangle read by rows, T(n, k) = binomial(n, k)*A052509(n, k) for 0 <= k <= n.

Offset 0, canonical program `A141905.P1694949766339538005`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052509, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A141905 (n : ℕ) : ℤ :=
  A141905.P1694949766339538005.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052509, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A141905.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A142242.P4378309256295079438

`2-xor(1, A038573(n))`
-/

namespace A142242.P4378309256295079438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.xor 1 (A038573 n)

end

end A142242.P4378309256295079438

noncomputable section

/-- A142242: Row sums of A143200.

Offset 0, canonical program `A142242.P4378309256295079438`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1360 terms. -/
def A142242 (n : ℕ) : ℤ :=
  A142242.P4378309256295079438.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1360 terms. -/
def A142242.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142295.P4010947513429565633

`A141854(eq[2, and(2, A141854(n+1))]+1)`
-/

namespace A142295.P4010947513429565633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A141854 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141854 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A142295.P4010947513429565633

noncomputable section

/-- A142295: Primes congruent to 7 mod 44.

Offset 1, canonical program `A142295.P4010947513429565633`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4989 terms. -/
def A142295 (n : ℕ) : ℤ :=
  A142295.P4010947513429565633.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4989 terms. -/
def A142295.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142305.P14501484807531580135

`A141854(eq[1, and(3, A141854(n+1))]+1)`
-/

namespace A142305.P14501484807531580135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A141854 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141854 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A142305.P14501484807531580135

noncomputable section

/-- A142305: Primes congruent to 29 mod 44.

Offset 1, canonical program `A142305.P14501484807531580135`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5011 terms. -/
def A142305 (n : ℕ) : ℤ :=
  A142305.P14501484807531580135.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5011 terms. -/
def A142305.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142348.P7541731852378196357

`p?[A141468(n+1)+p?[xor(1, n)+1]]`
-/

namespace A142348.P7541731852378196357
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1) + (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142348.P7541731852378196357

noncomputable section

/-- A142348: Primes of the form (p(n)+r(n)), where p(n)=n-th prime and r(n)=n-th nonprime.

Offset 1, canonical program `A142348.P7541731852378196357`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A142348 (n : ℕ) : ℤ :=
  A142348.P7541731852378196357.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A142348.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142515.P6396351685030339680

`record[A093191(n+1)/A093191(n+1)%4]`
-/

namespace A142515.P6396351685030339680
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093191 (n + 1) : ℚ) / (Int.tmod (A093191 (n + 1)) 4 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142515.P6396351685030339680

noncomputable section

/-- A142515: Primes congruent to 17 mod 52.

Offset 1, canonical program `A142515.P6396351685030339680`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A142515 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A142515.P6396351685030339680.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A142515.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142517.P2418825759442637778

`A092178(eq[1, A092178(n+1)%4]+1)`
-/

namespace A142517.P2418825759442637778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092178 (n + 1)) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A142517.P2418825759442637778

noncomputable section

/-- A142517: Primes congruent to 21 mod 52.

Offset 1, canonical program `A142517.P2418825759442637778`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5017 terms. -/
def A142517 (n : ℕ) : ℤ :=
  A142517.P2418825759442637778.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5017 terms. -/
def A142517.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142789.P14610620924255852265

`∩[A107168(n+1), A141887(n+1)]`
-/

namespace A142789.P14610620924255852265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142789.P14610620924255852265

noncomputable section

/-- A142789: Primes congruent to 19 mod 60.

Offset 1, canonical program `A142789.P14610620924255852265`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4986 terms. -/
def A142789 (n : ℕ) : ℤ :=
  (A142789.P14610620924255852265.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4986 terms. -/
def A142789.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142882.P5111491194229813841

`A120070(2+3*n)`
-/

namespace A142882.P5111491194229813841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120070 (2 + 3 * n)

end

end A142882.P5111491194229813841

noncomputable section

/-- A142882: First trisection of A120070.

Offset 1, canonical program `A142882.P5111491194229813841`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A142882 (n : ℕ) : ℤ :=
  A142882.P5111491194229813841.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A142882.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142934.P14016541385754084313

`A091968(eq[1, and(3, A092022(n+1))]+1)`
-/

namespace A142934.P14016541385754084313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A092022 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091968 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A142934.P14016541385754084313

noncomputable section

/-- A142934: Primes congruent to 19 mod 64.

Offset 1, canonical program `A142934.P14016541385754084313`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2496 terms. -/
def A142934 (n : ℕ) : ℤ :=
  A142934.P14016541385754084313.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2496 terms. -/
def A142934.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142940.P17418045244918883104

`A091968(eq[2, and(3, A092022(n+1))]+1)`
-/

namespace A142940.P17418045244918883104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A092022 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091968 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A142940.P17418045244918883104

noncomputable section

/-- A142940: Primes congruent to 35 mod 64.

Offset 1, canonical program `A142940.P17418045244918883104`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2529 terms. -/
def A142940 (n : ℕ) : ℤ :=
  A142940.P17418045244918883104.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2529 terms. -/
def A142940.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142948.P11630965134437301542

`A091968(eq[3, and(3, A092022(n+1))]+1)`
-/

namespace A142948.P11630965134437301542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A092022 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091968 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A142948.P11630965134437301542

noncomputable section

/-- A142948: Primes congruent to 51 mod 64.

Offset 1, canonical program `A142948.P11630965134437301542`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2497 terms. -/
def A142948 (n : ℕ) : ℤ :=
  A142948.P11630965134437301542.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2497 terms. -/
def A142948.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142971.P11295584291541300663

`-(A051731(n+1)*A061397(A054531(n+1)))`
-/

namespace A142971.P11295584291541300663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A051731 (n + 1) * A061397 (A054531 (n + 1)).toNat)

end

end A142971.P11295584291541300663

noncomputable section

/-- A142971: Triangle read by rows: A061397 with negative signs interleaved with (k-1) zeros.

Offset 1, canonical program `A142971.P11295584291541300663`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A142971 (n : ℕ) : ℤ :=
  A142971.P11295584291541300663.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A142971.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143023.P14212091565924185343

`A085614(n+2)-A078531(n+1)`
-/

namespace A143023.P14212091565924185343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085614 (n + 2) - A078531 (n + 1)

end

end A143023.P14212091565924185343

noncomputable section

/-- A143023: Sum of the root degrees over all non-crossing connected graphs on n nodes on a circle (by root we mean a distinguished node).

Offset 2, canonical program `A143023.P14212091565924185343`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A143023 (n : ℕ) : ℤ :=
  A143023.P14212091565924185343.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A143023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143037.P245684199888480199

`∑[A004736(n+1)]-C(A004736(n+1), 3)`
-/

namespace A143037.P245684199888480199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (Nat.choose (A004736 (n + 1)).toNat 3 : ℤ)

end

end A143037.P245684199888480199

noncomputable section

/-- A143037: Triangle read by rows, A000012 * A127773 * A000012. A000012 is an infinite lower triangular matrix with all 1's, A127773 = (1; 0,3; 0,0,6; 0,0,0,10; ...).

Offset 1, canonical program `A143037.P245684199888480199`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143037 (n : ℕ) : ℤ :=
  A143037.P245684199888480199.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143053.P16641876007468896160

`A143051(A143051(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A143053.P16641876007468896160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143051 (A143051 n).toNat

end

end A143053.P16641876007468896160

noncomputable section

/-- A143053: a(n) = A143051(A143051(n)).

Offset 0, canonical program `A143053.P16641876007468896160`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A143051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A143053 (n : ℕ) : ℤ :=
  A143053.P16641876007468896160.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A143051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A143053.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A143071.P10370426072631450913

`eq[1, A000120(log2(A001316(n)))]`
-/

namespace A143071.P10370426072631450913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway (Real.logb 2 (A001316 n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143071.P10370426072631450913

noncomputable section

/-- A143071: A positive integer n is included if the number of 1's in the binary representation of n is a power of 2 (including being possibly 1).

Offset 1, canonical program `A143071.P10370426072631450913`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143071 (n : ℕ) : ℤ :=
  (A143071.P10370426072631450913.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143071.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143086.P9163126404409703882

`A126646(A004197(n))`
-/

namespace A143086.P9163126404409703882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (A004197 n).toNat

end

end A143086.P9163126404409703882

noncomputable section

/-- A143086: Triangle read by rows: T(n,k) = 2^(k + 1) - 1 if k < = floor(n/2), otherwise 2^(n - k + 1) - 1, for 0 <= k <= n.

Offset 0, canonical program `A143086.P9163126404409703882`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143086 (n : ℕ) : ℤ :=
  A143086.P9163126404409703882.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143086.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143090.P16008400457537948654

`A001065(A028310(a(n-1)))` with `a(0)=12`
-/

namespace A143090.P16008400457537948654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [12] fun n a =>
  A001065 (A028310 (a (n - 1)).toNat).toNat

end

end A143090.P16008400457537948654

noncomputable section

/-- A143090: Aliquot sequence starting at 12.

Offset 0, canonical program `A143090.P16008400457537948654`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143090 (n : ℕ) : ℤ :=
  A143090.P16008400457537948654.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143090.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143119.P13507134086201798077

`A026741(A127093(1+n))`
-/

namespace A143119.P13507134086201798077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A127093 (1 + n)).toNat

end

end A143119.P13507134086201798077

noncomputable section

/-- A143119: Triangle read by rows, A051731 * A026741, with 1<=k<=n.

Offset 1, canonical program `A143119.P13507134086201798077`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A143119 (n : ℕ) : ℤ :=
  A143119.P13507134086201798077.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A143119.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143121.P5413332960507617817

`A065091(row(n))+T(n-1,k)` with `a(0)=2`
-/

namespace A143121.P5413332960507617817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A065091 (SequenceMachineLib.triRow n) + SequenceMachineLib.triUp a n

end

end A143121.P5413332960507617817

noncomputable section

/-- A143121: Triangle read by rows, T(n,k) = Sum_{j=k..n} prime(j), 1 <= k <= n.

Offset 1, canonical program `A143121.P5413332960507617817`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143121 (n : ℕ) : ℤ :=
  A143121.P5413332960507617817.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143121.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143187.P15464511713782995700

`A028310(lcm(2, A004197(n)))`
-/

namespace A143187.P15464511713782995700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.lcm 2 (A004197 n))

end

end A143187.P15464511713782995700

noncomputable section

/-- A143187: Triangle read by rows: T(n, k) = f(k) for 1 <= k <= floor(n/2), T(n, k) = f(n-k) for floor(n/2) < k <= n-1, with T(n, 0) = 1, T(n, n) = 1, and f(k) = (1/2)*(3 - (-1)^k)*k.

Offset 0, canonical program `A143187.P15464511713782995700`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A143187 (n : ℕ) : ℤ :=
  A143187.P15464511713782995700.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A143187.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143199.P5401882570097877984

`A143198(A057944(n)+A004197(n))`
-/

namespace A143199.P5401882570097877984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143198 (A057944 n + A004197 n).toNat

end

end A143199.P5401882570097877984

noncomputable section

/-- A143199: Triangle read by rows: T(n, k) = (n+1)*A000096(k-1) + n if k <= floor(n/2), otherwise T(n, k) = (n+1)*A000096(n-k-1) + n.

Offset 0, canonical program `A143199.P5401882570097877984`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143199 (n : ℕ) : ℤ :=
  A143199.P5401882570097877984.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143199.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143200.P1078575733488683412

`(1-A014473(n))%2`
-/

namespace A143200.P1078575733488683412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (1 - A014473 n) 2

end

end A143200.P1078575733488683412

noncomputable section

/-- A143200: Triangle read by rows: T(n, k) = 1 if k = 0 or k = n, T(n, k) = -1 if ( binomial(n, k) mod 2 ) = 1, otherwise T(n, k) = 0.

Offset 0, canonical program `A143200.P1078575733488683412`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143200 (n : ℕ) : ℤ :=
  A143200.P1078575733488683412.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143200.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143232.P2526893967125323833

`ceil(xor(1, n)/2)+2-A080677(n+1)`
-/

namespace A143232.P2526893967125323833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 n : ℚ) / 2⌉ + (2 - A080677 (n + 1))

end

end A143232.P2526893967125323833

noncomputable section

/-- A143232: Sum of denominators of Egyptian fraction expansion of A004001(n) - n/2.

Offset 1, canonical program `A143232.P2526893967125323833`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143232 (n : ℕ) : ℤ :=
  A143232.P2526893967125323833.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143320.P9821139505846208418

`A024916(A010766(n+1))*A054527(n+1)`
-/

namespace A143320.P9821139505846208418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (A010766 (n + 1)).toNat * A054527 (n + 1)

end

end A143320.P9821139505846208418

noncomputable section

/-- A143320: Triangle read by rows, A000012 * A143317; 1<=k<=n.

Offset 1, canonical program `A143320.P9821139505846208418`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143320 (n : ℕ) : ℤ :=
  A143320.P9821139505846208418.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143320.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143329.P17825903406367476627

`p?[A143292(n+1)]`
-/

namespace A143329.P17825903406367476627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A143329.P17825903406367476627

noncomputable section

/-- A143329: Primes in A143292.

Offset 1, canonical program `A143329.P17825903406367476627`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1063 terms. -/
def A143329 (n : ℕ) : ℤ :=
  A143329.P17825903406367476627.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1063 terms. -/
def A143329.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143349.P6165175952052510639

`A010766(n+1)*A054527(n+1)`
-/

namespace A143349.P6165175952052510639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1) * A054527 (n + 1)

end

end A143349.P6165175952052510639

noncomputable section

/-- A143349: Triangle read by rows: A000012 * A054524 = A000012 * A051731 * A128407.

Offset 1, canonical program `A143349.P6165175952052510639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143349 (n : ℕ) : ℤ :=
  A143349.P6165175952052510639.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143349.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143442.P15593702494414460611

`∑[char[∑[n]]]*A054527(n+1)`
-/

namespace A143442.P15593702494414460611
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A054527 (n + 1)

end

end A143442.P15593702494414460611

noncomputable section

/-- A143442: Triangle read by rows, A127648 * A000012 * A128407, 1 <= k <= n.

Offset 1, canonical program `A143442.P15593702494414460611`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143442 (n : ℕ) : ℤ :=
  A143442.P15593702494414460611.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143442.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143497.P17063427898058652900

`A094587(n)*A104713(n+3)`
-/

namespace A143497.P17063427898058652900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n * A104713 (n + 3)

end

end A143497.P17063427898058652900

noncomputable section

/-- A143497: Triangle of unsigned 2-Lah numbers.

Offset 2, canonical program `A143497.P17063427898058652900`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2214 terms. -/
def A143497 (n : ℕ) : ℤ :=
  A143497.P17063427898058652900.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2214 terms. -/
def A143497.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143541.P9927726300466279270

`A143536(1+n)*A143538(n+1)`
-/

namespace A143541.P9927726300466279270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143536 (1 + n) * A143538 (n + 1)

end

end A143541.P9927726300466279270

noncomputable section

/-- A143541: Triangle read by rows, T(n,k) = 1 if both n and k are prime, 0 otherwise; 1 <= k <= n.

Offset 1, canonical program `A143541.P9927726300466279270`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143541 (n : ℕ) : ℤ :=
  A143541.P9927726300466279270.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143541.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143544.P8602869523701442679

`A143536(C(row(n)+1, 2)+col(n)+1)+1`
-/

namespace A143544.P8602869523701442679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143536 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n + 1) + 1

end

end A143544.P8602869523701442679

noncomputable section

/-- A143544: Triangle read by rows, T(n,k) = 2 if n is prime, 1 otherwise; 1<=k<=n.

Offset 1, canonical program `A143544.P8602869523701442679`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A143536, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A143544 (n : ℕ) : ℤ :=
  A143544.P8602869523701442679.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A143536, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A143544.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A143645.P16129284712906338068

`A001065(A028310(a(n-1)))` with `a(0)=24`
-/

namespace A143645.P16129284712906338068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [24] fun n a =>
  A001065 (A028310 (a (n - 1)).toNat).toNat

end

end A143645.P16129284712906338068

noncomputable section

/-- A143645: Aliquot sequence starting at 24.

Offset 0, canonical program `A143645.P16129284712906338068`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143645 (n : ℕ) : ℤ :=
  A143645.P16129284712906338068.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143645.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143668.P5009634550339019748

`abs(A005614(n)-(-1)^n)`
-/

namespace A143668.P5009634550339019748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005614 n - (-1) ^ n|

end

end A143668.P5009634550339019748

noncomputable section

/-- A143668: Result of the morphing 01->01021212, 02->0102121201, 12->01021201, iterated from '01'. Sequence of the Fibonacci word fractal.

Offset 1, canonical program `A143668.P5009634550339019748`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143668 (n : ℕ) : ℤ :=
  A143668.P5009634550339019748.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143668.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143721.P7011217225613206170

`A001065(A028310(a(n-1)))` with `a(0)=38`
-/

namespace A143721.P7011217225613206170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [38] fun n a =>
  A001065 (A028310 (a (n - 1)).toNat).toNat

end

end A143721.P7011217225613206170

noncomputable section

/-- A143721: Aliquot sequence starting at 38.

Offset 0, canonical program `A143721.P7011217225613206170`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143721 (n : ℕ) : ℤ :=
  A143721.P7011217225613206170.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143721.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143722.P17896220060263114756

`A001065(A028310(a(n-1)))` with `a(0)=48`
-/

namespace A143722.P17896220060263114756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [48] fun n a =>
  A001065 (A028310 (a (n - 1)).toNat).toNat

end

end A143722.P17896220060263114756

noncomputable section

/-- A143722: Aliquot sequence starting at 48.

Offset 0, canonical program `A143722.P17896220060263114756`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143722 (n : ℕ) : ℤ :=
  A143722.P17896220060263114756.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143722.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143724.P13957394910154279375

`∑{d}[A127093(1+n), A332684(#)]`
-/

namespace A143724.P13957394910154279375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A332684 d

end

end A143724.P13957394910154279375

noncomputable section

/-- A143724: Triangle read by rows, inverse Möbius transform of a diagonalized matrix of A116477.

Offset 1, canonical program `A143724.P13957394910154279375`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143724 (n : ℕ) : ℤ :=
  A143724.P13957394910154279375.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143724.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143733.P14942451708713840128

`A001065(A028310(a(n-1)))` with `a(0)=62`
-/

namespace A143733.P14942451708713840128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [62] fun n a =>
  A001065 (A028310 (a (n - 1)).toNat).toNat

end

end A143733.P14942451708713840128

noncomputable section

/-- A143733: Aliquot sequence starting at 62.

Offset 0, canonical program `A143733.P14942451708713840128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143733 (n : ℕ) : ℤ :=
  A143733.P14942451708713840128.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143733.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143737.P5154442546781460554

`A001065(A028310(a(n-1)))` with `a(0)=68`
-/

namespace A143737.P5154442546781460554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [68] fun n a =>
  A001065 (A028310 (a (n - 1)).toNat).toNat

end

end A143737.P5154442546781460554

noncomputable section

/-- A143737: Aliquot sequence starting at 68.

Offset 0, canonical program `A143737.P5154442546781460554`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143737 (n : ℕ) : ℤ :=
  A143737.P5154442546781460554.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143738.P8542796833355571080

`abs(A071538(abs(1-n)+1)-A071538((n+1)²))`
-/

namespace A143738.P8542796833355571080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A071538 (|1 - (n : ℤ)| + 1).toNat - A071538 ((n + 1) ^ 2))|

end

end A143738.P8542796833355571080

noncomputable section

/-- A143738: Number of twin primes between n and n^2. Only smaller of twins (terms of A001359) are counted.

Offset 1, canonical program `A143738.P8542796833355571080`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. -/
def A143738 (n : ℕ) : ℤ :=
  A143738.P8542796833355571080.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. -/
def A143738.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143741.P8770090365676448905

`A001065(A028310(a(n-1)))` with `a(0)=72`
-/

namespace A143741.P8770090365676448905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [72] fun n a =>
  A001065 (A028310 (a (n - 1)).toNat).toNat

end

end A143741.P8770090365676448905

noncomputable section

/-- A143741: Aliquot sequence starting at 72.

Offset 0, canonical program `A143741.P8770090365676448905`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143741 (n : ℕ) : ℤ :=
  A143741.P8770090365676448905.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143741.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143754.P2508071916945020361

`A001065(A028310(a(n-1)))` with `a(0)=75`
-/

namespace A143754.P2508071916945020361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [75] fun n a =>
  A001065 (A028310 (a (n - 1)).toNat).toNat

end

end A143754.P2508071916945020361

noncomputable section

/-- A143754: Aliquot sequence starting at 75.

Offset 0, canonical program `A143754.P2508071916945020361`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143754 (n : ℕ) : ℤ :=
  A143754.P2508071916945020361.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143754.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143755.P1843957366251075047

`A001065(A028310(a(n-1)))` with `a(0)=80`
-/

namespace A143755.P1843957366251075047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [80] fun n a =>
  A001065 (A028310 (a (n - 1)).toNat).toNat

end

end A143755.P1843957366251075047

noncomputable section

/-- A143755: Aliquot sequence starting at 80.

Offset 0, canonical program `A143755.P1843957366251075047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143755 (n : ℕ) : ℤ :=
  A143755.P1843957366251075047.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143755.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143757.P11374647760075091587

`A001065(A028310(a(n-1)))` with `a(0)=82`
-/

namespace A143757.P11374647760075091587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [82] fun n a =>
  A001065 (A028310 (a (n - 1)).toNat).toNat

end

end A143757.P11374647760075091587

noncomputable section

/-- A143757: Aliquot sequence starting at 82.

Offset 0, canonical program `A143757.P11374647760075091587`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143757 (n : ℕ) : ℤ :=
  A143757.P11374647760075091587.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143757.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143758.P5003512289083084374

`A001065(A028310(a(n-1)))` with `a(0)=84`
-/

namespace A143758.P5003512289083084374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [84] fun n a =>
  A001065 (A028310 (a (n - 1)).toNat).toNat

end

end A143758.P5003512289083084374

noncomputable section

/-- A143758: Aliquot sequence starting at 84.

Offset 0, canonical program `A143758.P5003512289083084374`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143758 (n : ℕ) : ℤ :=
  A143758.P5003512289083084374.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143758.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143767.P13231538878095060477

`A001065(A028310(a(n-1)))` with `a(0)=87`
-/

namespace A143767.P13231538878095060477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [87] fun n a =>
  A001065 (A028310 (a (n - 1)).toNat).toNat

end

end A143767.P13231538878095060477

noncomputable section

/-- A143767: Aliquot sequence starting at 87.

Offset 0, canonical program `A143767.P13231538878095060477`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143767 (n : ℕ) : ℤ :=
  A143767.P13231538878095060477.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143767.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143814.P4129932359816056538

`A120070(3-A127648(n)+n)`
-/

namespace A143814.P4129932359816056538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120070 (3 - A127648 n + (n : ℤ)).toNat

end

end A143814.P4129932359816056538

noncomputable section

/-- A143814: Triangle T(n,m) read along rows: T(n,m) = n^2 - (m+1)^2 for 1<=m<n-1, T(n,n-1) = n^2-1.

Offset 2, canonical program `A143814.P4129932359816056538`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143814 (n : ℕ) : ℤ :=
  A143814.P4129932359816056538.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143814.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143846.P9170851586254703169

`A001065(A028310(a(n-1)))` with `a(0)=88`
-/

namespace A143846.P9170851586254703169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [88] fun n a =>
  A001065 (A028310 (a (n - 1)).toNat).toNat

end

end A143846.P9170851586254703169

noncomputable section

/-- A143846: Aliquot sequence starting at 88.

Offset 0, canonical program `A143846.P9170851586254703169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143846 (n : ℕ) : ℤ :=
  A143846.P9170851586254703169.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143846.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143847.P819203088057460504

`A001065(A028310(a(n-1)))` with `a(0)=96`
-/

namespace A143847.P819203088057460504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [96] fun n a =>
  A001065 (A028310 (a (n - 1)).toNat).toNat

end

end A143847.P819203088057460504

noncomputable section

/-- A143847: Aliquot sequence starting at 96.

Offset 0, canonical program `A143847.P819203088057460504`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143847 (n : ℕ) : ℤ :=
  A143847.P819203088057460504.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143847.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143955.P2620701624282528188

`A000245(n)-A014138(n)`
-/

namespace A143955.P2620701624282528188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 n - A014138 n

end

end A143955.P2620701624282528188

noncomputable section

/-- A143955: Sum of the altitudes of the leftmost valleys of all Dyck paths of semilength n (if path has no valley, then this altitude is taken to be 0).

Offset 0, canonical program `A143955.P2620701624282528188`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A143955 (n : ℕ) : ℤ :=
  A143955.P2620701624282528188.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A143955.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144000.P3669752962200550520

`round((A098352(n+1)-A010882(n))/6)`
-/

namespace A144000.P3669752962200550520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A098352 (n + 1) - A010882 n : ℚ) / 6)

end

end A144000.P3669752962200550520

noncomputable section

/-- A144000: Rectangular array by antidiagonals: label each unit square in the first quadrant lattice by its northeast vertex (x,y) and mark squares for which x + y == 0 (mod 3); then R(m,n) is the number of marked squares in the rectangle [0,m]x[0,n].

Offset 1, canonical program `A144000.P3669752962200550520`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A144000 (n : ℕ) : ℤ :=
  A144000.P3669752962200550520.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A144000.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144066.P9816800767256069547

`C(row(n), col(n))*A112857(C(row(n)+1, 2)+col(n))`
-/

namespace A144066.P9816800767256069547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℤ) * A112857 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n)

end

end A144066.P9816800767256069547

noncomputable section

/-- A144066: T(n, k) is the number of order-preserving partial transformations (of an n-element chain) of height k (height(alpha) = |Im(alpha)|); triangle T read by rows.

Offset 0, canonical program `A144066.P9816800767256069547`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112857, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A144066 (n : ℕ) : ℤ :=
  A144066.P9816800767256069547.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112857, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A144066.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A144225.P8396101801530063706

`A097805(n)-a(n-1)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A144225.P8396101801530063706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A097805 n - a (n - 1)

end

end A144225.P8396101801530063706

noncomputable section

/-- A144225: Bordered Pascal's triangle in rectangular format.

Offset 1, canonical program `A144225.P8396101801530063706`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144225 (n : ℕ) : ℤ :=
  A144225.P8396101801530063706.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144225.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144427.P11032630758844699002

`p?[abs(ceil(A273960(n+1)/2)+1)]`
-/

namespace A144427.P11032630758844699002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈(A273960 (n + 1) : ℚ) / 2⌉ + 1|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144427.P11032630758844699002

noncomputable section

/-- A144427: Primes of the form (prime(k) + (-1)^k*3)/2.

Offset 1, canonical program `A144427.P11032630758844699002`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1377 terms. -/
def A144427 (n : ℕ) : ℤ :=
  A144427.P11032630758844699002.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1377 terms. -/
def A144427.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144816.P2801218708024354472

`A046161(A002262(n))*A046161(A025581(n))`
-/

namespace A144816.P2801218708024354472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046161 (A002262 n).toNat * A046161 (A025581 n).toNat

end

end A144816.P2801218708024354472

noncomputable section

/-- A144816: Denominators of triangle T(n,k), n>=0, 0<=k<=n, read by rows: T(n,k) is the coefficient of x^(2*k+1) in polynomial t_n(x), used to define continuous and n times differentiable sigmoidal transfer functions.

Offset 0, canonical program `A144816.P2801218708024354472`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144816 (n : ℕ) : ℤ :=
  A144816.P2801218708024354472.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144816.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144944.P9640827706144714788

`A033878(n)+a(n-2)%a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A144944.P9640827706144714788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A033878 n + Int.tmod (a (n - 2)) (a (n - 1))

end

end A144944.P9640827706144714788

noncomputable section

/-- A144944: Super-Catalan triangle (read by rows) = triangular array associated with little Schroeder numbers (read by rows): T(0,0)=1, T(p,q) = T(p,q-1) if 0 < p = q, T(p,q) = T(p,q-1) + T(p-1,q) + T(p-1,q-1) if -1 < p < q and T(p,q) = 0 otherwise.

Offset 0, canonical program `A144944.P9640827706144714788`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8001 terms. -/
def A144944 (n : ℕ) : ℤ :=
  A144944.P9640827706144714788.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8001 terms. -/
def A144944.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145017.P13290880054075597946

`record[A007913(n+1)/A007913(A071797(n+1))]`
-/

namespace A145017.P13290880054075597946
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007913 (n + 1) : ℚ) / (A007913 (A071797 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145017.P13290880054075597946

noncomputable section

/-- A145017: Squarefree positive integers k for which k-(floor(sqrt(k)))^2 is a perfect square.

Offset 1, canonical program `A145017.P13290880054075597946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 523 terms. -/
def A145017 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A145017.P13290880054075597946.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 523 terms. -/
def A145017.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145382.P14950422092557236085

`A080079(p?[xor(1, n)+1])-1`
-/

namespace A145382.P14950422092557236085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080079 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) - 1

end

end A145382.P14950422092557236085

noncomputable section

/-- A145382: Write the n-th prime in binary. Change all 0's to 1's and all 1's to 0's. a(n) is the decimal equivalent of the result.

Offset 1, canonical program `A145382.P14950422092557236085`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A145382 (n : ℕ) : ℤ :=
  A145382.P14950422092557236085.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A145382.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145471.P5456915067997334848

`p?[a(n-1)+2*A001223(n+1)]` with `a(0)=1`
-/

namespace A145471.P5456915067997334848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 2 * A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145471.P5456915067997334848

noncomputable section

/-- A145471: Primes p such that (5+p)/2 is prime.

Offset 1, canonical program `A145471.P5456915067997334848`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5803 terms. -/
def A145471 (n : ℕ) : ℤ :=
  A145471.P5456915067997334848.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5803 terms. -/
def A145471.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145472.P4180650491768818475

`p?[A100484(n+1)-7]`
-/

namespace A145472.P4180650491768818475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145472.P4180650491768818475

noncomputable section

/-- A145472: Primes p such that (p+7)/2 is prime.

Offset 1, canonical program `A145472.P4180650491768818475`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1470 terms. -/
def A145472 (n : ℕ) : ℤ :=
  A145472.P4180650491768818475.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1470 terms. -/
def A145472.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145473.P9926158279256282826

`p?[A100484(n+1)-11]`
-/

namespace A145473.P9926158279256282826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145473.P9926158279256282826

noncomputable section

/-- A145473: Primes p such that (11 + p)/2 is prime.

Offset 1, canonical program `A145473.P9926158279256282826`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1309 terms. -/
def A145473 (n : ℕ) : ℤ :=
  A145473.P9926158279256282826.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1309 terms. -/
def A145473.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145475.P16725095266388124518

`p?[A100484(n+1)-17]`
-/

namespace A145475.P16725095266388124518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145475.P16725095266388124518

noncomputable section

/-- A145475: Primes p such that (17+p)/2 is prime.

Offset 1, canonical program `A145475.P16725095266388124518`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1311 terms. -/
def A145475 (n : ℕ) : ℤ :=
  A145475.P16725095266388124518.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1311 terms. -/
def A145475.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145477.P7650776150596688372

`p?[2*A006093(n+1)-21]`
-/

namespace A145477.P7650776150596688372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006093 (n + 1) - 21

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145477.P7650776150596688372

noncomputable section

/-- A145477: Primes p such that (23 + p)/2 is prime.

Offset 1, canonical program `A145477.P7650776150596688372`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1283 terms. -/
def A145477 (n : ℕ) : ℤ :=
  A145477.P7650776150596688372.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1283 terms. -/
def A145477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145610.P553506621032330798

`A002805(2*(n+1))`
-/

namespace A145610.P553506621032330798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002805 (2 * (n + 1))

end

end A145610.P553506621032330798

noncomputable section

/-- A145610: Denominator of the polynomial A_l(x) = Sum_{d=1..l-1} x^(l-d)/d for index l=2n+1 evaluated at x=1.

Offset 1, canonical program `A145610.P553506621032330798`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A145610 (n : ℕ) : ℤ :=
  A145610.P553506621032330798.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A145610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145661.P17257899630299939207

`(-1)^col(n)*A119258(C(row(n)+1, 2)+col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A145661.P17257899630299939207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ SequenceMachineLib.triCol n * A119258 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n)

end

end A145661.P17257899630299939207

noncomputable section

/-- A145661: Triangle T(n,k) = (-1)^k * A119258(n,k) read by rows, 0 <= k <= n.

Offset 0, canonical program `A145661.P17257899630299939207`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A119258, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A145661 (n : ℕ) : ℤ :=
  A145661.P17257899630299939207.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A119258, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A145661.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A145837.P9524873425089286161

`eq[A073093(n+1), A102294(n+1)]`
-/

namespace A145837.P9524873425089286161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102294 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A145837.P9524873425089286161

noncomputable section

/-- A145837: Indices of primes in A005891(n).

Offset 1, canonical program `A145837.P9524873425089286161`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 907 terms. -/
def A145837 (n : ℕ) : ℤ :=
  (A145837.P9524873425089286161.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 907 terms. -/
def A145837.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145907.P71648537022638446

`p?[A133280(A102781(n+1))]`
-/

namespace A145907.P71648537022638446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133280 (A102781 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145907.P71648537022638446

noncomputable section

/-- A145907: Primes p such that p + ceiling(sqrt(p)) is also prime.

Offset 1, canonical program `A145907.P71648537022638446`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 257 terms. -/
def A145907 (n : ℕ) : ℤ :=
  A145907.P71648537022638446.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 257 terms. -/
def A145907.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145909.P5620417034163878499

`8*A145911(n)`
-/

namespace A145909.P5620417034163878499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A145911 n

end

end A145909.P5620417034163878499

noncomputable section

/-- A145909: First 6-fold decimation of A061039. First bisection of A144454.

Offset 0, canonical program `A145909.P5620417034163878499`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A145909 (n : ℕ) : ℤ :=
  A145909.P5620417034163878499.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A145909.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A147582.P8026772899085515765

`floor(12*A048883(n)/9)`
-/

namespace A147582.P8026772899085515765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(12 * A048883 n : ℚ) / 9⌋

end

end A147582.P8026772899085515765

noncomputable section

/-- A147582: First differences of A147562.

Offset 1, canonical program `A147582.P8026772899085515765`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A147582 (n : ℕ) : ℤ :=
  A147582.P8026772899085515765.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A147582.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A147661.P789511450984016641

`A007913(C(or(1, n), n))`
-/

namespace A147661.P789511450984016641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (Nat.choose (Nat.lor 1 n) n)

end

end A147661.P789511450984016641

noncomputable section

/-- A147661: a(n) = squarefree part of n^n.

Offset 1, canonical program `A147661.P789511450984016641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A147661 (n : ℕ) : ℤ :=
  A147661.P789511450984016641.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A147661.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A147812.P3936914708627381155

`A065091(lt[A001223(n+2), A001223(n+1)])`
-/

namespace A147812.P3936914708627381155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A147812.P3936914708627381155

noncomputable section

/-- A147812: Primes prime(n) such that prime(n+1) - prime(n) > prime(n+2) - prime(n+1).

Offset 1, canonical program `A147812.P3936914708627381155`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4749 terms. -/
def A147812 (n : ℕ) : ℤ :=
  A147812.P3936914708627381155.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4749 terms. -/
def A147812.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A147848.P5380392809057908469

`∑{d}[n+1, A008966(#)*A093148((n+1)/#-1)]`
-/

namespace A147848.P5380392809057908469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A093148 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A147848.P5380392809057908469

noncomputable section

/-- A147848: Number (up to isomorphism) of groups of order 2n that have Z/nZ as a subgroup (that is, that have an element of order n).

Offset 1, canonical program `A147848.P5380392809057908469`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A147848 (n : ℕ) : ℤ :=
  A147848.P5380392809057908469.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A147848.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A147991.P1055187431059900303

`A137951(n)+1`
-/

namespace A147991.P1055187431059900303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137951 n + 1

end

end A147991.P1055187431059900303

noncomputable section

/-- A147991: Sequence S such that 1 is in S and if x is in S, then 3x-1 and 3x+1 are in S.

Offset 1, canonical program `A147991.P1055187431059900303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A147991 (n : ℕ) : ℤ :=
  A147991.P1055187431059900303.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A147991.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A147996.P16434051188611962821

`9^n-A001555(n)`
-/

namespace A147996.P16434051188611962821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 ^ n : ℤ) - A001555 n

end

end A147996.P16434051188611962821

noncomputable section

/-- A147996: a(n) = 9^n-8^n-7^n-6^n-5^n-4^n-3^n-2^n-1.

Offset 1, canonical program `A147996.P16434051188611962821`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A147996 (n : ℕ) : ℤ :=
  A147996.P16434051188611962821.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A147996.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151162.P7309705837089082526

`∑{#}[n, A120730(C(n+1, 2)+#)*3^#]`
-/

namespace A151162.P7309705837089082526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A120730 (Nat.choose (n + 1) 2 + k) * (3 ^ k : ℤ)

end

end A151162.P7309705837089082526

noncomputable section

/-- A151162: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (1, 0, 0), (1, 0, 1), (1, 1, 0)}.

Offset 0, canonical program `A151162.P7309705837089082526`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120730, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A151162 (n : ℕ) : ℤ :=
  A151162.P7309705837089082526.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120730, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A151162.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A151170.P14263498582911086188

`∑{#}[n, C(n, #)*A060900(#)]`
-/

namespace A151170.P14263498582911086188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A060900 k

end

end A151170.P14263498582911086188

noncomputable section

/-- A151170: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (0, 1, 0), (1, 1, 0), (1, 1, 1)}.

Offset 0, canonical program `A151170.P14263498582911086188`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A151170 (n : ℕ) : ℤ :=
  A151170.P14263498582911086188.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A151170.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151254.P14869212094467663028

`∑{#}[n, A120730(C(n+1, 2)+#)*4^#]`
-/

namespace A151254.P14869212094467663028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A120730 (Nat.choose (n + 1) 2 + k) * (4 ^ k : ℤ)

end

end A151254.P14869212094467663028

noncomputable section

/-- A151254: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (1, 0, 0), (1, 0, 1), (1, 1, 0), (1, 1, 1)}.

Offset 0, canonical program `A151254.P14869212094467663028`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120730, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A151254 (n : ℕ) : ℤ :=
  A151254.P14869212094467663028.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120730, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A151254.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A151281.P1016941325909575643

`∑{#}[n, A120730(C(n+1, 2)+#)*2^#]`
-/

namespace A151281.P1016941325909575643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A120730 (Nat.choose (n + 1) 2 + k) * (2 ^ k : ℤ)

end

end A151281.P1016941325909575643

noncomputable section

/-- A151281: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0) and consisting of n steps taken from {(-1, 0), (1, 0), (1, 1)}.

Offset 0, canonical program `A151281.P1016941325909575643`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120730, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A151281 (n : ℕ) : ℤ :=
  A151281.P1016941325909575643.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120730, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A151281.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A151566.P2662618975660010276

`∑[A060632(n)]-A060632(n)`
-/

namespace A151566.P2662618975660010276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A060632 n

end

end A151566.P2662618975660010276

noncomputable section

/-- A151566: Leftist toothpicks (see Comments for definition).

Offset 0, canonical program `A151566.P2662618975660010276`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151566 (n : ℕ) : ℤ :=
  A151566.P2662618975660010276.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151566.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151667.P15819438536939067945

`char[A033042(n)]`
-/

namespace A151667.P15819438536939067945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033042 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A151667.P15819438536939067945

noncomputable section

/-- A151667: Number of partitions of n into distinct powers of 5.

Offset 0, canonical program `A151667.P15819438536939067945`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151667 (n : ℕ) : ℤ :=
  (A151667.P15819438536939067945.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151667.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151673.P12118802834766587725

`A151669(n)²`
-/

namespace A151673.P12118802834766587725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151669 n ^ 2

end

end A151673.P12118802834766587725

noncomputable section

/-- A151673: G.f.: Product_{k>=0} (1 + 4*x^(4^k)).

Offset 0, canonical program `A151673.P12118802834766587725`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151673 (n : ℕ) : ℤ :=
  A151673.P12118802834766587725.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151673.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151779.P14955371846823112406

`A003948(A000120(n))`
-/

namespace A151779.P14955371846823112406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003948 (A000120 n).toNat

end

end A151779.P14955371846823112406

noncomputable section

/-- A151779: a(1)=1; for n > 1, a(n)=6*5^{wt(n-1)-1}.

Offset 1, canonical program `A151779.P14955371846823112406`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151779 (n : ℕ) : ℤ :=
  A151779.P14955371846823112406.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151779.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151787.P3022189616092416365

`floor(A160713(n)/2)`
-/

namespace A151787.P3022189616092416365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A160713 n : ℚ) / 2⌋

end

end A151787.P3022189616092416365

noncomputable section

/-- A151787: a(1)=1; for n > 1, a(n)=3*2^{wt(n-1)-1}.

Offset 1, canonical program `A151787.P3022189616092416365`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151787 (n : ℕ) : ℤ :=
  A151787.P3022189616092416365.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151787.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151792.P3133912318885071183

`∑[A151791(n+1)]`
-/

namespace A151792.P3133912318885071183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151791 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151792.P3133912318885071183

noncomputable section

/-- A151792: Partial sums of A151791.

Offset 1, canonical program `A151792.P3133912318885071183`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151792 (n : ℕ) : ℤ :=
  A151792.P3133912318885071183.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151792.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151793.P2092265182392595412

`∑[A151782(n+1)]`
-/

namespace A151793.P2092265182392595412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151793.P2092265182392595412

noncomputable section

/-- A151793: Partial sums of A151782.

Offset 1, canonical program `A151793.P2092265182392595412`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151793 (n : ℕ) : ℤ :=
  A151793.P2092265182392595412.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151793.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151902.P5098317336013099317

`A000120(floor(2/3*n))`
-/

namespace A151902.P5098317336013099317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 ⌊(2 : ℚ) / 3 * (n : ℚ)⌋.toNat

end

end A151902.P5098317336013099317

noncomputable section

/-- A151902: a(n) = wt(k) + f(j) if n = 6k+j, 0 <= j < 6, where wt() = A000120(), f() = A151899().

Offset 0, canonical program `A151902.P5098317336013099317`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151902 (n : ℕ) : ℤ :=
  A151902.P5098317336013099317.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151922.P1912274686757086494

`A079316(2*n)`
-/

namespace A151922.P1912274686757086494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079316 (2 * n)

end

end A151922.P1912274686757086494

noncomputable section

/-- A151922: Number of first-quadrant cells (including the two boundaries) that are "ON" after n-th stage of the Holladay-Ulam cellular automaton.

Offset 0, canonical program `A151922.P1912274686757086494`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079316, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A151922 (n : ℕ) : ℤ :=
  A151922.P1912274686757086494.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079316, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A151922.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A151923.P3934618073960995862

`A079316(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A151923.P3934618073960995862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079316 (2 * n + 1)

end

end A151923.P3934618073960995862

noncomputable section

/-- A151923: a(n) = A079316(2n+1).

Offset 0, canonical program `A151923.P3934618073960995862`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079316, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A151923 (n : ℕ) : ℤ :=
  A151923.P3934618073960995862.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079316, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A151923.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A152084.P18358934088096042135

`p?[A006165(A045344(n+1))]`
-/

namespace A152084.P18358934088096042135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006165 (A045344 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152084.P18358934088096042135

noncomputable section

/-- A152084: Primes p such that p + 2^floor(log_2(p)) is prime.

Offset 1, canonical program `A152084.P18358934088096042135`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A152084 (n : ℕ) : ℤ :=
  A152084.P18358934088096042135.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A152084.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152204.P17941578580665267374

`1+2*A082375(n)`
-/

namespace A152204.P17941578580665267374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 2 * A082375 n

end

end A152204.P17941578580665267374

noncomputable section

/-- A152204: Triangle read by rows: T(n,k) = 2*n-4*k+5 (n >= 0, 1 <= k <= 1+floor(n/2)).

Offset 0, canonical program `A152204.P17941578580665267374`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152204 (n : ℕ) : ℤ :=
  A152204.P17941578580665267374.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152204.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152420.P2270128080283716414

`(1-A080883(n))*(3-A071797(n+1))`
-/

namespace A152420.P2270128080283716414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A080883 n) * (3 - A071797 (n + 1))

end

end A152420.P2270128080283716414

noncomputable section

/-- A152420: Irregular triangle read by rows: T(n,k) = n*(n-2) - (k-n)*(k-n-2), with 0 <= k <= 2*n.

Offset 0, canonical program `A152420.P2270128080283716414`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152420 (n : ℕ) : ℤ :=
  A152420.P2270128080283716414.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152420.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152568.P4268834110349744832

`Δ[A034008(A004736(abs(1-n)+1))]`
-/

namespace A152568.P4268834110349744832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (A004736 (|1 - (n : ℤ)| + 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A152568.P4268834110349744832

noncomputable section

/-- A152568: Triangle T(n,k) read by rows: T(n,n) = -1, T(n,0) = 2^(n - 1), T(n,k) = -2^(n - k - 1), 1 <= k <= n - 1.

Offset 0, canonical program `A152568.P4268834110349744832`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152568 (n : ℕ) : ℤ :=
  A152568.P4268834110349744832.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152568.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152670.P12437644103347504857

`A000108(A062289(n+1))`
-/

namespace A152670.P12437644103347504857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A062289 (n + 1)).toNat

end

end A152670.P12437644103347504857

noncomputable section

/-- A152670: Even Catalan numbers.

Offset 1, canonical program `A152670.P12437644103347504857`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062289, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152670 (n : ℕ) : ℤ :=
  A152670.P12437644103347504857.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062289, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152670.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A152678.P16261350358217221362

`A000203(A028983(n+1))`
-/

namespace A152678.P16261350358217221362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A028983 (n + 1)).toNat

end

end A152678.P16261350358217221362

noncomputable section

/-- A152678: Even members of A000203.

Offset 1, canonical program `A152678.P16261350358217221362`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028983, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152678 (n : ℕ) : ℤ :=
  A152678.P16261350358217221362.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028983, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152678.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A152753.P13521144537100370814

`lcm(2, A152669(A062289(n+1)))`
-/

namespace A152753.P13521144537100370814
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A152669 (A062289 (n + 1)).toNat)

end

end A152753.P13521144537100370814

noncomputable section

/-- A152753: Last digit of even Catalan number A152670(n).

Offset 1, canonical program `A152753.P13521144537100370814`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9987 terms. -/
def A152753 (n : ℕ) : ℤ :=
  (A152753.P13521144537100370814.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9987 terms. -/
def A152753.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152881.P17251037129773782981

`A067988(n)-A001629(n+2)`
-/

namespace A152881.P17251037129773782981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067988 n - A001629 (n + 2)

end

end A152881.P17251037129773782981

noncomputable section

/-- A152881: Positions of those 1's that are followed by a 0, summed over all Fibonacci binary words of length n. A Fibonacci binary word is a binary word having no 00 subword.

Offset 1, canonical program `A152881.P17251037129773782981`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 456 terms. -/
def A152881 (n : ℕ) : ℤ :=
  A152881.P17251037129773782981.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 456 terms. -/
def A152881.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152907.P2636118499686291148

`A152905(floor(n/2))`
-/

namespace A152907.P2636118499686291148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152905 ⌊(n : ℚ) / 2⌋.toNat

end

end A152907.P2636118499686291148

noncomputable section

/-- A152907: Irregular triangle read by rows, numbers in A007318 repeated four times .

Offset 0, canonical program `A152907.P2636118499686291148`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152907 (n : ℕ) : ℤ :=
  A152907.P2636118499686291148.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152907.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152928.P14754759326661192641

`A005248(n+2)²+A001906(n+3)²`
-/

namespace A152928.P14754759326661192641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 (n + 2) ^ 2 + A001906 (n + 3) ^ 2

end

end A152928.P14754759326661192641

noncomputable section

/-- A152928: Number of sets (in the Hausdorff metric geometry) at each location between two sets defining a polygonal configuration consisting of two m-gonal polygonal components chained with string components of length 1 as m varies.

Offset 2, canonical program `A152928.P14754759326661192641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A152928 (n : ℕ) : ℤ :=
  A152928.P14754759326661192641.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A152928.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153043.P5345895486069451585

`eq[0, A101264(n)]+2`
-/

namespace A153043.P5345895486069451585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A153043.P5345895486069451585

noncomputable section

/-- A153043: Numbers n > 1 such that 2*n-3 is not a prime.

Offset 1, canonical program `A153043.P5345895486069451585`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153043 (n : ℕ) : ℤ :=
  (A153043.P5345895486069451585.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153043.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153052.P215135875194931627

`eq[0, A101264(n+2)]`
-/

namespace A153052.P215135875194931627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153052.P215135875194931627

noncomputable section

/-- A153052: Numbers m such that 2*m + 5 is not a prime.

Offset 1, canonical program `A153052.P215135875194931627`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153052 (n : ℕ) : ℤ :=
  (A153052.P215135875194931627.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153052.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153081.P12437245400672913665

`A101448(2+n)-1`
-/

namespace A153081.P12437245400672913665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101448 (2 + n) - 1

end

end A153081.P12437245400672913665

noncomputable section

/-- A153081: Nonnegative numbers k such that 2k + 13 is prime.

Offset 1, canonical program `A153081.P12437245400672913665`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A153081 (n : ℕ) : ℤ :=
  A153081.P12437245400672913665.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A153081.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153134.P16427233179817197674

`1+A024898(1+n)`
-/

namespace A153134.P16427233179817197674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A024898 (1 + n)

end

end A153134.P16427233179817197674

noncomputable section

/-- A153134: Numbers k such that 6k - 7 is prime.

Offset 1, canonical program `A153134.P16427233179817197674`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153134 (n : ℕ) : ℤ :=
  A153134.P16427233179817197674.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153134.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153142.P15201218157463627631

`A087734(n)+A003188(n-A087734(n))`
-/

namespace A153142.P15201218157463627631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087734 n + A003188 ((n : ℤ) - A087734 n).toNat

end

end A153142.P15201218157463627631

noncomputable section

/-- A153142: Permutation of nonnegative integers: A059893-conjugate of A153152.

Offset 0, canonical program `A153142.P15201218157463627631`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A153142 (n : ℕ) : ℤ :=
  A153142.P15201218157463627631.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A153142.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153153.P13380444019182590244

`or(A038554(2*n+1), A053644(n))`
-/

namespace A153153.P13380444019182590244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A038554 (2 * n + 1)) (A053644 n)

end

end A153153.P13380444019182590244

noncomputable section

/-- A153153: Permutation of natural numbers: A059893-conjugate of A003188.

Offset 0, canonical program `A153153.P13380444019182590244`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A153153 (n : ℕ) : ℤ :=
  A153153.P13380444019182590244.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A153153.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153189.P13320837087677205877

`A142589(A245300(n)+A025581(n))`
-/

namespace A153189.P13320837087677205877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142589 (A245300 n + A025581 n).toNat

end

end A153189.P13320837087677205877

noncomputable section

/-- A153189: Triangle T(n,k) = Product_{j=0..k} n*j+1.

Offset 0, canonical program `A153189.P13320837087677205877`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 433 terms. -/
def A153189 (n : ℕ) : ℤ :=
  A153189.P13320837087677205877.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 433 terms. -/
def A153189.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153219.P6113425465272514699

`eq[0, A075743(2*(n+1))]`
-/

namespace A153219.P6113425465272514699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153219.P6113425465272514699

noncomputable section

/-- A153219: Numbers n such that 6*n + 7 is not prime.

Offset 1, canonical program `A153219.P6113425465272514699`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153219 (n : ℕ) : ℤ :=
  (A153219.P6113425465272514699.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153219.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153235.P14619884982715841541

`lt[n+1, A258835(n)]`
-/

namespace A153235.P14619884982715841541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258835 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153235.P14619884982715841541

noncomputable section

/-- A153235: Numbers n such that 8*n+7 is not prime.

Offset 1, canonical program `A153235.P14619884982715841541`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153235 (n : ℕ) : ℤ :=
  (A153235.P14619884982715841541.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153235.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153245.P10556256831139626848

`1+A046953(1+n)`
-/

namespace A153245.P10556256831139626848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A046953 (1 + n)

end

end A153245.P10556256831139626848

noncomputable section

/-- A153245: Numbers n>1 such that 6*n-7 is not prime.

Offset 1, canonical program `A153245.P10556256831139626848`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153245 (n : ℕ) : ℤ :=
  A153245.P10556256831139626848.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153245.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153309.P11630091338903611958

`A153184(1+n)-1`
-/

namespace A153309.P11630091338903611958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153184 (1 + n) - 1

end

end A153309.P11630091338903611958

noncomputable section

/-- A153309: Numbers k such that 3*k + 1 is not prime.

Offset 1, canonical program `A153309.P11630091338903611958`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153309 (n : ℕ) : ℤ :=
  A153309.P11630091338903611958.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153309.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153319.P18178413005395234770

`p?[A075743(4*n+3)+A005408(n+1)]`
-/

namespace A153319.P18178413005395234770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (4 * n + 3) + A005408 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153319.P18178413005395234770

noncomputable section

/-- A153319: Primes p such that 6*p-7 is not prime.

Offset 1, canonical program `A153319.P18178413005395234770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1344 terms. -/
def A153319 (n : ℕ) : ℤ :=
  A153319.P18178413005395234770.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1344 terms. -/
def A153319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153343.P11659389129775803529

`eq[1, A005171(5*n+4)]`
-/

namespace A153343.P11659389129775803529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (5 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153343.P11659389129775803529

noncomputable section

/-- A153343: Numbers k such that 5*k + 4 is not prime.

Offset 1, canonical program `A153343.P11659389129775803529`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153343 (n : ℕ) : ℤ :=
  (A153343.P11659389129775803529.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153343.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153346.P6176886421067513764

`A153345(n+1)+T(n-1,k)` with `a(0)=1`
-/

namespace A153346.P6176886421067513764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A153345 (n + 1) + SequenceMachineLib.triUp a n

end

end A153346.P6176886421067513764

noncomputable section

/-- A153346: Triangle read by rows: A000012 * A153345.

Offset 0, canonical program `A153346.P6176886421067513764`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153346 (n : ℕ) : ℤ :=
  A153346.P6176886421067513764.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153346.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153348.P13016812271685302191

`comp[A092022(1+n)]`
-/

namespace A153348.P13016812271685302191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092022 (1 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153348.P13016812271685302191

noncomputable section

/-- A153348: Numbers k such that 16*k+3 is not prime.

Offset 1, canonical program `A153348.P13016812271685302191`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153348 (n : ℕ) : ℤ :=
  (A153348.P13016812271685302191.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153348.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153371.P4443474790677712850

`A153370(2*(n+1))`
-/

namespace A153371.P4443474790677712850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153370 (2 * (n + 1))

end

end A153371.P4443474790677712850

noncomputable section

/-- A153371: Number of zig-zag paths from top to bottom of a rectangle of width 11 with 2n rows whose color is that of the top right corner.

Offset 1, canonical program `A153371.P4443474790677712850`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A153371 (n : ℕ) : ℤ :=
  A153371.P4443474790677712850.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A153371.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116383.P5849049241800975913

`∑{#}[n, (-1)^(n-#)*C(n, #)*A116387(#)]`
-/

namespace A116383.P5849049241800975913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A116387 k : ℚ)

end

end A116383.P5849049241800975913

noncomputable section

/-- A116383: Row sums of number triangle A116382.

Offset 0, canonical program `A116383.P5849049241800975913`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. -/
def A116383 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A116383.P5849049241800975913.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. -/
def A116383.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116853.P8257682953299871170

`A068106(A007401(n+1))+A068106(n)`
-/

namespace A116853.P8257682953299871170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068106 (A007401 (n + 1)).toNat + A068106 n

end

end A116853.P8257682953299871170

noncomputable section

/-- A116853: Difference triangle of factorial numbers read by upward diagonals.

Offset 1, canonical program `A116853.P8257682953299871170`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2472 terms. -/
def A116853 (n : ℕ) : ℤ :=
  A116853.P8257682953299871170.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2472 terms. -/
def A116853.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116854.P12189334687806053340

`A068106(A066182(1+n)+A010054(n))`
-/

namespace A116854.P12189334687806053340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068106 (A066182 (1 + n) + A010054 n).toNat

end

end A116854.P12189334687806053340

noncomputable section

/-- A116854: First differences of the rows in the triangle of A116853, starting with 0.

Offset 1, canonical program `A116854.P12189334687806053340`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A116854 (n : ℕ) : ℤ :=
  A116854.P12189334687806053340.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A116854.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116914.P5557374618331132372

`A126258(C(2*n+1, 2)+n)`
-/

namespace A116914.P5557374618331132372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126258 (Nat.choose (2 * n + 1) 2 + n)

end

end A116914.P5557374618331132372

noncomputable section

/-- A116914: Number of UUDD's, where U=(1,1) and D=(1,-1), in all hill-free Dyck paths of semilength n (a hill in a Dyck path is a peak at level 1).

Offset 2, canonical program `A116914.P5557374618331132372`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A126258, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A116914 (n : ℕ) : ℤ :=
  A116914.P5557374618331132372.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A126258, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A116914.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A117179.P14608184751527958313

`A111526(n)*A117568(n)`
-/

namespace A117179.P14608184751527958313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111526 n * A117568 n

end

end A117179.P14608184751527958313

noncomputable section

/-- A117179: Riordan array ((1-x^2)/(1+x^2)^2,x/(1+x^2)).

Offset 0, canonical program `A117179.P14608184751527958313`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117179 (n : ℕ) : ℤ :=
  A117179.P14608184751527958313.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117179.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117674.P10937197086857291007

`p?[A187744(n+1)]`
-/

namespace A117674.P10937197086857291007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187744 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117674.P10937197086857291007

noncomputable section

/-- A117674: Prime numbers whose sum of digits is a triangular number.

Offset 1, canonical program `A117674.P10937197086857291007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 435 terms. -/
def A117674 (n : ℕ) : ℤ :=
  A117674.P10937197086857291007.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 435 terms. -/
def A117674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117682.P12609232638035276645

`p?[n*A010054(A007954(n))]`
-/

namespace A117682.P12609232638035276645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010054 (A007954 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117682.P12609232638035276645

noncomputable section

/-- A117682: Prime numbers for which the product of the digits is a triangular number.

Offset 1, canonical program `A117682.P12609232638035276645`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A117682 (n : ℕ) : ℤ :=
  A117682.P12609232638035276645.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A117682.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117768.P14671149105729955350

`Δ[A184741(2*(n+3))]`
-/

namespace A117768.P14671149105729955350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184741 (2 * (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117768.P14671149105729955350

noncomputable section

/-- A117768: Number of Lucas numbers with n digits.

Offset 0, canonical program `A117768.P14671149105729955350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A117768 (n : ℕ) : ℤ :=
  A117768.P14671149105729955350.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A117768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118590.P9922597422705317347

`p?[A267635(A001223(n+1))+A065091(n+1)]`
-/

namespace A118590.P9922597422705317347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267635 (A001223 (n + 1)).toNat + A065091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A118590.P9922597422705317347

noncomputable section

/-- A118590: Larger of two consecutive primes whose positive difference is a square.

Offset 1, canonical program `A118590.P9922597422705317347`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A118590 (n : ℕ) : ℤ :=
  A118590.P9922597422705317347.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A118590.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118819.P2357412162549734285

`or(1, A345110(a(n-1))+5)` with `a(0)=1`
-/

namespace A118819.P2357412162549734285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor 1 (A345110 (a (n - 1)).toNat + 5)

end

end A118819.P2357412162549734285

noncomputable section

/-- A118819: Start with 1 and repeatedly place the first digit at the end of the number and add 6.

Offset 1, canonical program `A118819.P2357412162549734285`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118819 (n : ℕ) : ℤ :=
  A118819.P2357412162549734285.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118819.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118820.P9500766899894444633

`A345110(a(n-1))+2` with `a(0)=1`
-/

namespace A118820.P9500766899894444633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A345110 (a (n - 1)).toNat + 2

end

end A118820.P9500766899894444633

noncomputable section

/-- A118820: Start with 1 and repeatedly place the first digit at the end of the number and add 2.

Offset 1, canonical program `A118820.P9500766899894444633`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118820 (n : ℕ) : ℤ :=
  A118820.P9500766899894444633.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118820.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118837.P6293664689809340976

`A345110(a(n-1))+4` with `a(0)=1`
-/

namespace A118837.P6293664689809340976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A345110 (a (n - 1)).toNat + 4

end

end A118837.P6293664689809340976

noncomputable section

/-- A118837: Start with 1 and repeatedly place the first digit at the end of the number and add 4.

Offset 1, canonical program `A118837.P6293664689809340976`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118837 (n : ℕ) : ℤ :=
  A118837.P6293664689809340976.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118837.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118852.P16217314348815318808

`or(1, A345110(a(n-1))+2)+6` with `a(0)=1`
-/

namespace A118852.P16217314348815318808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor 1 (A345110 (a (n - 1)).toNat + 2) + 6

end

end A118852.P16217314348815318808

noncomputable section

/-- A118852: Start with 1 and repeatedly place the first digit at the end of the number and add 8.

Offset 1, canonical program `A118852.P16217314348815318808`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118852 (n : ℕ) : ℤ :=
  A118852.P16217314348815318808.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118852.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118853.P15418379966188260023

`A345110(a(n-1))+10` with `a(0)=1`
-/

namespace A118853.P15418379966188260023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A345110 (a (n - 1)).toNat + 10

end

end A118853.P15418379966188260023

noncomputable section

/-- A118853: Start with 1 and repeatedly place the first digit at the end of the number and add 10.

Offset 1, canonical program `A118853.P15418379966188260023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118853 (n : ℕ) : ℤ :=
  A118853.P15418379966188260023.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118853.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118861.P6292937444411808729

`A345110(a(n-1))+14` with `a(0)=1`
-/

namespace A118861.P6292937444411808729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A345110 (a (n - 1)).toNat + 14

end

end A118861.P6292937444411808729

noncomputable section

/-- A118861: Start with 1 and repeatedly place the first digit at the end of the number and add 14.

Offset 1, canonical program `A118861.P6292937444411808729`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118861 (n : ℕ) : ℤ :=
  A118861.P6292937444411808729.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118861.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118864.P3903708046206413005

`A345110(a(n-1))+17` with `a(0)=1`
-/

namespace A118864.P3903708046206413005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A345110 (a (n - 1)).toNat + 17

end

end A118864.P3903708046206413005

noncomputable section

/-- A118864: Start with 1 and repeatedly place the first digit at the end of the number and add 17.

Offset 1, canonical program `A118864.P3903708046206413005`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118864 (n : ℕ) : ℤ :=
  A118864.P3903708046206413005.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118864.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119462.P8715434688808793854

`(A057427(n)+1)*A034839(n)`
-/

namespace A119462.P8715434688808793854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 1) * A034839 n

end

end A119462.P8715434688808793854

noncomputable section

/-- A119462: Triangle read by rows: T(n,k) is the number of circular binary words of length n having k occurrences of 01 (0 <= k <= floor(n/2)).

Offset 0, canonical program `A119462.P8715434688808793854`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A119462 (n : ℕ) : ℤ :=
  A119462.P8715434688808793854.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A119462.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120010.P11360890748899172652

`∑{#}[n, C(n, #)*A166300(#)]`
-/

namespace A120010.P11360890748899172652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A166300 k

end

end A120010.P11360890748899172652

noncomputable section

/-- A120010: G.f.: A(x) = (1-sqrt(1-4*x))/2 o x/(1-x) o (x-x^2), a composition of functions involving the Catalan function and its inverse.

Offset 1, canonical program `A120010.P11360890748899172652`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 186 terms. -/
def A120010 (n : ℕ) : ℤ :=
  A120010.P11360890748899172652.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 186 terms. -/
def A120010.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120072.P10510853006635335626

`A120070(n+2)/gcd(A120070(n+2), A133821(n+1))`
-/

namespace A120072.P10510853006635335626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120070 (n + 2) : ℚ) / (Int.gcd (A120070 (n + 2)) (A133821 (n + 1)) : ℚ)

end

end A120072.P10510853006635335626

noncomputable section

/-- A120072: Numerator triangle for hydrogen spectrum rationals.

Offset 2, canonical program `A120072.P10510853006635335626`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120072 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A120072.P10510853006635335626.a (n - 2))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120072.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120106.P17285156561798854868

`a(n-1)*A120114(n-1)+1` with `a(0)=1`
-/

namespace A120106.P17285156561798854868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A120114 (n - 1) + 1

end

end A120106.P17285156561798854868

noncomputable section

/-- A120106: a(n) = Sum_{k=0..n} lcm(1..2n+2)/lcm(1..2k+2).

Offset 0, canonical program `A120106.P17285156561798854868`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A120106 (n : ℕ) : ℤ :=
  A120106.P17285156561798854868.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A120106.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120383.P4051644873206706518

`eq[A001222(n+1), A324848(n+1)]+1`
-/

namespace A120383.P4051644873206706518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324848 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A120383.P4051644873206706518

noncomputable section

/-- A120383: A number n is included if it satisfies: m divides n for all m's where the m-th prime divides n.

Offset 1, canonical program `A120383.P4051644873206706518`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 406 terms. -/
def A120383 (n : ℕ) : ℤ :=
  (A120383.P4051644873206706518.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 406 terms. -/
def A120383.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120503.P17912308022700772714

`A007844(n+1)/3`
-/

namespace A120503.P17912308022700772714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007844 (n + 1) : ℚ) / 3

end

end A120503.P17912308022700772714

noncomputable section

/-- A120503: Generalized meta-Fibonacci sequence a(n) with parameters s=0 and k=3.

Offset 1, canonical program `A120503.P17912308022700772714`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007844, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A120503 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A120503.P17912308022700772714.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007844, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A120503.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A120616.P17317531366549779970

`A009001(A051162(n))*A108044(n)`
-/

namespace A120616.P17317531366549779970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A051162 n).toNat * A108044 n

end

end A120616.P17317531366549779970

noncomputable section

/-- A120616: Generalized Riordan array (1/sqrt(1+4x^2),(1-sqrt(1+4x^2))/(2x)).

Offset 0, canonical program `A120616.P17317531366549779970`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120616 (n : ℕ) : ℤ :=
  A120616.P17317531366549779970.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120616.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120630.P3167750905745517866

`∑{d}[n+1, A007427(#)*A374366((n+1)/#)]`
-/

namespace A120630.P3167750905745517866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A374366 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A120630.P3167750905745517866

noncomputable section

/-- A120630: Dirichlet inverse of A002654.

Offset 1, canonical program `A120630.P3167750905745517866`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120630 (n : ℕ) : ℤ :=
  A120630.P3167750905745517866.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120630.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121026.P14177044980376287161

`filter[A011536(1+n), A079979(#)]`
-/

namespace A121026.P14177044980376287161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011536 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079979 (f1 j).toNat = 1) n)

end

end A121026.P14177044980376287161

noncomputable section

/-- A121026: Multiples of 6 containing a 6 in their decimal representation.

Offset 1, canonical program `A121026.P14177044980376287161`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2015 terms. -/
def A121026 (n : ℕ) : ℤ :=
  A121026.P14177044980376287161.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2015 terms. -/
def A121026.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121027.P4388213834179774910

`∩[A011537(n+1), 7*(n+1)]`
-/

namespace A121027.P4388213834179774910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011537 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A121027.P4388213834179774910

noncomputable section

/-- A121027: Multiples of 7 containing a 7 in their decimal representation.

Offset 1, canonical program `A121027.P4388213834179774910`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1429 terms. -/
def A121027 (n : ℕ) : ℤ :=
  (A121027.P4388213834179774910.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1429 terms. -/
def A121027.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121028.P12208025731756267144

`∩[8*n, A011538(n+1)]`
-/

namespace A121028.P12208025731756267144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121028.P12208025731756267144

noncomputable section

/-- A121028: Multiples of 8 containing an 8 in their decimal representation.

Offset 1, canonical program `A121028.P12208025731756267144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1514 terms. -/
def A121028 (n : ℕ) : ℤ :=
  (A121028.P12208025731756267144.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1514 terms. -/
def A121028.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121285.P9254393504255520703

`A131352(n)-2*A191386(n)-A100071(n)`
-/

namespace A121285.P9254393504255520703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131352 n - 2 * A191386 n - A100071 n

end

end A121285.P9254393504255520703

noncomputable section

/-- A121285: a(0) = 1; for n>0, a(n) = (n+3)*2^(n-2)-n*binomial(n-1, floor( (n-1)/2 ))-(n-1)*binomial(n-2,floor((n-2)/2)).

Offset 0, canonical program `A121285.P9254393504255520703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. -/
def A121285 (n : ℕ) : ℤ :=
  A121285.P9254393504255520703.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. -/
def A121285.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121559.P2620035417922548176

`A175077(n+2)-1`
-/

namespace A121559.P2620035417922548176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175077 (n + 2) - 1

end

end A121559.P2620035417922548176

noncomputable section

/-- A121559: Final result (0 or 1) under iterations of {r mod (max prime p <= r)} starting at r = n.

Offset 1, canonical program `A121559.P2620035417922548176`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175077, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A121559 (n : ℕ) : ℤ :=
  A121559.P2620035417922548176.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175077, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A121559.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A121562.P6113712480552983325

`runs[A175078(A004526(2*(2+n)))]`
-/

namespace A121562.P6113712480552983325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175078 (A004526 (2 * (2 + n))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A121562.P6113712480552983325

noncomputable section

/-- A121562: Lengths of runs of identical terms in A121561.

Offset 1, canonical program `A121562.P6113712480552983325`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1572 terms. -/
def A121562 (n : ℕ) : ℤ :=
  (A121562.P6113712480552983325.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1572 terms. -/
def A121562.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121842.P4729088766007939738

`A013632(n^3)`
-/

namespace A121842.P4729088766007939738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (n ^ 3)

end

end A121842.P4729088766007939738

noncomputable section

/-- A121842: Difference between n^3 and next prime.

Offset 0, canonical program `A121842.P4729088766007939738`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013632, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A121842 (n : ℕ) : ℤ :=
  A121842.P4729088766007939738.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013632, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A121842.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A121884.P5648599266500705925

`A175851(eq[2, A105700(n+1)])`
-/

namespace A121884.P5648599266500705925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A121884.P5648599266500705925

noncomputable section

/-- A121884: Excess of n-th semiprime over previous prime.

Offset 1, canonical program `A121884.P5648599266500705925`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A121884 (n : ℕ) : ℤ :=
  A121884.P5648599266500705925.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A121884.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122710.P1997872951658746602

`∩[A001248(n+1)+256, A256776(n+1)]`
-/

namespace A122710.P1997872951658746602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) + 256

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256776 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122710.P1997872951658746602

noncomputable section

/-- A122710: Primes of the form p^2 + q^8 where p and q are primes.

Offset 1, canonical program `A122710.P1997872951658746602`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1069 terms. -/
def A122710 (n : ℕ) : ℤ :=
  (A122710.P1997872951658746602.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1069 terms. -/
def A122710.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122919.P16004870726118325551

`A039598(n)-A128899(n+1)`
-/

namespace A122919.P16004870726118325551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039598 n - A128899 (n + 1)

end

end A122919.P16004870726118325551

noncomputable section

/-- A122919: Inverse of Riordan array (1/(1+x+x^2),x/(1+x)^2).

Offset 0, canonical program `A122919.P16004870726118325551`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122919 (n : ℕ) : ℤ :=
  A122919.P16004870726118325551.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122919.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123071.P2569468547130246585

`A135401(1+n)*A135401(n)`
-/

namespace A123071.P2569468547130246585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135401 (1 + n) * A135401 n

end

end A123071.P2569468547130246585

noncomputable section

/-- A123071: Bishops on a 2n+1 X 2n+1 board (see Robinson paper for details).

Offset 0, canonical program `A123071.P2569468547130246585`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A123071 (n : ℕ) : ℤ :=
  A123071.P2569468547130246585.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A123071.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123073.P6150319643950598268

`A200221(Δ[A110209(n)])`
-/

namespace A123073.P6150319643950598268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200221 (f1 (n + 1) - f1 n).toNat

end

end A123073.P6150319643950598268

noncomputable section

/-- A123073: Number of ordered triples of primes (p,q,r) such that pqr = n-th 3-almost prime A014612(n).

Offset 1, canonical program `A123073.P6150319643950598268`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A123073 (n : ℕ) : ℤ :=
  A123073.P6150319643950598268.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A123073.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123327.P12449877284529674263

`A000203(n+1)+A004125(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A123327.P12449877284529674263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + A004125 (n + 1)

end

end A123327.P12449877284529674263

noncomputable section

/-- A123327: a(n) = A000203(n) + A004125(n).

Offset 1, canonical program `A123327.P12449877284529674263`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004125, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A123327 (n : ℕ) : ℤ :=
  A123327.P12449877284529674263.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004125, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A123327.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A123740.P2323991482366726808

`1-A005713(n)`
-/

namespace A123740.P2323991482366726808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A005713 n

end

end A123740.P2323991482366726808

noncomputable section

/-- A123740: Characteristic sequence for Wythoff AB-numbers A003623.

Offset 1, canonical program `A123740.P2323991482366726808`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123740 (n : ℕ) : ℤ :=
  A123740.P2323991482366726808.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123740.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124029.P7271807952739011343

`Δ[A010751(n)]*A159764(n)`
-/

namespace A124029.P7271807952739011343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010751 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A159764 n

end

end A124029.P7271807952739011343

noncomputable section

/-- A124029: Triangle T(n,k) with the coefficient [x^k] of the characteristic polynomial of the following n X n triangular matrix: 4 on the main diagonal, -1 of the two adjacent subdiagonals, 0 otherwise.

Offset 0, canonical program `A124029.P7271807952739011343`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A124029 (n : ℕ) : ℤ :=
  A124029.P7271807952739011343.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A124029.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124428.P17393456233104666330

`A152198(comp[(1+n)²])*A152198(n)`
-/

namespace A124428.P17393456233104666330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (1 + n) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152198 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) * A152198 n

end

end A124428.P17393456233104666330

noncomputable section

/-- A124428: Triangle, read by rows: T(n,k) = binomial(floor(n/2),k)*binomial(floor((n+1)/2),k).

Offset 0, canonical program `A124428.P17393456233104666330`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9901 terms. -/
def A124428 (n : ℕ) : ℤ :=
  A124428.P17393456233104666330.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9901 terms. -/
def A124428.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124736.P895631553598970285

`A124737(n)+1`
-/

namespace A124736.P895631553598970285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124737 n + 1

end

end A124736.P895631553598970285

noncomputable section

/-- A124736: Table where row n has k C(n,k-1) times.

Offset 0, canonical program `A124736.P895631553598970285`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A124737, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A124736 (n : ℕ) : ℤ :=
  A124736.P895631553598970285.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A124737, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A124736.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A125047.P17736773129357693532

`A343180(eq[A014707(n), A038189(n)])`
-/

namespace A125047.P17736773129357693532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343180 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A125047.P17736773129357693532

noncomputable section

/-- A125047: Infinite word generated by mapping 1->12, 2->13, 3->43, 4->42 starting at 1.

Offset 1, canonical program `A125047.P17736773129357693532`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A125047 (n : ℕ) : ℤ :=
  A125047.P17736773129357693532.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A125047.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125115.P9586527931005899637

`A005101(n+2)-A005101(n+1)`
-/

namespace A125115.P9586527931005899637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 2) - A005101 (n + 1)

end

end A125115.P9586527931005899637

noncomputable section

/-- A125115: Differences between consecutive abundant numbers.

Offset 1, canonical program `A125115.P9586527931005899637`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A125115 (n : ℕ) : ℤ :=
  A125115.P9586527931005899637.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A125115.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A125238.P17761678390908912446

`A005100(n+2)-A005100(n+1)`
-/

namespace A125238.P17761678390908912446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 2) - A005100 (n + 1)

end

end A125238.P17761678390908912446

noncomputable section

/-- A125238: Differences between consecutive deficient numbers.

Offset 1, canonical program `A125238.P17761678390908912446`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005100, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A125238 (n : ℕ) : ℤ :=
  A125238.P17761678390908912446.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005100, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A125238.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A126073.P6431351007355356300

`∑[(n+1)*A176702((n+1)/A106616(n+1)+1)]`
-/

namespace A126073.P6431351007355356300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A176702 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A106616 (n + 1) : ℚ) + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126073.P6431351007355356300

noncomputable section

/-- A126073: Sum of numbers <= n which are multiples of 3 or 5 but not 15.

Offset 1, canonical program `A126073.P6431351007355356300`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126073 (n : ℕ) : ℤ :=
  A126073.P6431351007355356300.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126073.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126093.P12340802897489155513

`A128899(n)+T(n-1,k+1)` with `a(0)=1`
-/

namespace A126093.P12340802897489155513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A128899 n + SequenceMachineLib.triUpRight a n

end

end A126093.P12340802897489155513

noncomputable section

/-- A126093: Inverse binomial matrix applied to A110877.

Offset 0, canonical program `A126093.P12340802897489155513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126093 (n : ℕ) : ℤ :=
  A126093.P12340802897489155513.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126093.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126350.P4758540228161552645

`A137597(A038722(n+1))+2%A008836(n+1)`
-/

namespace A126350.P4758540228161552645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137597 (A038722 (n + 1)).toNat + Int.tmod 2 (A008836 (n + 1))

end

end A126350.P4758540228161552645

noncomputable section

/-- A126350: Triangle read by rows: matrix product of the binomial coefficients with the Stirling numbers of the second kind.

Offset 1, canonical program `A126350.P4758540228161552645`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3570 terms. -/
def A126350 (n : ℕ) : ℤ :=
  A126350.P4758540228161552645.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3570 terms. -/
def A126350.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127458.P1588143884690926353

`lt[n+1, A013632(n+1)^3]+1`
-/

namespace A127458.P1588143884690926353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (n + 1) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A127458.P1588143884690926353

noncomputable section

/-- A127458: Numbers k such that there are no primes between k and k + k^(1/3).

Offset 1, canonical program `A127458.P1588143884690926353`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 848 terms. -/
def A127458 (n : ℕ) : ℤ :=
  (A127458.P1588143884690926353.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 848 terms. -/
def A127458.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128053.P4874709391304098829

`A128056(n)/A128055(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A128053.P4874709391304098829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128056 n : ℚ) / (A128055 n : ℚ)

end

end A128053.P4874709391304098829

noncomputable section

/-- A128053: a(n)=A128056(n)/A128055(n).

Offset 0, canonical program `A128053.P4874709391304098829`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A128056, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A128053 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A128053.P4874709391304098829.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A128056, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A128053.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A128099.P4870284722196018582

`A000079(A055087(n))*A011973(n)`
-/

namespace A128099.P4870284722196018582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A055087 n).toNat * A011973 n

end

end A128099.P4870284722196018582

noncomputable section

/-- A128099: Triangle read by rows: T(n,k) is the number of ways to tile a 3 X n rectangle with k pieces of 2 X 2 tiles and 3n-4k pieces of 1 X 1 tiles (0 <= k <= floor(n/2)).

Offset 0, canonical program `A128099.P4870284722196018582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128099 (n : ℕ) : ℤ :=
  A128099.P4870284722196018582.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128099.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128714.P13217542877390641147

`Δ[A033321(abs(1-n))]`
-/

namespace A128714.P13217542877390641147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033321 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A128714.P13217542877390641147

noncomputable section

/-- A128714: Number of skew Dyck paths of semilength n ending with a left step.

Offset 0, canonical program `A128714.P13217542877390641147`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. -/
def A128714 (n : ℕ) : ℤ :=
  A128714.P13217542877390641147.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. -/
def A128714.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128748.P7166467053256492629

`Δ[A242586(n)-∑[A033321(n)]]`
-/

namespace A128748.P7166467053256492629
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033321 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242586 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A128748.P7166467053256492629

noncomputable section

/-- A128748: Number of peaks at height >1 in all skew Dyck paths of semilength n.

Offset 1, canonical program `A128748.P7166467053256492629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A128748 (n : ℕ) : ℤ :=
  A128748.P7166467053256492629.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A128748.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129147.P14959476626845894139

`∑{#}[n, (-1)^(n-#)*C(n, #)*A064641(#)]`
-/

namespace A129147.P14959476626845894139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A064641 k : ℚ)

end

end A129147.P14959476626845894139

noncomputable section

/-- A129147: Expansion of c(x(1+2x)), c(x) the g.f. of A000108.

Offset 0, canonical program `A129147.P14959476626845894139`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A129147 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A129147.P14959476626845894139.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A129147.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129148.P12776063486235120176

`abs(Δ[A166078(n)])`
-/

namespace A129148.P12776063486235120176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166078 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A129148.P12776063486235120176

noncomputable section

/-- A129148: Expansion of (1-x-sqrt(1-6*x-7*x^2))/(2*(1+2*x)).

Offset 1, canonical program `A129148.P12776063486235120176`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A129148 (n : ℕ) : ℤ :=
  A129148.P12776063486235120176.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A129148.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129167.P2551358773714472388

`∑[A033321(n)]-1`
-/

namespace A129167.P2551358773714472388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A129167.P2551358773714472388

noncomputable section

/-- A129167: Number of base pyramids in all skew Dyck paths of semilength n.

Offset 0, canonical program `A129167.P2551358773714472388`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. -/
def A129167 (n : ℕ) : ℤ :=
  A129167.P2551358773714472388.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. -/
def A129167.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129690.P14713627052820705592

`A007318(n+1)+A135230(n)-A103451(n)`
-/

namespace A129690.P14713627052820705592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n + 1) + (A135230 n - A103451 n)

end

end A129690.P14713627052820705592

noncomputable section

/-- A129690: A129688 * A007318.

Offset 1, canonical program `A129690.P14713627052820705592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129690 (n : ℕ) : ℤ :=
  A129690.P14713627052820705592.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129690.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129713.P11436903838473325982

`A007298(n+4)-A007298(n+3)`
-/

namespace A129713.P11436903838473325982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007298 (n + 4) - A007298 (n + 3)

end

end A129713.P11436903838473325982

noncomputable section

/-- A129713: Triangle read by rows: T(n,k) is the number of Fibonacci binary words of length n and starting with exactly k 1's (0<=k<=n). A Fibonacci binary word is a binary word having no 00 subword.

Offset 0, canonical program `A129713.P11436903838473325982`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007298, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129713 (n : ℕ) : ℤ :=
  A129713.P11436903838473325982.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007298, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129713.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A130047.P13624895427520759219

`A034868(n)%2`
-/

namespace A130047.P13624895427520759219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034868 n) 2

end

end A130047.P13624895427520759219

noncomputable section

/-- A130047: Left half of Pascal's triangle (A034868) modulo 2.

Offset 0, canonical program `A130047.P13624895427520759219`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130047 (n : ℕ) : ℤ :=
  A130047.P13624895427520759219.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130047.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130235.P2048728621119098997

`(n+1)*A130233(n)-A000045(A130233(n)+2)+1`
-/

namespace A130235.P2048728621119098997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A130233 n - A000045 (A130233 n + 2).toNat + 1

end

end A130235.P2048728621119098997

noncomputable section

/-- A130235: Partial sums of the 'lower' Fibonacci Inverse A130233.

Offset 0, canonical program `A130235.P2048728621119098997`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130233, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130235 (n : ℕ) : ℤ :=
  A130235.P2048728621119098997.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130233, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130235.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A130238.P11176055656399190720

`(n*(n+1)*A130233(n)-(A000045(A130233(n))-1)*(A000045(A130233(n)+1)-1))/2`
-/

namespace A130238.P11176055656399190720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * (n + 1) : ℤ) * A130233 n - (A000045 (A130233 n).toNat - 1) * (A000045 (A130233 n + 1).toNat - 1) : ℚ) / 2

end

end A130238.P11176055656399190720

noncomputable section

/-- A130238: Partial sums of A130237.

Offset 0, canonical program `A130238.P11176055656399190720`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130233, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130238 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A130238.P11176055656399190720.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130233, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130238.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A130239.P4605926808634395640

`A130233(floor(sqrt(n)))`
-/

namespace A130239.P4605926808634395640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130233 (Nat.sqrt n)

end

end A130239.P4605926808634395640

noncomputable section

/-- A130239: Maximal index k of the square of a Fibonacci number such that Fib(k)^2 <= n (the 'lower' squared Fibonacci Inverse).

Offset 0, canonical program `A130239.P4605926808634395640`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130233, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130239 (n : ℕ) : ℤ :=
  A130239.P4605926808634395640.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130233, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130239.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A130256.P8888391435086218073

`A130260(A005379(n))+A057427(A005379(n))`
-/

namespace A130256.P8888391435086218073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130260 (A005379 n).toNat + A057427 (A005379 n).toNat

end

end A130256.P8888391435086218073

noncomputable section

/-- A130256: Minimal index k of an odd Fibonacci number A001519 such that A001519(k) = Fibonacci(2*k-1) >= n (the 'upper' odd Fibonacci Inverse).

Offset 0, canonical program `A130256.P8888391435086218073`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130256 (n : ℕ) : ℤ :=
  A130256.P8888391435086218073.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130300.P17282070162645378256

`round(A131033(n+1)/2*A055248(n))`
-/

namespace A130300.P17282070162645378256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A131033 (n + 1) : ℚ) / 2 * (A055248 n : ℚ))

end

end A130300.P17282070162645378256

noncomputable section

/-- A130300: A007318 * A130296.

Offset 1, canonical program `A130300.P17282070162645378256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130300 (n : ℕ) : ℤ :=
  A130300.P17282070162645378256.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130300.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130312.P4153789337100935269

`A000045(A072649(n+1))`
-/

namespace A130312.P4153789337100935269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A072649 (n + 1)).toNat

end

end A130312.P4153789337100935269

noncomputable section

/-- A130312: Each Fibonacci number F(n) appears F(n) times.

Offset 1, canonical program `A130312.P4153789337100935269`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072649, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130312 (n : ℕ) : ℤ :=
  A130312.P4153789337100935269.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072649, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130312.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A130477.P15688843570063760663

`and(-1, A092582(A038722(n+1)))`
-/

namespace A130477.P15688843570063760663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A092582 (A038722 (n + 1)).toNat)

end

end A130477.P15688843570063760663

noncomputable section

/-- A130477: T(n,k) is the number of permutations of [n] with maximum descent k, T(n,k) for n >= 0 and 0 <= k <= n, triangle read by rows.

Offset 0, canonical program `A130477.P15688843570063760663`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A130477 (n : ℕ) : ℤ :=
  A130477.P15688843570063760663.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A130477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130664.P6646626940021993658

`A084555(n)+1`
-/

namespace A130664.P6646626940021993658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084555 n + 1

end

end A130664.P6646626940021993658

noncomputable section

/-- A130664: a(1)=1. a(n) = a(n-1) + (number of terms from among a(1) through a(n-1) which are factorials).

Offset 1, canonical program `A130664.P6646626940021993658`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A084555, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130664 (n : ℕ) : ℤ :=
  A130664.P6646626940021993658.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A084555, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130664.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A130753.P6587758951476041366

`2*(A275437(n)+A240025(n))`
-/

namespace A130753.P6587758951476041366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A275437 n + A240025 n)

end

end A130753.P6587758951476041366

noncomputable section

/-- A130753: A folded-back triangular sequence based on symmetry of CnH2*n+2 straight chain alkanes and the number of hydrogen atoms of a given symmetry type: Besides methane at 4 there are only three symmetry types: two CH3's->6: a single CH2->2, two CH2's->4.

Offset 1, canonical program `A130753.P6587758951476041366`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A130753 (n : ℕ) : ℤ :=
  A130753.P6587758951476041366.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A130753.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130853.P8707177424060044516

`Δ[n-A072649(a(n-1)+1)]` with `a(0)=0`
-/

namespace A130853.P8707177424060044516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (n : ℤ) - A072649 (f1 (n - 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A130853.P8707177424060044516

noncomputable section

/-- A130853: Runs of 1's of lengths 1, Fibonacci numbers F(1), F(2), F(3), ... (A000045) separated by 0's.

Offset 1, canonical program `A130853.P8707177424060044516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130853 (n : ℕ) : ℤ :=
  A130853.P8707177424060044516.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130853.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131034.P11408051281960244654

`A004271(A131035(n))`
-/

namespace A131034.P11408051281960244654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 (A131035 n).toNat

end

end A131034.P11408051281960244654

noncomputable section

/-- A131034: Triangle read by rows: A129686 * A051340 as infinite lower triangular matrices.

Offset 0, canonical program `A131034.P11408051281960244654`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131034 (n : ℕ) : ℤ :=
  A131034.P11408051281960244654.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131034.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131219.P16671854604704535896

`A166280(n)*A253084(n)`
-/

namespace A131219.P16671854604704535896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166280 n * A253084 n

end

end A131219.P16671854604704535896

noncomputable section

/-- A131219: Triangle read by rows: T(n, k) = A047999(n, k)*A131218(n-k, k).

Offset 0, canonical program `A131219.P16671854604704535896`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A131219 (n : ℕ) : ℤ :=
  A131219.P16671854604704535896.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A131219.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131323.P11558536358663034912

`2*A079523(n+1)+1`
-/

namespace A131323.P11558536358663034912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A079523 (n + 1) + 1

end

end A131323.P11558536358663034912

noncomputable section

/-- A131323: Odd numbers whose binary expansion ends in an even number of 1's.

Offset 1, canonical program `A131323.P11558536358663034912`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079523, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A131323 (n : ℕ) : ℤ :=
  A131323.P11558536358663034912.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079523, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A131323.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A131853.P6901481179883769974

`∩[A378624(n+1), A008587(n)]`
-/

namespace A131853.P6901481179883769974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131853.P6901481179883769974

noncomputable section

/-- A131853: Numbers m such that z(m)=(0,0) with z as defined in A131851.

Offset 1, canonical program `A131853.P6901481179883769974`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3750 terms. -/
def A131853 (n : ℕ) : ℤ :=
  (A131853.P6901481179883769974.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3750 terms. -/
def A131853.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131856.P1766368326207610902

`∩[A131857(n+1), A016873(n)]`
-/

namespace A131856.P1766368326207610902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131857 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131856.P1766368326207610902

noncomputable section

/-- A131856: Numbers m such that z(m)=(0,1) with z as defined in A131851.

Offset 1, canonical program `A131856.P1766368326207610902`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2748 terms. -/
def A131856 (n : ℕ) : ℤ :=
  (A131856.P1766368326207610902.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2748 terms. -/
def A131856.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131894.P11952724371346339213

`A279891(n)+A158860(n+1)`
-/

namespace A131894.P11952724371346339213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279891 n + A158860 (n + 1)

end

end A131894.P11952724371346339213

noncomputable section

/-- A131894: A131843 * A000012.

Offset 0, canonical program `A131894.P11952724371346339213`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131894 (n : ℕ) : ℤ :=
  A131894.P11952724371346339213.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131894.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132014.P8642909977413927530

`A094441(n)*A185018(n)`
-/

namespace A132014.P8642909977413927530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094441 n * A185018 n

end

end A132014.P8642909977413927530

noncomputable section

/-- A132014: T(n,j) for double application of an iterated mixed order Laguerre transform: Coefficients of Laguerre polynomial (-1)^n*n!*L(n,2-n,x).

Offset 0, canonical program `A132014.P8642909977413927530`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132014 (n : ℕ) : ℤ :=
  A132014.P8642909977413927530.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132014.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132143.P10521542141353229339

`∪[A038872(n+1), A045398(n+1)]`
-/

namespace A132143.P10521542141353229339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A132143.P10521542141353229339

noncomputable section

/-- A132143: Prime numbers P such that (P^k-2) is not divisible by 35(=A119691(1)) for any value of k.

Offset 1, canonical program `A132143.P10521542141353229339`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132143 (n : ℕ) : ℤ :=
  (A132143.P10521542141353229339.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132143.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132665.P14542286321658660860

`A000045(A130233(n+2)+2)-(n+1)-3`
-/

namespace A132665.P14542286321658660860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A130233 (n + 2) + 2).toNat - (n + 1 : ℤ) - 3

end

end A132665.P14542286321658660860

noncomputable section

/-- A132665: a(1)=1, a(2)=3, a(n) = a(n-1) + n if the minimal positive integer not yet in the sequence is greater than a(n-1), else a(n) = a(n-1)-1.

Offset 1, canonical program `A132665.P14542286321658660860`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130233, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A132665 (n : ℕ) : ℤ :=
  A132665.P14542286321658660860.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130233, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A132665.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A132814.P17727186705927492062

`A111505(n)*A205456(n+1)`
-/

namespace A132814.P17727186705927492062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111505 n * A205456 (n + 1)

end

end A132814.P17727186705927492062

noncomputable section

/-- A132814: A007318^(-1) * A132813.

Offset 0, canonical program `A132814.P17727186705927492062`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132814 (n : ℕ) : ℤ :=
  A132814.P17727186705927492062.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132814.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132885.P5107990570951772901

`A002426(A082375(n))*A011973(n)`
-/

namespace A132885.P5107990570951772901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 (A082375 n).toNat * A011973 n

end

end A132885.P5107990570951772901

noncomputable section

/-- A132885: Triangle read by rows: T(n,k) is the number of paths in the right half-plane from (0,0) to (n,0), consisting of steps U=(1,1), D=(1,-1), h=(1,0) and H=(2,0), having k H=(2,0) steps (0 <= k <= floor(n/2)).

Offset 0, canonical program `A132885.P5107990570951772901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2550 terms. -/
def A132885 (n : ℕ) : ℤ :=
  A132885.P5107990570951772901.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2550 terms. -/
def A132885.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133579.P16500229085264912069

`A000244(A253092(n))`
-/

namespace A133579.P16500229085264912069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A253092 n).toNat

end

end A133579.P16500229085264912069

noncomputable section

/-- A133579: a(0)=a(1)=1; for n > 1, a(n) = 3*a(n-1) if a(n-1) and n are coprime, otherwise a(n) = a(n-1)/gcd(a(n-1), n).

Offset 0, canonical program `A133579.P16500229085264912069`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A133579 (n : ℕ) : ℤ :=
  A133579.P16500229085264912069.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A133579.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133981.P17902424601927328128

`A108872(1+n)-A154990(n+1)`
-/

namespace A133981.P17902424601927328128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108872 (1 + n) - A154990 (n + 1)

end

end A133981.P17902424601927328128

noncomputable section

/-- A133981: Triangle read by rows: A000012 * A127701 + A127701 * A000012 - A000012 as infinite lower triangular matrices.

Offset 1, canonical program `A133981.P17902424601927328128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133981 (n : ℕ) : ℤ :=
  A133981.P17902424601927328128.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133981.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134340.P8323735923062830065

`A214262(6*n+5)/24`
-/

namespace A134340.P8323735923062830065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214262 (6 * n + 5) : ℚ) / 24

end

end A134340.P8323735923062830065

noncomputable section

/-- A134340: Expansion of psi(x)^3 * f(-x^3)^3 / chi(-x)^2 in powers of x where psi(), chi(), f() are Ramanujan theta functions.

Offset 0, canonical program `A134340.P8323735923062830065`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1666 terms. -/
def A134340 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A134340.P8323735923062830065.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1666 terms. -/
def A134340.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134505.P6935622930957667742

`A107230(n)/gcd(A107230(n), A108044(n))`
-/

namespace A134505.P6935622930957667742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107230 n : ℚ) / (Int.gcd (A107230 n) (A108044 n) : ℚ)

end

end A134505.P6935622930957667742

noncomputable section

/-- A134505: Replace 0's with 1's in triangle A049310, and take absolute values.

Offset 1, canonical program `A134505.P6935622930957667742`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134505 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A134505.P6935622930957667742.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134505.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135228.P7397640457277303691

`or(A000975(A158821(n)), A059260(n))`
-/

namespace A135228.P7397640457277303691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000975 (A158821 n).toNat) (A059260 n)

end

end A135228.P7397640457277303691

noncomputable section

/-- A135228: Triangle A000012(signed) * A007318 * A103451, read by rows.

Offset 0, canonical program `A135228.P7397640457277303691`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135228 (n : ℕ) : ℤ :=
  A135228.P7397640457277303691.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135228.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135323.P6195842534897767785

`(n+1)*A008480(n+1)`
-/

namespace A135323.P6195842534897767785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008480 (n + 1)

end

end A135323.P6195842534897767785

noncomputable section

/-- A135323: a(1)=1, a(n) = Sum_{p=prime, p|n} a(n/p)*p.

Offset 1, canonical program `A135323.P6195842534897767785`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008480, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135323 (n : ℕ) : ℤ :=
  A135323.P6195842534897767785.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008480, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135323.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A135508.P14391223300331227114

`A370634(2+n)-2`
-/

namespace A135508.P14391223300331227114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370634 (2 + n) - 2

end

end A135508.P14391223300331227114

noncomputable section

/-- A135508: a(n) = x(n+1)/x(n) - 2 where x(1)=1 and x(n) = 2*x(n-1) + lcm(x(n-1),n).

Offset 1, canonical program `A135508.P14391223300331227114`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A135508 (n : ℕ) : ℤ :=
  A135508.P14391223300331227114.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A135508.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135529.P639261192653949235

`A135533(n+1)+1-2^(A000120(n+1)-1)`
-/

namespace A135529.P639261192653949235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135533 (n + 1) + 1 : ℚ) - (2 : ℚ) ^ (A000120 (n + 1) - 1 : ℤ)

end

end A135529.P639261192653949235

noncomputable section

/-- A135529: Guy Steele's sequence GS(4,5) (see A135416).

Offset 1, canonical program `A135529.P639261192653949235`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A135533, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135529 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A135529.P639261192653949235.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A135533, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135529.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A135657.P17440851590307991758

`A135659(comp[A139483(n+1)])`
-/

namespace A135657.P17440851590307991758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139483 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135659 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A135657.P17440851590307991758

noncomputable section

/-- A135657: Nonprimes of the form 24n+7.

Offset 1, canonical program `A135657.P17440851590307991758`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7341 terms. -/
def A135657 (n : ℕ) : ℤ :=
  A135657.P17440851590307991758.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7341 terms. -/
def A135657.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135863.P4138777077338403116

`∑{#}[n, A182122(#)*A182122(n-#)]`
-/

namespace A135863.P4138777077338403116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A182122 k * A182122 (n - k)

end

end A135863.P4138777077338403116

noncomputable section

/-- A135863: G.f. A(x) = 1 + 4*x*A(x)^(1/2); A(x) = 1 + 8*x^2 + 4*x*sqrt(1 + 4*x^2).

Offset 0, canonical program `A135863.P4138777077338403116`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A135863 (n : ℕ) : ℤ :=
  A135863.P4138777077338403116.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A135863.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135936.P16430048651682890957

`A135929(2*n-floor(sqrt(n)))`
-/

namespace A135936.P16430048651682890957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135929 (2 * n - Nat.sqrt n)

end

end A135936.P16430048651682890957

noncomputable section

/-- A135936: Irregular triangle read by rows: row n gives coefficients of Boubaker polynomial B_n(x) in order of decreasing exponents (another version).

Offset 0, canonical program `A135936.P16430048651682890957`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A135936 (n : ℕ) : ℤ :=
  A135936.P16430048651682890957.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A135936.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136056.P13657948032136743322

`ceil(A136066(1+n)/15)`
-/

namespace A136056.P13657948032136743322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A136066 (1 + n) : ℚ) / 15⌉

end

end A136056.P13657948032136743322

noncomputable section

/-- A136056: Daughter primes of order 7.

Offset 1, canonical program `A136056.P13657948032136743322`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136056 (n : ℕ) : ℤ :=
  A136056.P13657948032136743322.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136056.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136084.P3655251885475289472

`p?[A004396(A102700(n+1)-1)]`
-/

namespace A136084.P3655251885475289472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A102700 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136084.P3655251885475289472

noncomputable section

/-- A136084: Son primes of order 7.

Offset 1, canonical program `A136084.P3655251885475289472`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A136084 (n : ℕ) : ℤ :=
  A136084.P3655251885475289472.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A136084.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136125.P2982316925870976645

`gcd(Δ[A094310(n+1)], A136572(n))`
-/

namespace A136125.P2982316925870976645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094310 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A136572 n)

end

end A136125.P2982316925870976645

noncomputable section

/-- A136125: Triangle read by rows: T(n,k) is the number of permutations of {1,2,...,n} in which the size of the last cycle is k (the cycles are ordered by increasing smallest elements; 1 <= k <=n).

Offset 1, canonical program `A136125.P2982316925870976645`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2414 terms. -/
def A136125 (n : ℕ) : ℤ :=
  (A136125.P2982316925870976645.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2414 terms. -/
def A136125.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136333.P7255330385303398448

`eq[1, gcd(10, A007954(n))]`
-/

namespace A136333.P7255330385303398448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 10 (A007954 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A136333.P7255330385303398448

noncomputable section

/-- A136333: Numbers containing only digits coprime to 10 in their decimal representation.

Offset 1, canonical program `A136333.P7255330385303398448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A136333 (n : ℕ) : ℤ :=
  (A136333.P7255330385303398448.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A136333.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136399.P7416713261732785122

`∪[A277964(n+1), comp[A007089(n)]]`
-/

namespace A136399.P7416713261732785122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277964 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A136399.P7416713261732785122

noncomputable section

/-- A136399: Numbers having in their decimal representation at least one digit greater than 1.

Offset 1, canonical program `A136399.P7416713261732785122`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136399 (n : ℕ) : ℤ :=
  (A136399.P7416713261732785122.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136399.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136655.P6898673837673144474

`A140210(n+1)*A140211(n+1)`
-/

namespace A136655.P6898673837673144474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140210 (n + 1) * A140211 (n + 1)

end

end A136655.P6898673837673144474

noncomputable section

/-- A136655: Product of odd divisors of n.

Offset 1, canonical program `A136655.P6898673837673144474`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A140210, A140211, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A136655 (n : ℕ) : ℤ :=
  A136655.P6898673837673144474.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A140210, A140211, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A136655.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A136687.P466848025406381974

`∑[char[A262037(n)]]`
-/

namespace A136687.P466848025406381974
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262037 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136687.P466848025406381974

noncomputable section

/-- A136687: Number of palindromes in the range [0,n] inclusive.

Offset 0, canonical program `A136687.P466848025406381974`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136687 (n : ℕ) : ℤ :=
  (A136687.P466848025406381974.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136687.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136688.P3993852175964647821

`A134513(n)*A156663(n)`
-/

namespace A136688.P3993852175964647821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134513 n * A156663 n

end

end A136688.P3993852175964647821

noncomputable section

/-- A136688: Triangle of polynomials F(x,n) = x*F(x,n-1) + 2*F(x,n-2).

Offset 1, canonical program `A136688.P3993852175964647821`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136688 (n : ℕ) : ℤ :=
  A136688.P3993852175964647821.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136688.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137686.P2137066375668895625

`A081399(n)-A137687(n)`
-/

namespace A137686.P2137066375668895625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081399 n - A137687 n

end

end A137686.P2137066375668895625

noncomputable section

/-- A137686: a(n) = Bigomega(Catalan(n)) - round( 3 n /(2 log(n+2))) (= A081399 - A137687).

Offset 0, canonical program `A137686.P2137066375668895625`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3001 terms. -/
def A137686 (n : ℕ) : ℤ :=
  A137686.P2137066375668895625.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3001 terms. -/
def A137686.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137709.P10048687972345600020

`2*A287775(n+1)-(n+1)`
-/

namespace A137709.P10048687972345600020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A287775 (n + 1) - (n + 1 : ℤ)

end

end A137709.P10048687972345600020

noncomputable section

/-- A137709: Secondary upper Wythoff sequence.

Offset 1, canonical program `A137709.P10048687972345600020`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137709 (n : ℕ) : ℤ :=
  A137709.P10048687972345600020.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137709.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137728.P12651502656535441901

`A056129(1+n)*A157928(n)`
-/

namespace A137728.P12651502656535441901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056129 (1 + n) * A157928 n

end

end A137728.P12651502656535441901

noncomputable section

/-- A137728: Second digit from the end of product of first n primes.

Offset 1, canonical program `A137728.P12651502656535441901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5787 terms. -/
def A137728 (n : ℕ) : ℤ :=
  A137728.P12651502656535441901.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5787 terms. -/
def A137728.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137734.P16570986701740849317

`A259361(A143051(n))+1`
-/

namespace A137734.P16570986701740849317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A143051 n).toNat + 1

end

end A137734.P16570986701740849317

noncomputable section

/-- A137734: a(0)=1. a(n) = ceiling(n/b(n)), where b(n) is the largest value among (a(0),a(1),...,a(n-1)).

Offset 0, canonical program `A137734.P16570986701740849317`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137734 (n : ℕ) : ℤ :=
  A137734.P16570986701740849317.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137734.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137877.P18443067678914737995

`∩[A111094(n+1), A138918(n+1)]`
-/

namespace A137877.P18443067678914737995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137877.P18443067678914737995

noncomputable section

/-- A137877: Numbers k such that 18*k - 1 and 18*k + 1 are twin primes.

Offset 1, canonical program `A137877.P18443067678914737995`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2134 terms. -/
def A137877 (n : ℕ) : ℤ :=
  (A137877.P18443067678914737995.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2134 terms. -/
def A137877.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138070.P9399023133838687128

`A138114(A106255(n+1))`
-/

namespace A138070.P9399023133838687128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138114 (A106255 (n + 1)).toNat

end

end A138070.P9399023133838687128

noncomputable section

/-- A138070: Triangle read by rows: row n lists the successive digits of A135697(n), the palindromic number formed from the reflected decimal expansion of Pi.

Offset 1, canonical program `A138070.P9399023133838687128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138070 (n : ℕ) : ℤ :=
  A138070.P9399023133838687128.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138070.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138297.P9504987651790712023

`A030241(A048718(n))`
-/

namespace A138297.P9504987651790712023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030241 (A048718 n).toNat

end

end A138297.P9504987651790712023

noncomputable section

/-- A138297: Rows of triangle A138060 converge to this sequence.

Offset 1, canonical program `A138297.P9504987651790712023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A138297 (n : ℕ) : ℤ :=
  A138297.P9504987651790712023.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A138297.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138302.P16562127225600739451

`eq[1, A355823(n+1)]+1`
-/

namespace A138302.P16562127225600739451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355823 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A138302.P16562127225600739451

noncomputable section

/-- A138302: Exponentially 2^n-numbers: 1 together with positive integers k such that all exponents in prime factorization of k are powers of 2.

Offset 1, canonical program `A138302.P16562127225600739451`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138302 (n : ℕ) : ℤ :=
  (A138302.P16562127225600739451.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138302.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138415.P3566733532317934836

`∑[A033321(abs(1-n))]-1`
-/

namespace A138415.P3566733532317934836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033321 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A138415.P3566733532317934836

noncomputable section

/-- A138415: Binomial transform of A000957.

Offset 0, canonical program `A138415.P3566733532317934836`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. -/
def A138415 (n : ℕ) : ℤ :=
  A138415.P3566733532317934836.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. -/
def A138415.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138606.P3334702889482449947

`A166012(A072649(n+1)-1)+2*(n+1-A000045(1+A072649(n+1)))`
-/

namespace A138606.P3334702889482449947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166012 (A072649 (n + 1) - 1).toNat + 2 * ((n + 1 : ℤ) - A000045 (1 + A072649 (n + 1)).toNat)

end

end A138606.P3334702889482449947

noncomputable section

/-- A138606: List first F(1) odd numbers, then first F(2) even numbers (starting from 2), then the next F(3) odd numbers, then the next F(4) even numbers, etc., where F(n) = A000045(n), the n-th Fibonacci number.

Offset 1, canonical program `A138606.P3334702889482449947`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072649, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138606 (n : ℕ) : ℤ :=
  A138606.P3334702889482449947.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072649, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138606.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138709.P8547315459181565559

`A072649(n+1)%2`
-/

namespace A138709.P8547315459181565559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072649 (n + 1)) 2

end

end A138709.P8547315459181565559

noncomputable section

/-- A138709: n-th run has length n-th positive Fibonacci numbers, with digits 0 and 1 only, starting with 1.

Offset 1, canonical program `A138709.P8547315459181565559`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A138709 (n : ℕ) : ℤ :=
  A138709.P8547315459181565559.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A138709.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139333.P6431755698224016243

`floor(A192232(n+1)+A112576(n)*ϕ)`
-/

namespace A139333.P6431755698224016243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A192232 (n + 1) : ℝ) + (A112576 n : ℝ) * Real.goldenRatio⌋

end

end A139333.P6431755698224016243

noncomputable section

/-- A139333: Floor of entry (2,1) of [0,1; 1,phi]^n.

Offset 1, canonical program `A139333.P6431755698224016243`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A192232, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139333 (n : ℕ) : ℤ :=
  A139333.P6431755698224016243.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A192232, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139333.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A139367.P12848330086499471846

`A102700(n+1)-A102342(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A139367.P12848330086499471846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102700 (n + 1) - A102342 (n + 1)

end

end A139367.P12848330086499471846

noncomputable section

/-- A139367: a(n) = A102700(n) - A102342(n).

Offset 1, canonical program `A139367.P12848330086499471846`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A102342, A102700, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A139367 (n : ℕ) : ℤ :=
  A139367.P12848330086499471846.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A102342, A102700, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A139367.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A139390.P2912127074114890688

`A034387(A000244(n))`
-/

namespace A139390.P2912127074114890688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (A000244 n).toNat

end

end A139390.P2912127074114890688

noncomputable section

/-- A139390: Sum of primes <= 3^n.

Offset 0, canonical program `A139390.P2912127074114890688`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034387, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139390 (n : ℕ) : ℤ :=
  A139390.P2912127074114890688.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034387, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139390.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A139645.P1524683957140260505

`∩[A007519(n+1), A274675(n+1)]`
-/

namespace A139645.P1524683957140260505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139645.P1524683957140260505

noncomputable section

/-- A139645: Primes of the form x^2 + 112*y^2.

Offset 1, canonical program `A139645.P1524683957140260505`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4975 terms. -/
def A139645 (n : ℕ) : ℤ :=
  (A139645.P1524683957140260505.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4975 terms. -/
def A139645.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139827.P12561689821490357478

`∩[A191060(n+1), A243183(n+1)]`
-/

namespace A139827.P12561689821490357478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139827.P12561689821490357478

noncomputable section

/-- A139827: Primes of the form 2x^2 + 2xy + 17y^2.

Offset 1, canonical program `A139827.P12561689821490357478`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2511 terms. -/
def A139827 (n : ℕ) : ℤ :=
  (A139827.P12561689821490357478.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2511 terms. -/
def A139827.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139887.P9386991919288318059

`∩[A106859(1+n), A141190(n+1)]`
-/

namespace A139887.P9386991919288318059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106859 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139887.P9386991919288318059

noncomputable section

/-- A139887: Primes of the form 2x^2+105y^2.

Offset 1, canonical program `A139887.P9386991919288318059`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2471 terms. -/
def A139887 (n : ℕ) : ℤ :=
  (A139887.P9386991919288318059.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2471 terms. -/
def A139887.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139915.P6958585210119532422

`∩[A033205(n+1), A141191(n+1)]`
-/

namespace A139915.P6958585210119532422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139915.P6958585210119532422

noncomputable section

/-- A139915: Primes of the form 5x^2+56y^2.

Offset 1, canonical program `A139915.P6958585210119532422`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2506 terms. -/
def A139915 (n : ℕ) : ℤ :=
  (A139915.P6958585210119532422.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2506 terms. -/
def A139915.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140098.P3927488538195493875

`A184821(n+1)-A158919(n+1)`
-/

namespace A140098.P3927488538195493875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184821 (n + 1) - A158919 (n + 1)

end

end A140098.P3927488538195493875

noncomputable section

/-- A140098: A Beatty sequence: a(n) = [n*(1+1/t)], where t = tribonacci constant (A058265); complement of A140099.

Offset 1, canonical program `A140098.P3927488538195493875`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140098 (n : ℕ) : ℤ :=
  A140098.P3927488538195493875.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140098.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140254.P10954065600151529999

`∑{d}[n+1, A007427(#)*A140255((n+1)/#)]`
-/

namespace A140254.P10954065600151529999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A140255 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A140254.P10954065600151529999

noncomputable section

/-- A140254: Mobius transform of A014963.

Offset 1, canonical program `A140254.P10954065600151529999`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140254 (n : ℕ) : ℤ :=
  A140254.P10954065600151529999.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140254.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140280.P15285720908636328681

`A007954(A007318(n))`
-/

namespace A140280.P15285720908636328681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A007318 n).toNat

end

end A140280.P15285720908636328681

noncomputable section

/-- A140280: Product of digits of values in Pascal's triangle, by rows.

Offset 0, canonical program `A140280.P15285720908636328681`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007954, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140280 (n : ℕ) : ℤ :=
  A140280.P15285720908636328681.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007954, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140280.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A140370.P1270510423395856757

`record[A171435(A306285(2*(1+n)))]`
-/

namespace A140370.P1270510423395856757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A306285 (2 * (1 + n))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140370.P1270510423395856757

noncomputable section

/-- A140370: Composites of the form 26k + 21.

Offset 1, canonical program `A140370.P1270510423395856757`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3056 terms. -/
def A140370 (n : ℕ) : ℤ :=
  A140370.P1270510423395856757.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3056 terms. -/
def A140370.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140376.P14382105918377167922

`record[A171435(A190991(2*n))]`
-/

namespace A140376.P14382105918377167922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A190991 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140376.P14382105918377167922

noncomputable section

/-- A140376: Nonprimes of the form 26n+1.

Offset 1, canonical program `A140376.P14382105918377167922`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3049 terms. -/
def A140376 (n : ℕ) : ℤ :=
  A140376.P14382105918377167922.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3049 terms. -/
def A140376.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140379.P7196169135484527645

`record[A171435(1+2*7*n)]`
-/

namespace A140379.P7196169135484527645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (1 + 2 * (7 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140379.P7196169135484527645

noncomputable section

/-- A140379: Nonprimes of the form 14k+1.

Offset 1, canonical program `A140379.P7196169135484527645`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5550 terms. -/
def A140379 (n : ℕ) : ℤ :=
  A140379.P7196169135484527645.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5550 terms. -/
def A140379.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140380.P9925212392103667500

`record[A171435(7*n+45)]`
-/

namespace A140380.P9925212392103667500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (7 * n + 45)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140380.P9925212392103667500

noncomputable section

/-- A140380: Composites of the form 14k + 3.

Offset 1, canonical program `A140380.P9925212392103667500`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5530 terms. -/
def A140380 (n : ℕ) : ℤ :=
  A140380.P9925212392103667500.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5530 terms. -/
def A140380.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140381.P691839873967529129

`record[A171435(A017005(1+2*n))]`
-/

namespace A140381.P691839873967529129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A017005 (1 + 2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140381.P691839873967529129

noncomputable section

/-- A140381: Composites of the form 14k + 9.

Offset 1, canonical program `A140381.P691839873967529129`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3844 terms. -/
def A140381 (n : ℕ) : ℤ :=
  A140381.P691839873967529129.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3844 terms. -/
def A140381.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140390.P7340953508459173366

`filter[7*n+1, A373977(#)]`
-/

namespace A140390.P7340953508459173366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373977 (f1 j) = 1) n)

end

end A140390.P7340953508459173366

noncomputable section

/-- A140390: Nonprimes of the form 21k+1.

Offset 1, canonical program `A140390.P7340953508459173366`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3975 terms. -/
def A140390 (n : ℕ) : ℤ :=
  (A140390.P7340953508459173366.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3975 terms. -/
def A140390.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140616.P17621141678928507057

`∩[A040117(n+1), A141191(n+1)]`
-/

namespace A140616.P17621141678928507057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140616.P17621141678928507057

noncomputable section

/-- A140616: Primes of the form 5x^2+4xy+68y^2.

Offset 1, canonical program `A140616.P17621141678928507057`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2496 terms. -/
def A140616 (n : ℕ) : ℤ :=
  (A140616.P17621141678928507057.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2496 terms. -/
def A140616.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140653.P6821184278077143935

`(C(2, n)-char[A193732(n+1)])²`
-/

namespace A140653.P6821184278077143935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193732 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose 2 n : ℤ) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)) ^ 2

end

end A140653.P6821184278077143935

noncomputable section

/-- A140653: A triangular sequence of cyclotomic polynomial doubling: For cyclotomic polynomial:c(x,n) p(x,n)=c(x,Prime[n])*c(x,2*Prime[n]).

Offset 1, canonical program `A140653.P6821184278077143935`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A140653 (n : ℕ) : ℤ :=
  A140653.P6821184278077143935.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A140653.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140874.P6691662635771918061

`A104712(n+2)-(A209518(n)+A028327(n))`
-/

namespace A140874.P6691662635771918061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104712 (n + 2) - (A209518 n + A028327 n)

end

end A140874.P6691662635771918061

noncomputable section

/-- A140874: Triangle T(n,k) = binomial(n,k+2)-2*binomial(n,k+1)-binomial(n,k) read by rows, 0<=k<=n-2, n>=2.

Offset 2, canonical program `A140874.P6691662635771918061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140874 (n : ℕ) : ℤ :=
  A140874.P6691662635771918061.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140874.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141657.P6051655849065492727

`p?[A307985(A072473(n+1))]`
-/

namespace A141657.P6051655849065492727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307985 (A072473 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141657.P6051655849065492727

noncomputable section

/-- A141657: a(n) = (prime(2*m)-prime(m))/6 where m is the n-th positive integer such that (prime(2*m)-prime(m))/6 is prime.

Offset 1, canonical program `A141657.P6051655849065492727`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A141657 (n : ℕ) : ℤ :=
  A141657.P6051655849065492727.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A141657.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141777.P6795889752722178215

`∩[A045355(n+1), A191060(n+1)]`
-/

namespace A141777.P6795889752722178215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141777.P6795889752722178215

noncomputable section

/-- A141777: Primes of the form -3*x^2 + 4*x*y + 6*y^2 (as well as of the form 7*x^2 + 12*x*y + 2*y^2).

Offset 1, canonical program `A141777.P6795889752722178215`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A141777 (n : ℕ) : ℤ :=
  (A141777.P6795889752722178215.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A141777.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142595.P15525952707844098224

`(T(n-1,k)+T(n-1,k-1))*A154325(n)` with `a(0)=1`
-/

namespace A142595.P15525952707844098224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n) * A154325 n

end

end A142595.P15525952707844098224

noncomputable section

/-- A142595: Triangle T(n,k) = 2*T(n-1, k-1) + 2*T(n-1, k), read by rows.

Offset 1, canonical program `A142595.P15525952707844098224`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A142595 (n : ℕ) : ℤ :=
  A142595.P15525952707844098224.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A142595.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143185.P1168285322455693736

`A007318(n)*A008619(A157654(n))`
-/

namespace A143185.P1168285322455693736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A008619 (A157654 n).toNat

end

end A143185.P1168285322455693736

noncomputable section

/-- A143185: Triangle read by rows: T(n, k) = (1 + abs(n-2*k))*binomial(n,k), with T(n, 0) = T(n, n) = 1.

Offset 0, canonical program `A143185.P1168285322455693736`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A143185 (n : ℕ) : ℤ :=
  A143185.P1168285322455693736.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A143185.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143331.P16828638926480326570

`A026465(2*n+1)`
-/

namespace A143331.P16828638926480326570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026465 (2 * n + 1)

end

end A143331.P16828638926480326570

noncomputable section

/-- A143331: Lengths of successive runs of 0's in the Thue-Morse sequence A010060.

Offset 1, canonical program `A143331.P16828638926480326570`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026465, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A143331 (n : ℕ) : ℤ :=
  A143331.P16828638926480326570.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026465, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A143331.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A143595.P4643358724247871193

`ceil(A143593(n+1)/2)`
-/

namespace A143595.P4643358724247871193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A143593 (n + 1) : ℚ) / 2⌉

end

end A143595.P4643358724247871193

noncomputable section

/-- A143595: Triangle read by rows, A000012 * (an infinite lower triangular matrix with 1's in the first column and the rest 2's); 1<=k<=n.

Offset 1, canonical program `A143595.P4643358724247871193`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143595 (n : ℕ) : ℤ :=
  A143595.P4643358724247871193.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143595.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144291.P10227368257690352592

`A000217(record[n*A323162(n+1)])`
-/

namespace A144291.P10227368257690352592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A323162 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A144291.P10227368257690352592

noncomputable section

/-- A144291: Triangular numbers n*(n-1)/2 with n and n -1 nonprime.

Offset 1, canonical program `A144291.P10227368257690352592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144291 (n : ℕ) : ℤ :=
  A144291.P10227368257690352592.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144291.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144757.P7952368593999860426

`A000108(A001222(n+2)-1)*A008480(n+2)`
-/

namespace A144757.P7952368593999860426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A001222 (n + 2) - 1).toNat * A008480 (n + 2)

end

end A144757.P7952368593999860426

noncomputable section

/-- A144757: Number of factor trees for n.

Offset 2, canonical program `A144757.P7952368593999860426`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008480, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A144757 (n : ℕ) : ℤ :=
  A144757.P7952368593999860426.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008480, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A144757.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A144795.P9662738190861548983

`A163617(A004742(n+2))`
-/

namespace A144795.P9662738190861548983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163617 (A004742 (n + 2)).toNat

end

end A144795.P9662738190861548983

noncomputable section

/-- A144795: A positive integer n is included if every 1 in binary n is next to at least one other 1.

Offset 1, canonical program `A144795.P9662738190861548983`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2439 terms. -/
def A144795 (n : ℕ) : ℤ :=
  A144795.P9662738190861548983.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2439 terms. -/
def A144795.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144976.P14905662630367446898

`filter[A336064(1+n), A087049(#)]`
-/

namespace A144976.P14905662630367446898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336064 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A144976.P14905662630367446898

noncomputable section

/-- A144976: Nonsquarefree numbers k such that k is divisible by the maximal exponent in the prime factorization of k.

Offset 1, canonical program `A144976.P14905662630367446898`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2838 terms. -/
def A144976 (n : ℕ) : ℤ :=
  A144976.P14905662630367446898.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2838 terms. -/
def A144976.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145016.P7226238084777437609

`p?[A263651(n+2)]`
-/

namespace A145016.P7226238084777437609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263651 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145016.P7226238084777437609

noncomputable section

/-- A145016: Primes p of the form 4k+1 for which p - floor(sqrt(p))^2 is a square.

Offset 1, canonical program `A145016.P7226238084777437609`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A145016 (n : ℕ) : ℤ :=
  A145016.P7226238084777437609.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A145016.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145312.P465322160822088351

`(1+n)*A145094(n+2)`
-/

namespace A145312.P465322160822088351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * A145094 (n + 2)

end

end A145312.P465322160822088351

noncomputable section

/-- A145312: Coefficients in expansion of E''_4(q), where E_4 is the Eisenstein series in A004009.

Offset 0, canonical program `A145312.P465322160822088351`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2077 terms. -/
def A145312 (n : ℕ) : ℤ :=
  A145312.P465322160822088351.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2077 terms. -/
def A145312.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145488.P501580674884008196

`(A145474(n+1)-13)/12`
-/

namespace A145488.P501580674884008196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145474 (n + 1) - 13 : ℚ) / 12

end

end A145488.P501580674884008196

noncomputable section

/-- A145488: Numbers k such that 6k+13 is prime and 12k+13 is also prime.

Offset 1, canonical program `A145488.P501580674884008196`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A145474, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A145488 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A145488.P501580674884008196.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A145474, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A145488.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A145677.P13856597997290183781

`A158821(C(row(n)+1, 2)+row(n)-col(n))`
-/

namespace A145677.P13856597997290183781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158821 ((Nat.choose (SequenceMachineLib.triRow n + 1) 2 : ℤ) + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))).toNat

end

end A145677.P13856597997290183781

noncomputable section

/-- A145677: Triangle T(n, k) read by rows: T(n, 0) = 1, T(n, n) = n, n>0, T(n,k) = 0, 0 < k < n-1.

Offset 0, canonical program `A145677.P13856597997290183781`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A158821, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A145677 (n : ℕ) : ℤ :=
  A145677.P13856597997290183781.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A158821, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A145677.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A147814.P6067598058715786826

`A292046(A008864(n+1))-p?[A005100(n+1)]`
-/

namespace A147814.P6067598058715786826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292046 (A008864 (n + 1)).toNat - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A147814.P6067598058715786826

noncomputable section

/-- A147814: a(n) is the number of bits in the Elias omega-coded value of prime(n).

Offset 1, canonical program `A147814.P6067598058715786826`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A147814 (n : ℕ) : ℤ :=
  A147814.P6067598058715786826.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A147814.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A147956.P1737531422126429600

`eq[1, A005092(n+1)]+1`
-/

namespace A147956.P1737531422126429600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005092 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A147956.P1737531422126429600

noncomputable section

/-- A147956: All positive integers that are not multiples of any Fibonacci numbers >= 2.

Offset 1, canonical program `A147956.P1737531422126429600`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4843 terms. -/
def A147956 (n : ℕ) : ℤ :=
  (A147956.P1737531422126429600.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4843 terms. -/
def A147956.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151665.P7749028135867019320

`A006046(A151669(n))`
-/

namespace A151665.P7749028135867019320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 (A151669 n).toNat

end

end A151665.P7749028135867019320

noncomputable section

/-- A151665: G.f.: Product_{k>=0} (1 + 3*x^(4^k)).

Offset 0, canonical program `A151665.P7749028135867019320`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151665 (n : ℕ) : ℤ :=
  A151665.P7749028135867019320.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151665.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153034.P227806529242985448

`A003714(A001690(n+1)-1)`
-/

namespace A153034.P227806529242985448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 (A001690 (n + 1) - 1).toNat

end

end A153034.P227806529242985448

noncomputable section

/-- A153034: Numbers with adjacent 0's and no adjacent 1's in binary expansion.

Offset 1, canonical program `A153034.P227806529242985448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9981 terms. -/
def A153034 (n : ℕ) : ℤ :=
  A153034.P227806529242985448.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9981 terms. -/
def A153034.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153082.P13194948767284800641

`A241571(1+n)+1`
-/

namespace A153082.P13194948767284800641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241571 (1 + n) + 1

end

end A153082.P13194948767284800641

noncomputable section

/-- A153082: Numbers k such that 2*k + 13 is not prime.

Offset 1, canonical program `A153082.P13194948767284800641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153082 (n : ℕ) : ℤ :=
  A153082.P13194948767284800641.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153082.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130298.P4056533622046080156

`A130302(n+1)+A003056(n)*A130296(n+1)`
-/

namespace A130298.P4056533622046080156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130302 (n + 1) + A003056 n * A130296 (n + 1)

end

end A130298.P4056533622046080156

noncomputable section

/-- A130298: A051340 * A130296.

Offset 1, canonical program `A130298.P4056533622046080156`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130298 (n : ℕ) : ℤ :=
  A130298.P4056533622046080156.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130298.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133869.P3744791445234372630

`floor(A133870(n+1)/32)`
-/

namespace A133869.P3744791445234372630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A133870 (n + 1) : ℚ) / 32⌋

end

end A133869.P3744791445234372630

noncomputable section

/-- A133869: Numbers k such that 32*k + 1 is prime.

Offset 1, canonical program `A133869.P3744791445234372630`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133869 (n : ℕ) : ℤ :=
  A133869.P3744791445234372630.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133869.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140012.P3091804146325170739

`∩[A139854(n+1), A140619(n+1)]`
-/

namespace A140012.P3091804146325170739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140012.P3091804146325170739

noncomputable section

/-- A140012: Primes of the form 40x^2+40xy+43y^2.

Offset 1, canonical program `A140012.P3091804146325170739`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5019 terms. -/
def A140012 (n : ℕ) : ℤ :=
  (A140012.P3091804146325170739.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5019 terms. -/
def A140012.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A147648.P4961228732914761023

`round(log2(A284389(val(3*n-(n-2), 2))))`
-/

namespace A147648.P4961228732914761023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A284389 (SequenceMachineLib.valuation ((3 * n : ℤ) - ((n : ℤ) - 2)).toNat 2) : ℝ))

end

end A147648.P4961228732914761023

noncomputable section

/-- A147648: Number of distinct even superperfect numbers dividing n.

Offset 1, canonical program `A147648.P4961228732914761023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A147648 (n : ℕ) : ℤ :=
  A147648.P4961228732914761023.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A147648.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153362.P16095394824988375316

`A153364(n+1)+A153363(n+1)`
-/

namespace A153362.P16095394824988375316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153364 (n + 1) + A153363 (n + 1)

end

end A153362.P16095394824988375316

noncomputable section

/-- A153362: Number of zig-zag paths from top to bottom of a rectangle of width 9 with n rows.

Offset 1, canonical program `A153362.P16095394824988375316`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 355 terms. -/
def A153362 (n : ℕ) : ℤ :=
  A153362.P16095394824988375316.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 355 terms. -/
def A153362.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117203.P1024184579012793752

`record[A007913(n+2+A007913(n+1))]`
-/

namespace A117203.P1024184579012793752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 ((n + 2 : ℤ) + A007913 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117203.P1024184579012793752

noncomputable section

/-- A117203: Odd squarefree positive integers k such that (k-1)/2 is also squarefree.

Offset 1, canonical program `A117203.P1024184579012793752`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117203 (n : ℕ) : ℤ :=
  A117203.P1024184579012793752.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117203.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117205.P13625184972565813265

`record[A007913(A007913(n+1)+n)]`
-/

namespace A117205.P13625184972565813265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A007913 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117205.P13625184972565813265

noncomputable section

/-- A117205: Odd squarefree positive integers k such that (k+1)/2 is also squarefree.

Offset 1, canonical program `A117205.P13625184972565813265`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117205 (n : ℕ) : ℤ :=
  A117205.P13625184972565813265.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117205.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120068.P9891665714429493613

`A000720(A049097(n+1))`
-/

namespace A120068.P9891665714429493613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A049097 (n + 1)).toNat

end

end A120068.P9891665714429493613

noncomputable section

/-- A120068: Numbers n such that n-th prime + 1 is squarefree.

Offset 1, canonical program `A120068.P9891665714429493613`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A120068 (n : ℕ) : ℤ :=
  A120068.P9891665714429493613.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A120068.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A128580.P10005316687977448542

`A115660(2*n+1)`
-/

namespace A128580.P10005316687977448542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115660 (2 * n + 1)

end

end A128580.P10005316687977448542

noncomputable section

/-- A128580: Expansion of phi(x^3) * psi(x^4) - x * phi(x) * psi(x^12) in powers of x where phi(), psi() are Ramanujan theta functions.

Offset 0, canonical program `A128580.P10005316687977448542`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A115660, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A128580 (n : ℕ) : ℤ :=
  A128580.P10005316687977448542.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A115660, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A128580.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A128581.P949221518114225001

`(-1)^n*A115660(n+1)`
-/

namespace A128581.P949221518114225001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A115660 (n + 1)

end

end A128581.P949221518114225001

noncomputable section

/-- A128581: Expansion of (phi(q^2) * phi(-q^3) - phi(-q) * phi(q^6)) / 2 in powers of q where phi() is a Ramanujan theta function.

Offset 1, canonical program `A128581.P949221518114225001`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A115660, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A128581 (n : ℕ) : ℤ :=
  A128581.P949221518114225001.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A115660, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A128581.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A131099.P17198853455723490305

`(n+1)*A002324(n+1)`
-/

namespace A131099.P17198853455723490305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A002324 (n + 1)

end

end A131099.P17198853455723490305

noncomputable section

/-- A131099: a(n) = n times number of divisors of n of form 3m+1 - n times number of divisors of form 3m+2.

Offset 1, canonical program `A131099.P17198853455723490305`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002324, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A131099 (n : ℕ) : ℤ :=
  A131099.P17198853455723490305.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002324, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A131099.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A143433.P568368968491830476

`round(A010054(n)/A228826(n))`
-/

namespace A143433.P568368968491830476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A010054 n : ℚ) / (A228826 n : ℚ))

end

end A143433.P568368968491830476

noncomputable section

/-- A143433: Expansion of f(-x, x^3) in powers of x where f(,) is Ramanujan's general theta function.

Offset 0, canonical program `A143433.P568368968491830476`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143433 (n : ℕ) : ℤ :=
  A143433.P568368968491830476.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143433.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145377.P12032856002733329322

`A002324(n+1)%2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A145377.P12032856002733329322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002324 (n + 1)) 2

end

end A145377.P12032856002733329322

noncomputable section

/-- A145377: a(n) = A002324(n) mod 2.

Offset 1, canonical program `A145377.P12032856002733329322`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002324, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A145377 (n : ℕ) : ℤ :=
  A145377.P12032856002733329322.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002324, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A145377.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A145394.P404841157394091667

`(A000203(n+1)+2*A002324(n+1))/3`
-/

namespace A145394.P404841157394091667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) + 2 * A002324 (n + 1) : ℚ) / 3

end

end A145394.P404841157394091667

noncomputable section

/-- A145394: Number of inequivalent sublattices of index n in hexagonal lattice, where two sublattices are considered equivalent if one can be rotated by a multiple of Pi/3 to give the other.

Offset 1, canonical program `A145394.P404841157394091667`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002324, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A145394 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A145394.P404841157394091667.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002324, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A145394.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A115794.P4559744070722464181

`record[gcd(and(n, 10*n), A007088(n))]`
-/

namespace A115794.P4559744070722464181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.land n (10 * n) : ℤ) (A007088 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115794.P4559744070722464181

noncomputable section

/-- A115794: Sequence A115793 in binary.

Offset 0, canonical program `A115794.P4559744070722464181`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1144 terms. -/
def A115794 (n : ℕ) : ℤ :=
  (A115794.P4559744070722464181.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1144 terms. -/
def A115794.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115796.P9825240409534695713

`record[gcd(and(2*n, 9*n), A007088(n))]`
-/

namespace A115796.P9825240409534695713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.land (2 * n) (9 * n) : ℤ) (A007088 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115796.P9825240409534695713

noncomputable section

/-- A115796: Sequence A115795 in binary.

Offset 1, canonical program `A115796.P9825240409534695713`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 492 terms. -/
def A115796 (n : ℕ) : ℤ :=
  (A115796.P9825240409534695713.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 492 terms. -/
def A115796.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115798.P14531436441237878101

`A007088(A115797(n+1))`
-/

namespace A115798.P14531436441237878101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A115797 (n + 1)).toNat

end

end A115798.P14531436441237878101

noncomputable section

/-- A115798: Sequence A115797 in binary.

Offset 1, canonical program `A115798.P14531436441237878101`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A115797, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A115798 (n : ℕ) : ℤ :=
  A115798.P14531436441237878101.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A115797, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A115798.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A115800.P12968421985045041583

`A007088(eq[0, and(4*n, 7*n)])`
-/

namespace A115800.P12968421985045041583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (4 * n) (7 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A115800.P12968421985045041583

noncomputable section

/-- A115800: Sequence A115799 in binary.

Offset 0, canonical program `A115800.P12968421985045041583`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. -/
def A115800 (n : ℕ) : ℤ :=
  A115800.P12968421985045041583.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. -/
def A115800.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115814.P15307000509231881468

`A007088(A115813(n))`
-/

namespace A115814.P15307000509231881468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A115813 n).toNat

end

end A115814.P15307000509231881468

noncomputable section

/-- A115814: Sequence A115813 in binary.

Offset 0, canonical program `A115814.P15307000509231881468`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A115813, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A115814 (n : ℕ) : ℤ :=
  A115814.P15307000509231881468.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A115813, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A115814.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A115816.P6728982517791538173

`A007088(A115815(n))`
-/

namespace A115816.P6728982517791538173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A115815 n).toNat

end

end A115816.P6728982517791538173

noncomputable section

/-- A115816: Sequence A115815 in binary.

Offset 0, canonical program `A115816.P6728982517791538173`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A115815, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A115816 (n : ℕ) : ℤ :=
  A115816.P6728982517791538173.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A115815, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A115816.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A115818.P8141254646774440608

`A007088(A115817(n))`
-/

namespace A115818.P8141254646774440608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A115817 n).toNat

end

end A115818.P8141254646774440608

noncomputable section

/-- A115818: Sequence A115817 in binary.

Offset 0, canonical program `A115818.P8141254646774440608`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A115817, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A115818 (n : ℕ) : ℤ :=
  A115818.P8141254646774440608.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A115817, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A115818.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A115820.P5339563733588952292

`A007088(A115819(n+1))`
-/

namespace A115820.P5339563733588952292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A115819 (n + 1)).toNat

end

end A115820.P5339563733588952292

noncomputable section

/-- A115820: Sequence A115819 in binary.

Offset 0, canonical program `A115820.P5339563733588952292`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A115819, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A115820 (n : ℕ) : ℤ :=
  A115820.P5339563733588952292.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A115819, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A115820.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A115822.P17871558408820840963

`A007088(A115821(n))`
-/

namespace A115822.P17871558408820840963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A115821 n).toNat

end

end A115822.P17871558408820840963

noncomputable section

/-- A115822: Sequence A115821 in binary.

Offset 0, canonical program `A115822.P17871558408820840963`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A115821, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A115822 (n : ℕ) : ℤ :=
  A115822.P17871558408820840963.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A115821, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A115822.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A115824.P7796633499277232802

`A007088(eq[0, and(8*n, 13*n)])`
-/

namespace A115824.P7796633499277232802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (8 * n) (13 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A115824.P7796633499277232802

noncomputable section

/-- A115824: Sequence A115823 in binary.

Offset 0, canonical program `A115824.P7796633499277232802`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 541 terms. -/
def A115824 (n : ℕ) : ℤ :=
  A115824.P7796633499277232802.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 541 terms. -/
def A115824.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115828.P3340096945707249904

`A007088(A115827(n))`
-/

namespace A115828.P3340096945707249904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A115827 n).toNat

end

end A115828.P3340096945707249904

noncomputable section

/-- A115828: Sequence A115827 in binary.

Offset 0, canonical program `A115828.P3340096945707249904`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A115827, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A115828 (n : ℕ) : ℤ :=
  A115828.P3340096945707249904.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A115827, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A115828.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A115832.P10195800001154322848

`A007088(A115831(n+1))`
-/

namespace A115832.P10195800001154322848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A115831 (n + 1)).toNat

end

end A115832.P10195800001154322848

noncomputable section

/-- A115832: Sequence A115831 in binary.

Offset 1, canonical program `A115832.P10195800001154322848`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A115831, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A115832 (n : ℕ) : ℤ :=
  A115832.P10195800001154322848.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A115831, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A115832.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A115848.P4587930052848723337

`A007088(A115847(n))`
-/

namespace A115848.P4587930052848723337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A115847 n).toNat

end

end A115848.P4587930052848723337

noncomputable section

/-- A115848: Sequence A115847 in binary.

Offset 0, canonical program `A115848.P4587930052848723337`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2561 terms. -/
def A115848 (n : ℕ) : ℤ :=
  A115848.P4587930052848723337.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2561 terms. -/
def A115848.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116938.P16028658485622113113

`and(4, A293359(n))/4`
-/

namespace A116938.P16028658485622113113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 4 (A293359 n) : ℚ) / 4

end

end A116938.P16028658485622113113

noncomputable section

/-- A116938: Expansion of e^2 in base 2.

Offset 3, canonical program `A116938.P16028658485622113113`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A116938 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A116938.P16028658485622113113.a (n - 3))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A116938.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117061.P946602290302645049

`A007953(a(n-1))²+1+n` with `a(0)=1`
-/

namespace A117061.P946602290302645049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007953 (a (n - 1)).toNat ^ 2 + 1 + (n : ℤ)

end

end A117061.P946602290302645049

noncomputable section

/-- A117061: a(n) = (s(n-1))^2+n, with a(1) = 1 and s(k) = A007953(a(k)).

Offset 1, canonical program `A117061.P946602290302645049`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A117061 (n : ℕ) : ℤ :=
  A117061.P946602290302645049.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A117061.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118137.P7047369831656418636

`A007953(n)+A007953(n+1)`
-/

namespace A118137.P7047369831656418636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n + A007953 (n + 1)

end

end A118137.P7047369831656418636

noncomputable section

/-- A118137: Sum of decimal digits of two successive natural numbers.

Offset 0, canonical program `A118137.P7047369831656418636`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A118137 (n : ℕ) : ℤ :=
  A118137.P7047369831656418636.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A118137.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A118880.P13099714679656599745

`A007953(n)^3`
-/

namespace A118880.P13099714679656599745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n ^ 3

end

end A118880.P13099714679656599745

noncomputable section

/-- A118880: a(n) is the cube of the sum of digits of n.

Offset 0, canonical program `A118880.P13099714679656599745`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A118880 (n : ℕ) : ℤ :=
  A118880.P13099714679656599745.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A118880.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A118881.P8524186405013838056

`A007953(n)²`
-/

namespace A118881.P8524186405013838056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n ^ 2

end

end A118881.P8524186405013838056

noncomputable section

/-- A118881: Square of sum of decimal digits of n.

Offset 0, canonical program `A118881.P8524186405013838056`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A118881 (n : ℕ) : ℤ :=
  A118881.P8524186405013838056.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A118881.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A119281.P4500062069654907476

`A007953(n)-4*A102677(n)`
-/

namespace A119281.P4500062069654907476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n - 4 * A102677 n

end

end A119281.P4500062069654907476

noncomputable section

/-- A119281: Number of counting rods to represent n in the ancient Chinese rod numeral system.

Offset 0, canonical program `A119281.P4500062069654907476`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A102677, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A119281 (n : ℕ) : ℤ :=
  A119281.P4500062069654907476.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A102677, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A119281.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A120675.P7049044633339083279

`A001221(A056911(n+1))`
-/

namespace A120675.P7049044633339083279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A056911 (n + 1)).toNat

end

end A120675.P7049044633339083279

noncomputable section

/-- A120675: Number of prime factors of odd squarefree numbers A056911.

Offset 1, canonical program `A120675.P7049044633339083279`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056911, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A120675 (n : ℕ) : ℤ :=
  A120675.P7049044633339083279.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056911, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A120675.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A123001.P475860141615088738

`A007088(lt[n, xor(n, floor(n/2))])`
-/

namespace A123001.P475860141615088738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A123001.P475860141615088738

noncomputable section

/-- A123001: Binary numbers that start 10...

Offset 1, canonical program `A123001.P475860141615088738`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1023 terms. -/
def A123001 (n : ℕ) : ℤ :=
  A123001.P475860141615088738.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1023 terms. -/
def A123001.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127271.P1641139788662325747

`eq[0, (n+1)%(A007953(n+2)+A007953(n))]`
-/

namespace A127271.P1641139788662325747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A007953 (n + 2) + A007953 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A127271.P1641139788662325747

noncomputable section

/-- A127271: Numbers n such that sum of the digits of n and n+2 divides n+1, n >= 1.

Offset 1, canonical program `A127271.P1641139788662325747`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 687 terms. -/
def A127271 (n : ℕ) : ℤ :=
  (A127271.P1641139788662325747.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 687 terms. -/
def A127271.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127318.P18366774478515647716

`C(n+1, A007953(n+1))%A007953(n+1)`
-/

namespace A127318.P18366774478515647716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.choose (n + 1) (A007953 (n + 1)).toNat : ℤ) (A007953 (n + 1))

end

end A127318.P18366774478515647716

noncomputable section

/-- A127318: a(n) = binomial(n, sd) mod sd, with sd = sum of decimal digits of n.

Offset 1, canonical program `A127318.P18366774478515647716`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127318 (n : ℕ) : ℤ :=
  A127318.P18366774478515647716.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127318.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A127319.P17408491599508182234

`C(n+1, A007953(n+1))%(n+1)`
-/

namespace A127319.P17408491599508182234
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A007953 (n + 1)).toNat % (n + 1)

end

end A127319.P17408491599508182234

noncomputable section

/-- A127319: a(n) = binomial(n, sd) mod n, with sd = sum of decimal digits of n.

Offset 1, canonical program `A127319.P17408491599508182234`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127319 (n : ℕ) : ℤ :=
  (A127319.P17408491599508182234.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127319.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A127906.P12019539335536084683

`n*A007088(n)`
-/

namespace A127906.P12019539335536084683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A007088 n

end

end A127906.P12019539335536084683

noncomputable section

/-- A127906: a(n) = (n in base 10) * (n in base 2).

Offset 0, canonical program `A127906.P12019539335536084683`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127906 (n : ℕ) : ℤ :=
  A127906.P12019539335536084683.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127906.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A127988.P16825810271688874760

`8*A000695(n)`
-/

namespace A127988.P16825810271688874760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A000695 n

end

end A127988.P16825810271688874760

noncomputable section

/-- A127988: Sequence determining the parity of A025748.

Offset 0, canonical program `A127988.P16825810271688874760`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127988 (n : ℕ) : ℤ :=
  A127988.P16825810271688874760.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127988.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A128203.P8982327639887167633

`A007953(n*(n+1))`
-/

namespace A128203.P8982327639887167633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n * (n + 1))

end

end A128203.P8982327639887167633

noncomputable section

/-- A128203: Sum of the digits of n*(n+1).

Offset 0, canonical program `A128203.P8982327639887167633`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A128203 (n : ℕ) : ℤ :=
  A128203.P8982327639887167633.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A128203.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A128212.P12226177893353124099

`A007953(A007954(n+1))`
-/

namespace A128212.P12226177893353124099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A007954 (n + 1)).toNat

end

end A128212.P12226177893353124099

noncomputable section

/-- A128212: a(n) = Sum_digits(p), where p is the product of the digits of n.

Offset 1, canonical program `A128212.P12226177893353124099`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A007954, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A128212 (n : ℕ) : ℤ :=
  A128212.P12226177893353124099.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A007954, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A128212.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A128244.P376771842225601192

`A007954(A007953(n+1))`
-/

namespace A128244.P376771842225601192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A007953 (n + 1)).toNat

end

end A128244.P376771842225601192

noncomputable section

/-- A128244: Let s be the sum of the digits of n; a(n) is the product of the digits of s.

Offset 1, canonical program `A128244.P376771842225601192`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A007954, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A128244 (n : ℕ) : ℤ :=
  A128244.P376771842225601192.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A007954, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A128244.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A128936.P7498908394709636250

`C(n, A007953(n))`
-/

namespace A128936.P7498908394709636250
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A007953 n).toNat

end

end A128936.P7498908394709636250

noncomputable section

/-- A128936: a(n) = binomial(n, sum_digits_n).

Offset 0, canonical program `A128936.P7498908394709636250`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A128936 (n : ℕ) : ℤ :=
  (A128936.P7498908394709636250.a n : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A128936.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A132628.P1682638940278180444

`lt[A000203(n+1)%A007953(n+1), 1]+1`
-/

namespace A132628.P1682638940278180444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1)) (A007953 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A132628.P1682638940278180444

noncomputable section

/-- A132628: Numbers k for which the sum of their digits divides sigma(k).

Offset 1, canonical program `A132628.P1682638940278180444`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A132628 (n : ℕ) : ℤ :=
  (A132628.P1682638940278180444.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A132628.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135124.P15966436925166688135

`A033045(A000695(n+1))`
-/

namespace A135124.P15966436925166688135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033045 (A000695 (n + 1)).toNat

end

end A135124.P15966436925166688135

noncomputable section

/-- A135124: Numbers such that the digital sums in base 2, base 4 and base 8 are all equal.

Offset 1, canonical program `A135124.P15966436925166688135`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135124 (n : ℕ) : ℤ :=
  A135124.P15966436925166688135.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135124.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A136613.P13511050304393903560

`10^A055642(n)*A007953(n)+n`
-/

namespace A136613.P13511050304393903560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (A055642 n : ℤ) * (A007953 n : ℚ) + (n : ℚ)

end

end A136613.P13511050304393903560

noncomputable section

/-- A136613: Concatenation of (sum of digits of n) and n.

Offset 0, canonical program `A136613.P13511050304393903560`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136613 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A136613.P13511050304393903560.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136613.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139374.P15184791697190815955

`A007953(A000032(n))`
-/

namespace A139374.P15184791697190815955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A000032 n).toNat

end

end A139374.P15184791697190815955

noncomputable section

/-- A139374: Digit sum of Lucas numbers.

Offset 0, canonical program `A139374.P15184791697190815955`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139374 (n : ℕ) : ℤ :=
  A139374.P15184791697190815955.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139374.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A139762.P8061600169167864390

`A007953(a(n-1))+A007953(n)` with `a(0)=0`
-/

namespace A139762.P8061600169167864390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A007953 (a (n - 1)).toNat + A007953 n

end

end A139762.P8061600169167864390

noncomputable section

/-- A139762: a(n)=Sum_digits_of_a(n-1)+Sum_digits_of(n).

Offset 0, canonical program `A139762.P8061600169167864390`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139762 (n : ℕ) : ℤ :=
  A139762.P8061600169167864390.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139762.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141022.P7720121601839125489

`n%(1+A007953(n))`
-/

namespace A141022.P7720121601839125489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (1 + A007953 n)

end

end A141022.P7720121601839125489

noncomputable section

/-- A141022: a(n) = n mod ((sum of digits of n)+1).

Offset 0, canonical program `A141022.P7720121601839125489`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A141022 (n : ℕ) : ℤ :=
  A141022.P7720121601839125489.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A141022.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A141063.P7516955287568242112

`(n+1)%A007953(A000040(n+1))`
-/

namespace A141063.P7516955287568242112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A007953 (A000040 (n + 1)).toNat)

end

end A141063.P7516955287568242112

noncomputable section

/-- A141063: a(n) = n mod (sum of digits of prime(n)).

Offset 1, canonical program `A141063.P7516955287568242112`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A141063 (n : ℕ) : ℤ :=
  A141063.P7516955287568242112.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A141063.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A141071.P16936850486521262733

`A000040(n+1)%A007953(n+1)`
-/

namespace A141071.P16936850486521262733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (A007953 (n + 1))

end

end A141071.P16936850486521262733

noncomputable section

/-- A141071: a(n) = prime(n) mod (sum of base-10 digits of n) where prime(n) is the n-th prime.

Offset 1, canonical program `A141071.P16936850486521262733`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A141071 (n : ℕ) : ℤ :=
  A141071.P16936850486521262733.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A141071.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A147568.P4088074706858455040

`2*A000695(n)+3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A147568.P4088074706858455040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000695 n + 3

end

end A147568.P4088074706858455040

noncomputable section

/-- A147568: a(n) = 2*A000695(n)+3.

Offset 0, canonical program `A147568.P4088074706858455040`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A147568 (n : ℕ) : ℤ :=
  A147568.P4088074706858455040.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A147568.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A128173.P11177856239651542119

`A244042(n)+2*A244042(A004526(n))`
-/

namespace A128173.P11177856239651542119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244042 n + 2 * A244042 (A004526 n).toNat

end

end A128173.P11177856239651542119

noncomputable section

/-- A128173: Numbers in ternary reflected Gray code order.

Offset 0, canonical program `A128173.P11177856239651542119`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128173 (n : ℕ) : ℤ :=
  A128173.P11177856239651542119.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128173.provenance : SequenceMachineLib.Provenance := .conjectured

