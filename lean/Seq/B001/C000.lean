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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import SequenceMachineLib.Triangle

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A000071.P17543778731970887199

`A000045(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A000071.P17543778731970887199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - 1

end

end A000071.P17543778731970887199

noncomputable section

/-- A000071: a(n) = Fibonacci(n) - 1.

Offset 1, canonical program `A000071.P17543778731970887199`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n+1)-1` (program `A000071.P17543778731970887199`, by `A000071.P17543778731970887199.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A000071 (n : ℕ) : ℤ :=
  A000071.P17543778731970887199.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n+1)-1` (program `A000071.P17543778731970887199`, by `A000071.P17543778731970887199.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A000071.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A000458.P11000494846950381371

`A000203(a(n-1))+A000203(a(n-2))` with `a(0)=1, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A000458.P11000494846950381371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A000203 (a (n - 1)).toNat + A000203 (a (n - 2)).toNat

end

end A000458.P11000494846950381371

noncomputable section

/-- A000458: a(0) = a(1) = 1; thereafter a(n) = sigma(a(n-1)) + sigma(a(n-2)).

Offset 0, canonical program `A000458.P11000494846950381371`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(a(n-1))+A000203(a(n-2))` (program `A000458.P11000494846950381371`, by `A000458.P11000494846950381371.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A000458 (n : ℕ) : ℤ :=
  A000458.P11000494846950381371.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(a(n-1))+A000203(a(n-2))` (program `A000458.P11000494846950381371`, by `A000458.P11000494846950381371.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A000458.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A000777.P1471641736917558101

`(n+2)*A000108(n)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A000777.P1471641736917558101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A000108 n - 1

end

end A000777.P1471641736917558101

noncomputable section

/-- A000777: a(n) = (n+2)*Catalan(n) - 1.

Offset 0, canonical program `A000777.P1471641736917558101`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+2)*A000108(n)-1` (program `A000777.P1471641736917558101`, by `A000777.P1471641736917558101.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A000777 (n : ℕ) : ℤ :=
  A000777.P1471641736917558101.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+2)*A000108(n)-1` (program `A000777.P1471641736917558101`, by `A000777.P1471641736917558101.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A000777.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A000778.P18203779062026400197

`A000108(n)+A000108(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A000778.P18203779062026400197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + A000108 (n + 1) - 1

end

end A000778.P18203779062026400197

noncomputable section

/-- A000778: a(n) = Catalan(n) + Catalan(n+1) - 1.

Offset 0, canonical program `A000778.P18203779062026400197`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000108(n)+A000108(n+1)-1` (program `A000778.P18203779062026400197`, by `A000778.P18203779062026400197.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A000778 (n : ℕ) : ℤ :=
  A000778.P18203779062026400197.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000108(n)+A000108(n+1)-1` (program `A000778.P18203779062026400197`, by `A000778.P18203779062026400197.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A000778.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A000781.P4232983838397901755

`3*A000108(n+1)-A000108(n)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A000781.P4232983838397901755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000108 (n + 1) - A000108 n - 1

end

end A000781.P4232983838397901755

noncomputable section

/-- A000781: a(n) = 3*Catalan(n) - Catalan(n-1) - 1.

Offset 1, canonical program `A000781.P4232983838397901755`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*A000108(n+1)-A000108(n)-1` (program `A000781.P4232983838397901755`, by `A000781.P4232983838397901755.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A000781 (n : ℕ) : ℤ :=
  A000781.P4232983838397901755.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*A000108(n+1)-A000108(n)-1` (program `A000781.P4232983838397901755`, by `A000781.P4232983838397901755.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A000781.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A000782.P8375849758722979519

`2*A000108(n+1)-A000108(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A000782.P8375849758722979519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000108 (n + 1) - A000108 n

end

end A000782.P8375849758722979519

noncomputable section

/-- A000782: a(n) = 2*Catalan(n) - Catalan(n-1).

Offset 1, canonical program `A000782.P8375849758722979519`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A000108(n+1)-A000108(n)` (program `A000782.P8375849758722979519`, by `A000782.P8375849758722979519.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A000782 (n : ℕ) : ℤ :=
  A000782.P8375849758722979519.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A000108(n+1)-A000108(n)` (program `A000782.P8375849758722979519`, by `A000782.P8375849758722979519.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A000782.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A001065.P4097147489331274860

`A000203(n+1)-(n+1)`
-/

namespace A001065.P4097147489331274860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (n + 1 : ℤ)

end

end A001065.P4097147489331274860

noncomputable section

/-- A001065: Sum of proper divisors (or aliquot parts) of n: sum of divisors of n that are less than n.

Offset 1, canonical program `A001065.P4097147489331274860`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A001065.anchor (n : ℕ) (hn : 1 ≤ n) : A001065 n = ((∑ d ∈ n.properDivisors, d : ℕ) : ℤ)` in `Proof.A001.A001065`. -/
def A001065 (n : ℕ) : ℤ :=
  A001065.P4097147489331274860.a (n - 1)

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A001065.anchor (n : ℕ) (hn : 1 ≤ n) : A001065 n = ((∑ d ∈ n.properDivisors, d : ℕ) : ℤ)` in `Proof.A001.A001065`. -/
def A001065.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A001223.P5034056745985311719

`A000040(n+2)-A000040(n+1)`
-/

namespace A001223.P5034056745985311719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - A000040 (n + 1)

end

end A001223.P5034056745985311719

noncomputable section

/-- A001223: Prime gaps: differences between consecutive primes.

Offset 1, canonical program `A001223.P5034056745985311719`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A001223.anchor (n : ℕ) (hn : 1 ≤ n) : A001223 n = (Nat.nth Nat.Prime n : ℤ) - Nat.nth Nat.Prime (n - 1)` in `Proof.A001.A001223`. -/
def A001223 (n : ℕ) : ℤ :=
  A001223.P5034056745985311719.a (n - 1)

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A001223.anchor (n : ℕ) (hn : 1 ≤ n) : A001223 n = (Nat.nth Nat.Prime n : ℤ) - Nat.nth Nat.Prime (n - 1)` in `Proof.A001.A001223`. -/
def A001223.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A001611.P16593652898942925329

`A000045(n)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A001611.P16593652898942925329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + 1

end

end A001611.P16593652898942925329

noncomputable section

/-- A001611: a(n) = Fibonacci(n) + 1.

Offset 0, canonical program `A001611.P16593652898942925329`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n)+1` (program `A001611.P16593652898942925329`, by `A001611.P16593652898942925329.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A001611 (n : ℕ) : ℤ :=
  A001611.P16593652898942925329.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n)+1` (program `A001611.P16593652898942925329`, by `A001611.P16593652898942925329.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A001611.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A001748.P16019639290970068825

`3*A000040(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A001748.P16019639290970068825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000040 (n + 1)

end

end A001748.P16019639290970068825

noncomputable section

/-- A001748: a(n) = 3 * prime(n).

Offset 1, canonical program `A001748.P16019639290970068825`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*A000040(n+1)` (program `A001748.P16019639290970068825`, by `A001748.P16019639290970068825.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A001748 (n : ℕ) : ℤ :=
  A001748.P16019639290970068825.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*A000040(n+1)` (program `A001748.P16019639290970068825`, by `A001748.P16019639290970068825.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A001748.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A001911.P2299546665043418976

`A000045(n+3)-2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A001911.P2299546665043418976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 3) - 2

end

end A001911.P2299546665043418976

noncomputable section

/-- A001911: a(n) = Fibonacci(n+3) - 2.

Offset 0, canonical program `A001911.P2299546665043418976`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n+3)-2` (program `A001911.P2299546665043418976`, by `A001911.P2299546665043418976.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A001911 (n : ℕ) : ℤ :=
  A001911.P2299546665043418976.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n+3)-2` (program `A001911.P2299546665043418976`, by `A001911.P2299546665043418976.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A001911.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A001947.P2405845606710186316

`A000032(5*n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A001947.P2405845606710186316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (5 * n + 2)

end

end A001947.P2405845606710186316

noncomputable section

/-- A001947: a(n) = Lucas(5*n+2).

Offset 0, canonical program `A001947.P2405845606710186316`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000032(5*n+2)` (program `A001947.P2405845606710186316`, by `A001947.P2405845606710186316.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A001947 (n : ℕ) : ℤ :=
  A001947.P2405845606710186316.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000032(5*n+2)` (program `A001947.P2405845606710186316`, by `A001947.P2405845606710186316.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A001947.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A002062.P4072436808255348786

`A000045(n)+n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A002062.P4072436808255348786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (n : ℤ)

end

end A002062.P4072436808255348786

noncomputable section

/-- A002062: a(n) = Fibonacci(n) + n.

Offset 0, canonical program `A002062.P4072436808255348786`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n)+n` (program `A002062.P4072436808255348786`, by `A002062.P4072436808255348786.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A002062 (n : ℕ) : ℤ :=
  A002062.P4072436808255348786.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n)+n` (program `A002062.P4072436808255348786`, by `A002062.P4072436808255348786.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A002062.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A002110.P13704446489392701398

`A000040(n)*a(n-1)` with `a(0)=1`
-/

namespace A002110.P13704446489392701398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000040 n * a (n - 1)

end

end A002110.P13704446489392701398

noncomputable section

/-- A002110: Primorial numbers (first definition): product of first n primes. Sometimes written prime(n)#.

Offset 0, canonical program `A002110.P13704446489392701398`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A002110.anchor (n : ℕ) : A002110 n = ∏ i ∈ Finset.range n, (Nat.nth Nat.Prime i : ℤ)` in `Proof.A002.A002110`. -/
def A002110 (n : ℕ) : ℤ :=
  A002110.P13704446489392701398.a n

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A002110.anchor (n : ℕ) : A002110 n = ∏ i ∈ Finset.range n, (Nat.nth Nat.Prime i : ℤ)` in `Proof.A002.A002110`. -/
def A002110.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A002659.P8948138163684764047

`2*A000203(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A002659.P8948138163684764047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000203 (n + 1) - 1

end

end A002659.P8948138163684764047

noncomputable section

/-- A002659: a(n) = 2*sigma(n) - 1.

Offset 1, canonical program `A002659.P8948138163684764047`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A000203(n+1)-1` (program `A002659.P8948138163684764047`, by `A002659.P8948138163684764047.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A002659 (n : ℕ) : ℤ :=
  A002659.P8948138163684764047.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A000203(n+1)-1` (program `A002659.P8948138163684764047`, by `A002659.P8948138163684764047.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A002659.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A002708.P1257888574376831294

`A000045(n+1)%(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A002708.P1257888574376831294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (n + 1)) (n + 1 : ℤ)

end

end A002708.P1257888574376831294

noncomputable section

/-- A002708: a(n) = Fibonacci(n) mod n.

Offset 1, canonical program `A002708.P1257888574376831294`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n+1)%(n+1)` (program `A002708.P1257888574376831294`, by `A002708.P1257888574376831294.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A002708 (n : ℕ) : ℤ :=
  A002708.P1257888574376831294.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n+1)%(n+1)` (program `A002708.P1257888574376831294`, by `A002708.P1257888574376831294.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A002708.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A002726.P2885934270742312278

`A000045(n+2)%(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A002726.P2885934270742312278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (n + 2)) (n + 1 : ℤ)

end

end A002726.P2885934270742312278

noncomputable section

/-- A002726: a(n) = Fibonacci(n+1) mod n.

Offset 1, canonical program `A002726.P2885934270742312278`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n+2)%(n+1)` (program `A002726.P2885934270742312278`, by `A002726.P2885934270742312278.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A002726 (n : ℕ) : ℤ :=
  A002726.P2885934270742312278.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n+2)%(n+1)` (program `A002726.P2885934270742312278`, by `A002726.P2885934270742312278.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A002726.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A002752.P11877910779365176839

`A000045(n)%(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A002752.P11877910779365176839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 n) (n + 1 : ℤ)

end

end A002752.P11877910779365176839

noncomputable section

/-- A002752: a(n) = Fibonacci(n-1) mod n.

Offset 1, canonical program `A002752.P11877910779365176839`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n)%(n+1)` (program `A002752.P11877910779365176839`, by `A002752.P11877910779365176839.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A002752 (n : ℕ) : ℤ :=
  A002752.P11877910779365176839.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n)%(n+1)` (program `A002752.P11877910779365176839`, by `A002752.P11877910779365176839.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A002752.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A003893.P16417815883843293476

`A000045(n)%10`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A003893.P16417815883843293476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 n) 10

end

end A003893.P16417815883843293476

noncomputable section

/-- A003893: a(n) = Fibonacci(n) mod 10.

Offset 0, canonical program `A003893.P16417815883843293476`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n)%10` (program `A003893.P16417815883843293476`, by `A003893.P16417815883843293476.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A003893 (n : ℕ) : ℤ :=
  A003893.P16417815883843293476.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n)%10` (program `A003893.P16417815883843293476`, by `A003893.P16417815883843293476.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A003893.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A004074.P7923375237967652699

`2*A004001(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A004074.P7923375237967652699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004001 (n + 1) - (n + 1 : ℤ)

end

end A004074.P7923375237967652699

noncomputable section

/-- A004074: a(n) = 2*A004001(n) - n, where A004001 is the Hofstadter-Conway $10000 sequence.

Offset 1, canonical program `A004074.P7923375237967652699`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A004001(n+1)-(n+1)` (program `A004074.P7923375237967652699`, by `A004074.P7923375237967652699.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A004074 (n : ℕ) : ℤ :=
  A004074.P7923375237967652699.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A004001(n+1)-(n+1)` (program `A004074.P7923375237967652699`, by `A004074.P7923375237967652699.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A004074.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A004232.P3456609317362794228

`(n+1)²+A000040(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A004232.P3456609317362794228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + A000040 (n + 1)

end

end A004232.P3456609317362794228

noncomputable section

/-- A004232: a(n) = n^2 + prime(n).

Offset 1, canonical program `A004232.P3456609317362794228`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)²+A000040(n+1)` (program `A004232.P3456609317362794228`, by `A004232.P3456609317362794228.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A004232 (n : ℕ) : ℤ :=
  A004232.P3456609317362794228.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)²+A000040(n+1)` (program `A004232.P3456609317362794228`, by `A004232.P3456609317362794228.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A004232.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A004397.P5971588523546230997

`A000040(n+1)+A000045(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A004397.P5971588523546230997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A000045 (n + 1)

end

end A004397.P5971588523546230997

noncomputable section

/-- A004397: a(n) = prime(n) + Fibonacci(n).

Offset 1, canonical program `A004397.P5971588523546230997`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)+A000045(n+1)` (program `A004397.P5971588523546230997`, by `A004397.P5971588523546230997.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A004397 (n : ℕ) : ℤ :=
  A004397.P5971588523546230997.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)+A000045(n+1)` (program `A004397.P5971588523546230997`, by `A004397.P5971588523546230997.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A004397.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A004398.P6704214443217753028

`A000045(n+2)+A000040(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A004398.P6704214443217753028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) + A000040 (n + 1)

end

end A004398.P6704214443217753028

noncomputable section

/-- A004398: a(n) = Fibonacci(n+1) + prime(n).

Offset 1, canonical program `A004398.P6704214443217753028`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n+2)+A000040(n+1)` (program `A004398.P6704214443217753028`, by `A004398.P6704214443217753028.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A004398 (n : ℕ) : ℤ :=
  A004398.P6704214443217753028.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n+2)+A000040(n+1)` (program `A004398.P6704214443217753028`, by `A004398.P6704214443217753028.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A004398.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A004399.P16642943363448830783

`A000045(n+3)+A000040(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A004399.P16642943363448830783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 3) + A000040 (n + 1)

end

end A004399.P16642943363448830783

noncomputable section

/-- A004399: a(n) = Fibonacci(n+2) + prime(n).

Offset 1, canonical program `A004399.P16642943363448830783`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n+3)+A000040(n+1)` (program `A004399.P16642943363448830783`, by `A004399.P16642943363448830783.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A004399 (n : ℕ) : ℤ :=
  A004399.P16642943363448830783.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n+3)+A000040(n+1)` (program `A004399.P16642943363448830783`, by `A004399.P16642943363448830783.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A004399.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A004648.P171968973179240133

`A000040(n+1)%(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A004648.P171968973179240133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (n + 1 : ℤ)

end

end A004648.P171968973179240133

noncomputable section

/-- A004648: a(n) = prime(n) mod n.

Offset 1, canonical program `A004648.P171968973179240133`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)%(n+1)` (program `A004648.P171968973179240133`, by `A004648.P171968973179240133.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A004648 (n : ℕ) : ℤ :=
  A004648.P171968973179240133.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)%(n+1)` (program `A004648.P171968973179240133`, by `A004648.P171968973179240133.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A004648.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A004649.P4680330868928029673

`A000040(n+2)%(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A004649.P4680330868928029673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2)) (n + 1 : ℤ)

end

end A004649.P4680330868928029673

noncomputable section

/-- A004649: a(n) = prime(n) mod (n-1).

Offset 2, canonical program `A004649.P4680330868928029673`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+2)%(n+1)` (program `A004649.P4680330868928029673`, by `A004649.P4680330868928029673.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A004649 (n : ℕ) : ℤ :=
  A004649.P4680330868928029673.a (n - 2)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+2)%(n+1)` (program `A004649.P4680330868928029673`, by `A004649.P4680330868928029673.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A004649.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A004650.P17268089652292632579

`A000040(n+1)%(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A004650.P17268089652292632579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (n + 2 : ℤ)

end

end A004650.P17268089652292632579

noncomputable section

/-- A004650: a(n) = prime(n) mod (n+1).

Offset 1, canonical program `A004650.P17268089652292632579`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)%(n+2)` (program `A004650.P17268089652292632579`, by `A004650.P17268089652292632579.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A004650 (n : ℕ) : ℤ :=
  A004650.P17268089652292632579.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)%(n+2)` (program `A004650.P17268089652292632579`, by `A004650.P17268089652292632579.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A004650.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A004695.P8591097822717094344

`floor(A000045(n)/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A004695.P8591097822717094344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000045 n : ℚ) / 2⌋

end

end A004695.P8591097822717094344

noncomputable section

/-- A004695: a(n) = floor(Fibonacci(n)/2).

Offset 0, canonical program `A004695.P8591097822717094344`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(A000045(n)/2)` (program `A004695.P8591097822717094344`, by `A004695.P8591097822717094344.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A004695 (n : ℕ) : ℤ :=
  A004695.P8591097822717094344.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(A000045(n)/2)` (program `A004695.P8591097822717094344`, by `A004695.P8591097822717094344.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A004695.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A004696.P617436532734572631

`floor(A000045(n)/3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A004696.P617436532734572631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000045 n : ℚ) / 3⌋

end

end A004696.P617436532734572631

noncomputable section

/-- A004696: a(n) = floor(Fibonacci(n)/3).

Offset 0, canonical program `A004696.P617436532734572631`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(A000045(n)/3)` (program `A004696.P617436532734572631`, by `A004696.P617436532734572631.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A004696 (n : ℕ) : ℤ :=
  A004696.P617436532734572631.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(A000045(n)/3)` (program `A004696.P617436532734572631`, by `A004696.P617436532734572631.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A004696.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A004697.P5001515619602448307

`floor(A000045(n)/4)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A004697.P5001515619602448307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000045 n : ℚ) / 4⌋

end

end A004697.P5001515619602448307

noncomputable section

/-- A004697: a(n) = floor(Fibonacci(n)/4).

Offset 0, canonical program `A004697.P5001515619602448307`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(A000045(n)/4)` (program `A004697.P5001515619602448307`, by `A004697.P5001515619602448307.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A004697 (n : ℕ) : ℤ :=
  A004697.P5001515619602448307.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(A000045(n)/4)` (program `A004697.P5001515619602448307`, by `A004697.P5001515619602448307.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A004697.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A004698.P18366797859787643297

`floor(A000045(n)/5)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A004698.P18366797859787643297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000045 n : ℚ) / 5⌋

end

end A004698.P18366797859787643297

noncomputable section

/-- A004698: a(n) = floor(Fibonacci(n)/5).

Offset 0, canonical program `A004698.P18366797859787643297`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(A000045(n)/5)` (program `A004698.P18366797859787643297`, by `A004698.P18366797859787643297.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A004698 (n : ℕ) : ℤ :=
  A004698.P18366797859787643297.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(A000045(n)/5)` (program `A004698.P18366797859787643297`, by `A004698.P18366797859787643297.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A004698.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A004699.P12531223440903931430

`floor(A000045(n)/6)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A004699.P12531223440903931430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000045 n : ℚ) / 6⌋

end

end A004699.P12531223440903931430

noncomputable section

/-- A004699: a(n) = floor(Fibonacci(n)/6).

Offset 0, canonical program `A004699.P12531223440903931430`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(A000045(n)/6)` (program `A004699.P12531223440903931430`, by `A004699.P12531223440903931430.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A004699 (n : ℕ) : ℤ :=
  A004699.P12531223440903931430.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(A000045(n)/6)` (program `A004699.P12531223440903931430`, by `A004699.P12531223440903931430.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A004699.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A005159.P13336724963119829101

`3^n*A000108(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A005159.P13336724963119829101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A000108 n

end

end A005159.P13336724963119829101

noncomputable section

/-- A005159: a(n) = 3^n*Catalan(n).

Offset 0, canonical program `A005159.P13336724963119829101`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n*A000108(n)` (program `A005159.P13336724963119829101`, by `A005159.P13336724963119829101.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A005159 (n : ℕ) : ℤ :=
  A005159.P13336724963119829101.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n*A000108(n)` (program `A005159.P13336724963119829101`, by `A005159.P13336724963119829101.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A005159.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A005248.P3255906601217542815

`A000032(2*n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A005248.P3255906601217542815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * n)

end

end A005248.P3255906601217542815

noncomputable section

/-- A005248: Bisection of Lucas numbers: a(n) = L(2*n) = A000032(2*n).

Offset 0, canonical program `A005248.P3255906601217542815`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000032(2*n)` (program `A005248.P3255906601217542815`, by `A005248.P3255906601217542815.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A005248 (n : ℕ) : ℤ :=
  A005248.P3255906601217542815.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000032(2*n)` (program `A005248.P3255906601217542815`, by `A005248.P3255906601217542815.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A005248.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A005370.P727247804695828524

`A000045(A000045(n+1)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A005370.P727247804695828524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A000045 (n + 1) + 1).toNat

end

end A005370.P727247804695828524

noncomputable section

/-- A005370: a(n) = Fibonacci(Fibonacci(n+1) + 1).

Offset 0, canonical program `A005370.P727247804695828524`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(A000045(n+1)+1)` (program `A005370.P727247804695828524`, by `A005370.P727247804695828524.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A005370 (n : ℕ) : ℤ :=
  A005370.P727247804695828524.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(A000045(n+1)+1)` (program `A005370.P727247804695828524`, by `A005370.P727247804695828524.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A005370.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A005442.P14958326940803810215

`n!*A000045(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A005442.P14958326940803810215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A000045 (n + 1)

end

end A005442.P14958326940803810215

noncomputable section

/-- A005442: a(n) = n!*Fibonacci(n+1).

Offset 0, canonical program `A005442.P14958326940803810215`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!*A000045(n+1)` (program `A005442.P14958326940803810215`, by `A005442.P14958326940803810215.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A005442 (n : ℕ) : ℤ :=
  A005442.P14958326940803810215.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!*A000045(n+1)` (program `A005442.P14958326940803810215`, by `A005442.P14958326940803810215.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A005442.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A005443.P2100049464656099245

`n!*A000045(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A005443.P2100049464656099245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A000045 n

end

end A005443.P2100049464656099245

noncomputable section

/-- A005443: a(n) = n! * Fibonacci(n).

Offset 0, canonical program `A005443.P2100049464656099245`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!*A000045(n)` (program `A005443.P2100049464656099245`, by `A005443.P2100049464656099245.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A005443 (n : ℕ) : ℤ :=
  A005443.P2100049464656099245.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!*A000045(n)` (program `A005443.P2100049464656099245`, by `A005443.P2100049464656099245.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A005443.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A005722.P9626108162633457683

`(A000040(n+1)-1)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A005722.P9626108162633457683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) - 1) ^ 2

end

end A005722.P9626108162633457683

noncomputable section

/-- A005722: a(n) = (prime(n) - 1)^2.

Offset 1, canonical program `A005722.P9626108162633457683`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(A000040(n+1)-1)²` (program `A005722.P9626108162633457683`, by `A005722.P9626108162633457683.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A005722 (n : ℕ) : ℤ :=
  A005722.P9626108162633457683.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(A000040(n+1)-1)²` (program `A005722.P9626108162633457683`, by `A005722.P9626108162633457683.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A005722.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A005867.P647413364839099534

`(A000040(n)-1)*a(n-1)` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A005867.P647413364839099534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A000040 n - 1) * a (n - 1)

end

end A005867.P647413364839099534

noncomputable section

/-- A005867: a(0) = 1; for n > 0, a(n) = (prime(n)-1)*a(n-1).

Offset 0, canonical program `A005867.P647413364839099534`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(A000040(n)-1)*a(n-1)` (program `A005867.P647413364839099534`, by `A005867.P647413364839099534.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A005867 (n : ℕ) : ℤ :=
  A005867.P647413364839099534.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(A000040(n)-1)*a(n-1)` (program `A005867.P647413364839099534`, by `A005867.P647413364839099534.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A005867.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A006093.P2906174024863549003

`A000040(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A006093.P2906174024863549003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

end

end A006093.P2906174024863549003

noncomputable section

/-- A006093: a(n) = prime(n) - 1.

Offset 1, canonical program `A006093.P2906174024863549003`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)-1` (program `A006093.P2906174024863549003`, by `A006093.P2906174024863549003.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A006093 (n : ℕ) : ℤ :=
  A006093.P2906174024863549003.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)-1` (program `A006093.P2906174024863549003`, by `A006093.P2906174024863549003.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A006093.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A006327.P16731944309453537489

`A000045(n+4)-3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A006327.P16731944309453537489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 4) - 3

end

end A006327.P16731944309453537489

noncomputable section

/-- A006327: a(n) = Fibonacci(n) - 3. Number of total preorders.

Offset 4, canonical program `A006327.P16731944309453537489`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n+4)-3` (program `A006327.P16731944309453537489`, by `A006327.P16731944309453537489.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A006327 (n : ℕ) : ℤ :=
  A006327.P16731944309453537489.a (n - 4)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n+4)-3` (program `A006327.P16731944309453537489`, by `A006327.P16731944309453537489.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A006327.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A006478.P12481983628482939867

`a(n-1)+a(n-2)+A000045(n)-1` with `a(0)=0, a(1)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A006478.P12481983628482939867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 1) + a (n - 2) + A000045 n - 1

end

end A006478.P12481983628482939867

noncomputable section

/-- A006478: a(n) = a(n-1) + a(n-2) + F(n) - 1, a(0) = a(1) = 0, where F() = Fibonacci numbers A000045.

Offset 0, canonical program `A006478.P12481983628482939867`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+A000045(n)-1` (program `A006478.P12481983628482939867`, by `A006478.P12481983628482939867.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A006478 (n : ℕ) : ℤ :=
  A006478.P12481983628482939867.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+A000045(n)-1` (program `A006478.P12481983628482939867`, by `A006478.P12481983628482939867.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A006478.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A006483.P1423349417915343725

`A000045(n)*2^n+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A006483.P1423349417915343725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * (2 ^ n : ℤ) + 1

end

end A006483.P1423349417915343725

noncomputable section

/-- A006483: a(n) = Fibonacci(n)*2^n + 1.

Offset 0, canonical program `A006483.P1423349417915343725`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n)*2^n+1` (program `A006483.P1423349417915343725`, by `A006483.P1423349417915343725.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A006483 (n : ℕ) : ℤ :=
  A006483.P1423349417915343725.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n)*2^n+1` (program `A006483.P1423349417915343725`, by `A006483.P1423349417915343725.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A006483.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A006578.P1959475043781476166

`A000217(n)+A002620(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A006578.P1959475043781476166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + A002620 n

end

end A006578.P1959475043781476166

noncomputable section

/-- A006578: Triangular numbers plus quarter squares: n*(n+1)/2 + floor(n^2/4) (i.e., A000217(n) + A002620(n)).

Offset 0, canonical program `A006578.P1959475043781476166`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)/2+floor(n²/4)` (program `A006578.P12178988065684166753`, by `A006578.P12178988065684166753.correct`). Lean does not check the parsing of the name. -/
def A006578 (n : ℕ) : ℤ :=
  A006578.P1959475043781476166.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)/2+floor(n²/4)` (program `A006578.P12178988065684166753`, by `A006578.P12178988065684166753.correct`). Lean does not check the parsing of the name. -/
def A006578.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A006985.P1025474298184781686

`A000045(a(n-1)+2)` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A006985.P1025474298184781686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000045 (a (n - 1) + 2).toNat

end

end A006985.P1025474298184781686

noncomputable section

/-- A006985: Fibonacci tower: a(n) = F(a(n-1)+2) (there is no room for next term).

Offset 0, canonical program `A006985.P1025474298184781686`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(a(n-1)+2)` (program `A006985.P1025474298184781686`, by `A006985.P1025474298184781686.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A006985 (n : ℕ) : ℤ :=
  A006985.P1025474298184781686.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(a(n-1)+2)` (program `A006985.P1025474298184781686`, by `A006985.P1025474298184781686.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A006985.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A007492.P3468359899504453901

`A000045(n+1)-(-1)^(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A007492.P3468359899504453901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - (-1) ^ (n + 1)

end

end A007492.P3468359899504453901

noncomputable section

/-- A007492: Fibonacci(n) - (-1)^n.

Offset 1, canonical program `A007492.P3468359899504453901`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n+1)-(-1)^(n+1)` (program `A007492.P3468359899504453901`, by `A007492.P3468359899504453901.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A007492 (n : ℕ) : ℤ :=
  A007492.P3468359899504453901.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n+1)-(-1)^(n+1)` (program `A007492.P3468359899504453901`, by `A007492.P3468359899504453901.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A007492.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A007497.P7041758846218109594

`A000203(a(n-1))` with `a(0)=2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A007497.P7041758846218109594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000203 (a (n - 1)).toNat

end

end A007497.P7041758846218109594

noncomputable section

/-- A007497: a(1) = 2, a(n) = sigma(a(n-1)).

Offset 1, canonical program `A007497.P7041758846218109594`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(a(n-1))` (program `A007497.P7041758846218109594`, by `A007497.P7041758846218109594.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A007497 (n : ℕ) : ℤ :=
  A007497.P7041758846218109594.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(a(n-1))` (program `A007497.P7041758846218109594`, by `A007497.P7041758846218109594.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A007497.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A007502.P10849111920373228728

`A000045(n+1)+n*A000045(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A007502.P10849111920373228728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (n : ℤ) * A000045 n

end

end A007502.P10849111920373228728

noncomputable section

/-- A007502: Les Marvin sequence: a(n) = F(n) + (n-1)*F(n-1), F() = Fibonacci numbers.

Offset 1, canonical program `A007502.P10849111920373228728`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n+1)+n*A000045(n)` (program `A007502.P10849111920373228728`, by `A007502.P10849111920373228728.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A007502 (n : ℕ) : ℤ :=
  A007502.P10849111920373228728.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n+1)+n*A000045(n)` (program `A007502.P10849111920373228728`, by `A007502.P10849111920373228728.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A007502.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A007570.P1833938303993982019

`A000045(A000045(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A007570.P1833938303993982019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A000045 n).toNat

end

end A007570.P1833938303993982019

noncomputable section

/-- A007570: a(n) = F(F(n)), where F is a Fibonacci number.

Offset 0, canonical program `A007570.P1833938303993982019`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(A000045(n))` (program `A007570.P1833938303993982019`, by `A007570.P1833938303993982019.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A007570 (n : ℕ) : ℤ :=
  A007570.P1833938303993982019.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(A000045(n))` (program `A007570.P1833938303993982019`, by `A007570.P1833938303993982019.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A007570.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A007598.P12226372241189459830

`A000045(n)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A007598.P12226372241189459830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n ^ 2

end

end A007598.P12226372241189459830

noncomputable section

/-- A007598: Squared Fibonacci numbers: a(n) = F(n)^2 where F = A000045.

Offset 0, canonical program `A007598.P12226372241189459830`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n)²` (program `A007598.P12226372241189459830`, by `A007598.P12226372241189459830.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A007598 (n : ℕ) : ℤ :=
  A007598.P12226372241189459830.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n)²` (program `A007598.P12226372241189459830`, by `A007598.P12226372241189459830.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A007598.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A007887.P11938197841474887063

`A000045(n)%9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A007887.P11938197841474887063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 n) 9

end

end A007887.P11938197841474887063

noncomputable section

/-- A007887: a(n) = Fibonacci(n) mod 9.

Offset 0, canonical program `A007887.P11938197841474887063`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n)%9` (program `A007887.P11938197841474887063`, by `A007887.P11938197841474887063.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A007887 (n : ℕ) : ℤ :=
  A007887.P11938197841474887063.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n)%9` (program `A007887.P11938197841474887063`, by `A007887.P11938197841474887063.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A007887.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A008346.P8004040718753913505

`A000045(n)+(-1)^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A008346.P8004040718753913505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (-1) ^ n

end

end A008346.P8004040718753913505

noncomputable section

/-- A008346: a(n) = Fibonacci(n) + (-1)^n.

Offset 0, canonical program `A008346.P8004040718753913505`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n)+(-1)^n` (program `A008346.P8004040718753913505`, by `A008346.P8004040718753913505.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A008346 (n : ℕ) : ℤ :=
  A008346.P8004040718753913505.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n)+(-1)^n` (program `A008346.P8004040718753913505`, by `A008346.P8004040718753913505.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A008346.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A008466.P13225017953189168160

`2^n-A000045(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A008466.P13225017953189168160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A000045 (n + 2)

end

end A008466.P13225017953189168160

noncomputable section

/-- A008466: a(n) = 2^n - Fibonacci(n+2).

Offset 0, canonical program `A008466.P13225017953189168160`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n-A000045(n+2)` (program `A008466.P13225017953189168160`, by `A008466.P13225017953189168160.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A008466 (n : ℕ) : ℤ :=
  A008466.P13225017953189168160.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n-A000045(n+2)` (program `A008466.P13225017953189168160`, by `A008466.P13225017953189168160.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A008466.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A008864.P9177617808325052279

`A000040(n+1)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A008864.P9177617808325052279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 1

end

end A008864.P9177617808325052279

noncomputable section

/-- A008864: a(n) = prime(n) + 1.

Offset 1, canonical program `A008864.P9177617808325052279`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)+1` (program `A008864.P9177617808325052279`, by `A008864.P9177617808325052279.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A008864 (n : ℕ) : ℤ :=
  A008864.P9177617808325052279.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)+1` (program `A008864.P9177617808325052279`, by `A008864.P9177617808325052279.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A008864.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A009194.P14144043731484759061

`gcd(n+1, A000203(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A009194.P14144043731484759061
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A000203 (n + 1))

end

end A009194.P14144043731484759061

noncomputable section

/-- A009194: a(n) = gcd(n, sigma(n)).

Offset 1, canonical program `A009194.P14144043731484759061`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(n+1, A000203(n+1))` (program `A009194.P14144043731484759061`, by `A009194.P14144043731484759061.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A009194 (n : ℕ) : ℤ :=
  (A009194.P14144043731484759061.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(n+1, A000203(n+1))` (program `A009194.P14144043731484759061`, by `A009194.P14144043731484759061.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A009194.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A009242.P16226750933835637488

`lcm(n+1, A000203(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A009242.P16226750933835637488
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A000203 (n + 1))

end

end A009242.P16226750933835637488

noncomputable section

/-- A009242: a(n) = lcm(n, sigma(n)).

Offset 1, canonical program `A009242.P16226750933835637488`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `lcm(n+1, A000203(n+1))` (program `A009242.P16226750933835637488`, by `A009242.P16226750933835637488.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A009242 (n : ℕ) : ℤ :=
  (A009242.P16226750933835637488.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `lcm(n+1, A000203(n+1))` (program `A009242.P16226750933835637488`, by `A009242.P16226750933835637488.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A009242.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A011756.P1364698667892366694

`A000040((n+1)*(n+2)/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A011756.P1364698667892366694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway (((n + 1) * (n + 2) : ℚ) / 2)).toNat

end

end A011756.P1364698667892366694

noncomputable section

/-- A011756: a(n) = prime(n*(n+1)/2).

Offset 1, canonical program `A011756.P1364698667892366694`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040((n+1)*(n+2)/2)` (program `A011756.P1364698667892366694`, by `A011756.P1364698667892366694.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A011756 (n : ℕ) : ℤ :=
  A011756.P1364698667892366694.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040((n+1)*(n+2)/2)` (program `A011756.P1364698667892366694`, by `A011756.P1364698667892366694.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A011756.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A011757.P9513370563335708444

`A000040((n+1)²)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A011757.P9513370563335708444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((n + 1) ^ 2)

end

end A011757.P9513370563335708444

noncomputable section

/-- A011757: a(n) = prime(n^2).

Offset 1, canonical program `A011757.P9513370563335708444`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040((n+1)²)` (program `A011757.P9513370563335708444`, by `A011757.P9513370563335708444.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A011757 (n : ℕ) : ℤ :=
  A011757.P9513370563335708444.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040((n+1)²)` (program `A011757.P9513370563335708444`, by `A011757.P9513370563335708444.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A011757.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A014283.P650192608423277431

`A000045(n)-n²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A014283.P650192608423277431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - (n ^ 2 : ℤ)

end

end A014283.P650192608423277431

noncomputable section

/-- A014283: a(n) = Fibonacci(n) - n^2.

Offset 0, canonical program `A014283.P650192608423277431`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n)-n²` (program `A014283.P650192608423277431`, by `A014283.P650192608423277431.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A014283 (n : ℕ) : ℤ :=
  A014283.P650192608423277431.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n)-n²` (program `A014283.P650192608423277431`, by `A014283.P650192608423277431.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A014283.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A014445.P8589215430509792563

`A000045(3*n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A014445.P8589215430509792563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (3 * n)

end

end A014445.P8589215430509792563

noncomputable section

/-- A014445: Even Fibonacci numbers; or, Fibonacci(3*n).

Offset 0, canonical program `A014445.P8589215430509792563`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(3*n)` (program `A014445.P8589215430509792563`, by `A014445.P8589215430509792563.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A014445 (n : ℕ) : ℤ :=
  A014445.P8589215430509792563.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(3*n)` (program `A014445.P8589215430509792563`, by `A014445.P8589215430509792563.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A014445.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A014689.P6286543075765329050

`A000040(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A014689.P6286543075765329050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (n + 1 : ℤ)

end

end A014689.P6286543075765329050

noncomputable section

/-- A014689: a(n) = prime(n)-n, the number of nonprimes less than prime(n).

Offset 1, canonical program `A014689.P6286543075765329050`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)-(n+1)` (program `A014689.P6286543075765329050`, by `A014689.P6286543075765329050.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A014689 (n : ℕ) : ℤ :=
  A014689.P6286543075765329050.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)-(n+1)` (program `A014689.P6286543075765329050`, by `A014689.P6286543075765329050.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A014689.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A014690.P15659938011012629912

`n+1+A000040(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A014690.P15659938011012629912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A000040 (n + 2)

end

end A014690.P15659938011012629912

noncomputable section

/-- A014690: a(n) = n + prime(n+1).

Offset 1, canonical program `A014690.P15659938011012629912`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1+A000040(n+2)` (program `A014690.P15659938011012629912`, by `A014690.P15659938011012629912.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A014690 (n : ℕ) : ℤ :=
  A014690.P15659938011012629912.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1+A000040(n+2)` (program `A014690.P15659938011012629912`, by `A014690.P15659938011012629912.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A014690.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A014692.P2004927767556050134

`A000040(n+1)-n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A014692.P2004927767556050134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (n : ℤ)

end

end A014692.P2004927767556050134

noncomputable section

/-- A014692: a(n) = prime(n) - (n-1).

Offset 1, canonical program `A014692.P2004927767556050134`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)-n` (program `A014692.P2004927767556050134`, by `A014692.P2004927767556050134.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A014692 (n : ℕ) : ℤ :=
  A014692.P2004927767556050134.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)-n` (program `A014692.P2004927767556050134`, by `A014692.P2004927767556050134.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A014692.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A014694.P1985719910170416763

`A000040(n+2)-(-1)^(n+1)*ceil((n+1)/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A014694.P1985719910170416763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - (-1) ^ (n + 1) * ⌈(n + 1 : ℚ) / 2⌉

end

end A014694.P1985719910170416763

noncomputable section

/-- A014694: a(n) = prime(n+1) - (-1)^n*ceiling(n/2).

Offset 1, canonical program `A014694.P1985719910170416763`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+2)-(-1)^(n+1)*ceil((n+1)/2)` (program `A014694.P1985719910170416763`, by `A014694.P1985719910170416763.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A014694 (n : ℕ) : ℤ :=
  A014694.P1985719910170416763.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+2)-(-1)^(n+1)*ceil((n+1)/2)` (program `A014694.P1985719910170416763`, by `A014694.P1985719910170416763.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A014694.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A014965.P11839716759523407531

`lcm(n+1, A000045(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A014965.P11839716759523407531
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A000045 (n + 1))

end

end A014965.P11839716759523407531

noncomputable section

/-- A014965: a(n) = lcm(n, Fibonacci(n)).

Offset 1, canonical program `A014965.P11839716759523407531`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `lcm(n+1, A000045(n+1))` (program `A014965.P11839716759523407531`, by `A014965.P11839716759523407531.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A014965 (n : ℕ) : ℤ :=
  (A014965.P11839716759523407531.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `lcm(n+1, A000045(n+1))` (program `A014965.P11839716759523407531`, by `A014965.P11839716759523407531.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A014965.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A018249.P2453322492412683053

`A000040(2^n)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A018249.P2453322492412683053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (2 ^ n) - 1

end

end A018249.P2453322492412683053

noncomputable section

/-- A018249: a(n) = prime(2^n)-1.

Offset 0, canonical program `A018249.P2453322492412683053`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(2^n)-1` (program `A018249.P2453322492412683053`, by `A018249.P2453322492412683053.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A018249 (n : ℕ) : ℤ :=
  A018249.P2453322492412683053.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(2^n)-1` (program `A018249.P2453322492412683053`, by `A018249.P2453322492412683053.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A018249.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022087.P15759272974687768527

`4*A000045(n)`
-/

namespace A022087.P15759272974687768527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000045 n

end

end A022087.P15759272974687768527

noncomputable section

/-- A022087: Fibonacci sequence beginning 0, 4.

Offset 0, canonical program `A022087.P15759272974687768527`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022087.anchor : A022087 0 = 0 ∧ A022087 1 = 4 ∧ ∀ n, A022087 (n + 2) = A022087 (n + 1) + A022087 n` in `Proof.A022.A022087`. -/
def A022087 (n : ℕ) : ℤ :=
  A022087.P15759272974687768527.a n

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022087.anchor : A022087 0 = 0 ∧ A022087 1 = 4 ∧ ∀ n, A022087 (n + 2) = A022087 (n + 1) + A022087 n` in `Proof.A022.A022087`. -/
def A022087.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022088.P13238787405379109622

`5*A000045(n)`
-/

namespace A022088.P13238787405379109622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A000045 n

end

end A022088.P13238787405379109622

noncomputable section

/-- A022088: Fibonacci sequence beginning 0, 5.

Offset 0, canonical program `A022088.P13238787405379109622`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022088.anchor : A022088 0 = 0 ∧ A022088 1 = 5 ∧ ∀ n, A022088 (n + 2) = A022088 (n + 1) + A022088 n` in `Proof.A022.A022088`. -/
def A022088 (n : ℕ) : ℤ :=
  A022088.P13238787405379109622.a n

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022088.anchor : A022088 0 = 0 ∧ A022088 1 = 5 ∧ ∀ n, A022088 (n + 2) = A022088 (n + 1) + A022088 n` in `Proof.A022.A022088`. -/
def A022088.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022089.P2526634343507700002

`6*A000045(n)`
-/

namespace A022089.P2526634343507700002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A000045 n

end

end A022089.P2526634343507700002

noncomputable section

/-- A022089: Fibonacci sequence beginning 0, 6.

Offset 0, canonical program `A022089.P2526634343507700002`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022089.anchor : A022089 0 = 0 ∧ A022089 1 = 6 ∧ ∀ n, A022089 (n + 2) = A022089 (n + 1) + A022089 n` in `Proof.A022.A022089`. -/
def A022089 (n : ℕ) : ℤ :=
  A022089.P2526634343507700002.a n

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022089.anchor : A022089 0 = 0 ∧ A022089 1 = 6 ∧ ∀ n, A022089 (n + 2) = A022089 (n + 1) + A022089 n` in `Proof.A022.A022089`. -/
def A022089.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022090.P11598192138682998904

`7*A000045(n)`
-/

namespace A022090.P11598192138682998904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A000045 n

end

end A022090.P11598192138682998904

noncomputable section

/-- A022090: Fibonacci sequence beginning 0, 7.

Offset 0, canonical program `A022090.P11598192138682998904`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022090.anchor : A022090 0 = 0 ∧ A022090 1 = 7 ∧ ∀ n, A022090 (n + 2) = A022090 (n + 1) + A022090 n` in `Proof.A022.A022090`. -/
def A022090 (n : ℕ) : ℤ :=
  A022090.P11598192138682998904.a n

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022090.anchor : A022090 0 = 0 ∧ A022090 1 = 7 ∧ ∀ n, A022090 (n + 2) = A022090 (n + 1) + A022090 n` in `Proof.A022.A022090`. -/
def A022090.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022091.P8466803900234881799

`8*A000045(n)`
-/

namespace A022091.P8466803900234881799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A000045 n

end

end A022091.P8466803900234881799

noncomputable section

/-- A022091: Fibonacci sequence beginning 0, 8.

Offset 0, canonical program `A022091.P8466803900234881799`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022091.anchor : A022091 0 = 0 ∧ A022091 1 = 8 ∧ ∀ n, A022091 (n + 2) = A022091 (n + 1) + A022091 n` in `Proof.A022.A022091`. -/
def A022091 (n : ℕ) : ℤ :=
  A022091.P8466803900234881799.a n

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022091.anchor : A022091 0 = 0 ∧ A022091 1 = 8 ∧ ∀ n, A022091 (n + 2) = A022091 (n + 1) + A022091 n` in `Proof.A022.A022091`. -/
def A022091.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022092.P12154545116690058814

`9*A000045(n)`
-/

namespace A022092.P12154545116690058814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A000045 n

end

end A022092.P12154545116690058814

noncomputable section

/-- A022092: Fibonacci sequence beginning 0, 9.

Offset 0, canonical program `A022092.P12154545116690058814`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022092.anchor : A022092 0 = 0 ∧ A022092 1 = 9 ∧ ∀ n, A022092 (n + 2) = A022092 (n + 1) + A022092 n` in `Proof.A022.A022092`. -/
def A022092 (n : ℕ) : ℤ :=
  A022092.P12154545116690058814.a n

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022092.anchor : A022092 0 = 0 ∧ A022092 1 = 9 ∧ ∀ n, A022092 (n + 2) = A022092 (n + 1) + A022092 n` in `Proof.A022.A022092`. -/
def A022092.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022093.P316154037428549231

`10*A000045(n)`
-/

namespace A022093.P316154037428549231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A000045 n

end

end A022093.P316154037428549231

noncomputable section

/-- A022093: Fibonacci sequence beginning 0, 10.

Offset 0, canonical program `A022093.P316154037428549231`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022093.anchor : A022093 0 = 0 ∧ A022093 1 = 10 ∧ ∀ n, A022093 (n + 2) = A022093 (n + 1) + A022093 n` in `Proof.A022.A022093`. -/
def A022093 (n : ℕ) : ℤ :=
  A022093.P316154037428549231.a n

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022093.anchor : A022093 0 = 0 ∧ A022093 1 = 10 ∧ ∀ n, A022093 (n + 2) = A022093 (n + 1) + A022093 n` in `Proof.A022.A022093`. -/
def A022093.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022115.P15621070677135967936

`8*A000045(n)+A000045(n+3)`
-/

namespace A022115.P15621070677135967936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A000045 n + A000045 (n + 3)

end

end A022115.P15621070677135967936

noncomputable section

/-- A022115: Fibonacci sequence beginning 2, 11.

Offset 0, canonical program `A022115.P15621070677135967936`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022115.anchor : A022115 0 = 2 ∧ A022115 1 = 11 ∧ ∀ n, A022115 (n + 2) = A022115 (n + 1) + A022115 n` in `Proof.A022.A022115`. -/
def A022115 (n : ℕ) : ℤ :=
  A022115.P15621070677135967936.a n

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022115.anchor : A022115 0 = 2 ∧ A022115 1 = 11 ∧ ∀ n, A022115 (n + 2) = A022115 (n + 1) + A022115 n` in `Proof.A022.A022115`. -/
def A022115.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022116.P15979046254867098418

`2*A000045(n+2)+9*A000045(n)`
-/

namespace A022116.P15979046254867098418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 (n + 2) + 9 * A000045 n

end

end A022116.P15979046254867098418

noncomputable section

/-- A022116: Fibonacci sequence beginning 2, 13.

Offset 0, canonical program `A022116.P15979046254867098418`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022116.anchor : A022116 0 = 2 ∧ A022116 1 = 13 ∧ ∀ n, A022116 (n + 2) = A022116 (n + 1) + A022116 n` in `Proof.A022.A022116`. -/
def A022116 (n : ℕ) : ℤ :=
  A022116.P15979046254867098418.a n

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022116.anchor : A022116 0 = 2 ∧ A022116 1 = 13 ∧ ∀ n, A022116 (n + 2) = A022116 (n + 1) + A022116 n` in `Proof.A022.A022116`. -/
def A022116.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022120.P5426568397649837323

`4*A000045(n+2)-A000045(n+1)`
-/

namespace A022120.P5426568397649837323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000045 (n + 2) - A000045 (n + 1)

end

end A022120.P5426568397649837323

noncomputable section

/-- A022120: Fibonacci sequence beginning 3, 7.

Offset 0, canonical program `A022120.P5426568397649837323`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022120.anchor : A022120 0 = 3 ∧ A022120 1 = 7 ∧ ∀ n, A022120 (n + 2) = A022120 (n + 1) + A022120 n` in `Proof.A022.A022120`. -/
def A022120 (n : ℕ) : ℤ :=
  A022120.P5426568397649837323.a n

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022120.anchor : A022120 0 = 3 ∧ A022120 1 = 7 ∧ ∀ n, A022120 (n + 2) = A022120 (n + 1) + A022120 n` in `Proof.A022.A022120`. -/
def A022120.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022130.P15987238540814688710

`4*A000045(n+2)+A000045(n)`
-/

namespace A022130.P15987238540814688710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000045 (n + 2) + A000045 n

end

end A022130.P15987238540814688710

noncomputable section

/-- A022130: Fibonacci sequence beginning 4,9.

Offset 0, canonical program `A022130.P15987238540814688710`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022130.anchor : A022130 0 = 4 ∧ A022130 1 = 9 ∧ ∀ n, A022130 (n + 2) = A022130 (n + 1) + A022130 n` in `Proof.A022.A022130`. -/
def A022130 (n : ℕ) : ℤ :=
  A022130.P15987238540814688710.a n

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022130.anchor : A022130 0 = 4 ∧ A022130 1 = 9 ∧ ∀ n, A022130 (n + 2) = A022130 (n + 1) + A022130 n` in `Proof.A022.A022130`. -/
def A022130.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022345.P11331629753888677578

`11*A000045(n)`
-/

namespace A022345.P11331629753888677578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A000045 n

end

end A022345.P11331629753888677578

noncomputable section

/-- A022345: Fibonacci sequence beginning 0, 11.

Offset 0, canonical program `A022345.P11331629753888677578`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022345.anchor : A022345 0 = 0 ∧ A022345 1 = 11 ∧ ∀ n, A022345 (n + 2) = A022345 (n + 1) + A022345 n` in `Proof.A022.A022345`. -/
def A022345 (n : ℕ) : ℤ :=
  A022345.P11331629753888677578.a n

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022345.anchor : A022345 0 = 0 ∧ A022345 1 = 11 ∧ ∀ n, A022345 (n + 2) = A022345 (n + 1) + A022345 n` in `Proof.A022.A022345`. -/
def A022345.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022346.P3506680417996539901

`12*A000045(n)`
-/

namespace A022346.P3506680417996539901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A000045 n

end

end A022346.P3506680417996539901

noncomputable section

/-- A022346: Fibonacci sequence beginning 0, 12.

Offset 0, canonical program `A022346.P3506680417996539901`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022346.anchor : A022346 0 = 0 ∧ A022346 1 = 12 ∧ ∀ n, A022346 (n + 2) = A022346 (n + 1) + A022346 n` in `Proof.A022.A022346`. -/
def A022346 (n : ℕ) : ℤ :=
  A022346.P3506680417996539901.a n

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022346.anchor : A022346 0 = 0 ∧ A022346 1 = 12 ∧ ∀ n, A022346 (n + 2) = A022346 (n + 1) + A022346 n` in `Proof.A022.A022346`. -/
def A022346.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022347.P1041826028407669146

`13*A000045(n)`
-/

namespace A022347.P1041826028407669146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * A000045 n

end

end A022347.P1041826028407669146

noncomputable section

/-- A022347: Fibonacci sequence beginning 0, 13.

Offset 0, canonical program `A022347.P1041826028407669146`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022347.anchor : A022347 0 = 0 ∧ A022347 1 = 13 ∧ ∀ n, A022347 (n + 2) = A022347 (n + 1) + A022347 n` in `Proof.A022.A022347`. -/
def A022347 (n : ℕ) : ℤ :=
  A022347.P1041826028407669146.a n

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022347.anchor : A022347 0 = 0 ∧ A022347 1 = 13 ∧ ∀ n, A022347 (n + 2) = A022347 (n + 1) + A022347 n` in `Proof.A022.A022347`. -/
def A022347.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022348.P5230939691613285964

`14*A000045(n)`
-/

namespace A022348.P5230939691613285964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  14 * A000045 n

end

end A022348.P5230939691613285964

noncomputable section

/-- A022348: Fibonacci sequence beginning 0, 14.

Offset 0, canonical program `A022348.P5230939691613285964`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022348.anchor : A022348 0 = 0 ∧ A022348 1 = 14 ∧ ∀ n, A022348 (n + 2) = A022348 (n + 1) + A022348 n` in `Proof.A022.A022348`. -/
def A022348 (n : ℕ) : ℤ :=
  A022348.P5230939691613285964.a n

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022348.anchor : A022348 0 = 0 ∧ A022348 1 = 14 ∧ ∀ n, A022348 (n + 2) = A022348 (n + 1) + A022348 n` in `Proof.A022.A022348`. -/
def A022348.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022349.P10870212278406772653

`15*A000045(n)`
-/

namespace A022349.P10870212278406772653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 * A000045 n

end

end A022349.P10870212278406772653

noncomputable section

/-- A022349: Fibonacci sequence beginning 0, 15.

Offset 0, canonical program `A022349.P10870212278406772653`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022349.anchor : A022349 0 = 0 ∧ A022349 1 = 15 ∧ ∀ n, A022349 (n + 2) = A022349 (n + 1) + A022349 n` in `Proof.A022.A022349`. -/
def A022349 (n : ℕ) : ℤ :=
  A022349.P10870212278406772653.a n

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022349.anchor : A022349 0 = 0 ∧ A022349 1 = 15 ∧ ∀ n, A022349 (n + 2) = A022349 (n + 1) + A022349 n` in `Proof.A022.A022349`. -/
def A022349.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022350.P3992686559429308744

`16*A000045(n)`
-/

namespace A022350.P3992686559429308744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A000045 n

end

end A022350.P3992686559429308744

noncomputable section

/-- A022350: Fibonacci sequence beginning 0, 16.

Offset 0, canonical program `A022350.P3992686559429308744`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022350.anchor : A022350 0 = 0 ∧ A022350 1 = 16 ∧ ∀ n, A022350 (n + 2) = A022350 (n + 1) + A022350 n` in `Proof.A022.A022350`. -/
def A022350 (n : ℕ) : ℤ :=
  A022350.P3992686559429308744.a n

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022350.anchor : A022350 0 = 0 ∧ A022350 1 = 16 ∧ ∀ n, A022350 (n + 2) = A022350 (n + 1) + A022350 n` in `Proof.A022.A022350`. -/
def A022350.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022351.P1553212968435598646

`17*A000045(n)`
-/

namespace A022351.P1553212968435598646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 * A000045 n

end

end A022351.P1553212968435598646

noncomputable section

/-- A022351: Fibonacci sequence beginning 0, 17.

Offset 0, canonical program `A022351.P1553212968435598646`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022351.anchor : A022351 0 = 0 ∧ A022351 1 = 17 ∧ ∀ n, A022351 (n + 2) = A022351 (n + 1) + A022351 n` in `Proof.A022.A022351`. -/
def A022351 (n : ℕ) : ℤ :=
  A022351.P1553212968435598646.a n

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022351.anchor : A022351 0 = 0 ∧ A022351 1 = 17 ∧ ∀ n, A022351 (n + 2) = A022351 (n + 1) + A022351 n` in `Proof.A022.A022351`. -/
def A022351.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022352.P10895253600584194026

`18*A000045(n)`
-/

namespace A022352.P10895253600584194026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  18 * A000045 n

end

end A022352.P10895253600584194026

noncomputable section

/-- A022352: Fibonacci sequence beginning 0, 18.

Offset 0, canonical program `A022352.P10895253600584194026`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022352.anchor : A022352 0 = 0 ∧ A022352 1 = 18 ∧ ∀ n, A022352 (n + 2) = A022352 (n + 1) + A022352 n` in `Proof.A022.A022352`. -/
def A022352 (n : ℕ) : ℤ :=
  A022352.P10895253600584194026.a n

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022352.anchor : A022352 0 = 0 ∧ A022352 1 = 18 ∧ ∀ n, A022352 (n + 2) = A022352 (n + 1) + A022352 n` in `Proof.A022.A022352`. -/
def A022352.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022353.P4384315512974334384

`19*A000045(n)`
-/

namespace A022353.P4384315512974334384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  19 * A000045 n

end

end A022353.P4384315512974334384

noncomputable section

/-- A022353: Fibonacci sequence beginning 0, 19.

Offset 0, canonical program `A022353.P4384315512974334384`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022353.anchor : A022353 0 = 0 ∧ A022353 1 = 19 ∧ ∀ n, A022353 (n + 2) = A022353 (n + 1) + A022353 n` in `Proof.A022.A022353`. -/
def A022353 (n : ℕ) : ℤ :=
  A022353.P4384315512974334384.a n

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022353.anchor : A022353 0 = 0 ∧ A022353 1 = 19 ∧ ∀ n, A022353 (n + 2) = A022353 (n + 1) + A022353 n` in `Proof.A022.A022353`. -/
def A022353.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022354.P2497390260056676203

`20*A000045(n)`
-/

namespace A022354.P2497390260056676203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  20 * A000045 n

end

end A022354.P2497390260056676203

noncomputable section

/-- A022354: Fibonacci sequence beginning 0, 20.

Offset 0, canonical program `A022354.P2497390260056676203`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022354.anchor : A022354 0 = 0 ∧ A022354 1 = 20 ∧ ∀ n, A022354 (n + 2) = A022354 (n + 1) + A022354 n` in `Proof.A022.A022354`. -/
def A022354 (n : ℕ) : ℤ :=
  A022354.P2497390260056676203.a n

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022354.anchor : A022354 0 = 0 ∧ A022354 1 = 20 ∧ ∀ n, A022354 (n + 2) = A022354 (n + 1) + A022354 n` in `Proof.A022.A022354`. -/
def A022354.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022356.P14674045787055345271

`22*A000045(n)`
-/

namespace A022356.P14674045787055345271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  22 * A000045 n

end

end A022356.P14674045787055345271

noncomputable section

/-- A022356: Fibonacci sequence beginning 0, 22.

Offset 0, canonical program `A022356.P14674045787055345271`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022356.anchor : A022356 0 = 0 ∧ A022356 1 = 22 ∧ ∀ n, A022356 (n + 2) = A022356 (n + 1) + A022356 n` in `Proof.A022.A022356`. -/
def A022356 (n : ℕ) : ℤ :=
  A022356.P14674045787055345271.a n

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022356.anchor : A022356 0 = 0 ∧ A022356 1 = 22 ∧ ∀ n, A022356 (n + 2) = A022356 (n + 1) + A022356 n` in `Proof.A022.A022356`. -/
def A022356.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022357.P7660014603306002529

`23*A000045(n)`
-/

namespace A022357.P7660014603306002529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  23 * A000045 n

end

end A022357.P7660014603306002529

noncomputable section

/-- A022357: Fibonacci sequence beginning 0, 23.

Offset 0, canonical program `A022357.P7660014603306002529`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022357.anchor : A022357 0 = 0 ∧ A022357 1 = 23 ∧ ∀ n, A022357 (n + 2) = A022357 (n + 1) + A022357 n` in `Proof.A022.A022357`. -/
def A022357 (n : ℕ) : ℤ :=
  A022357.P7660014603306002529.a n

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022357.anchor : A022357 0 = 0 ∧ A022357 1 = 23 ∧ ∀ n, A022357 (n + 2) = A022357 (n + 1) + A022357 n` in `Proof.A022.A022357`. -/
def A022357.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022358.P10093818309095177812

`24*A000045(n)`
-/

namespace A022358.P10093818309095177812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A000045 n

end

end A022358.P10093818309095177812

noncomputable section

/-- A022358: Fibonacci sequence beginning 0, 24.

Offset 0, canonical program `A022358.P10093818309095177812`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022358.anchor : A022358 0 = 0 ∧ A022358 1 = 24 ∧ ∀ n, A022358 (n + 2) = A022358 (n + 1) + A022358 n` in `Proof.A022.A022358`. -/
def A022358 (n : ℕ) : ℤ :=
  A022358.P10093818309095177812.a n

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022358.anchor : A022358 0 = 0 ∧ A022358 1 = 24 ∧ ∀ n, A022358 (n + 2) = A022358 (n + 1) + A022358 n` in `Proof.A022.A022358`. -/
def A022358.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022359.P5387251375738147609

`25*A000045(n)`
-/

namespace A022359.P5387251375738147609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  25 * A000045 n

end

end A022359.P5387251375738147609

noncomputable section

/-- A022359: Fibonacci sequence beginning 0, 25.

Offset 0, canonical program `A022359.P5387251375738147609`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022359.anchor : A022359 0 = 0 ∧ A022359 1 = 25 ∧ ∀ n, A022359 (n + 2) = A022359 (n + 1) + A022359 n` in `Proof.A022.A022359`. -/
def A022359 (n : ℕ) : ℤ :=
  A022359.P5387251375738147609.a n

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022359.anchor : A022359 0 = 0 ∧ A022359 1 = 25 ∧ ∀ n, A022359 (n + 2) = A022359 (n + 1) + A022359 n` in `Proof.A022.A022359`. -/
def A022359.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022360.P3825721097200071590

`26*A000045(n)`
-/

namespace A022360.P3825721097200071590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  26 * A000045 n

end

end A022360.P3825721097200071590

noncomputable section

/-- A022360: Fibonacci sequence beginning 0, 26.

Offset 0, canonical program `A022360.P3825721097200071590`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022360.anchor : A022360 0 = 0 ∧ A022360 1 = 26 ∧ ∀ n, A022360 (n + 2) = A022360 (n + 1) + A022360 n` in `Proof.A022.A022360`. -/
def A022360 (n : ℕ) : ℤ :=
  A022360.P3825721097200071590.a n

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022360.anchor : A022360 0 = 0 ∧ A022360 1 = 26 ∧ ∀ n, A022360 (n + 2) = A022360 (n + 1) + A022360 n` in `Proof.A022.A022360`. -/
def A022360.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022361.P9439601930716895092

`27*A000045(n)`
-/

namespace A022361.P9439601930716895092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  27 * A000045 n

end

end A022361.P9439601930716895092

noncomputable section

/-- A022361: Fibonacci sequence beginning 0, 27.

Offset 0, canonical program `A022361.P9439601930716895092`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022361.anchor : A022361 0 = 0 ∧ A022361 1 = 27 ∧ ∀ n, A022361 (n + 2) = A022361 (n + 1) + A022361 n` in `Proof.A022.A022361`. -/
def A022361 (n : ℕ) : ℤ :=
  A022361.P9439601930716895092.a n

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022361.anchor : A022361 0 = 0 ∧ A022361 1 = 27 ∧ ∀ n, A022361 (n + 2) = A022361 (n + 1) + A022361 n` in `Proof.A022.A022361`. -/
def A022361.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022362.P11876149498119894087

`28*A000045(n)`
-/

namespace A022362.P11876149498119894087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  28 * A000045 n

end

end A022362.P11876149498119894087

noncomputable section

/-- A022362: Fibonacci sequence beginning 0, 28.

Offset 0, canonical program `A022362.P11876149498119894087`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022362.anchor : A022362 0 = 0 ∧ A022362 1 = 28 ∧ ∀ n, A022362 (n + 2) = A022362 (n + 1) + A022362 n` in `Proof.A022.A022362`. -/
def A022362 (n : ℕ) : ℤ :=
  A022362.P11876149498119894087.a n

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022362.anchor : A022362 0 = 0 ∧ A022362 1 = 28 ∧ ∀ n, A022362 (n + 2) = A022362 (n + 1) + A022362 n` in `Proof.A022.A022362`. -/
def A022362.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022364.P14315637697114975476

`30*A000045(n)`
-/

namespace A022364.P14315637697114975476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  30 * A000045 n

end

end A022364.P14315637697114975476

noncomputable section

/-- A022364: Fibonacci sequence beginning 0, 30.

Offset 0, canonical program `A022364.P14315637697114975476`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022364.anchor : A022364 0 = 0 ∧ A022364 1 = 30 ∧ ∀ n, A022364 (n + 2) = A022364 (n + 1) + A022364 n` in `Proof.A022.A022364`. -/
def A022364 (n : ℕ) : ℤ :=
  A022364.P14315637697114975476.a n

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022364.anchor : A022364 0 = 0 ∧ A022364 1 = 30 ∧ ∀ n, A022364 (n + 2) = A022364 (n + 1) + A022364 n` in `Proof.A022.A022364`. -/
def A022364.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022365.P15230630190226812545

`31*A000045(n)`
-/

namespace A022365.P15230630190226812545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  31 * A000045 n

end

end A022365.P15230630190226812545

noncomputable section

/-- A022365: Fibonacci sequence beginning 0, 31.

Offset 0, canonical program `A022365.P15230630190226812545`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022365.anchor : A022365 0 = 0 ∧ A022365 1 = 31 ∧ ∀ n, A022365 (n + 2) = A022365 (n + 1) + A022365 n` in `Proof.A022.A022365`. -/
def A022365 (n : ℕ) : ℤ :=
  A022365.P15230630190226812545.a n

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022365.anchor : A022365 0 = 0 ∧ A022365 1 = 31 ∧ ∀ n, A022365 (n + 2) = A022365 (n + 1) + A022365 n` in `Proof.A022.A022365`. -/
def A022365.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022366.P2612584355768870922

`32*A000045(n)`
-/

namespace A022366.P2612584355768870922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  32 * A000045 n

end

end A022366.P2612584355768870922

noncomputable section

/-- A022366: Fibonacci sequence beginning 0, 32.

Offset 0, canonical program `A022366.P2612584355768870922`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022366.anchor : A022366 0 = 0 ∧ A022366 1 = 32 ∧ ∀ n, A022366 (n + 2) = A022366 (n + 1) + A022366 n` in `Proof.A022.A022366`. -/
def A022366 (n : ℕ) : ℤ :=
  A022366.P2612584355768870922.a n

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022366.anchor : A022366 0 = 0 ∧ A022366 1 = 32 ∧ ∀ n, A022366 (n + 2) = A022366 (n + 1) + A022366 n` in `Proof.A022.A022366`. -/
def A022366.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022385.P15307573853202509835

`4*A000045(n+2)+14*A000045(n)`
-/

namespace A022385.P15307573853202509835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000045 (n + 2) + 14 * A000045 n

end

end A022385.P15307573853202509835

noncomputable section

/-- A022385: Fibonacci sequence beginning 4, 22.

Offset 0, canonical program `A022385.P15307573853202509835`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022385.anchor : A022385 0 = 4 ∧ A022385 1 = 22 ∧ ∀ n, A022385 (n + 2) = A022385 (n + 1) + A022385 n` in `Proof.A022.A022385`. -/
def A022385 (n : ℕ) : ℤ :=
  A022385.P15307573853202509835.a n

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022385.anchor : A022385 0 = 4 ∧ A022385 1 = 22 ∧ ∀ n, A022385 (n + 2) = A022385 (n + 1) + A022385 n` in `Proof.A022.A022385`. -/
def A022385.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022386.P2397031079009450865

`4*A000045(n+2)+18*A000045(n)`
-/

namespace A022386.P2397031079009450865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000045 (n + 2) + 18 * A000045 n

end

end A022386.P2397031079009450865

noncomputable section

/-- A022386: Fibonacci sequence beginning 4, 26.

Offset 0, canonical program `A022386.P2397031079009450865`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022386.anchor : A022386 0 = 4 ∧ A022386 1 = 26 ∧ ∀ n, A022386 (n + 2) = A022386 (n + 1) + A022386 n` in `Proof.A022.A022386`. -/
def A022386 (n : ℕ) : ℤ :=
  A022386.P2397031079009450865.a n

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022386.anchor : A022386 0 = 4 ∧ A022386 1 = 26 ∧ ∀ n, A022386 (n + 2) = A022386 (n + 1) + A022386 n` in `Proof.A022.A022386`. -/
def A022386.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022387.P14480498463058112928

`4*A000045(n+2)+22*A000045(n)`
-/

namespace A022387.P14480498463058112928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000045 (n + 2) + 22 * A000045 n

end

end A022387.P14480498463058112928

noncomputable section

/-- A022387: Fibonacci sequence beginning 4, 30.

Offset 0, canonical program `A022387.P14480498463058112928`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022387.anchor : A022387 0 = 4 ∧ A022387 1 = 30 ∧ ∀ n, A022387 (n + 2) = A022387 (n + 1) + A022387 n` in `Proof.A022.A022387`. -/
def A022387 (n : ℕ) : ℤ :=
  A022387.P14480498463058112928.a n

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022387.anchor : A022387 0 = 4 ∧ A022387 1 = 30 ∧ ∀ n, A022387 (n + 2) = A022387 (n + 1) + A022387 n` in `Proof.A022.A022387`. -/
def A022387.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022388.P5916021880425732869

`6*A000045(n+2)+A000045(n)`
-/

namespace A022388.P5916021880425732869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A000045 (n + 2) + A000045 n

end

end A022388.P5916021880425732869

noncomputable section

/-- A022388: Fibonacci sequence beginning 6, 13.

Offset 0, canonical program `A022388.P5916021880425732869`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022388.anchor : A022388 0 = 6 ∧ A022388 1 = 13 ∧ ∀ n, A022388 (n + 2) = A022388 (n + 1) + A022388 n` in `Proof.A022.A022388`. -/
def A022388 (n : ℕ) : ℤ :=
  A022388.P5916021880425732869.a n

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022388.anchor : A022388 0 = 6 ∧ A022388 1 = 13 ∧ ∀ n, A022388 (n + 2) = A022388 (n + 1) + A022388 n` in `Proof.A022.A022388`. -/
def A022388.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022389.P8122599839796764298

`7*A000045(n+2)+A000045(n)`
-/

namespace A022389.P8122599839796764298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A000045 (n + 2) + A000045 n

end

end A022389.P8122599839796764298

noncomputable section

/-- A022389: Fibonacci sequence beginning 7, 15.

Offset 0, canonical program `A022389.P8122599839796764298`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022389.anchor : A022389 0 = 7 ∧ A022389 1 = 15 ∧ ∀ n, A022389 (n + 2) = A022389 (n + 1) + A022389 n` in `Proof.A022.A022389`. -/
def A022389 (n : ℕ) : ℤ :=
  A022389.P8122599839796764298.a n

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022389.anchor : A022389 0 = 7 ∧ A022389 1 = 15 ∧ ∀ n, A022389 (n + 2) = A022389 (n + 1) + A022389 n` in `Proof.A022.A022389`. -/
def A022389.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022390.P7615081049216638561

`8*A000045(n+2)+A000045(n)`
-/

namespace A022390.P7615081049216638561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A000045 (n + 2) + A000045 n

end

end A022390.P7615081049216638561

noncomputable section

/-- A022390: Fibonacci sequence beginning 8, 17.

Offset 0, canonical program `A022390.P7615081049216638561`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022390.anchor : A022390 0 = 8 ∧ A022390 1 = 17 ∧ ∀ n, A022390 (n + 2) = A022390 (n + 1) + A022390 n` in `Proof.A022.A022390`. -/
def A022390 (n : ℕ) : ℤ :=
  A022390.P7615081049216638561.a n

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022390.anchor : A022390 0 = 8 ∧ A022390 1 = 17 ∧ ∀ n, A022390 (n + 2) = A022390 (n + 1) + A022390 n` in `Proof.A022.A022390`. -/
def A022390.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022394.P9930325443307153468

`A000045(n+2)+22*A000045(n)`
-/

namespace A022394.P9930325443307153468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) + 22 * A000045 n

end

end A022394.P9930325443307153468

noncomputable section

/-- A022394: Fibonacci sequence beginning 1, 24.

Offset 0, canonical program `A022394.P9930325443307153468`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022394.anchor : A022394 0 = 1 ∧ A022394 1 = 24 ∧ ∀ n, A022394 (n + 2) = A022394 (n + 1) + A022394 n` in `Proof.A022.A022394`. -/
def A022394 (n : ℕ) : ℤ :=
  A022394.P9930325443307153468.a n

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022394.anchor : A022394 0 = 1 ∧ A022394 1 = 24 ∧ ∀ n, A022394 (n + 2) = A022394 (n + 1) + A022394 n` in `Proof.A022.A022394`. -/
def A022394.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022395.P4004029521583966980

`A000045(n+2)+23*A000045(n)`
-/

namespace A022395.P4004029521583966980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) + 23 * A000045 n

end

end A022395.P4004029521583966980

noncomputable section

/-- A022395: Fibonacci sequence beginning 1, 25.

Offset 0, canonical program `A022395.P4004029521583966980`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022395.anchor : A022395 0 = 1 ∧ A022395 1 = 25 ∧ ∀ n, A022395 (n + 2) = A022395 (n + 1) + A022395 n` in `Proof.A022.A022395`. -/
def A022395 (n : ℕ) : ℤ :=
  A022395.P4004029521583966980.a n

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022395.anchor : A022395 0 = 1 ∧ A022395 1 = 25 ∧ ∀ n, A022395 (n + 2) = A022395 (n + 1) + A022395 n` in `Proof.A022.A022395`. -/
def A022395.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022396.P15090442694711199561

`A000045(n+2)+24*A000045(n)`
-/

namespace A022396.P15090442694711199561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) + 24 * A000045 n

end

end A022396.P15090442694711199561

noncomputable section

/-- A022396: Fibonacci sequence beginning 1, 26.

Offset 0, canonical program `A022396.P15090442694711199561`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022396.anchor : A022396 0 = 1 ∧ A022396 1 = 26 ∧ ∀ n, A022396 (n + 2) = A022396 (n + 1) + A022396 n` in `Proof.A022.A022396`. -/
def A022396 (n : ℕ) : ℤ :=
  A022396.P15090442694711199561.a n

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022396.anchor : A022396 0 = 1 ∧ A022396 1 = 26 ∧ ∀ n, A022396 (n + 2) = A022396 (n + 1) + A022396 n` in `Proof.A022.A022396`. -/
def A022396.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022397.P4737195324922085684

`A000045(n+2)+25*A000045(n)`
-/

namespace A022397.P4737195324922085684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) + 25 * A000045 n

end

end A022397.P4737195324922085684

noncomputable section

/-- A022397: Fibonacci sequence beginning 1, 27.

Offset 0, canonical program `A022397.P4737195324922085684`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022397.anchor : A022397 0 = 1 ∧ A022397 1 = 27 ∧ ∀ n, A022397 (n + 2) = A022397 (n + 1) + A022397 n` in `Proof.A022.A022397`. -/
def A022397 (n : ℕ) : ℤ :=
  A022397.P4737195324922085684.a n

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022397.anchor : A022397 0 = 1 ∧ A022397 1 = 27 ∧ ∀ n, A022397 (n + 2) = A022397 (n + 1) + A022397 n` in `Proof.A022.A022397`. -/
def A022397.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022398.P18208586573942108252

`A000045(n+2)+26*A000045(n)`
-/

namespace A022398.P18208586573942108252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) + 26 * A000045 n

end

end A022398.P18208586573942108252

noncomputable section

/-- A022398: Fibonacci sequence beginning 1, 28.

Offset 0, canonical program `A022398.P18208586573942108252`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022398.anchor : A022398 0 = 1 ∧ A022398 1 = 28 ∧ ∀ n, A022398 (n + 2) = A022398 (n + 1) + A022398 n` in `Proof.A022.A022398`. -/
def A022398 (n : ℕ) : ℤ :=
  A022398.P18208586573942108252.a n

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022398.anchor : A022398 0 = 1 ∧ A022398 1 = 28 ∧ ∀ n, A022398 (n + 2) = A022398 (n + 1) + A022398 n` in `Proof.A022.A022398`. -/
def A022398.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022399.P4935257256329762216

`A000045(n+2)+27*A000045(n)`
-/

namespace A022399.P4935257256329762216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) + 27 * A000045 n

end

end A022399.P4935257256329762216

noncomputable section

/-- A022399: Fibonacci sequence beginning 1, 29.

Offset 0, canonical program `A022399.P4935257256329762216`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022399.anchor : A022399 0 = 1 ∧ A022399 1 = 29 ∧ ∀ n, A022399 (n + 2) = A022399 (n + 1) + A022399 n` in `Proof.A022.A022399`. -/
def A022399 (n : ℕ) : ℤ :=
  A022399.P4935257256329762216.a n

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022399.anchor : A022399 0 = 1 ∧ A022399 1 = 29 ∧ ∀ n, A022399 (n + 2) = A022399 (n + 1) + A022399 n` in `Proof.A022.A022399`. -/
def A022399.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022400.P11786219680503181345

`A000045(n+2)+28*A000045(n)`
-/

namespace A022400.P11786219680503181345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) + 28 * A000045 n

end

end A022400.P11786219680503181345

noncomputable section

/-- A022400: Fibonacci sequence beginning 1, 30.

Offset 0, canonical program `A022400.P11786219680503181345`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022400.anchor : A022400 0 = 1 ∧ A022400 1 = 30 ∧ ∀ n, A022400 (n + 2) = A022400 (n + 1) + A022400 n` in `Proof.A022.A022400`. -/
def A022400 (n : ℕ) : ℤ :=
  A022400.P11786219680503181345.a n

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022400.anchor : A022400 0 = 1 ∧ A022400 1 = 30 ∧ ∀ n, A022400 (n + 2) = A022400 (n + 1) + A022400 n` in `Proof.A022.A022400`. -/
def A022400.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022401.P9589030317855516827

`A000045(n+2)+29*A000045(n)`
-/

namespace A022401.P9589030317855516827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) + 29 * A000045 n

end

end A022401.P9589030317855516827

noncomputable section

/-- A022401: Fibonacci sequence beginning 1, 31.

Offset 0, canonical program `A022401.P9589030317855516827`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022401.anchor : A022401 0 = 1 ∧ A022401 1 = 31 ∧ ∀ n, A022401 (n + 2) = A022401 (n + 1) + A022401 n` in `Proof.A022.A022401`. -/
def A022401 (n : ℕ) : ℤ :=
  A022401.P9589030317855516827.a n

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022401.anchor : A022401 0 = 1 ∧ A022401 1 = 31 ∧ ∀ n, A022401 (n + 2) = A022401 (n + 1) + A022401 n` in `Proof.A022.A022401`. -/
def A022401.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022457.P17398730557994448635

`A000040(2*(n+1))%A000040(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022457.P17398730557994448635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (2 * (n + 1))) (A000040 (n + 1))

end

end A022457.P17398730557994448635

noncomputable section

/-- A022457: a(n) = prime(2n) mod prime(n).

Offset 1, canonical program `A022457.P17398730557994448635`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(2*(n+1))%A000040(n+1)` (program `A022457.P17398730557994448635`, by `A022457.P17398730557994448635.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A022457 (n : ℕ) : ℤ :=
  A022457.P17398730557994448635.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(2*(n+1))%A000040(n+1)` (program `A022457.P17398730557994448635`, by `A022457.P17398730557994448635.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A022457.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022458.P14071462587909011347

`A000040(2*(n+1)-1)%A000040(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022458.P14071462587909011347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (2 * (n + 1) - 1)) (A000040 (n + 1))

end

end A022458.P14071462587909011347

noncomputable section

/-- A022458: a(n) = prime(2n-1) mod prime(n).

Offset 1, canonical program `A022458.P14071462587909011347`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(2*(n+1)-1)%A000040(n+1)` (program `A022458.P14071462587909011347`, by `A022458.P14071462587909011347.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A022458 (n : ℕ) : ℤ :=
  A022458.P14071462587909011347.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(2*(n+1)-1)%A000040(n+1)` (program `A022458.P14071462587909011347`, by `A022458.P14071462587909011347.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A022458.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022459.P4883534193565324905

`A000040(2*(n+1)+1)%A000040(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022459.P4883534193565324905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (2 * (n + 1) + 1)) (A000040 (n + 1))

end

end A022459.P4883534193565324905

noncomputable section

/-- A022459: a(n) = prime(2n+1) mod prime(n).

Offset 1, canonical program `A022459.P4883534193565324905`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(2*(n+1)+1)%A000040(n+1)` (program `A022459.P4883534193565324905`, by `A022459.P4883534193565324905.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A022459 (n : ℕ) : ℤ :=
  A022459.P4883534193565324905.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(2*(n+1)+1)%A000040(n+1)` (program `A022459.P4883534193565324905`, by `A022459.P4883534193565324905.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A022459.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022460.P3896747245378759678

`A000040(3*(n+1))%A000040(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022460.P3896747245378759678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (3 * (n + 1))) (A000040 (n + 1))

end

end A022460.P3896747245378759678

noncomputable section

/-- A022460: a(n) = prime(3*n) mod prime(n).

Offset 1, canonical program `A022460.P3896747245378759678`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(3*(n+1))%A000040(n+1)` (program `A022460.P3896747245378759678`, by `A022460.P3896747245378759678.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A022460 (n : ℕ) : ℤ :=
  A022460.P3896747245378759678.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(3*(n+1))%A000040(n+1)` (program `A022460.P3896747245378759678`, by `A022460.P3896747245378759678.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A022460.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022463.P7343134257440561664

`A000040((n+1)²)%A000040(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022463.P7343134257440561664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 ((n + 1) ^ 2)) (A000040 (n + 1))

end

end A022463.P7343134257440561664

noncomputable section

/-- A022463: a(n) = prime(n^2) mod prime(n).

Offset 1, canonical program `A022463.P7343134257440561664`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040((n+1)²)%A000040(n+1)` (program `A022463.P7343134257440561664`, by `A022463.P7343134257440561664.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A022463 (n : ℕ) : ℤ :=
  A022463.P7343134257440561664.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040((n+1)²)%A000040(n+1)` (program `A022463.P7343134257440561664`, by `A022463.P7343134257440561664.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A022463.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A023537.P8170499368705976005

`A000032(n+5)-(3*(n+1)+7)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A023537.P8170499368705976005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 5) - (3 * (n + 1) + 7 : ℤ)

end

end A023537.P8170499368705976005

noncomputable section

/-- A023537: a(n) = Lucas(n+4) - (3*n+7).

Offset 1, canonical program `A023537.P8170499368705976005`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000032(n+5)-(3*(n+1)+7)` (program `A023537.P8170499368705976005`, by `A023537.P8170499368705976005.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A023537 (n : ℕ) : ℤ :=
  A023537.P8170499368705976005.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000032(n+5)-(3*(n+1)+7)` (program `A023537.P8170499368705976005`, by `A023537.P8170499368705976005.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A023537.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A023607.P1034350130520621684

`n*A000045(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A023607.P1034350130520621684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000045 (n + 1)

end

end A023607.P1034350130520621684

noncomputable section

/-- A023607: a(n) = n * Fibonacci(n+1).

Offset 0, canonical program `A023607.P1034350130520621684`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*A000045(n+1)` (program `A023607.P1034350130520621684`, by `A023607.P1034350130520621684.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A023607 (n : ℕ) : ℤ :=
  A023607.P1034350130520621684.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*A000045(n+1)` (program `A023607.P1034350130520621684`, by `A023607.P1034350130520621684.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A023607.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A000002.P13330532946811820297

`(3+(-1)^A156253(n+1))/2`
-/

namespace A000002.P13330532946811820297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 + (-1 : ℚ) ^ (A156253 (n + 1) : ℤ)) / 2

end

end A000002.P13330532946811820297

noncomputable section

/-- A000002: Kolakoski sequence: a(n) is length of n-th run; a(1) = 1; sequence consists just of 1's and 2's.

Offset 1, canonical program `A000002.P13330532946811820297`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A000002.anchor : A000002 1 = 1 ∧ (∀ n : ℕ, 1 ≤ n → A000002 n = 1 ∨ A000002 n = 2) ∧ ∀ k n : ℕ, ∑ i ∈ Finset.Icc 1 (k - 1), A000002 i < (n : ℤ) → (n : ℤ) ≤ ∑ i ∈ Finset.Icc 1 k, A000002 i → A000002 n = if Odd k then 1 else 2` in `Proof.A000.A000002`. -/
def A000002 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A000002.P13330532946811820297.a (n - 1))

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A000002.anchor : A000002 1 = 1 ∧ (∀ n : ℕ, 1 ≤ n → A000002 n = 1 ∨ A000002 n = 2) ∧ ∀ k n : ℕ, ∑ i ∈ Finset.Icc 1 (k - 1), A000002 i < (n : ℤ) → (n : ℤ) ≤ ∑ i ∈ Finset.Icc 1 k, A000002 i → A000002 n = if Odd k then 1 else 2` in `Proof.A000.A000002`. -/
def A000002.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A000120.P2816527436160941581

`2*n-A005187(n)`
-/

namespace A000120.P2816527436160941581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A005187 n

end

end A000120.P2816527436160941581

noncomputable section

/-- A000120: Ones-counting sequence: number of 1's in binary expansion of n (or the binary weight of n).

Offset 0, canonical program `A000120.P2816527436160941581`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A000120.anchor (n : ℕ) : A000120 n = ((Nat.digits 2 n).sum : ℤ)` in `Proof.A000.A000120`. -/
def A000120 (n : ℕ) : ℤ :=
  A000120.P2816527436160941581.a n

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A000120.anchor (n : ℕ) : A000120 n = ((Nat.digits 2 n).sum : ℤ)` in `Proof.A000.A000120`. -/
def A000120.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A001615.P12078511981713404634

`(n+1)*A000203(A007947(n+1))/A007947(n+1)`
-/

namespace A001615.P12078511981713404634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A000203 (A007947 (n + 1)).toNat : ℚ) / (A007947 (n + 1) : ℚ)

end

end A001615.P12078511981713404634

noncomputable section

/-- A001615: Dedekind psi function: n * Product_{p|n, p prime} (1 + 1/p).

Offset 1, canonical program `A001615.P12078511981713404634`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A001615.anchor (n : ℕ) (hn : 1 ≤ n) : (A001615 n : ℚ) = n * ∏ p ∈ n.primeFactors, (1 + 1 / (p : ℚ))` in `Proof.A001.A001615`. -/
def A001615 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A001615.P12078511981713404634.a (n - 1))

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A001615.anchor (n : ℕ) (hn : 1 ≤ n) : (A001615 n : ℚ) = n * ∏ p ∈ n.primeFactors, (1 + 1 / (p : ℚ))` in `Proof.A001.A001615`. -/
def A001615.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A001777.P12963462012434693237

`(n+1)!*A006857(n)`
-/

namespace A001777.P12963462012434693237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A006857 n

end

end A001777.P12963462012434693237

noncomputable section

/-- A001777: Lah numbers: a(n) = n! * binomial(n-1, 4)/5!.

Offset 5, canonical program `A001777.P12963462012434693237`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+5)!*C(n+4, 4)/5!` (program `A001777.P17676601976892956573`, by `A001777.P17676601976892956573.correct`). Lean does not check the parsing of the name. -/
def A001777 (n : ℕ) : ℤ :=
  A001777.P12963462012434693237.a (n - 5)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+5)!*C(n+4, 4)/5!` (program `A001777.P17676601976892956573`, by `A001777.P17676601976892956573.correct`). Lean does not check the parsing of the name. -/
def A001777.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A001859.P2663720322851164108

`A000217(n)+A002620(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A001859.P2663720322851164108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + A002620 (n + 1)

end

end A001859.P2663720322851164108

noncomputable section

/-- A001859: Triangular numbers plus quarter-squares: n*(n+1)/2 + floor((n+1)^2/4) (i.e., A000217(n) + A002620(n+1)).

Offset 0, canonical program `A001859.P2663720322851164108`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)/2+floor((n+1)²/4)` (program `A001859.P5668569233744486311`, by `A001859.P5668569233744486311.correct`). Lean does not check the parsing of the name. -/
def A001859 (n : ℕ) : ℤ :=
  A001859.P2663720322851164108.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)/2+floor((n+1)²/4)` (program `A001859.P5668569233744486311`, by `A001859.P5668569233744486311.correct`). Lean does not check the parsing of the name. -/
def A001859.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A003557.P6364735403900941810

`(n+1)/A007947(n+1)`
-/

namespace A003557.P6364735403900941810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A007947 (n + 1) : ℚ)

end

end A003557.P6364735403900941810

noncomputable section

/-- A003557: n divided by largest squarefree divisor of n; if n = Product p(k)^e(k) then a(n) = Product p(k)^(e(k)-1), with a(1) = 1.

Offset 1, canonical program `A003557.P6364735403900941810`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A003557.anchor (n : ℕ) (hn : 1 ≤ n) : A003557 n = ((n / UniqueFactorizationMonoid.radical n : ℕ) : ℤ)` in `Proof.A003.A003557`. -/
def A003557 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A003557.P6364735403900941810.a (n - 1))

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A003557.anchor (n : ℕ) (hn : 1 ≤ n) : A003557 n = ((n / UniqueFactorizationMonoid.radical n : ℕ) : ℤ)` in `Proof.A003.A003557`. -/
def A003557.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A005117.P8954503998193661401

`record[A007947(n+1)]`
-/

namespace A005117.P8954503998193661401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005117.P8954503998193661401

noncomputable section

/-- A005117: Squarefree numbers: numbers that are not divisible by a square greater than 1.

Offset 1, canonical program `A005117.P8954503998193661401`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A005117.anchor (n : ℕ) (hn : 1 ≤ n) : A005117 n = (Nat.nth Squarefree (n - 1) : ℤ)` in `Proof.A005.A005117`. -/
def A005117 (n : ℕ) : ℤ :=
  A005117.P8954503998193661401.a (n - 1)

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A005117.anchor (n : ℕ) (hn : 1 ≤ n) : A005117 n = (Nat.nth Squarefree (n - 1) : ℤ)` in `Proof.A005.A005117`. -/
def A005117.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A005123.P4885488379496739982

`(A007519(n+1)-1)/8`
-/

namespace A005123.P4885488379496739982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007519 (n + 1) - 1 : ℚ) / 8

end

end A005123.P4885488379496739982

noncomputable section

/-- A005123: Numbers k such that 8k + 1 is prime.

Offset 1, canonical program `A005123.P4885488379496739982`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A005123.anchor (n : ℕ) (hn : 1 ≤ n) : A005123 n = (Nat.nth (fun k => (8 * k + 1).Prime) (n - 1) : ℤ)` in `Proof.A005.A005123`. -/
def A005123 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A005123.P4885488379496739982.a (n - 1))

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A005123.anchor (n : ℕ) (hn : 1 ≤ n) : A005123 n = (Nat.nth (fun k => (8 * k + 1).Prime) (n - 1) : ℤ)` in `Proof.A005.A005123`. -/
def A005123.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A007423.P17981127199039660822

`A008683(n+1)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A007423.P17981127199039660822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) + 1

end

end A007423.P17981127199039660822

noncomputable section

/-- A007423: a(n) = mu(n) + 1, where mu is the Moebius function.

Offset 1, canonical program `A007423.P17981127199039660822`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A008683(n+1)+1` (program `A007423.P17981127199039660822`, by `A007423.P17981127199039660822.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A007423 (n : ℕ) : ℤ :=
  A007423.P17981127199039660822.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A008683(n+1)+1` (program `A007423.P17981127199039660822`, by `A007423.P17981127199039660822.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A007423.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A007913.P8131970495124731496

`A007947(n+1)/a((n+1)/A007947(n+1)-1)` with `a(0)=1`
-/

namespace A007913.P8131970495124731496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A007947 (n + 1) : ℚ) / a (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007947 (n + 1) : ℚ) - 1)).toNat

end

end A007913.P8131970495124731496

noncomputable section

/-- A007913: Squarefree part of n: a(n) is the smallest positive number m such that n/m is a square.

Offset 1, canonical program `A007913.P8131970495124731496`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A007913.anchor (n : ℕ) (hn : 1 ≤ n) : ∃ k : ℕ, A007913 n = k ∧ IsLeast {m : ℕ | 0 < m ∧ m ∣ n ∧ IsSquare (n / m)} k` in `Proof.A007.A007913`. -/
def A007913 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A007913.P8131970495124731496.a (n - 1))

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A007913.anchor (n : ℕ) (hn : 1 ≤ n) : ∃ k : ℕ, A007913 n = k ∧ IsLeast {m : ℕ | 0 < m ∧ m ∣ n ∧ IsSquare (n / m)} k` in `Proof.A007.A007913`. -/
def A007913.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A011197.P11900470464003721154

`A011195(n)*A016813(n)`
-/

namespace A011197.P11900470464003721154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011195 n * A016813 n

end

end A011197.P11900470464003721154

noncomputable section

/-- A011197: a(n) = n*(n+1)*(2*n+1)*(3*n+1)*(4*n+1)/6.

Offset 0, canonical program `A011197.P11900470464003721154`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)*(2*n+1)*(3*n+1)*(4*n+1)/6` (program `A011197.P18107115798433356274`, by `A011197.P18107115798433356274.correct`). Lean does not check the parsing of the name. -/
def A011197 (n : ℕ) : ℤ :=
  A011197.P11900470464003721154.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)*(2*n+1)*(3*n+1)*(4*n+1)/6` (program `A011197.P18107115798433356274`, by `A011197.P18107115798433356274.correct`). Lean does not check the parsing of the name. -/
def A011197.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A021003.P1631402243745340027

`(n+1)*A071252(n)+n`
-/

namespace A021003.P1631402243745340027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A071252 n + (n : ℤ)

end

end A021003.P1631402243745340027

noncomputable section

/-- A021003: a(n) = (n/2)*(n^4 + 1).

Offset 0, canonical program `A021003.P1631402243745340027`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n/2*(n^4+1)` (program `A021003.P14140909833261928949`, by `A021003.P14140909833261928949.correct`). Lean does not check the parsing of the name. -/
def A021003 (n : ℕ) : ℤ :=
  A021003.P1631402243745340027.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n/2*(n^4+1)` (program `A021003.P14140909833261928949`, by `A021003.P14140909833261928949.correct`). Lean does not check the parsing of the name. -/
def A021003.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A000038.P13734959004655594922

`2*A000007(n)`
-/

namespace A000038.P13734959004655594922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000007 n

end

end A000038.P13734959004655594922

noncomputable section

/-- A000038: Twice A000007.

Offset 0, canonical program `A000038.P13734959004655594922`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000038 (n : ℕ) : ℤ :=
  A000038.P13734959004655594922.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000038.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A000168.P4170136352937727920

`2*3^n*A000108(n)/(n+2)`
-/

namespace A000168.P4170136352937727920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * 3 ^ n : ℤ) * A000108 n : ℚ) / (n + 2 : ℚ)

end

end A000168.P4170136352937727920

noncomputable section

/-- A000168: a(n) = 2*3^n*(2*n)!/(n!*(n+2)!).

Offset 0, canonical program `A000168.P4170136352937727920`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000168 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A000168.P4170136352937727920.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000168.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A000245.P15461013057778681831

`A000108(n+1)-A000108(n)`
-/

namespace A000245.P15461013057778681831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) - A000108 n

end

end A000245.P15461013057778681831

noncomputable section

/-- A000245: a(n) = 3*(2*n)!/((n+2)!*(n-1)!).

Offset 0, canonical program `A000245.P15461013057778681831`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000245 (n : ℕ) : ℤ :=
  A000245.P15461013057778681831.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000245.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A000253.P11295470622941771377

`A000079(n+2)-A005251(n+5)`
-/

namespace A000253.P11295470622941771377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 2) - A005251 (n + 5)

end

end A000253.P11295470622941771377

noncomputable section

/-- A000253: a(n) = 2*a(n-1) - a(n-2) + a(n-3) + 2^(n-1).

Offset 0, canonical program `A000253.P11295470622941771377`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000253 (n : ℕ) : ℤ :=
  A000253.P11295470622941771377.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000253.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A000276.P1124150142739174409

`A000254(n+3)-(n+3)!-(n+2)!`
-/

namespace A000276.P1124150142739174409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000254 (n + 3) - (Nat.factorial (n + 3) : ℤ) - (Nat.factorial (n + 2) : ℤ)

end

end A000276.P1124150142739174409

noncomputable section

/-- A000276: Associated Stirling numbers.

Offset 4, canonical program `A000276.P1124150142739174409`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000276 (n : ℕ) : ℤ :=
  A000276.P1124150142739174409.a (n - 4)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000276.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A000344.P14231163545056280941

`A000108(n+4)-3*A000108(n+3)+A000108(n+2)`
-/

namespace A000344.P14231163545056280941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 4) - 3 * A000108 (n + 3) + A000108 (n + 2)

end

end A000344.P14231163545056280941

noncomputable section

/-- A000344: a(n) = 5*binomial(2n, n-2)/(n+3).

Offset 2, canonical program `A000344.P14231163545056280941`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000344 (n : ℕ) : ℤ :=
  A000344.P14231163545056280941.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000344.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A000385.P3212751932130924220

`5/12*A001158(n+2)-(5+6*(n+1))/12*A000203(n+2)`
-/

namespace A000385.P3212751932130924220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 12 * (A001158 (n + 2) : ℚ) - (5 + 6 * (n + 1) : ℚ) / 12 * (A000203 (n + 2) : ℚ)

end

end A000385.P3212751932130924220

noncomputable section

/-- A000385: Convolution of A000203 with itself.

Offset 1, canonical program `A000385.P3212751932130924220`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000385 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A000385.P3212751932130924220.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000385.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A000441.P3122518929765614249

`((n+1)/24-(n+1)²/4)*A000203(n+1)+5*(n+1)/24*A001158(n+1)`
-/

namespace A000441.P3122518929765614249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / 24 - ((n + 1) ^ 2 : ℚ) / 4) * (A000203 (n + 1) : ℚ) + (5 * (n + 1) : ℚ) / 24 * (A001158 (n + 1) : ℚ)

end

end A000441.P3122518929765614249

noncomputable section

/-- A000441: a(n) = Sum_{k=1..n-1} k*sigma(k)*sigma(n-k).

Offset 1, canonical program `A000441.P3122518929765614249`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000441 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A000441.P3122518929765614249.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000441.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A000449.P12405531933684339176

`C(n+3, 3)*A000166(n)`
-/

namespace A000449.P12405531933684339176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 3 : ℤ) * A000166 n

end

end A000449.P12405531933684339176

noncomputable section

/-- A000449: Rencontres numbers: number of permutations of [n] with exactly 3 fixed points.

Offset 3, canonical program `A000449.P12405531933684339176`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000449 (n : ℕ) : ℤ :=
  A000449.P12405531933684339176.a (n - 3)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000449.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A000454.P18327268781435728864

`A000399(n+3)+(n+3)*a(n-1)` with `a(0)=1`
-/

namespace A000454.P18327268781435728864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000399 (n + 3) + (n + 3 : ℤ) * a (n - 1)

end

end A000454.P18327268781435728864

noncomputable section

/-- A000454: Unsigned Stirling numbers of first kind s(n,4).

Offset 4, canonical program `A000454.P18327268781435728864`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000454 (n : ℕ) : ℤ :=
  A000454.P18327268781435728864.a (n - 4)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000454.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A000477.P3020696893543444340

`((n+1)²/24-(n+1)^3/6)*A000203(n+1)+(n+1)²/8*A001158(n+1)`
-/

namespace A000477.P3020696893543444340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2 : ℚ) / 24 - ((n + 1) ^ 3 : ℚ) / 6) * (A000203 (n + 1) : ℚ) + ((n + 1) ^ 2 : ℚ) / 8 * (A001158 (n + 1) : ℚ)

end

end A000477.P3020696893543444340

noncomputable section

/-- A000477: a(n) = Sum_{k=1..n-1} k^2*sigma(k)*sigma(n-k).

Offset 1, canonical program `A000477.P3020696893543444340`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000477 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A000477.P3020696893543444340.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000477.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A000499.P643782883791775486

`((n+1)^3/24-(n+1)^4/8)*A000203(n+1)+(n+1)^3/12*A001158(n+1)`
-/

namespace A000499.P643782883791775486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 3 : ℚ) / 24 - ((n + 1) ^ 4 : ℚ) / 8) * (A000203 (n + 1) : ℚ) + ((n + 1) ^ 3 : ℚ) / 12 * (A001158 (n + 1) : ℚ)

end

end A000499.P643782883791775486

noncomputable section

/-- A000499: a(n) = Sum_{k=1..n-1} k^3*sigma(k)*sigma(n-k).

Offset 1, canonical program `A000499.P643782883791775486`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000499 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A000499.P643782883791775486.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000499.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A000537.P7887993002585723883

`6*A000332(n+2)+A000217(n)`
-/

namespace A000537.P7887993002585723883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A000332 (n + 2) + A000217 n

end

end A000537.P7887993002585723883

noncomputable section

/-- A000537: Sum of first n cubes; or n-th triangular number squared.

Offset 0, canonical program `A000537.P7887993002585723883`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000537 (n : ℕ) : ℤ :=
  A000537.P7887993002585723883.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000537.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A000588.P2240156739823594693

`A000108(n+3)-5*A000108(n+2)+6*A000108(n+1)-A000108(n)`
-/

namespace A000588.P2240156739823594693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 3) - 5 * A000108 (n + 2) + 6 * A000108 (n + 1) - A000108 n

end

end A000588.P2240156739823594693

noncomputable section

/-- A000588: a(n) = 7*binomial(2n,n-3)/(n+4).

Offset 0, canonical program `A000588.P2240156739823594693`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000588 (n : ℕ) : ℤ :=
  A000588.P2240156739823594693.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000588.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A000774.P2466986371641539534

`A000254(n)+n!`
-/

namespace A000774.P2466986371641539534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000254 n + (Nat.factorial n : ℤ)

end

end A000774.P2466986371641539534

noncomputable section

/-- A000774: a(n) = n!*(1 + Sum_{i=1..n} 1/i).

Offset 0, canonical program `A000774.P2466986371641539534`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000774 (n : ℕ) : ℤ :=
  A000774.P2466986371641539534.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000774.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A000891.P6013844036491525535

`(2*n+1)*A000108(n)²`
-/

namespace A000891.P6013844036491525535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A000108 n ^ 2

end

end A000891.P6013844036491525535

noncomputable section

/-- A000891: a(n) = (2*n)!*(2*n+1)! / (n! * (n+1)!)^2.

Offset 0, canonical program `A000891.P6013844036491525535`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000891 (n : ℕ) : ℤ :=
  A000891.P6013844036491525535.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000891.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A000897.P14910180461201994835

`A000984(n)*A001448(n)`
-/

namespace A000897.P14910180461201994835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A001448 n

end

end A000897.P14910180461201994835

noncomputable section

/-- A000897: a(n) = (4*n)! / ((2*n)!*n!^2).

Offset 0, canonical program `A000897.P14910180461201994835`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000897 (n : ℕ) : ℤ :=
  A000897.P14910180461201994835.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000897.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A000900.P10035068055957689983

`(A000085(n)-A000898(floor(n/2)))/2`
-/

namespace A000900.P10035068055957689983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000085 n - A000898 ⌊(n : ℚ) / 2⌋.toNat : ℚ) / 2

end

end A000900.P10035068055957689983

noncomputable section

/-- A000900: Number of solutions to the rook problem on an n X n board having a certain symmetry group (see Robinson for details).

Offset 0, canonical program `A000900.P10035068055957689983`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000900 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A000900.P10035068055957689983.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000900.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A000914.P446365929464198224

`3*A000332(n+3)-A000292(n)`
-/

namespace A000914.P446365929464198224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000332 (n + 3) - A000292 n

end

end A000914.P446365929464198224

noncomputable section

/-- A000914: Stirling numbers of the first kind: s(n+2, n).

Offset 0, canonical program `A000914.P446365929464198224`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000914 (n : ℕ) : ℤ :=
  A000914.P446365929464198224.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000914.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A000958.P9732772004639125395

`A000957(n+1)+A000957(n+2)`
-/

namespace A000958.P9732772004639125395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000957 (n + 1) + A000957 (n + 2)

end

end A000958.P9732772004639125395

noncomputable section

/-- A000958: Number of ordered rooted trees with n edges having root of odd degree.

Offset 1, canonical program `A000958.P9732772004639125395`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000958 (n : ℕ) : ℤ :=
  A000958.P9732772004639125395.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000958.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001008.P14452720140578332173

`A000254(n+1)/gcd(A000254(n+1), (n+1)!)`
-/

namespace A001008.P14452720140578332173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000254 (n + 1) : ℚ) / (Int.gcd (A000254 (n + 1)) (Nat.factorial (n + 1) : ℤ) : ℚ)

end

end A001008.P14452720140578332173

noncomputable section

/-- A001008: a(n) = numerator of harmonic number H(n) = Sum_{i=1..n} 1/i.

Offset 1, canonical program `A001008.P14452720140578332173`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001008 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A001008.P14452720140578332173.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001008.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001039.P570684675143143143

`(A000040(n+1)^A000040(n+1)-1)/(A000040(n+1)-1)`
-/

namespace A001039.P570684675143143143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000040 (n + 1) : ℚ) ^ (A000040 (n + 1) : ℤ) - 1) / (A000040 (n + 1) - 1 : ℚ)

end

end A001039.P570684675143143143

noncomputable section

/-- A001039: a(n) = (p^p-1)/(p-1) where p = prime(n).

Offset 1, canonical program `A001039.P570684675143143143`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001039 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A001039.P570684675143143143.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001039.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001043.P18269783162673735460

`A000040(n+1)+A000040(n+2)`
-/

namespace A001043.P18269783162673735460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A000040 (n + 2)

end

end A001043.P18269783162673735460

noncomputable section

/-- A001043: Numbers that are the sum of 2 successive primes.

Offset 1, canonical program `A001043.P18269783162673735460`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001043 (n : ℕ) : ℤ :=
  A001043.P18269783162673735460.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001043.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001246.P6480413615949402633

`A000108(n)²`
-/

namespace A001246.P6480413615949402633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n ^ 2

end

end A001246.P6480413615949402633

noncomputable section

/-- A001246: Squares of Catalan numbers.

Offset 0, canonical program `A001246.P6480413615949402633`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001246 (n : ℕ) : ℤ :=
  A001246.P6480413615949402633.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001246.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001248.P16278241061688229202

`A000040(n+1)²`
-/

namespace A001248.P16278241061688229202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2

end

end A001248.P16278241061688229202

noncomputable section

/-- A001248: Squares of primes.

Offset 1, canonical program `A001248.P16278241061688229202`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001248 (n : ℕ) : ℤ :=
  A001248.P16278241061688229202.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001248.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001286.P18093615335450425260

`A000217(n+1)*A000142(n+1)`
-/

namespace A001286.P18093615335450425260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) * A000142 (n + 1)

end

end A001286.P18093615335450425260

noncomputable section

/-- A001286: Lah numbers: a(n) = (n-1)*n!/2.

Offset 2, canonical program `A001286.P18093615335450425260`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(n+2)!/2` (program `A001286.P12627849041619260296`, by `A001286.P12627849041619260296.correct`). Lean does not check the parsing of the name. -/
def A001286 (n : ℕ) : ℤ :=
  A001286.P18093615335450425260.a (n - 2)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(n+2)!/2` (program `A001286.P12627849041619260296`, by `A001286.P12627849041619260296.correct`). Lean does not check the parsing of the name. -/
def A001286.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A001317.P8261653114070389448

`A048724(a(n-1))` with `a(0)=1`
-/

namespace A001317.P8261653114070389448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A048724 (a (n - 1)).toNat

end

end A001317.P8261653114070389448

noncomputable section

/-- A001317: Sierpiński's triangle (Pascal's triangle mod 2) converted to decimal.

Offset 0, canonical program `A001317.P8261653114070389448`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001317 (n : ℕ) : ℤ :=
  A001317.P8261653114070389448.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001317.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001348.P1877427726897930232

`A000225(A000040(n+1))`
-/

namespace A001348.P1877427726897930232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A000040 (n + 1)).toNat

end

end A001348.P1877427726897930232

noncomputable section

/-- A001348: Mersenne numbers: 2^p - 1, where p is prime.

Offset 1, canonical program `A001348.P1877427726897930232`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001348 (n : ℕ) : ℤ :=
  A001348.P1877427726897930232.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001348.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001392.P16594413048904001442

`9*A004310(n+4)/(n+9)`
-/

namespace A001392.P16594413048904001442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 * A004310 (n + 4) : ℚ) / (n + 9 : ℚ)

end

end A001392.P16594413048904001442

noncomputable section

/-- A001392: a(n) = 9*binomial(2n,n-4)/(n+5).

Offset 4, canonical program `A001392.P16594413048904001442`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001392 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A001392.P16594413048904001442.a (n - 4))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001392.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001453.P10090653544380295411

`A000108(n+2)-1`
-/

namespace A001453.P10090653544380295411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 2) - 1

end

end A001453.P10090653544380295411

noncomputable section

/-- A001453: Catalan numbers - 1.

Offset 2, canonical program `A001453.P10090653544380295411`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001453 (n : ℕ) : ℤ :=
  A001453.P10090653544380295411.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001453.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001555.P13748076003785863365

`A001554(n)+A001018(n)`
-/

namespace A001555.P13748076003785863365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001554 n + A001018 n

end

end A001555.P13748076003785863365

noncomputable section

/-- A001555: a(n) = 1^n + 2^n + ... + 8^n.

Offset 0, canonical program `A001555.P13748076003785863365`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001555 (n : ℕ) : ℤ :=
  A001555.P13748076003785863365.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001555.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001558.P12122410934121705503

`A000957(n+4)-A000957(n+3)-A000957(n+2)`
-/

namespace A001558.P12122410934121705503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000957 (n + 4) - A000957 (n + 3) - A000957 (n + 2)

end

end A001558.P12122410934121705503

noncomputable section

/-- A001558: Number of hill-free Dyck paths of semilength n+3 and having length of first descent equal to 1 (a hill in a Dyck path is a peak at level 1).

Offset 0, canonical program `A001558.P12122410934121705503`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001558 (n : ℕ) : ℤ :=
  A001558.P12122410934121705503.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001558.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001621.P13920646642169681305

`A002378(A000217(n))`
-/

namespace A001621.P13920646642169681305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A000217 n).toNat

end

end A001621.P13920646642169681305

noncomputable section

/-- A001621: a(n) = n*(n + 1)*(n^2 + n + 2)/4.

Offset 0, canonical program `A001621.P13920646642169681305`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001621 (n : ℕ) : ℤ :=
  A001621.P13920646642169681305.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001621.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001656.P8476590417847566294

`(A000045(n+3)²-A000045(n+2)²)*A000045(n+3)*A000045(n+2)/6`
-/

namespace A001656.P8476590417847566294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000045 (n + 3) ^ 2 - A000045 (n + 2) ^ 2) * A000045 (n + 3) * A000045 (n + 2) : ℚ) / 6

end

end A001656.P8476590417847566294

noncomputable section

/-- A001656: Fibonomial coefficients.

Offset 0, canonical program `A001656.P8476590417847566294`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001656 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A001656.P8476590417847566294.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001656.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001657.P14719120247077036479

`A000045(n+3)*(A000045(n+3)^4-1)/30`
-/

namespace A001657.P14719120247077036479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 3) * (A000045 (n + 3) ^ 4 - 1) : ℚ) / 30

end

end A001657.P14719120247077036479

noncomputable section

/-- A001657: Fibonomial coefficients: column 5 of A010048.

Offset 0, canonical program `A001657.P14719120247077036479`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001657 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A001657.P14719120247077036479.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001657.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001658.P17339077976542849952

`(A000045(n+5)²-A000045(n+4)²)*(A000045(n+3)^4-1)/240`
-/

namespace A001658.P17339077976542849952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000045 (n + 5) ^ 2 - A000045 (n + 4) ^ 2) * (A000045 (n + 3) ^ 4 - 1) : ℚ) / 240

end

end A001658.P17339077976542849952

noncomputable section

/-- A001658: Fibonomial coefficients.

Offset 0, canonical program `A001658.P17339077976542849952`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001658 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A001658.P17339077976542849952.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001658.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001699.P162027264242017118

`A003095(n+1)-A003095(n)`
-/

namespace A001699.P162027264242017118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003095 (n + 1) - A003095 n

end

end A001699.P162027264242017118

noncomputable section

/-- A001699: Number of binary trees of height n; or products (ways to insert parentheses) of height n when multiplication is non-commutative and non-associative.

Offset 0, canonical program `A001699.P162027264242017118`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001699 (n : ℕ) : ℤ :=
  A001699.P162027264242017118.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001699.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001712.P8035794898765851406

`A001711(n)+(n+4)*a(n-1)` with `a(0)=1`
-/

namespace A001712.P8035794898765851406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001711 n + (n + 4 : ℤ) * a (n - 1)

end

end A001712.P8035794898765851406

noncomputable section

/-- A001712: Generalized Stirling numbers, [n+5,5]_3.

Offset 0, canonical program `A001712.P8035794898765851406`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001712 (n : ℕ) : ℤ :=
  A001712.P8035794898765851406.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001712.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001717.P2537083117907525314

`A001716(n)+(n+5)*a(n-1)` with `a(0)=1`
-/

namespace A001717.P2537083117907525314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001716 n + (n + 5 : ℤ) * a (n - 1)

end

end A001717.P2537083117907525314

noncomputable section

/-- A001717: Generalized Stirling numbers, [n+6,6]_4.

Offset 0, canonical program `A001717.P2537083117907525314`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001717 (n : ℕ) : ℤ :=
  A001717.P2537083117907525314.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001717.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001749.P16106244962881767471

`4*A000040(n+1)`
-/

namespace A001749.P16106244962881767471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000040 (n + 1)

end

end A001749.P16106244962881767471

noncomputable section

/-- A001749: Primes multiplied by 4.

Offset 1, canonical program `A001749.P16106244962881767471`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001749 (n : ℕ) : ℤ :=
  A001749.P16106244962881767471.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001749.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001757.P7535876328931661964

`A000984(floor(n/2))*A000984(ceil(n/2))*A000142(n)/A000079(n)`
-/

namespace A001757.P7535876328931661964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 ⌊(n : ℚ) / 2⌋.toNat * A000984 ⌈(n : ℚ) / 2⌉.toNat * A000142 n : ℚ) / (A000079 n : ℚ)

end

end A001757.P7535876328931661964

noncomputable section

/-- A001757: Expansion of an integral: central elements of rows of triangle in A059366.

Offset 0, canonical program `A001757.P7535876328931661964`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001757 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A001757.P7535876328931661964.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001757.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001761.P10294266062950325525

`n!*A000108(n)`
-/

namespace A001761.P10294266062950325525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A000108 n

end

end A001761.P10294266062950325525

noncomputable section

/-- A001761: a(n) = (2*n)!/(n+1)!.

Offset 0, canonical program `A001761.P10294266062950325525`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001761 (n : ℕ) : ℤ :=
  A001761.P10294266062950325525.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001761.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001788.P5561357173935824427

`2*a(n-1)+A001787(n)` with `a(0)=0`
-/

namespace A001788.P5561357173935824427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * a (n - 1) + A001787 n

end

end A001788.P5561357173935824427

noncomputable section

/-- A001788: a(n) = n*(n+1)*2^(n-2).

Offset 0, canonical program `A001788.P5561357173935824427`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001788 (n : ℕ) : ℤ :=
  A001788.P5561357173935824427.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001788.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001791.P9713013280951293137

`n*A000108(n)`
-/

namespace A001791.P9713013280951293137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000108 n

end

end A001791.P9713013280951293137

noncomputable section

/-- A001791: a(n) = binomial coefficient C(2n, n-1).

Offset 0, canonical program `A001791.P9713013280951293137`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001791 (n : ℕ) : ℤ :=
  A001791.P9713013280951293137.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001791.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001801.P17033772977841032227

`3*C(n+3, 3)*A000108(n+2)*2^(val((n+4)!, 2)-n-4)`
-/

namespace A001801.P17033772977841032227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * Nat.choose (n + 3) 3 : ℤ) * A000108 (n + 2) : ℚ) * (2 : ℚ) ^ ((SequenceMachineLib.valuation (Nat.factorial (n + 4)) 2 : ℤ) - (n : ℤ) - 4 : ℤ)

end

end A001801.P17033772977841032227

noncomputable section

/-- A001801: Coefficients of Legendre polynomials.

Offset 0, canonical program `A001801.P17033772977841032227`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001801 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A001801.P17033772977841032227.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001801.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001802.P163547626694830986

`C(n+4, 4)*A000108(n+3)*2^(val((n+6)!, 2)-n-4)`
-/

namespace A001802.P163547626694830986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (n + 4) 4 : ℤ) * A000108 (n + 3) : ℚ) * (2 : ℚ) ^ ((SequenceMachineLib.valuation (Nat.factorial (n + 6)) 2 : ℤ) - (n : ℤ) - 4 : ℤ)

end

end A001802.P163547626694830986

noncomputable section

/-- A001802: Coefficients of Legendre polynomials.

Offset 0, canonical program `A001802.P163547626694830986`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001802 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A001802.P163547626694830986.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001802.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001816.P881623879304099309

`12*A003472(n+4)`
-/

namespace A001816.P881623879304099309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A003472 (n + 4)

end

end A001816.P881623879304099309

noncomputable section

/-- A001816: Coefficients of x^n in Hermite polynomial H_{n+4}.

Offset 0, canonical program `A001816.P881623879304099309`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001816 (n : ℕ) : ℤ :=
  A001816.P881623879304099309.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001816.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001819.P2792134783126764898

`a(n-1)*n²+A001044(n-1)` with `a(0)=0`
-/

namespace A001819.P2792134783126764898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) * (n ^ 2 : ℤ) + A001044 (n - 1)

end

end A001819.P2792134783126764898

noncomputable section

/-- A001819: Central factorial numbers: second right-hand column of triangle A008955.

Offset 0, canonical program `A001819.P2792134783126764898`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001819 (n : ℕ) : ℤ :=
  A001819.P2792134783126764898.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001819.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001872.P5529285651682957257

`(n+5)*(n+3)*(4*(n+1)*A000045(n+2)+3*(n+2)*A000045(n+1))/150`
-/

namespace A001872.P5529285651682957257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 5) * (n + 3) : ℤ) * ((4 * (n + 1) : ℤ) * A000045 (n + 2) + (3 * (n + 2) : ℤ) * A000045 (n + 1)) : ℚ) / 150

end

end A001872.P5529285651682957257

noncomputable section

/-- A001872: Convolved Fibonacci numbers.

Offset 0, canonical program `A001872.P5529285651682957257`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001872 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A001872.P5529285651682957257.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001872.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001923.P5884315793935045378

`a(n-1)+A000312(n)` with `a(0)=0`
-/

namespace A001923.P5884315793935045378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A000312 n

end

end A001923.P5884315793935045378

noncomputable section

/-- A001923: a(n) = Sum_{k=1..n} k^k.

Offset 0, canonical program `A001923.P5884315793935045378`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001923 (n : ℕ) : ℤ :=
  A001923.P5884315793935045378.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001923.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001951.P3206377842744091648

`A000196(2*n²)`
-/

namespace A001951.P3206377842744091648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (2 * n ^ 2)

end

end A001951.P3206377842744091648

noncomputable section

/-- A001951: A Beatty sequence: a(n) = floor(n*sqrt(2)).

Offset 0, canonical program `A001951.P3206377842744091648`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A001951.anchor (n : ℕ) : A001951 n = ⌊(n : ℝ) * Real.sqrt 2⌋` in `Proof.A001.A001951`. -/
def A001951 (n : ℕ) : ℤ :=
  A001951.P3206377842744091648.a n

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A001951.anchor (n : ℕ) : A001951 n = ⌊(n : ℝ) * Real.sqrt 2⌋` in `Proof.A001.A001951`. -/
def A001951.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A001961.P2282338956416030795

`A005206(2*(n+1)-1)`
-/

namespace A001961.P2282338956416030795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (2 * (n + 1) - 1)

end

end A001961.P2282338956416030795

noncomputable section

/-- A001961: A Beatty sequence: floor(n * (sqrt(5) - 1)).

Offset 1, canonical program `A001961.P2282338956416030795`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001961 (n : ℕ) : ℤ :=
  A001961.P2282338956416030795.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001961.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001965.P8161936400494253645

`A005206(2*n)`
-/

namespace A001965.P8161936400494253645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (2 * n)

end

end A001965.P8161936400494253645

noncomputable section

/-- A001965: u-pile count for the 4-Wythoff game with i=2.

Offset 0, canonical program `A001965.P8161936400494253645`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001965 (n : ℕ) : ℤ :=
  A001965.P8161936400494253645.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001965.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A002005.P10141232297701115592

`2^(2*n+1)*A006882(3*n)/((n+2)!*A006882(n))`
-/

namespace A002005.P10141232297701115592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ (2 * n + 1) : ℤ) * A006882 (3 * n) : ℚ) / ((Nat.factorial (n + 2) : ℤ) * A006882 n : ℚ)

end

end A002005.P10141232297701115592

noncomputable section

/-- A002005: Number of rooted planar cubic maps with 2n vertices.

Offset 0, canonical program `A002005.P10141232297701115592`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002005 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A002005.P10141232297701115592.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002005.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A002026.P17776616079043433200

`A001006(n+1)-A001006(n)`
-/

namespace A002026.P17776616079043433200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (n + 1) - A001006 n

end

end A002026.P17776616079043433200

noncomputable section

/-- A002026: Generalized ballot numbers (first differences of Motzkin numbers).

Offset 0, canonical program `A002026.P17776616079043433200`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002026 (n : ℕ) : ℤ :=
  A002026.P17776616079043433200.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002026.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A002036.P16723521533802060613

`round(A000040(n+1)/log(A000040(n+1)))`
-/

namespace A002036.P16723521533802060613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000040 (n + 1) : ℝ) / Real.log (A000040 (n + 1) : ℝ))

end

end A002036.P16723521533802060613

noncomputable section

/-- A002036: Compressed primes: a(n) is the nearest integer to prime(n)/log prime(n).

Offset 1, canonical program `A002036.P16723521533802060613`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002036 (n : ℕ) : ℤ :=
  A002036.P16723521533802060613.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002036.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A002057.P16485173035074746318

`2*(n+1)*A000108(n+2)/(n+4)`
-/

namespace A002057.P16485173035074746318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) : ℤ) * A000108 (n + 2) : ℚ) / (n + 4 : ℚ)

end

end A002057.P16485173035074746318

noncomputable section

/-- A002057: Fourth convolution of Catalan numbers: a(n) = 4*binomial(2*n+3,n)/(n+4).

Offset 0, canonical program `A002057.P16485173035074746318`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002057 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A002057.P16485173035074746318.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002057.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A002058.P5384101461092554470

`2*A003516(n+2)`
-/

namespace A002058.P5384101461092554470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003516 (n + 2)

end

end A002058.P5384101461092554470

noncomputable section

/-- A002058: Number of internal triangles in all triangulations of an (n+1)-gon.

Offset 5, canonical program `A002058.P5384101461092554470`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002058 (n : ℕ) : ℤ :=
  A002058.P5384101461092554470.a (n - 5)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002058.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A002131.P10234543156685478956

`(A000203(n+1)+A000593(n+1))/2`
-/

namespace A002131.P10234543156685478956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) + A000593 (n + 1) : ℚ) / 2

end

end A002131.P10234543156685478956

noncomputable section

/-- A002131: Sum of divisors d of n such that n/d is odd.

Offset 1, canonical program `A002131.P10234543156685478956`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002131 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A002131.P10234543156685478956.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002131.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A002293.P16807140435425026858

`A005810(n)/(3*n+1)`
-/

namespace A002293.P16807140435425026858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005810 n : ℚ) / (3 * n + 1 : ℚ)

end

end A002293.P16807140435425026858

noncomputable section

/-- A002293: Number of dissections of a polygon: binomial(4*n, n)/(3*n + 1).

Offset 0, canonical program `A002293.P16807140435425026858`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002293 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A002293.P16807140435425026858.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002293.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A002294.P10767384392339282689

`A001449(n)/(4*n+1)`
-/

namespace A002294.P10767384392339282689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001449 n : ℚ) / (4 * n + 1 : ℚ)

end

end A002294.P10767384392339282689

noncomputable section

/-- A002294: a(n) = binomial(5*n, n)/(4*n + 1).

Offset 0, canonical program `A002294.P10767384392339282689`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002294 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A002294.P10767384392339282689.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002294.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A002295.P8182728148189316481

`A004355(n)/(5*n+1)`
-/

namespace A002295.P8182728148189316481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004355 n : ℚ) / (5 * n + 1 : ℚ)

end

end A002295.P8182728148189316481

noncomputable section

/-- A002295: Number of dissections of a polygon: binomial(6n,n)/(5n+1).

Offset 0, canonical program `A002295.P8182728148189316481`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002295 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A002295.P8182728148189316481.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002295.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A002296.P8908511660882274286

`A004368(n)/(6*n+1)`
-/

namespace A002296.P8908511660882274286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004368 n : ℚ) / (6 * n + 1 : ℚ)

end

end A002296.P8908511660882274286

noncomputable section

/-- A002296: Number of dissections of a polygon: binomial(7n,n)/(6n+1).

Offset 0, canonical program `A002296.P8908511660882274286`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002296 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A002296.P8908511660882274286.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002296.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A002457.P9253550667326779954

`(2*n+1)*A000984(n)`
-/

namespace A002457.P9253550667326779954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A000984 n

end

end A002457.P9253550667326779954

noncomputable section

/-- A002457: a(n) = (2n+1)!/n!^2.

Offset 0, canonical program `A002457.P9253550667326779954`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002457 (n : ℕ) : ℤ :=
  A002457.P9253550667326779954.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002457.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A002539.P16612726421466139855

`(n+5)*a(n-1)+(n+1)*A002538(n+1)` with `a(0)=1`
-/

namespace A002539.P16612726421466139855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 5 : ℤ) * a (n - 1) + (n + 1 : ℤ) * A002538 (n + 1)

end

end A002539.P16612726421466139855

noncomputable section

/-- A002539: Eulerian numbers of the second kind: <<n+3, n>>.

Offset 0, canonical program `A002539.P16612726421466139855`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002539 (n : ℕ) : ℤ :=
  A002539.P16612726421466139855.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002539.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A002720.P9188981106848597072

`A000262(n+1)-n*A000262(n)`
-/

namespace A002720.P9188981106848597072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000262 (n + 1) - (n : ℤ) * A000262 n

end

end A002720.P9188981106848597072

noncomputable section

/-- A002720: Number of partial permutations of an n-set; number of n X n binary matrices with at most one 1 in each row and column.

Offset 0, canonical program `A002720.P9188981106848597072`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002720 (n : ℕ) : ℤ :=
  A002720.P9188981106848597072.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002720.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A002739.P17475741263459700503

`1/4*((n+2)^3-3*(n+2)²+2*(n+2)+2)*A000108(n+2)`
-/

namespace A002739.P17475741263459700503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 4 * (((n + 2) ^ 3 : ℤ) - (3 * (n + 2) ^ 2 : ℤ) + (2 * (n + 2) : ℤ) + 2 : ℚ) * (A000108 (n + 2) : ℚ)

end

end A002739.P17475741263459700503

noncomputable section

/-- A002739: a(n) = ((2*n-1)!/(2*n!*(n-2)!))*((n^3-3*n^2+2*n+2)/(n^2-1)).

Offset 2, canonical program `A002739.P17475741263459700503`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002739 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A002739.P17475741263459700503.a (n - 2))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002739.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A002789.P4916109399875461213

`floor(A168668(n+2)/12)`
-/

namespace A002789.P4916109399875461213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A168668 (n + 2) : ℚ) / 12⌋

end

end A002789.P4916109399875461213

noncomputable section

/-- A002789: Number of integer points in a certain quadrilateral scaled by a factor of n.

Offset 1, canonical program `A002789.P4916109399875461213`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002789 (n : ℕ) : ℤ :=
  A002789.P4916109399875461213.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002789.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A002802.P16841612747706247386

`A000911(n)/6`
-/

namespace A002802.P16841612747706247386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000911 n : ℚ) / 6

end

end A002802.P16841612747706247386

noncomputable section

/-- A002802: a(n) = (2*n+3)!/(6*n!*(n+1)!).

Offset 0, canonical program `A002802.P16841612747706247386`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002802 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A002802.P16841612747706247386.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002802.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A002805.P15380155363923936140

`(n+1)!/gcd(A000254(n+1), (n+1)!)`
-/

namespace A002805.P15380155363923936140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / (Int.gcd (A000254 (n + 1)) (Nat.factorial (n + 1) : ℤ) : ℚ)

end

end A002805.P15380155363923936140

noncomputable section

/-- A002805: a(n) = denominator of harmonic number H(n) = Sum_{i=1..n} 1/i.

Offset 1, canonical program `A002805.P15380155363923936140`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002805 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A002805.P15380155363923936140.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002805.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A002940.P17152713707969123307

`2*a(n-1)-a(n-3)+A000045(n+2)` with `a(0)=1, a(1)=4, a(2)=11`
-/

namespace A002940.P17152713707969123307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 11] fun n a =>
  2 * a (n - 1) - a (n - 3) + A000045 (n + 2)

end

end A002940.P17152713707969123307

noncomputable section

/-- A002940: Arrays of dumbbells.

Offset 1, canonical program `A002940.P17152713707969123307`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002940 (n : ℕ) : ℤ :=
  A002940.P17152713707969123307.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002940.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A003231.P12980204502534982762

`2*(n+1)+A000201(n+1)`
-/

namespace A003231.P12980204502534982762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) + A000201 (n + 1)

end

end A003231.P12980204502534982762

noncomputable section

/-- A003231: a(n) = floor(n*(sqrt(5)+5)/2).

Offset 1, canonical program `A003231.P12980204502534982762`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A003231 (n : ℕ) : ℤ :=
  A003231.P12980204502534982762.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A003231.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A003517.P8107805588659007257

`A000108(n+5)-4*A000108(n+4)+3*A000108(n+3)`
-/

namespace A003517.P8107805588659007257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 5) - 4 * A000108 (n + 4) + 3 * A000108 (n + 3)

end

end A003517.P8107805588659007257

noncomputable section

/-- A003517: Number of permutations of [n+1] with exactly 1 increasing subsequence of length 3.

Offset 2, canonical program `A003517.P8107805588659007257`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A003517 (n : ℕ) : ℤ :=
  A003517.P8107805588659007257.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A003517.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A003518.P6079018483949857096

`8*A030053(n+3)/(n+8)`
-/

namespace A003518.P6079018483949857096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 * A030053 (n + 3) : ℚ) / (n + 8 : ℚ)

end

end A003518.P6079018483949857096

noncomputable section

/-- A003518: a(n) = 8*binomial(2*n+1,n-3)/(n+5).

Offset 3, canonical program `A003518.P6079018483949857096`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A003518 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A003518.P6079018483949857096.a (n - 3))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A003518.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A003604.P2192154179652949979

`A000720(n!)`
-/

namespace A003604.P2192154179652949979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (Nat.factorial n)

end

end A003604.P2192154179652949979

noncomputable section

/-- A003604: Number of primes <= n!.

Offset 0, canonical program `A003604.P2192154179652949979`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A003604 (n : ℕ) : ℤ :=
  A003604.P2192154179652949979.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A003604.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A003622.P18369330713868503528

`A000201(A000201(n+1))`
-/

namespace A003622.P18369330713868503528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (A000201 (n + 1)).toNat

end

end A003622.P18369330713868503528

noncomputable section

/-- A003622: The Wythoff compound sequence AA: a(n) = floor(n*phi^2) - 1, where phi = (1+sqrt(5))/2.

Offset 1, canonical program `A003622.P18369330713868503528`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A003622 (n : ℕ) : ℤ :=
  A003622.P18369330713868503528.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A003622.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A003623.P14438316745221780006

`A000201(n+1)+A001950(n+1)`
-/

namespace A003623.P14438316745221780006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (n + 1) + A001950 (n + 1)

end

end A003623.P14438316745221780006

noncomputable section

/-- A003623: Wythoff AB-numbers: floor(floor(n*phi^2)*phi), where phi = (1+sqrt(5))/2.

Offset 1, canonical program `A003623.P14438316745221780006`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A003623 (n : ℕ) : ℤ :=
  A003623.P14438316745221780006.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A003623.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A003690.P9136672205004948120

`3*A004254(n+1)²`
-/

namespace A003690.P9136672205004948120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A004254 (n + 1) ^ 2

end

end A003690.P9136672205004948120

noncomputable section

/-- A003690: Number of spanning trees in K_3 X P_n.

Offset 1, canonical program `A003690.P9136672205004948120`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A003690 (n : ℕ) : ℤ :=
  A003690.P9136672205004948120.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A003690.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A003733.P4419014243298460425

`5*A143699(n+1)²`
-/

namespace A003733.P4419014243298460425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A143699 (n + 1) ^ 2

end

end A003733.P4419014243298460425

noncomputable section

/-- A003733: Number of spanning trees in C_5 X P_n.

Offset 1, canonical program `A003733.P4419014243298460425`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A003733 (n : ℕ) : ℤ :=
  A003733.P4419014243298460425.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A003733.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A003767.P4752969417628511591

`8*A001353(n+1)*A001110(n+1)`
-/

namespace A003767.P4752969417628511591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A001353 (n + 1) * A001110 (n + 1)

end

end A003767.P4752969417628511591

noncomputable section

/-- A003767: Number of spanning trees in (K_4 - e) X P_n.

Offset 1, canonical program `A003767.P4752969417628511591`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A003767 (n : ℕ) : ℤ :=
  A003767.P4752969417628511591.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A003767.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A003773.P106308813800989571

`16*A001109(n+1)^3`
-/

namespace A003773.P106308813800989571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A001109 (n + 1) ^ 3

end

end A003773.P106308813800989571

noncomputable section

/-- A003773: Number of spanning trees in K_4 X P_n.

Offset 1, canonical program `A003773.P106308813800989571`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A003773 (n : ℕ) : ℤ :=
  A003773.P106308813800989571.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A003773.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A003955.P7618811074422816313

`(2*n+4)*A001818(n+1)`
-/

namespace A003955.P7618811074422816313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 4 : ℤ) * A001818 (n + 1)

end

end A003955.P7618811074422816313

noncomputable section

/-- A003955: a(n) = (2*n + 4) * (1*3*5*...*(2*n+1))^2.

Offset 0, canonical program `A003955.P7618811074422816313`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A003955 (n : ℕ) : ℤ :=
  A003955.P7618811074422816313.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A003955.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A004134.P15858984416175637375

`A005187(n)+n`
-/

namespace A004134.P15858984416175637375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n + (n : ℤ)

end

end A004134.P15858984416175637375

noncomputable section

/-- A004134: Denominators in expansion of (1-x)^{-1/4} are 2^a(n).

Offset 0, canonical program `A004134.P15858984416175637375`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A004134 (n : ℕ) : ℤ :=
  A004134.P15858984416175637375.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A004134.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A004146.P7346826017881566823

`A000032(2*n)-2`
-/

namespace A004146.P7346826017881566823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * n) - 2

end

end A004146.P7346826017881566823

noncomputable section

/-- A004146: Alternate Lucas numbers - 2.

Offset 0, canonical program `A004146.P7346826017881566823`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A004146 (n : ℕ) : ℤ :=
  A004146.P7346826017881566823.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A004146.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A004202.P6327880886669607984

`n+1+A000217(A002024(n+1))`
-/

namespace A004202.P6327880886669607984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A000217 (A002024 (n + 1)).toNat

end

end A004202.P6327880886669607984

noncomputable section

/-- A004202: Skip 1, take 1, skip 2, take 2, skip 3, take 3, etc.

Offset 1, canonical program `A004202.P6327880886669607984`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A004202 (n : ℕ) : ℤ :=
  A004202.P6327880886669607984.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A004202.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A004277.P16255821370285667660

`A000007(n)+A005843(n)`
-/

namespace A004277.P16255821370285667660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + A005843 n

end

end A004277.P16255821370285667660

noncomputable section

/-- A004277: 1 together with positive even numbers.

Offset 0, canonical program `A004277.P16255821370285667660`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A004277 (n : ℕ) : ℤ :=
  A004277.P16255821370285667660.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A004277.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A004282.P3282073839208396829

`A000217(n+1)*A000292(n)`
-/

namespace A004282.P3282073839208396829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) * A000292 n

end

end A004282.P3282073839208396829

noncomputable section

/-- A004282: a(n) = n*(n+1)^2*(n+2)^2/12.

Offset 0, canonical program `A004282.P3282073839208396829`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)²*(n+2)²/12` (program `A004282.P2916634851355012083`, by `A004282.P2916634851355012083.correct`). Lean does not check the parsing of the name. -/
def A004282 (n : ℕ) : ℤ :=
  A004282.P3282073839208396829.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)²*(n+2)²/12` (program `A004282.P2916634851355012083`, by `A004282.P2916634851355012083.correct`). Lean does not check the parsing of the name. -/
def A004282.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A004302.P8108728009530160138

`A000217(n)*A000292(n)`
-/

namespace A004302.P8108728009530160138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n * A000292 n

end

end A004302.P8108728009530160138

noncomputable section

/-- A004302: a(n) = n^2*(n+1)^2*(n+2)/12.

Offset 0, canonical program `A004302.P8108728009530160138`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²*(n+1)²*(n+2)/12` (program `A004302.P18424866532362729346`, by `A004302.P18424866532362729346.correct`). Lean does not check the parsing of the name. -/
def A004302 (n : ℕ) : ℤ :=
  A004302.P8108728009530160138.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²*(n+1)²*(n+2)/12` (program `A004302.P18424866532362729346`, by `A004302.P18424866532362729346.correct`). Lean does not check the parsing of the name. -/
def A004302.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A004444.P2674054276110161385

`A004443(A004442(n))`
-/

namespace A004444.P2674054276110161385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004443 (A004442 n).toNat

end

end A004444.P2674054276110161385

noncomputable section

/-- A004444: Nimsum n + 3.

Offset 0, canonical program `A004444.P2674054276110161385`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A004444 (n : ℕ) : ℤ :=
  A004444.P2674054276110161385.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A004444.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A004736.P10337537277358081527

`A000217(A002024(n+1))-n`
-/

namespace A004736.P10337537277358081527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A002024 (n + 1)).toNat - (n : ℤ)

end

end A004736.P10337537277358081527

noncomputable section

/-- A004736: Triangle read by rows: row n lists the first n positive integers in decreasing order.

Offset 1, canonical program `A004736.P10337537277358081527`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A004736 (n : ℕ) : ℤ :=
  A004736.P10337537277358081527.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A004736.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A004798.P11709772009077564691

`A001629(n+2)+A001629(n)+2*A001629(n+1)`
-/

namespace A004798.P11709772009077564691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 (n + 2) + A001629 n + 2 * A001629 (n + 1)

end

end A004798.P11709772009077564691

noncomputable section

/-- A004798: Convolution of Fibonacci numbers 1,2,3,5,... with themselves.

Offset 1, canonical program `A004798.P11709772009077564691`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A004798 (n : ℕ) : ℤ :=
  A004798.P11709772009077564691.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A004798.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A004799.P15085056479586614341

`((5*(n+1)-4)*A000032(n+2)+2*A000032(n+1))/5`
-/

namespace A004799.P15085056479586614341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((5 * (n + 1) : ℤ) - 4) * A000032 (n + 2) + 2 * A000032 (n + 1) : ℚ) / 5

end

end A004799.P15085056479586614341

noncomputable section

/-- A004799: Self-convolution of Lucas numbers.

Offset 1, canonical program `A004799.P15085056479586614341`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A004799 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A004799.P15085056479586614341.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A004799.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A004958.P13138658034996732801

`A004956(2*n)+n`
-/

namespace A004958.P13138658034996732801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 (2 * n) + (n : ℤ)

end

end A004958.P13138658034996732801

noncomputable section

/-- A004958: a(n) = ceiling(n*phi^3), where phi is the golden ratio, A001622.

Offset 0, canonical program `A004958.P13138658034996732801`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A004958 (n : ℕ) : ℤ :=
  A004958.P13138658034996732801.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A004958.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A004959.P8440085141902266755

`A004956(3*n)+2*n`
-/

namespace A004959.P8440085141902266755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 (3 * n) + (2 * n : ℤ)

end

end A004959.P8440085141902266755

noncomputable section

/-- A004959: a(n) = ceiling(n*phi^4), where phi is the golden ratio, A001622.

Offset 0, canonical program `A004959.P8440085141902266755`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A004959 (n : ℕ) : ℤ :=
  A004959.P8440085141902266755.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A004959.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A005043.P11838040305800302990

`A001006(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A005043.P11838040305800302990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001006 (n - 1) - a (n - 1)

end

end A005043.P11838040305800302990

noncomputable section

/-- A005043: Riordan numbers: a(n) = (n-1)*(2*a(n-1) + 3*a(n-2))/(n+1).

Offset 0, canonical program `A005043.P11838040305800302990`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005043 (n : ℕ) : ℤ :=
  A005043.P11838040305800302990.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005043.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A005087.P10391577523985143555

`A001221(n+1)-1+(n+1)%2`
-/

namespace A005087.P10391577523985143555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - 1 + (((n + 1) % 2 : ℕ) : ℤ)

end

end A005087.P10391577523985143555

noncomputable section

/-- A005087: Number of distinct odd primes dividing n.

Offset 1, canonical program `A005087.P10391577523985143555`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005087 (n : ℕ) : ℤ :=
  A005087.P10391577523985143555.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005087.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A005098.P10761952897232169496

`(A002144(n+1)-1)/4`
-/

namespace A005098.P10761952897232169496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002144 (n + 1) - 1 : ℚ) / 4

end

end A005098.P10761952897232169496

noncomputable section

/-- A005098: Numbers k such that 4k + 1 is prime.

Offset 1, canonical program `A005098.P10761952897232169496`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005098 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A005098.P10761952897232169496.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005098.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A005099.P16814233129974845155

`(A002145(n+1)+1)/4`
-/

namespace A005099.P16814233129974845155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002145 (n + 1) + 1 : ℚ) / 4

end

end A005099.P16814233129974845155

noncomputable section

/-- A005099: (( Primes == -1 (mod 4) ) + 1)/4.

Offset 1, canonical program `A005099.P16814233129974845155`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005099 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A005099.P16814233129974845155.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005099.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A005145.P7903299518883907964

`A000040(row(n)+1)`
-/

namespace A005145.P7903299518883907964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.triRow n + 1)

end

end A005145.P7903299518883907964

noncomputable section

/-- A005145: n copies of n-th prime.

Offset 1, canonical program `A005145.P7903299518883907964`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005145 (n : ℕ) : ℤ :=
  A005145.P7903299518883907964.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005145.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A005171.P15860856746370777121

`1-A010051(n+1)`
-/

namespace A005171.P15860856746370777121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010051 (n + 1)

end

end A005171.P15860856746370777121

noncomputable section

/-- A005171: Characteristic function of nonprimes: 0 if n is prime, else 1.

Offset 1, canonical program `A005171.P15860856746370777121`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005171 (n : ℕ) : ℤ :=
  A005171.P15860856746370777121.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005171.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A005203.P4677941980539604301

`a(n-1)*2^A000045(n-1)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A005203.P4677941980539604301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) * (2 : ℚ) ^ (A000045 (n - 1) : ℤ) + a (n - 2)

end

end A005203.P4677941980539604301

noncomputable section

/-- A005203: Fibonacci numbers (or rabbit sequence) converted to decimal.

Offset 0, canonical program `A005203.P4677941980539604301`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005203 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A005203.P4677941980539604301.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005203.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A005204.P1941875715060736425

`2^A000930(n-4)*a(n-1)+a(n-3)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A005204.P1941875715060736425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0, 0, 1] fun n a =>
  (2 : ℚ) ^ (A000930 (n - 4) : ℤ) * a (n - 1) + a (n - 3)

end

end A005204.P1941875715060736425

noncomputable section

/-- A005204: Coding a recurrence.

Offset 0, canonical program `A005204.P1941875715060736425`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005204 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A005204.P1941875715060736425.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005204.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A005371.P8747104698048379178

`A000032(A000032(n))`
-/

namespace A005371.P8747104698048379178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A000032 n).toNat

end

end A005371.P8747104698048379178

noncomputable section

/-- A005371: a(n) = L(L(n)), where L(n) are Lucas numbers A000032.

Offset 0, canonical program `A005371.P8747104698048379178`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005371 (n : ℕ) : ℤ :=
  A005371.P8747104698048379178.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005371.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A005372.P9673844454253185367

`A000032(1+A000032(n+1))`
-/

namespace A005372.P9673844454253185367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (1 + A000032 (n + 1)).toNat

end

end A005372.P9673844454253185367

noncomputable section

/-- A005372: a(n) = L(L(n+1)+1), where L(n) are Lucas numbers A000032.

Offset 0, canonical program `A005372.P9673844454253185367`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005372 (n : ℕ) : ℤ :=
  A005372.P9673844454253185367.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005372.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A005460.P5868538651287863130

`n!*A001296(n+1)`
-/

namespace A005460.P5868538651287863130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A001296 (n + 1)

end

end A005460.P5868538651287863130

noncomputable section

/-- A005460: a(n) = (3*n+4)*(n+3)!/24.

Offset 0, canonical program `A005460.P5868538651287863130`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005460 (n : ℕ) : ℤ :=
  A005460.P5868538651287863130.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005460.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A005518.P8872672557620915422

`A000040(a(n-1))` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`
-/

namespace A005518.P8872672557620915422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 8] fun n a =>
  A000040 (a (n - 1)).toNat

end

end A005518.P8872672557620915422

noncomputable section

/-- A005518: Largest label f(T) given to a rooted tree T with n nodes in Matula-Goebel labeling.

Offset 1, canonical program `A005518.P8872672557620915422`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005518 (n : ℕ) : ℤ :=
  A005518.P8872672557620915422.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005518.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A005558.P18386753089207024967

`A000108(floor((n+1)/2))*A000108(floor(n/2))*(2*floor(n/2)+1)`
-/

namespace A005558.P18386753089207024967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 ⌊(n + 1 : ℚ) / 2⌋.toNat * A000108 ⌊(n : ℚ) / 2⌋.toNat * (2 * ⌊(n : ℚ) / 2⌋ + 1)

end

end A005558.P18386753089207024967

noncomputable section

/-- A005558: a(n) is the number of n-step walks on square lattice such that 0 <= y <= x at each step.

Offset 0, canonical program `A005558.P18386753089207024967`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005558 (n : ℕ) : ℤ :=
  A005558.P18386753089207024967.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005558.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A005568.P12626986940016009255

`A000108(n)*A000108(n+1)`
-/

namespace A005568.P12626986940016009255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A000108 (n + 1)

end

end A005568.P12626986940016009255

noncomputable section

/-- A005568: Product of two successive Catalan numbers C(n)*C(n+1).

Offset 0, canonical program `A005568.P12626986940016009255`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005568 (n : ℕ) : ℤ :=
  A005568.P12626986940016009255.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005568.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A005573.P16196864534000188363

`6*a(n-1)-A005572(n-1)` with `a(0)=1`
-/

namespace A005573.P16196864534000188363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  6 * a (n - 1) - A005572 (n - 1)

end

end A005573.P16196864534000188363

noncomputable section

/-- A005573: Number of walks on cubic lattice (starting from origin and not going below xy plane).

Offset 0, canonical program `A005573.P16196864534000188363`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005573 (n : ℕ) : ℤ :=
  A005573.P16196864534000188363.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005573.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A005585.P5066831349655201454

`A000389(n+4)+A000389(n+5)`
-/

namespace A005585.P5066831349655201454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (n + 4) + A000389 (n + 5)

end

end A005585.P5066831349655201454

noncomputable section

/-- A005585: 5-dimensional pyramidal numbers: a(n) = n*(n+1)*(n+2)*(n+3)*(2n+3)/5!.

Offset 1, canonical program `A005585.P5066831349655201454`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(n+2)*(n+3)*(n+4)*(2*(n+1)+3)/5!` (program `A005585.P9317796794552167293`, by `A005585.P9317796794552167293.correct`). Lean does not check the parsing of the name. -/
def A005585 (n : ℕ) : ℤ :=
  A005585.P5066831349655201454.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(n+2)*(n+3)*(n+4)*(2*(n+1)+3)/5!` (program `A005585.P9317796794552167293`, by `A005585.P9317796794552167293.correct`). Lean does not check the parsing of the name. -/
def A005585.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A005593.P4912739495604859043

`(A000045(2*(n+1)+1)+A000045(2*(n+1)-1)+A000045(n+4)-2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A005593.P4912739495604859043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (2 * (n + 1) + 1) + A000045 (2 * (n + 1) - 1) + A000045 (n + 4) - 2 : ℚ) / 2

end

end A005593.P4912739495604859043

noncomputable section

/-- A005593: a(n) = (F(2n+1) + F(2n-1) + F(n+3) - 2)/2, where F() = Fibonacci numbers A000045.

Offset 1, canonical program `A005593.P4912739495604859043`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005593 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A005593.P4912739495604859043.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005593.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A005614.P5927283876123815402

`A005206(n+1)-A005206(n)`
-/

namespace A005614.P5927283876123815402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (n + 1) - A005206 n

end

end A005614.P5927283876123815402

noncomputable section

/-- A005614: The binary complement of the infinite Fibonacci word A003849. Start with 1, apply 0->1, 1->10, iterate, take limit.

Offset 0, canonical program `A005614.P5927283876123815402`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005614 (n : ℕ) : ℤ :=
  A005614.P5927283876123815402.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005614.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A005672.P11807324410083037504

`A000045(n+1)-2^floor(n/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A005672.P11807324410083037504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 1) : ℚ) - (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A005672.P11807324410083037504

noncomputable section

/-- A005672: a(n) = Fibonacci(n+1) - 2^floor(n/2).

Offset 0, canonical program `A005672.P11807324410083037504`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005672 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A005672.P11807324410083037504.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005672.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A005700.P14500087397422980431

`A000108(n)*A000108(n+2)-A000108(n+1)²`
-/

namespace A005700.P14500087397422980431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A000108 (n + 2) - A000108 (n + 1) ^ 2

end

end A005700.P14500087397422980431

noncomputable section

/-- A005700: a(n) = C(n)*C(n+2) - C(n+1)^2 where C() are the Catalan numbers A000108.

Offset 0, canonical program `A005700.P14500087397422980431`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005700 (n : ℕ) : ℤ :=
  A005700.P14500087397422980431.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005700.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A005717.P3550266723113261491

`(n+1)*A001006(n)`
-/

namespace A005717.P3550266723113261491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001006 n

end

end A005717.P3550266723113261491

noncomputable section

/-- A005717: Construct triangle in which n-th row is obtained by expanding (1 + x + x^2)^n and take the next-to-central column.

Offset 1, canonical program `A005717.P3550266723113261491`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005717 (n : ℕ) : ℤ :=
  A005717.P3550266723113261491.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005717.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A005775.P7825511991155880648

`A005773(n+3)-A001006(n+3)`
-/

namespace A005775.P7825511991155880648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 (n + 3) - A001006 (n + 3)

end

end A005775.P7825511991155880648

noncomputable section

/-- A005775: Number of compact-rooted directed animals of size n having 3 source points.

Offset 3, canonical program `A005775.P7825511991155880648`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005775 (n : ℕ) : ℤ :=
  A005775.P7825511991155880648.a (n - 3)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005775.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A005880.P18334174250944782880

`2*A000203(2*n+1)`
-/

namespace A005880.P18334174250944782880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000203 (2 * n + 1)

end

end A005880.P18334174250944782880

noncomputable section

/-- A005880: Theta series of D_4 lattice with respect to edge.

Offset 0, canonical program `A005880.P18334174250944782880`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005880 (n : ℕ) : ℤ :=
  A005880.P18334174250944782880.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005880.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A005969.P14635479376216106866

`1/25*(A000045(4*(n+1)+2)-(-1)^(n+1)*4*A000045(2*(n+1)+1)+6*(n+1)+3)`
-/

namespace A005969.P14635479376216106866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 25 * (A000045 (4 * (n + 1) + 2) - (-1) ^ (n + 1) * 4 * A000045 (2 * (n + 1) + 1) + (6 * (n + 1) : ℤ) + 3 : ℚ)

end

end A005969.P14635479376216106866

noncomputable section

/-- A005969: Sum of fourth powers of Fibonacci numbers.

Offset 1, canonical program `A005969.P14635479376216106866`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005969 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A005969.P14635479376216106866.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005969.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A005971.P9083751540979319941

`A000032(3*(n+1)+2)/2+3*(-1)^(n+1)*A000032(n)+3/2`
-/

namespace A005971.P9083751540979319941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (3 * (n + 1) + 2) : ℚ) / 2 + (3 * (-1) ^ (n + 1) * A000032 n : ℚ) + (3 : ℚ) / 2

end

end A005971.P9083751540979319941

noncomputable section

/-- A005971: Partial sums of cubes of Lucas numbers.

Offset 1, canonical program `A005971.P9083751540979319941`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005971 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A005971.P9083751540979319941.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005971.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A005972.P15898933163936439843

`A000045(4*(n+1)+2)+4*(-1)^(n+1)*(A000045(n+1)²+A000045(n+2)²)+6*(n+1)-5`
-/

namespace A005972.P15898933163936439843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (4 * (n + 1) + 2) + 4 * (-1) ^ (n + 1) * (A000045 (n + 1) ^ 2 + A000045 (n + 2) ^ 2) + (6 * (n + 1) : ℤ) - 5

end

end A005972.P15898933163936439843

noncomputable section

/-- A005972: Partial sums of fourth powers of Lucas numbers.

Offset 1, canonical program `A005972.P15898933163936439843`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005972 (n : ℕ) : ℤ :=
  A005972.P15898933163936439843.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005972.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A005999.P10147716973400053761

`A005997(n+1)-n²`
-/

namespace A005999.P10147716973400053761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005997 (n + 1) - (n ^ 2 : ℤ)

end

end A005999.P10147716973400053761

noncomputable section

/-- A005999: Number of paraffins.

Offset 1, canonical program `A005999.P10147716973400053761`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005999 (n : ℕ) : ℤ :=
  A005999.P10147716973400053761.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005999.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A006000.P2071552165053779125

`n+A006002(n)+1`
-/

namespace A006000.P2071552165053779125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A006002 n + 1

end

end A006000.P2071552165053779125

noncomputable section

/-- A006000: a(n) = (n+1)*(n^2+n+2)/2.

Offset 0, canonical program `A006000.P2071552165053779125`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006000 (n : ℕ) : ℤ :=
  A006000.P2071552165053779125.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006000.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A006005.P1228063357782503489

`A000040(n+1)-A000007(n)`
-/

namespace A006005.P1228063357782503489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A000007 n

end

end A006005.P1228063357782503489

noncomputable section

/-- A006005: The odd prime numbers together with 1.

Offset 1, canonical program `A006005.P1228063357782503489`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006005 (n : ℕ) : ℤ :=
  A006005.P1228063357782503489.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006005.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A006011.P3668477608306639061

`3*A002415(n)`
-/

namespace A006011.P3668477608306639061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A002415 n

end

end A006011.P3668477608306639061

noncomputable section

/-- A006011: a(n) = n^2*(n^2 - 1)/4.

Offset 0, canonical program `A006011.P3668477608306639061`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006011 (n : ℕ) : ℤ :=
  A006011.P3668477608306639061.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006011.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A006094.P10257567645245129766

`A000040(n+1)*A000040(n+2)`
-/

namespace A006094.P10257567645245129766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A000040 (n + 2)

end

end A006094.P10257567645245129766

noncomputable section

/-- A006094: Products of 2 successive primes.

Offset 1, canonical program `A006094.P10257567645245129766`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006094 (n : ℕ) : ℤ :=
  A006094.P10257567645245129766.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006094.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A006095.P3440848967568071249

`a(n-1)+A000217(A000225(n-1))` with `a(0)=0`
-/

namespace A006095.P3440848967568071249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A000217 (A000225 (n - 1)).toNat

end

end A006095.P3440848967568071249

noncomputable section

/-- A006095: Gaussian binomial coefficient [n, 2] for q = 2.

Offset 0, canonical program `A006095.P3440848967568071249`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006095 (n : ℕ) : ℤ :=
  A006095.P3440848967568071249.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006095.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A006152.P4174681156060907627

`(n+1)*A000262(n)`
-/

namespace A006152.P4174681156060907627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000262 n

end

end A006152.P4174681156060907627

noncomputable section

/-- A006152: Exponential generating function x*exp(x/(1-x)).

Offset 1, canonical program `A006152.P4174681156060907627`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006152 (n : ℕ) : ℤ :=
  A006152.P4174681156060907627.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006152.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A006235.P9096983184601852909

`(n+1)*(A001075(n+1)-1)`
-/

namespace A006235.P9096983184601852909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A001075 (n + 1) - 1)

end

end A006235.P9096983184601852909

noncomputable section

/-- A006235: Number of spanning trees of the n-prism graph Y_n (regarding case n = 2 as a multigraph).

Offset 1, canonical program `A006235.P9096983184601852909`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006235 (n : ℕ) : ℤ :=
  A006235.P9096983184601852909.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006235.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A006238.P18425104944193782718

`A001906(n+1)*A004254(n+1)`
-/

namespace A006238.P18425104944193782718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (n + 1) * A004254 (n + 1)

end

end A006238.P18425104944193782718

noncomputable section

/-- A006238: Number of spanning trees in the 3 X n grid graph.

Offset 1, canonical program `A006238.P18425104944193782718`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006238 (n : ℕ) : ℤ :=
  A006238.P18425104944193782718.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006238.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A006254.P17336495081768971287

`(A000040(n+2)+1)/2`
-/

namespace A006254.P17336495081768971287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 2) + 1 : ℚ) / 2

end

end A006254.P17336495081768971287

noncomputable section

/-- A006254: Numbers k such that 2k-1 is prime.

Offset 1, canonical program `A006254.P17336495081768971287`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006254 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A006254.P17336495081768971287.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006254.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A006261.P4266430943369696028

`a(n-1)+A000127(n)` with `a(0)=1`
-/

namespace A006261.P4266430943369696028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A000127 n

end

end A006261.P4266430943369696028

noncomputable section

/-- A006261: a(n) = Sum_{k=0..5} binomial(n,k).

Offset 0, canonical program `A006261.P4266430943369696028`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006261 (n : ℕ) : ℤ :=
  A006261.P4266430943369696028.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006261.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A006276.P7362799524068984658

`2*A000045(2*3^floor(n/2)+1)-A000045(2*3^floor(n/2))-(-1)^n`
-/

namespace A006276.P7362799524068984658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 (SequenceMachineLib.roundAway (2 * (3 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) + 1)).toNat - A000045 (SequenceMachineLib.roundAway (2 * (3 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))).toNat - (-1) ^ n

end

end A006276.P7362799524068984658

noncomputable section

/-- A006276: Pierce expansion of (3 - sqrt(5))/2.

Offset 0, canonical program `A006276.P7362799524068984658`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006276 (n : ℕ) : ℤ :=
  A006276.P7362799524068984658.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006276.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A006332.P18180310474384925349

`2*A006858(n)`
-/

namespace A006332.P18180310474384925349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006858 n

end

end A006332.P18180310474384925349

noncomputable section

/-- A006332: From the enumeration of corners.

Offset 0, canonical program `A006332.P18180310474384925349`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006332 (n : ℕ) : ℤ :=
  A006332.P18180310474384925349.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006332.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A006450.P16445646407241112379

`A000040(A000040(n+1))`
-/

namespace A006450.P16445646407241112379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000040 (n + 1)).toNat

end

end A006450.P16445646407241112379

noncomputable section

/-- A006450: Prime-indexed primes: primes with prime subscripts.

Offset 1, canonical program `A006450.P16445646407241112379`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006450 (n : ℕ) : ℤ :=
  A006450.P16445646407241112379.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006450.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A006472.P13638201114310649646

`a(n-1)*A000217(n)` with `a(0)=1`
-/

namespace A006472.P13638201114310649646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A000217 n

end

end A006472.P13638201114310649646

noncomputable section

/-- A006472: a(n) = n!*(n-1)!/2^(n-1).

Offset 1, canonical program `A006472.P13638201114310649646`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006472 (n : ℕ) : ℤ :=
  A006472.P13638201114310649646.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006472.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A006480.P12463522902644750404

`A005809(n)*A000984(n)`
-/

namespace A006480.P12463522902644750404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005809 n * A000984 n

end

end A006480.P12463522902644750404

noncomputable section

/-- A006480: De Bruijn's S(3,n): (3n)!/(n!)^3.

Offset 0, canonical program `A006480.P12463522902644750404`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006480 (n : ℕ) : ℤ :=
  A006480.P12463522902644750404.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006480.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A006500.P1089599080171118876

`A000045(floor(n/3)+3)^(n%3)*A000045(floor(n/3)+2)^(3-n%3)`
-/

namespace A006500.P1089599080171118876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (⌊(n : ℚ) / 3⌋ + 3).toNat ^ (n % 3) : ℚ) * (A000045 (⌊(n : ℚ) / 3⌋ + 2).toNat : ℚ) ^ (3 - ((n % 3 : ℕ) : ℤ) : ℤ)

end

end A006500.P1089599080171118876

noncomputable section

/-- A006500: Restricted combinations.

Offset 0, canonical program `A006500.P1089599080171118876`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006500 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A006500.P1089599080171118876.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006500.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A006520.P1719427707972863526

`A136013(n+1)+n+1`
-/

namespace A006520.P1719427707972863526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136013 (n + 1) + (n + 1 : ℤ)

end

end A006520.P1719427707972863526

noncomputable section

/-- A006520: Partial sums of A006519.

Offset 1, canonical program `A006520.P1719427707972863526`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006520 (n : ℕ) : ℤ :=
  A006520.P1719427707972863526.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006520.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A006588.P10147441929737972849

`A000302(n)*A005809(n)`
-/

namespace A006588.P10147441929737972849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n * A005809 n

end

end A006588.P10147441929737972849

noncomputable section

/-- A006588: a(n) = 4^n*(3*n)!/((2*n)!*n!).

Offset 0, canonical program `A006588.P10147441929737972849`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006588 (n : ℕ) : ℤ :=
  A006588.P10147441929737972849.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006588.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A006629.P1664093958388790067

`(n+1)*A000139(n+1)`
-/

namespace A006629.P1664093958388790067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000139 (n + 1)

end

end A006629.P1664093958388790067

noncomputable section

/-- A006629: Self-convolution 4th power of A001764, which enumerates ternary trees.

Offset 0, canonical program `A006629.P1664093958388790067`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006629 (n : ℕ) : ℤ :=
  A006629.P1664093958388790067.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006629.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A006630.P15006084455507203146

`(n+1)/2*A000139(n+2)`
-/

namespace A006630.P15006084455507203146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A000139 (n + 2) : ℚ)

end

end A006630.P15006084455507203146

noncomputable section

/-- A006630: From generalized Catalan numbers.

Offset 0, canonical program `A006630.P15006084455507203146`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006630 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A006630.P15006084455507203146.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006630.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A006633.P1750214595423413622

`(n+1)*A000260(n+1)`
-/

namespace A006633.P1750214595423413622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000260 (n + 1)

end

end A006633.P1750214595423413622

noncomputable section

/-- A006633: Expansion of hypergeom([3/2, 7/4, 2, 9/4], [7/3, 8/3, 3], (256/27)*x).

Offset 0, canonical program `A006633.P1750214595423413622`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006633 (n : ℕ) : ℤ :=
  A006633.P1750214595423413622.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006633.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A006646.P8169105596413989403

`2^(n-3)*(A002203(n)-2)`
-/

namespace A006646.P8169105596413989403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ) * (A002203 n - 2 : ℚ)

end

end A006646.P8169105596413989403

noncomputable section

/-- A006646: Exponential self-convolution of Pell numbers.

Offset 0, canonical program `A006646.P8169105596413989403`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006646 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A006646.P8169105596413989403.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006646.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A006668.P5384466463075513061

`2^(n-4)*(A002203(n)-2)`
-/

namespace A006668.P5384466463075513061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 4 : ℤ) * (A002203 n - 2 : ℚ)

end

end A006668.P5384466463075513061

noncomputable section

/-- A006668: Exponential self-convolution of Pell numbers (divided by 2).

Offset 0, canonical program `A006668.P5384466463075513061`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006668 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A006668.P5384466463075513061.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006668.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A006675.P9797569461149319044

`A001705(n)-A000254(n)`
-/

namespace A006675.P9797569461149319044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001705 n - A000254 n

end

end A006675.P9797569461149319044

noncomputable section

/-- A006675: Number of paths through an array.

Offset 0, canonical program `A006675.P9797569461149319044`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006675 (n : ℕ) : ℤ :=
  A006675.P9797569461149319044.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006675.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A006880.P1375622950831351857

`A000720(10^n)`
-/

namespace A006880.P1375622950831351857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (10 ^ n)

end

end A006880.P1375622950831351857

noncomputable section

/-- A006880: Number of primes < 10^n.

Offset 0, canonical program `A006880.P1375622950831351857`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006880 (n : ℕ) : ℤ :=
  A006880.P1375622950831351857.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006880.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A006894.P12103002077536023779

`A000124(a(n-1))` with `a(0)=1`
-/

namespace A006894.P12103002077536023779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000124 (a (n - 1)).toNat

end

end A006894.P12103002077536023779

noncomputable section

/-- A006894: Number of planted 3-trees of height < n.

Offset 1, canonical program `A006894.P12103002077536023779`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006894 (n : ℕ) : ℤ :=
  A006894.P12103002077536023779.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006894.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A006988.P3928482593834028608

`A000040(10^n)`
-/

namespace A006988.P3928482593834028608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (10 ^ n)

end

end A006988.P3928482593834028608

noncomputable section

/-- A006988: a(n) = (10^n)-th prime.

Offset 0, canonical program `A006988.P3928482593834028608`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006988 (n : ℕ) : ℤ :=
  A006988.P3928482593834028608.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006988.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A006999.P3401224636589051846

`A061419(n+1)-1`
-/

namespace A006999.P3401224636589051846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061419 (n + 1) - 1

end

end A006999.P3401224636589051846

noncomputable section

/-- A006999: Partitioning integers to avoid arithmetic progressions of length 3.

Offset 0, canonical program `A006999.P3401224636589051846`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006999 (n : ℕ) : ℤ :=
  A006999.P3401224636589051846.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006999.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A007004.P7395155304073833987

`A000108(n)*C(3*n, n)`
-/

namespace A007004.P7395155304073833987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * (Nat.choose (3 * n) n : ℤ)

end

end A007004.P7395155304073833987

noncomputable section

/-- A007004: a(n) = (3*n)! / ((n+1)*(n!)^3).

Offset 0, canonical program `A007004.P7395155304073833987`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007004 (n : ℕ) : ℤ :=
  A007004.P7395155304073833987.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007004.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A007054.P7178060541691833380

`4*A000108(n)-A000108(n+1)`
-/

namespace A007054.P7178060541691833380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000108 n - A000108 (n + 1)

end

end A007054.P7178060541691833380

noncomputable section

/-- A007054: Super ballot numbers: 6(2n)!/(n!(n+2)!).

Offset 0, canonical program `A007054.P7178060541691833380`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007054 (n : ℕ) : ℤ :=
  A007054.P7178060541691833380.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007054.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A007097.P1281123908551689032

`A000040(a(n-1))` with `a(0)=1`
-/

namespace A007097.P1281123908551689032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000040 (a (n - 1)).toNat

end

end A007097.P1281123908551689032

noncomputable section

/-- A007097: Primeth recurrence: a(n+1) = a(n)-th prime.

Offset 0, canonical program `A007097.P1281123908551689032`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007097 (n : ℕ) : ℤ :=
  A007097.P1281123908551689032.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007097.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A007123.P7395828226839827993

`(A000108(n)+A001405(n))/2`
-/

namespace A007123.P7395828226839827993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 n + A001405 n : ℚ) / 2

end

end A007123.P7395828226839827993

noncomputable section

/-- A007123: Number of connected unit interval graphs with n nodes; also number of bracelets (turnover necklaces) with n black beads and n-1 white beads.

Offset 1, canonical program `A007123.P7395828226839827993`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007123 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A007123.P7395828226839827993.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007123.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A007226.P15452380064460553406

`(2*n+1)*A000139(n)`
-/

namespace A007226.P15452380064460553406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A000139 n

end

end A007226.P15452380064460553406

noncomputable section

/-- A007226: a(n) = 2*det(M(n; -1))/det(M(n; 0)), where M(n; m) is the n X n matrix with (i,j)-th element equal to 1/binomial(n + i + j + m, n).

Offset 0, canonical program `A007226.P15452380064460553406`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007226 (n : ℕ) : ℤ :=
  A007226.P15452380064460553406.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007226.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A007421.P6096517627125049268

`2-A001222(n+1)%2`
-/

namespace A007421.P6096517627125049268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.tmod (A001222 (n + 1)) 2

end

end A007421.P6096517627125049268

noncomputable section

/-- A007421: Liouville's function: parity of number of primes dividing n (with multiplicity).

Offset 1, canonical program `A007421.P6096517627125049268`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007421 (n : ℕ) : ℤ :=
  A007421.P6096517627125049268.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007421.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A007424.P14149509109381921245

`2-A008966(n+1)`
-/

namespace A007424.P14149509109381921245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A008966 (n + 1)

end

end A007424.P14149509109381921245

noncomputable section

/-- A007424: a(n) = 1 if n is squarefree, otherwise 2.

Offset 1, canonical program `A007424.P14149509109381921245`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007424 (n : ℕ) : ℤ :=
  A007424.P14149509109381921245.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007424.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A007427.P16363569186413612215

`∑{d}[n+1, A008683(#)*A008683((n+1)/#)]`
-/

namespace A007427.P16363569186413612215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007427.P16363569186413612215

noncomputable section

/-- A007427: Moebius transform applied twice to sequence 1,0,0,0,....

Offset 1, canonical program `A007427.P16363569186413612215`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007427 (n : ℕ) : ℤ :=
  A007427.P16363569186413612215.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007427.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A007436.P2979354749986900040

`∑{d}[n+1, A000045(#)*A008683((n+1)/#)]`
-/

namespace A007436.P2979354749986900040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000045 d * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007436.P2979354749986900040

noncomputable section

/-- A007436: Moebius transform of Fibonacci numbers.

Offset 1, canonical program `A007436.P2979354749986900040`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007436 (n : ℕ) : ℤ :=
  A007436.P2979354749986900040.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007436.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A007437.P4259273858504125532

`1/2*(A000203(n+1)+A001157(n+1))`
-/

namespace A007437.P4259273858504125532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A000203 (n + 1) + A001157 (n + 1) : ℚ)

end

end A007437.P4259273858504125532

noncomputable section

/-- A007437: Inverse Moebius transform of triangular numbers.

Offset 1, canonical program `A007437.P4259273858504125532`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007437 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A007437.P4259273858504125532.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007437.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A007444.P105140508511523845

`∑{d}[n+1, A000040(#)*A008683((n+1)/#)]`
-/

namespace A007444.P105140508511523845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000040 d * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007444.P105140508511523845

noncomputable section

/-- A007444: Moebius transform of primes.

Offset 1, canonical program `A007444.P105140508511523845`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007444 (n : ℕ) : ℤ :=
  A007444.P105140508511523845.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007444.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A007501.P14834799772468796310

`A006893(n+1)+1`
-/

namespace A007501.P14834799772468796310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006893 (n + 1) + 1

end

end A007501.P14834799772468796310

noncomputable section

/-- A007501: a(0) = 2; for n >= 0, a(n+1) = a(n)*(a(n)+1)/2.

Offset 0, canonical program `A007501.P14834799772468796310`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007501 (n : ℕ) : ℤ :=
  A007501.P14834799772468796310.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007501.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A007663.P6074951402659707018

`3*A001045(A000040(n+2)-1)/A000040(n+2)`
-/

namespace A007663.P6074951402659707018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A001045 (A000040 (n + 2) - 1).toNat : ℚ) / (A000040 (n + 2) : ℚ)

end

end A007663.P6074951402659707018

noncomputable section

/-- A007663: Fermat quotients: (2^(p-1)-1)/p, where p=prime(n).

Offset 2, canonical program `A007663.P6074951402659707018`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007663 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A007663.P6074951402659707018.a (n - 2))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007663.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A007664.P5381836251417023660

`1+(n-1-A003056(n)*(A003056(n)-1)/2)*2^A003056(n)`
-/

namespace A007664.P5381836251417023660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 + (((n : ℤ) - 1 : ℚ) - (A003056 n * (A003056 n - 1) : ℚ) / 2) * (2 : ℚ) ^ (A003056 n : ℤ)

end

end A007664.P5381836251417023660

noncomputable section

/-- A007664: Reve's puzzle: number of moves needed to solve the Towers of Hanoi puzzle with 4 pegs and n disks, according to the Frame-Stewart algorithm.

Offset 0, canonical program `A007664.P5381836251417023660`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007664 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A007664.P5381836251417023660.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007664.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A007667.P14906312947735841670

`3*A006061(n+1)+2`
-/

namespace A007667.P14906312947735841670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A006061 (n + 1) + 2

end

end A007667.P14906312947735841670

noncomputable section

/-- A007667: The sum of both two and three consecutive squares.

Offset 1, canonical program `A007667.P14906312947735841670`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007667 (n : ℕ) : ℤ :=
  A007667.P14906312947735841670.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007667.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A007807.P14675783805972562567

`A005831(n+1)-1`
-/

namespace A007807.P14675783805972562567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005831 (n + 1) - 1

end

end A007807.P14675783805972562567

noncomputable section

/-- A007807: A variation on Euclid: a(n)=g(n)-1, where g(0)=0, g(1)=1, g(n+1)=g(n)(g(n-1)+1).

Offset 1, canonical program `A007807.P14675783805972562567`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007807 (n : ℕ) : ℤ :=
  A007807.P14675783805972562567.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007807.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A007911.P10335678480540530897

`A006882(n+2)-A006882(n+1)`
-/

namespace A007911.P10335678480540530897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (n + 2) - A006882 (n + 1)

end

end A007911.P10335678480540530897

noncomputable section

/-- A007911: a(n) = (n-1)!! - (n-2)!!.

Offset 3, canonical program `A007911.P10335678480540530897`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007911 (n : ℕ) : ℤ :=
  A007911.P10335678480540530897.a (n - 3)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007911.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A007917.P1836476777957611455

`A000040(A000720(n+2))`
-/

namespace A007917.P1836476777957611455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (n + 2)).toNat

end

end A007917.P1836476777957611455

noncomputable section

/-- A007917: Version 1 of the "previous prime" function: largest prime <= n.

Offset 2, canonical program `A007917.P1836476777957611455`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007917 (n : ℕ) : ℤ :=
  A007917.P1836476777957611455.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007917.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A007965.P1414639077597057692

`(n+1)^A000040(n+1)-A000040(n+1)^(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A007965.P1414639077597057692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A000040 (n + 1) : ℤ) - (A000040 (n + 1) ^ (n + 1) : ℚ)

end

end A007965.P1414639077597057692

noncomputable section

/-- A007965: a(n) = n^prime(n) - prime(n)^n.

Offset 1, canonical program `A007965.P1414639077597057692`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007965 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A007965.P1414639077597057692.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007965.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A008347.P7172351178524916195

`A000040(n)-a(n-1)` with `a(0)=0`
-/

namespace A008347.P7172351178524916195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000040 n - a (n - 1)

end

end A008347.P7172351178524916195

noncomputable section

/-- A008347: a(n) = Sum_{i=0..n-1} (-1)^i * prime(n-i).

Offset 0, canonical program `A008347.P7172351178524916195`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A008347 (n : ℕ) : ℤ :=
  A008347.P7172351178524916195.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A008347.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A008352.P12973497122268618844

`a(n-1)+10^A000045(n)*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A008352.P12973497122268618844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + (10 : ℚ) ^ (A000045 n : ℤ) * a (n - 2)

end

end A008352.P12973497122268618844

noncomputable section

/-- A008352: a(n) is formed by concatenating a(n-2) and a(n-1), with a(0) = 1, a(1) = 2.

Offset 0, canonical program `A008352.P12973497122268618844`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A008352 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A008352.P12973497122268618844.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A008352.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A008412.P13878766666542366952

`A005899(n)+A005899(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A008412.P13878766666542366952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005899 n + A005899 (n - 1) + a (n - 1)

end

end A008412.P13878766666542366952

noncomputable section

/-- A008412: Coordination sequence for 4-dimensional cubic lattice (points on surface of 4-dimensional cross-polytope).

Offset 0, canonical program `A008412.P13878766666542366952`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A008412 (n : ℕ) : ℤ :=
  A008412.P13878766666542366952.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A008412.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A008438.P15910146822394179905

`A000203(1+2*n)`
-/

namespace A008438.P15910146822394179905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (1 + 2 * n)

end

end A008438.P15910146822394179905

noncomputable section

/-- A008438: Sum of divisors of 2*n + 1.

Offset 0, canonical program `A008438.P15910146822394179905`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A008438 (n : ℕ) : ℤ :=
  A008438.P15910146822394179905.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A008438.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A008474.P119709174749842562

`A001222(n+1)+A008472(n+1)`
-/

namespace A008474.P119709174749842562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + A008472 (n + 1)

end

end A008474.P119709174749842562

noncomputable section

/-- A008474: If n = Product (p_j^k_j) then a(n) = Sum (p_j + k_j).

Offset 1, canonical program `A008474.P119709174749842562`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A008474 (n : ℕ) : ℤ :=
  A008474.P119709174749842562.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A008474.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A008624.P13884143058626142684

`A110654(A028242(n))`
-/

namespace A008624.P13884143058626142684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A028242 n).toNat

end

end A008624.P13884143058626142684

noncomputable section

/-- A008624: Expansion of g.f. (1 + x^3)/((1 - x^2)*(1 - x^4)) = (1 - x + x^2)/((1 + x)*(1 - x)^2*(1 + x^2)).

Offset 0, canonical program `A008624.P13884143058626142684`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A008624 (n : ℕ) : ℤ :=
  A008624.P13884143058626142684.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A008624.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A008778.P5727098079324999072

`A000217(n)+A000292(n+1)`
-/

namespace A008778.P5727098079324999072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + A000292 (n + 1)

end

end A008778.P5727098079324999072

noncomputable section

/-- A008778: a(n) = (n+1)*(n^2 +8*n +6)/6. Number of n-dimensional partitions of 4. Number of terms in 4th derivative of a function composed with itself n times.

Offset 0, canonical program `A008778.P5727098079324999072`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(n²+8*n+6)/6` (program `A008778.P669441174636503085`, by `A008778.P669441174636503085.correct`). Lean does not check the parsing of the name. -/
def A008778 (n : ℕ) : ℤ :=
  A008778.P5727098079324999072.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(n²+8*n+6)/6` (program `A008778.P669441174636503085`, by `A008778.P669441174636503085.correct`). Lean does not check the parsing of the name. -/
def A008778.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A008835.P7771124106947273383

`A000188(A000188(n+1))^4`
-/

namespace A008835.P7771124106947273383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A000188 (n + 1)).toNat ^ 4

end

end A008835.P7771124106947273383

noncomputable section

/-- A008835: Largest 4th power dividing n.

Offset 1, canonical program `A008835.P7771124106947273383`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A008835 (n : ℕ) : ℤ :=
  A008835.P7771124106947273383.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A008835.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A008836.P691704047226663751`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A008836 (n : ℕ) : ℤ :=
  A008836.P691704047226663751.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A008836.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A008837.P8759727606906235899

`A000217(A000040(n+1)-1)`
-/

namespace A008837.P8759727606906235899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000040 (n + 1) - 1).toNat

end

end A008837.P8759727606906235899

noncomputable section

/-- A008837: a(n) = p*(p-1)/2 for p = prime(n).

Offset 1, canonical program `A008837.P8759727606906235899`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A008837 (n : ℕ) : ℤ :=
  A008837.P8759727606906235899.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A008837.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A008973.P5055514071689765304

`A000312(A000045(n))`
-/

namespace A008973.P5055514071689765304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (A000045 n).toNat

end

end A008973.P5055514071689765304

noncomputable section

/-- A008973: Fibonacci number F(n) to power F(n).

Offset 0, canonical program `A008973.P5055514071689765304`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A008973 (n : ℕ) : ℤ :=
  A008973.P5055514071689765304.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A008973.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A009116.P721434042884447878

`(-1)^n*A146559(n)`
-/

namespace A009116.P721434042884447878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A146559 n

end

end A009116.P721434042884447878

noncomputable section

/-- A009116: Expansion of e.g.f. cos(x) / exp(x).

Offset 0, canonical program `A009116.P721434042884447878`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A009116 (n : ℕ) : ℤ :=
  A009116.P721434042884447878.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A009116.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A009117.P9076829232289267854

`(-1)^n*A081294(n)`
-/

namespace A009117.P9076829232289267854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A081294 n

end

end A009117.P9076829232289267854

noncomputable section

/-- A009117: Expansion of e.g.f.: 1/2 + exp(-4*x)/2.

Offset 0, canonical program `A009117.P9076829232289267854`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A009117 (n : ℕ) : ℤ :=
  A009117.P9076829232289267854.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A009117.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A009963.P17395409294912985605

`A000178(row(n))/(A000178(col(n))*A000178(row(n)-col(n)))`
-/

namespace A009963.P17395409294912985605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000178 (SequenceMachineLib.triRow n) : ℚ) / (A000178 (SequenceMachineLib.triCol n) * A000178 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n) : ℚ)

end

end A009963.P17395409294912985605

noncomputable section

/-- A009963: Triangle of numbers n!(n-1)!...(n-k+1)!/(1!2!...k!).

Offset 0, canonical program `A009963.P17395409294912985605`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A009963 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A009963.P17395409294912985605.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A009963.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A010014.P9318243435609865965

`A005899(n)+A195322(n)`
-/

namespace A010014.P9318243435609865965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005899 n + A195322 n

end

end A010014.P9318243435609865965

noncomputable section

/-- A010014: a(0) = 1, a(n) = 24*n^2 + 2 for n>0.

Offset 0, canonical program `A010014.P9318243435609865965`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A010014 (n : ℕ) : ℤ :=
  A010014.P9318243435609865965.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A010014.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A010021.P18321663100364544978

`A008527(2*n)`
-/

namespace A010021.P18321663100364544978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008527 (2 * n)

end

end A010021.P18321663100364544978

noncomputable section

/-- A010021: a(0) = 1, a(n) = 32*n^2 + 2 for n > 0.

Offset 0, canonical program `A010021.P18321663100364544978`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A010021 (n : ℕ) : ℤ :=
  A010021.P18321663100364544978.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A010021.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A010022.P6815587963491131346

`A008253(4*n)`
-/

namespace A010022.P6815587963491131346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008253 (4 * n)

end

end A010022.P6815587963491131346

noncomputable section

/-- A010022: a(0) = 1, a(n) = 40*n^2 + 2 for n>0.

Offset 0, canonical program `A010022.P6815587963491131346`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A010022 (n : ℕ) : ℤ :=
  A010022.P6815587963491131346.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A010022.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A010054.P18347828677204923252

`A005369(2*n)`
-/

namespace A010054.P18347828677204923252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005369 (2 * n)

end

end A010054.P18347828677204923252

noncomputable section

/-- A010054: a(n) = 1 if n is a triangular number, otherwise 0.

Offset 0, canonical program `A010054.P18347828677204923252`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A010054 (n : ℕ) : ℤ :=
  A010054.P18347828677204923252.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A010054.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A010696.P309287587077170374

`2*A010684(n)`
-/

namespace A010696.P309287587077170374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A010684 n

end

end A010696.P309287587077170374

noncomputable section

/-- A010696: Periodic sequence: Repeat 2,6.

Offset 0, canonical program `A010696.P309287587077170374`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A010696 (n : ℕ) : ℤ :=
  A010696.P309287587077170374.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A010696.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A010751.P13596492722488707234

`(-1)^A002024(n+1)*(A007590(A002024(n+1))-n)`
-/

namespace A010751.P13596492722488707234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A002024 (n + 1) : ℤ) * (A007590 (A002024 (n + 1)).toNat - (n : ℤ) : ℚ)

end

end A010751.P13596492722488707234

noncomputable section

/-- A010751: Up once, down twice, up three times, down four times, ...

Offset 0, canonical program `A010751.P13596492722488707234`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A010751 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A010751.P13596492722488707234.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A010751.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A011906.P12748161103311910433

`A001109(n+1)*A011900(n)`
-/

namespace A011906.P12748161103311910433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 (n + 1) * A011900 n

end

end A011906.P12748161103311910433

noncomputable section

/-- A011906: If b(n) is A011900(n) and c(n) is A001109(n), then a(n) = b(n)*c(n) = b(n) + (b(n)+1) + (b(n)+2) + ... + c(n).

Offset 1, canonical program `A011906.P12748161103311910433`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A011906 (n : ℕ) : ℤ :=
  A011906.P12748161103311910433.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A011906.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A011918.P7079759554969539446

`A011916(n+1)+A011922(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A011918.P7079759554969539446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011916 (n + 1) + A011922 (n + 1) - 1

end

end A011918.P7079759554969539446

noncomputable section

/-- A011918: a(n) = A011916(n) + A011922(n) - 1.

Offset 1, canonical program `A011918.P7079759554969539446`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A011918 (n : ℕ) : ℤ :=
  A011918.P7079759554969539446.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A011918.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A011920.P3454731049427468130

`A011916(n+1)*(A011916(n+1)+1)`
-/

namespace A011920.P3454731049427468130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011916 (n + 1) * (A011916 (n + 1) + 1)

end

end A011920.P3454731049427468130

noncomputable section

/-- A011920: a(n) = b(n)*(b(n)+1) = b(n) + ... + c(n), where b(n) = A011916(n), c(n) = A011918(n).

Offset 1, canonical program `A011920.P3454731049427468130`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A011920 (n : ℕ) : ℤ :=
  A011920.P3454731049427468130.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A011920.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A012814.P11094650536221006162

`A000931(5*n+2)`
-/

namespace A012814.P11094650536221006162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (5 * n + 2)

end

end A012814.P11094650536221006162

noncomputable section

/-- A012814: Take every 5th term of Padovan sequence A000931, beginning with the third term.

Offset 0, canonical program `A012814.P11094650536221006162`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A012814 (n : ℕ) : ℤ :=
  A012814.P11094650536221006162.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A012814.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A013430.P909445180935276507

`A006228(n+1)-n*A006228(n)`
-/

namespace A013430.P909445180935276507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006228 (n + 1) - (n : ℤ) * A006228 n

end

end A013430.P909445180935276507

noncomputable section

/-- A013430: Expansion of e.g.f. exp(arcsin(x)-arctanh(x)).

Offset 0, canonical program `A013430.P909445180935276507`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A013430 (n : ℕ) : ℤ :=
  A013430.P909445180935276507.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A013430.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A013603.P6161341145836320004

`2^(n+1)-A000040(A000720(2^(n+1)))`
-/

namespace A013603.P6161341145836320004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A000040 (A000720 (2 ^ (n + 1))).toNat

end

end A013603.P6161341145836320004

noncomputable section

/-- A013603: Difference between 2^n and the nearest prime less than or equal to 2^n.

Offset 1, canonical program `A013603.P6161341145836320004`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A013603 (n : ℕ) : ℤ :=
  A013603.P6161341145836320004.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A013603.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A013915.P5526775988631183026

`n+A013655(n)`
-/

namespace A013915.P5526775988631183026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A013655 n

end

end A013915.P5526775988631183026

noncomputable section

/-- A013915: a(n) = F(n) + L(n) + n, where F(n) (A000045) and L(n) (A000204) are Fibonacci and Lucas numbers respectively.

Offset 0, canonical program `A013915.P5526775988631183026`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A013915 (n : ℕ) : ℤ :=
  A013915.P5526775988631183026.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A013915.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A013939.P14869873943907335378

`a(n-1)+A001221(n+1)` with `a(0)=0`
-/

namespace A013939.P14869873943907335378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A001221 (n + 1)

end

end A013939.P14869873943907335378

noncomputable section

/-- A013939: Partial sums of sequence A001221 (number of distinct primes dividing n).

Offset 1, canonical program `A013939.P14869873943907335378`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A013939 (n : ℕ) : ℤ :=
  A013939.P14869873943907335378.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A013939.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A013989.P5298881847955433932

`A000085(n)*(n+1)`
-/

namespace A013989.P5298881847955433932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 n * (n + 1 : ℤ)

end

end A013989.P5298881847955433932

noncomputable section

/-- A013989: a(n) = (n+1)*(a(n-1)/n + a(n-2)), with a(0)=1, a(1)=2.

Offset 0, canonical program `A013989.P5298881847955433932`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A013989 (n : ℕ) : ℤ :=
  A013989.P5298881847955433932.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A013989.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A014126.P4441119161302153518

`1/72*(4*n^3+30*n²+72*n+55+8*A049347(n)+9*(-1)^n)`
-/

namespace A014126.P4441119161302153518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 72 * ((4 * n ^ 3 + 30 * n ^ 2 + 72 * n + 55 : ℤ) + 8 * A049347 n + 9 * (-1) ^ n : ℚ)

end

end A014126.P4441119161302153518

noncomputable section

/-- A014126: Number of partitions of 2*n into at most 4 parts.

Offset 0, canonical program `A014126.P4441119161302153518`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014126 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A014126.P4441119161302153518.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014126.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A014138.P8012092781455815566

`A014137(n)-1`
-/

namespace A014138.P8012092781455815566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 n - 1

end

end A014138.P8012092781455815566

noncomputable section

/-- A014138: Partial sums of (Catalan numbers starting 1, 2, 5, ...).

Offset 0, canonical program `A014138.P8012092781455815566`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014138 (n : ℕ) : ℤ :=
  A014138.P8012092781455815566.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014138.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A014162.P11910415547941500673

`A000045(n+6)-n*(n+7)/2-8`
-/

namespace A014162.P11910415547941500673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 6) : ℚ) - (n * (n + 7) : ℚ) / 2 - 8

end

end A014162.P11910415547941500673

noncomputable section

/-- A014162: Apply partial sum operator thrice to Fibonacci numbers.

Offset 0, canonical program `A014162.P11910415547941500673`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014162 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A014162.P11910415547941500673.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014162.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A014166.P2106924213110474505

`A000045(n+8)-(n^3+12*n²+59*n+126)/6`
-/

namespace A014166.P2106924213110474505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 8) : ℚ) - (n ^ 3 + 12 * n ^ 2 + 59 * n + 126 : ℚ) / 6

end

end A014166.P2106924213110474505

noncomputable section

/-- A014166: Apply partial sum operator 4 times to Fibonacci numbers.

Offset 0, canonical program `A014166.P2106924213110474505`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014166 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A014166.P2106924213110474505.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014166.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A014193.P13203047333368208104

`A000040(n+1)+A008683(n+1)`
-/

namespace A014193.P13203047333368208104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A008683 (n + 1)

end

end A014193.P13203047333368208104

noncomputable section

/-- A014193: n-th prime + mu(n).

Offset 1, canonical program `A014193.P13203047333368208104`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014193 (n : ℕ) : ℤ :=
  A014193.P13203047333368208104.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014193.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A014284.P18183547548072881472

`a(n-1)+A000040(n)` with `a(0)=1`
-/

namespace A014284.P18183547548072881472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A000040 n

end

end A014284.P18183547548072881472

noncomputable section

/-- A014284: Partial sums of primes, if 1 is regarded as a prime (as it was until quite recently, see A008578).

Offset 1, canonical program `A014284.P18183547548072881472`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014284 (n : ℕ) : ℤ :=
  A014284.P18183547548072881472.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014284.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A014288.P13511112629114015342

`floor(A003422(n+1)/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A014288.P13511112629114015342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003422 (n + 1) : ℚ) / 2⌋

end

end A014288.P13511112629114015342

noncomputable section

/-- A014288: a(n) = floor(Sum_{k=0..n} k!/2), or floor( A003422(n+1)/2 ).

Offset 0, canonical program `A014288.P13511112629114015342`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014288 (n : ℕ) : ℤ :=
  A014288.P13511112629114015342.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014288.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A014336.P9016764146916550331

`(3^n*A000045(n)-3*A000045(2*n))/5`
-/

namespace A014336.P9016764146916550331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ n : ℤ) * A000045 n - 3 * A000045 (2 * n) : ℚ) / 5

end

end A014336.P9016764146916550331

noncomputable section

/-- A014336: Three-fold exponential convolution of Fibonacci numbers with themselves.

Offset 0, canonical program `A014336.P9016764146916550331`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014336 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A014336.P9016764146916550331.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014336.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A014337.P5624364044775650877

`(3^n*A000045(n)-3*A000045(2*n))/30`
-/

namespace A014337.P5624364044775650877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ n : ℤ) * A000045 n - 3 * A000045 (2 * n) : ℚ) / 30

end

end A014337.P5624364044775650877

noncomputable section

/-- A014337: Three-fold exponential convolution of Fibonacci numbers with themselves (divided by 6).

Offset 0, canonical program `A014337.P5624364044775650877`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014337 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A014337.P5624364044775650877.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014337.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A014370.P2808801534584236967

`a(n-1)+A002260(n+1)` with `a(0)=1`
-/

namespace A014370.P2808801534584236967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A002260 (n + 1)

end

end A014370.P2808801534584236967

noncomputable section

/-- A014370: If n = binomial(b,2) + binomial(c,1), b > c >= 0 then a(n) = binomial(b+1,3) + binomial(c+1,2).

Offset 1, canonical program `A014370.P2808801534584236967`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014370 (n : ℕ) : ℤ :=
  A014370.P2808801534584236967.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014370.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A014495.P8648755420632744383

`A001405(n)-1`
-/

namespace A014495.P8648755420632744383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n - 1

end

end A014495.P8648755420632744383

noncomputable section

/-- A014495: Central binomial coefficient - 1.

Offset 0, canonical program `A014495.P8648755420632744383`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014495 (n : ℕ) : ℤ :=
  A014495.P8648755420632744383.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014495.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A014531.P8663948611263005249

`A002426(n+2)-A001006(n+2)`
-/

namespace A014531.P8663948611263005249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 (n + 2) - A001006 (n + 2)

end

end A014531.P8663948611263005249

noncomputable section

/-- A014531: Form array in which n-th row is obtained by expanding (1+x+x^2)^n and taking the 2nd column from the center.

Offset 1, canonical program `A014531.P8663948611263005249`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014531 (n : ℕ) : ℤ :=
  A014531.P8663948611263005249.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014531.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A014616.P13328413878082500687

`A004116(n+1)+1`
-/

namespace A014616.P13328413878082500687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004116 (n + 1) + 1

end

end A014616.P13328413878082500687

noncomputable section

/-- A014616: a(n) = solution to the postage stamp problem with 2 denominations and n stamps.

Offset 1, canonical program `A014616.P13328413878082500687`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014616 (n : ℕ) : ℤ :=
  A014616.P13328413878082500687.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014616.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A014683.P4274130993241959458

`n+1+A010051(n+1)`
-/

namespace A014683.P4274130993241959458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A010051 (n + 1)

end

end A014683.P4274130993241959458

noncomputable section

/-- A014683: In the sequence of positive integers add 1 to each prime number.

Offset 1, canonical program `A014683.P4274130993241959458`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014683 (n : ℕ) : ℤ :=
  A014683.P4274130993241959458.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014683.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A014686.P12969874611921445345

`A000040(n+1)-(-1)^(n+1)`
-/

namespace A014686.P12969874611921445345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (-1) ^ (n + 1)

end

end A014686.P12969874611921445345

noncomputable section

/-- A014686: In sequence of prime numbers add 1 to first prime, 3rd prime, fifth prime, ... then subtract 1 from 2nd prime, fourth prime, sixth prime and so on.

Offset 1, canonical program `A014686.P12969874611921445345`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014686 (n : ℕ) : ℤ :=
  A014686.P12969874611921445345.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014686.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A014687.P7527588623448438610

`A000040(n+2)+(-1)^n`
-/

namespace A014687.P7527588623448438610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) + (-1) ^ n

end

end A014687.P7527588623448438610

noncomputable section

/-- A014687: In sequence of odd primes add 1 to first prime, 3rd prime, 5th prime, ... then subtract 1 from 2nd prime, fourth prime, sixth prime and so on.

Offset 1, canonical program `A014687.P7527588623448438610`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014687 (n : ℕ) : ℤ :=
  A014687.P7527588623448438610.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014687.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A014718.P16697703738367262209

`(A000045(n+1)+A000032(n)+n)²`
-/

namespace A014718.P16697703738367262209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 1) + A000032 n + (n : ℤ)) ^ 2

end

end A014718.P16697703738367262209

noncomputable section

/-- A014718: a(n) = (F(n+1)+L(n)+n)^2 where F(n) are the Fibonacci numbers (A000045) and L(n) are the Lucas numbers (A000032).

Offset 0, canonical program `A014718.P16697703738367262209`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014718 (n : ℕ) : ℤ :=
  A014718.P16697703738367262209.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014718.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A014728.P2908315296679547555

`A014437(n)²`
-/

namespace A014728.P2908315296679547555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014437 n ^ 2

end

end A014728.P2908315296679547555

noncomputable section

/-- A014728: Squares of odd Fibonacci numbers.

Offset 0, canonical program `A014728.P2908315296679547555`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014728 (n : ℕ) : ℤ :=
  A014728.P2908315296679547555.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014728.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A014736.P16265389494604714146

`A014493(n+1)²`
-/

namespace A014736.P16265389494604714146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014493 (n + 1) ^ 2

end

end A014736.P16265389494604714146

noncomputable section

/-- A014736: Squares of odd triangular numbers.

Offset 0, canonical program `A014736.P16265389494604714146`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014736 (n : ℕ) : ℤ :=
  A014736.P16265389494604714146.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014736.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A014738.P8106903443389737204

`A014494(n+1)²`
-/

namespace A014738.P8106903443389737204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014494 (n + 1) ^ 2

end

end A014738.P8106903443389737204

noncomputable section

/-- A014738: Squares of even triangular numbers.

Offset 0, canonical program `A014738.P8106903443389737204`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014738 (n : ℕ) : ℤ :=
  A014738.P8106903443389737204.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014738.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A014769.P15242849491866263109

`A014632(n)²`
-/

namespace A014769.P15242849491866263109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014632 n ^ 2

end

end A014769.P15242849491866263109

noncomputable section

/-- A014769: Squares of odd pentagonal numbers.

Offset 0, canonical program `A014769.P15242849491866263109`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014769 (n : ℕ) : ℤ :=
  A014769.P15242849491866263109.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014769.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A014770.P1747506718973092349

`A014633(n)²`
-/

namespace A014770.P1747506718973092349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014633 n ^ 2

end

end A014770.P1747506718973092349

noncomputable section

/-- A014770: Squares of even pentagonal numbers.

Offset 0, canonical program `A014770.P1747506718973092349`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014770 (n : ℕ) : ℤ :=
  A014770.P1747506718973092349.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014770.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A014983.P11933017260358448092

`A084222(n)-1`
-/

namespace A014983.P11933017260358448092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084222 n - 1

end

end A014983.P11933017260358448092

noncomputable section

/-- A014983: a(n) = (1 - (-3)^n)/4.

Offset 0, canonical program `A014983.P11933017260358448092`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014983 (n : ℕ) : ℤ :=
  A014983.P11933017260358448092.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014983.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A014990.P11688930632471218094

`(-1)^(n+2)*A015565(n+1)`
-/

namespace A014990.P11688930632471218094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 2) * A015565 (n + 1)

end

end A014990.P11688930632471218094

noncomputable section

/-- A014990: a(n) = (1 - (-8)^n)/9.

Offset 1, canonical program `A014990.P11688930632471218094`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014990 (n : ℕ) : ℤ :=
  A014990.P11688930632471218094.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014990.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A014992.P7690352131051261852

`(-1)^(n+2)*A015585(n+1)`
-/

namespace A014992.P7690352131051261852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 2) * A015585 (n + 1)

end

end A014992.P7690352131051261852

noncomputable section

/-- A014992: a(n) = (1 - (-10)^n)/11.

Offset 1, canonical program `A014992.P7690352131051261852`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014992 (n : ℕ) : ℤ :=
  A014992.P7690352131051261852.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014992.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A016040.P16668472596033548107

`floor(∑[log(A000040(n+1))])`
-/

namespace A016040.P16668472596033548107
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A000040 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A016040.P16668472596033548107

noncomputable section

/-- A016040: Integer part of Chebyshev's theta function: floor( log(Product_{k=1..n} prime(k)) ).

Offset 1, canonical program `A016040.P16668472596033548107`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A016040 (n : ℕ) : ℤ :=
  A016040.P16668472596033548107.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A016040.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A016095.P11942965357993844135

`A000045(row(n)+1)*C(row(n), col(n))`
-/

namespace A016095.P11942965357993844135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.triRow n + 1) * (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℤ)

end

end A016095.P11942965357993844135

noncomputable section

/-- A016095: Triangular array T(n,k) read by rows, where T(n,k) = coefficient of x^n*y^k in 1/(1-x-y-(x+y)^2).

Offset 0, canonical program `A016095.P11942965357993844135`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A016095 (n : ℕ) : ℤ :=
  A016095.P11942965357993844135.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A016095.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A017665.P10472874730912373225

`A000203(n+1)/gcd(n+1, A000203(n+1))`
-/

namespace A017665.P10472874730912373225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (Int.gcd (n + 1 : ℤ) (A000203 (n + 1)) : ℚ)

end

end A017665.P10472874730912373225

noncomputable section

/-- A017665: Numerator of sum of reciprocals of divisors of n.

Offset 1, canonical program `A017665.P10472874730912373225`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A017665 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A017665.P10472874730912373225.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A017665.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A017928.P9559625745466745229

`A017910(3*n)`
-/

namespace A017928.P9559625745466745229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017910 (3 * n)

end

end A017928.P9559625745466745229

noncomputable section

/-- A017928: Powers of sqrt(8) rounded down.

Offset 0, canonical program `A017928.P9559625745466745229`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A017928 (n : ℕ) : ℤ :=
  A017928.P9559625745466745229.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A017928.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A017930.P16700928631467315289

`A017912(3*n)`
-/

namespace A017930.P16700928631467315289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017912 (3 * n)

end

end A017930.P16700928631467315289

noncomputable section

/-- A017930: Powers of sqrt(8) rounded up.

Offset 0, canonical program `A017930.P16700928631467315289`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A017930 (n : ℕ) : ℤ :=
  A017930.P16700928631467315289.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A017930.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A018900.P2868698677378612256

`2^A002024(n+1)+2^A002262(n)`
-/

namespace A018900.P2868698677378612256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002024 (n + 1) : ℤ) + (2 : ℚ) ^ (A002262 n : ℤ)

end

end A018900.P2868698677378612256

noncomputable section

/-- A018900: Sums of two distinct powers of 2.

Offset 1, canonical program `A018900.P2868698677378612256`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018900 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A018900.P2868698677378612256.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018900.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A019446.P15799228485202285486

`A005206(n)+1`
-/

namespace A019446.P15799228485202285486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 n + 1

end

end A019446.P15799228485202285486

noncomputable section

/-- A019446: a(n) = ceiling(n/tau), where tau = (1+sqrt(5))/2.

Offset 1, canonical program `A019446.P15799228485202285486`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019446 (n : ℕ) : ℤ :=
  A019446.P15799228485202285486.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019446.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A019515.P7237518338830127336

`A000178(n)+1`
-/

namespace A019515.P7237518338830127336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000178 n + 1

end

end A019515.P7237518338830127336

noncomputable section

/-- A019515: a(n) = 1 + 0!*1!*2!*...*n!.

Offset 0, canonical program `A019515.P7237518338830127336`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019515 (n : ℕ) : ℤ :=
  A019515.P7237518338830127336.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019515.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020706.P17542088062975438782

`A000045(n+4)+1`
-/

namespace A020706.P17542088062975438782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 4) + 1

end

end A020706.P17542088062975438782

noncomputable section

/-- A020706: Pisot sequences L(4,6), E(4,6).

Offset 0, canonical program `A020706.P17542088062975438782`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020706 (n : ℕ) : ℤ :=
  A020706.P17542088062975438782.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020706.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020721.P2221786006227013851

`A020711(n+1)`
-/

namespace A020721.P2221786006227013851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020711 (n + 1)

end

end A020721.P2221786006227013851

noncomputable section

/-- A020721: Pisot sequences E(7,10), P(7,10).

Offset 0, canonical program `A020721.P2221786006227013851`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020721 (n : ℕ) : ℤ :=
  A020721.P2221786006227013851.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020721.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020743.P12649817717778317435

`A018910(n+2)`
-/

namespace A020743.P12649817717778317435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018910 (n + 2)

end

end A020743.P12649817717778317435

noncomputable section

/-- A020743: Pisot sequence L(7,10).

Offset 0, canonical program `A020743.P12649817717778317435`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020743 (n : ℕ) : ℤ :=
  A020743.P12649817717778317435.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020743.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020871.P9685259222526495419

`n*A121401(n)`
-/

namespace A020871.P9685259222526495419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A121401 n

end

end A020871.P9685259222526495419

noncomputable section

/-- A020871: Number of spanning trees in a Moebius ladder M_n with 2n vertices.

Offset 0, canonical program `A020871.P9685259222526495419`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020871 (n : ℕ) : ℤ :=
  A020871.P9685259222526495419.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020871.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020878.P2717610554730428774

`A001350(n)+2`
-/

namespace A020878.P2717610554730428774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001350 n + 2

end

end A020878.P2717610554730428774

noncomputable section

/-- A020878: Number of maximum matchings in the n-Moebius ladder M_n.

Offset 0, canonical program `A020878.P2717610554730428774`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020878 (n : ℕ) : ℤ :=
  A020878.P2717610554730428774.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020878.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020901.P13099463135205159022

`A000720(3*A000040(n+1))`
-/

namespace A020901.P13099463135205159022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (3 * A000040 (n + 1)).toNat

end

end A020901.P13099463135205159022

noncomputable section

/-- A020901: Greatest k such that k-th prime < 3 times n-th prime.

Offset 1, canonical program `A020901.P13099463135205159022`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020901 (n : ℕ) : ℤ :=
  A020901.P13099463135205159022.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020901.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020909.P9971739814397576493

`1+floor(log2(A000045(n+1)))`
-/

namespace A020909.P9971739814397576493
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + Nat.log 2 (A000045 (n + 1)).toNat

end

end A020909.P9971739814397576493

noncomputable section

/-- A020909: Number of bits in the base-2 representation of the n-th Fibonacci number.

Offset 1, canonical program `A020909.P9971739814397576493`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020909 (n : ℕ) : ℤ :=
  (A020909.P9971739814397576493.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020909.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020920.P5795876076365594536

`A000332(n+4)*A000984(n+4)/70`
-/

namespace A020920.P5795876076365594536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000332 (n + 4) * A000984 (n + 4) : ℚ) / 70

end

end A020920.P5795876076365594536

noncomputable section

/-- A020920: Expansion of 1/(1-4*x)^(9/2).

Offset 0, canonical program `A020920.P5795876076365594536`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020920 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A020920.P5795876076365594536.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020920.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020935.P6573045777744063489

`A000720(5*A000040(n+1))`
-/

namespace A020935.P6573045777744063489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (5 * A000040 (n + 1)).toNat

end

end A020935.P6573045777744063489

noncomputable section

/-- A020935: Greatest k such that (k-th prime) < (5 times n-th prime).

Offset 1, canonical program `A020935.P6573045777744063489`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020935 (n : ℕ) : ℤ :=
  A020935.P6573045777744063489.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020935.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020941.P5396589530761591526

`floor((n+1)*ϕ)*A000045(n+2)+n*A000045(n+1)`
-/

namespace A020941.P5396589530761591526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.goldenRatio⌋ * A000045 (n + 2) + (n : ℤ) * A000045 (n + 1)

end

end A020941.P5396589530761591526

noncomputable section

/-- A020941: Main diagonal of Wythoff array: w(n,n)=[ n*tau ]F(n+1)+(n-1)F(n), where tau=(1+sqrt(5))/2, F(n) = Fibonacci numbers.

Offset 1, canonical program `A020941.P5396589530761591526`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020941 (n : ℕ) : ℤ :=
  A020941.P5396589530761591526.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020941.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020956.P12357519615707689926

`A000032(n+2)-(2*(n+1)+5-(-1)^(n+1))/4`
-/

namespace A020956.P12357519615707689926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (n + 2) : ℚ) - ((2 * (n + 1) + 5 : ℤ) - (-1) ^ (n + 1) : ℚ) / 4

end

end A020956.P12357519615707689926

noncomputable section

/-- A020956: a(n) = Sum_{k>=1} floor(tau^(n-k)) where tau is A001622.

Offset 1, canonical program `A020956.P12357519615707689926`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020956 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A020956.P12357519615707689926.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020956.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022086.P12032342305681498850

`A187893(n)-1`
-/

namespace A022086.P12032342305681498850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187893 n - 1

end

end A022086.P12032342305681498850

noncomputable section

/-- A022086: Fibonacci sequence beginning 0, 3.

Offset 0, canonical program `A022086.P12032342305681498850`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022086 (n : ℕ) : ℤ :=
  A022086.P12032342305681498850.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022086.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022121.P18213973509832508020

`2*A000032(n+1)+A000045(n+2)`
-/

namespace A022121.P18213973509832508020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000032 (n + 1) + A000045 (n + 2)

end

end A022121.P18213973509832508020

noncomputable section

/-- A022121: Fibonacci sequence beginning 3, 8.

Offset 0, canonical program `A022121.P18213973509832508020`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022121 (n : ℕ) : ℤ :=
  A022121.P18213973509832508020.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022121.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022124.P8741293578488218331

`5*A000032(n+1)-2*A000045(n+1)`
-/

namespace A022124.P8741293578488218331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A000032 (n + 1) - 2 * A000045 (n + 1)

end

end A022124.P8741293578488218331

noncomputable section

/-- A022124: Fibonacci sequence beginning 3, 13.

Offset 0, canonical program `A022124.P8741293578488218331`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022124 (n : ℕ) : ℤ :=
  A022124.P8741293578488218331.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022124.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022136.P11480540574135327618

`A000045(n+6)-A000045(n+1)-A000032(n)`
-/

namespace A022136.P11480540574135327618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 6) - A000045 (n + 1) - A000032 n

end

end A022136.P11480540574135327618

noncomputable section

/-- A022136: Fibonacci sequence beginning 5, 11.

Offset 0, canonical program `A022136.P11480540574135327618`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022136 (n : ℕ) : ℤ :=
  A022136.P11480540574135327618.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022136.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022367.P15141266762109396165

`2*A022095(n)`
-/

namespace A022367.P15141266762109396165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022095 n

end

end A022367.P15141266762109396165

noncomputable section

/-- A022367: Fibonacci sequence beginning 2, 10.

Offset 0, canonical program `A022367.P15141266762109396165`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022367 (n : ℕ) : ℤ :=
  A022367.P15141266762109396165.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022367.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022368.P17562576182317563288

`2*A022096(n)`
-/

namespace A022368.P17562576182317563288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022096 n

end

end A022368.P17562576182317563288

noncomputable section

/-- A022368: Fibonacci sequence beginning 2, 12.

Offset 0, canonical program `A022368.P17562576182317563288`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022368 (n : ℕ) : ℤ :=
  A022368.P17562576182317563288.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022368.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022369.P16171992494825357631

`2*A022097(n)`
-/

namespace A022369.P16171992494825357631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022097 n

end

end A022369.P16171992494825357631

noncomputable section

/-- A022369: Fibonacci sequence beginning 2, 14.

Offset 0, canonical program `A022369.P16171992494825357631`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022369 (n : ℕ) : ℤ :=
  A022369.P16171992494825357631.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022369.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022370.P10782743781689353041

`2*A022098(n)`
-/

namespace A022370.P10782743781689353041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022098 n

end

end A022370.P10782743781689353041

noncomputable section

/-- A022370: Fibonacci sequence beginning 2, 16.

Offset 0, canonical program `A022370.P10782743781689353041`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022370 (n : ℕ) : ℤ :=
  A022370.P10782743781689353041.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022370.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022371.P497849754708652778

`2*A022099(n)`
-/

namespace A022371.P497849754708652778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022099 n

end

end A022371.P497849754708652778

noncomputable section

/-- A022371: Fibonacci sequence beginning 2, 18.

Offset 0, canonical program `A022371.P497849754708652778`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022371 (n : ℕ) : ℤ :=
  A022371.P497849754708652778.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022371.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022372.P3318322918414077424

`2*A022100(n)`
-/

namespace A022372.P3318322918414077424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022100 n

end

end A022372.P3318322918414077424

noncomputable section

/-- A022372: Fibonacci sequence beginning 2, 20.

Offset 0, canonical program `A022372.P3318322918414077424`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022372 (n : ℕ) : ℤ :=
  A022372.P3318322918414077424.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022372.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022375.P5818569338397038520

`2*A022103(n)`
-/

namespace A022375.P5818569338397038520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022103 n

end

end A022375.P5818569338397038520

noncomputable section

/-- A022375: Fibonacci sequence beginning 2, 26.

Offset 0, canonical program `A022375.P5818569338397038520`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022375 (n : ℕ) : ℤ :=
  A022375.P5818569338397038520.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022375.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022376.P18117227960282036275

`2*A022104(n)`
-/

namespace A022376.P18117227960282036275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022104 n

end

end A022376.P18117227960282036275

noncomputable section

/-- A022376: Fibonacci sequence beginning 2, 28.

Offset 0, canonical program `A022376.P18117227960282036275`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022376 (n : ℕ) : ℤ :=
  A022376.P18117227960282036275.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022376.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022379.P17167522457306540419

`3*A000032(n+1)`
-/

namespace A022379.P17167522457306540419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000032 (n + 1)

end

end A022379.P17167522457306540419

noncomputable section

/-- A022379: Fibonacci sequence beginning 3, 9.

Offset 0, canonical program `A022379.P17167522457306540419`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022379 (n : ℕ) : ℤ :=
  A022379.P17167522457306540419.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022379.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022381.P15408426935880832648

`3*A022095(n)`
-/

namespace A022381.P15408426935880832648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A022095 n

end

end A022381.P15408426935880832648

noncomputable section

/-- A022381: Fibonacci sequence beginning 3, 15.

Offset 0, canonical program `A022381.P15408426935880832648`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022381 (n : ℕ) : ℤ :=
  A022381.P15408426935880832648.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022381.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022462.P8752676698775671272

`(A000040(n+1)*A000040(n+3))%A000040(n+2)`
-/

namespace A022462.P8752676698775671272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1) * A000040 (n + 3)) (A000040 (n + 2))

end

end A022462.P8752676698775671272

noncomputable section

/-- A022462: a(n) = prime(n)*prime(n+2) mod prime(n+1).

Offset 1, canonical program `A022462.P8752676698775671272`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022462 (n : ℕ) : ℤ :=
  A022462.P8752676698775671272.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022462.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022559.P10554250414511796107

`a(n-1)+A001222(n)` with `a(0)=0`
-/

namespace A022559.P10554250414511796107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A001222 n

end

end A022559.P10554250414511796107

noncomputable section

/-- A022559: Sum of exponents in prime-power factorization of n!.

Offset 0, canonical program `A022559.P10554250414511796107`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022559 (n : ℕ) : ℤ :=
  A022559.P10554250414511796107.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022559.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022757.P13043222127189136114

`A002144(n+1)+A002145(n+1)`
-/

namespace A022757.P13043222127189136114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1) + A002145 (n + 1)

end

end A022757.P13043222127189136114

noncomputable section

/-- A022757: n-th 4k+1 prime plus n-th 4k+3 prime.

Offset 1, canonical program `A022757.P13043222127189136114`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022757 (n : ℕ) : ℤ :=
  A022757.P13043222127189136114.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022757.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022763.P11171846536189561779

`A007520(n+1)+A007521(n+1)`
-/

namespace A022763.P11171846536189561779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1) + A007521 (n + 1)

end

end A022763.P11171846536189561779

noncomputable section

/-- A022763: n-th 8k+3 prime plus n-th 8k+5 prime.

Offset 1, canonical program `A022763.P11171846536189561779`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022763 (n : ℕ) : ℤ :=
  A022763.P11171846536189561779.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022763.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022805.P11016993281980640326

`A022838(n+1)+A054406(n+1)`
-/

namespace A022805.P11016993281980640326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (n + 1) + A054406 (n + 1)

end

end A022805.P11016993281980640326

noncomputable section

/-- A022805: a(n) = B(n) + C(n) where B(n) is Beatty sequence [ n*sqrt(3) ] and C is complement of B.

Offset 1, canonical program `A022805.P11016993281980640326`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022805 (n : ℕ) : ℤ :=
  A022805.P11016993281980640326.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022805.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022905.P16932586740772776458

`(3*A033485(2*n+1)-1)/2`
-/

namespace A022905.P16932586740772776458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A033485 (2 * n + 1) - 1 : ℚ) / 2

end

end A022905.P16932586740772776458

noncomputable section

/-- A022905: a(n) = M(n) + m(n) for n >= 2, where M(n) = max{ a(i) + a(n-i): i = 1..n-1 }, m(n) = min{ a(i) + a(n-i): i = 1..n-1 }.

Offset 1, canonical program `A022905.P16932586740772776458`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022905 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A022905.P16932586740772776458.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022905.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022915.P1390373990754282635

`A052295(n)/A000178(n)`
-/

namespace A022915.P1390373990754282635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052295 n : ℚ) / (A000178 n : ℚ)

end

end A022915.P1390373990754282635

noncomputable section

/-- A022915: Multinomial coefficients (0, 1, ..., n)! = C(n+1,2)!/(0!*1!*2!*...*n!).

Offset 0, canonical program `A022915.P1390373990754282635`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022915 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A022915.P1390373990754282635.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022915.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022919.P5335323455566799207

`a(n-1)*A070781(n-1)` with `a(0)=1`
-/

namespace A022919.P5335323455566799207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A070781 (n - 1)

end

end A022919.P5335323455566799207

noncomputable section

/-- A022919: Multinomial coefficients(TOP, BOTTOM), where TOP = n^2, BOTTOM = ( 1 3 5 ... 2n-1 ).

Offset 0, canonical program `A022919.P5335323455566799207`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022919 (n : ℕ) : ℤ :=
  A022919.P5335323455566799207.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022919.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A023031.P8515490498603588078

`∑{d}[n+6, C(#-1, 5)*A008683((n+6)/#)]`
-/

namespace A023031.P8515490498603588078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (Nat.choose ((d : ℤ) - 1).toNat 5 : ℤ) * A008683 (SequenceMachineLib.roundAway ((n + 6 : ℚ) / (d : ℚ))).toNat

end

end A023031.P8515490498603588078

noncomputable section

/-- A023031: Number of compositions of n into 6 ordered relatively prime parts.

Offset 6, canonical program `A023031.P8515490498603588078`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023031 (n : ℕ) : ℤ :=
  A023031.P8515490498603588078.a (n - 6)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023031.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A023032.P11766389031338610264

`∑{d}[n+7, C(#-1, 6)*A008683((n+7)/#)]`
-/

namespace A023032.P11766389031338610264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (Nat.choose ((d : ℤ) - 1).toNat 6 : ℤ) * A008683 (SequenceMachineLib.roundAway ((n + 7 : ℚ) / (d : ℚ))).toNat

end

end A023032.P11766389031338610264

noncomputable section

/-- A023032: Number of compositions of n into 7 ordered relatively prime parts.

Offset 7, canonical program `A023032.P11766389031338610264`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023032 (n : ℕ) : ℤ :=
  A023032.P11766389031338610264.a (n - 7)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023032.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A023033.P8731895386715046614

`∑{d}[n+8, C(#-1, 7)*A008683((n+8)/#)]`
-/

namespace A023033.P8731895386715046614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (Nat.choose ((d : ℤ) - 1).toNat 7 : ℤ) * A008683 (SequenceMachineLib.roundAway ((n + 8 : ℚ) / (d : ℚ))).toNat

end

end A023033.P8731895386715046614

noncomputable section

/-- A023033: Number of compositions of n into 8 ordered relatively prime parts.

Offset 8, canonical program `A023033.P8731895386715046614`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023033 (n : ℕ) : ℤ :=
  A023033.P8731895386715046614.a (n - 8)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023033.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A023034.P16354485590653427709

`∑{d}[n+9, C(#-1, 8)*A008683((n+9)/#)]`
-/

namespace A023034.P16354485590653427709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (Nat.choose ((d : ℤ) - 1).toNat 8 : ℤ) * A008683 (SequenceMachineLib.roundAway ((n + 9 : ℚ) / (d : ℚ))).toNat

end

end A023034.P16354485590653427709

noncomputable section

/-- A023034: Number of compositions of n into 9 ordered relatively prime parts.

Offset 9, canonical program `A023034.P16354485590653427709`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023034 (n : ℕ) : ℤ :=
  A023034.P16354485590653427709.a (n - 9)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023034.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A023035.P16679167125478681102

`∑{d}[n+10, C(#-1, 9)*A008683((n+10)/#)]`
-/

namespace A023035.P16679167125478681102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (Nat.choose ((d : ℤ) - 1).toNat 9 : ℤ) * A008683 (SequenceMachineLib.roundAway ((n + 10 : ℚ) / (d : ℚ))).toNat

end

end A023035.P16679167125478681102

noncomputable section

/-- A023035: Number of compositions of n into 10 ordered relatively prime parts.

Offset 10, canonical program `A023035.P16679167125478681102`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023035 (n : ℕ) : ℤ :=
  A023035.P16679167125478681102.a (n - 10)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023035.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A023376.P15481895328876631994

`2^A061418(n+1)`
-/

namespace A023376.P15481895328876631994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A061418 (n + 1) : ℤ)

end

end A023376.P15481895328876631994

noncomputable section

/-- A023376: a(n+1) = a(n) converted to base 8 from base 4 (written in base 10).

Offset 1, canonical program `A023376.P15481895328876631994`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023376 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A023376.P15481895328876631994.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023376.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A023514.P888848431976553385

`A001222(A000040(n+1)+1)`
-/

namespace A023514.P888848431976553385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000040 (n + 1) + 1).toNat

end

end A023514.P888848431976553385

noncomputable section

/-- A023514: a(n) = sum of exponents in prime-power factorization of prime(n) + 1.

Offset 1, canonical program `A023514.P888848431976553385`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023514 (n : ℕ) : ℤ :=
  A023514.P888848431976553385.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023514.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A023548.P5104912419160239020

`A000045(n+5)+A000045(n+3)-(n+5)`
-/

namespace A023548.P5104912419160239020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 5) + A000045 (n + 3) - (n + 5 : ℤ)

end

end A023548.P5104912419160239020

noncomputable section

/-- A023548: Convolution of natural numbers >= 2 and Fibonacci numbers.

Offset 1, canonical program `A023548.P5104912419160239020`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023548 (n : ℕ) : ℤ :=
  A023548.P5104912419160239020.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023548.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A023572.P7725850507697149800

`val(A000040(n+3)-3, 2)`
-/

namespace A023572.P7725850507697149800
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000040 (n + 3) - 3).toNat 2

end

end A023572.P7725850507697149800

noncomputable section

/-- A023572: Exponent of 2 in prime factorization of prime(n) - 3.

Offset 3, canonical program `A023572.P7725850507697149800`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023572 (n : ℕ) : ℤ :=
  (A023572.P7725850507697149800.a (n - 3) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023572.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A023575.P7360909130665487959

`A001221(A000040(n+1)+3)`
-/

namespace A023575.P7360909130665487959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000040 (n + 1) + 3).toNat

end

end A023575.P7360909130665487959

noncomputable section

/-- A023575: Number of distinct prime divisors of prime(n)+3.

Offset 1, canonical program `A023575.P7360909130665487959`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023575 (n : ℕ) : ℤ :=
  A023575.P7360909130665487959.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023575.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A023582.P1433716179084470181

`A001221(2*A000040(n+1)-1)`
-/

namespace A023582.P1433716179084470181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * A000040 (n + 1) - 1).toNat

end

end A023582.P1433716179084470181

noncomputable section

/-- A023582: Number of distinct prime divisors of 2*prime(n)-1.

Offset 1, canonical program `A023582.P1433716179084470181`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023582 (n : ℕ) : ℤ :=
  A023582.P1433716179084470181.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023582.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A023589.P10891218899732312010

`A001221(2*A000040(n+1)+1)`
-/

namespace A023589.P10891218899732312010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * A000040 (n + 1) + 1).toNat

end

end A023589.P10891218899732312010

noncomputable section

/-- A023589: a(n) is the number of distinct prime divisors of 2*prime(n)+1.

Offset 1, canonical program `A023589.P10891218899732312010`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023589 (n : ℕ) : ℤ :=
  A023589.P10891218899732312010.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023589.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A023610.P5614618559082529944

`A001629(n+1)+A001629(n+2)`
-/

namespace A023610.P5614618559082529944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 (n + 1) + A001629 (n + 2)

end

end A023610.P5614618559082529944

noncomputable section

/-- A023610: Convolution of Fibonacci numbers and {F(2), F(3), F(4), ...}.

Offset 0, canonical program `A023610.P5614618559082529944`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023610 (n : ℕ) : ℤ :=
  A023610.P5614618559082529944.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023610.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A023615.P9273506623120273616

`a(n-1)+a(n-2)+A000040(n+1)` with `a(0)=2, a(1)=5`
-/

namespace A023615.P9273506623120273616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  a (n - 1) + a (n - 2) + A000040 (n + 1)

end

end A023615.P9273506623120273616

noncomputable section

/-- A023615: Convolution of Fibonacci numbers and primes.

Offset 0, canonical program `A023615.P9273506623120273616`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023615 (n : ℕ) : ℤ :=
  A023615.P9273506623120273616.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023615.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A023619.P11808100545596447754

`n*A000045(n+1)+(n+1)*A000045(n+2)`
-/

namespace A023619.P11808100545596447754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000045 (n + 1) + (n + 1 : ℤ) * A000045 (n + 2)

end

end A023619.P11808100545596447754

noncomputable section

/-- A023619: Convolution of Lucas numbers and (F(2), F(3), F(4), ...).

Offset 1, canonical program `A023619.P11808100545596447754`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023619 (n : ℕ) : ℤ :=
  A023619.P11808100545596447754.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023619.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A023652.P9846762925165203096

`A000045(n+7)-4*(n+1)-8`
-/

namespace A023652.P9846762925165203096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 7) - (4 * (n + 1) : ℤ) - 8

end

end A023652.P9846762925165203096

noncomputable section

/-- A023652: Convolution of (F(2), F(3), F(4), ...) and odd numbers.

Offset 1, canonical program `A023652.P9846762925165203096`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023652 (n : ℕ) : ℤ :=
  A023652.P9846762925165203096.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023652.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A023890.P4514850295399263827

`A000203(n+1)-A008472(n+1)`
-/

namespace A023890.P4514850295399263827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A008472 (n + 1)

end

end A023890.P4514850295399263827

noncomputable section

/-- A023890: Sum of the nonprime divisors of n.

Offset 1, canonical program `A023890.P4514850295399263827`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023890 (n : ℕ) : ℤ :=
  A023890.P4514850295399263827.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023890.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A023900.P15367599446689772238

`(-1)^A001221(n+1)*A173557(n+1)`
-/

namespace A023900.P15367599446689772238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A001221 (n + 1) : ℤ) * (A173557 (n + 1) : ℚ)

end

end A023900.P15367599446689772238

noncomputable section

/-- A023900: Dirichlet inverse of Euler totient function (A000010).

Offset 1, canonical program `A023900.P15367599446689772238`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023900 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A023900.P15367599446689772238.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023900.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A023961.P880977855683765667

`A010879(A000196(100*(n+1)))`
-/

namespace A023961.P880977855683765667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A000196 (100 * (n + 1))).toNat

end

end A023961.P880977855683765667

noncomputable section

/-- A023961: First digit after decimal point of square root of n.

Offset 1, canonical program `A023961.P880977855683765667`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023961 (n : ℕ) : ℤ :=
  A023961.P880977855683765667.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023961.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A000006.P2817507747577515147

`A000196(A000040(n+1))`
-/

namespace A000006.P2817507747577515147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A000040 (n + 1)).toNat

end

end A000006.P2817507747577515147

noncomputable section

/-- A000006: Integer part of square root of n-th prime.

Offset 1, canonical program `A000006.P2817507747577515147`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000006 (n : ℕ) : ℤ :=
  A000006.P2817507747577515147.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000006.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A000316.P502515888872783753

`A000459(n)*2^n`
-/

namespace A000316.P502515888872783753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000459 n * (2 ^ n : ℤ)

end

end A000316.P502515888872783753

noncomputable section

/-- A000316: Two decks each have n kinds of cards, 2 of each kind. The first deck is laid out in order. The second deck is shuffled and laid out next to the first. A match occurs if a card from the second deck is next to a card of the same kind from the first deck. a(n) is the number of ways of achieving no matches.

Offset 0, canonical program `A000316.P502515888872783753`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000316 (n : ℕ) : ℤ :=
  A000316.P502515888872783753.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000316.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A000387.P2539177425630704068

`A000166(n)-A003221(n)`
-/

namespace A000387.P2539177425630704068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 n - A003221 n

end

end A000387.P2539177425630704068

noncomputable section

/-- A000387: Rencontres numbers: number of permutations of [n] with exactly two fixed points.

Offset 0, canonical program `A000387.P2539177425630704068`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000387 (n : ℕ) : ℤ :=
  A000387.P2539177425630704068.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000387.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A000533.P11203370058495839217

`A178500(n)+1`
-/

namespace A000533.P11203370058495839217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178500 n + 1

end

end A000533.P11203370058495839217

noncomputable section

/-- A000533: a(0)=1; a(n) = 10^n + 1, n >= 1.

Offset 0, canonical program `A000533.P11203370058495839217`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000533 (n : ℕ) : ℤ :=
  A000533.P11203370058495839217.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000533.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A000779.P7955676593238414227

`2*A001147(n+1)-n!*2^n`
-/

namespace A000779.P7955676593238414227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001147 (n + 1) - (Nat.factorial n * 2 ^ n : ℤ)

end

end A000779.P7955676593238414227

noncomputable section

/-- A000779: a(n) = 2*(2n-1)!!-(n-1)!*2^(n-1), where (2n-1)!! is A001147(n).

Offset 1, canonical program `A000779.P7955676593238414227`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000779 (n : ℕ) : ℤ :=
  A000779.P7955676593238414227.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000779.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A000909.P2394326780231115835

`4^n*A079484(n)`
-/

namespace A000909.P2394326780231115835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A079484 n

end

end A000909.P2394326780231115835

noncomputable section

/-- A000909: a(n) = (2*n)!*(2*n+1)! / n!^2.

Offset 0, canonical program `A000909.P2394326780231115835`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000909 (n : ℕ) : ℤ :=
  A000909.P2394326780231115835.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000909.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001277.P15553202100893757648

`A173184(n+2)-1`
-/

namespace A001277.P15553202100893757648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173184 (n + 2) - 1

end

end A001277.P15553202100893757648

noncomputable section

/-- A001277: Number of permutations of length n by rises.

Offset 2, canonical program `A001277.P15553202100893757648`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001277 (n : ℕ) : ℤ :=
  A001277.P15553202100893757648.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001277.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001340.P16599940652130265904

`2*A082030(n)`
-/

namespace A001340.P16599940652130265904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A082030 n

end

end A001340.P16599940652130265904

noncomputable section

/-- A001340: E.g.f.: 2*exp(x)/(1-x)^3.

Offset 0, canonical program `A001340.P16599940652130265904`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001340 (n : ℕ) : ℤ :=
  A001340.P16599940652130265904.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001340.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001363.P2082699172038580249

`A007089(A000040(n+1))`
-/

namespace A001363.P2082699172038580249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A000040 (n + 1)).toNat

end

end A001363.P2082699172038580249

noncomputable section

/-- A001363: Primes in ternary.

Offset 1, canonical program `A001363.P2082699172038580249`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001363 (n : ℕ) : ℤ :=
  A001363.P2082699172038580249.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001363.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001655.P8259304723243497872

`1/2*A065563(n+1)`
-/

namespace A001655.P8259304723243497872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A065563 (n + 1) : ℚ)

end

end A001655.P8259304723243497872

noncomputable section

/-- A001655: Fibonomial coefficients: a(n) = F(n+1) * F(n+2) * F(n+3)/2, where F() = Fibonacci numbers A000045.

Offset 0, canonical program `A001655.P8259304723243497872`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001655 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A001655.P8259304723243497872.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001655.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001738.P9569707976772813256

`A007089(A000290(n))`
-/

namespace A001738.P9569707976772813256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A000290 n).toNat

end

end A001738.P9569707976772813256

noncomputable section

/-- A001738: a(n) = n^2 written in base 3.

Offset 0, canonical program `A001738.P9569707976772813256`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001738 (n : ℕ) : ℤ :=
  A001738.P9569707976772813256.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001738.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001945.P17638672492670160984

`A001608(n)+A078712(n)`
-/

namespace A001945.P17638672492670160984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001608 n + A078712 n

end

end A001945.P17638672492670160984

noncomputable section

/-- A001945: a(n+6) = -a(n+5) + a(n+4) + 3a(n+3) + a(n+2) - a(n+1) - a(n). a(n) = sign(n) if abs(n)<=3.

Offset 0, canonical program `A001945.P17638672492670160984`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001945 (n : ℕ) : ℤ :=
  A001945.P17638672492670160984.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001945.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A002081.P6483890857808447145

`2*A235700(n+1)`
-/

namespace A002081.P6483890857808447145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A235700 (n + 1)

end

end A002081.P6483890857808447145

noncomputable section

/-- A002081: Numbers congruent to {2, 4, 8, 16} (mod 20).

Offset 0, canonical program `A002081.P6483890857808447145`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002081 (n : ℕ) : ℤ :=
  A002081.P6483890857808447145.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002081.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A002397.P1083806925330987603

`n!*A003418(n+1)`
-/

namespace A002397.P1083806925330987603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A003418 (n + 1)

end

end A002397.P1083806925330987603

noncomputable section

/-- A002397: a(n) = n! * lcm({1, 2, ..., n+1}).

Offset 0, canonical program `A002397.P1083806925330987603`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002397 (n : ℕ) : ℤ :=
  A002397.P1083806925330987603.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002397.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A002570.P5795901342937694334

`a(n-2)+A002571(n)` with `a(0)=1, a(1)=1`
-/

namespace A002570.P5795901342937694334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + A002571 n

end

end A002570.P5795901342937694334

noncomputable section

/-- A002570: From a definite integral.

Offset 1, canonical program `A002570.P5795901342937694334`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002570 (n : ℕ) : ℤ :=
  A002570.P5795901342937694334.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002570.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A002738.P2427408757081123955

`3*A007744(n)`
-/

namespace A002738.P2427408757081123955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A007744 n

end

end A002738.P2427408757081123955

noncomputable section

/-- A002738: Coefficients for extrapolation.

Offset 0, canonical program `A002738.P2427408757081123955`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002738 (n : ℕ) : ℤ :=
  A002738.P2427408757081123955.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002738.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A002742.P667465221034903495

`2*A002747(n+1)-a(n-1)` with `a(0)=2`
-/

namespace A002742.P667465221034903495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * A002747 (n + 1) - a (n - 1)

end

end A002742.P667465221034903495

noncomputable section

/-- A002742: Logarithmic numbers.

Offset 1, canonical program `A002742.P667465221034903495`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002742 (n : ℕ) : ℤ :=
  A002742.P667465221034903495.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002742.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A002771.P3007338784624499283

`(A000085(n+1)+A081919(n+1))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A002771.P3007338784624499283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000085 (n + 1) + A081919 (n + 1) : ℚ) / 2

end

end A002771.P3007338784624499283

noncomputable section

/-- A002771: Number of terms in a skew determinant: a(n) = (A000085(n) + A081919(n))/2.

Offset 1, canonical program `A002771.P3007338784624499283`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002771 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A002771.P3007338784624499283.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002771.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A002820.P5488556646359969384

`2^(n*(n-1)/2)*A005327(n+1)`
-/

namespace A002820.P5488556646359969384
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (((n : ℤ) * ((n : ℤ) - 1) : ℚ) / 2 : ℝ) * (A005327 (n + 1) : ℝ)

end

end A002820.P5488556646359969384

noncomputable section

/-- A002820: Number of n X n invertible binary matrices A such that A+I is invertible.

Offset 0, canonical program `A002820.P5488556646359969384`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002820 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A002820.P5488556646359969384.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002820.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A002884.P11600545504919749635

`A006125(n)*A005329(n)`
-/

namespace A002884.P11600545504919749635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006125 n * A005329 n

end

end A002884.P11600545504919749635

noncomputable section

/-- A002884: Number of nonsingular n X n matrices over GF(2) (order of the group GL(n,2)); order of Chevalley group A_n (2); order of projective special linear group PSL_n(2).

Offset 0, canonical program `A002884.P11600545504919749635`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002884 (n : ℕ) : ℤ :=
  A002884.P11600545504919749635.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002884.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A002944.P11615207776596987764

`A003418(n+1)/(n+1)`
-/

namespace A002944.P11615207776596987764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A002944.P11615207776596987764

noncomputable section

/-- A002944: a(n) = LCM(1,2,...,n) / n.

Offset 1, canonical program `A002944.P11615207776596987764`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002944 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A002944.P11615207776596987764.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002944.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A003751.P9935531520569567770

`125*A049682(n+1)²`
-/

namespace A003751.P9935531520569567770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  125 * A049682 (n + 1) ^ 2

end

end A003751.P9935531520569567770

noncomputable section

/-- A003751: Number of spanning trees in K_5 x P_n.

Offset 1, canonical program `A003751.P9935531520569567770`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A003751 (n : ℕ) : ℤ :=
  A003751.P9935531520569567770.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A003751.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A003753.P3837901775224364165

`4*A001109(n+1)*A098301(n+1)`
-/

namespace A003753.P3837901775224364165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A001109 (n + 1) * A098301 (n + 1)

end

end A003753.P3837901775224364165

noncomputable section

/-- A003753: Number of spanning trees in C_4 X P_n.

Offset 1, canonical program `A003753.P3837901775224364165`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A003753 (n : ℕ) : ℤ :=
  A003753.P3837901775224364165.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A003753.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A003779.P7331302319062901169

`A143699(n+1)*A241606(n+1)`
-/

namespace A003779.P7331302319062901169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143699 (n + 1) * A241606 (n + 1)

end

end A003779.P7331302319062901169

noncomputable section

/-- A003779: Number of spanning trees in P_5 x P_n.

Offset 1, canonical program `A003779.P7331302319062901169`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A003779 (n : ℕ) : ℤ :=
  A003779.P7331302319062901169.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A003779.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A003842.P15414353884211984669

`n+2-A120613(n+2)`
-/

namespace A003842.P15414353884211984669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A120613 (n + 2)

end

end A003842.P15414353884211984669

noncomputable section

/-- A003842: The infinite Fibonacci word: start with 1, repeatedly apply the morphism 1->12, 2->1, take limit; or, start with S(0)=2, S(1)=1, and for n>1 define S(n)=S(n-1)S(n-2), then the sequence is S(oo).

Offset 0, canonical program `A003842.P15414353884211984669`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A003842 (n : ℕ) : ℤ :=
  A003842.P15414353884211984669.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A003842.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A003984.P8615453586607429040

`(A003056(n)+A049581(n))/2`
-/

namespace A003984.P8615453586607429040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003056 n + A049581 n : ℚ) / 2

end

end A003984.P8615453586607429040

noncomputable section

/-- A003984: Table of max(x,y), where (x,y) = (0,0),(0,1),(1,0),(0,2),(1,1),(2,0),...

Offset 0, canonical program `A003984.P8615453586607429040`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A003984 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A003984.P8615453586607429040.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A003984.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A004082.P11339627534885608868

`A038130(n)+1`
-/

namespace A004082.P11339627534885608868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038130 n + 1

end

end A004082.P11339627534885608868

noncomputable section

/-- A004082: Numbers k such that sin(k-1) <= 0 and sin(k) > 0.

Offset 1, canonical program `A004082.P11339627534885608868`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A004082 (n : ℕ) : ℤ :=
  A004082.P11339627534885608868.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A004082.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A004154.P15946096281681469454

`A000142(n)/10^A027868(n)`
-/

namespace A004154.P15946096281681469454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (10 : ℚ) ^ (A027868 n : ℤ)

end

end A004154.P15946096281681469454

noncomputable section

/-- A004154: a(n) = n! with trailing zeros omitted.

Offset 0, canonical program `A004154.P15946096281681469454`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A004154 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A004154.P15946096281681469454.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A004154.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A004633.P9102770555637317471

`A007089((n+1)^3)`
-/

namespace A004633.P9102770555637317471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 ((n + 1) ^ 3)

end

end A004633.P9102770555637317471

noncomputable section

/-- A004633: Cubes written in base 3.

Offset 1, canonical program `A004633.P9102770555637317471`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A004633 (n : ℕ) : ℤ :=
  A004633.P9102770555637317471.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A004633.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A005313.P16755224305230439102

`A064831(n)+n+1`
-/

namespace A005313.P16755224305230439102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064831 n + (n + 1 : ℤ)

end

end A005313.P16755224305230439102

noncomputable section

/-- A005313: Maximal sum of inverse squares of the singular values of triangular anti-Hadamard matrices of order n.

Offset 1, canonical program `A005313.P16755224305230439102`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005313 (n : ℕ) : ℤ :=
  A005313.P16755224305230439102.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005313.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A005587.P12134575304824728595

`A024191(n+1)-5`
-/

namespace A005587.P12134575304824728595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024191 (n + 1) - 5

end

end A005587.P12134575304824728595

noncomputable section

/-- A005587: a(n) = n*(n+5)*(n+6)*(n+7)/24.

Offset 0, canonical program `A005587.P12134575304824728595`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005587 (n : ℕ) : ℤ :=
  A005587.P12134575304824728595.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005587.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A005685.P7953238482189569496

`1/4*(2*A000045(floor((n+5)/2))+A000045(n+4)+A010892(n+3))`
-/

namespace A005685.P7953238482189569496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 4 * (2 * A000045 ⌊(n + 5 : ℚ) / 2⌋.toNat + A000045 (n + 4) + A010892 (n + 3) : ℚ)

end

end A005685.P7953238482189569496

noncomputable section

/-- A005685: Number of Twopins positions.

Offset 4, canonical program `A005685.P7953238482189569496`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005685 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A005685.P7953238482189569496.a (n - 4))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005685.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A005823.P15253501149959078210

`2*A005836(n+1)`
-/

namespace A005823.P15253501149959078210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005836 (n + 1)

end

end A005823.P15253501149959078210

noncomputable section

/-- A005823: Numbers whose ternary expansion contains no 1's.

Offset 1, canonical program `A005823.P15253501149959078210`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005823 (n : ℕ) : ℤ :=
  A005823.P15253501149959078210.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005823.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A005902.P17180095149968854473

`A100174(n+1)-A000290(n)`
-/

namespace A005902.P17180095149968854473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100174 (n + 1) - A000290 n

end

end A005902.P17180095149968854473

noncomputable section

/-- A005902: Centered icosahedral (or cuboctahedral) numbers, also crystal ball sequence for f.c.c. lattice.

Offset 0, canonical program `A005902.P17180095149968854473`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005902 (n : ℕ) : ℤ :=
  A005902.P17180095149968854473.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005902.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A005996.P5883780416022045654

`A143785(n+1)-A002620(n+2)`
-/

namespace A005996.P5883780416022045654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143785 (n + 1) - A002620 (n + 2)

end

end A005996.P5883780416022045654

noncomputable section

/-- A005996: G.f.: 2*(1-x^3)/((1-x)^5*(1+x)^2).

Offset 1, canonical program `A005996.P5883780416022045654`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005996 (n : ℕ) : ℤ :=
  A005996.P5883780416022045654.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005996.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A006336.P15032282325692999716

`a(n-1)+a(A060143(n+1)-1)` with `a(0)=1`
-/

namespace A006336.P15032282325692999716
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + a (A060143 (n + 1) - 1).toNat

end

end A006336.P15032282325692999716

noncomputable section

/-- A006336: a(n) = a(n-1) + a(n - 1 - number of even terms so far).

Offset 1, canonical program `A006336.P15032282325692999716`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006336 (n : ℕ) : ℤ :=
  (A006336.P15032282325692999716.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006336.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A006367.P14194102360147231418

`A010049(n+1)-A010049(n)`
-/

namespace A006367.P14194102360147231418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 (n + 1) - A010049 n

end

end A006367.P14194102360147231418

noncomputable section

/-- A006367: Number of binary vectors of length n+1 beginning with 0 and containing just 1 singleton.

Offset 0, canonical program `A006367.P14194102360147231418`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006367 (n : ℕ) : ℤ :=
  A006367.P14194102360147231418.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006367.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A007652.P8278837090424156821

`A010879(A000040(n+1))`
-/

namespace A007652.P8278837090424156821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A000040 (n + 1)).toNat

end

end A007652.P8278837090424156821

noncomputable section

/-- A007652: Final digit of prime(n).

Offset 1, canonical program `A007652.P8278837090424156821`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007652 (n : ℕ) : ℤ :=
  A007652.P8278837090424156821.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007652.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A007654.P12931302433447475572

`3*A098301(n)`
-/

namespace A007654.P12931302433447475572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A098301 n

end

end A007654.P12931302433447475572

noncomputable section

/-- A007654: Numbers k such that the standard deviation of 1,...,k is an integer.

Offset 1, canonical program `A007654.P12931302433447475572`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007654 (n : ℕ) : ℤ :=
  A007654.P12931302433447475572.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007654.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A008866.P5966189434648982322

`A000040(A052928(n+2))+(-1)^(n+1)*A000040(A109613(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A008866.P5966189434648982322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A052928 (n + 2)).toNat + (-1) ^ (n + 1) * A000040 (A109613 (n + 1)).toNat

end

end A008866.P5966189434648982322

noncomputable section

/-- A008866: Prime(A052928(n+1)) + (-1)^n* prime(A109613(n)).

Offset 1, canonical program `A008866.P5966189434648982322`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A008866 (n : ℕ) : ℤ :=
  A008866.P5966189434648982322.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A008866.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A009564.P8166319740607794705

`A024343(n)/2`
-/

namespace A009564.P8166319740607794705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024343 n : ℚ) / 2

end

end A009564.P8166319740607794705

noncomputable section

/-- A009564: E.g.f. sin(x^2)/2, coefficients of x^(4*n + 2).

Offset 0, canonical program `A009564.P8166319740607794705`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A009564 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A009564.P8166319740607794705.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A009564.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A010734.P17338199224593915369

`A158289(n)+A199264(n)`
-/

namespace A010734.P17338199224593915369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158289 n + A199264 n

end

end A010734.P17338199224593915369

noncomputable section

/-- A010734: Constant sequence: the all 9's sequence.

Offset 0, canonical program `A010734.P17338199224593915369`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A010734 (n : ℕ) : ℤ :=
  A010734.P17338199224593915369.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A010734.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A014301.P18515033819834153

`(A026641(n+1)-A026641(n))/3`
-/

namespace A014301.P18515033819834153
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026641 (n + 1) - A026641 n : ℚ) / 3

end

end A014301.P18515033819834153

noncomputable section

/-- A014301: Number of internal nodes of even outdegree in all ordered rooted trees with n edges.

Offset 1, canonical program `A014301.P18515033819834153`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014301 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A014301.P18515033819834153.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014301.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A014679.P9947285456164827845

`n²/12+n/4+13/36-A057077(n)/4+4*A099837(n+3)/9`
-/

namespace A014679.P9947285456164827845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) / 12 + (n : ℚ) / 4 + (13 : ℚ) / 36 - (A057077 n : ℚ) / 4 + (4 * A099837 (n + 3) : ℚ) / 9

end

end A014679.P9947285456164827845

noncomputable section

/-- A014679: G.f.: (1+x^3)^2/((1-x^2)*(1-x^3)*(1-x^4)).

Offset 0, canonical program `A014679.P9947285456164827845`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014679 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A014679.P9947285456164827845.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014679.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A014796.P14216913093135967788

`A015220(n)²`
-/

namespace A014796.P14216913093135967788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015220 n ^ 2

end

end A014796.P14216913093135967788

noncomputable section

/-- A014796: Squares of even tetrahedral numbers (A015220).

Offset 0, canonical program `A014796.P14216913093135967788`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014796 (n : ℕ) : ℤ :=
  A014796.P14216913093135967788.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014796.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A014797.P4579357030622814890

`A015221(n)²`
-/

namespace A014797.P4579357030622814890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015221 n ^ 2

end

end A014797.P4579357030622814890

noncomputable section

/-- A014797: Squares of odd square pyramidal numbers.

Offset 0, canonical program `A014797.P4579357030622814890`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014797 (n : ℕ) : ℤ :=
  A014797.P4579357030622814890.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014797.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A014798.P13163875346793599077

`A015222(n+1)²`
-/

namespace A014798.P13163875346793599077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015222 (n + 1) ^ 2

end

end A014798.P13163875346793599077

noncomputable section

/-- A014798: Squares of even square pyramidal numbers.

Offset 0, canonical program `A014798.P13163875346793599077`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014798 (n : ℕ) : ℤ :=
  A014798.P13163875346793599077.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014798.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A014800.P2273199219336145023

`A015224(n)²`
-/

namespace A014800.P2273199219336145023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015224 n ^ 2

end

end A014800.P2273199219336145023

noncomputable section

/-- A014800: Squares of even pentagonal pyramidal numbers.

Offset 0, canonical program `A014800.P2273199219336145023`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014800 (n : ℕ) : ℤ :=
  A014800.P2273199219336145023.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014800.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A014801.P14746116168998849138

`A015225(n+1)²`
-/

namespace A014801.P14746116168998849138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015225 (n + 1) ^ 2

end

end A014801.P14746116168998849138

noncomputable section

/-- A014801: Squares of odd hexagonal pyramidal numbers.

Offset 0, canonical program `A014801.P14746116168998849138`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014801 (n : ℕ) : ℤ :=
  A014801.P14746116168998849138.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014801.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A000064.P7860828275165321121

`∑[A000008(n)]`
-/

namespace A000064.P7860828275165321121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000064.P7860828275165321121

noncomputable section

/-- A000064: Partial sums of (unordered) ways of making change for n cents using coins of 1, 2, 5, 10 cents.

Offset 0, canonical program `A000064.P7860828275165321121`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000064 (n : ℕ) : ℤ :=
  A000064.P7860828275165321121.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000064.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000102.P12334321088699624445

`A000078(n+3)-Δ[A008937(n)]`
-/

namespace A000102.P12334321088699624445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008937 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000078 (n + 3) - (f1 (n + 1) - f1 n)

end

end A000102.P12334321088699624445

noncomputable section

/-- A000102: a(n) = number of compositions of n in which the maximum part size is 4.

Offset 0, canonical program `A000102.P12334321088699624445`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 352 terms. -/
def A000102 (n : ℕ) : ℤ :=
  A000102.P12334321088699624445.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 352 terms. -/
def A000102.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000383.P18280553795721487493

`5*(∑[A001592(n)]-A001592(n))+1`
-/

namespace A000383.P18280553795721487493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (∑ j ∈ Finset.range (n + 1), f1 j - A001592 n) + 1

end

end A000383.P18280553795721487493

noncomputable section

/-- A000383: Hexanacci numbers with a(0) = ... = a(5) = 1.

Offset 0, canonical program `A000383.P18280553795721487493`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A000383 (n : ℕ) : ℤ :=
  A000383.P18280553795721487493.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A000383.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000486.P14804195295319927566

`2*A123003(n)`
-/

namespace A000486.P14804195295319927566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A123003 n

end

end A000486.P14804195295319927566

noncomputable section

/-- A000486: One half of the number of permutations of [n] such that the differences have 4 runs with the same signs.

Offset 5, canonical program `A000486.P14804195295319927566`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A000486 (n : ℕ) : ℤ :=
  A000486.P14804195295319927566.a (n - 5)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A000486.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000529.P3189955386639158654

`∑[∑[A023545(n+2)]+3]`
-/

namespace A000529.P3189955386639158654
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000529.P3189955386639158654

noncomputable section

/-- A000529: Powers of rooted tree enumerator.

Offset 1, canonical program `A000529.P3189955386639158654`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A000529 (n : ℕ) : ℤ :=
  A000529.P3189955386639158654.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A000529.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000770.P8273594268794257151

`A000481(n+5)+6*a(n-1)` with `a(0)=1`
-/

namespace A000770.P8273594268794257151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000481 (n + 5) + 6 * a (n - 1)

end

end A000770.P8273594268794257151

noncomputable section

/-- A000770: Stirling numbers of the second kind, S(n,6).

Offset 6, canonical program `A000770.P8273594268794257151`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A000770 (n : ℕ) : ℤ :=
  A000770.P8273594268794257151.a (n - 6)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A000770.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000967.P7202602035930507134

`round(A001610(2*(n+1))/(2*n+3))`
-/

namespace A000967.P7202602035930507134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001610 (2 * (n + 1)) : ℚ) / (2 * n + 3 : ℚ))

end

end A000967.P7202602035930507134

noncomputable section

/-- A000967: Sum of Fermat coefficients.

Offset 1, canonical program `A000967.P7202602035930507134`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A000967 (n : ℕ) : ℤ :=
  A000967.P7202602035930507134.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A000967.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000968.P2757355558857724068

`round(A001612(2*n+3)/(4*n+6))`
-/

namespace A000968.P2757355558857724068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001612 (2 * n + 3) : ℚ) / (4 * n + 6 : ℚ))

end

end A000968.P2757355558857724068

noncomputable section

/-- A000968: Sum of odd Fermat coefficients rounded to nearest integer.

Offset 1, canonical program `A000968.P2757355558857724068`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A000968 (n : ℕ) : ℤ :=
  A000968.P2757355558857724068.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A000968.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001001.P14221911591443847044

`∑{d}[n+1, #*A000203(#)]`
-/

namespace A001001.P14221911591443847044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A000203 d

end

end A001001.P14221911591443847044

noncomputable section

/-- A001001: Number of sublattices of index n in generic 3-dimensional lattice.

Offset 1, canonical program `A001001.P14221911591443847044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001001 (n : ℕ) : ℤ :=
  A001001.P14221911591443847044.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001001.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001299.P13559188530673329141

`A177239(∑[A079998(n)]+3)`
-/

namespace A001299.P13559188530673329141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177239 (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat

end

end A001299.P13559188530673329141

noncomputable section

/-- A001299: Number of ways of making change for n cents using coins of 1, 5, 10, 25 cents.

Offset 0, canonical program `A001299.P13559188530673329141`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001299 (n : ℕ) : ℤ :=
  A001299.P13559188530673329141.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001299.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001362.P13223363084705303633

`A001304(floor(n/2))`
-/

namespace A001362.P13223363084705303633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001304 ⌊(n : ℚ) / 2⌋.toNat

end

end A001362.P13223363084705303633

noncomputable section

/-- A001362: Number of ways of making change for n cents using coins of 1, 2, 4, 10 cents.

Offset 0, canonical program `A001362.P13223363084705303633`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4111 terms. -/
def A001362 (n : ℕ) : ℤ :=
  A001362.P13223363084705303633.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4111 terms. -/
def A001362.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001386.P3145657325654465222

`A035471(n)+4*n`
-/

namespace A001386.P3145657325654465222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035471 n + (4 * n : ℤ)

end

end A001386.P3145657325654465222

noncomputable section

/-- A001386: Coordination sequence for 4-dimensional I-centered tetragonal orthogonal lattice.

Offset 0, canonical program `A001386.P3145657325654465222`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001386 (n : ℕ) : ℤ :=
  A001386.P3145657325654465222.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001386.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001402.P12217424370709294362

`∑[A037145(n)]`
-/

namespace A001402.P12217424370709294362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001402.P12217424370709294362

noncomputable section

/-- A001402: Number of partitions of n into at most 6 parts.

Offset 0, canonical program `A001402.P12217424370709294362`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001402 (n : ℕ) : ℤ :=
  A001402.P12217424370709294362.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001402.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001492.P11288150812351078527

`A007879(A004524(n))`
-/

namespace A001492.P11288150812351078527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007879 (A004524 n).toNat

end

end A001492.P11288150812351078527

noncomputable section

/-- A001492: Clock chimes with a quarter-hour bell.

Offset 0, canonical program `A001492.P11288150812351078527`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001492 (n : ℕ) : ℤ :=
  A001492.P11288150812351078527.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001492.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001521.P14387190889647212559

`floor(A017910(n)+A017910(n+1)/2)`
-/

namespace A001521.P14387190889647212559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A017910 n : ℚ) + (A017910 (n + 1) : ℚ) / 2⌋

end

end A001521.P14387190889647212559

noncomputable section

/-- A001521: a(1) = 1; thereafter a(n+1) = floor(sqrt(2*a(n)*(a(n)+1))).

Offset 1, canonical program `A001521.P14387190889647212559`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 663 terms. -/
def A001521 (n : ℕ) : ℤ :=
  A001521.P14387190889647212559.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 663 terms. -/
def A001521.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001603.P12609787873162022140

`10*C(Δ[A001906(n)], 2)+1`
-/

namespace A001603.P12609787873162022140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * Nat.choose (f1 (n + 1) - f1 n).toNat 2 + 1

end

end A001603.P12609787873162022140

noncomputable section

/-- A001603: Odd-indexed terms of A124296.

Offset 0, canonical program `A001603.P12609787873162022140`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A001603 (n : ℕ) : ℤ :=
  (A001603.P12609787873162022140.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A001603.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001604.P6158530839936261861

`A002878(n)²+A246639(n)+2`
-/

namespace A001604.P6158530839936261861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002878 n ^ 2 + (A246639 n + 2)

end

end A001604.P6158530839936261861

noncomputable section

/-- A001604: Odd-indexed terms of A124297.

Offset 0, canonical program `A001604.P6158530839936261861`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A001604 (n : ℕ) : ℤ :=
  A001604.P6158530839936261861.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A001604.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001643.P6614285391208530488

`A001644(n+1)-3*(-1)^n*A022003(n)`
-/

namespace A001643.P6614285391208530488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001644 (n + 1) - 3 * (-1) ^ n * A022003 n

end

end A001643.P6614285391208530488

noncomputable section

/-- A001643: A Fielder sequence.

Offset 1, canonical program `A001643.P6614285391208530488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 377 terms. -/
def A001643 (n : ℕ) : ℤ :=
  A001643.P6614285391208530488.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 377 terms. -/
def A001643.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001768.P14525527090377641846

`∑[A085423(n+1)]-(n+1)`
-/

namespace A001768.P14525527090377641846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085423 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A001768.P14525527090377641846

noncomputable section

/-- A001768: Sorting numbers: number of comparisons for merge insertion sort of n elements.

Offset 1, canonical program `A001768.P14525527090377641846`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001768 (n : ℕ) : ℤ :=
  A001768.P14525527090377641846.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001839.P17129698917504236910

`A056827(n)+A008612(A141310(n))`
-/

namespace A001839.P17129698917504236910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056827 n + A008612 (A141310 n).toNat

end

end A001839.P17129698917504236910

noncomputable section

/-- A001839: The coding-theoretic function A(n,4,3).

Offset 1, canonical program `A001839.P17129698917504236910`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001839 (n : ℕ) : ℤ :=
  A001839.P17129698917504236910.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001839.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001848.P10444171994025901737

`Δ[A099193(n)]`
-/

namespace A001848.P10444171994025901737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001848.P10444171994025901737

noncomputable section

/-- A001848: Crystal ball sequence for 6-dimensional cubic lattice.

Offset 0, canonical program `A001848.P10444171994025901737`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001848 (n : ℕ) : ℤ :=
  A001848.P10444171994025901737.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001848.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001849.P12742369539019337686

`Δ[A099195(n)]`
-/

namespace A001849.P12742369539019337686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099195 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001849.P12742369539019337686

noncomputable section

/-- A001849: Crystal ball sequence for 7-dimensional cubic lattice.

Offset 0, canonical program `A001849.P12742369539019337686`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001849 (n : ℕ) : ℤ :=
  A001849.P12742369539019337686.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001849.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001876.P1528332183595955459

`∑{d}[n, A079998(#-1)]`
-/

namespace A001876.P1528332183595955459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A079998 (d - 1)

end

end A001876.P1528332183595955459

noncomputable section

/-- A001876: Number of divisors of n of the form 5k+1; a(0)=0.

Offset 0, canonical program `A001876.P1528332183595955459`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001876 (n : ℕ) : ℤ :=
  A001876.P1528332183595955459.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001876.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001877.P11806035189121010381

`∑{d}[n, and(1, A047412(#))]`
-/

namespace A001877.P11806035189121010381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.land 1 (A047412 d)

end

end A001877.P11806035189121010381

noncomputable section

/-- A001877: Number of divisors of n of the form 5k+2; a(0) = 0.

Offset 0, canonical program `A001877.P11806035189121010381`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001877 (n : ℕ) : ℤ :=
  A001877.P11806035189121010381.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001877.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001878.P13516976986806296717

`∑{d}[n, A079998(#+2)]`
-/

namespace A001878.P13516976986806296717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A079998 (d + 2)

end

end A001878.P13516976986806296717

noncomputable section

/-- A001878: Number of divisors of n of the form 5k+3; a(0) = 0.

Offset 0, canonical program `A001878.P13516976986806296717`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001878 (n : ℕ) : ℤ :=
  A001878.P13516976986806296717.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001878.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001902.P7559069142259162924

`A163590(n+1)*A163590(n)`
-/

namespace A001902.P7559069142259162924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163590 (n + 1) * A163590 n

end

end A001902.P7559069142259162924

noncomputable section

/-- A001902: Successive denominators of Wallis's approximation to Pi/2 (reduced).

Offset 0, canonical program `A001902.P7559069142259162924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A001902 (n : ℕ) : ℤ :=
  A001902.P7559069142259162924.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A001902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001932.P5972703990113433722

`A000129(n)+A000045(n)`
-/

namespace A001932.P5972703990113433722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n + A000045 n

end

end A001932.P5972703990113433722

noncomputable section

/-- A001932: Sum of Fibonacci (A000045) and Pell (A000129) numbers.

Offset 0, canonical program `A001932.P5972703990113433722`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 263 terms. -/
def A001932 (n : ℕ) : ℤ :=
  A001932.P5972703990113433722.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 263 terms. -/
def A001932.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002160.P4524844669123245809

`floor(A001672(2*n)/A001672(n))`
-/

namespace A002160.P4524844669123245809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001672 (2 * n) : ℚ) / (A001672 n : ℚ)⌋

end

end A002160.P4524844669123245809

noncomputable section

/-- A002160: Nearest integer to Pi^n.

Offset 0, canonical program `A002160.P4524844669123245809`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A002160 (n : ℕ) : ℤ :=
  A002160.P4524844669123245809.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A002160.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002448.P16712108532167547424

`(-1)^n*A000122(n)`
-/

namespace A002448.P16712108532167547424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000122 n

end

end A002448.P16712108532167547424

noncomputable section

/-- A002448: Expansion of Jacobi theta function theta_4(x).

Offset 0, canonical program `A002448.P16712108532167547424`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000122, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A002448 (n : ℕ) : ℤ :=
  A002448.P16712108532167547424.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000122, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A002448.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A002524.P287131491170197357

`Δ[A002525(n)]`
-/

namespace A002524.P287131491170197357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002524.P287131491170197357

noncomputable section

/-- A002524: Number of permutations of length n within distance 2 of a fixed permutation.

Offset 0, canonical program `A002524.P287131491170197357`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 272 terms. -/
def A002524 (n : ℕ) : ℤ :=
  A002524.P287131491170197357.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 272 terms. -/
def A002524.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002597.P13793033887542356936

`A029256(2*n)+∑[∑[A029256(2*n+1)]]`
-/

namespace A002597.P13793033887542356936
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029256 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029256 (2 * n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002597.P13793033887542356936

noncomputable section

/-- A002597: Number of partitions into one kind of 1's, two kinds of 2's, and three kinds of 3's.

Offset 0, canonical program `A002597.P13793033887542356936`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4460 terms. -/
def A002597 (n : ℕ) : ℤ :=
  A002597.P13793033887542356936.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4460 terms. -/
def A002597.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002993.P8258847895073826332

`A000030(A000290(n))`
-/

namespace A002993.P8258847895073826332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A000290 n).toNat

end

end A002993.P8258847895073826332

noncomputable section

/-- A002993: Initial digits of squares.

Offset 0, canonical program `A002993.P8258847895073826332`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000030, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A002993 (n : ℕ) : ℤ :=
  A002993.P8258847895073826332.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000030, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A002993.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A003014.P12221424960156331694

`A001815(n)+A052791(n)+A028310(n)`
-/

namespace A003014.P12221424960156331694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001815 n + (A052791 n + A028310 n)

end

end A003014.P12221424960156331694

noncomputable section

/-- A003014: Expansion of e.g.f.: 1 + x*exp(x) + x^2*exp(2*x) + x^3*exp(3*x).

Offset 0, canonical program `A003014.P12221424960156331694`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. -/
def A003014 (n : ℕ) : ℤ :=
  A003014.P12221424960156331694.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. -/
def A003014.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003070.P9410696812712733123

`A072831(n)-round(1/A001399(n))`
-/

namespace A003070.P9410696812712733123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072831 n - SequenceMachineLib.roundAway (1 / (A001399 n : ℚ))

end

end A003070.P9410696812712733123

noncomputable section

/-- A003070: a(n) = ceiling(log_2 n!).

Offset 0, canonical program `A003070.P9410696812712733123`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003070 (n : ℕ) : ℤ :=
  A003070.P9410696812712733123.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003070.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003124.P4124040314412767087

`A001281(a(n-1))` with `a(0)=17`
-/

namespace A003124.P4124040314412767087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [17] fun n a =>
  A001281 (a (n - 1)).toNat

end

end A003124.P4124040314412767087

noncomputable section

/-- A003124: One of the basic cycles in the x->3x-1 (x odd) or x/2 (x even) problem.

Offset 0, canonical program `A003124.P4124040314412767087`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003124 (n : ℕ) : ℤ :=
  A003124.P4124040314412767087.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003124.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003143.P170074439756737904

`ceil(∑[A070875(n)/14])`
-/

namespace A003143.P170074439756737904
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070875 n : ℚ) / 14

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A003143.P170074439756737904

noncomputable section

/-- A003143: a(2*n) = floor( 17*2^n/14 ), a(2*n+1) = floor( 12*2^n/7 ).

Offset 0, canonical program `A003143.P170074439756737904`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 660 terms. -/
def A003143 (n : ℕ) : ℤ :=
  A003143.P170074439756737904.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 660 terms. -/
def A003143.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003251.P1917370162487777075

`eq[1, gcd(5, A060144(n)+n)]`
-/

namespace A003251.P1917370162487777075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 5 (A060144 n + (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003251.P1917370162487777075

noncomputable section

/-- A003251: Complement of A003250.

Offset 1, canonical program `A003251.P1917370162487777075`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8000 terms. -/
def A003251 (n : ℕ) : ℤ :=
  (A003251.P1917370162487777075.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8000 terms. -/
def A003251.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003253.P3479415574087350811

`A060144(A003233(n+1))+n+1`
-/

namespace A003253.P3479415574087350811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060144 (A003233 (n + 1)).toNat + (n + 1 : ℤ)

end

end A003253.P3479415574087350811

noncomputable section

/-- A003253: Complement of A003252.

Offset 1, canonical program `A003253.P3479415574087350811`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7205 terms. -/
def A003253 (n : ℕ) : ℤ :=
  A003253.P3479415574087350811.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7205 terms. -/
def A003253.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003259.P5602186675624408663

`comp[A279054(n+1)]+1+n`
-/

namespace A003259.P5602186675624408663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279054 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 + n

end

end A003259.P5602186675624408663

noncomputable section

/-- A003259: Complement of A003258.

Offset 1, canonical program `A003259.P5602186675624408663`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003259 (n : ℕ) : ℤ :=
  (A003259.P5602186675624408663.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003259.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003274.P13554162099470737190

`A069241(n)+A069241(n)%A069241(n+1)`
-/

namespace A003274.P13554162099470737190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069241 n + Int.tmod (A069241 n) (A069241 (n + 1))

end

end A003274.P13554162099470737190

noncomputable section

/-- A003274: Number of key permutations of length n: permutations {a_i} with |a_i - a_{i-1}| = 1 or 2.

Offset 0, canonical program `A003274.P13554162099470737190`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 599 terms. -/
def A003274 (n : ℕ) : ℤ :=
  A003274.P13554162099470737190.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 599 terms. -/
def A003274.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003467.P10500411441833371577

`(lcm(2, 4^n)+3)*A000292(n+1)`
-/

namespace A003467.P10500411441833371577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (4 ^ n) + 3 : ℤ) * A000292 (n + 1)

end

end A003467.P10500411441833371577

noncomputable section

/-- A003467: Number of minimal covers of an n-set that cover exactly 3 points uniquely.

Offset 3, canonical program `A003467.P10500411441833371577`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 157 terms. -/
def A003467 (n : ℕ) : ℤ :=
  A003467.P10500411441833371577.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 157 terms. -/
def A003467.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003632.P12204109187370661191

`p?[A047415(n+2)+A008620(n+1)]`
-/

namespace A003632.P12204109187370661191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047415 (n + 2) + A008620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A003632.P12204109187370661191

noncomputable section

/-- A003632: Inert rational primes in Q(sqrt 7), or, 7 is not a square mod p.

Offset 1, canonical program `A003632.P12204109187370661191`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1317 terms. -/
def A003632 (n : ℕ) : ℤ :=
  A003632.P12204109187370661191.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1317 terms. -/
def A003632.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003986.P12926496113833734776

`or(A002262(n), A025581(n))`
-/

namespace A003986.P12926496113833734776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002262 n) (A025581 n)

end

end A003986.P12926496113833734776

noncomputable section

/-- A003986: Table T(n,k) = n OR k read by antidiagonals.

Offset 0, canonical program `A003986.P12926496113833734776`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003986 (n : ℕ) : ℤ :=
  A003986.P12926496113833734776.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003986.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003987.P6522273903622706452

`xor(A002262(n), A025581(n))`
-/

namespace A003987.P6522273903622706452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002262 n) (A025581 n)

end

end A003987.P6522273903622706452

noncomputable section

/-- A003987: Table of n XOR m (or Nim-sum of n and m) read by antidiagonals with m>=0, n>=0.

Offset 0, canonical program `A003987.P6522273903622706452`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003987 (n : ℕ) : ℤ :=
  A003987.P6522273903622706452.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003987.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004245.P6957919564192117304

`C(n, C(n, n²))+A004243(n+1)`
-/

namespace A004245.P6957919564192117304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n (Nat.choose n (n ^ 2)) : ℤ) + A004243 (n + 1)

end

end A004245.P6957919564192117304

noncomputable section

/-- A004245: a(n) = ceiling(10000*log(n)).

Offset 1, canonical program `A004245.P6957919564192117304`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004245 (n : ℕ) : ℤ :=
  A004245.P6957919564192117304.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004245.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004305.P9541854457979571393

`A052472(n+3)+A006542(n+4)-A129936(n)`
-/

namespace A004305.P9541854457979571393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052472 (n + 3) + (A006542 (n + 4) - A129936 n)

end

end A004305.P9541854457979571393

noncomputable section

/-- A004305: Simple triangulations of a disk: column 4 of square array in A210664.

Offset 0, canonical program `A004305.P9541854457979571393`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004305 (n : ℕ) : ℤ :=
  A004305.P9541854457979571393.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004305.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004439.P13435589376260114249

`comp[A055096(n+2)-1]+1`
-/

namespace A004439.P13435589376260114249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055096 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A004439.P13435589376260114249

noncomputable section

/-- A004439: Numbers that are not the sum of 2 distinct nonzero squares.

Offset 1, canonical program `A004439.P13435589376260114249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7658 terms. -/
def A004439 (n : ℕ) : ℤ :=
  (A004439.P13435589376260114249.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7658 terms. -/
def A004439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004493.P4263672960169498817

`A004492(A004482(n))`
-/

namespace A004493.P4263672960169498817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004492 (A004482 n).toNat

end

end A004493.P4263672960169498817

noncomputable section

/-- A004493: Tersum n + 4.

Offset 0, canonical program `A004493.P4263672960169498817`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004493 (n : ℕ) : ℤ :=
  A004493.P4263672960169498817.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004493.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004496.P2249230315701298314

`A004495(A004482(n))`
-/

namespace A004496.P2249230315701298314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004495 (A004482 n).toNat

end

end A004496.P2249230315701298314

noncomputable section

/-- A004496: Tersum n + 7.

Offset 0, canonical program `A004496.P2249230315701298314`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004496 (n : ℕ) : ℤ :=
  A004496.P2249230315701298314.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004496.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004530.P5757221461617830557

`A257179(n)%(A000122(n)+1)`
-/

namespace A004530.P5757221461617830557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257179 n) (A000122 n + 1)

end

end A004530.P5757221461617830557

noncomputable section

/-- A004530: Expansion of (theta_2(0, x) + theta_3(0, x) + theta_4(0, x)) / 2 in powers of x^(1/4).

Offset 0, canonical program `A004530.P5757221461617830557`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004530 (n : ℕ) : ℤ :=
  A004530.P5757221461617830557.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004530.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004540.P11230005680064243108

`A221944(2*n)%3`
-/

namespace A004540.P11230005680064243108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221944 (2 * n)) 3

end

end A004540.P11230005680064243108

noncomputable section

/-- A004540: Expansion of sqrt(2) in base 3.

Offset 1, canonical program `A004540.P11230005680064243108`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A004540 (n : ℕ) : ℤ :=
  A004540.P11230005680064243108.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A004540.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004542.P2609492655697361213

`A221945(2*n)%5`
-/

namespace A004542.P2609492655697361213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221945 (2 * n)) 5

end

end A004542.P2609492655697361213

noncomputable section

/-- A004542: Expansion of sqrt(2) in base 5.

Offset 1, canonical program `A004542.P2609492655697361213`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A004542 (n : ℕ) : ℤ :=
  A004542.P2609492655697361213.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A004542.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004544.P14090878640019133571

`A221946(2*n)%7`
-/

namespace A004544.P14090878640019133571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221946 (2 * n)) 7

end

end A004544.P14090878640019133571

noncomputable section

/-- A004544: Expansion of sqrt(2) in base 7.

Offset 1, canonical program `A004544.P14090878640019133571`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A004544 (n : ℕ) : ℤ :=
  A004544.P14090878640019133571.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A004544.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004546.P16106512506241214683

`A221944(4*n)%9`
-/

namespace A004546.P16106512506241214683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221944 (4 * n)) 9

end

end A004546.P16106512506241214683

noncomputable section

/-- A004546: Expansion of sqrt(2) in base 9.

Offset 1, canonical program `A004546.P16106512506241214683`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A004546 (n : ℕ) : ℤ :=
  A004546.P16106512506241214683.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A004546.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004548.P9215137426199546943

`dr(A017913(2*n+1)%3)`
-/

namespace A004548.P9215137426199546943
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (A017913 (2 * n + 1)) 3)

end

end A004548.P9215137426199546943

noncomputable section

/-- A004548: Expansion of sqrt(3) in base 3.

Offset 1, canonical program `A004548.P9215137426199546943`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A004548 (n : ℕ) : ℤ :=
  (A004548.P9215137426199546943.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A004548.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004549.P6849516851646129098

`A094386(2*n+1)%4`
-/

namespace A004549.P6849516851646129098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094386 (2 * n + 1)) 4

end

end A004549.P6849516851646129098

noncomputable section

/-- A004549: Expansion of sqrt(3) in base 4.

Offset 1, canonical program `A004549.P6849516851646129098`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A004549 (n : ℕ) : ℤ :=
  A004549.P6849516851646129098.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A004549.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004553.P17094153890970716795

`A221718(6*n)%8`
-/

namespace A004553.P17094153890970716795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221718 (6 * n)) 8

end

end A004553.P17094153890970716795

noncomputable section

/-- A004553: Expansion of sqrt(3) in base 8.

Offset 1, canonical program `A004553.P17094153890970716795`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A004553 (n : ℕ) : ℤ :=
  A004553.P17094153890970716795.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A004553.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004554.P2446996440457271753

`A017913(4*n+1)%9`
-/

namespace A004554.P2446996440457271753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017913 (4 * n + 1)) 9

end

end A004554.P2446996440457271753

noncomputable section

/-- A004554: Expansion of sqrt(3) in base 9.

Offset 1, canonical program `A004554.P2446996440457271753`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A004554 (n : ℕ) : ℤ :=
  A004554.P2446996440457271753.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A004554.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004558.P4442881765870322193

`A017919(2*n+1)%5`
-/

namespace A004558.P4442881765870322193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017919 (2 * n + 1)) 5

end

end A004558.P4442881765870322193

noncomputable section

/-- A004558: Expansion of sqrt(5) in base 5.

Offset 1, canonical program `A004558.P4442881765870322193`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A004558 (n : ℕ) : ℤ :=
  A004558.P4442881765870322193.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A004558.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004561.P2140334228168708990

`A221942(A008588(n))%8`
-/

namespace A004561.P2140334228168708990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221942 (A008588 n).toNat) 8

end

end A004561.P2140334228168708990

noncomputable section

/-- A004561: Expansion of sqrt(5) in base 8.

Offset 1, canonical program `A004561.P2140334228168708990`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A004561 (n : ℕ) : ℤ :=
  A004561.P2140334228168708990.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A004561.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004565.P14315501333199100927

`A017922(2*n+1)%6`
-/

namespace A004565.P14315501333199100927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017922 (2 * n + 1)) 6

end

end A004565.P14315501333199100927

noncomputable section

/-- A004565: Expansion of sqrt(6) in base 6.

Offset 1, canonical program `A004565.P14315501333199100927`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A004565 (n : ℕ) : ℤ :=
  A004565.P14315501333199100927.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A004565.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004567.P15535764283866829389

`A221718(6*n+1)%8`
-/

namespace A004567.P15535764283866829389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221718 (6 * n + 1)) 8

end

end A004567.P15535764283866829389

noncomputable section

/-- A004567: Expansion of sqrt(6) in base 8.

Offset 1, canonical program `A004567.P15535764283866829389`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A004567 (n : ℕ) : ℤ :=
  A004567.P15535764283866829389.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A004567.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004568.P7165566380675965637

`A221944(4*n+1)%9`
-/

namespace A004568.P7165566380675965637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221944 (4 * n + 1)) 9

end

end A004568.P7165566380675965637

noncomputable section

/-- A004568: Expansion of sqrt(6) in base 9.

Offset 1, canonical program `A004568.P7165566380675965637`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A004568 (n : ℕ) : ℤ :=
  A004568.P7165566380675965637.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A004568.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004569.P9129839962585521232

`and(2, A221943(2*n))/2`
-/

namespace A004569.P9129839962585521232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A221943 (2 * n)) : ℚ) / 2

end

end A004569.P9129839962585521232

noncomputable section

/-- A004569: Expansion of sqrt(7) in base 2.

Offset 2, canonical program `A004569.P9129839962585521232`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A004569 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A004569.P9129839962585521232.a (n - 2))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A004569.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004574.P18301511294695238640

`A017925(2*n+1)%7`
-/

namespace A004574.P18301511294695238640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017925 (2 * n + 1)) 7

end

end A004574.P18301511294695238640

noncomputable section

/-- A004574: Expansion of sqrt(7) in base 7.

Offset 1, canonical program `A004574.P18301511294695238640`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A004574 (n : ℕ) : ℤ :=
  A004574.P18301511294695238640.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A004574.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004575.P15716396964342662133

`and(7, A221943(6*n))`
-/

namespace A004575.P15716396964342662133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (A221943 (6 * n))

end

end A004575.P15716396964342662133

noncomputable section

/-- A004575: Expansion of sqrt(7) in base 8.

Offset 1, canonical program `A004575.P15716396964342662133`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A004575 (n : ℕ) : ℤ :=
  A004575.P15716396964342662133.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A004575.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004585.P7732518386118126900

`and(2, A221942(2*n+1))/2`
-/

namespace A004585.P7732518386118126900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A221942 (2 * n + 1)) : ℚ) / 2

end

end A004585.P7732518386118126900

noncomputable section

/-- A004585: Expansion of sqrt(10) in base 2.

Offset 2, canonical program `A004585.P7732518386118126900`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A004585 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A004585.P7732518386118126900.a (n - 2))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A004585.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004588.P9751913097939409600

`A221945(2*n+1)%5`
-/

namespace A004588.P9751913097939409600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221945 (2 * n + 1)) 5

end

end A004588.P9751913097939409600

noncomputable section

/-- A004588: Expansion of sqrt(10) in base 5.

Offset 1, canonical program `A004588.P9751913097939409600`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A004588 (n : ℕ) : ℤ :=
  A004588.P9751913097939409600.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A004588.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004591.P12752315265161502023

`and(7, A221942(6*n+1))`
-/

namespace A004591.P12752315265161502023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (A221942 (6 * n + 1))

end

end A004591.P12752315265161502023

noncomputable section

/-- A004591: Expansion of sqrt(10) in base 8.

Offset 1, canonical program `A004591.P12752315265161502023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A004591 (n : ℕ) : ℤ :=
  A004591.P12752315265161502023.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A004591.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004599.P11205641395720963001

`A027437(3*n)%8`
-/

namespace A004599.P11205641395720963001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027437 (3 * n)) 8

end

end A004599.P11205641395720963001

noncomputable section

/-- A004599: Expansion of e in base 8.

Offset 1, canonical program `A004599.P11205641395720963001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A004599 (n : ℕ) : ℤ :=
  A004599.P11205641395720963001.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A004599.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004609.P6114762697630435467

`A221718(A004273(n))%2`
-/

namespace A004609.P6114762697630435467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221718 (A004273 n).toNat) 2

end

end A004609.P6114762697630435467

noncomputable section

/-- A004609: Expansion of sqrt(6) in base 2.

Offset 2, canonical program `A004609.P6114762697630435467`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A004609 (n : ℕ) : ℤ :=
  A004609.P6114762697630435467.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A004609.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004610.P5182888975923859271

`A221944(2*n+1)%3`
-/

namespace A004610.P5182888975923859271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221944 (2 * n + 1)) 3

end

end A004610.P5182888975923859271

noncomputable section

/-- A004610: Expansion of sqrt(6) in base 3.

Offset 1, canonical program `A004610.P5182888975923859271`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A004610 (n : ℕ) : ℤ :=
  A004610.P5182888975923859271.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A004610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004737.P12416270940268694316

`A053615(A028391(n))+1`
-/

namespace A004737.P12416270940268694316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (A028391 n).toNat + 1

end

end A004737.P12416270940268694316

noncomputable section

/-- A004737: Concatenation of sequences (1,2,...,n-1,n,n-1,...,1) for n >= 1.

Offset 1, canonical program `A004737.P12416270940268694316`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004737 (n : ℕ) : ℤ :=
  A004737.P12416270940268694316.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004763.P9187450148109065970

`A004526(A004761(n+1)-n)+n`
-/

namespace A004763.P9187450148109065970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004761 (n + 1) - (n : ℤ)).toNat + (n : ℤ)

end

end A004763.P9187450148109065970

noncomputable section

/-- A004763: Numbers whose binary expansion does not begin 101.

Offset 1, canonical program `A004763.P9187450148109065970`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004763 (n : ℕ) : ℤ :=
  A004763.P9187450148109065970.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004763.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004793.P14402439767548149062

`A003278(n+1)+n%2`
-/

namespace A004793.P14402439767548149062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (n + 1) + ((n % 2 : ℕ) : ℤ)

end

end A004793.P14402439767548149062

noncomputable section

/-- A004793: a(1)=1, a(2)=3; a(n) is least k such that no three terms of a(1), a(2), ..., a(n-1), k form an arithmetic progression.

Offset 1, canonical program `A004793.P14402439767548149062`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004793 (n : ℕ) : ℤ :=
  A004793.P14402439767548149062.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004793.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004982.P10117647933676475083

`(n+1)*A048779(n+1)`
-/

namespace A004982.P10117647933676475083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A048779 (n + 1)

end

end A004982.P10117647933676475083

noncomputable section

/-- A004982: a(n) = (2^n/n!) * Product_{k=0..n-1} (4*k + 3).

Offset 0, canonical program `A004982.P10117647933676475083`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A004982 (n : ℕ) : ℤ :=
  A004982.P10117647933676475083.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A004982.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004985.P8851749625276327124

`A004981(n)*(4*n+1)`
-/

namespace A004985.P8851749625276327124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004981 n * (4 * n + 1 : ℤ)

end

end A004985.P8851749625276327124

noncomputable section

/-- A004985: a(n) = (2^n/n!)*Product_{k=0..n-1} (4*k + 5).

Offset 0, canonical program `A004985.P8851749625276327124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A004985 (n : ℕ) : ℤ :=
  A004985.P8851749625276327124.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A004985.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004991.P16565924391553142663

`A004987(n)*A016777(n)`
-/

namespace A004991.P16565924391553142663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004987 n * A016777 n

end

end A004991.P16565924391553142663

noncomputable section

/-- A004991: a(n) = (3^n/n!) * Product_{k=0..n-1} (3*k + 4).

Offset 0, canonical program `A004991.P16565924391553142663`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A004991 (n : ℕ) : ℤ :=
  A004991.P16565924391553142663.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A004991.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005025.P15515043106583685117

`∑[A370568(n+1)]+1`
-/

namespace A005025.P15515043106583685117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370568 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A005025.P15515043106583685117

noncomputable section

/-- A005025: Random walks.

Offset 1, canonical program `A005025.P15515043106583685117`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A005025 (n : ℕ) : ℤ :=
  A005025.P15515043106583685117.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A005025.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005041.P6486639920027005482

`A073188(n-a(n-1))+1` with `a(0)=1`
-/

namespace A005041.P6486639920027005482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A073188 ((n : ℤ) - a (n - 1)).toNat + 1

end

end A005041.P6486639920027005482

noncomputable section

/-- A005041: Positive integers k repeated ceiling(k/3) + 1 times.

Offset 0, canonical program `A005041.P6486639920027005482`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005041 (n : ℕ) : ℤ :=
  A005041.P6486639920027005482.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005041.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005094.P4862257646653841086

`A005089(n+1)-A005091(n+1)`
-/

namespace A005094.P4862257646653841086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005089 (n + 1) - A005091 (n + 1)

end

end A005094.P4862257646653841086

noncomputable section

/-- A005094: Number of distinct primes of the form 4k+1 dividing n minus number of distinct primes of the form 4k+3 dividing n.

Offset 1, canonical program `A005094.P4862257646653841086`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005089, A005091, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A005094 (n : ℕ) : ℤ :=
  A005094.P4862257646653841086.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005089, A005091, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A005094.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A005120.P6021012035630790569

`Δ[A000931(n+1)*A176971(n+1)]`
-/

namespace A005120.P6021012035630790569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (n + 1) * A176971 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005120.P6021012035630790569

noncomputable section

/-- A005120: A sixth-order linear divisibility sequence: a(n+6) = -3*a(n+5) - 5*a(n+4) - 5*a(n+3) - 5*a(n+2) - 3*a(n+1) - a(n).

Offset 0, canonical program `A005120.P6021012035630790569`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 550 terms. -/
def A005120 (n : ℕ) : ℤ :=
  A005120.P6021012035630790569.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 550 terms. -/
def A005120.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005181.P8418560770788744835

`∑[A306486(abs(1-n))]`
-/

namespace A005181.P8418560770788744835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306486 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005181.P8418560770788744835

noncomputable section

/-- A005181: a(n) = ceiling(exp((n-1)/2)).

Offset 0, canonical program `A005181.P8418560770788744835`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 462 terms. -/
def A005181 (n : ℕ) : ℤ :=
  A005181.P8418560770788744835.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 462 terms. -/
def A005181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005211.P18254895563136852198

`record[A005210(n+1)]`
-/

namespace A005211.P18254895563136852198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005210 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005211.P18254895563136852198

noncomputable section

/-- A005211: Record values in A005210.

Offset 1, canonical program `A005211.P18254895563136852198`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A005211 (n : ℕ) : ℤ :=
  A005211.P18254895563136852198.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A005211.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005230.P10896589318031929858

`Δ[A005318(n)]`
-/

namespace A005230.P10896589318031929858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005230.P10896589318031929858

noncomputable section

/-- A005230: Stern's sequence: a(1) = 1, a(n+1) is the sum of the m preceding terms, where m*(m-1)/2 < n <= m*(m+1)/2 or equivalently m = ceiling((sqrt(8*n+1)-1)/2) = A002024(n).

Offset 1, canonical program `A005230.P10896589318031929858`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A005230 (n : ℕ) : ℤ :=
  A005230.P10896589318031929858.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A005230.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005253.P15607668375944119742

`A001687(2*n+3)`
-/

namespace A005253.P15607668375944119742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001687 (2 * n + 3)

end

end A005253.P15607668375944119742

noncomputable section

/-- A005253: Number of binary words of length n in which the ones occur only in blocks of length at least 4.

Offset 0, canonical program `A005253.P15607668375944119742`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 544 terms. -/
def A005253 (n : ℕ) : ℤ :=
  A005253.P15607668375944119742.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 544 terms. -/
def A005253.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005288.P5410300661459144486

`A028310(n)+∑[A005287(n+4)-1]-2`
-/

namespace A005288.P5410300661459144486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005287 (n + 4) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + (∑ j ∈ Finset.range (n + 1), f1 j - 2)

end

end A005288.P5410300661459144486

noncomputable section

/-- A005288: a(n) = C(n,5) + C(n,4) - C(n,3) + 1, n >= 7.

Offset 6, canonical program `A005288.P5410300661459144486`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005288 (n : ℕ) : ℤ :=
  A005288.P5410300661459144486.a (n - 6)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005288.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005289.P13255751764471815005

`∑[∑[A008615(n)+A006584(n)]]`
-/

namespace A005289.P13255751764471815005
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 n + A006584 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005289.P13255751764471815005

noncomputable section

/-- A005289: Number of graphs on n nodes with 3 cliques.

Offset 1, canonical program `A005289.P13255751764471815005`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005289 (n : ℕ) : ℤ :=
  A005289.P13255751764471815005.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005289.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005403.P13500853019131369691

`A000045(n+5)-A013979(n+6)`
-/

namespace A005403.P13500853019131369691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 5) - A013979 (n + 6)

end

end A005403.P13500853019131369691

noncomputable section

/-- A005403: Number of protruded partitions of n with largest part at most 2.

Offset 1, canonical program `A005403.P13500853019131369691`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. -/
def A005403 (n : ℕ) : ℤ :=
  A005403.P13500853019131369691.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. -/
def A005403.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005428.P13277761271473291842

`floor(A061418(n+1)/2)`
-/

namespace A005428.P13277761271473291842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A061418 (n + 1) : ℚ) / 2⌋

end

end A005428.P13277761271473291842

noncomputable section

/-- A005428: a(n) = ceiling((1 + sum of preceding terms) / 2) starting with a(0) = 1.

Offset 0, canonical program `A005428.P13277761271473291842`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 567 terms. -/
def A005428 (n : ℕ) : ℤ :=
  A005428.P13277761271473291842.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 567 terms. -/
def A005428.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005521.P885099194916779393

`∑[floor(A000040(n+1)/2)]`
-/

namespace A005521.P885099194916779393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005521.P885099194916779393

noncomputable section

/-- A005521: 1 + (sum of first n odd primes - n)/2.

Offset 0, canonical program `A005521.P885099194916779393`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005521 (n : ℕ) : ℤ :=
  A005521.P885099194916779393.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005521.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005567.P6007281572393295764

`∑[(n+5)*A036799(n+1)]`
-/

namespace A005567.P6007281572393295764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 5 : ℤ) * A036799 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005567.P6007281572393295764

noncomputable section

/-- A005567: Number of walks on square lattice.

Offset 0, canonical program `A005567.P6007281572393295764`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 313 terms. -/
def A005567 (n : ℕ) : ℤ :=
  A005567.P6007281572393295764.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 313 terms. -/
def A005567.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005674.P5964039898556817370

`A007179(n)-Δ[A295731(n)]`
-/

namespace A005674.P5964039898556817370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295731 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007179 n - (f1 (n + 1) - f1 n)

end

end A005674.P5964039898556817370

noncomputable section

/-- A005674: a(n) = 2^(n-1) + 2^[ n/2 ] + 2^[ (n-1)/2 ] - F(n+3).

Offset 0, canonical program `A005674.P5964039898556817370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A005674 (n : ℕ) : ℤ :=
  A005674.P5964039898556817370.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A005674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005689.P7428963177813137816

`Δ[A392541(n+4)]`
-/

namespace A005689.P7428963177813137816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392541 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005689.P7428963177813137816

noncomputable section

/-- A005689: Number of Twopins positions.

Offset 6, canonical program `A005689.P7428963177813137816`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 598 terms. -/
def A005689 (n : ℕ) : ℤ :=
  A005689.P7428963177813137816.a (n - 6)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 598 terms. -/
def A005689.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005698.P13021387874667961066

`A131666(A007494(n+4))`
-/

namespace A005698.P13021387874667961066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131666 (A007494 (n + 4)).toNat

end

end A005698.P13021387874667961066

noncomputable section

/-- A005698: Positions of remoteness 2 in Beans-Don't-Talk.

Offset 1, canonical program `A005698.P13021387874667961066`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 220 terms. -/
def A005698 (n : ℕ) : ℤ :=
  A005698.P13021387874667961066.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 220 terms. -/
def A005698.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005770.P10139504297732212981

`A171496(n)-Δ[A001871(n)]`
-/

namespace A005770.P10139504297732212981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001871 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171496 n - (f1 (n + 1) - f1 n)

end

end A005770.P10139504297732212981

noncomputable section

/-- A005770: Number of convex polygons of length 2n on square lattice whose leftmost bottom vertex and rightmost top vertex have the same x-coordinate.

Offset 5, canonical program `A005770.P10139504297732212981`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A005770 (n : ℕ) : ℤ :=
  A005770.P10139504297732212981.a (n - 5)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A005770.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005774.P11674759060284518255

`A005773(n+1)-A001006(n)`
-/

namespace A005774.P11674759060284518255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 (n + 1) - A001006 n

end

end A005774.P11674759060284518255

noncomputable section

/-- A005774: Number of directed animals of size n (k=1 column of A038622); number of (s(0), s(1), ..., s(n)) such that s(i) is a nonnegative integer and |s(i) - s(i-1)| <= 1 for i = 1,2,...,n, where s(0) = 2; also sum of row n+1 of array T in A026323.

Offset 0, canonical program `A005774.P11674759060284518255`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A005774 (n : ℕ) : ℤ :=
  A005774.P11674759060284518255.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A005774.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005913.P17637009638406168542

`A210460(n+1)+A005908(n)`
-/

namespace A005913.P17637009638406168542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210460 (n + 1) + A005908 n

end

end A005913.P17637009638406168542

noncomputable section

/-- A005913: a(n) = floor(tau*a(n-1)) + floor(tau*a(n-2)) with a(0)=1 and a(1)=3.

Offset 0, canonical program `A005913.P17637009638406168542`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 275 terms. -/
def A005913 (n : ℕ) : ℤ :=
  A005913.P17637009638406168542.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 275 terms. -/
def A005913.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005946.P11046766925565559433

`A000566(n+1)*A000567(n+1)-A002492(n)`
-/

namespace A005946.P11046766925565559433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (n + 1) * A000567 (n + 1) - A002492 n

end

end A005946.P11046766925565559433

noncomputable section

/-- A005946: Number of n-step mappings with 5 inputs.

Offset 1, canonical program `A005946.P11046766925565559433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A005946 (n : ℕ) : ℤ :=
  A005946.P11046766925565559433.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A005946.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005995.P4464072021336214688

`A001753(n)-2*A096338(n)`
-/

namespace A005995.P4464072021336214688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001753 n - 2 * A096338 n

end

end A005995.P4464072021336214688

noncomputable section

/-- A005995: Alkane (or paraffin) numbers l(8,n).

Offset 0, canonical program `A005995.P4464072021336214688`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005995 (n : ℕ) : ℤ :=
  A005995.P4464072021336214688.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005995.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006015.P12462504095142907675

`xor(n, A004468(n))`
-/

namespace A006015.P12462504095142907675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A004468 n)

end

end A006015.P12462504095142907675

noncomputable section

/-- A006015: Nim product 2*n.

Offset 0, canonical program `A006015.P12462504095142907675`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006015 (n : ℕ) : ℤ :=
  A006015.P12462504095142907675.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006015.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006049.P14504587564879316839

`eq[A001221(n+1), A001221(n+2)]+1`
-/

namespace A006049.P14504587564879316839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A006049.P14504587564879316839

noncomputable section

/-- A006049: Numbers k such that k and k+1 have the same number of distinct prime divisors.

Offset 1, canonical program `A006049.P14504587564879316839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006049 (n : ℕ) : ℤ :=
  (A006049.P14504587564879316839.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006049.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006090.P14337409739636243907

`A033999(n)*A192080(n)`
-/

namespace A006090.P14337409739636243907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A192080 n

end

end A006090.P14337409739636243907

noncomputable section

/-- A006090: Expansion of bracket function.

Offset 0, canonical program `A006090.P14337409739636243907`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A006090 (n : ℕ) : ℤ :=
  A006090.P14337409739636243907.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A006090.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006172.P15277379530532349682

`a(n-2)+A192908(n+1)-a(n-1)` with `a(0)=4, a(1)=2`
-/

namespace A006172.P15277379530532349682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 2] fun n a =>
  a (n - 2) + (A192908 (n + 1) - a (n - 1))

end

end A006172.P15277379530532349682

noncomputable section

/-- A006172: a(n) = 1 + F(2*n+1) + (-1)^n*L(n).

Offset 0, canonical program `A006172.P15277379530532349682`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A006172 (n : ℕ) : ℤ :=
  A006172.P15277379530532349682.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A006172.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006288.P15058602425544907126

`A023717(2*n)-A023717(n)`
-/

namespace A006288.P15058602425544907126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (2 * n) - A023717 n

end

end A006288.P15058602425544907126

noncomputable section

/-- A006288: Loxton-van der Poorten sequence: base-4 representation contains only -1, 0, +1.

Offset 0, canonical program `A006288.P15058602425544907126`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A006288 (n : ℕ) : ℤ :=
  A006288.P15058602425544907126.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A006288.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006340.P5648138728573061714

`A334413(n)+1`
-/

namespace A006340.P5648138728573061714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334413 n + 1

end

end A006340.P5648138728573061714

noncomputable section

/-- A006340: An "eta-sequence": [ (n+1)*tau + 1/2 ] - [ n*tau + 1/2 ], tau = (1 + sqrt(5))/2.

Offset 0, canonical program `A006340.P5648138728573061714`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006340 (n : ℕ) : ℤ :=
  A006340.P5648138728573061714.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006340.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006457.P17964235660098232261

`∑[∑[A107659(n)]-A000225(n)]`
-/

namespace A006457.P17964235660098232261
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107659 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006457.P17964235660098232261

noncomputable section

/-- A006457: Number of elements in Z[ i ] whose 'smallest algorithm' is <= n.

Offset 0, canonical program `A006457.P17964235660098232261`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. -/
def A006457 (n : ℕ) : ℤ :=
  A006457.P17964235660098232261.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. -/
def A006457.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006499.P16153650653769971855

`A056594(n+1)+A001638(n+2)`
-/

namespace A006499.P16153650653769971855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (n + 1) + A001638 (n + 2)

end

end A006499.P16153650653769971855

noncomputable section

/-- A006499: Number of restricted circular combinations.

Offset 0, canonical program `A006499.P16153650653769971855`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A006499 (n : ℕ) : ℤ :=
  A006499.P16153650653769971855.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A006499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006645.P15429359972966869975

`∑[Δ[A291142(n)]-A001333(n)]`
-/

namespace A006645.P15429359972966869975
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291142 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A001333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006645.P15429359972966869975

noncomputable section

/-- A006645: Self-convolution of Pell numbers (A000129).

Offset 0, canonical program `A006645.P15429359972966869975`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 258 terms. -/
def A006645 (n : ℕ) : ℤ :=
  A006645.P15429359972966869975.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 258 terms. -/
def A006645.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006697.P12909453823667468915

`A002984(n)+A109965(n)-1`
-/

namespace A006697.P12909453823667468915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002984 n + (A109965 n - 1)

end

end A006697.P12909453823667468915

noncomputable section

/-- A006697: Number of subwords of length n in infinite word generated by a -> aab, b -> b.

Offset 0, canonical program `A006697.P12909453823667468915`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006697 (n : ℕ) : ℤ :=
  A006697.P12909453823667468915.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006697.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006979.P6077306593130690930

`A001591(n+4)-A000078(n+3)`
-/

namespace A006979.P6077306593130690930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001591 (n + 4) - A000078 (n + 3)

end

end A006979.P6077306593130690930

noncomputable section

/-- A006979: a(n) is the number of compositions of n in which the maximum part size is 5.

Offset 0, canonical program `A006979.P6077306593130690930`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A006979 (n : ℕ) : ℤ :=
  A006979.P6077306593130690930.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A006979.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006980.P13992170337193083166

`A001592(n+11)-A001591(n+10)`
-/

namespace A006980.P13992170337193083166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001592 (n + 11) - A001591 (n + 10)

end

end A006980.P13992170337193083166

noncomputable section

/-- A006980: Compositions: 6th column of A048004.

Offset 6, canonical program `A006980.P13992170337193083166`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A006980 (n : ℕ) : ℤ :=
  A006980.P13992170337193083166.a (n - 6)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A006980.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006998.P18023420003871036434

`a(A004396(n))+a(A004523(n))` with `a(0)=0, a(1)=1`
-/

namespace A006998.P18023420003871036434
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (A004396 n).toNat + a (A004523 n).toNat

end

end A006998.P18023420003871036434

noncomputable section

/-- A006998: Partitioning integers to avoid arithmetic progressions of length 3.

Offset 0, canonical program `A006998.P18023420003871036434`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006998 (n : ℕ) : ℤ :=
  (A006998.P18023420003871036434.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006998.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007009.P4506649749187619571

`A006009(n+1)/4`
-/

namespace A007009.P4506649749187619571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006009 (n + 1) : ℚ) / 4

end

end A007009.P4506649749187619571

noncomputable section

/-- A007009: Number of 3-voter voting schemes with n linearly ranked choices.

Offset 1, canonical program `A007009.P4506649749187619571`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006009, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A007009 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A007009.P4506649749187619571.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006009, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A007009.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A007090.P11600105304047957284

`A024644(2*n)/2`
-/

namespace A007090.P11600105304047957284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024644 (2 * n) : ℚ) / 2

end

end A007090.P11600105304047957284

noncomputable section

/-- A007090: Numbers in base 4.

Offset 0, canonical program `A007090.P11600105304047957284`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A007090 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A007090.P11600105304047957284.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A007090.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007091.P1217996161546394470

`A024657(2*n)/2`
-/

namespace A007091.P1217996161546394470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024657 (2 * n) : ℚ) / 2

end

end A007091.P1217996161546394470

noncomputable section

/-- A007091: Numbers in base 5.

Offset 0, canonical program `A007091.P1217996161546394470`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A007091 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A007091.P1217996161546394470.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A007091.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007317.P12762232467409535098

`∑[A002212(n)]`
-/

namespace A007317.P12762232467409535098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007317.P12762232467409535098

noncomputable section

/-- A007317: Binomial transform of Catalan numbers.

Offset 1, canonical program `A007317.P12762232467409535098`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. -/
def A007317 (n : ℕ) : ℤ :=
  A007317.P12762232467409535098.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. -/
def A007317.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007369.P12791547163572233403

`comp[A000203(n+1)-1]+1`
-/

namespace A007369.P12791547163572233403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A007369.P12791547163572233403

noncomputable section

/-- A007369: Numbers n such that sigma(x) = n has no solution.

Offset 1, canonical program `A007369.P12791547163572233403`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007369 (n : ℕ) : ℤ :=
  (A007369.P12791547163572233403.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007369.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007383.P16560384234796121646

`A023434(n)+∑[A130472(n)]`
-/

namespace A007383.P16560384234796121646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130472 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023434 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007383.P16560384234796121646

noncomputable section

/-- A007383: Number of strict first-order maximal independent sets in path graph.

Offset 1, canonical program `A007383.P16560384234796121646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 819 terms. -/
def A007383 (n : ℕ) : ℤ :=
  A007383.P16560384234796121646.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 819 terms. -/
def A007383.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007385.P7467196621491542789

`A007380(n+1)-∑[or(1, n)]%(n+2)`
-/

namespace A007385.P7467196621491542789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007380 (n + 1) - (((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 2) : ℕ) : ℤ)

end

end A007385.P7467196621491542789

noncomputable section

/-- A007385: Number of strict 5th-order maximal independent sets in path graph.

Offset 1, canonical program `A007385.P7467196621491542789`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1319 terms. -/
def A007385 (n : ℕ) : ℤ :=
  A007385.P7467196621491542789.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1319 terms. -/
def A007385.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007391.P2399758922206179778

`A001608(n+1)-A141310(n)%A005408(n)`
-/

namespace A007391.P2399758922206179778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001608 (n + 1) - Int.tmod (A141310 n) (A005408 n)

end

end A007391.P2399758922206179778

noncomputable section

/-- A007391: Number of strict first-order maximal independent sets in cycle graph.

Offset 1, canonical program `A007391.P2399758922206179778`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 818 terms. -/
def A007391 (n : ℕ) : ℤ :=
  A007391.P2399758922206179778.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 818 terms. -/
def A007391.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007392.P3751705006797672955

`A007387(n+1)+A000007(n)-A141310(n)`
-/

namespace A007392.P3751705006797672955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007387 (n + 1) + (A000007 n - A141310 n)

end

end A007392.P3751705006797672955

noncomputable section

/-- A007392: Number of strict 3rd-order maximal independent sets in cycle graph.

Offset 1, canonical program `A007392.P3751705006797672955`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1084 terms. -/
def A007392 (n : ℕ) : ℤ :=
  A007392.P3751705006797672955.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1084 terms. -/
def A007392.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007433.P17123779711710309047

`∑{d}[n+1, A001157(#)]`
-/

namespace A007433.P17123779711710309047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001157 d

end

end A007433.P17123779711710309047

noncomputable section

/-- A007433: Inverse Moebius transform applied twice to squares.

Offset 1, canonical program `A007433.P17123779711710309047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007433 (n : ℕ) : ℤ :=
  A007433.P17123779711710309047.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007433.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007445.P6124287304801682810

`∑{d}[n+1, A000040(#)]`
-/

namespace A007445.P6124287304801682810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000040 d

end

end A007445.P6124287304801682810

noncomputable section

/-- A007445: Inverse Moebius transform of primes.

Offset 1, canonical program `A007445.P6124287304801682810`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007445 (n : ℕ) : ℤ :=
  A007445.P6124287304801682810.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007445.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007465.P16580226949312639955

`Δ[A276042(n)-A002064(n)]`
-/

namespace A007465.P16580226949312639955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276042 n - A002064 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007465.P16580226949312639955

noncomputable section

/-- A007465: Exponential-convolution of triangular numbers with themselves.

Offset 0, canonical program `A007465.P16580226949312639955`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 305 terms. -/
def A007465 (n : ℕ) : ℤ :=
  A007465.P16580226949312639955.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 305 terms. -/
def A007465.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007606.P7799483194053309628

`A381232(n)+Δ[n²]`
-/

namespace A007606.P7799483194053309628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381232 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A007606.P7799483194053309628

noncomputable section

/-- A007606: Take 1, skip 2, take 3, etc.

Offset 1, canonical program `A007606.P7799483194053309628`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007606 (n : ℕ) : ℤ :=
  A007606.P7799483194053309628.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007606.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007640.P6533582036686519537

`eq[0, A010051(A051890(n)+17)]`
-/

namespace A007640.P6533582036686519537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A051890 n + 17).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A007640.P6533582036686519537

noncomputable section

/-- A007640: Numbers k such that 2*k^2 - 2*k + 19 is composite.

Offset 1, canonical program `A007640.P6533582036686519537`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A007640 (n : ℕ) : ℤ :=
  (A007640.P6533582036686519537.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A007640.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007675.P4991608707947414915

`eq[2, n+1-lcm(a(n-1), A008683(n+2))]` with `a(0)=0`
-/

namespace A007675.P4991608707947414915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  (n + 1 : ℤ) - (Int.lcm (f2 (n - 1)) (A008683 (n + 2)) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A007675.P4991608707947414915

noncomputable section

/-- A007675: Numbers m such that m, m+1 and m+2 are squarefree.

Offset 1, canonical program `A007675.P4991608707947414915`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6285 terms. -/
def A007675 (n : ℕ) : ℤ :=
  (A007675.P4991608707947414915.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6285 terms. -/
def A007675.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008000.P14598701383781270205

`A008130(n)+A005893(n)`
-/

namespace A008000.P14598701383781270205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008130 n + A005893 n

end

end A008000.P14598701383781270205

noncomputable section

/-- A008000: Coordination sequence T1 for Zeolite Code ABW and ATN.

Offset 0, canonical program `A008000.P14598701383781270205`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008000 (n : ℕ) : ℤ :=
  A008000.P14598701383781270205.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008000.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008013.P14464025922531573754

`A005893(n)+2*A008363(n)`
-/

namespace A008013.P14464025922531573754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 n + 2 * A008363 n

end

end A008013.P14464025922531573754

noncomputable section

/-- A008013: Coordination sequence occurring in Zeolite Codes AFG, CAN, LIO, LOS.

Offset 0, canonical program `A008013.P14464025922531573754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008013 (n : ℕ) : ℤ :=
  A008013.P14464025922531573754.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008013.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008066.P16344384066505485400

`A008260(n)-A042948(A002620(n))`
-/

namespace A008066.P16344384066505485400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008260 n - A042948 (A002620 n).toNat

end

end A008066.P16344384066505485400

noncomputable section

/-- A008066: Coordination sequence T1 for Zeolite Code CHA.

Offset 0, canonical program `A008066.P16344384066505485400`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. -/
def A008066 (n : ℕ) : ℤ :=
  A008066.P16344384066505485400.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. -/
def A008066.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008137.P7823502241240527515

`A005893(n)-floor(2/5*n²)`
-/

namespace A008137.P7823502241240527515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 n - ⌊(2 : ℚ) / 5 * (n ^ 2 : ℚ)⌋

end

end A008137.P7823502241240527515

noncomputable section

/-- A008137: Coordination sequence T1 for Zeolite Code LTA and RHO.

Offset 0, canonical program `A008137.P7823502241240527515`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008137 (n : ℕ) : ℤ :=
  A008137.P7823502241240527515.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008137.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008160.P193104279552154710

`A008260(n)-A000212(n)`
-/

namespace A008160.P193104279552154710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008260 n - A000212 n

end

end A008160.P193104279552154710

noncomputable section

/-- A008160: Coordination sequence T1 for Zeolite Code MER.

Offset 0, canonical program `A008160.P193104279552154710`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008160 (n : ℕ) : ℤ :=
  A008160.P193104279552154710.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008160.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008258.P8675262695628927288

`A008130(2*gcd(n, C(2, n)))+A005893(n)`
-/

namespace A008258.P8675262695628927288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008130 (2 * Nat.gcd n (Nat.choose 2 n)) + A005893 n

end

end A008258.P8675262695628927288

noncomputable section

/-- A008258: Coordination sequence T1 for Moganite.

Offset 0, canonical program `A008258.P8675262695628927288`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A008258 (n : ℕ) : ℤ :=
  A008258.P8675262695628927288.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A008258.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008264.P7189986199445051567

`ceil((A007899(n)+3)/4)`
-/

namespace A008264.P7189986199445051567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007899 n + 3 : ℚ) / 4⌉

end

end A008264.P7189986199445051567

noncomputable section

/-- A008264: Coordination sequence for tridymite, lonsdaleite, and wurtzite.

Offset 0, canonical program `A008264.P7189986199445051567`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008264 (n : ℕ) : ℤ :=
  A008264.P7189986199445051567.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008264.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008291.P3366930625600708790

`A008290(lt[A055137(n), 0])`
-/

namespace A008291.P3366930625600708790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055137 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008290 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A008291.P3366930625600708790

noncomputable section

/-- A008291: Triangle of rencontres numbers.

Offset 2, canonical program `A008291.P3366930625600708790`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. -/
def A008291 (n : ℕ) : ℤ :=
  A008291.P3366930625600708790.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. -/
def A008291.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008294.P14103820136134446240

`A104035(lt[0, A104035(n)])`
-/

namespace A008294.P14103820136134446240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104035 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A008294.P14103820136134446240

noncomputable section

/-- A008294: Triangle of coefficients in expansion of D^n (sec x) / sec x in powers of tan x.

Offset 0, canonical program `A008294.P14103820136134446240`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1173 terms. -/
def A008294 (n : ℕ) : ℤ :=
  A008294.P14103820136134446240.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1173 terms. -/
def A008294.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008355.P8676107505756576759

`((3*n)²+1)*A005893(n)`
-/

namespace A008355.P8676107505756576759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 * n) ^ 2 + 1 : ℤ) * A005893 n

end

end A008355.P8676107505756576759

noncomputable section

/-- A008355: Coordination sequence for D_5 lattice.

Offset 0, canonical program `A008355.P8676107505756576759`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008355 (n : ℕ) : ℤ :=
  A008355.P8676107505756576759.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008355.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008364.P14738745201683923342

`A007775(record[n+1-gcd(7, A007775(n+1))]+1)`
-/

namespace A008364.P14738745201683923342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Int.gcd 7 (A007775 (n + 1)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007775 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A008364.P14738745201683923342

noncomputable section

/-- A008364: 11-rough numbers: not divisible by 2, 3, 5 or 7.

Offset 1, canonical program `A008364.P14738745201683923342`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8571 terms. -/
def A008364 (n : ℕ) : ℤ :=
  A008364.P14738745201683923342.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8571 terms. -/
def A008364.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008459.P3220700038138124146

`A007318(n)²`
-/

namespace A008459.P3220700038138124146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n ^ 2

end

end A008459.P3220700038138124146

noncomputable section

/-- A008459: Square the entries of Pascal's triangle.

Offset 0, canonical program `A008459.P3220700038138124146`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008459 (n : ℕ) : ℤ :=
  A008459.P3220700038138124146.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008459.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008460.P5217996417452180393

`A003132(a(n-1))` with `a(0)=6`
-/

namespace A008460.P5217996417452180393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  A003132 (a (n - 1)).toNat

end

end A008460.P5217996417452180393

noncomputable section

/-- A008460: Take sum of squares of digits of previous term; start with 6.

Offset 1, canonical program `A008460.P5217996417452180393`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008460 (n : ℕ) : ℤ :=
  A008460.P5217996417452180393.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008460.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008461.P15203974575439267861

`A003132(a(n-1))` with `a(0)=7`
-/

namespace A008461.P15203974575439267861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A003132 (a (n - 1)).toNat

end

end A008461.P15203974575439267861

noncomputable section

/-- A008461: Take sum of squares of digits of previous term.

Offset 1, canonical program `A008461.P15203974575439267861`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008461 (n : ℕ) : ℤ :=
  A008461.P15203974575439267861.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008461.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008462.P11316761323922087190

`A003132(a(n-1))` with `a(0)=8`
-/

namespace A008462.P11316761323922087190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  A003132 (a (n - 1)).toNat

end

end A008462.P11316761323922087190

noncomputable section

/-- A008462: Take sum of squares of digits of previous term; start with 8.

Offset 1, canonical program `A008462.P11316761323922087190`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008462 (n : ℕ) : ℤ :=
  A008462.P11316761323922087190.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008462.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008518.P16595222437308924502

`A123125(n+1)+A123125(n)`
-/

namespace A008518.P16595222437308924502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (n + 1) + A123125 n

end

end A008518.P16595222437308924502

noncomputable section

/-- A008518: Triangle of Eulerian numbers with rows multiplied by 1 + x.

Offset 0, canonical program `A008518.P16595222437308924502`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2586 terms. -/
def A008518 (n : ℕ) : ℤ :=
  A008518.P16595222437308924502.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2586 terms. -/
def A008518.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008530.P11364345825062993947

`(A000032(and(2, a(n-1)))+2*n²)*3*n` with `a(0)=1`
-/

namespace A008530.P11364345825062993947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A000032 (Int.land 2 (a (n - 1))).toNat + (2 * n ^ 2 : ℤ)) * (3 * n : ℤ)

end

end A008530.P11364345825062993947

noncomputable section

/-- A008530: Coordination sequence for 4-dimensional primitive di-isohexagonal orthogonal lattice.

Offset 0, canonical program `A008530.P11364345825062993947`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008530 (n : ℕ) : ℤ :=
  A008530.P11364345825062993947.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008530.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008533.P15185711001041139923

`2*A222408(n)-A008531(n)`
-/

namespace A008533.P15185711001041139923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A222408 n - A008531 n

end

end A008533.P15185711001041139923

noncomputable section

/-- A008533: Coordination sequence for {A_5}* lattice.

Offset 0, canonical program `A008533.P15185711001041139923`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008533 (n : ℕ) : ℤ :=
  A008533.P15185711001041139923.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008533.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008614.P499716109925837554

`A008625(n)-A005044(n)`
-/

namespace A008614.P499716109925837554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008625 n - A005044 n

end

end A008614.P499716109925837554

noncomputable section

/-- A008614: Molien series of 3-dimensional representation of group GL(3,2) (= L(2,7)); a simple group of order 168.

Offset 0, canonical program `A008614.P499716109925837554`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008614 (n : ℕ) : ℤ :=
  A008614.P499716109925837554.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008614.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008628.P7907090442560408367

`∑[A090223(n)+∑[A008613(n)]-n]`
-/

namespace A008628.P7907090442560408367
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008613 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 n + (∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008628.P7907090442560408367

noncomputable section

/-- A008628: Molien series for A_5.

Offset 0, canonical program `A008628.P7907090442560408367`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008628 (n : ℕ) : ℤ :=
  A008628.P7907090442560408367.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008628.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008643.P17356449891711495349

`A008804(floor(n/2))`
-/

namespace A008643.P17356449891711495349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008804 ⌊(n : ℚ) / 2⌋.toNat

end

end A008643.P17356449891711495349

noncomputable section

/-- A008643: Molien series for group of 4 X 4 upper triangular matrices over GF(2).

Offset 0, canonical program `A008643.P17356449891711495349`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008643 (n : ℕ) : ℤ :=
  A008643.P17356449891711495349.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008643.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008648.P3776347205229433194

`A008732(floor(n/5))`
-/

namespace A008648.P3776347205229433194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008732 ⌊(n : ℚ) / 5⌋.toNat

end

end A008648.P3776347205229433194

noncomputable section

/-- A008648: Molien series of 3 X 3 upper triangular matrices over GF( 5 ).

Offset 0, canonical program `A008648.P3776347205229433194`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008648 (n : ℕ) : ℤ :=
  A008648.P3776347205229433194.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008648.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008668.P6497470992841632482

`∑[A000217(A008651(n))]`
-/

namespace A008668.P6497470992841632482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A008651 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008668.P6497470992841632482

noncomputable section

/-- A008668: Molien series for 4-dimensional reflection group [3,3,5] of order 14400.

Offset 0, canonical program `A008668.P6497470992841632482`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008668 (n : ℕ) : ℤ :=
  A008668.P6497470992841632482.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008668.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008670.P3248543210677387405

`∑[A307018(A052938(n+1))]`
-/

namespace A008670.P3248543210677387405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307018 (A052938 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008670.P3248543210677387405

noncomputable section

/-- A008670: Molien series for Weyl group F_4.

Offset 0, canonical program `A008670.P3248543210677387405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008670 (n : ℕ) : ℤ :=
  A008670.P3248543210677387405.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008670.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008718.P4848502084565514075

`∑[A000124(Δ[ceil(n²/24)])-1]`
-/

namespace A008718.P4848502084565514075
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 24⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (f2 (n + 1) - f2 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008718.P4848502084565514075

noncomputable section

/-- A008718: Expansion of g.f.: (1+x^9)/((1-x)*(1-x^4)*(1-x^6)*(1-x^12)).

Offset 0, canonical program `A008718.P4848502084565514075`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008718 (n : ℕ) : ℤ :=
  A008718.P4848502084565514075.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008718.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008723.P8299516312108899251

`A025766(n)-a(n-1)` with `a(0)=1`
-/

namespace A008723.P8299516312108899251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025766 n - a (n - 1)

end

end A008723.P8299516312108899251

noncomputable section

/-- A008723: Molien series for 3-dimensional group [2,11] = *2 2 11.

Offset 0, canonical program `A008723.P8299516312108899251`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008723 (n : ℕ) : ℤ :=
  A008723.P8299516312108899251.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008723.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008764.P6703628140594976905

`A001973(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A008764.P6703628140594976905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A001973 n - a (n - 2)

end

end A008764.P6703628140594976905

noncomputable section

/-- A008764: Number of 3 X 3 symmetric stochastic matrices under row and column permutations.

Offset 0, canonical program `A008764.P6703628140594976905`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008764 (n : ℕ) : ℤ :=
  A008764.P6703628140594976905.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008764.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008800.P4216580120172005762

`∑[A008617(n)-A001057(n)]`
-/

namespace A008800.P4216580120172005762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 n - A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008800.P4216580120172005762

noncomputable section

/-- A008800: Molien series for group [2,7]+ = 227.

Offset 0, canonical program `A008800.P4216580120172005762`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008800 (n : ℕ) : ℤ :=
  A008800.P4216580120172005762.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008800.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008801.P15140999886607481432

`∑[∑[A033999(n)*A168183(n+1)]]`
-/

namespace A008801.P15140999886607481432
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A168183 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008801.P15140999886607481432

noncomputable section

/-- A008801: Molien series for group [2,8]+ = 228.

Offset 0, canonical program `A008801.P15140999886607481432`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008801 (n : ℕ) : ℤ :=
  A008801.P15140999886607481432.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008801.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008802.P8525404290087497442

`∑[A008618(n)-A001057(n)]`
-/

namespace A008802.P8525404290087497442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 n - A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008802.P8525404290087497442

noncomputable section

/-- A008802: Molien series for group [2,9]+ = 229.

Offset 0, canonical program `A008802.P8525404290087497442`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008802 (n : ℕ) : ℤ :=
  A008802.P8525404290087497442.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008802.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008867.P9313319048555575930

`∑[A114327(n)]+1+n`
-/

namespace A008867.P9313319048555575930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)

end

end A008867.P9313319048555575930

noncomputable section

/-- A008867: Triangle of truncated triangular numbers: k-th term in n-th row is number of dots in hexagon of sides k, n-k, k, n-k, k, n-k.

Offset 2, canonical program `A008867.P9313319048555575930`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008867 (n : ℕ) : ℤ :=
  A008867.P9313319048555575930.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008867.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008873.P1671193655373844113

`A006370(a(n-1))` with `a(0)=97`
-/

namespace A008873.P1671193655373844113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [97] fun n a =>
  A006370 (a (n - 1)).toNat

end

end A008873.P1671193655373844113

noncomputable section

/-- A008873: 3x+1 sequence starting at 97.

Offset 0, canonical program `A008873.P1671193655373844113`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008873 (n : ℕ) : ℤ :=
  A008873.P1671193655373844113.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008873.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008874.P8003952070289375166

`A006370(a(n-1))` with `a(0)=63`
-/

namespace A008874.P8003952070289375166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [63] fun n a =>
  A006370 (a (n - 1)).toNat

end

end A008874.P8003952070289375166

noncomputable section

/-- A008874: 3x+1 sequence starting at 63.

Offset 0, canonical program `A008874.P8003952070289375166`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008874 (n : ℕ) : ℤ :=
  A008874.P8003952070289375166.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008874.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008876.P18276786027771550035

`A006370(a(n-1))` with `a(0)=81`
-/

namespace A008876.P18276786027771550035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [81] fun n a =>
  A006370 (a (n - 1)).toNat

end

end A008876.P18276786027771550035

noncomputable section

/-- A008876: 3x+1 sequence starting at 81.

Offset 0, canonical program `A008876.P18276786027771550035`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008876 (n : ℕ) : ℤ :=
  A008876.P18276786027771550035.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008876.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008877.P15527850574462886525

`A006370(a(n-1))` with `a(0)=57`
-/

namespace A008877.P15527850574462886525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [57] fun n a =>
  A006370 (a (n - 1)).toNat

end

end A008877.P15527850574462886525

noncomputable section

/-- A008877: 3x+1 sequence starting at 57.

Offset 0, canonical program `A008877.P15527850574462886525`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008877 (n : ℕ) : ℤ :=
  A008877.P15527850574462886525.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008877.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008878.P7526681278005354983

`A006370(a(n-1))` with `a(0)=39`
-/

namespace A008878.P7526681278005354983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [39] fun n a =>
  A006370 (a (n - 1)).toNat

end

end A008878.P7526681278005354983

noncomputable section

/-- A008878: 3x+1 sequence starting at 39.

Offset 0, canonical program `A008878.P7526681278005354983`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008878 (n : ℕ) : ℤ :=
  A008878.P7526681278005354983.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008878.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008879.P8474290159504392472

`A006370(a(n-1))` with `a(0)=87`
-/

namespace A008879.P8474290159504392472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [87] fun n a =>
  A006370 (a (n - 1)).toNat

end

end A008879.P8474290159504392472

noncomputable section

/-- A008879: 3x+1 sequence starting at 87.

Offset 0, canonical program `A008879.P8474290159504392472`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008879 (n : ℕ) : ℤ :=
  A008879.P8474290159504392472.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008879.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008880.P11489506952217173467

`A006370(a(n-1))` with `a(0)=33`
-/

namespace A008880.P11489506952217173467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [33] fun n a =>
  A006370 (a (n - 1)).toNat

end

end A008880.P11489506952217173467

noncomputable section

/-- A008880: 3x + 1 sequence starting at 33.

Offset 0, canonical program `A008880.P11489506952217173467`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008880 (n : ℕ) : ℤ :=
  A008880.P11489506952217173467.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008880.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008882.P9967260782044080548

`A006370(a(n-1))` with `a(0)=99`
-/

namespace A008882.P9967260782044080548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [99] fun n a =>
  A006370 (a (n - 1)).toNat

end

end A008882.P9967260782044080548

noncomputable section

/-- A008882: 3x+1 sequence starting at 99.

Offset 0, canonical program `A008882.P9967260782044080548`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008882 (n : ℕ) : ℤ :=
  A008882.P9967260782044080548.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008882.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008883.P8711540397018335679

`A006370(a(n-1))` with `a(0)=51`
-/

namespace A008883.P8711540397018335679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [51] fun n a =>
  A006370 (a (n - 1)).toNat

end

end A008883.P8711540397018335679

noncomputable section

/-- A008883: 3x+1 sequence starting at 51.

Offset 0, canonical program `A008883.P8711540397018335679`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008883 (n : ℕ) : ℤ :=
  A008883.P8711540397018335679.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008883.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008884.P3036512594241040887

`A006370(a(n-1))` with `a(0)=27`
-/

namespace A008884.P3036512594241040887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [27] fun n a =>
  A006370 (a (n - 1)).toNat

end

end A008884.P3036512594241040887

noncomputable section

/-- A008884: 3x+1 sequence starting at 27.

Offset 0, canonical program `A008884.P3036512594241040887`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008884 (n : ℕ) : ℤ :=
  A008884.P3036512594241040887.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008884.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008894.P10112289979587652656

`A001281(a(n-1))` with `a(0)=36`
-/

namespace A008894.P10112289979587652656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [36] fun n a =>
  A001281 (a (n - 1)).toNat

end

end A008894.P10112289979587652656

noncomputable section

/-- A008894: 3x - 1 sequence starting at 36.

Offset 0, canonical program `A008894.P10112289979587652656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008894 (n : ℕ) : ℤ :=
  A008894.P10112289979587652656.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008894.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008895.P2495746317080168951

`A001281(a(n-1))` with `a(0)=63`
-/

namespace A008895.P2495746317080168951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [63] fun n a =>
  A001281 (a (n - 1)).toNat

end

end A008895.P2495746317080168951

noncomputable section

/-- A008895: The 3x-1 map: a(n) = n/2 if n is even, 3n-1 if n is odd.

Offset 0, canonical program `A008895.P2495746317080168951`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008895 (n : ℕ) : ℤ :=
  A008895.P2495746317080168951.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008895.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008896.P9510152395807805343

`A001281(a(n-1))` with `a(0)=66`
-/

namespace A008896.P9510152395807805343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [66] fun n a =>
  A001281 (a (n - 1)).toNat

end

end A008896.P9510152395807805343

noncomputable section

/-- A008896: 3x - 1 sequence starting at 66.

Offset 0, canonical program `A008896.P9510152395807805343`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008896 (n : ℕ) : ℤ :=
  A008896.P9510152395807805343.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008896.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008897.P17580086680733222442

`A001281(a(A023443(n)))` with `a(0)=83`
-/

namespace A008897.P17580086680733222442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [83] fun n a =>
  A001281 (a (A023443 n).toNat).toNat

end

end A008897.P17580086680733222442

noncomputable section

/-- A008897: x->x/2 if x even, x->3x-1 if x odd.

Offset 0, canonical program `A008897.P17580086680733222442`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008897 (n : ℕ) : ℤ :=
  A008897.P17580086680733222442.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008897.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008898.P5153367433346883263

`A001281(a(n-1))` with `a(0)=84`
-/

namespace A008898.P5153367433346883263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [84] fun n a =>
  A001281 (a (n - 1)).toNat

end

end A008898.P5153367433346883263

noncomputable section

/-- A008898: Trajectory of 84 under the map x -> x/2 for x even, x -> 3x - 1 for x odd.

Offset 0, canonical program `A008898.P5153367433346883263`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008898 (n : ℕ) : ℤ :=
  A008898.P5153367433346883263.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008898.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008899.P8923274985076799054

`A001281(a(n-1))` with `a(0)=87`
-/

namespace A008899.P8923274985076799054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [87] fun n a =>
  A001281 (a (n - 1)).toNat

end

end A008899.P8923274985076799054

noncomputable section

/-- A008899: x -> x/2 if x even, x -> 3x - 1 if x odd.

Offset 0, canonical program `A008899.P8923274985076799054`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008899 (n : ℕ) : ℤ :=
  A008899.P8923274985076799054.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008899.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008900.P7965286308957467722

`A001281(a(n-1))` with `a(0)=89`
-/

namespace A008900.P7965286308957467722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [89] fun n a =>
  A001281 (a (n - 1)).toNat

end

end A008900.P7965286308957467722

noncomputable section

/-- A008900: x->x/2 if x even, x->3x-1 if x odd.

Offset 0, canonical program `A008900.P7965286308957467722`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008900 (n : ℕ) : ℤ :=
  A008900.P7965286308957467722.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008900.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008901.P17714385854789650431

`A001281(a(n-1))` with `a(0)=90`
-/

namespace A008901.P17714385854789650431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [90] fun n a =>
  A001281 (a (n - 1)).toNat

end

end A008901.P17714385854789650431

noncomputable section

/-- A008901: x->x/2 if x even, x->3x-1 if x odd.

Offset 0, canonical program `A008901.P17714385854789650431`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008901 (n : ℕ) : ℤ :=
  A008901.P17714385854789650431.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008901.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008902.P8030901881938040270

`A001281(a(n-1))` with `a(0)=99`
-/

namespace A008902.P8030901881938040270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [99] fun n a =>
  A001281 (a (n - 1)).toNat

end

end A008902.P8030901881938040270

noncomputable section

/-- A008902: x->x/2 if x even, x->3x-1 if x odd.

Offset 0, canonical program `A008902.P8030901881938040270`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008902 (n : ℕ) : ℤ :=
  A008902.P8030901881938040270.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008935.P348153319501579811

`∑[A179297(val(n+1, 2)+1)]`
-/

namespace A008935.P348153319501579811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179297 (SequenceMachineLib.valuation (n + 1) 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008935.P348153319501579811

noncomputable section

/-- A008935: If 2n = Sum 2^e(k) then a(n) = Sum e(k)^2.

Offset 1, canonical program `A008935.P348153319501579811`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008935 (n : ℕ) : ℤ :=
  A008935.P348153319501579811.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008935.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008952.P3263245786884273335

`A000030(A000079(n))`
-/

namespace A008952.P3263245786884273335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A000079 n).toNat

end

end A008952.P3263245786884273335

noncomputable section

/-- A008952: Leading digit of 2^n.

Offset 0, canonical program `A008952.P3263245786884273335`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000030, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008952 (n : ℕ) : ℤ :=
  A008952.P3263245786884273335.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000030, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008952.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A008953.P16873125012605614489

`A000030(A000217(n+1))`
-/

namespace A008953.P16873125012605614489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A000217 (n + 1)).toNat

end

end A008953.P16873125012605614489

noncomputable section

/-- A008953: a(n) is the leading digit of the n-th triangular number, n*(n+1)/2.

Offset 1, canonical program `A008953.P16873125012605614489`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000030, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008953 (n : ℕ) : ℤ :=
  A008953.P16873125012605614489.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000030, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008953.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A008963.P6523085309151912316

`A000030(A000045(n))`
-/

namespace A008963.P6523085309151912316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A000045 n).toNat

end

end A008963.P6523085309151912316

noncomputable section

/-- A008963: Initial digit of Fibonacci number F(n).

Offset 0, canonical program `A008963.P6523085309151912316`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000030, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008963 (n : ℕ) : ℤ :=
  A008963.P6523085309151912316.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000030, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008963.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A009694.P1715986861184328603

`A008233(floor(n/2))*A008233(A065033(n))`
-/

namespace A009694.P1715986861184328603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008233 ⌊(n : ℚ) / 2⌋.toNat * A008233 (A065033 n).toNat

end

end A009694.P1715986861184328603

noncomputable section

/-- A009694: a(n) = Product_{i=0..7} floor((n+i)/8).

Offset 0, canonical program `A009694.P1715986861184328603`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A009694 (n : ℕ) : ℤ :=
  A009694.P1715986861184328603.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A009694.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A009943.P10978519285802944135

`A163433(n+1)+A106469(n)`
-/

namespace A009943.P10978519285802944135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163433 (n + 1) + A106469 n

end

end A009943.P10978519285802944135

noncomputable section

/-- A009943: Coordination sequence for NiAs(1), As position.

Offset 0, canonical program `A009943.P10978519285802944135`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A009943 (n : ℕ) : ℤ :=
  A009943.P10978519285802944135.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A009943.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A009945.P12744615334983203965

`-or(2, -A009946(n))`
-/

namespace A009945.P12744615334983203965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 2 (-A009946 n)

end

end A009945.P12744615334983203965

noncomputable section

/-- A009945: Coordination sequence for NiAs(2), As position.

Offset 0, canonical program `A009945.P12744615334983203965`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A009945 (n : ℕ) : ℤ :=
  A009945.P12744615334983203965.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A009945.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A009999.P900677114271416084

`A003992(comp[∑[n-1]])`
-/

namespace A009999.P900677114271416084
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003992 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A009999.P900677114271416084

noncomputable section

/-- A009999: Triangle in which j-th entry in i-th row is (i+1-j)^j, 0<=j<=i.

Offset 0, canonical program `A009999.P900677114271416084`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4726 terms. -/
def A009999 (n : ℕ) : ℤ :=
  A009999.P900677114271416084.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4726 terms. -/
def A009999.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A010027.P2698919876476170280

`A000255(A002262(n))*A007318(n)`
-/

namespace A010027.P2698919876476170280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000255 (A002262 n).toNat * A007318 n

end

end A010027.P2698919876476170280

noncomputable section

/-- A010027: Triangle read by rows: T(n,k) is the number of permutations of [n] having k consecutive ascending pairs (0 <= k <= n-1).

Offset 1, canonical program `A010027.P2698919876476170280`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2551 terms. -/
def A010027 (n : ℕ) : ℤ :=
  A010027.P2698919876476170280.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2551 terms. -/
def A010027.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A010058.P9795488456409401604

`char[A000108(n)]`
-/

namespace A010058.P9795488456409401604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A010058.P9795488456409401604

noncomputable section

/-- A010058: 1 if n is a Catalan number else 0.

Offset 0, canonical program `A010058.P9795488456409401604`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A010058 (n : ℕ) : ℤ :=
  (A010058.P9795488456409401604.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A010058.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A010494.P1170931180953803905

`(A035071(2*n+1)-1)%10`
-/

namespace A010494.P1170931180953803905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035071 (2 * n + 1) - 1) 10

end

end A010494.P1170931180953803905

noncomputable section

/-- A010494: Decimal expansion of square root of 40.

Offset 1, canonical program `A010494.P1170931180953803905`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A010494 (n : ℕ) : ℤ :=
  A010494.P1170931180953803905.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A010494.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A010766.P13358049683493517902

`ceil(ratio[A074909(n)])`
-/

namespace A010766.P13358049683493517902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A010766.P13358049683493517902

noncomputable section

/-- A010766: Triangle read by rows: row n gives the numbers floor(n/k), k = 1..n.

Offset 1, canonical program `A010766.P13358049683493517902`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A010766 (n : ℕ) : ℤ :=
  A010766.P13358049683493517902.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A010766.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011007.P17255019870769386734

`A114322(A016813(n))%10`
-/

namespace A011007.P17255019870769386734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A114322 (A016813 n).toNat) 10

end

end A011007.P17255019870769386734

noncomputable section

/-- A011007: Decimal expansion of 4th root of 10.

Offset 1, canonical program `A011007.P17255019870769386734`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A011007 (n : ℕ) : ℤ :=
  A011007.P17255019870769386734.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A011007.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011548.P14501120540779775859

`A068092(Δ[n²])`
-/

namespace A011548.P14501120540779775859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068092 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A011548.P14501120540779775859

noncomputable section

/-- A011548: Decimal expansion of sqrt(2) rounded to n places.

Offset 0, canonical program `A011548.P14501120540779775859`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A011548 (n : ℕ) : ℤ :=
  A011548.P14501120540779775859.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A011548.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011667.P7280617044505348943

`(A005710(n+3)+A005710(n))%2`
-/

namespace A011667.P7280617044505348943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005710 (n + 3) + A005710 n) 2

end

end A011667.P7280617044505348943

noncomputable section

/-- A011667: A binary m-sequence: expansion of reciprocal of x^6+x^5+x^3+x^2+1.

Offset 0, canonical program `A011667.P7280617044505348943`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1103 terms. -/
def A011667 (n : ℕ) : ℤ :=
  A011667.P7280617044505348943.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1103 terms. -/
def A011667.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011673.P5383287273945378824

`A127840(n+2)%2`
-/

namespace A011673.P5383287273945378824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127840 (n + 2)) 2

end

end A011673.P5383287273945378824

noncomputable section

/-- A011673: A binary m-sequence: expansion of reciprocal of x^6+x^5+1.

Offset 0, canonical program `A011673.P5383287273945378824`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1841 terms. -/
def A011673 (n : ℕ) : ℤ :=
  A011673.P5383287273945378824.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1841 terms. -/
def A011673.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011675.P11769286689550545566

`A135435(n+1)%2`
-/

namespace A011675.P11769286689550545566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135435 (n + 1)) 2

end

end A011675.P11769286689550545566

noncomputable section

/-- A011675: A binary m-sequence: expansion of reciprocal of x^7+x^4+1.

Offset 0, canonical program `A011675.P11769286689550545566`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1778 terms. -/
def A011675 (n : ℕ) : ℤ :=
  A011675.P11769286689550545566.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1778 terms. -/
def A011675.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011686.P16684063772658876959

`A127841(n+2)%2`
-/

namespace A011686.P16684063772658876959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127841 (n + 2)) 2

end

end A011686.P16684063772658876959

noncomputable section

/-- A011686: A binary m-sequence: expansion of reciprocal of x^7 + x^6 + 1.

Offset 0, canonical program `A011686.P16684063772658876959`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2179 terms. -/
def A011686 (n : ℕ) : ℤ :=
  A011686.P16684063772658876959.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2179 terms. -/
def A011686.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011769.P1104459669848881241

`∑[A098703(n)+A001654(n)]+1`
-/

namespace A011769.P1104459669848881241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098703 n + A001654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A011769.P1104459669848881241

noncomputable section

/-- A011769: a(0) = 1, a(n+1) = 3 * a(n) - F(n)*(F(n) + 1), where F(n) = A000045(n) is n-th Fibonacci number.

Offset 0, canonical program `A011769.P1104459669848881241`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A011769 (n : ℕ) : ℤ :=
  A011769.P1104459669848881241.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A011769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011819.P4272339507940383026

`∑[∑[A071239(n)+n]+1]+1`
-/

namespace A011819.P4272339507940383026
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071239 n + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A011819.P4272339507940383026

noncomputable section

/-- A011819: M-sequences m_0,m_1,m_2,m_3 with m_1 < n.

Offset 1, canonical program `A011819.P4272339507940383026`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A011819 (n : ℕ) : ℤ :=
  A011819.P4272339507940383026.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A011819.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011857.P7224973455274872980

`floor((A014430(n)+1)/A002260(n+1))`
-/

namespace A011857.P7224973455274872980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A014430 n + 1 : ℚ) / (A002260 (n + 1) : ℚ)⌋

end

end A011857.P7224973455274872980

noncomputable section

/-- A011857: Triangle of numbers [ C(n,k)/k ], k=1..n-1.

Offset 2, canonical program `A011857.P7224973455274872980`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A011857 (n : ℕ) : ℤ :=
  A011857.P7224973455274872980.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A011857.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A012493.P17492376463677172932

`Δ[A000931(5*n)]`
-/

namespace A012493.P17492376463677172932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (5 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A012493.P17492376463677172932

noncomputable section

/-- A012493: Take every 5th term of Padovan sequence A000931, beginning with the fifth term.

Offset 0, canonical program `A012493.P17492376463677172932`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A012493 (n : ℕ) : ℤ :=
  A012493.P17492376463677172932.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A012493.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A012864.P8751931188038800669

`A000931(5*n)`
-/

namespace A012864.P8751931188038800669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (5 * n)

end

end A012864.P8751931188038800669

noncomputable section

/-- A012864: Take every 5th term of Padovan sequence A000931, beginning with the first term.

Offset 0, canonical program `A012864.P8751931188038800669`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A012864 (n : ℕ) : ℤ :=
  A012864.P8751931188038800669.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A012864.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A012866.P3426356787730502453

`A012855(n)+Δ[A012855(n+1)]`
-/

namespace A012866.P3426356787730502453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012855 n + (f1 (n + 1) - f1 n)

end

end A012866.P3426356787730502453

noncomputable section

/-- A012866: a(n+3) = 5*a(n+2)-4*a(n+1)+a(n).

Offset 0, canonical program `A012866.P3426356787730502453`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A012866 (n : ℕ) : ℤ :=
  A012866.P3426356787730502453.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A012866.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A013612.P15260993261497830762

`5^A002262(n)*A007318(n)`
-/

namespace A013612.P15260993261497830762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A002262 n : ℤ) * (A007318 n : ℚ)

end

end A013612.P15260993261497830762

noncomputable section

/-- A013612: Triangle of coefficients in expansion of (1+5*x)^n.

Offset 0, canonical program `A013612.P15260993261497830762`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8621 terms. -/
def A013612 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A013612.P15260993261497830762.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8621 terms. -/
def A013612.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A013614.P2472947764433084484

`A000420(A002262(n))*A007318(n)`
-/

namespace A013614.P2472947764433084484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 (A002262 n).toNat * A007318 n

end

end A013614.P2472947764433084484

noncomputable section

/-- A013614: Triangle of coefficients in expansion of (1+7*x)^n.

Offset 0, canonical program `A013614.P2472947764433084484`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6423 terms. -/
def A013614 (n : ℕ) : ℤ :=
  A013614.P2472947764433084484.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6423 terms. -/
def A013614.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A013616.P12238347047684720050

`A001019(A002262(n))*A007318(n)`
-/

namespace A013616.P12238347047684720050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001019 (A002262 n).toNat * A007318 n

end

end A013616.P12238347047684720050

noncomputable section

/-- A013616: Triangle of coefficients in expansion of (1+9*x)^n.

Offset 0, canonical program `A013616.P12238347047684720050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5240 terms. -/
def A013616 (n : ℕ) : ℤ :=
  A013616.P12238347047684720050.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5240 terms. -/
def A013616.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A013617.P9066571055645517890

`A007318(n)*A011557(A002262(n))`
-/

namespace A013617.P9066571055645517890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A011557 (A002262 n).toNat

end

end A013617.P9066571055645517890

noncomputable section

/-- A013617: Triangle of coefficients in expansion of (1+10*x)^n.

Offset 0, canonical program `A013617.P9066571055645517890`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4840 terms. -/
def A013617 (n : ℕ) : ℤ :=
  A013617.P9066571055645517890.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4840 terms. -/
def A013617.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A013618.P387738794400138058

`A001020(A002262(n))*A007318(n)`
-/

namespace A013618.P387738794400138058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001020 (A002262 n).toNat * A007318 n

end

end A013618.P387738794400138058

noncomputable section

/-- A013618: Triangle of coefficients in expansion of (1+11*x)^n.

Offset 0, canonical program `A013618.P387738794400138058`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4547 terms. -/
def A013618 (n : ℕ) : ℤ :=
  A013618.P387738794400138058.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4547 terms. -/
def A013618.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A013636.P11460064888098733582

`n*A000040(∑[C(∑{p}[n, #], n)])`
-/

namespace A013636.P11460064888098733582
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ p ∈ Nat.primeFactors (f2 n), p) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000040 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A013636.P11460064888098733582

noncomputable section

/-- A013636: a(n) = n*nextprime(n).

Offset 0, canonical program `A013636.P11460064888098733582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A013636 (n : ℕ) : ℤ :=
  A013636.P11460064888098733582.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A013636.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A013937.P2015318401438487883

`∑[∑{d}[n, A010057(#)]]`
-/

namespace A013937.P2015318401438487883
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A010057 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013937.P2015318401438487883

noncomputable section

/-- A013937: a(n) = Sum_{k=1..n} floor(n/k^3).

Offset 0, canonical program `A013937.P2015318401438487883`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A013937 (n : ℕ) : ℤ :=
  A013937.P2015318401438487883.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A013937.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014023.P8727501565675565317

`A014016(n)*A033999(n)`
-/

namespace A014023.P8727501565675565317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014016 n * A033999 n

end

end A014023.P8727501565675565317

noncomputable section

/-- A014023: Inverse of 14th cyclotomic polynomial.

Offset 0, canonical program `A014023.P8727501565675565317`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014023 (n : ℕ) : ℤ :=
  A014023.P8727501565675565317.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014029.P15990451290800491649

`A056594(n)*A105385(n)`
-/

namespace A014029.P15990451290800491649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n * A105385 n

end

end A014029.P15990451290800491649

noncomputable section

/-- A014029: Inverse of 20th cyclotomic polynomial.

Offset 0, canonical program `A014029.P15990451290800491649`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014029 (n : ℕ) : ℤ :=
  A014029.P15990451290800491649.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014029.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014030.P9782131551506662798

`A014018(A057357(n))`
-/

namespace A014030.P9782131551506662798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014018 (A057357 n).toNat

end

end A014030.P9782131551506662798

noncomputable section

/-- A014030: Inverse of 21st cyclotomic polynomial.

Offset 0, canonical program `A014030.P9782131551506662798`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014030 (n : ℕ) : ℤ :=
  A014030.P9782131551506662798.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014030.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014033.P6509231531898097959

`A014021(gcd(n, ∑[n]))`
-/

namespace A014033.P6509231531898097959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014021 (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A014033.P6509231531898097959

noncomputable section

/-- A014033: Inverse of 24th cyclotomic polynomial.

Offset 0, canonical program `A014033.P6509231531898097959`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014033 (n : ℕ) : ℤ :=
  A014033.P6509231531898097959.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014033.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014035.P9043399292843675734

`A014025(A057363(n))`
-/

namespace A014035.P9043399292843675734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014025 (A057363 n).toNat

end

end A014035.P9043399292843675734

noncomputable section

/-- A014035: Inverse of 26th cyclotomic polynomial.

Offset 0, canonical program `A014035.P9043399292843675734`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014035 (n : ℕ) : ℤ :=
  A014035.P9043399292843675734.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014035.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014036.P8056661823149945385

`A014018(A051176(n))`
-/

namespace A014036.P8056661823149945385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014018 (A051176 n).toNat

end

end A014036.P8056661823149945385

noncomputable section

/-- A014036: Inverse of 27th cyclotomic polynomial.

Offset 0, canonical program `A014036.P8056661823149945385`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014036 (n : ℕ) : ℤ :=
  A014036.P8056661823149945385.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014036.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014037.P7779358375219223676

`(A238469(n+1)-A238470(n))*A056594(n)`
-/

namespace A014037.P7779358375219223676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A238469 (n + 1) - A238470 n) * A056594 n

end

end A014037.P7779358375219223676

noncomputable section

/-- A014037: Inverse of 28th cyclotomic polynomial.

Offset 0, canonical program `A014037.P7779358375219223676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A014037 (n : ℕ) : ℤ :=
  A014037.P7779358375219223676.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A014037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014041.P7274271345307664619

`A056594(lcm(8, n)/8)`
-/

namespace A014041.P7274271345307664619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (SequenceMachineLib.roundAway ((Nat.lcm 8 n : ℚ) / 8)).toNat

end

end A014041.P7274271345307664619

noncomputable section

/-- A014041: Inverse of 32nd cyclotomic polynomial.

Offset 0, canonical program `A014041.P7274271345307664619`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014041 (n : ℕ) : ℤ :=
  A014041.P7274271345307664619.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014041.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014140.P3701611324340069420

`∑[A014137(n)]`
-/

namespace A014140.P3701611324340069420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014140.P3701611324340069420

noncomputable section

/-- A014140: Apply partial sum operator twice to Catalan numbers.

Offset 0, canonical program `A014140.P3701611324340069420`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A014140 (n : ℕ) : ℤ :=
  A014140.P3701611324340069420.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A014140.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014148.P5588733548531681271

`∑[∑[A000040(n+1)]]`
-/

namespace A014148.P5588733548531681271
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014148.P5588733548531681271

noncomputable section

/-- A014148: a(n) = Sum_{m=1..n} Sum_{k=1..m} prime(k).

Offset 1, canonical program `A014148.P5588733548531681271`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014148 (n : ℕ) : ℤ :=
  A014148.P5588733548531681271.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014148.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014172.P11335760464982680328

`∑[A005318(n+1)]`
-/

namespace A014172.P11335760464982680328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005318 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014172.P11335760464982680328

noncomputable section

/-- A014172: Apply partial sum operator twice to Stern's sequence.

Offset 0, canonical program `A014172.P11335760464982680328`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A014172 (n : ℕ) : ℤ :=
  A014172.P11335760464982680328.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A014172.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014181.P6862459041778069308

`A010785(n+10)`
-/

namespace A014181.P6862459041778069308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 (n + 10)

end

end A014181.P6862459041778069308

noncomputable section

/-- A014181: Numbers > 9 with all digits the same.

Offset 1, canonical program `A014181.P6862459041778069308`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 891 terms. -/
def A014181 (n : ℕ) : ℤ :=
  A014181.P6862459041778069308.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 891 terms. -/
def A014181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014214.P4962312295054798132

`floor(atan(A017755(n))^n)`
-/

namespace A014214.P4962312295054798132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A017755 (n + 91) : ℝ) ^ n⌋

end

end A014214.P4962312295054798132

noncomputable section

/-- A014214: a(n) = floor((Pi/2)^n).

Offset 0, canonical program `A014214.P4962312295054798132`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 391 terms. -/
def A014214 (n : ℕ) : ℤ :=
  A014214.P4962312295054798132.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 391 terms. -/
def A014214.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014241.P6351505731176248955

`A000045(n+2)-A001690(n+1)`
-/

namespace A014241.P6351505731176248955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) - A001690 (n + 1)

end

end A014241.P6351505731176248955

noncomputable section

/-- A014241: a(n) = ((n+1)-st Fibonacci number) - (n-th non-Fibonacci number).

Offset 1, canonical program `A014241.P6351505731176248955`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001690, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014241 (n : ℕ) : ℤ :=
  A014241.P6351505731176248955.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001690, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014241.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A014244.P4790413058910627537

`A288219(n)-comp[A000204(n+1)]`
-/

namespace A014244.P4790413058910627537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288219 n - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A014244.P4790413058910627537

noncomputable section

/-- A014244: (n-th Lucas number that is not 1) - (n-th number that is 1 or not a Lucas number).

Offset 1, canonical program `A014244.P4790413058910627537`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A014244 (n : ℕ) : ℤ :=
  A014244.P4790413058910627537.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A014244.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014249.P16072168961144745307

`A329791(n+1)-comp[A329791(n)]`
-/

namespace A014249.P16072168961144745307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329791 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329791 (n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A014249.P16072168961144745307

noncomputable section

/-- A014249: a(n) = b(n) - c(n) where b(n) = [n*sqrt(2)] + [n*sqrt(3)] and c(n) is the n-th number not in sequence b.

Offset 1, canonical program `A014249.P16072168961144745307`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A014249 (n : ℕ) : ℤ :=
  A014249.P16072168961144745307.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A014249.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014252.P854871451725317973

`A001610(n+2)-comp[A001610(n+2)]`
-/

namespace A014252.P854871451725317973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 (n + 2) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A014252.P854871451725317973

noncomputable section

/-- A014252: a(n) = b(n) - c(n) where b(n) is the n-th Lucas number greater than 3 and c(n) is the n-th number not in sequence b( ).

Offset 1, canonical program `A014252.P854871451725317973`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. -/
def A014252 (n : ℕ) : ℤ :=
  A014252.P854871451725317973.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. -/
def A014252.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014285.P2422315619309490149

`∑[(n+1)*A000040(n+1)]`
-/

namespace A014285.P2422315619309490149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014285.P2422315619309490149

noncomputable section

/-- A014285: a(n) = Sum_{j=1..n} j*prime(j).

Offset 1, canonical program `A014285.P2422315619309490149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014285 (n : ℕ) : ℤ :=
  A014285.P2422315619309490149.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014285.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014318.P660768404803291763

`2^(n+1)-A158499(n+1)`
-/

namespace A014318.P660768404803291763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A158499 (n + 1)

end

end A014318.P660768404803291763

noncomputable section

/-- A014318: Convolution of Catalan numbers and powers of 2.

Offset 0, canonical program `A014318.P660768404803291763`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A014318 (n : ℕ) : ℤ :=
  A014318.P660768404803291763.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A014318.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014392.P1942321098737970699

`A000855(3*n)`
-/

namespace A014392.P1942321098737970699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000855 (3 * n)

end

end A014392.P1942321098737970699

noncomputable section

/-- A014392: Final 2 digits of 8^n.

Offset 0, canonical program `A014392.P1942321098737970699`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A014392 (n : ℕ) : ℤ :=
  A014392.P1942321098737970699.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A014392.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014419.P11152760906125658214

`eq[1, val(A270205(n+3), 9)]`
-/

namespace A014419.P11152760906125658214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A270205 (n + 3)).toNat 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A014419.P11152760906125658214

noncomputable section

/-- A014419: Write n in base of Catalan numbers, then interpret as if written in base 3.

Offset 0, canonical program `A014419.P11152760906125658214`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A014419 (n : ℕ) : ℤ :=
  (A014419.P11152760906125658214.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A014419.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014449.P13942314081822015023

`A123125(lt[1, A123125(n)])`
-/

namespace A014449.P13942314081822015023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A014449.P13942314081822015023

noncomputable section

/-- A014449: Numbers in the triangle of Eulerian numbers (A008292) that are not 1.

Offset 1, canonical program `A014449.P13942314081822015023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2375 terms. -/
def A014449 (n : ℕ) : ℤ :=
  A014449.P13942314081822015023.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2375 terms. -/
def A014449.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014450.P15670654426273546976

`A008292(eq[2, gcd(2, A007318(n))]+1)`
-/

namespace A014450.P15670654426273546976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A007318 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A014450.P15670654426273546976

noncomputable section

/-- A014450: Even numbers in the triangle of Eulerian numbers.

Offset 1, canonical program `A014450.P15670654426273546976`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1752 terms. -/
def A014450 (n : ℕ) : ℤ :=
  A014450.P15670654426273546976.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1752 terms. -/
def A014450.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014459.P12635058664321011578

`A008292(eq[1, A047999(n)]+1)`
-/

namespace A014459.P12635058664321011578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A014459.P12635058664321011578

noncomputable section

/-- A014459: Odd numbers in the triangle of Eulerian numbers.

Offset 1, canonical program `A014459.P12635058664321011578`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 763 terms. -/
def A014459 (n : ℕ) : ℤ :=
  A014459.P12635058664321011578.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 763 terms. -/
def A014459.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014467.P11507969253507394775

`A123125(eq[0, A169803(n)])`
-/

namespace A014467.P11507969253507394775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169803 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A014467.P11507969253507394775

noncomputable section

/-- A014467: Triangular array formed from elements to right of middle of rows of the triangle of Eulerian numbers.

Offset 1, canonical program `A014467.P11507969253507394775`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1225 terms. -/
def A014467 (n : ℕ) : ℤ :=
  A014467.P11507969253507394775.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1225 terms. -/
def A014467.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014473.P9301799580602651200

`A007318(n)-1`
-/

namespace A014473.P9301799580602651200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - 1

end

end A014473.P9301799580602651200

noncomputable section

/-- A014473: Pascal's triangle - 1: Triangle read by rows: T(n, k) = A007318(n, k) - 1.

Offset 0, canonical program `A014473.P9301799580602651200`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014473 (n : ℕ) : ℤ :=
  A014473.P9301799580602651200.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014473.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014537.P15758308894467369716

`A002387(2*(n+1))`
-/

namespace A014537.P15758308894467369716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002387 (2 * (n + 1))

end

end A014537.P15758308894467369716

noncomputable section

/-- A014537: Number of books required for n book-lengths of overhang in the harmonic book stacking problem. Sum_{i=1..a(n)} 1/i >= 2n and Sum_{i=1..a(n)-1} 1/i < 2n.

Offset 1, canonical program `A014537.P15758308894467369716`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002387, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014537 (n : ℕ) : ℤ :=
  A014537.P15758308894467369716.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002387, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014537.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A014610.P17620630868811848070

`A001630(n+3)+Δ[A089074(n)]`
-/

namespace A014610.P17620630868811848070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089074 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001630 (n + 3) + (f1 (n + 1) - f1 n)

end

end A014610.P17620630868811848070

noncomputable section

/-- A014610: Tetranacci numbers arising in connection with current algebras sp(2)_n.

Offset 0, canonical program `A014610.P17620630868811848070`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 350 terms. -/
def A014610 (n : ℕ) : ℤ :=
  A014610.P17620630868811848070.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 350 terms. -/
def A014610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014614.P8846493082158940166

`eq[5, A001222(n+1)]+1`
-/

namespace A014614.P8846493082158940166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A014614.P8846493082158940166

noncomputable section

/-- A014614: Numbers that are products of 5 primes (or 5-almost primes, a generalization of semiprimes).

Offset 1, canonical program `A014614.P8846493082158940166`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5356 terms. -/
def A014614 (n : ℕ) : ℤ :=
  (A014614.P8846493082158940166.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5356 terms. -/
def A014614.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014693.P15164110812174912353

`A000040(n+1)+∑[(n+1)*(-1)^n]`
-/

namespace A014693.P15164110812174912353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014693.P15164110812174912353

noncomputable section

/-- A014693: In sequence of prime numbers add 1 to first number, 2 to 3rd number, 3 to 5th number, ... then subtract 1 from 2nd number, 2 from 4th number, 3 from 6th number and so on.

Offset 1, canonical program `A014693.P15164110812174912353`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014693 (n : ℕ) : ℤ :=
  A014693.P15164110812174912353.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014693.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014730.P174668344449865089

`A014447(n)²`
-/

namespace A014730.P174668344449865089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014447 n ^ 2

end

end A014730.P174668344449865089

noncomputable section

/-- A014730: Squares of odd Lucas numbers.

Offset 0, canonical program `A014730.P174668344449865089`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A014730 (n : ℕ) : ℤ :=
  A014730.P174668344449865089.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A014730.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014773.P6939107552307873484

`A014637(n)²`
-/

namespace A014773.P6939107552307873484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014637 n ^ 2

end

end A014773.P6939107552307873484

noncomputable section

/-- A014773: Squares of odd heptagonal numbers.

Offset 1, canonical program `A014773.P6939107552307873484`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014773 (n : ℕ) : ℤ :=
  A014773.P6939107552307873484.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014773.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014792.P5188408009213786689

`A014640(n)²`
-/

namespace A014792.P5188408009213786689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014640 n ^ 2

end

end A014792.P5188408009213786689

noncomputable section

/-- A014792: Squares of even heptagonal numbers.

Offset 0, canonical program `A014792.P5188408009213786689`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014792 (n : ℕ) : ℤ :=
  A014792.P5188408009213786689.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014792.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014866.P7494396681222093559

`eq[A014491(A008574(n)), A106617(n)]`
-/

namespace A014866.P7494396681222093559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014491 (A008574 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106617 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A014866.P7494396681222093559

noncomputable section

/-- A014866: Numbers k that divide s(k), where s(1)=1, s(j)=16*s(j-1)+j.

Offset 1, canonical program `A014866.P7494396681222093559`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 299 terms. -/
def A014866 (n : ℕ) : ℤ :=
  (A014866.P7494396681222093559.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 299 terms. -/
def A014866.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015226.P15515667176513301738

`A002412(record[or(2, n)+1])`
-/

namespace A015226.P15515667176513301738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002412 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A015226.P15515667176513301738

noncomputable section

/-- A015226: Even hexagonal pyramidal numbers.

Offset 0, canonical program `A015226.P15515667176513301738`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A015226 (n : ℕ) : ℤ :=
  A015226.P15515667176513301738.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A015226.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015928.P17940027003137050527

`A000035(∑[char[A000040(3*n+5)]]!)`
-/

namespace A015928.P17940027003137050527
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (3 * n + 5)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A015928.P17940027003137050527

noncomputable section

/-- A015928: Inverse of 1919th cyclotomic polynomial.

Offset 0, canonical program `A015928.P17940027003137050527`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A015928 (n : ℕ) : ℤ :=
  A015928.P17940027003137050527.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A015928.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A016002.P10244408839077172288

`ceil(∏{e}[n+1, A016993(#)]/7)`
-/

namespace A016002.P10244408839077172288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∏ p ∈ Nat.primeFactors (f1 n), A016993 (Nat.factorization (f1 n) p) : ℤ) : ℚ) / 7⌉

end

end A016002.P10244408839077172288

noncomputable section

/-- A016002: a(n) = (tau(n^7)+6)/7.

Offset 1, canonical program `A016002.P10244408839077172288`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A016002 (n : ℕ) : ℤ :=
  A016002.P10244408839077172288.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A016002.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017674.P17821829466119099200

`A000584(n+1)/A001160(n+1)*A017673(n+1)`
-/

namespace A017674.P17821829466119099200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000584 (n + 1) : ℚ) / (A001160 (n + 1) : ℚ) * (A017673 (n + 1) : ℚ)

end

end A017674.P17821829466119099200

noncomputable section

/-- A017674: Denominator of sum of -5th powers of divisors of n.

Offset 1, canonical program `A017674.P17821829466119099200`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A017674 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A017674.P17821829466119099200.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A017674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017764.P3747891598830656448

`∑[A017763(n)]`
-/

namespace A017764.P3747891598830656448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017763 (n + 99)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017764.P3747891598830656448

noncomputable section

/-- A017764: a(n) = binomial coefficient C(n,100).

Offset 100, canonical program `A017764.P3747891598830656448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A017764 (n : ℕ) : ℤ :=
  A017764.P3747891598830656448.a (n - 100)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A017764.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017901.P9908741470765038447

`Δ[A005709(abs(1-n))-A000007(n)]`
-/

namespace A017901.P9908741470765038447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005709 |1 - (n : ℤ)|.toNat - A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A017901.P9908741470765038447

noncomputable section

/-- A017901: Expansion of 1/(1 - x^7 - x^8 - ...).

Offset 0, canonical program `A017901.P9908741470765038447`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1016 terms. -/
def A017901 (n : ℕ) : ℤ :=
  A017901.P9908741470765038447.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1016 terms. -/
def A017901.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017911.P11746449396979657446

`A057048((n-1)%(n+1))`
-/

namespace A017911.P11746449396979657446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057048 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A017911.P11746449396979657446

noncomputable section

/-- A017911: Powers of sqrt(2) rounded to nearest integer.

Offset 0, canonical program `A017911.P11746449396979657446`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 665 terms. -/
def A017911 (n : ℕ) : ℤ :=
  A017911.P11746449396979657446.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 665 terms. -/
def A017911.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017984.P9301343140417999525

`A017982(n)+n²%3`
-/

namespace A017984.P9301343140417999525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017982 n + ((n ^ 2 % 3 : ℕ) : ℤ)

end

end A017984.P9301343140417999525

noncomputable section

/-- A017984: Powers of cube root of 3 rounded up.

Offset 0, canonical program `A017984.P9301343140417999525`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 629 terms. -/
def A017984 (n : ℕ) : ℤ :=
  A017984.P9301343140417999525.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 629 terms. -/
def A017984.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017985.P1637897509349652819

`A017981(2*n)-A011655(n)`
-/

namespace A017985.P1637897509349652819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017981 (2 * n) - A011655 n

end

end A017985.P1637897509349652819

noncomputable section

/-- A017985: Powers of cube root of 4 rounded down.

Offset 0, canonical program `A017985.P1637897509349652819`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 499 terms. -/
def A017985 (n : ℕ) : ℤ :=
  A017985.P1637897509349652819.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 499 terms. -/
def A017985.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017987.P11170690977755083932

`A017981(2*n)`
-/

namespace A017987.P11170690977755083932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017981 (2 * n)

end

end A017987.P11170690977755083932

noncomputable section

/-- A017987: Powers of cube root of 4 rounded up.

Offset 0, canonical program `A017987.P11170690977755083932`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 499 terms. -/
def A017987 (n : ℕ) : ℤ :=
  A017987.P11170690977755083932.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 499 terms. -/
def A017987.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017990.P6936312708764945254

`A017988(n)+n²%3`
-/

namespace A017990.P6936312708764945254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017988 n + ((n ^ 2 % 3 : ℕ) : ℤ)

end

end A017990.P6936312708764945254

noncomputable section

/-- A017990: Powers of cube root of 5 rounded up.

Offset 0, canonical program `A017990.P6936312708764945254`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 430 terms. -/
def A017990 (n : ℕ) : ℤ :=
  A017990.P6936312708764945254.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 430 terms. -/
def A017990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017993.P3313661977526285217

`A017991(n)+A011655(n)`
-/

namespace A017993.P3313661977526285217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017991 n + A011655 n

end

end A017993.P3313661977526285217

noncomputable section

/-- A017993: Powers of cube root of 6 rounded up.

Offset 0, canonical program `A017993.P3313661977526285217`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 386 terms. -/
def A017993 (n : ℕ) : ℤ :=
  A017993.P3313661977526285217.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 386 terms. -/
def A017993.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017996.P14283704290407302258

`A017994(n)+n²%3`
-/

namespace A017996.P14283704290407302258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017994 n + ((n ^ 2 % 3 : ℕ) : ℤ)

end

end A017996.P14283704290407302258

noncomputable section

/-- A017996: Powers of cube root of 7 rounded up.

Offset 0, canonical program `A017996.P14283704290407302258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 355 terms. -/
def A017996 (n : ℕ) : ℤ :=
  A017996.P14283704290407302258.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 355 terms. -/
def A017996.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018000.P12566814103099478929

`A017982(2*n)`
-/

namespace A018000.P12566814103099478929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017982 (2 * n)

end

end A018000.P12566814103099478929

noncomputable section

/-- A018000: Powers of cube root of 9 rounded down.

Offset 0, canonical program `A018000.P12566814103099478929`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 315 terms. -/
def A018000 (n : ℕ) : ℤ :=
  A018000.P12566814103099478929.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 315 terms. -/
def A018000.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018001.P12620626073793832567

`A017983(2*n)`
-/

namespace A018001.P12620626073793832567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017983 (2 * n)

end

end A018001.P12620626073793832567

noncomputable section

/-- A018001: Powers of cube root of 9 rounded to nearest integer.

Offset 0, canonical program `A018001.P12620626073793832567`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 315 terms. -/
def A018001 (n : ℕ) : ℤ :=
  A018001.P12620626073793832567.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 315 terms. -/
def A018001.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018005.P1217500562103082431

`A018003(n)+A011655(n)`
-/

namespace A018005.P1217500562103082431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018003 n + A011655 n

end

end A018005.P1217500562103082431

noncomputable section

/-- A018005: Smallest number whose cube has n digits.

Offset 1, canonical program `A018005.P1217500562103082431`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 301 terms. -/
def A018005 (n : ℕ) : ℤ :=
  A018005.P1217500562103082431.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 301 terms. -/
def A018005.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018008.P15591260217316423838

`A018006(n)+n²%3`
-/

namespace A018008.P15591260217316423838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018006 n + ((n ^ 2 % 3 : ℕ) : ℤ)

end

end A018008.P15591260217316423838

noncomputable section

/-- A018008: Powers of cube root of 11 rounded up.

Offset 0, canonical program `A018008.P15591260217316423838`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 289 terms. -/
def A018008 (n : ℕ) : ℤ :=
  A018008.P15591260217316423838.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 289 terms. -/
def A018008.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018017.P9867344629284296178

`A018015(n)+n²%3`
-/

namespace A018017.P9867344629284296178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018015 n + ((n ^ 2 % 3 : ℕ) : ℤ)

end

end A018017.P9867344629284296178

noncomputable section

/-- A018017: Powers of cube root of 14 rounded up.

Offset 0, canonical program `A018017.P9867344629284296178`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 262 terms. -/
def A018017 (n : ℕ) : ℤ :=
  A018017.P9867344629284296178.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 262 terms. -/
def A018017.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018020.P4086690302044614733

`A018018(n)+n²%3`
-/

namespace A018020.P4086690302044614733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018018 n + ((n ^ 2 % 3 : ℕ) : ℤ)

end

end A018020.P4086690302044614733

noncomputable section

/-- A018020: Powers of cube root of 15 rounded up.

Offset 0, canonical program `A018020.P4086690302044614733`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. -/
def A018020 (n : ℕ) : ℤ :=
  A018020.P4086690302044614733.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. -/
def A018020.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018022.P11346396830169355532

`A017986(2*n)`
-/

namespace A018022.P11346396830169355532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017986 (2 * n)

end

end A018022.P11346396830169355532

noncomputable section

/-- A018022: Powers of cube root of 16 rounded to nearest integer.

Offset 0, canonical program `A018022.P11346396830169355532`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 250 terms. -/
def A018022 (n : ℕ) : ℤ :=
  A018022.P11346396830169355532.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 250 terms. -/
def A018022.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018026.P9406872516472099550

`A018024(n)+A011655(n)`
-/

namespace A018026.P9406872516472099550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018024 n + A011655 n

end

end A018026.P9406872516472099550

noncomputable section

/-- A018026: Powers of cube root of 17 rounded up.

Offset 0, canonical program `A018026.P9406872516472099550`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 244 terms. -/
def A018026 (n : ℕ) : ℤ :=
  A018026.P9406872516472099550.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 244 terms. -/
def A018026.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018029.P1393310261986526519

`A018027(n)+n²%3`
-/

namespace A018029.P1393310261986526519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018027 n + ((n ^ 2 % 3 : ℕ) : ℤ)

end

end A018029.P1393310261986526519

noncomputable section

/-- A018029: Powers of cube root of 18 rounded up.

Offset 0, canonical program `A018029.P1393310261986526519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A018029 (n : ℕ) : ℤ :=
  A018029.P1393310261986526519.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A018029.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018031.P16726517439334196273

`floor(A018030(2*n)/A018030(n))`
-/

namespace A018031.P16726517439334196273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A018030 (2 * n) : ℚ) / (A018030 n : ℚ)⌋

end

end A018031.P16726517439334196273

noncomputable section

/-- A018031: Powers of cube root of 19 rounded to nearest integer.

Offset 0, canonical program `A018031.P16726517439334196273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A018031 (n : ℕ) : ℤ :=
  A018031.P16726517439334196273.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A018031.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018032.P6828655559062813698

`A018030(n)+A011655(n)`
-/

namespace A018032.P6828655559062813698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018030 n + A011655 n

end

end A018032.P6828655559062813698

noncomputable section

/-- A018032: Powers of cube root of 19 rounded up.

Offset 0, canonical program `A018032.P6828655559062813698`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 235 terms. -/
def A018032 (n : ℕ) : ℤ :=
  A018032.P6828655559062813698.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 235 terms. -/
def A018032.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018034.P5652497311994361569

`floor(A018033(2*n)/A018033(n))`
-/

namespace A018034.P5652497311994361569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A018033 (2 * n) : ℚ) / (A018033 n : ℚ)⌋

end

end A018034.P5652497311994361569

noncomputable section

/-- A018034: Powers of cube root of 20 rounded to nearest integer.

Offset 0, canonical program `A018034.P5652497311994361569`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A018034 (n : ℕ) : ℤ :=
  A018034.P5652497311994361569.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A018034.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018035.P9055610647671047137

`A018033(n)+A011655(n)`
-/

namespace A018035.P9055610647671047137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018033 n + A011655 n

end

end A018035.P9055610647671047137

noncomputable section

/-- A018035: Powers of cube root of 20 rounded up.

Offset 0, canonical program `A018035.P9055610647671047137`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 231 terms. -/
def A018035 (n : ℕ) : ℤ :=
  A018035.P9055610647671047137.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 231 terms. -/
def A018035.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018037.P11225067572236605742

`round(21^(n/3))%A183712(n+1)`
-/

namespace A018037.P11225067572236605742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((21 : ℝ) ^ ((n : ℚ) / 3 : ℝ))) (A183712 (n + 1))

end

end A018037.P11225067572236605742

noncomputable section

/-- A018037: Powers of cube root of 21 rounded to nearest integer.

Offset 0, canonical program `A018037.P11225067572236605742`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 196 terms. -/
def A018037 (n : ℕ) : ℤ :=
  A018037.P11225067572236605742.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 196 terms. -/
def A018037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018038.P14270364732823888752

`A018036(n)+A011655(n)`
-/

namespace A018038.P14270364732823888752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018036 n + A011655 n

end

end A018038.P14270364732823888752

noncomputable section

/-- A018038: Powers of cube root of 21 rounded up.

Offset 0, canonical program `A018038.P14270364732823888752`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 227 terms. -/
def A018038 (n : ℕ) : ℤ :=
  A018038.P14270364732823888752.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 227 terms. -/
def A018038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018041.P12813239236874280382

`A018039(n)+n²%3`
-/

namespace A018041.P12813239236874280382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018039 n + ((n ^ 2 % 3 : ℕ) : ℤ)

end

end A018041.P12813239236874280382

noncomputable section

/-- A018041: Powers of cube root of 22 rounded up.

Offset 0, canonical program `A018041.P12813239236874280382`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 224 terms. -/
def A018041 (n : ℕ) : ℤ :=
  A018041.P12813239236874280382.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 224 terms. -/
def A018041.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018044.P17736943157866595348

`A018042(n)+A011655(n)`
-/

namespace A018044.P17736943157866595348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018042 n + A011655 n

end

end A018044.P17736943157866595348

noncomputable section

/-- A018044: Powers of cube root of 23 rounded up.

Offset 0, canonical program `A018044.P17736943157866595348`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 221 terms. -/
def A018044 (n : ℕ) : ℤ :=
  A018044.P17736943157866595348.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 221 terms. -/
def A018044.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018047.P6361301627475973376

`A018045(n)+A011655(n)`
-/

namespace A018047.P6361301627475973376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018045 n + A011655 n

end

end A018047.P6361301627475973376

noncomputable section

/-- A018047: Powers of cube root of 24 rounded up.

Offset 0, canonical program `A018047.P6361301627475973376`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A018047 (n : ℕ) : ℤ :=
  A018047.P6361301627475973376.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A018047.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018049.P9155946535238031673

`A018048(A020705(n))-A018048(n)`
-/

namespace A018049.P9155946535238031673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018048 (A020705 n).toNat - A018048 n

end

end A018049.P9155946535238031673

noncomputable section

/-- A018049: Powers of fourth root of 2 rounded to nearest integer.

Offset 0, canonical program `A018049.P9155946535238031673`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1285 terms. -/
def A018049 (n : ℕ) : ℤ :=
  A018049.P9155946535238031673.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1285 terms. -/
def A018049.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018050.P7202811115113250674

`A166486(n)+A018048(n)`
-/

namespace A018050.P7202811115113250674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 n + A018048 n

end

end A018050.P7202811115113250674

noncomputable section

/-- A018050: Powers of fourth root of 2 rounded up.

Offset 0, canonical program `A018050.P7202811115113250674`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1329 terms. -/
def A018050 (n : ℕ) : ℤ :=
  A018050.P7202811115113250674.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1329 terms. -/
def A018050.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018053.P10874141411522457307

`A166486(n)+A018051(n)`
-/

namespace A018053.P10874141411522457307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 n + A018051 n

end

end A018053.P10874141411522457307

noncomputable section

/-- A018053: Powers of fourth root of 3 rounded up.

Offset 0, canonical program `A018053.P10874141411522457307`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 839 terms. -/
def A018053 (n : ℕ) : ℤ :=
  A018053.P10874141411522457307.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 839 terms. -/
def A018053.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018059.P17236117683466257866

`A166486(n)+A018057(n)`
-/

namespace A018059.P17236117683466257866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 n + A018057 n

end

end A018059.P17236117683466257866

noncomputable section

/-- A018059: Powers of fourth root of 5 rounded up.

Offset 0, canonical program `A018059.P17236117683466257866`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 573 terms. -/
def A018059 (n : ℕ) : ℤ :=
  A018059.P17236117683466257866.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 573 terms. -/
def A018059.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018062.P8777464907617138448

`A166486(n)+A018060(n)`
-/

namespace A018062.P8777464907617138448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 n + A018060 n

end

end A018062.P8777464907617138448

noncomputable section

/-- A018062: Powers of fourth root of 6 rounded up.

Offset 0, canonical program `A018062.P8777464907617138448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 515 terms. -/
def A018062 (n : ℕ) : ℤ :=
  A018062.P8777464907617138448.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 515 terms. -/
def A018062.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018065.P10127883038866742777

`A166486(n)+A018063(n)`
-/

namespace A018065.P10127883038866742777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 n + A018063 n

end

end A018065.P10127883038866742777

noncomputable section

/-- A018065: Powers of fourth root of 7 rounded up.

Offset 0, canonical program `A018065.P10127883038866742777`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A018065 (n : ℕ) : ℤ :=
  A018065.P10127883038866742777.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A018065.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018066.P7812183996928124791

`A018068(n)-A166486(n)`
-/

namespace A018066.P7812183996928124791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018068 n - A166486 n

end

end A018066.P7812183996928124791

noncomputable section

/-- A018066: Powers of fourth root of 8 rounded down.

Offset 0, canonical program `A018066.P7812183996928124791`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 443 terms. -/
def A018066 (n : ℕ) : ℤ :=
  A018066.P7812183996928124791.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 443 terms. -/
def A018066.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018074.P3627246100912372173

`A166486(n)+A018072(n)`
-/

namespace A018074.P3627246100912372173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 n + A018072 n

end

end A018074.P3627246100912372173

noncomputable section

/-- A018074: Powers of fourth root of 10 rounded up.

Offset 0, canonical program `A018074.P3627246100912372173`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 401 terms. -/
def A018074 (n : ℕ) : ℤ :=
  A018074.P3627246100912372173.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 401 terms. -/
def A018074.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018077.P10293243021085696785

`A166486(n)+A018075(n)`
-/

namespace A018077.P10293243021085696785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 n + A018075 n

end

end A018077.P10293243021085696785

noncomputable section

/-- A018077: Powers of fourth root of 11 rounded up.

Offset 0, canonical program `A018077.P10293243021085696785`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 385 terms. -/
def A018077 (n : ℕ) : ℤ :=
  A018077.P10293243021085696785.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 385 terms. -/
def A018077.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018080.P3905317944633213150

`A166486(n)+A018078(n)`
-/

namespace A018080.P3905317944633213150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 n + A018078 n

end

end A018080.P3905317944633213150

noncomputable section

/-- A018080: Powers of fourth root of 12 rounded up.

Offset 0, canonical program `A018080.P3905317944633213150`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 371 terms. -/
def A018080 (n : ℕ) : ℤ :=
  A018080.P3905317944633213150.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 371 terms. -/
def A018080.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018083.P16938260605876087660

`A166486(n)+A018081(n)`
-/

namespace A018083.P16938260605876087660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 n + A018081 n

end

end A018083.P16938260605876087660

noncomputable section

/-- A018083: Powers of fourth root of 13 rounded up.

Offset 0, canonical program `A018083.P16938260605876087660`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 360 terms. -/
def A018083 (n : ℕ) : ℤ :=
  A018083.P16938260605876087660.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 360 terms. -/
def A018083.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018086.P14049671221435333370

`A166486(n)+A018084(n)`
-/

namespace A018086.P14049671221435333370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 n + A018084 n

end

end A018086.P14049671221435333370

noncomputable section

/-- A018086: Powers of fourth root of 14 rounded up.

Offset 0, canonical program `A018086.P14049671221435333370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 350 terms. -/
def A018086 (n : ℕ) : ℤ :=
  A018086.P14049671221435333370.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 350 terms. -/
def A018086.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018089.P13846765686959543665

`A166486(n)+A018087(n)`
-/

namespace A018089.P13846765686959543665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 n + A018087 n

end

end A018089.P13846765686959543665

noncomputable section

/-- A018089: Powers of fourth root of 15 rounded up.

Offset 0, canonical program `A018089.P13846765686959543665`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A018089 (n : ℕ) : ℤ :=
  A018089.P13846765686959543665.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A018089.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018095.P14089529475957644628

`A166486(n)+A018093(n)`
-/

namespace A018095.P14089529475957644628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 n + A018093 n

end

end A018095.P14089529475957644628

noncomputable section

/-- A018095: Powers of fourth root of 17 rounded up.

Offset 0, canonical program `A018095.P14089529475957644628`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. -/
def A018095 (n : ℕ) : ℤ :=
  A018095.P14089529475957644628.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. -/
def A018095.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018098.P6444872509897601762

`A166486(n)+A018096(n)`
-/

namespace A018098.P6444872509897601762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 n + A018096 n

end

end A018098.P6444872509897601762

noncomputable section

/-- A018098: Powers of fourth root of 18 rounded up.

Offset 0, canonical program `A018098.P6444872509897601762`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 319 terms. -/
def A018098 (n : ℕ) : ℤ :=
  A018098.P6444872509897601762.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 319 terms. -/
def A018098.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018101.P8812853209003547044

`A166486(n)+A018099(n)`
-/

namespace A018101.P8812853209003547044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 n + A018099 n

end

end A018101.P8812853209003547044

noncomputable section

/-- A018101: Powers of fourth root of 19 rounded up.

Offset 0, canonical program `A018101.P8812853209003547044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 313 terms. -/
def A018101 (n : ℕ) : ℤ :=
  A018101.P8812853209003547044.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 313 terms. -/
def A018101.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018104.P12323327033336640985

`A166486(n)+A018102(n)`
-/

namespace A018104.P12323327033336640985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 n + A018102 n

end

end A018104.P12323327033336640985

noncomputable section

/-- A018104: Powers of fourth root of 20 rounded up.

Offset 0, canonical program `A018104.P12323327033336640985`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 308 terms. -/
def A018104 (n : ℕ) : ℤ :=
  A018104.P12323327033336640985.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 308 terms. -/
def A018104.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018107.P12842287637002873207

`A166486(n)+A018105(n)`
-/

namespace A018107.P12842287637002873207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 n + A018105 n

end

end A018107.P12842287637002873207

noncomputable section

/-- A018107: Powers of fourth root of 21 rounded up.

Offset 0, canonical program `A018107.P12842287637002873207`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 303 terms. -/
def A018107 (n : ℕ) : ℤ :=
  A018107.P12842287637002873207.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 303 terms. -/
def A018107.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018110.P6128057492059747435

`A166486(n)+A018108(n)`
-/

namespace A018110.P6128057492059747435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 n + A018108 n

end

end A018110.P6128057492059747435

noncomputable section

/-- A018110: Powers of fourth root of 22 rounded up.

Offset 0, canonical program `A018110.P6128057492059747435`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 298 terms. -/
def A018110 (n : ℕ) : ℤ :=
  A018110.P6128057492059747435.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 298 terms. -/
def A018110.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018113.P2157205403128814120

`A166486(n)+A018111(n)`
-/

namespace A018113.P2157205403128814120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 n + A018111 n

end

end A018113.P2157205403128814120

noncomputable section

/-- A018113: Powers of fourth root of 23 rounded up.

Offset 0, canonical program `A018113.P2157205403128814120`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 294 terms. -/
def A018113 (n : ℕ) : ℤ :=
  A018113.P2157205403128814120.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 294 terms. -/
def A018113.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018116.P13344171312656503620

`A166486(n)+A018114(n)`
-/

namespace A018116.P13344171312656503620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 n + A018114 n

end

end A018116.P13344171312656503620

noncomputable section

/-- A018116: Powers of fourth root of 24 rounded up.

Offset 0, canonical program `A018116.P13344171312656503620`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 290 terms. -/
def A018116 (n : ℕ) : ℤ :=
  A018116.P13344171312656503620.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 290 terms. -/
def A018116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018125.P8861796577936828116

`A018123(n)+A011558(n)`
-/

namespace A018125.P8861796577936828116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018123 n + A011558 n

end

end A018125.P8861796577936828116

noncomputable section

/-- A018125: Powers of fifth root of 4 rounded up.

Offset 0, canonical program `A018125.P8861796577936828116`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 831 terms. -/
def A018125 (n : ℕ) : ℤ :=
  A018125.P8861796577936828116.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 831 terms. -/
def A018125.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018128.P14907345293032255728

`ceil(A018127(2*n)/A018127(n))`
-/

namespace A018128.P14907345293032255728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A018127 (2 * n) : ℚ) / (A018127 n : ℚ)⌉

end

end A018128.P14907345293032255728

noncomputable section

/-- A018128: Powers of fifth root of 5 rounded up.

Offset 0, canonical program `A018128.P14907345293032255728`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 358 terms. -/
def A018128 (n : ℕ) : ℤ :=
  A018128.P14907345293032255728.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 358 terms. -/
def A018128.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018130.P11323371319505450073

`round(6^(n/5))%A022382(n+1)`
-/

namespace A018130.P11323371319505450073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((6 : ℝ) ^ ((n : ℚ) / 5 : ℝ))) (A022382 (n + 1))

end

end A018130.P11323371319505450073

noncomputable section

/-- A018130: Powers of fifth root of 6 rounded to nearest integer.

Offset 0, canonical program `A018130.P11323371319505450073`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A018130 (n : ℕ) : ℤ :=
  A018130.P11323371319505450073.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A018130.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018133.P1935935528495860089

`round(7^(n/5))%A022112(n)`
-/

namespace A018133.P1935935528495860089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((7 : ℝ) ^ ((n : ℚ) / 5 : ℝ))) (A022112 n)

end

end A018133.P1935935528495860089

noncomputable section

/-- A018133: Powers of fifth root of 7 rounded to nearest integer.

Offset 0, canonical program `A018133.P1935935528495860089`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A018133 (n : ℕ) : ℤ :=
  A018133.P1935935528495860089.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A018133.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018134.P9317719804498158701

`A018132(n)+A011558(n)`
-/

namespace A018134.P9317719804498158701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018132 n + A011558 n

end

end A018134.P9317719804498158701

noncomputable section

/-- A018134: Powers of fifth root of 7 rounded up.

Offset 0, canonical program `A018134.P9317719804498158701`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 592 terms. -/
def A018134 (n : ℕ) : ℤ :=
  A018134.P9317719804498158701.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 592 terms. -/
def A018134.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018137.P15763535359869717710

`A018135(n)+A011558(n)`
-/

namespace A018137.P15763535359869717710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018135 n + A011558 n

end

end A018137.P15763535359869717710

noncomputable section

/-- A018137: Powers of fifth root of 8 rounded up.

Offset 0, canonical program `A018137.P15763535359869717710`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 554 terms. -/
def A018137 (n : ℕ) : ℤ :=
  A018137.P15763535359869717710.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 554 terms. -/
def A018137.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018139.P12614381874718071357

`A018121(2*n)`
-/

namespace A018139.P12614381874718071357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018121 (2 * n)

end

end A018139.P12614381874718071357

noncomputable section

/-- A018139: Powers of fifth root of 9 rounded to nearest integer.

Offset 0, canonical program `A018139.P12614381874718071357`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 524 terms. -/
def A018139 (n : ℕ) : ℤ :=
  A018139.P12614381874718071357.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 524 terms. -/
def A018139.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018143.P16710984044551120495

`A018141(n)+A011558(n)`
-/

namespace A018143.P16710984044551120495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018141 n + A011558 n

end

end A018143.P16710984044551120495

noncomputable section

/-- A018143: Powers of fifth root of 10 rounded up.

Offset 0, canonical program `A018143.P16710984044551120495`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 501 terms. -/
def A018143 (n : ℕ) : ℤ :=
  A018143.P16710984044551120495.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 501 terms. -/
def A018143.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018146.P17360370714240723720

`A018144(n)+A011558(n)`
-/

namespace A018146.P17360370714240723720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018144 n + A011558 n

end

end A018146.P17360370714240723720

noncomputable section

/-- A018146: Powers of fifth root of 11 rounded up.

Offset 0, canonical program `A018146.P17360370714240723720`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A018146 (n : ℕ) : ℤ :=
  A018146.P17360370714240723720.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A018146.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018151.P1581584185306457396

`round(root(A017943(n), 5)²)`
-/

namespace A018151.P1581584185306457396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A017943 n : ℝ) ^ (1 / (5 : ℝ))) ^ 2)

end

end A018151.P1581584185306457396

noncomputable section

/-- A018151: Powers of fifth root of 13 rounded to nearest integer.

Offset 0, canonical program `A018151.P1581584185306457396`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 180 terms. -/
def A018151 (n : ℕ) : ℤ :=
  A018151.P1581584185306457396.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 180 terms. -/
def A018151.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018158.P18139790836956322692

`ceil(A018157(2*n)/A018157(n))`
-/

namespace A018158.P18139790836956322692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A018157 (2 * n) : ℚ) / (A018157 n : ℚ)⌉

end

end A018158.P18139790836956322692

noncomputable section

/-- A018158: Powers of fifth root of 15 rounded up.

Offset 0, canonical program `A018158.P18139790836956322692`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A018158 (n : ℕ) : ℤ :=
  A018158.P18139790836956322692.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A018158.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018159.P10237429046590111371

`A018123(2*n)`
-/

namespace A018159.P10237429046590111371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018123 (2 * n)

end

end A018159.P10237429046590111371

noncomputable section

/-- A018159: Powers of fifth root of 16 rounded down.

Offset 0, canonical program `A018159.P10237429046590111371`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 416 terms. -/
def A018159 (n : ℕ) : ℤ :=
  A018159.P10237429046590111371.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 416 terms. -/
def A018159.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018164.P3391283248975529223

`A018162(n)+A011558(n)`
-/

namespace A018164.P3391283248975529223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018162 n + A011558 n

end

end A018164.P3391283248975529223

noncomputable section

/-- A018164: Powers of fifth root of 17 rounded up.

Offset 0, canonical program `A018164.P3391283248975529223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 407 terms. -/
def A018164 (n : ℕ) : ℤ :=
  A018164.P3391283248975529223.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 407 terms. -/
def A018164.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018166.P6810236982058479144

`round(sqrt(A018165(2*n)))`
-/

namespace A018166.P6810236982058479144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A018165 (2 * n) : ℝ))

end

end A018166.P6810236982058479144

noncomputable section

/-- A018166: Powers of fifth root of 18 rounded to nearest integer.

Offset 0, canonical program `A018166.P6810236982058479144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A018166 (n : ℕ) : ℤ :=
  A018166.P6810236982058479144.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A018166.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018167.P16975993885813898639

`A018165(n)+A011558(n)`
-/

namespace A018167.P16975993885813898639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018165 n + A011558 n

end

end A018167.P16975993885813898639

noncomputable section

/-- A018167: Powers of fifth root of 18 rounded up.

Offset 0, canonical program `A018167.P16975993885813898639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 399 terms. -/
def A018167 (n : ℕ) : ℤ :=
  A018167.P16975993885813898639.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 399 terms. -/
def A018167.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018169.P17188329938784537795

`round(19^(n/5))%A000079(n+1)`
-/

namespace A018169.P17188329938784537795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((19 : ℝ) ^ ((n : ℚ) / 5 : ℝ))) (A000079 (n + 1))

end

end A018169.P17188329938784537795

noncomputable section

/-- A018169: Powers of fifth root of 19 rounded to nearest integer.

Offset 0, canonical program `A018169.P17188329938784537795`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A018169 (n : ℕ) : ℤ :=
  A018169.P17188329938784537795.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A018169.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018170.P5132066639009175930

`A018168(n)+A011558(n)`
-/

namespace A018170.P5132066639009175930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018168 n + A011558 n

end

end A018170.P5132066639009175930

noncomputable section

/-- A018170: Powers of fifth root of 19 rounded up.

Offset 0, canonical program `A018170.P5132066639009175930`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 392 terms. -/
def A018170 (n : ℕ) : ℤ :=
  A018170.P5132066639009175930.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 392 terms. -/
def A018170.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018178.P8186179901445619379

`round(sqrt(A018177(2*n)))`
-/

namespace A018178.P8186179901445619379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A018177 (2 * n) : ℝ))

end

end A018178.P8186179901445619379

noncomputable section

/-- A018178: Powers of fifth root of 22 rounded to nearest integer.

Offset 0, canonical program `A018178.P8186179901445619379`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 187 terms. -/
def A018178 (n : ℕ) : ℤ :=
  A018178.P8186179901445619379.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 187 terms. -/
def A018178.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018179.P8087356966683218819

`A018177(n)+A011558(n)`
-/

namespace A018179.P8087356966683218819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018177 n + A011558 n

end

end A018179.P8087356966683218819

noncomputable section

/-- A018179: Powers of fifth root of 22 rounded up.

Offset 0, canonical program `A018179.P8087356966683218819`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 373 terms. -/
def A018179 (n : ℕ) : ℤ :=
  A018179.P8087356966683218819.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 373 terms. -/
def A018179.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018181.P1639594874919561374

`round(root(A017973(n), 5)²)`
-/

namespace A018181.P1639594874919561374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A017973 n : ℝ) ^ (1 / (5 : ℝ))) ^ 2)

end

end A018181.P1639594874919561374

noncomputable section

/-- A018181: Powers of fifth root of 23 rounded to nearest integer.

Offset 0, canonical program `A018181.P1639594874919561374`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A018181 (n : ℕ) : ℤ :=
  A018181.P1639594874919561374.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A018181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018184.P13875373849819010364

`round(24^(n/5))%(A048488(n+1)+8)`
-/

namespace A018184.P13875373849819010364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((24 : ℝ) ^ ((n : ℚ) / 5 : ℝ))) (A048488 (n + 1) + 8)

end

end A018184.P13875373849819010364

noncomputable section

/-- A018184: Powers of fifth root of 24 rounded to nearest integer.

Offset 0, canonical program `A018184.P13875373849819010364`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. -/
def A018184 (n : ℕ) : ℤ :=
  A018184.P13875373849819010364.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. -/
def A018184.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018185.P5277193147444695055

`A018183(n)+A011558(n)`
-/

namespace A018185.P5277193147444695055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018183 n + A011558 n

end

end A018185.P5277193147444695055

noncomputable section

/-- A018185: Powers of fifth root of 24 rounded up.

Offset 0, canonical program `A018185.P5277193147444695055`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 363 terms. -/
def A018185 (n : ℕ) : ℤ :=
  A018185.P5277193147444695055.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 363 terms. -/
def A018185.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018245.P6139162678383067992

`5-Δ[A195177(n)]`
-/

namespace A018245.P6139162678383067992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - (f1 (n + 1) - f1 n)

end

end A018245.P6139162678383067992

noncomputable section

/-- A018245: A self-generating sequence: there are a(n) (k+1)'s between successive k's, where k=4.

Offset 1, canonical program `A018245.P6139162678383067992`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A018245 (n : ℕ) : ℤ :=
  A018245.P6139162678383067992.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A018245.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018252.P16557407491482004301

`record[(n+3)%(2-A000203(n+3))]`
-/

namespace A018252.P16557407491482004301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 3 : ℤ) (2 - A000203 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018252.P16557407491482004301

noncomputable section

/-- A018252: The nonprime numbers: 1 together with the composite numbers, A002808.

Offset 1, canonical program `A018252.P16557407491482004301`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A018252 (n : ℕ) : ℤ :=
  A018252.P16557407491482004301.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A018252.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018825.P17104001644328074366

`comp[A069011(comp[∑[n+1]])]`
-/

namespace A018825.P17104001644328074366
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069011 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A018825.P17104001644328074366

noncomputable section

/-- A018825: Numbers that are not the sum of 2 nonzero squares.

Offset 1, canonical program `A018825.P17104001644328074366`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7315 terms. -/
def A018825 (n : ℕ) : ℤ :=
  (A018825.P17104001644328074366.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7315 terms. -/
def A018825.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A019461.P12105906875557875900

`A057979(n+1)*A111063(A004526(n+1))`
-/

namespace A019461.P12105906875557875900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (n + 1) * A111063 (A004526 (n + 1)).toNat

end

end A019461.P12105906875557875900

noncomputable section

/-- A019461: Add 1, multiply by 1, add 2, multiply by 2, etc.; start with 0.

Offset 0, canonical program `A019461.P12105906875557875900`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A019461 (n : ℕ) : ℤ :=
  A019461.P12105906875557875900.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A019461.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A019470.P13912836705486436891

`record[n+3-A065344(n+1)]`
-/

namespace A019470.P13912836705486436891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - A065344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A019470.P13912836705486436891

noncomputable section

/-- A019470: Numbers k that divide binomial(2*k-4, k-2).

Offset 1, canonical program `A019470.P13912836705486436891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9606 terms. -/
def A019470 (n : ℕ) : ℤ :=
  A019470.P13912836705486436891.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9606 terms. -/
def A019470.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A019587.P7183734736030190447

`∑[A026351(n)-n*A001468(n)]`
-/

namespace A019587.P7183734736030190447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 n - (n : ℤ) * A001468 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A019587.P7183734736030190447

noncomputable section

/-- A019587: The left budding sequence: number of i such that 0 < i <= n and 0 < {phi*i} <= {phi*n}, where {} denotes the fractional part and phi = A001622.

Offset 1, canonical program `A019587.P7183734736030190447`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A019587 (n : ℕ) : ℤ :=
  A019587.P7183734736030190447.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A019587.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020331.P13767564437493327510

`(n+1)*(A171960(n+1)+3+n)`
-/

namespace A020331.P13767564437493327510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A171960 (n + 1) + 3 + (n : ℤ))

end

end A020331.P13767564437493327510

noncomputable section

/-- A020331: Numbers whose base-3 representation is the juxtaposition of two identical strings.

Offset 1, canonical program `A020331.P13767564437493327510`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020331 (n : ℕ) : ℤ :=
  A020331.P13767564437493327510.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020331.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020332.P16132858014043730416

`(n+1)*(A053644(A000267(n+1))²+1)`
-/

namespace A020332.P16132858014043730416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A053644 (A000267 (n + 1)).toNat ^ 2 + 1)

end

end A020332.P16132858014043730416

noncomputable section

/-- A020332: Numbers whose base-4 representation is the juxtaposition of two identical strings.

Offset 1, canonical program `A020332.P16132858014043730416`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020332 (n : ℕ) : ℤ :=
  A020332.P16132858014043730416.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020332.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020847.P14878739603806226551

`A096483(A005408(n))%10`
-/

namespace A020847.P14878739603806226551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096483 (A005408 n).toNat) 10

end

end A020847.P14878739603806226551

noncomputable section

/-- A020847: Decimal expansion of 1/sqrt(90) = sqrt(10)/30.

Offset 0, canonical program `A020847.P14878739603806226551`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A020847 (n : ℕ) : ℤ :=
  A020847.P14878739603806226551.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A020847.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020866.P8518708262098363558

`A123304(n+2)-2*A033999(n)`
-/

namespace A020866.P8518708262098363558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123304 (n + 2) - 2 * A033999 n

end

end A020866.P8518708262098363558

noncomputable section

/-- A020866: Number of strong edge-subgraphs in Moebius ladder M_n.

Offset 2, canonical program `A020866.P8518708262098363558`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A020866 (n : ℕ) : ℤ :=
  A020866.P8518708262098363558.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A020866.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020903.P17047861349932723794

`a(A002260(n+2)-1)` with `a(0)=1, a(1)=2`
-/

namespace A020903.P17047861349932723794
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (A002260 (n + 2) - 1).toNat

end

end A020903.P17047861349932723794

noncomputable section

/-- A020903: Lim f(f(...f(n))) where f is the fractal sequence given by f(n)=A002260(n+1).

Offset 1, canonical program `A020903.P17047861349932723794`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020903 (n : ℕ) : ℤ :=
  (A020903.P17047861349932723794.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020903.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020906.P9041250250638292646

`a(A025581(n))` with `a(0)=1, a(1)=2`
-/

namespace A020906.P9041250250638292646
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (A025581 n).toNat

end

end A020906.P9041250250638292646

noncomputable section

/-- A020906: Triangle where n-th row is the first n terms of the sequence in reverse order, starting with a(1) = 1 and a(2) = 2.

Offset 1, canonical program `A020906.P9041250250638292646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020906 (n : ℕ) : ℤ :=
  (A020906.P9041250250638292646.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020906.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020911.P470209350847853776

`ceil(log(A000045(n+1)+1)/log(3))`
-/

namespace A020911.P470209350847853776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (A000045 (n + 1) + 1 : ℝ) / Real.log (3 : ℝ)⌉

end

end A020911.P470209350847853776

noncomputable section

/-- A020911: Number of digits in the base 3 representation of n-th Fibonacci number.

Offset 1, canonical program `A020911.P470209350847853776`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A020911 (n : ℕ) : ℤ :=
  A020911.P470209350847853776.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A020911.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020957.P6769035182663688705

`A288219(n)+∑[A014217(n)]`
-/

namespace A020957.P6769035182663688705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288219 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020957.P6769035182663688705

noncomputable section

/-- A020957: a(n) = Sum_{k >= 1} floor(2*tau^(n-k)).

Offset 1, canonical program `A020957.P6769035182663688705`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. -/
def A020957 (n : ℕ) : ℤ :=
  A020957.P6769035182663688705.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. -/
def A020957.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020965.P8785795445900425784

`A005187(n+1)+A005187(A049472(n+1))`
-/

namespace A020965.P8785795445900425784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (n + 1) + A005187 (A049472 (n + 1)).toNat

end

end A020965.P8785795445900425784

noncomputable section

/-- A020965: a(n) = Sum_{k >= 1} floor(n*sqrt(2)^(1-k)).

Offset 1, canonical program `A020965.P8785795445900425784`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020965 (n : ℕ) : ℤ :=
  A020965.P8785795445900425784.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020965.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021049.P16151913952994111315

`∑[A016279(n)]`
-/

namespace A021049.P16151913952994111315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016279 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021049.P16151913952994111315

noncomputable section

/-- A021049: Expansion of 1/((1-x)*(1-2*x)*(1-3*x)*(1-10*x)).

Offset 0, canonical program `A021049.P16151913952994111315`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A021049 (n : ℕ) : ℤ :=
  A021049.P16151913952994111315.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A021049.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021079.P6710060595549819137

`∑[A016285(n)]`
-/

namespace A021079.P6710060595549819137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021079.P6710060595549819137

noncomputable section

/-- A021079: Expansion of 1/((1-x)(1-2x)(1-4x)(1-7x)).

Offset 0, canonical program `A021079.P6710060595549819137`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A021079 (n : ℕ) : ℤ :=
  A021079.P6710060595549819137.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A021079.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021092.P13933325179621122619

`or(1, ∑[A016292(n)])`
-/

namespace A021092.P13933325179621122619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A021092.P13933325179621122619

noncomputable section

/-- A021092: Expansion of 1/((1-x)*(1-2*x)*(1-4*x)*(1-10*x)).

Offset 0, canonical program `A021092.P13933325179621122619`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A021092 (n : ℕ) : ℤ :=
  A021092.P13933325179621122619.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A021092.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021202.P152564552045686604

`∑[A016307(n)]`
-/

namespace A021202.P152564552045686604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016307 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021202.P152564552045686604

noncomputable section

/-- A021202: Expansion of 1/((1-x)(1-2x)(1-6x)(1-10x)).

Offset 0, canonical program `A021202.P152564552045686604`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A021202 (n : ℕ) : ℤ :=
  A021202.P152564552045686604.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A021202.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021229.P9183453658711614328

`∑[A016312(n)]`
-/

namespace A021229.P9183453658711614328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016312 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021229.P9183453658711614328

noncomputable section

/-- A021229: Expansion of 1/((1-x)(1-2x)(1-7x)(1-9x)).

Offset 0, canonical program `A021229.P9183453658711614328`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A021229 (n : ℕ) : ℤ :=
  A021229.P9183453658711614328.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A021229.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021234.P14094936273991565514

`∑[A016313(n)]`
-/

namespace A021234.P14094936273991565514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016313 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021234.P14094936273991565514

noncomputable section

/-- A021234: Expansion of 1/((1-x)(1-2x)(1-7x)(1-10x)).

Offset 0, canonical program `A021234.P14094936273991565514`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A021234 (n : ℕ) : ℤ :=
  A021234.P14094936273991565514.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A021234.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021256.P11215221401829278741

`(A020806(n)+A016825(n))%A016813(n)`
-/

namespace A021256.P11215221401829278741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020806 n + A016825 n) (A016813 n)

end

end A021256.P11215221401829278741

noncomputable section

/-- A021256: Decimal expansion of 1/252.

Offset 0, canonical program `A021256.P11215221401829278741`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021256 (n : ℕ) : ℤ :=
  A021256.P11215221401829278741.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021374.P7587042195522585219

`∑[A016849(n)]`
-/

namespace A021374.P7587042195522585219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016849 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021374.P7587042195522585219

noncomputable section

/-- A021374: Expansion of 1/((1-x)*(1-3*x)*(1-4*x)*(1-8*x)).

Offset 0, canonical program `A021374.P7587042195522585219`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A021374 (n : ℕ) : ℤ :=
  A021374.P7587042195522585219.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A021374.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021379.P2843175501737389197

`∑[A016909(n)]`
-/

namespace A021379.P2843175501737389197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021379.P2843175501737389197

noncomputable section

/-- A021379: Expansion of 1/((1-x)*(1-3*x)*(1-4*x)*(1-9*x)).

Offset 0, canonical program `A021379.P2843175501737389197`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A021379 (n : ℕ) : ℤ :=
  A021379.P2843175501737389197.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A021379.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021424.P8549120849405029087

`∑[A017389(n)]`
-/

namespace A021424.P8549120849405029087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017389 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021424.P8549120849405029087

noncomputable section

/-- A021424: Expansion of 1/((1-x)(1-3x)(1-5x)(1-7x)).

Offset 0, canonical program `A021424.P8549120849405029087`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A021424 (n : ℕ) : ℤ :=
  A021424.P8549120849405029087.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A021424.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021464.P1889180395666986606

`∑[A017916(n)]`
-/

namespace A021464.P1889180395666986606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017916 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021464.P1889180395666986606

noncomputable section

/-- A021464: Expansion of 1/((1-x)(1-3x)(1-5x)(1-10x)).

Offset 0, canonical program `A021464.P1889180395666986606`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A021464 (n : ℕ) : ℤ :=
  A021464.P1889180395666986606.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A021464.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021514.P3610408554453606658

`∑[A017952(n)]`
-/

namespace A021514.P3610408554453606658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021514.P3610408554453606658

noncomputable section

/-- A021514: Expansion of 1/((1-x)(1-3x)(1-6x)(1-10x)).

Offset 0, canonical program `A021514.P3610408554453606658`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A021514 (n : ℕ) : ℤ :=
  A021514.P3610408554453606658.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A021514.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021604.P10045866734448486812

`∑[A017999(n)]`
-/

namespace A021604.P10045866734448486812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021604.P10045866734448486812

noncomputable section

/-- A021604: Expansion of 1/((1-x)*(1-3*x)*(1-7*x)*(1-10*x)).

Offset 0, canonical program `A021604.P10045866734448486812`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A021604 (n : ℕ) : ℤ :=
  A021604.P10045866734448486812.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A021604.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021634.P3286273434263155847

`∑[A018056(n)]`
-/

namespace A021634.P3286273434263155847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021634.P3286273434263155847

noncomputable section

/-- A021634: Expansion of 1/((1-x)(1-3x)(1-8x)(1-9x)).

Offset 0, canonical program `A021634.P3286273434263155847`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A021634 (n : ℕ) : ℤ :=
  A021634.P3286273434263155847.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A021634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021644.P7472038049559353068

`∑[A018069(n)]`
-/

namespace A021644.P7472038049559353068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018069 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021644.P7472038049559353068

noncomputable section

/-- A021644: Expansion of 1/((1-x)*(1-3*x)*(1-8*x)*(1-10*x)).

Offset 0, canonical program `A021644.P7472038049559353068`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A021644 (n : ℕ) : ℤ :=
  A021644.P7472038049559353068.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A021644.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021764.P17471623479004792730

`∑[A018250(n)]`
-/

namespace A021764.P17471623479004792730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018250 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021764.P17471623479004792730

noncomputable section

/-- A021764: Expansion of 1/((1-x)(1-4x)(1-5x)(1-8x)).

Offset 0, canonical program `A021764.P17471623479004792730`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A021764 (n : ℕ) : ℤ :=
  A021764.P17471623479004792730.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A021764.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021774.P6716850460234935892

`∑[A018912(n)]`
-/

namespace A021774.P6716850460234935892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018912 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021774.P6716850460234935892

noncomputable section

/-- A021774: Expansion of 1/((1-x)(1-4x)(1-5x)(1-10x)).

Offset 0, canonical program `A021774.P6716850460234935892`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A021774 (n : ℕ) : ℤ :=
  A021774.P6716850460234935892.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A021774.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021804.P1679742294013703888

`∑[A019316(n)]`
-/

namespace A021804.P1679742294013703888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021804.P1679742294013703888

noncomputable section

/-- A021804: Expansion of 1/((1-x)(1-4x)(1-6x)(1-7x)).

Offset 0, canonical program `A021804.P1679742294013703888`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A021804 (n : ℕ) : ℤ :=
  A021804.P1679742294013703888.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A021804.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021807.P14958655593182802055

`A021077(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A021807.P14958655593182802055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A021077 (n - 1) - a (n - 1)

end

end A021807.P14958655593182802055

noncomputable section

/-- A021807: Decimal expansion of 1/803.

Offset 0, canonical program `A021807.P14958655593182802055`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021807 (n : ℕ) : ℤ :=
  A021807.P14958655593182802055.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021807.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021814.P10926726484162862782

`∑[A019333(n)]`
-/

namespace A021814.P10926726484162862782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021814.P10926726484162862782

noncomputable section

/-- A021814: Expansion of 1/((1-x)(1-4x)(1-6x)(1-8x)).

Offset 0, canonical program `A021814.P10926726484162862782`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A021814 (n : ℕ) : ℤ :=
  A021814.P10926726484162862782.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A021814.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021829.P18005213265485724350

`∑[A019483(n)]`
-/

namespace A021829.P18005213265485724350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019483 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021829.P18005213265485724350

noncomputable section

/-- A021829: Expansion of 1/((1-x)(1-4x)(1-6x)(1-10x)).

Offset 0, canonical program `A021829.P18005213265485724350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A021829 (n : ℕ) : ℤ :=
  A021829.P18005213265485724350.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A021829.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021914.P6376640922673671551

`∑[A019671(n)]`
-/

namespace A021914.P6376640922673671551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019671 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021914.P6376640922673671551

noncomputable section

/-- A021914: Expansion of 1/((1-x)(1-4x)(1-8x)(1-10x)).

Offset 0, canonical program `A021914.P6376640922673671551`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A021914 (n : ℕ) : ℤ :=
  A021914.P6376640922673671551.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A021914.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022146.P17648652475996275041

`2*A007900(n)-A008574(n)²`
-/

namespace A022146.P17648652475996275041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007900 n - A008574 n ^ 2

end

end A022146.P17648652475996275041

noncomputable section

/-- A022146: Coordination sequence for root lattice B_4.

Offset 0, canonical program `A022146.P17648652475996275041`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022146 (n : ℕ) : ℤ :=
  A022146.P17648652475996275041.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022146.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022334.P10690066324089854614

`∑[A061785(n+1)+1]-A061785(n+1)`
-/

namespace A022334.P10690066324089854614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061785 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A061785 (n + 1)

end

end A022334.P10690066324089854614

noncomputable section

/-- A022334: Index of 5^n within sequence of numbers of form 2^i * 5^j.

Offset 0, canonical program `A022334.P10690066324089854614`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022334 (n : ℕ) : ℤ :=
  A022334.P10690066324089854614.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022334.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022415.P15745490843547950395

`A374359(n+1)+A022413(n)`
-/

namespace A022415.P15745490843547950395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374359 (n + 1) + A022413 n

end

end A022415.P15745490843547950395

noncomputable section

/-- A022415: Kim-sums: "Kimberling sums" K_n + K_4.

Offset 0, canonical program `A022415.P15745490843547950395`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022415 (n : ℕ) : ℤ :=
  A022415.P15745490843547950395.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022415.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022441.P11385500381179401866

`3*n+2-A070941(n)%2`
-/

namespace A022441.P11385500381179401866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 2 : ℤ) - Int.tmod (A070941 n) 2

end

end A022441.P11385500381179401866

noncomputable section

/-- A022441: a(n) = c(n) + c(n-1) where c (A055562) is the sequence of numbers not in a.

Offset 0, canonical program `A022441.P11385500381179401866`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022441 (n : ℕ) : ℤ :=
  A022441.P11385500381179401866.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022441.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022454.P13468604187403530846

`∑[A019958(n)]`
-/

namespace A022454.P13468604187403530846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019958 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022454.P13468604187403530846

noncomputable section

/-- A022454: Expansion of 1/((1-x)*(1-5*x)*(1-7*x)*(1-10*x)).

Offset 0, canonical program `A022454.P13468604187403530846`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A022454 (n : ℕ) : ℤ :=
  A022454.P13468604187403530846.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A022454.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022555.P8597993334409940497

`comp[A105125(n)]`
-/

namespace A022555.P8597993334409940497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105125 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A022555.P8597993334409940497

noncomputable section

/-- A022555: Positive integers that are not the sum of two nonnegative cubes.

Offset 1, canonical program `A022555.P8597993334409940497`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022555 (n : ℕ) : ℤ :=
  (A022555.P8597993334409940497.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022555.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022775.P5821383929704964479

`∑[A049474(2*n)]+1`
-/

namespace A022775.P5821383929704964479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049474 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A022775.P5821383929704964479

noncomputable section

/-- A022775: Place where n-th 1 occurs in A007336.

Offset 1, canonical program `A022775.P5821383929704964479`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3140 terms. -/
def A022775 (n : ℕ) : ℤ :=
  A022775.P5821383929704964479.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3140 terms. -/
def A022775.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022776.P17919574213432232440

`∑[A049474(n)]+1`
-/

namespace A022776.P17919574213432232440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049474 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A022776.P17919574213432232440

noncomputable section

/-- A022776: Place where n-th 1 occurs in A023115.

Offset 1, canonical program `A022776.P17919574213432232440`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022776 (n : ℕ) : ℤ :=
  A022776.P17919574213432232440.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022776.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022777.P1506527801283716464

`∑[A198081(n)]+1`
-/

namespace A022777.P1506527801283716464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198081 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A022777.P1506527801283716464

noncomputable section

/-- A022777: Place where n-th 1 occurs in A007337.

Offset 1, canonical program `A022777.P1506527801283716464`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2265 terms. -/
def A022777 (n : ℕ) : ℤ :=
  A022777.P1506527801283716464.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2265 terms. -/
def A022777.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022778.P5925027341847244681

`(n+1)²-∑[A195129(n)]`
-/

namespace A022778.P5925027341847244681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022778.P5925027341847244681

noncomputable section

/-- A022778: Place where n-th 1 occurs in A023116.

Offset 1, canonical program `A022778.P5925027341847244681`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3777 terms. -/
def A022778 (n : ℕ) : ℤ :=
  A022778.P5925027341847244681.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3777 terms. -/
def A022778.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022779.P12138440178907107662

`∑[A198082(n)]+1`
-/

namespace A022779.P12138440178907107662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198082 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A022779.P12138440178907107662

noncomputable section

/-- A022779: Place where n-th 1 occurs in A023117.

Offset 1, canonical program `A022779.P12138440178907107662`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2364 terms. -/
def A022779 (n : ℕ) : ℤ :=
  A022779.P12138440178907107662.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2364 terms. -/
def A022779.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022780.P1861960125711501944

`A194964(n)+a(n-1)` with `a(0)=1`
-/

namespace A022780.P1861960125711501944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A194964 n + a (n - 1)

end

end A022780.P1861960125711501944

noncomputable section

/-- A022780: Place where n-th 1 occurs in A023118.

Offset 1, canonical program `A022780.P1861960125711501944`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5432 terms. -/
def A022780 (n : ℕ) : ℤ :=
  A022780.P1861960125711501944.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5432 terms. -/
def A022780.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022781.P2680767153877646876

`∑[A198084(n)]+1`
-/

namespace A022781.P2680767153877646876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198084 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A022781.P2680767153877646876

noncomputable section

/-- A022781: Place where n-th 1 occurs in A023119.

Offset 1, canonical program `A022781.P2680767153877646876`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2081 terms. -/
def A022781 (n : ℕ) : ℤ :=
  A022781.P2680767153877646876.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2081 terms. -/
def A022781.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022785.P11302809859389273548

`∑[A121384(n)]+1`
-/

namespace A022785.P11302809859389273548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121384 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A022785.P11302809859389273548

noncomputable section

/-- A022785: Place where n-th 1 occurs in A023123.

Offset 1, canonical program `A022785.P11302809859389273548`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2187 terms. -/
def A022785 (n : ℕ) : ℤ :=
  A022785.P11302809859389273548.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2187 terms. -/
def A022785.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022786.P7179101593516911482

`∑[A032634(n)]+1+n`
-/

namespace A022786.P7179101593516911482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032634 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)

end

end A022786.P7179101593516911482

noncomputable section

/-- A022786: Place where n-th 1 occurs in A023124.

Offset 1, canonical program `A022786.P7179101593516911482`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5892 terms. -/
def A022786 (n : ℕ) : ℤ :=
  A022786.P7179101593516911482.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5892 terms. -/
def A022786.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022789.P15581079733562638700

`∑[A198083(n)]+1`
-/

namespace A022789.P15581079733562638700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198083 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A022789.P15581079733562638700

noncomputable section

/-- A022789: Place where n-th 1 occurs in A023127.

Offset 1, canonical program `A022789.P15581079733562638700`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2225 terms. -/
def A022789 (n : ℕ) : ℤ :=
  A022789.P15581079733562638700.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2225 terms. -/
def A022789.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022790.P12543044921546330487

`∑[A172476(n)]+1+n`
-/

namespace A022790.P12543044921546330487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172476 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)

end

end A022790.P12543044921546330487

noncomputable section

/-- A022790: Place where n-th 1 occurs in A023128.

Offset 1, canonical program `A022790.P12543044921546330487`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5500 terms. -/
def A022790 (n : ℕ) : ℤ :=
  A022790.P12543044921546330487.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5500 terms. -/
def A022790.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022791.P2752683687528874488

`∑[A061402(n)]+1+n`
-/

namespace A022791.P2752683687528874488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061402 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)

end

end A022791.P2752683687528874488

noncomputable section

/-- A022791: Place where n-th 1 occurs in A023129.

Offset 1, canonical program `A022791.P2752683687528874488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2862 terms. -/
def A022791 (n : ℕ) : ℤ :=
  A022791.P2752683687528874488.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2862 terms. -/
def A022791.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022793.P8078340536079714582

`∑[A198263(n)]+1`
-/

namespace A022793.P8078340536079714582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198263 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A022793.P8078340536079714582

noncomputable section

/-- A022793: Place where n-th 1 occurs in A023131.

Offset 1, canonical program `A022793.P8078340536079714582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2251 terms. -/
def A022793 (n : ℕ) : ℤ :=
  A022793.P8078340536079714582.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2251 terms. -/
def A022793.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022794.P2072618029331811702

`∑[A172474(n)]+1+n`
-/

namespace A022794.P2072618029331811702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172474 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)

end

end A022794.P2072618029331811702

noncomputable section

/-- A022794: Place where n-th 1 occurs in A023132.

Offset 1, canonical program `A022794.P2072618029331811702`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5973 terms. -/
def A022794 (n : ℕ) : ℤ :=
  A022794.P2072618029331811702.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5973 terms. -/
def A022794.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022795.P4523488485773220254

`∑[A121381(n)]+1`
-/

namespace A022795.P4523488485773220254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121381 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A022795.P4523488485773220254

noncomputable section

/-- A022795: Place where n-th 1 occurs in A023133.

Offset 1, canonical program `A022795.P4523488485773220254`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1877 terms. -/
def A022795 (n : ℕ) : ℤ :=
  A022795.P4523488485773220254.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1877 terms. -/
def A022795.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022796.P10383129870039449392

`∑[A032615(n)]+1+n`
-/

namespace A022796.P10383129870039449392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032615 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)

end

end A022796.P10383129870039449392

noncomputable section

/-- A022796: Place where n-th 1 occurs in A023134.

Offset 1, canonical program `A022796.P10383129870039449392`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6107 terms. -/
def A022796 (n : ℕ) : ℤ :=
  A022796.P10383129870039449392.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6107 terms. -/
def A022796.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022799.P3202200011068491808

`A001690(n+1)+A000045(n+2)`
-/

namespace A022799.P3202200011068491808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001690 (n + 1) + A000045 (n + 2)

end

end A022799.P3202200011068491808

noncomputable section

/-- A022799: a(n) = F(n+1) + c(n) where F(k) is k-th Fibonacci number and c(n) is n-th non-Fibonacci number.

Offset 1, canonical program `A022799.P3202200011068491808`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A022799 (n : ℕ) : ℤ :=
  A022799.P3202200011068491808.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A022799.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022802.P5209542318991673861

`∑[A000032(n)]+comp[A001610(n+1)]+2`
-/

namespace A022802.P5209542318991673861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 2 : ℤ)

end

end A022802.P5209542318991673861

noncomputable section

/-- A022802: a(n) = L(n+1) + c(n) where L(k) = k-th Lucas number and c(n) is n-th number that is 1 or not a Lucas number.

Offset 1, canonical program `A022802.P5209542318991673861`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A022802 (n : ℕ) : ℤ :=
  A022802.P5209542318991673861.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A022802.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022803.P8656828766279880858

`A004758(n+2)+1`
-/

namespace A022803.P8656828766279880858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004758 (n + 2) + 1

end

end A022803.P8656828766279880858

noncomputable section

/-- A022803: Numbers that reach ...,7,8,4,2,1 under the mapping: if n is even divide by 2 else add 1.

Offset 1, canonical program `A022803.P8656828766279880858`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A022803 (n : ℕ) : ℤ :=
  A022803.P8656828766279880858.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A022803.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022807.P13278345666095501261

`A329791(n+1)+comp[A329791(n)]`
-/

namespace A022807.P13278345666095501261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329791 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329791 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A022807.P13278345666095501261

noncomputable section

/-- A022807: a(n) = S(n) + c(n) where S(n) = [ n*sqrt(2) ] + [ n*sqrt(3) ] and c is the complement of S.

Offset 1, canonical program `A022807.P13278345666095501261`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A022807 (n : ℕ) : ℤ :=
  A022807.P13278345666095501261.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A022807.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023196.P11305018750547605188

`lt[2*n+1, A000203(n+1)]+1`
-/

namespace A023196.P11305018750547605188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A023196.P11305018750547605188

noncomputable section

/-- A023196: Nondeficient numbers: numbers k such that sigma(k) >= 2k; union of A000396 and A005101.

Offset 1, canonical program `A023196.P11305018750547605188`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023196 (n : ℕ) : ℤ :=
  (A023196.P11305018750547605188.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023196.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023224.P3715858878049786222

`p?[floor(A141893(n+1)/7)]`
-/

namespace A023224.P3715858878049786222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A141893 (n + 1) : ℚ) / 7⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023224.P3715858878049786222

noncomputable section

/-- A023224: Primes p such that 7*p + 4 is also prime.

Offset 1, canonical program `A023224.P3715858878049786222`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2469 terms. -/
def A023224 (n : ℕ) : ℤ :=
  A023224.P3715858878049786222.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2469 terms. -/
def A023224.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023228.P10498132971099518493

`p?[floor(A007519(n+1)/8)]`
-/

namespace A023228.P10498132971099518493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007519 (n + 1) : ℚ) / 8⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023228.P10498132971099518493

noncomputable section

/-- A023228: Numbers k such that k and 8*k + 1 are both prime.

Offset 1, canonical program `A023228.P10498132971099518493`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 669 terms. -/
def A023228 (n : ℕ) : ℤ :=
  A023228.P10498132971099518493.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 669 terms. -/
def A023228.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023230.P3973530591756639462

`p?[floor(A141196(n+1)/8)]`
-/

namespace A023230.P3973530591756639462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A141196 (n + 1) : ℚ) / 8⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023230.P3973530591756639462

noncomputable section

/-- A023230: Numbers k such that k and 8*k + 5 are both prime.

Offset 1, canonical program `A023230.P3973530591756639462`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1688 terms. -/
def A023230 (n : ℕ) : ℤ :=
  A023230.P3973530591756639462.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1688 terms. -/
def A023230.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023231.P13970784106652136912

`p?[A005122(n+1)-1]`
-/

namespace A023231.P13970784106652136912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005122 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023231.P13970784106652136912

noncomputable section

/-- A023231: Primes p such that 8*p + 7 is also prime.

Offset 1, canonical program `A023231.P13970784106652136912`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 812 terms. -/
def A023231 (n : ℕ) : ℤ :=
  A023231.P13970784106652136912.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 812 terms. -/
def A023231.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023236.P11167435057986219502

`p?[A024906(n+1)-1]`
-/

namespace A023236.P11167435057986219502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024906 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023236.P11167435057986219502

noncomputable section

/-- A023236: Primes p such that 9*p + 10 is also prime.

Offset 1, canonical program `A023236.P11167435057986219502`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2319 terms. -/
def A023236 (n : ℕ) : ℤ :=
  A023236.P11167435057986219502.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2319 terms. -/
def A023236.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023441.P17268161528577507209

`∑[A013987(abs(1-n))]`
-/

namespace A023441.P17268161528577507209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013987 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023441.P17268161528577507209

noncomputable section

/-- A023441: Dying rabbits: a(n) = a(n-1) + a(n-2) - a(n-11).

Offset 0, canonical program `A023441.P17268161528577507209`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 484 terms. -/
def A023441 (n : ℕ) : ℤ :=
  A023441.P17268161528577507209.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 484 terms. -/
def A023441.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023483.P14211022439572459082

`A000045(n+3)+A001690(n+1)`
-/

namespace A023483.P14211022439572459082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 3) + A001690 (n + 1)

end

end A023483.P14211022439572459082

noncomputable section

/-- A023483: a(n) = b(n) + d(n), where b(n) = (n-th Fibonacci number > 1) and d(n) = (n-th non-Fibonacci number).

Offset 1, canonical program `A023483.P14211022439572459082`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001690, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023483 (n : ℕ) : ℤ :=
  A023483.P14211022439572459082.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001690, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023483.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023484.P7292727787972664292

`A000032(n+1)+A001690(n+1)`
-/

namespace A023484.P7292727787972664292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) + A001690 (n + 1)

end

end A023484.P7292727787972664292

noncomputable section

/-- A023484: a(n) = b(n) + d(n), where b(n) = (n-th Lucas number) and d(n) = (n-th non-Fibonacci number).

Offset 0, canonical program `A023484.P7292727787972664292`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001690, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023484 (n : ℕ) : ℤ :=
  A023484.P7292727787972664292.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001690, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023484.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023485.P12163396700155618846

`A000204(n+2)+A001690(n+1)`
-/

namespace A023485.P12163396700155618846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 2) + A001690 (n + 1)

end

end A023485.P12163396700155618846

noncomputable section

/-- A023485: a(n) = b(n) + d(n), where b(n) = (n-th Lucas number A000204 > 1) and d(n) = (n-th non-Fibonacci number).

Offset 1, canonical program `A023485.P12163396700155618846`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001690, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023485 (n : ℕ) : ℤ :=
  A023485.P12163396700155618846.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001690, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023485.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023486.P13668964546540766955

`A001690(n+1)+A000045(n+4)`
-/

namespace A023486.P13668964546540766955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001690 (n + 1) + A000045 (n + 4)

end

end A023486.P13668964546540766955

noncomputable section

/-- A023486: a(n) = b(n) + d(n), where b(n) = (n-th Fibonacci number > 2) and d(n) = (n-th non-Fibonacci number).

Offset 0, canonical program `A023486.P13668964546540766955`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001690, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023486 (n : ℕ) : ℤ :=
  A023486.P13668964546540766955.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001690, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023486.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023487.P8057689308705659646

`A000032(n+3)+A001690(n+1)`
-/

namespace A023487.P8057689308705659646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 3) + A001690 (n + 1)

end

end A023487.P8057689308705659646

noncomputable section

/-- A023487: a(n) = b(n) + d(n), where b(n) = (n-th Lucas number > 3) and d(n) = (n-th non-Fibonacci number).

Offset 0, canonical program `A023487.P8057689308705659646`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001690, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023487 (n : ℕ) : ℤ :=
  A023487.P8057689308705659646.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001690, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023487.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023499.P8730777959964670675

`comp[A000032(n+3)-1]+∑[A000045(n)]+2`
-/

namespace A023499.P8730777959964670675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 3) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + (∑ j ∈ Finset.range (n + 1), f2 j + 2)

end

end A023499.P8730777959964670675

noncomputable section

/-- A023499: a(n) = b(n) + d(n), where b(n) = ( (n+1)st Fibonacci number) and d(n) = (n-th number that is 1, 2, or 3, or is not a Lucas number).

Offset 0, canonical program `A023499.P8730777959964670675`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A023499 (n : ℕ) : ℤ :=
  A023499.P8730777959964670675.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A023499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023530.P5575461043592975846

`∑{e}[A000040(A028310(n))*A000040(n+1)+1, #]`
-/

namespace A023530.P5575461043592975846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A028310 n).toNat * A000040 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A023530.P5575461043592975846

noncomputable section

/-- A023530: Sum of exponents in prime-power factorization of prime(n)*prime(n-1) + 1; a(1) = 1.

Offset 1, canonical program `A023530.P5575461043592975846`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A023530 (n : ℕ) : ℤ :=
  (A023530.P5575461043592975846.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A023530.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023533.P16553737014273247425

`1-A014306(n)`
-/

namespace A023533.P16553737014273247425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A014306 n

end

end A023533.P16553737014273247425

noncomputable section

/-- A023533: a(n) = 1 if n is of the form m(m+1)(m+2)/6, and 0 otherwise.

Offset 0, canonical program `A023533.P16553737014273247425`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014306, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023533 (n : ℕ) : ℤ :=
  A023533.P16553737014273247425.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014306, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023533.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023534.P15990485128086430200

`eq[val(n+1, 2), A001221(n+1)]+1`
-/

namespace A023534.P15990485128086430200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A023534.P15990485128086430200

noncomputable section

/-- A023534: Numbers k such that the largest power of 2 dividing k equals 2^omega(k).

Offset 1, canonical program `A023534.P15990485128086430200`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3399 terms. -/
def A023534 (n : ℕ) : ℤ :=
  (A023534.P15990485128086430200.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3399 terms. -/
def A023534.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023538.P2498540562425885631

`∑[A000040(n)+a(n-1)]` with `a(0)=1`
-/

namespace A023538.P2498540562425885631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A000040 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023538.P2498540562425885631

noncomputable section

/-- A023538: Convolution of natural numbers with (1, p(1), p(2), ... ), where p(k) is the k-th prime.

Offset 1, canonical program `A023538.P2498540562425885631`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023538 (n : ℕ) : ℤ :=
  A023538.P2498540562425885631.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023538.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023541.P11789173281518141242

`abs(∑[∑[A004956(n+1)-1]])`
-/

namespace A023541.P11789173281518141242
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A023541.P11789173281518141242

noncomputable section

/-- A023541: Convolution of natural numbers with Beatty sequence for the golden mean A000201.

Offset 1, canonical program `A023541.P11789173281518141242`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023541 (n : ℕ) : ℤ :=
  A023541.P11789173281518141242.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023541.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023542.P14919059629026645152

`abs(∑[∑[A004957(n+1)-1]])`
-/

namespace A023542.P14919059629026645152
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A023542.P14919059629026645152

noncomputable section

/-- A023542: Convolution of natural numbers with Beatty sequence for tau^2 A001950.

Offset 1, canonical program `A023542.P14919059629026645152`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023542 (n : ℕ) : ℤ :=
  A023542.P14919059629026645152.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023542.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023543.P14152490566558709800

`∑[n+1]-∑[∑[A014306(n+1)]]`
-/

namespace A023543.P14152490566558709800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A023543.P14152490566558709800

noncomputable section

/-- A023543: Convolution of natural numbers with A023533.

Offset 1, canonical program `A023543.P14152490566558709800`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023543 (n : ℕ) : ℤ :=
  A023543.P14152490566558709800.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023543.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023544.P4498546519026709669

`∑[∑[A014306(n+1)]]`
-/

namespace A023544.P4498546519026709669
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014306 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023544.P4498546519026709669

noncomputable section

/-- A023544: Convolution of natural numbers with A014306.

Offset 1, canonical program `A023544.P4498546519026709669`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023544 (n : ℕ) : ℤ :=
  A023544.P4498546519026709669.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023544.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023587.P17732920272715446709

`∑{p}[1-2*A000040(n+1), #]`
-/

namespace A023587.P17732920272715446709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 2 * A000040 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023587.P17732920272715446709

noncomputable section

/-- A023587: a(n) = sum of distinct prime divisors of 2*prime(n)-1.

Offset 1, canonical program `A023587.P17732920272715446709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023587 (n : ℕ) : ℤ :=
  (A023587.P17732920272715446709.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023587.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023594.P13690517662854304508

`∑{p}[2*A000040(n+1)+1, #]`
-/

namespace A023594.P13690517662854304508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023594.P13690517662854304508

noncomputable section

/-- A023594: a(n) = sum of distinct prime divisors of 2*prime(n)+1.

Offset 1, canonical program `A023594.P13690517662854304508`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023594 (n : ℕ) : ℤ :=
  (A023594.P13690517662854304508.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023594.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023608.P1978400556510042510

`a(n-1)+A000040(n)+a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A023608.P1978400556510042510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) + (A000040 n + a (n - 2))

end

end A023608.P1978400556510042510

noncomputable section

/-- A023608: Convolution of Fibonacci numbers and (1, prime(1), prime(2), ...).

Offset 0, canonical program `A023608.P1978400556510042510`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. -/
def A023608 (n : ℕ) : ℤ :=
  A023608.P1978400556510042510.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. -/
def A023608.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023611.P587451549185034991

`A000201(n+1)+a(n-2)+a(n-1)` with `a(0)=1, a(1)=4`
-/

namespace A023611.P587451549185034991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  A000201 (n + 1) + (a (n - 2) + a (n - 1))

end

end A023611.P587451549185034991

noncomputable section

/-- A023611: Convolution of Fibonacci numbers and A000201.

Offset 0, canonical program `A023611.P587451549185034991`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. -/
def A023611 (n : ℕ) : ℤ :=
  A023611.P587451549185034991.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. -/
def A023611.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023692.P18411010243286777937

`eq[1, val(A006047(n), 2)]`
-/

namespace A023692.P18411010243286777937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006047 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023692.P18411010243286777937

noncomputable section

/-- A023692: Numbers with a single 1 in their ternary expansion.

Offset 1, canonical program `A023692.P18411010243286777937`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2305 terms. -/
def A023692 (n : ℕ) : ℤ :=
  (A023692.P18411010243286777937.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2305 terms. -/
def A023692.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023693.P3127764006694396744

`eq[2, val(A006047(n), 2)]`
-/

namespace A023693.P3127764006694396744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006047 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023693.P3127764006694396744

noncomputable section

/-- A023693: Numbers with exactly 2 1's in ternary expansion.

Offset 1, canonical program `A023693.P3127764006694396744`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4608 terms. -/
def A023693 (n : ℕ) : ℤ :=
  (A023693.P3127764006694396744.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4608 terms. -/
def A023693.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023694.P6778596780132138470

`eq[3, val(A006047(n), 2)]`
-/

namespace A023694.P6778596780132138470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006047 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023694.P6778596780132138470

noncomputable section

/-- A023694: Numbers with exactly 3 1's in ternary expansion.

Offset 1, canonical program `A023694.P6778596780132138470`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5376 terms. -/
def A023694 (n : ℕ) : ℤ :=
  (A023694.P6778596780132138470.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5376 terms. -/
def A023694.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023699.P15230863015613878465

`eq[1, val(A006047(n), 3)]`
-/

namespace A023699.P15230863015613878465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006047 n).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023699.P15230863015613878465

noncomputable section

/-- A023699: Numbers with a single 2 in their ternary expansion.

Offset 1, canonical program `A023699.P15230863015613878465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2304 terms. -/
def A023699 (n : ℕ) : ℤ :=
  (A023699.P15230863015613878465.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2304 terms. -/
def A023699.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023700.P15077908504290355889

`eq[2, val(A006047(n), 3)]`
-/

namespace A023700.P15077908504290355889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006047 n).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023700.P15077908504290355889

noncomputable section

/-- A023700: Numbers with exactly 2 2's in their ternary expansion.

Offset 1, canonical program `A023700.P15077908504290355889`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4608 terms. -/
def A023700 (n : ℕ) : ℤ :=
  (A023700.P15077908504290355889.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4608 terms. -/
def A023700.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023701.P16744175443296012392

`eq[3, val(A006047(n), 3)]`
-/

namespace A023701.P16744175443296012392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006047 n).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023701.P16744175443296012392

noncomputable section

/-- A023701: Numbers with exactly 3 2's in their ternary expansion.

Offset 1, canonical program `A023701.P16744175443296012392`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5376 terms. -/
def A023701 (n : ℕ) : ℤ :=
  (A023701.P16744175443296012392.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5376 terms. -/
def A023701.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023702.P11024123370145877327

`eq[4, val(A006047(n), 3)]`
-/

namespace A023702.P11024123370145877327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006047 n).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023702.P11024123370145877327

noncomputable section

/-- A023702: Numbers with exactly 4 2's in their ternary expansion of n.

Offset 1, canonical program `A023702.P11024123370145877327`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4032 terms. -/
def A023702 (n : ℕ) : ℤ :=
  (A023702.P11024123370145877327.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4032 terms. -/
def A023702.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023718.P12193516711797339017

`eq[0, a(floor(n/4))-A121262(n+1)]` with `a(0)=1`
-/

namespace A023718.P12193516711797339017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 ⌊(n : ℚ) / 4⌋.toNat - A121262 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023718.P12193516711797339017

noncomputable section

/-- A023718: Numbers with a single 3 in their base 4 expansion.

Offset 1, canonical program `A023718.P12193516711797339017`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023718 (n : ℕ) : ℤ :=
  (A023718.P12193516711797339017.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023718.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023745.P14630683886862311875

`A003462(A002262(n))+A003462(A003056(n))`
-/

namespace A023745.P14630683886862311875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 (A002262 n).toNat + A003462 (A003056 n).toNat

end

end A023745.P14630683886862311875

noncomputable section

/-- A023745: Plaindromes: numbers whose digits in base 3 are in nondecreasing order.

Offset 1, canonical program `A023745.P14630683886862311875`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023745 (n : ℕ) : ℤ :=
  A023745.P14630683886862311875.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023745.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023857.P527520079518963399

`A023856(n+1)+A008805(n)`
-/

namespace A023857.P527520079518963399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023856 (n + 1) + A008805 n

end

end A023857.P527520079518963399

noncomputable section

/-- A023857: a(n) = 1*(n+3-1) + 2*(n+3-2) + .... + k*(n+3-k), where k=floor((n+1)/2).

Offset 1, canonical program `A023857.P527520079518963399`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023857 (n : ℕ) : ℤ :=
  A023857.P527520079518963399.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023857.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023972.P17822606851280342829

`floor(A023964(n+1)/5)`
-/

namespace A023972.P17822606851280342829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A023964 (n + 1) : ℚ) / 5⌋

end

end A023972.P17822606851280342829

noncomputable section

/-- A023972: First bit in fractional part of binary expansion of 5th root of n.

Offset 1, canonical program `A023972.P17822606851280342829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023972 (n : ℕ) : ℤ :=
  A023972.P17822606851280342829.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023972.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023973.P17052429324411153139

`floor(A023965(n+1)/5)`
-/

namespace A023973.P17052429324411153139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A023965 (n + 1) : ℚ) / 5⌋

end

end A023973.P17052429324411153139

noncomputable section

/-- A023973: First bit in fractional part of binary expansion of 6th root of n.

Offset 1, canonical program `A023973.P17052429324411153139`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023973 (n : ℕ) : ℤ :=
  A023973.P17052429324411153139.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000005.P16091521709108585461

`A032741(n+1)+1`
-/

namespace A000005.P16091521709108585461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) + 1

end

end A000005.P16091521709108585461

noncomputable section

/-- A000005: d(n) (also called tau(n) or sigma_0(n)), the number of divisors of n.

Offset 1, canonical program `A000005.P16091521709108585461`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A000005.anchor (n : ℕ) (hn : 1 ≤ n) : A000005 n = (ArithmeticFunction.sigma 0 n : ℤ)` in `Proof.A000.A000005`. -/
def A000005 (n : ℕ) : ℤ :=
  A000005.P16091521709108585461.a (n - 1)

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A000005.anchor (n : ℕ) (hn : 1 ≤ n) : A000005 n = (ArithmeticFunction.sigma 0 n : ℤ)` in `Proof.A000.A000005`. -/
def A000005.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A000095.P2430518374745600653

`A166486(n+1)*A091379(n+1)`
-/

namespace A000095.P2430518374745600653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (n + 1) * A091379 (n + 1)

end

end A000095.P2430518374745600653

noncomputable section

/-- A000095: Number of fixed points of Gamma_0 (n) of type i.

Offset 1, canonical program `A000095.P2430518374745600653`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091379, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A000095 (n : ℕ) : ℤ :=
  A000095.P2430518374745600653.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091379, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A000095.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A000216.P351312360313339281

`A003132(a(n-1))` with `a(0)=2`
-/

namespace A000216.P351312360313339281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A003132 (a (n - 1)).toNat

end

end A000216.P351312360313339281

noncomputable section

/-- A000216: Take sum of squares of digits of previous term, starting with 2.

Offset 1, canonical program `A000216.P351312360313339281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000216 (n : ℕ) : ℤ :=
  A000216.P351312360313339281.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000216.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000218.P6684988766202068

`A003132(a(n-1))` with `a(0)=3`
-/

namespace A000218.P6684988766202068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A003132 (a (n - 1)).toNat

end

end A000218.P6684988766202068

noncomputable section

/-- A000218: Take sum of squares of digits of previous term; start with 3.

Offset 1, canonical program `A000218.P6684988766202068`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000218 (n : ℕ) : ℤ :=
  A000218.P6684988766202068.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000221.P4832198433719140497

`A003132(a(n-1))` with `a(0)=5`
-/

namespace A000221.P4832198433719140497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A003132 (a (n - 1)).toNat

end

end A000221.P4832198433719140497

noncomputable section

/-- A000221: Take sum of squares of digits of previous term; start with 5.

Offset 1, canonical program `A000221.P4832198433719140497`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000221 (n : ℕ) : ℤ :=
  A000221.P4832198433719140497.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000221.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000498.P5377987917905714178

`A066912(n+1)`
-/

namespace A000498.P5377987917905714178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066912 (n + 1)

end

end A000498.P5377987917905714178

noncomputable section

/-- A000498: Eulerian numbers (Euler's triangle: column k=4 of A008292, column k=3 of A173018).

Offset 4, canonical program `A000498.P5377987917905714178`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A000498 (n : ℕ) : ℤ :=
  A000498.P5377987917905714178.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A000498.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000748.P16132471601073484065

`A033999(n)*A057083(n)`
-/

namespace A000748.P16132471601073484065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A057083 n

end

end A000748.P16132471601073484065

noncomputable section

/-- A000748: Expansion of bracket function.

Offset 0, canonical program `A000748.P16132471601073484065`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 420 terms. -/
def A000748 (n : ℕ) : ℤ :=
  A000748.P16132471601073484065.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 420 terms. -/
def A000748.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000750.P17276910196845925233

`A033999(n)*A289389(n+4)`
-/

namespace A000750.P17276910196845925233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A289389 (n + 4)

end

end A000750.P17276910196845925233

noncomputable section

/-- A000750: Expansion of bracket function.

Offset 0, canonical program `A000750.P17276910196845925233`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 354 terms. -/
def A000750 (n : ℕ) : ℤ :=
  A000750.P17276910196845925233.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 354 terms. -/
def A000750.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000899.P15769446601722223493

`(A000142(n+1)-2*A000085(n+1)-A037223(n+1)+2*A000898(floor((n+1)/2)))/8`
-/

namespace A000899.P15769446601722223493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) - 2 * A000085 (n + 1) - A037223 (n + 1) + 2 * A000898 ⌊(n + 1 : ℚ) / 2⌋.toNat : ℚ) / 8

end

end A000899.P15769446601722223493

noncomputable section

/-- A000899: Number of solutions to the rook problem on an n X n board having a certain symmetry group (see Robinson for details).

Offset 1, canonical program `A000899.P15769446601722223493`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037223, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A000899 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A000899.P15769446601722223493.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037223, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A000899.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A001462.P2570616953797054601

`A095114(n+2)-A095114(n+1)`
-/

namespace A001462.P2570616953797054601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095114 (n + 2) - A095114 (n + 1)

end

end A001462.P2570616953797054601

noncomputable section

/-- A001462: Golomb's sequence: a(n) is the number of times n occurs in the sequence, starting with a(1) = 1.

Offset 1, canonical program `A001462.P2570616953797054601`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A001462.anchor : A001462 1 = 1 ∧ (∀ n : ℕ, 1 ≤ n → A001462 n ≤ A001462 (n + 1)) ∧ ∀ n : ℕ, 1 ≤ n → ({k : ℕ | 1 ≤ k ∧ A001462 k = n}.ncard : ℤ) = A001462 n` in `Proof.A001.A001462`. -/
def A001462 (n : ℕ) : ℤ :=
  A001462.P2570616953797054601.a (n - 1)

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A001462.anchor : A001462 1 = 1 ∧ (∀ n : ℕ, 1 ≤ n → A001462 n ≤ A001462 (n + 1)) ∧ ∀ n : ℕ, 1 ≤ n → ({k : ℕ | 1 ≤ k ∧ A001462 k = n}.ncard : ℤ) = A001462 n` in `Proof.A001.A001462`. -/
def A001462.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A001704.P2802870690856380017

`A127421(n+2)`
-/

namespace A001704.P2802870690856380017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127421 (n + 2)

end

end A001704.P2802870690856380017

noncomputable section

/-- A001704: a(n) = n concatenated with n + 1.

Offset 1, canonical program `A001704.P2802870690856380017`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001704 (n : ℕ) : ℤ :=
  A001704.P2802870690856380017.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001704.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001826.P1518250824516108745

`A001227(n+1)-A001842(n+1)`
-/

namespace A001826.P1518250824516108745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) - A001842 (n + 1)

end

end A001826.P1518250824516108745

noncomputable section

/-- A001826: Number of divisors of n of the form 4k+1.

Offset 1, canonical program `A001826.P1518250824516108745`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001842, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001826 (n : ℕ) : ℤ :=
  A001826.P1518250824516108745.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001842, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001826.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A001875.P10027090886134185033

`A037027(A000096(n+5)+7)`
-/

namespace A001875.P10027090886134185033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 (A000096 (n + 5) + 7).toNat

end

end A001875.P10027090886134185033

noncomputable section

/-- A001875: Convolved Fibonacci numbers.

Offset 0, canonical program `A001875.P10027090886134185033`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A001875 (n : ℕ) : ℤ :=
  A001875.P10027090886134185033.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A001875.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002381.P9042523861047841473

`floor(ceil(A038872(n+1)²/20)/6)`
-/

namespace A002381.P9042523861047841473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌈(A038872 (n + 1) ^ 2 : ℚ) / 20⌉ : ℚ) / 6⌋

end

end A002381.P9042523861047841473

noncomputable section

/-- A002381: Numbers of the form (p^2 - 1)/120 where p is 1 or prime.

Offset 1, canonical program `A002381.P9042523861047841473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A002381 (n : ℕ) : ℤ :=
  A002381.P9042523861047841473.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A002381.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002408.P4398356594904168961

`-((-1)^n*A007331(n))`
-/

namespace A002408.P4398356594904168961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((-1) ^ n * A007331 n)

end

end A002408.P4398356594904168961

noncomputable section

/-- A002408: Expansion of 8-dimensional cusp form.

Offset 0, canonical program `A002408.P4398356594904168961`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A002408 (n : ℕ) : ℤ :=
  A002408.P4398356594904168961.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A002408.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002459.P17296491257886822107

`xor(A000495(n), A169585(n))`
-/

namespace A002459.P17296491257886822107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000495 n) (A169585 n)

end

end A002459.P17296491257886822107

noncomputable section

/-- A002459: Nearest integer to cosh(n).

Offset 0, canonical program `A002459.P17296491257886822107`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 231 terms. -/
def A002459 (n : ℕ) : ℤ :=
  A002459.P17296491257886822107.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 231 terms. -/
def A002459.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002791.P2171648699354099435

`∑{d}[n+1, #*A158411(#)]`
-/

namespace A002791.P2171648699354099435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A158411 d

end

end A002791.P2171648699354099435

noncomputable section

/-- A002791: a(n) = Sum_{d|n, d <= 4} d^2 + 4*Sum_{d|n, d>4} d.

Offset 1, canonical program `A002791.P2171648699354099435`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A002791 (n : ℕ) : ℤ :=
  A002791.P2171648699354099435.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A002791.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002815.P11144953744924913715

`∑[A230980(n)]+n`
-/

namespace A002815.P11144953744924913715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A002815.P11144953744924913715

noncomputable section

/-- A002815: a(n) = n + Sum_{k=1..n} pi(k), where pi() = A000720.

Offset 0, canonical program `A002815.P11144953744924913715`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A002815 (n : ℕ) : ℤ :=
  A002815.P11144953744924913715.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A002815.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003324.P909769212695493746

`and(1, n)+and(3, A335115(n+1))`
-/

namespace A003324.P909769212695493746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) + Int.land 3 (A335115 (n + 1))

end

end A003324.P909769212695493746

noncomputable section

/-- A003324: A nonrepetitive sequence.

Offset 1, canonical program `A003324.P909769212695493746`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003324 (n : ℕ) : ℤ :=
  A003324.P909769212695493746.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004017.P4610875702186550705

`16*A007331(n+1)`
-/

namespace A004017.P4610875702186550705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A007331 (n + 1)

end

end A004017.P4610875702186550705

noncomputable section

/-- A004017: Theta series of E_8 lattice with respect to deep hole.

Offset 1, canonical program `A004017.P4610875702186550705`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004017 (n : ℕ) : ℤ :=
  A004017.P4610875702186550705.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004017.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004125.P17154347137318566864

`A111490(n+1)-(n+1)`
-/

namespace A004125.P17154347137318566864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111490 (n + 1) - (n + 1 : ℤ)

end

end A004125.P17154347137318566864

noncomputable section

/-- A004125: Sum of remainders of n mod k, for k = 1, 2, 3, ..., n.

Offset 1, canonical program `A004125.P17154347137318566864`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A111490, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A004125 (n : ℕ) : ℤ :=
  A004125.P17154347137318566864.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A111490, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A004125.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A004269.P16919580351853942693

`floor(A004270((n+1)²)/2)`
-/

namespace A004269.P16919580351853942693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004270 ((n + 1) ^ 2) : ℚ) / 2⌋

end

end A004269.P16919580351853942693

noncomputable section

/-- A004269: a(n) = round(10000*log_2(n)).

Offset 1, canonical program `A004269.P16919580351853942693`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A004269 (n : ℕ) : ℤ :=
  A004269.P16919580351853942693.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A004269.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004746.P4228167867206935200

`comp[A004752(n+1)]`
-/

namespace A004746.P4228167867206935200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004746.P4228167867206935200

noncomputable section

/-- A004746: Numbers whose binary expansion does not contain 010.

Offset 1, canonical program `A004746.P4228167867206935200`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9170 terms. -/
def A004746 (n : ℕ) : ℤ :=
  (A004746.P4228167867206935200.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9170 terms. -/
def A004746.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005070.P10126547095800783810

`∑{p}[n+1, #%A080029(#-1)]`
-/

namespace A005070.P10126547095800783810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Int.tmod (p : ℤ) (A080029 (p - 1))

end

end A005070.P10126547095800783810

noncomputable section

/-- A005070: Sum of primes == 1 (mod 3) dividing n.

Offset 1, canonical program `A005070.P10126547095800783810`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005070 (n : ℕ) : ℤ :=
  A005070.P10126547095800783810.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005070.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005086.P6711646533984267784

`∑{d}[n+1, A010056(#)]`
-/

namespace A005086.P6711646533984267784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010056 d

end

end A005086.P6711646533984267784

noncomputable section

/-- A005086: Number of Fibonacci numbers 1,2,3,5,... dividing n.

Offset 1, canonical program `A005086.P6711646533984267784`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005086 (n : ℕ) : ℤ :=
  A005086.P6711646533984267784.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005086.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005092.P14810173785204278299

`∑{d}[n+1, #*A010056(#)]`
-/

namespace A005092.P14810173785204278299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A010056 d

end

end A005092.P14810173785204278299

noncomputable section

/-- A005092: Sum of Fibonacci numbers 1,2,3,5,... that divide n.

Offset 1, canonical program `A005092.P14810173785204278299`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005092 (n : ℕ) : ℤ :=
  A005092.P14810173785204278299.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005092.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005093.P13883602286870678262

`∑{d}[n+1, (#*A010056(#))²]`
-/

namespace A005093.P13883602286870678262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) * A010056 d) ^ 2

end

end A005093.P13883602286870678262

noncomputable section

/-- A005093: Sum of squares of Fibonacci numbers 1,2,3,5,... that divide n.

Offset 1, canonical program `A005093.P13883602286870678262`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005093 (n : ℕ) : ℤ :=
  A005093.P13883602286870678262.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005093.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005100.P5902118993367235572

`record[n-A082551(n+1)]`
-/

namespace A005100.P5902118993367235572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A082551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005100.P5902118993367235572

noncomputable section

/-- A005100: Deficient numbers: numbers k such that sigma(k) < 2k.

Offset 1, canonical program `A005100.P5902118993367235572`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005100 (n : ℕ) : ℤ :=
  A005100.P5902118993367235572.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005100.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005101.P6705997063366613997

`eq[1, A082551(n+1)]+1`
-/

namespace A005101.P6705997063366613997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082551 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A005101.P6705997063366613997

noncomputable section

/-- A005101: Abundant numbers (sum of divisors of m exceeds 2m).

Offset 1, canonical program `A005101.P6705997063366613997`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005101 (n : ℕ) : ℤ :=
  (A005101.P6705997063366613997.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005101.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005427.P7157750297444178158

`A072493(n+9)`
-/

namespace A005427.P7157750297444178158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072493 (n + 9)

end

end A005427.P7157750297444178158

noncomputable section

/-- A005427: Josephus problem: numbers m such that, when m people are arranged on a circle and numbered 1 through m, the final survivor when we remove every 4th person is one of the first three people.

Offset 1, canonical program `A005427.P7157750297444178158`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 795 terms. -/
def A005427 (n : ℕ) : ℤ :=
  A005427.P7157750297444178158.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 795 terms. -/
def A005427.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005713.P7596571295974710938

`abs(A014677(n+1))`
-/

namespace A005713.P7596571295974710938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A014677 (n + 1)|

end

end A005713.P7596571295974710938

noncomputable section

/-- A005713: Define strings S(0)=0, S(1)=11, S(n) = S(n-1)S(n-2); iterate.

Offset 0, canonical program `A005713.P7596571295974710938`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014677, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A005713 (n : ℕ) : ℤ :=
  A005713.P7596571295974710938.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014677, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A005713.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A005942.P13366138311068225912

`∑[A214212(abs(1-n))]-1`
-/

namespace A005942.P13366138311068225912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214212 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A005942.P13366138311068225912

noncomputable section

/-- A005942: a(2n) = a(n) + a(n+1), a(2n+1) = 2a(n+1), if n >= 2.

Offset 0, canonical program `A005942.P13366138311068225912`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005942 (n : ℕ) : ℤ :=
  A005942.P13366138311068225912.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005942.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005994.P313789826886004477

`A006009(n+1)/2-A000332(n+4)`
-/

namespace A005994.P313789826886004477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006009 (n + 1) : ℚ) / 2 - (A000332 (n + 4) : ℚ)

end

end A005994.P313789826886004477

noncomputable section

/-- A005994: Alkane (or paraffin) numbers l(7,n).

Offset 0, canonical program `A005994.P313789826886004477`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006009, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A005994 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A005994.P313789826886004477.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006009, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A005994.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A006166.P11148542579983985411

`∪[A157671(n+1), A008585(n)]-n`
-/

namespace A006166.P11148542579983985411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157671 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A006166.P11148542579983985411

noncomputable section

/-- A006166: a(0)=0, a(1)=a(2)=1; for n >= 1, a(3n+2) = 2a(n+1) + a(n), a(3n+1) = a(n+1) + 2a(n), a(3n) = 3a(n).

Offset 0, canonical program `A006166.P11148542579983985411`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006166 (n : ℕ) : ℤ :=
  A006166.P11148542579983985411.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006166.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006581.P18062033798657677284

`A090889(n+2)-A000292(n+1)`
-/

namespace A006581.P18062033798657677284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090889 (n + 2) - A000292 (n + 1)

end

end A006581.P18062033798657677284

noncomputable section

/-- A006581: a(n) = Sum_{k=1..n-1} (k AND n-k).

Offset 2, canonical program `A006581.P18062033798657677284`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A006581 (n : ℕ) : ℤ :=
  A006581.P18062033798657677284.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A006581.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006670.P5796379747029257233

`∑[char[A266287(n)+2]]+1`
-/

namespace A006670.P5796379747029257233
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266287 n + 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A006670.P5796379747029257233

noncomputable section

/-- A006670: Edge-distinguishing chromatic number of path with n nodes.

Offset 1, canonical program `A006670.P5796379747029257233`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006670 (n : ℕ) : ℤ :=
  (A006670.P5796379747029257233.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006670.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006899.P2708636492723814346

`∪[A000079(n), A367083(n)]`
-/

namespace A006899.P2708636492723814346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367083 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A006899.P2708636492723814346

noncomputable section

/-- A006899: Numbers of the form 2^i or 3^j.

Offset 1, canonical program `A006899.P2708636492723814346`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 542 terms. -/
def A006899 (n : ℕ) : ℤ :=
  (A006899.P2708636492723814346.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 542 terms. -/
def A006899.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007094.P10071338308652589409

`eq[0, A102681(n)]`
-/

namespace A007094.P10071338308652589409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102681 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A007094.P10071338308652589409

noncomputable section

/-- A007094: Numbers in base 8.

Offset 0, canonical program `A007094.P10071338308652589409`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4097 terms. -/
def A007094 (n : ℕ) : ℤ :=
  (A007094.P10071338308652589409.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4097 terms. -/
def A007094.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007095.P8694712654280777652

`eq[0, A102683(n)]`
-/

namespace A007095.P8694712654280777652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A007095.P8694712654280777652

noncomputable section

/-- A007095: Numbers in base 9.

Offset 0, canonical program `A007095.P8694712654280777652`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6562 terms. -/
def A007095 (n : ℕ) : ℤ :=
  (A007095.P8694712654280777652.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6562 terms. -/
def A007095.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007417.P14396701096105327663

`comp[A145204(n+1)]`
-/

namespace A007417.P14396701096105327663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A007417.P14396701096105327663

noncomputable section

/-- A007417: If k appears, 3k does not.

Offset 1, canonical program `A007417.P14396701096105327663`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007417 (n : ℕ) : ℤ :=
  (A007417.P14396701096105327663.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007417.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007674.P4121978718907005715

`eq[A087049(n+1), A105570(n)]`
-/

namespace A007674.P4121978718907005715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A007674.P4121978718907005715

noncomputable section

/-- A007674: Numbers m such that m and m+1 are squarefree.

Offset 1, canonical program `A007674.P4121978718907005715`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007674 (n : ℕ) : ℤ :=
  (A007674.P4121978718907005715.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007729.P2856163913979848745

`A174868(n+1)`
-/

namespace A007729.P2856163913979848745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174868 (n + 1)

end

end A007729.P2856163913979848745

noncomputable section

/-- A007729: 6th binary partition function.

Offset 0, canonical program `A007729.P2856163913979848745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007729 (n : ℕ) : ℤ :=
  A007729.P2856163913979848745.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007729.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007829.P3581671704250432254

`2*(2+A000045(n+2)-2^floor(n/2)-A084338(n+2))`
-/

namespace A007829.P3581671704250432254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((2 + A000045 (n + 2) : ℚ) - (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) - (A084338 (n + 2) : ℚ))

end

end A007829.P3581671704250432254

noncomputable section

/-- A007829: From random walks on complete directed triangle.

Offset 0, canonical program `A007829.P3581671704250432254`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A084338, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A007829 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A007829.P3581671704250432254.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A084338, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A007829.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A007844.P17370799922270474338

`A080579(n+1)-A087156(n+1)`
-/

namespace A007844.P17370799922270474338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080579 (n + 1) - A087156 (n + 1)

end

end A007844.P17370799922270474338

noncomputable section

/-- A007844: Least positive integer k for which 3^n divides k!.

Offset 0, canonical program `A007844.P17370799922270474338`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007844 (n : ℕ) : ℤ :=
  A007844.P17370799922270474338.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007844.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007928.P16483837700590660845

`lt[and(1, A187844(n)), 1]`
-/

namespace A007928.P16483837700590660845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A187844 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A007928.P16483837700590660845

noncomputable section

/-- A007928: Numbers containing an even digit.

Offset 1, canonical program `A007928.P16483837700590660845`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007928 (n : ℕ) : ℤ :=
  (A007928.P16483837700590660845.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007928.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007954.P17322577641810457605

`abs(A187844(n))`
-/

namespace A007954.P17322577641810457605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A187844 n|

end

end A007954.P17322577641810457605

noncomputable section

/-- A007954: Product of decimal digits of n.

Offset 0, canonical program `A007954.P17322577641810457605`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A187844, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A007954 (n : ℕ) : ℤ :=
  A007954.P17322577641810457605.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A187844, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A007954.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A007957.P2732842976765979235

`eq[1, A061486(n)%2]`
-/

namespace A007957.P2732842976765979235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061486 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A007957.P2732842976765979235

noncomputable section

/-- A007957: Numbers that contain an odd digit.

Offset 1, canonical program `A007957.P2732842976765979235`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007957 (n : ℕ) : ℤ :=
  (A007957.P2732842976765979235.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007957.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007964.P10104679954901547100

`eq[1, A353799(n+1)]+1`
-/

namespace A007964.P10104679954901547100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353799 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A007964.P10104679954901547100

noncomputable section

/-- A007964: Numbers k such that product of proper divisors of k is <= k; i.e., product of divisors of k is <= k^2.

Offset 1, canonical program `A007964.P10104679954901547100`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007964 (n : ℕ) : ℤ :=
  (A007964.P10104679954901547100.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007964.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008123.P1715340732610126611

`A005893(n)-∑[A289139(n)]`
-/

namespace A008123.P1715340732610126611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289139 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008123.P1715340732610126611

noncomputable section

/-- A008123: Coordination sequence T1 for Zeolite Code KFI.

Offset 0, canonical program `A008123.P1715340732610126611`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008123 (n : ℕ) : ℤ :=
  A008123.P1715340732610126611.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008123.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008261.P12731544082812599068

`A005843(A069905(n))+A288699(n)+3*n²`
-/

namespace A008261.P12731544082812599068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A069905 n).toNat + (A288699 n + (3 * n ^ 2 : ℤ))

end

end A008261.P12731544082812599068

noncomputable section

/-- A008261: Coordination sequence for quartz.

Offset 0, canonical program `A008261.P12731544082812599068`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 347 terms. -/
def A008261 (n : ℕ) : ℤ :=
  A008261.P12731544082812599068.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 347 terms. -/
def A008261.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008385.P6216644815299185341

`A022278(n²)+A010008(n)`
-/

namespace A008385.P6216644815299185341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022278 (n ^ 2) + A010008 n

end

end A008385.P6216644815299185341

noncomputable section

/-- A008385: Coordination sequence for A_5 lattice.

Offset 0, canonical program `A008385.P6216644815299185341`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A008385 (n : ℕ) : ℤ :=
  A008385.P6216644815299185341.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A008385.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008480.P11368251790691963799

`abs(A355939(n+1))`
-/

namespace A008480.P11368251790691963799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A355939 (n + 1)|

end

end A008480.P11368251790691963799

noncomputable section

/-- A008480: Number of ordered prime factorizations of n.

Offset 1, canonical program `A008480.P11368251790691963799`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A355939, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008480 (n : ℕ) : ℤ :=
  A008480.P11368251790691963799.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A355939, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008480.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A008491.P16801072305296013185

`∑[A008490(n)+A000579(A289207(n))]`
-/

namespace A008491.P16801072305296013185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008490 n + A000579 (A289207 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008491.P16801072305296013185

noncomputable section

/-- A008491: Expansion of (1-x^9 ) / (1-x)^9.

Offset 0, canonical program `A008491.P16801072305296013185`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008491 (n : ℕ) : ℤ :=
  A008491.P16801072305296013185.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008491.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008729.P9384597751132745354

`A218530(n+11)`
-/

namespace A008729.P9384597751132745354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218530 (n + 11)

end

end A008729.P9384597751132745354

noncomputable section

/-- A008729: Molien series for 3-dimensional group [2, n] = *22n.

Offset 0, canonical program `A008729.P9384597751132745354`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A218530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008729 (n : ℕ) : ℤ :=
  A008729.P9384597751132745354.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A218530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008729.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A008730.P5982894440673514970

`A221912(n+12)`
-/

namespace A008730.P5982894440673514970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221912 (n + 12)

end

end A008730.P5982894440673514970

noncomputable section

/-- A008730: Molien series 1/((1-x)^2*(1-x^12)) for 3-dimensional group [2,n] = *22n.

Offset 0, canonical program `A008730.P5982894440673514970`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A221912, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008730 (n : ℕ) : ℤ :=
  A008730.P5982894440673514970.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A221912, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008730.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A009925.P566971274127706611

`ceil(A010001(n)/A000034(n))`
-/

namespace A009925.P566971274127706611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A010001 n : ℚ) / (A000034 n : ℚ)⌉

end

end A009925.P566971274127706611

noncomputable section

/-- A009925: Coordination sequence for CaF2(2), F position.

Offset 0, canonical program `A009925.P566971274127706611`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A009925 (n : ℕ) : ℤ :=
  A009925.P566971274127706611.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A009925.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A009942.P10386336069079178020

`A010009(n)%6+11*n²`
-/

namespace A009942.P10386336069079178020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010009 n) 6 + (11 * n ^ 2 : ℤ)

end

end A009942.P10386336069079178020

noncomputable section

/-- A009942: Coordination sequence for Ni2In, Position Ni2.

Offset 0, canonical program `A009942.P10386336069079178020`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A009942 (n : ℕ) : ℤ :=
  A009942.P10386336069079178020.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A009942.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A010582.P12130869140144784025

`A018003(3*n+1)%10`
-/

namespace A010582.P12130869140144784025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018003 (3 * n + 1)) 10

end

end A010582.P12130869140144784025

noncomputable section

/-- A010582: Decimal expansion of cube root of 10.

Offset 1, canonical program `A010582.P12130869140144784025`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A010582 (n : ℕ) : ℤ :=
  A010582.P12130869140144784025.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A010582.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A010670.P877938217777980581

`A018003(3*n+2)%10`
-/

namespace A010670.P877938217777980581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018003 (3 * n + 2)) 10

end

end A010670.P877938217777980581

noncomputable section

/-- A010670: Decimal expansion of cube root of 100.

Offset 1, canonical program `A010670.P877938217777980581`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A010670 (n : ℕ) : ℤ :=
  A010670.P877938217777980581.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A010670.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011531.P8691385485955789627

`comp[A052383(n+1)]`
-/

namespace A011531.P8691385485955789627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A011531.P8691385485955789627

noncomputable section

/-- A011531: Numbers that contain a digit 1 in their decimal representation.

Offset 1, canonical program `A011531.P8691385485955789627`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A011531 (n : ℕ) : ℤ :=
  (A011531.P8691385485955789627.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A011531.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011535.P12013536941063717587

`lt[1, n*A316866(n)]`
-/

namespace A011535.P12013536941063717587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A316866 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A011535.P12013536941063717587

noncomputable section

/-- A011535: Numbers that contain a 5.

Offset 1, canonical program `A011535.P12013536941063717587`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3439 terms. -/
def A011535 (n : ℕ) : ℤ :=
  (A011535.P12013536941063717587.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3439 terms. -/
def A011535.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011536.P6054837259103700799

`lt[1, n*A316867(n)]`
-/

namespace A011536.P6054837259103700799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A316867 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A011536.P6054837259103700799

noncomputable section

/-- A011536: Numbers that contain a 6.

Offset 1, canonical program `A011536.P6054837259103700799`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3439 terms. -/
def A011536 (n : ℕ) : ℤ :=
  (A011536.P6054837259103700799.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3439 terms. -/
def A011536.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011537.P8956265041725980081

`lt[1, n*A316868(n)]`
-/

namespace A011537.P8956265041725980081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A316868 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A011537.P8956265041725980081

noncomputable section

/-- A011537: Numbers that contain at least one 7.

Offset 1, canonical program `A011537.P8956265041725980081`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3439 terms. -/
def A011537 (n : ℕ) : ℤ :=
  (A011537.P8956265041725980081.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3439 terms. -/
def A011537.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011538.P9841498883370529558

`lt[1, n*A316869(n)]`
-/

namespace A011538.P9841498883370529558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A316869 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A011538.P9841498883370529558

noncomputable section

/-- A011538: Numbers that contain an 8.

Offset 1, canonical program `A011538.P9841498883370529558`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3439 terms. -/
def A011538 (n : ℕ) : ℤ :=
  (A011538.P9841498883370529558.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3439 terms. -/
def A011538.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011540.P10697777926791555809

`eq[0, A187844(n)]`
-/

namespace A011540.P10697777926791555809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187844 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A011540.P10697777926791555809

noncomputable section

/-- A011540: Numbers that contain a digit 0.

Offset 1, canonical program `A011540.P10697777926791555809`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8144 terms. -/
def A011540 (n : ℕ) : ℤ :=
  (A011540.P10697777926791555809.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8144 terms. -/
def A011540.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011587.P8257473420210704875

`1-C(2, A186305(2*n))`
-/

namespace A011587.P8257473420210704875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.choose 2 (A186305 (2 * n)).toNat : ℤ)

end

end A011587.P8257473420210704875

noncomputable section

/-- A011587: Legendre symbol (n,29).

Offset 0, canonical program `A011587.P8257473420210704875`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A011587 (n : ℕ) : ℤ :=
  A011587.P8257473420210704875.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A011587.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011671.P11374070389795065316

`A332782(n)%A130196(n)`
-/

namespace A011671.P11374070389795065316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332782 n) (A130196 n)

end

end A011671.P11374070389795065316

noncomputable section

/-- A011671: A binary m-sequence: expansion of reciprocal of x^6+x^5+x^4+x^2+1.

Offset 0, canonical program `A011671.P11374070389795065316`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A011671 (n : ℕ) : ℤ :=
  A011671.P11374070389795065316.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A011671.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011755.P6342629275534871755

`∑[2*A023896(n+1)]-1`
-/

namespace A011755.P6342629275534871755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023896 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A011755.P6342629275534871755

noncomputable section

/-- A011755: a(n) = Sum_{k=1..n} k*phi(k).

Offset 1, canonical program `A011755.P6342629275534871755`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A011755 (n : ℕ) : ℤ :=
  A011755.P6342629275534871755.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A011755.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011961.P171061349715616591

`A307985(n+1)+∑[A005044(n+2)]`
-/

namespace A011961.P171061349715616591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307985 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011961.P171061349715616591

noncomputable section

/-- A011961: Number of ferrites M_4Y_n that repeat after 6n+20 layers.

Offset 1, canonical program `A011961.P171061349715616591`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A011961 (n : ℕ) : ℤ :=
  A011961.P171061349715616591.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A011961.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011973.P14749578380264178381

`C(A055086(n)-A055087(n), A055087(n))`
-/

namespace A011973.P14749578380264178381
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A055086 n - A055087 n).toNat (A055087 n).toNat

end

end A011973.P14749578380264178381

noncomputable section

/-- A011973: Irregular triangle read by rows: T(n,k) = binomial(n-k, k), n >= 0, 0 <= k <= floor(n/2); or, coefficients of (one version of) Fibonacci polynomials.

Offset 0, canonical program `A011973.P14749578380264178381`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A011973 (n : ℕ) : ℤ :=
  (A011973.P14749578380264178381.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A011973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A012245.P11587607485183547821

`C(A048764(n+1), n+1)`
-/

namespace A012245.P11587607485183547821
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A048764 (n + 1)).toNat (n + 1)

end

end A012245.P11587607485183547821

noncomputable section

/-- A012245: Characteristic function of factorial numbers; also decimal expansion of Liouville's number or Liouville's constant.

Offset 1, canonical program `A012245.P11587607485183547821`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A012245 (n : ℕ) : ℤ :=
  (A012245.P11587607485183547821.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A012245.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A013632.P6559946879985956067

`A000040(A230980(n)+1)-n`
-/

namespace A013632.P6559946879985956067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A230980 n + 1).toNat - (n : ℤ)

end

end A013632.P6559946879985956067

noncomputable section

/-- A013632: Difference between n and the next prime greater than n.

Offset 0, canonical program `A013632.P6559946879985956067`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A013632 (n : ℕ) : ℤ :=
  A013632.P6559946879985956067.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A013632.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014462.P14691259310245244798

`C(A000267(n), A055087(n))`
-/

namespace A014462.P14691259310245244798
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000267 n).toNat (A055087 n).toNat

end

end A014462.P14691259310245244798

noncomputable section

/-- A014462: Triangular array formed from elements to left of middle of Pascal's triangle.

Offset 1, canonical program `A014462.P14691259310245244798`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014462 (n : ℕ) : ℤ :=
  (A014462.P14691259310245244798.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014462.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014577.P18150949447596937918

`1-A014707(n)`
-/

namespace A014577.P18150949447596937918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A014707 n

end

end A014577.P18150949447596937918

noncomputable section

/-- A014577: The regular paper-folding sequence (or dragon curve sequence). Alphabet {1,0}.

Offset 0, canonical program `A014577.P18150949447596937918`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014707, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014577 (n : ℕ) : ℤ :=
  A014577.P18150949447596937918.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014707, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014577.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A014630.P4760886536345502386

`A173018(record[A278818(A061579(n))])`
-/

namespace A014630.P4760886536345502386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278818 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A014630.P4760886536345502386

noncomputable section

/-- A014630: Distinct elements occurring in triangle of Eulerian numbers (unsorted).

Offset 1, canonical program `A014630.P4760886536345502386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1220 terms. -/
def A014630 (n : ℕ) : ℤ :=
  A014630.P4760886536345502386.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1220 terms. -/
def A014630.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A016001.P11323128955576647870

`A052938(floor(A344329(n+1)/3))`
-/

namespace A016001.P11323128955576647870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 ⌊(A344329 (n + 1) : ℚ) / 3⌋.toNat

end

end A016001.P11323128955576647870

noncomputable section

/-- A016001: a(n) = (tau(n^6)+5)/6.

Offset 1, canonical program `A016001.P11323128955576647870`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4619 terms. -/
def A016001 (n : ℕ) : ℤ :=
  A016001.P11323128955576647870.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4619 terms. -/
def A016001.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A016003.P2042737091927830965

`ceil(A344335(n+1)/8)`
-/

namespace A016003.P2042737091927830965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A344335 (n + 1) : ℚ) / 8⌉

end

end A016003.P2042737091927830965

noncomputable section

/-- A016003: a(n) = (tau(n^8)+7)/8.

Offset 1, canonical program `A016003.P2042737091927830965`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A016003 (n : ℕ) : ℤ :=
  A016003.P2042737091927830965.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A016003.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A016005.P4298684389289845767

`ceil(A344336(n+1)/9)`
-/

namespace A016005.P4298684389289845767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A344336 (n + 1) : ℚ) / 9⌉

end

end A016005.P4298684389289845767

noncomputable section

/-- A016005: a(n) = (tau(n^9)+8)/9.

Offset 1, canonical program `A016005.P4298684389289845767`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A016005 (n : ℕ) : ℤ :=
  A016005.P4298684389289845767.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A016005.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017979.P8622892110208432116

`A017981(n)-n²%3`
-/

namespace A017979.P8622892110208432116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017981 n - ((n ^ 2 % 3 : ℕ) : ℤ)

end

end A017979.P8622892110208432116

noncomputable section

/-- A017979: Powers of cube root of 2 rounded down.

Offset 0, canonical program `A017979.P8622892110208432116`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 997 terms. -/
def A017979 (n : ℕ) : ℤ :=
  A017979.P8622892110208432116.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 997 terms. -/
def A017979.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018009.P2824070679242072313

`floor(sqrt(A018010(2*n)))`
-/

namespace A018009.P2824070679242072313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A018010 (2 * n))

end

end A018009.P2824070679242072313

noncomputable section

/-- A018009: Powers of cube root of 12 rounded down.

Offset 0, canonical program `A018009.P2824070679242072313`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A018009 (n : ℕ) : ℤ :=
  A018009.P2824070679242072313.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A018009.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018012.P9595471481189244769

`floor(sqrt(A018013(2*n)))`
-/

namespace A018012.P9595471481189244769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A018013 (2 * n))

end

end A018012.P9595471481189244769

noncomputable section

/-- A018012: Powers of cube root of 13 rounded down.

Offset 0, canonical program `A018012.P9595471481189244769`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A018012 (n : ℕ) : ℤ :=
  A018012.P9595471481189244769.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A018012.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018117.P2399526085562118991

`floor(sqrt(A018123(n)))`
-/

namespace A018117.P2399526085562118991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A018123 n)

end

end A018117.P2399526085562118991

noncomputable section

/-- A018117: Powers of fifth root of 2 rounded down.

Offset 0, canonical program `A018117.P2399526085562118991`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 831 terms. -/
def A018117 (n : ℕ) : ℤ :=
  A018117.P2399526085562118991.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 831 terms. -/
def A018117.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018138.P10780805456287121430

`A018140(n)-A011558(n)`
-/

namespace A018138.P10780805456287121430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018140 n - A011558 n

end

end A018138.P10780805456287121430

noncomputable section

/-- A018138: Powers of fifth root of 9 rounded down.

Offset 0, canonical program `A018138.P10780805456287121430`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 524 terms. -/
def A018138 (n : ℕ) : ℤ :=
  A018138.P10780805456287121430.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 524 terms. -/
def A018138.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018147.P13576852104828781867

`floor(sqrt(A018148(2*n)))`
-/

namespace A018147.P13576852104828781867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A018148 (2 * n))

end

end A018147.P13576852104828781867

noncomputable section

/-- A018147: Powers of fifth root of 12 rounded down.

Offset 0, canonical program `A018147.P13576852104828781867`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A018147 (n : ℕ) : ℤ :=
  A018147.P13576852104828781867.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A018147.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018153.P18247953681839362182

`floor(sqrt(A018154(2*n)))`
-/

namespace A018153.P18247953681839362182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A018154 (2 * n))

end

end A018153.P18247953681839362182

noncomputable section

/-- A018153: Powers of fifth root of 14 rounded down.

Offset 0, canonical program `A018153.P18247953681839362182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A018153 (n : ℕ) : ℤ :=
  A018153.P18247953681839362182.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A018153.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018163.P15061714037692496368

`round(17^(n/5))%∑[A066481(n+3)+A000213(n)]`
-/

namespace A018163.P15061714037692496368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066481 (n + 3) + A000213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((17 : ℝ) ^ ((n : ℚ) / 5 : ℝ))) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A018163.P15061714037692496368

noncomputable section

/-- A018163: Powers of fifth root of 17 rounded to nearest integer.

Offset 0, canonical program `A018163.P15061714037692496368`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 378 terms. -/
def A018163 (n : ℕ) : ℤ :=
  A018163.P15061714037692496368.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 378 terms. -/
def A018163.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018174.P12326779818066994304

`floor(sqrt(A018175(2*n)))`
-/

namespace A018174.P12326779818066994304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A018175 (2 * n))

end

end A018174.P12326779818066994304

noncomputable section

/-- A018174: Powers of fifth root of 21 rounded down.

Offset 0, canonical program `A018174.P12326779818066994304`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 190 terms. -/
def A018174 (n : ℕ) : ℤ :=
  A018174.P12326779818066994304.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 190 terms. -/
def A018174.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018226.P16393125049317702950

`(n+1)*((n+1)²+5)/3+(4*(n+1)-6)*A171386(n+1)`
-/

namespace A018226.P16393125049317702950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * ((n + 1) ^ 2 + 5) : ℚ) / 3 + (((4 * (n + 1) : ℤ) - 6) * A171386 (n + 1) : ℚ)

end

end A018226.P16393125049317702950

noncomputable section

/-- A018226: Magic numbers of nucleons: nuclei with one of these numbers of either protons or neutrons are more stable against nuclear decay.

Offset 1, canonical program `A018226.P16393125049317702950`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A171386, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A018226 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A018226.P16393125049317702950.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A171386, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A018226.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A019308.P18288552904290711969

`Δ[abs(1-A252696(n))]`
-/

namespace A019308.P18288552904290711969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A252696 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A019308.P18288552904290711969

noncomputable section

/-- A019308: Number of "bifix-free" words of length n over a three-letter alphabet.

Offset 0, canonical program `A019308.P18288552904290711969`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A019308 (n : ℕ) : ℤ :=
  A019308.P18288552904290711969.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A019308.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A019558.P1028018214492281376

`A022144(3*n)+Δ[A052762(2*n)]`
-/

namespace A019558.P1028018214492281376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052762 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (3 * n) + (f1 (n + 1) - f1 n)

end

end A019558.P1028018214492281376

noncomputable section

/-- A019558: Coordination sequence for F_4 lattice.

Offset 0, canonical program `A019558.P1028018214492281376`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A019558 (n : ℕ) : ℤ :=
  A019558.P1028018214492281376.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A019558.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020486.P13724749074267134154

`eq[1, A158298(n+1)]+1`
-/

namespace A020486.P13724749074267134154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158298 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A020486.P13724749074267134154

noncomputable section

/-- A020486: Average of squares of divisors is an integer: numbers k such that sigma_0(k) divides sigma_2(k).

Offset 1, canonical program `A020486.P13724749074267134154`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5955 terms. -/
def A020486 (n : ℕ) : ℤ :=
  (A020486.P13724749074267134154.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5955 terms. -/
def A020486.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020521.P17693955101248883378

`A060887(A000079(n))`
-/

namespace A020521.P17693955101248883378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060887 (A000079 n).toNat

end

end A020521.P17693955101248883378

noncomputable section

/-- A020521: 13th cyclotomic polynomial evaluated at powers of 2.

Offset 0, canonical program `A020521.P17693955101248883378`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060887, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A020521 (n : ℕ) : ℤ :=
  A020521.P17693955101248883378.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060887, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A020521.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A021895.P17930057987504014831

`A113675(A004526(n+1)+n)`
-/

namespace A021895.P17930057987504014831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113675 (A004526 (n + 1) + (n : ℤ)).toNat

end

end A021895.P17930057987504014831

noncomputable section

/-- A021895: Decimal expansion of 1/891.

Offset 0, canonical program `A021895.P17930057987504014831`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6667 terms. -/
def A021895 (n : ℕ) : ℤ :=
  A021895.P17930057987504014831.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6667 terms. -/
def A021895.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022330.P2680287908115974667

`A071521(A000244(n))`
-/

namespace A022330.P2680287908115974667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071521 (A000244 n).toNat

end

end A022330.P2680287908115974667

noncomputable section

/-- A022330: Index of 3^n within sequence of numbers of form 2^i*3^j (A003586).

Offset 0, canonical program `A022330.P2680287908115974667`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071521, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A022330 (n : ℕ) : ℤ :=
  A022330.P2680287908115974667.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071521, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A022330.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A022331.P8664898724011485179

`A071521(A000079(n))`
-/

namespace A022331.P8664898724011485179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071521 (A000079 n).toNat

end

end A022331.P8664898724011485179

noncomputable section

/-- A022331: Index of 2^n within sequence of numbers of form 2^i*3^j (A003586).

Offset 0, canonical program `A022331.P8664898724011485179`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071521, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A022331 (n : ℕ) : ℤ :=
  A022331.P8664898724011485179.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071521, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A022331.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A022801.P16114518474310369460

`A000204(n+1)+A090946(n+2)`
-/

namespace A022801.P16114518474310369460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) + A090946 (n + 2)

end

end A022801.P16114518474310369460

noncomputable section

/-- A022801: n-th Lucas number (A000204(n)) + n-th non-Lucas number (A090946(n+1)).

Offset 1, canonical program `A022801.P16114518474310369460`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090946, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A022801 (n : ℕ) : ℤ :=
  A022801.P16114518474310369460.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090946, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A022801.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023219.P7384479823826026076

`p?[A024894(n+1)-1]`
-/

namespace A023219.P7384479823826026076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024894 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023219.P7384479823826026076

noncomputable section

/-- A023219: Primes p such that 5p+6 is a prime.

Offset 1, canonical program `A023219.P7384479823826026076`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2742 terms. -/
def A023219 (n : ℕ) : ℤ :=
  A023219.P7384479823826026076.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2742 terms. -/
def A023219.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023232.P8454457185386987942

`p?[2*A155942(n+1)-1]`
-/

namespace A023232.P8454457185386987942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A155942 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023232.P8454457185386987942

noncomputable section

/-- A023232: Primes p such that 8*p + 9 is also prime.

Offset 1, canonical program `A023232.P8454457185386987942`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2471 terms. -/
def A023232 (n : ℕ) : ℤ :=
  A023232.P8454457185386987942.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2471 terms. -/
def A023232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023233.P18087890990746675777

`p?[A024907(n+1)-1]`
-/

namespace A023233.P18087890990746675777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024907 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023233.P18087890990746675777

noncomputable section

/-- A023233: Primes p such that 9*p + 2 is also prime.

Offset 1, canonical program `A023233.P18087890990746675777`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1723 terms. -/
def A023233 (n : ℕ) : ℤ :=
  A023233.P18087890990746675777.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1723 terms. -/
def A023233.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023234.P391613333200129420

`p?[A024908(n+1)-1]`
-/

namespace A023234.P391613333200129420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024908 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023234.P391613333200129420

noncomputable section

/-- A023234: Primes p such that 9*p + 4 is also prime.

Offset 1, canonical program `A023234.P391613333200129420`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1768 terms. -/
def A023234 (n : ℕ) : ℤ :=
  A023234.P391613333200129420.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1768 terms. -/
def A023234.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023490.P988857930729845770

`A000045(n+2)+A090946(n+2)`
-/

namespace A023490.P988857930729845770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) + A090946 (n + 2)

end

end A023490.P988857930729845770

noncomputable section

/-- A023490: n-th non-Lucas number plus Fibonacci(n + 1).

Offset 0, canonical program `A023490.P988857930729845770`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090946, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023490 (n : ℕ) : ℤ :=
  A023490.P988857930729845770.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090946, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023490.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023491.P5893731132072105009

`A000045(n+3)+A090946(n+2)`
-/

namespace A023491.P5893731132072105009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 3) + A090946 (n + 2)

end

end A023491.P5893731132072105009

noncomputable section

/-- A023491: a(n) = b(n) + d(n), where b(n) = (n-th Fibonacci number > 1) and d(n) = (n-th non-Lucas number).

Offset 0, canonical program `A023491.P5893731132072105009`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090946, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023491 (n : ℕ) : ℤ :=
  A023491.P5893731132072105009.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090946, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023491.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023493.P16959634899048244030

`A000032(n+2)+A090946(n+2)`
-/

namespace A023493.P16959634899048244030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 2) + A090946 (n + 2)

end

end A023493.P16959634899048244030

noncomputable section

/-- A023493: a(n) = b(n) + d(n), where b(n) = (n-th Lucas number > 1) and d(n) = (n-th non-Lucas number).

Offset 0, canonical program `A023493.P16959634899048244030`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090946, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023493 (n : ℕ) : ℤ :=
  A023493.P16959634899048244030.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090946, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023493.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023494.P3154077987958110990

`A000045(n+4)+A090946(n+2)`
-/

namespace A023494.P3154077987958110990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 4) + A090946 (n + 2)

end

end A023494.P3154077987958110990

noncomputable section

/-- A023494: a(n) = b(n) + d(n), where b(n) = (n-th Fibonacci number > 2) and d(n) = (n-th non-Lucas number).

Offset 0, canonical program `A023494.P3154077987958110990`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090946, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023494 (n : ℕ) : ℤ :=
  A023494.P3154077987958110990.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090946, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023494.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023577.P17133411577546820162

`A051903(3+A000040(n+1))`
-/

namespace A023577.P17133411577546820162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (3 + A000040 (n + 1)).toNat

end

end A023577.P17133411577546820162

noncomputable section

/-- A023577: Greatest exponent in prime-power factorization of prime(n)+3.

Offset 1, canonical program `A023577.P17133411577546820162`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023577 (n : ℕ) : ℤ :=
  A023577.P17133411577546820162.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023577.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023630.P2488653469154600080

`Δ[lt[0, A217586(n+1)]]`
-/

namespace A023630.P2488653469154600080
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217586 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A023630.P2488653469154600080

noncomputable section

/-- A023630: a(n) = s(2n) - s(2n-1), where s( ) is sequence A023629.

Offset 1, canonical program `A023630.P2488653469154600080`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A023630 (n : ℕ) : ℤ :=
  A023630.P2488653469154600080.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A023630.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023631.P10237634559327045715

`eq[2, A194688(A004761(n+2))]`
-/

namespace A023631.P10237634559327045715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194688 (A004761 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023631.P10237634559327045715

noncomputable section

/-- A023631: a(n) = c([ (n+1)/2 ]) + n, with a(1) = 1 and a(2) = 4, c = complement to a.

Offset 1, canonical program `A023631.P10237634559327045715`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2950 terms. -/
def A023631 (n : ℕ) : ℤ :=
  (A023631.P10237634559327045715.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2950 terms. -/
def A023631.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023805.P13794329073958851505

`eq[A099206(A108248(n)), A168185(n)]`
-/

namespace A023805.P13794329073958851505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099206 (A108248 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168185 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023805.P13794329073958851505

noncomputable section

/-- A023805: Xenodromes: all digits in base 11 are different.

Offset 1, canonical program `A023805.P13794329073958851505`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A023805 (n : ℕ) : ℤ :=
  (A023805.P13794329073958851505.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A023805.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023962.P4218714369795661473

`A023965((n+1)²)`
-/

namespace A023962.P4218714369795661473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023965 ((n + 1) ^ 2)

end

end A023962.P4218714369795661473

noncomputable section

/-- A023962: First digit after decimal point of cube root of n.

Offset 1, canonical program `A023962.P4218714369795661473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A023962 (n : ℕ) : ℤ :=
  A023962.P4218714369795661473.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A023962.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002324.P17421748272452344756

`A001817(n+1)-A001822(n+1)`
-/

namespace A002324.P17421748272452344756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001817 (n + 1) - A001822 (n + 1)

end

end A002324.P17421748272452344756

noncomputable section

/-- A002324: Number of divisors of n == 1 (mod 3) minus number of divisors of n == 2 (mod 3).

Offset 1, canonical program `A002324.P17421748272452344756`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001817, A001822, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A002324 (n : ℕ) : ℤ :=
  A002324.P17421748272452344756.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001817, A001822, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A002324.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A005066.P3731057141440062673

`A005063(A000265(n+1))`
-/

namespace A005066.P3731057141440062673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005063 (A000265 (n + 1)).toNat

end

end A005066.P3731057141440062673

noncomputable section

/-- A005066: Sum of squares of odd primes dividing n.

Offset 1, canonical program `A005066.P3731057141440062673`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005063, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A005066 (n : ℕ) : ℤ :=
  A005066.P3731057141440062673.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005063, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A005066.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A005083.P12060761291276031228

`A005063(n+1)-A005079(n+1)-4*A059841(n+1)`
-/

namespace A005083.P12060761291276031228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005063 (n + 1) - A005079 (n + 1) - 4 * A059841 (n + 1)

end

end A005083.P12060761291276031228

noncomputable section

/-- A005083: Sum of squares of primes = 3 mod 4 dividing n.

Offset 1, canonical program `A005083.P12060761291276031228`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005063, A005079, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A005083 (n : ℕ) : ℤ :=
  A005083.P12060761291276031228.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005063, A005079, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A005083.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A019444.P809029338349565677

`∑[A114986(n)]+n*A114986(n)`
-/

namespace A019444.P809029338349565677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114986 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) * A114986 n

end

end A019444.P809029338349565677

noncomputable section

/-- A019444: a_1, a_2, ..., is a permutation of the positive integers such that the average of each initial segment is an integer, using the greedy algorithm to define a_n.

Offset 1, canonical program `A019444.P809029338349565677`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A019444 (n : ℕ) : ℤ :=
  A019444.P809029338349565677.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A019444.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000695.P14587171459336407380

`(A145812(n+1)-1)/2`
-/

namespace A000695.P14587171459336407380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145812 (n + 1) - 1 : ℚ) / 2

end

end A000695.P14587171459336407380

noncomputable section

/-- A000695: Moser-de Bruijn sequence: sums of distinct powers of 4.

Offset 0, canonical program `A000695.P14587171459336407380`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A145812, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A000695 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A000695.P14587171459336407380.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A145812, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A000695.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A005065.P10018668116522335289

`A005068(n+1)+16*A059841(n+1)`
-/

namespace A005065.P10018668116522335289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005068 (n + 1) + 16 * A059841 (n + 1)

end

end A005065.P10018668116522335289

noncomputable section

/-- A005065: Sum of 4th powers of primes dividing n.

Offset 1, canonical program `A005065.P10018668116522335289`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005068, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A005065 (n : ℕ) : ℤ :=
  A005065.P10018668116522335289.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005068, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A005065.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A005078.P3775666566695567279

`A008472(n+1)-A005082(n+1)-2*A059841(n+1)`
-/

namespace A005078.P3775666566695567279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) - A005082 (n + 1) - 2 * A059841 (n + 1)

end

end A005078.P3775666566695567279

noncomputable section

/-- A005078: Sum of primes = 1 mod 4 dividing n.

Offset 1, canonical program `A005078.P3775666566695567279`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005082, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A005078 (n : ℕ) : ℤ :=
  A005078.P3775666566695567279.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005082, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A005078.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A007088.P12432121332583687413

`A097256(n)/9`
-/

namespace A007088.P12432121332583687413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097256 n : ℚ) / 9

end

end A007088.P12432121332583687413

noncomputable section

/-- A007088: The binary numbers (or binary words, or binary vectors, or binary expansion of n): numbers written in base 2.

Offset 0, canonical program `A007088.P12432121332583687413`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A097256, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A007088 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A007088.P12432121332583687413.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A097256, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A007088.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A007953.P3472751987379697826

`n-9*A054899(n)`
-/

namespace A007953.P3472751987379697826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 9 * A054899 n

end

end A007953.P3472751987379697826

noncomputable section

/-- A007953: Digital sum (i.e., sum of digits) of n; also called digsum(n).

Offset 0, canonical program `A007953.P3472751987379697826`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054899, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A007953 (n : ℕ) : ℤ :=
  A007953.P3472751987379697826.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054899, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A007953.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A010069.P133090985606594522

`A053828(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A010069.P133090985606594522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A053828 (a (n - 1)).toNat + a (n - 1)

end

end A010069.P133090985606594522

noncomputable section

/-- A010069: a(n+1) = a(n) + sum of digits in base 7 representation of a(n).

Offset 0, canonical program `A010069.P133090985606594522`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 756 terms. -/
def A010069 (n : ℕ) : ℤ :=
  A010069.P133090985606594522.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 756 terms. -/
def A010069.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A010072.P10490192665339776689

`A053830(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A010072.P10490192665339776689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A053830 (a (n - 1)).toNat + a (n - 1)

end

end A010072.P10490192665339776689

noncomputable section

/-- A010072: a(n+1) = a(n) + sum of digits in base 9 representation of a(n).

Offset 0, canonical program `A010072.P10490192665339776689`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3189 terms. -/
def A010072 (n : ℕ) : ℤ :=
  A010072.P10490192665339776689.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3189 terms. -/
def A010072.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023751.P17489473490239162121

`eq[8, A053830(8*(n+1))]`
-/

namespace A023751.P17489473490239162121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 (8 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023751.P17489473490239162121

noncomputable section

/-- A023751: Plaindromes: numbers whose digits in base 9 are in nondecreasing order.

Offset 1, canonical program `A023751.P17489473490239162121`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 495 terms. -/
def A023751 (n : ℕ) : ℤ :=
  (A023751.P17489473490239162121.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 495 terms. -/
def A023751.provenance : SequenceMachineLib.Provenance := .conjectured

